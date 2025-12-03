@interface HFCameraManager
- (BOOL)_hasSnapshotRequesters;
- (BOOL)_hasStreamRequesters;
- (BOOL)arePeriodicSnapshotsEnabled;
- (BOOL)isContinuousStreamingEnabled;
- (HFCameraManager)initWithCameraProfile:(id)profile;
- (HMCameraProfile)cameraProfile;
- (id)_nextSnapshotDate;
- (void)_beginContinuousStreaming;
- (void)_beginPeriodicSnapshots;
- (void)_cancelNextSnapshotEvent;
- (void)_dispatchStreamStateUpdate;
- (void)_endContinuousStreaming;
- (void)_endPeriodicSnapshots;
- (void)_scheduleNextSnapshotEventWithPreviousError:(id)error;
- (void)_startStreaming;
- (void)_stopStreaming;
- (void)_updateEventRegistration;
- (void)accessoryDidUpdateReachability:(id)reachability;
- (void)beginContinuousStreamingWithRequester:(id)requester;
- (void)beginPeriodicSnapshotsWithRequester:(id)requester;
- (void)cameraSnapshotControl:(id)control didTakeSnapshot:(id)snapshot error:(id)error;
- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)snapshot;
- (void)cameraStreamControl:(id)control didStopStreamWithError:(id)error;
- (void)cameraStreamControlDidStartStream:(id)stream;
- (void)cameraUserSettingsDidUpdate:(id)update;
- (void)dealloc;
- (void)endContinuousStreamingWithRequester:(id)requester;
- (void)endPeriodicSnapshotsWithRequester:(id)requester;
- (void)executionEnvironmentDidBecomeActive:(id)active;
- (void)setCachedStreamError:(id)error;
@end

@implementation HFCameraManager

- (HFCameraManager)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  v14.receiver = self;
  v14.super_class = HFCameraManager;
  v5 = [(HFCameraManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cameraProfile, profileCopy);
    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:2 valueOptions:0 capacity:0];
    snapshotRequesters = v6->_snapshotRequesters;
    v6->_snapshotRequesters = v7;

    v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:2 valueOptions:0 capacity:0];
    streamRequesters = v6->_streamRequesters;
    v6->_streamRequesters = v9;

    v11 = +[HFExecutionEnvironment sharedInstance];
    executionEnvironment = v6->_executionEnvironment;
    v6->_executionEnvironment = v11;
  }

  return v6;
}

- (void)dealloc
{
  nextSnapshotEvent = [(HFCameraManager *)self nextSnapshotEvent];
  [nextSnapshotEvent cancel];

  v4.receiver = self;
  v4.super_class = HFCameraManager;
  [(HFCameraManager *)&v4 dealloc];
}

- (void)beginPeriodicSnapshotsWithRequester:(id)requester
{
  requesterCopy = requester;
  snapshotRequesters = [(HFCameraManager *)self snapshotRequesters];
  v6 = [snapshotRequesters objectForKey:requesterCopy];

  if (!v6)
  {
    objc_initWeak(&location, self);
    v7 = objc_alloc(MEMORY[0x277D2C8D0]);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __55__HFCameraManager_beginPeriodicSnapshotsWithRequester___block_invoke;
    v15 = &unk_277DFF118;
    objc_copyWeak(&v16, &location);
    v8 = [v7 initWithTargetObject:requesterCopy finalizer:&v12];
    v9 = [(HFCameraManager *)self snapshotRequesters:v12];
    [v9 setObject:v8 forKey:requesterCopy];

    snapshotRequesters2 = [(HFCameraManager *)self snapshotRequesters];
    v11 = [snapshotRequesters2 count];

    if (v11 == 1)
    {
      [(HFCameraManager *)self _beginPeriodicSnapshots];
      [(HFCameraManager *)self _updateEventRegistration];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __55__HFCameraManager_beginPeriodicSnapshotsWithRequester___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endPeriodicSnapshotsWithRequester:a2];
}

- (void)endPeriodicSnapshotsWithRequester:(id)requester
{
  requesterCopy = requester;
  snapshotRequesters = [(HFCameraManager *)self snapshotRequesters];
  v5 = [snapshotRequesters objectForKey:requesterCopy];

  if (v5)
  {
    snapshotRequesters2 = [(HFCameraManager *)self snapshotRequesters];
    [snapshotRequesters2 removeObjectForKey:requesterCopy];

    snapshotRequesters3 = [(HFCameraManager *)self snapshotRequesters];
    v8 = [snapshotRequesters3 count];

    if (!v8)
    {
      [(HFCameraManager *)self _endPeriodicSnapshots];
      [(HFCameraManager *)self _updateEventRegistration];
    }
  }
}

- (BOOL)arePeriodicSnapshotsEnabled
{
  snapshotRequesters = [(HFCameraManager *)self snapshotRequesters];
  v3 = [snapshotRequesters count] != 0;

  return v3;
}

- (void)beginContinuousStreamingWithRequester:(id)requester
{
  requesterCopy = requester;
  streamRequesters = [(HFCameraManager *)self streamRequesters];
  v6 = [streamRequesters objectForKey:requesterCopy];

  if (!v6)
  {
    objc_initWeak(&location, self);
    v7 = objc_alloc(MEMORY[0x277D2C8D0]);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __57__HFCameraManager_beginContinuousStreamingWithRequester___block_invoke;
    v15 = &unk_277DFF118;
    objc_copyWeak(&v16, &location);
    v8 = [v7 initWithTargetObject:requesterCopy finalizer:&v12];
    v9 = [(HFCameraManager *)self streamRequesters:v12];
    [v9 setObject:v8 forKey:requesterCopy];

    streamRequesters2 = [(HFCameraManager *)self streamRequesters];
    v11 = [streamRequesters2 count];

    if (v11 == 1)
    {
      [(HFCameraManager *)self _beginContinuousStreaming];
      [(HFCameraManager *)self _updateEventRegistration];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __57__HFCameraManager_beginContinuousStreamingWithRequester___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endContinuousStreamingWithRequester:a2];
}

- (void)endContinuousStreamingWithRequester:(id)requester
{
  requesterCopy = requester;
  streamRequesters = [(HFCameraManager *)self streamRequesters];
  v5 = [streamRequesters objectForKey:requesterCopy];

  if (v5)
  {
    streamRequesters2 = [(HFCameraManager *)self streamRequesters];
    [streamRequesters2 removeObjectForKey:requesterCopy];

    streamRequesters3 = [(HFCameraManager *)self streamRequesters];
    v8 = [streamRequesters3 count];

    if (!v8)
    {
      [(HFCameraManager *)self _endContinuousStreaming];
      [(HFCameraManager *)self _updateEventRegistration];
    }
  }
}

- (BOOL)isContinuousStreamingEnabled
{
  streamRequesters = [(HFCameraManager *)self streamRequesters];
  v3 = [streamRequesters count] != 0;

  return v3;
}

- (void)_beginPeriodicSnapshots
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x1BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cameraProfile = [(HFCameraManager *)self cameraProfile];
    hf_prettyDescription = [cameraProfile hf_prettyDescription];
    v7 = 138412290;
    v8 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Beginning periodic snapshots for %@", &v7, 0xCu);
  }

  [(HFCameraManager *)self _scheduleNextSnapshotEventWithPreviousError:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_endPeriodicSnapshots
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x1BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cameraProfile = [(HFCameraManager *)self cameraProfile];
    hf_prettyDescription = [cameraProfile hf_prettyDescription];
    v7 = 138412290;
    v8 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Ending periodic snapshots for %@", &v7, 0xCu);
  }

  [(HFCameraManager *)self _cancelNextSnapshotEvent];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)_nextSnapshotDate
{
  snapshotErrorDate = [(HFCameraManager *)self snapshotErrorDate];

  if (snapshotErrorDate)
  {
    snapshotErrorDate2 = [(HFCameraManager *)self snapshotErrorDate];
    if (![(HFCameraManager *)self snapshotErrorCount])
    {
      v5 = HFLogForCategory(0x1BuLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Handling a snapshot error with no count", v16, 2u);
      }
    }

    [(HFCameraManager *)self _snapshotTimeInterval];
    v7 = v6;
    snapshotErrorCount = [(HFCameraManager *)self snapshotErrorCount];
    v9 = 10;
    if (snapshotErrorCount < 0xA)
    {
      v9 = snapshotErrorCount;
    }

    v10 = v7 * v9;
  }

  else
  {
    cameraProfile = [(HFCameraManager *)self cameraProfile];
    snapshotControl = [cameraProfile snapshotControl];
    mostRecentSnapshot = [snapshotControl mostRecentSnapshot];
    snapshotErrorDate2 = [mostRecentSnapshot captureDate];

    [(HFCameraManager *)self _snapshotTimeInterval];
  }

  v14 = [snapshotErrorDate2 dateByAddingTimeInterval:v10];

  return v14;
}

- (void)_scheduleNextSnapshotEventWithPreviousError:(id)error
{
  v47 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (+[HFUtilities isPressDemoModeEnabled])
  {
    _nextSnapshotDate = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(_nextSnapshotDate, OS_LOG_TYPE_DEFAULT))
    {
      cameraProfile = [(HFCameraManager *)self cameraProfile];
      hf_prettyDescription = [cameraProfile hf_prettyDescription];
      *buf = 138412290;
      v41 = hf_prettyDescription;
      _os_log_impl(&dword_20D9BF000, _nextSnapshotDate, OS_LOG_TYPE_DEFAULT, "Not scheduling snapshot for %@ because demo mode is enabled", buf, 0xCu);
    }
  }

  else
  {
    [(HFCameraManager *)self setCachedSnapshotError:errorCopy];
    if (errorCopy)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(HFCameraManager *)self setSnapshotErrorDate:date];

      [(HFCameraManager *)self setSnapshotErrorCount:[(HFCameraManager *)self snapshotErrorCount]+ 1];
      v9 = HFLogForCategory(0x1BuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        cameraProfile2 = [(HFCameraManager *)self cameraProfile];
        hf_prettyDescription2 = [cameraProfile2 hf_prettyDescription];
        snapshotErrorDate = [(HFCameraManager *)self snapshotErrorDate];
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFCameraManager snapshotErrorCount](self, "snapshotErrorCount")}];
        *buf = 138413058;
        v41 = hf_prettyDescription2;
        v42 = 2112;
        *v43 = errorCopy;
        *&v43[8] = 2112;
        v44 = snapshotErrorDate;
        v45 = 2112;
        v46 = v37;
        _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Snapshot failed for %@; error: %@; snapshotErrorDate: %@; snapshotErrorCount: %@", buf, 0x2Au);
      }
    }

    else
    {
      [(HFCameraManager *)self setSnapshotErrorDate:0];
      [(HFCameraManager *)self setSnapshotErrorCount:0];
    }

    if (-[HFCameraManager _hasSnapshotRequesters](self, "_hasSnapshotRequesters") && (-[HFCameraManager cameraProfile](self, "cameraProfile"), v10 = objc_claimAutoreleasedReturnValue(), [v10 accessory], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isReachable"), v11, v10, (v12 & 1) != 0))
    {
      _nextSnapshotDate = [(HFCameraManager *)self _nextSnapshotDate];
      v13 = HFLogForCategory(0x1BuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        cameraProfile3 = [(HFCameraManager *)self cameraProfile];
        hf_prettyDescription3 = [cameraProfile3 hf_prettyDescription];
        v16 = MEMORY[0x277CCABB0];
        cameraProfile4 = [(HFCameraManager *)self cameraProfile];
        accessory = [cameraProfile4 accessory];
        v19 = [v16 numberWithInteger:{objc_msgSend(accessory, "reachableTransports")}];
        *buf = 138412802;
        v41 = _nextSnapshotDate;
        v42 = 2112;
        *v43 = hf_prettyDescription3;
        *&v43[8] = 2112;
        v44 = v19;
        _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Scheduling next snapshot at %@ for %@ (reachable transports: %@)", buf, 0x20u);
      }

      nextSnapshotEvent = [(HFCameraManager *)self nextSnapshotEvent];
      [nextSnapshotEvent cancel];

      objc_initWeak(buf, self);
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      [_nextSnapshotDate timeIntervalSinceNow];
      v23 = v22;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __63__HFCameraManager__scheduleNextSnapshotEventWithPreviousError___block_invoke;
      v38[3] = &unk_277DF4460;
      objc_copyWeak(&v39, buf);
      v24 = [mainThreadScheduler afterDelay:v38 performBlock:v23];
      [(HFCameraManager *)self setNextSnapshotEvent:v24];

      objc_destroyWeak(&v39);
      objc_destroyWeak(buf);
    }

    else
    {
      _nextSnapshotDate = HFLogForCategory(0x1BuLL);
      if (os_log_type_enabled(_nextSnapshotDate, OS_LOG_TYPE_DEFAULT))
      {
        cameraProfile5 = [(HFCameraManager *)self cameraProfile];
        hf_prettyDescription4 = [cameraProfile5 hf_prettyDescription];
        _hasSnapshotRequesters = [(HFCameraManager *)self _hasSnapshotRequesters];
        cameraProfile6 = [(HFCameraManager *)self cameraProfile];
        accessory2 = [cameraProfile6 accessory];
        isReachable = [accessory2 isReachable];
        executionEnvironment = [(HFCameraManager *)self executionEnvironment];
        isActive = [executionEnvironment isActive];
        *buf = 138413058;
        v41 = hf_prettyDescription4;
        v42 = 1024;
        *v43 = _hasSnapshotRequesters;
        *&v43[4] = 1024;
        *&v43[6] = isReachable;
        LOWORD(v44) = 1024;
        *(&v44 + 2) = isActive;
        _os_log_impl(&dword_20D9BF000, _nextSnapshotDate, OS_LOG_TYPE_DEFAULT, "Not scheduling another snapshot for %@ (has requesters: %d, reachable: %d, execution active: %d", buf, 0x1Eu);
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __63__HFCameraManager__scheduleNextSnapshotEventWithPreviousError___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained _hasSnapshotRequesters] & 1) == 0)
  {
    v2 = HFLogForCategory(0x1BuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v13 = [WeakRetained cameraProfile];
      v14 = [v13 hf_prettyDescription];
      v17 = 138412290;
      v18 = v14;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "Taking a snapshot for unrequested %@", &v17, 0xCu);
    }
  }

  v3 = [WeakRetained cameraProfile];
  v4 = [v3 accessory];
  v5 = [v4 isReachable];

  if ((v5 & 1) == 0)
  {
    v6 = HFLogForCategory(0x1BuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = [WeakRetained cameraProfile];
      v16 = [v15 hf_prettyDescription];
      v17 = 138412290;
      v18 = v16;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Taking a snapshot for unreachable %@", &v17, 0xCu);
    }
  }

  v7 = HFLogForCategory(0x1BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained cameraProfile];
    v9 = [v8 hf_prettyDescription];
    v17 = 138412290;
    v18 = v9;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Taking snapshot for %@", &v17, 0xCu);
  }

  v10 = [WeakRetained cameraProfile];
  v11 = [v10 snapshotControl];
  [v11 takeSnapshot];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_cancelNextSnapshotEvent
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x1BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cameraProfile = [(HFCameraManager *)self cameraProfile];
    hf_prettyDescription = [cameraProfile hf_prettyDescription];
    v8 = 138412290;
    v9 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling next snapshot event for %@", &v8, 0xCu);
  }

  nextSnapshotEvent = [(HFCameraManager *)self nextSnapshotEvent];
  [nextSnapshotEvent cancel];

  [(HFCameraManager *)self setNextSnapshotEvent:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)cameraSnapshotControl:(id)control didTakeSnapshot:(id)snapshot error:(id)error
{
  errorCopy = error;
  controlCopy = control;
  cameraProfile = [(HFCameraManager *)self cameraProfile];
  snapshotControl = [cameraProfile snapshotControl];

  if (snapshotControl == controlCopy)
  {
    [(HFCameraManager *)self _scheduleNextSnapshotEventWithPreviousError:errorCopy];
  }
}

- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  cameraProfile = [(HFCameraManager *)self cameraProfile];
  snapshotControl = [cameraProfile snapshotControl];

  if (snapshotControl == snapshotCopy)
  {

    [(HFCameraManager *)self _scheduleNextSnapshotEventWithPreviousError:0];
  }
}

- (void)_beginContinuousStreaming
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cameraProfile = [(HFCameraManager *)self cameraProfile];
    hf_prettyDescription = [cameraProfile hf_prettyDescription];
    v7 = 138412290;
    v8 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Beginning continuous streaming for %@", &v7, 0xCu);
  }

  [(HFCameraManager *)self _startStreaming];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_endContinuousStreaming
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cameraProfile = [(HFCameraManager *)self cameraProfile];
    hf_prettyDescription = [cameraProfile hf_prettyDescription];
    v7 = 138412290;
    v8 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Ending continuous streaming for %@", &v7, 0xCu);
  }

  [(HFCameraManager *)self _stopStreaming];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_startStreaming
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HFCameraManager *)self _hasStreamRequesters])
  {
    [(HFCameraManager *)self setCachedStreamError:0];
    cameraProfile = [(HFCameraManager *)self cameraProfile];
    streamControl = [cameraProfile streamControl];
    streamState = [streamControl streamState];

    v6 = HFLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      cameraProfile2 = [(HFCameraManager *)self cameraProfile];
      hf_prettyDescription = [cameraProfile2 hf_prettyDescription];
      v9 = NSStringFromHMCameraStreamState(streamState);
      v13 = 138412546;
      v14 = hf_prettyDescription;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Starting stream for %@, current stream state: %@", &v13, 0x16u);
    }

    if ((streamState - 3) <= 1)
    {
      cameraProfile3 = [(HFCameraManager *)self cameraProfile];
      streamControl2 = [cameraProfile3 streamControl];
      [streamControl2 startStream];

      [(HFCameraManager *)self _dispatchStreamStateUpdate];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_stopStreaming
{
  v17 = *MEMORY[0x277D85DE8];
  cameraProfile = [(HFCameraManager *)self cameraProfile];
  streamControl = [cameraProfile streamControl];
  streamState = [streamControl streamState];

  v6 = HFLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    cameraProfile2 = [(HFCameraManager *)self cameraProfile];
    hf_prettyDescription = [cameraProfile2 hf_prettyDescription];
    v9 = NSStringFromHMCameraStreamState(streamState);
    v13 = 138412546;
    v14 = hf_prettyDescription;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Stopping stream for %@, current stream state: %@", &v13, 0x16u);
  }

  if ((streamState - 1) <= 1)
  {
    cameraProfile3 = [(HFCameraManager *)self cameraProfile];
    streamControl2 = [cameraProfile3 streamControl];
    [streamControl2 stopStream];

    [(HFCameraManager *)self _dispatchStreamStateUpdate];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchStreamStateUpdate
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__HFCameraManager__dispatchStreamStateUpdate__block_invoke;
  aBlock[3] = &unk_277DF4460;
  objc_copyWeak(&v6, &location);
  v2 = _Block_copy(aBlock);
  if (+[HFUtilities isInternalTest])
  {
    v2[2](v2);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HFCameraManager__dispatchStreamStateUpdate__block_invoke_3;
    block[3] = &unk_277DFF168;
    v4 = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __45__HFCameraManager__dispatchStreamStateUpdate__block_invoke(uint64_t a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__HFCameraManager__dispatchStreamStateUpdate__block_invoke_2;
  v4[3] = &unk_277DFF140;
  objc_copyWeak(&v5, (a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 dispatchCameraObserverMessage:v4 sender:WeakRetained];

  objc_destroyWeak(&v5);
}

void __45__HFCameraManager__dispatchStreamStateUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained cameraProfile];
    v5 = [v4 streamControl];
    [v6 cameraStreamControlDidUpdateStreamState:v5];
  }
}

- (void)cameraUserSettingsDidUpdate:(id)update
{
  cameraProfile = [(HFCameraManager *)self cameraProfile];
  hf_shouldDisableLiveStream = [cameraProfile hf_shouldDisableLiveStream];

  if ((hf_shouldDisableLiveStream & 1) == 0)
  {
    [(HFCameraManager *)self _scheduleNextSnapshotEventWithPreviousError:0];

    [(HFCameraManager *)self _startStreaming];
  }
}

- (void)cameraStreamControlDidStartStream:(id)stream
{
  streamCopy = stream;
  cameraProfile = [(HFCameraManager *)self cameraProfile];
  streamControl = [cameraProfile streamControl];

  if (streamControl == streamCopy)
  {
    [(HFCameraManager *)self setCachedStreamError:0];

    [(HFCameraManager *)self _dispatchStreamStateUpdate];
  }
}

- (void)cameraStreamControl:(id)control didStopStreamWithError:(id)error
{
  errorCopy = error;
  controlCopy = control;
  v8 = errorCopy;
  if (+[HFExecutionEnvironment isHomeNotification])
  {
    v8 = errorCopy;
    if ([errorCopy code] == 23)
    {

      v8 = 0;
    }
  }

  cameraProfile = [(HFCameraManager *)self cameraProfile];
  streamControl = [cameraProfile streamControl];

  if (streamControl == controlCopy)
  {
    if (!v8)
    {
      v11 = HFLogForCategory(0x1CuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFCameraManager restarting streaming after didStopStreamWithError nil", v12, 2u);
      }

      [(HFCameraManager *)self _startStreaming];
    }

    [(HFCameraManager *)self setCachedStreamError:v8];
    [(HFCameraManager *)self _dispatchStreamStateUpdate];
  }
}

- (void)_updateEventRegistration
{
  if ([(HFCameraManager *)self _hasSnapshotRequesters]|| [(HFCameraManager *)self _hasStreamRequesters])
  {
    if ([(HFCameraManager *)self isRegisteredForEvents])
    {
      return;
    }

    v3 = +[HFHomeKitDispatcher sharedDispatcher];
    [v3 addCameraObserver:self];

    v4 = +[HFHomeKitDispatcher sharedDispatcher];
    [v4 addAccessoryObserver:self];

    executionEnvironment = [(HFCameraManager *)self executionEnvironment];
    [executionEnvironment addObserver:self];
    v6 = 1;
  }

  else
  {
    if (![(HFCameraManager *)self isRegisteredForEvents])
    {
      return;
    }

    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    [v7 removeCameraObserver:self];

    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    [v8 removeAccessoryObserver:self];

    executionEnvironment = [(HFCameraManager *)self executionEnvironment];
    [executionEnvironment removeObserver:self];
    v6 = 0;
  }

  [(HFCameraManager *)self setIsRegisteredForEvents:v6];
}

- (void)accessoryDidUpdateReachability:(id)reachability
{
  reachabilityCopy = reachability;
  cameraProfile = [(HFCameraManager *)self cameraProfile];
  accessory = [cameraProfile accessory];

  v6 = reachabilityCopy;
  if (accessory == reachabilityCopy)
  {
    if ([reachabilityCopy isReachable])
    {
      [(HFCameraManager *)self _scheduleNextSnapshotEventWithPreviousError:0];
      [(HFCameraManager *)self _startStreaming];
    }

    else
    {
      [(HFCameraManager *)self _cancelNextSnapshotEvent];
    }

    v6 = reachabilityCopy;
  }
}

- (void)executionEnvironmentDidBecomeActive:(id)active
{
  [(HFCameraManager *)self _scheduleNextSnapshotEventWithPreviousError:0];

  [(HFCameraManager *)self _startStreaming];
}

- (void)setCachedStreamError:(id)error
{
  errorCopy = error;
  if (self->_cachedStreamError != errorCopy)
  {
    objc_storeStrong(&self->_cachedStreamError, error);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__HFCameraManager_setCachedStreamError___block_invoke;
    block[3] = &unk_277DF3D38;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __40__HFCameraManager_setCachedStreamError___block_invoke(uint64_t a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__HFCameraManager_setCachedStreamError___block_invoke_2;
  v3[3] = &unk_277DFF190;
  v3[4] = *(a1 + 32);
  [v2 dispatchCameraObserverMessage:v3 sender:?];
}

void __40__HFCameraManager_setCachedStreamError___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) cameraProfile];
    v4 = [v3 streamControl];
    [v5 cameraStreamControlDidUpdateManagerState:v4];
  }
}

- (BOOL)_hasSnapshotRequesters
{
  snapshotRequesters = [(HFCameraManager *)self snapshotRequesters];
  v3 = [snapshotRequesters count] != 0;

  return v3;
}

- (BOOL)_hasStreamRequesters
{
  streamRequesters = [(HFCameraManager *)self streamRequesters];
  v3 = [streamRequesters count] != 0;

  return v3;
}

- (HMCameraProfile)cameraProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraProfile);

  return WeakRetained;
}

@end