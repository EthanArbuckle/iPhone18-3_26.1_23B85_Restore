@interface CAMPeopleProximityController
- (BOOL)peopleProximityScanner:(id)scanner shouldDiscoverIdentity:(id)identity;
- (CAMPeopleProximityController)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (CAMPeopleProximityDelegate)delegate;
- (Class)proximityScannerClass;
- (void)_queue_handleFinishedWaitingForScanner:(id)scanner;
- (void)_queue_handleScannerDidStop;
- (void)_queue_startDiscoveryForIdentities:(id)identities;
- (void)_queue_stopDiscovery;
- (void)peopleProximityScanner:(id)scanner didDiscoverIdentity:(id)identity distance:(unint64_t)distance rssi:(int64_t)rssi;
- (void)peopleProximityScanner:(id)scanner didLoseIdentity:(id)identity;
- (void)peopleProximityScannerDidStopDiscovery:(id)discovery;
- (void)setQueue_discoveryState:(unint64_t)state;
- (void)startDiscoveryForIdentities:(id)identities;
- (void)stopDiscovery;
@end

@implementation CAMPeopleProximityController

- (CAMPeopleProximityController)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = CAMPeopleProximityController;
  v8 = [(CAMPeopleProximityController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_delegateQueue, queue);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);

    v12 = dispatch_queue_create("com.apple.camera.people-proximity.acquisition-queue", v11);
    queue = v9->_queue;
    v9->_queue = v12;
  }

  return v9;
}

- (void)startDiscoveryForIdentities:(id)identities
{
  identitiesCopy = identities;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CAMPeopleProximityController_startDiscoveryForIdentities___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = identitiesCopy;
  v6 = identitiesCopy;
  dispatch_async(queue, v7);
}

- (void)stopDiscovery
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CAMPeopleProximityController_stopDiscovery__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (Class)proximityScannerClass
{
  proximityScannerClass = self->_proximityScannerClass;
  if (proximityScannerClass)
  {
  }

  else
  {
    v5 = +[CAMCaptureCapabilities capabilities];
    [v5 peopleProximityUsesDeviceDiscovery];

    proximityScannerClass = objc_opt_class();
  }

  return proximityScannerClass;
}

- (void)_queue_startDiscoveryForIdentities:(id)identities
{
  v44 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[CAMCaptureCapabilities capabilities];
  if (([v5 peopleProximityDetectionSupported] & 1) == 0)
  {
    queue_proximityScanner4 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(queue_proximityScanner4, OS_LOG_TYPE_ERROR))
    {
      [CAMPeopleProximityController _queue_startDiscoveryForIdentities:queue_proximityScanner4];
    }

    goto LABEL_28;
  }

  queue_proximityScanner = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (queue_proximityScanner)
  {
    queue_identities = [(CAMPeopleProximityController *)self queue_identities];
    v8 = queue_identities;
    if (queue_identities == identitiesCopy)
    {

      goto LABEL_29;
    }

    queue_identities2 = [(CAMPeopleProximityController *)self queue_identities];
    v10 = [queue_identities2 isEqualToSet:identitiesCopy];

    if (v10)
    {
      goto LABEL_29;
    }

    v11 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] filter contactIDs changed, restarting.", &v32, 2u);
    }

    [(CAMPeopleProximityController *)self stopDiscovery];
  }

  queue_discoveryState = [(CAMPeopleProximityController *)self queue_discoveryState];
  if (queue_discoveryState)
  {
    if (queue_discoveryState != 2)
    {
      goto LABEL_29;
    }

    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  [(CAMPeopleProximityController *)self setQueue_discoveryState:v13];
  if ([identitiesCopy count])
  {
    [(CAMPeopleProximityController *)self setQueue_identities:identitiesCopy];
    v15 = objc_alloc([(CAMPeopleProximityController *)self proximityScannerClass]);
    queue = [(CAMPeopleProximityController *)self queue];
    v17 = [v15 initWithQueue:queue delegate:self];
    [(CAMPeopleProximityController *)self setQueue_proximityScanner:v17];

    queue_discoveryState2 = [(CAMPeopleProximityController *)self queue_discoveryState];
    if (queue_discoveryState2 == 1)
    {
      [(CAMPeopleProximityController *)self setQueue_hasDiscoveredFirstPerson:0];
      [(CAMPeopleProximityController *)self setQueue_hasDiscoveredFirstPersonNearby:0];
      queue_proximityScanner2 = [(CAMPeopleProximityController *)self queue_proximityScanner];
      CAMSignpostsDiscoverPersonBegin();

      queue_proximityScanner3 = [(CAMPeopleProximityController *)self queue_proximityScanner];
      CAMSignpostsDiscoverPersonNearbyBegin();

      peopleProximityInitialScanRate = [v5 peopleProximityInitialScanRate];
      [v5 peopleProximityInitialScanDuration];
    }

    else
    {
      peopleProximityInitialScanRate = [v5 peopleProximitySubsequentScanRate];
      [v5 peopleProximitySubsequentScanDuration];
    }

    v24 = v22;
    v25 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      if (queue_discoveryState2 == 1)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v27 = [identitiesCopy count];
      allObjects = [identitiesCopy allObjects];
      v29 = [allObjects componentsJoinedByString:{@", "}];
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = 138544643;
      v33 = v26;
      v34 = 2048;
      v35 = peopleProximityInitialScanRate;
      v36 = 2048;
      v37 = v24;
      v38 = 2048;
      v39 = v27;
      v40 = 2113;
      v41 = v29;
      v42 = 2114;
      v43 = v31;
      _os_log_impl(&dword_1A3640000, v25, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] People discovery start initialScan:%{public}@ scanRate:%lu timeout:%.0fs, scanning for %ld identities:[%{private}@] with %{public}@", &v32, 0x3Eu);
    }

    queue_proximityScanner4 = [(CAMPeopleProximityController *)self queue_proximityScanner];
    [queue_proximityScanner4 startDiscoveryWithScanRate:peopleProximityInitialScanRate timeout:v24];
LABEL_28:

    goto LABEL_29;
  }

  v23 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] No identities to scan for, cannot start device discovery", &v32, 2u);
  }

  [(CAMPeopleProximityController *)self setQueue_discoveryState:0];
LABEL_29:
}

- (void)_queue_stopDiscovery
{
  dispatch_assert_queue_V2(self->_queue);
  [(CAMPeopleProximityController *)self setQueue_discoveryState:0];
  queue_proximityScanner = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (queue_proximityScanner)
  {
    v4 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] Person discovery stop", v7, 2u);
    }

    queue_proximityScanner2 = [(CAMPeopleProximityController *)self queue_proximityScanner];
    if (queue_proximityScanner2)
    {
      [(CAMPeopleProximityController *)self setQueue_proximityScanner:0];
      queue_proximityScanner3 = [(CAMPeopleProximityController *)self queue_proximityScanner];
      [queue_proximityScanner3 stopDiscovery];
    }
  }
}

- (void)_queue_handleScannerDidStop
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[CAMCaptureCapabilities capabilities];
  queue_discoveryState = [(CAMPeopleProximityController *)self queue_discoveryState];
  if (queue_discoveryState == 1)
  {
LABEL_4:
    [(CAMPeopleProximityController *)self setQueue_discoveryState:2];
    [v3 peopleProximityScanWaitInterval];
    v6 = v5;
    queue_proximityScanner = [(CAMPeopleProximityController *)self queue_proximityScanner];
    objc_initWeak(&location, self);
    v8 = dispatch_time(0, (v6 * 1000000000.0));
    queue = [(CAMPeopleProximityController *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__CAMPeopleProximityController__queue_handleScannerDidStop__block_invoke;
    block[3] = &unk_1E76F7DC0;
    objc_copyWeak(&v13, &location);
    v12 = queue_proximityScanner;
    v10 = queue_proximityScanner;
    dispatch_after(v8, queue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    goto LABEL_6;
  }

  if (queue_discoveryState == 3)
  {
    if (([v3 peopleProximityScanIndefinitely] & 1) == 0)
    {
      [(CAMPeopleProximityController *)self setQueue_discoveryState:0];
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:
}

void __59__CAMPeopleProximityController__queue_handleScannerDidStop__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_handleFinishedWaitingForScanner:*(a1 + 32)];
}

- (void)_queue_handleFinishedWaitingForScanner:(id)scanner
{
  v10 = *MEMORY[0x1E69E9840];
  scannerCopy = scanner;
  dispatch_assert_queue_V2(self->_queue);
  queue_proximityScanner = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (queue_proximityScanner == scannerCopy && [(CAMPeopleProximityController *)self queue_discoveryState]== 2)
  {
    v6 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = scannerCopy;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] Finished waiting for scanner, restarting:%{public}@", &v8, 0xCu);
    }

    [(CAMPeopleProximityController *)self setQueue_proximityScanner:0];
    queue_identities = [(CAMPeopleProximityController *)self queue_identities];
    [(CAMPeopleProximityController *)self _queue_startDiscoveryForIdentities:queue_identities];
  }
}

- (void)setQueue_discoveryState:(unint64_t)state
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_queue_discoveryState != state)
  {
    self->_queue_discoveryState = state;
    v4 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (state >= 4)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
        v5 = [v6 description];
      }

      else
      {
        v5 = off_1E76F7DE0[state];
      }

      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] setDiscoveryState: %{public}@", &v7, 0xCu);
    }
  }
}

- (BOOL)peopleProximityScanner:(id)scanner shouldDiscoverIdentity:(id)identity
{
  v25 = *MEMORY[0x1E69E9840];
  scannerCopy = scanner;
  identityCopy = identity;
  dispatch_assert_queue_V2(self->_queue);
  queue_proximityScanner = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (queue_proximityScanner != scannerCopy)
  {
LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  queue_identities = [(CAMPeopleProximityController *)self queue_identities];
  v10 = [queue_identities countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(queue_identities);
        }

        if (CAMLibrarySelectionIdentityMatch(*(*(&v20 + 1) + 8 * i), identityCopy))
        {
          v14 = 1;
          goto LABEL_12;
        }
      }

      v11 = [queue_identities countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  v15 = +[CAMCaptureCapabilities capabilities];
  librarySelectionMockAutomationModeEnabled = [v15 librarySelectionMockAutomationModeEnabled];

  v17 = 1;
  if ((v14 & 1) == 0 && (librarySelectionMockAutomationModeEnabled & 1) == 0)
  {
    v18 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [CAMPeopleProximityController peopleProximityScanner:identityCopy shouldDiscoverIdentity:v18];
    }

    goto LABEL_17;
  }

LABEL_18:

  return v17;
}

- (void)peopleProximityScanner:(id)scanner didDiscoverIdentity:(id)identity distance:(unint64_t)distance rssi:(int64_t)rssi
{
  v27 = *MEMORY[0x1E69E9840];
  scannerCopy = scanner;
  identityCopy = identity;
  dispatch_assert_queue_V2(self->_queue);
  queue_proximityScanner = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (queue_proximityScanner != scannerCopy)
  {
    goto LABEL_22;
  }

  v13 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (distance > 19)
    {
      if (distance == 20)
      {
        v14 = @"Near";
        goto LABEL_11;
      }

      if (distance == 30)
      {
        v14 = @"Far";
        goto LABEL_11;
      }
    }

    else if (distance == 10)
    {
      v14 = @"Immediate";
LABEL_11:
      *buf = 138478339;
      v22 = identityCopy;
      v23 = 2114;
      v24 = v14;
      v25 = 2048;
      rssiCopy = rssi;
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] Found %{private}@, distance: %{public}@, rssi:%ld", buf, 0x20u);
      goto LABEL_12;
    }

    v14 = @"Unknown";
    goto LABEL_11;
  }

LABEL_12:

  if (![(CAMPeopleProximityController *)self queue_hasDiscoveredFirstPerson])
  {
    CAMSignpostsDiscoverPersonEnd(scannerCopy, distance, rssi);
    [(CAMPeopleProximityController *)self setQueue_hasDiscoveredFirstPerson:1];
  }

  if (distance == 20 || distance == 10)
  {
    if (![(CAMPeopleProximityController *)self queue_hasDiscoveredFirstPersonNearby])
    {
      CAMSignpostsDiscoverPersonNearbyEnd(scannerCopy, distance, rssi);
      [(CAMPeopleProximityController *)self setQueue_hasDiscoveredFirstPersonNearby:1];
    }
  }

  else
  {
    v15 = +[CAMCaptureCapabilities capabilities];
    peopleProximityIgnoreNearbyRequirements = [v15 peopleProximityIgnoreNearbyRequirements];

    if (!peopleProximityIgnoreNearbyRequirements)
    {
      goto LABEL_22;
    }
  }

  v17 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v22 = identityCopy;
    _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] Found identity: %{private}@", buf, 0xCu);
  }

  delegateQueue = self->_delegateQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__CAMPeopleProximityController_peopleProximityScanner_didDiscoverIdentity_distance_rssi___block_invoke;
  v19[3] = &unk_1E76F7960;
  v19[4] = self;
  v20 = identityCopy;
  dispatch_sync(delegateQueue, v19);

LABEL_22:
}

void __89__CAMPeopleProximityController_peopleProximityScanner_didDiscoverIdentity_distance_rssi___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didDiscoverIdentity:*(a1 + 40)];
}

- (void)peopleProximityScanner:(id)scanner didLoseIdentity:(id)identity
{
  v16 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  queue = self->_queue;
  scannerCopy = scanner;
  dispatch_assert_queue_V2(queue);
  queue_proximityScanner = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (queue_proximityScanner == scannerCopy)
  {
    v10 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v15 = identityCopy;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] Lost: %{private}@", buf, 0xCu);
    }

    delegateQueue = self->_delegateQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__CAMPeopleProximityController_peopleProximityScanner_didLoseIdentity___block_invoke;
    v12[3] = &unk_1E76F7960;
    v12[4] = self;
    v13 = identityCopy;
    dispatch_sync(delegateQueue, v12);
  }
}

void __71__CAMPeopleProximityController_peopleProximityScanner_didLoseIdentity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didLoseIdentity:*(a1 + 40)];
}

- (void)peopleProximityScannerDidStopDiscovery:(id)discovery
{
  queue = self->_queue;
  discoveryCopy = discovery;
  dispatch_assert_queue_V2(queue);
  queue_proximityScanner = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (queue_proximityScanner == discoveryCopy)
  {

    [(CAMPeopleProximityController *)self _queue_handleScannerDidStop];
  }
}

- (CAMPeopleProximityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)peopleProximityScanner:(uint64_t)a1 shouldDiscoverIdentity:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_1A3640000, a2, OS_LOG_TYPE_DEBUG, "[CAMPeopleProximityController] Ignoring identity %{private}@, not part of allow-list.", &v2, 0xCu);
}

@end