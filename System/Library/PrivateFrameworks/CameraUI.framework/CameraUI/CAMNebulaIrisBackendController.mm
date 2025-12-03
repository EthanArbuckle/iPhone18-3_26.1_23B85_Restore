@interface CAMNebulaIrisBackendController
- (BOOL)_coordinationQueue_isIOWorkSuspended;
- (BOOL)_extractIrisPropertiesFromAVAsset:(id)asset stillImageDisplayTime:(id *)time irisIdentifier:(id *)identifier;
- (BOOL)_removeItemAtURL:(id)l;
- (BOOL)_removeItemAtURL:(id)l maxAttempts:(int64_t)attempts;
- (CAMNebulaIrisBackendController)init;
- (CAMNebulaIrisBackendController)initWithPersistenceController:(id)controller keepAliveController:(id)aliveController;
- (id)_uniqueIdentifierForJob:(id)job;
- (id)_videoJobFromURL:(id)l;
- (unint64_t)_coordinationQueue_failureCountForVideoURL:(id)l;
- (void)_coordinationQueue_createJobsForCrashRecoveryIfNeeded;
- (void)_coordinationQueue_destroyApplicationStateMonitor;
- (void)_coordinationQueue_didCompleteExportJob:(id)job;
- (void)_coordinationQueue_didPermanentlyFinishJob:(id)job;
- (void)_coordinationQueue_enqueueAndTrackNewJob:(id)job;
- (void)_coordinationQueue_enqueueJobs:(id)jobs;
- (void)_coordinationQueue_enqueuePendingExportJobIfPossible;
- (void)_coordinationQueue_setCrashRecoveryNeeded:(BOOL)needed;
- (void)_coordinationQueue_setFailureCount:(unint64_t)count forVideoURL:(id)l;
- (void)_coordinationQueue_setIOWorkSuspended:(BOOL)suspended;
- (void)_coordinationQueue_setShouldCheckMarkerFileForIOWorkSuspension:(BOOL)suspension;
- (void)_coordinationQueue_setupCameraProcessingMonitoringIfNecessary;
- (void)_dispatchToCoordinationQueueAfterDelay:(double)delay withBlock:(id)block;
- (void)_dispatchToCoordinationQueueWithBlock:(id)block;
- (void)_dispatchToLinkWorkQueueAfterDelay:(double)delay withBlock:(id)block;
- (void)_dispatchToLinkWorkQueueWithBlock:(id)block;
- (void)_dispatchToQueue:(id)queue afterDelay:(double)delay withBlock:(id)block;
- (void)_dispatchToQueue:(id)queue withBlock:(id)block;
- (void)_linkWorkQueue_linkAndPersistSelfContainedVideo:(id)video;
- (void)dealloc;
- (void)enqueueIrisVideoJobs:(id)jobs;
- (void)handleClientConnection:(id)connection;
- (void)handleClientDisconnection:(id)disconnection;
- (void)performIrisCrashRecoveryForceFileSystemCheck:(BOOL)check;
- (void)persistenceController:(id)controller didGenerateVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request;
- (void)stillImageRequestDidCompleteVideoRemotePersistence:(id)persistence withResponse:(id)response error:(id)error;
@end

@implementation CAMNebulaIrisBackendController

- (CAMNebulaIrisBackendController)initWithPersistenceController:(id)controller keepAliveController:(id)aliveController
{
  controllerCopy = controller;
  aliveControllerCopy = aliveController;
  v38.receiver = self;
  v38.super_class = CAMNebulaIrisBackendController;
  v9 = [(CAMNebulaIrisBackendController *)&v38 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "CAMNebulaIrisBackendController initialized", buf, 2u);
    }

    objc_storeStrong(&v9->__persistenceController, controller);
    objc_storeStrong(&v9->__keepAliveController, aliveController);
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.camera.nebula.iris.coordination", v11);
    coordinationQueue = v9->__coordinationQueue;
    v9->__coordinationQueue = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_create("com.apple.camera.nebula.iris.link-work", v14);
    linkWorkQueue = v9->__linkWorkQueue;
    v9->__linkWorkQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingOrInFlightJobsByUniqueIdentifier = v9->__pendingOrInFlightJobsByUniqueIdentifier;
    v9->__pendingOrInFlightJobsByUniqueIdentifier = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingExportVideoJobs = v9->__pendingExportVideoJobs;
    v9->__pendingExportVideoJobs = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bundleIdentifiersByVideoPersistenceUUID = v9->__bundleIdentifiersByVideoPersistenceUUID;
    v9->__bundleIdentifiersByVideoPersistenceUUID = v21;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    clientConnections = v9->__clientConnections;
    v9->__clientConnections = weakObjectsHashTable;

    v9->__shouldCheckMarkerFileForIOWorkSuspension = 1;
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    transactionForPersistenceUUID = v9->__transactionForPersistenceUUID;
    v9->__transactionForPersistenceUUID = v25;

    objc_initWeak(buf, v9);
    _coordinationQueue = [(CAMNebulaIrisBackendController *)v9 _coordinationQueue];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __84__CAMNebulaIrisBackendController_initWithPersistenceController_keepAliveController___block_invoke;
    handler[3] = &unk_1E76F8388;
    objc_copyWeak(&v36, buf);
    notify_register_dispatch("com.apple.camera.nebulad.io.suspend", &v9->__notifyRegisterTokenSuspendIO, _coordinationQueue, handler);

    _coordinationQueue2 = [(CAMNebulaIrisBackendController *)v9 _coordinationQueue];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __84__CAMNebulaIrisBackendController_initWithPersistenceController_keepAliveController___block_invoke_2;
    v33[3] = &unk_1E76F8388;
    objc_copyWeak(&v34, buf);
    notify_register_dispatch("com.apple.camera.nebulad.io.resume", &v9->__notifyRegisterTokenResumeIO, _coordinationQueue2, v33);

    if (+[CAMIrisDiskUtilities hasPendingWork])
    {
      _coordinationQueue3 = [(CAMNebulaIrisBackendController *)v9 _coordinationQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__CAMNebulaIrisBackendController_initWithPersistenceController_keepAliveController___block_invoke_3;
      block[3] = &unk_1E76F77B0;
      v32 = v9;
      dispatch_sync(_coordinationQueue3, block);
    }

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }

  return v9;
}

void __84__CAMNebulaIrisBackendController_initWithPersistenceController_keepAliveController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _coordinationQueue_setIOWorkSuspended:1];
  [WeakRetained _coordinationQueue_setShouldCheckMarkerFileForIOWorkSuspension:0];
}

void __84__CAMNebulaIrisBackendController_initWithPersistenceController_keepAliveController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _coordinationQueue_setIOWorkSuspended:0];
  [WeakRetained _coordinationQueue_setShouldCheckMarkerFileForIOWorkSuspension:0];
}

- (CAMNebulaIrisBackendController)init
{
  [(CAMNebulaIrisBackendController *)self doesNotRecognizeSelector:a2];

  return [(CAMNebulaIrisBackendController *)self initWithPersistenceController:0 keepAliveController:0];
}

- (void)dealloc
{
  notify_cancel(self->__notifyRegisterTokenSuspendIO);
  notify_cancel(self->__notifyRegisterTokenResumeIO);
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CAMNebulaIrisBackendController_dealloc__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(_coordinationQueue, block);

  v4.receiver = self;
  v4.super_class = CAMNebulaIrisBackendController;
  [(CAMNebulaIrisBackendController *)&v4 dealloc];
}

- (void)_dispatchToQueue:(id)queue withBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v7 = os_transaction_create();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CAMNebulaIrisBackendController__dispatchToQueue_withBlock___block_invoke;
  v10[3] = &unk_1E76F83B0;
  v11 = v7;
  v12 = blockCopy;
  v8 = v7;
  v9 = blockCopy;
  dispatch_async(queueCopy, v10);
}

void __61__CAMNebulaIrisBackendController__dispatchToQueue_withBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)_dispatchToQueue:(id)queue afterDelay:(double)delay withBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v9 = os_transaction_create();
  v10 = dispatch_time(0, (delay * 1000000000.0));
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__CAMNebulaIrisBackendController__dispatchToQueue_afterDelay_withBlock___block_invoke;
  v13[3] = &unk_1E76F83B0;
  v14 = v9;
  v15 = blockCopy;
  v11 = v9;
  v12 = blockCopy;
  dispatch_after(v10, queueCopy, v13);
}

void __72__CAMNebulaIrisBackendController__dispatchToQueue_afterDelay_withBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)_dispatchToCoordinationQueueWithBlock:(id)block
{
  blockCopy = block;
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  [(CAMNebulaIrisBackendController *)self _dispatchToQueue:_coordinationQueue withBlock:blockCopy];
}

- (void)_dispatchToCoordinationQueueAfterDelay:(double)delay withBlock:(id)block
{
  blockCopy = block;
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  [(CAMNebulaIrisBackendController *)self _dispatchToQueue:_coordinationQueue afterDelay:blockCopy withBlock:delay];
}

- (void)_dispatchToLinkWorkQueueWithBlock:(id)block
{
  blockCopy = block;
  _linkWorkQueue = [(CAMNebulaIrisBackendController *)self _linkWorkQueue];
  [(CAMNebulaIrisBackendController *)self _dispatchToQueue:_linkWorkQueue withBlock:blockCopy];
}

- (void)_dispatchToLinkWorkQueueAfterDelay:(double)delay withBlock:(id)block
{
  blockCopy = block;
  _linkWorkQueue = [(CAMNebulaIrisBackendController *)self _linkWorkQueue];
  [(CAMNebulaIrisBackendController *)self _dispatchToQueue:_linkWorkQueue afterDelay:blockCopy withBlock:delay];
}

- (void)handleClientConnection:(id)connection
{
  objc_initWeak(&location, connection);
  v4 = MEMORY[0x1E69E96A0];
  v5 = MEMORY[0x1E69E96A0];
  dispatch_assert_queue_V2(v4);

  _clientConnections = [(CAMNebulaIrisBackendController *)self _clientConnections];
  v7 = objc_loadWeakRetained(&location);
  [_clientConnections addObject:v7];

  objc_destroyWeak(&location);
}

- (void)handleClientDisconnection:(id)disconnection
{
  objc_initWeak(&location, disconnection);
  v4 = MEMORY[0x1E69E96A0];
  v5 = MEMORY[0x1E69E96A0];
  dispatch_assert_queue_V2(v4);

  _clientConnections = [(CAMNebulaIrisBackendController *)self _clientConnections];
  v7 = objc_loadWeakRetained(&location);
  [_clientConnections removeObject:v7];

  objc_destroyWeak(&location);
}

- (void)performIrisCrashRecoveryForceFileSystemCheck:(BOOL)check
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__CAMNebulaIrisBackendController_performIrisCrashRecoveryForceFileSystemCheck___block_invoke;
  v5[3] = &unk_1E76F7850;
  checkCopy = check;
  v5[4] = self;
  [(CAMNebulaIrisBackendController *)self _dispatchToCoordinationQueueWithBlock:v5];
}

uint64_t __79__CAMNebulaIrisBackendController_performIrisCrashRecoveryForceFileSystemCheck___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _coordinationQueue_setCrashRecoveryNeeded:1];
  }

  v2 = *(a1 + 32);

  return [v2 _coordinationQueue_createJobsForCrashRecoveryIfNeeded];
}

- (BOOL)_coordinationQueue_isIOWorkSuspended
{
  if ([(CAMNebulaIrisBackendController *)self _coordinationQueue_shouldCheckMarkerFileForIOWorkSuspension])
  {
    if (+[CAMProtectionController isCameraPerformingHighPriorityDiskActivity])
    {
      [(CAMNebulaIrisBackendController *)self _coordinationQueue_setIOWorkSuspended:1];
    }

    [(CAMNebulaIrisBackendController *)self _coordinationQueue_setShouldCheckMarkerFileForIOWorkSuspension:0];
  }

  return self->__IOWorkSuspended;
}

- (void)_coordinationQueue_setIOWorkSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  if (self->__IOWorkSuspended != suspendedCopy)
  {
    self->__IOWorkSuspended = suspendedCopy;
    _linkWorkQueue = [(CAMNebulaIrisBackendController *)self _linkWorkQueue];
    v7 = _linkWorkQueue;
    if (suspendedCopy)
    {
      dispatch_suspend(_linkWorkQueue);

      _activeExportSession = [(CAMNebulaIrisBackendController *)self _activeExportSession];
      if (_activeExportSession)
      {
        [_activeExportSession cancelExport];
      }

      [(CAMNebulaIrisBackendController *)self _coordinationQueue_setupCameraProcessingMonitoringIfNecessary];
    }

    else
    {
      dispatch_resume(_linkWorkQueue);

      [(CAMNebulaIrisBackendController *)self _coordinationQueue_enqueuePendingExportJobIfPossible];

      [(CAMNebulaIrisBackendController *)self _coordinationQueue_createJobsForCrashRecoveryIfNeeded];
    }
  }
}

- (void)_coordinationQueue_setShouldCheckMarkerFileForIOWorkSuspension:(BOOL)suspension
{
  suspensionCopy = suspension;
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  if (self->__shouldCheckMarkerFileForIOWorkSuspension != suspensionCopy)
  {
    self->__shouldCheckMarkerFileForIOWorkSuspension = suspensionCopy;
  }
}

- (void)enqueueIrisVideoJobs:(id)jobs
{
  jobsCopy = jobs;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CAMNebulaIrisBackendController_enqueueIrisVideoJobs___block_invoke;
  v6[3] = &unk_1E76F7960;
  v6[4] = self;
  v7 = jobsCopy;
  v5 = jobsCopy;
  [(CAMNebulaIrisBackendController *)self _dispatchToCoordinationQueueWithBlock:v6];
}

- (void)_coordinationQueue_enqueueJobs:(id)jobs
{
  v16 = *MEMORY[0x1E69E9840];
  jobsCopy = jobs;
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = jobsCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CAMNebulaIrisBackendController *)self _coordinationQueue_enqueueAndTrackNewJob:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(CAMNebulaIrisBackendController *)self _coordinationQueue_enqueuePendingExportJobIfPossible];
}

- (void)_coordinationQueue_enqueueAndTrackNewJob:(id)job
{
  v16 = *MEMORY[0x1E69E9840];
  jobCopy = job;
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  filteredVideoURL = [jobCopy filteredVideoURL];
  filterName = [jobCopy filterName];
  v8 = [(CAMNebulaIrisBackendController *)self _uniqueIdentifierForJob:jobCopy];
  _pendingOrInFlightJobsByUniqueIdentifier = [(CAMNebulaIrisBackendController *)self _pendingOrInFlightJobsByUniqueIdentifier];
  v10 = [_pendingOrInFlightJobsByUniqueIdentifier objectForKeyedSubscript:v8];
  if (v10)
  {
    _pendingExportVideoJobs = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(_pendingExportVideoJobs, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_1A3640000, _pendingExportVideoJobs, OS_LOG_TYPE_DEFAULT, "Ignoring incoming job because we already have one in-flight for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    [_pendingOrInFlightJobsByUniqueIdentifier setObject:jobCopy forKeyedSubscript:v8];
    [(CAMNebulaKeepAliveController *)self->__keepAliveController startKeepAliveForIdentifier:v8];
    if (!filterName || filteredVideoURL)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __75__CAMNebulaIrisBackendController__coordinationQueue_enqueueAndTrackNewJob___block_invoke;
      v12[3] = &unk_1E76F7960;
      v12[4] = self;
      v13 = jobCopy;
      [(CAMNebulaIrisBackendController *)self _dispatchToLinkWorkQueueWithBlock:v12];

      goto LABEL_8;
    }

    _pendingExportVideoJobs = [(CAMNebulaIrisBackendController *)self _pendingExportVideoJobs];
    [_pendingExportVideoJobs addObject:jobCopy];
  }

LABEL_8:
}

- (void)_coordinationQueue_didPermanentlyFinishJob:(id)job
{
  jobCopy = job;
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  v7 = [(CAMNebulaIrisBackendController *)self _uniqueIdentifierForJob:jobCopy];

  _pendingOrInFlightJobsByUniqueIdentifier = [(CAMNebulaIrisBackendController *)self _pendingOrInFlightJobsByUniqueIdentifier];
  [_pendingOrInFlightJobsByUniqueIdentifier removeObjectForKey:v7];
  [(CAMNebulaKeepAliveController *)self->__keepAliveController stopKeepAliveForIdentifier:v7];
  [(CAMNebulaIrisBackendController *)self _coordinationQueue_createJobsForCrashRecoveryIfNeeded];
}

- (id)_uniqueIdentifierForJob:(id)job
{
  jobCopy = job;
  videoURL = [jobCopy videoURL];
  filteredVideoURL = [jobCopy filteredVideoURL];

  if (filteredVideoURL)
  {
    v6 = filteredVideoURL;
  }

  else
  {
    v6 = videoURL;
  }

  path = [v6 path];

  return path;
}

- (void)_linkWorkQueue_linkAndPersistSelfContainedVideo:(id)video
{
  videoCopy = video;
  _linkWorkQueue = [(CAMNebulaIrisBackendController *)self _linkWorkQueue];
  dispatch_assert_queue_V2(_linkWorkQueue);

  videoURL = [videoCopy videoURL];
  filteredVideoURL = [videoCopy filteredVideoURL];
  stillImagePersistenceUUID = [videoCopy stillImagePersistenceUUID];
  videoPersistenceUUID = [videoCopy videoPersistenceUUID];
  irisIdentifier = [videoCopy irisIdentifier];
  captureDevice = [videoCopy captureDevice];
  captureOrientation = [videoCopy captureOrientation];
  v74 = 0uLL;
  v75 = 0;
  v49 = irisIdentifier;
  if (videoCopy)
  {
    [videoCopy duration];
    v72 = 0uLL;
    v73 = 0;
    [videoCopy stillImageDisplayTime];
  }

  else
  {
    v72 = 0uLL;
    v73 = 0;
  }

  [videoCopy captureTime];
  v12 = v11;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v44 = videoPersistenceUUID;
  v14 = +[CAMPersistenceController uniquePathForAssetWithUUID:captureTime:extension:usingIncomingDirectory:](CAMPersistenceController, "uniquePathForAssetWithUUID:captureTime:extension:usingIncomingDirectory:", videoPersistenceUUID, @"MOV", +[CAMCaptureRequest shouldPersistToIncomingDirectoryWithPersistenceOptions:temporaryPersistenceOptions:](CAMCaptureRequest, "shouldPersistToIncomingDirectoryWithPersistenceOptions:temporaryPersistenceOptions:", [videoCopy persistenceOptions], objc_msgSend(videoCopy, "temporaryPersistenceOptions")), v12);
  v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0];
  v46 = v14;
  v47 = defaultManager;
  if (filteredVideoURL)
  {
    v16 = [MEMORY[0x1E69BF178] filteredVideoPathForRecordedLivePhotoVideoPath:v14];
    v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16 isDirectory:0];
    v71 = 0;
    v18 = [defaultManager linkItemAtURL:filteredVideoURL toURL:v17 error:&v71];
    v19 = v71;

    if (!v18)
    {
      v45 = v19;
      v37 = 0;
      v36 = 1;
      goto LABEL_17;
    }

    defaultManager = v47;
  }

  else
  {
    v19 = 0;
    v17 = 0;
  }

  v45 = v19;
  v70 = 0;
  v20 = [defaultManager linkItemAtURL:videoURL toURL:v15 error:&v70];
  v43 = v70;
  if (!v20)
  {
    v36 = 0;
    LOBYTE(v18) = 1;
    v37 = v43;
LABEL_17:
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __82__CAMNebulaIrisBackendController__linkWorkQueue_linkAndPersistSelfContainedVideo___block_invoke_3;
    v50[3] = &unk_1E76FBF00;
    v50[4] = self;
    v51 = v15;
    v17 = v17;
    v52 = v17;
    v53 = videoURL;
    v28 = v15;
    v33 = v47;
    v54 = v47;
    v59 = v18;
    v35 = v37;
    v55 = v35;
    v60 = v36;
    v56 = filteredVideoURL;
    v34 = v45;
    v57 = v34;
    v58 = videoCopy;
    [(CAMNebulaIrisBackendController *)self _dispatchToCoordinationQueueWithBlock:v50];

    v23 = v44;
    v32 = v49;
    goto LABEL_18;
  }

  v40 = videoURL;
  [(CAMNebulaIrisBackendController *)self _removeItemAtURL:videoURL maxAttempts:3];
  if (filteredVideoURL)
  {
    [(CAMNebulaIrisBackendController *)self _removeItemAtURL:filteredVideoURL maxAttempts:3];
  }

  if ([videoCopy isCTMVideo])
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  v39 = filteredVideoURL;
  v22 = objc_alloc_init(CAMMutableStillImageCaptureRequest);
  [(CAMMutableStillImageCaptureRequest *)v22 setCaptureOrientation:captureOrientation];
  [(CAMMutableStillImageCaptureRequest *)v22 setCaptureDevice:captureDevice];
  [(CAMMutableStillImageCaptureRequest *)v22 setPersistenceUUID:stillImagePersistenceUUID];
  v23 = v44;
  [(CAMMutableStillImageCaptureRequest *)v22 setVideoPersistenceUUID:v44];
  [(CAMMutableStillImageCaptureRequest *)v22 setIrisIdentifier:v49];
  -[CAMMutableStillImageCaptureRequest setPersistenceOptions:](v22, "setPersistenceOptions:", [videoCopy persistenceOptions]);
  -[CAMMutableStillImageCaptureRequest setTemporaryPersistenceOptions:](v22, "setTemporaryPersistenceOptions:", [videoCopy temporaryPersistenceOptions]);
  [(CAMMutableStillImageCaptureRequest *)v22 setCtmCaptureType:v21];
  v42 = os_transaction_create();
  _transactionForPersistenceUUID = [(CAMNebulaIrisBackendController *)self _transactionForPersistenceUUID];
  [_transactionForPersistenceUUID setObject:v42 forKeyedSubscript:v44];

  [(CAMMutableStillImageCaptureRequest *)v22 setDelegate:self];
  v25 = [CAMVideoCaptureResult alloc];
  v68 = v74;
  v69 = v75;
  v66 = v72;
  v67 = v73;
  LOBYTE(v38) = 0;
  v26 = [(CAMVideoCaptureResult *)v25 initWithURL:v15 filteredLocalDestinationURL:v17 duration:&v68 stillDisplayTime:&v66 dimensions:0 metadata:0 videoZoomFactor:1.0 reason:0 videoPreviewPixelBuffer:0 coordinationInfo:0 error:0 slowWriterFrameDrops:v38];
  _keepAliveController = [(CAMNebulaIrisBackendController *)self _keepAliveController];
  [_keepAliveController startKeepAliveForIdentifier:v44];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __82__CAMNebulaIrisBackendController__linkWorkQueue_linkAndPersistSelfContainedVideo___block_invoke;
  v63[3] = &unk_1E76F7938;
  v63[4] = self;
  v64 = v44;
  v28 = v15;
  v29 = videoCopy;
  v65 = v29;
  [(CAMNebulaIrisBackendController *)self _dispatchToMainQueueWithBlock:v63];
  _persistenceController = [(CAMNebulaIrisBackendController *)self _persistenceController];
  [_persistenceController stillImageRequest:v22 didCompleteVideoCaptureWithResult:v26];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __82__CAMNebulaIrisBackendController__linkWorkQueue_linkAndPersistSelfContainedVideo___block_invoke_2;
  v61[3] = &unk_1E76F7960;
  v61[4] = self;
  v62 = v29;
  selfCopy = self;
  v32 = v49;
  [(CAMNebulaIrisBackendController *)selfCopy _dispatchToCoordinationQueueWithBlock:v61];

  filteredVideoURL = v39;
  videoURL = v40;
  v33 = v47;
  v34 = v45;
  v35 = v43;
LABEL_18:
}

void __82__CAMNebulaIrisBackendController__linkWorkQueue_linkAndPersistSelfContainedVideo___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 48) bundleIdentifier];
  v2 = [*(a1 + 32) _bundleIdentifiersByVideoPersistenceUUID];
  [v2 setObject:v3 forKeyedSubscript:*(a1 + 40)];
}

void __82__CAMNebulaIrisBackendController__linkWorkQueue_linkAndPersistSelfContainedVideo___block_invoke_3(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _removeItemAtURL:*(a1 + 40) maxAttempts:3];
  v2 = *(a1 + 48);
  if (v2)
  {
    [*(a1 + 32) _removeItemAtURL:v2 maxAttempts:3];
  }

  v3 = [*(a1 + 32) _coordinationQueue_failureCountForVideoURL:*(a1 + 56)] + 1;
  if (v3 <= 3 && (v4 = *(a1 + 64), [*(a1 + 56) path], v5 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v4, "fileExistsAtPath:", v5), v5, v4))
  {
    if (*(a1 + 104) == 1)
    {
      v6 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 56);
        v19 = *(a1 + 40);
        v20 = *(a1 + 72);
        *buf = 138544130;
        v27 = v18;
        v28 = 2114;
        v29 = v19;
        v30 = 2048;
        v31 = v3;
        v32 = 2114;
        v33 = v20;
        _os_log_error_impl(&dword_1A3640000, v6, OS_LOG_TYPE_ERROR, "Failed to link %{public}@ to %{public}@ (%lu attempts): %{public}@ (rescheduling)", buf, 0x2Au);
      }
    }

    if (*(a1 + 105) == 1)
    {
      v7 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 48);
        v22 = *(a1 + 80);
        v23 = *(a1 + 88);
        *buf = 138544130;
        v27 = v22;
        v28 = 2114;
        v29 = v21;
        v30 = 2048;
        v31 = v3;
        v32 = 2114;
        v33 = v23;
        _os_log_error_impl(&dword_1A3640000, v7, OS_LOG_TYPE_ERROR, "Failed to link %{public}@ to %{public}@ (%lu attempts): %{public}@ (rescheduling)", buf, 0x2Au);
      }
    }

    [*(a1 + 32) _coordinationQueue_setFailureCount:v3 forVideoURL:*(a1 + 56)];
    v8 = *(a1 + 32);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __82__CAMNebulaIrisBackendController__linkWorkQueue_linkAndPersistSelfContainedVideo___block_invoke_23;
    v24[3] = &unk_1E76F7960;
    v24[4] = v8;
    v25 = *(a1 + 96);
    [v8 _dispatchToLinkWorkQueueAfterDelay:v24 withBlock:0.1];
  }

  else
  {
    if (*(a1 + 104) == 1)
    {
      v9 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 56);
        v11 = *(a1 + 40);
        v12 = *(a1 + 72);
        *buf = 134218754;
        v27 = v3;
        v28 = 2114;
        v29 = v10;
        v30 = 2114;
        v31 = v11;
        v32 = 2114;
        v33 = v12;
        _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Deleting video after %lu attempts to link %{public}@ to %{public}@: %{public}@", buf, 0x2Au);
      }
    }

    if (*(a1 + 105) == 1)
    {
      v13 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 48);
        v15 = *(a1 + 80);
        v16 = *(a1 + 88);
        *buf = 134218754;
        v27 = v3;
        v28 = 2114;
        v29 = v15;
        v30 = 2114;
        v31 = v14;
        v32 = 2114;
        v33 = v16;
        _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "Deleting video after %lu attempts to link %{public}@ to %{public}@: %{public}@", buf, 0x2Au);
      }
    }

    [*(a1 + 32) _removeItemAtURL:*(a1 + 56) maxAttempts:3];
    v17 = *(a1 + 80);
    if (v17)
    {
      [*(a1 + 32) _removeItemAtURL:v17 maxAttempts:3];
    }

    [*(a1 + 32) _coordinationQueue_didPermanentlyFinishJob:*(a1 + 96)];
  }
}

- (void)persistenceController:(id)controller didGenerateVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request
{
  resultCopy = result;
  requestCopy = request;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __124__CAMNebulaIrisBackendController_persistenceController_didGenerateVideoLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke;
  v12[3] = &unk_1E76F7938;
  v13 = requestCopy;
  selfCopy = self;
  v15 = resultCopy;
  v10 = resultCopy;
  v11 = requestCopy;
  [(CAMNebulaIrisBackendController *)self _dispatchToMainQueueWithBlock:v12];
}

void __124__CAMNebulaIrisBackendController_persistenceController_didGenerateVideoLocalPersistenceResult_forCaptureResult_fromRequest___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [v2 videoPersistenceUUID];
  v4 = [*(a1 + 40) _bundleIdentifiersByVideoPersistenceUUID];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [*(a1 + 40) _bundleIdentifiersByVideoPersistenceUUID];
  [v6 setObject:0 forKeyedSubscript:v3];

  v7 = [*(a1 + 40) _clientConnections];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v12 bundleIdentifier];
        if ([v13 isEqualToString:v5])
        {
          [v12 nebulaDaemonDidCompleteLocalVideoPersistenceWithResult:*(a1 + 48)];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)stillImageRequestDidCompleteVideoRemotePersistence:(id)persistence withResponse:(id)response error:(id)error
{
  videoPersistenceUUID = [persistence videoPersistenceUUID];
  _keepAliveController = [(CAMNebulaIrisBackendController *)self _keepAliveController];
  [_keepAliveController stopKeepAliveForIdentifier:videoPersistenceUUID];
  _transactionForPersistenceUUID = [(CAMNebulaIrisBackendController *)self _transactionForPersistenceUUID];
  [_transactionForPersistenceUUID removeObjectForKey:videoPersistenceUUID];
}

- (void)_coordinationQueue_enqueuePendingExportJobIfPossible
{
  v50 = *MEMORY[0x1E69E9840];
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  if (![(CAMNebulaIrisBackendController *)self _coordinationQueue_isIOWorkSuspended])
  {
    _activeExportSession = [(CAMNebulaIrisBackendController *)self _activeExportSession];
    if (!_activeExportSession)
    {
      _pendingExportVideoJobs = [(CAMNebulaIrisBackendController *)self _pendingExportVideoJobs];
      firstObject = [_pendingExportVideoJobs firstObject];
      if (firstObject)
      {
        [_pendingExportVideoJobs removeObjectAtIndex:0];
        videoURL = [firstObject videoURL];
        filterName = [firstObject filterName];
        if (filterName)
        {
          v9 = +[CAMIrisDiskUtilities videoPathExtension];
          uRLByDeletingPathExtension = [videoURL URLByDeletingPathExtension];
          v11 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"FILTERED"];
          v36 = v9;
          v12 = [v11 URLByAppendingPathExtension:v9];

          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v14 = v12;
          path = [v12 path];
          LODWORD(v12) = [defaultManager fileExistsAtPath:path];

          if (v12)
          {
            v16 = os_log_create("com.apple.camera", "Nebula");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v14;
              _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "Deleting export file at %{public}@ before re-exporting", buf, 0xCu);
            }

            [(CAMNebulaIrisBackendController *)self _removeItemAtURL:v14 maxAttempts:3];
          }

          v37 = videoURL;
          v17 = [MEMORY[0x1E6987E28] assetWithURL:videoURL];
          v38 = filterName;
          v18 = [MEMORY[0x1E695F648] filterWithName:filterName];
          v35 = v18;
          if (v18)
          {
            v19 = MEMORY[0x1E6988060];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __86__CAMNebulaIrisBackendController__coordinationQueue_enqueuePendingExportJobIfPossible__block_invoke_30;
            v43[3] = &unk_1E76FBF28;
            v44 = v18;
            v20 = [v19 videoCompositionWithAsset:v17 applyingCIFiltersWithHandler:v43];
            v21 = v44;
          }

          else
          {
            v21 = os_log_create("com.apple.camera", "Nebula");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [CAMNebulaIrisBackendController _coordinationQueue_enqueuePendingExportJobIfPossible];
            }

            v20 = 0;
          }

          v23 = [v17 tracksWithMediaType:*MEMORY[0x1E6987608]];
          firstObject2 = [v23 firstObject];

          [firstObject2 dimensions];
          v27 = 0uLL;
          v48 = 0u;
          v49 = 0u;
          *buf = 0u;
          v28 = 0uLL;
          if (firstObject2)
          {
            v33 = v26;
            v34 = v25;
            [firstObject2 preferredTransform];
            v26 = v33;
            v25 = v34;
            v27 = *buf;
            v28 = v48;
          }

          [v20 setRenderSize:{vabsq_f64(vmlaq_n_f64(vmulq_n_f64(v28, v26), v27, v25))}];
          v29 = [MEMORY[0x1E6987E60] exportSessionWithAsset:v17 presetName:*MEMORY[0x1E69872E0]];
          [v29 setOutputFileType:*MEMORY[0x1E69874C0]];
          v30 = v14;
          [v29 setOutputURL:v14];
          [v29 setVideoComposition:v20];
          [(CAMNebulaIrisBackendController *)self _setActiveExportSession:v29];
          v31 = os_transaction_create();
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __86__CAMNebulaIrisBackendController__coordinationQueue_enqueuePendingExportJobIfPossible__block_invoke_34;
          v39[3] = &unk_1E76F7938;
          v40 = v31;
          selfCopy = self;
          v42 = firstObject;
          v32 = v31;
          [v29 exportAsynchronouslyWithCompletionHandler:v39];

          videoURL = v37;
          filterName = v38;
        }

        else
        {
          v22 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = videoURL;
            _os_log_impl(&dword_1A3640000, v22, OS_LOG_TYPE_DEFAULT, "Attempting to export a video with no filtering information, marking job with URL %{public}@ as permanently finished!", buf, 0xCu);
          }

          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __86__CAMNebulaIrisBackendController__coordinationQueue_enqueuePendingExportJobIfPossible__block_invoke;
          v45[3] = &unk_1E76F7960;
          v45[4] = self;
          v46 = firstObject;
          [(CAMNebulaIrisBackendController *)self _dispatchToCoordinationQueueWithBlock:v45];
        }
      }
    }
  }
}

void __86__CAMNebulaIrisBackendController__coordinationQueue_enqueuePendingExportJobIfPossible__block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 sourceImage];
  [*(a1 + 32) setValue:v5 forKey:*MEMORY[0x1E695FAB0]];
  v4 = [*(a1 + 32) outputImage];
  [v3 finishWithImage:v4 context:0];
}

void __86__CAMNebulaIrisBackendController__coordinationQueue_enqueuePendingExportJobIfPossible__block_invoke_34(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __86__CAMNebulaIrisBackendController__coordinationQueue_enqueuePendingExportJobIfPossible__block_invoke_2;
  v2[3] = &unk_1E76F7960;
  v2[4] = v1;
  v3 = *(a1 + 48);
  [v1 _dispatchToCoordinationQueueWithBlock:v2];
}

- (void)_coordinationQueue_didCompleteExportJob:(id)job
{
  v41 = *MEMORY[0x1E69E9840];
  jobCopy = job;
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  _activeExportSession = [(CAMNebulaIrisBackendController *)self _activeExportSession];
  [(CAMNebulaIrisBackendController *)self _setActiveExportSession:0];
  status = [_activeExportSession status];
  error = [_activeExportSession error];
  videoURL = [jobCopy videoURL];
  outputURL = [_activeExportSession outputURL];
  if (status <= 2)
  {
    if (status >= 3)
    {
      goto LABEL_27;
    }

    v11 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      *&buf[4] = status;
      *&buf[12] = 2114;
      *&buf[14] = _activeExportSession;
      *&buf[22] = 2114;
      v40 = videoURL;
      _os_log_error_impl(&dword_1A3640000, v11, OS_LOG_TYPE_ERROR, "Unhandled status case %ld for completed exportSession %{public}@ (%{public}@)", buf, 0x20u);
    }

    goto LABEL_5;
  }

  if (status == 3)
  {
    [(CAMNebulaIrisBackendController *)self _coordinationQueue_setFailureCount:0 forVideoURL:videoURL];
    v22 = [CAMIrisVideoJob alloc];
    stillImagePersistenceUUID = [jobCopy stillImagePersistenceUUID];
    videoPersistenceUUID = [jobCopy videoPersistenceUUID];
    irisIdentifier = [jobCopy irisIdentifier];
    captureDevice = [jobCopy captureDevice];
    captureOrientation = [jobCopy captureOrientation];
    if (jobCopy)
    {
      [jobCopy duration];
      [jobCopy stillImageDisplayTime];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      memset(v38, 0, sizeof(v38));
    }

    [jobCopy captureTime];
    v25 = v24;
    filterName = [jobCopy filterName];
    persistenceOptions = [jobCopy persistenceOptions];
    temporaryPersistenceOptions = [jobCopy temporaryPersistenceOptions];
    bundleIdentifier = [jobCopy bundleIdentifier];
    v29 = [(CAMIrisVideoJob *)v22 initWithVideoURL:videoURL stillImagePersistenceUUID:stillImagePersistenceUUID videoPersistenceUUID:videoPersistenceUUID irisIdentifier:irisIdentifier captureDevice:captureDevice captureOrientation:captureOrientation duration:v25 stillImageDisplayTime:buf captureTime:v38 captureError:0 filterName:filterName filteredVideoURL:outputURL persistenceOptions:persistenceOptions temporaryPersistenceOptions:temporaryPersistenceOptions bundleIdentifier:bundleIdentifier];

    [(CAMNebulaIrisBackendController *)self _coordinationQueue_enqueueAndTrackNewJob:v29];
    [(CAMNebulaIrisBackendController *)self _coordinationQueue_didPermanentlyFinishJob:jobCopy];

    goto LABEL_27;
  }

  if (status == 5)
  {
    v11 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = videoURL;
      v18 = "Cancelled export session for %{public}@";
      v19 = v11;
      v20 = 12;
      goto LABEL_21;
    }

LABEL_22:

    [(CAMNebulaIrisBackendController *)self _removeItemAtURL:outputURL maxAttempts:3];
    _pendingExportVideoJobs = [(CAMNebulaIrisBackendController *)self _pendingExportVideoJobs];
    [_pendingExportVideoJobs addObject:jobCopy];

    goto LABEL_27;
  }

  if (status != 4)
  {
    goto LABEL_27;
  }

  code = [error code];
  v11 = os_log_create("com.apple.camera", "Nebula");
  v17 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (code == -11847)
  {
    if (v17)
    {
      *buf = 138543618;
      *&buf[4] = videoURL;
      *&buf[12] = 2114;
      *&buf[14] = error;
      v18 = "Export of %{public}@ was interrupted (%{public}@).";
      v19 = v11;
      v20 = 22;
LABEL_21:
      _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (v17)
  {
    *buf = 138543874;
    *&buf[4] = videoURL;
    *&buf[12] = 2114;
    *&buf[14] = outputURL;
    *&buf[22] = 2114;
    v40 = error;
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Export of %{public}@ to %{public}@ failed (%{public}@).", buf, 0x20u);
  }

LABEL_5:

  [(CAMNebulaIrisBackendController *)self _removeItemAtURL:outputURL maxAttempts:3];
  v12 = [(CAMNebulaIrisBackendController *)self _coordinationQueue_failureCountForVideoURL:videoURL]+ 1;
  if (v12 <= 3 && ([MEMORY[0x1E696AC08] defaultManager], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(videoURL, "path"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "fileExistsAtPath:", v14), v14, v13, v15))
  {
    [(CAMNebulaIrisBackendController *)self _coordinationQueue_setFailureCount:v12 forVideoURL:videoURL];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __74__CAMNebulaIrisBackendController__coordinationQueue_didCompleteExportJob___block_invoke;
    v36[3] = &unk_1E76F7960;
    v36[4] = self;
    v37 = jobCopy;
    [(CAMNebulaIrisBackendController *)self _dispatchToCoordinationQueueAfterDelay:v36 withBlock:0.1];
  }

  else
  {
    v21 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = videoURL;
      *&buf[22] = 2114;
      v40 = outputURL;
      _os_log_impl(&dword_1A3640000, v21, OS_LOG_TYPE_DEFAULT, "Deleting video after %lu attempts to export %{public}@ to %{public}@", buf, 0x20u);
    }

    [(CAMNebulaIrisBackendController *)self _removeItemAtURL:videoURL maxAttempts:3];
    [(CAMNebulaIrisBackendController *)self _coordinationQueue_didPermanentlyFinishJob:jobCopy];
  }

LABEL_27:
  [(CAMNebulaIrisBackendController *)self _coordinationQueue_enqueuePendingExportJobIfPossible];
}

void __74__CAMNebulaIrisBackendController__coordinationQueue_didCompleteExportJob___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _pendingExportVideoJobs];
  [v2 addObject:*(a1 + 40)];
  [*(a1 + 32) _coordinationQueue_enqueuePendingExportJobIfPossible];
}

- (void)_coordinationQueue_setCrashRecoveryNeeded:(BOOL)needed
{
  neededCopy = needed;
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  if (self->__crashRecoveryNeeded != neededCopy)
  {
    self->__crashRecoveryNeeded = neededCopy;
    keepAliveController = self->__keepAliveController;
    if (neededCopy)
    {

      [(CAMNebulaKeepAliveController *)keepAliveController startKeepAliveForIdentifier:@"CAMNebulaIrisBackendControllerPendingCrashRecovery"];
    }

    else
    {

      [(CAMNebulaKeepAliveController *)keepAliveController stopKeepAliveForIdentifier:@"CAMNebulaIrisBackendControllerPendingCrashRecovery"];
    }
  }
}

- (void)_coordinationQueue_createJobsForCrashRecoveryIfNeeded
{
  v103 = *MEMORY[0x1E69E9840];
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  if ([(CAMNebulaIrisBackendController *)self _coordinationQueue_isCrashRecoveryNeeded])
  {
    _pendingOrInFlightJobsByUniqueIdentifier = [(CAMNebulaIrisBackendController *)self _pendingOrInFlightJobsByUniqueIdentifier];
    if (![_pendingOrInFlightJobsByUniqueIdentifier count] && !-[CAMNebulaIrisBackendController _coordinationQueue_isIOWorkSuspended](self, "_coordinationQueue_isIOWorkSuspended") && !+[CAMProtectionController isCameraPerformingHighPriorityDiskActivity](CAMProtectionController, "isCameraPerformingHighPriorityDiskActivity"))
    {
      v5 = [CAMIrisDiskUtilities irisVideoDirectoryPathCreateIfNeeded:0];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v93 = 0;
      v69 = v5;
      v7 = [defaultManager contentsOfDirectoryAtPath:v5 error:&v93];
      v8 = v93;

      if (v8)
      {
        v9 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v100 = v69;
          v101 = 2114;
          v102 = v8;
          _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get contents of %{public}@: %{public}@", buf, 0x16u);
        }

        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v92 = 0;
        v11 = [defaultManager2 contentsOfDirectoryAtPath:v69 error:&v92];
        v12 = v92;

        if (v12)
        {
          v13 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v100 = v69;
            v101 = 2114;
            v102 = v12;
            _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "Failed second attempt to get contents of %{public}@: %{public}@", buf, 0x16u);
          }
        }
      }

      else
      {
        v12 = 0;
        v11 = v7;
      }

      if ([v11 count])
      {
        v60 = v12;
        v62 = _pendingOrInFlightJobsByUniqueIdentifier;
        v65 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v70 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v71 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v64 = +[CAMIrisDiskUtilities videoPathExtension];
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v61 = v11;
        obj = v11;
        v14 = [obj countByEnumeratingWithState:&v88 objects:v98 count:16];
        if (!v14)
        {
          goto LABEL_28;
        }

        v15 = v14;
        v16 = *v89;
        while (1)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v89 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = [v69 stringByAppendingPathComponent:*(*(&v88 + 1) + 8 * i)];
            v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18];
            pathExtension = [v19 pathExtension];
            uRLByDeletingPathExtension = [v19 URLByDeletingPathExtension];
            pathExtension2 = [uRLByDeletingPathExtension pathExtension];

            if ([pathExtension2 isEqualToString:@"FILTERED"])
            {
              v23 = os_log_create("com.apple.camera", "Nebula");
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v100 = v19;
                _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "Found a filtered video during crash recovery. Deleting and re-creating from the recorded %{public}@", buf, 0xCu);
              }

              v24 = v71;
LABEL_23:
              [v24 addObject:v19];
              goto LABEL_26;
            }

            if ([pathExtension isEqualToString:v64])
            {
              v25 = [CAMIrisDiskUtilities isValidVideoDestinationPath:v18];
              v24 = v70;
              if (v25)
              {
                goto LABEL_23;
              }
            }

LABEL_26:
          }

          v15 = [obj countByEnumeratingWithState:&v88 objects:v98 count:16];
          if (!v15)
          {
LABEL_28:

            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            obja = [v65 copy];
            v26 = [obja countByEnumeratingWithState:&v84 objects:v97 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v85;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v85 != v28)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v30 = *(*(&v84 + 1) + 8 * j);
                  uRLByDeletingPathExtension2 = [v30 URLByDeletingPathExtension];
                  if ([v70 containsObject:uRLByDeletingPathExtension2])
                  {
                    v32 = os_log_create("com.apple.camera", "Nebula");
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      v100 = uRLByDeletingPathExtension2;
                      _os_log_impl(&dword_1A3640000, v32, OS_LOG_TYPE_DEFAULT, "Found both an exported video and recorded video during crash recovery. Deleting the exported one and proceeding with the recorded video at %{public}@", buf, 0xCu);
                    }

                    [v71 addObject:v30];
                    [v65 removeObject:v30];
                  }
                }

                v27 = [obja countByEnumeratingWithState:&v84 objects:v97 count:16];
              }

              while (v27);
            }

            v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v34 = v65;
            v35 = [v34 countByEnumeratingWithState:&v80 objects:v96 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v81;
              do
              {
                for (k = 0; k != v36; ++k)
                {
                  if (*v81 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v80 + 1) + 8 * k);
                  v40 = [(CAMNebulaIrisBackendController *)self _videoJobFromURL:v39];
                  if (v40)
                  {
                    v41 = v33;
                    v42 = v40;
                  }

                  else
                  {
                    v41 = v71;
                    v42 = v39;
                  }

                  [v41 addObject:v42];
                }

                v36 = [v34 countByEnumeratingWithState:&v80 objects:v96 count:16];
              }

              while (v36);
            }

            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v43 = v70;
            v44 = [v43 countByEnumeratingWithState:&v76 objects:v95 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v77;
              do
              {
                for (m = 0; m != v45; ++m)
                {
                  if (*v77 != v46)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v48 = *(*(&v76 + 1) + 8 * m);
                  v49 = [(CAMNebulaIrisBackendController *)self _videoJobFromURL:v48];
                  if (v49)
                  {
                    v50 = v33;
                    v51 = v49;
                  }

                  else
                  {
                    v50 = v71;
                    v51 = v48;
                  }

                  [v50 addObject:v51];
                }

                v45 = [v43 countByEnumeratingWithState:&v76 objects:v95 count:16];
              }

              while (v45);
            }

            if (!+[CAMProtectionController isCameraPerformingHighPriorityDiskActivity])
            {
              v63 = v43;
              v66 = v34;
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v52 = v71;
              v53 = [v52 countByEnumeratingWithState:&v72 objects:v94 count:16];
              if (v53)
              {
                v54 = v53;
                v55 = *v73;
                do
                {
                  for (n = 0; n != v54; ++n)
                  {
                    if (*v73 != v55)
                    {
                      objc_enumerationMutation(v52);
                    }

                    v57 = *(*(&v72 + 1) + 8 * n);
                    v58 = os_log_create("com.apple.camera", "Nebula");
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v100 = v57;
                      _os_log_error_impl(&dword_1A3640000, v58, OS_LOG_TYPE_ERROR, "Crash recovery: deleting file that cannot be processed (invalid or no pending work) %{public}@", buf, 0xCu);
                    }

                    [(CAMNebulaIrisBackendController *)self _removeItemAtURL:v57 maxAttempts:3];
                  }

                  v54 = [v52 countByEnumeratingWithState:&v72 objects:v94 count:16];
                }

                while (v54);
              }

              [(CAMNebulaIrisBackendController *)self _coordinationQueue_enqueueJobs:v33];
              [(CAMNebulaIrisBackendController *)self _coordinationQueue_setCrashRecoveryNeeded:0];
              v34 = v66;
              v43 = v63;
            }

            v11 = v61;
            _pendingOrInFlightJobsByUniqueIdentifier = v62;
            v12 = v60;
            goto LABEL_74;
          }
        }
      }

      v59 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v59, OS_LOG_TYPE_DEFAULT, "Found no work to do in crash recovery pass", buf, 2u);
      }

      [(CAMNebulaIrisBackendController *)self _coordinationQueue_setCrashRecoveryNeeded:0];
LABEL_74:
    }
  }
}

- (id)_videoJobFromURL:(id)l
{
  v55 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = objc_autoreleasePoolPush();
  v51 = 0;
  v52 = 0;
  v50 = 0.0;
  v48 = *MEMORY[0x1E6960C70];
  v49 = *(MEMORY[0x1E6960C70] + 16);
  v46 = v48;
  v47 = v49;
  v44 = 0;
  v45 = 0;
  path = [lCopy path];
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v7 = [CAMIrisDiskUtilities parseVideoDestinationPath:path forStillImagePersistenceUUID:&v43 videoPersistenceUUID:&v42 captureDevice:&v52 captureOrientation:&v51 captureTime:&v50 persistenceOptions:&v45 temporaryPersistenceOptions:&v44 bundleIdentifier:&v41 filterName:&v40];
  v8 = v43;
  v9 = v42;
  v10 = v41;
  v33 = v9;
  v34 = v40;
  if (v7)
  {
    v32 = v5;
    v11 = [MEMORY[0x1E6988168] URLAssetWithURL:lCopy options:0];
    v12 = v11;
    if (v11)
    {
      [v11 duration];
      v39 = 0;
      v13 = [(CAMNebulaIrisBackendController *)self _extractIrisPropertiesFromAVAsset:v12 stillImageDisplayTime:&v46 irisIdentifier:&v39];
      v14 = v39;
      if (v13)
      {
LABEL_4:
        v15 = [CAMIrisVideoJob alloc];
        *buf = v48;
        v54 = v49;
        v35 = v46;
        v36 = v47;
        v16 = v10;
        v31 = v10;
        v17 = v8;
        v18 = [(CAMIrisVideoJob *)v15 initWithVideoURL:lCopy stillImagePersistenceUUID:v8 videoPersistenceUUID:v9 irisIdentifier:v14 captureDevice:v52 captureOrientation:v51 duration:v50 stillImageDisplayTime:buf captureTime:&v35 captureError:0 filterName:v34 filteredVideoURL:0 persistenceOptions:v45 temporaryPersistenceOptions:v44 bundleIdentifier:v31];
        defaultManager = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v18;
          _os_log_impl(&dword_1A3640000, defaultManager, OS_LOG_TYPE_DEFAULT, "Crash recovery created job: %{public}@", buf, 0xCu);
        }

        v20 = 1;
        goto LABEL_25;
      }

      v25 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = lCopy;
        _os_log_impl(&dword_1A3640000, v25, OS_LOG_TYPE_DEFAULT, "Attempting to consolidate video at %{public}@", buf, 0xCu);
      }

      v38 = 0;
      v26 = [MEMORY[0x1E69870D8] consolidateMovieFragmentsInFile:lCopy error:&v38];
      defaultManager = v38;
      if (v26)
      {
        v37 = v14;
        v27 = [(CAMNebulaIrisBackendController *)self _extractIrisPropertiesFromAVAsset:v12 stillImageDisplayTime:&v46 irisIdentifier:&v37];
        v21 = v37;

        if (!v27)
        {
          v16 = v10;
          v17 = v8;
          v20 = 0;
          v18 = 0;
          goto LABEL_26;
        }

        v14 = v21;
        v9 = v33;
        goto LABEL_4;
      }

      v16 = v10;
      v17 = v8;
      v28 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [CAMNebulaIrisBackendController _videoJobFromURL:];
      }

      v20 = 0;
    }

    else
    {
      v16 = v10;
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v22 = [defaultManager fileExistsAtPath:path];
      v23 = os_log_create("com.apple.camera", "Nebula");
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      v17 = v8;
      if (v22)
      {
        if (v24)
        {
          [CAMNebulaIrisBackendController _videoJobFromURL:];
        }
      }

      else if (v24)
      {
        [CAMNebulaIrisBackendController _videoJobFromURL:];
      }

      v20 = 0;
      v14 = 0;
    }

    v18 = 0;
LABEL_25:

    v21 = v14;
LABEL_26:
    v5 = v32;
    goto LABEL_27;
  }

  v16 = v10;
  v17 = v8;
  v12 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = lCopy;
    _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "Could not extract the needed information from %{public}@", buf, 0xCu);
  }

  v20 = 0;
  v21 = 0;
  v18 = 0;
LABEL_27:

  objc_autoreleasePoolPop(v5);
  if (v20)
  {
    v29 = v18;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (BOOL)_extractIrisPropertiesFromAVAsset:(id)asset stillImageDisplayTime:(id *)time irisIdentifier:(id *)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E6960C70];
  v15 = *(MEMORY[0x1E6960C70] + 16);
  v7 = [asset URL];
  path = [v7 path];
  PFReadImageDisplayTimeFromVideoFileAtPath();
  v9 = PFReadPairingIdentifierFromVideoAtPath();
  v10 = v9;
  if (v9)
  {
    if (time)
    {
      *&time->var0 = v14;
      time->var3 = v15;
    }

    if (identifier)
    {
      v11 = v9;
      *identifier = v10;
    }
  }

  else
  {
    v12 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "Failed to retrieve irisIdentifier for %{public}@", buf, 0xCu);
    }
  }

  return v10 != 0;
}

- (void)_coordinationQueue_setFailureCount:(unint64_t)count forVideoURL:(id)l
{
  countCopy = count;
  lCopy = l;
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  v8 = [MEMORY[0x1E69BF230] filesystemPersistenceBatchItemForFileAtURL:lCopy];

  [v8 setUInt16:countCopy forKey:@"com.apple.assetsd.nebulad.failureCount"];
  [v8 persist];
}

- (unint64_t)_coordinationQueue_failureCountForVideoURL:(id)l
{
  lCopy = l;
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  v6 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:lCopy];

  v9 = 0;
  if ([v6 getUInt16:&v9 forKey:@"com.apple.assetsd.nebulad.failureCount"])
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_coordinationQueue_setupCameraProcessingMonitoringIfNecessary
{
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  if (!self->__applicationStateMonitor)
  {
    objc_initWeak(&location, self);
    v4 = [objc_alloc(MEMORY[0x1E698D028]) initWithBundleIDs:&unk_1F16C9788 states:1];
    applicationStateMonitor = self->__applicationStateMonitor;
    self->__applicationStateMonitor = v4;

    v6 = self->__applicationStateMonitor;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __95__CAMNebulaIrisBackendController__coordinationQueue_setupCameraProcessingMonitoringIfNecessary__block_invoke;
    v7[3] = &unk_1E76FBF50;
    objc_copyWeak(&v8, &location);
    [(BKSApplicationStateMonitor *)v6 setHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __95__CAMNebulaIrisBackendController__coordinationQueue_setupCameraProcessingMonitoringIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x1E698D010]];
  v4 = v3;
  if (v3 && [v3 integerValue] == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __95__CAMNebulaIrisBackendController__coordinationQueue_setupCameraProcessingMonitoringIfNecessary__block_invoke_2;
    v7[3] = &unk_1E76F77B0;
    v8 = WeakRetained;
    v6 = WeakRetained;
    [v6 _dispatchToCoordinationQueueWithBlock:v7];
  }
}

void __95__CAMNebulaIrisBackendController__coordinationQueue_setupCameraProcessingMonitoringIfNecessary__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _coordinationQueue_isIOWorkSuspended])
  {
    v2 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Resuming IO work because Camera has died", buf, 2u);
    }

    [*(a1 + 32) _coordinationQueue_setIOWorkSuspended:0];
    [*(a1 + 32) _coordinationQueue_setCrashRecoveryNeeded:1];
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__CAMNebulaIrisBackendController__coordinationQueue_setupCameraProcessingMonitoringIfNecessary__block_invoke_50;
    v4[3] = &unk_1E76F77B0;
    v5 = v3;
    [v5 _dispatchToCoordinationQueueAfterDelay:v4 withBlock:1.0];
  }
}

- (void)_coordinationQueue_destroyApplicationStateMonitor
{
  _coordinationQueue = [(CAMNebulaIrisBackendController *)self _coordinationQueue];
  dispatch_assert_queue_V2(_coordinationQueue);

  [(BKSApplicationStateMonitor *)self->__applicationStateMonitor invalidate];
  applicationStateMonitor = self->__applicationStateMonitor;
  self->__applicationStateMonitor = 0;
}

- (BOOL)_removeItemAtURL:(id)l maxAttempts:(int64_t)attempts
{
  lCopy = l;
  v7 = 0;
  if (lCopy && attempts >= 1)
  {
    v8 = 1;
    do
    {
      v9 = [(CAMNebulaIrisBackendController *)self _removeItemAtURL:lCopy];
      v7 = v9;
      if (v9)
      {
        break;
      }
    }

    while (v8++ < attempts);
    v11 = attempts < 2 || v9;
    if ((v11 & 1) == 0)
    {
      v12 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(CAMNebulaIrisBackendController *)lCopy _removeItemAtURL:attempts maxAttempts:v12];
      }

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_removeItemAtURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v12 = 0;
    v5 = [defaultManager removeItemAtURL:lCopy error:&v12];
    v6 = v12;
    if ((v5 & 1) != 0 || ([lCopy path], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(defaultManager, "fileExistsAtPath:", v7), v7, !v8))
    {
      v10 = 1;
    }

    else
    {
      v9 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CAMNebulaIrisBackendController _removeItemAtURL:];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_removeItemAtURL:(NSObject *)a3 maxAttempts:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2114;
  *&v3[14] = a1;
  OUTLINED_FUNCTION_4(&dword_1A3640000, a2, a3, "Giving up after %ld attempts to delete %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end