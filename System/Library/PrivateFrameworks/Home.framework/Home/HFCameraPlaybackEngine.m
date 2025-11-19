@interface HFCameraPlaybackEngine
+ (id)findClipPositionForDate:(id)a3 inEvents:(id)a4 options:(unint64_t)a5;
+ (unint64_t)hf_indexOfClipForDate:(id)a3 inEvents:(id)a4 enumerationOptions:(unint64_t)a5 searchOptions:(unint64_t)a6;
- (AVPlayer)player;
- (BOOL)hasRecordingEvents;
- (BOOL)isCameraPortraitMode;
- (BOOL)isDeallocating;
- (BOOL)isFirstEventOfTheDay:(id)a3;
- (BOOL)isLiveStreamPlaying;
- (BOOL)isLiveStreaming;
- (BOOL)shouldBatchRecordingEvents;
- (BOOL)shouldDisplayVolumeControls;
- (HFCameraPlaybackEngine)initWithConfiguration:(id)a3;
- (HFCameraPlaybackPosition)playbackPosition;
- (HMCameraClip)clipWithLongestDuration;
- (HMCameraClip)currentClip;
- (HMCameraClipManager)clipManager;
- (HMCameraProfile)cameraProfile;
- (NSArray)cameraClips;
- (NSArray)cameraEvents;
- (NSArray)observers;
- (NSDictionary)batchedRecordingEventsByUUID;
- (NSUUID)notificationCenterClipUUID;
- (id)_derivedPlaybackError;
- (id)_dispatchToObserversDidUpdateEventCache:(id)a3;
- (id)daysWithClips;
- (id)engineModeDescription;
- (id)fetchCameraEvents;
- (id)fetchClipForSignificantEventWithUUID:(id)a3;
- (id)fetchClipWithUUID:(id)a3;
- (id)findClipPositionForDate:(id)a3;
- (id)findClipPositionForDate:(id)a3 options:(unint64_t)a4;
- (id)firstOfTheDayClipForDate:(id)a3;
- (id)shortDebugDescription;
- (id)timeControlStatusDescription;
- (id)timelineStateDescription;
- (unint64_t)_derivedTimeControlStatus;
- (unint64_t)engineMode;
- (void)_recordingEventManager:(id)a3 didUpdateRecordingEvents:(id)a4;
- (void)_resetBatchedRecordingEventsTimer;
- (void)_setPlayerVolume:(float)a3 notifyObservers:(BOOL)a4;
- (void)_setStreamAudioEnabled:(BOOL)a3 notifyObservers:(BOOL)a4;
- (void)_setupClipPlayerWithClipManager:(id)a3;
- (void)_setupLiveStreamController:(id)a3;
- (void)_setupTimeObservationForObserver:(id)a3;
- (void)addObserver:(id)a3 withOptions:(id)a4;
- (void)beginScrubbing;
- (void)clipPlayer:(id)a3 didUpdateError:(id)a4 isFatal:(BOOL)a5;
- (void)clipPlayer:(id)a3 didUpdateTimeControlStatus:(int64_t)a4;
- (void)clipPlayerDidPlayToEndTime:(id)a3;
- (void)dealloc;
- (void)endScrubbing;
- (void)modifyPlaybackFromSender:(id)a3 usingBlock:(id)a4;
- (void)recordingEventManager:(id)a3 didRemoveRecordingEventsWithUUIDs:(id)a4;
- (void)recordingEventManager:(id)a3 didUpdateRecordingEvents:(id)a4;
- (void)removeObserver:(id)a3;
- (void)setBatchedRecordingEvents:(id)a3;
- (void)setCameraProfile:(id)a3;
- (void)setClipManager:(id)a3;
- (void)setIsDeallocating:(BOOL)a3;
- (void)setLiveCameraSource:(id)a3;
- (void)setNotificationCenterClipUUID:(id)a3;
- (void)setPlaybackPosition:(id)a3;
- (void)setScrubbing:(BOOL)a3;
- (void)setShouldBatchRecordingEvents:(BOOL)a3;
- (void)setShouldBypassVideoFetchRequest:(BOOL)a3;
- (void)setTimelineState:(unint64_t)a3;
- (void)setWantsToPlay:(BOOL)a3;
- (void)startPlaybackAtDate:(id)a3 withClip:(id)a4;
- (void)startPlaybackForCurrentClip;
- (void)streamControllerStateDidUpdate:(id)a3;
- (void)timerDidFire:(id)a3;
- (void)updateConfiguration:(id)a3;
- (void)updateLiveStreamForCameraProfile:(id)a3;
- (void)updatePlaybackPositionToDate:(id)a3 usingClip:(id)a4;
@end

@implementation HFCameraPlaybackEngine

- (HFCameraPlaybackEngine)initWithConfiguration:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = HFCameraPlaybackEngine;
  v5 = [(HFCameraPlaybackEngine *)&v26 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.homeFramework.cameraPlaybackEngine.workQueue", v6);
    workQueue = v5->_workQueue;
    v5->_workQueue = v7;

    v9 = objc_alloc(MEMORY[0x277D2C8E8]);
    v10 = HFLogForCategory(0x17uLL);
    v11 = [v9 initWithLog:v10 logType:1 argumentFormatter:0];

    v12 = [MEMORY[0x277D2C8E0] dispatcherWithProtocol:&unk_2825BB148 logSettings:v11];
    observerDispatcher = v5->_observerDispatcher;
    v5->_observerDispatcher = v12;

    v14 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observerStates = v5->_observerStates;
    v5->_observerStates = v14;

    v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5->_prefersAudioEnabled = [v16 BOOLForKey:@"HFCameraPlaybackPrefersAudioEnabled"];

    [(HFCameraPlaybackEngine *)v5 setStreamAudioEnabled:[(HFCameraPlaybackEngine *)v5 prefersAudioEnabled]];
    v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v17 floatForKey:@"HFCameraPlaybackStreamAudioVolume"];
    v19 = v18;

    v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v21 = [v20 objectForKey:@"HFCameraPlaybackStreamAudioVolume"];

    LODWORD(v22) = 0.5;
    if (v21)
    {
      *&v22 = v19;
    }

    [(HFCameraPlaybackEngine *)v5 setStreamAudioVolume:v22];
    v23 = objc_opt_new();
    batchedRecordingEventsByUUID = v5->_batchedRecordingEventsByUUID;
    v5->_batchedRecordingEventsByUUID = v23;

    if (v4)
    {
      [(HFCameraPlaybackEngine *)v5 updateConfiguration:v4];
    }
  }

  return v5;
}

- (void)updateLiveStreamForCameraProfile:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFCameraPlaybackEngine *)self cameraProfile];

  v6 = HFLogForCategory(0x17uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == v4)
  {
    if (v7)
    {
      v11 = [(HFCameraPlaybackEngine *)self cameraProfile];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Bypassing live stream update for the current profile:%@", &v15, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v8 = [(HFCameraPlaybackEngine *)self cameraProfile];
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Updating from camera profile:%@ to profile:%@", &v15, 0x16u);
    }

    [(HFCameraPlaybackEngine *)self setCameraProfile:v4];
    v9 = [(HFCameraPlaybackEngine *)self overrideLiveStreamController];
    v10 = v9;
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v12 = [HFCameraLiveStreamController alloc];
      v13 = [(HFCameraPlaybackEngine *)self home];
      v6 = [(HFCameraLiveStreamController *)v12 initWithHome:v13 cameraProfile:v4];
    }

    [(HFCameraPlaybackEngine *)self _setupLiveStreamController:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setCameraProfile:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  cameraProfile = self->_cameraProfile;
  self->_cameraProfile = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMCameraProfile)cameraProfile
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cameraProfile;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setShouldBatchRecordingEvents:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_shouldBatchRecordingEvents = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldBatchRecordingEvents
{
  os_unfair_lock_lock_with_options();
  shouldBatchRecordingEvents = self->_shouldBatchRecordingEvents;
  os_unfair_lock_unlock(&self->_lock);
  return shouldBatchRecordingEvents;
}

- (void)setNotificationCenterClipUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  notificationCenterClipUUID = self->_notificationCenterClipUUID;
  self->_notificationCenterClipUUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)notificationCenterClipUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationCenterClipUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIsDeallocating:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_isDeallocating = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isDeallocating
{
  os_unfair_lock_lock_with_options();
  isDeallocating = self->_isDeallocating;
  os_unfair_lock_unlock(&self->_lock);
  return isDeallocating;
}

- (void)setBatchedRecordingEvents:(id)a3
{
  v4 = a3;
  if (!+[HFUtilities isInternalTest])
  {
    v5 = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(v5);
  }

  batchedRecordingEventsByUUID = self->_batchedRecordingEventsByUUID;
  self->_batchedRecordingEventsByUUID = v4;
}

- (NSDictionary)batchedRecordingEventsByUUID
{
  if (!+[HFUtilities isInternalTest])
  {
    v3 = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(v3);
  }

  batchedRecordingEventsByUUID = self->_batchedRecordingEventsByUUID;

  return batchedRecordingEventsByUUID;
}

- (void)_setupLiveStreamController:(id)a3
{
  v4 = a3;
  liveStreamController = self->_liveStreamController;
  if (liveStreamController != v4)
  {
    [(HFCameraLiveStreamControlling *)self->_liveStreamController setDelegate:0];
    liveStreamController = self->_liveStreamController;
  }

  self->_liveStreamController = v4;
  v8 = v4;

  [(HFCameraLiveStreamControlling *)self->_liveStreamController setDelegate:self];
  v6 = [(HFCameraLiveStreamControlling *)v8 liveCameraSource];
  liveCameraSource = self->_liveCameraSource;
  self->_liveCameraSource = v6;
}

- (void)_setupClipPlayerWithClipManager:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(HFCameraPlaybackEngine *)self eventCache];
    v5 = [v4 clips];

    v6 = [(HFCameraPlaybackEngine *)self overrideClipPlayer];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      clipPlayer = self->_clipPlayer;
      self->_clipPlayer = v8;
    }

    else
    {
      v15 = [HFCameraClipPlayer alloc];
      clipPlayer = [(HFCameraPlaybackEngine *)self cameraProfile];
      v16 = [(HFCameraClipPlayer *)v15 initWithCameraProfile:clipPlayer clips:v5];
      v17 = self->_clipPlayer;
      self->_clipPlayer = v16;
    }

    [(HFCameraClipPlaying *)self->_clipPlayer setDelegate:self];
    v18 = [(HFCameraPlaybackEngine *)self clipScrubber];
    [(HFCameraClipPlaying *)self->_clipPlayer setScrubber:v18];

    v19 = [(HFCameraPlaybackEngine *)self playbackPosition];
    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:v19 notifyObservers:0];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v20 = [(HFCameraPlaybackEngine *)self observerStates];
    v21 = [v20 keyEnumerator];

    v22 = [v21 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v44;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [(HFCameraPlaybackEngine *)self _setupTimeObservationForObserver:*(*(&v43 + 1) + 8 * i)];
        }

        v23 = [v21 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v23);
    }

LABEL_27:

    v38 = *MEMORY[0x277D85DE8];
    return;
  }

  if (+[HFUtilities isPressDemoModeEnabled])
  {
    v10 = [(HFCameraPlaybackEngine *)self cameraProfile];
    v5 = [HFDemoModeAccessoryManager clipsForCameraProfile:v10];

    v11 = [(HFCameraPlaybackEngine *)self overrideClipPlayer];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      v14 = self->_clipPlayer;
      self->_clipPlayer = v13;
    }

    else
    {
      v28 = [HFCameraClipPlayer alloc];
      v14 = [(HFCameraPlaybackEngine *)self cameraProfile];
      v29 = [(HFCameraClipPlayer *)v28 initWithCameraProfile:v14 clips:v5];
      v30 = self->_clipPlayer;
      self->_clipPlayer = v29;
    }

    [(HFCameraClipPlaying *)self->_clipPlayer setDelegate:self];
    v31 = [(HFCameraPlaybackEngine *)self clipScrubber];
    [(HFCameraClipPlaying *)self->_clipPlayer setScrubber:v31];

    v32 = [(HFCameraPlaybackEngine *)self playbackPosition];
    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:v32 notifyObservers:0];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = [(HFCameraPlaybackEngine *)self observerStates];
    v21 = [v33 keyEnumerator];

    v34 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v40;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v40 != v36)
          {
            objc_enumerationMutation(v21);
          }

          [(HFCameraPlaybackEngine *)self _setupTimeObservationForObserver:*(*(&v39 + 1) + 8 * j)];
        }

        v35 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v35);
    }

    goto LABEL_27;
  }

  [(HFCameraClipPlaying *)self->_clipPlayer setDelegate:0];
  [(HFCameraClipPlaying *)self->_clipPlayer setScrubber:0];
  v26 = self->_clipPlayer;
  self->_clipPlayer = 0;
  v27 = *MEMORY[0x277D85DE8];
}

- (void)_setupTimeObservationForObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraPlaybackEngine *)self observerStates];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 options];
  v8 = [v7 periodicTimeUpdateInterval];

  if (v8)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v4);
    v9 = [v6 options];
    v10 = [v9 periodicTimeUpdateInterval];
    [v10 doubleValue];
    v12 = v11;

    v13 = [(HFCameraPlaybackEngine *)self clipPlayer];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __59__HFCameraPlaybackEngine__setupTimeObservationForObserver___block_invoke;
    v18 = &unk_277DF5690;
    objc_copyWeak(&v19, &location);
    objc_copyWeak(&v20, &from);
    v14 = [v13 addPeriodicTimeObserverForInterval:&v15 usingBlock:v12];
    [v6 setTimeObservationToken:{v14, v15, v16, v17, v18}];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __59__HFCameraPlaybackEngine__setupTimeObservationForObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [WeakRetained playbackPosition];
    [v2 playbackEngine:WeakRetained didUpdatePlaybackPosition:v3];
  }
}

- (id)fetchCameraEvents
{
  v35 = *MEMORY[0x277D85DE8];
  if (+[HFUtilities isPressDemoModeEnabled])
  {
    v3 = [(HFCameraPlaybackEngine *)self cameraProfile];
    v4 = [v3 clipManager];
    [(HFCameraPlaybackEngine *)self setClipManager:v4];

    v5 = [(HFCameraPlaybackEngine *)self cameraProfile];
    v6 = [HFDemoModeAccessoryManager clipsForCameraProfile:v5];
    v7 = v6;
    v8 = MEMORY[0x277CBEBF8];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    objc_initWeak(location, self);
    v10 = [(HFCameraPlaybackEngine *)self eventCache];
    v11 = [v10 updateWithEvents:v9];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke;
    v30[3] = &unk_277E00880;
    objc_copyWeak(&v31, location);
    v12 = [v11 flatMap:v30];
    objc_destroyWeak(&v31);

    objc_destroyWeak(location);
  }

  else
  {
    v13 = MEMORY[0x277CBEAA8];
    v14 = [MEMORY[0x277CBEAA8] now];
    v9 = [v13 dateWithTimeInterval:v14 sinceDate:-950400.0];

    v15 = [MEMORY[0x277CBEAA8] distantFuture];
    v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v15];
    v17 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138412546;
      *&location[4] = v16;
      v33 = 2048;
      v34 = 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Loading clips with date interval:%@; limit:%lu", location, 0x16u);
    }

    v18 = HFLogForCategory(0xFuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138412546;
      *&location[4] = v16;
      v33 = 2048;
      v34 = 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Requesting playback engine clips with date interval:%@; limit:%lu", location, 0x16u);
    }

    objc_initWeak(location, self);
    v19 = MEMORY[0x277D2C900];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_82;
    v26[3] = &unk_277E008A8;
    objc_copyWeak(v28, location);
    v20 = v16;
    v27 = v20;
    v28[1] = 0x7FFFFFFFFFFFFFFFLL;
    v29 = 0;
    v21 = [v19 futureWithCompletionHandlerAdapterBlock:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_2_84;
    v24[3] = &unk_277DF52E0;
    objc_copyWeak(&v25, location);
    v12 = [v21 flatMap:v24];
    objc_destroyWeak(&v25);

    objc_destroyWeak(v28);
    objc_destroyWeak(location);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

id __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_2;
  v8[3] = &unk_277E00858;
  objc_copyWeak(&v9, (a1 + 32));
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  return v6;
}

id __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained eventCache];
  v4 = [v3 events];
  v5 = [v1 futureWithResult:v4];

  return v5;
}

void __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained cameraProfile];
  v5 = [v4 recordingEventManager];
  [v5 fetchEventsWithDateInterval:*(a1 + 32) quality:0 limit:*(a1 + 48) shouldOrderAscending:*(a1 + 56) completion:v3];
}

id __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_2_84(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained eventCache];
  v6 = [v5 updateWithEvents:v3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_3;
  v9[3] = &unk_277E00880;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  return v7;
}

id __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_4;
  v8[3] = &unk_277E00858;
  objc_copyWeak(&v9, (a1 + 32));
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  return v6;
}

id __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained eventCache];
  v4 = [v3 events];
  v5 = [v1 futureWithResult:v4];

  return v5;
}

- (id)fetchClipWithUUID:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Loading engine for clip UUID:%@.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = MEMORY[0x277D2C900];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke;
  v21[3] = &unk_277E008D0;
  objc_copyWeak(&v23, buf);
  v7 = v4;
  v22 = v7;
  v8 = [v6 futureWithCompletionHandlerAdapterBlock:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_2;
  v19[3] = &unk_277E00920;
  objc_copyWeak(&v20, buf);
  v9 = [v8 flatMap:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_5;
  v16[3] = &unk_277DF8400;
  objc_copyWeak(&v18, buf);
  v10 = v7;
  v17 = v10;
  v11 = [v9 addFailureBlock:v16];
  v12 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v13 = [v11 reschedule:v12];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained cameraProfile];
  v5 = [v4 clipManager];
  [v5 fetchClipWithUUID:*(a1 + 32) completion:v3];
}

id __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained eventCache];
  v15[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v7 = [v5 updateWithEvents:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_3;
  v12[3] = &unk_277E008F8;
  objc_copyWeak(&v14, (a1 + 32));
  v8 = v3;
  v13 = v8;
  v9 = [v7 flatMap:v12];

  objc_destroyWeak(&v14);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v3];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_4;
  v8[3] = &unk_277DF8340;
  v9 = *(a1 + 32);
  v6 = [v5 flatMap:v8];

  return v6;
}

void __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_5(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained cameraProfile];
    v8 = [v7 clipManager];
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Clip manager:%@ failed to fetch clip %@ with error:%@", &v10, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)fetchClipForSignificantEventWithUUID:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x16uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HFCameraPlaybackEngine *)self cameraProfile];
    *buf = 138412546;
    v31 = v4;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(NC) Request clip for uuid:%@ using profile:%@.", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7 = MEMORY[0x277D2C900];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke;
  v27[3] = &unk_277E008D0;
  objc_copyWeak(&v29, buf);
  v8 = v4;
  v28 = v8;
  v9 = [v7 futureWithCompletionHandlerAdapterBlock:v27];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_2;
  v24[3] = &unk_277E00948;
  objc_copyWeak(&v26, buf);
  v10 = v8;
  v25 = v10;
  v11 = [v9 flatMap:v24];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_3;
  v21 = &unk_277DF8400;
  objc_copyWeak(&v23, buf);
  v12 = v10;
  v22 = v12;
  v13 = [v11 addFailureBlock:&v18];
  v14 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v15 = [v13 reschedule:v14];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained cameraProfile];
  v5 = [v4 clipManager];
  [v5 fetchClipForSignificantEventWithUUID:*(a1 + 32) completion:v3];
}

id __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained cameraProfile];
    v7 = [v6 clipManager];
    v8 = *(a1 + 32);
    *buf = 138412802;
    v23 = v7;
    v24 = 2112;
    v25 = v3;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(NC) Clip manager:%@ found clip:%@ for UUID:%@", buf, 0x20u);
  }

  if ([v3 isComplete])
  {
    v9 = [WeakRetained cameraProfile];
    v10 = [v9 recordingEventManager];
    [v10 removeObserver:WeakRetained];
  }

  v11 = [WeakRetained eventCache];
  v21 = v3;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v13 = [v11 updateWithEvents:v12];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_90;
  v18[3] = &unk_277E008F8;
  objc_copyWeak(&v20, (a1 + 40));
  v14 = v3;
  v19 = v14;
  v15 = [v13 flatMap:v18];

  objc_destroyWeak(&v20);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v3];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_2_91;
  v8[3] = &unk_277DF8340;
  v9 = *(a1 + 32);
  v6 = [v5 flatMap:v8];

  return v6;
}

void __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained cameraProfile];
    v8 = [v7 clipManager];
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "(NC) Clip manager:%@ failed to fetch clip for uuid:%@ with error:%@", &v10, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_dispatchToObserversDidUpdateEventCache:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D2C900];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HFCameraPlaybackEngine__dispatchToObserversDidUpdateEventCache___block_invoke;
  v10[3] = &unk_277DF8428;
  objc_copyWeak(&v12, &location);
  v6 = v4;
  v11 = v6;
  v7 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v8 = [v5 futureWithBlock:v10 scheduler:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __66__HFCameraPlaybackEngine__dispatchToObserversDidUpdateEventCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained observerDispatcher];
  v5 = [v4 proxy];
  [v5 playbackEngine:WeakRetained didUpdateEventCache:*(a1 + 32)];

  v6 = [WeakRetained cameraProfile];
  v7 = [v6 clipManager];
  [WeakRetained setClipManager:v7];

  [v3 finishWithNoResult];
}

- (void)setClipManager:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_clipManager);
  v6 = [WeakRetained isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained(&self->_clipManager);
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Transitioning from clip manager:%@ to clip manager:%@.", &v13, 0x16u);
    }

    objc_storeWeak(&self->_clipManager, v4);
    [(HFCameraPlaybackEngine *)self _setupClipPlayerWithClipManager:v4];
    v9 = [(HFCameraPlaybackEngine *)self observerDispatcher];
    v10 = [v9 proxy];
    v11 = [(HFCameraPlaybackEngine *)self player];
    [v10 playbackEngine:self didUpdateClipPlayer:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateConfiguration:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v50 = [MEMORY[0x277CCA890] currentHandler];
    [v50 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngine.m" lineNumber:529 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  [v5 assertConfigurationIsValid];
  if (+[HFUtilities isInternalTest])
  {
    v6 = [(HFCameraPlaybackEngine *)self workQueue];

    if (!v6)
    {
      v15 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v55 = "[HFCameraPlaybackEngine updateConfiguration:]";
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%s workQueue is nil! Skipping update", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }

  v7 = [(HFCameraPlaybackEngine *)self cameraProfile];

  if (v7)
  {
    v8 = [(HFCameraPlaybackEngine *)self cameraProfile];
    v9 = [v8 recordingEventManager];
    [v9 removeObserver:self];

    [(HFCameraPlaybackEngine *)self _resetBatchedRecordingEventsTimer];
    [(HFCameraPlaybackEngine *)self setShouldBatchRecordingEvents:0];
    if (+[HFUtilities isInternalTest])
    {
      v10 = objc_opt_new();
      [(HFCameraPlaybackEngine *)self setBatchedRecordingEvents:v10];
    }

    else
    {
      v11 = [(HFCameraPlaybackEngine *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__HFCameraPlaybackEngine_updateConfiguration___block_invoke;
      block[3] = &unk_277DF3D38;
      block[4] = self;
      dispatch_async(v11, block);
    }
  }

  v12 = [v5 home];
  [(HFCameraPlaybackEngine *)self setHome:v12];

  v13 = [v5 cameraProfile];
  [(HFCameraPlaybackEngine *)self setCameraProfile:v13];

  if (!+[HFUtilities isInternalTest])
  {
LABEL_15:
    v18 = [v5 notificationClipUUID];
    [(HFCameraPlaybackEngine *)self setNotificationCenterClipUUID:v18];

    if (!+[HFUtilities isPressDemoModeEnabled])
    {
      v19 = [(HFCameraPlaybackEngine *)self overrideLiveStreamController];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v22 = [HFCameraLiveStreamController alloc];
        v23 = [(HFCameraPlaybackEngine *)self home];
        v24 = [(HFCameraPlaybackEngine *)self cameraProfile];
        v21 = [(HFCameraLiveStreamController *)v22 initWithHome:v23 cameraProfile:v24];
      }

      [(HFCameraPlaybackEngine *)self _setupLiveStreamController:v21];
    }

    v25 = [HFCameraVideoDownloader alloc];
    v26 = [v5 cameraProfile];
    v15 = [(HFCameraVideoDownloader *)v25 initWithCameraProfile:v26];

    v27 = +[HFCameraTimelapseVideoProvider sharedProvider];
    [v27 setTimelapseVideoDownloader:v15];

    v28 = [v5 cameraProfile];
    v29 = +[HFCameraImageManager sharedManager];
    [v29 setCameraProfile:v28];

    v30 = [HFCameraPlaybackEngineEventCache alloc];
    v31 = [(HFCameraPlaybackEngine *)self debugLogger];
    v32 = [(HFCameraPlaybackEngineEventCache *)v30 initWithDebugLogger:v31];
    [(HFCameraPlaybackEngine *)self setEventCache:v32];

    v33 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEFAULT, "Batch recording events begin", buf, 2u);
    }

    [(HFCameraPlaybackEngine *)self setShouldBatchRecordingEvents:1];
    v34 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:1.0];
    [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsTimer:v34];

    v35 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [v35 setDelegate:self];

    v36 = [(HFCameraPlaybackEngine *)self workQueue];
    v37 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [v37 setDelegateQueue:v36];

    v38 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [v38 resume];

    v39 = [(HFCameraPlaybackEngine *)self cameraProfile];
    v40 = [v39 recordingEventManager];
    v41 = [(HFCameraPlaybackEngine *)self workQueue];
    [v40 addObserver:self queue:v41];

    objc_initWeak(buf, self);
    v42 = [(HFCameraPlaybackEngine *)self cameraProfile];
    v43 = [v42 recordingEventManager];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __46__HFCameraPlaybackEngine_updateConfiguration___block_invoke_108;
    v51[3] = &unk_277DF3860;
    objc_copyWeak(&v52, buf);
    [v43 performCloudPullWithCompletion:v51];

    v44 = [v5 clipScrubber];
    clipScrubber = self->_clipScrubber;
    self->_clipScrubber = v44;

    v46 = [v5 playbackPosition];
    v47 = +[HFCameraPlaybackPosition livePosition];
    self->_engineMode = [v46 isEqual:v47] ^ 1;

    v48 = [v5 playbackPosition];
    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:v48 notifyObservers:0];

    objc_destroyWeak(&v52);
    objc_destroyWeak(buf);
LABEL_23:

    goto LABEL_24;
  }

  v14 = [(HFCameraPlaybackEngine *)self home];
  if (v14)
  {

    goto LABEL_15;
  }

  v16 = [(HFCameraPlaybackEngine *)self cameraProfile];
  v17 = v16 == 0;

  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_24:

  v49 = *MEMORY[0x277D85DE8];
}

void __46__HFCameraPlaybackEngine_updateConfiguration___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setBatchedRecordingEvents:v2];
}

void __46__HFCameraPlaybackEngine_updateConfiguration___block_invoke_108(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldBatchRecordingEvents:0];

  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Batch recording events end, error: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (AVPlayer)player
{
  v2 = [(HFCameraPlaybackEngine *)self clipPlayer];
  v3 = [v2 player];

  return v3;
}

- (HFCameraPlaybackPosition)playbackPosition
{
  v4 = [(HFCameraPlaybackEngine *)self playbackContentType];
  if (v4 == 1)
  {
    v6 = [(HFCameraPlaybackEngine *)self clipPlayer];
    v7 = [v6 currentPosition];
    v8 = [v7 date];

    if (!v8 || [(HFCameraPlaybackEngine *)self isScrubbing])
    {
      v9 = [(HFCameraPlaybackEngine *)self lastRequestedClipPlaybackDate];

      v8 = v9;
    }

    v5 = [HFCameraPlaybackPosition clipPositionWithDate:v8];
  }

  else if (v4)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFCameraPlaybackEngine playbackContentType](self, "playbackContentType")}];
    [v10 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngine.m" lineNumber:668 description:{@"Unknown playback content type %@", v11}];

    v5 = 0;
  }

  else
  {
    v5 = +[HFCameraPlaybackPosition livePosition];
  }

  return v5;
}

- (void)updatePlaybackPositionToDate:(id)a3 usingClip:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HFCameraPlaybackEngine_updatePlaybackPositionToDate_usingClip___block_invoke;
  v14[3] = &unk_277DF6458;
  objc_copyWeak(&v17, &location);
  v8 = v7;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v10 = _Block_copy(v14);
  v10[2](v10, v11, v12, v13);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __65__HFCameraPlaybackEngine_updatePlaybackPositionToDate_usingClip___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    [HFCameraPlaybackPosition clipPositionWithDate:v2 inClip:?];
  }

  else
  {
    [HFCameraPlaybackPosition clipPositionWithDate:v2];
  }
  v3 = ;
  [WeakRetained setPlaybackPosition:v3];
}

- (void)startPlaybackAtDate:(id)a3 withClip:(id)a4
{
  self->_wantsToPlay = 1;
  if (a4)
  {

    [(HFCameraPlaybackEngine *)self updatePlaybackPositionToDate:a3 usingClip:?];
  }

  else
  {
    v5 = +[HFCameraPlaybackPosition livePosition];
    [(HFCameraPlaybackEngine *)self setPlaybackPosition:v5];
  }
}

- (void)setPlaybackPosition:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Setting playback position: %@", &v14, 0xCu);
  }

  if (v4)
  {
    v6 = [(HFCameraPlaybackEngine *)self playbackPosition];
    if ([v6 isEqual:v4])
    {
      v7 = +[HFCameraPlaybackPosition livePosition];
      v8 = [v4 isEqual:v7];

      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v10 = +[HFCameraPlaybackPosition livePosition];
    v11 = [v4 isEqual:v10];

    if (v11)
    {
      v12 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
      }

      self->_playbackContentType = 1;
      self->_wantsToPlay = 1;
    }

    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:v4 notifyObservers:1];
  }

  else
  {
    v9 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Ignore missing playbackPosition update.", &v14, 2u);
    }
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3 withOptions:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngine.m" lineNumber:770 description:{@"Invalid parameter not satisfying: %@", @"options != nil"}];
  }

  v8 = objc_alloc_init(HFCameraPlaybackEngineObservationState);
  [(HFCameraPlaybackEngineObservationState *)v8 setOptions:v7];
  v9 = [(HFCameraPlaybackEngine *)self observerStates];
  [v9 setObject:v8 forKey:v12];

  v10 = [(HFCameraPlaybackEngine *)self observerDispatcher];
  [v10 addObserver:v12];

  [(HFCameraPlaybackEngine *)self _setupTimeObservationForObserver:v12];
}

- (void)removeObserver:(id)a3
{
  v10 = a3;
  v4 = [(HFCameraPlaybackEngine *)self observerStates];
  v5 = [v4 objectForKey:v10];
  v6 = [v5 timeObservationToken];

  if (v6)
  {
    v7 = [(HFCameraPlaybackEngine *)self clipPlayer];
    [v7 removeTimeObserver:v6];
  }

  v8 = [(HFCameraPlaybackEngine *)self observerStates];
  [v8 removeObjectForKey:v10];

  v9 = [(HFCameraPlaybackEngine *)self observerDispatcher];
  [v9 removeObserver:v10];
}

- (NSArray)observers
{
  v2 = [(HFCameraPlaybackEngine *)self observerDispatcher];
  v3 = [v2 observers];

  return v3;
}

- (void)modifyPlaybackFromSender:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFCameraPlaybackEngine *)self observerDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HFCameraPlaybackEngine_modifyPlaybackFromSender_usingBlock___block_invoke;
  v10[3] = &unk_277E00970;
  v11 = v6;
  v9 = v6;
  [v8 dispatchMessageExcludingSender:v7 usingBlock:v10];
}

- (HMCameraClip)currentClip
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HFCameraPlaybackEngine *)self playbackPosition];
  if ([v3 contentType])
  {
    v4 = [v3 clipPlaybackDate];
    v5 = [(HFCameraPlaybackEngine *)self eventCache];
    v6 = [v5 events];
    v7 = [HFCameraPlaybackEngine findClipPositionForDate:v4 inEvents:v6 options:1];

    if (v7)
    {
      v8 = [v7 clip];
    }

    else
    {
      v9 = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];

      if (v9)
      {
        v10 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v20 = [(HFCameraPlaybackEngine *)self eventCache];
          v21 = [v20 clips];
          v22 = [v21 firstObject];
          v24 = 138412290;
          v25 = v22;
          _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "(NC) Returning the first event:%@", &v24, 0xCu);
        }

        v11 = [(HFCameraPlaybackEngine *)self eventCache];
        v12 = [v11 clips];
        v8 = [v12 firstObject];
      }

      else
      {
        v13 = [(HFCameraPlaybackEngine *)self eventCache];
        v14 = [v13 clips];
        v15 = [v14 lastObject];

        v16 = [v15 hf_endDate];
        v17 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v23 = [v3 clipPlaybackDate];
          v24 = 138412802;
          v25 = v23;
          v26 = 2112;
          v27 = v16;
          v28 = 2112;
          v29 = v15;
          _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "Clip playback date (%@) is >= the last clip's playback date (%@) using clip:%@", &v24, 0x20u);
        }

        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)beginScrubbing
{
  [(HFCameraPlaybackEngine *)self setScrubbingInProgressCount:[(HFCameraPlaybackEngine *)self scrubbingInProgressCount]+ 1];

  [(HFCameraPlaybackEngine *)self setScrubbing:1];
}

- (void)endScrubbing
{
  if ([(HFCameraPlaybackEngine *)self scrubbingInProgressCount])
  {
    [(HFCameraPlaybackEngine *)self setScrubbingInProgressCount:[(HFCameraPlaybackEngine *)self scrubbingInProgressCount]- 1];
    if (![(HFCameraPlaybackEngine *)self scrubbingInProgressCount])
    {

      [(HFCameraPlaybackEngine *)self setScrubbing:0];
    }
  }

  else
  {
    v3 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Attempting to end scrubbing when scrubbing is not in progress!", v4, 2u);
    }
  }
}

- (BOOL)shouldDisplayVolumeControls
{
  if ([(HFCameraPlaybackEngine *)self isUserScrubbing])
  {
    return 0;
  }

  if (![(HFCameraPlaybackEngine *)self engineMode])
  {
    v4 = [(HFCameraPlaybackEngine *)self cameraProfile];
    v5 = [v4 userSettings];
    v6 = [v5 currentAccessMode];

    v7 = [(HFCameraPlaybackEngine *)self cameraProfile];
    v8 = [v7 userSettings];
    if (([v8 isCameraManuallyDisabled] & 1) != 0 || !v6)
    {
    }

    else
    {

      if (v6 != 3)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

- (void)setTimelineState:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_timelineState != a3)
  {
    self->_timelineState = a3;
    v5 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(HFCameraPlaybackEngine *)self timelineStateDescription];
      scrubbing = self->_scrubbing;
      userScrubbing = self->_userScrubbing;
      *buf = 138413058;
      v12 = self;
      v13 = 2112;
      v14 = v6;
      v15 = 1024;
      v16 = scrubbing;
      v17 = 1024;
      v18 = userScrubbing;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Engine:%@ updated timelineState:%@ Scrubbing:%{BOOL}d UserScrubbing:%{BOOL}d", buf, 0x22u);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__HFCameraPlaybackEngine_setTimelineState___block_invoke;
    v10[3] = &unk_277DF5CD0;
    v10[4] = self;
    v10[5] = a3;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __43__HFCameraPlaybackEngine_setTimelineState___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateTimelineState:*(a1 + 40)];
}

- (void)setShouldBypassVideoFetchRequest:(BOOL)a3
{
  if (self->_shouldBypassVideoFetchRequest != a3)
  {
    self->_shouldBypassVideoFetchRequest = a3;
  }
}

- (BOOL)hasRecordingEvents
{
  v2 = [(HFCameraPlaybackEngine *)self eventCache];
  v3 = [v2 clips];
  v4 = [v3 count] != 0;

  return v4;
}

- (NSArray)cameraEvents
{
  v2 = [(HFCameraPlaybackEngine *)self eventCache];
  v3 = [v2 events];

  return v3;
}

- (NSArray)cameraClips
{
  v2 = [(HFCameraPlaybackEngine *)self eventCache];
  v3 = [v2 clips];

  return v3;
}

- (HMCameraClip)clipWithLongestDuration
{
  v2 = [(HFCameraPlaybackEngine *)self eventCache];
  v3 = [v2 clipWithLongestDuration];

  return v3;
}

- (id)daysWithClips
{
  v2 = [(HFCameraPlaybackEngine *)self eventCache];
  v3 = [v2 daysWithClips];

  return v3;
}

- (BOOL)isCameraPortraitMode
{
  v2 = [(HFCameraPlaybackEngine *)self liveCameraSource];
  [v2 aspectRatio];
  v4 = v3;

  return v4 > 0.0 && v4 < 1.0;
}

- (void)startPlaybackForCurrentClip
{
  v3 = [(HFCameraPlaybackEngine *)self playbackSessionEvent];

  if (v3)
  {
    v4 = [(HFCameraPlaybackEngine *)self playbackSessionEvent];
    v5 = [v4 sendEventForState:2];
  }

  v6 = [HFCameraAnalyticsCameraClipPlaybackSessionEvent alloc];
  v7 = [(HFCameraPlaybackEngine *)self currentClip];
  v8 = [(HFCameraAnalyticsEvent *)v6 initWithCameraClip:v7];
  [(HFCameraPlaybackEngine *)self setPlaybackSessionEvent:v8];

  v9 = [(HFCameraPlaybackEngine *)self clipPlayer];
  [v9 play];
}

- (void)setScrubbing:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_scrubbing != a3)
  {
    v3 = a3;
    v5 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = self;
      v20 = 1024;
      v21 = v3;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Scrubbing state changed. UserScrubbing:%{BOOL}d", buf, 0x12u);
    }

    v6 = [(HFCameraPlaybackEngine *)self playbackPosition];
    v7 = v6;
    if (v3)
    {
      v8 = [v6 clipPlaybackDate];
      [(HFCameraPlaybackEngine *)self setLastRequestedClipPlaybackDate:v8];

      self->_scrubbing = v3;
    }

    else
    {
      self->_scrubbing = 0;
      v9 = [(HFCameraPlaybackEngine *)self lastRequestedClipPlaybackDate];
      v10 = [(HFCameraPlaybackEngine *)self currentClip];
      v11 = [v10 dateOfOccurrence];
      [v9 timeIntervalSinceDate:v11];
      v13 = v12;

      v14 = [(HFCameraPlaybackEngine *)self clipPlayer];
      [v14 endScrubbingWithOffset:v13];

      [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:v7 notifyObservers:1];
    }

    [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__HFCameraPlaybackEngine_setScrubbing___block_invoke;
    v16[3] = &unk_277E00998;
    v16[4] = self;
    v17 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __39__HFCameraPlaybackEngine_setScrubbing___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateScrubbingStatus:*(a1 + 40)];
}

- (void)setWantsToPlay:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  if (self->_wantsToPlay != a3 || ([(HFCameraPlaybackEngine *)self playbackError], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    self->_wantsToPlay = v3;
    v6 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = self;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@ toggled wantsToPlay:%{BOOL}d", &v8, 0x12u);
    }

    if (self->_wantsToPlay)
    {
      [(HFCameraPlaybackEngine *)self setPlaybackRetryAttempts:0];
    }

    [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_derivedTimeControlStatus
{
  v11 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HFCameraPlaybackEngine__derivedTimeControlStatus__block_invoke;
  v8[3] = &unk_277E009C0;
  v8[4] = self;
  v3 = __51__HFCameraPlaybackEngine__derivedTimeControlStatus__block_invoke(v8);
  if (!v3)
  {
    if ([(HFCameraPlaybackEngine *)self wantsToPlay])
    {
      v4 = [(HFCameraPlaybackEngine *)self _derivedPlaybackError];
      v3 = v4 == 0;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v10 = v3;
    _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "Playback engine current timeControlStatus:%lu", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __51__HFCameraPlaybackEngine__derivedTimeControlStatus__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) playbackContentType];
  if (result == 1)
  {
    goto LABEL_5;
  }

  if (result)
  {
    return result;
  }

  v3 = [*(a1 + 32) liveStreamController];
  v4 = [v3 streamState];

  if ((v4 - 1) < 4)
  {
    return qword_20DD977E0[v4 - 1];
  }

LABEL_5:
  v5 = [*(a1 + 32) clipPlayer];
  v6 = [v5 timeControlStatus];

  v7 = 1;
  if (v6 != 1)
  {
    v7 = 2;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (id)_derivedPlaybackError
{
  v4 = [(HFCameraPlaybackEngine *)self playbackContentType];
  if (v4 == 1)
  {
    v5 = [(HFCameraPlaybackEngine *)self clipPlayer];
    v6 = [v5 error];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [(HFCameraPlaybackEngine *)self liveStreamController];
    v6 = [v5 streamError];
  }

  v2 = v6;

LABEL_6:

  return v2;
}

void __91__HFCameraPlaybackEngine__updatePlaybackStateNotifyingObservers_rebuildClipPlayerIfNeeded___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) observerDispatcher];
  v2 = [v5 proxy];
  v3 = *(a1 + 32);
  v4 = [v3 player];
  [v2 playbackEngine:v3 didUpdateClipPlayer:v4];
}

void __91__HFCameraPlaybackEngine__updatePlaybackStateNotifyingObservers_rebuildClipPlayerIfNeeded___block_invoke_122(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateTimeControlStatus:{objc_msgSend(*(a1 + 32), "timeControlStatus")}];
}

void __91__HFCameraPlaybackEngine__updatePlaybackStateNotifyingObservers_rebuildClipPlayerIfNeeded___block_invoke_123(uint64_t a1)
{
  v5 = [*(a1 + 32) observerDispatcher];
  v2 = [v5 proxy];
  v3 = *(a1 + 32);
  v4 = [v3 playbackError];
  [v2 playbackEngine:v3 didUpdatePlaybackError:v4];
}

- (void)setLiveCameraSource:(id)a3
{
  v5 = a3;
  if (self->_liveCameraSource != v5)
  {
    objc_storeStrong(&self->_liveCameraSource, a3);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__HFCameraPlaybackEngine_setLiveCameraSource___block_invoke;
    v6[3] = &unk_277DF3370;
    v6[4] = self;
    v7 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __46__HFCameraPlaybackEngine_setLiveCameraSource___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateLiveCameraSource:*(a1 + 40)];
}

void __64__HFCameraPlaybackEngine__setMicrophoneEnabled_notifyObservers___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateMicrophoneEnabled:*(a1 + 40)];
}

- (void)_setPlayerVolume:(float)a3 notifyObservers:(BOOL)a4
{
  v4 = a4;
  if (self->_streamAudioVolume != a3 || +[HFUtilities isAMac])
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v8 = a3;
    [v7 setFloat:@"HFCameraPlaybackStreamAudioVolume" forKey:v8];

    self->_streamAudioVolume = a3;
    v9 = [(HFCameraPlaybackEngine *)self liveStreamController];
    *&v10 = a3;
    [v9 setStreamAudioVolume:v10];

    if (v4)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __59__HFCameraPlaybackEngine__setPlayerVolume_notifyObservers___block_invoke;
      v11[3] = &unk_277DF4438;
      v11[4] = self;
      v12 = a3;
      dispatch_async(MEMORY[0x277D85CD0], v11);
    }
  }
}

void __59__HFCameraPlaybackEngine__setPlayerVolume_notifyObservers___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateStreamAudioVolume:*(a1 + 40) != 0.0];
}

- (void)_setStreamAudioEnabled:(BOOL)a3 notifyObservers:(BOOL)a4
{
  if (self->_streamAudioEnabled != a3)
  {
    v11 = v4;
    v12 = v5;
    v6 = a4;
    self->_streamAudioEnabled = a3;
    [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
    if (v6)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __65__HFCameraPlaybackEngine__setStreamAudioEnabled_notifyObservers___block_invoke;
      v9[3] = &unk_277E00998;
      v9[4] = self;
      v10 = a3;
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }
  }
}

void __65__HFCameraPlaybackEngine__setStreamAudioEnabled_notifyObservers___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateStreamAudioEnabled:*(a1 + 40)];
}

- (unint64_t)engineMode
{
  v2 = [(HFCameraPlaybackEngine *)self playbackPosition];
  v3 = [v2 clipPlaybackDate];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isLiveStreaming
{
  if (+[HFUtilities isPressDemoModeEnabled]&& ![(HFCameraPlaybackEngine *)self engineMode])
  {
    return 1;
  }

  if ([(HFCameraPlaybackEngine *)self engineMode])
  {
    return 0;
  }

  return [(HFCameraPlaybackEngine *)self timeControlStatus]!= 0;
}

- (BOOL)isLiveStreamPlaying
{
  if (+[HFUtilities isPressDemoModeEnabled]&& ![(HFCameraPlaybackEngine *)self engineMode])
  {
    return 1;
  }

  if ([(HFCameraPlaybackEngine *)self engineMode])
  {
    return 0;
  }

  return [(HFCameraPlaybackEngine *)self timeControlStatus]== 2;
}

- (void)timerDidFire:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFCameraPlaybackEngine *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];

  if (v6 == v4 && ![(HFCameraPlaybackEngine *)self isDeallocating])
  {
    v7 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
      v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      v24 = 138412546;
      v25 = v10;
      v26 = 1024;
      v27 = [(HFCameraPlaybackEngine *)self shouldBatchRecordingEvents];
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Batch recording event throttling timer invoked; batched events: %@; batch in progress: %{BOOL}d", &v24, 0x12u);
    }

    v11 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [(HFCameraPlaybackEngine *)self cameraProfile];
      v14 = [v13 recordingEventManager];
      v15 = MEMORY[0x277CBEB98];
      v16 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
      v17 = [v16 allValues];
      v18 = [v15 setWithArray:v17];
      [(HFCameraPlaybackEngine *)self _recordingEventManager:v14 didUpdateRecordingEvents:v18];

      v19 = objc_opt_new();
      [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsByUUID:v19];
    }

    else if (![(HFCameraPlaybackEngine *)self shouldBatchRecordingEvents])
    {
      v20 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];

      if (v20)
      {
        v21 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Batch recording event throttling timer invalidated", &v24, 2u);
        }

        v22 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
        [v22 cancel];

        [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsTimer:0];
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)recordingEventManager:(id)a3 didUpdateRecordingEvents:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[HFUtilities isInternalTest])
  {
    v8 = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(v8);
  }

  if ([(HFCameraPlaybackEngine *)self shouldBatchRecordingEvents])
  {
    v9 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
    v10 = [v9 mutableCopy];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__HFCameraPlaybackEngine_recordingEventManager_didUpdateRecordingEvents___block_invoke;
    v12[3] = &unk_277DF29C8;
    v13 = v10;
    v11 = v10;
    [v7 na_each:v12];
    [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsByUUID:v11];
  }

  else
  {
    [(HFCameraPlaybackEngine *)self _recordingEventManager:v6 didUpdateRecordingEvents:v7];
  }
}

void __73__HFCameraPlaybackEngine_recordingEventManager_didUpdateRecordingEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (void)_recordingEventManager:(id)a3 didUpdateRecordingEvents:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v6 = a4;
  if (!+[HFUtilities isInternalTest])
  {
    v7 = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(v7);
  }

  v8 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v40 = "[HFCameraPlaybackEngine _recordingEventManager:didUpdateRecordingEvents:]";
    v41 = 2048;
    v42 = [v6 count];
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%s, received (%lu) events", buf, 0x16u);
  }

  v9 = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];
  v10 = v9;
  if (v9)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke;
    v37[3] = &unk_277E009E8;
    v11 = v9;
    v38 = v11;
    v12 = [v6 na_firstObjectPassingTest:v37];
    if (v12)
    {
      v13 = [MEMORY[0x277CBEB98] setWithObject:v12];

      objc_opt_class();
      v14 = v12;
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v6 = v15;

      if ([v6 isComplete])
      {
        v16 = HFLogForCategory(0x16uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "(NC) No need to listen for a completed clip. Removing observation.", buf, 2u);
        }

        v17 = [(HFCameraPlaybackEngine *)self cameraProfile];
        v18 = [v17 recordingEventManager];
        [v18 removeObserver:self];
      }

      v19 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v40 = self;
        v41 = 2112;
        v42 = v31;
        v43 = 2112;
        v44 = v13;
        v45 = 2112;
        v46 = v11;
        _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "(NC) Playback engine:%@ eventManager:%@ updatedClips:%@ for UUID:%@", buf, 0x2Au);
      }
    }

    else
    {
      v21 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v40 = self;
        v41 = 2112;
        v42 = v31;
        v43 = 2112;
        v44 = v6;
        v45 = 2112;
        v46 = v11;
        _os_log_error_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_ERROR, "(NC) Playback engine:%@ eventManager:%@ ignoring clip updates:%@ because its showing UUID:%@", buf, 0x2Au);
      }

      v13 = [MEMORY[0x277CBEB98] set];
    }

    v20 = v38;
  }

  else
  {
    v20 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v40 = self;
      v41 = 2112;
      v42 = v31;
      v43 = 2112;
      v44 = v6;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "Playback engine:%@ eventManager:%@ updatedClips:%@", buf, 0x20u);
    }

    v13 = v6;
  }

  v22 = [MEMORY[0x277CBEB58] set];
  v23 = [MEMORY[0x277CBEB58] set];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke_139;
  v34[3] = &unk_277DF2978;
  v24 = v22;
  v35 = v24;
  v25 = v23;
  v36 = v25;
  [v13 na_each:v34];
  objc_initWeak(buf, self);
  v26 = [(HFCameraPlaybackEngine *)self eventCache];
  v27 = [v24 allObjects];
  v28 = [v26 updateWithEvents:v27];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke_2;
  v32[3] = &unk_277E00A10;
  objc_copyWeak(&v33, buf);
  v29 = [v28 addSuccessBlock:v32];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke_139(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([HFCameraPlaybackEngineEventCache isValidEvent:?])
  {
    [*(a1 + 32) addObject:v6];
  }

  else if ([v6 containerType] == 1)
  {
    objc_opt_class();
    v3 = v6;
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if ([v5 quality] == 1)
    {
      [*(a1 + 40) addObject:v5];
    }
  }
}

void __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v5];
}

- (void)recordingEventManager:(id)a3 didRemoveRecordingEventsWithUUIDs:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!+[HFUtilities isInternalTest])
  {
    v8 = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(v8);
  }

  v9 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = self;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Playback engine:%@ received eventManager:%@ updatedClips:%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v10 = [(HFCameraPlaybackEngine *)self eventCache];
  v11 = [v10 removeEventUUIDs:v7];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__HFCameraPlaybackEngine_recordingEventManager_didRemoveRecordingEventsWithUUIDs___block_invoke;
  v14[3] = &unk_277E00880;
  objc_copyWeak(&v15, buf);
  v12 = [v11 flatMap:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
}

id __82__HFCameraPlaybackEngine_recordingEventManager_didRemoveRecordingEventsWithUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v3];

  return v5;
}

- (void)clipPlayer:(id)a3 didUpdateTimeControlStatus:(int64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(HFCameraPlaybackEngine *)self playbackContentType])
  {
    v6 = [(HFCameraPlaybackEngine *)self lastPlayerTimeControlStatus];
    if (!a4 && v6 == 1 && self->_wantsToPlay)
    {
      if ([(HFCameraPlaybackEngine *)self playbackRetryAttempts]> 2)
      {
        v16 = [(HFCameraPlaybackEngine *)self playbackSessionEvent];
        v17 = [v16 sendEventForState:1];

        [(HFCameraPlaybackEngine *)self setPlaybackSessionEvent:0];
        v18 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(HFCameraPlaybackEngine *)self clipPlayer];
          v20 = [v19 error];
          v22 = 138412290;
          v23 = v20;
          _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Failure occurred while waiting to play. Bailing on the playback attempt. Player error:%@", &v22, 0xCu);
        }

        [(HFCameraPlaybackEngine *)self setLastPlayerTimeControlStatus:0];
        v11 = self;
        v12 = 0;
      }

      else
      {
        v7 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 3 - [(HFCameraPlaybackEngine *)self playbackRetryAttempts];
          v9 = [(HFCameraPlaybackEngine *)self clipPlayer];
          v10 = [v9 error];
          v22 = 134218242;
          v23 = v8;
          v24 = 2112;
          v25 = v10;
          _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Failure occurred while waiting to play. Retrying playback up to %lu more times. Player error:%@", &v22, 0x16u);
        }

        [(HFCameraPlaybackEngine *)self setPlaybackRetryAttempts:[(HFCameraPlaybackEngine *)self playbackRetryAttempts]+ 1];
        v11 = self;
        v12 = 1;
      }

      [(HFCameraPlaybackEngine *)v11 setWantsToPlay:v12];
    }

    else
    {
      [(HFCameraPlaybackEngine *)self setLastPlayerTimeControlStatus:a4];
      if ([(HFCameraPlaybackEngine *)self lastPlayerTimeControlStatus]== 2)
      {
        v13 = [(HFCameraPlaybackEngine *)self playbackSessionEvent];
        v14 = [v13 sendEventForState:0];

        [(HFCameraPlaybackEngine *)self setPlaybackSessionEvent:0];
        [(HFCameraPlaybackEngine *)self setPlaybackRetryAttempts:0];
      }

      v15 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        v23 = self;
        v24 = 2048;
        v25 = a4;
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received clipPlayer timeControlStatus update: %ld", &v22, 0x16u);
      }

      [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)clipPlayer:(id)a3 didUpdateError:(id)a4 isFatal:(BOOL)a5
{
  v5 = a5;
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received clipPlayer error update: %@ (fatal: %d)", &v10, 0x1Cu);
  }

  [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)clipPlayerDidPlayToEndTime:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = self;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received clipPlayerDidPlayToEndTime", &v17, 0xCu);
  }

  v5 = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];

  if (v5)
  {
    v6 = [(HFCameraPlaybackEngine *)self cameraClips];
    v7 = [v6 firstObject];

    v8 = [v7 dateOfOccurrence];
    v9 = HFLogForCategory(0x17uLL);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v7 uniqueIdentifier];
        v17 = 138412802;
        v18 = self;
        v19 = 2112;
        v20 = v8;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "(NC) Playback engine: %@ restarting clip playback at start date:%@ clipUUID:%@.", &v17, 0x20u);
      }

      v12 = [HFCameraPlaybackPosition clipPositionWithDate:v8 inClip:v7];
      [(HFCameraPlaybackEngine *)self setPlaybackPosition:v12];

      [(HFCameraPlaybackEngine *)self setWantsToPlay:1];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v16;
        _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "(NC) Playback engine: %@ failed to find start date for notificationCenterClipUUID:%@. This should never happen.", &v17, 0x16u);
      }

      v14 = +[HFCameraPlaybackPosition livePosition];
      [(HFCameraPlaybackEngine *)self setPlaybackPosition:v14];

      [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
    }
  }

  else
  {
    v13 = +[HFCameraPlaybackPosition livePosition];
    [(HFCameraPlaybackEngine *)self setPlaybackPosition:v13];

    [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)streamControllerStateDidUpdate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 debugDescription];
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received liveStreamController state update: %@", &v9, 0x16u);
  }

  v7 = [v4 liveCameraSource];
  [(HFCameraPlaybackEngine *)self setLiveCameraSource:v7];

  [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)timelineStateDescription
{
  v2 = self->_timelineState - 1;
  if (v2 > 5)
  {
    return @"TimelineStateUnknown";
  }

  else
  {
    return off_277E00A80[v2];
  }
}

- (id)timeControlStatusDescription
{
  timeControlStatus = self->_timeControlStatus;
  v3 = @"TimeControlStatusPaused";
  if (timeControlStatus == 1)
  {
    v3 = @"TimeControlStatusWaitingToPlay";
  }

  if (timeControlStatus == 2)
  {
    return @"TimeControlStatusPlaying";
  }

  else
  {
    return v3;
  }
}

- (id)engineModeDescription
{
  if (self->_engineMode)
  {
    return @"EngineModeClipPlayer";
  }

  else
  {
    return @"EngineModeLiveStream";
  }
}

- (id)shortDebugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HFCameraPlaybackEngine *)self engineModeDescription];
  v5 = [(HFCameraPlaybackEngine *)self timeControlStatusDescription];
  v6 = [(HFCameraPlaybackEngine *)self timelineStateDescription];
  v7 = [v3 stringWithFormat:@"%@ %@ - %@ - %@", self, v4, v5, v6];

  return v7;
}

- (BOOL)isFirstEventOfTheDay:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraPlaybackEngine *)self eventCache];
  v6 = [v5 isFirstEventOfTheDay:v4];

  return v6;
}

- (id)firstOfTheDayClipForDate:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraPlaybackEngine *)self eventCache];
  v6 = [v5 firstOfTheDayClipForDate:v4];

  return v6;
}

- (id)findClipPositionForDate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HFCameraPlaybackEngine *)self eventCache];
  v7 = [v6 clips];
  v8 = [v5 findClipPositionForDate:v4 inEvents:v7 options:1];

  return v8;
}

- (id)findClipPositionForDate:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [(HFCameraPlaybackEngine *)self eventCache];
  v9 = [v8 events];
  v10 = [v7 findClipPositionForDate:v6 inEvents:v9 options:a4];

  return v10;
}

+ (id)findClipPositionForDate:(id)a3 inEvents:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 hf_indexOfClipForDate:v8 inEvents:v9 enumerationOptions:0 searchOptions:a5];
  v11 = 0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v9 objectAtIndexedSubscript:v10];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __67__HFCameraPlaybackEngine_findClipPositionForDate_inEvents_options___block_invoke;
    v18 = &unk_277E00A38;
    v19 = v12;
    v20 = v8;
    v13 = v12;
    __67__HFCameraPlaybackEngine_findClipPositionForDate_inEvents_options___block_invoke(&v15);
    v11 = [HFCameraClipPosition positionWithEvent:v13 offset:v15, v16, v17, v18];
  }

  return v11;
}

void __67__HFCameraPlaybackEngine_findClipPositionForDate_inEvents_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_dateInterval];
  v3 = [v2 hf_searchResultForDate:*(a1 + 40)];

  if (v3 == 1)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) dateOfOccurrence];
    [v5 timeIntervalSinceDate:v6];
  }

  else if (v3 == 2)
  {
    v4 = *(a1 + 32);

    [v4 duration];
  }
}

+ (unint64_t)hf_indexOfClipForDate:(id)a3 inEvents:(id)a4 enumerationOptions:(unint64_t)a5 searchOptions:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HFCameraPlaybackEngine_hf_indexOfClipForDate_inEvents_enumerationOptions_searchOptions___block_invoke;
  v15[3] = &unk_277E00A60;
  v17 = v10;
  v18 = a6;
  v16 = v9;
  v11 = v10;
  v12 = v9;
  v13 = [v11 indexOfObjectWithOptions:a5 passingTest:v15];

  return v13;
}

BOOL __90__HFCameraPlaybackEngine_hf_indexOfClipForDate_inEvents_enumerationOptions_searchOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 hf_dateInterval];
  v8 = [v7 hf_searchResultForDate:*(a1 + 32)];

  if (v8 == 1)
  {
    return 1;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    return v8 == 0;
  }

  if ((v10 & 2) == 0)
  {
    return 0;
  }

  if (v8)
  {
    if ([*(a1 + 40) count] - 1 == a3)
    {
      return 1;
    }

    v11 = [*(a1 + 40) objectAtIndexedSubscript:a3 + 1];
    v12 = [v11 hf_dateInterval];
    v13 = [v12 hf_searchResultForDate:*(a1 + 32)];

    return !v13;
  }

  result = 0;
  *a4 = 1;
  return result;
}

- (void)_resetBatchedRecordingEventsTimer
{
  v3 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];

  if (v3)
  {
    v4 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    v5 = [v4 isRunning];

    if ((v5 & 1) == 0)
    {
      v6 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
      [v6 resume];
    }

    v7 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [v7 cancel];

    [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsTimer:0];
  }
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  [(HFCameraPlaybackEngine *)self setIsDeallocating:1];
  v4 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }

  if (+[HFUtilities isInternalTest])
  {
    clipPlayer = self->_clipPlayer;
    self->_clipPlayer = 0;

    v7 = +[HFCameraTimelapseVideoProvider sharedProvider];
    [v7 waitUntilAllDownloadsAreFinished];
  }

  else
  {
    v7 = [(HFCameraPlaybackEngine *)self cameraProfile];
    v8 = [v7 recordingEventManager];
    [v8 removeObserver:self];
  }

  v9 = +[HFCameraTimelapseVideoProvider sharedProvider];
  [v9 setTimelapseVideoDownloader:0];

  v11.receiver = self;
  v11.super_class = HFCameraPlaybackEngine;
  [(HFCameraPlaybackEngine *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (HMCameraClipManager)clipManager
{
  WeakRetained = objc_loadWeakRetained(&self->_clipManager);

  return WeakRetained;
}

@end