@interface CKAudioController
- (CKAudioController)initWithMediaObjects:(id)a3 conversation:(id)a4;
- (CKAudioControllerDelegate)delegate;
- (CKMediaObject)currentMediaObject;
- (double)currentMediaObjectDuration;
- (double)currentMediaObjectTime;
- (double)playbackSpeed;
- (float)volume;
- (unint64_t)audioSessionControllerOptions;
- (void)_notifyPlayerDidPrepareMediaObject:(id)a3 successfully:(BOOL)a4;
- (void)addMediaObject:(id)a3;
- (void)addMediaObjects:(id)a3;
- (void)audioPlayerCurrentTimeDidChange:(id)a3;
- (void)audioPlayerDidFinishPlaying:(id)a3;
- (void)audioPlayerDidGetInterrupted;
- (void)audioPlayerDidPrepareAudioToPlay:(id)a3 successfully:(BOOL)a4;
- (void)audioSessionInterruption:(id)a3;
- (void)clearMediaPlayerInfo;
- (void)dealloc;
- (void)layoutViewsForScrubbingTime:(double)a3;
- (void)pause;
- (void)play;
- (void)playAfterDelay:(double)a3;
- (void)playListenEndSound:(id)a3;
- (void)playListenSound:(id)a3;
- (void)prepareToPlay;
- (void)setCurrentMediaPlayerInfo;
- (void)setCurrentTime:(double)a3;
- (void)setPlaybackSpeed:(double)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setShouldDuckOthers:(BOOL)a3;
- (void)setShouldStopPlayingWhenSilent:(BOOL)a3;
- (void)setShouldUseSpeaker:(BOOL)a3;
- (void)setVolume:(float)a3;
- (void)setupMediaRemoteCommandCenter;
- (void)stop;
@end

@implementation CKAudioController

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(CKAudioPlayer *)self->_audioPlayer setDelegate:0];
  [(CKAudioPlayer *)self->_audioPlayer stop];
  v4.receiver = self;
  v4.super_class = CKAudioController;
  [(CKAudioController *)&v4 dealloc];
}

- (CKAudioController)initWithMediaObjects:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CKAudioController;
  v8 = [(CKAudioController *)&v17 init];
  if (v8)
  {
    v9 = [v6 mutableCopy];
    [(CKAudioController *)v8 _setMediaObjects:v9];
    v8->_shouldUseSpeaker = 1;
    [(CKAudioController *)v8 setCurrentIndex:0x7FFFFFFFFFFFFFFFLL];
    [(CKAudioController *)v8 setConversation:v7];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v8 selector:sel_audioSessionInterruption_ name:*MEMORY[0x1E69580D8] object:0];
    [v10 addObserver:v8 selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];
    v11 = [v9 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [v9 firstObject];
      v14 = [v13 messageContext];
      v15 = [v14 isAudioMessage];

      if (v15)
      {
        [(CKAudioController *)v8 setupMediaRemoteCommandCenter];
      }
    }
  }

  return v8;
}

- (void)addMediaObject:(id)a3
{
  v4 = a3;
  v5 = [(CKAudioController *)self _mediaObjects];
  [v5 addObject:v4];
}

- (void)addMediaObjects:(id)a3
{
  v4 = a3;
  v5 = [(CKAudioController *)self _mediaObjects];
  [v5 addObjectsFromArray:v4];
}

- (void)setShouldUseSpeaker:(BOOL)a3
{
  if (self->_shouldUseSpeaker != a3)
  {
    self->_shouldUseSpeaker = a3;
    if ([(CKAudioController *)self isPlaying])
    {
      v4 = +[CKAudioSessionController shareInstance];
      [v4 activateWithOptions:-[CKAudioController audioSessionControllerOptions](self completion:{"audioSessionControllerOptions"), 0}];
    }
  }
}

- (void)setShouldStopPlayingWhenSilent:(BOOL)a3
{
  if (self->_shouldStopPlayingWhenSilent != a3)
  {
    self->_shouldStopPlayingWhenSilent = a3;
    if ([(CKAudioController *)self isPlaying])
    {
      v4 = +[CKAudioSessionController shareInstance];
      [v4 activateWithOptions:-[CKAudioController audioSessionControllerOptions](self completion:{"audioSessionControllerOptions"), 0}];
    }
  }
}

- (void)setShouldDuckOthers:(BOOL)a3
{
  if (self->_shouldDuckOthers != a3)
  {
    self->_shouldDuckOthers = a3;
    if ([(CKAudioController *)self isPlaying])
    {
      v4 = +[CKAudioSessionController shareInstance];
      [v4 activateWithOptions:-[CKAudioController audioSessionControllerOptions](self completion:{"audioSessionControllerOptions"), 0}];
    }
  }
}

- (unint64_t)audioSessionControllerOptions
{
  v3 = [(CKAudioController *)self shouldUseSpeaker];
  if ([(CKAudioController *)self shouldStopPlayingWhenSilent])
  {
    v3 |= 2uLL;
  }

  if ([(CKAudioController *)self shouldDuckOthers])
  {
    return v3 | 4;
  }

  else
  {
    return v3;
  }
}

- (void)play
{
  [(CKAudioController *)self playAfterDelay:0.0];

  [(CKAudioController *)self setCurrentMediaPlayerInfo];
}

- (void)playAfterDelay:(double)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = [(CKAudioController *)self currentIndex];
  v6 = IMOSLoggingEnabled();
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(CKAudioController *)self _mediaObjects];
      *buf = 134217984;
      v34 = [v8 count];
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Playing audio message. _currentIndex was NSNotFound. [[self _mediaObjects] count]: %llu", buf, 0xCu);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [(CKAudioController *)self currentIndex];
      v10 = [(CKAudioController *)self _mediaObjects];
      *buf = 134218240;
      v34 = v9;
      v35 = 2048;
      v36 = [v10 count];
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Playing %llu of %llu audio messages.", buf, 0x16u);
    }
  }

LABEL_10:
  v11 = [(CKAudioController *)self audioPlayer];
  objc_initWeak(buf, self);
  if (v11)
  {
    if (![(CKAudioPlayer *)v11 isPlaying])
    {
      objc_initWeak(&location, v11);
      v12 = +[CKAudioSessionController shareInstance];
      v13 = [(CKAudioController *)self audioSessionControllerOptions];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __36__CKAudioController_playAfterDelay___block_invoke;
      v27[3] = &unk_1E72F45A0;
      v11 = v11;
      v28 = v11;
      v31[1] = *&a3;
      objc_copyWeak(&v30, buf);
      objc_copyWeak(v31, &location);
      v29 = self;
      [v12 activateWithOptions:v13 completion:v27];

      objc_destroyWeak(v31);
      objc_destroyWeak(&v30);

      objc_destroyWeak(&location);
    }
  }

  else
  {
    if ([(CKAudioController *)self currentIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(CKAudioController *)self setCurrentIndex:0];
    }

    v14 = [(CKAudioController *)self _mediaObjects];
    v15 = [(CKAudioController *)self currentIndex];
    if (v15 >= [v14 count])
    {
      v11 = 0;
    }

    else
    {
      v16 = [v14 objectAtIndex:{-[CKAudioController currentIndex](self, "currentIndex")}];
      if ([v16 shouldSuppressPreview])
      {
        v11 = 0;
      }

      else
      {
        v17 = [[CKAudioPlayer alloc] initWithMediaObject:v16 shouldUseAVPlayer:[(CKAudioController *)self shouldUseAVPlayer]];
        [(CKAudioPlayer *)v17 setDelegate:self];
        [(CKAudioController *)self setAudioPlayer:v17];
        objc_initWeak(&location, v17);
        v18 = +[CKAudioSessionController shareInstance];
        v19 = [(CKAudioController *)self audioSessionControllerOptions];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __36__CKAudioController_playAfterDelay___block_invoke_3;
        v22[3] = &unk_1E72F45A0;
        v11 = v17;
        v23 = v11;
        v26[1] = *&a3;
        objc_copyWeak(&v25, buf);
        objc_copyWeak(v26, &location);
        v24 = self;
        [v18 activateWithOptions:v19 completion:v22];

        v20 = [(CKAudioController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(CKAudioPlayer *)v11 duration];
          [v20 audioController:self mediaObjectProgressDidChange:v16 currentTime:0.0 duration:v21];
        }

        objc_destroyWeak(v26);
        objc_destroyWeak(&v25);

        objc_destroyWeak(&location);
      }
    }
  }

  objc_destroyWeak(buf);
}

void __36__CKAudioController_playAfterDelay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __36__CKAudioController_playAfterDelay___block_invoke_2;
  v7 = &unk_1E72F4578;
  objc_copyWeak(&v8, (a1 + 48));
  objc_copyWeak(&v9, (a1 + 56));
  [v2 playAfterDelay:&v4 completion:v3];
  [*(a1 + 40) setPlaying:{1, v4, v5, v6, v7}];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
}

void __36__CKAudioController_playAfterDelay___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    [WeakRetained audioPlayerDidFinishPlaying:v4];
  }
}

void __36__CKAudioController_playAfterDelay___block_invoke_3(id *a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__CKAudioController_playAfterDelay___block_invoke_4;
  aBlock[3] = &unk_1E72F45A0;
  v4 = a1[4];
  v7[1] = a1[8];
  objc_copyWeak(&v6, a1 + 6);
  objc_copyWeak(v7, a1 + 7);
  v5 = a1[5];
  v2 = _Block_copy(aBlock);
  if ([a1[5] shouldUseSpeaker])
  {
    v2[2](v2);
  }

  else
  {
    [a1[5] playListenSound:v2];
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(&v6);
}

void __36__CKAudioController_playAfterDelay___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __36__CKAudioController_playAfterDelay___block_invoke_5;
  v7 = &unk_1E72F4578;
  objc_copyWeak(&v8, (a1 + 48));
  objc_copyWeak(&v9, (a1 + 56));
  [v2 playAfterDelay:&v4 completion:v3];
  [*(a1 + 40) setPlaying:{1, v4, v5, v6, v7}];
  [*(a1 + 40) setCurrentMediaPlayerInfo];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
}

void __36__CKAudioController_playAfterDelay___block_invoke_5(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    [WeakRetained audioPlayerDidFinishPlaying:v4];
  }
}

- (void)prepareToPlay
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__41;
  v21 = __Block_byref_object_dispose__41;
  v22 = [(CKAudioController *)self audioPlayer];
  if ([v18[5] isPlaying])
  {
    v3 = [v18[5] mediaObject];
    [(CKAudioController *)self _notifyPlayerDidPrepareMediaObject:v3 successfully:1];
  }

  else
  {
    if ([(CKAudioController *)self currentIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(CKAudioController *)self setCurrentIndex:0];
    }

    v3 = [(CKAudioController *)self _mediaObjects];
    v4 = v18[5];
    if (v4)
    {
      goto LABEL_6;
    }

    v11 = [(CKAudioController *)self currentIndex];
    if (v11 >= [v3 count])
    {
      [(CKAudioController *)self _notifyPlayerDidPrepareMediaObject:0 successfully:0];
      goto LABEL_8;
    }

    v4 = v18[5];
    if (v4)
    {
LABEL_6:
      v5 = [v4 mediaObject];
    }

    else
    {
      v5 = [v3 objectAtIndex:{-[CKAudioController currentIndex](self, "currentIndex")}];
    }

    v6 = v5;
    v7 = +[CKAudioSessionController shareInstance];
    v8 = [(CKAudioController *)self audioSessionControllerOptions];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__CKAudioController_prepareToPlay__block_invoke;
    v12[3] = &unk_1E72F45C8;
    v9 = v7;
    v13 = v9;
    v14 = self;
    v10 = v6;
    v15 = v10;
    v16 = &v17;
    [v9 activateWithOptions:v8 completion:v12];
  }

LABEL_8:

  _Block_object_dispose(&v17, 8);
}

uint64_t __34__CKAudioController_prepareToPlay__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isActive])
  {
    v2 = *(*(*(a1 + 56) + 8) + 40);
    if (!v2)
    {
      v3 = -[CKAudioPlayer initWithMediaObject:shouldUseAVPlayer:]([CKAudioPlayer alloc], "initWithMediaObject:shouldUseAVPlayer:", *(a1 + 48), [*(a1 + 40) shouldUseAVPlayer]);
      v4 = *(*(a1 + 56) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      [*(*(*(a1 + 56) + 8) + 40) setDelegate:*(a1 + 40)];
      [*(a1 + 40) setAudioPlayer:*(*(*(a1 + 56) + 8) + 40)];
      v2 = *(*(*(a1 + 56) + 8) + 40);
    }

    return [v2 prepareToPlay];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);

    return [v7 _notifyPlayerDidPrepareMediaObject:v8 successfully:0];
  }
}

- (void)pause
{
  v3 = [(CKAudioController *)self audioPlayer];
  [v3 pause];

  [(CKAudioController *)self setPlaying:0];
  [(CKAudioController *)self setCurrentMediaPlayerInfo];
  v4 = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 audioControllerDidPause:self];
  }
}

- (void)stop
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = [(CKAudioController *)self interrupted];
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Stop (interruption: %d)", v8, 8u);
    }
  }

  v4 = [(CKAudioController *)self audioPlayer];
  [v4 stop];

  [(CKAudioController *)self setPlaying:0];
  if (![(CKAudioController *)self interrupted])
  {
    v5 = +[CKAudioSessionController shareInstance];
    [v5 deactivate];
  }

  v6 = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 audioControllerDidStop:self];
  }

  [(CKAudioController *)self clearMediaPlayerInfo];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"CKAudioControllerStoppedPlaybackNotification" object:0];
}

- (void)setCurrentTime:(double)a3
{
  v5 = [(CKAudioController *)self audioPlayer];
  [v5 setVolume:0.0];

  v6 = [(CKAudioController *)self audioPlayer];
  [v6 setCurrentTime:a3];

  [(CKAudioController *)self setCurrentMediaPlayerInfo];
  v8 = [(CKAudioController *)self audioPlayer];
  LODWORD(v7) = 1.0;
  [v8 setVolume:v7];
}

- (void)layoutViewsForScrubbingTime:(double)a3
{
  v6 = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(CKAudioController *)self currentMediaObject];
    [v6 audioController:self layoutViewsForScrubbingTime:v5 mediaObject:a3];
  }
}

- (void)setPlaybackSpeed:(double)a3
{
  v4 = [(CKAudioController *)self audioPlayer];
  [v4 setPlaybackSpeed:a3];
}

- (double)playbackSpeed
{
  v2 = [(CKAudioController *)self audioPlayer];
  [v2 playbackSpeed];
  v4 = v3;

  return v4;
}

- (CKMediaObject)currentMediaObject
{
  if (self->_currentIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    v4 = [(CKAudioController *)self _mediaObjects];
    v2 = [v4 objectAtIndex:self->_currentIndex];
  }

  return v2;
}

- (double)currentMediaObjectTime
{
  v2 = [(CKAudioController *)self audioPlayer];
  [v2 currentTime];
  v4 = v3;

  return v4;
}

- (double)currentMediaObjectDuration
{
  v2 = [(CKAudioController *)self audioPlayer];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (void)setVolume:(float)a3
{
  v5 = [(CKAudioController *)self audioPlayer];
  *&v4 = a3;
  [v5 setVolume:v4];
}

- (float)volume
{
  v2 = [(CKAudioController *)self audioPlayer];
  [v2 volume];
  v4 = v3;

  return v4;
}

- (void)audioPlayerDidGetInterrupted
{
  [(CKAudioController *)self setInterrupted:1];

  [(CKAudioController *)self stop];
}

- (void)audioPlayerCurrentTimeDidChange:(id)a3
{
  v9 = a3;
  v4 = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(CKAudioController *)self currentMediaObject];
    [v9 currentTime];
    v7 = v6;
    [v9 duration];
    [v4 audioController:self mediaObjectProgressDidChange:v5 currentTime:v7 duration:v8];
  }
}

- (void)audioPlayerDidFinishPlaying:(id)a3
{
  v4 = a3;
  v5 = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CKAudioController *)self currentMediaObject];
    [v5 audioController:self mediaObjectDidFinishPlaying:v6];
  }

  [v4 setDelegate:0];
  [(CKAudioController *)self setAudioPlayer:0];
  v7 = self->_currentIndex + 1;
  v8 = [(CKAudioController *)self _mediaObjects];
  v9 = [v8 count];

  if (v7 >= v9)
  {
    if ([(CKAudioController *)self shouldUseSpeaker])
    {
      [(CKAudioController *)self stop];
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __49__CKAudioController_audioPlayerDidFinishPlaying___block_invoke;
      v10[3] = &unk_1E72EBA18;
      v10[4] = self;
      [(CKAudioController *)self playListenEndSound:v10];
    }
  }

  else
  {
    ++self->_currentIndex;
    [(CKAudioController *)self play];
  }
}

- (void)audioPlayerDidPrepareAudioToPlay:(id)a3 successfully:(BOOL)a4
{
  v5 = [a3 mediaObject];
  [(CKAudioController *)self _notifyPlayerDidPrepareMediaObject:v5 successfully:1];
}

- (void)_notifyPlayerDidPrepareMediaObject:(id)a3 successfully:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 audioController:self didPrepareMediaObjectToPlay:v7 successfully:v4];
  }
}

- (void)playListenSound:(id)a3
{
  v4 = a3;
  v5 = [CKAudioPlayer alloc];
  v6 = [MEMORY[0x1E695DFF8] ckURLForResource:@"MessageListen" withExtension:@"caf"];
  v7 = [(CKAudioPlayer *)v5 initWithFileURL:v6];
  listenAudioPlayer = self->_listenAudioPlayer;
  self->_listenAudioPlayer = v7;

  objc_initWeak(&location, self);
  v9 = self->_listenAudioPlayer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__CKAudioController_playListenSound___block_invoke;
  v11[3] = &unk_1E72F45F0;
  objc_copyWeak(&v13, &location);
  v10 = v4;
  v12 = v10;
  [(CKAudioPlayer *)v9 playAfterDelay:v11 completion:0.0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __37__CKAudioController_playListenSound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;

    v3 = v6;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
    v3 = v6;
  }
}

- (void)playListenEndSound:(id)a3
{
  v4 = a3;
  v5 = [CKAudioPlayer alloc];
  v6 = [MEMORY[0x1E695DFF8] ckURLForResource:@"MessageListenEnd" withExtension:@"caf"];
  v7 = [(CKAudioPlayer *)v5 initWithFileURL:v6];
  listenAudioPlayer = self->_listenAudioPlayer;
  self->_listenAudioPlayer = v7;

  objc_initWeak(&location, self);
  v9 = self->_listenAudioPlayer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__CKAudioController_playListenEndSound___block_invoke;
  v11[3] = &unk_1E72F45F0;
  objc_copyWeak(&v13, &location);
  v10 = v4;
  v12 = v10;
  [(CKAudioPlayer *)v9 playAfterDelay:v11 completion:0.0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __40__CKAudioController_playListenEndSound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;

    v3 = v6;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
    v3 = v6;
  }
}

- (void)audioSessionInterruption:(id)a3
{
  [(CKAudioController *)self setInterrupted:1];
  v4 = [(CKAudioController *)self audioPlayer];
  [v4 stop];

  [(CKAudioController *)self setInterrupted:0];
}

- (void)setPlaying:(BOOL)a3
{
  if (self->_playing != a3)
  {
    v4 = a3;
    self->_playing = a3;
    if (a3)
    {
      [(CKAudioController *)self suppressNowPlaying];
    }

    else
    {
      [(CKAudioController *)self stopSuppressingNowPlaying];
    }

    v6 = [(CKAudioController *)self conversation];
    [v6 setCurrentlyPlayingAudio:v4];

    v7 = [(CKAudioController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 audioControllerPlayingDidChange:self];
    }
  }
}

- (CKAudioControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setupMediaRemoteCommandCenter
{
  v2 = self;
  CKAudioController.setupMediaRemoteCommandCenter()();
}

- (void)setCurrentMediaPlayerInfo
{
  v2 = self;
  CKAudioController.setCurrentMediaPlayerInfo()();
}

- (void)clearMediaPlayerInfo
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 setNowPlayingInfo_];
}

@end