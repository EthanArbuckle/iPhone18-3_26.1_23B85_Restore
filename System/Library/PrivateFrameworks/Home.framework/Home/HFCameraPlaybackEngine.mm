@interface HFCameraPlaybackEngine
+ (id)findClipPositionForDate:(id)date inEvents:(id)events options:(unint64_t)options;
+ (unint64_t)hf_indexOfClipForDate:(id)date inEvents:(id)events enumerationOptions:(unint64_t)options searchOptions:(unint64_t)searchOptions;
- (AVPlayer)player;
- (BOOL)hasRecordingEvents;
- (BOOL)isCameraPortraitMode;
- (BOOL)isDeallocating;
- (BOOL)isFirstEventOfTheDay:(id)day;
- (BOOL)isLiveStreamPlaying;
- (BOOL)isLiveStreaming;
- (BOOL)shouldBatchRecordingEvents;
- (BOOL)shouldDisplayVolumeControls;
- (HFCameraPlaybackEngine)initWithConfiguration:(id)configuration;
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
- (id)_dispatchToObserversDidUpdateEventCache:(id)cache;
- (id)daysWithClips;
- (id)engineModeDescription;
- (id)fetchCameraEvents;
- (id)fetchClipForSignificantEventWithUUID:(id)d;
- (id)fetchClipWithUUID:(id)d;
- (id)findClipPositionForDate:(id)date;
- (id)findClipPositionForDate:(id)date options:(unint64_t)options;
- (id)firstOfTheDayClipForDate:(id)date;
- (id)shortDebugDescription;
- (id)timeControlStatusDescription;
- (id)timelineStateDescription;
- (unint64_t)_derivedTimeControlStatus;
- (unint64_t)engineMode;
- (void)_recordingEventManager:(id)manager didUpdateRecordingEvents:(id)events;
- (void)_resetBatchedRecordingEventsTimer;
- (void)_setPlayerVolume:(float)volume notifyObservers:(BOOL)observers;
- (void)_setStreamAudioEnabled:(BOOL)enabled notifyObservers:(BOOL)observers;
- (void)_setupClipPlayerWithClipManager:(id)manager;
- (void)_setupLiveStreamController:(id)controller;
- (void)_setupTimeObservationForObserver:(id)observer;
- (void)addObserver:(id)observer withOptions:(id)options;
- (void)beginScrubbing;
- (void)clipPlayer:(id)player didUpdateError:(id)error isFatal:(BOOL)fatal;
- (void)clipPlayer:(id)player didUpdateTimeControlStatus:(int64_t)status;
- (void)clipPlayerDidPlayToEndTime:(id)time;
- (void)dealloc;
- (void)endScrubbing;
- (void)modifyPlaybackFromSender:(id)sender usingBlock:(id)block;
- (void)recordingEventManager:(id)manager didRemoveRecordingEventsWithUUIDs:(id)ds;
- (void)recordingEventManager:(id)manager didUpdateRecordingEvents:(id)events;
- (void)removeObserver:(id)observer;
- (void)setBatchedRecordingEvents:(id)events;
- (void)setCameraProfile:(id)profile;
- (void)setClipManager:(id)manager;
- (void)setIsDeallocating:(BOOL)deallocating;
- (void)setLiveCameraSource:(id)source;
- (void)setNotificationCenterClipUUID:(id)d;
- (void)setPlaybackPosition:(id)position;
- (void)setScrubbing:(BOOL)scrubbing;
- (void)setShouldBatchRecordingEvents:(BOOL)events;
- (void)setShouldBypassVideoFetchRequest:(BOOL)request;
- (void)setTimelineState:(unint64_t)state;
- (void)setWantsToPlay:(BOOL)play;
- (void)startPlaybackAtDate:(id)date withClip:(id)clip;
- (void)startPlaybackForCurrentClip;
- (void)streamControllerStateDidUpdate:(id)update;
- (void)timerDidFire:(id)fire;
- (void)updateConfiguration:(id)configuration;
- (void)updateLiveStreamForCameraProfile:(id)profile;
- (void)updatePlaybackPositionToDate:(id)date usingClip:(id)clip;
@end

@implementation HFCameraPlaybackEngine

- (HFCameraPlaybackEngine)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
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

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observerStates = v5->_observerStates;
    v5->_observerStates = weakToStrongObjectsMapTable;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5->_prefersAudioEnabled = [standardUserDefaults BOOLForKey:@"HFCameraPlaybackPrefersAudioEnabled"];

    [(HFCameraPlaybackEngine *)v5 setStreamAudioEnabled:[(HFCameraPlaybackEngine *)v5 prefersAudioEnabled]];
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 floatForKey:@"HFCameraPlaybackStreamAudioVolume"];
    v19 = v18;

    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v21 = [standardUserDefaults3 objectForKey:@"HFCameraPlaybackStreamAudioVolume"];

    LODWORD(v22) = 0.5;
    if (v21)
    {
      *&v22 = v19;
    }

    [(HFCameraPlaybackEngine *)v5 setStreamAudioVolume:v22];
    v23 = objc_opt_new();
    batchedRecordingEventsByUUID = v5->_batchedRecordingEventsByUUID;
    v5->_batchedRecordingEventsByUUID = v23;

    if (configurationCopy)
    {
      [(HFCameraPlaybackEngine *)v5 updateConfiguration:configurationCopy];
    }
  }

  return v5;
}

- (void)updateLiveStreamForCameraProfile:(id)profile
{
  v19 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];

  v6 = HFLogForCategory(0x17uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (cameraProfile == profileCopy)
  {
    if (v7)
    {
      cameraProfile2 = [(HFCameraPlaybackEngine *)self cameraProfile];
      v15 = 138412290;
      v16 = cameraProfile2;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Bypassing live stream update for the current profile:%@", &v15, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      cameraProfile3 = [(HFCameraPlaybackEngine *)self cameraProfile];
      v15 = 138412546;
      v16 = cameraProfile3;
      v17 = 2112;
      v18 = profileCopy;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Updating from camera profile:%@ to profile:%@", &v15, 0x16u);
    }

    [(HFCameraPlaybackEngine *)self setCameraProfile:profileCopy];
    overrideLiveStreamController = [(HFCameraPlaybackEngine *)self overrideLiveStreamController];
    v10 = overrideLiveStreamController;
    if (overrideLiveStreamController)
    {
      v6 = overrideLiveStreamController;
    }

    else
    {
      v12 = [HFCameraLiveStreamController alloc];
      home = [(HFCameraPlaybackEngine *)self home];
      v6 = [(HFCameraLiveStreamController *)v12 initWithHome:home cameraProfile:profileCopy];
    }

    [(HFCameraPlaybackEngine *)self _setupLiveStreamController:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setCameraProfile:(id)profile
{
  profileCopy = profile;
  os_unfair_lock_lock_with_options();
  cameraProfile = self->_cameraProfile;
  self->_cameraProfile = profileCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMCameraProfile)cameraProfile
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cameraProfile;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setShouldBatchRecordingEvents:(BOOL)events
{
  os_unfair_lock_lock_with_options();
  self->_shouldBatchRecordingEvents = events;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldBatchRecordingEvents
{
  os_unfair_lock_lock_with_options();
  shouldBatchRecordingEvents = self->_shouldBatchRecordingEvents;
  os_unfair_lock_unlock(&self->_lock);
  return shouldBatchRecordingEvents;
}

- (void)setNotificationCenterClipUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  notificationCenterClipUUID = self->_notificationCenterClipUUID;
  self->_notificationCenterClipUUID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)notificationCenterClipUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationCenterClipUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIsDeallocating:(BOOL)deallocating
{
  os_unfair_lock_lock_with_options();
  self->_isDeallocating = deallocating;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isDeallocating
{
  os_unfair_lock_lock_with_options();
  isDeallocating = self->_isDeallocating;
  os_unfair_lock_unlock(&self->_lock);
  return isDeallocating;
}

- (void)setBatchedRecordingEvents:(id)events
{
  eventsCopy = events;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  batchedRecordingEventsByUUID = self->_batchedRecordingEventsByUUID;
  self->_batchedRecordingEventsByUUID = eventsCopy;
}

- (NSDictionary)batchedRecordingEventsByUUID
{
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  batchedRecordingEventsByUUID = self->_batchedRecordingEventsByUUID;

  return batchedRecordingEventsByUUID;
}

- (void)_setupLiveStreamController:(id)controller
{
  controllerCopy = controller;
  liveStreamController = self->_liveStreamController;
  if (liveStreamController != controllerCopy)
  {
    [(HFCameraLiveStreamControlling *)self->_liveStreamController setDelegate:0];
    liveStreamController = self->_liveStreamController;
  }

  self->_liveStreamController = controllerCopy;
  v8 = controllerCopy;

  [(HFCameraLiveStreamControlling *)self->_liveStreamController setDelegate:self];
  liveCameraSource = [(HFCameraLiveStreamControlling *)v8 liveCameraSource];
  liveCameraSource = self->_liveCameraSource;
  self->_liveCameraSource = liveCameraSource;
}

- (void)_setupClipPlayerWithClipManager:(id)manager
{
  v49 = *MEMORY[0x277D85DE8];
  if (manager)
  {
    eventCache = [(HFCameraPlaybackEngine *)self eventCache];
    clips = [eventCache clips];

    overrideClipPlayer = [(HFCameraPlaybackEngine *)self overrideClipPlayer];
    v7 = overrideClipPlayer;
    if (overrideClipPlayer)
    {
      v8 = overrideClipPlayer;
      clipPlayer = self->_clipPlayer;
      self->_clipPlayer = v8;
    }

    else
    {
      v15 = [HFCameraClipPlayer alloc];
      clipPlayer = [(HFCameraPlaybackEngine *)self cameraProfile];
      v16 = [(HFCameraClipPlayer *)v15 initWithCameraProfile:clipPlayer clips:clips];
      v17 = self->_clipPlayer;
      self->_clipPlayer = v16;
    }

    [(HFCameraClipPlaying *)self->_clipPlayer setDelegate:self];
    clipScrubber = [(HFCameraPlaybackEngine *)self clipScrubber];
    [(HFCameraClipPlaying *)self->_clipPlayer setScrubber:clipScrubber];

    playbackPosition = [(HFCameraPlaybackEngine *)self playbackPosition];
    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:playbackPosition notifyObservers:0];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    observerStates = [(HFCameraPlaybackEngine *)self observerStates];
    keyEnumerator = [observerStates keyEnumerator];

    v22 = [keyEnumerator countByEnumeratingWithState:&v43 objects:v48 count:16];
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
            objc_enumerationMutation(keyEnumerator);
          }

          [(HFCameraPlaybackEngine *)self _setupTimeObservationForObserver:*(*(&v43 + 1) + 8 * i)];
        }

        v23 = [keyEnumerator countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v23);
    }

LABEL_27:

    v38 = *MEMORY[0x277D85DE8];
    return;
  }

  if (+[HFUtilities isPressDemoModeEnabled])
  {
    cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
    clips = [HFDemoModeAccessoryManager clipsForCameraProfile:cameraProfile];

    overrideClipPlayer2 = [(HFCameraPlaybackEngine *)self overrideClipPlayer];
    v12 = overrideClipPlayer2;
    if (overrideClipPlayer2)
    {
      v13 = overrideClipPlayer2;
      cameraProfile2 = self->_clipPlayer;
      self->_clipPlayer = v13;
    }

    else
    {
      v28 = [HFCameraClipPlayer alloc];
      cameraProfile2 = [(HFCameraPlaybackEngine *)self cameraProfile];
      v29 = [(HFCameraClipPlayer *)v28 initWithCameraProfile:cameraProfile2 clips:clips];
      v30 = self->_clipPlayer;
      self->_clipPlayer = v29;
    }

    [(HFCameraClipPlaying *)self->_clipPlayer setDelegate:self];
    clipScrubber2 = [(HFCameraPlaybackEngine *)self clipScrubber];
    [(HFCameraClipPlaying *)self->_clipPlayer setScrubber:clipScrubber2];

    playbackPosition2 = [(HFCameraPlaybackEngine *)self playbackPosition];
    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:playbackPosition2 notifyObservers:0];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    observerStates2 = [(HFCameraPlaybackEngine *)self observerStates];
    keyEnumerator = [observerStates2 keyEnumerator];

    v34 = [keyEnumerator countByEnumeratingWithState:&v39 objects:v47 count:16];
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
            objc_enumerationMutation(keyEnumerator);
          }

          [(HFCameraPlaybackEngine *)self _setupTimeObservationForObserver:*(*(&v39 + 1) + 8 * j)];
        }

        v35 = [keyEnumerator countByEnumeratingWithState:&v39 objects:v47 count:16];
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

- (void)_setupTimeObservationForObserver:(id)observer
{
  observerCopy = observer;
  observerStates = [(HFCameraPlaybackEngine *)self observerStates];
  v6 = [observerStates objectForKey:observerCopy];

  options = [v6 options];
  periodicTimeUpdateInterval = [options periodicTimeUpdateInterval];

  if (periodicTimeUpdateInterval)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, observerCopy);
    options2 = [v6 options];
    periodicTimeUpdateInterval2 = [options2 periodicTimeUpdateInterval];
    [periodicTimeUpdateInterval2 doubleValue];
    v12 = v11;

    clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __59__HFCameraPlaybackEngine__setupTimeObservationForObserver___block_invoke;
    v18 = &unk_277DF5690;
    objc_copyWeak(&v19, &location);
    objc_copyWeak(&v20, &from);
    v14 = [clipPlayer addPeriodicTimeObserverForInterval:&v15 usingBlock:v12];
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
    cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
    clipManager = [cameraProfile clipManager];
    [(HFCameraPlaybackEngine *)self setClipManager:clipManager];

    cameraProfile2 = [(HFCameraPlaybackEngine *)self cameraProfile];
    v6 = [HFDemoModeAccessoryManager clipsForCameraProfile:cameraProfile2];
    v7 = v6;
    v8 = MEMORY[0x277CBEBF8];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    objc_initWeak(location, self);
    eventCache = [(HFCameraPlaybackEngine *)self eventCache];
    v11 = [eventCache updateWithEvents:v9];
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

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:distantFuture];
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

- (id)fetchClipWithUUID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = dCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Loading engine for clip UUID:%@.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = MEMORY[0x277D2C900];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke;
  v21[3] = &unk_277E008D0;
  objc_copyWeak(&v23, buf);
  v7 = dCopy;
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
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v13 = [v11 reschedule:mainThreadScheduler];

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

- (id)fetchClipForSignificantEventWithUUID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = HFLogForCategory(0x16uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
    *buf = 138412546;
    v31 = dCopy;
    v32 = 2112;
    v33 = cameraProfile;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(NC) Request clip for uuid:%@ using profile:%@.", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7 = MEMORY[0x277D2C900];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke;
  v27[3] = &unk_277E008D0;
  objc_copyWeak(&v29, buf);
  v8 = dCopy;
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
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v15 = [v13 reschedule:mainThreadScheduler];

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

- (id)_dispatchToObserversDidUpdateEventCache:(id)cache
{
  cacheCopy = cache;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D2C900];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HFCameraPlaybackEngine__dispatchToObserversDidUpdateEventCache___block_invoke;
  v10[3] = &unk_277DF8428;
  objc_copyWeak(&v12, &location);
  v6 = cacheCopy;
  v11 = v6;
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v8 = [v5 futureWithBlock:v10 scheduler:mainThreadScheduler];

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

- (void)setClipManager:(id)manager
{
  v17 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  WeakRetained = objc_loadWeakRetained(&self->_clipManager);
  v6 = [WeakRetained isEqual:managerCopy];

  if ((v6 & 1) == 0)
  {
    v7 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained(&self->_clipManager);
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = managerCopy;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Transitioning from clip manager:%@ to clip manager:%@.", &v13, 0x16u);
    }

    objc_storeWeak(&self->_clipManager, managerCopy);
    [(HFCameraPlaybackEngine *)self _setupClipPlayerWithClipManager:managerCopy];
    observerDispatcher = [(HFCameraPlaybackEngine *)self observerDispatcher];
    proxy = [observerDispatcher proxy];
    player = [(HFCameraPlaybackEngine *)self player];
    [proxy playbackEngine:self didUpdateClipPlayer:player];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateConfiguration:(id)configuration
{
  v56 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngine.m" lineNumber:529 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  [configurationCopy assertConfigurationIsValid];
  if (+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];

    if (!workQueue)
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

  cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];

  if (cameraProfile)
  {
    cameraProfile2 = [(HFCameraPlaybackEngine *)self cameraProfile];
    recordingEventManager = [cameraProfile2 recordingEventManager];
    [recordingEventManager removeObserver:self];

    [(HFCameraPlaybackEngine *)self _resetBatchedRecordingEventsTimer];
    [(HFCameraPlaybackEngine *)self setShouldBatchRecordingEvents:0];
    if (+[HFUtilities isInternalTest])
    {
      v10 = objc_opt_new();
      [(HFCameraPlaybackEngine *)self setBatchedRecordingEvents:v10];
    }

    else
    {
      workQueue2 = [(HFCameraPlaybackEngine *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__HFCameraPlaybackEngine_updateConfiguration___block_invoke;
      block[3] = &unk_277DF3D38;
      block[4] = self;
      dispatch_async(workQueue2, block);
    }
  }

  home = [configurationCopy home];
  [(HFCameraPlaybackEngine *)self setHome:home];

  cameraProfile3 = [configurationCopy cameraProfile];
  [(HFCameraPlaybackEngine *)self setCameraProfile:cameraProfile3];

  if (!+[HFUtilities isInternalTest])
  {
LABEL_15:
    notificationClipUUID = [configurationCopy notificationClipUUID];
    [(HFCameraPlaybackEngine *)self setNotificationCenterClipUUID:notificationClipUUID];

    if (!+[HFUtilities isPressDemoModeEnabled])
    {
      overrideLiveStreamController = [(HFCameraPlaybackEngine *)self overrideLiveStreamController];
      v20 = overrideLiveStreamController;
      if (overrideLiveStreamController)
      {
        v21 = overrideLiveStreamController;
      }

      else
      {
        v22 = [HFCameraLiveStreamController alloc];
        home2 = [(HFCameraPlaybackEngine *)self home];
        cameraProfile4 = [(HFCameraPlaybackEngine *)self cameraProfile];
        v21 = [(HFCameraLiveStreamController *)v22 initWithHome:home2 cameraProfile:cameraProfile4];
      }

      [(HFCameraPlaybackEngine *)self _setupLiveStreamController:v21];
    }

    v25 = [HFCameraVideoDownloader alloc];
    cameraProfile5 = [configurationCopy cameraProfile];
    v15 = [(HFCameraVideoDownloader *)v25 initWithCameraProfile:cameraProfile5];

    v27 = +[HFCameraTimelapseVideoProvider sharedProvider];
    [v27 setTimelapseVideoDownloader:v15];

    cameraProfile6 = [configurationCopy cameraProfile];
    v29 = +[HFCameraImageManager sharedManager];
    [v29 setCameraProfile:cameraProfile6];

    v30 = [HFCameraPlaybackEngineEventCache alloc];
    debugLogger = [(HFCameraPlaybackEngine *)self debugLogger];
    v32 = [(HFCameraPlaybackEngineEventCache *)v30 initWithDebugLogger:debugLogger];
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

    batchedRecordingEventsTimer = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [batchedRecordingEventsTimer setDelegate:self];

    workQueue3 = [(HFCameraPlaybackEngine *)self workQueue];
    batchedRecordingEventsTimer2 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [batchedRecordingEventsTimer2 setDelegateQueue:workQueue3];

    batchedRecordingEventsTimer3 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [batchedRecordingEventsTimer3 resume];

    cameraProfile7 = [(HFCameraPlaybackEngine *)self cameraProfile];
    recordingEventManager2 = [cameraProfile7 recordingEventManager];
    workQueue4 = [(HFCameraPlaybackEngine *)self workQueue];
    [recordingEventManager2 addObserver:self queue:workQueue4];

    objc_initWeak(buf, self);
    cameraProfile8 = [(HFCameraPlaybackEngine *)self cameraProfile];
    recordingEventManager3 = [cameraProfile8 recordingEventManager];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __46__HFCameraPlaybackEngine_updateConfiguration___block_invoke_108;
    v51[3] = &unk_277DF3860;
    objc_copyWeak(&v52, buf);
    [recordingEventManager3 performCloudPullWithCompletion:v51];

    clipScrubber = [configurationCopy clipScrubber];
    clipScrubber = self->_clipScrubber;
    self->_clipScrubber = clipScrubber;

    playbackPosition = [configurationCopy playbackPosition];
    v47 = +[HFCameraPlaybackPosition livePosition];
    self->_engineMode = [playbackPosition isEqual:v47] ^ 1;

    playbackPosition2 = [configurationCopy playbackPosition];
    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:playbackPosition2 notifyObservers:0];

    objc_destroyWeak(&v52);
    objc_destroyWeak(buf);
LABEL_23:

    goto LABEL_24;
  }

  home3 = [(HFCameraPlaybackEngine *)self home];
  if (home3)
  {

    goto LABEL_15;
  }

  cameraProfile9 = [(HFCameraPlaybackEngine *)self cameraProfile];
  v17 = cameraProfile9 == 0;

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
  clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
  player = [clipPlayer player];

  return player;
}

- (HFCameraPlaybackPosition)playbackPosition
{
  playbackContentType = [(HFCameraPlaybackEngine *)self playbackContentType];
  if (playbackContentType == 1)
  {
    clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
    currentPosition = [clipPlayer currentPosition];
    date = [currentPosition date];

    if (!date || [(HFCameraPlaybackEngine *)self isScrubbing])
    {
      lastRequestedClipPlaybackDate = [(HFCameraPlaybackEngine *)self lastRequestedClipPlaybackDate];

      date = lastRequestedClipPlaybackDate;
    }

    v5 = [HFCameraPlaybackPosition clipPositionWithDate:date];
  }

  else if (playbackContentType)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFCameraPlaybackEngine playbackContentType](self, "playbackContentType")}];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngine.m" lineNumber:668 description:{@"Unknown playback content type %@", v11}];

    v5 = 0;
  }

  else
  {
    v5 = +[HFCameraPlaybackPosition livePosition];
  }

  return v5;
}

- (void)updatePlaybackPositionToDate:(id)date usingClip:(id)clip
{
  dateCopy = date;
  clipCopy = clip;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HFCameraPlaybackEngine_updatePlaybackPositionToDate_usingClip___block_invoke;
  v14[3] = &unk_277DF6458;
  objc_copyWeak(&v17, &location);
  v8 = clipCopy;
  v15 = v8;
  v9 = dateCopy;
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

- (void)startPlaybackAtDate:(id)date withClip:(id)clip
{
  self->_wantsToPlay = 1;
  if (clip)
  {

    [(HFCameraPlaybackEngine *)self updatePlaybackPositionToDate:date usingClip:?];
  }

  else
  {
    v5 = +[HFCameraPlaybackPosition livePosition];
    [(HFCameraPlaybackEngine *)self setPlaybackPosition:v5];
  }
}

- (void)setPlaybackPosition:(id)position
{
  v16 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = positionCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Setting playback position: %@", &v14, 0xCu);
  }

  if (positionCopy)
  {
    playbackPosition = [(HFCameraPlaybackEngine *)self playbackPosition];
    if ([playbackPosition isEqual:positionCopy])
    {
      v7 = +[HFCameraPlaybackPosition livePosition];
      v8 = [positionCopy isEqual:v7];

      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v10 = +[HFCameraPlaybackPosition livePosition];
    v11 = [positionCopy isEqual:v10];

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

    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:positionCopy notifyObservers:1];
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

- (void)addObserver:(id)observer withOptions:(id)options
{
  observerCopy = observer;
  optionsCopy = options;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngine.m" lineNumber:770 description:{@"Invalid parameter not satisfying: %@", @"options != nil"}];
  }

  v8 = objc_alloc_init(HFCameraPlaybackEngineObservationState);
  [(HFCameraPlaybackEngineObservationState *)v8 setOptions:optionsCopy];
  observerStates = [(HFCameraPlaybackEngine *)self observerStates];
  [observerStates setObject:v8 forKey:observerCopy];

  observerDispatcher = [(HFCameraPlaybackEngine *)self observerDispatcher];
  [observerDispatcher addObserver:observerCopy];

  [(HFCameraPlaybackEngine *)self _setupTimeObservationForObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerStates = [(HFCameraPlaybackEngine *)self observerStates];
  v5 = [observerStates objectForKey:observerCopy];
  timeObservationToken = [v5 timeObservationToken];

  if (timeObservationToken)
  {
    clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
    [clipPlayer removeTimeObserver:timeObservationToken];
  }

  observerStates2 = [(HFCameraPlaybackEngine *)self observerStates];
  [observerStates2 removeObjectForKey:observerCopy];

  observerDispatcher = [(HFCameraPlaybackEngine *)self observerDispatcher];
  [observerDispatcher removeObserver:observerCopy];
}

- (NSArray)observers
{
  observerDispatcher = [(HFCameraPlaybackEngine *)self observerDispatcher];
  observers = [observerDispatcher observers];

  return observers;
}

- (void)modifyPlaybackFromSender:(id)sender usingBlock:(id)block
{
  blockCopy = block;
  senderCopy = sender;
  observerDispatcher = [(HFCameraPlaybackEngine *)self observerDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HFCameraPlaybackEngine_modifyPlaybackFromSender_usingBlock___block_invoke;
  v10[3] = &unk_277E00970;
  v11 = blockCopy;
  v9 = blockCopy;
  [observerDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:v10];
}

- (HMCameraClip)currentClip
{
  v30 = *MEMORY[0x277D85DE8];
  playbackPosition = [(HFCameraPlaybackEngine *)self playbackPosition];
  if ([playbackPosition contentType])
  {
    clipPlaybackDate = [playbackPosition clipPlaybackDate];
    eventCache = [(HFCameraPlaybackEngine *)self eventCache];
    events = [eventCache events];
    v7 = [HFCameraPlaybackEngine findClipPositionForDate:clipPlaybackDate inEvents:events options:1];

    if (v7)
    {
      clip = [v7 clip];
    }

    else
    {
      notificationCenterClipUUID = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];

      if (notificationCenterClipUUID)
      {
        v10 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          eventCache2 = [(HFCameraPlaybackEngine *)self eventCache];
          clips = [eventCache2 clips];
          firstObject = [clips firstObject];
          v24 = 138412290;
          v25 = firstObject;
          _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "(NC) Returning the first event:%@", &v24, 0xCu);
        }

        eventCache3 = [(HFCameraPlaybackEngine *)self eventCache];
        clips2 = [eventCache3 clips];
        clip = [clips2 firstObject];
      }

      else
      {
        eventCache4 = [(HFCameraPlaybackEngine *)self eventCache];
        clips3 = [eventCache4 clips];
        lastObject = [clips3 lastObject];

        hf_endDate = [lastObject hf_endDate];
        v17 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          clipPlaybackDate2 = [playbackPosition clipPlaybackDate];
          v24 = 138412802;
          v25 = clipPlaybackDate2;
          v26 = 2112;
          v27 = hf_endDate;
          v28 = 2112;
          v29 = lastObject;
          _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "Clip playback date (%@) is >= the last clip's playback date (%@) using clip:%@", &v24, 0x20u);
        }

        clip = 0;
      }
    }
  }

  else
  {
    clip = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return clip;
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
    cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
    userSettings = [cameraProfile userSettings];
    currentAccessMode = [userSettings currentAccessMode];

    cameraProfile2 = [(HFCameraPlaybackEngine *)self cameraProfile];
    userSettings2 = [cameraProfile2 userSettings];
    if (([userSettings2 isCameraManuallyDisabled] & 1) != 0 || !currentAccessMode)
    {
    }

    else
    {

      if (currentAccessMode != 3)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

- (void)setTimelineState:(unint64_t)state
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_timelineState != state)
  {
    self->_timelineState = state;
    v5 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      timelineStateDescription = [(HFCameraPlaybackEngine *)self timelineStateDescription];
      scrubbing = self->_scrubbing;
      userScrubbing = self->_userScrubbing;
      *buf = 138413058;
      selfCopy = self;
      v13 = 2112;
      v14 = timelineStateDescription;
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
    v10[5] = state;
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

- (void)setShouldBypassVideoFetchRequest:(BOOL)request
{
  if (self->_shouldBypassVideoFetchRequest != request)
  {
    self->_shouldBypassVideoFetchRequest = request;
  }
}

- (BOOL)hasRecordingEvents
{
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  clips = [eventCache clips];
  v4 = [clips count] != 0;

  return v4;
}

- (NSArray)cameraEvents
{
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  events = [eventCache events];

  return events;
}

- (NSArray)cameraClips
{
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  clips = [eventCache clips];

  return clips;
}

- (HMCameraClip)clipWithLongestDuration
{
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  clipWithLongestDuration = [eventCache clipWithLongestDuration];

  return clipWithLongestDuration;
}

- (id)daysWithClips
{
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  daysWithClips = [eventCache daysWithClips];

  return daysWithClips;
}

- (BOOL)isCameraPortraitMode
{
  liveCameraSource = [(HFCameraPlaybackEngine *)self liveCameraSource];
  [liveCameraSource aspectRatio];
  v4 = v3;

  return v4 > 0.0 && v4 < 1.0;
}

- (void)startPlaybackForCurrentClip
{
  playbackSessionEvent = [(HFCameraPlaybackEngine *)self playbackSessionEvent];

  if (playbackSessionEvent)
  {
    playbackSessionEvent2 = [(HFCameraPlaybackEngine *)self playbackSessionEvent];
    v5 = [playbackSessionEvent2 sendEventForState:2];
  }

  v6 = [HFCameraAnalyticsCameraClipPlaybackSessionEvent alloc];
  currentClip = [(HFCameraPlaybackEngine *)self currentClip];
  v8 = [(HFCameraAnalyticsEvent *)v6 initWithCameraClip:currentClip];
  [(HFCameraPlaybackEngine *)self setPlaybackSessionEvent:v8];

  clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
  [clipPlayer play];
}

- (void)setScrubbing:(BOOL)scrubbing
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_scrubbing != scrubbing)
  {
    scrubbingCopy = scrubbing;
    v5 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v20 = 1024;
      v21 = scrubbingCopy;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Scrubbing state changed. UserScrubbing:%{BOOL}d", buf, 0x12u);
    }

    playbackPosition = [(HFCameraPlaybackEngine *)self playbackPosition];
    v7 = playbackPosition;
    if (scrubbingCopy)
    {
      clipPlaybackDate = [playbackPosition clipPlaybackDate];
      [(HFCameraPlaybackEngine *)self setLastRequestedClipPlaybackDate:clipPlaybackDate];

      self->_scrubbing = scrubbingCopy;
    }

    else
    {
      self->_scrubbing = 0;
      lastRequestedClipPlaybackDate = [(HFCameraPlaybackEngine *)self lastRequestedClipPlaybackDate];
      currentClip = [(HFCameraPlaybackEngine *)self currentClip];
      dateOfOccurrence = [currentClip dateOfOccurrence];
      [lastRequestedClipPlaybackDate timeIntervalSinceDate:dateOfOccurrence];
      v13 = v12;

      clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
      [clipPlayer endScrubbingWithOffset:v13];

      [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:v7 notifyObservers:1];
    }

    [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__HFCameraPlaybackEngine_setScrubbing___block_invoke;
    v16[3] = &unk_277E00998;
    v16[4] = self;
    v17 = scrubbingCopy;
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

- (void)setWantsToPlay:(BOOL)play
{
  playCopy = play;
  v12 = *MEMORY[0x277D85DE8];
  if (self->_wantsToPlay != play || ([(HFCameraPlaybackEngine *)self playbackError], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    self->_wantsToPlay = playCopy;
    v6 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      selfCopy = self;
      v10 = 1024;
      v11 = playCopy;
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
      _derivedPlaybackError = [(HFCameraPlaybackEngine *)self _derivedPlaybackError];
      v3 = _derivedPlaybackError == 0;
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
  playbackContentType = [(HFCameraPlaybackEngine *)self playbackContentType];
  if (playbackContentType == 1)
  {
    clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
    error = [clipPlayer error];
  }

  else
  {
    if (playbackContentType)
    {
      goto LABEL_6;
    }

    clipPlayer = [(HFCameraPlaybackEngine *)self liveStreamController];
    error = [clipPlayer streamError];
  }

  v2 = error;

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

- (void)setLiveCameraSource:(id)source
{
  sourceCopy = source;
  if (self->_liveCameraSource != sourceCopy)
  {
    objc_storeStrong(&self->_liveCameraSource, source);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__HFCameraPlaybackEngine_setLiveCameraSource___block_invoke;
    v6[3] = &unk_277DF3370;
    v6[4] = self;
    v7 = sourceCopy;
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

- (void)_setPlayerVolume:(float)volume notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  if (self->_streamAudioVolume != volume || +[HFUtilities isAMac])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v8 = volume;
    [standardUserDefaults setFloat:@"HFCameraPlaybackStreamAudioVolume" forKey:v8];

    self->_streamAudioVolume = volume;
    liveStreamController = [(HFCameraPlaybackEngine *)self liveStreamController];
    *&v10 = volume;
    [liveStreamController setStreamAudioVolume:v10];

    if (observersCopy)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __59__HFCameraPlaybackEngine__setPlayerVolume_notifyObservers___block_invoke;
      v11[3] = &unk_277DF4438;
      v11[4] = self;
      volumeCopy = volume;
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

- (void)_setStreamAudioEnabled:(BOOL)enabled notifyObservers:(BOOL)observers
{
  if (self->_streamAudioEnabled != enabled)
  {
    v11 = v4;
    v12 = v5;
    observersCopy = observers;
    self->_streamAudioEnabled = enabled;
    [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
    if (observersCopy)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __65__HFCameraPlaybackEngine__setStreamAudioEnabled_notifyObservers___block_invoke;
      v9[3] = &unk_277E00998;
      v9[4] = self;
      enabledCopy = enabled;
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
  playbackPosition = [(HFCameraPlaybackEngine *)self playbackPosition];
  clipPlaybackDate = [playbackPosition clipPlaybackDate];
  v4 = clipPlaybackDate != 0;

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

- (void)timerDidFire:(id)fire
{
  v28 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HFCameraPlaybackEngine *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  batchedRecordingEventsTimer = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];

  if (batchedRecordingEventsTimer == fireCopy && ![(HFCameraPlaybackEngine *)self isDeallocating])
  {
    v7 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x277CCABB0];
      batchedRecordingEventsByUUID = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
      v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(batchedRecordingEventsByUUID, "count")}];
      v24 = 138412546;
      v25 = v10;
      v26 = 1024;
      shouldBatchRecordingEvents = [(HFCameraPlaybackEngine *)self shouldBatchRecordingEvents];
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Batch recording event throttling timer invoked; batched events: %@; batch in progress: %{BOOL}d", &v24, 0x12u);
    }

    batchedRecordingEventsByUUID2 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
    v12 = [batchedRecordingEventsByUUID2 count];

    if (v12)
    {
      cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
      recordingEventManager = [cameraProfile recordingEventManager];
      v15 = MEMORY[0x277CBEB98];
      batchedRecordingEventsByUUID3 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
      allValues = [batchedRecordingEventsByUUID3 allValues];
      v18 = [v15 setWithArray:allValues];
      [(HFCameraPlaybackEngine *)self _recordingEventManager:recordingEventManager didUpdateRecordingEvents:v18];

      v19 = objc_opt_new();
      [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsByUUID:v19];
    }

    else if (![(HFCameraPlaybackEngine *)self shouldBatchRecordingEvents])
    {
      batchedRecordingEventsTimer2 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];

      if (batchedRecordingEventsTimer2)
      {
        v21 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Batch recording event throttling timer invalidated", &v24, 2u);
        }

        batchedRecordingEventsTimer3 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
        [batchedRecordingEventsTimer3 cancel];

        [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsTimer:0];
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)recordingEventManager:(id)manager didUpdateRecordingEvents:(id)events
{
  managerCopy = manager;
  eventsCopy = events;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  if ([(HFCameraPlaybackEngine *)self shouldBatchRecordingEvents])
  {
    batchedRecordingEventsByUUID = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
    v10 = [batchedRecordingEventsByUUID mutableCopy];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__HFCameraPlaybackEngine_recordingEventManager_didUpdateRecordingEvents___block_invoke;
    v12[3] = &unk_277DF29C8;
    v13 = v10;
    v11 = v10;
    [eventsCopy na_each:v12];
    [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsByUUID:v11];
  }

  else
  {
    [(HFCameraPlaybackEngine *)self _recordingEventManager:managerCopy didUpdateRecordingEvents:eventsCopy];
  }
}

void __73__HFCameraPlaybackEngine_recordingEventManager_didUpdateRecordingEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (void)_recordingEventManager:(id)manager didUpdateRecordingEvents:(id)events
{
  v47 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  eventsCopy = events;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  v8 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    selfCopy3 = "[HFCameraPlaybackEngine _recordingEventManager:didUpdateRecordingEvents:]";
    v41 = 2048;
    v42 = [eventsCopy count];
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%s, received (%lu) events", buf, 0x16u);
  }

  notificationCenterClipUUID = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];
  v10 = notificationCenterClipUUID;
  if (notificationCenterClipUUID)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke;
    v37[3] = &unk_277E009E8;
    v11 = notificationCenterClipUUID;
    v38 = v11;
    v12 = [eventsCopy na_firstObjectPassingTest:v37];
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

      eventsCopy = v15;

      if ([eventsCopy isComplete])
      {
        v16 = HFLogForCategory(0x16uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "(NC) No need to listen for a completed clip. Removing observation.", buf, 2u);
        }

        cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
        recordingEventManager = [cameraProfile recordingEventManager];
        [recordingEventManager removeObserver:self];
      }

      v19 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        selfCopy3 = self;
        v41 = 2112;
        v42 = managerCopy;
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
        selfCopy3 = self;
        v41 = 2112;
        v42 = managerCopy;
        v43 = 2112;
        v44 = eventsCopy;
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
      selfCopy3 = self;
      v41 = 2112;
      v42 = managerCopy;
      v43 = 2112;
      v44 = eventsCopy;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "Playback engine:%@ eventManager:%@ updatedClips:%@", buf, 0x20u);
    }

    v13 = eventsCopy;
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
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  allObjects = [v24 allObjects];
  v28 = [eventCache updateWithEvents:allObjects];
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

- (void)recordingEventManager:(id)manager didRemoveRecordingEventsWithUUIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dsCopy = ds;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  v9 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v18 = 2112;
    v19 = managerCopy;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Playback engine:%@ received eventManager:%@ updatedClips:%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  v11 = [eventCache removeEventUUIDs:dsCopy];
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

- (void)clipPlayer:(id)player didUpdateTimeControlStatus:(int64_t)status
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(HFCameraPlaybackEngine *)self playbackContentType])
  {
    lastPlayerTimeControlStatus = [(HFCameraPlaybackEngine *)self lastPlayerTimeControlStatus];
    if (!status && lastPlayerTimeControlStatus == 1 && self->_wantsToPlay)
    {
      if ([(HFCameraPlaybackEngine *)self playbackRetryAttempts]> 2)
      {
        playbackSessionEvent = [(HFCameraPlaybackEngine *)self playbackSessionEvent];
        v17 = [playbackSessionEvent sendEventForState:1];

        [(HFCameraPlaybackEngine *)self setPlaybackSessionEvent:0];
        v18 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
          error = [clipPlayer error];
          v22 = 138412290;
          selfCopy3 = error;
          _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Failure occurred while waiting to play. Bailing on the playback attempt. Player error:%@", &v22, 0xCu);
        }

        [(HFCameraPlaybackEngine *)self setLastPlayerTimeControlStatus:0];
        selfCopy2 = self;
        v12 = 0;
      }

      else
      {
        v7 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 3 - [(HFCameraPlaybackEngine *)self playbackRetryAttempts];
          clipPlayer2 = [(HFCameraPlaybackEngine *)self clipPlayer];
          error2 = [clipPlayer2 error];
          v22 = 134218242;
          selfCopy3 = v8;
          v24 = 2112;
          statusCopy = error2;
          _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Failure occurred while waiting to play. Retrying playback up to %lu more times. Player error:%@", &v22, 0x16u);
        }

        [(HFCameraPlaybackEngine *)self setPlaybackRetryAttempts:[(HFCameraPlaybackEngine *)self playbackRetryAttempts]+ 1];
        selfCopy2 = self;
        v12 = 1;
      }

      [(HFCameraPlaybackEngine *)selfCopy2 setWantsToPlay:v12];
    }

    else
    {
      [(HFCameraPlaybackEngine *)self setLastPlayerTimeControlStatus:status];
      if ([(HFCameraPlaybackEngine *)self lastPlayerTimeControlStatus]== 2)
      {
        playbackSessionEvent2 = [(HFCameraPlaybackEngine *)self playbackSessionEvent];
        v14 = [playbackSessionEvent2 sendEventForState:0];

        [(HFCameraPlaybackEngine *)self setPlaybackSessionEvent:0];
        [(HFCameraPlaybackEngine *)self setPlaybackRetryAttempts:0];
      }

      v15 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        selfCopy3 = self;
        v24 = 2048;
        statusCopy = status;
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received clipPlayer timeControlStatus update: %ld", &v22, 0x16u);
      }

      [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)clipPlayer:(id)player didUpdateError:(id)error isFatal:(BOOL)fatal
{
  fatalCopy = fatal;
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v8 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = errorCopy;
    v14 = 1024;
    v15 = fatalCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received clipPlayer error update: %@ (fatal: %d)", &v10, 0x1Cu);
  }

  [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)clipPlayerDidPlayToEndTime:(id)time
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received clipPlayerDidPlayToEndTime", &v17, 0xCu);
  }

  notificationCenterClipUUID = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];

  if (notificationCenterClipUUID)
  {
    cameraClips = [(HFCameraPlaybackEngine *)self cameraClips];
    firstObject = [cameraClips firstObject];

    dateOfOccurrence = [firstObject dateOfOccurrence];
    v9 = HFLogForCategory(0x17uLL);
    v10 = v9;
    if (dateOfOccurrence)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uniqueIdentifier = [firstObject uniqueIdentifier];
        v17 = 138412802;
        selfCopy3 = self;
        v19 = 2112;
        v20 = dateOfOccurrence;
        v21 = 2112;
        v22 = uniqueIdentifier;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "(NC) Playback engine: %@ restarting clip playback at start date:%@ clipUUID:%@.", &v17, 0x20u);
      }

      v12 = [HFCameraPlaybackPosition clipPositionWithDate:dateOfOccurrence inClip:firstObject];
      [(HFCameraPlaybackEngine *)self setPlaybackPosition:v12];

      [(HFCameraPlaybackEngine *)self setWantsToPlay:1];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        notificationCenterClipUUID2 = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];
        v17 = 138412546;
        selfCopy3 = self;
        v19 = 2112;
        v20 = notificationCenterClipUUID2;
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

- (void)streamControllerStateDidUpdate:(id)update
{
  v13 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = HFLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [updateCopy debugDescription];
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received liveStreamController state update: %@", &v9, 0x16u);
  }

  liveCameraSource = [updateCopy liveCameraSource];
  [(HFCameraPlaybackEngine *)self setLiveCameraSource:liveCameraSource];

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
  engineModeDescription = [(HFCameraPlaybackEngine *)self engineModeDescription];
  timeControlStatusDescription = [(HFCameraPlaybackEngine *)self timeControlStatusDescription];
  timelineStateDescription = [(HFCameraPlaybackEngine *)self timelineStateDescription];
  v7 = [v3 stringWithFormat:@"%@ %@ - %@ - %@", self, engineModeDescription, timeControlStatusDescription, timelineStateDescription];

  return v7;
}

- (BOOL)isFirstEventOfTheDay:(id)day
{
  dayCopy = day;
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  v6 = [eventCache isFirstEventOfTheDay:dayCopy];

  return v6;
}

- (id)firstOfTheDayClipForDate:(id)date
{
  dateCopy = date;
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  v6 = [eventCache firstOfTheDayClipForDate:dateCopy];

  return v6;
}

- (id)findClipPositionForDate:(id)date
{
  dateCopy = date;
  v5 = objc_opt_class();
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  clips = [eventCache clips];
  v8 = [v5 findClipPositionForDate:dateCopy inEvents:clips options:1];

  return v8;
}

- (id)findClipPositionForDate:(id)date options:(unint64_t)options
{
  dateCopy = date;
  v7 = objc_opt_class();
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  events = [eventCache events];
  v10 = [v7 findClipPositionForDate:dateCopy inEvents:events options:options];

  return v10;
}

+ (id)findClipPositionForDate:(id)date inEvents:(id)events options:(unint64_t)options
{
  dateCopy = date;
  eventsCopy = events;
  v10 = [self hf_indexOfClipForDate:dateCopy inEvents:eventsCopy enumerationOptions:0 searchOptions:options];
  v11 = 0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [eventsCopy objectAtIndexedSubscript:v10];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __67__HFCameraPlaybackEngine_findClipPositionForDate_inEvents_options___block_invoke;
    v18 = &unk_277E00A38;
    v19 = v12;
    v20 = dateCopy;
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

+ (unint64_t)hf_indexOfClipForDate:(id)date inEvents:(id)events enumerationOptions:(unint64_t)options searchOptions:(unint64_t)searchOptions
{
  dateCopy = date;
  eventsCopy = events;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HFCameraPlaybackEngine_hf_indexOfClipForDate_inEvents_enumerationOptions_searchOptions___block_invoke;
  v15[3] = &unk_277E00A60;
  v17 = eventsCopy;
  searchOptionsCopy = searchOptions;
  v16 = dateCopy;
  v11 = eventsCopy;
  v12 = dateCopy;
  v13 = [v11 indexOfObjectWithOptions:options passingTest:v15];

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
  batchedRecordingEventsTimer = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];

  if (batchedRecordingEventsTimer)
  {
    batchedRecordingEventsTimer2 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    isRunning = [batchedRecordingEventsTimer2 isRunning];

    if ((isRunning & 1) == 0)
    {
      batchedRecordingEventsTimer3 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
      [batchedRecordingEventsTimer3 resume];
    }

    batchedRecordingEventsTimer4 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [batchedRecordingEventsTimer4 cancel];

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
    selfCopy = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }

  if (+[HFUtilities isInternalTest])
  {
    clipPlayer = self->_clipPlayer;
    self->_clipPlayer = 0;

    cameraProfile = +[HFCameraTimelapseVideoProvider sharedProvider];
    [cameraProfile waitUntilAllDownloadsAreFinished];
  }

  else
  {
    cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
    recordingEventManager = [cameraProfile recordingEventManager];
    [recordingEventManager removeObserver:self];
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