@interface MADPhotosFaceTaskProvider
- (BOOL)shouldProcessAsset:(id)a3;
- (MADPhotosFaceTaskProvider)initWithPhotoLibrary:(id)a3 skipSyncGallery:(BOOL)a4 cancelBlock:(id)a5;
- (id)nextAssetProcessingTask;
- (id)nextClusterProcessingTask;
- (id)nextDownloadAssetProcessingTask;
- (void)dealloc;
- (void)retireTask:(id)a3;
@end

@implementation MADPhotosFaceTaskProvider

- (MADPhotosFaceTaskProvider)initWithPhotoLibrary:(id)a3 skipSyncGallery:(BOOL)a4 cancelBlock:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v44.receiver = self;
  v44.super_class = MADPhotosFaceTaskProvider;
  v11 = [(MADPhotosTaskProvider *)&v44 initWithPhotoLibrary:v9 cancelBlock:v10];
  v12 = v11;
  if (!v11)
  {
LABEL_18:
    v34 = v12;
    goto LABEL_19;
  }

  objc_storeStrong(&v11->_photoLibrary, a3);
  v13 = [[VCPPhotosFaceProcessingContext alloc] initWithPhotoLibrary:v9];
  context = v12->_context;
  v12->_context = v13;

  [(VCPPhotosFaceProcessingContext *)v12->_context setSkipGallerySyncing:v6];
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create("com.apple.mediaanalysisd.photos.facetask.person", v15);
  managementQueue = v12->_managementQueue;
  v12->_managementQueue = v16;

  v12->_personProcessingRequirement = 0;
  [(MADTaskProvider *)v12 taskID];
  v18 = VCPTaskIDDescription();
  v19 = [(PHPhotoLibrary *)v12->_photoLibrary vcp_description];
  v20 = [NSString stringWithFormat:@"[%@][%@][Tasking]", v18, v19];
  logPrefix = v12->_logPrefix;
  v12->_logPrefix = v20;

  if ([v9 vcp_isSyndicationLibrary] && !_os_feature_enabled_impl())
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v35 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v35))
      {
        v36 = v12->_logPrefix;
        *buf = 138412290;
        v46 = v36;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Skipping Syndication Library", buf, 0xCu);
      }
    }

    goto LABEL_18;
  }

  if ([(PHPhotoLibrary *)v12->_photoLibrary vcp_isSyndicationLibrary])
  {
    v22 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
    v23 = [v22 vcp_visionCacheStorageDirectoryURL];

    v24 = 1;
  }

  else
  {
    v23 = [(PHPhotoLibrary *)v12->_photoLibrary vcp_visionCacheStorageDirectoryURL];
    v24 = 0;
  }

  v43 = 0;
  v25 = [[VUWGallery alloc] initWithClient:v24 path:v23 error:&v43];
  v26 = v43;
  gallery = v12->_gallery;
  v12->_gallery = v25;

  if (v12->_gallery)
  {
    if (![(VCPPhotosFaceProcessingContext *)v12->_context skipGallerySyncing])
    {
      v28 = objc_alloc_init(VCPTimeMeasurement);
      [v28 start];
      v29 = qos_class_self();
      v30 = dispatch_get_global_queue(v29, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001B3A60;
      block[3] = &unk_1002887D8;
      v39 = v12;
      v40 = v9;
      v41 = v28;
      v42 = v10;
      v31 = v28;
      dispatch_async(v30, block);
    }

    goto LABEL_18;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v32 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v32))
    {
      v33 = v12->_logPrefix;
      *buf = 138412546;
      v46 = v33;
      v47 = 2112;
      v48 = v26;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Failed to create Gallery instance - %@", buf, 0x16u);
    }
  }

  v34 = 0;
LABEL_19:

  return v34;
}

- (void)dealloc
{
  v3 = +[VNSession globalSession];
  [v3 releaseCachedResources];

  +[PHAssetResourceManager vcp_flushFileCache];
  v4.receiver = self;
  v4.super_class = MADPhotosFaceTaskProvider;
  [(MADPhotosFaceTaskProvider *)&v4 dealloc];
}

- (BOOL)shouldProcessAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  if (![v4 mad_pauseFCPeopleFurtherProcessing])
  {

    goto LABEL_8;
  }

  v5 = [v3 faceAnalysisVersion];

  if (v5 != 14)
  {
LABEL_8:
    v8 = [v3 vcp_needsFaceProcessing];
    goto LABEL_9;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v6 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = [v3 localIdentifier];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[%@] already with FC version; skip", &v10, 0xCu);
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)nextAssetProcessingTask
{
  v3 = [(PHPhotoLibrary *)self->_photoLibrary countOfUnprocessedFaceCrops];
  if (v3 == self->_previousCountOfUnprocessedFaceCrops)
  {
    v14.receiver = self;
    v14.super_class = MADPhotosFaceTaskProvider;
    v4 = [(MADPhotosTaskProvider *)&v14 nextAssetProcessingTask];
    managementQueue = self->_managementQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001B3F80;
    v12[3] = &unk_100282F50;
    v12[4] = self;
    v6 = v4;
    v13 = v6;
    dispatch_sync(managementQueue, v12);
    v7 = v13;
    v8 = v6;
  }

  else
  {
    self->_previousCountOfUnprocessedFaceCrops = v3;
    if (MediaAnalysisLogLevel() >= 6)
    {
      v9 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        logPrefix = self->_logPrefix;
        *buf = 138412290;
        v16 = logPrefix;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Scheduling facecrop processing task", buf, 0xCu);
      }
    }

    v8 = [MADPhotosFaceCropProcessingTask taskWithPhotoLibrary:self->_photoLibrary gallery:self->_gallery];
  }

  return v8;
}

- (id)nextDownloadAssetProcessingTask
{
  v11.receiver = self;
  v11.super_class = MADPhotosFaceTaskProvider;
  v3 = [(MADPhotosTaskProvider *)&v11 nextDownloadAssetProcessingTask];
  managementQueue = self->_managementQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001B413C;
  v9[3] = &unk_100282F50;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(managementQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)nextClusterProcessingTask
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001B4324;
  v10 = sub_1001B4334;
  v11 = 0;
  managementQueue = self->_managementQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B433C;
  v5[3] = &unk_1002873A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(managementQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)retireTask:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MADPhotosFaceTaskProvider;
  [(MADPhotosTaskProvider *)&v10 retireTask:v4];
  managementQueue = self->_managementQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B4A14;
  v7[3] = &unk_100282F50;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(managementQueue, v7);
}

@end