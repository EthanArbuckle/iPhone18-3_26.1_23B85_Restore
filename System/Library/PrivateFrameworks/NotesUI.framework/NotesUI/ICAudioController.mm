@interface ICAudioController
+ (ICAudioController)sharedAudioController;
+ (void)pauseIfPlaying;
- (BOOL)isPlaying;
- (ICAudioController)init;
- (int64_t)remoteChangePlaybackPosition:(id)position;
- (int64_t)remoteChangeRate:(id)rate;
- (int64_t)remoteSkipBackward:(id)backward;
- (int64_t)remoteSkipForward:(id)forward;
- (void)attachmentWillBeDeletedNotification:(id)notification;
- (void)deviceWillLock:(id)lock;
- (void)notifyPaused;
- (void)notifyPlaying;
- (void)notifyStopped;
- (void)pause;
- (void)play;
- (void)play:(id)play;
- (void)playerItemDidPlayToEndTime:(id)time;
- (void)prepareToPlayAttachment:(id)attachment completion:(id)completion;
- (void)registerForRemoteControlEvents;
- (void)seekToTime:(double)time completion:(id)completion;
- (void)setCurrentAttachment:(id)attachment;
- (void)skipAheadByInterval:(double)interval completion:(id)completion;
- (void)skipBackByInterval:(double)interval completion:(id)completion;
- (void)stop;
- (void)togglePlayPause;
- (void)unregisterForRemoteControlEvents;
- (void)updateNowPlayingInfo;
- (void)updateTime:(double)time duration:(double)duration;
@end

@implementation ICAudioController

+ (void)pauseIfPlaying
{
  if (sDidCreateSharedController == 1)
  {
    sharedAudioController = [self sharedAudioController];
    isPlaying = [sharedAudioController isPlaying];

    if (isPlaying)
    {
      sharedAudioController2 = [self sharedAudioController];
      [sharedAudioController2 pause];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_playerItemDidPlayToEndTime_ name:*MEMORY[0x1E6987A10] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_deviceWillLock_ name:*MEMORY[0x1E69DDB70] object:0];
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
    mEMORY[0x1E69708D8] = [MEMORY[0x1E69708D8] sharedCommandCenter];
    pauseCommand = [mEMORY[0x1E69708D8] pauseCommand];
    [pauseCommand addTarget:self action:sel_remotePause_];

    playCommand = [mEMORY[0x1E69708D8] playCommand];
    [playCommand addTarget:self action:sel_remotePlay_];

    stopCommand = [mEMORY[0x1E69708D8] stopCommand];
    [stopCommand addTarget:self action:sel_remoteStop_];

    togglePlayPauseCommand = [mEMORY[0x1E69708D8] togglePlayPauseCommand];
    [togglePlayPauseCommand addTarget:self action:sel_remoteTogglePlayPause_];

    skipBackwardCommand = [mEMORY[0x1E69708D8] skipBackwardCommand];
    [skipBackwardCommand setEnabled:1];
    [skipBackwardCommand setPreferredIntervals:&unk_1F4FC3B28];
    [skipBackwardCommand addTarget:self action:sel_remoteSkipBackward_];
    skipForwardCommand = [mEMORY[0x1E69708D8] skipForwardCommand];

    [skipForwardCommand setEnabled:1];
    [skipForwardCommand setPreferredIntervals:&unk_1F4FC3B40];
    [skipForwardCommand addTarget:self action:sel_remoteSkipForward_];
    seekForwardCommand = [mEMORY[0x1E69708D8] seekForwardCommand];
    [seekForwardCommand setEnabled:0];

    seekBackwardCommand = [mEMORY[0x1E69708D8] seekBackwardCommand];
    [seekBackwardCommand setEnabled:0];

    nextTrackCommand = [mEMORY[0x1E69708D8] nextTrackCommand];
    [nextTrackCommand setEnabled:0];

    previousTrackCommand = [mEMORY[0x1E69708D8] previousTrackCommand];
    [previousTrackCommand setEnabled:0];

    changePlaybackPositionCommand = [mEMORY[0x1E69708D8] changePlaybackPositionCommand];
    [changePlaybackPositionCommand setEnabled:1];
    [changePlaybackPositionCommand addTarget:self action:sel_remoteChangePlaybackPosition_];
    changePlaybackRateCommand = [mEMORY[0x1E69708D8] changePlaybackRateCommand];
    [changePlaybackRateCommand setEnabled:1];
    [changePlaybackRateCommand setSupportedPlaybackRates:&unk_1F4FC3B58];
    [changePlaybackRateCommand addTarget:self action:sel_remoteChangeRate_];
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
    mEMORY[0x1E69708D8] = [MEMORY[0x1E69708D8] sharedCommandCenter];
    pauseCommand = [mEMORY[0x1E69708D8] pauseCommand];
    [pauseCommand removeTarget:self];

    playCommand = [mEMORY[0x1E69708D8] playCommand];
    [playCommand removeTarget:self];

    stopCommand = [mEMORY[0x1E69708D8] stopCommand];
    [stopCommand removeTarget:self];

    togglePlayPauseCommand = [mEMORY[0x1E69708D8] togglePlayPauseCommand];
    [togglePlayPauseCommand removeTarget:self];

    skipBackwardCommand = [mEMORY[0x1E69708D8] skipBackwardCommand];
    [skipBackwardCommand removeTarget:self];

    skipForwardCommand = [mEMORY[0x1E69708D8] skipForwardCommand];
    [skipForwardCommand removeTarget:self];

    changePlaybackPositionCommand = [mEMORY[0x1E69708D8] changePlaybackPositionCommand];
    [changePlaybackPositionCommand removeTarget:self];

    changePlaybackRateCommand = [mEMORY[0x1E69708D8] changePlaybackRateCommand];
    [changePlaybackRateCommand removeTarget:self];

    [(ICAudioController *)self setRegisteredForRemoteControlEvents:0];
  }
}

- (void)setCurrentAttachment:(id)attachment
{
  attachmentCopy = attachment;
  currentAttachment = self->_currentAttachment;
  v10 = attachmentCopy;
  if (currentAttachment != attachmentCopy)
  {
    v7 = MEMORY[0x1E69B7468];
    if (currentAttachment)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:*v7 object:self->_currentAttachment];
    }

    objc_storeStrong(&self->_currentAttachment, attachment);
    if (self->_currentAttachment)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_attachmentWillBeDeletedNotification_ name:*v7 object:self->_currentAttachment];
    }
  }
}

- (BOOL)isPlaying
{
  currentPlayer = [(ICAudioController *)self currentPlayer];
  [currentPlayer rate];
  v4 = v3 > 0.0;

  return v4;
}

- (void)play
{
  currentAsset = [(ICAudioController *)self currentAsset];
  v4 = currentAsset;
  if (currentAsset)
  {
    [currentAsset duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  currentPlayer = [(ICAudioController *)self currentPlayer];
  v7 = currentPlayer;
  if (currentPlayer)
  {
    [currentPlayer currentTime];
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
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  v11 = *MEMORY[0x1E6958068];
  v18 = 0;
  v12 = [mEMORY[0x1E6958460] setCategory:v11 error:&v18];
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
  if (([mEMORY[0x1E6958460] setActive:1 error:&v17] & 1) == 0)
  {
    v15 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ICAudioController play];
    }
  }

  currentPlayer2 = [(ICAudioController *)self currentPlayer];
  [currentPlayer2 play];

  [(ICAudioController *)self notifyPlaying];
  [(ICAudioController *)self updateNowPlayingInfo];
}

- (void)pause
{
  currentPlayer = [(ICAudioController *)self currentPlayer];

  if (currentPlayer)
  {
    if ([MEMORY[0x1E69DC938] ic_isLocked])
    {

      [(ICAudioController *)self stop];
    }

    else
    {
      currentPlayer2 = [(ICAudioController *)self currentPlayer];
      [currentPlayer2 pause];

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
  currentPlayer = [(ICAudioController *)self currentPlayer];

  if (currentPlayer)
  {
    currentPlayer2 = [(ICAudioController *)self currentPlayer];
    [currentPlayer2 pause];

    [(ICAudioController *)self notifyStopped];
    playbackTimeObserver = [(ICAudioController *)self playbackTimeObserver];

    if (playbackTimeObserver)
    {
      currentPlayer3 = [(ICAudioController *)self currentPlayer];
      playbackTimeObserver2 = [(ICAudioController *)self playbackTimeObserver];
      [currentPlayer3 removeTimeObserver:playbackTimeObserver2];

      [(ICAudioController *)self setPlaybackTimeObserver:0];
    }

    [(ICAudioController *)self setCurrentPlayer:0];
    [(ICAudioController *)self setCurrentAttachment:0];
    defaultCenter = [MEMORY[0x1E6970850] defaultCenter];
    [defaultCenter setNowPlayingInfo:0];

    [(ICAudioController *)self unregisterForRemoteControlEvents];
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    v11 = 0;
    if (([mEMORY[0x1E6958460] setActive:0 error:&v11] & 1) == 0)
    {
      v10 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ICAudioController stop];
      }
    }
  }
}

- (void)prepareToPlayAttachment:(id)attachment completion:(id)completion
{
  attachmentCopy = attachment;
  completionCopy = completion;
  if ([attachmentCopy attachmentType] == 4)
  {
    currentAttachment = [(ICAudioController *)self currentAttachment];

    if (currentAttachment != attachmentCopy)
    {
      currentPlayer = [(ICAudioController *)self currentPlayer];
      [currentPlayer pause];

      [(ICAudioController *)self notifyStopped];
    }

    [(ICAudioController *)self setCurrentAttachment:0];
    managedObjectContext = [attachmentCopy managedObjectContext];
    attachmentModel = [attachmentCopy attachmentModel];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__ICAudioController_prepareToPlayAttachment_completion___block_invoke;
    v13[3] = &unk_1E846C828;
    v14 = managedObjectContext;
    selfCopy = self;
    v16 = attachmentCopy;
    v17 = completionCopy;
    v12 = managedObjectContext;
    [attachmentModel assetWithCompletion:v13];
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

- (void)play:(id)play
{
  playCopy = play;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__ICAudioController_play___block_invoke;
  v6[3] = &unk_1E8468F80;
  v7 = playCopy;
  selfCopy = self;
  v5 = playCopy;
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

- (void)seekToTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  currentPlayer = [(ICAudioController *)self currentPlayer];

  if (currentPlayer)
  {
    currentPlayer2 = [(ICAudioController *)self currentPlayer];
    CMTimeMakeWithSeconds(&v15, time, 600);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__ICAudioController_seekToTime_completion___block_invoke;
    v13[3] = &unk_1E846C850;
    v13[4] = self;
    v14 = completionCopy;
    v11 = *MEMORY[0x1E6960CC0];
    v12 = *(MEMORY[0x1E6960CC0] + 16);
    v9 = v11;
    v10 = v12;
    [currentPlayer2 seekToTime:&v15 toleranceBefore:&v11 toleranceAfter:&v9 completionHandler:v13];
  }

  else
  {
    [(ICAudioController *)self setPendingSeekTime:time];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
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

- (void)skipAheadByInterval:(double)interval completion:(id)completion
{
  completionCopy = completion;
  v7 = +[ICAudioController sharedAudioController];
  currentPlayer = [v7 currentPlayer];
  currentItem = [currentPlayer currentItem];
  v10 = currentItem;
  if (currentItem)
  {
    [currentItem duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  v12 = +[ICAudioController sharedAudioController];
  currentPlayer2 = [v12 currentPlayer];
  v14 = currentPlayer2;
  if (currentPlayer2)
  {
    [currentPlayer2 currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v15 = CMTimeGetSeconds(&time) + interval;

  if (Seconds >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = Seconds;
  }

  [(ICAudioController *)self seekToTime:completionCopy completion:v16];
}

- (void)skipBackByInterval:(double)interval completion:(id)completion
{
  completionCopy = completion;
  currentPlayer = [(ICAudioController *)self currentPlayer];
  v8 = currentPlayer;
  if (currentPlayer)
  {
    [currentPlayer currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v9 = CMTimeGetSeconds(&time) - interval;

  [(ICAudioController *)self seekToTime:completionCopy completion:fmax(v9, 0.0)];
}

- (int64_t)remoteSkipBackward:(id)backward
{
  [backward interval];
  [(ICAudioController *)self skipBackByInterval:0 completion:?];
  return 0;
}

- (int64_t)remoteSkipForward:(id)forward
{
  [forward interval];
  [(ICAudioController *)self skipAheadByInterval:0 completion:?];
  return 0;
}

- (int64_t)remoteChangePlaybackPosition:(id)position
{
  [position positionTime];
  [(ICAudioController *)self seekToTime:0 completion:?];
  return 0;
}

- (int64_t)remoteChangeRate:(id)rate
{
  [rate playbackRate];
  v5 = v4;
  currentPlayer = [(ICAudioController *)self currentPlayer];
  LODWORD(v7) = v5;
  [currentPlayer setRate:v7];

  return 0;
}

- (void)attachmentWillBeDeletedNotification:(id)notification
{
  object = [notification object];
  currentAttachment = [(ICAudioController *)self currentAttachment];

  v5 = object;
  if (object == currentAttachment)
  {
    [(ICAudioController *)self stop];
    [(ICAudioController *)self setCurrentAttachment:0];
    v5 = object;
  }
}

- (void)playerItemDidPlayToEndTime:(id)time
{
  timeCopy = time;
  objc_opt_class();
  object = [timeCopy object];

  v10 = ICDynamicCast();

  v6 = v10;
  if (v10)
  {
    currentPlayer = [(ICAudioController *)self currentPlayer];
    currentItem = [currentPlayer currentItem];
    v9 = [v10 isEqual:currentItem];

    v6 = v10;
    if (v9)
    {
      [(ICAudioController *)self notifyStopped];
      v6 = v10;
    }
  }
}

- (void)deviceWillLock:(id)lock
{
  if (![(ICAudioController *)self isPlaying])
  {

    [(ICAudioController *)self stop];
  }
}

- (void)notifyPlaying
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  currentAttachment = [(ICAudioController *)self currentAttachment];
  [defaultCenter postNotificationName:@"ICAudioPlaybackPlayNotification" object:currentAttachment];
}

- (void)notifyPaused
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  currentAttachment = [(ICAudioController *)self currentAttachment];
  [defaultCenter postNotificationName:@"ICAudioPlaybackPauseNotification" object:currentAttachment];
}

- (void)notifyStopped
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  currentAttachment = [(ICAudioController *)self currentAttachment];
  [defaultCenter postNotificationName:@"ICAudioPlaybackStopNotification" object:currentAttachment];
}

- (void)updateTime:(double)time duration:(double)duration
{
  v13[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  currentAttachment = [(ICAudioController *)self currentAttachment];
  v12[0] = @"ICAudioPlaybackNotificationTimeKey";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  v12[1] = @"ICAudioPlaybackNotificationDurationKey";
  v13[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [defaultCenter postNotificationName:@"ICAudioPlaybackTimeChangedNotification" object:currentAttachment userInfo:v11];
}

- (void)updateNowPlayingInfo
{
  v31[4] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69DC938] ic_isLocked] && !-[ICAudioController isPlaying](self, "isPlaying"))
  {
    defaultCenter = [MEMORY[0x1E6970850] defaultCenter];
    [defaultCenter setNowPlayingInfo:0];
  }

  else
  {
    currentAttachment = [(ICAudioController *)self currentAttachment];
    title = [currentAttachment title];
    v5 = title;
    if (title)
    {
      v6 = title;
    }

    else
    {
      currentAttachment2 = [(ICAudioController *)self currentAttachment];
      defaultTitle = [currentAttachment2 defaultTitle];
      v9 = defaultTitle;
      v10 = &stru_1F4F94F00;
      if (defaultTitle)
      {
        v10 = defaultTitle;
      }

      v6 = v10;
    }

    currentAsset = [(ICAudioController *)self currentAsset];
    v12 = currentAsset;
    if (currentAsset)
    {
      [currentAsset duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    currentPlayer = [(ICAudioController *)self currentPlayer];
    v15 = currentPlayer;
    if (currentPlayer)
    {
      [currentPlayer currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v16 = CMTimeGetSeconds(&time);

    currentPlayer2 = [(ICAudioController *)self currentPlayer];
    [currentPlayer2 rate];
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
    defaultCenter2 = [MEMORY[0x1E6970850] defaultCenter];
    [defaultCenter2 setNowPlayingInfo:v26];
  }
}

@end