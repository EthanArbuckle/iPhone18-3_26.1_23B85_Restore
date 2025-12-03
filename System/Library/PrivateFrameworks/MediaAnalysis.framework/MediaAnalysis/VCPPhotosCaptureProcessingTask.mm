@interface VCPPhotosCaptureProcessingTask
+ (BOOL)_concurrentFaceProcessing;
+ (id)taskWithPhotoLibraries:(id)libraries andCompletionHandler:(id)handler;
- (BOOL)isAssetEligible:(id)eligible;
- (BOOL)run:(id *)run;
- (VCPPhotosCaptureProcessingTask)initWithPhotoLibraries:(id)libraries andCompletionHandler:(id)handler;
- (int)faceProcessingForAssets:(id)assets withManager:(id)manager onDemandDetection:(BOOL)detection;
- (int)run;
- (void)_persistClassifiedFaces:(id)faces withDetectedPersons:(id)persons;
- (void)_reportEventPostCapturesProcessing;
- (void)_resetFieldsPostCapturesProcessing;
- (void)cancel;
- (void)dealloc;
- (void)interrupt;
- (void)ocrProcessingForAssets:(id)assets;
- (void)resetInterruption;
@end

@implementation VCPPhotosCaptureProcessingTask

- (VCPPhotosCaptureProcessingTask)initWithPhotoLibraries:(id)libraries andCompletionHandler:(id)handler
{
  librariesCopy = libraries;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = VCPPhotosCaptureProcessingTask;
  v9 = [(VCPPhotosCaptureProcessingTask *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibraries, libraries);
    v11 = objc_retainBlock(handlerCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;

    v13 = dispatch_group_create();
    persistGroup = v10->_persistGroup;
    v10->_persistGroup = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.mediaanalysisd.VCPPhotosCaptureProcessingTask.persist", v15);
    persistQueue = v10->_persistQueue;
    v10->_persistQueue = v16;
  }

  return v10;
}

+ (id)taskWithPhotoLibraries:(id)libraries andCompletionHandler:(id)handler
{
  librariesCopy = libraries;
  handlerCopy = handler;
  v7 = [objc_alloc(objc_opt_class()) initWithPhotoLibraries:librariesCopy andCompletionHandler:handlerCopy];

  return v7;
}

- (void)dealloc
{
  v3 = +[VNSession globalSession];
  [v3 releaseCachedResources];

  v4 = atomic_load(&self->_started);
  if ((v4 & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    v10 = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithFormat:@"Photos capture processing task cancelled"];
    v11 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v7];
    completionHandler[2](completionHandler, v8);
  }

  v9.receiver = self;
  v9.super_class = VCPPhotosCaptureProcessingTask;
  [(VCPPhotosCaptureProcessingTask *)&v9 dealloc];
}

- (void)cancel
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[PhotosCapture] Cancelling processing", v4, 2u);
    }
  }

  atomic_store(1u, &self->_cancel);
}

- (void)interrupt
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[PhotosCapture] Interrupting processing", v4, 2u);
    }
  }

  atomic_store(1u, &self->_interrupt);
}

- (void)resetInterruption
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[PhotosCapture] Resetting interrupt", v4, 2u);
    }
  }

  atomic_store(0, &self->_interrupt);
}

+ (BOOL)_concurrentFaceProcessing
{
  if ((atomic_load_explicit(&qword_1002B82C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B82C0))
  {
    byte_1002B82B8 = DeviceHasANE();
    __cxa_guard_release(&qword_1002B82C0);
  }

  return byte_1002B82B8;
}

- (BOOL)isAssetEligible:(id)eligible
{
  eligibleCopy = eligible;
  v4 = ![eligibleCopy deferredProcessingNeeded] || objc_msgSend(eligibleCopy, "deferredProcessingNeeded") == 4 || objc_msgSend(eligibleCopy, "deferredProcessingNeeded") == 8 || objc_msgSend(eligibleCopy, "deferredProcessingNeeded") == 1;

  return v4;
}

- (void)_persistClassifiedFaces:(id)faces withDetectedPersons:(id)persons
{
  facesCopy = faces;
  personsCopy = persons;
  if ([facesCopy count])
  {
    allKeys = [facesCopy allKeys];
    firstObject = [allKeys firstObject];
    photoLibrary = [firstObject photoLibrary];

    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000A06E4;
    v17[3] = &unk_1002832A0;
    v18 = facesCopy;
    v19 = personsCopy;
    v11 = librarySpecificFetchOptions;
    v20 = v11;
    v12 = objc_retainBlock(v17);
    v16 = 0;
    v13 = [photoLibrary performChangesAndWait:v12 error:&v16];
    v14 = v16;
    if ((v13 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
    {
      v15 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[PhotosCapture] Failed to persist person identification results - %@", buf, 0xCu);
      }
    }
  }
}

- (int)faceProcessingForAssets:(id)assets withManager:(id)manager onDemandDetection:(BOOL)detection
{
  detectionCopy = detection;
  assetsCopy = assets;
  managerCopy = manager;
  if (![assetsCopy count])
  {
LABEL_41:
    loadPersonsModelAndInitializeFaceAnalyzerWrapper = 0;
    goto LABEL_42;
  }

  loadPersonsModelAndInitializeFaceAnalyzerWrapper = [managerCopy loadPersonsModelAndInitializeFaceAnalyzerWrapper];
  if (!loadPersonsModelAndInitializeFaceAnalyzerWrapper)
  {
    v44 = +[NSMutableDictionary dictionary];
    v12 = +[NSMutableDictionary dictionary];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1000A14D8;
    v60[3] = &unk_100285400;
    v61 = managerCopy;
    selfCopy = self;
    v50 = v44;
    v63 = v50;
    v13 = v12;
    v64 = v13;
    v51 = objc_retainBlock(v60);
    v49 = mach_absolute_time();
    v14 = VCPSignPostLog();
    v15 = os_signpost_id_generate(v14);

    v16 = VCPSignPostLog();
    v17 = v16;
    v47 = v15 - 1;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VCPJIT_Face_DetectAndIdentifyBatch", "", buf, 2u);
    }

    v48 = v15;

    if ([objc_opt_class() _concurrentFaceProcessing])
    {
      v45 = v13;
      v43 = +[NSMutableArray array];
      v18 = [assetsCopy count];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A1650;
      block[3] = &unk_100285428;
      block[4] = self;
      v59 = detectionCopy;
      v46 = assetsCopy;
      v56 = v46;
      v19 = v43;
      v57 = v19;
      v20 = v51;
      v58 = v20;
      dispatch_apply(v18, 0, block);
      v21 = atomic_load(&self->_interrupt);
      if (v21 & 1) != 0 || (v22 = atomic_load(&self->_cancel), (v22) && detectionCopy)
      {
        v23 = 6;
      }

      else
      {
        v37 = 0;
        v42 = v20 + 16;
        while (v37 < [v19 count])
        {
          v38 = objc_autoreleasePoolPush();
          v39 = atomic_load(&self->_interrupt);
          if (v39 & 1) != 0 || (v40 = atomic_load(&self->_cancel), (v40) && detectionCopy)
          {
            v23 = 6;
          }

          else
          {
            v41 = [v46 objectAtIndexedSubscript:v37];
            if ([(VCPPhotosCaptureProcessingTask *)self isAssetEligible:v41])
            {
              (*(v20 + 2))(v20, v41, detectionCopy);
              v23 = 0;
            }

            else
            {
              v23 = 9;
            }
          }

          objc_autoreleasePoolPop(v38);
          if (v23 != 9 && v23)
          {
            goto LABEL_14;
          }

          ++v37;
        }

        v23 = 0;
      }

LABEL_14:

      v13 = v45;
      if (v23)
      {
LABEL_39:
        persistGroup = self->_persistGroup;
        persistQueue = self->_persistQueue;
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_1000A1768;
        v52[3] = &unk_1002832A0;
        v52[4] = self;
        v53 = v50;
        v54 = v13;
        dispatch_group_async(persistGroup, persistQueue, v52);

LABEL_40:
        goto LABEL_41;
      }
    }

    else
    {
      for (i = 0; i < [assetsCopy count]; ++i)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = atomic_load(&self->_interrupt);
        if (v26 & 1) != 0 || (v27 = atomic_load(&self->_cancel), (v27) && detectionCopy)
        {
          v28 = 6;
        }

        else
        {
          v29 = [assetsCopy objectAtIndexedSubscript:i];
          if ([(VCPPhotosCaptureProcessingTask *)self isAssetEligible:v29])
          {
            (v51[2])(v51, v29, detectionCopy);
            v28 = 0;
          }

          else
          {
            v28 = 14;
          }
        }

        objc_autoreleasePoolPop(v25);
        HIDWORD(v31) = v28;
        LODWORD(v31) = v28;
        v30 = v31 >> 1;
        if (v30 > 5)
        {
          if (v30 != 7)
          {
            if (v30 != 6)
            {
              goto LABEL_40;
            }

            break;
          }
        }

        else if (v30)
        {
          if (v30 == 3)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        }
      }
    }

    v32 = VCPSignPostLog();
    v33 = v32;
    if (v47 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v48, "VCPJIT_Face_DetectAndIdentifyBatch", "", buf, 2u);
    }

    if (v49)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    goto LABEL_39;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v11 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, " QuickFaceID Persons Model is not ready; skip processing", buf, 2u);
    }
  }

LABEL_42:

  return loadPersonsModelAndInitializeFaceAnalyzerWrapper;
}

- (void)ocrProcessingForAssets:(id)assets
{
  assetsCopy = assets;
  v31 = mach_absolute_time();
  v5 = VCPSignPostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog();
  v8 = v7;
  spid = v6;
  v30 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "VCPJIT_OCR_Batch", "", buf, 2u);
  }

  firstObject = [assetsCopy firstObject];
  photoLibrary = [firstObject photoLibrary];
  v32 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000A1E38;
  v34[3] = &unk_100283000;
  v34[4] = self;
  v33 = objc_retainBlock(v34);
  v11 = [VCPMADOCRAssetBatch batchWithAnalysisDatabase:v32 allowDownload:0 cancelBlock:v33];
  v12 = 0;
  v13 = VCPLogToOSLogType[7];
  type = VCPLogToOSLogType[6];
  while (v12 < [assetsCopy count])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = atomic_load(&self->_interrupt);
    if (v15 & 1) != 0 || (v16 = atomic_load(&self->_cancel), (v16))
    {
      v17 = 0;
    }

    else
    {
      v18 = [assetsCopy objectAtIndexedSubscript:v12];
      if ([(VCPPhotosCaptureProcessingTask *)self isAssetEligible:v18])
      {
        vcp_passedOCRGating = [v18 vcp_passedOCRGating];
        if ([vcp_passedOCRGating BOOLValue])
        {
          v20 = +[NSDate now];
          [v11 addPhotosAsset:v18 withPreviousStatus:0 attempts:0 andAttemptDate:v20];
        }

        else if (vcp_passedOCRGating)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v13))
          {
            localIdentifier = [v18 localIdentifier];
            *buf = 138412290;
            v36 = localIdentifier;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[PhotosCapture][%@] OCR gating did not pass; skipping", buf, 0xCu);
          }
        }

        else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
        {
          localIdentifier2 = [v18 localIdentifier];
          *buf = 138412290;
          v36 = localIdentifier2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PhotosCapture][%@] OCR gating not available; skipping", buf, 0xCu);
        }
      }

      else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v13))
      {
        localIdentifier3 = [v18 localIdentifier];
        *buf = 138412290;
        v36 = localIdentifier3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[PhotosCapture][%@] Asset not ready for OCR; skipping", buf, 0xCu);
      }

      v17 = 1;
    }

    objc_autoreleasePoolPop(v14);
    ++v12;
    if ((v17 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v24 = [v11 count];
  if (v24)
  {
    if (sub_1000A1E64(v24, v11))
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v25 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v25))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[PhotosCapture] OCR processing failed", buf, 2u);
        }
      }
    }
  }

  v26 = VCPSignPostLog();
  v27 = v26;
  if (v30 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, spid, "VCPJIT_OCR_Batch", "", buf, 2u);
  }

  if (v31)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

LABEL_36:
}

- (BOOL)run:(id *)run
{
  v82 = objc_autoreleasePoolPush();
  atomic_store(1u, &self->_started);
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = self->_photoLibraries;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v101 objects:v127 count:16];
  selfCopy = self;
  if (v5)
  {
    v92 = *v102;
    type = VCPLogToOSLogType[7];
    v93 = VCPLogToOSLogType[6];
    do
    {
      v91 = v5;
      for (i = 0; i != v91; i = i + 1)
      {
        if (*v102 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v94 = *(*(&v101 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v6 = atomic_load(&selfCopy->_interrupt);
        if (v6 & 1) != 0 || (v7 = atomic_load(&selfCopy->_cancel), (v7))
        {
          if (!run)
          {
            v12 = 0;
            v3 = 0;
            goto LABEL_15;
          }

          v125 = NSLocalizedDescriptionKey;
          v8 = atomic_load(&selfCopy->_interrupt);
          v9 = (v8 & 1) == 0;
          v10 = @"Canceled";
          if (!v9)
          {
            v10 = @"Interrupted";
          }

          v126 = [NSString stringWithFormat:@"[PhotosCapture] %@ at task start", v10];
          v98 = v126;
          v96 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
          v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:?];
          v12 = 0;
          v3 = 0;
          fetchedObjects = *run;
          *run = v11;
LABEL_12:

          goto LABEL_13;
        }

        v98 = [[VCPPhotosQuickFaceIdentificationManager alloc] initWithPhotoLibrary:v94];
        v96 = [PHAsset vcp_fetchOptionsForLibrary:v94 forTaskID:8];
        v14 = [NSPredicate predicateWithFormat:@"faceAdjustmentVersion = nil"];
        [v96 setInternalPredicate:v14];

        v15 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
        v124 = v15;
        v16 = [NSArray arrayWithObjects:&v124 count:1];
        [v96 setSortDescriptors:v16];

        if (![objc_opt_class() _allowProcessingCapturedFace])
        {
          goto LABEL_54;
        }

        v17 = [PHAsset fetchAssetsFromCameraSinceDate:0 options:v96];
        fetchedObjects = [v17 fetchedObjects];

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          v18 = [fetchedObjects count];
          *buf = 134217984;
          v121 = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PhotosCapture] Quick Face ID: %lu captured assets; start fast track process", buf, 0xCu);
        }

        selfCopy->_numberOfNewCaptures = [fetchedObjects count];
        v86 = mach_absolute_time();
        v19 = VCPSignPostLog();
        spid = os_signpost_id_generate(v19);

        v20 = VCPSignPostLog();
        v21 = v20;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPJIT_CameraFace_EndToEnd", "", buf, 2u);
        }

        LOBYTE(v22) = 0;
        v23 = 0;
        v24 = 0;
        while ((v22 & 1) == 0)
        {
          v25 = objc_autoreleasePoolPush();
          v26 = [fetchedObjects count];
          if (&v26[-v24] >= 0x32)
          {
            v27 = 50;
          }

          else
          {
            v27 = &v26[-v24];
          }

          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v93))
          {
            ++v23;
            *buf = 134218240;
            v121 = v23;
            v122 = 2048;
            v123 = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v93, "[PhotosCapture] Quick Face ID fast track batch %lu, jobs: %lu", buf, 0x16u);
          }

          v28 = [NSIndexSet indexSetWithIndexesInRange:v24, v27];
          v29 = [fetchedObjects objectsAtIndexes:v28];
          v22 = [(VCPPhotosCaptureProcessingTask *)selfCopy faceProcessingForAssets:v29 withManager:v98 onDemandDetection:0];
          if (v22)
          {
            if (!run)
            {
              LOBYTE(v22) = 0;
              goto LABEL_41;
            }

            v118 = NSLocalizedDescriptionKey;
            v30 = [NSString stringWithFormat:@"[PhotosCapture] Error during fast track face processing"];
            v119 = v30;
            v31 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
            v32 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v22 userInfo:v31];
            LOBYTE(v22) = 0;
            goto LABEL_39;
          }

          v24 += v27;
          v22 = v24 >= [fetchedObjects count];
          v33 = atomic_load(&selfCopy->_interrupt);
          if ((v33 & 1) == 0)
          {
            v35 = 1;
            goto LABEL_42;
          }

          if (run)
          {
            v116 = NSLocalizedDescriptionKey;
            v30 = [NSString stringWithFormat:@"[PhotosCapture] Interrupted with %lu fast track face job done", v24];
            v117 = v30;
            v31 = [NSDictionary dictionaryWithObjects:&v117 forKeys:&v116 count:1];
            v32 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v31];
LABEL_39:
            v34 = *run;
            *run = v32;
          }

LABEL_41:
          v35 = 0;
          v3 = 0;
LABEL_42:

          objc_autoreleasePoolPop(v25);
          if ((v35 & 1) == 0)
          {
            v12 = 0;
            goto LABEL_12;
          }
        }

        v36 = VCPSignPostLog();
        v37 = v36;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, spid, "VCPJIT_CameraFace_EndToEnd", "", buf, 2u);
        }

        if (v86)
        {
          mach_absolute_time();
          VCPPerformance_LogMeasurement();
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 134217984;
          v121 = v24;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PhotosCapture] Quick Face ID: %lu fast track face job done", buf, 0xCu);
        }

LABEL_54:
        dispatch_group_wait(selfCopy->_persistGroup, 0xFFFFFFFFFFFFFFFFLL);
        if (![objc_opt_class() _cameraFaceOnly])
        {
          v38 = atomic_load(&selfCopy->_interrupt);
          if (v38 & 1) != 0 || (v39 = atomic_load(&selfCopy->_cancel), (v39))
          {
            if (!run)
            {
              v12 = 0;
              v3 = 0;
              goto LABEL_13;
            }

            v114 = NSLocalizedDescriptionKey;
            v40 = atomic_load(&selfCopy->_interrupt);
            v9 = (v40 & 1) == 0;
            v41 = @"Canceled";
            if (!v9)
            {
              v41 = @"Interrupted";
            }

            v115 = [NSString stringWithFormat:@"[PhotosCapture] %@ after fast track job", v41];
            v87 = v115;
            v85 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
            v42 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:?];
            v12 = 0;
            v3 = 0;
            v43 = *run;
            *run = v42;
          }

          else
          {
            v87 = [PHAsset fetchAssetsFromCameraSinceDate:0 options:v96];
            v85 = [PHAsset vcp_fetchOptionsForLibrary:v94 forTaskID:10];
            [v85 setPredicate:0];
            v44 = [NSPredicate predicateWithFormat:@"mediaAnalysisAttributes.characterRecognitionAttributes.algorithmVersion = nil && kindSubtype != %d", 1];
            [v85 setInternalPredicate:v44];

            v45 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
            v113 = v45;
            v46 = [NSArray arrayWithObjects:&v113 count:1];
            [v85 setSortDescriptors:v46];

            spida = [PHAsset fetchAssetsFromCameraSinceDate:0 options:v85];
            v78 = mach_absolute_time();
            v47 = VCPSignPostLog();
            v79 = os_signpost_id_generate(v47);

            v48 = VCPSignPostLog();
            v49 = v48;
            if (v79 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_INTERVAL_BEGIN, v79, "VCPJIT_AssetFaceAndOCR_EndToEnd", "", buf, 2u);
            }

            v50 = 0;
            v51 = 0;
            v80 = 0;
            v81 = 0;
            v52 = 0;
            v53 = 0;
            while (!v51 || !v50)
            {
              if (v51)
              {
                v51 = 1;
              }

              else
              {
                v83 = objc_autoreleasePoolPush();
                v54 = [v87 count];
                if (&v54[-v53] >= 0x19)
                {
                  v55 = 25;
                }

                else
                {
                  v55 = &v54[-v53];
                }

                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v93))
                {
                  *buf = 134218240;
                  v121 = ++v81;
                  v122 = 2048;
                  v123 = v55;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v93, "[PhotosCapture] Quick Face ID batch %lu, jobs: %lu", buf, 0x16u);
                }

                v56 = [NSIndexSet indexSetWithIndexesInRange:v53, v55];
                v57 = [v87 objectsAtIndexes:v56];
                v58 = [(VCPPhotosCaptureProcessingTask *)selfCopy faceProcessingForAssets:v57 withManager:v98 onDemandDetection:1];
                if (v58)
                {
                  if (run)
                  {
                    v111 = NSLocalizedDescriptionKey;
                    v59 = [NSString stringWithFormat:@"[PhotosCapture] Error during face processing"];
                    v112 = v59;
                    v60 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
                    v61 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v58 userInfo:v60];
                    v62 = *run;
                    *run = v61;
                  }

                  v3 = 0;
                  v51 = 0;
                }

                else
                {
                  v53 += v55;
                  v51 = v53 >= [v87 count];
                }

                objc_autoreleasePoolPop(v83);
                if (v58)
                {
                  v12 = 0;
                  goto LABEL_112;
                }
              }

              v63 = atomic_load(&selfCopy->_interrupt);
              if (v63)
              {
                if (run)
                {
                  v109 = NSLocalizedDescriptionKey;
                  v71 = [NSString stringWithFormat:@"[PhotosCapture] Interrupted with %lu face and %lu OCR job done", v53, v52];
                  v110 = v71;
                  v72 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
                  v73 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v72];
                  goto LABEL_110;
                }

LABEL_111:
                v12 = 0;
                v3 = 0;
                goto LABEL_112;
              }

              if (v50)
              {
                v50 = 1;
              }

              else
              {
                v64 = objc_autoreleasePoolPush();
                v65 = [spida count];
                if (&v65[-v52] >= 0x19)
                {
                  v66 = 25;
                }

                else
                {
                  v66 = &v65[-v52];
                }

                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v93))
                {
                  *buf = 134218240;
                  v121 = ++v80;
                  v122 = 2048;
                  v123 = v66;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v93, "[PhotosCapture] Quick OCR batch %lu, jobs: %lu", buf, 0x16u);
                }

                v67 = [NSIndexSet indexSetWithIndexesInRange:v52, v66];
                v68 = [spida objectsAtIndexes:v67];
                [(VCPPhotosCaptureProcessingTask *)selfCopy ocrProcessingForAssets:v68];

                v52 += v66;
                v50 = v52 >= [spida count];

                objc_autoreleasePoolPop(v64);
              }

              v69 = atomic_load(&selfCopy->_interrupt);
              if (v69)
              {
                if (run)
                {
                  v107 = NSLocalizedDescriptionKey;
                  v71 = [NSString stringWithFormat:@"[PhotosCapture] Interrupted with %lu face and %lu OCR job done", v53, v52];
                  v108 = v71;
                  v72 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
                  v73 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v72];
LABEL_110:
                  v76 = *run;
                  *run = v73;
                }

                goto LABEL_111;
              }

              v70 = atomic_load(&selfCopy->_cancel);
              if (v70)
              {
                if (run)
                {
                  v105 = NSLocalizedDescriptionKey;
                  v71 = [NSString stringWithFormat:@"[PhotosCapture] Canceled after screening %lu assets for face and %lu assets for OCR", v53, v52];
                  v106 = v71;
                  v72 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
                  v73 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v72];
                  goto LABEL_110;
                }

                goto LABEL_111;
              }
            }

            v74 = VCPSignPostLog();
            v75 = v74;
            if (v79 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v75, OS_SIGNPOST_INTERVAL_END, v79, "VCPJIT_AssetFaceAndOCR_EndToEnd", "", buf, 2u);
            }

            if (v78)
            {
              mach_absolute_time();
              VCPPerformance_LogMeasurement();
            }

            MediaAnalysisDaemonReleaseSharedDataStores(v94);
            v12 = 1;
LABEL_112:
            v43 = spida;
          }

          fetchedObjects = v87;
          goto LABEL_12;
        }

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v93))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v93, "[PhotosCapture] Stop processing after camera faces are processed", buf, 2u);
        }

        (*(selfCopy->_completionHandler + 2))();
        v12 = 0;
        v3 = 1;
LABEL_13:

LABEL_15:
        objc_autoreleasePoolPop(context);
        if (!v12)
        {

          goto LABEL_118;
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v101 objects:v127 count:16];
    }

    while (v5);
  }

  dispatch_group_wait(selfCopy->_persistGroup, 0xFFFFFFFFFFFFFFFFLL);
  (*(selfCopy->_completionHandler + 2))();
  v3 = 1;
LABEL_118:
  objc_autoreleasePoolPop(v82);
  return v3 & 1;
}

- (void)_resetFieldsPostCapturesProcessing
{
  *&self->_numberOfCapturesHaveFaces = 0u;
  *&self->_numberOfPositiveFaces = 0u;
  *&self->_numberOfNewCaptures = 0u;
}

- (void)_reportEventPostCapturesProcessing
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  numberOfNewCaptures = selfCopy->_numberOfNewCaptures;
  if (numberOfNewCaptures)
  {
    numberOfFaces = selfCopy->_numberOfFaces;
    if (numberOfFaces)
    {
      v5 = selfCopy->_numberOfPositiveFaces / numberOfFaces;
    }

    else
    {
      v5 = 0.0;
    }

    numberOfNewCapturesProcessed = selfCopy->_numberOfNewCapturesProcessed;
    numberOfCapturesHaveFaces = selfCopy->_numberOfCapturesHaveFaces;
    numberOfNewCapturesWithFaceHaveFaceprintFromCamera = selfCopy->_numberOfNewCapturesWithFaceHaveFaceprintFromCamera;
    v24 = +[VCPMADCoreAnalyticsManager sharedManager];
    v25[0] = @"NumberOfNewCaptures";
    v23 = [NSNumber numberWithUnsignedInteger:selfCopy->_numberOfNewCaptures];
    v26[0] = v23;
    v25[1] = @"NumberOfNewCapturesProcessed";
    v9 = [NSNumber numberWithUnsignedInteger:selfCopy->_numberOfNewCapturesProcessed];
    v10 = numberOfNewCaptures;
    *&v11 = numberOfNewCapturesProcessed / numberOfNewCaptures;
    v26[1] = v9;
    v25[2] = @"PercentageOfNewCapturesProcessed";
    v12 = [NSNumber numberWithFloat:v11];
    v26[2] = v12;
    v25[3] = @"NumberOfCapturesHaveFace";
    v13 = [NSNumber numberWithUnsignedInteger:selfCopy->_numberOfCapturesHaveFaces];
    *&v14 = numberOfCapturesHaveFaces / v10;
    v26[3] = v13;
    v25[4] = @"PercentageOfCapturesHaveFace";
    v15 = [NSNumber numberWithFloat:v14];
    v26[4] = v15;
    v25[5] = @"NumberOfNewCapturesWithFaceFullFromCamera";
    v16 = [NSNumber numberWithUnsignedInteger:selfCopy->_numberOfNewCapturesWithFaceHaveFaceprintFromCamera];
    *&v17 = numberOfNewCapturesWithFaceHaveFaceprintFromCamera / v10;
    v26[5] = v16;
    v25[6] = @"PercentageOfNewCapturesWithFaceFullFromCamera";
    v18 = [NSNumber numberWithFloat:v17];
    v26[6] = v18;
    v25[7] = @"NumberOfPositiveFace";
    v19 = [NSNumber numberWithUnsignedInteger:selfCopy->_numberOfPositiveFaces];
    v26[7] = v19;
    v25[8] = @"PercentageOfPositiveFaces";
    *&v20 = v5;
    v21 = [NSNumber numberWithFloat:v20];
    v26[8] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:9];
    [v24 sendEvent:@"com.apple.mediaanalysisd.photos.postcapturefaceprocessing" withAnalytics:v22];

    [(VCPPhotosCaptureProcessingTask *)selfCopy _resetFieldsPostCapturesProcessing];
  }

  else
  {
    [(VCPPhotosCaptureProcessingTask *)selfCopy _resetFieldsPostCapturesProcessing];
  }

  objc_sync_exit(selfCopy);
}

- (int)run
{
  v13 = 0;
  if ([(VCPPhotosCaptureProcessingTask *)self run:&v13])
  {
    goto LABEL_14;
  }

  if ([(__CFString *)v13 code]== -128)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v3 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        v4 = atomic_load(&self->_interrupt);
        if (v4)
        {
          v5 = @"interrupted";
        }

        else
        {
          v5 = @"canceled";
        }

        *buf = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v13;
        v6 = "[PhotosCapture] Task %@ (%@)";
        v7 = v3;
        v8 = 22;
        goto LABEL_12;
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v9 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 138412290;
      v15 = v13;
      v6 = "[PhotosCapture] Task failed (%@)";
      v7 = v9;
      v8 = 12;
LABEL_12:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, v6, buf, v8);
    }
  }

  dispatch_group_wait(self->_persistGroup, 0xFFFFFFFFFFFFFFFFLL);
  v10 = atomic_load(&self->_interrupt);
  if ((v10 & 1) == 0)
  {
    (*(self->_completionHandler + 2))();
    code = [(__CFString *)v13 code];
    goto LABEL_16;
  }

LABEL_14:
  code = 0;
LABEL_16:
  [(VCPPhotosCaptureProcessingTask *)self _reportEventPostCapturesProcessing];

  return code;
}

@end