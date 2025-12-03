@interface MADPhotosOnDemandStaticStickerScoreTask
+ (id)taskWithPhotoLibrary:(id)library options:(id)options completionHandler:(id)handler;
- (BOOL)run:(id *)run;
- (MADPhotosOnDemandStaticStickerScoreTask)initWithPhotoLibrary:(id)library options:(id)options completionHandler:(id)handler;
- (void)publishResults:(id)results;
@end

@implementation MADPhotosOnDemandStaticStickerScoreTask

- (MADPhotosOnDemandStaticStickerScoreTask)initWithPhotoLibrary:(id)library options:(id)options completionHandler:(id)handler
{
  libraryCopy = library;
  optionsCopy = options;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10015BD98;
  v26[3] = &unk_100284038;
  handlerCopy = handler;
  v27 = handlerCopy;
  v12 = objc_retainBlock(v26);
  v25.receiver = self;
  v25.super_class = MADPhotosOnDemandStaticStickerScoreTask;
  v13 = [(MADPhotosOnDemandStaticStickerScoreTask *)&v25 initWithCompletionHandler:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_photoLibrary, library);
    v14->_targetResultCount = 10;
    v15 = [optionsCopy objectForKeyedSubscript:VCPMediaAnalysisService_TargetResultCount];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14->_targetResultCount = [v15 unsignedIntegerValue];
      }

      else if (MediaAnalysisLogLevel() >= 4)
      {
        v16 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *buf = 138412290;
          v29 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[Sticker] Unexpected target result count type (%@); ignoring", buf, 0xCu);
        }
      }
    }

    v17 = dispatch_semaphore_create(1);
    publishSemaphore = v14->_publishSemaphore;
    v14->_publishSemaphore = v17;

    v19 = dispatch_group_create();
    publishGroup = v14->_publishGroup;
    v14->_publishGroup = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("publishQueue", v21);
    publishQueue = v14->_publishQueue;
    v14->_publishQueue = v22;
  }

  return v14;
}

+ (id)taskWithPhotoLibrary:(id)library options:(id)options completionHandler:(id)handler
{
  libraryCopy = library;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy options:optionsCopy completionHandler:handlerCopy];

  return v10;
}

- (void)publishResults:(id)results
{
  resultsCopy = results;
  dispatch_semaphore_wait(self->_publishSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  publishGroup = self->_publishGroup;
  publishQueue = self->_publishQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015BF1C;
  v8[3] = &unk_100282BC8;
  v8[4] = self;
  v9 = resultsCopy;
  v7 = resultsCopy;
  dispatch_group_async(publishGroup, publishQueue, v8);
}

- (BOOL)run:(id *)run
{
  v4 = +[NSDate now];
  [v4 timeIntervalSince1970];

  v77 = [PHAsset vcp_fetchOptionsForLibrary:self->_photoLibrary forTaskID:12];
  v5 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
  v91 = v5;
  v6 = [NSArray arrayWithObjects:&v91 count:1];
  [v77 setSortDescriptors:v6];

  [v77 setFetchLimit:10 * self->_targetResultCount];
  v7 = [PHAsset fetchAssetsWithOptions:v77];
  v73 = objc_alloc_init(VNSession);
  v78 = +[NSMutableArray array];
  v8 = 0;
  v80 = 0;
  type = VCPLogToOSLogType[7];
  v71 = VCPLogToOSLogType[6];
  v9 = VCPLogToOSLogType[4];
  v10 = v9;
  while (v8 < [v7 count])
  {
    v11 = objc_autoreleasePoolPush();
    v9 = v10;
    if ([(MADPhotosOnDemandStaticStickerScoreTask *)self isCanceled]& 1) != 0 || (v12 = atomic_load(&self->_publishFailed), (v12) || v80 >= self->_targetResultCount)
    {
      v20 = 2;
      goto LABEL_17;
    }

    v13 = +[VCPWatchdog sharedWatchdog];
    [v13 pet];

    v14 = [v7 objectAtIndexedSubscript:v8];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
    {
      localIdentifier = [v14 localIdentifier];
      *buf = 138412290;
      v88 = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Sticker][%@] Evaluating asset...", buf, 0xCu);
    }

    visualSearchProperties = [v14 visualSearchProperties];
    if ([visualSearchProperties stickerAlgorithmVersion] == 1)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        localIdentifier2 = [v14 localIdentifier];
        [visualSearchProperties stickerConfidenceScore];
        *buf = 138412546;
        v88 = localIdentifier2;
        v89 = 2048;
        v90 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Sticker][%@] Asset already processed (confidence: %0.3f)", buf, 0x16u);
      }

      [visualSearchProperties stickerConfidenceScore];
      v19 = v80;
      if (v18 >= 0.2)
      {
        v19 = v80 + 1;
      }

      v80 = v19;
      v20 = 4;
      goto LABEL_63;
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v71))
    {
      localIdentifier3 = [v14 localIdentifier];
      *buf = 138412290;
      v88 = localIdentifier3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v71, "[Sticker][%@] Processing asset...", buf, 0xCu);
    }

    v74 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v14];
    vcp_thumbnailResource = [v74 vcp_thumbnailResource];
    v75 = vcp_thumbnailResource;
    if (vcp_thumbnailResource)
    {
      if ([vcp_thumbnailResource isLocallyAvailable])
      {
        v23 = VCPSignPostLog();
        v24 = os_signpost_id_generate(v23);

        v25 = VCPSignPostLog();
        v26 = v25;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "MADStickerScore_Decode", "", buf, 2u);
        }

        v83 = 0;
        v27 = +[VCPImageManager sharedImageManager];
        privateFileURL = [v75 privateFileURL];
        v82 = [v27 pixelBufferWithFormat:875704422 fromImageURL:privateFileURL flushCache:0 orientation:&v83];

        v29 = VCPSignPostLog();
        v30 = v29;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v24, "MADStickerScore_Decode", "", buf, 2u);
        }

        v31 = [VNImageRequestHandler alloc];
        v68 = [v31 initWithCVPixelBuffer:v82 orientation:v83 options:&__NSDictionary0__struct session:v73];
        v70 = objc_alloc_init(VNGenerateInstanceMaskGatingRequest);
        if (DeviceHasANE())
        {
          v32 = +[VNProcessingDevice defaultANEDevice];
          [v70 setProcessingDevice:v32];
        }

        v33 = VCPSignPostLog();
        v34 = os_signpost_id_generate(v33);

        v35 = VCPSignPostLog();
        v36 = v35;
        if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "MADStickerScore_PerformRequests", "", buf, 2u);
        }

        v86 = v70;
        v37 = [NSArray arrayWithObjects:&v86 count:1];
        v81 = 0;
        v38 = [v68 performRequests:v37 error:&v81];
        v69 = v81;

        v39 = VCPSignPostLog();
        v40 = v39;
        if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, v34, "MADStickerScore_PerformRequests", "", buf, 2u);
        }

        if (v38)
        {
          results = [v70 results];
          v42 = [results count] == 0;

          if (!v42)
          {
            results2 = [v70 results];
            firstObject = [results2 firstObject];
            [firstObject confidence];
            v46 = v45;

            v47 = v46;
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v71))
            {
              localIdentifier4 = [v14 localIdentifier];
              *buf = 138412546;
              v88 = localIdentifier4;
              v89 = 2048;
              v90 = v47;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v71, "[Sticker][%@] Confidence: %0.3f", buf, 0x16u);
            }

            v49 = v80;
            if (v47 >= 0.2)
            {
              v49 = v80 + 1;
            }

            v80 = v49;
            v50 = [[MADPhotosStickerScoreResult alloc] initWithAsset:v14 stickerScore:v47];
            [v78 addObject:v50];

            if ([v78 count] < 0x64)
            {
              v20 = 0;
            }

            else
            {
              [(MADPhotosOnDemandStaticStickerScoreTask *)self publishResults:v78];
              v51 = +[NSMutableArray array];

              v20 = 0;
              v78 = v51;
            }

            goto LABEL_61;
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v10))
          {
            localIdentifier5 = [v14 localIdentifier];
            *buf = 138412290;
            v88 = localIdentifier5;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[Sticker][%@] Vision request produced no observations", buf, 0xCu);
          }
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v10))
        {
          localIdentifier6 = [v14 localIdentifier];
          [v69 description];
          v55 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v88 = localIdentifier6;
          v89 = 2112;
          v90 = v55;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[Sticker][%@] Vision request failed (%@)", buf, 0x16u);
        }

        v20 = 4;
LABEL_61:

        sub_100002CBC(&v82);
        goto LABEL_62;
      }

      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v10))
      {
        localIdentifier7 = [v14 localIdentifier];
        *buf = 138412290;
        v88 = localIdentifier7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[Sticker][%@] Thumbnail resource not locally available", buf, 0xCu);
      }
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v10))
    {
      localIdentifier8 = [v14 localIdentifier];
      *buf = 138412290;
      v88 = localIdentifier8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[Sticker][%@] No thumbnail resource", buf, 0xCu);
    }

    v20 = 4;
LABEL_62:

LABEL_63:
    v9 = v10;
LABEL_17:
    objc_autoreleasePoolPop(v11);
    if ((v20 | 4) != 4)
    {
      break;
    }

    ++v8;
  }

  if ([v78 count])
  {
    [(MADPhotosOnDemandStaticStickerScoreTask *)self publishResults:v78];
    v57 = +[NSMutableArray array];

    v78 = v57;
    v9 = v10;
  }

  dispatch_group_wait(self->_publishGroup, 0xFFFFFFFFFFFFFFFFLL);
  v58 = atomic_load(&self->_publishFailed);
  if (v58)
  {
    if (run)
    {
      v59 = [(NSError *)self->_publishError copy];
      v60 = *run;
      *run = v59;
    }

    goto LABEL_76;
  }

  if ([(MADPhotosOnDemandStaticStickerScoreTask *)self isCanceled])
  {
    if (run)
    {
      v84 = NSLocalizedDescriptionKey;
      v61 = [NSString stringWithFormat:@"On-demand sticker scoring cancelled"];
      v85 = v61;
      v62 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      v63 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v62];
      v64 = *run;
      *run = v63;

      v9 = v10;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[Sticker] On-demand sticker scoring cancelled", buf, 2u);
    }

LABEL_76:
    v65 = 0;
  }

  else
  {
    completionHandler = [(MADPhotosOnDemandStaticStickerScoreTask *)self completionHandler];
    completionHandler[2](completionHandler, 0, 0);

    v65 = 1;
  }

  return v65;
}

@end