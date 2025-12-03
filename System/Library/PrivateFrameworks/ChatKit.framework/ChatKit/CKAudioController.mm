@interface CKAudioController
- (CKAudioController)initWithMediaObjects:(id)objects conversation:(id)conversation;
- (CKAudioControllerDelegate)delegate;
- (CKMediaObject)currentMediaObject;
- (double)currentMediaObjectDuration;
- (double)currentMediaObjectTime;
- (double)playbackSpeed;
- (float)volume;
- (unint64_t)audioSessionControllerOptions;
- (void)_notifyPlayerDidPrepareMediaObject:(id)object successfully:(BOOL)successfully;
- (void)addMediaObject:(id)object;
- (void)addMediaObjects:(id)objects;
- (void)audioPlayerCurrentTimeDidChange:(id)change;
- (void)audioPlayerDidFinishPlaying:(id)playing;
- (void)audioPlayerDidGetInterrupted;
- (void)audioPlayerDidPrepareAudioToPlay:(id)play successfully:(BOOL)successfully;
- (void)audioSessionInterruption:(id)interruption;
- (void)clearMediaPlayerInfo;
- (void)dealloc;
- (void)layoutViewsForScrubbingTime:(double)time;
- (void)pause;
- (void)play;
- (void)playAfterDelay:(double)delay;
- (void)playListenEndSound:(id)sound;
- (void)playListenSound:(id)sound;
- (void)prepareToPlay;
- (void)setCurrentMediaPlayerInfo;
- (void)setCurrentTime:(double)time;
- (void)setPlaybackSpeed:(double)speed;
- (void)setPlaying:(BOOL)playing;
- (void)setShouldDuckOthers:(BOOL)others;
- (void)setShouldStopPlayingWhenSilent:(BOOL)silent;
- (void)setShouldUseSpeaker:(BOOL)speaker;
- (void)setVolume:(float)volume;
- (void)setupMediaRemoteCommandCenter;
- (void)stop;
@end

@implementation CKAudioController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CKAudioPlayer *)self->_audioPlayer setDelegate:0];
  [(CKAudioPlayer *)self->_audioPlayer stop];
  v4.receiver = self;
  v4.super_class = CKAudioController;
  [(CKAudioController *)&v4 dealloc];
}

- (CKAudioController)initWithMediaObjects:(id)objects conversation:(id)conversation
{
  objectsCopy = objects;
  conversationCopy = conversation;
  v17.receiver = self;
  v17.super_class = CKAudioController;
  v8 = [(CKAudioController *)&v17 init];
  if (v8)
  {
    v9 = [objectsCopy mutableCopy];
    [(CKAudioController *)v8 _setMediaObjects:v9];
    v8->_shouldUseSpeaker = 1;
    [(CKAudioController *)v8 setCurrentIndex:0x7FFFFFFFFFFFFFFFLL];
    [(CKAudioController *)v8 setConversation:conversationCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_audioSessionInterruption_ name:*MEMORY[0x1E69580D8] object:0];
    [defaultCenter addObserver:v8 selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];
    firstObject = [v9 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      firstObject2 = [v9 firstObject];
      messageContext = [firstObject2 messageContext];
      isAudioMessage = [messageContext isAudioMessage];

      if (isAudioMessage)
      {
        [(CKAudioController *)v8 setupMediaRemoteCommandCenter];
      }
    }
  }

  return v8;
}

- (void)addMediaObject:(id)object
{
  objectCopy = object;
  _mediaObjects = [(CKAudioController *)self _mediaObjects];
  [_mediaObjects addObject:objectCopy];
}

- (void)addMediaObjects:(id)objects
{
  objectsCopy = objects;
  _mediaObjects = [(CKAudioController *)self _mediaObjects];
  [_mediaObjects addObjectsFromArray:objectsCopy];
}

- (void)setShouldUseSpeaker:(BOOL)speaker
{
  if (self->_shouldUseSpeaker != speaker)
  {
    self->_shouldUseSpeaker = speaker;
    if ([(CKAudioController *)self isPlaying])
    {
      v4 = +[CKAudioSessionController shareInstance];
      [v4 activateWithOptions:-[CKAudioController audioSessionControllerOptions](self completion:{"audioSessionControllerOptions"), 0}];
    }
  }
}

- (void)setShouldStopPlayingWhenSilent:(BOOL)silent
{
  if (self->_shouldStopPlayingWhenSilent != silent)
  {
    self->_shouldStopPlayingWhenSilent = silent;
    if ([(CKAudioController *)self isPlaying])
    {
      v4 = +[CKAudioSessionController shareInstance];
      [v4 activateWithOptions:-[CKAudioController audioSessionControllerOptions](self completion:{"audioSessionControllerOptions"), 0}];
    }
  }
}

- (void)setShouldDuckOthers:(BOOL)others
{
  if (self->_shouldDuckOthers != others)
  {
    self->_shouldDuckOthers = others;
    if ([(CKAudioController *)self isPlaying])
    {
      v4 = +[CKAudioSessionController shareInstance];
      [v4 activateWithOptions:-[CKAudioController audioSessionControllerOptions](self completion:{"audioSessionControllerOptions"), 0}];
    }
  }
}

- (unint64_t)audioSessionControllerOptions
{
  shouldUseSpeaker = [(CKAudioController *)self shouldUseSpeaker];
  if ([(CKAudioController *)self shouldStopPlayingWhenSilent])
  {
    shouldUseSpeaker |= 2uLL;
  }

  if ([(CKAudioController *)self shouldDuckOthers])
  {
    return shouldUseSpeaker | 4;
  }

  else
  {
    return shouldUseSpeaker;
  }
}

- (void)play
{
  [(CKAudioController *)self playAfterDelay:0.0];

  [(CKAudioController *)self setCurrentMediaPlayerInfo];
}

- (void)playAfterDelay:(double)delay
{
  v37 = *MEMORY[0x1E69E9840];
  currentIndex = [(CKAudioController *)self currentIndex];
  v6 = IMOSLoggingEnabled();
  if (currentIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      _mediaObjects = [(CKAudioController *)self _mediaObjects];
      *buf = 134217984;
      v34 = [_mediaObjects count];
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
      currentIndex2 = [(CKAudioController *)self currentIndex];
      _mediaObjects2 = [(CKAudioController *)self _mediaObjects];
      *buf = 134218240;
      v34 = currentIndex2;
      v35 = 2048;
      v36 = [_mediaObjects2 count];
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Playing %llu of %llu audio messages.", buf, 0x16u);
    }
  }

LABEL_10:
  audioPlayer = [(CKAudioController *)self audioPlayer];
  objc_initWeak(buf, self);
  if (audioPlayer)
  {
    if (![(CKAudioPlayer *)audioPlayer isPlaying])
    {
      objc_initWeak(&location, audioPlayer);
      v12 = +[CKAudioSessionController shareInstance];
      audioSessionControllerOptions = [(CKAudioController *)self audioSessionControllerOptions];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __36__CKAudioController_playAfterDelay___block_invoke;
      v27[3] = &unk_1E72F45A0;
      audioPlayer = audioPlayer;
      v28 = audioPlayer;
      v31[1] = *&delay;
      objc_copyWeak(&v30, buf);
      objc_copyWeak(v31, &location);
      selfCopy = self;
      [v12 activateWithOptions:audioSessionControllerOptions completion:v27];

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

    _mediaObjects3 = [(CKAudioController *)self _mediaObjects];
    currentIndex3 = [(CKAudioController *)self currentIndex];
    if (currentIndex3 >= [_mediaObjects3 count])
    {
      audioPlayer = 0;
    }

    else
    {
      v16 = [_mediaObjects3 objectAtIndex:{-[CKAudioController currentIndex](self, "currentIndex")}];
      if ([v16 shouldSuppressPreview])
      {
        audioPlayer = 0;
      }

      else
      {
        v17 = [[CKAudioPlayer alloc] initWithMediaObject:v16 shouldUseAVPlayer:[(CKAudioController *)self shouldUseAVPlayer]];
        [(CKAudioPlayer *)v17 setDelegate:self];
        [(CKAudioController *)self setAudioPlayer:v17];
        objc_initWeak(&location, v17);
        v18 = +[CKAudioSessionController shareInstance];
        audioSessionControllerOptions2 = [(CKAudioController *)self audioSessionControllerOptions];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __36__CKAudioController_playAfterDelay___block_invoke_3;
        v22[3] = &unk_1E72F45A0;
        audioPlayer = v17;
        v23 = audioPlayer;
        v26[1] = *&delay;
        objc_copyWeak(&v25, buf);
        objc_copyWeak(v26, &location);
        selfCopy2 = self;
        [v18 activateWithOptions:audioSessionControllerOptions2 completion:v22];

        delegate = [(CKAudioController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(CKAudioPlayer *)audioPlayer duration];
          [delegate audioController:self mediaObjectProgressDidChange:v16 currentTime:0.0 duration:v21];
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
  audioPlayer = [(CKAudioController *)self audioPlayer];
  if ([v18[5] isPlaying])
  {
    mediaObject = [v18[5] mediaObject];
    [(CKAudioController *)self _notifyPlayerDidPrepareMediaObject:mediaObject successfully:1];
  }

  else
  {
    if ([(CKAudioController *)self currentIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(CKAudioController *)self setCurrentIndex:0];
    }

    mediaObject = [(CKAudioController *)self _mediaObjects];
    v4 = v18[5];
    if (v4)
    {
      goto LABEL_6;
    }

    currentIndex = [(CKAudioController *)self currentIndex];
    if (currentIndex >= [mediaObject count])
    {
      [(CKAudioController *)self _notifyPlayerDidPrepareMediaObject:0 successfully:0];
      goto LABEL_8;
    }

    v4 = v18[5];
    if (v4)
    {
LABEL_6:
      mediaObject2 = [v4 mediaObject];
    }

    else
    {
      mediaObject2 = [mediaObject objectAtIndex:{-[CKAudioController currentIndex](self, "currentIndex")}];
    }

    v6 = mediaObject2;
    v7 = +[CKAudioSessionController shareInstance];
    audioSessionControllerOptions = [(CKAudioController *)self audioSessionControllerOptions];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__CKAudioController_prepareToPlay__block_invoke;
    v12[3] = &unk_1E72F45C8;
    v9 = v7;
    v13 = v9;
    selfCopy = self;
    v10 = v6;
    v15 = v10;
    v16 = &v17;
    [v9 activateWithOptions:audioSessionControllerOptions completion:v12];
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
  audioPlayer = [(CKAudioController *)self audioPlayer];
  [audioPlayer pause];

  [(CKAudioController *)self setPlaying:0];
  [(CKAudioController *)self setCurrentMediaPlayerInfo];
  delegate = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate audioControllerDidPause:self];
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

  audioPlayer = [(CKAudioController *)self audioPlayer];
  [audioPlayer stop];

  [(CKAudioController *)self setPlaying:0];
  if (![(CKAudioController *)self interrupted])
  {
    v5 = +[CKAudioSessionController shareInstance];
    [v5 deactivate];
  }

  delegate = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate audioControllerDidStop:self];
  }

  [(CKAudioController *)self clearMediaPlayerInfo];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKAudioControllerStoppedPlaybackNotification" object:0];
}

- (void)setCurrentTime:(double)time
{
  audioPlayer = [(CKAudioController *)self audioPlayer];
  [audioPlayer setVolume:0.0];

  audioPlayer2 = [(CKAudioController *)self audioPlayer];
  [audioPlayer2 setCurrentTime:time];

  [(CKAudioController *)self setCurrentMediaPlayerInfo];
  audioPlayer3 = [(CKAudioController *)self audioPlayer];
  LODWORD(v7) = 1.0;
  [audioPlayer3 setVolume:v7];
}

- (void)layoutViewsForScrubbingTime:(double)time
{
  delegate = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentMediaObject = [(CKAudioController *)self currentMediaObject];
    [delegate audioController:self layoutViewsForScrubbingTime:currentMediaObject mediaObject:time];
  }
}

- (void)setPlaybackSpeed:(double)speed
{
  audioPlayer = [(CKAudioController *)self audioPlayer];
  [audioPlayer setPlaybackSpeed:speed];
}

- (double)playbackSpeed
{
  audioPlayer = [(CKAudioController *)self audioPlayer];
  [audioPlayer playbackSpeed];
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
    _mediaObjects = [(CKAudioController *)self _mediaObjects];
    v2 = [_mediaObjects objectAtIndex:self->_currentIndex];
  }

  return v2;
}

- (double)currentMediaObjectTime
{
  audioPlayer = [(CKAudioController *)self audioPlayer];
  [audioPlayer currentTime];
  v4 = v3;

  return v4;
}

- (double)currentMediaObjectDuration
{
  audioPlayer = [(CKAudioController *)self audioPlayer];
  [audioPlayer duration];
  v4 = v3;

  return v4;
}

- (void)setVolume:(float)volume
{
  audioPlayer = [(CKAudioController *)self audioPlayer];
  *&v4 = volume;
  [audioPlayer setVolume:v4];
}

- (float)volume
{
  audioPlayer = [(CKAudioController *)self audioPlayer];
  [audioPlayer volume];
  v4 = v3;

  return v4;
}

- (void)audioPlayerDidGetInterrupted
{
  [(CKAudioController *)self setInterrupted:1];

  [(CKAudioController *)self stop];
}

- (void)audioPlayerCurrentTimeDidChange:(id)change
{
  changeCopy = change;
  delegate = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentMediaObject = [(CKAudioController *)self currentMediaObject];
    [changeCopy currentTime];
    v7 = v6;
    [changeCopy duration];
    [delegate audioController:self mediaObjectProgressDidChange:currentMediaObject currentTime:v7 duration:v8];
  }
}

- (void)audioPlayerDidFinishPlaying:(id)playing
{
  playingCopy = playing;
  delegate = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentMediaObject = [(CKAudioController *)self currentMediaObject];
    [delegate audioController:self mediaObjectDidFinishPlaying:currentMediaObject];
  }

  [playingCopy setDelegate:0];
  [(CKAudioController *)self setAudioPlayer:0];
  v7 = self->_currentIndex + 1;
  _mediaObjects = [(CKAudioController *)self _mediaObjects];
  v9 = [_mediaObjects count];

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

- (void)audioPlayerDidPrepareAudioToPlay:(id)play successfully:(BOOL)successfully
{
  mediaObject = [play mediaObject];
  [(CKAudioController *)self _notifyPlayerDidPrepareMediaObject:mediaObject successfully:1];
}

- (void)_notifyPlayerDidPrepareMediaObject:(id)object successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  objectCopy = object;
  delegate = [(CKAudioController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate audioController:self didPrepareMediaObjectToPlay:objectCopy successfully:successfullyCopy];
  }
}

- (void)playListenSound:(id)sound
{
  soundCopy = sound;
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
  v10 = soundCopy;
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

- (void)playListenEndSound:(id)sound
{
  soundCopy = sound;
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
  v10 = soundCopy;
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

- (void)audioSessionInterruption:(id)interruption
{
  [(CKAudioController *)self setInterrupted:1];
  audioPlayer = [(CKAudioController *)self audioPlayer];
  [audioPlayer stop];

  [(CKAudioController *)self setInterrupted:0];
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    playingCopy = playing;
    self->_playing = playing;
    if (playing)
    {
      [(CKAudioController *)self suppressNowPlaying];
    }

    else
    {
      [(CKAudioController *)self stopSuppressingNowPlaying];
    }

    conversation = [(CKAudioController *)self conversation];
    [conversation setCurrentlyPlayingAudio:playingCopy];

    delegate = [(CKAudioController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate audioControllerPlayingDidChange:self];
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
  selfCopy = self;
  CKAudioController.setupMediaRemoteCommandCenter()();
}

- (void)setCurrentMediaPlayerInfo
{
  selfCopy = self;
  CKAudioController.setCurrentMediaPlayerInfo()();
}

- (void)clearMediaPlayerInfo
{
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter setNowPlayingInfo_];
}

@end