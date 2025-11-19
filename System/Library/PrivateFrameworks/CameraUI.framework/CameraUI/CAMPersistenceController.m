@interface CAMPersistenceController
+ (id)_pathForIncomingDirectory;
+ (id)clientVideoMetadataForLocation:(id)a3 withCreationDate:(id)a4;
+ (id)clientVideoMetadataForRequest:(id)a3 withCreationDate:(id)a4 isEV0ForHDR:(BOOL)a5 livePhotoIdentifierOverride:(id)a6 slomoPlayback:(BOOL)a7;
+ (id)uniquePathForAssetWithUUID:(id)a3 captureTime:(double)a4 extension:(id)a5 usingIncomingDirectory:(BOOL)a6;
+ (id)videoMetadataDateFormatter;
- (BOOL)_writeDataToURL:(id)a3 withData:(id)a4 duringBurst:(BOOL)a5 error:(id *)a6;
- (BOOL)_writeJPEGToURL:(id)a3 withData:(id)a4 thumbnail:(id)a5 properties:(id)a6 duringBurst:(BOOL)a7 error:(id *)a8;
- (BOOL)resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest;
- (BOOL)writePrivateMetadataFileToURL:(id)a3 withPrivateClientMetadata:(id)a4 sharedLibraryMode:(int64_t)a5 contactIDsInProximity:(id)a6 sharedLibraryDiagnostics:(id)a7;
- (CAMPersistenceController)init;
- (CAMPersistenceController)initWithLocationController:(id)a3 burstController:(id)a4 protectionController:(id)a5 powerController:(id)a6 irisVideoController:(id)a7;
- (CAMPersistenceResultDelegate)resultDelegate;
- (CAMThumbnailGenerator)_localPersistenceThumbnailGenerator;
- (CAMThumbnailGenerator)_remotePersistenceThumbnailGenerator;
- (CGAffineTransform)_affineTransformForRotationDegrees:(SEL)a3 mirrored:(int)a4;
- (NSMutableArray)_pendingLocalPersistenceWrappers;
- (NSMutableArray)_pendingRemotePersistenceWrappers;
- (__CFWriteStream)_createOpenWriteStreamWithURL:(id)a3 forBurst:(BOOL)a4 error:(id *)a5;
- (id)_adjustmentsDataForCinematicVideoRequest:(id)a3 result:(id)a4;
- (id)_adjustmentsDataForRequest:(id)a3 captureDimensions:(id)a4 portraitMetadata:(id)a5;
- (id)_adjustmentsDataForSloMoVideoRequest:(id)a3;
- (id)_adjustmentsDataForVideoRequest:(id)a3;
- (id)_coordinationGroupForIdentifier:(id)a3;
- (id)_createMetadataForPhysicallyOrientedImage:(id)a3;
- (id)_ensureCoordinationGroupForIdentifier:(id)a3;
- (id)_extensionForUniformType:(id)a3;
- (id)_jobDictionaryForStillImageLocalResult:(id)a3 filteredLocalResult:(id)a4 fromRequest:(id)a5 loggingIdentifier:(id)a6;
- (id)_jobDictionaryForTimelapsePlaceholderResult:(id)a3;
- (id)_jobDictionaryForVideoLocalResult:(id)a3 fromRequest:(id)a4 loggingIdentifier:(id)a5;
- (id)_persistStillImageCaptureSurfaceResult:(id)a3 withRequest:(id)a4;
- (id)_persistVideoCaptureResult:(id)a3 withRequest:(id)a4;
- (id)_persistenceErrorForWriteStream:(__CFWriteStream *)a3 url:(id)a4 code:(int64_t)a5;
- (id)_physicallyRotatedJPEGDataFromCapturePhoto:(id)a3;
- (id)_stillPersistenceUUIDForRequest:(id)a3 withVideoResult:(id)a4;
- (id)_uniformTypeForStillImageRequest:(id)a3 result:(id)a4;
- (id)_videoPersistenceUUIDForRequest:(id)a3 withResult:(id)a4;
- (id)_xmpEncodedDiagnosticDataFromDictionary:(id)a3;
- (unsigned)_stillImageLocalPowerAssertionReasonForCoordinationInfo:(id)a3;
- (unsigned)_videoLocalPowerAssertionReasonForCoordinationInfo:(id)a3;
- (unsigned)_videoRemotePowerAssertionReasonForCoordinationInfo:(id)a3;
- (void)_coordinateRemotePersistenceForStillImageLocalResult:(id)a3 coordinationInfo:(id)a4 request:(id)a5;
- (void)_coordinateRemotePersistenceForVideoLocalResult:(id)a3 coordinationInfo:(id)a4 request:(id)a5;
- (void)_dispatchRemotePersistenceForLocalPersistenceResult:(id)a3 filteredLocalResult:(id)a4 request:(id)a5 powerAssertionReason:(unsigned int)a6 loggingIdentifier:(id)a7;
- (void)_dispatchRemotePersistenceForLocalVideoPersistenceResult:(id)a3 request:(id)a4 powerAssertionReason:(unsigned int)a5 loggingIdentifier:(id)a6;
- (void)_handleCompletedStillImageJobForRequest:(id)a3 withReply:(id)a4 fromBatchOfSize:(unint64_t)a5 completionHandler:(id)a6 error:(id)a7;
- (void)_handleCompletedVideoJobForRequest:(id)a3 withReply:(id)a4 completionHandler:(id)a5 error:(id)a6;
- (void)_handleStillImagePersistenceForRequest:(id)a3 withResult:(id)a4;
- (void)_handleVideoPersistenceForRequest:(id)a3 withResult:(id)a4;
- (void)_locallyPersistStillImageResult:(id)a3 forRequest:(id)a4 withCompletionHandler:(id)a5;
- (void)_locallyPersistVideoCaptureResult:(id)a3 forRequest:(id)a4 withCompletionHandler:(id)a5;
- (void)_notifyDelegateOfCompletedStillImageLocalPersistenceForRequest:(id)a3 withResult:(id)a4;
- (void)_notifyDelegateOfCompletedStillImageRemotePersistenceForRequest:(id)a3 withReply:(id)a4 fromBatchOfSize:(unint64_t)a5 error:(id)a6;
- (void)_notifyDelegateOfCompletedVideoLocalPersistenceForRequest:(id)a3 withResult:(id)a4;
- (void)_notifyDelegateOfCompletedVideoRemotePersistenceForRequest:(id)a3 withReply:(id)a4 error:(id)a5;
- (void)_remotelyPersistStillImageJob:(id)a3 forRequest:(id)a4 loggingIdentifier:(id)a5 completionHandler:(id)a6;
- (void)_remotelyPersistVideoJob:(id)a3 forRequest:(id)a4 loggingIdentifier:(id)a5 withSendHandler:(id)a6 completionHandler:(id)a7;
- (void)_removeCoordinationGroupForIdentifier:(id)a3;
- (void)dealloc;
- (void)emptyLocalPersistenceStorageWithTimeout:(double)a3 completionHandler:(id)a4;
- (void)performDeferredRemotePersistenceWithCompletionHandler:(id)a3;
- (void)persistBurstWithIdentifier:(id)a3 result:(id)a4 completionHandler:(id)a5;
- (void)persistPlaceholderTimelapseVideoWithResult:(id)a3 completionHandler:(id)a4;
- (void)setResultDelegate:(id)a3;
- (void)stillImagePersistenceCoordinator:(id)a3 requestsRemotePersistenceForLocalPersistenceResult:(id)a4 filteredLocalResult:(id)a5 request:(id)a6 powerAssertionReason:(unsigned int)a7;
- (void)stillImagePersistenceCoordinator:(id)a3 requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo:(id)a4 request:(id)a5;
- (void)stillImageRequest:(id)a3 didCompleteVideoCaptureWithResult:(id)a4;
- (void)stillImageRequestDidCompleteCapture:(id)a3 error:(id)a4;
- (void)videoPersistenceCoordinator:(id)a3 requestsRemotePersistenceForLocalPersistenceResult:(id)a4 captureRequest:(id)a5 powerAssertionReason:(unsigned int)a6;
- (void)videoPersistenceCoordinator:(id)a3 requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo:(id)a4 request:(id)a5;
@end

@implementation CAMPersistenceController

- (BOOL)resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CAMPersistenceController *)self _resultDelegateIsolationQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__CAMPersistenceController_resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest__block_invoke;
  v5[3] = &unk_1E76FAFF0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
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
  v3 = [(CAMPersistenceController *)self _resultDelegateIsolationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CAMPersistenceController_resultDelegate__block_invoke;
  v6[3] = &unk_1E76FAFF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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

- (CAMPersistenceController)initWithLocationController:(id)a3 burstController:(id)a4 protectionController:(id)a5 powerController:(id)a6 irisVideoController:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v41 = a7;
  v44.receiver = self;
  v44.super_class = CAMPersistenceController;
  v17 = [(CAMPersistenceController *)&v44 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->__locationController, a3);
    objc_storeStrong(&v18->__burstController, a4);
    objc_storeStrong(&v18->__protectionController, a5);
    objc_storeStrong(&v18->__powerController, a6);
    objc_storeStrong(&v18->__irisVideoController, a7);
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
    v32 = v16;
    v33 = v15;
    v34 = v14;
    v35 = v13;
    v36 = v18;
    v43 = v36;
    dispatch_barrier_sync(v31, block);
    v37 = +[CAMPriorityNotificationCenter defaultCenter];
    [v37 addObserver:v36 selector:sel__mainThread_handleApplicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
    v38 = v36;
    v13 = v35;
    v14 = v34;
    v15 = v33;
    v16 = v32;
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

- (void)setResultDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CAMPersistenceController *)self _resultDelegateIsolationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CAMPersistenceController_setResultDelegate___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

uint64_t __46__CAMPersistenceController_setResultDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 32), *(a1 + 40));
  result = objc_opt_respondsToSelector();
  *(*(a1 + 32) + 8) = result & 1;
  return result;
}

- (void)stillImageRequest:(id)a3 didCompleteVideoCaptureWithResult:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CAMPersistenceController *)self _irisVideoController];
  if ([v7 shouldHandleLivePhotoRenderingForRequest:v9])
  {
    if ([v9 shouldProtectPersistenceForVideo])
    {
      v8 = [(CAMPersistenceController *)self _protectionController];
      [v8 stopProtectingPersistenceForRequest:v9];
    }

    [v7 stillImageRequest:v9 didCompleteVideoCaptureWithResult:v6];
  }

  else
  {
    [(CAMPersistenceController *)self _handleVideoPersistenceForRequest:v9 withResult:v6];
  }
}

- (void)stillImageRequestDidCompleteCapture:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAMPersistenceController *)self _irisVideoController];
  if ([v8 shouldHandleLivePhotoRenderingForRequest:v6])
  {
    [v8 stillImageRequestDidCompleteCapture:v6 error:v7];
  }

  if ([(CAMPersistenceController *)self resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest])
  {
    v9 = [v6 persistenceUUID];
    v10 = [(CAMPersistenceController *)self _coordinationGroupForIdentifier:v9];
    v11 = [(CAMPersistenceController *)self resultDelegate];
    if (v10)
    {
      v12 = [(CAMPersistenceController *)self _localPersistenceQueue];
      v13 = v11;
      v14 = v6;
      pl_dispatch_group_notify();

      [(CAMPersistenceController *)self _removeCoordinationGroupForIdentifier:v9];
    }

    else if ([v6 persistenceOptions])
    {
      [v11 persistenceController:self didCompleteAllLocalPersistenceForRequest:v6];
    }
  }
}

- (unsigned)_stillImageLocalPowerAssertionReasonForCoordinationInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 isHDR];
  v5 = [v3 isFiltered];

  if (v4)
  {
    v6 = 64;
  }

  else
  {
    v6 = 32;
  }

  if (v4)
  {
    v7 = 256;
  }

  else
  {
    v7 = 128;
  }

  if (v5)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (unsigned)_videoLocalPowerAssertionReasonForCoordinationInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 isHDR];
  v5 = [v3 isFiltered];

  if (v4)
  {
    v6 = 0x4000;
  }

  else
  {
    v6 = 0x2000;
  }

  if (v4)
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0x8000;
  }

  if (v5)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (unsigned)_videoRemotePowerAssertionReasonForCoordinationInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 isHDR];
  v5 = [v3 isFiltered];

  if (v4)
  {
    v6 = 0x40000;
  }

  else
  {
    v6 = 0x20000;
  }

  if (v4)
  {
    v7 = 0x100000;
  }

  else
  {
    v7 = 0x80000;
  }

  if (v5)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (void)_handleStillImagePersistenceForRequest:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 persistenceOptions];
  if (v8)
  {
    v9 = v8;
    CAMSignpostWithIDAndArgs(49, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
    v10 = [v7 error];
    if (v10)
    {
      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CAMPersistenceController _handleStillImagePersistenceForRequest:withResult:];
      }

      if ([v6 conformsToProtocol:&unk_1F1759928])
      {
        v12 = [[CAMStillImageLocalPersistenceResult alloc] initWithCaptureResult:v7 atURL:0 linkedURL:0 localAdjustmentsURL:0 diagnosticsPath:0 filteredPreviewPath:0 withUUID:0 creationDate:0 uniformTypeIdentifier:0 orientation:0 metadata:0 adjustmentsData:0 localPrivateMetadataFileURL:0 error:v10];
        v13 = v6;
        v14 = [v13 burstIdentifier];

        if (v14)
        {
          v15 = [(CAMPersistenceController *)self _burstController];
          [v15 processPersistedRequest:v13 withResult:v12];
        }
      }

      if (v9 != 2)
      {
        goto LABEL_19;
      }

      v16 = [v7 coordinationInfo];
      [(CAMPersistenceController *)self _coordinateRemotePersistenceForStillImageLocalResult:0 coordinationInfo:v16 request:v6];
    }

    else
    {
      v16 = [v7 coordinationInfo];
      v17 = [(CAMPersistenceController *)self _stillImageLocalPowerAssertionReasonForCoordinationInfo:v16];
      v18 = [(CAMPersistenceController *)self _powerController];
      v19 = [v6 assertionIdentifier];
      [v18 addAssertionForIndentifier:v19 withReason:v17];
      if ([(CAMPersistenceController *)self resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest])
      {
        v20 = [v6 persistenceUUID];
        v21 = [(CAMPersistenceController *)self _ensureCoordinationGroupForIdentifier:v20];

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
      v33 = v19;
      v34 = v17;
      v31 = v18;
      v32 = v21;
      v22 = v21;
      v23 = v18;
      v24 = _Block_copy(aBlock);
      if ([v6 shouldProtectPersistence])
      {
        v25 = [(CAMPersistenceController *)self _protectionController];
        [v25 startProtectingPersistenceForRequest:v6];
      }

      v26 = [(CAMPersistenceController *)self _localPersistenceQueue];
      v28 = v6;
      v29 = v7;
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

- (void)_notifyDelegateOfCompletedStillImageLocalPersistenceForRequest:(id)a3 withResult:(id)a4
{
  v34 = a3;
  v6 = a4;
  v7 = [v6 localPersistenceUUID];
  v31 = [v6 creationDate];
  if ([v34 conformsToProtocol:&unk_1F1759928])
  {
    v8 = [(CAMPersistenceController *)self _burstController];
    v33 = [v34 burstIdentifier];
    v9 = [v8 estimatedCountForIdentifier:?];
  }

  else
  {
    v9 = 0;
    v33 = 0;
  }

  v10 = [v6 captureResult];
  v11 = [v10 metadata];
  v32 = [v6 localDestinationURL];
  v12 = [v34 sessionIdentifier];
  v30 = v10;
  v13 = [v10 isExpectingPairedVideo];
  v14 = [v34 type];
  if (v14)
  {
    v15 = CAMSizeForPhotoMetadata(v11);
  }

  else
  {
    +[CAMAspectCropUtilities finalExpectedSizeWithPhotoMetadata:aspectRatio:](CAMAspectCropUtilities, "finalExpectedSizeWithPhotoMetadata:aspectRatio:", v11, [v34 aspectRatioCrop]);
  }

  v17 = v15;
  v18 = v16;
  v19 = [CAMStillImagePersistenceResponse alloc];
  v20 = [v6 captureResult];
  v21 = [v20 coordinationInfo];
  LOBYTE(v29) = v13;
  v22 = v12;
  v23 = v32;
  v24 = [(CAMStillImagePersistenceResponse *)v19 initWithUUID:v7 captureSession:v22 url:v32 creationDate:v31 scrubberImage:0 finalExpectedPixelSize:v11 metadata:v17 burstIdentifier:v18 burstRepresentedCount:v33 expectingPairedVideo:v9 coordinationInfo:v29, v21];

  if (v14 == 2)
  {
    v28 = v34;
    v26 = [v28 delegate];
    if (!v26 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_16;
    }

    v27 = [v6 error];
    [v26 panoramaRequestDidCompleteLocalPersistence:v28 withResponse:v24 error:v27];
    goto LABEL_15;
  }

  if (v14)
  {
    goto LABEL_17;
  }

  v25 = v34;
  v26 = [v25 delegate];
  if (v26 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v27 = [v6 error];
    [v26 stillImageRequestDidCompleteStillImageLocalPersistence:v25 withResponse:v24 error:v27];
LABEL_15:

    v23 = v32;
  }

LABEL_16:

LABEL_17:
}

- (void)_locallyPersistStillImageResult:(id)a3 forRequest:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 persistenceOptions];
  v12 = objc_autoreleasePoolPush();
  v13 = [(CAMPersistenceController *)self _persistStillImageCaptureSurfaceResult:v8 withRequest:v9];
  objc_autoreleasePoolPop(v12);
  v14 = [(CAMPersistenceController *)self resultDelegate];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v14 persistenceController:self didGenerateStillImageLocalPersistenceResult:v13 forCaptureResult:v8 fromRequest:v9];
  }

  CAMSignpostWithIDAndArgs(50, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  if (v11 == 2)
  {
    v15 = [v8 coordinationInfo];
    [(CAMPersistenceController *)self _coordinateRemotePersistenceForStillImageLocalResult:v13 coordinationInfo:v15 request:v9];
  }

  v19 = v9;
  v20 = v10;
  v16 = v10;
  v17 = v13;
  v18 = v9;
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

- (void)_coordinateRemotePersistenceForStillImageLocalResult:(id)a3 coordinationInfo:(id)a4 request:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  CAMSignpostWithIDAndArgs(51, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  if (v9)
  {
    v11 = [(CAMPersistenceController *)self _coordinationQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __106__CAMPersistenceController__coordinateRemotePersistenceForStillImageLocalResult_coordinationInfo_request___block_invoke;
    v13[3] = &unk_1E76F8230;
    v14 = v9;
    v15 = self;
    v16 = v8;
    v17 = v10;
    dispatch_barrier_sync(v11, v13);
  }

  else
  {
    v12 = [0 identifier];
    [(CAMPersistenceController *)self _dispatchRemotePersistenceForLocalPersistenceResult:v8 filteredLocalResult:0 request:v10 powerAssertionReason:512 loggingIdentifier:v12];
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

- (void)stillImagePersistenceCoordinator:(id)a3 requestsRemotePersistenceForLocalPersistenceResult:(id)a4 filteredLocalResult:(id)a5 request:(id)a6 powerAssertionReason:(unsigned int)a7
{
  v7 = *&a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [a3 loggingIdentifier];
  [(CAMPersistenceController *)self _dispatchRemotePersistenceForLocalPersistenceResult:v14 filteredLocalResult:v13 request:v12 powerAssertionReason:v7 loggingIdentifier:v15];
}

- (void)stillImagePersistenceCoordinator:(id)a3 requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo:(id)a4 request:(id)a5
{
  v7 = a4;
  v8 = a5;
  dispatch_time(0, 10000000000);
  v9 = [(CAMPersistenceController *)self _localPersistenceQueue];
  v12 = v8;
  v10 = v8;
  v11 = v7;
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

- (void)_dispatchRemotePersistenceForLocalPersistenceResult:(id)a3 filteredLocalResult:(id)a4 request:(id)a5 powerAssertionReason:(unsigned int)a6 loggingIdentifier:(id)a7
{
  v8 = *&a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v12)
  {
    v16 = [v12 error];

    if (!v16)
    {
      v17 = [v14 assertionIdentifier];
      v18 = [(CAMPersistenceController *)self _powerController];
      [v18 addAssertionForIndentifier:v17 withReason:v8];
      v19 = [v14 shouldProtectPersistence];
      if (v13 && v19)
      {
        v20 = [(CAMPersistenceController *)self _protectionController];
        [v20 stopProtectingPersistenceForRequest:v14];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __147__CAMPersistenceController__dispatchRemotePersistenceForLocalPersistenceResult_filteredLocalResult_request_powerAssertionReason_loggingIdentifier___block_invoke;
      aBlock[3] = &unk_1E76FB5B0;
      v39 = v18;
      v40 = v17;
      v41 = v8;
      v21 = v18;
      v22 = _Block_copy(aBlock);
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __147__CAMPersistenceController__dispatchRemotePersistenceForLocalPersistenceResult_filteredLocalResult_request_powerAssertionReason_loggingIdentifier___block_invoke_2;
      v31 = &unk_1E76FB5D8;
      v32 = self;
      v33 = v12;
      v34 = v13;
      v23 = v14;
      v35 = v23;
      v36 = v15;
      v37 = v22;
      v24 = v22;
      v25 = _Block_copy(&v28);
      if ([v23 shouldDelayRemotePersistence])
      {
        v26 = dispatch_time(0, 5000000000);
        v27 = [(CAMPersistenceController *)self _remotePersistenceQueue];
        dispatch_after(v26, v27, v25);
      }

      else
      {
        v27 = [(CAMPersistenceController *)self _remotePersistenceQueue];
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

- (id)_extensionForUniformType:(id)a3
{
  v3 = a3;
  if ([v3 conformsToType:*MEMORY[0x1E6982E58]])
  {
    v4 = @"JPG";
  }

  else
  {
    v5 = [v3 preferredFilenameExtension];
    v4 = [v5 uppercaseString];
  }

  return v4;
}

- (id)_uniformTypeForStillImageRequest:(id)a3 result:(id)a4
{
  v5 = a3;
  v6 = [a4 capturePhoto];
  v7 = [v6 processedFileType];

  if (!v7)
  {
    v7 = *MEMORY[0x1E69874B0];
    v8 = [v5 photoEncodingBehavior];
    if (v8 == 1)
    {
      v9 = MEMORY[0x1E69874A0];
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_7;
      }

      v9 = MEMORY[0x1E6987498];
    }

    v10 = *v9;

    v7 = v10;
  }

LABEL_7:
  v11 = [MEMORY[0x1E6982C40] typeWithIdentifier:v7];

  return v11;
}

- (id)_persistStillImageCaptureSurfaceResult:(id)a3 withRequest:(id)a4
{
  v189 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 coordinationInfo];
  v148 = [v6 deferredPhotoIdentifier];

  v155 = [v6 representsDeferredFilteredProxy];
  v151 = [v6 stillImageFilteredPreviewSurface];
  v9 = [v6 metadata];
  v164 = [v6 persistenceUUID];
  v173 = [(CAMPersistenceController *)self _uniformTypeForStillImageRequest:v7 result:v6];
  if (v8)
  {
    v166 = [v8 isFilteredImageForFilteredPair];
  }

  else
  {
    v166 = 0;
  }

  v169 = [v7 localDestinationURL];
  v10 = [v169 path];
  v11 = v10;
  v160 = v8;
  if (v10)
  {
    v12 = [v10 length] != 0;
  }

  else
  {
    v12 = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v150 = +[CAMOrientationUtilities imageOrientationOfResult:withCaptureDevice:captureOrientation:](CAMOrientationUtilities, "imageOrientationOfResult:withCaptureDevice:captureOrientation:", v6, [v7 captureDevice], objc_msgSend(v7, "captureOrientation"));
  v14 = [v6 captureDate];
  v157 = [(CAMPersistenceController *)self _localPersistenceThumbnailGenerator];
  v15 = [v6 stillImageUnfilteredPreviewSurface];
  [v6 capturePhoto];
  v168 = v9;
  v165 = v163 = v7;
  v171 = self;
  if (!v165)
  {
    if (![v7 photoEncodingBehavior])
    {
      v34 = [v9 mutableCopy];
      [CAMCaptureMetadataUtilities removeUnwantedKeysForPersistenceFromMetadata:v34];
      v162 = [v34 copy];
      v35 = [v6 stillImageFullsizeSurface];
      v36 = [v6 stillImageFullsizeSurfaceSize];
      v37 = objc_alloc(MEMORY[0x1E69BF250]);
      v38 = v35;
      v7 = v163;
      v18 = [v37 initWithIOSurface:v38 length:v36];
      v161 = [v157 newJPEGDataOfFormat:3039 inOrientation:0 usingSurface:v15 withMetadata:v168];

      goto LABEL_16;
    }

LABEL_15:
    v161 = 0;
    v162 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  if (!v166)
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
  v32 = self;
  v18 = v31;
  if (v31)
  {
    v162 = [(CAMPersistenceController *)v32 _createMetadataForPhysicallyOrientedImage:v9];
    v33 = v16;

    v161 = [v157 newJPEGDataOfFormat:3039 inOrientation:v150 usingSurface:v15 withMetadata:v9];
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
    v19 = [v11 stringByDeletingLastPathComponent];
    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v21 = [v20 fileExistsAtPath:v19];

    if (v21)
    {
      v22 = v169;
      goto LABEL_35;
    }

    v27 = [MEMORY[0x1E696AC08] defaultManager];
    v182 = 0;
    v28 = [v27 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v182];
    v29 = v182;

    v22 = v169;
    if ((v28 & 1) == 0)
    {
      v30 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
      }
    }

    v7 = v163;
  }

  else
  {
    v23 = [v7 shouldPersistToIncomingDirectory];
    v19 = [(CAMPersistenceController *)v171 _extensionForUniformType:v173];
    if (v166)
    {
      v24 = v11;
      v25 = v169;
      if (v155)
      {
        v26 = *MEMORY[0x1E69C00E0];
      }

      else
      {
        v26 = [*MEMORY[0x1E69C00D0] stringByAppendingPathExtension:v19];
      }

      v39 = v26;

      v19 = v39;
      v11 = v24;
    }

    else
    {
      v25 = v169;
    }

    v40 = [CAMPersistenceController uniquePathForAssetWithUUID:v164 captureTime:v19 extension:v23 usingIncomingDirectory:Current];

    v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v40];
    v29 = v25;
    v154 = v40;
    v18 = v159;
  }

LABEL_35:
  v41 = [v22 path];

  if (!v41)
  {
    v42 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
    }
  }

  if ([v7 conformsToProtocol:&unk_1F17598B0])
  {
    v43 = [v7 burstIdentifier];
  }

  else
  {
    v43 = 0;
  }

  v156 = v43;
  v170 = v22;
  v158 = v6;
  if (v18)
  {
    v181 = 0;
    v44 = [(CAMPersistenceController *)v171 _writeJPEGToURL:v22 withData:v18 thumbnail:v161 properties:v162 duringBurst:v43 != 0 error:&v181];
    v45 = v181;
    if (v44)
    {
      goto LABEL_44;
    }

LABEL_53:
    v62 = v14;
    v63 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
    }

    v64 = [MEMORY[0x1E696AC08] defaultManager];
    v65 = [v22 path];
    v167 = v64;
    if ([v64 fileExistsAtPath:v65])
    {
      v66 = v45;
      v175 = 0;
      v67 = [v64 removeItemAtURL:v22 error:&v175];
      v152 = v175;

      if (v67)
      {
        v68 = v173;
        v45 = v66;
LABEL_63:
        v174 = v68;
        v69 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
        [v69 setObject:v163 forKeyedSubscript:@"request"];
        [v69 setObject:v6 forKeyedSubscript:@"result"];
        [v69 setObject:v45 forKeyedSubscript:*MEMORY[0x1E696AA08]];
        v70 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMPersistenceControllerLocalPersistenceErrorDomain" code:-22500 userInfo:v69];
        v71 = v45;
        v172 = [[CAMStillImageLocalPersistenceResult alloc] initWithCaptureResult:v6 atURL:0 linkedURL:0 localAdjustmentsURL:0 diagnosticsPath:0 filteredPreviewPath:0 withUUID:0 creationDate:0 uniformTypeIdentifier:0 orientation:0 metadata:0 adjustmentsData:0 localPrivateMetadataFileURL:0 error:v70];
        v72 = 0;
        v73 = v163;
        v75 = v152;
        v74 = v154;
        v76 = v167;
        goto LABEL_137;
      }

      v65 = os_log_create("com.apple.camera", "Camera");
      v68 = v173;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
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
    v57 = [v165 fileDataRepresentation];
  }

  else
  {
    v58 = [v6 stillImageFullsizeSurface];
    v59 = [v6 stillImageFullsizeSurfaceSize];
    v57 = [objc_alloc(MEMORY[0x1E69BF250]) initWithIOSurface:v58 length:v59];
  }

  v60 = v57;
  v180 = 0;
  v61 = [(CAMPersistenceController *)v171 _writeDataToURL:v22 withData:v57 duringBurst:v43 != 0 error:&v180];
  v45 = v180;

  if (!v61)
  {
    goto LABEL_53;
  }

LABEL_44:
  v142 = v45;
  v46 = 0;
  if (v151 && !v43)
  {
    v47 = v14;
    v48 = v22;
    v49 = [v22 URLByDeletingPathExtension];
    v50 = [v49 URLByAppendingPathExtension:*MEMORY[0x1E69C00E0]];
    v51 = [v50 path];

    v52 = [(CAMPersistenceController *)v171 _localPersistenceThumbnailGenerator];
    v53 = [v52 newJPEGDataInOrientation:v150 usingSurface:v151 withMetadata:v168];
    if ([v53 length])
    {
      CGImageWriteEXIFJPEGToPath();
      v54 = [MEMORY[0x1E696AC08] defaultManager];
      v55 = v51;
      v56 = [v54 fileExistsAtPath:v51];

      if (v56)
      {
        v43 = v156;
        v46 = v51;
        v22 = v48;
        v14 = v47;
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

      v43 = v156;
    }

    else
    {
      v77 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v55 = v51;
        v184 = v51;
        _os_log_impl(&dword_1A3640000, v77, OS_LOG_TYPE_DEFAULT, "Failed to create JPEG data for preview surface for %{public}@", buf, 0xCu);
      }

      else
      {
        v55 = v51;
      }

      v22 = v48;
    }

    v14 = v47;

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
    v79 = [v6 predictedFinalAssetPhotoDimensions];
    v80 = [v165 portraitMetadata];
    v78 = [(CAMPersistenceController *)v171 _adjustmentsDataForRequest:v7 captureDimensions:v79 portraitMetadata:v80];
  }

  v144 = [v6 shouldPersistAdjustmentSidecar];
  v81 = [MEMORY[0x1E69BF230] filesystemPersistenceBatchItemForFileAtURL:v22];
  if (v81)
  {
    v82 = [MEMORY[0x1E696AAE8] mainBundle];
    v83 = [v82 bundleIdentifier];

    [v81 setUUIDString:v83 forKey:*MEMORY[0x1E69BFD90]];
    if (v43)
    {
      [v81 setUUIDString:v43 forKey:*MEMORY[0x1E69BFD20]];
    }

    [v81 setUInt16:1 forKey:*MEMORY[0x1E69BFDC0]];
    if (!((v78 == 0) | v144 & 1))
    {
      [v81 setData:v78 forKey:*MEMORY[0x1E69BFDA8]];
    }

    if (v46)
    {
      [v81 setString:v46 forKey:*MEMORY[0x1E69BFDB8]];
    }

    v84 = [v6 semanticEnhancement];
    if (v84)
    {
      [v81 setInt32:v84 forKey:*MEMORY[0x1E69BFDC8]];
    }

    [v81 persist];
  }

  v85 = v14;
  [v22 setResourceValue:v14 forKey:*MEMORY[0x1E695DAA8] error:0];
  v143 = [v168 objectForKey:@"{Diagnostic}"];
  v139 = [v168 objectForKey:*MEMORY[0x1E6985F60]];
  v86 = [v139 objectForKey:*MEMORY[0x1E69912F8]];
  v87 = 0;
  v153 = v46;
  v147 = v86;
  if ((v166 & 1) == 0)
  {
    v87 = 0;
    if ([v7 shouldPersistDiagnosticsToSidecar])
    {
      if (!v148)
      {
        v88 = [(CAMPersistenceController *)v171 _xmpEncodedDiagnosticDataFromDictionary:v143];
        if ([v88 length])
        {
          v89 = [v22 URLByDeletingPathExtension];
          v90 = [v89 URLByAppendingPathExtension:@"DBG"];

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
    v93 = [v22 URLByDeletingPathExtension];
    v94 = [v93 URLByAppendingPathExtension:@"tvis"];

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

  v99 = [v165 privateClientMetadata];
  v100 = [v22 URLByDeletingPathExtension];
  v101 = [v100 URLByAppendingPathExtension:@"MDATA"];

  v138 = v99;
  if (v166)
  {
    v102 = 0;
  }

  else
  {
    v102 = v99;
  }

  v103 = [v7 sharedLibraryMode];
  v104 = [v7 contactIDsInProximity];
  v105 = [v7 sharedLibraryDiagnostics];
  v106 = [(CAMPersistenceController *)v171 writePrivateMetadataFileToURL:v101 withPrivateClientMetadata:v102 sharedLibraryMode:v103 contactIDsInProximity:v104 sharedLibraryDiagnostics:v105];

  v107 = v78;
  if (v106)
  {
    v137 = v101;
  }

  else
  {

    v137 = 0;
  }

  v108 = [v6 adjustmentFilters];
  v109 = v168;
  v110 = v163;
  v141 = v81;
  if (((v108 != 0) & v144 & v166) == 1)
  {
    v111 = [v165 portraitMetadata];
    v177 = 0;
    v112 = [MEMORY[0x1E69C0670] serializedDictionaryForFilters:v108 portraitMetadata:v111 error:&v177];
    v145 = v177;
    if (v112)
    {
      v135 = v111;
      v113 = v22;
      v114 = 0;
      do
      {
        v115 = v114;
        v116 = v113;
        v114 = [v113 pathExtension];

        v113 = [v113 URLByDeletingPathExtension];
      }

      while ([v114 length]);
      v117 = [v113 URLByAppendingPathExtension:*MEMORY[0x1E69C00B8]];

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

      v111 = v135;
    }

    else
    {
      v114 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        [CAMPersistenceController _persistStillImageCaptureSurfaceResult:withRequest:];
      }

      v117 = 0;
      v118 = v173;
    }

    v119 = v171;
  }

  else
  {
    v117 = 0;
    v119 = v171;
    v118 = v173;
  }

  v174 = v118;
  v136 = v108;
  v146 = v117;
  if ([v110 temporaryPersistenceOptions] == 2)
  {
    v121 = [(CAMPersistenceController *)v119 _extensionForUniformType:v118];
    if (v166)
    {
      v122 = [*MEMORY[0x1E69C00D0] stringByAppendingPathExtension:v121];

      v121 = v122;
    }

    v123 = [CAMPersistenceController uniquePathForAssetWithUUID:v164 captureTime:v121 extension:0 usingIncomingDirectory:Current];
    v124 = [MEMORY[0x1E695DFF8] fileURLWithPath:v123];
    v125 = [MEMORY[0x1E696AC08] defaultManager];
    v176 = 0;
    v126 = v124;
    v127 = [v125 copyItemAtURL:v170 toURL:v124 error:&v176];
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
  v130 = [v140 path];
  v131 = [CAMStillImageLocalPersistenceResult alloc];
  v132 = [v118 identifier];
  v71 = v142;
  v133 = v131;
  v22 = v170;
  v75 = v153;
  v172 = [(CAMStillImageLocalPersistenceResult *)v133 initWithCaptureResult:v158 atURL:v170 linkedURL:v126 localAdjustmentsURL:v146 diagnosticsPath:v130 filteredPreviewPath:v153 withUUID:v164 creationDate:v149 uniformTypeIdentifier:v132 orientation:v150 metadata:v109 adjustmentsData:v76 localPrivateMetadataFileURL:v137 error:v142];

  v73 = v163;
  v74 = v154;
  v69 = v141;
  v72 = v126;
  v62 = v149;
LABEL_137:

  return v172;
}

- (id)_physicallyRotatedJPEGDataFromCapturePhoto:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 fileDataRepresentation];
  v5 = [v3 metadata];
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

- (id)_createMetadataForPhysicallyOrientedImage:(id)a3
{
  v137[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E696DE78];
  v5 = [v3 objectForKey:*MEMORY[0x1E696DE78]];
  v6 = *MEMORY[0x1E696D9B0];
  v7 = [v3 objectForKey:*MEMORY[0x1E696D9B0]];
  v8 = *MEMORY[0x1E696DAA8];
  v9 = [v7 objectForKey:*MEMORY[0x1E696DAA8]];
  v10 = *MEMORY[0x1E696DAB0];
  v11 = [v7 objectForKey:*MEMORY[0x1E696DAB0]];
  v12 = [v3 mutableCopy];
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
    v109 = v3;
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
      LODWORD(v3) = llround(v23 * CGRectGetMidX(v140));
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
      v54 = [MEMORY[0x1E696AD98] numberWithShort:v3];
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
      v3 = v109;
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
      v120 = [MEMORY[0x1E695DF70] array];
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

            [v120 addObject:v88];
          }

          v122 = [obj countByEnumeratingWithState:&v130 objects:v136 count:16];
        }

        while (v122);
      }

      v59 = v108;
      v63 = v105;
      if ([v120 count])
      {
        v97 = [v105 mutableCopy];
        [v97 setObject:v120 forKeyedSubscript:v107];
        v98 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
        [v97 setObject:v98 forKeyedSubscript:*MEMORY[0x1E696D8E0]];

        v99 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
        [v97 setObject:v99 forKeyedSubscript:*MEMORY[0x1E696D8D8]];

        v100 = [v62 mutableCopy];
        [v100 setObject:v97 forKeyedSubscript:@"Regions"];
        [v108 setObject:v100 forKeyedSubscript:v103];
        [v110 setObject:v100 forKeyedSubscript:v103];
      }

      v3 = v109;
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

- (CGAffineTransform)_affineTransformForRotationDegrees:(SEL)a3 mirrored:(int)a4
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

  if (a4 >= 1)
  {
    memset(&t2, 0, sizeof(t2));
    CGAffineTransformMakeRotation(&t2, a4 * 0.0174532925);
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

- (id)_persistenceErrorForWriteStream:(__CFWriteStream *)a3 url:(id)a4 code:(int64_t)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!a3 || (v8 = CFWriteStreamCopyError(a3)) == 0)
  {
    v9 = MEMORY[0x1E696ABC0];
    v12 = @"url";
    v13[0] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v9 errorWithDomain:@"CAMPersistenceControllerLocalPersistenceErrorDomain" code:a5 userInfo:v10];
  }

  return v8;
}

- (__CFWriteStream)_createOpenWriteStreamWithURL:(id)a3 forBurst:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = CFWriteStreamCreateWithFile(*MEMORY[0x1E695E480], v8);
  v10 = v9;
  if (!v9)
  {
    v13 = [(CAMPersistenceController *)self _persistenceErrorForWriteStream:0 url:v8 code:-22499];
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!CFWriteStreamOpen(v9))
  {
    v14 = self;
    v15 = v10;
    v16 = v8;
    v17 = -22498;
    goto LABEL_12;
  }

  v11 = CFWriteStreamCopyProperty(v10, @"_kCFStreamPropertyFileNativeHandle");
  if (!v11)
  {
    v14 = self;
    v15 = v10;
    v16 = v8;
    v17 = -22497;
LABEL_12:
    v13 = [(CAMPersistenceController *)v14 _persistenceErrorForWriteStream:v15 url:v16 code:v17];
    CFRelease(v10);
    v10 = 0;
    if (!a5)
    {
      goto LABEL_14;
    }

LABEL_13:
    v18 = v13;
    *a5 = v13;
    goto LABEL_14;
  }

  v12 = v11;
  *buffer = 0;
  v21.location = 0;
  v21.length = 4;
  CFDataGetBytes(v11, v21, buffer);
  fcntl(*buffer, 48, 1);
  fcntl(*buffer, 62, 1);
  if (v6)
  {
    fcntl(*buffer, 82, 1);
  }

  CFRelease(v12);
  v13 = 0;
  if (a5)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v10;
}

- (BOOL)_writeJPEGToURL:(id)a3 withData:(id)a4 thumbnail:(id)a5 properties:(id)a6 duringBurst:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v22 = 0;
  v17 = [(CAMPersistenceController *)self _createOpenWriteStreamWithURL:a3 forBurst:v9 error:&v22];
  v18 = v22;
  if (!v17)
  {
    v19 = 0;
    if (!a8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = CGImageWriteEXIFJPEGWithMetadata();
  CFWriteStreamClose(v17);
  CFRelease(v17);

  v18 = 0;
  if (a8)
  {
LABEL_3:
    v20 = v18;
    *a8 = v18;
  }

LABEL_4:

  return v19;
}

- (BOOL)_writeDataToURL:(id)a3 withData:(id)a4 duringBurst:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a4;
  v18 = 0;
  v11 = [(CAMPersistenceController *)self _createOpenWriteStreamWithURL:a3 forBurst:v7 error:&v18];
  v12 = v18;
  if (!v11)
  {
    v14 = 0;
    if (!a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = CFWriteStreamWrite(v11, [v10 bytes], objc_msgSend(v10, "length"));
  v14 = v13 > 0;
  if (v13 <= 0)
  {
    v15 = CFWriteStreamCopyError(v11);

    v12 = v15;
  }

  CFWriteStreamClose(v11);
  CFRelease(v11);
  if (a6)
  {
LABEL_5:
    v16 = v12;
    *a6 = v12;
  }

LABEL_6:

  return v14;
}

- (id)_adjustmentsDataForCinematicVideoRequest:(id)a3 result:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E69C0730];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setDepthEnabled:1];
  [v8 setCinematicVideoRenderingVersion:{objc_msgSend(MEMORY[0x1E69BDDD8], "currentSystemRenderingVersion")}];
  v9 = [v7 audioConfiguration];

  if (v9 == 3)
  {
    v10 = objc_alloc(MEMORY[0x1E69C0718]);
    v11 = [v5 localDestinationURL];
    v12 = [v10 initWithAVURL:v11 options:13 timeZoneLookup:0];

    v13 = [v12 hasSpatialAudio];
    if ((v13 & 1) == 0)
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
    v13 = 0;
  }

  [v8 setIsEligibleForCinematicAudioEffectProcessing:v13];
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

- (id)_adjustmentsDataForVideoRequest:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C0730];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 audioConfiguration];

  [v5 setIsEligibleForCinematicAudioEffectProcessing:v6 == 3];
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

- (id)_adjustmentsDataForSloMoVideoRequest:(id)a3
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

- (id)_adjustmentsDataForRequest:(id)a3 captureDimensions:(id)a4 portraitMetadata:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v8;
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
    v15 = [v14 supportedPortraitLightingVersion];

    v16 = [MEMORY[0x1E6993870] ciFilterNameForLightingType:objc_msgSend(v10 version:{"lightingEffectType"), v15}];
    v17 = +[CAMEffectFilterManager ciFilterNameForFilterType:](CAMEffectFilterManager, "ciFilterNameForFilterType:", [v10 effectFilterType]);
    v18 = [v10 aspectRatioCrop];
    v19 = *MEMORY[0x1E69C09B0];
    v20 = *(MEMORY[0x1E69C09B0] + 8);
    v21 = *(MEMORY[0x1E69C09B0] + 16);
    v22 = *(MEMORY[0x1E69C09B0] + 24);
    v23 = v22;
    v24 = v21;
    v25 = v20;
    v26 = *MEMORY[0x1E69C09B0];
    if (v18)
    {
      v41 = *(MEMORY[0x1E69C09B0] + 8);
      v42 = *MEMORY[0x1E69C09B0];
      var0 = a4.var0;
      var1 = a4.var1;
      [CAMAspectCropUtilities cropRectForAspectRatio:v18 inImageBounds:0.0, 0.0, a4.var0, a4.var1];
      v26 = v29;
      v25 = v30;
      v24 = v31;
      v23 = v32;
      v54.origin.x = 0.0;
      v54.origin.y = 0.0;
      v54.size.width = a4.var0;
      v54.size.height = a4.var1;
      v56.origin.x = v26;
      v56.origin.y = v25;
      v56.size.width = v24;
      v56.size.height = v23;
      if (CGRectEqualToRect(v54, v56))
      {
        v33 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [(CAMPersistenceController *)v18 _adjustmentsDataForRequest:v33 captureDimensions:0.0 portraitMetadata:0.0, var0, var1];
        }
      }

      v20 = v41;
      v19 = v42;
    }

    if (v9 || v17 || v16 || (v55.origin.x = v26, v55.origin.y = v25, v55.size.width = v24, v55.size.height = v23, v34 = v21, v35 = v22, !CGRectEqualToRect(v55, *&v19)))
    {
      v36 = objc_alloc_init(MEMORY[0x1E69C0730]);
      [v36 setEffectFilterName:v17];
      [v36 setPortraitEffectFilterName:v16];
      [v36 setPortraitMetadata:v9];
      [v36 setDepthEnabled:v9 != 0];
      [v36 setCropRect:v26, v25, v24, v23];
      v43 = 0;
      v12 = [MEMORY[0x1E69C0670] serializedAdjustments:v36 error:&v43];
      v38 = v43;
      if (!v12)
      {
        v39 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          if (v18 > 6)
          {
            v40 = 0;
          }

          else
          {
            v40 = off_1E76FB840[v18];
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

- (id)_xmpEncodedDiagnosticDataFromDictionary:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];
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

- (id)_jobDictionaryForStillImageLocalResult:(id)a3 filteredLocalResult:(id)a4 fromRequest:(id)a5 loggingIdentifier:(id)a6
{
  v97 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x1E695DF90];
  v13 = a6;
  v14 = objc_alloc_init(v12);
  [v14 setObject:*MEMORY[0x1E69C0458] forKey:*MEMORY[0x1E69C0410]];
  v89 = [v9 uniformTypeIdentifier];
  [v14 setObject:? forKey:?];
  v88 = [v9 localDestinationURL];
  v87 = [v88 path];
  [v14 setObject:? forKey:?];
  v15 = [v10 captureResult];
  v16 = [v15 representsDeferredFilteredProxy];

  v86 = v16;
  if ((v16 & 1) == 0)
  {
    v17 = [v10 localDestinationURL];
    v18 = [v17 path];
    [v14 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69C04C0]];
  }

  v19 = [v9 imageOrientation];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
  [v14 setObject:v20 forKey:*MEMORY[0x1E69C0400]];

  v21 = [v9 captureResult];
  v22 = [v21 deferredPhotoIdentifier];
  [v14 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69C03B0]];

  [v14 setObject:v13 forKeyedSubscript:@"captureLogID"];
  v23 = [v9 metadata];
  if ([v11 type])
  {
    v24 = CAMSizeForPhotoMetadata(v23);
    v26 = v25;
  }

  else
  {
    v27 = v11;
    v28 = [v9 captureResult];
    v29 = [v28 capturePhoto];

    v30 = [v9 captureResult];
    v31 = [v30 predictedFinalAssetPhotoDimensions];

    v32 = PLExifOrientationFromImageOrientation();
    v33 = [v27 aspectRatioCrop];
    if (v29)
    {
      [CAMAspectCropUtilities finalExpectedSizeWithCaptureDimensions:v31 orientation:v32 aspectRatio:v33];
    }

    else
    {
      [CAMAspectCropUtilities finalExpectedSizeWithPhotoMetadata:v23 aspectRatio:v33];
    }

    v24 = v34;
    v26 = v35;
  }

  v36 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
  [v14 setObject:v36 forKeyedSubscript:*MEMORY[0x1E69C03F0]];

  v37 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
  [v14 setObject:v37 forKeyedSubscript:*MEMORY[0x1E69C03E0]];

  v38 = [v10 localAdjustmentsURL];
  v39 = v38;
  if (v38)
  {
    v40 = [v38 path];
    [v14 setObject:v40 forKeyedSubscript:*MEMORY[0x1E69C04B8]];
  }

  v90 = [v9 localAdjustmentsURL];
  if (v90)
  {
    v41 = [MEMORY[0x1E696AC08] defaultManager];
    v92 = 0;
    v42 = [v41 removeItemAtURL:v90 error:&v92];
    v43 = v92;

    if ((v42 & 1) == 0)
    {
      v44 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v94 = v90;
        v95 = 2114;
        v96 = v43;
        _os_log_impl(&dword_1A3640000, v44, OS_LOG_TYPE_DEFAULT, "Failed to delete adjustments file when ingesting fullsize render as stand-alone asset %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  v85 = v39;
  v45 = [v9 captureResult];
  v46 = [v45 coordinationInfo];
  v82 = v46;
  v91 = v10;
  if (!v46)
  {
    v49 = v11;
    v50 = v19;
    v48 = [v9 localPersistenceUUID];
    goto LABEL_23;
  }

  v47 = [v46 isFilteredImageForFilteredPair];
  v48 = [v9 localPersistenceUUID];
  v49 = v11;
  v50 = v19;
  if (!v47)
  {
LABEL_23:
    v54 = v48;
    v52 = [v9 localPersistenceUUID];
    goto LABEL_24;
  }

  v51 = [MEMORY[0x1E696AFB0] UUID];
  v52 = [v51 UUIDString];

  v53 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v94 = v48;
    v95 = 2114;
    v96 = v52;
    _os_log_impl(&dword_1A3640000, v53, OS_LOG_TYPE_DEFAULT, "Persisting fullsize render for unfiltered+filtered pair %{public}@ as stand alone asset with new UUID %{public}@", buf, 0x16u);
  }

  v54 = v48;

LABEL_24:
  v80 = v52;
  [v14 setObject:v52 forKey:*MEMORY[0x1E69C0390]];
  v55 = [v45 compactMetadata];
  [v14 setObject:v55 forKeyedSubscript:*MEMORY[0x1E69C03C8]];

  v56 = [v45 stillImageFilteredPreviewSurface];
  v57 = [v45 stillImageUnfilteredPreviewSurface];
  if (!v56)
  {
    v56 = v57;
  }

  v84 = [(CAMPersistenceController *)self _remotePersistenceThumbnailGenerator];
  v58 = [v84 newJPEGDataOfFormat:objc_msgSend(MEMORY[0x1E69BF160] inOrientation:"masterThumbnailFormat") usingSurface:v50 withMetadata:v56, v23];
  if (v58)
  {
    [v14 setObject:v58 forKey:*MEMORY[0x1E69C0540]];
  }

  v81 = v58;
  if ([v49 capturedFromPhotoBooth])
  {
    v59 = [MEMORY[0x1E69BF178] savedAssetTypeForPhotoBoothAsset];
  }

  else
  {
    v59 = [MEMORY[0x1E69BF178] savedAssetTypeForCameraCapturedAsset];
  }

  v60 = v54;
  v61 = [MEMORY[0x1E696AD98] numberWithShort:v59];
  [v14 setObject:v61 forKey:*MEMORY[0x1E69C0558]];

  [v14 setObject:&unk_1F16C7C88 forKey:*MEMORY[0x1E69C0308]];
  if ([v49 conformsToProtocol:&unk_1F17598B0])
  {
    v62 = [v49 burstIdentifier];
    if (v62)
    {
      [v14 setObject:v62 forKey:*MEMORY[0x1E69C0360]];
      [v14 setObject:&unk_1F16C7CA0 forKey:*MEMORY[0x1E69C0358]];
      [v14 setObject:&unk_1F16C7CB8 forKey:*MEMORY[0x1E69C0368]];
    }
  }

  v63 = MEMORY[0x1E695E118];
  [v14 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C0520]];
  [v14 setObject:v63 forKey:*MEMORY[0x1E69C02F8]];
  [v14 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69C0550]];
  v64 = [v49 captureDevice];
  v65 = [MEMORY[0x1E696AD98] numberWithBool:(v64 > 0xB) | (0xFDu >> v64) & 1];
  [v14 setObject:v65 forKey:*MEMORY[0x1E69C0370]];

  v66 = [v91 adjustmentsData];
  if (v66 || ([v9 adjustmentsData], (v66 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v67 = v66;
    [v14 setObject:v66 forKeyedSubscript:*MEMORY[0x1E69C0350]];
  }

  v68 = v49;
  v69 = v60;
  if ((v86 & 1) == 0)
  {
    v71 = [v9 localFilteredPreviewPath];
    if (!v71)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v70 = [v91 localDestinationURL];
  v71 = [v70 path];

  if (v71)
  {
LABEL_42:
    [v14 setObject:v71 forKeyedSubscript:*MEMORY[0x1E69C04D8]];
  }

LABEL_43:
  v72 = [v9 localDiagnosticsPath];
  if (v72)
  {
    [v14 setObject:v72 forKeyedSubscript:*MEMORY[0x1E69C04D0]];
  }

  v73 = [v9 localPrivateMetadataFileURL];
  v74 = [v73 path];
  [v14 setObject:v74 forKeyedSubscript:*MEMORY[0x1E69C0378]];

  if ([v68 conformsToProtocol:&unk_1F1759A58])
  {
    v75 = [v45 isExpectingPairedVideo];
    v76 = [MEMORY[0x1E696AD98] numberWithBool:v75];
    [v14 setObject:v76 forKeyedSubscript:*MEMORY[0x1E69C04F0]];

    if (v75)
    {
      v77 = [v45 coordinationInfo];
      v78 = [v68 irisIdentifierForEV0:{objc_msgSend(v77, "isEV0ForHDREV0Pair")}];
      [v14 setObject:v78 forKeyedSubscript:*MEMORY[0x1E69C0500]];
    }
  }

  return v14;
}

- (void)_notifyDelegateOfCompletedStillImageRemotePersistenceForRequest:(id)a3 withReply:(id)a4 fromBatchOfSize:(unint64_t)a5 error:(id)a6
{
  v31 = a3;
  v9 = a4;
  v30 = a6;
  v10 = [v9 objectForKey:*MEMORY[0x1E69C0390]];
  v11 = [v9 objectForKey:*MEMORY[0x1E69C0398]];
  v12 = [v9 objectForKey:*MEMORY[0x1E69C03C8]];
  v13 = [v9 objectForKey:*MEMORY[0x1E69C04F0]];
  v14 = [v13 BOOLValue];

  if ([v31 conformsToProtocol:&unk_1F1759928])
  {
    v15 = [v31 burstIdentifier];
  }

  else
  {
    a5 = 0;
    v15 = 0;
  }

  v16 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69C03F0]];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69C03E0]];
  [v19 doubleValue];
  v21 = v20;

  v22 = [v9 objectForKey:*MEMORY[0x1E69C04C8]];
  if (v22)
  {
    v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:v22];
  }

  else
  {
    v23 = 0;
  }

  LOBYTE(v29) = v14;
  v24 = -[CAMStillImagePersistenceResponse initWithUUID:captureSession:url:creationDate:scrubberImage:finalExpectedPixelSize:metadata:burstIdentifier:burstRepresentedCount:expectingPairedVideo:coordinationInfo:]([CAMStillImagePersistenceResponse alloc], "initWithUUID:captureSession:url:creationDate:scrubberImage:finalExpectedPixelSize:metadata:burstIdentifier:burstRepresentedCount:expectingPairedVideo:coordinationInfo:", v10, [v31 sessionIdentifier], v23, v11, 0, v12, v18, v21, v15, a5, v29, 0);
  v25 = [v31 type];
  if (v25 == 2)
  {
    v28 = v31;
    v27 = [v28 delegate];
    if (v27 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v27 panoramaRequestDidCompleteRemotePersistence:v28 withResponse:v24 error:v30];
    }
  }

  else
  {
    if (v25)
    {
      goto LABEL_16;
    }

    v26 = v31;
    v27 = [v26 delegate];
    if (v27 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v27 stillImageRequestDidCompleteStillImageRemotePersistence:v26 withResponse:v24 error:v30];
    }
  }

LABEL_16:
}

- (void)_handleCompletedStillImageJobForRequest:(id)a3 withReply:(id)a4 fromBatchOfSize:(unint64_t)a5 completionHandler:(id)a6 error:(id)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    v16 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v26 = v15;
      v27 = 2114;
      v28 = v12;
      v29 = 2114;
      v30 = v13;
      v31 = 2048;
      v32 = a5;
      _os_log_error_impl(&dword_1A3640000, v16, OS_LOG_TYPE_ERROR, "Failed to remotely persist still image, error=%{public}@, request=%{public}@, reply=%{public}@, batchSize:%ld", buf, 0x2Au);
    }
  }

  v22 = MEMORY[0x1E69E9820];
  v17 = v12;
  v23 = v13;
  v24 = v14;
  v18 = v14;
  v19 = v15;
  v20 = v13;
  pl_dispatch_async();
  if ([v17 shouldProtectPersistence])
  {
    v21 = [(CAMPersistenceController *)self _protectionController];
    [v21 stopProtectingPersistenceForRequest:v17];
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

- (void)_remotelyPersistStillImageJob:(id)a3 forRequest:(id)a4 loggingIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x1E69C0390];
  v14 = a3;
  v15 = [v14 objectForKeyedSubscript:v13];
  Current = CFAbsoluteTimeGetCurrent();
  v17 = [MEMORY[0x1E69BF198] sharedSystemLibraryAssetsdClient];
  v18 = [v17 resourceClient];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __105__CAMPersistenceController__remotelyPersistStillImageJob_forRequest_loggingIdentifier_completionHandler___block_invoke;
  v23[3] = &unk_1E76FB628;
  v29 = Current;
  v24 = v11;
  v25 = v15;
  v26 = self;
  v27 = v10;
  v28 = v12;
  v19 = v12;
  v20 = v10;
  v21 = v15;
  v22 = v11;
  [v18 saveAssetWithJobDictionary:v14 imageSurface:0 previewImageSurface:0 completionHandler:v23];
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

- (void)_handleVideoPersistenceForRequest:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 persistenceOptions];
  if (v8)
  {
    v9 = v8;
    if (v8 != 3)
    {
      v10 = [v7 error];
      if (v10)
      {
        v11 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CAMPersistenceController _handleStillImagePersistenceForRequest:withResult:];
        }

        if ([v6 shouldProtectPersistenceForVideo])
        {
          v12 = [(CAMPersistenceController *)self _protectionController];
          [v12 stopProtectingPersistenceForRequest:v6];
        }

        v13 = [v7 coordinationInfo];
        v14 = v13;
        if (v9 == 2 && v13)
        {
          [(CAMPersistenceController *)self _coordinateRemotePersistenceForVideoLocalResult:0 coordinationInfo:v13 request:v6];
        }
      }

      else
      {
        v14 = [v7 coordinationInfo];
        v15 = [(CAMPersistenceController *)self _videoLocalPowerAssertionReasonForCoordinationInfo:v14];
        v16 = [(CAMPersistenceController *)self _powerController];
        v17 = [v6 assertionIdentifier];
        [v16 addAssertionForIndentifier:v17 withReason:v15];
        if ([(CAMPersistenceController *)self resultDelegateRespondsToDidCompleteAllLocalPersistenceForRequest])
        {
          v18 = [v6 persistenceUUID];
          v19 = [(CAMPersistenceController *)self _ensureCoordinationGroupForIdentifier:v18];

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
        v30 = v17;
        v31 = v15;
        v28 = v16;
        v29 = v19;
        v20 = v19;
        v21 = v16;
        v22 = _Block_copy(aBlock);
        v23 = [(CAMPersistenceController *)self _localPersistenceQueue];
        v25 = v6;
        v26 = v7;
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

- (void)videoPersistenceCoordinator:(id)a3 requestsRemotePersistenceForLocalPersistenceResult:(id)a4 captureRequest:(id)a5 powerAssertionReason:(unsigned int)a6
{
  v6 = *&a6;
  v10 = a5;
  v11 = a4;
  v12 = [a3 loggingIdentifier];
  [(CAMPersistenceController *)self _dispatchRemotePersistenceForLocalVideoPersistenceResult:v11 request:v10 powerAssertionReason:v6 loggingIdentifier:v12];
}

- (void)videoPersistenceCoordinator:(id)a3 requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo:(id)a4 request:(id)a5
{
  v7 = a4;
  v8 = a5;
  dispatch_time(0, 10000000000);
  v9 = [(CAMPersistenceController *)self _localPersistenceQueue];
  v12 = v8;
  v10 = v8;
  v11 = v7;
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

- (void)_notifyDelegateOfCompletedVideoLocalPersistenceForRequest:(id)a3 withResult:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 localPersistenceUUID];
  v29 = [v5 sessionIdentifier];
  v8 = [v6 localDestinationURL];
  v9 = [v6 creationDate];
  v38 = 0uLL;
  v39 = 0;
  if (v6)
  {
    [v6 duration];
  }

  v10 = [v6 stillPersistenceUUID];
  v36 = 0uLL;
  v37 = 0;
  if (v6)
  {
    [v6 stillDisplayTime];
  }

  v30 = v9;
  v11 = [v5 type];
  [CAMOrientationUtilities imageOrientationForVideoRequest:v5];
  v12 = PLExifOrientationFromImageOrientation();
  v31 = v10;
  if (v11)
  {
    [v6 dimensions];
    CAMSizeForDimensions();
  }

  else
  {
    v15 = v5;
    v16 = [v6 dimensions];
    v17 = [v15 aspectRatioCrop];

    [CAMAspectCropUtilities finalExpectedSizeWithCaptureDimensions:v16 orientation:v12 aspectRatio:v17];
  }

  v18 = v13;
  v19 = v14;
  v20 = [CAMVideoPersistenceResponse alloc];
  v21 = [v5 captureMode];
  v22 = [v6 coordinationInfo];
  v34 = v38;
  v35 = v39;
  v32 = v36;
  v33 = v37;
  v23 = [(CAMVideoPersistenceResponse *)v20 initWithUUID:v7 captureMode:v21 captureSession:v29 url:v8 creationDate:v30 scrubberImage:0 finalExpectedPixelSize:v18 duration:v19 stillPersistenceUUID:&v34 stillDisplayTime:v10 coordinationInfo:&v32, v22];

  if (v11 == 1)
  {
    v28 = v5;
    v25 = [v28 delegate];
    if (!v25 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_17;
    }

    v26 = v7;
    v27 = [v6 error];
    [v25 videoRequestDidCompleteLocalPersistence:v28 withResponse:v23 error:v27];
    goto LABEL_16;
  }

  if (!v11)
  {
    v24 = v5;
    v25 = [v24 delegate];
    if (!v25 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_17;
    }

    v26 = v7;
    v27 = [v6 error];
    [v25 stillImageRequestDidCompleteVideoLocalPersistence:v24 withResponse:v23 error:v27];
LABEL_16:

    v7 = v26;
LABEL_17:
  }
}

- (void)_locallyPersistVideoCaptureResult:(id)a3 forRequest:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 persistenceOptions];
  v12 = [(CAMPersistenceController *)self _persistVideoCaptureResult:v8 withRequest:v9];
  v13 = [v12 error];
  v14 = [(CAMPersistenceController *)self resultDelegate];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v14 persistenceController:self didGenerateVideoLocalPersistenceResult:v12 forCaptureResult:v8 fromRequest:v9];
  }

  if (v11 == 2 && !v13)
  {
    v15 = [v8 coordinationInfo];
    [(CAMPersistenceController *)self _coordinateRemotePersistenceForVideoLocalResult:v12 coordinationInfo:v15 request:v9];
  }

  v19 = v9;
  v20 = v10;
  v16 = v10;
  v17 = v12;
  v18 = v9;
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

- (void)_coordinateRemotePersistenceForVideoLocalResult:(id)a3 coordinationInfo:(id)a4 request:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  CAMSignpostWithIDAndArgs(55, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  if (v9)
  {
    v11 = [(CAMPersistenceController *)self _coordinationQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __101__CAMPersistenceController__coordinateRemotePersistenceForVideoLocalResult_coordinationInfo_request___block_invoke;
    v12[3] = &unk_1E76F8230;
    v13 = v9;
    v14 = self;
    v15 = v8;
    v16 = v10;
    dispatch_barrier_sync(v11, v12);
  }

  else if (v8)
  {
    [(CAMPersistenceController *)self _dispatchRemotePersistenceForLocalVideoPersistenceResult:v8 request:v10 powerAssertionReason:0x20000 loggingIdentifier:&stru_1F1660A30];
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

- (void)_dispatchRemotePersistenceForLocalVideoPersistenceResult:(id)a3 request:(id)a4 powerAssertionReason:(unsigned int)a5 loggingIdentifier:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v11 assertionIdentifier];
  v14 = [(CAMPersistenceController *)self _powerController];
  [v14 addAssertionForIndentifier:v13 withReason:v7];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __132__CAMPersistenceController__dispatchRemotePersistenceForLocalVideoPersistenceResult_request_powerAssertionReason_loggingIdentifier___block_invoke;
  aBlock[3] = &unk_1E76FB5B0;
  v30 = v14;
  v31 = v13;
  v32 = v7;
  v15 = v14;
  v16 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __132__CAMPersistenceController__dispatchRemotePersistenceForLocalVideoPersistenceResult_request_powerAssertionReason_loggingIdentifier___block_invoke_2;
  v24[3] = &unk_1E76FB678;
  v24[4] = self;
  v25 = v10;
  v17 = v11;
  v26 = v17;
  v27 = v12;
  v28 = v16;
  v18 = v16;
  v19 = v12;
  v20 = v10;
  v21 = _Block_copy(v24);
  if ([v17 shouldDelayRemotePersistence])
  {
    v22 = dispatch_time(0, 5000000000);
    v23 = [(CAMPersistenceController *)self _remotePersistenceQueue];
    dispatch_after(v22, v23, v21);
  }

  else
  {
    v23 = [(CAMPersistenceController *)self _remotePersistenceQueue];
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

+ (id)clientVideoMetadataForLocation:(id)a3 withCreationDate:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF70];
  v32 = a4;
  v7 = objc_alloc_init(v6);
  v8 = [v5 cam_videoMetadataRepresentation];
  v9 = v8;
  v10 = MEMORY[0x1E6987838];
  if (v5 && v8 && [v8 length])
  {
    v11 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v11 setKeySpace:*v10];
    [v11 setKey:*MEMORY[0x1E6987698]];
    [v11 setValue:v9];
    [v7 addObject:v11];
    v12 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v12 setIdentifier:*MEMORY[0x1E69877E8]];
    v13 = MEMORY[0x1E696AEC0];
    [v5 horizontalAccuracy];
    v15 = [v13 stringWithFormat:@"%f", v14];
    [v12 setValue:v15];

    [v7 addObject:v12];
  }

  v36 = v5;
  v16 = objc_alloc_init(MEMORY[0x1E6988050]);
  v17 = *v10;
  [v16 setKeySpace:*v10];
  [v16 setKey:*MEMORY[0x1E69876A0]];
  [v16 setValue:@"Apple"];
  [v7 addObject:v16];
  v18 = [MEMORY[0x1E69DC938] currentDevice];
  v19 = MGCopyAnswer();
  v35 = v9;
  v31 = v19;
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = [v18 localizedModel];
  }

  v21 = v20;
  v30 = v20;
  v22 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v22 setKeySpace:v17];
  [v22 setKey:*MEMORY[0x1E69876A8]];
  [v22 setValue:v21];
  [v7 addObject:v22];
  v23 = [v18 systemVersion];
  v24 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v24 setKeySpace:v17];
  [v24 setKey:*MEMORY[0x1E69876B0]];
  [v24 setValue:v23];
  [v7 addObject:v24];
  [a1 videoMetadataDateFormatter];
  v25 = v34 = v18;
  v26 = [v25 stringFromDate:v32];

  v27 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v27 setKeySpace:v17];
  [v27 setKey:*MEMORY[0x1E6987688]];
  [v27 setValue:v26];
  [v7 addObject:v27];
  v28 = [v7 copy];

  return v28;
}

+ (id)clientVideoMetadataForRequest:(id)a3 withCreationDate:(id)a4 isEV0ForHDR:(BOOL)a5 livePhotoIdentifierOverride:(id)a6 slomoPlayback:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v12 = a3;
  v13 = a6;
  v14 = a4;
  v15 = [v12 location];
  v16 = [a1 clientVideoMetadataForLocation:v15 withCreationDate:v14];

  v17 = [v16 mutableCopy];
  v18 = 0x1E696A000;
  if ([v12 conformsToProtocol:&unk_1F1759A58])
  {
    v19 = v12;
    v20 = v19;
    if (v13)
    {
      v21 = v13;
    }

    else
    {
      v21 = [v19 irisIdentifierForEV0:v9];
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
      v31 = v7;
      v25 = objc_alloc_init(MEMORY[0x1E6988050]);
      [v25 setIdentifier:*MEMORY[0x1E6987788]];
      [v25 setDataType:*MEMORY[0x1E69602A8]];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:1];
      [v25 setValue:v26];

      [v17 addObject:v25];
      v7 = v31;
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
  v28 = [*(v18 + 3480) numberWithInt:!v7];
  [v27 setValue:v28];

  [v17 addObject:v27];
  v29 = [v17 copy];

  return v29;
}

- (id)_videoPersistenceUUIDForRequest:(id)a3 withResult:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 persistenceUUID];
  if (![v5 type])
  {
    v8 = v5;
    if ([v8 isCTMVideo])
    {
      v9 = [v8 persistenceUUID];
    }

    else
    {
      v10 = [v6 localDestinationURL];
      v9 = [v8 irisVideoPersistenceUUIDForEV0:{objc_msgSend(v8, "isEV0LocalVideoDestinationURL:", v10)}];

      v7 = v10;
    }

    v7 = v9;
  }

  return v7;
}

- (id)_stillPersistenceUUIDForRequest:(id)a3 withVideoResult:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 persistenceUUID];
  if (![v5 type])
  {
    v8 = v5;
    v9 = [v6 localDestinationURL];
    v10 = [v8 irisStillImagePersistenceUUIDForEV0:{objc_msgSend(v8, "isEV0LocalVideoDestinationURL:", v9)}];

    v7 = v10;
  }

  return v7;
}

- (id)_persistVideoCaptureResult:(id)a3 withRequest:(id)a4
{
  v103 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v81 = [v5 localDestinationURL];
  v79 = [v5 filteredLocalDestinationURL];
  v76 = [(CAMPersistenceController *)self _videoPersistenceUUIDForRequest:v6 withResult:v5];
  v99 = 0uLL;
  v100 = 0;
  if (v5)
  {
    [v5 duration];
  }

  v75 = [(CAMPersistenceController *)self _stillPersistenceUUIDForRequest:v6 withVideoResult:v5];
  v97 = 0uLL;
  v98 = 0;
  if (v5)
  {
    [v5 stillDisplayTime];
  }

  v74 = [v5 captureDate];
  v73 = [v5 error];
  *&v72[4] = [v6 type];
  if (*&v72[4])
  {
    v72[0] = 0;
  }

  else
  {
    *v72 = [v6 ctmCaptureType] != 2;
  }

  v77 = [v6 captureMode];
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__12;
  v95 = __Block_byref_object_dispose__12;
  v96 = 0;
  v7 = [v5 videoPreviewPixelBuffer];
  v8 = v7;
  if (v77 == 7 && v7)
  {
    v9 = [v81 URLByDeletingPathExtension];
    v10 = [v9 URLByAppendingPathExtension:*MEMORY[0x1E69C00E0]];
    v11 = [v10 path];
    v12 = v92[5];
    v92[5] = v11;

    v13 = [objc_alloc(MEMORY[0x1E69BE880]) initWithVideoURL:v81];
    v14 = MEMORY[0x1E69BDEF0];
    v15 = [MEMORY[0x1E69BDEF0] newComposition];
    v16 = [v14 newCompositionControllerWithComposition:v15];

    v17 = [v13 source];
    [v16 setSource:v17 mediaType:2];

    v18 = [v16 adjustmentConstants];
    v19 = [v18 PIPortraitVideoAdjustmentKey];
    [v16 modifyAdjustmentWithKey:v19 modificationBlock:&__block_literal_global_417];

    LODWORD(v18) = [CAMOrientationUtilities exifOrientationFromDeviceOrientationForCaptureRequest:v6];
    v20 = [v16 adjustmentConstants];
    v21 = [v20 PIOrientationAdjustmentKey];
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __67__CAMPersistenceController__persistVideoCaptureResult_withRequest___block_invoke_2;
    v89[3] = &__block_descriptor_36_e43_v16__0__PIOrientationAdjustmentController_8l;
    v90 = v18;
    [v16 modifyAdjustmentWithKey:v21 modificationBlock:v89];

    v22 = objc_alloc_init(MEMORY[0x1E69BDDF0]);
    v23 = objc_alloc_init(MEMORY[0x1E69BDDF8]);
    v24 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:2073600];
    [v23 setScalePolicy:v24];

    v25 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:1];
    [v23 setPriority:v25];

    v26 = dispatch_semaphore_create(0);
    v27 = [v16 composition];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __67__CAMPersistenceController__persistVideoCaptureResult_withRequest___block_invoke_3;
    v86[3] = &unk_1E76FB6E0;
    v88 = &v91;
    v28 = v26;
    v87 = v28;
    [v22 exportImageToDataWithComposition:v27 options:v23 completion:v86];

    dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
LABEL_20:

    goto LABEL_21;
  }

  if (!v7)
  {
    goto LABEL_22;
  }

  v29 = [v81 URLByDeletingPathExtension];
  v30 = [v29 URLByAppendingPathExtension:*MEMORY[0x1E69C00E0]];
  v31 = [v30 path];
  v32 = v92[5];
  v92[5] = v31;

  v13 = [(CAMPersistenceController *)self _localPersistenceThumbnailGenerator];
  v16 = [v13 newJPEGDataInOrientation:+[CAMOrientationUtilities imageOrientationForVideoRequest:](CAMOrientationUtilities usingPixelBuffer:{"imageOrientationForVideoRequest:", v6), v8}];
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
  v33 = [MEMORY[0x1E696AC08] defaultManager];
  v34 = [v33 fileExistsAtPath:v92[5]];

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
  if ([v6 temporaryPersistenceOptions] != 2)
  {
    v78 = 0;
    v42 = 0;
    goto LABEL_36;
  }

  v39 = NSTemporaryDirectory();
  v40 = [v81 lastPathComponent];
  v41 = [v39 stringByAppendingPathComponent:v40];

  v42 = [MEMORY[0x1E695DFF8] fileURLWithPath:v41];
  v43 = [MEMORY[0x1E696AC08] defaultManager];
  v85 = 0;
  v44 = [v43 copyItemAtURL:v81 toURL:v42 error:&v85];
  v71 = v85;

  if (v44)
  {
    if (!v79)
    {
      v78 = 0;
      goto LABEL_35;
    }

    v45 = [v79 lastPathComponent];
    v46 = [v39 stringByAppendingPathComponent:v45];
    v78 = [MEMORY[0x1E695DFF8] fileURLWithPath:v46];
    v47 = [MEMORY[0x1E696AC08] defaultManager];
    v84 = 0;
    v48 = [v47 copyItemAtURL:v79 toURL:v78 error:&v84];
    v49 = v84;

    if ((v48 & 1) == 0)
    {
      v50 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        *&buf[4] = v79;
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
      *&buf[4] = v81;
      *&buf[12] = 2114;
      *&buf[14] = v42;
      *&buf[22] = 2114;
      v102 = v71;
      _os_log_error_impl(&dword_1A3640000, v46, OS_LOG_TYPE_ERROR, "Failed to link %{public}@ to %{public}@, external clients will not have a safe URL (%{public}@)", buf, 0x20u);
    }

    v78 = 0;
    v45 = v42;
    v42 = 0;
  }

LABEL_35:
LABEL_36:
  v51 = [v6 captureMode];
  v52 = [v6 captureMode];
  v53 = [v6 captureMode];
  if (v77 == 7)
  {
    v54 = [(CAMPersistenceController *)self _adjustmentsDataForCinematicVideoRequest:v6 result:v5];
  }

  else
  {
    if (*&v72[4] && v51 != 1 && v52 != 8 && v53 != 2)
    {
      v55 = 0;
      goto LABEL_45;
    }

    v54 = -[CAMPersistenceController _adjustmentsDataForRequest:captureDimensions:portraitMetadata:](self, "_adjustmentsDataForRequest:captureDimensions:portraitMetadata:", v6, [v5 dimensions], 0);
  }

  v55 = v54;
LABEL_45:
  if ((v72[0] & 1) == 0)
  {
    v56 = [MEMORY[0x1E69BF230] filesystemPersistenceBatchItemForFileAtURL:v81];
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

  v59 = [v81 URLByDeletingPathExtension];
  v60 = [v59 URLByAppendingPathExtension:@"MDATA"];

  v61 = [v6 sharedLibraryMode];
  v62 = [v6 contactIDsInProximity];
  v63 = [v6 sharedLibraryDiagnostics];
  LOBYTE(v61) = [(CAMPersistenceController *)self writePrivateMetadataFileToURL:v60 withPrivateClientMetadata:0 sharedLibraryMode:v61 contactIDsInProximity:v62 sharedLibraryDiagnostics:v63];

  if ((v61 & 1) == 0)
  {

    v60 = 0;
  }

  v64 = [CAMVideoLocalPersistenceResult alloc];
  v65 = v92[5];
  v66 = [v5 dimensions];
  v67 = [v5 metadata];
  v68 = [v5 coordinationInfo];
  *buf = v99;
  *&buf[16] = v100;
  v82 = v97;
  v83 = v98;
  v69 = [(CAMVideoLocalPersistenceResult *)v64 initWithURL:v81 filteredLocalDestinationURL:v79 linkedURL:v42 filteredLinkedURL:v78 videoThumbnailPath:v65 UUID:v76 duration:buf dimensions:v66 stillPersistenceUUID:v75 stillDisplayTime:&v82 metadataItems:v67 creationDate:v74 adjustmentsData:v55 coordinationInfo:v68 localPrivateMetadataFileURL:v60 error:v73];

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

- (BOOL)writePrivateMetadataFileToURL:(id)a3 withPrivateClientMetadata:(id)a4 sharedLibraryMode:(int64_t)a5 contactIDsInProximity:(id)a6 sharedLibraryDiagnostics:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = +[CAMUserPreferences preferences];
  v16 = [v15 sharedLibraryEnabled];

  if (v12 || v16)
  {
    v18 = [objc_alloc(MEMORY[0x1E69C0678]) initWithPrivateClientMetadata:v12 contactIDsInProximity:v13 sharedLibraryMode:a5];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v14 count])
    {
      v19 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = [v14 count];
        _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "Internal only: Persisting shared library diagnostics: %lu entries.", buf, 0xCu);
      }

      [v18 setSharedLibraryDiagnostics:v14];
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
      v24 = [v20 writeToURL:v11 options:0 error:&v26];
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
        v29 = v12;
        v30 = 2114;
        v31 = v11;
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

- (id)_jobDictionaryForVideoLocalResult:(id)a3 fromRequest:(id)a4 loggingIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E695DF90];
  v10 = a5;
  v11 = objc_alloc_init(v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v8 isTimelapse];
    v13 = MEMORY[0x1E69C0470];
    if ((v12 & 1) == 0)
    {
      v13 = MEMORY[0x1E69C0478];
    }
  }

  else
  {
    v12 = 0;
    v13 = MEMORY[0x1E69C0478];
  }

  v76 = *v13;
  [v11 setObject:? forKey:?];
  [v11 setObject:v10 forKeyedSubscript:@"captureLogID"];

  v75 = [v7 localDestinationURL];
  v14 = [v75 path];
  v70 = *MEMORY[0x1E69C05A0];
  [v11 setObject:v14 forKey:?];
  v15 = [v7 filteredLocalDestinationURL];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 path];
    [v11 setObject:v17 forKey:*MEMORY[0x1E69C03D8]];
    v18 = MEMORY[0x1E696ACC8];
    [MEMORY[0x1E695DF00] date];
    v20 = v19 = v14;
    v21 = [v18 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:0];

    v22 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:@"com.apple.opaque" formatVersion:@"1.0" data:v21 baseVersion:0 editorBundleID:@"com.apple.camera" renderTypes:0];
    v23 = [v22 propertyListDictionary];
    [v11 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69C0578]];

    v14 = v19;
  }

  v74 = v16;
  v73 = [v14 pathExtension];
  [v11 setObject:? forKey:?];
  v72 = [v7 localPersistenceUUID];
  [v11 setObject:? forKeyedSubscript:?];
  v24 = [v7 creationDate];
  if (v24)
  {
    [v11 setObject:v24 forKey:*MEMORY[0x1E69C0398]];
  }

  v25 = [MEMORY[0x1E69BF178] savedAssetTypeForCameraCapturedAsset];
  v26 = [MEMORY[0x1E696AD98] numberWithShort:v25];
  [v11 setObject:v26 forKey:*MEMORY[0x1E69C0558]];

  [v11 setObject:&unk_1F16C7CD0 forKey:*MEMORY[0x1E69C0308]];
  if (v12)
  {
    [v11 setObject:&unk_1F16C7CE8 forKey:*MEMORY[0x1E69C0300]];
  }

  v27 = MEMORY[0x1E695E118];
  [v11 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C0528]];
  [v11 setObject:v27 forKey:*MEMORY[0x1E69C02F8]];
  [v11 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69C0550]];
  v28 = [v8 captureDevice];
  v29 = (v28 > 0xB) | (0xFDu >> v28);
  v30 = [MEMORY[0x1E696AD98] numberWithBool:(v28 > 0xB) | (0xFDu >> v28) & 1];
  v31 = *MEMORY[0x1E69C0370];
  [v11 setObject:v30 forKey:*MEMORY[0x1E69C0370]];

  memset(&v81, 0, sizeof(v81));
  if (v7)
  {
    [v7 duration];
  }

  time = v81;
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&time)];
  [v11 setObject:v32 forKey:@"kCAMVideoDurationKey"];

  v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "captureOrientation")}];
  v34 = MEMORY[0x1E695DF20];
  v35 = [MEMORY[0x1E696AD98] numberWithBool:v29 & 1];
  v65 = v70;
  v69 = v33;
  v71 = v24;
  v36 = [v34 dictionaryWithObjectsAndKeys:{v35, v31, v24, *MEMORY[0x1E69C0398], v33, *MEMORY[0x1E69C04A8], v14, v65, 0}];

  v68 = v36;
  [v11 setObject:v36 forKey:*MEMORY[0x1E69C03C8]];
  [CAMOrientationUtilities imageOrientationForVideoRequest:v8];
  v37 = PLExifOrientationFromImageOrientation();
  if ([v8 type])
  {
    [v7 dimensions];
    CAMSizeForDimensions();
  }

  else
  {
    v40 = v8;
    v41 = v14;
    v42 = [v7 dimensions];
    v43 = [v40 aspectRatioCrop];

    v44 = v42;
    v14 = v41;
    [CAMAspectCropUtilities finalExpectedSizeWithCaptureDimensions:v44 orientation:v37 aspectRatio:v43];
  }

  v45 = v39;
  if (v38 > 0.0 && v39 > 0.0)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v11 setObject:v46 forKeyedSubscript:*MEMORY[0x1E69C03F0]];

    v47 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
    [v11 setObject:v47 forKeyedSubscript:*MEMORY[0x1E69C03E0]];
  }

  v48 = [v7 filteredVideoPreviewPath];
  [v11 setObject:v48 forKeyedSubscript:*MEMORY[0x1E69C04D8]];

  v49 = [v8 captureMode];
  v50 = [v8 captureMode];
  if (![v8 type] && (objc_msgSend(v8, "isCTMVideo") & 1) != 0)
  {
    goto LABEL_32;
  }

  if ([v8 conformsToProtocol:&unk_1F1759A58])
  {
    v67 = v14;
    v51 = v8;
    v66 = [v7 localDestinationURL];
    v52 = [v51 isEV0LocalVideoDestinationURL:?];
    v53 = [v51 irisStillImagePersistenceUUIDForEV0:v52];
    if (v53)
    {
      [v11 setObject:v53 forKey:*MEMORY[0x1E69C04E0]];
    }

    v54 = [v51 irisIdentifierForEV0:v52];
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
    if (v7)
    {
      [v7 stillDisplayTime];
    }

    v79 = time;
    v57 = CMTimeCopyAsDictionary(&v79, v55);
    [v11 setObject:v57 forKey:*MEMORY[0x1E69C0508]];
    CFRelease(v57);
    v58 = [v51 irisMode] == 2;
    v59 = [MEMORY[0x1E696AD98] numberWithBool:v58];
    [v11 setObject:v59 forKeyedSubscript:*MEMORY[0x1E69C04E8]];

    v60 = [v7 metadataItems];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __92__CAMPersistenceController__jobDictionaryForVideoLocalResult_fromRequest_loggingIdentifier___block_invoke;
    v77[3] = &unk_1E76FB708;
    v78 = v11;
    [v60 enumerateObjectsUsingBlock:v77];

    v14 = v67;
    goto LABEL_33;
  }

  if (v49 == 7 || v50 == 2)
  {
LABEL_32:
    v51 = [v7 adjustmentsData];
    [v11 setObject:v51 forKeyedSubscript:*MEMORY[0x1E69C0350]];
LABEL_33:
  }

  v61 = [v7 localPrivateMetadataFileURL];
  v62 = [v61 path];
  [v11 setObject:v62 forKeyedSubscript:*MEMORY[0x1E69C0378]];

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

- (void)_notifyDelegateOfCompletedVideoRemotePersistenceForRequest:(id)a3 withReply:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 objectForKey:@"kCAMVideoDurationKey"];
  [v10 doubleValue];
  v12 = v11;

  memset(&v40, 0, sizeof(v40));
  CMTimeMakeWithSeconds(&v40, v12, 600);
  v13 = [v8 objectForKey:*MEMORY[0x1E69C04E0]];
  v14 = [v8 objectForKey:*MEMORY[0x1E69C0508]];
  memset(&v39, 0, sizeof(v39));
  CMTimeMakeFromDictionary(&v39, v14);
  v36 = [v8 objectForKey:*MEMORY[0x1E69C0390]];
  v15 = [v7 sessionIdentifier];
  v16 = [v8 objectForKey:*MEMORY[0x1E69C0588]];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v8 objectForKey:*MEMORY[0x1E69C0398]];
  v19 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C03F0]];
  [v19 doubleValue];
  v21 = v20;

  v22 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C03E0]];
  [v22 doubleValue];
  v24 = v23;

  v25 = [CAMVideoPersistenceResponse alloc];
  v26 = [v7 captureMode];
  v38 = v40;
  v37 = v39;
  v27 = [(CAMVideoPersistenceResponse *)v25 initWithUUID:v36 captureMode:v26 captureSession:v15 url:v17 creationDate:v18 scrubberImage:0 finalExpectedPixelSize:v21 duration:v24 stillPersistenceUUID:&v38 stillDisplayTime:v13 coordinationInfo:&v37, 0];
  v28 = [v7 type];
  if (v28 == 1)
  {
    v35 = v13;
    v29 = v9;
    v33 = v7;
    v31 = [v33 delegate];
    if (v31 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v34 = v33;
      v9 = v29;
      [v31 videoRequestDidCompleteRemotePersistence:v34 withResponse:v27 error:v29];
      goto LABEL_13;
    }

LABEL_12:
    v9 = v29;
    goto LABEL_13;
  }

  if (!v28)
  {
    v35 = v13;
    v29 = v9;
    v30 = v7;
    v31 = [v30 delegate];
    if (v31 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v32 = v30;
      v9 = v29;
      [v31 stillImageRequestDidCompleteVideoRemotePersistence:v32 withResponse:v27 error:v29];
LABEL_13:

      v13 = v35;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (void)_handleCompletedVideoJobForRequest:(id)a3 withReply:(id)a4 completionHandler:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CAMPersistenceController _handleCompletedVideoJobForRequest:withReply:completionHandler:error:];
    }
  }

  v15 = v10;
  v20 = v11;
  v21 = v13;
  v22 = v12;
  v16 = v12;
  v17 = v13;
  v18 = v11;
  pl_dispatch_async();
  if ([v15 shouldProtectPersistenceForVideo])
  {
    v19 = [(CAMPersistenceController *)self _protectionController];
    [v19 stopProtectingPersistenceForRequest:v15];
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

- (void)_remotelyPersistVideoJob:(id)a3 forRequest:(id)a4 loggingIdentifier:(id)a5 withSendHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69C04E0]];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
  }

  v20 = v19;

  Current = CFAbsoluteTimeGetCurrent();
  v22 = [MEMORY[0x1E69BF198] sharedSystemLibraryAssetsdClient];
  v23 = [v22 resourceClient];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __116__CAMPersistenceController__remotelyPersistVideoJob_forRequest_loggingIdentifier_withSendHandler_completionHandler___block_invoke;
  v28[3] = &unk_1E76FB628;
  v34 = Current;
  v29 = v14;
  v30 = v20;
  v31 = self;
  v32 = v13;
  v33 = v16;
  v24 = v16;
  v25 = v13;
  v26 = v20;
  v27 = v14;
  [v23 saveAssetWithJobDictionary:v12 imageSurface:0 previewImageSurface:0 completionHandler:v28];

  if (v15)
  {
    v15[2](v15);
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

- (void)performDeferredRemotePersistenceWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CAMPersistenceController *)self _remotePersistenceQueue];
  v6 = v4;
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

- (id)_ensureCoordinationGroupForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  v5 = [(CAMPersistenceController *)self _coordinationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CAMPersistenceController__ensureCoordinationGroupForIdentifier___block_invoke;
  block[3] = &unk_1E76FB778;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_barrier_sync(v5, block);

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

- (id)_coordinationGroupForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  v5 = [(CAMPersistenceController *)self _coordinationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CAMPersistenceController__coordinationGroupForIdentifier___block_invoke;
  block[3] = &unk_1E76FB778;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

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

- (void)_removeCoordinationGroupForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMPersistenceController *)self _coordinationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__CAMPersistenceController__removeCoordinationGroupForIdentifier___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

void __66__CAMPersistenceController__removeCoordinationGroupForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _coordinationQueueGroupsByIdentifier];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)persistBurstWithIdentifier:(id)a3 result:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CAMPersistenceController *)self _powerController];
  [v11 addAssertionForIndentifier:objc_msgSend(v11 withReason:{"generateAssertionIdentifier"), 0x200000}];
  v12 = [(CAMPersistenceController *)self _remotePersistenceQueue];
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v20 = v10;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = v8;
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

- (void)persistPlaceholderTimelapseVideoWithResult:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 assetUUID];
  if (v8)
  {
    v9 = [(CAMPersistenceController *)self _powerController];
    [v9 addAssertionForIndentifier:objc_msgSend(v9 withReason:{"generateAssertionIdentifier"), 0x400000}];
    v10 = [(CAMPersistenceController *)self _remotePersistenceQueue];
    v12 = v6;
    v13 = v7;
    v11 = v9;
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

- (id)_jobDictionaryForTimelapsePlaceholderResult:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:*MEMORY[0x1E69C0480] forKey:*MEMORY[0x1E69C0410]];
  v5 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(MEMORY[0x1E69BF178], "savedAssetTypeForCameraCapturedAsset")}];
  [v4 setObject:v5 forKey:*MEMORY[0x1E69C0558]];

  [v4 setObject:&unk_1F16C7CD0 forKey:*MEMORY[0x1E69C0308]];
  [v4 setObject:&unk_1F16C7CE8 forKey:*MEMORY[0x1E69C0300]];
  v6 = [v3 assetUUID];
  [v4 setObject:v6 forKey:*MEMORY[0x1E69C0390]];

  v7 = [v3 creationDate];
  [v4 setObject:v7 forKey:*MEMORY[0x1E69C0398]];

  v8 = MEMORY[0x1E695E118];
  [v4 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C0528]];
  [v4 setObject:v8 forKey:*MEMORY[0x1E69C02F8]];
  [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69C0550]];
  [v3 videoDimensions];
  v11 = v10;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69C0538]];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69C0530]];

  v14 = [v3 captureDevice];
  LODWORD(v12) = (v14 > 0xB) | (0xFDu >> v14);
  v15 = [v3 captureOrientation];
  v22[0] = *MEMORY[0x1E69C0370];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v12 & 1];
  v23[0] = v16;
  v22[1] = *MEMORY[0x1E69C04A8];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
  v23[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  [v4 setObject:v18 forKey:*MEMORY[0x1E69C03C8]];
  v19 = [v3 localPrivateMetadataFileURL];
  v20 = [v19 path];
  [v4 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69C0378]];

  return v4;
}

+ (id)uniquePathForAssetWithUUID:(id)a3 captureTime:(double)a4 extension:(id)a5 usingIncomingDirectory:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  if ([v10 length])
  {
    if (a6)
    {
LABEL_3:
      v12 = [a1 _pathForIncomingDirectory];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];

    v10 = v14;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v12 = NSTemporaryDirectory();
LABEL_6:
  v15 = v12;
  v16 = [a1 delimiterForIncomingAssetFilenames];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f%@%@", a4 * 100.0, v16, v10];
  v18 = [v15 stringByAppendingPathComponent:v17];

  if (v11)
  {
    v19 = [v18 stringByAppendingPathExtension:v11];

    v18 = v19;
  }

  if (!a6)
  {
    v20 = NSTemporaryDirectory();
    v21 = [MEMORY[0x1E696AC08] defaultManager];
    v22 = [v21 fileExistsAtPath:v20];

    if ((v22 & 1) == 0)
    {
      v23 = [MEMORY[0x1E696AC08] defaultManager];
      v28 = 0;
      v24 = [v23 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&v28];
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

- (void)emptyLocalPersistenceStorageWithTimeout:(double)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(CAMPersistenceController *)self _localPersistenceQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__CAMPersistenceController_emptyLocalPersistenceStorageWithTimeout_completionHandler___block_invoke;
  v9[3] = &unk_1E76F7E18;
  v11 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
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