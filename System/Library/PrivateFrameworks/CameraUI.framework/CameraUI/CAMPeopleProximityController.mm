@interface CAMPeopleProximityController
- (BOOL)peopleProximityScanner:(id)a3 shouldDiscoverIdentity:(id)a4;
- (CAMPeopleProximityController)initWithDelegate:(id)a3 delegateQueue:(id)a4;
- (CAMPeopleProximityDelegate)delegate;
- (Class)proximityScannerClass;
- (void)_queue_handleFinishedWaitingForScanner:(id)a3;
- (void)_queue_handleScannerDidStop;
- (void)_queue_startDiscoveryForIdentities:(id)a3;
- (void)_queue_stopDiscovery;
- (void)peopleProximityScanner:(id)a3 didDiscoverIdentity:(id)a4 distance:(unint64_t)a5 rssi:(int64_t)a6;
- (void)peopleProximityScanner:(id)a3 didLoseIdentity:(id)a4;
- (void)peopleProximityScannerDidStopDiscovery:(id)a3;
- (void)setQueue_discoveryState:(unint64_t)a3;
- (void)startDiscoveryForIdentities:(id)a3;
- (void)stopDiscovery;
@end

@implementation CAMPeopleProximityController

- (CAMPeopleProximityController)initWithDelegate:(id)a3 delegateQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CAMPeopleProximityController;
  v8 = [(CAMPeopleProximityController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_delegateQueue, a4);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);

    v12 = dispatch_queue_create("com.apple.camera.people-proximity.acquisition-queue", v11);
    queue = v9->_queue;
    v9->_queue = v12;
  }

  return v9;
}

- (void)startDiscoveryForIdentities:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CAMPeopleProximityController_startDiscoveryForIdentities___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)_queue_startDiscoveryForIdentities:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[CAMCaptureCapabilities capabilities];
  if (([v5 peopleProximityDetectionSupported] & 1) == 0)
  {
    v14 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CAMPeopleProximityController _queue_startDiscoveryForIdentities:v14];
    }

    goto LABEL_28;
  }

  v6 = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (v6)
  {
    v7 = [(CAMPeopleProximityController *)self queue_identities];
    v8 = v7;
    if (v7 == v4)
    {

      goto LABEL_29;
    }

    v9 = [(CAMPeopleProximityController *)self queue_identities];
    v10 = [v9 isEqualToSet:v4];

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

  v12 = [(CAMPeopleProximityController *)self queue_discoveryState];
  if (v12)
  {
    if (v12 != 2)
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
  if ([v4 count])
  {
    [(CAMPeopleProximityController *)self setQueue_identities:v4];
    v15 = objc_alloc([(CAMPeopleProximityController *)self proximityScannerClass]);
    v16 = [(CAMPeopleProximityController *)self queue];
    v17 = [v15 initWithQueue:v16 delegate:self];
    [(CAMPeopleProximityController *)self setQueue_proximityScanner:v17];

    v18 = [(CAMPeopleProximityController *)self queue_discoveryState];
    if (v18 == 1)
    {
      [(CAMPeopleProximityController *)self setQueue_hasDiscoveredFirstPerson:0];
      [(CAMPeopleProximityController *)self setQueue_hasDiscoveredFirstPersonNearby:0];
      v19 = [(CAMPeopleProximityController *)self queue_proximityScanner];
      CAMSignpostsDiscoverPersonBegin();

      v20 = [(CAMPeopleProximityController *)self queue_proximityScanner];
      CAMSignpostsDiscoverPersonNearbyBegin();

      v21 = [v5 peopleProximityInitialScanRate];
      [v5 peopleProximityInitialScanDuration];
    }

    else
    {
      v21 = [v5 peopleProximitySubsequentScanRate];
      [v5 peopleProximitySubsequentScanDuration];
    }

    v24 = v22;
    v25 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      if (v18 == 1)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v27 = [v4 count];
      v28 = [v4 allObjects];
      v29 = [v28 componentsJoinedByString:{@", "}];
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = 138544643;
      v33 = v26;
      v34 = 2048;
      v35 = v21;
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

    v14 = [(CAMPeopleProximityController *)self queue_proximityScanner];
    [v14 startDiscoveryWithScanRate:v21 timeout:v24];
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
  v3 = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (v3)
  {
    v4 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] Person discovery stop", v7, 2u);
    }

    v5 = [(CAMPeopleProximityController *)self queue_proximityScanner];
    if (v5)
    {
      [(CAMPeopleProximityController *)self setQueue_proximityScanner:0];
      v6 = [(CAMPeopleProximityController *)self queue_proximityScanner];
      [v6 stopDiscovery];
    }
  }
}

- (void)_queue_handleScannerDidStop
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [(CAMPeopleProximityController *)self queue_discoveryState];
  if (v4 == 1)
  {
LABEL_4:
    [(CAMPeopleProximityController *)self setQueue_discoveryState:2];
    [v3 peopleProximityScanWaitInterval];
    v6 = v5;
    v7 = [(CAMPeopleProximityController *)self queue_proximityScanner];
    objc_initWeak(&location, self);
    v8 = dispatch_time(0, (v6 * 1000000000.0));
    v9 = [(CAMPeopleProximityController *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__CAMPeopleProximityController__queue_handleScannerDidStop__block_invoke;
    block[3] = &unk_1E76F7DC0;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    v10 = v7;
    dispatch_after(v8, v9, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    goto LABEL_6;
  }

  if (v4 == 3)
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

- (void)_queue_handleFinishedWaitingForScanner:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (v5 == v4 && [(CAMPeopleProximityController *)self queue_discoveryState]== 2)
  {
    v6 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] Finished waiting for scanner, restarting:%{public}@", &v8, 0xCu);
    }

    [(CAMPeopleProximityController *)self setQueue_proximityScanner:0];
    v7 = [(CAMPeopleProximityController *)self queue_identities];
    [(CAMPeopleProximityController *)self _queue_startDiscoveryForIdentities:v7];
  }
}

- (void)setQueue_discoveryState:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_queue_discoveryState != a3)
  {
    self->_queue_discoveryState = a3;
    v4 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a3 >= 4)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        v5 = [v6 description];
      }

      else
      {
        v5 = off_1E76F7DE0[a3];
      }

      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] setDiscoveryState: %{public}@", &v7, 0xCu);
    }
  }
}

- (BOOL)peopleProximityScanner:(id)a3 shouldDiscoverIdentity:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (v8 != v6)
  {
LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(CAMPeopleProximityController *)self queue_identities];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v9);
        }

        if (CAMLibrarySelectionIdentityMatch(*(*(&v20 + 1) + 8 * i), v7))
        {
          v14 = 1;
          goto LABEL_12;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  v16 = [v15 librarySelectionMockAutomationModeEnabled];

  v17 = 1;
  if ((v14 & 1) == 0 && (v16 & 1) == 0)
  {
    v18 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [CAMPeopleProximityController peopleProximityScanner:v7 shouldDiscoverIdentity:v18];
    }

    goto LABEL_17;
  }

LABEL_18:

  return v17;
}

- (void)peopleProximityScanner:(id)a3 didDiscoverIdentity:(id)a4 distance:(unint64_t)a5 rssi:(int64_t)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v12 = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (v12 != v10)
  {
    goto LABEL_22;
  }

  v13 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (a5 > 19)
    {
      if (a5 == 20)
      {
        v14 = @"Near";
        goto LABEL_11;
      }

      if (a5 == 30)
      {
        v14 = @"Far";
        goto LABEL_11;
      }
    }

    else if (a5 == 10)
    {
      v14 = @"Immediate";
LABEL_11:
      *buf = 138478339;
      v22 = v11;
      v23 = 2114;
      v24 = v14;
      v25 = 2048;
      v26 = a6;
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] Found %{private}@, distance: %{public}@, rssi:%ld", buf, 0x20u);
      goto LABEL_12;
    }

    v14 = @"Unknown";
    goto LABEL_11;
  }

LABEL_12:

  if (![(CAMPeopleProximityController *)self queue_hasDiscoveredFirstPerson])
  {
    CAMSignpostsDiscoverPersonEnd(v10, a5, a6);
    [(CAMPeopleProximityController *)self setQueue_hasDiscoveredFirstPerson:1];
  }

  if (a5 == 20 || a5 == 10)
  {
    if (![(CAMPeopleProximityController *)self queue_hasDiscoveredFirstPersonNearby])
    {
      CAMSignpostsDiscoverPersonNearbyEnd(v10, a5, a6);
      [(CAMPeopleProximityController *)self setQueue_hasDiscoveredFirstPersonNearby:1];
    }
  }

  else
  {
    v15 = +[CAMCaptureCapabilities capabilities];
    v16 = [v15 peopleProximityIgnoreNearbyRequirements];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  v17 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v22 = v11;
    _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] Found identity: %{private}@", buf, 0xCu);
  }

  delegateQueue = self->_delegateQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__CAMPeopleProximityController_peopleProximityScanner_didDiscoverIdentity_distance_rssi___block_invoke;
  v19[3] = &unk_1E76F7960;
  v19[4] = self;
  v20 = v11;
  dispatch_sync(delegateQueue, v19);

LABEL_22:
}

void __89__CAMPeopleProximityController_peopleProximityScanner_didDiscoverIdentity_distance_rssi___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didDiscoverIdentity:*(a1 + 40)];
}

- (void)peopleProximityScanner:(id)a3 didLoseIdentity:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (v9 == v8)
  {
    v10 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v15 = v6;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityController] Lost: %{private}@", buf, 0xCu);
    }

    delegateQueue = self->_delegateQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__CAMPeopleProximityController_peopleProximityScanner_didLoseIdentity___block_invoke;
    v12[3] = &unk_1E76F7960;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(delegateQueue, v12);
  }
}

void __71__CAMPeopleProximityController_peopleProximityScanner_didLoseIdentity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didLoseIdentity:*(a1 + 40)];
}

- (void)peopleProximityScannerDidStopDiscovery:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(CAMPeopleProximityController *)self queue_proximityScanner];

  if (v6 == v5)
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