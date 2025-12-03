@interface CAMIrisVideoController
- (BOOL)isWaitingOnNebuladForRequest:(id)request;
- (CAMIrisVideoController)initWithNebulaDaemonProxyManager:(id)manager delegate:(id)delegate;
- (CAMIrisVideoControllerDelegate)delegate;
- (void)_notifyDelegateOfVideoLocalPersistenceResult:(id)result forVideoPersistenceUUID:(id)d;
- (void)_submitJob:(id)job;
- (void)nebulaDaemonDidCompleteLocalVideoPersistenceWithResult:(id)result;
- (void)stillImageRequest:(id)request didCompleteVideoCaptureWithResult:(id)result;
- (void)stillImageRequestDidCompleteCapture:(id)capture error:(id)error;
@end

@implementation CAMIrisVideoController

- (CAMIrisVideoController)initWithNebulaDaemonProxyManager:(id)manager delegate:(id)delegate
{
  managerCopy = manager;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = CAMIrisVideoController;
  v9 = [(CAMIrisVideoController *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->__nebulaDaemonProxyManager, manager);
    [(CAMNebulaDaemonProxyManager *)v10->__nebulaDaemonProxyManager setIrisClientDelegate:v10];
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    jobsToBeSent = v10->__jobsToBeSent;
    v10->__jobsToBeSent = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingJobs = v10->__pendingJobs;
    v10->__pendingJobs = v13;

    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v16 = dispatch_queue_create("com.apple.camera.iris-video-controller", v15);
    mutexQueue = v10->__mutexQueue;
    v10->__mutexQueue = v16;

    v18 = v10;
  }

  return v10;
}

- (void)stillImageRequest:(id)request didCompleteVideoCaptureWithResult:(id)result
{
  resultCopy = result;
  requestCopy = request;
  v8 = [[CAMIrisVideoControllerJob alloc] initWithRequest:requestCopy videoCaptureResult:resultCopy];

  _mutexQueue = [(CAMIrisVideoController *)self _mutexQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__CAMIrisVideoController_stillImageRequest_didCompleteVideoCaptureWithResult___block_invoke;
  v11[3] = &unk_1E76F7960;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_sync(_mutexQueue, v11);
}

void __78__CAMIrisVideoController_stillImageRequest_didCompleteVideoCaptureWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _jobsToBeSent];
  [v2 addObject:*(a1 + 40)];
}

- (void)stillImageRequestDidCompleteCapture:(id)capture error:(id)error
{
  captureCopy = capture;
  errorCopy = error;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  _mutexQueue = [(CAMIrisVideoController *)self _mutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CAMIrisVideoController_stillImageRequestDidCompleteCapture_error___block_invoke;
  block[3] = &unk_1E76FAFF0;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(_mutexQueue, block);

  v9 = v13[5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CAMIrisVideoController_stillImageRequestDidCompleteCapture_error___block_invoke_3;
  v10[3] = &unk_1E76FB310;
  v10[4] = self;
  [v9 enumerateObjectsUsingBlock:v10];
  _Block_object_dispose(&v12, 8);
}

void __68__CAMIrisVideoController_stillImageRequestDidCompleteCapture_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _jobsToBeSent];
  v3 = [v2 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_28];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) _jobsToBeSent];
  [v6 removeAllObjects];
}

uint64_t __68__CAMIrisVideoController_stillImageRequestDidCompleteCapture_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 videoCaptureResult];
  v6 = [v5 coordinationInfo];
  v7 = [v6 resultSpecifiers];

  v8 = [v4 videoCaptureResult];

  v9 = [v8 coordinationInfo];
  v10 = [v9 resultSpecifiers];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v7)
  {
    return v11;
  }

  else
  {
    return v10 & ((v7 & 1) == 0);
  }
}

- (void)_submitJob:(id)job
{
  jobCopy = job;
  request = [jobCopy request];
  videoCaptureResult = [jobCopy videoCaptureResult];
  localDestinationURL = [videoCaptureResult localDestinationURL];
  v7 = [request isEV0LocalVideoDestinationURL:?];
  v32 = [request irisStillImagePersistenceUUIDForEV0:v7];
  if ([request isCTMVideo])
  {
    [request persistenceUUID];
  }

  else
  {
    [request irisVideoPersistenceUUIDForEV0:v7];
  }
  v8 = ;
  v31 = [request irisIdentifierForEV0:v7];
  captureDevice = [request captureDevice];
  captureOrientation = [request captureOrientation];
  v30 = +[CAMEffectFilterManager ciFilterNameForFilterType:](CAMEffectFilterManager, "ciFilterNameForFilterType:", [request effectFilterType]);
  v50 = 0uLL;
  v51 = 0;
  if (videoCaptureResult)
  {
    [videoCaptureResult duration];
    v48 = 0uLL;
    v49 = 0;
    [videoCaptureResult stillDisplayTime];
  }

  else
  {
    v48 = 0uLL;
    v49 = 0;
  }

  captureDate = [videoCaptureResult captureDate];
  [captureDate timeIntervalSinceReferenceDate];
  v11 = v10;
  error = [videoCaptureResult error];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v15 = [CAMIrisVideoJob alloc];
  persistenceOptions = [request persistenceOptions];
  temporaryPersistenceOptions = [request temporaryPersistenceOptions];
  v46 = v50;
  v47 = v51;
  v44 = v48;
  v45 = v49;
  v18 = [(CAMIrisVideoJob *)v15 initWithVideoURL:localDestinationURL stillImagePersistenceUUID:v32 videoPersistenceUUID:v8 irisIdentifier:v31 captureDevice:captureDevice captureOrientation:captureOrientation duration:v11 stillImageDisplayTime:&v46 captureTime:&v44 captureError:error filterName:v30 filteredVideoURL:0 persistenceOptions:persistenceOptions temporaryPersistenceOptions:temporaryPersistenceOptions bundleIdentifier:bundleIdentifier];
  delegate = [(CAMIrisVideoController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CAMIrisVideoController *)self delegate];
    [delegate2 irisVideoController:self willPersistVideoCaptureResult:videoCaptureResult forRequest:request];
    v22 = v21;

    if (v22 > 0.0)
    {
      v23 = dispatch_get_global_queue(25, 0);
      dispatch_time(0, (v22 * 1000000000.0));
      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __37__CAMIrisVideoController__submitJob___block_invoke;
      v41 = &unk_1E76F7960;
      selfCopy = self;
      v43 = v8;
      pl_dispatch_after();
    }
  }

  _mutexQueue = [(CAMIrisVideoController *)self _mutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CAMIrisVideoController__submitJob___block_invoke_2;
  block[3] = &unk_1E76F8230;
  block[4] = self;
  v35 = v8;
  v36 = jobCopy;
  v37 = v18;
  v25 = v18;
  v26 = jobCopy;
  v27 = v8;
  dispatch_sync(_mutexQueue, block);
}

void __37__CAMIrisVideoController__submitJob___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) _pendingJobs];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];

    [*(*(a1 + 32) + 24) ensureConnectionToDaemon];
  }

  v6[0] = *(a1 + 56);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [*(*(a1 + 32) + 24) enqueueIrisVideoJobs:v5];
}

- (void)_notifyDelegateOfVideoLocalPersistenceResult:(id)result forVideoPersistenceUUID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  dCopy = d;
  delegate = [(CAMIrisVideoController *)self delegate];

  if (delegate)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__11;
    v23 = __Block_byref_object_dispose__11;
    v24 = 0;
    _mutexQueue = [(CAMIrisVideoController *)self _mutexQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__CAMIrisVideoController__notifyDelegateOfVideoLocalPersistenceResult_forVideoPersistenceUUID___block_invoke;
    block[3] = &unk_1E76FB338;
    v18 = &v19;
    block[4] = self;
    v17 = dCopy;
    dispatch_sync(_mutexQueue, block);

    if (v20[5])
    {
      if (!resultCopy)
      {
        v10 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          request = [v20[5] request];
          *buf = 138543362;
          v26 = request;
          _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Timed out while waiting for persistence result from nebulad for request %{public}@", buf, 0xCu);
        }
      }

      delegate2 = [(CAMIrisVideoController *)self delegate];
      videoCaptureResult = [v20[5] videoCaptureResult];
      request2 = [v20[5] request];
      [delegate2 irisVideoController:self didPersistVideoCaptureResult:resultCopy forCaptureResult:videoCaptureResult request:request2];
    }

    else
    {
      if (!resultCopy)
      {
        goto LABEL_9;
      }

      delegate2 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(delegate2, OS_LOG_TYPE_DEFAULT))
      {
        request3 = [v20[5] request];
        *buf = 138543362;
        v26 = request3;
        _os_log_impl(&dword_1A3640000, delegate2, OS_LOG_TYPE_DEFAULT, "Received persistence result from nebulad but ignoring since we already timed out for %{public}@", buf, 0xCu);
      }
    }

LABEL_9:
    _Block_object_dispose(&v19, 8);
  }
}

void __95__CAMIrisVideoController__notifyDelegateOfVideoLocalPersistenceResult_forVideoPersistenceUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _pendingJobs];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) _pendingJobs];
    [v6 setObject:0 forKeyedSubscript:*(a1 + 40)];

    v7 = *(*(a1 + 32) + 24);

    [v7 closeConnectionToDaemon];
  }
}

- (BOOL)isWaitingOnNebuladForRequest:(id)request
{
  requestCopy = request;
  delegate = [(CAMIrisVideoController *)self delegate];

  if (!delegate)
  {
    v8 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CAMIrisVideoController isWaitingOnNebuladForRequest:v8];
    }

    goto LABEL_8;
  }

  if (!requestCopy)
  {
    v8 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CAMIrisVideoController isWaitingOnNebuladForRequest:v8];
    }

LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  _mutexQueue = [(CAMIrisVideoController *)self _mutexQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CAMIrisVideoController_isWaitingOnNebuladForRequest___block_invoke;
  block[3] = &unk_1E76FB338;
  v12 = &v13;
  block[4] = self;
  v11 = requestCopy;
  dispatch_sync(_mutexQueue, block);

  v7 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
LABEL_9:

  return v7 & 1;
}

void __55__CAMIrisVideoController_isWaitingOnNebuladForRequest___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _pendingJobs];
  v2 = [*(a1 + 40) videoPersistenceUUID];
  v3 = [v7 objectForKeyedSubscript:v2];
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v4 = [*(a1 + 32) _pendingJobs];
    v5 = [*(a1 + 40) EV0VideoPersistenceUUID];
    v6 = [v4 objectForKeyedSubscript:v5];
    *(*(*(a1 + 48) + 8) + 24) = v6 != 0;
  }
}

- (void)nebulaDaemonDidCompleteLocalVideoPersistenceWithResult:(id)result
{
  resultCopy = result;
  localPersistenceUUID = [resultCopy localPersistenceUUID];
  [(CAMIrisVideoController *)self _notifyDelegateOfVideoLocalPersistenceResult:resultCopy forVideoPersistenceUUID:localPersistenceUUID];
}

- (CAMIrisVideoControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end