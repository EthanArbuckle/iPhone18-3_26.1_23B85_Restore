@interface CAMTimelapseBackendController
- (BOOL)_deleteItemAtPath:(id)path;
- (BOOL)_scheduleDelayedMovieWriteIfNeededForTimelapseUUID:(id)d;
- (BOOL)_shouldSaveLastTimelapseDataForDebugging;
- (CAMTimelapseBackendController)init;
- (CAMTimelapseBackendController)initWithPersistenceController:(id)controller keepAliveController:(id)aliveController;
- (CGAffineTransform)_frameTransformForState:(SEL)state;
- (id)_getOrCreateSessionContextForTimelapseUUID:(id)d;
- (int)_pidForApplication:(id)application;
- (void)_createPlaceholderAssetForState:(id)state;
- (void)_dispatchToMainQueueWithBlock:(id)block;
- (void)_dispatchToWorkQueueAfterDelay:(double)delay withBlock:(id)block;
- (void)_dispatchToWorkQueueWithBlock:(id)block;
- (void)_movieWrittenToFilePath:(id)path duration:(id *)duration metadata:(id)metadata state:(id)state;
- (void)_notifyAssetsdOfIncomingMovieAtPath:(id)path duration:(id *)duration metadata:(id)metadata state:(id)state;
- (void)_performPendingWork;
- (void)_permanentlyFailTimelapseUUID:(id)d withState:(id)state;
- (void)_reserveDummyFileForTimelapseUUID:(id)d firstImageFilePath:(id)path useHEVC:(BOOL)c;
- (void)_saveTimelapseDirectoryForDebuggingTimelapseUUID:(id)d;
- (void)_setCapturing:(BOOL)capturing;
- (void)_setCurrentState:(id)state;
- (void)_updatePendingWorkFromDiskForceEndLastSession:(BOOL)session;
- (void)_updateSessionContext:(id)context withState:(id)state;
- (void)_workQueue_destroyApplicationStateMonitor;
- (void)_workQueue_setupCameraProcessMonitoringIfNecessary;
- (void)_writeMovieForSessionContext:(id)context;
- (void)dealloc;
- (void)handleClientConnection:(id)connection;
- (void)resumeTimelapseWithUUID:(id)d;
- (void)startTimelapseWithUUID:(id)d;
- (void)updatePendingWorkFromDiskForceEndLastSession:(BOOL)session;
- (void)updateTimelapseWithUUID:(id)d;
- (void)videoRequestDidCompleteRemotePersistence:(id)persistence withResponse:(id)response error:(id)error;
@end

@implementation CAMTimelapseBackendController

- (CAMTimelapseBackendController)initWithPersistenceController:(id)controller keepAliveController:(id)aliveController
{
  v40 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  aliveControllerCopy = aliveController;
  v38.receiver = self;
  v38.super_class = CAMTimelapseBackendController;
  v8 = [(CAMTimelapseBackendController *)&v38 init];
  if (v8)
  {
    v9 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "CAMTimelapseBackendController initialized", buf, 2u);
    }

    objc_storeStrong(&v8->__persistenceController, controller);
    objc_storeStrong(&v8->__keepAliveController, aliveController);
    array = [MEMORY[0x1E695DF70] array];
    sessionContexts = v8->__sessionContexts;
    v8->__sessionContexts = array;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v13 = dispatch_queue_create("com.apple.camera.timelapse.backend.work", v12);
    workQueue = v8->__workQueue;
    v8->__workQueue = v13;

    v15 = [CAMTimelapseDiskUtilities readSortedStatesFromDiskMergeSecondaryState:1];
    lastObject = [v15 lastObject];
    [(CAMTimelapseBackendController *)v8 _setCurrentState:lastObject];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v18)
    {
      v19 = *v35;
      do
      {
        v20 = 0;
        do
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v17);
          }

          keepAliveController = v8->__keepAliveController;
          timelapseUUID = [*(*(&v34 + 1) + 8 * v20) timelapseUUID];
          [(CAMNebulaKeepAliveController *)keepAliveController startKeepAliveForIdentifier:timelapseUUID];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v18);
    }

    objc_initWeak(buf, v8);
    _workQueue = [(CAMTimelapseBackendController *)v8 _workQueue];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __83__CAMTimelapseBackendController_initWithPersistenceController_keepAliveController___block_invoke;
    handler[3] = &unk_1E76F8388;
    objc_copyWeak(&v32, buf);
    notify_register_dispatch("com.apple.camera.nebulad.io.suspend", &v8->__notifyRegisterTokenSuspendIO, _workQueue, handler);

    _workQueue2 = [(CAMTimelapseBackendController *)v8 _workQueue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __83__CAMTimelapseBackendController_initWithPersistenceController_keepAliveController___block_invoke_5;
    v29[3] = &unk_1E76F8388;
    objc_copyWeak(&v30, buf);
    notify_register_dispatch("com.apple.camera.nebulad.io.resume", &v8->__notifyRegisterTokenResumeIO, _workQueue2, v29);

    v8->__oldMovieWriterEnabled = CFPreferencesGetAppBooleanValue(@"CAMTimelapseOldMovieWriterEnabled", @"com.apple.camera", 0) != 0;
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    transactionForPersistenceUUID = v8->__transactionForPersistenceUUID;
    v8->__transactionForPersistenceUUID = v25;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  return v8;
}

void __83__CAMTimelapseBackendController_initWithPersistenceController_keepAliveController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _movieWriter];
  if (v2)
  {
    v3 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Suspending timelapse IO work for Camera", v4, 2u);
    }

    [v2 setSuspended:1];
    [WeakRetained _workQueue_setupCameraProcessMonitoringIfNecessary];
  }
}

void __83__CAMTimelapseBackendController_initWithPersistenceController_keepAliveController___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _movieWriter];
  if (v2)
  {
    v3 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Resuming timelapse IO work", v4, 2u);
    }

    [v2 setSuspended:0];
  }
}

- (CAMTimelapseBackendController)init
{
  [(CAMTimelapseBackendController *)self doesNotRecognizeSelector:a2];

  return [(CAMTimelapseBackendController *)self initWithPersistenceController:0 keepAliveController:0];
}

- (void)dealloc
{
  notify_cancel(self->__notifyRegisterTokenSuspendIO);
  notify_cancel(self->__notifyRegisterTokenResumeIO);
  _workQueue = [(CAMTimelapseBackendController *)self _workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CAMTimelapseBackendController_dealloc__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(_workQueue, block);

  v4.receiver = self;
  v4.super_class = CAMTimelapseBackendController;
  [(CAMTimelapseBackendController *)&v4 dealloc];
}

- (void)_setCurrentState:(id)state
{
  stateCopy = state;
  p_currentState = &self->__currentState;
  if (self->__currentState != stateCopy)
  {
    v7 = stateCopy;
    objc_storeStrong(p_currentState, state);
    p_currentState = [(CAMTimelapseBackendController *)self _setCapturing:[(CAMTimelapseState *)self->__currentState canContinueCapture]];
    stateCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_currentState, stateCopy);
}

- (void)_setCapturing:(BOOL)capturing
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->__capturing != capturing)
  {
    self->__capturing = capturing;
    v4 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      capturing = self->__capturing;
      v6[0] = 67109120;
      v6[1] = capturing;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Capturing=%d", v6, 8u);
    }
  }
}

- (void)_dispatchToWorkQueueWithBlock:(id)block
{
  blockCopy = block;
  v5 = os_transaction_create();
  workQueue = self->__workQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__CAMTimelapseBackendController__dispatchToWorkQueueWithBlock___block_invoke;
  v9[3] = &unk_1E76F83B0;
  v10 = v5;
  v11 = blockCopy;
  v7 = v5;
  v8 = blockCopy;
  dispatch_async(workQueue, v9);
}

void __63__CAMTimelapseBackendController__dispatchToWorkQueueWithBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)_dispatchToWorkQueueAfterDelay:(double)delay withBlock:(id)block
{
  blockCopy = block;
  v7 = os_transaction_create();
  v8 = dispatch_time(0, (delay * 1000000000.0));
  workQueue = self->__workQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CAMTimelapseBackendController__dispatchToWorkQueueAfterDelay_withBlock___block_invoke;
  v12[3] = &unk_1E76F83B0;
  v13 = v7;
  v14 = blockCopy;
  v10 = v7;
  v11 = blockCopy;
  dispatch_after(v8, workQueue, v12);
}

void __74__CAMTimelapseBackendController__dispatchToWorkQueueAfterDelay_withBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)_dispatchToMainQueueWithBlock:(id)block
{
  blockCopy = block;
  v4 = os_transaction_create();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CAMTimelapseBackendController__dispatchToMainQueueWithBlock___block_invoke;
  v7[3] = &unk_1E76F83B0;
  v8 = v4;
  v9 = blockCopy;
  v5 = v4;
  v6 = blockCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __63__CAMTimelapseBackendController__dispatchToMainQueueWithBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)startTimelapseWithUUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(CAMNebulaKeepAliveController *)self->__keepAliveController startKeepAliveForIdentifier:dCopy];
  v5 = [CAMTimelapseDiskUtilities readStateForTimelapseUUID:dCopy mergeSecondaryState:1];

  [(CAMTimelapseBackendController *)self _setCurrentState:v5];
}

- (void)resumeTimelapseWithUUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [CAMTimelapseDiskUtilities readStateForTimelapseUUID:dCopy mergeSecondaryState:1];

  [(CAMTimelapseBackendController *)self _setCurrentState:v5];
}

- (void)updateTimelapseWithUUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [CAMTimelapseDiskUtilities readStateForTimelapseUUID:dCopy mergeSecondaryState:1];
  [(CAMTimelapseBackendController *)self _setCurrentState:v5];
  v6 = [(CAMTimelapseState *)self->__currentState copy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CAMTimelapseBackendController_updateTimelapseWithUUID___block_invoke;
  v9[3] = &unk_1E76F7938;
  v9[4] = self;
  v10 = dCopy;
  v11 = v6;
  v7 = v6;
  v8 = dCopy;
  [(CAMTimelapseBackendController *)self _dispatchToWorkQueueWithBlock:v9];
}

void __57__CAMTimelapseBackendController_updateTimelapseWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getOrCreateSessionContextForTimelapseUUID:*(a1 + 40)];
  [*(a1 + 32) _updateSessionContext:v2 withState:*(a1 + 48)];
  [*(a1 + 32) _performPendingWork];
}

- (void)updatePendingWorkFromDiskForceEndLastSession:(BOOL)session
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__CAMTimelapseBackendController_updatePendingWorkFromDiskForceEndLastSession___block_invoke;
  v3[3] = &unk_1E76F7850;
  v3[4] = self;
  sessionCopy = session;
  [(CAMTimelapseBackendController *)self _dispatchToWorkQueueWithBlock:v3];
}

- (void)_updatePendingWorkFromDiskForceEndLastSession:(BOOL)session
{
  sessionCopy = session;
  v25 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = sessionCopy;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "CAMTimelapseBackendController _updatePendingWorkFromDiskForceEndLastSession:%d", buf, 8u);
  }

  dispatch_assert_queue_V2(self->__workQueue);
  v6 = +[CAMTimelapseDiskUtilities timelapseUUIDsOnDisk];
  v7 = [CAMTimelapseDiskUtilities readSortedStatesFromDiskMergeSecondaryState:1];
  v8 = [MEMORY[0x1E695DFA8] set];
  v9 = [MEMORY[0x1E695DFA8] setWithArray:v6];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__CAMTimelapseBackendController__updatePendingWorkFromDiskForceEndLastSession___block_invoke;
  v18[3] = &unk_1E76FED08;
  v10 = v8;
  v19 = v10;
  v11 = v9;
  v20 = v11;
  [v7 enumerateObjectsUsingBlock:v18];
  [v10 enumerateObjectsUsingBlock:&__block_literal_global_63];
  *buf = 0;
  v22 = buf;
  v23 = 0x2020000000;
  v24 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__CAMTimelapseBackendController__updatePendingWorkFromDiskForceEndLastSession___block_invoke_3;
  v17[3] = &unk_1E76FED50;
  v17[4] = self;
  v17[5] = buf;
  [v11 enumerateObjectsUsingBlock:v17];
  if (v22[24] == 1)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79__CAMTimelapseBackendController__updatePendingWorkFromDiskForceEndLastSession___block_invoke_21;
    v16[3] = &unk_1E76F77B0;
    v16[4] = self;
    [(CAMTimelapseBackendController *)self _dispatchToWorkQueueAfterDelay:v16 withBlock:5.0];
  }

  v12 = [v7 count];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CAMTimelapseBackendController__updatePendingWorkFromDiskForceEndLastSession___block_invoke_2_22;
  v14[3] = &unk_1E76FED78;
  v15 = sessionCopy;
  v14[4] = self;
  v14[5] = v12 - 1;
  [v7 enumerateObjectsUsingBlock:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__CAMTimelapseBackendController__updatePendingWorkFromDiskForceEndLastSession___block_invoke_3_24;
  v13[3] = &unk_1E76FEDA0;
  v13[4] = self;
  [v7 enumerateObjectsUsingBlock:v13];
  [(CAMTimelapseBackendController *)self _performPendingWork];
  _Block_object_dispose(buf, 8);
}

void __79__CAMTimelapseBackendController__updatePendingWorkFromDiskForceEndLastSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 timelapseUUID];
  [v3 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [v4 timelapseUUID];

  [v6 removeObject:v7];
}

void __79__CAMTimelapseBackendController__updatePendingWorkFromDiskForceEndLastSession___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [CAMTimelapseDiskUtilities updateSecondaryStateForTimelapseUUID:v3 forStateReadSuccessfully:0];
  v5 = [v4 failedStateReadAttemptsCount];
  v6 = +[CAMTimelapseSettings sharedInstance];
  v7 = [v6 maxFailedStateReadAttempts];

  v8 = os_log_create("com.apple.camera", "Nebula");
  v9 = v8;
  if (v5 >= v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __79__CAMTimelapseBackendController__updatePendingWorkFromDiskForceEndLastSession___block_invoke_3_cold_1();
    }

    [*(a1 + 32) _permanentlyFailTimelapseUUID:v3 withState:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = v3;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "No state found for directory %{public}@ after %ld attempts. Will retry...", &v10, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t __79__CAMTimelapseBackendController__updatePendingWorkFromDiskForceEndLastSession___block_invoke_2_22(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [v13 canContinueCapture];
  v6 = v13;
  if (v5)
  {
    if (*(a1 + 48))
    {
      v7 = 128;
    }

    else
    {
      if (*(a1 + 40) == a3)
      {
        v5 = [*(a1 + 32) _isCameraRunning];
        v6 = v13;
        if (v5)
        {
          goto LABEL_10;
        }

        v7 = 64;
        v8 = v13;
        goto LABEL_9;
      }

      v7 = 16;
    }

    v8 = v13;
LABEL_9:
    v9 = [v8 timelapseUUID];
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = [CAMTimelapseDiskUtilities updateSecondaryStateForTimelapseUUID:v9 withStopReasons:v7 stopTime:v10];

    [v13 mergeSecondaryState:v11];
    [v13 forceCompleted];
    [CAMTimelapseDiskUtilities writeStateToDisk:v13 createDirectoryIfNeeded:0];

    v6 = v13;
  }

LABEL_10:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

void __79__CAMTimelapseBackendController__updatePendingWorkFromDiskForceEndLastSession___block_invoke_3_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 timelapseUUID];
  v4 = [*(a1 + 32) _getOrCreateSessionContextForTimelapseUUID:v5];
  [*(a1 + 32) _updateSessionContext:v4 withState:v3];
}

- (void)_updateSessionContext:(id)context withState:(id)state
{
  v30 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  stateCopy = state;
  dispatch_assert_queue_V2(self->__workQueue);
  [contextCopy setState:stateCopy];
  timelapseUUID = [contextCopy timelapseUUID];
  v9 = [CAMTimelapseDiskUtilities readFrameFilePathsForTimelapseUUID:timelapseUUID];

  if ([v9 count])
  {
    frameIndexStride = [stateCopy frameIndexStride];
    isReadyForWritingMovie = [stateCopy isReadyForWritingMovie];
    canContinueCapture = [stateCopy canContinueCapture];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65__CAMTimelapseBackendController__updateSessionContext_withState___block_invoke;
    v23[3] = &unk_1E76FEDC8;
    v26 = frameIndexStride;
    v15 = dictionary;
    v24 = v15;
    v27 = canContinueCapture;
    v16 = dictionary2;
    v25 = v16;
    [v9 enumerateKeysAndObjectsUsingBlock:v23];
    if ((canContinueCapture & 1) == 0 && (isReadyForWritingMovie & 1) == 0)
    {
      +[CAMTimelapseState maxTimeToWaitForWrittenFrameAfterStop];
      v18 = v17;
      v19 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = v18;
        _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "Timelapse stopped but we are still waiting for the last frames to be written before we can write the movie. Will check again in %f seconds in case we are never notified of the final frames", buf, 0xCu);
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __65__CAMTimelapseBackendController__updateSessionContext_withState___block_invoke_27;
      v22[3] = &unk_1E76F77B0;
      v22[4] = self;
      [(CAMTimelapseBackendController *)self _dispatchToWorkQueueAfterDelay:v22 withBlock:v18];
    }

    v20 = [CAMTimelapseDiskUtilities sortedArrayFromFilePathDictionary:v15 reverse:1];
    v21 = [CAMTimelapseDiskUtilities sortedArrayFromFilePathDictionary:v16 reverse:0];
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  [contextCopy setFilesToDelete:v20];
  [contextCopy setFilesToWrite:v21];
}

void __65__CAMTimelapseBackendController__updateSessionContext_withState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 48) >= 2 && [v7 integerValue] % *(a1 + 48))
  {
    v6 = 32;
  }

  else
  {
    if (*(a1 + 56))
    {
      goto LABEL_7;
    }

    v6 = 40;
  }

  [*(a1 + v6) setObject:v5 forKey:v7];
LABEL_7:
}

uint64_t __65__CAMTimelapseBackendController__updateSessionContext_withState___block_invoke_27(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Checking if there is work to do after delay", v4, 2u);
  }

  return [*(a1 + 32) _updatePendingWorkFromDiskForceEndLastSession:0];
}

- (id)_getOrCreateSessionContextForTimelapseUUID:(id)d
{
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__34;
  v23 = __Block_byref_object_dispose__34;
  v24 = 0;
  sessionContexts = self->__sessionContexts;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __76__CAMTimelapseBackendController__getOrCreateSessionContextForTimelapseUUID___block_invoke;
  v16 = &unk_1E76FEDF0;
  v6 = dCopy;
  v17 = v6;
  v18 = &v19;
  [(NSMutableArray *)sessionContexts enumerateObjectsUsingBlock:&v13];
  v7 = v20[5];
  if (!v7)
  {
    v8 = [CAMTimelapseBackendSessionContext alloc];
    v9 = [(CAMTimelapseBackendSessionContext *)v8 initWithTimelapseUUID:v6, v13, v14, v15, v16];
    v10 = v20[5];
    v20[5] = v9;

    [(NSMutableArray *)self->__sessionContexts addObject:v20[5]];
    v7 = v20[5];
  }

  v11 = v7;

  _Block_object_dispose(&v19, 8);

  return v11;
}

void __76__CAMTimelapseBackendController__getOrCreateSessionContextForTimelapseUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 timelapseUUID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_performPendingWork
{
  v26 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->__workQueue);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  sessionContexts = self->__sessionContexts;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__CAMTimelapseBackendController__performPendingWork__block_invoke;
  v19[3] = &unk_1E76FEDF0;
  v19[4] = self;
  v19[5] = &v20;
  [(NSMutableArray *)sessionContexts enumerateObjectsUsingBlock:v19];
  if (v21[3])
  {
    goto LABEL_7;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__34;
  v17 = __Block_byref_object_dispose__34;
  v18 = 0;
  v4 = self->__sessionContexts;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__CAMTimelapseBackendController__performPendingWork__block_invoke_2;
  v12[3] = &unk_1E76FEDF0;
  v12[4] = self;
  v12[5] = &v13;
  [(NSMutableArray *)v4 enumerateObjectsUsingBlock:v12];
  v5 = v14[5];
  if (v5)
  {
    timelapseUUID = [v5 timelapseUUID];
    state = [v14[5] state];
    v8 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = timelapseUUID;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Deleting timelapse session that completed with zero frames: %{public}@", buf, 0xCu);
    }

    [(CAMTimelapseBackendController *)self _permanentlyFailTimelapseUUID:timelapseUUID withState:state];
    *(v21 + 24) = 1;
  }

  _Block_object_dispose(&v13, 8);

  if (v21[3])
  {
    goto LABEL_7;
  }

  if (!self->__writingMovie)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__34;
    v17 = __Block_byref_object_dispose__34;
    v18 = 0;
    v9 = self->__sessionContexts;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__CAMTimelapseBackendController__performPendingWork__block_invoke_38;
    v11[3] = &unk_1E76FEDF0;
    v11[4] = self;
    v11[5] = &v13;
    [(NSMutableArray *)v9 enumerateObjectsUsingBlock:v11];
    if (v14[5])
    {
      [(CAMTimelapseBackendController *)self _writeMovieForSessionContext:?];
      *(v21 + 24) = 1;
    }

    _Block_object_dispose(&v13, 8);

    if (v21[3])
    {
LABEL_7:
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__CAMTimelapseBackendController__performPendingWork__block_invoke_2_39;
      v10[3] = &unk_1E76F77B0;
      v10[4] = self;
      [(CAMTimelapseBackendController *)self _dispatchToWorkQueueWithBlock:v10];
    }
  }

  _Block_object_dispose(&v20, 8);
}

void __52__CAMTimelapseBackendController__performPendingWork__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = [v17 filesToDelete];
  if ([v6 count])
  {
    v7 = [v6 lastObject];
    if ([v7 length])
    {
      [*(a1 + 32) _deleteItemAtPath:v7];
    }

    v8 = [v7 stringByDeletingPathExtension];
    v9 = [v8 stringByAppendingPathExtension:@"DBG"];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v10 fileExistsAtPath:v9];

    if (v11)
    {
      [*(a1 + 32) _deleteItemAtPath:v9];
    }

    v12 = [v7 stringByDeletingPathExtension];
    v13 = [v12 stringByAppendingPathExtension:@"tvis"];

    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [v14 fileExistsAtPath:v13];

    if (v15)
    {
      [*(a1 + 32) _deleteItemAtPath:v13];
    }

    if ([v6 count] < 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = [v6 subarrayWithRange:{0, objc_msgSend(v6, "count") - 1}];
    }

    [v17 setFilesToDelete:v16];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __52__CAMTimelapseBackendController__performPendingWork__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 state];
  v9 = [v8 isReadyForWritingMovie];
  v10 = [v7 filesToWrite];
  v11 = [v10 count];

  if (v9 && !v11)
  {
    v12 = [v7 timelapseUUID];
    v13 = [CAMTimelapseDiskUtilities readFrameFilePathsForTimelapseUUID:v12];

    if ([v13 count])
    {
      v14 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v8 fullDescription];
        *buf = 138543362;
        v19 = v15;
        _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "Timelapse session thought it had no files to write but frames found on disk for: %{public}@", buf, 0xCu);
      }

      v16 = *(a1 + 32);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __52__CAMTimelapseBackendController__performPendingWork__block_invoke_37;
      v17[3] = &unk_1E76F77B0;
      v17[4] = v16;
      [v16 _dispatchToWorkQueueAfterDelay:v17 withBlock:2.0];
    }

    else
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void __52__CAMTimelapseBackendController__performPendingWork__block_invoke_38(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [v11 state];
  v8 = [v11 filesToWrite];
  if ([v8 count])
  {
    if ([v7 isReadyForWritingMovie])
    {
      v9 = *(a1 + 32);
      v10 = [v11 timelapseUUID];
      LOBYTE(v9) = [v9 _scheduleDelayedMovieWriteIfNeededForTimelapseUUID:v10];

      if ((v9 & 1) == 0)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *a4 = 1;
      }
    }
  }
}

- (void)_permanentlyFailTimelapseUUID:(id)d withState:(id)state
{
  dCopy = d;
  stateCopy = state;
  if (stateCopy)
  {
    v8 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CAMTimelapseBackendController _permanentlyFailTimelapseUUID:stateCopy withState:v8];
    }
  }

  v9 = [CAMTimelapseDiskUtilities directoryPathForTimelapseUUID:dCopy];
  if ([(CAMTimelapseBackendController *)self _shouldSaveLastTimelapseDataForDebugging])
  {
    [(CAMTimelapseBackendController *)self _saveTimelapseDirectoryForDebuggingTimelapseUUID:dCopy];
  }

  else
  {
    [(CAMTimelapseBackendController *)self _deleteItemAtPath:v9];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__34;
  v22 = __Block_byref_object_dispose__34;
  v23 = 0;
  sessionContexts = self->__sessionContexts;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __73__CAMTimelapseBackendController__permanentlyFailTimelapseUUID_withState___block_invoke;
  v15 = &unk_1E76FEDF0;
  v11 = dCopy;
  v16 = v11;
  v17 = &v18;
  [(NSMutableArray *)sessionContexts enumerateObjectsUsingBlock:&v12];
  if (v19[5])
  {
    [(NSMutableArray *)self->__sessionContexts removeObject:v12, v13, v14, v15];
  }

  [(CAMNebulaKeepAliveController *)self->__keepAliveController stopKeepAliveForIdentifier:v11, v12, v13, v14, v15];

  _Block_object_dispose(&v18, 8);
}

void __73__CAMTimelapseBackendController__permanentlyFailTimelapseUUID_withState___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 state];
  v8 = [v7 timelapseUUID];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)_scheduleDelayedMovieWriteIfNeededForTimelapseUUID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [CAMTimelapseDiskUtilities readSecondaryStateForTimelapseUUID:dCopy];
  movieWriteAttemptsCount = [v5 movieWriteAttemptsCount];
  if (movieWriteAttemptsCount < 1)
  {
    v16 = 0;
  }

  else
  {
    v7 = movieWriteAttemptsCount;
    lastMovieWriteAttemptTime = [v5 lastMovieWriteAttemptTime];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:lastMovieWriteAttemptTime];
    v11 = v10;

    v12 = +[CAMTimelapseSettings sharedInstance];
    [v12 waitTimeBeforeNextWriteForNumberOfPreviousAttempts:v7];
    v14 = v13;

    v15 = v14 - v11;
    v16 = v15 > 0.0;
    if (v15 > 0.0)
    {
      v17 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = dCopy;
        v22 = 2048;
        v23 = v15;
        _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "Not ready to write movie for timelapse %{public}@. Delaying %.2f seconds", buf, 0x16u);
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __84__CAMTimelapseBackendController__scheduleDelayedMovieWriteIfNeededForTimelapseUUID___block_invoke;
      v19[3] = &unk_1E76F77B0;
      v19[4] = self;
      [(CAMTimelapseBackendController *)self _dispatchToWorkQueueAfterDelay:v19 withBlock:v15];
    }
  }

  return v16;
}

- (BOOL)_deleteItemAtPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v9 = 0;
    v5 = [defaultManager removeItemAtPath:pathCopy error:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      v7 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CAMNebulaIrisBackendController _removeItemAtURL:];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_writeMovieForSessionContext:(id)context
{
  v69 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dispatch_assert_queue_V2(self->__workQueue);
  state = [contextCopy state];
  timelapseUUID = [state timelapseUUID];
  v7 = os_log_create("com.apple.camera", "Nebula");
  v50 = state;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    stopReasons = [state stopReasons];
    [v50 fullDescription];
    v10 = v9 = self;
    *buf = 138543874;
    *&buf[4] = timelapseUUID;
    *&buf[12] = 2048;
    *&buf[14] = stopReasons;
    state = v50;
    *&buf[22] = 2114;
    *&buf[24] = v10;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Starting to write timelapse movie for %{public}@ (stopReasons = %ld) %{public}@", buf, 0x20u);

    self = v9;
  }

  v48 = [CAMTimelapseDiskUtilities directoryPathForTimelapseUUID:timelapseUUID];
  v11 = [v48 stringByAppendingPathComponent:@"MOVIE.MOV"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:v11])
  {
    [(CAMTimelapseBackendController *)self _deleteItemAtPath:v11];
  }

  v43 = v11;
  [CAMTimelapseDiskUtilities removeDummyFileForTimelapseUUID:timelapseUUID];
  v46 = timelapseUUID;
  v42 = [CAMTimelapseDiskUtilities updateSecondaryStateForMovieWriteAttemptForTimelapseUUID:timelapseUUID];
  selfCopy = self;
  [(CAMTimelapseBackendController *)self _createPlaceholderAssetForState:state];
  v49 = contextCopy;
  filesToWrite = [contextCopy filesToWrite];
  v13 = [filesToWrite copy];

  v40 = [v13 count];
  array = [MEMORY[0x1E695DF70] array];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v63;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v63 != v18)
        {
          objc_enumerationMutation(v15);
        }

        stringByDeletingPathExtension = [*(*(&v62 + 1) + 8 * i) stringByDeletingPathExtension];
        v21 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"tvis"];

        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v23 = [defaultManager2 fileExistsAtPath:v21];

        if ((v23 & 1) == 0)
        {

          goto LABEL_15;
        }

        [array addObject:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v62 objects:v68 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v24 = +[CAMTimelapseSettings sharedInstance];
  [v24 outputFPSForFrameCount:v40];
  v26 = v25;

  v67 = 0u;
  memset(buf, 0, sizeof(buf));
  [(CAMTimelapseBackendController *)selfCopy _frameTransformForState:v50];
  startTime = [v50 startTime];
  startLocation = [v50 startLocation];
  preferHEVC = [v50 preferHEVC];
  v27 = os_transaction_create();
  selfCopy->__writingMovie = 1;
  [array count];
  v28 = objc_alloc_init(objc_opt_class());
  movieWriter = selfCopy->__movieWriter;
  selfCopy->__movieWriter = v28;

  if (+[CAMProtectionController isCameraPerformingHighPriorityDiskActivity])
  {
    v30 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&dword_1A3640000, v30, OS_LOG_TYPE_DEFAULT, "Starting timelapse movie writer suspended for Camera", v51, 2u);
    }

    [(CAMTimelapseBackendController *)selfCopy _workQueue_setupCameraProcessMonitoringIfNecessary];
    [(CAMTimelapseMovieWriterProtocol *)selfCopy->__movieWriter setSuspended:[(CAMTimelapseBackendController *)selfCopy _isCameraRunning]];
  }

  v31 = selfCopy->__movieWriter;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __62__CAMTimelapseBackendController__writeMovieForSessionContext___block_invoke;
  v54[3] = &unk_1E76FEE40;
  v54[4] = selfCopy;
  v55 = v43;
  v56 = v50;
  v57 = v42;
  v58 = v46;
  v59 = v15;
  v61 = preferHEVC;
  v60 = v27;
  *v51 = *buf;
  v52 = *&buf[16];
  v53 = v67;
  v45 = v27;
  v32 = v15;
  v33 = v46;
  v34 = v42;
  v35 = v50;
  v36 = v43;
  LOBYTE(v37) = preferHEVC;
  [(CAMTimelapseMovieWriterProtocol *)v31 writeMovieFromImageFiles:v32 visMetadataFiles:array startDate:startTime location:startLocation outputPath:v36 transform:v51 framesPerSecond:v26 preferHEVC:v37 completionHandler:v54];
}

void __62__CAMTimelapseBackendController__writeMovieForSessionContext___block_invoke(uint64_t a1, char a2, __int128 *a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__CAMTimelapseBackendController__writeMovieForSessionContext___block_invoke_2;
  v17[3] = &unk_1E76FEE18;
  v25 = a2;
  v17[4] = v8;
  v9 = *(a1 + 40);
  v23 = *a3;
  v24 = *(a3 + 2);
  v18 = v9;
  v19 = v7;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v20 = v15;
  v21 = v14;
  v26 = *(a1 + 88);
  v22 = *(a1 + 80);
  v16 = v7;
  [v8 _dispatchToWorkQueueWithBlock:v17];
}

uint64_t __62__CAMTimelapseBackendController__writeMovieForSessionContext___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v17 = *(a1 + 96);
    v18 = *(a1 + 112);
    [v2 _movieWrittenToFilePath:v3 duration:&v17 metadata:v4 state:v5];
  }

  else
  {
    v6 = [*(a1 + 64) movieWriteAttemptsCount];
    v7 = +[CAMTimelapseSettings sharedInstance];
    v8 = [v7 maxMovieWriteAttempts];

    v9 = os_log_create("com.apple.camera", "Nebula");
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v6 >= v8)
    {
      if (v10)
      {
        __62__CAMTimelapseBackendController__writeMovieForSessionContext___block_invoke_2_cold_1();
      }

      [*(a1 + 32) _permanentlyFailTimelapseUUID:*(a1 + 72) withState:*(a1 + 56)];
    }

    else
    {
      if (v10)
      {
        __62__CAMTimelapseBackendController__writeMovieForSessionContext___block_invoke_2_cold_2();
      }

      v11 = [*(a1 + 80) objectAtIndex:0];
      [*(a1 + 32) _reserveDummyFileForTimelapseUUID:*(a1 + 72) firstImageFilePath:v11 useHEVC:*(a1 + 121)];
    }
  }

  *(*(a1 + 32) + 8) = 0;
  [*(*(a1 + 32) + 40) setSuspended:0];
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  [*(a1 + 32) _workQueue_destroyApplicationStateMonitor];
  v14 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__CAMTimelapseBackendController__writeMovieForSessionContext___block_invoke_47;
  v16[3] = &unk_1E76F77B0;
  v16[4] = v14;
  return [v14 _dispatchToWorkQueueWithBlock:v16];
}

- (void)_reserveDummyFileForTimelapseUUID:(id)d firstImageFilePath:(id)path useHEVC:(BOOL)c
{
  cCopy = c;
  dCopy = d;
  v11 = [CAMTimelapseJPEGReader newDataFromFilePath:path];
  v8 = [CAMTimelapseJPEGReader createPixelBufferFromData:v11 applyTransform:1 maxPixelSize:0 useBGRA:0];
  Width = CVPixelBufferGetWidth(v8);
  Height = CVPixelBufferGetHeight(v8);
  CVPixelBufferRelease(v8);
  [CAMTimelapseDiskUtilities reserveDummyFileForTimelapseUUID:dCopy width:Width height:Height useHEVC:cCopy];
}

- (void)_createPlaceholderAssetForState:(id)state
{
  v4 = [CAMTimelapseController createPlaceholderResultForTimelapseState:state];
  if (v4)
  {
    v5 = os_transaction_create();
    _persistenceController = [(CAMTimelapseBackendController *)self _persistenceController];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__CAMTimelapseBackendController__createPlaceholderAssetForState___block_invoke;
    v8[3] = &unk_1E76FD1E0;
    v9 = v5;
    v7 = v5;
    [_persistenceController persistPlaceholderTimelapseVideoWithResult:v4 completionHandler:v8];
  }
}

- (void)_movieWrittenToFilePath:(id)path duration:(id *)duration metadata:(id)metadata state:(id)state
{
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  metadataCopy = metadata;
  stateCopy = state;
  dispatch_assert_queue_V2(self->__workQueue);
  v13 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    timelapseUUID = [stateCopy timelapseUUID];
    *buf = 138543362;
    *&buf[4] = timelapseUUID;
    _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "Finished writing timelapse movie for %{public}@", buf, 0xCu);
  }

  v15 = MEMORY[0x1E69BF178];
  timelapseUUID2 = [stateCopy timelapseUUID];
  v17 = [v15 uniqueIncomingPathForAssetWithUUID:timelapseUUID2 andExtension:@"MOV" isPhotoStream:0];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v27 = 0;
  v19 = [defaultManager linkItemAtPath:pathCopy toPath:v17 error:&v27];
  v20 = v27;
  if (v19)
  {
    _shouldSaveLastTimelapseDataForDebugging = [(CAMTimelapseBackendController *)self _shouldSaveLastTimelapseDataForDebugging];
    if (!_shouldSaveLastTimelapseDataForDebugging)
    {
      [(CAMTimelapseBackendController *)self _deleteItemAtPath:pathCopy];
    }

    *buf = *&duration->var0;
    var3 = duration->var3;
    [(CAMTimelapseBackendController *)self _notifyAssetsdOfIncomingMovieAtPath:v17 duration:buf metadata:metadataCopy state:stateCopy];
    timelapseUUID3 = [stateCopy timelapseUUID];
    v23 = [CAMTimelapseDiskUtilities directoryPathForTimelapseUUID:timelapseUUID3];

    if (_shouldSaveLastTimelapseDataForDebugging)
    {
      timelapseUUID4 = [stateCopy timelapseUUID];
      [(CAMTimelapseBackendController *)self _saveTimelapseDirectoryForDebuggingTimelapseUUID:timelapseUUID4];
    }

    else
    {
      [(CAMTimelapseBackendController *)self _deleteItemAtPath:v23];
    }

    timelapseUUID5 = [stateCopy timelapseUUID];
    v26 = [(CAMTimelapseBackendController *)self _getOrCreateSessionContextForTimelapseUUID:timelapseUUID5];

    [(NSMutableArray *)self->__sessionContexts removeObject:v26];
  }

  else
  {
    v23 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CAMTimelapseBackendController _movieWrittenToFilePath:duration:metadata:state:];
    }
  }
}

- (BOOL)_shouldSaveLastTimelapseDataForDebugging
{
  CFPreferencesAppSynchronize(@"com.apple.camera");
  keyExistsAndHasValidFormat = 0;
  return CFPreferencesGetAppBooleanValue(@"CAMSaveLastTimelapseData", @"com.apple.camera", &keyExistsAndHasValidFormat) != 0;
}

- (void)_saveTimelapseDirectoryForDebuggingTimelapseUUID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [CAMTimelapseDiskUtilities directoryPathForTimelapseUUID:dCopy];
  [CAMTimelapseDiskUtilities removeDummyFileForTimelapseUUID:dCopy];

  v6 = +[CAMTimelapseDiskUtilities timelapseDirectoryPath];
  stringByDeletingLastPathComponent = [v6 stringByDeletingLastPathComponent];
  v8 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"LastTimelapse"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [defaultManager fileExistsAtPath:v8];

  if (v10)
  {
    [(CAMTimelapseBackendController *)self _deleteItemAtPath:v8];
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = 0;
  v12 = [defaultManager2 moveItemAtPath:v5 toPath:v8 error:&v16];
  v13 = v16;

  v14 = os_log_create("com.apple.camera", "Nebula");
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "Copied timelapse directory from %{public}@ to %{public}@ for debugging", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v18 = v5;
      v19 = 2114;
      v20 = v8;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1A3640000, v15, OS_LOG_TYPE_ERROR, "Deleting directory after failing to move %{public}@ to %{public}@: %{public}@", buf, 0x20u);
    }

    [(CAMTimelapseBackendController *)self _deleteItemAtPath:v5];
  }
}

- (void)_notifyAssetsdOfIncomingMovieAtPath:(id)path duration:(id *)duration metadata:(id)metadata state:(id)state
{
  workQueue = self->__workQueue;
  stateCopy = state;
  metadataCopy = metadata;
  pathCopy = path;
  dispatch_assert_queue_V2(workQueue);
  captureOrientation = [stateCopy captureOrientation];
  captureDevice = [stateCopy captureDevice];
  startLocation = [stateCopy startLocation];
  timelapseUUID = [stateCopy timelapseUUID];
  v18 = objc_alloc_init(CAMMutableVideoCaptureRequest);
  [(CAMMutableVideoCaptureRequest *)v18 setTorchMode:0];
  [(CAMMutableVideoCaptureRequest *)v18 setCaptureOrientation:captureOrientation];
  -[CAMMutableVideoCaptureRequest setCaptureMirrored:](v18, "setCaptureMirrored:", [stateCopy isCaptureMirrored]);
  [(CAMMutableVideoCaptureRequest *)v18 setCaptureDevice:captureDevice];
  [(CAMMutableVideoCaptureRequest *)v18 setLocation:startLocation];
  [(CAMMutableVideoCaptureRequest *)v18 setPersistenceUUID:timelapseUUID];
  [(CAMMutableVideoCaptureRequest *)v18 setTimelapse:1];
  LODWORD(captureOrientation) = [stateCopy preferHEVC];

  [(CAMMutableVideoCaptureRequest *)v18 setVideoEncodingBehavior:captureOrientation];
  [(CAMMutableVideoCaptureRequest *)v18 setDelegate:self];
  v19 = os_transaction_create();
  _transactionForPersistenceUUID = [(CAMTimelapseBackendController *)self _transactionForPersistenceUUID];
  [_transactionForPersistenceUUID setObject:v19 forKeyedSubscript:timelapseUUID];

  v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];

  v22 = [CAMVideoCaptureResult alloc];
  v28 = *duration;
  v26 = *MEMORY[0x1E6960C70];
  v27 = *(MEMORY[0x1E6960C70] + 16);
  LOBYTE(v25) = 0;
  v23 = [(CAMVideoCaptureResult *)v22 initWithURL:v21 filteredLocalDestinationURL:0 duration:&v28 stillDisplayTime:&v26 dimensions:0 metadata:metadataCopy videoZoomFactor:1.0 reason:0 videoPreviewPixelBuffer:0 coordinationInfo:0 error:0 slowWriterFrameDrops:v25];

  _persistenceController = [(CAMTimelapseBackendController *)self _persistenceController];
  [_persistenceController videoRequest:v18 didCompleteCaptureWithResult:v23];
}

- (void)videoRequestDidCompleteRemotePersistence:(id)persistence withResponse:(id)response error:(id)error
{
  persistenceCopy = persistence;
  _transactionForPersistenceUUID = [(CAMTimelapseBackendController *)self _transactionForPersistenceUUID];
  persistenceUUID = [persistenceCopy persistenceUUID];
  [_transactionForPersistenceUUID removeObjectForKey:persistenceUUID];

  persistenceUUID2 = [persistenceCopy persistenceUUID];

  [(CAMNebulaKeepAliveController *)self->__keepAliveController stopKeepAliveForIdentifier:persistenceUUID2];
}

- (CGAffineTransform)_frameTransformForState:(SEL)state
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  v7 = a4;
  captureOrientation = [v7 captureOrientation];
  isCaptureMirrored = [v7 isCaptureMirrored];
  captureDevice = [v7 captureDevice];

  v12 = (captureDevice < 0xC) & (0xF02u >> captureDevice);
  if (captureOrientation > 2)
  {
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = 180;
    }

    if (v12)
    {
      v15 = 180;
    }

    else
    {
      v15 = 0;
    }

    if (captureOrientation != 3)
    {
      v15 = 0;
    }

    if (captureOrientation == 4)
    {
      v13 = v14;
    }

    else
    {
      v13 = v15;
    }
  }

  else if (captureOrientation == 1)
  {
    v13 = 90;
  }

  else if (captureOrientation == 2)
  {
    v13 = 270;
  }

  else
  {
    v13 = 0;
  }

  if (_frameTransformForState__onceToken != -1)
  {
    [CAMTimelapseBackendController _frameTransformForState:];
  }

  if (_frameTransformForState__frontCameraRotation)
  {
    v16 = (captureDevice < 0xC) & (0xF02u >> captureDevice);
  }

  else
  {
    v16 = 0;
  }

  if (v16 == 1)
  {
    v17 = _frameTransformForState__frontCameraRotation + v13;
    if (_frameTransformForState__frontCameraRotation + v13 > 359)
    {
      v17 -= 360;
    }

    if (v17 >= 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v17 + 360;
    }
  }

  if (v13)
  {
    CGAffineTransformMakeRotation(retstr, v13 * 3.14159265 / 180.0);
    v18 = *&retstr->c;
    *&t2.a = *&retstr->a;
    *&t2.c = v18;
    *&t2.tx = *&retstr->tx;
    result = UIIntegralTransform();
    v19 = *&v24.c;
    *&retstr->a = *&v24.a;
    *&retstr->c = v19;
    *&retstr->tx = *&v24.tx;
  }

  if (isCaptureMirrored)
  {
    t2.a = -1.0;
    t2.b = 0.0;
    t2.c = 0.0;
    t2.d = 1.0;
    t2.tx = 0.0;
    t2.ty = 0.0;
    v20 = *&retstr->c;
    *&v22.a = *&retstr->a;
    *&v22.c = v20;
    *&v22.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&v24, &v22, &t2);
    v21 = *&v24.c;
    *&retstr->a = *&v24.a;
    *&retstr->c = v21;
    *&retstr->tx = *&v24.tx;
  }

  return result;
}

uint64_t __57__CAMTimelapseBackendController__frameTransformForState___block_invoke()
{
  result = MGGetSInt32Answer();
  _frameTransformForState__frontCameraRotation = result;
  return result;
}

- (void)handleClientConnection:(id)connection
{
  v4 = MEMORY[0x1E69E96A0];
  v5 = MEMORY[0x1E69E96A0];
  dispatch_assert_queue_V2(v4);

  timelapseUUID = [(CAMTimelapseState *)self->__currentState timelapseUUID];
  v7 = [CAMTimelapseDiskUtilities readStateForTimelapseUUID:timelapseUUID mergeSecondaryState:1];

  [(CAMTimelapseBackendController *)self _setCurrentState:v7];
}

- (int)_pidForApplication:(id)application
{
  applicationCopy = application;
  v4 = -1;
  if (applicationCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = -1;
    v5 = dispatch_semaphore_create(0);
    v6 = objc_alloc_init(MEMORY[0x1E698D028]);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __52__CAMTimelapseBackendController__pidForApplication___block_invoke;
    v13 = &unk_1E76FEE68;
    v15 = &v16;
    v7 = v5;
    v14 = v7;
    [v6 applicationInfoForApplication:applicationCopy completion:&v10];
    v8 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v7, v8);
    [v6 invalidate];
    v4 = *(v17 + 6);

    _Block_object_dispose(&v16, 8);
  }

  return v4;
}

void __52__CAMTimelapseBackendController__pidForApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x1E698D018]];
  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 intValue];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_workQueue_setupCameraProcessMonitoringIfNecessary
{
  _workQueue = [(CAMTimelapseBackendController *)self _workQueue];
  dispatch_assert_queue_V2(_workQueue);

  if (!self->__applicationStateMonitor)
  {
    objc_initWeak(&location, self);
    v4 = [objc_alloc(MEMORY[0x1E698D028]) initWithBundleIDs:&unk_1F16C9D70 states:1];
    applicationStateMonitor = self->__applicationStateMonitor;
    self->__applicationStateMonitor = v4;

    v6 = self->__applicationStateMonitor;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__CAMTimelapseBackendController__workQueue_setupCameraProcessMonitoringIfNecessary__block_invoke;
    v7[3] = &unk_1E76FBF50;
    objc_copyWeak(&v8, &location);
    [(BKSApplicationStateMonitor *)v6 setHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __83__CAMTimelapseBackendController__workQueue_setupCameraProcessMonitoringIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698D010]];

  if (v5 && [v5 integerValue] == 1)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __83__CAMTimelapseBackendController__workQueue_setupCameraProcessMonitoringIfNecessary__block_invoke_2;
    v6[3] = &unk_1E76F77B0;
    v7 = WeakRetained;
    [v7 _dispatchToWorkQueueWithBlock:v6];
  }
}

void __83__CAMTimelapseBackendController__workQueue_setupCameraProcessMonitoringIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Resuming timelapse IO work because Camera has died", v4, 2u);
  }

  v3 = [*(a1 + 32) _movieWriter];
  [v3 setSuspended:0];
}

- (void)_workQueue_destroyApplicationStateMonitor
{
  _workQueue = [(CAMTimelapseBackendController *)self _workQueue];
  dispatch_assert_queue_V2(_workQueue);

  [(BKSApplicationStateMonitor *)self->__applicationStateMonitor invalidate];
  applicationStateMonitor = self->__applicationStateMonitor;
  self->__applicationStateMonitor = 0;
}

- (void)_permanentlyFailTimelapseUUID:(void *)a1 withState:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 fullDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Permanently deleting timelapse with state: %{public}@", v4, 0xCu);
}

- (void)_movieWrittenToFilePath:duration:metadata:state:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A3640000, v0, OS_LOG_TYPE_ERROR, "Error linking movie: %{public}@", v1, 0xCu);
}

@end