@interface CAMPersistenceController
+ (id)_pathForIncomingDirectory;
+ (id)clientVideoMetadataForLocation:(id)location withCreationDate:(id)date;
+ (id)clientVideoMetadataForRequest:(id)request withCreationDate:(id)date isEV0ForHDR:(BOOL)r livePhotoIdentifierOverride:(id)override slomoPlayback:(BOOL)playback;
+ (id)uniquePathForAssetWithUUID:(id)d captureTime:(double)time extension:(id)extension usingIncomingDirectory:(BOOL)directory;
+ (id)videoMetadataDateFormatter;
- (BOOL)_writeDataToURL:(id)l withData:(id)data duringBurst:(BOOL)burst error:(id *)error;
- (BOOL)_writeJPEGToURL:(id)l withData:(id)data thumbnail:(id)thumbnail properties:(id)properties duringBurst:(BOOL)burst error:(id *)error;
- (BOOL)resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest;
- (BOOL)writePrivateMetadataFileToURL:(id)l withPrivateClientMetadata:(id)metadata sharedLibraryMode:(int64_t)mode contactIDsInProximity:(id)proximity sharedLibraryDiagnostics:(id)diagnostics;
- (CAMPersistenceController)init;
- (CAMPersistenceController)initWithLocationController:(id)controller burstController:(id)burstController protectionController:(id)protectionController powerController:(id)powerController irisVideoController:(id)videoController;
- (CAMPersistenceResultDelegate)resultDelegate;
- (CAMThumbnailGenerator)_localPersistenceThumbnailGenerator;
- (CAMThumbnailGenerator)_remotePersistenceThumbnailGenerator;
- (CGAffineTransform)_affineTransformForRotationDegrees:(SEL)degrees mirrored:(int)mirrored;
- (NSMutableArray)_pendingLocalPersistenceWrappers;
- (NSMutableArray)_pendingRemotePersistenceWrappers;
- (__CFWriteStream)_createOpenWriteStreamWithURL:(id)l forBurst:(BOOL)burst error:(id *)error;
- (id)_adjustmentsDataForCinematicVideoRequest:(id)request result:(id)result;
- (id)_adjustmentsDataForRequest:(id)request captureDimensions:(id)dimensions portraitMetadata:(id)metadata;
- (id)_adjustmentsDataForSloMoVideoRequest:(id)request;
- (id)_adjustmentsDataForVideoRequest:(id)request;
- (id)_coordinationGroupForIdentifier:(id)identifier;
- (id)_createMetadataForPhysicallyOrientedImage:(id)image;
- (id)_ensureCoordinationGroupForIdentifier:(id)identifier;
- (id)_extensionForUniformType:(id)type;
- (id)_jobDictionaryForStillImageLocalResult:(id)result filteredLocalResult:(id)localResult fromRequest:(id)request loggingIdentifier:(id)identifier;
- (id)_jobDictionaryForTimelapsePlaceholderResult:(id)result;
- (id)_jobDictionaryForVideoLocalResult:(id)result fromRequest:(id)request loggingIdentifier:(id)identifier;
- (id)_persistStillImageCaptureSurfaceResult:(id)result withRequest:(id)request;
- (id)_persistVideoCaptureResult:(id)result withRequest:(id)request;
- (id)_persistenceErrorForWriteStream:(__CFWriteStream *)stream url:(id)url code:(int64_t)code;
- (id)_physicallyRotatedJPEGDataFromCapturePhoto:(id)photo;
- (id)_stillPersistenceUUIDForRequest:(id)request withVideoResult:(id)result;
- (id)_uniformTypeForStillImageRequest:(id)request result:(id)result;
- (id)_videoPersistenceUUIDForRequest:(id)request withResult:(id)result;
- (id)_xmpEncodedDiagnosticDataFromDictionary:(id)dictionary;
- (unsigned)_stillImageLocalPowerAssertionReasonForCoordinationInfo:(id)info;
- (unsigned)_videoLocalPowerAssertionReasonForCoordinationInfo:(id)info;
- (unsigned)_videoRemotePowerAssertionReasonForCoordinationInfo:(id)info;
- (void)_coordinateRemotePersistenceForStillImageLocalResult:(id)result coordinationInfo:(id)info request:(id)request;
- (void)_coordinateRemotePersistenceForVideoLocalResult:(id)result coordinationInfo:(id)info request:(id)request;
- (void)_dispatchRemotePersistenceForLocalPersistenceResult:(id)result filteredLocalResult:(id)localResult request:(id)request powerAssertionReason:(unsigned int)reason loggingIdentifier:(id)identifier;
- (void)_dispatchRemotePersistenceForLocalVideoPersistenceResult:(id)result request:(id)request powerAssertionReason:(unsigned int)reason loggingIdentifier:(id)identifier;
- (void)_handleCompletedStillImageJobForRequest:(id)request withReply:(id)reply fromBatchOfSize:(unint64_t)size completionHandler:(id)handler error:(id)error;
- (void)_handleCompletedVideoJobForRequest:(id)request withReply:(id)reply completionHandler:(id)handler error:(id)error;
- (void)_handleStillImagePersistenceForRequest:(id)request withResult:(id)result;
- (void)_handleVideoPersistenceForRequest:(id)request withResult:(id)result;
- (void)_locallyPersistStillImageResult:(id)result forRequest:(id)request withCompletionHandler:(id)handler;
- (void)_locallyPersistVideoCaptureResult:(id)result forRequest:(id)request withCompletionHandler:(id)handler;
- (void)_notifyDelegateOfCompletedStillImageLocalPersistenceForRequest:(id)request withResult:(id)result;
- (void)_notifyDelegateOfCompletedStillImageRemotePersistenceForRequest:(id)request withReply:(id)reply fromBatchOfSize:(unint64_t)size error:(id)error;
- (void)_notifyDelegateOfCompletedVideoLocalPersistenceForRequest:(id)request withResult:(id)result;
- (void)_notifyDelegateOfCompletedVideoRemotePersistenceForRequest:(id)request withReply:(id)reply error:(id)error;
- (void)_remotelyPersistStillImageJob:(id)job forRequest:(id)request loggingIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_remotelyPersistVideoJob:(id)job forRequest:(id)request loggingIdentifier:(id)identifier withSendHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_removeCoordinationGroupForIdentifier:(id)identifier;
- (void)dealloc;
- (void)emptyLocalPersistenceStorageWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)performDeferredRemotePersistenceWithCompletionHandler:(id)handler;
- (void)persistBurstWithIdentifier:(id)identifier result:(id)result completionHandler:(id)handler;
- (void)persistPlaceholderTimelapseVideoWithResult:(id)result completionHandler:(id)handler;
- (void)setResultDelegate:(id)delegate;
- (void)stillImagePersistenceCoordinator:(id)coordinator requestsRemotePersistenceForLocalPersistenceResult:(id)result filteredLocalResult:(id)localResult request:(id)request powerAssertionReason:(unsigned int)reason;
- (void)stillImagePersistenceCoordinator:(id)coordinator requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo:(id)info request:(id)request;
- (void)stillImageRequest:(id)request didCompleteVideoCaptureWithResult:(id)result;
- (void)stillImageRequestDidCompleteCapture:(id)capture error:(id)error;
- (void)videoPersistenceCoordinator:(id)coordinator requestsRemotePersistenceForLocalPersistenceResult:(id)result captureRequest:(id)request powerAssertionReason:(unsigned int)reason;
- (void)videoPersistenceCoordinator:(id)coordinator requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo:(id)info request:(id)request;
@end

@implementation CAMPersistenceController

- (BOOL)resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  _resultDelegateIsolationQueue = [(CAMPersistenceController *)self _resultDelegateIsolationQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__CAMPersistenceController_resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest__block_invoke;
  v5[3] = &unk_1E76FAFF0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(_resultDelegateIsolationQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (CAMThumbnailGenerator)_localPersistenceThumbnailGenerator
{
  localPersistenceThumbnailGenerator = self->__localPersistenceThumbnailGenerator;
  if (!localPersistenceThumbnailGenerator)
  {
    v4 = objc_alloc_init(CAMThumbnailGenerator);
    v5 = self->__localPersistenceThumbnailGenerator;
    self->__localPersistenceThumbnailGenerator = v4;

    localPersistenceThumbnailGenerator = self->__localPersistenceThumbnailGenerator;
  }

  return localPersistenceThumbnailGenerator;
}

+ (id)_pathForIncomingDirectory
{
  if (_pathForIncomingDirectory_onceToken != -1)
  {
    +[CAMPersistenceController _pathForIncomingDirectory];
  }

  v3 = __cachedPathForIncomingDirectory;

  return v3;
}

void __53__CAMPersistenceController__pathForIncomingDirectory__block_invoke()
{
  v5 = CPSharedResourcesDirectory();
  v0 = [v5 stringByAppendingPathComponent:@"Media/DCIM/.MISC/Incoming"];
  v1 = __cachedPathForIncomingDirectory;
  __cachedPathForIncomingDirectory = v0;

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 fileExistsAtPath:__cachedPathForIncomingDirectory];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    [v4 createDirectoryAtPath:__cachedPathForIncomingDirectory withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (CAMPersistenceResultDelegate)resultDelegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__12;
  v11 = __Block_byref_object_dispose__12;
  v12 = 0;
  _resultDelegateIsolationQueue = [(CAMPersistenceController *)self _resultDelegateIsolationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CAMPersistenceController_resultDelegate__block_invoke;
  v6[3] = &unk_1E76FAFF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(_resultDelegateIsolationQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__CAMPersistenceController_resultDelegate__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_loadWeakRetained((*(a1 + 32) + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (CAMThumbnailGenerator)_remotePersistenceThumbnailGenerator
{
  remotePersistenceThumbnailGenerator = self->__remotePersistenceThumbnailGenerator;
  if (!remotePersistenceThumbnailGenerator)
  {
    v4 = objc_alloc_init(CAMThumbnailGenerator);
    v5 = self->__remotePersistenceThumbnailGenerator;
    self->__remotePersistenceThumbnailGenerator = v4;

    remotePersistenceThumbnailGenerator = self->__remotePersistenceThumbnailGenerator;
  }

  return remotePersistenceThumbnailGenerator;
}

- (CAMPersistenceController)initWithLocationController:(id)controller burstController:(id)burstController protectionController:(id)protectionController powerController:(id)powerController irisVideoController:(id)videoController
{
  controllerCopy = controller;
  burstControllerCopy = burstController;
  protectionControllerCopy = protectionController;
  powerControllerCopy = powerController;
  videoControllerCopy = videoController;
  v44.receiver = self;
  v44.super_class = CAMPersistenceController;
  v17 = [(CAMPersistenceController *)&v44 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->__locationController, controller);
    objc_storeStrong(&v18->__burstController, burstController);
    objc_storeStrong(&v18->__protectionController, protectionController);
    objc_storeStrong(&v18->__powerController, powerController);
    objc_storeStrong(&v18->__irisVideoController, videoController);
    v19 = MEMORY[0x1E69E96A8];
    v40 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
    v20 = dispatch_queue_create("com.apple.persistence-controller.local-persistence", v40);
    localPersistenceQueue = v18->__localPersistenceQueue;
    v18->__localPersistenceQueue = v20;

    v22 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v23 = dispatch_queue_create("com.apple.persistence-controller.remote-persistence", v22);
    remotePersistenceQueue = v18->__remotePersistenceQueue;
    v18->__remotePersistenceQueue = v23;

    v25 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_USER_INITIATED, 0);
    v26 = dispatch_queue_create("com.apple.persistence-controller.result-delegate-isolation", v25);
    resultDelegateIsolationQueue = v18->__resultDelegateIsolationQueue;
    v18->__resultDelegateIsolationQueue = v26;

    v28 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_USER_INITIATED, 0);
    v29 = dispatch_queue_create("com.apple.persistence-controller.coordination", v28);
    coordinationQueue = v18->__coordinationQueue;
    v18->__coordinationQueue = v29;

    v31 = v18->__coordinationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __128__CAMPersistenceController_initWithLocationController_burstController_protectionController_powerController_irisVideoController___block_invoke;
    block[3] = &unk_1E76F77B0;
    v32 = powerControllerCopy;
    v33 = protectionControllerCopy;
    v34 = burstControllerCopy;
    v35 = controllerCopy;
    v36 = v18;
    v43 = v36;
    dispatch_barrier_sync(v31, block);
    v37 = +[CAMPriorityNotificationCenter defaultCenter];
    [v37 addObserver:v36 selector:sel__mainThread_handleApplicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
    v38 = v36;
    controllerCopy = v35;
    burstControllerCopy = v34;
    protectionControllerCopy = v33;
    powerControllerCopy = v32;
  }

  return v18;
}

uint64_t __128__CAMPersistenceController_initWithLocationController_burstController_protectionController_powerController_irisVideoController___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  *(v6 + 136) = v5;

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = *(a1 + 32);
  v10 = *(v9 + 144);
  *(v9 + 144) = v8;

  return MEMORY[0x1EEE66BB8](v8, v10);
}

- (CAMPersistenceController)init
{
  [(CAMPersistenceController *)self doesNotRecognizeSelector:a2];

  return [(CAMPersistenceController *)self initWithLocationController:0 burstController:0 protectionController:0 powerController:0 irisVideoController:0];
}

- (void)dealloc
{
  v3 = +[CAMPriorityNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CAMPersistenceController;
  [(CAMPersistenceController *)&v4 dealloc];
}

- (NSMutableArray)_pendingLocalPersistenceWrappers
{
  pendingLocalPersistenceWrappers = self->_pendingLocalPersistenceWrappers;
  if (!pendingLocalPersistenceWrappers)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_pendingLocalPersistenceWrappers;
    self->_pendingLocalPersistenceWrappers = v4;

    pendingLocalPersistenceWrappers = self->_pendingLocalPersistenceWrappers;
  }

  return pendingLocalPersistenceWrappers;
}

- (NSMutableArray)_pendingRemotePersistenceWrappers
{
  pendingRemotePersistenceWrappers = self->_pendingRemotePersistenceWrappers;
  if (!pendingRemotePersistenceWrappers)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_pendingRemotePersistenceWrappers;
    self->_pendingRemotePersistenceWrappers = v4;

    pendingRemotePersistenceWrappers = self->_pendingRemotePersistenceWrappers;
  }

  return pendingRemotePersistenceWrappers;
}

- (void)setResultDelegate:(id)delegate
{
  delegateCopy = delegate;
  _resultDelegateIsolationQueue = [(CAMPersistenceController *)self _resultDelegateIsolationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CAMPersistenceController_setResultDelegate___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_barrier_sync(_resultDelegateIsolationQueue, v7);
}

uint64_t __46__CAMPersistenceController_setResultDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 32), *(a1 + 40));
  result = objc_opt_respondsToSelector();
  *(*(a1 + 32) + 8) = result & 1;
  return result;
}

- (void)stillImageRequest:(id)request didCompleteVideoCaptureWithResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  _irisVideoController = [(CAMPersistenceController *)self _irisVideoController];
  if ([_irisVideoController shouldHandleLivePhotoRenderingForRequest:requestCopy])
  {
    if ([requestCopy shouldProtectPersistenceForVideo])
    {
      _protectionController = [(CAMPersistenceController *)self _protectionController];
      [_protectionController stopProtectingPersistenceForRequest:requestCopy];
    }

    [_irisVideoController stillImageRequest:requestCopy didCompleteVideoCaptureWithResult:resultCopy];
  }

  else
  {
    [(CAMPersistenceController *)self _handleVideoPersistenceForRequest:requestCopy withResult:resultCopy];
  }
}

- (void)stillImageRequestDidCompleteCapture:(id)capture error:(id)error
{
  captureCopy = capture;
  errorCopy = error;
  _irisVideoController = [(CAMPersistenceController *)self _irisVideoController];
  if ([_irisVideoController shouldHandleLivePhotoRenderingForRequest:captureCopy])
  {
    [_irisVideoController stillImageRequestDidCompleteCapture:captureCopy error:errorCopy];
  }

  if ([(CAMPersistenceController *)self resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest])
  {
    persistenceUUID = [captureCopy persistenceUUID];
    v10 = [(CAMPersistenceController *)self _coordinationGroupForIdentifier:persistenceUUID];
    resultDelegate = [(CAMPersistenceController *)self resultDelegate];
    if (v10)
    {
      _localPersistenceQueue = [(CAMPersistenceController *)self _localPersistenceQueue];
      v13 = resultDelegate;
      v14 = captureCopy;
      pl_dispatch_group_notify();

      [(CAMPersistenceController *)self _removeCoordinationGroupForIdentifier:persistenceUUID];
    }

    else if ([captureCopy persistenceOptions])
    {
      [resultDelegate persistenceController:self didCompleteAllLocalPersistenceForRequest:captureCopy];
    }
  }
}

- (unsigned)_stillImageLocalPowerAssertionReasonForCoordinationInfo:(id)info
{
  infoCopy = info;
  isHDR = [infoCopy isHDR];
  isFiltered = [infoCopy isFiltered];

  if (isHDR)
  {
    v6 = 64;
  }

  else
  {
    v6 = 32;
  }

  if (isHDR)
  {
    v7 = 256;
  }

  else
  {
    v7 = 128;
  }

  if (isFiltered)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (unsigned)_videoLocalPowerAssertionReasonForCoordinationInfo:(id)info
{
  infoCopy = info;
  isHDR = [infoCopy isHDR];
  isFiltered = [infoCopy isFiltered];

  if (isHDR)
  {
    v6 = 0x4000;
  }

  else
  {
    v6 = 0x2000;
  }

  if (isHDR)
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0x8000;
  }

  if (isFiltered)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (unsigned)_videoRemotePowerAssertionReasonForCoordinationInfo:(id)info
{
  infoCopy = info;
  isHDR = [infoCopy isHDR];
  isFiltered = [infoCopy isFiltered];

  if (isHDR)
  {
    v6 = 0x40000;
  }

  else
  {
    v6 = 0x20000;
  }

  if (isHDR)
  {
    v7 = 0x100000;
  }

  else
  {
    v7 = 0x80000;
  }

  if (isFiltered)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (void)_handleStillImagePersistenceForRequest:(id)request withResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  persistenceOptions = [requestCopy persistenceOptions];
  if (persistenceOptions)
  {
    v9 = persistenceOptions;
    CAMSignpostWithIDAndArgs(49, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
    error = [resultCopy error];
    if (error)
    {
      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CAMPersistenceController _handleStillImagePersistenceForRequest:withResult:];
      }

      if ([requestCopy conformsToProtocol:&unk_1F1759928])
      {
        v12 = [[CAMStillImageLocalPersistenceResult alloc] initWithCaptureResult:resultCopy atURL:0 linkedURL:0 localAdjustmentsURL:0 diagnosticsPath:0 filteredPreviewPath:0 withUUID:0 creationDate:0 uniformTypeIdentifier:0 orientation:0 metadata:0 adjustmentsData:0 localPrivateMetadataFileURL:0 error:error];
        v13 = requestCopy;
        burstIdentifier = [v13 burstIdentifier];

        if (burstIdentifier)
        {
          _burstController = [(CAMPersistenceController *)self _burstController];
          [_burstController processPersistedRequest:v13 withResult:v12];
        }
      }

      if (v9 != 2)
      {
        goto LABEL_19;
      }

      coordinationInfo = [resultCopy coordinationInfo];
      [(CAMPersistenceController *)self _coordinateRemotePersistenceForStillImageLocalResult:0 coordinationInfo:coordinationInfo request:requestCopy];
    }

    else
    {
      coordinationInfo = [resultCopy coordinationInfo];
      v17 = [(CAMPersistenceController *)self _stillImageLocalPowerAssertionReasonForCoordinationInfo:coordinationInfo];
      _powerController = [(CAMPersistenceController *)self _powerController];
      assertionIdentifier = [requestCopy assertionIdentifier];
      [_powerController addAssertionForIndentifier:assertionIdentifier withReason:v17];
      if ([(CAMPersistenceController *)self resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest])
      {
        persistenceUUID = [requestCopy persistenceUUID];
        v21 = [(CAMPersistenceController *)self _ensureCoordinationGroupForIdentifier:persistenceUUID];

        if (v21)
        {
          dispatch_group_enter(v21);
        }
      }

      else
      {
        v21 = 0;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__CAMPersistenceController__handleStillImagePersistenceForRequest_withResult___block_invoke;
      aBlock[3] = &unk_1E76FB538;
      v33 = assertionIdentifier;
      v34 = v17;
      v31 = _powerController;
      v32 = v21;
      v22 = v21;
      v23 = _powerController;
      v24 = _Block_copy(aBlock);
      if ([requestCopy shouldProtectPersistence])
      {
        _protectionController = [(CAMPersistenceController *)self _protectionController];
        [_protectionController startProtectingPersistenceForRequest:requestCopy];
      }

      _localPersistenceQueue = [(CAMPersistenceController *)self _localPersistenceQueue];
      v28 = requestCopy;
      v29 = resultCopy;
      v27 = v24;
      pl_dispatch_async();
    }

LABEL_19:
  }
}

void __78__CAMPersistenceController__handleStillImagePersistenceForRequest_withResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeAssertionForIdentifier:*(a1 + 48) withReason:*(a1 + 52)];
  v2 = *(a1 + 40);
  if (v2)
  {

    dispatch_group_leave(v2);
  }
}

void __78__CAMPersistenceController__handleStillImagePersistenceForRequest_withResult___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) deferredPersistenceOptions])
  {
    v7 = [[CAMPendingLocalPersistenceWrapper alloc] initWithRequest:*(a1 + 32) result:*(a1 + 40) completionHandler:*(a1 + 56)];
    v6 = [*(a1 + 48) _pendingLocalPersistenceWrappers];
    [v6 addObject:v7];
  }

  else
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    [v4 _locallyPersistStillImageResult:v2 forRequest:v3 withCompletionHandler:v5];
  }
}

- (void)_notifyDelegateOfCompletedStillImageLocalPersistenceForRequest:(id)request withResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  localPersistenceUUID = [resultCopy localPersistenceUUID];
  creationDate = [resultCopy creationDate];
  if ([requestCopy conformsToProtocol:&unk_1F1759928])
  {
    _burstController = [(CAMPersistenceController *)self _burstController];
    burstIdentifier = [requestCopy burstIdentifier];
    v9 = [_burstController estimatedCountForIdentifier:?];
  }

  else
  {
    v9 = 0;
    burstIdentifier = 0;
  }

  captureResult = [resultCopy captureResult];
  metadata = [captureResult metadata];
  localDestinationURL = [resultCopy localDestinationURL];
  sessionIdentifier = [requestCopy sessionIdentifier];
  v30 = captureResult;
  isExpectingPairedVideo = [captureResult isExpectingPairedVideo];
  type = [requestCopy type];
  if (type)
  {
    v15 = CAMSizeForPhotoMetadata(metadata);
  }

  else
  {
    +[CAMAspectCropUtilities finalExpectedSizeWithPhotoMetadata:aspectRatio:](CAMAspectCropUtilities, "finalExpectedSizeWithPhotoMetadata:aspectRatio:", metadata, [requestCopy aspectRatioCrop]);
  }

  v17 = v15;
  v18 = v16;
  v19 = [CAMStillImagePersistenceResponse alloc];
  captureResult2 = [resultCopy captureResult];
  coordinationInfo = [captureResult2 coordinationInfo];
  LOBYTE(v29) = isExpectingPairedVideo;
  v22 = sessionIdentifier;
  v23 = localDestinationURL;
  v24 = [(CAMStillImagePersistenceResponse *)v19 initWithUUID:localPersistenceUUID captureSession:v22 url:localDestinationURL creationDate:creationDate scrubberImage:0 finalExpectedPixelSize:metadata metadata:v17 burstIdentifier:v18 burstRepresentedCount:burstIdentifier expectingPairedVideo:v9 coordinationInfo:v29, coordinationInfo];

  if (type == 2)
  {
    v28 = requestCopy;
    delegate = [v28 delegate];
    if (!delegate || (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_16;
    }

    error = [resultCopy error];
    [delegate panoramaRequestDidCompleteLocalPersistence:v28 withResponse:v24 error:error];
    goto LABEL_15;
  }

  if (type)
  {
    goto LABEL_17;
  }

  v25 = requestCopy;
  delegate = [v25 delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    error = [resultCopy error];
    [delegate stillImageRequestDidCompleteStillImageLocalPersistence:v25 withResponse:v24 error:error];
LABEL_15:

    v23 = localDestinationURL;
  }

LABEL_16:

LABEL_17:
}

- (void)_locallyPersistStillImageResult:(id)result forRequest:(id)request withCompletionHandler:(id)handler
{
  resultCopy = result;
  requestCopy = request;
  handlerCopy = handler;
  persistenceOptions = [requestCopy persistenceOptions];
  v12 = objc_autoreleasePoolPush();
  v13 = [(CAMPersistenceController *)self _persistStillImageCaptureSurfaceResult:resultCopy withRequest:requestCopy];
  objc_autoreleasePoolPop(v12);
  resultDelegate = [(CAMPersistenceController *)self resultDelegate];
  if (resultDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [resultDelegate persistenceController:self didGenerateStillImageLocalPersistenceResult:v13 forCaptureResult:resultCopy fromRequest:requestCopy];
  }

  CAMSignpostWithIDAndArgs(50, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  if (persistenceOptions == 2)
  {
    coordinationInfo = [resultCopy coordinationInfo];
    [(CAMPersistenceController *)self _coordinateRemotePersistenceForStillImageLocalResult:v13 coordinationInfo:coordinationInfo request:requestCopy];
  }

  v19 = requestCopy;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = v13;
  v18 = requestCopy;
  pl_dispatch_async();
}

uint64_t __93__CAMPersistenceController__locallyPersistStillImageResult_forRequest_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyDelegateOfCompletedStillImageLocalPersistenceForRequest:*(a1 + 40) withResult:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_coordinateRemotePersistenceForStillImageLocalResult:(id)result coordinationInfo:(id)info request:(id)request
{
  resultCopy = result;
  infoCopy = info;
  requestCopy = request;
  CAMSignpostWithIDAndArgs(51, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  if (infoCopy)
  {
    _coordinationQueue = [(CAMPersistenceController *)self _coordinationQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __106__CAMPersistenceController__coordinateRemotePersistenceForStillImageLocalResult_coordinationInfo_request___block_invoke;
    v13[3] = &unk_1E76F8230;
    v14 = infoCopy;
    selfCopy = self;
    v16 = resultCopy;
    v17 = requestCopy;
    dispatch_barrier_sync(_coordinationQueue, v13);
  }

  else
  {
    identifier = [0 identifier];
    [(CAMPersistenceController *)self _dispatchRemotePersistenceForLocalPersistenceResult:resultCopy filteredLocalResult:0 request:requestCopy powerAssertionReason:512 loggingIdentifier:identifier];
  }
}

void __106__CAMPersistenceController__coordinateRemotePersistenceForStillImageLocalResult_coordinationInfo_request___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) identifier];
  v2 = [*(a1 + 40) _coordinationQueue_stillImagePersistenceCoordinators];
  v3 = [v2 objectForKeyedSubscript:v4];
  if (!v3)
  {
    v3 = [[CAMStillImagePersistenceCoordinator alloc] initWithDelegate:*(a1 + 40) loggingIdentifier:v4];
    [v2 setObject:v3 forKeyedSubscript:v4];
  }

  [(CAMStillImagePersistenceCoordinator *)v3 updateForCoordinationInfo:*(a1 + 32) localPersistenceResult:*(a1 + 48) request:*(a1 + 56)];
  if ([(CAMStillImagePersistenceCoordinator *)v3 hasReceivedAllExpectedResponses])
  {
    [v2 setObject:0 forKeyedSubscript:v4];
  }
}

- (void)stillImagePersistenceCoordinator:(id)coordinator requestsRemotePersistenceForLocalPersistenceResult:(id)result filteredLocalResult:(id)localResult request:(id)request powerAssertionReason:(unsigned int)reason
{
  v7 = *&reason;
  requestCopy = request;
  localResultCopy = localResult;
  resultCopy = result;
  loggingIdentifier = [coordinator loggingIdentifier];
  [(CAMPersistenceController *)self _dispatchRemotePersistenceForLocalPersistenceResult:resultCopy filteredLocalResult:localResultCopy request:requestCopy powerAssertionReason:v7 loggingIdentifier:loggingIdentifier];
}

- (void)stillImagePersistenceCoordinator:(id)coordinator requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo:(id)info request:(id)request
{
  infoCopy = info;
  requestCopy = request;
  dispatch_time(0, 10000000000);
  _localPersistenceQueue = [(CAMPersistenceController *)self _localPersistenceQueue];
  v12 = requestCopy;
  v10 = requestCopy;
  v11 = infoCopy;
  pl_dispatch_after();
}

void __141__CAMPersistenceController_stillImagePersistenceCoordinator_requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo_request___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _coordinationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__CAMPersistenceController_stillImagePersistenceCoordinator_requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo_request___block_invoke_2;
  block[3] = &unk_1E76F7938;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_barrier_sync(v2, block);
}

void __141__CAMPersistenceController_stillImagePersistenceCoordinator_requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo_request___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) _coordinationQueue_stillImagePersistenceCoordinators];
  v2 = [*(a1 + 40) identifier];
  v3 = [v4 objectForKeyedSubscript:v2];
  [v3 updateForTimeoutTimerFiredForCoordinationInfo:*(a1 + 40) request:*(a1 + 48)];
}

- (void)_dispatchRemotePersistenceForLocalPersistenceResult:(id)result filteredLocalResult:(id)localResult request:(id)request powerAssertionReason:(unsigned int)reason loggingIdentifier:(id)identifier
{
  v8 = *&reason;
  resultCopy = result;
  localResultCopy = localResult;
  requestCopy = request;
  identifierCopy = identifier;
  if (resultCopy)
  {
    error = [resultCopy error];

    if (!error)
    {
      assertionIdentifier = [requestCopy assertionIdentifier];
      _powerController = [(CAMPersistenceController *)self _powerController];
      [_powerController addAssertionForIndentifier:assertionIdentifier withReason:v8];
      shouldProtectPersistence = [requestCopy shouldProtectPersistence];
      if (localResultCopy && shouldProtectPersistence)
      {
        _protectionController = [(CAMPersistenceController *)self _protectionController];
        [_protectionController stopProtectingPersistenceForRequest:requestCopy];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __147__CAMPersistenceController__dispatchRemotePersistenceForLocalPersistenceResult_filteredLocalResult_request_powerAssertionReason_loggingIdentifier___block_invoke;
      aBlock[3] = &unk_1E76FB5B0;
      v39 = _powerController;
      v40 = assertionIdentifier;
      v41 = v8;
      v21 = _powerController;
      v22 = _Block_copy(aBlock);
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __147__CAMPersistenceController__dispatchRemotePersistenceForLocalPersistenceResult_filteredLocalResult_request_powerAssertionReason_loggingIdentifier___block_invoke_2;
      v31 = &unk_1E76FB5D8;
      selfCopy = self;
      v33 = resultCopy;
      v34 = localResultCopy;
      v23 = requestCopy;
      v35 = v23;
      v36 = identifierCopy;
      v37 = v22;
      v24 = v22;
      v25 = _Block_copy(&v28);
      if ([v23 shouldDelayRemotePersistence])
      {
        v26 = dispatch_time(0, 5000000000);
        _remotePersistenceQueue = [(CAMPersistenceController *)self _remotePersistenceQueue];
        dispatch_after(v26, _remotePersistenceQueue, v25);
      }

      else
      {
        _remotePersistenceQueue = [(CAMPersistenceController *)self _remotePersistenceQueue];
        pl_dispatch_async();
      }
    }
  }
}

void __147__CAMPersistenceController__dispatchRemotePersistenceForLocalPersistenceResult_filteredLocalResult_request_powerAssertionReason_loggingIdentifier___block_invoke_2(uint64_t a1)
{
  v8 = [*(a1 + 32) _jobDictionaryForStillImageLocalResult:*(a1 + 40) filteredLocalResult:*(a1 + 48) fromRequest:*(a1 + 56) loggingIdentifier:*(a1 + 64)];
  if (([*(a1 + 56) deferredPersistenceOptions] & 2) != 0)
  {
    v2 = [*(a1 + 40) creationDate];
    v3 = [[CAMPendingRemotePersistenceWrapper alloc] initWithRequest:*(a1 + 56) creationDate:v2 job:v8 loggingIdentifier:*(a1 + 64) completionHandler:*(a1 + 72)];
    v4 = [*(a1 + 32) _pendingRemotePersistenceWrappers];
    [v4 addObject:v3];
  }

  else
  {
    [*(a1 + 32) _remotelyPersistStillImageJob:v8 forRequest:*(a1 + 56) loggingIdentifier:*(a1 + 64) completionHandler:*(a1 + 72)];
  }

  if ([*(a1 + 56) conformsToProtocol:&unk_1F1759928])
  {
    v5 = *(a1 + 56);
    v6 = [v5 burstIdentifier];

    if (v6)
    {
      v7 = [*(a1 + 32) _burstController];
      [v7 processPersistedRequest:v5 withResult:*(a1 + 40)];
    }
  }
}

- (id)_extensionForUniformType:(id)type
{
  typeCopy = type;
  if ([typeCopy conformsToType:*MEMORY[0x1E6982E58]])
  {
    uppercaseString = @"JPG";
  }

  else
  {
    preferredFilenameExtension = [typeCopy preferredFilenameExtension];
    uppercaseString = [preferredFilenameExtension uppercaseString];
  }

  return uppercaseString;
}

- (id)_uniformTypeForStillImageRequest:(id)request result:(id)result
{
  requestCopy = request;
  capturePhoto = [result capturePhoto];
  processedFileType = [capturePhoto processedFileType];

  if (!processedFileType)
  {
    processedFileType = *MEMORY[0x1E69874B0];
    photoEncodingBehavior = [requestCopy photoEncodingBehavior];
    if (photoEncodingBehavior == 1)
    {
      v9 = MEMORY[0x1E69874A0];
    }

    else
    {
      if (photoEncodingBehavior != 2)
      {
        goto LABEL_7;
      }

      v9 = MEMORY[0x1E6987498];
    }

    v10 = *v9;

    processedFileType = v10;
  }

LABEL_7:
  v11 = [MEMORY[0x1E6982C40] typeWithIdentifier:processedFileType];

  return v11;
}

- (id)_persistStillImageCaptureSurfaceResult:(id)result withRequest:(id)request
{
  v189 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  requestCopy = request;
  coordinationInfo = [resultCopy coordinationInfo];
  deferredPhotoIdentifier = [resultCopy deferredPhotoIdentifier];

  representsDeferredFilteredProxy = [resultCopy representsDeferredFilteredProxy];
  stillImageFilteredPreviewSurface = [resultCopy stillImageFilteredPreviewSurface];
  metadata = [resultCopy metadata];
  persistenceUUID = [resultCopy persistenceUUID];
  v173 = [(CAMPersistenceController *)self _uniformTypeForStillImageRequest:requestCopy result:resultCopy];
  if (coordinationInfo)
  {
    isFilteredImageForFilteredPair = [coordinationInfo isFilteredImageForFilteredPair];
  }

  else
  {
    isFilteredImageForFilteredPair = 0;
  }

  localDestinationURL = [requestCopy localDestinationURL];
  path = [localDestinationURL path];
  v11 = path;
  v160 = coordinationInfo;
  if (path)
  {
    v12 = [path length] != 0;
  }

  else
  {
    v12 = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v150 = +[CAMOrientationUtilities imageOrientationOfResult:withCaptureDevice:captureOrientation:](CAMOrientationUtilities, "imageOrientationOfResult:withCaptureDevice:captureOrientation:", resultCopy, [requestCopy captureDevice], objc_msgSend(requestCopy, "captureOrientation"));
  captureDate = [resultCopy captureDate];
  _localPersistenceThumbnailGenerator = [(CAMPersistenceController *)self _localPersistenceThumbnailGenerator];
  stillImageUnfilteredPreviewSurface = [resultCopy stillImageUnfilteredPreviewSurface];
  [resultCopy capturePhoto];
  v168 = metadata;
  v165 = v163 = requestCopy;
  selfCopy = self;
  if (!v165)
  {
    if (![requestCopy photoEncodingBehavior])
    {
      v34 = [metadata mutableCopy];
      [CAMCaptureMetadataUtilities removeUnwantedKeysForPersistenceFromMetadata:v34];
      v162 = [v34 copy];
      stillImageFullsizeSurface = [resultCopy stillImageFullsizeSurface];
      stillImageFullsizeSurfaceSize = [resultCopy stillImageFullsizeSurfaceSize];
      v37 = objc_alloc(MEMORY[0x1E69BF250]);
      v38 = stillImageFullsizeSurface;
      requestCopy = v163;
      v18 = [v37 initWithIOSurface:v38 length:stillImageFullsizeSurfaceSize];
      v161 = [_localPersistenceThumbnailGenerator newJPEGDataOfFormat:3039 inOrientation:0 usingSurface:stillImageUnfilteredPreviewSurface withMetadata:v168];

      goto LABEL_16;
    }

LABEL_15:
    v161 = 0;
    v162 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  if (!isFilteredImageForFilteredPair)
  {
    goto LABEL_15;
  }

  v16 = *MEMORY[0x1E6982E58];
  if (([v173 conformsToType:*MEMORY[0x1E6982E58]] & 1) == 0 && v12)
  {
    v17 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
    }

    goto LABEL_15;
  }

  v31 = [(CAMPersistenceController *)self _physicallyRotatedJPEGDataFromCapturePhoto:v165];
  selfCopy2 = self;
  v18 = v31;
  if (v31)
  {
    v162 = [(CAMPersistenceController *)selfCopy2 _createMetadataForPhysicallyOrientedImage:metadata];
    v33 = v16;

    v161 = [_localPersistenceThumbnailGenerator newJPEGDataOfFormat:3039 inOrientation:v150 usingSurface:stillImageUnfilteredPreviewSurface withMetadata:metadata];
    v173 = v33;
  }

  else
  {
    v161 = 0;
    v162 = 0;
  }

LABEL_16:
  v159 = v18;
  if (v12)
  {
    v154 = v11;
    stringByDeletingLastPathComponent = [v11 stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v21 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

    if (v21)
    {
      v22 = localDestinationURL;
      goto LABEL_35;
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v182 = 0;
    v28 = [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v182];
    v29 = v182;

    v22 = localDestinationURL;
    if ((v28 & 1) == 0)
    {
      v30 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
      }
    }

    requestCopy = v163;
  }

  else
  {
    shouldPersistToIncomingDirectory = [requestCopy shouldPersistToIncomingDirectory];
    stringByDeletingLastPathComponent = [(CAMPersistenceController *)selfCopy _extensionForUniformType:v173];
    if (isFilteredImageForFilteredPair)
    {
      v24 = v11;
      v25 = localDestinationURL;
      if (representsDeferredFilteredProxy)
      {
        v26 = *MEMORY[0x1E69C00E0];
      }

      else
      {
        v26 = [*MEMORY[0x1E69C00D0] stringByAppendingPathExtension:stringByDeletingLastPathComponent];
      }

      v39 = v26;

      stringByDeletingLastPathComponent = v39;
      v11 = v24;
    }

    else
    {
      v25 = localDestinationURL;
    }

    v40 = [CAMPersistenceController uniquePathForAssetWithUUID:persistenceUUID captureTime:stringByDeletingLastPathComponent extension:shouldPersistToIncomingDirectory usingIncomingDirectory:Current];

    v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v40];
    v29 = v25;
    v154 = v40;
    v18 = v159;
  }

LABEL_35:
  path2 = [v22 path];

  if (!path2)
  {
    v42 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
    }
  }

  if ([requestCopy conformsToProtocol:&unk_1F17598B0])
  {
    burstIdentifier = [requestCopy burstIdentifier];
  }

  else
  {
    burstIdentifier = 0;
  }

  v156 = burstIdentifier;
  v170 = v22;
  v158 = resultCopy;
  if (v18)
  {
    v181 = 0;
    v44 = [(CAMPersistenceController *)selfCopy _writeJPEGToURL:v22 withData:v18 thumbnail:v161 properties:v162 duringBurst:burstIdentifier != 0 error:&v181];
    v45 = v181;
    if (v44)
    {
      goto LABEL_44;
    }

LABEL_53:
    v62 = captureDate;
    v63 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
    }

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    path3 = [v22 path];
    v167 = defaultManager3;
    if ([defaultManager3 fileExistsAtPath:path3])
    {
      v66 = v45;
      v175 = 0;
      v67 = [defaultManager3 removeItemAtURL:v22 error:&v175];
      v152 = v175;

      if (v67)
      {
        v68 = v173;
        v45 = v66;
LABEL_63:
        v174 = v68;
        v69 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
        [v69 setObject:v163 forKeyedSubscript:@"request"];
        [v69 setObject:resultCopy forKeyedSubscript:@"result"];
        [v69 setObject:v45 forKeyedSubscript:*MEMORY[0x1E696AA08]];
        v70 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMPersistenceControllerLocalPersistenceErrorDomain" code:-22500 userInfo:v69];
        v71 = v45;
        v172 = [[CAMStillImageLocalPersistenceResult alloc] initWithCaptureResult:resultCopy atURL:0 linkedURL:0 localAdjustmentsURL:0 diagnosticsPath:0 filteredPreviewPath:0 withUUID:0 creationDate:0 uniformTypeIdentifier:0 orientation:0 metadata:0 adjustmentsData:0 localPrivateMetadataFileURL:0 error:v70];
        v72 = 0;
        v73 = v163;
        v75 = v152;
        v74 = v154;
        v76 = v167;
        goto LABEL_137;
      }

      path3 = os_log_create("com.apple.camera", "Camera");
      v68 = v173;
      if (os_log_type_enabled(path3, OS_LOG_TYPE_ERROR))
      {
        [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
      }

      v45 = v66;
    }

    else
    {
      v68 = v173;
      v152 = 0;
    }

    goto LABEL_63;
  }

  if (v165)
  {
    fileDataRepresentation = [v165 fileDataRepresentation];
  }

  else
  {
    stillImageFullsizeSurface2 = [resultCopy stillImageFullsizeSurface];
    stillImageFullsizeSurfaceSize2 = [resultCopy stillImageFullsizeSurfaceSize];
    fileDataRepresentation = [objc_alloc(MEMORY[0x1E69BF250]) initWithIOSurface:stillImageFullsizeSurface2 length:stillImageFullsizeSurfaceSize2];
  }

  v60 = fileDataRepresentation;
  v180 = 0;
  v61 = [(CAMPersistenceController *)selfCopy _writeDataToURL:v22 withData:fileDataRepresentation duringBurst:burstIdentifier != 0 error:&v180];
  v45 = v180;

  if (!v61)
  {
    goto LABEL_53;
  }

LABEL_44:
  v142 = v45;
  v46 = 0;
  if (stillImageFilteredPreviewSurface && !burstIdentifier)
  {
    v47 = captureDate;
    v48 = v22;
    uRLByDeletingPathExtension = [v22 URLByDeletingPathExtension];
    v50 = [uRLByDeletingPathExtension URLByAppendingPathExtension:*MEMORY[0x1E69C00E0]];
    path4 = [v50 path];

    _localPersistenceThumbnailGenerator2 = [(CAMPersistenceController *)selfCopy _localPersistenceThumbnailGenerator];
    v53 = [_localPersistenceThumbnailGenerator2 newJPEGDataInOrientation:v150 usingSurface:stillImageFilteredPreviewSurface withMetadata:v168];
    if ([v53 length])
    {
      CGImageWriteEXIFJPEGToPath();
      defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
      v55 = path4;
      v56 = [defaultManager4 fileExistsAtPath:path4];

      if (v56)
      {
        burstIdentifier = v156;
        v46 = path4;
        v22 = v48;
        captureDate = v47;
LABEL_73:

        goto LABEL_74;
      }

      v77 = os_log_create("com.apple.camera", "Camera");
      v22 = v48;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v184 = v55;
        _os_log_impl(&dword_1A3640000, v77, OS_LOG_TYPE_DEFAULT, "Failed to write JPEG data for preview surface for %{public}@", buf, 0xCu);
      }

      burstIdentifier = v156;
    }

    else
    {
      v77 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v55 = path4;
        v184 = path4;
        _os_log_impl(&dword_1A3640000, v77, OS_LOG_TYPE_DEFAULT, "Failed to create JPEG data for preview surface for %{public}@", buf, 0xCu);
      }

      else
      {
        v55 = path4;
      }

      v22 = v48;
    }

    captureDate = v47;

    v46 = 0;
    goto LABEL_73;
  }

LABEL_74:
  if ([v160 isUnfilteredImageForFilteredPair])
  {
    v78 = 0;
  }

  else
  {
    predictedFinalAssetPhotoDimensions = [resultCopy predictedFinalAssetPhotoDimensions];
    portraitMetadata = [v165 portraitMetadata];
    v78 = [(CAMPersistenceController *)selfCopy _adjustmentsDataForRequest:requestCopy captureDimensions:predictedFinalAssetPhotoDimensions portraitMetadata:portraitMetadata];
  }

  shouldPersistAdjustmentSidecar = [resultCopy shouldPersistAdjustmentSidecar];
  v81 = [MEMORY[0x1E69BF230] filesystemPersistenceBatchItemForFileAtURL:v22];
  if (v81)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    [v81 setUUIDString:bundleIdentifier forKey:*MEMORY[0x1E69BFD90]];
    if (burstIdentifier)
    {
      [v81 setUUIDString:burstIdentifier forKey:*MEMORY[0x1E69BFD20]];
    }

    [v81 setUInt16:1 forKey:*MEMORY[0x1E69BFDC0]];
    if (!((v78 == 0) | shouldPersistAdjustmentSidecar & 1))
    {
      [v81 setData:v78 forKey:*MEMORY[0x1E69BFDA8]];
    }

    if (v46)
    {
      [v81 setString:v46 forKey:*MEMORY[0x1E69BFDB8]];
    }

    semanticEnhancement = [resultCopy semanticEnhancement];
    if (semanticEnhancement)
    {
      [v81 setInt32:semanticEnhancement forKey:*MEMORY[0x1E69BFDC8]];
    }

    [v81 persist];
  }

  v85 = captureDate;
  [v22 setResourceValue:captureDate forKey:*MEMORY[0x1E695DAA8] error:0];
  v143 = [v168 objectForKey:@"{Diagnostic}"];
  v139 = [v168 objectForKey:*MEMORY[0x1E6985F60]];
  v86 = [v139 objectForKey:*MEMORY[0x1E69912F8]];
  v87 = 0;
  v153 = v46;
  v147 = v86;
  if ((isFilteredImageForFilteredPair & 1) == 0)
  {
    v87 = 0;
    if ([requestCopy shouldPersistDiagnosticsToSidecar])
    {
      if (!deferredPhotoIdentifier)
      {
        v88 = [(CAMPersistenceController *)selfCopy _xmpEncodedDiagnosticDataFromDictionary:v143];
        if ([v88 length])
        {
          uRLByDeletingPathExtension2 = [v22 URLByDeletingPathExtension];
          v90 = [uRLByDeletingPathExtension2 URLByAppendingPathExtension:@"DBG"];

          v179 = 0;
          v87 = v90;
          LOBYTE(v90) = [v88 writeToURL:v90 options:0 error:&v179];
          v91 = v179;
          if ((v90 & 1) == 0)
          {
            v92 = os_log_create("com.apple.camera", "Camera");
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
            }

            v87 = 0;
          }

          v86 = v147;
        }

        else
        {
          v87 = 0;
        }
      }
    }
  }

  v140 = v87;
  v149 = v85;
  if (v86)
  {
    uRLByDeletingPathExtension3 = [v22 URLByDeletingPathExtension];
    v94 = [uRLByDeletingPathExtension3 URLByAppendingPathExtension:@"tvis"];

    v95 = [MEMORY[0x1E696AE40] dataWithPropertyList:v147 format:200 options:0 error:0];
    if ([v95 length])
    {
      v178 = 0;
      v96 = [v95 writeToURL:v94 options:0 error:&v178];
      v97 = v178;
      if ((v96 & 1) == 0)
      {
        v98 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
        }

        v94 = 0;
      }
    }
  }

  privateClientMetadata = [v165 privateClientMetadata];
  uRLByDeletingPathExtension4 = [v22 URLByDeletingPathExtension];
  v101 = [uRLByDeletingPathExtension4 URLByAppendingPathExtension:@"MDATA"];

  v138 = privateClientMetadata;
  if (isFilteredImageForFilteredPair)
  {
    v102 = 0;
  }

  else
  {
    v102 = privateClientMetadata;
  }

  sharedLibraryMode = [requestCopy sharedLibraryMode];
  contactIDsInProximity = [requestCopy contactIDsInProximity];
  sharedLibraryDiagnostics = [requestCopy sharedLibraryDiagnostics];
  v106 = [(CAMPersistenceController *)selfCopy writePrivateMetadataFileToURL:v101 withPrivateClientMetadata:v102 sharedLibraryMode:sharedLibraryMode contactIDsInProximity:contactIDsInProximity sharedLibraryDiagnostics:sharedLibraryDiagnostics];

  v107 = v78;
  if (v106)
  {
    v137 = v101;
  }

  else
  {

    v137 = 0;
  }

  adjustmentFilters = [resultCopy adjustmentFilters];
  v109 = v168;
  v110 = v163;
  v141 = v81;
  if (((adjustmentFilters != 0) & shouldPersistAdjustmentSidecar & isFilteredImageForFilteredPair) == 1)
  {
    portraitMetadata2 = [v165 portraitMetadata];
    v177 = 0;
    v112 = [MEMORY[0x1E69C0670] serializedDictionaryForFilters:adjustmentFilters portraitMetadata:portraitMetadata2 error:&v177];
    v145 = v177;
    if (v112)
    {
      v135 = portraitMetadata2;
      uRLByDeletingPathExtension5 = v22;
      pathExtension = 0;
      do
      {
        v115 = pathExtension;
        v116 = uRLByDeletingPathExtension5;
        pathExtension = [uRLByDeletingPathExtension5 pathExtension];

        uRLByDeletingPathExtension5 = [uRLByDeletingPathExtension5 URLByDeletingPathExtension];
      }

      while ([pathExtension length]);
      v117 = [uRLByDeletingPathExtension5 URLByAppendingPathExtension:*MEMORY[0x1E69C00B8]];

      v118 = v173;
      if ([v112 writeToURL:v117 atomically:1])
      {
        v109 = v168;
        v110 = v163;
      }

      else
      {
        v120 = os_log_create("com.apple.camera", "Camera");
        v109 = v168;
        v110 = v163;
        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
        }

        v117 = 0;
      }

      portraitMetadata2 = v135;
    }

    else
    {
      pathExtension = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(pathExtension, OS_LOG_TYPE_ERROR))
      {
        [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
      }

      v117 = 0;
      v118 = v173;
    }

    v119 = selfCopy;
  }

  else
  {
    v117 = 0;
    v119 = selfCopy;
    v118 = v173;
  }

  v174 = v118;
  v136 = adjustmentFilters;
  v146 = v117;
  if ([v110 temporaryPersistenceOptions] == 2)
  {
    v121 = [(CAMPersistenceController *)v119 _extensionForUniformType:v118];
    if (isFilteredImageForFilteredPair)
    {
      v122 = [*MEMORY[0x1E69C00D0] stringByAppendingPathExtension:v121];

      v121 = v122;
    }

    v123 = [CAMPersistenceController uniquePathForAssetWithUUID:persistenceUUID captureTime:v121 extension:0 usingIncomingDirectory:Current];
    v124 = [MEMORY[0x1E695DFF8] fileURLWithPath:v123];
    defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
    v176 = 0;
    v126 = v124;
    v127 = [defaultManager5 copyItemAtURL:v170 toURL:v124 error:&v176];
    v128 = v176;

    if ((v127 & 1) == 0)
    {
      v129 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v184 = v170;
        v185 = 2114;
        v186 = v124;
        v187 = 2114;
        v188 = v128;
        _os_log_error_impl(&dword_1A3640000, v129, OS_LOG_TYPE_ERROR, "Failed to link %{public}@ to %{public}@, external clients will not have a safe URL (%{public}@)", buf, 0x20u);
      }

      v126 = 0;
    }

    v109 = v168;
  }

  else
  {
    v126 = 0;
  }

  v76 = v107;
  v70 = v140;
  path5 = [v140 path];
  v131 = [CAMStillImageLocalPersistenceResult alloc];
  identifier = [v118 identifier];
  v71 = v142;
  v133 = v131;
  v22 = v170;
  v75 = v153;
  v172 = [(CAMStillImageLocalPersistenceResult *)v133 initWithCaptureResult:v158 atURL:v170 linkedURL:v126 localAdjustmentsURL:v146 diagnosticsPath:path5 filteredPreviewPath:v153 withUUID:persistenceUUID creationDate:v149 uniformTypeIdentifier:identifier orientation:v150 metadata:v109 adjustmentsData:v76 localPrivateMetadataFileURL:v137 error:v142];

  v73 = v163;
  v74 = v154;
  v69 = v141;
  v72 = v126;
  v62 = v149;
LABEL_137:

  return v172;
}

- (id)_physicallyRotatedJPEGDataFromCapturePhoto:(id)photo
{
  v10[1] = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  fileDataRepresentation = [photoCopy fileDataRepresentation];
  metadata = [photoCopy metadata];
  v9 = *MEMORY[0x1E6991AC0];
  v10[0] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  CMPhotoDecompressionCreateCVPixelBufferForIndex();
  v7 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CAMPersistenceController _physicallyRotatedJPEGDataFromCapturePhoto:];
  }

  return 0;
}

- (id)_createMetadataForPhysicallyOrientedImage:(id)image
{
  v137[4] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v4 = *MEMORY[0x1E696DE78];
  v5 = [imageCopy objectForKey:*MEMORY[0x1E696DE78]];
  v6 = *MEMORY[0x1E696D9B0];
  v7 = [imageCopy objectForKey:*MEMORY[0x1E696D9B0]];
  v8 = *MEMORY[0x1E696DAA8];
  v9 = [v7 objectForKey:*MEMORY[0x1E696DAA8]];
  v10 = *MEMORY[0x1E696DAB0];
  v11 = [v7 objectForKey:*MEMORY[0x1E696DAB0]];
  v12 = [imageCopy mutableCopy];
  [v12 setObject:&unk_1F16C7C58 forKeyedSubscript:v4];
  v113 = v5;
  [v5 shortValue];
  PLImageOrientationFromExifOrientation();
  v13 = PLDegreesForImageOrientation();
  v14 = v12;
  IsMirrored = PLImageOrientationIsMirrored();
  if (v13 > 0 || IsMirrored != 0)
  {
    v125 = v10;
    v17 = IsMirrored;
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v7];
    [v14 setObject:v18 forKeyedSubscript:v6];
    v112 = v9;
    [v9 floatValue];
    v20 = v19;
    v111 = v11;
    [v11 floatValue];
    v22 = v21;
    memset(&v135, 0, sizeof(v135));
    v115 = v17;
    [(CAMPersistenceController *)self _affineTransformForRotationDegrees:v13 mirrored:v17];
    v23 = fabs(0.0 * v22 + 0.0 * v20);
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
    [v14 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696DED8]];

    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
    [v14 setObject:v25 forKeyedSubscript:*MEMORY[0x1E696DEC8]];

    v26 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
    [v18 setObject:v26 forKeyedSubscript:v8];

    v27 = v18;
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
    [v18 setObject:v28 forKeyedSubscript:v125];

    v29 = v9;
    v30 = *MEMORY[0x1E696DAF8];
    v31 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DAF8]];
    v32 = v31;
    v109 = imageCopy;
    v110 = v14;
    v108 = v18;
    v116 = v13;
    if (v31)
    {
      v126 = [v31 objectAtIndexedSubscript:0];
      v129 = v30;
      v33 = [v32 objectAtIndexedSubscript:1];
      v123 = v33;
      v34 = [v32 objectAtIndexedSubscript:2];
      v35 = [v32 objectAtIndexedSubscript:3];
      [v126 floatValue];
      v37 = v36;
      v121 = v34;
      [v34 floatValue];
      v39 = (v37 - v38 * 0.5) / v20;
      [v33 floatValue];
      v41 = v40;
      [v35 floatValue];
      v43 = (v41 - v42 * 0.5) / v22;
      [v34 floatValue];
      v45 = v44 / v20;
      [v35 floatValue];
      v134 = v135;
      v139.size.height = v46 / v22;
      v139.origin.x = v39;
      v139.origin.y = v43;
      v139.size.width = v45;
      v140 = CGRectApplyAffineTransform(v139, &v134);
      x = v140.origin.x;
      y = v140.origin.y;
      width = v140.size.width;
      height = v140.size.height;
      LODWORD(imageCopy) = llround(v23 * CGRectGetMidX(v140));
      v141.origin.x = x;
      v141.origin.y = y;
      v141.size.width = width;
      v141.size.height = height;
      v51 = __PAIR64__(HIDWORD(v126), llround(v23 * CGRectGetMidY(v141)));
      v142.origin.x = x;
      v142.origin.y = y;
      v142.size.width = width;
      v142.size.height = height;
      v52 = v32;
      v53 = v7;
      LODWORD(v7) = llround(v23 * CGRectGetWidth(v142));
      v143.origin.x = x;
      v143.origin.y = y;
      v143.size.width = width;
      v143.size.height = height;
      LODWORD(v33) = llround(v23 * CGRectGetHeight(v143));
      v54 = [MEMORY[0x1E696AD98] numberWithShort:imageCopy];
      v137[0] = v54;
      v55 = [MEMORY[0x1E696AD98] numberWithShort:v51];
      v137[1] = v55;
      v56 = [MEMORY[0x1E696AD98] numberWithShort:v7];
      v137[2] = v56;
      v57 = [MEMORY[0x1E696AD98] numberWithShort:v33];
      v137[3] = v57;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:4];

      v7 = v53;
      v32 = v52;

      v27 = v108;
      imageCopy = v109;
      [v108 setObject:v58 forKeyedSubscript:v129];
    }

    v59 = v27;
    v9 = v29;
    v11 = v111;
    v60 = *MEMORY[0x1E696D8B0];
    [v7 objectForKeyedSubscript:*MEMORY[0x1E696D8B0]];
    v62 = v61 = v7;
    v63 = [v62 objectForKeyedSubscript:@"Regions"];
    v107 = *MEMORY[0x1E696D930];
    v64 = [v63 objectForKeyedSubscript:?];
    if ([v64 count])
    {
      v103 = v60;
      v105 = v63;
      v106 = v32;
      array = [MEMORY[0x1E695DF70] array];
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v104 = v64;
      obj = v64;
      v122 = [obj countByEnumeratingWithState:&v130 objects:v136 count:16];
      if (v122)
      {
        v119 = *v131;
        v118 = *MEMORY[0x1E696D948];
        v117 = *MEMORY[0x1E696D928];
        v66 = *MEMORY[0x1E696D940];
        v65 = *MEMORY[0x1E696D950];
        do
        {
          for (i = 0; i != v122; ++i)
          {
            if (*v131 != v119)
            {
              objc_enumerationMutation(obj);
            }

            v68 = *(*(&v130 + 1) + 8 * i);
            v69 = [v68 objectForKeyedSubscript:v118];
            v70 = [v68 objectForKeyedSubscript:v65];
            v71 = [v68 objectForKeyedSubscript:v66];
            v72 = [v68 objectForKeyedSubscript:v117];
            [v69 floatValue];
            v74 = v73;
            [v71 floatValue];
            v76 = v74 - v75 * 0.5;
            v127 = v70;
            [v70 floatValue];
            v78 = v77;
            [v72 floatValue];
            v80 = v78 - v79 * 0.5;
            v124 = v71;
            [v71 floatValue];
            v82 = v81;
            [v72 floatValue];
            v144.size.height = v83;
            v134 = v135;
            v144.origin.x = v76;
            v144.origin.y = v80;
            v144.size.width = v82;
            v145 = CGRectApplyAffineTransform(v144, &v134);
            v84 = v145.origin.x;
            v85 = v145.origin.y;
            v86 = v145.size.width;
            v87 = v145.size.height;
            v88 = [v68 mutableCopy];
            v146.origin.x = v84;
            v146.origin.y = v85;
            v146.size.width = v86;
            v146.size.height = v87;
            v89 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMidX(v146)];
            [v88 setObject:v89 forKeyedSubscript:v118];

            v147.origin.x = v84;
            v147.origin.y = v85;
            v147.size.width = v86;
            v147.size.height = v87;
            v90 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMidY(v147)];
            [v88 setObject:v90 forKeyedSubscript:v65];

            v148.origin.x = v84;
            v148.origin.y = v85;
            v148.size.width = v86;
            v148.size.height = v87;
            v91 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetWidth(v148)];
            [v88 setObject:v91 forKeyedSubscript:v66];

            v149.origin.x = v84;
            v149.origin.y = v85;
            v149.size.width = v86;
            v149.size.height = v87;
            v92 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetHeight(v149)];
            [v88 setObject:v92 forKeyedSubscript:v117];

            v93 = [v68 objectForKeyedSubscript:@"AngleInfoRoll"];
            v94 = v93;
            if (v93)
            {
              v95 = [v93 intValue] + v116;
              if (v115)
              {
                v95 = -v95;
              }

              v96 = [MEMORY[0x1E696AD98] numberWithInt:(v95 % 360)];
              [v88 setObject:v96 forKeyedSubscript:@"AngleInfoRoll"];
            }

            [array addObject:v88];
          }

          v122 = [obj countByEnumeratingWithState:&v130 objects:v136 count:16];
        }

        while (v122);
      }

      v59 = v108;
      v63 = v105;
      if ([array count])
      {
        v97 = [v105 mutableCopy];
        [v97 setObject:array forKeyedSubscript:v107];
        v98 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
        [v97 setObject:v98 forKeyedSubscript:*MEMORY[0x1E696D8E0]];

        v99 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
        [v97 setObject:v99 forKeyedSubscript:*MEMORY[0x1E696D8D8]];

        v100 = [v62 mutableCopy];
        [v100 setObject:v97 forKeyedSubscript:@"Regions"];
        [v108 setObject:v100 forKeyedSubscript:v103];
        [v110 setObject:v100 forKeyedSubscript:v103];
      }

      imageCopy = v109;
      v32 = v106;
      v11 = v111;
      v9 = v112;
      v64 = v104;
    }

    v7 = v61;
    v14 = v110;
  }

  [CAMCaptureMetadataUtilities removeUnwantedKeysForPersistenceFromMetadata:v14];
  v101 = [v14 copy];

  return v101;
}

- (CGAffineTransform)_affineTransformForRotationDegrees:(SEL)degrees mirrored:(int)mirrored
{
  v5 = a5;
  v8 = MEMORY[0x1E695EFD0];
  v17 = *(MEMORY[0x1E695EFD0] + 16);
  v18 = *MEMORY[0x1E695EFD0];
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v17;
  v16 = *(v8 + 32);
  *&retstr->tx = v16;
  CGAffineTransformMakeTranslation(&t2, -0.5, -0.5);
  *&t1.a = v18;
  *&t1.c = v17;
  *&t1.tx = v16;
  CGAffineTransformConcat(retstr, &t1, &t2);
  if (v5)
  {
    CGAffineTransformMakeScale(&t1, -1.0, 1.0);
    v9 = *&retstr->c;
    *&v20.a = *&retstr->a;
    *&v20.c = v9;
    *&v20.tx = *&retstr->tx;
    CGAffineTransformConcat(&t2, &v20, &t1);
    v10 = *&t2.c;
    *&retstr->a = *&t2.a;
    *&retstr->c = v10;
    *&retstr->tx = *&t2.tx;
  }

  if (mirrored >= 1)
  {
    memset(&t2, 0, sizeof(t2));
    CGAffineTransformMakeRotation(&t2, mirrored * 0.0174532925);
    v11 = *&retstr->c;
    *&v20.a = *&retstr->a;
    *&v20.c = v11;
    *&v20.tx = *&retstr->tx;
    v19 = t2;
    CGAffineTransformConcat(&t1, &v20, &v19);
    v12 = *&t1.c;
    *&retstr->a = *&t1.a;
    *&retstr->c = v12;
    *&retstr->tx = *&t1.tx;
  }

  CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
  v13 = *&retstr->c;
  *&v20.a = *&retstr->a;
  *&v20.c = v13;
  *&v20.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&t2, &v20, &t1);
  v15 = *&t2.c;
  *&retstr->a = *&t2.a;
  *&retstr->c = v15;
  *&retstr->tx = *&t2.tx;
  return result;
}

- (id)_persistenceErrorForWriteStream:(__CFWriteStream *)stream url:(id)url code:(int64_t)code
{
  v13[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  if (!stream || (v8 = CFWriteStreamCopyError(stream)) == 0)
  {
    v9 = MEMORY[0x1E696ABC0];
    v12 = @"url";
    v13[0] = urlCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v9 errorWithDomain:@"CAMPersistenceControllerLocalPersistenceErrorDomain" code:code userInfo:v10];
  }

  return v8;
}

- (__CFWriteStream)_createOpenWriteStreamWithURL:(id)l forBurst:(BOOL)burst error:(id *)error
{
  burstCopy = burst;
  lCopy = l;
  v9 = CFWriteStreamCreateWithFile(*MEMORY[0x1E695E480], lCopy);
  v10 = v9;
  if (!v9)
  {
    v13 = [(CAMPersistenceController *)self _persistenceErrorForWriteStream:0 url:lCopy code:-22499];
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!CFWriteStreamOpen(v9))
  {
    selfCopy2 = self;
    v15 = v10;
    v16 = lCopy;
    v17 = -22498;
    goto LABEL_12;
  }

  v11 = CFWriteStreamCopyProperty(v10, @"_kCFStreamPropertyFileNativeHandle");
  if (!v11)
  {
    selfCopy2 = self;
    v15 = v10;
    v16 = lCopy;
    v17 = -22497;
LABEL_12:
    v13 = [(CAMPersistenceController *)selfCopy2 _persistenceErrorForWriteStream:v15 url:v16 code:v17];
    CFRelease(v10);
    v10 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

LABEL_13:
    v18 = v13;
    *error = v13;
    goto LABEL_14;
  }

  v12 = v11;
  *buffer = 0;
  v21.location = 0;
  v21.length = 4;
  CFDataGetBytes(v11, v21, buffer);
  fcntl(*buffer, 48, 1);
  fcntl(*buffer, 62, 1);
  if (burstCopy)
  {
    fcntl(*buffer, 82, 1);
  }

  CFRelease(v12);
  v13 = 0;
  if (error)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v10;
}

- (BOOL)_writeJPEGToURL:(id)l withData:(id)data thumbnail:(id)thumbnail properties:(id)properties duringBurst:(BOOL)burst error:(id *)error
{
  burstCopy = burst;
  dataCopy = data;
  thumbnailCopy = thumbnail;
  propertiesCopy = properties;
  v22 = 0;
  v17 = [(CAMPersistenceController *)self _createOpenWriteStreamWithURL:l forBurst:burstCopy error:&v22];
  v18 = v22;
  if (!v17)
  {
    v19 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = CGImageWriteEXIFJPEGWithMetadata();
  CFWriteStreamClose(v17);
  CFRelease(v17);

  v18 = 0;
  if (error)
  {
LABEL_3:
    v20 = v18;
    *error = v18;
  }

LABEL_4:

  return v19;
}

- (BOOL)_writeDataToURL:(id)l withData:(id)data duringBurst:(BOOL)burst error:(id *)error
{
  burstCopy = burst;
  dataCopy = data;
  v18 = 0;
  v11 = [(CAMPersistenceController *)self _createOpenWriteStreamWithURL:l forBurst:burstCopy error:&v18];
  v12 = v18;
  if (!v11)
  {
    v14 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = CFWriteStreamWrite(v11, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  v14 = v13 > 0;
  if (v13 <= 0)
  {
    v15 = CFWriteStreamCopyError(v11);

    v12 = v15;
  }

  CFWriteStreamClose(v11);
  CFRelease(v11);
  if (error)
  {
LABEL_5:
    v16 = v12;
    *error = v12;
  }

LABEL_6:

  return v14;
}

- (id)_adjustmentsDataForCinematicVideoRequest:(id)request result:(id)result
{
  v22 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v6 = MEMORY[0x1E69C0730];
  requestCopy = request;
  v8 = objc_alloc_init(v6);
  [v8 setDepthEnabled:1];
  [v8 setCinematicVideoRenderingVersion:{objc_msgSend(MEMORY[0x1E69BDDD8], "currentSystemRenderingVersion")}];
  audioConfiguration = [requestCopy audioConfiguration];

  if (audioConfiguration == 3)
  {
    v10 = objc_alloc(MEMORY[0x1E69C0718]);
    localDestinationURL = [resultCopy localDestinationURL];
    v12 = [v10 initWithAVURL:localDestinationURL options:13 timeZoneLookup:0];

    hasSpatialAudio = [v12 hasSpatialAudio];
    if ((hasSpatialAudio & 1) == 0)
    {
      v14 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "Cinematic video does not have spatial audio, possibly due to DSTM.", buf, 2u);
      }
    }
  }

  else
  {
    hasSpatialAudio = 0;
  }

  [v8 setIsEligibleForCinematicAudioEffectProcessing:hasSpatialAudio];
  v19 = 0;
  v15 = [MEMORY[0x1E69C0670] serializedAdjustments:v8 error:&v19];
  v16 = v19;
  if (!v15)
  {
    v17 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v16;
      _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "Failed to serialize camera adjustments data for cinematic video error: %{public}@", buf, 0xCu);
    }
  }

  return v15;
}

- (id)_adjustmentsDataForVideoRequest:(id)request
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C0730];
  requestCopy = request;
  v5 = objc_alloc_init(v3);
  audioConfiguration = [requestCopy audioConfiguration];

  [v5 setIsEligibleForCinematicAudioEffectProcessing:audioConfiguration == 3];
  v11 = 0;
  v7 = [MEMORY[0x1E69C0670] serializedAdjustments:v5 error:&v11];
  v8 = v11;
  if (!v7)
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Failed to serialize camera adjustments data for video error: %{public}@", buf, 0xCu);
    }
  }

  return v7;
}

- (id)_adjustmentsDataForSloMoVideoRequest:(id)request
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69C0730]);
  if (objc_opt_respondsToSelector())
  {
    [v3 setSloMoEnabled:1];
    v8 = 0;
    v4 = [MEMORY[0x1E69C0670] serializedAdjustments:v3 error:&v8];
    v5 = v8;
    if (!v4)
    {
      v6 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v10 = v5;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Failed to serialize camera adjustments data for sloMo video error: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_adjustmentsDataForRequest:(id)request captureDimensions:(id)dimensions portraitMetadata:(id)metadata
{
  v52 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  metadataCopy = metadata;
  v10 = requestCopy;
  if ([v10 captureMode] == 1 || objc_msgSend(v10, "captureMode") == 8)
  {
    v11 = [(CAMPersistenceController *)self _adjustmentsDataForVideoRequest:v10];
LABEL_4:
    v12 = v11;
    goto LABEL_5;
  }

  if ([v10 captureMode] == 2 && objc_msgSend(v10, "type") == 1)
  {
    v11 = [(CAMPersistenceController *)self _adjustmentsDataForSloMoVideoRequest:v10];
    goto LABEL_4;
  }

  if ([v10 conformsToProtocol:&unk_1F1759850] && objc_msgSend(v10, "hasAdjustments"))
  {
    v14 = +[CAMCaptureCapabilities capabilities];
    supportedPortraitLightingVersion = [v14 supportedPortraitLightingVersion];

    v16 = [MEMORY[0x1E6993870] ciFilterNameForLightingType:objc_msgSend(v10 version:{"lightingEffectType"), supportedPortraitLightingVersion}];
    v17 = +[CAMEffectFilterManager ciFilterNameForFilterType:](CAMEffectFilterManager, "ciFilterNameForFilterType:", [v10 effectFilterType]);
    aspectRatioCrop = [v10 aspectRatioCrop];
    v19 = *MEMORY[0x1E69C09B0];
    v20 = *(MEMORY[0x1E69C09B0] + 8);
    v21 = *(MEMORY[0x1E69C09B0] + 16);
    v22 = *(MEMORY[0x1E69C09B0] + 24);
    v23 = v22;
    v24 = v21;
    v25 = v20;
    v26 = *MEMORY[0x1E69C09B0];
    if (aspectRatioCrop)
    {
      v41 = *(MEMORY[0x1E69C09B0] + 8);
      v42 = *MEMORY[0x1E69C09B0];
      var0 = dimensions.var0;
      var1 = dimensions.var1;
      [CAMAspectCropUtilities cropRectForAspectRatio:aspectRatioCrop inImageBounds:0.0, 0.0, dimensions.var0, dimensions.var1];
      v26 = v29;
      v25 = v30;
      v24 = v31;
      v23 = v32;
      v54.origin.x = 0.0;
      v54.origin.y = 0.0;
      v54.size.width = dimensions.var0;
      v54.size.height = dimensions.var1;
      v56.origin.x = v26;
      v56.origin.y = v25;
      v56.size.width = v24;
      v56.size.height = v23;
      if (CGRectEqualToRect(v54, v56))
      {
        v33 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [(CAMPersistenceController *)aspectRatioCrop _adjustmentsDataForRequest:v33 captureDimensions:0.0 portraitMetadata:0.0, var0, var1];
        }
      }

      v20 = v41;
      v19 = v42;
    }

    if (metadataCopy || v17 || v16 || (v55.origin.x = v26, v55.origin.y = v25, v55.size.width = v24, v55.size.height = v23, v34 = v21, v35 = v22, !CGRectEqualToRect(v55, *&v19)))
    {
      v36 = objc_alloc_init(MEMORY[0x1E69C0730]);
      [v36 setEffectFilterName:v17];
      [v36 setPortraitEffectFilterName:v16];
      [v36 setPortraitMetadata:metadataCopy];
      [v36 setDepthEnabled:metadataCopy != 0];
      [v36 setCropRect:v26, v25, v24, v23];
      v43 = 0;
      v12 = [MEMORY[0x1E69C0670] serializedAdjustments:v36 error:&v43];
      v38 = v43;
      if (!v12)
      {
        v39 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          if (aspectRatioCrop > 6)
          {
            v40 = 0;
          }

          else
          {
            v40 = off_1E76FB840[aspectRatioCrop];
          }

          *buf = 138544130;
          v45 = v17;
          v46 = 2114;
          v47 = v16;
          v48 = 2114;
          v49 = v40;
          v50 = 2114;
          v51 = v38;
          _os_log_impl(&dword_1A3640000, v39, OS_LOG_TYPE_DEFAULT, "Failed to serialize camera adjustments data for filter name: %{public}@; lighting name: %{public}@; crop aspect: %{public}@; error: %{public}@", buf, 0x2Au);
        }
      }
    }

    else
    {
      v36 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [MEMORY[0x1E6993870] displayNameForLightingType:{objc_msgSend(v10, "lightingEffectType")}];
        *buf = 138543362;
        v45 = v37;
        _os_log_impl(&dword_1A3640000, v36, OS_LOG_TYPE_DEFAULT, "No adjustments needed for request even though hasAdjustments=YES: %{public}@", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_5:

  return v12;
}

- (id)_xmpEncodedDiagnosticDataFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionaryCopy format:200 options:0 error:0];
    v6 = [v5 base64EncodedStringWithOptions:0];
    Mutable = CGImageMetadataCreateMutable();
    if (Mutable)
    {
      v8 = Mutable;
      CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.apple.com/ios_debug", @"ios_debug", 0);
      CGImageMetadataSetValueWithPath(v8, 0, @"ios_debug:camera_diagnostics_bplist", v6);
      XMPData = CGImageMetadataCreateXMPData(v8, 0);
      CFRelease(v8);
    }

    else
    {
      XMPData = 0;
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    XMPData = 0;
  }

  return XMPData;
}

- (id)_jobDictionaryForStillImageLocalResult:(id)result filteredLocalResult:(id)localResult fromRequest:(id)request loggingIdentifier:(id)identifier
{
  v97 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  localResultCopy = localResult;
  requestCopy = request;
  v12 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  v14 = objc_alloc_init(v12);
  [v14 setObject:*MEMORY[0x1E69C0458] forKey:*MEMORY[0x1E69C0410]];
  uniformTypeIdentifier = [resultCopy uniformTypeIdentifier];
  [v14 setObject:? forKey:?];
  localDestinationURL = [resultCopy localDestinationURL];
  path = [localDestinationURL path];
  [v14 setObject:? forKey:?];
  captureResult = [localResultCopy captureResult];
  representsDeferredFilteredProxy = [captureResult representsDeferredFilteredProxy];

  v86 = representsDeferredFilteredProxy;
  if ((representsDeferredFilteredProxy & 1) == 0)
  {
    localDestinationURL2 = [localResultCopy localDestinationURL];
    path2 = [localDestinationURL2 path];
    [v14 setObject:path2 forKeyedSubscript:*MEMORY[0x1E69C04C0]];
  }

  imageOrientation = [resultCopy imageOrientation];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:imageOrientation];
  [v14 setObject:v20 forKey:*MEMORY[0x1E69C0400]];

  captureResult2 = [resultCopy captureResult];
  deferredPhotoIdentifier = [captureResult2 deferredPhotoIdentifier];
  [v14 setObject:deferredPhotoIdentifier forKeyedSubscript:*MEMORY[0x1E69C03B0]];

  [v14 setObject:identifierCopy forKeyedSubscript:@"captureLogID"];
  metadata = [resultCopy metadata];
  if ([requestCopy type])
  {
    v24 = CAMSizeForPhotoMetadata(metadata);
    v26 = v25;
  }

  else
  {
    v27 = requestCopy;
    captureResult3 = [resultCopy captureResult];
    capturePhoto = [captureResult3 capturePhoto];

    captureResult4 = [resultCopy captureResult];
    predictedFinalAssetPhotoDimensions = [captureResult4 predictedFinalAssetPhotoDimensions];

    v32 = PLExifOrientationFromImageOrientation();
    aspectRatioCrop = [v27 aspectRatioCrop];
    if (capturePhoto)
    {
      [CAMAspectCropUtilities finalExpectedSizeWithCaptureDimensions:predictedFinalAssetPhotoDimensions orientation:v32 aspectRatio:aspectRatioCrop];
    }

    else
    {
      [CAMAspectCropUtilities finalExpectedSizeWithPhotoMetadata:metadata aspectRatio:aspectRatioCrop];
    }

    v24 = v34;
    v26 = v35;
  }

  v36 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
  [v14 setObject:v36 forKeyedSubscript:*MEMORY[0x1E69C03F0]];

  v37 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
  [v14 setObject:v37 forKeyedSubscript:*MEMORY[0x1E69C03E0]];

  localAdjustmentsURL = [localResultCopy localAdjustmentsURL];
  v39 = localAdjustmentsURL;
  if (localAdjustmentsURL)
  {
    path3 = [localAdjustmentsURL path];
    [v14 setObject:path3 forKeyedSubscript:*MEMORY[0x1E69C04B8]];
  }

  localAdjustmentsURL2 = [resultCopy localAdjustmentsURL];
  if (localAdjustmentsURL2)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v92 = 0;
    v42 = [defaultManager removeItemAtURL:localAdjustmentsURL2 error:&v92];
    v43 = v92;

    if ((v42 & 1) == 0)
    {
      v44 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v94 = localAdjustmentsURL2;
        v95 = 2114;
        v96 = v43;
        _os_log_impl(&dword_1A3640000, v44, OS_LOG_TYPE_DEFAULT, "Failed to delete adjustments file when ingesting fullsize render as stand-alone asset %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  v85 = v39;
  captureResult5 = [resultCopy captureResult];
  coordinationInfo = [captureResult5 coordinationInfo];
  v82 = coordinationInfo;
  v91 = localResultCopy;
  if (!coordinationInfo)
  {
    v49 = requestCopy;
    v50 = imageOrientation;
    localPersistenceUUID = [resultCopy localPersistenceUUID];
    goto LABEL_23;
  }

  isFilteredImageForFilteredPair = [coordinationInfo isFilteredImageForFilteredPair];
  localPersistenceUUID = [resultCopy localPersistenceUUID];
  v49 = requestCopy;
  v50 = imageOrientation;
  if (!isFilteredImageForFilteredPair)
  {
LABEL_23:
    v54 = localPersistenceUUID;
    localPersistenceUUID2 = [resultCopy localPersistenceUUID];
    goto LABEL_24;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  localPersistenceUUID2 = [uUID UUIDString];

  v53 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v94 = localPersistenceUUID;
    v95 = 2114;
    v96 = localPersistenceUUID2;
    _os_log_impl(&dword_1A3640000, v53, OS_LOG_TYPE_DEFAULT, "Persisting fullsize render for unfiltered+filtered pair %{public}@ as stand alone asset with new UUID %{public}@", buf, 0x16u);
  }

  v54 = localPersistenceUUID;

LABEL_24:
  v80 = localPersistenceUUID2;
  [v14 setObject:localPersistenceUUID2 forKey:*MEMORY[0x1E69C0390]];
  compactMetadata = [captureResult5 compactMetadata];
  [v14 setObject:compactMetadata forKeyedSubscript:*MEMORY[0x1E69C03C8]];

  stillImageFilteredPreviewSurface = [captureResult5 stillImageFilteredPreviewSurface];
  stillImageUnfilteredPreviewSurface = [captureResult5 stillImageUnfilteredPreviewSurface];
  if (!stillImageFilteredPreviewSurface)
  {
    stillImageFilteredPreviewSurface = stillImageUnfilteredPreviewSurface;
  }

  _remotePersistenceThumbnailGenerator = [(CAMPersistenceController *)self _remotePersistenceThumbnailGenerator];
  v58 = [_remotePersistenceThumbnailGenerator newJPEGDataOfFormat:objc_msgSend(MEMORY[0x1E69BF160] inOrientation:"masterThumbnailFormat") usingSurface:v50 withMetadata:stillImageFilteredPreviewSurface, metadata];
  if (v58)
  {
    [v14 setObject:v58 forKey:*MEMORY[0x1E69C0540]];
  }

  v81 = v58;
  if ([v49 capturedFromPhotoBooth])
  {
    savedAssetTypeForPhotoBoothAsset = [MEMORY[0x1E69BF178] savedAssetTypeForPhotoBoothAsset];
  }

  else
  {
    savedAssetTypeForPhotoBoothAsset = [MEMORY[0x1E69BF178] savedAssetTypeForCameraCapturedAsset];
  }

  v60 = v54;
  v61 = [MEMORY[0x1E696AD98] numberWithShort:savedAssetTypeForPhotoBoothAsset];
  [v14 setObject:v61 forKey:*MEMORY[0x1E69C0558]];

  [v14 setObject:&unk_1F16C7C88 forKey:*MEMORY[0x1E69C0308]];
  if ([v49 conformsToProtocol:&unk_1F17598B0])
  {
    burstIdentifier = [v49 burstIdentifier];
    if (burstIdentifier)
    {
      [v14 setObject:burstIdentifier forKey:*MEMORY[0x1E69C0360]];
      [v14 setObject:&unk_1F16C7CA0 forKey:*MEMORY[0x1E69C0358]];
      [v14 setObject:&unk_1F16C7CB8 forKey:*MEMORY[0x1E69C0368]];
    }
  }

  v63 = MEMORY[0x1E695E118];
  [v14 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C0520]];
  [v14 setObject:v63 forKey:*MEMORY[0x1E69C02F8]];
  [v14 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69C0550]];
  captureDevice = [v49 captureDevice];
  v65 = [MEMORY[0x1E696AD98] numberWithBool:(captureDevice > 0xB) | (0xFDu >> captureDevice) & 1];
  [v14 setObject:v65 forKey:*MEMORY[0x1E69C0370]];

  adjustmentsData = [v91 adjustmentsData];
  if (adjustmentsData || ([resultCopy adjustmentsData], (adjustmentsData = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v67 = adjustmentsData;
    [v14 setObject:adjustmentsData forKeyedSubscript:*MEMORY[0x1E69C0350]];
  }

  v68 = v49;
  v69 = v60;
  if ((v86 & 1) == 0)
  {
    localFilteredPreviewPath = [resultCopy localFilteredPreviewPath];
    if (!localFilteredPreviewPath)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  localDestinationURL3 = [v91 localDestinationURL];
  localFilteredPreviewPath = [localDestinationURL3 path];

  if (localFilteredPreviewPath)
  {
LABEL_42:
    [v14 setObject:localFilteredPreviewPath forKeyedSubscript:*MEMORY[0x1E69C04D8]];
  }

LABEL_43:
  localDiagnosticsPath = [resultCopy localDiagnosticsPath];
  if (localDiagnosticsPath)
  {
    [v14 setObject:localDiagnosticsPath forKeyedSubscript:*MEMORY[0x1E69C04D0]];
  }

  localPrivateMetadataFileURL = [resultCopy localPrivateMetadataFileURL];
  path4 = [localPrivateMetadataFileURL path];
  [v14 setObject:path4 forKeyedSubscript:*MEMORY[0x1E69C0378]];

  if ([v68 conformsToProtocol:&unk_1F1759A58])
  {
    isExpectingPairedVideo = [captureResult5 isExpectingPairedVideo];
    v76 = [MEMORY[0x1E696AD98] numberWithBool:isExpectingPairedVideo];
    [v14 setObject:v76 forKeyedSubscript:*MEMORY[0x1E69C04F0]];

    if (isExpectingPairedVideo)
    {
      coordinationInfo2 = [captureResult5 coordinationInfo];
      v78 = [v68 irisIdentifierForEV0:{objc_msgSend(coordinationInfo2, "isEV0ForHDREV0Pair")}];
      [v14 setObject:v78 forKeyedSubscript:*MEMORY[0x1E69C0500]];
    }
  }

  return v14;
}

- (void)_notifyDelegateOfCompletedStillImageRemotePersistenceForRequest:(id)request withReply:(id)reply fromBatchOfSize:(unint64_t)size error:(id)error
{
  requestCopy = request;
  replyCopy = reply;
  errorCopy = error;
  v10 = [replyCopy objectForKey:*MEMORY[0x1E69C0390]];
  v11 = [replyCopy objectForKey:*MEMORY[0x1E69C0398]];
  v12 = [replyCopy objectForKey:*MEMORY[0x1E69C03C8]];
  v13 = [replyCopy objectForKey:*MEMORY[0x1E69C04F0]];
  bOOLValue = [v13 BOOLValue];

  if ([requestCopy conformsToProtocol:&unk_1F1759928])
  {
    burstIdentifier = [requestCopy burstIdentifier];
  }

  else
  {
    size = 0;
    burstIdentifier = 0;
  }

  v16 = [replyCopy objectForKeyedSubscript:*MEMORY[0x1E69C03F0]];
  [v16 doubleValue];
  v18 = v17;

  v19 = [replyCopy objectForKeyedSubscript:*MEMORY[0x1E69C03E0]];
  [v19 doubleValue];
  v21 = v20;

  v22 = [replyCopy objectForKey:*MEMORY[0x1E69C04C8]];
  if (v22)
  {
    v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:v22];
  }

  else
  {
    v23 = 0;
  }

  LOBYTE(v29) = bOOLValue;
  v24 = -[CAMStillImagePersistenceResponse initWithUUID:captureSession:url:creationDate:scrubberImage:finalExpectedPixelSize:metadata:burstIdentifier:burstRepresentedCount:expectingPairedVideo:coordinationInfo:]([CAMStillImagePersistenceResponse alloc], "initWithUUID:captureSession:url:creationDate:scrubberImage:finalExpectedPixelSize:metadata:burstIdentifier:burstRepresentedCount:expectingPairedVideo:coordinationInfo:", v10, [requestCopy sessionIdentifier], v23, v11, 0, v12, v18, v21, burstIdentifier, size, v29, 0);
  type = [requestCopy type];
  if (type == 2)
  {
    v28 = requestCopy;
    delegate = [v28 delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate panoramaRequestDidCompleteRemotePersistence:v28 withResponse:v24 error:errorCopy];
    }
  }

  else
  {
    if (type)
    {
      goto LABEL_16;
    }

    v26 = requestCopy;
    delegate = [v26 delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate stillImageRequestDidCompleteStillImageRemotePersistence:v26 withResponse:v24 error:errorCopy];
    }
  }

LABEL_16:
}

- (void)_handleCompletedStillImageJobForRequest:(id)request withReply:(id)reply fromBatchOfSize:(unint64_t)size completionHandler:(id)handler error:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  replyCopy = reply;
  handlerCopy = handler;
  errorCopy = error;
  if (errorCopy)
  {
    v16 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v26 = errorCopy;
      v27 = 2114;
      v28 = requestCopy;
      v29 = 2114;
      v30 = replyCopy;
      v31 = 2048;
      sizeCopy = size;
      _os_log_error_impl(&dword_1A3640000, v16, OS_LOG_TYPE_ERROR, "Failed to remotely persist still image, error=%{public}@, request=%{public}@, reply=%{public}@, batchSize:%ld", buf, 0x2Au);
    }
  }

  v22 = MEMORY[0x1E69E9820];
  v17 = requestCopy;
  v23 = replyCopy;
  v24 = handlerCopy;
  v18 = handlerCopy;
  v19 = errorCopy;
  v20 = replyCopy;
  pl_dispatch_async();
  if ([v17 shouldProtectPersistence])
  {
    _protectionController = [(CAMPersistenceController *)self _protectionController];
    [_protectionController stopProtectingPersistenceForRequest:v17];
  }

  CAMSignpostWithIDAndArgs(52, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
}

uint64_t __118__CAMPersistenceController__handleCompletedStillImageJobForRequest_withReply_fromBatchOfSize_completionHandler_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyDelegateOfCompletedStillImageRemotePersistenceForRequest:*(a1 + 40) withReply:*(a1 + 48) fromBatchOfSize:*(a1 + 72) error:*(a1 + 56)];
  result = *(a1 + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_remotelyPersistStillImageJob:(id)job forRequest:(id)request loggingIdentifier:(id)identifier completionHandler:(id)handler
{
  requestCopy = request;
  identifierCopy = identifier;
  handlerCopy = handler;
  v13 = *MEMORY[0x1E69C0390];
  jobCopy = job;
  v15 = [jobCopy objectForKeyedSubscript:v13];
  Current = CFAbsoluteTimeGetCurrent();
  mEMORY[0x1E69BF198] = [MEMORY[0x1E69BF198] sharedSystemLibraryAssetsdClient];
  resourceClient = [mEMORY[0x1E69BF198] resourceClient];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __105__CAMPersistenceController__remotelyPersistStillImageJob_forRequest_loggingIdentifier_completionHandler___block_invoke;
  v23[3] = &unk_1E76FB628;
  v29 = Current;
  v24 = identifierCopy;
  v25 = v15;
  selfCopy = self;
  v27 = requestCopy;
  v28 = handlerCopy;
  v19 = handlerCopy;
  v20 = requestCopy;
  v21 = v15;
  v22 = identifierCopy;
  [resourceClient saveAssetWithJobDictionary:jobCopy imageSurface:0 previewImageSurface:0 completionHandler:v23];
}

void __105__CAMPersistenceController__remotelyPersistStillImageJob_forRequest_loggingIdentifier_completionHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  if (a2)
  {
    v10 = Current;
    v11 = *(a1 + 72);
    v12 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69C03E8]];
    v13 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v18 = 138544130;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v12;
      v24 = 2048;
      v25 = v10 - v11;
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ PersistenceController: added photo to library as %{public}@ %{public}@ (took %.3f seconds)", &v18, 0x2Au);
    }
  }

  else
  {
    v12 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = 138543874;
      v19 = v16;
      v20 = 2114;
      v21 = v17;
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ PersistenceController: error adding photo to library %{public}@: %{public}@", &v18, 0x20u);
    }
  }

  [*(a1 + 48) _handleCompletedStillImageJobForRequest:*(a1 + 56) withReply:v7 fromBatchOfSize:1 completionHandler:*(a1 + 64) error:v8];
}

- (void)_handleVideoPersistenceForRequest:(id)request withResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  persistenceOptions = [requestCopy persistenceOptions];
  if (persistenceOptions)
  {
    v9 = persistenceOptions;
    if (persistenceOptions != 3)
    {
      error = [resultCopy error];
      if (error)
      {
        v11 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CAMPersistenceController _handleStillImagePersistenceForRequest:withResult:];
        }

        if ([requestCopy shouldProtectPersistenceForVideo])
        {
          _protectionController = [(CAMPersistenceController *)self _protectionController];
          [_protectionController stopProtectingPersistenceForRequest:requestCopy];
        }

        coordinationInfo = [resultCopy coordinationInfo];
        coordinationInfo2 = coordinationInfo;
        if (v9 == 2 && coordinationInfo)
        {
          [(CAMPersistenceController *)self _coordinateRemotePersistenceForVideoLocalResult:0 coordinationInfo:coordinationInfo request:requestCopy];
        }
      }

      else
      {
        coordinationInfo2 = [resultCopy coordinationInfo];
        v15 = [(CAMPersistenceController *)self _videoLocalPowerAssertionReasonForCoordinationInfo:coordinationInfo2];
        _powerController = [(CAMPersistenceController *)self _powerController];
        assertionIdentifier = [requestCopy assertionIdentifier];
        [_powerController addAssertionForIndentifier:assertionIdentifier withReason:v15];
        if ([(CAMPersistenceController *)self resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest])
        {
          persistenceUUID = [requestCopy persistenceUUID];
          v19 = [(CAMPersistenceController *)self _ensureCoordinationGroupForIdentifier:persistenceUUID];

          if (v19)
          {
            dispatch_group_enter(v19);
          }
        }

        else
        {
          v19 = 0;
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __73__CAMPersistenceController__handleVideoPersistenceForRequest_withResult___block_invoke;
        aBlock[3] = &unk_1E76FB650;
        v30 = assertionIdentifier;
        v31 = v15;
        v28 = _powerController;
        v29 = v19;
        v20 = v19;
        v21 = _powerController;
        v22 = _Block_copy(aBlock);
        _localPersistenceQueue = [(CAMPersistenceController *)self _localPersistenceQueue];
        v25 = requestCopy;
        v26 = resultCopy;
        v24 = v22;
        pl_dispatch_async();
      }
    }
  }
}

void __73__CAMPersistenceController__handleVideoPersistenceForRequest_withResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeAssertionForIdentifier:*(a1 + 48) withReason:*(a1 + 52)];
  v2 = *(a1 + 40);
  if (v2)
  {

    dispatch_group_leave(v2);
  }
}

void __73__CAMPersistenceController__handleVideoPersistenceForRequest_withResult___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) deferredPersistenceOptions])
  {
    v7 = [[CAMPendingLocalPersistenceWrapper alloc] initWithRequest:*(a1 + 32) result:*(a1 + 40) completionHandler:*(a1 + 56)];
    v6 = [*(a1 + 48) _pendingLocalPersistenceWrappers];
    [v6 addObject:v7];
  }

  else
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    [v4 _locallyPersistVideoCaptureResult:v2 forRequest:v3 withCompletionHandler:v5];
  }
}

- (void)videoPersistenceCoordinator:(id)coordinator requestsRemotePersistenceForLocalPersistenceResult:(id)result captureRequest:(id)request powerAssertionReason:(unsigned int)reason
{
  v6 = *&reason;
  requestCopy = request;
  resultCopy = result;
  loggingIdentifier = [coordinator loggingIdentifier];
  [(CAMPersistenceController *)self _dispatchRemotePersistenceForLocalVideoPersistenceResult:resultCopy request:requestCopy powerAssertionReason:v6 loggingIdentifier:loggingIdentifier];
}

- (void)videoPersistenceCoordinator:(id)coordinator requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo:(id)info request:(id)request
{
  infoCopy = info;
  requestCopy = request;
  dispatch_time(0, 10000000000);
  _localPersistenceQueue = [(CAMPersistenceController *)self _localPersistenceQueue];
  v12 = requestCopy;
  v10 = requestCopy;
  v11 = infoCopy;
  pl_dispatch_after();
}

void __136__CAMPersistenceController_videoPersistenceCoordinator_requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo_request___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _coordinationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __136__CAMPersistenceController_videoPersistenceCoordinator_requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo_request___block_invoke_2;
  block[3] = &unk_1E76F7938;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_barrier_sync(v2, block);
}

void __136__CAMPersistenceController_videoPersistenceCoordinator_requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo_request___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) _coordinationQueue_videoPersistenceCoordinators];
  v2 = [*(a1 + 40) identifier];
  v3 = [v4 objectForKeyedSubscript:v2];
  [v3 updateForTimeoutTimerFiredForCoordinationInfo:*(a1 + 40) request:*(a1 + 48)];
}

- (void)_notifyDelegateOfCompletedVideoLocalPersistenceForRequest:(id)request withResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  localPersistenceUUID = [resultCopy localPersistenceUUID];
  sessionIdentifier = [requestCopy sessionIdentifier];
  localDestinationURL = [resultCopy localDestinationURL];
  creationDate = [resultCopy creationDate];
  v38 = 0uLL;
  v39 = 0;
  if (resultCopy)
  {
    [resultCopy duration];
  }

  stillPersistenceUUID = [resultCopy stillPersistenceUUID];
  v36 = 0uLL;
  v37 = 0;
  if (resultCopy)
  {
    [resultCopy stillDisplayTime];
  }

  v30 = creationDate;
  type = [requestCopy type];
  [CAMOrientationUtilities imageOrientationForVideoRequest:requestCopy];
  v12 = PLExifOrientationFromImageOrientation();
  v31 = stillPersistenceUUID;
  if (type)
  {
    [resultCopy dimensions];
    CAMSizeForDimensions();
  }

  else
  {
    v15 = requestCopy;
    dimensions = [resultCopy dimensions];
    aspectRatioCrop = [v15 aspectRatioCrop];

    [CAMAspectCropUtilities finalExpectedSizeWithCaptureDimensions:dimensions orientation:v12 aspectRatio:aspectRatioCrop];
  }

  v18 = v13;
  v19 = v14;
  v20 = [CAMVideoPersistenceResponse alloc];
  captureMode = [requestCopy captureMode];
  coordinationInfo = [resultCopy coordinationInfo];
  v34 = v38;
  v35 = v39;
  v32 = v36;
  v33 = v37;
  v23 = [(CAMVideoPersistenceResponse *)v20 initWithUUID:localPersistenceUUID captureMode:captureMode captureSession:sessionIdentifier url:localDestinationURL creationDate:v30 scrubberImage:0 finalExpectedPixelSize:v18 duration:v19 stillPersistenceUUID:&v34 stillDisplayTime:stillPersistenceUUID coordinationInfo:&v32, coordinationInfo];

  if (type == 1)
  {
    v28 = requestCopy;
    delegate = [v28 delegate];
    if (!delegate || (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_17;
    }

    v26 = localPersistenceUUID;
    error = [resultCopy error];
    [delegate videoRequestDidCompleteLocalPersistence:v28 withResponse:v23 error:error];
    goto LABEL_16;
  }

  if (!type)
  {
    v24 = requestCopy;
    delegate = [v24 delegate];
    if (!delegate || (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_17;
    }

    v26 = localPersistenceUUID;
    error = [resultCopy error];
    [delegate stillImageRequestDidCompleteVideoLocalPersistence:v24 withResponse:v23 error:error];
LABEL_16:

    localPersistenceUUID = v26;
LABEL_17:
  }
}

- (void)_locallyPersistVideoCaptureResult:(id)result forRequest:(id)request withCompletionHandler:(id)handler
{
  resultCopy = result;
  requestCopy = request;
  handlerCopy = handler;
  persistenceOptions = [requestCopy persistenceOptions];
  v12 = [(CAMPersistenceController *)self _persistVideoCaptureResult:resultCopy withRequest:requestCopy];
  error = [v12 error];
  resultDelegate = [(CAMPersistenceController *)self resultDelegate];
  if (resultDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [resultDelegate persistenceController:self didGenerateVideoLocalPersistenceResult:v12 forCaptureResult:resultCopy fromRequest:requestCopy];
  }

  if (persistenceOptions == 2 && !error)
  {
    coordinationInfo = [resultCopy coordinationInfo];
    [(CAMPersistenceController *)self _coordinateRemotePersistenceForVideoLocalResult:v12 coordinationInfo:coordinationInfo request:requestCopy];
  }

  v19 = requestCopy;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = v12;
  v18 = requestCopy;
  pl_dispatch_async();
}

uint64_t __95__CAMPersistenceController__locallyPersistVideoCaptureResult_forRequest_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyDelegateOfCompletedVideoLocalPersistenceForRequest:*(a1 + 40) withResult:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_coordinateRemotePersistenceForVideoLocalResult:(id)result coordinationInfo:(id)info request:(id)request
{
  resultCopy = result;
  infoCopy = info;
  requestCopy = request;
  CAMSignpostWithIDAndArgs(55, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  if (infoCopy)
  {
    _coordinationQueue = [(CAMPersistenceController *)self _coordinationQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __101__CAMPersistenceController__coordinateRemotePersistenceForVideoLocalResult_coordinationInfo_request___block_invoke;
    v12[3] = &unk_1E76F8230;
    v13 = infoCopy;
    selfCopy = self;
    v15 = resultCopy;
    v16 = requestCopy;
    dispatch_barrier_sync(_coordinationQueue, v12);
  }

  else if (resultCopy)
  {
    [(CAMPersistenceController *)self _dispatchRemotePersistenceForLocalVideoPersistenceResult:resultCopy request:requestCopy powerAssertionReason:0x20000 loggingIdentifier:&stru_1F1660A30];
  }
}

void __101__CAMPersistenceController__coordinateRemotePersistenceForVideoLocalResult_coordinationInfo_request___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) identifier];
  v2 = [*(a1 + 40) _coordinationQueue_videoPersistenceCoordinators];
  v3 = [v2 objectForKeyedSubscript:v4];
  if (!v3)
  {
    v3 = [[CAMVideoPersistenceCoordinator alloc] initWithDelegate:*(a1 + 40) loggingIdentifier:v4];
    [v2 setObject:v3 forKeyedSubscript:v4];
  }

  [(CAMVideoPersistenceCoordinator *)v3 updateForCoordinationInfo:*(a1 + 32) localPersistenceResult:*(a1 + 48) request:*(a1 + 56)];
  if ([(CAMVideoPersistenceCoordinator *)v3 hasReceivedAllExpectedResponses])
  {
    [v2 setObject:0 forKeyedSubscript:v4];
  }
}

- (void)_dispatchRemotePersistenceForLocalVideoPersistenceResult:(id)result request:(id)request powerAssertionReason:(unsigned int)reason loggingIdentifier:(id)identifier
{
  v7 = *&reason;
  resultCopy = result;
  requestCopy = request;
  identifierCopy = identifier;
  assertionIdentifier = [requestCopy assertionIdentifier];
  _powerController = [(CAMPersistenceController *)self _powerController];
  [_powerController addAssertionForIndentifier:assertionIdentifier withReason:v7];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __132__CAMPersistenceController__dispatchRemotePersistenceForLocalVideoPersistenceResult_request_powerAssertionReason_loggingIdentifier___block_invoke;
  aBlock[3] = &unk_1E76FB5B0;
  v30 = _powerController;
  v31 = assertionIdentifier;
  v32 = v7;
  v15 = _powerController;
  v16 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __132__CAMPersistenceController__dispatchRemotePersistenceForLocalVideoPersistenceResult_request_powerAssertionReason_loggingIdentifier___block_invoke_2;
  v24[3] = &unk_1E76FB678;
  v24[4] = self;
  v25 = resultCopy;
  v17 = requestCopy;
  v26 = v17;
  v27 = identifierCopy;
  v28 = v16;
  v18 = v16;
  v19 = identifierCopy;
  v20 = resultCopy;
  v21 = _Block_copy(v24);
  if ([v17 shouldDelayRemotePersistence])
  {
    v22 = dispatch_time(0, 5000000000);
    _remotePersistenceQueue = [(CAMPersistenceController *)self _remotePersistenceQueue];
    dispatch_after(v22, _remotePersistenceQueue, v21);
  }

  else
  {
    _remotePersistenceQueue = [(CAMPersistenceController *)self _remotePersistenceQueue];
    pl_dispatch_async();
  }
}

void __132__CAMPersistenceController__dispatchRemotePersistenceForLocalVideoPersistenceResult_request_powerAssertionReason_loggingIdentifier___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) _jobDictionaryForVideoLocalResult:*(a1 + 40) fromRequest:*(a1 + 48) loggingIdentifier:*(a1 + 56)];
  if (([*(a1 + 48) deferredPersistenceOptions] & 2) != 0)
  {
    v2 = [*(a1 + 40) creationDate];
    v3 = [[CAMPendingRemotePersistenceWrapper alloc] initWithRequest:*(a1 + 48) creationDate:v2 job:v5 loggingIdentifier:*(a1 + 56) completionHandler:*(a1 + 64)];
    v4 = [*(a1 + 32) _pendingRemotePersistenceWrappers];
    [v4 addObject:v3];
  }

  else
  {
    [*(a1 + 32) _remotelyPersistVideoJob:v5 forRequest:*(a1 + 48) loggingIdentifier:*(a1 + 56) withSendHandler:0 completionHandler:*(a1 + 64)];
  }
}

+ (id)videoMetadataDateFormatter
{
  if (videoMetadataDateFormatter_onceToken != -1)
  {
    +[CAMPersistenceController videoMetadataDateFormatter];
  }

  v3 = videoMetadataDateFormatter_formatter;

  return v3;
}

uint64_t __54__CAMPersistenceController_videoMetadataDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = videoMetadataDateFormatter_formatter;
  videoMetadataDateFormatter_formatter = v0;

  v2 = videoMetadataDateFormatter_formatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  v4 = videoMetadataDateFormatter_formatter;
  v5 = objc_alloc(MEMORY[0x1E695DEE8]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [v4 setCalendar:v6];

  v7 = videoMetadataDateFormatter_formatter;

  return [v7 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
}

+ (id)clientVideoMetadataForLocation:(id)location withCreationDate:(id)date
{
  locationCopy = location;
  v6 = MEMORY[0x1E695DF70];
  dateCopy = date;
  v7 = objc_alloc_init(v6);
  cam_videoMetadataRepresentation = [locationCopy cam_videoMetadataRepresentation];
  v9 = cam_videoMetadataRepresentation;
  v10 = MEMORY[0x1E6987838];
  if (locationCopy && cam_videoMetadataRepresentation && [cam_videoMetadataRepresentation length])
  {
    v11 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v11 setKeySpace:*v10];
    [v11 setKey:*MEMORY[0x1E6987698]];
    [v11 setValue:v9];
    [v7 addObject:v11];
    v12 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v12 setIdentifier:*MEMORY[0x1E69877E8]];
    v13 = MEMORY[0x1E696AEC0];
    [locationCopy horizontalAccuracy];
    v15 = [v13 stringWithFormat:@"%f", v14];
    [v12 setValue:v15];

    [v7 addObject:v12];
  }

  v36 = locationCopy;
  v16 = objc_alloc_init(MEMORY[0x1E6988050]);
  v17 = *v10;
  [v16 setKeySpace:*v10];
  [v16 setKey:*MEMORY[0x1E69876A0]];
  [v16 setValue:@"Apple"];
  [v7 addObject:v16];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v19 = MGCopyAnswer();
  v35 = v9;
  v31 = v19;
  if (v19)
  {
    localizedModel = v19;
  }

  else
  {
    localizedModel = [currentDevice localizedModel];
  }

  v21 = localizedModel;
  v30 = localizedModel;
  v22 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v22 setKeySpace:v17];
  [v22 setKey:*MEMORY[0x1E69876A8]];
  [v22 setValue:v21];
  [v7 addObject:v22];
  systemVersion = [currentDevice systemVersion];
  v24 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v24 setKeySpace:v17];
  [v24 setKey:*MEMORY[0x1E69876B0]];
  [v24 setValue:systemVersion];
  [v7 addObject:v24];
  [self videoMetadataDateFormatter];
  v25 = v34 = currentDevice;
  v26 = [v25 stringFromDate:dateCopy];

  v27 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v27 setKeySpace:v17];
  [v27 setKey:*MEMORY[0x1E6987688]];
  [v27 setValue:v26];
  [v7 addObject:v27];
  v28 = [v7 copy];

  return v28;
}

+ (id)clientVideoMetadataForRequest:(id)request withCreationDate:(id)date isEV0ForHDR:(BOOL)r livePhotoIdentifierOverride:(id)override slomoPlayback:(BOOL)playback
{
  playbackCopy = playback;
  rCopy = r;
  requestCopy = request;
  overrideCopy = override;
  dateCopy = date;
  location = [requestCopy location];
  v16 = [self clientVideoMetadataForLocation:location withCreationDate:dateCopy];

  v17 = [v16 mutableCopy];
  v18 = 0x1E696A000;
  if ([requestCopy conformsToProtocol:&unk_1F1759A58])
  {
    v19 = requestCopy;
    v20 = v19;
    if (overrideCopy)
    {
      v21 = overrideCopy;
    }

    else
    {
      v21 = [v19 irisIdentifierForEV0:rCopy];
    }

    v23 = v21;
    v24 = objc_alloc_init(MEMORY[0x1E6988050]);
    v22 = *MEMORY[0x1E6987850];
    [v24 setKeySpace:*MEMORY[0x1E6987850]];
    [v24 setKey:*MEMORY[0x1E6987890]];
    [v24 setValue:v23];
    [v17 addObject:v24];
    if ([v20 irisMode] == 2)
    {
      v31 = playbackCopy;
      v25 = objc_alloc_init(MEMORY[0x1E6988050]);
      [v25 setIdentifier:*MEMORY[0x1E6987788]];
      [v25 setDataType:*MEMORY[0x1E69602A8]];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:1];
      [v25 setValue:v26];

      [v17 addObject:v25];
      playbackCopy = v31;
    }

    v18 = 0x1E696A000uLL;
  }

  else
  {
    v22 = *MEMORY[0x1E6987850];
  }

  v27 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v27 setKeySpace:v22];
  [v27 setKey:*MEMORY[0x1E69878B0]];
  v28 = [*(v18 + 3480) numberWithInt:!playbackCopy];
  [v27 setValue:v28];

  [v17 addObject:v27];
  v29 = [v17 copy];

  return v29;
}

- (id)_videoPersistenceUUIDForRequest:(id)request withResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  persistenceUUID = [requestCopy persistenceUUID];
  if (![requestCopy type])
  {
    v8 = requestCopy;
    if ([v8 isCTMVideo])
    {
      persistenceUUID2 = [v8 persistenceUUID];
    }

    else
    {
      localDestinationURL = [resultCopy localDestinationURL];
      persistenceUUID2 = [v8 irisVideoPersistenceUUIDForEV0:{objc_msgSend(v8, "isEV0LocalVideoDestinationURL:", localDestinationURL)}];

      persistenceUUID = localDestinationURL;
    }

    persistenceUUID = persistenceUUID2;
  }

  return persistenceUUID;
}

- (id)_stillPersistenceUUIDForRequest:(id)request withVideoResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  persistenceUUID = [requestCopy persistenceUUID];
  if (![requestCopy type])
  {
    v8 = requestCopy;
    localDestinationURL = [resultCopy localDestinationURL];
    v10 = [v8 irisStillImagePersistenceUUIDForEV0:{objc_msgSend(v8, "isEV0LocalVideoDestinationURL:", localDestinationURL)}];

    persistenceUUID = v10;
  }

  return persistenceUUID;
}

- (id)_persistVideoCaptureResult:(id)result withRequest:(id)request
{
  v103 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  requestCopy = request;
  localDestinationURL = [resultCopy localDestinationURL];
  filteredLocalDestinationURL = [resultCopy filteredLocalDestinationURL];
  v76 = [(CAMPersistenceController *)self _videoPersistenceUUIDForRequest:requestCopy withResult:resultCopy];
  v99 = 0uLL;
  v100 = 0;
  if (resultCopy)
  {
    [resultCopy duration];
  }

  v75 = [(CAMPersistenceController *)self _stillPersistenceUUIDForRequest:requestCopy withVideoResult:resultCopy];
  v97 = 0uLL;
  v98 = 0;
  if (resultCopy)
  {
    [resultCopy stillDisplayTime];
  }

  captureDate = [resultCopy captureDate];
  error = [resultCopy error];
  *&v72[4] = [requestCopy type];
  if (*&v72[4])
  {
    v72[0] = 0;
  }

  else
  {
    *v72 = [requestCopy ctmCaptureType] != 2;
  }

  captureMode = [requestCopy captureMode];
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__12;
  v95 = __Block_byref_object_dispose__12;
  v96 = 0;
  videoPreviewPixelBuffer = [resultCopy videoPreviewPixelBuffer];
  v8 = videoPreviewPixelBuffer;
  if (captureMode == 7 && videoPreviewPixelBuffer)
  {
    uRLByDeletingPathExtension = [localDestinationURL URLByDeletingPathExtension];
    v10 = [uRLByDeletingPathExtension URLByAppendingPathExtension:*MEMORY[0x1E69C00E0]];
    path = [v10 path];
    v12 = v92[5];
    v92[5] = path;

    _localPersistenceThumbnailGenerator = [objc_alloc(MEMORY[0x1E69BE880]) initWithVideoURL:localDestinationURL];
    v14 = MEMORY[0x1E69BDEF0];
    newComposition = [MEMORY[0x1E69BDEF0] newComposition];
    v16 = [v14 newCompositionControllerWithComposition:newComposition];

    source = [_localPersistenceThumbnailGenerator source];
    [v16 setSource:source mediaType:2];

    adjustmentConstants = [v16 adjustmentConstants];
    pIPortraitVideoAdjustmentKey = [adjustmentConstants PIPortraitVideoAdjustmentKey];
    [v16 modifyAdjustmentWithKey:pIPortraitVideoAdjustmentKey modificationBlock:&__block_literal_global_417];

    LODWORD(adjustmentConstants) = [CAMOrientationUtilities exifOrientationFromDeviceOrientationForCaptureRequest:requestCopy];
    adjustmentConstants2 = [v16 adjustmentConstants];
    pIOrientationAdjustmentKey = [adjustmentConstants2 PIOrientationAdjustmentKey];
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __67__CAMPersistenceController__persistVideoCaptureResult_withRequest___block_invoke_2;
    v89[3] = &__block_descriptor_36_e43_v16__0__PIOrientationAdjustmentController_8l;
    v90 = adjustmentConstants;
    [v16 modifyAdjustmentWithKey:pIOrientationAdjustmentKey modificationBlock:v89];

    v22 = objc_alloc_init(MEMORY[0x1E69BDDF0]);
    v23 = objc_alloc_init(MEMORY[0x1E69BDDF8]);
    v24 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:2073600];
    [v23 setScalePolicy:v24];

    v25 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:1];
    [v23 setPriority:v25];

    v26 = dispatch_semaphore_create(0);
    composition = [v16 composition];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __67__CAMPersistenceController__persistVideoCaptureResult_withRequest___block_invoke_3;
    v86[3] = &unk_1E76FB6E0;
    v88 = &v91;
    v28 = v26;
    v87 = v28;
    [v22 exportImageToDataWithComposition:composition options:v23 completion:v86];

    dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
LABEL_20:

    goto LABEL_21;
  }

  if (!videoPreviewPixelBuffer)
  {
    goto LABEL_22;
  }

  uRLByDeletingPathExtension2 = [localDestinationURL URLByDeletingPathExtension];
  v30 = [uRLByDeletingPathExtension2 URLByAppendingPathExtension:*MEMORY[0x1E69C00E0]];
  path2 = [v30 path];
  v32 = v92[5];
  v92[5] = path2;

  _localPersistenceThumbnailGenerator = [(CAMPersistenceController *)self _localPersistenceThumbnailGenerator];
  v16 = [_localPersistenceThumbnailGenerator newJPEGDataInOrientation:+[CAMOrientationUtilities imageOrientationForVideoRequest:](CAMOrientationUtilities usingPixelBuffer:{"imageOrientationForVideoRequest:", requestCopy), v8}];
  if (![v16 length])
  {
    v35 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v92[5];
      *buf = 138543362;
      *&buf[4] = v38;
      v37 = "Failed to create JPEG data for preview surface for %{public}@";
      goto LABEL_18;
    }

LABEL_19:

    v22 = v92[5];
    v92[5] = 0;
    goto LABEL_20;
  }

  CGImageWriteEXIFJPEGToPath();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v34 = [defaultManager fileExistsAtPath:v92[5]];

  if ((v34 & 1) == 0)
  {
    v35 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v92[5];
      *buf = 138543362;
      *&buf[4] = v36;
      v37 = "Failed to write JPEG data for preview surface for %{public}@";
LABEL_18:
      _os_log_impl(&dword_1A3640000, v35, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

LABEL_21:

LABEL_22:
  if ([requestCopy temporaryPersistenceOptions] != 2)
  {
    v78 = 0;
    v42 = 0;
    goto LABEL_36;
  }

  v39 = NSTemporaryDirectory();
  lastPathComponent = [localDestinationURL lastPathComponent];
  v41 = [v39 stringByAppendingPathComponent:lastPathComponent];

  v42 = [MEMORY[0x1E695DFF8] fileURLWithPath:v41];
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v85 = 0;
  v44 = [defaultManager2 copyItemAtURL:localDestinationURL toURL:v42 error:&v85];
  v71 = v85;

  if (v44)
  {
    if (!filteredLocalDestinationURL)
    {
      v78 = 0;
      goto LABEL_35;
    }

    lastPathComponent2 = [filteredLocalDestinationURL lastPathComponent];
    v46 = [v39 stringByAppendingPathComponent:lastPathComponent2];
    v78 = [MEMORY[0x1E695DFF8] fileURLWithPath:v46];
    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    v84 = 0;
    v48 = [defaultManager3 copyItemAtURL:filteredLocalDestinationURL toURL:v78 error:&v84];
    v49 = v84;

    if ((v48 & 1) == 0)
    {
      v50 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        *&buf[4] = filteredLocalDestinationURL;
        *&buf[12] = 2114;
        *&buf[14] = v78;
        *&buf[22] = 2114;
        v102 = v49;
        _os_log_error_impl(&dword_1A3640000, v50, OS_LOG_TYPE_ERROR, "Failed to link %{public}@ to %{public}@, external clients will not have a safe URL (%{public}@)", buf, 0x20u);
      }

      v78 = 0;
    }
  }

  else
  {
    v46 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = localDestinationURL;
      *&buf[12] = 2114;
      *&buf[14] = v42;
      *&buf[22] = 2114;
      v102 = v71;
      _os_log_error_impl(&dword_1A3640000, v46, OS_LOG_TYPE_ERROR, "Failed to link %{public}@ to %{public}@, external clients will not have a safe URL (%{public}@)", buf, 0x20u);
    }

    v78 = 0;
    lastPathComponent2 = v42;
    v42 = 0;
  }

LABEL_35:
LABEL_36:
  captureMode2 = [requestCopy captureMode];
  captureMode3 = [requestCopy captureMode];
  captureMode4 = [requestCopy captureMode];
  if (captureMode == 7)
  {
    v54 = [(CAMPersistenceController *)self _adjustmentsDataForCinematicVideoRequest:requestCopy result:resultCopy];
  }

  else
  {
    if (*&v72[4] && captureMode2 != 1 && captureMode3 != 8 && captureMode4 != 2)
    {
      v55 = 0;
      goto LABEL_45;
    }

    v54 = -[CAMPersistenceController _adjustmentsDataForRequest:captureDimensions:portraitMetadata:](self, "_adjustmentsDataForRequest:captureDimensions:portraitMetadata:", requestCopy, [resultCopy dimensions], 0);
  }

  v55 = v54;
LABEL_45:
  if ((v72[0] & 1) == 0)
  {
    v56 = [MEMORY[0x1E69BF230] filesystemPersistenceBatchItemForFileAtURL:localDestinationURL];
    v57 = v56;
    if (v56)
    {
      if (v55)
      {
        [v56 setData:v55 forKey:*MEMORY[0x1E69BFDA8]];
      }

      v58 = v92[5];
      if (v58)
      {
        [v57 setString:v58 forKey:*MEMORY[0x1E69BFDB8]];
      }

      [v57 persist];
    }
  }

  uRLByDeletingPathExtension3 = [localDestinationURL URLByDeletingPathExtension];
  v60 = [uRLByDeletingPathExtension3 URLByAppendingPathExtension:@"MDATA"];

  sharedLibraryMode = [requestCopy sharedLibraryMode];
  contactIDsInProximity = [requestCopy contactIDsInProximity];
  sharedLibraryDiagnostics = [requestCopy sharedLibraryDiagnostics];
  LOBYTE(sharedLibraryMode) = [(CAMPersistenceController *)self writePrivateMetadataFileToURL:v60 withPrivateClientMetadata:0 sharedLibraryMode:sharedLibraryMode contactIDsInProximity:contactIDsInProximity sharedLibraryDiagnostics:sharedLibraryDiagnostics];

  if ((sharedLibraryMode & 1) == 0)
  {

    v60 = 0;
  }

  v64 = [CAMVideoLocalPersistenceResult alloc];
  v65 = v92[5];
  dimensions = [resultCopy dimensions];
  metadata = [resultCopy metadata];
  coordinationInfo = [resultCopy coordinationInfo];
  *buf = v99;
  *&buf[16] = v100;
  v82 = v97;
  v83 = v98;
  v69 = [(CAMVideoLocalPersistenceResult *)v64 initWithURL:localDestinationURL filteredLocalDestinationURL:filteredLocalDestinationURL linkedURL:v42 filteredLinkedURL:v78 videoThumbnailPath:v65 UUID:v76 duration:buf dimensions:dimensions stillPersistenceUUID:v75 stillDisplayTime:&v82 metadataItems:metadata creationDate:captureDate adjustmentsData:v55 coordinationInfo:coordinationInfo localPrivateMetadataFileURL:v60 error:error];

  _Block_object_dispose(&v91, 8);

  return v69;
}

void __67__CAMPersistenceController__persistVideoCaptureResult_withRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v3 = [a2 result:&v16];
  v4 = v16;
  v5 = [v3 data];
  if ([v5 length])
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Failed to create JPEG data for preview surface for %{public}@", buf, 0xCu);
    }

    v9 = a1 + 40;
LABEL_12:
    v14 = *(*v9 + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    goto LABEL_13;
  }

  v9 = a1 + 40;
  CGImageWriteEXIFJPEGToPath();
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v10 fileExistsAtPath:*(*(*(a1 + 40) + 8) + 40)];

  if ((v11 & 1) == 0)
  {
    v12 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(*v9 + 8) + 40);
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "Failed to write JPEG data for preview surface for %{public}@", buf, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)writePrivateMetadataFileToURL:(id)l withPrivateClientMetadata:(id)metadata sharedLibraryMode:(int64_t)mode contactIDsInProximity:(id)proximity sharedLibraryDiagnostics:(id)diagnostics
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  metadataCopy = metadata;
  proximityCopy = proximity;
  diagnosticsCopy = diagnostics;
  v15 = +[CAMUserPreferences preferences];
  sharedLibraryEnabled = [v15 sharedLibraryEnabled];

  if (metadataCopy || sharedLibraryEnabled)
  {
    v18 = [objc_alloc(MEMORY[0x1E69C0678]) initWithPrivateClientMetadata:metadataCopy contactIDsInProximity:proximityCopy sharedLibraryMode:mode];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [diagnosticsCopy count])
    {
      v19 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = [diagnosticsCopy count];
        _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "Internal only: Persisting shared library diagnostics: %lu entries.", buf, 0xCu);
      }

      [v18 setSharedLibraryDiagnostics:diagnosticsCopy];
    }

    v27 = 0;
    v20 = [MEMORY[0x1E69C0688] serializedDataFromCameraClientMetadata:v18 error:&v27];
    v21 = v27;
    if (v21)
    {
      v22 = v21;
      v23 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [CAMPersistenceController writePrivateMetadataFileToURL:withPrivateClientMetadata:sharedLibraryMode:contactIDsInProximity:sharedLibraryDiagnostics:];
      }
    }

    else
    {
      v26 = 0;
      v24 = [v20 writeToURL:lCopy options:0 error:&v26];
      v22 = v26;
      if (v24)
      {
        v17 = 1;
LABEL_17:

        goto LABEL_18;
      }

      v23 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v29 = metadataCopy;
        v30 = 2114;
        v31 = lCopy;
        v32 = 2114;
        v33 = v22;
        _os_log_error_impl(&dword_1A3640000, v23, OS_LOG_TYPE_ERROR, "Failed to persist private metadata %{public}@ to URL %{public}@ (%{public}@)", buf, 0x20u);
      }
    }

    v17 = 0;
    goto LABEL_17;
  }

  v17 = 0;
LABEL_18:

  return v17;
}

- (id)_jobDictionaryForVideoLocalResult:(id)result fromRequest:(id)request loggingIdentifier:(id)identifier
{
  resultCopy = result;
  requestCopy = request;
  v9 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  v11 = objc_alloc_init(v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isTimelapse = [requestCopy isTimelapse];
    v13 = MEMORY[0x1E69C0470];
    if ((isTimelapse & 1) == 0)
    {
      v13 = MEMORY[0x1E69C0478];
    }
  }

  else
  {
    isTimelapse = 0;
    v13 = MEMORY[0x1E69C0478];
  }

  v76 = *v13;
  [v11 setObject:? forKey:?];
  [v11 setObject:identifierCopy forKeyedSubscript:@"captureLogID"];

  localDestinationURL = [resultCopy localDestinationURL];
  path = [localDestinationURL path];
  v70 = *MEMORY[0x1E69C05A0];
  [v11 setObject:path forKey:?];
  filteredLocalDestinationURL = [resultCopy filteredLocalDestinationURL];
  v16 = filteredLocalDestinationURL;
  if (filteredLocalDestinationURL)
  {
    path2 = [filteredLocalDestinationURL path];
    [v11 setObject:path2 forKey:*MEMORY[0x1E69C03D8]];
    v18 = MEMORY[0x1E696ACC8];
    [MEMORY[0x1E695DF00] date];
    v20 = v19 = path;
    v21 = [v18 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:0];

    v22 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:@"com.apple.opaque" formatVersion:@"1.0" data:v21 baseVersion:0 editorBundleID:@"com.apple.camera" renderTypes:0];
    propertyListDictionary = [v22 propertyListDictionary];
    [v11 setObject:propertyListDictionary forKeyedSubscript:*MEMORY[0x1E69C0578]];

    path = v19;
  }

  v74 = v16;
  pathExtension = [path pathExtension];
  [v11 setObject:? forKey:?];
  localPersistenceUUID = [resultCopy localPersistenceUUID];
  [v11 setObject:? forKeyedSubscript:?];
  creationDate = [resultCopy creationDate];
  if (creationDate)
  {
    [v11 setObject:creationDate forKey:*MEMORY[0x1E69C0398]];
  }

  savedAssetTypeForCameraCapturedAsset = [MEMORY[0x1E69BF178] savedAssetTypeForCameraCapturedAsset];
  v26 = [MEMORY[0x1E696AD98] numberWithShort:savedAssetTypeForCameraCapturedAsset];
  [v11 setObject:v26 forKey:*MEMORY[0x1E69C0558]];

  [v11 setObject:&unk_1F16C7CD0 forKey:*MEMORY[0x1E69C0308]];
  if (isTimelapse)
  {
    [v11 setObject:&unk_1F16C7CE8 forKey:*MEMORY[0x1E69C0300]];
  }

  v27 = MEMORY[0x1E695E118];
  [v11 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C0528]];
  [v11 setObject:v27 forKey:*MEMORY[0x1E69C02F8]];
  [v11 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69C0550]];
  captureDevice = [requestCopy captureDevice];
  v29 = (captureDevice > 0xB) | (0xFDu >> captureDevice);
  v30 = [MEMORY[0x1E696AD98] numberWithBool:(captureDevice > 0xB) | (0xFDu >> captureDevice) & 1];
  v31 = *MEMORY[0x1E69C0370];
  [v11 setObject:v30 forKey:*MEMORY[0x1E69C0370]];

  memset(&v81, 0, sizeof(v81));
  if (resultCopy)
  {
    [resultCopy duration];
  }

  time = v81;
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&time)];
  [v11 setObject:v32 forKey:@"kCAMVideoDurationKey"];

  v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(requestCopy, "captureOrientation")}];
  v34 = MEMORY[0x1E695DF20];
  v35 = [MEMORY[0x1E696AD98] numberWithBool:v29 & 1];
  v65 = v70;
  v69 = v33;
  v71 = creationDate;
  v36 = [v34 dictionaryWithObjectsAndKeys:{v35, v31, creationDate, *MEMORY[0x1E69C0398], v33, *MEMORY[0x1E69C04A8], path, v65, 0}];

  v68 = v36;
  [v11 setObject:v36 forKey:*MEMORY[0x1E69C03C8]];
  [CAMOrientationUtilities imageOrientationForVideoRequest:requestCopy];
  v37 = PLExifOrientationFromImageOrientation();
  if ([requestCopy type])
  {
    [resultCopy dimensions];
    CAMSizeForDimensions();
  }

  else
  {
    v40 = requestCopy;
    v41 = path;
    dimensions = [resultCopy dimensions];
    aspectRatioCrop = [v40 aspectRatioCrop];

    v44 = dimensions;
    path = v41;
    [CAMAspectCropUtilities finalExpectedSizeWithCaptureDimensions:v44 orientation:v37 aspectRatio:aspectRatioCrop];
  }

  v45 = v39;
  if (v38 > 0.0 && v39 > 0.0)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v11 setObject:v46 forKeyedSubscript:*MEMORY[0x1E69C03F0]];

    v47 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
    [v11 setObject:v47 forKeyedSubscript:*MEMORY[0x1E69C03E0]];
  }

  filteredVideoPreviewPath = [resultCopy filteredVideoPreviewPath];
  [v11 setObject:filteredVideoPreviewPath forKeyedSubscript:*MEMORY[0x1E69C04D8]];

  captureMode = [requestCopy captureMode];
  captureMode2 = [requestCopy captureMode];
  if (![requestCopy type] && (objc_msgSend(requestCopy, "isCTMVideo") & 1) != 0)
  {
    goto LABEL_32;
  }

  if ([requestCopy conformsToProtocol:&unk_1F1759A58])
  {
    v67 = path;
    adjustmentsData = requestCopy;
    localDestinationURL2 = [resultCopy localDestinationURL];
    v52 = [adjustmentsData isEV0LocalVideoDestinationURL:?];
    v53 = [adjustmentsData irisStillImagePersistenceUUIDForEV0:v52];
    if (v53)
    {
      [v11 setObject:v53 forKey:*MEMORY[0x1E69C04E0]];
    }

    v54 = [adjustmentsData irisIdentifierForEV0:v52];
    if (v54)
    {
      [v11 setObject:v54 forKey:*MEMORY[0x1E69C0500]];
    }

    v55 = *MEMORY[0x1E695E480];
    time = v81;
    v56 = CMTimeCopyAsDictionary(&time, v55);
    [v11 setObject:v56 forKey:*MEMORY[0x1E69C0510]];
    CFRelease(v56);
    memset(&time, 0, sizeof(time));
    if (resultCopy)
    {
      [resultCopy stillDisplayTime];
    }

    v79 = time;
    v57 = CMTimeCopyAsDictionary(&v79, v55);
    [v11 setObject:v57 forKey:*MEMORY[0x1E69C0508]];
    CFRelease(v57);
    v58 = [adjustmentsData irisMode] == 2;
    v59 = [MEMORY[0x1E696AD98] numberWithBool:v58];
    [v11 setObject:v59 forKeyedSubscript:*MEMORY[0x1E69C04E8]];

    metadataItems = [resultCopy metadataItems];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __92__CAMPersistenceController__jobDictionaryForVideoLocalResult_fromRequest_loggingIdentifier___block_invoke;
    v77[3] = &unk_1E76FB708;
    v78 = v11;
    [metadataItems enumerateObjectsUsingBlock:v77];

    path = v67;
    goto LABEL_33;
  }

  if (captureMode == 7 || captureMode2 == 2)
  {
LABEL_32:
    adjustmentsData = [resultCopy adjustmentsData];
    [v11 setObject:adjustmentsData forKeyedSubscript:*MEMORY[0x1E69C0350]];
LABEL_33:
  }

  localPrivateMetadataFileURL = [resultCopy localPrivateMetadataFileURL];
  path3 = [localPrivateMetadataFileURL path];
  [v11 setObject:path3 forKeyedSubscript:*MEMORY[0x1E69C0378]];

  v63 = v11;

  return v63;
}

void __92__CAMPersistenceController__jobDictionaryForVideoLocalResult_fromRequest_loggingIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 identifier];
  v7 = [v6 isEqualToString:*MEMORY[0x1E69877E0]];

  if (v7)
  {
    v8 = [v9 value];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:*MEMORY[0x1E69C04F8]];

    *a4 = 1;
  }
}

- (void)_notifyDelegateOfCompletedVideoRemotePersistenceForRequest:(id)request withReply:(id)reply error:(id)error
{
  requestCopy = request;
  replyCopy = reply;
  errorCopy = error;
  v10 = [replyCopy objectForKey:@"kCAMVideoDurationKey"];
  [v10 doubleValue];
  v12 = v11;

  memset(&v40, 0, sizeof(v40));
  CMTimeMakeWithSeconds(&v40, v12, 600);
  v13 = [replyCopy objectForKey:*MEMORY[0x1E69C04E0]];
  v14 = [replyCopy objectForKey:*MEMORY[0x1E69C0508]];
  memset(&v39, 0, sizeof(v39));
  CMTimeMakeFromDictionary(&v39, v14);
  v36 = [replyCopy objectForKey:*MEMORY[0x1E69C0390]];
  sessionIdentifier = [requestCopy sessionIdentifier];
  v16 = [replyCopy objectForKey:*MEMORY[0x1E69C0588]];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = [replyCopy objectForKey:*MEMORY[0x1E69C0398]];
  v19 = [replyCopy objectForKeyedSubscript:*MEMORY[0x1E69C03F0]];
  [v19 doubleValue];
  v21 = v20;

  v22 = [replyCopy objectForKeyedSubscript:*MEMORY[0x1E69C03E0]];
  [v22 doubleValue];
  v24 = v23;

  v25 = [CAMVideoPersistenceResponse alloc];
  captureMode = [requestCopy captureMode];
  v38 = v40;
  v37 = v39;
  v27 = [(CAMVideoPersistenceResponse *)v25 initWithUUID:v36 captureMode:captureMode captureSession:sessionIdentifier url:v17 creationDate:v18 scrubberImage:0 finalExpectedPixelSize:v21 duration:v24 stillPersistenceUUID:&v38 stillDisplayTime:v13 coordinationInfo:&v37, 0];
  type = [requestCopy type];
  if (type == 1)
  {
    v35 = v13;
    v29 = errorCopy;
    v33 = requestCopy;
    delegate = [v33 delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v34 = v33;
      errorCopy = v29;
      [delegate videoRequestDidCompleteRemotePersistence:v34 withResponse:v27 error:v29];
      goto LABEL_13;
    }

LABEL_12:
    errorCopy = v29;
    goto LABEL_13;
  }

  if (!type)
  {
    v35 = v13;
    v29 = errorCopy;
    v30 = requestCopy;
    delegate = [v30 delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v32 = v30;
      errorCopy = v29;
      [delegate stillImageRequestDidCompleteVideoRemotePersistence:v32 withResponse:v27 error:v29];
LABEL_13:

      v13 = v35;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (void)_handleCompletedVideoJobForRequest:(id)request withReply:(id)reply completionHandler:(id)handler error:(id)error
{
  requestCopy = request;
  replyCopy = reply;
  handlerCopy = handler;
  errorCopy = error;
  if (errorCopy)
  {
    v14 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CAMPersistenceController _handleCompletedVideoJobForRequest:withReply:completionHandler:error:];
    }
  }

  v15 = requestCopy;
  v20 = replyCopy;
  v21 = errorCopy;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = errorCopy;
  v18 = replyCopy;
  pl_dispatch_async();
  if ([v15 shouldProtectPersistenceForVideo])
  {
    _protectionController = [(CAMPersistenceController *)self _protectionController];
    [_protectionController stopProtectingPersistenceForRequest:v15];
  }

  CAMSignpostWithIDAndArgs(56, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
}

uint64_t __97__CAMPersistenceController__handleCompletedVideoJobForRequest_withReply_completionHandler_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyDelegateOfCompletedVideoRemotePersistenceForRequest:*(a1 + 40) withReply:*(a1 + 48) error:*(a1 + 56)];
  result = *(a1 + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_remotelyPersistVideoJob:(id)job forRequest:(id)request loggingIdentifier:(id)identifier withSendHandler:(id)handler completionHandler:(id)completionHandler
{
  jobCopy = job;
  requestCopy = request;
  identifierCopy = identifier;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v17 = [jobCopy objectForKeyedSubscript:*MEMORY[0x1E69C04E0]];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [jobCopy objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
  }

  v20 = v19;

  Current = CFAbsoluteTimeGetCurrent();
  mEMORY[0x1E69BF198] = [MEMORY[0x1E69BF198] sharedSystemLibraryAssetsdClient];
  resourceClient = [mEMORY[0x1E69BF198] resourceClient];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __116__CAMPersistenceController__remotelyPersistVideoJob_forRequest_loggingIdentifier_withSendHandler_completionHandler___block_invoke;
  v28[3] = &unk_1E76FB628;
  v34 = Current;
  v29 = identifierCopy;
  v30 = v20;
  selfCopy = self;
  v32 = requestCopy;
  v33 = completionHandlerCopy;
  v24 = completionHandlerCopy;
  v25 = requestCopy;
  v26 = v20;
  v27 = identifierCopy;
  [resourceClient saveAssetWithJobDictionary:jobCopy imageSurface:0 previewImageSurface:0 completionHandler:v28];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

void __116__CAMPersistenceController__remotelyPersistVideoJob_forRequest_loggingIdentifier_withSendHandler_completionHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  if (a2)
  {
    v10 = Current;
    v11 = *(a1 + 72);
    v12 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69C0588]];
    v13 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v18 = 138544130;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v12;
      v24 = 2048;
      v25 = v10 - v11;
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ PersistenceController: added video to library as %{public}@ %{public}@ (took %.3f seconds)", &v18, 0x2Au);
    }
  }

  else
  {
    v12 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = 138543874;
      v19 = v16;
      v20 = 2114;
      v21 = v17;
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ PersistenceController: error adding video to library %{public}@: %{public}@", &v18, 0x20u);
    }
  }

  [*(a1 + 48) _handleCompletedVideoJobForRequest:*(a1 + 56) withReply:v7 completionHandler:*(a1 + 64) error:v8];
}

- (void)performDeferredRemotePersistenceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _remotePersistenceQueue = [(CAMPersistenceController *)self _remotePersistenceQueue];
  v6 = handlerCopy;
  pl_dispatch_async();
}

void __82__CAMPersistenceController_performDeferredRemotePersistenceWithCompletionHandler___block_invoke(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v24 = a1;
  v2 = [*(a1 + 32) _pendingRemotePersistenceWrappers];
  [v2 sortUsingComparator:&__block_literal_global_455];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v2 count])
  {
    v4 = 0;
    do
    {
      v5 = [v2 objectAtIndex:v4];
      v6 = [v5 request];
      v7 = [v5 creationDate];
      v8 = [v5 job];
      v9 = [v5 loggingIdentifier];
      v10 = [v5 completionHandler];
      [v3 addObject:v8];
      v11 = [[CAMPendingRemotePersistenceWrapper alloc] initWithRequest:v6 creationDate:v7 job:0 loggingIdentifier:v9 completionHandler:v10];

      [v2 replaceObjectAtIndex:v4 withObject:v11];
      ++v4;
    }

    while (v4 < [v2 count]);
  }

  v12 = [v2 copy];
  [v2 removeAllObjects];
  v13 = [v3 firstObject];
  v14 = [v3 count];
  v15 = *MEMORY[0x1E69C0360];
  if (v14 == 1)
  {
    [v13 removeObjectForKey:v15];
    [v13 removeObjectForKey:*MEMORY[0x1E69C0358]];
    [v13 removeObjectForKey:*MEMORY[0x1E69C0368]];
  }

  else
  {
    v16 = [v13 objectForKey:v15];

    if (v16)
    {
      [v13 setObject:&unk_1F16C7D00 forKey:*MEMORY[0x1E69C0358]];
      [v13 setObject:&unk_1F16C7C88 forKey:*MEMORY[0x1E69C0368]];
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v18 = [MEMORY[0x1E69BF198] sharedSystemLibraryAssetsdClient];
  v19 = [v18 resourceInternalClient];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __82__CAMPersistenceController_performDeferredRemotePersistenceWithCompletionHandler___block_invoke_458;
  v25[3] = &unk_1E76FB750;
  v29 = Current;
  v20 = v12;
  v28 = v30;
  v21 = *(v24 + 32);
  v26 = v20;
  v27 = v21;
  [v19 batchSaveAssetsWithJobDictionaries:v3 completionHandler:v25];

  [v18 waitUntilConnectionSendsAllMessages];
  v22 = *(v24 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, 0);
  }

  _Block_object_dispose(v30, 8);
  objc_autoreleasePoolPop(context);
}

uint64_t __82__CAMPersistenceController_performDeferredRemotePersistenceWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __82__CAMPersistenceController_performDeferredRemotePersistenceWithCompletionHandler___block_invoke_458(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = *(a1 + 56);
  v10 = os_log_create("com.apple.camera", "Camera");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  v38 = v7;
  if (v7)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v45 = *&v7;
    v12 = "PersistenceController: received error for batch job: %{public}@";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    *buf = 134217984;
    v45 = Current - v9;
    v12 = "PersistenceController: received reply for batch job after %.3f seconds.";
  }

  _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
LABEL_7:

  v35 = [v6 count];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v6;
  v39 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v39)
  {
    v14 = *v41;
    v33 = *MEMORY[0x1E69C04E0];
    v36 = *MEMORY[0x1E69C0390];
    v32 = *MEMORY[0x1E69C0588];
    v31 = *MEMORY[0x1E69C03E8];
    *&v13 = 138543874;
    v30 = v13;
    v34 = *v41;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        v17 = [*(a1 + 32) objectAtIndex:{*(*(*(a1 + 48) + 8) + 24), v30}];
        v18 = [v17 request];
        v19 = [v18 type];
        v20 = [v17 completionHandler];
        if (v19 == 1)
        {
          v25 = [v16 objectForKeyedSubscript:v33];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = [v16 objectForKeyedSubscript:v36];
          }

          v21 = v27;

          v22 = [v16 objectForKeyedSubscript:v32];
          v28 = os_log_create("com.apple.camera", "Camera");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v17 loggingIdentifier];
            *buf = v30;
            v45 = *&v29;
            v46 = 2114;
            v47 = v21;
            v48 = 2114;
            v49 = v22;
            _os_log_impl(&dword_1A3640000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ PersistenceController: added video to library as %{public}@ %{public}@", buf, 0x20u);

            v14 = v34;
          }

          [*(a1 + 40) _handleCompletedVideoJobForRequest:v18 withReply:v16 completionHandler:v20 error:v38];
        }

        else
        {
          if (v19)
          {
            goto LABEL_24;
          }

          v21 = [v16 objectForKeyedSubscript:v36];
          v22 = [v16 objectForKeyedSubscript:v31];
          v23 = os_log_create("com.apple.camera", "Camera");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v17 loggingIdentifier];
            *buf = v30;
            v45 = *&v24;
            v46 = 2114;
            v47 = v21;
            v48 = 2114;
            v49 = v22;
            _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ PersistenceController: added photo to library as %{public}@ %{public}@", buf, 0x20u);

            v14 = v34;
          }

          [*(a1 + 40) _handleCompletedStillImageJobForRequest:v18 withReply:v16 fromBatchOfSize:v35 completionHandler:v20 error:v38];
        }

LABEL_24:
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      v39 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v39);
  }
}

- (id)_ensureCoordinationGroupForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  _coordinationQueue = [(CAMPersistenceController *)self _coordinationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CAMPersistenceController__ensureCoordinationGroupForIdentifier___block_invoke;
  block[3] = &unk_1E76FB778;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_barrier_sync(_coordinationQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __66__CAMPersistenceController__ensureCoordinationGroupForIdentifier___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _coordinationQueueGroupsByIdentifier];
  v2 = [v8 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = dispatch_group_create();
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [v8 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
  }
}

- (id)_coordinationGroupForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  _coordinationQueue = [(CAMPersistenceController *)self _coordinationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CAMPersistenceController__coordinationGroupForIdentifier___block_invoke;
  block[3] = &unk_1E76FB778;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(_coordinationQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __60__CAMPersistenceController__coordinationGroupForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _coordinationQueueGroupsByIdentifier];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_removeCoordinationGroupForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _coordinationQueue = [(CAMPersistenceController *)self _coordinationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__CAMPersistenceController__removeCoordinationGroupForIdentifier___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_barrier_sync(_coordinationQueue, v7);
}

void __66__CAMPersistenceController__removeCoordinationGroupForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _coordinationQueueGroupsByIdentifier];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)persistBurstWithIdentifier:(id)identifier result:(id)result completionHandler:(id)handler
{
  identifierCopy = identifier;
  resultCopy = result;
  handlerCopy = handler;
  _powerController = [(CAMPersistenceController *)self _powerController];
  [_powerController addAssertionForIndentifier:objc_msgSend(_powerController withReason:{"generateAssertionIdentifier"), 0x200000}];
  _remotePersistenceQueue = [(CAMPersistenceController *)self _remotePersistenceQueue];
  v17 = identifierCopy;
  v18 = resultCopy;
  v19 = _powerController;
  v20 = handlerCopy;
  v13 = _powerController;
  v14 = handlerCopy;
  v15 = resultCopy;
  v16 = identifierCopy;
  pl_dispatch_async();
}

void __80__CAMPersistenceController_persistBurstWithIdentifier_result_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) allAssetIdentifiers];
    v3 = [v2 count];

    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v4 setObject:*MEMORY[0x1E69C0420] forKey:*MEMORY[0x1E69C0410]];
      [v4 setObject:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E69C0550]];
      v5 = *(a1 + 32);
      if (v5)
      {
        [v4 setObject:v5 forKey:*MEMORY[0x1E69C03B8]];
      }

      else
      {
        v6 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __80__CAMPersistenceController_persistBurstWithIdentifier_result_completionHandler___block_invoke_cold_1();
        }
      }

      v7 = [*(a1 + 40) allAssetIdentifiers];
      if (v7)
      {
        [v4 setObject:v7 forKey:*MEMORY[0x1E69C0328]];
      }

      else
      {
        v8 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __80__CAMPersistenceController_persistBurstWithIdentifier_result_completionHandler___block_invoke_cold_2();
        }
      }

      v9 = [*(a1 + 40) goodAssetIdentifiers];
      if (v9)
      {
        [v4 setObject:v9 forKey:*MEMORY[0x1E69C0330]];
      }

      else
      {
        v10 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __80__CAMPersistenceController_persistBurstWithIdentifier_result_completionHandler___block_invoke_cold_3();
        }
      }

      v11 = [*(a1 + 40) bestAssetIdentifier];
      if (v11)
      {
        [v4 setObject:v11 forKey:*MEMORY[0x1E69C0338]];
      }

      else
      {
        v12 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "Missing best asset identifier while preparing burst analysis results for assetsd! The stack asset won't be ideal.", buf, 2u);
        }
      }

      v13 = [MEMORY[0x1E69BF198] sharedSystemLibraryAssetsdClient];
      v14 = [v13 resourceClient];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __80__CAMPersistenceController_persistBurstWithIdentifier_result_completionHandler___block_invoke_460;
      v15[3] = &unk_1E76FB7A0;
      v17 = *(a1 + 56);
      v16 = *(a1 + 48);
      v18 = *(a1 + 64);
      [v14 saveAssetWithJobDictionary:v4 imageSurface:0 previewImageSurface:0 completionHandler:v15];
    }
  }
}

void __80__CAMPersistenceController_persistBurstWithIdentifier_result_completionHandler___block_invoke_460(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __80__CAMPersistenceController_persistBurstWithIdentifier_result_completionHandler___block_invoke_460_cold_1();
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }

  [*(a1 + 32) removeAssertionForIdentifier:*(a1 + 48) withReason:0x200000];
}

- (void)persistPlaceholderTimelapseVideoWithResult:(id)result completionHandler:(id)handler
{
  resultCopy = result;
  handlerCopy = handler;
  assetUUID = [resultCopy assetUUID];
  if (assetUUID)
  {
    _powerController = [(CAMPersistenceController *)self _powerController];
    [_powerController addAssertionForIndentifier:objc_msgSend(_powerController withReason:{"generateAssertionIdentifier"), 0x400000}];
    _remotePersistenceQueue = [(CAMPersistenceController *)self _remotePersistenceQueue];
    v12 = resultCopy;
    v13 = handlerCopy;
    v11 = _powerController;
    pl_dispatch_async();
  }
}

void __89__CAMPersistenceController_persistPlaceholderTimelapseVideoWithResult_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _jobDictionaryForTimelapsePlaceholderResult:*(a1 + 40)];
  v3 = [*(a1 + 40) previewImageSurface];
  v4 = [MEMORY[0x1E69BF198] sharedSystemLibraryAssetsdClient];
  v5 = [v4 resourceClient];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__CAMPersistenceController_persistPlaceholderTimelapseVideoWithResult_completionHandler___block_invoke_2;
  v6[3] = &unk_1E76FB7A0;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  v9 = *(a1 + 64);
  [v5 saveAssetWithJobDictionary:v2 imageSurface:0 previewImageSurface:v3 completionHandler:v6];
}

void __89__CAMPersistenceController_persistPlaceholderTimelapseVideoWithResult_completionHandler___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __89__CAMPersistenceController_persistPlaceholderTimelapseVideoWithResult_completionHandler___block_invoke_2_cold_1();
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }

  [*(a1 + 32) removeAssertionForIdentifier:*(a1 + 48) withReason:0x400000];
}

- (id)_jobDictionaryForTimelapsePlaceholderResult:(id)result
{
  v23[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:*MEMORY[0x1E69C0480] forKey:*MEMORY[0x1E69C0410]];
  v5 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(MEMORY[0x1E69BF178], "savedAssetTypeForCameraCapturedAsset")}];
  [v4 setObject:v5 forKey:*MEMORY[0x1E69C0558]];

  [v4 setObject:&unk_1F16C7CD0 forKey:*MEMORY[0x1E69C0308]];
  [v4 setObject:&unk_1F16C7CE8 forKey:*MEMORY[0x1E69C0300]];
  assetUUID = [resultCopy assetUUID];
  [v4 setObject:assetUUID forKey:*MEMORY[0x1E69C0390]];

  creationDate = [resultCopy creationDate];
  [v4 setObject:creationDate forKey:*MEMORY[0x1E69C0398]];

  v8 = MEMORY[0x1E695E118];
  [v4 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C0528]];
  [v4 setObject:v8 forKey:*MEMORY[0x1E69C02F8]];
  [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69C0550]];
  [resultCopy videoDimensions];
  v11 = v10;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69C0538]];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69C0530]];

  captureDevice = [resultCopy captureDevice];
  LODWORD(v12) = (captureDevice > 0xB) | (0xFDu >> captureDevice);
  captureOrientation = [resultCopy captureOrientation];
  v22[0] = *MEMORY[0x1E69C0370];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v12 & 1];
  v23[0] = v16;
  v22[1] = *MEMORY[0x1E69C04A8];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:captureOrientation];
  v23[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  [v4 setObject:v18 forKey:*MEMORY[0x1E69C03C8]];
  localPrivateMetadataFileURL = [resultCopy localPrivateMetadataFileURL];
  path = [localPrivateMetadataFileURL path];
  [v4 setObject:path forKeyedSubscript:*MEMORY[0x1E69C0378]];

  return v4;
}

+ (id)uniquePathForAssetWithUUID:(id)d captureTime:(double)time extension:(id)extension usingIncomingDirectory:(BOOL)directory
{
  dCopy = d;
  extensionCopy = extension;
  if ([dCopy length])
  {
    if (directory)
    {
LABEL_3:
      _pathForIncomingDirectory = [self _pathForIncomingDirectory];
      goto LABEL_6;
    }
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    dCopy = uUIDString;
    if (directory)
    {
      goto LABEL_3;
    }
  }

  _pathForIncomingDirectory = NSTemporaryDirectory();
LABEL_6:
  v15 = _pathForIncomingDirectory;
  delimiterForIncomingAssetFilenames = [self delimiterForIncomingAssetFilenames];
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f%@%@", time * 100.0, delimiterForIncomingAssetFilenames, dCopy];
  v18 = [v15 stringByAppendingPathComponent:dCopy];

  if (extensionCopy)
  {
    v19 = [v18 stringByAppendingPathExtension:extensionCopy];

    v18 = v19;
  }

  if (!directory)
  {
    v20 = NSTemporaryDirectory();
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v22 = [defaultManager fileExistsAtPath:v20];

    if ((v22 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v28 = 0;
      v24 = [defaultManager2 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&v28];
      v25 = v28;

      if ((v24 & 1) == 0)
      {
        v26 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          +[CAMPersistenceController uniquePathForAssetWithUUID:captureTime:extension:usingIncomingDirectory:];
        }
      }
    }
  }

  return v18;
}

- (void)emptyLocalPersistenceStorageWithTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  _localPersistenceQueue = [(CAMPersistenceController *)self _localPersistenceQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__CAMPersistenceController_emptyLocalPersistenceStorageWithTimeout_completionHandler___block_invoke;
  v9[3] = &unk_1E76F7E18;
  timeoutCopy = timeout;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(_localPersistenceQueue, v9);
}

void __86__CAMPersistenceController_emptyLocalPersistenceStorageWithTimeout_completionHandler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__12;
  v33 = __Block_byref_object_dispose__12;
  v34 = 0;
  v2 = NSTemporaryDirectory();
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v3 fileExistsAtPath:v2])
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v2];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __86__CAMPersistenceController_emptyLocalPersistenceStorageWithTimeout_completionHandler___block_invoke_2;
    v28[3] = &unk_1E76FB7F0;
    v28[4] = &v29;
    v5 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:17 errorHandler:v28];
    Current = CFAbsoluteTimeGetCurrent();
    v21 = v2;
    v22 = v4;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v39 count:16];
    if (v8)
    {
      v9 = *v25;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          if (CFAbsoluteTimeGetCurrent() - Current > *(a1 + 40))
          {
            v19 = os_log_create("com.apple.camera", "Camera");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "Timed out deleting local persistence items", buf, 2u);
            }

            goto LABEL_19;
          }

          v12 = (v30 + 5);
          obj = v30[5];
          v13 = [v3 removeItemAtURL:v11 error:&obj];
          objc_storeStrong(v12, obj);
          v14 = os_log_create("com.apple.camera", "Camera");
          v15 = v14;
          if (v13)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v11 path];
              *buf = 138543362;
              v36 = v16;
              _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "Deleted local persistence item at %{public}@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v17 = [v11 path];
            v18 = v30[5];
            *buf = 138543618;
            v36 = v17;
            v37 = 2114;
            v38 = v18;
            _os_log_error_impl(&dword_1A3640000, v15, OS_LOG_TYPE_ERROR, "Failed to delete local persistence item at %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v24 objects:v39 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v2 = v21;
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    (*(v20 + 16))(v20, v30[5]);
  }

  _Block_object_dispose(&v29, 8);
}

uint64_t __86__CAMPersistenceController_emptyLocalPersistenceStorageWithTimeout_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __86__CAMPersistenceController_emptyLocalPersistenceStorageWithTimeout_completionHandler___block_invoke_2_cold_1();
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  return 1;
}

- (void)_handleStillImagePersistenceForRequest:withResult:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistStillImageCaptureSurfaceResult:withRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_persistStillImageCaptureSurfaceResult:withRequest:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistStillImageCaptureSurfaceResult:withRequest:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistStillImageCaptureSurfaceResult:withRequest:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistStillImageCaptureSurfaceResult:withRequest:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_physicallyRotatedJPEGDataFromCapturePhoto:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_physicallyRotatedJPEGDataFromCapturePhoto:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_physicallyRotatedJPEGDataFromCapturePhoto:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_physicallyRotatedJPEGDataFromCapturePhoto:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_physicallyRotatedJPEGDataFromCapturePhoto:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_physicallyRotatedJPEGDataFromCapturePhoto:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_physicallyRotatedJPEGDataFromCapturePhoto:.cold.7()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_physicallyRotatedJPEGDataFromCapturePhoto:.cold.8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_adjustmentsDataForRequest:(double)a3 captureDimensions:(double)a4 portraitMetadata:(double)a5 .cold.1(unint64_t a1, NSObject *a2, double a3, double a4, double a5, double a6)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 > 6)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E76FB810[a1 - 1];
  }

  v8 = NSStringFromCGRect(*&a3);
  v9 = 138543618;
  v10 = v7;
  v11 = 2114;
  v12 = v8;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Could not calculate a crop rect for aspect: %{public}@; photo bounds: %{public}@", &v9, 0x16u);
}

- (void)_handleCompletedVideoJobForRequest:withReply:completionHandler:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __80__CAMPersistenceController_persistBurstWithIdentifier_result_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__CAMPersistenceController_persistBurstWithIdentifier_result_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__CAMPersistenceController_persistBurstWithIdentifier_result_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__CAMPersistenceController_persistBurstWithIdentifier_result_completionHandler___block_invoke_460_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __89__CAMPersistenceController_persistPlaceholderTimelapseVideoWithResult_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end