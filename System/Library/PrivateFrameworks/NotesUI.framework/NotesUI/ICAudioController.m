@interface ICAudioController
+ (ICAudioController)sharedAudioController;
+ (void)pauseIfPlaying;
- (BOOL)isPlaying;
- (ICAudioController)init;
- (int64_t)remoteChangePlaybackPosition:(id)a3;
- (int64_t)remoteChangeRate:(id)a3;
- (int64_t)remoteSkipBackward:(id)a3;
- (int64_t)remoteSkipForward:(id)a3;
- (void)attachmentWillBeDeletedNotification:(id)a3;
- (void)deviceWillLock:(id)a3;
- (void)notifyPaused;
- (void)notifyPlaying;
- (void)notifyStopped;
- (void)pause;
- (void)play;
- (void)play:(id)a3;
- (void)playerItemDidPlayToEndTime:(id)a3;
- (void)prepareToPlayAttachment:(id)a3 completion:(id)a4;
- (void)registerForRemoteControlEvents;
- (void)seekToTime:(double)a3 completion:(id)a4;
- (void)setCurrentAttachment:(id)a3;
- (void)skipAheadByInterval:(double)a3 completion:(id)a4;
- (void)skipBackByInterval:(double)a3 completion:(id)a4;
- (void)stop;
- (void)togglePlayPause;
- (void)unregisterForRemoteControlEvents;
- (void)updateNowPlayingInfo;
- (void)updateTime:(double)a3 duration:(double)a4;
@end

@implementation ICAudioController

+ (void)pauseIfPlaying
{
  if (sDidCreateSharedController == 1)
  {
    v3 = [a1 sharedAudioController];
    v4 = [v3 isPlaying];

    if (v4)
    {
      v5 = [a1 sharedAudioController];
      [v5 pause];
    }
  }
}

+ (ICAudioController)sharedAudioController
{
  if (sharedAudioController_once != -1)
  {
    +[ICAudioController sharedAudioController];
  }

  v3 = sharedAudioController_sharedAudioController;

  return v3;
}

void __42__ICAudioController_sharedAudioController__block_invoke()
{
  v0 = objc_alloc_init(ICAudioController);
  v1 = sharedAudioController_sharedAudioController;
  sharedAudioController_sharedAudioController = v0;

  sDidCreateSharedController = 1;
}

- (ICAudioController)init
{
  v6.receiver = self;
  v6.super_class = ICAudioController;
  v2 = [(ICAudioController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_playerItemDidPlayToEndTime_ name:*MEMORY[0x1E6987A10] object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel_deviceWillLock_ name:*MEMORY[0x1E69DDB70] object:0];
  }

  return v2;
}

- (void)registerForRemoteControlEvents
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAudioController registerForRemoteControlEvents]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (![(ICAudioController *)self registeredForRemoteControlEvents])
  {
    v15 = [MEMORY[0x1E69708D8] sharedCommandCenter];
    v3 = [v15 pauseCommand];
    [v3 addTarget:self action:sel_remotePause_];

    v4 = [v15 playCommand];
    [v4 addTarget:self action:sel_remotePlay_];

    v5 = [v15 stopCommand];
    [v5 addTarget:self action:sel_remoteStop_];

    v6 = [v15 togglePlayPauseCommand];
    [v6 addTarget:self action:sel_remoteTogglePlayPause_];

    v7 = [v15 skipBackwardCommand];
    [v7 setEnabled:1];
    [v7 setPreferredIntervals:&unk_1F4FC3B28];
    [v7 addTarget:self action:sel_remoteSkipBackward_];
    v8 = [v15 skipForwardCommand];

    [v8 setEnabled:1];
    [v8 setPreferredIntervals:&unk_1F4FC3B40];
    [v8 addTarget:self action:sel_remoteSkipForward_];
    v9 = [v15 seekForwardCommand];
    [v9 setEnabled:0];

    v10 = [v15 seekBackwardCommand];
    [v10 setEnabled:0];

    v11 = [v15 nextTrackCommand];
    [v11 setEnabled:0];

    v12 = [v15 previousTrackCommand];
    [v12 setEnabled:0];

    v13 = [v15 changePlaybackPositionCommand];
    [v13 setEnabled:1];
    [v13 addTarget:self action:sel_remoteChangePlaybackPosition_];
    v14 = [v15 changePlaybackRateCommand];
    [v14 setEnabled:1];
    [v14 setSupportedPlaybackRates:&unk_1F4FC3B58];
    [v14 addTarget:self action:sel_remoteChangeRate_];
    [(ICAudioController *)self setRegisteredForRemoteControlEvents:1];
  }
}

- (void)unregisterForRemoteControlEvents
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAudioController unregisterForRemoteControlEvents]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if ([(ICAudioController *)self registeredForRemoteControlEvents])
  {
    v11 = [MEMORY[0x1E69708D8] sharedCommandCenter];
    v3 = [v11 pauseCommand];
    [v3 removeTarget:self];

    v4 = [v11 playCommand];
    [v4 removeTarget:self];

    v5 = [v11 stopCommand];
    [v5 removeTarget:self];

    v6 = [v11 togglePlayPauseCommand];
    [v6 removeTarget:self];

    v7 = [v11 skipBackwardCommand];
    [v7 removeTarget:self];

    v8 = [v11 skipForwardCommand];
    [v8 removeTarget:self];

    v9 = [v11 changePlaybackPositionCommand];
    [v9 removeTarget:self];

    v10 = [v11 changePlaybackRateCommand];
    [v10 removeTarget:self];

    [(ICAudioController *)self setRegisteredForRemoteControlEvents:0];
  }
}

- (void)setCurrentAttachment:(id)a3
{
  v5 = a3;
  currentAttachment = self->_currentAttachment;
  v10 = v5;
  if (currentAttachment != v5)
  {
    v7 = MEMORY[0x1E69B7468];
    if (currentAttachment)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:self name:*v7 object:self->_currentAttachment];
    }

    objc_storeStrong(&self->_currentAttachment, a3);
    if (self->_currentAttachment)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 addObserver:self selector:sel_attachmentWillBeDeletedNotification_ name:*v7 object:self->_currentAttachment];
    }
  }
}

- (BOOL)isPlaying
{
  v2 = [(ICAudioController *)self currentPlayer];
  [v2 rate];
  v4 = v3 > 0.0;

  return v4;
}

- (void)play
{
  v3 = [(ICAudioController *)self currentAsset];
  v4 = v3;
  if (v3)
  {
    [v3 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  v6 = [(ICAudioController *)self currentPlayer];
  v7 = v6;
  if (v6)
  {
    [v6 currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v8 = CMTimeGetSeconds(&time);

  [(ICAudioController *)self pendingSeekTime];
  if (v9 != 0.0)
  {
    [(ICAudioController *)self pendingSeekTime];
    [(ICAudioController *)self seekToTime:0 completion:?];
    [(ICAudioController *)self setPendingSeekTime:0.0];
  }

  if (v8 >= Seconds)
  {
    [(ICAudioController *)self seekToTime:0 completion:0.0];
  }

  [(ICAudioController *)self registerForRemoteControlEvents];
  v10 = [MEMORY[0x1E6958460] sharedInstance];
  v11 = *MEMORY[0x1E6958068];
  v18 = 0;
  v12 = [v10 setCategory:v11 error:&v18];
  v13 = v18;
  if ((v12 & 1) == 0)
  {
    v14 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICAudioController play];
    }
  }

  v17 = 0;
  if (([v10 setActive:1 error:&v17] & 1) == 0)
  {
    v15 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ICAudioController play];
    }
  }

  v16 = [(ICAudioController *)self currentPlayer];
  [v16 play];

  [(ICAudioController *)self notifyPlaying];
  [(ICAudioController *)self updateNowPlayingInfo];
}

- (void)pause
{
  v3 = [(ICAudioController *)self currentPlayer];

  if (v3)
  {
    if ([MEMORY[0x1E69DC938] ic_isLocked])
    {

      [(ICAudioController *)self stop];
    }

    else
    {
      v4 = [(ICAudioController *)self currentPlayer];
      [v4 pause];

      [(ICAudioController *)self notifyPaused];

      [(ICAudioController *)self updateNowPlayingInfo];
    }
  }
}

- (void)togglePlayPause
{
  if ([(ICAudioController *)self isPlaying])
  {

    [(ICAudioController *)self pause];
  }

  else
  {

    [(ICAudioController *)self play];
  }
}

- (void)stop
{
  v3 = [(ICAudioController *)self currentPlayer];

  if (v3)
  {
    v4 = [(ICAudioController *)self currentPlayer];
    [v4 pause];

    [(ICAudioController *)self notifyStopped];
    v5 = [(ICAudioController *)self playbackTimeObserver];

    if (v5)
    {
      v6 = [(ICAudioController *)self currentPlayer];
      v7 = [(ICAudioController *)self playbackTimeObserver];
      [v6 removeTimeObserver:v7];

      [(ICAudioController *)self setPlaybackTimeObserver:0];
    }

    [(ICAudioController *)self setCurrentPlayer:0];
    [(ICAudioController *)self setCurrentAttachment:0];
    v8 = [MEMORY[0x1E6970850] defaultCenter];
    [v8 setNowPlayingInfo:0];

    [(ICAudioController *)self unregisterForRemoteControlEvents];
    v9 = [MEMORY[0x1E6958460] sharedInstance];
    v11 = 0;
    if (([v9 setActive:0 error:&v11] & 1) == 0)
    {
      v10 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ICAudioController stop];
      }
    }
  }
}

- (void)prepareToPlayAttachment:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 attachmentType] == 4)
  {
    v8 = [(ICAudioController *)self currentAttachment];

    if (v8 != v6)
    {
      v9 = [(ICAudioController *)self currentPlayer];
      [v9 pause];

      [(ICAudioController *)self notifyStopped];
    }

    [(ICAudioController *)self setCurrentAttachment:0];
    v10 = [v6 managedObjectContext];
    v11 = [v6 attachmentModel];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__ICAudioController_prepareToPlayAttachment_completion___block_invoke;
    v13[3] = &unk_1E846C828;
    v14 = v10;
    v15 = self;
    v16 = v6;
    v17 = v7;
    v12 = v10;
    [v11 assetWithCompletion:v13];
  }
}

void __56__ICAudioController_prepareToPlayAttachment_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__ICAudioController_prepareToPlayAttachment_completion___block_invoke_107;
    v7[3] = &unk_1E846C800;
    v5 = *(a1 + 32);
    v7[4] = *(a1 + 40);
    v8 = v3;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v5 performBlock:v7];
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __56__ICAudioController_prepareToPlayAttachment_completion___block_invoke_cold_1();
    }
  }
}

void __56__ICAudioController_prepareToPlayAttachment_completion___block_invoke_107(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v1 = a1 + 32;
  [*(a1 + 32) setCurrentAsset:*(a1 + 40)];
  [*v1 setCurrentAttachment:*(v1 + 16)];
  v2 = MEMORY[0x1E69880B0];
  v3 = [*v1 currentAsset];
  v4 = [v2 playerItemWithAsset:v3];

  v5 = [*v1 currentPlayer];

  if (v5)
  {
    objc_opt_class();
    v6 = [*(a1 + 32) currentPlayer];
    v7 = [v6 currentItem];
    v8 = [v7 asset];
    v9 = ICDynamicCast();

    objc_opt_class();
    v10 = [*(a1 + 32) currentAsset];
    v11 = ICDynamicCast();

    v12 = 0;
    if (v9 && v11)
    {
      v13 = [v9 URL];
      v14 = [v11 URL];
      v12 = [v13 isEqual:v14];
    }

    objc_opt_class();
    v15 = [*(a1 + 32) currentPlayer];
    v16 = [v15 currentItem];
    v17 = [v16 asset];
    v18 = ICDynamicCast();

    objc_opt_class();
    v19 = [*(a1 + 32) currentAsset];
    v20 = ICDynamicCast();

    if (v18 && v20)
    {
      v21 = ICKeyPathFromSelectors();
      v22 = [v18 valueForKeyPath:{v21, sel_segments, 0}];
      v23 = [v20 valueForKeyPath:v21];
      v24 = [v22 isEqual:v23];

      if (v24)
      {
        goto LABEL_13;
      }
    }

    else if (v12)
    {
LABEL_13:

      goto LABEL_16;
    }

    v27 = [*(a1 + 32) currentPlayer];
    [v27 replaceCurrentItemWithPlayerItem:v4];

    goto LABEL_13;
  }

  v25 = [MEMORY[0x1E6988098] playerWithPlayerItem:v4];
  [*(a1 + 32) setCurrentPlayer:v25];

  v26 = [*(a1 + 32) currentPlayer];
  if ([v26 status] == 1)
  {
  }

  else
  {
    v28 = [*(a1 + 32) currentPlayer];
    v29 = [v28 status];

    if (v29)
    {
      goto LABEL_16;
    }
  }

  objc_initWeak(&location, *(a1 + 32));
  v30 = [*(a1 + 32) currentPlayer];
  CMTimeMakeWithSeconds(&v44, 0.0333333333, 90000);
  v31 = MEMORY[0x1E69E96A0];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __56__ICAudioController_prepareToPlayAttachment_completion___block_invoke_2;
  v42[3] = &unk_1E846C7D8;
  objc_copyWeak(&v43, &location);
  v32 = [v30 addPeriodicTimeObserverForInterval:&v44 queue:MEMORY[0x1E69E96A0] usingBlock:v42];
  [*(a1 + 32) setPlaybackTimeObserver:v32];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
LABEL_16:
  v33 = NSStringFromSelector(sel_tracks);
  v34 = [*(a1 + 32) currentAsset];
  v35 = [v34 statusOfValueForKey:v33 error:0] == 2;

  if (v35)
  {
    v36 = *(a1 + 56);
    if (v36)
    {
      (*(v36 + 16))();
    }
  }

  else
  {
    v37 = [*(a1 + 32) currentAsset];
    v46[0] = v33;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __56__ICAudioController_prepareToPlayAttachment_completion___block_invoke_3;
    v40[3] = &unk_1E846BA48;
    v40[4] = *(a1 + 32);
    v40[5] = v33;
    v41 = *(a1 + 56);
    [v37 loadValuesAsynchronouslyForKeys:v38 completionHandler:v40];
  }
}

void __56__ICAudioController_prepareToPlayAttachment_completion___block_invoke_2(uint64_t a1, CMTime *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained currentAsset];
  v6 = v5;
  if (v5)
  {
    [v5 duration];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  Seconds = CMTimeGetSeconds(&v10);

  v10 = *a2;
  v8 = CMTimeGetSeconds(&v10);
  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 updateTime:v8 duration:Seconds];
}

void __56__ICAudioController_prepareToPlayAttachment_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) currentAsset];
  v3 = [v2 statusOfValueForKey:*(a1 + 40) error:0];

  if (v3 == 2)
  {

    performBlockOnMainThread();
  }
}

- (void)play:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__ICAudioController_play___block_invoke;
  v6[3] = &unk_1E8468F80;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(ICAudioController *)self prepareToPlayAttachment:v5 completion:v6];
}

uint64_t __26__ICAudioController_play___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69B7570];
  v4 = *(a1 + 32);
  v7 = *MEMORY[0x1E69B7568];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:v3 object:0 userInfo:v5];

  return [*(a1 + 40) play];
}

- (void)seekToTime:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(ICAudioController *)self currentPlayer];

  if (v7)
  {
    v8 = [(ICAudioController *)self currentPlayer];
    CMTimeMakeWithSeconds(&v15, a3, 600);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__ICAudioController_seekToTime_completion___block_invoke;
    v13[3] = &unk_1E846C850;
    v13[4] = self;
    v14 = v6;
    v11 = *MEMORY[0x1E6960CC0];
    v12 = *(MEMORY[0x1E6960CC0] + 16);
    v9 = v11;
    v10 = v12;
    [v8 seekToTime:&v15 toleranceBefore:&v11 toleranceAfter:&v9 completionHandler:v13];
  }

  else
  {
    [(ICAudioController *)self setPendingSeekTime:a3];
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

uint64_t __43__ICAudioController_seekToTime_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) updateNowPlayingInfo];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)skipAheadByInterval:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = +[ICAudioController sharedAudioController];
  v8 = [v7 currentPlayer];
  v9 = [v8 currentItem];
  v10 = v9;
  if (v9)
  {
    [v9 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  v12 = +[ICAudioController sharedAudioController];
  v13 = [v12 currentPlayer];
  v14 = v13;
  if (v13)
  {
    [v13 currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v15 = CMTimeGetSeconds(&time) + a3;

  if (Seconds >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = Seconds;
  }

  [(ICAudioController *)self seekToTime:v6 completion:v16];
}

- (void)skipBackByInterval:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(ICAudioController *)self currentPlayer];
  v8 = v7;
  if (v7)
  {
    [v7 currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v9 = CMTimeGetSeconds(&time) - a3;

  [(ICAudioController *)self seekToTime:v6 completion:fmax(v9, 0.0)];
}

- (int64_t)remoteSkipBackward:(id)a3
{
  [a3 interval];
  [(ICAudioController *)self skipBackByInterval:0 completion:?];
  return 0;
}

- (int64_t)remoteSkipForward:(id)a3
{
  [a3 interval];
  [(ICAudioController *)self skipAheadByInterval:0 completion:?];
  return 0;
}

- (int64_t)remoteChangePlaybackPosition:(id)a3
{
  [a3 positionTime];
  [(ICAudioController *)self seekToTime:0 completion:?];
  return 0;
}

- (int64_t)remoteChangeRate:(id)a3
{
  [a3 playbackRate];
  v5 = v4;
  v6 = [(ICAudioController *)self currentPlayer];
  LODWORD(v7) = v5;
  [v6 setRate:v7];

  return 0;
}

- (void)attachmentWillBeDeletedNotification:(id)a3
{
  v6 = [a3 object];
  v4 = [(ICAudioController *)self currentAttachment];

  v5 = v6;
  if (v6 == v4)
  {
    [(ICAudioController *)self stop];
    [(ICAudioController *)self setCurrentAttachment:0];
    v5 = v6;
  }
}

- (void)playerItemDidPlayToEndTime:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v10 = ICDynamicCast();

  v6 = v10;
  if (v10)
  {
    v7 = [(ICAudioController *)self currentPlayer];
    v8 = [v7 currentItem];
    v9 = [v10 isEqual:v8];

    v6 = v10;
    if (v9)
    {
      [(ICAudioController *)self notifyStopped];
      v6 = v10;
    }
  }
}

- (void)deviceWillLock:(id)a3
{
  if (![(ICAudioController *)self isPlaying])
  {

    [(ICAudioController *)self stop];
  }
}

- (void)notifyPlaying
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [(ICAudioController *)self currentAttachment];
  [v4 postNotificationName:@"ICAudioPlaybackPlayNotification" object:v3];
}

- (void)notifyPaused
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [(ICAudioController *)self currentAttachment];
  [v4 postNotificationName:@"ICAudioPlaybackPauseNotification" object:v3];
}

- (void)notifyStopped
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [(ICAudioController *)self currentAttachment];
  [v4 postNotificationName:@"ICAudioPlaybackStopNotification" object:v3];
}

- (void)updateTime:(double)a3 duration:(double)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = [(ICAudioController *)self currentAttachment];
  v12[0] = @"ICAudioPlaybackNotificationTimeKey";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v12[1] = @"ICAudioPlaybackNotificationDurationKey";
  v13[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v7 postNotificationName:@"ICAudioPlaybackTimeChangedNotification" object:v8 userInfo:v11];
}

- (void)updateNowPlayingInfo
{
  v31[4] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69DC938] ic_isLocked] && !-[ICAudioController isPlaying](self, "isPlaying"))
  {
    v28 = [MEMORY[0x1E6970850] defaultCenter];
    [v28 setNowPlayingInfo:0];
  }

  else
  {
    v3 = [(ICAudioController *)self currentAttachment];
    v4 = [v3 title];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v7 = [(ICAudioController *)self currentAttachment];
      v8 = [v7 defaultTitle];
      v9 = v8;
      v10 = &stru_1F4F94F00;
      if (v8)
      {
        v10 = v8;
      }

      v6 = v10;
    }

    v11 = [(ICAudioController *)self currentAsset];
    v12 = v11;
    if (v11)
    {
      [v11 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    v14 = [(ICAudioController *)self currentPlayer];
    v15 = v14;
    if (v14)
    {
      [v14 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v16 = CMTimeGetSeconds(&time);

    v17 = [(ICAudioController *)self currentPlayer];
    [v17 rate];
    v19 = v18;

    v20 = *MEMORY[0x1E696FB88];
    v31[0] = v6;
    v21 = *MEMORY[0x1E6970340];
    v30[0] = v20;
    v30[1] = v21;
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
    v31[1] = v22;
    v30[2] = *MEMORY[0x1E696FAB0];
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:Seconds];
    v31[2] = v23;
    v30[3] = *MEMORY[0x1E6970350];
    LODWORD(v24) = v19;
    v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
    v31[3] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
    v27 = [MEMORY[0x1E6970850] defaultCenter];
    [v27 setNowPlayingInfo:v26];
  }
}

@end