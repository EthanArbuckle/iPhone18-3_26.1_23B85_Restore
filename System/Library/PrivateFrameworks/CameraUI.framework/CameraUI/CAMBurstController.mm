@interface CAMBurstController
- (CAMBurstController)init;
- (CAMBurstController)initWithProtectionController:(id)controller powerController:(id)powerController remoteShutterController:(id)shutterController;
- (CAMBurstDelegate)burstDelegate;
- (CAMPersistenceController)_persistenceController;
- (NSString)currentBurstIdentifier;
- (id)startBurstCaptureWithPersistenceUUID:(id)d;
- (unint64_t)currentBurstCount;
- (unint64_t)estimatedCountForIdentifier:(id)identifier;
- (unint64_t)inflightCountForIdentifier:(id)identifier;
- (void)_mutexQueueProcessCompleteBurstSessionWithIdentifier:(id)identifier device:(int64_t)device;
- (void)cancelBurstCapture;
- (void)finishBurstCaptureForDevice:(int64_t)device;
- (void)processCapturedRequest:(id)request withResult:(id)result;
- (void)processEnqueuedRequest:(id)request;
- (void)processFaceResults:(id)results;
- (void)processPersistedRequest:(id)request withResult:(id)result;
- (void)setPersistenceController:(id)controller;
@end

@implementation CAMBurstController

- (CAMBurstController)initWithProtectionController:(id)controller powerController:(id)powerController remoteShutterController:(id)shutterController
{
  controllerCopy = controller;
  powerControllerCopy = powerController;
  shutterControllerCopy = shutterController;
  v26.receiver = self;
  v26.super_class = CAMBurstController;
  v12 = [(CAMBurstController *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->__protectionController, controller);
    objc_storeStrong(&v13->__powerController, powerController);
    objc_storeStrong(&v13->__remoteShutterController, shutterController);
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_create("com.apple.camera.burst-controller.analysis-queue", v14);
    analysisQueue = v13->__analysisQueue;
    v13->__analysisQueue = v15;

    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v18 = dispatch_queue_create("com.apple.camera.burst-controller.mutex-queue", v17);
    mutexQueue = v13->__mutexQueue;
    v13->__mutexQueue = v18;

    v20 = v13->__mutexQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__CAMBurstController_initWithProtectionController_powerController_remoteShutterController___block_invoke;
    block[3] = &unk_1E76F77B0;
    v21 = v13;
    v25 = v21;
    dispatch_sync(v20, block);
    v22 = v21;
  }

  return v13;
}

void __91__CAMBurstController_initWithProtectionController_powerController_remoteShutterController___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = v11;

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  *(v15 + 56) = v14;

  v17 = *(a1 + 32);
  v18 = *(v17 + 64);
  *(v17 + 64) = 0;
}

- (CAMBurstController)init
{
  [(CAMBurstController *)self doesNotRecognizeSelector:a2];

  return [(CAMBurstController *)self initWithProtectionController:0 powerController:0 remoteShutterController:0];
}

- (void)setPersistenceController:(id)controller
{
  objc_initWeak(&location, controller);
  _mutexQueue = [(CAMBurstController *)self _mutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CAMBurstController_setPersistenceController___block_invoke;
  block[3] = &unk_1E76FC960;
  block[4] = self;
  objc_copyWeak(&v6, &location);
  dispatch_sync(_mutexQueue, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__CAMBurstController_setPersistenceController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_storeWeak((*(a1 + 32) + 80), WeakRetained);
}

- (NSString)currentBurstIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  _mutexQueue = [(CAMBurstController *)self _mutexQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CAMBurstController_currentBurstIdentifier__block_invoke;
  v6[3] = &unk_1E76FAFF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(_mutexQueue, v6);

  identifier = [v8[5] identifier];
  _Block_object_dispose(&v7, 8);

  return identifier;
}

uint64_t __44__CAMBurstController_currentBurstIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeSession];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (unint64_t)currentBurstCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  _mutexQueue = [(CAMBurstController *)self _mutexQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CAMBurstController_currentBurstCount__block_invoke;
  v6[3] = &unk_1E76FAFF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(_mutexQueue, v6);

  v4 = [v8[5] count];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __39__CAMBurstController_currentBurstCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeSession];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)startBurstCaptureWithPersistenceUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  _mutexQueue = [(CAMBurstController *)self _mutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CAMBurstController_startBurstCaptureWithPersistenceUUID___block_invoke;
  block[3] = &unk_1E76FB778;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(_mutexQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __59__CAMBurstController_startBurstCaptureWithPersistenceUUID___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) _activeSession];
  v2 = objc_alloc_init(CAMBurstSession);
  [*(a1 + 32) _setActiveSession:v2];
  v3 = [*(a1 + 32) _sessionsByIdentifier];
  v4 = [(CAMBurstSession *)v2 identifier];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [v3 setObject:v2 forKey:*(*(*(a1 + 48) + 8) + 40)];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) _analyticsEventsIdByIdentifier];
  [v8 setObject:v7 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];

  v9 = [*(a1 + 32) _protectionController];
  [v9 startProtectingBurstProcessingForIdentifier:*(*(*(a1 + 48) + 8) + 40)];
  [v9 startProtectingNebulaDaemonWritesForIdentifier:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)_mutexQueueProcessCompleteBurstSessionWithIdentifier:(id)identifier device:(int64_t)device
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    _protectionController = [(CAMBurstController *)self _protectionController];
    _persistenceController = [(CAMBurstController *)self _persistenceController];
    _powerController = [(CAMBurstController *)self _powerController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__CAMBurstController__mutexQueueProcessCompleteBurstSessionWithIdentifier_device___block_invoke;
    v13[3] = &unk_1E76FCA00;
    v13[4] = self;
    v14 = identifierCopy;
    v15 = _powerController;
    v17 = _protectionController;
    deviceCopy = device;
    v16 = _persistenceController;
    v10 = _protectionController;
    v11 = _persistenceController;
    v12 = _powerController;
    [v11 performDeferredRemotePersistenceWithCompletionHandler:v13];
  }
}

void __82__CAMBurstController__mutexQueueProcessCompleteBurstSessionWithIdentifier_device___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __82__CAMBurstController__mutexQueueProcessCompleteBurstSessionWithIdentifier_device___block_invoke_cold_1(v3, v4);
    }
  }

  v5 = [a1[4] _sessionsByIdentifier];
  v6 = [v5 objectForKey:a1[5]];
  [v5 removeObjectForKey:a1[5]];
  v7 = [v6 identifier];
  v8 = [a1[4] _faceResultsByIdentifier];
  v9 = [v6 identifier];
  [v8 removeObjectForKey:v9];

  [a1[6] addAssertionForIndentifier:objc_msgSend(a1[6] withReason:{"generateAssertionIdentifier"), 16}];
  v10 = [a1[4] _analysisQueue];
  v13 = v6;
  v14 = a1[5];
  v15 = a1[7];
  v16 = a1[8];
  v17 = a1[6];
  v11 = v7;
  v12 = v6;
  pl_dispatch_async();
}

void __82__CAMBurstController__mutexQueueProcessCompleteBurstSessionWithIdentifier_device___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) performBurstAnalysisForDevice:*(a1 + 88)];
  v3 = [*(a1 + 40) _analyticsEventsIdByIdentifier];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

  v5 = [*(a1 + 40) _analyticsEventsIdByIdentifier];
  [v5 setObject:0 forKeyedSubscript:*(a1 + 48)];

  v6 = [*(a1 + 40) burstDelegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __82__CAMBurstController__mutexQueueProcessCompleteBurstSessionWithIdentifier_device___block_invoke_2;
    v22 = &unk_1E76F7938;
    v23 = v6;
    v24 = v2;
    v25 = v4;
    pl_dispatch_async();
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__CAMBurstController__mutexQueueProcessCompleteBurstSessionWithIdentifier_device___block_invoke_3;
  v12[3] = &unk_1E76FC9B0;
  v13 = *(a1 + 72);
  v14 = *(a1 + 48);
  v9 = *(a1 + 80);
  v18 = *(a1 + 96);
  v10 = *(a1 + 40);
  v15 = v9;
  v16 = v10;
  v17 = v2;
  v11 = v2;
  [v7 persistBurstWithIdentifier:v8 result:v11 completionHandler:v12];
}

void __82__CAMBurstController__mutexQueueProcessCompleteBurstSessionWithIdentifier_device___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allAssetIdentifiers];
  [v2 determinedBurstLength:objc_msgSend(v3 forPersistenceUUID:{"count"), *(a1 + 48)}];
}

void __82__CAMBurstController__mutexQueueProcessCompleteBurstSessionWithIdentifier_device___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) stopProtectingBurstProcessingForIdentifier:*(a1 + 40)];
  [*(a1 + 32) stopProtectingNebulaDaemonWritesForIdentifier:*(a1 + 40)];
  [*(a1 + 48) removeAssertionForIdentifier:*(a1 + 72) withReason:16];
  v4 = [*(a1 + 56) _remoteShutterController];
  v5 = v4;
  if (!a2 && *(a1 + 64) && [v4 isConnected])
  {
    v6 = *(a1 + 64);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __82__CAMBurstController__mutexQueueProcessCompleteBurstSessionWithIdentifier_device___block_invoke_4;
    v18 = &unk_1E76FC988;
    v19 = v5;
    v7 = v6;
    v8 = &v15;
    v9 = [v7 bestAssetIdentifier];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = [v7 goodAssetIdentifiers];
      v10 = [v11 firstObject];

      if (!v10)
      {
        v12 = [v7 allAssetIdentifiers];
        v10 = [v12 firstObject];

        if (!v10)
        {
          v17(v8, 0);
          goto LABEL_10;
        }
      }
    }

    v13 = [MEMORY[0x1E69BF198] sharedSystemLibraryAssetsdClient];
    v14 = [v13 resourceInternalClient];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___loadThumbnailForBurstResult_block_invoke;
    v20[3] = &unk_1E76FCA50;
    v21 = v8;
    [v14 requestMasterThumbnailForAssetUUID:v10 completionHandler:v20];

LABEL_10:
  }
}

uint64_t __82__CAMBurstController__mutexQueueProcessCompleteBurstSessionWithIdentifier_device___block_invoke_4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) sendThumbnailData:a2 isVideo:0];
  }

  return result;
}

- (void)finishBurstCaptureForDevice:(int64_t)device
{
  _mutexQueue = [(CAMBurstController *)self _mutexQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CAMBurstController_finishBurstCaptureForDevice___block_invoke;
  v6[3] = &unk_1E76F7A38;
  v6[4] = self;
  v6[5] = device;
  dispatch_sync(_mutexQueue, v6);
}

void __50__CAMBurstController_finishBurstCaptureForDevice___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _requestsPendingPersistenceByIdentifier];
  v2 = [*(a1 + 32) _activeSession];
  v3 = [v2 identifier];
  v4 = [v5 countForObject:v3];
  [*(a1 + 32) _setActiveSession:0];
  if (!v4)
  {
    [*(a1 + 32) _mutexQueueProcessCompleteBurstSessionWithIdentifier:v3 device:*(a1 + 40)];
  }
}

- (void)cancelBurstCapture
{
  _activeSession = [(CAMBurstController *)self _activeSession];
  identifier = [_activeSession identifier];
  [(CAMBurstController *)self _setActiveSession:0];
  _protectionController = [(CAMBurstController *)self _protectionController];
  [_protectionController stopProtectingBurstProcessingForIdentifier:identifier];
  [_protectionController stopProtectingNebulaDaemonWritesForIdentifier:identifier];
}

- (void)processEnqueuedRequest:(id)request
{
  burstIdentifier = [request burstIdentifier];
  if (burstIdentifier)
  {
    _mutexQueue = [(CAMBurstController *)self _mutexQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__CAMBurstController_processEnqueuedRequest___block_invoke;
    v7[3] = &unk_1E76F7960;
    v7[4] = self;
    v8 = burstIdentifier;
    dispatch_sync(_mutexQueue, v7);
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to enqueue a request for a burst session without an identifier specified!", buf, 2u);
    }
  }
}

void __45__CAMBurstController_processEnqueuedRequest___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _sessionsByIdentifier];
  v2 = [v5 objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) _requestsPendingPersistenceByIdentifier];
    [v3 addObject:*(a1 + 40)];
    v4 = [*(a1 + 32) _inflightRequestsByIdentifier];
    [v4 addObject:*(a1 + 40)];
  }
}

- (void)processCapturedRequest:(id)request withResult:(id)result
{
  resultCopy = result;
  burstIdentifier = [request burstIdentifier];
  if (burstIdentifier)
  {
    _mutexQueue = [(CAMBurstController *)self _mutexQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__CAMBurstController_processCapturedRequest_withResult___block_invoke;
    block[3] = &unk_1E76F7938;
    block[4] = self;
    v11 = burstIdentifier;
    v12 = resultCopy;
    dispatch_sync(_mutexQueue, block);
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to mark a request as captured for a burst session without an identifier specified!", buf, 2u);
    }
  }
}

void __56__CAMBurstController_processCapturedRequest_withResult___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _sessionsByIdentifier];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 addStillImageCaptureResult:*(a1 + 48)];
    v4 = [*(a1 + 32) _inflightRequestsByIdentifier];
    [v4 removeObject:*(a1 + 40)];
  }
}

- (void)processPersistedRequest:(id)request withResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  burstIdentifier = [requestCopy burstIdentifier];
  if (burstIdentifier)
  {
    _mutexQueue = [(CAMBurstController *)self _mutexQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__CAMBurstController_processPersistedRequest_withResult___block_invoke;
    v11[3] = &unk_1E76F8230;
    v11[4] = self;
    v12 = burstIdentifier;
    v13 = resultCopy;
    v14 = requestCopy;
    dispatch_sync(_mutexQueue, v11);
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to add results to a burst session without an identifier specified!", buf, 2u);
    }
  }
}

void __57__CAMBurstController_processPersistedRequest_withResult___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) _sessionsByIdentifier];
  v2 = [v9 objectForKey:*(a1 + 40)];
  v3 = [*(a1 + 32) _faceResultsByIdentifier];
  v4 = [v2 identifier];
  v5 = [v3 objectForKey:v4];

  [v2 addStillImageLocalPersistenceResult:*(a1 + 48) withFaces:v5];
  [v5 removeAllObjects];
  v6 = [*(a1 + 32) _requestsPendingPersistenceByIdentifier];
  [v6 removeObject:*(a1 + 40)];
  v7 = [*(a1 + 32) _activeSession];
  if (v7 != v2 && ![v6 countForObject:*(a1 + 40)])
  {
    v8 = [*(a1 + 56) captureRequest];
    [*(a1 + 32) _mutexQueueProcessCompleteBurstSessionWithIdentifier:*(a1 + 40) device:{objc_msgSend(v8, "captureDevice")}];
  }
}

- (void)processFaceResults:(id)results
{
  resultsCopy = results;
  _mutexQueue = [(CAMBurstController *)self _mutexQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CAMBurstController_processFaceResults___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = resultsCopy;
  v6 = resultsCopy;
  dispatch_sync(_mutexQueue, v7);
}

void __41__CAMBurstController_processFaceResults___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeSession];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 identifier];
    v4 = [*(a1 + 32) _faceResultsByIdentifier];
    v5 = [v4 objectForKey:v3];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v4 setObject:v5 forKey:v3];
    }

    [v5 addObjectsFromArray:*(a1 + 40)];

    v2 = v6;
  }
}

- (unint64_t)estimatedCountForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _mutexQueue = [(CAMBurstController *)self _mutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CAMBurstController_estimatedCountForIdentifier___block_invoke;
  block[3] = &unk_1E76FCA28;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(_mutexQueue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __50__CAMBurstController_estimatedCountForIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _sessionsByIdentifier];
  v2 = [v3 objectForKey:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v2 estimatedCount];
}

- (unint64_t)inflightCountForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _mutexQueue = [(CAMBurstController *)self _mutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CAMBurstController_inflightCountForIdentifier___block_invoke;
  block[3] = &unk_1E76FB778;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(_mutexQueue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __49__CAMBurstController_inflightCountForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inflightRequestsByIdentifier];
  *(*(*(a1 + 48) + 8) + 24) = [v2 countForObject:*(a1 + 40)];
}

- (CAMBurstDelegate)burstDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_burstDelegate);

  return WeakRetained;
}

- (CAMPersistenceController)_persistenceController
{
  WeakRetained = objc_loadWeakRetained(&self->__persistenceController);

  return WeakRetained;
}

void __82__CAMBurstController__mutexQueueProcessCompleteBurstSessionWithIdentifier_device___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Failed to perform deferred remote persistence: %{public}@", &v2, 0xCu);
}

@end