@interface MADPhotosFaceCropGenerationTask
- (MADPhotosFaceCropGenerationTask)init;
- (double)downloadInactiveTimeInterval;
- (int)removeDownloadRequestIDForAsset:(id)a3;
- (void)addDownloadRequestID:(int)a3 forAsset:(id)a4;
- (void)addFace:(id)a3;
- (void)cancelRemainingDownloadsWithStatus:(int)a3;
- (void)download;
- (void)prepare;
- (void)process;
@end

@implementation MADPhotosFaceCropGenerationTask

- (MADPhotosFaceCropGenerationTask)init
{
  v13.receiver = self;
  v13.super_class = MADPhotosFaceCropGenerationTask;
  v2 = [(MADProcessingTask *)&v13 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    faces = v2->_faces;
    v2->_faces = v3;

    v5 = dispatch_group_create();
    downloadGroup = v2->_downloadGroup;
    v2->_downloadGroup = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.mediaanalysisd.facecrop.download", v7);
    downloadStateQueue = v2->_downloadStateQueue;
    v2->_downloadStateQueue = v8;

    v10 = +[NSMutableDictionary dictionary];
    downloadRequestIDs = v2->_downloadRequestIDs;
    v2->_downloadRequestIDs = v10;
  }

  return v2;
}

- (void)addFace:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_faces containsObject:v4])
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v5 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = [v4 localIdentifier];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[FaceCrop][%@] Batch already contains face; ignoring", &v7, 0xCu);
      }
    }
  }

  else
  {
    [(NSMutableSet *)self->_faces addObject:v4];
  }
}

- (void)prepare
{
  v47 = objc_alloc_init(VCPTimeMeasurement);
  [v47 start];
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  v46 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPhotosFaceCropGenerationTask_Prepare", "", buf, 2u);
  }

  spid = v4;

  v7 = [PHAsset fetchAssetsGroupedByFaceUUIDForFaces:self->_faces];
  v49 = +[NSMutableDictionary dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v45 = self;
  obj = self->_faces;
  v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v56;
    v11 = VCPLogToOSLogType[3];
    v12 = &_os_log_default;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v55 + 1) + 8 * i);
        v15 = [v14 uuid];
        v16 = [v7 objectForKeyedSubscript:v15];

        if (v16)
        {
          v17 = [v16 localIdentifier];

          if (v17)
          {
            v18 = v7;
            v19 = v12;
            v20 = [v16 localIdentifier];
            v21 = [v49 objectForKeyedSubscript:v20];

            if (v21)
            {
              v22 = [v21 faces];
              [(MADPhotosFaceCropGenerationEntry *)v22 addObject:v14];
            }

            else
            {
              v22 = [[MADPhotosFaceCropGenerationEntry alloc] initWithAsset:v16 andFace:v14];
              if (v22)
              {
                v24 = [v16 localIdentifier];
                [v49 setObject:v22 forKeyedSubscript:v24];
              }

              else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v19, v11))
              {
                v48 = [v16 localIdentifier];
                v25 = [v14 localIdentifier];
                *buf = 138412546;
                v61 = v48;
                v62 = 2112;
                v63 = v25;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[FaceCrop] Failed to create entry asset %@ and face %@; skip", buf, 0x16u);
              }
            }

            v12 = v19;
            v7 = v18;
          }

          else if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            v23 = [v14 localIdentifier];
            *buf = 138412546;
            v61 = v16;
            v62 = 2112;
            v63 = v23;
            _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "[FaceCrop] Asset %@ containing face (%@) misses localIdentifier; skip", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          sub_1000D2424(v64, v14, &v65);
        }
      }

      v9 = [(NSMutableSet *)obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v9);
  }

  v26 = [v49 allValues];
  assetEntries = v45->_assetEntries;
  v45->_assetEntries = v26;

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v28 = v45->_assetEntries;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v52;
    v32 = VCPLogToOSLogType[4];
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v52 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v51 + 1) + 8 * j);
        v35 = [v34 asset];
        v36 = [VCPFaceUtils preferredResourcesForFaceProcessingWithAsset:v35];

        v37 = [VCPFaceUtils resourceForFaceProcessing:v36 allowStreaming:1];
        [v34 setResource:v37];

        v38 = [v34 resource];

        if (!v38 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v32))
        {
          v39 = [v34 asset];
          v40 = [v39 localIdentifier];
          *buf = 138412290;
          v61 = v40;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[FaceCrop][%@] Failed to identify resource", buf, 0xCu);
        }
      }

      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v30);
  }

  v41 = VCPSignPostLog();
  v42 = v41;
  if (v46 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosFaceCropGenerationTask_Prepare", "", buf, 2u);
  }

  [v47 stop];
  v43 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v47 elapsedTimeSeconds];
  [v43 accumulateDoubleValue:@"TotalPrepareTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];
}

- (void)addDownloadRequestID:(int)a3 forAsset:(id)a4
{
  v6 = a4;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D0EA0;
  block[3] = &unk_100285CA8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(downloadStateQueue, block);
}

- (int)removeDownloadRequestIDForAsset:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  downloadStateQueue = self->_downloadStateQueue;
  v14 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D101C;
  block[3] = &unk_100282F28;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(downloadStateQueue, block);
  LODWORD(downloadStateQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return downloadStateQueue;
}

- (double)downloadInactiveTimeInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  downloadStateQueue = self->_downloadStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D120C;
  v5[3] = &unk_100282E88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(downloadStateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)cancelRemainingDownloadsWithStatus:(int)a3
{
  downloadStateQueue = self->_downloadStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D1318;
  v5[3] = &unk_100282EB0;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(downloadStateQueue, v5);
  dispatch_group_wait(self->_downloadGroup, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)download
{
  v42 = objc_alloc_init(VCPTimeMeasurement);
  [v42 start];
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  v41 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPhotosFaceCropGenerationTask_Download", "", buf, 2u);
  }

  spid = v4;

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [(NSArray *)self->_assetEntries count];
      qos_class_self();
      v9 = VCPMAQoSDescription();
      *buf = 67109378;
      *v52 = v8;
      *&v52[4] = 2112;
      *&v52[6] = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[FaceCrop][Download] Downloading %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v10 = +[MADStateHandler sharedStateHandler];
  [v10 addBreadcrumb:{@"[FaceCropGeneration] Downloading %d assets", -[NSArray count](self->_assetEntries, "count")}];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = self->_assetEntries;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v47;
    type = VCPLogToOSLogType[4];
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        v17 = +[VCPWatchdog sharedWatchdog];
        [v17 pet];

        v18 = [v16 resource];

        if (v18)
        {
          dispatch_group_enter(self->_downloadGroup);
          v19 = [v16 resource];
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_1000D1B90;
          v45[3] = &unk_100285CD0;
          v45[4] = self;
          v45[5] = v16;
          v20 = [PHAssetResourceManager vcp_requestFileURLForAssetResource:v19 taskID:3 completionHandler:v45];

          if (v20)
          {
            v21 = [v16 asset];
            [(MADPhotosFaceCropGenerationTask *)self addDownloadRequestID:v20 forAsset:v21];

            ++v13;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
            {
              v22 = [v16 asset];
              v23 = [v22 localIdentifier];
              *buf = 138412290;
              *v52 = v23;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[FaceCrop][Download][%@] Failed to initialize resource download", buf, 0xCu);
            }

            [v16 setStatus:4294943494];
            dispatch_group_leave(self->_downloadGroup);
          }
        }
      }

      v12 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v24 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v24))
    {
      *buf = 67109120;
      *v52 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[FaceCrop][Download] Waiting for %d downloads to complete", buf, 8u);
    }
  }

  while (1)
  {
    downloadGroup = self->_downloadGroup;
    v26 = dispatch_time(0, 500000000);
    if (!dispatch_group_wait(downloadGroup, v26))
    {
      break;
    }

    v27 = [(MADProcessingTask *)self cancelBlock];
    if (v27)
    {
      v28 = v27;
      v29 = [(MADProcessingTask *)self cancelBlock];
      v30 = v29[2]();

      if (v30)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v35 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v35))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "[FaceCrop][Download] Processing cancelled; cancelling downloads", buf, 2u);
          }
        }

        v33 = self;
        v34 = 4294967168;
        goto LABEL_38;
      }
    }

    [(MADPhotosFaceCropGenerationTask *)self downloadInactiveTimeInterval];
    if (v31 > 60.0)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v32 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[FaceCrop][Download] Download inactivity timeout; cancelling downloads", buf, 2u);
        }
      }

      v33 = self;
      v34 = 4294943494;
LABEL_38:
      [(MADPhotosFaceCropGenerationTask *)v33 cancelRemainingDownloadsWithStatus:v34];
      break;
    }
  }

  v36 = VCPSignPostLog();
  v37 = v36;
  if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosFaceCropGenerationTask_Download", "", buf, 2u);
  }

  v38 = +[MADStateHandler sharedStateHandler];
  [v38 addBreadcrumb:{@"[FaceCropGeneration] Finished downloading %d assets", -[NSArray count](self->_assetEntries, "count")}];

  [v42 stop];
  v39 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v42 elapsedTimeSeconds];
  [v39 accumulateDoubleValue:@"TotalDownloadTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];
}

- (void)process
{
  v51 = objc_alloc_init(VCPTimeMeasurement);
  [v51 start];
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  v47 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPhotosFaceCropGenerationTask_Process", "", buf, 2u);
  }

  v46 = v4;

  v50 = +[VCPMADCoreAnalyticsManager sharedManager];
  v7 = [(NSMutableSet *)self->_faces anyObject];
  v8 = [v7 photoLibrary];

  v48 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v8];
  v49 = v8;
  v58 = [[VCPFaceCropManager alloc] initWithPhotoLibrary:v8 andContext:v48];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v9 = self->_assetEntries;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v62;
    type = VCPLogToOSLogType[3];
    v54 = v9;
    v55 = self;
    v53 = *v62;
    while (2)
    {
      v13 = 0;
      v56 = v11;
      do
      {
        if (*v62 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v61 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = +[VCPWatchdog sharedWatchdog];
        [v16 pet];

        v17 = [(MADProcessingTask *)self cancelBlock];
        if (v17)
        {
          v18 = v17;
          v19 = [(MADProcessingTask *)self cancelBlock];
          v20 = v19[2]();

          if (v20)
          {
            objc_autoreleasePoolPop(v15);
            goto LABEL_33;
          }
        }

        v21 = [v14 resource];
        if (v21)
        {
          v22 = v21;
          v23 = [v14 status];

          if (!v23)
          {
            v24 = VCPSignPostLog();
            v25 = os_signpost_id_generate(v24);

            v26 = VCPSignPostLog();
            v27 = v26;
            v28 = v25 - 1;
            if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VCPFaceProcessingGenerateFaceCrop", "", buf, 2u);
            }

            v29 = [v14 downloadURL];
            spid = v25;
            if (v29)
            {
              v30 = [v14 downloadURL];
            }

            else
            {
              v31 = [v14 resource];
              v30 = [v31 privateFileURL];
            }

            v32 = [v14 faces];
            v33 = [v32 allObjects];
            v34 = [v14 asset];
            v35 = [v14 resource];
            v59 = v30;
            v60 = 0;
            v36 = [v58 generateAndPersistFaceCropsForFaces:v33 withAsset:v34 resource:v35 resourceURL:v30 error:&v60];
            v37 = v60;

            if ((v36 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
            {
              v38 = [v14 asset];
              v39 = [v38 localIdentifier];
              *buf = 138412546;
              v66 = v39;
              v67 = 2112;
              v68 = v37;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[FaceCrop][%@] Failed to generate - %@", buf, 0x16u);
            }

            v40 = VCPSignPostLog();
            v41 = v40;
            self = v55;
            v12 = v53;
            if (v28 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceProcessingGenerateFaceCrop", "", buf, 2u);
            }

            v42 = [v14 downloadURL];

            if (v42)
            {
              v43 = [v14 downloadURL];
              [PHAssetResourceManager vcp_flushResourceURL:v43];

              [v14 setDownloadURL:0];
            }

            v9 = v54;
            v11 = v56;
          }
        }

        objc_autoreleasePoolPop(v15);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  v44 = VCPSignPostLog();
  v45 = v44;
  if (v47 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_END, v46, "MADPhotosFaceCropGenerationTask_Process", "", buf, 2u);
  }

  [v51 stop];
  [v51 elapsedTimeSeconds];
  [v50 accumulateDoubleValue:@"TimeAnalyzingInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];
  [v50 accumulateInt64Value:-[NSArray count](self->_assetEntries forField:"count") andEvent:{@"NumberOfFacecropsGenerated", @"com.apple.mediaanalysisd.FaceAnalysisRunSession"}];
}

@end