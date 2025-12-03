@interface VCPFaceProcessingChangeBatch
+ (id)batchForPhotoLibrary:(id)library context:(id)context;
- (BOOL)publishWithError:(id *)error;
- (VCPFaceProcessingChangeBatch)initWithPhotoLibrary:(id)library context:(id)context;
- (int)updateAsset:(id)asset withAnalysis:(id)analysis;
- (void)_publishPendingChanges;
@end

@implementation VCPFaceProcessingChangeBatch

- (VCPFaceProcessingChangeBatch)initWithPhotoLibrary:(id)library context:(id)context
{
  libraryCopy = library;
  contextCopy = context;
  if (libraryCopy)
  {
    v17.receiver = self;
    v17.super_class = VCPFaceProcessingChangeBatch;
    v9 = [(VCPFaceProcessingChangeBatch *)&v17 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_photoLibrary, library);
      objc_storeStrong(&v10->_context, context);
      v11 = +[NSMutableArray array];
      pendingChanges = v10->_pendingChanges;
      v10->_pendingChanges = v11;

      v13 = dispatch_queue_create("com.apple.mediaanalysisd.VCPFaceProcessingChangeBatch", 0);
      publishQueue = v10->_publishQueue;
      v10->_publishQueue = v13;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)batchForPhotoLibrary:(id)library context:(id)context
{
  libraryCopy = library;
  contextCopy = context;
  v7 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy context:contextCopy];

  return v7;
}

- (int)updateAsset:(id)asset withAnalysis:(id)analysis
{
  assetCopy = asset;
  analysisCopy = analysis;
  vcp_version = [analysisCopy vcp_version];
  photoLibrary = [assetCopy photoLibrary];
  mad_faceProcessingInternalVersion = [photoLibrary mad_faceProcessingInternalVersion];

  if (vcp_version == mad_faceProcessingInternalVersion && ([analysisCopy vcp_types] & 4) != 0)
  {
    pendingChanges = self->_pendingChanges;
    vcp_results = [analysisCopy vcp_results];
    v13 = [VCPFaceProcessingChangeEntry entryWithAsset:assetCopy andAnalysis:vcp_results];
    [(NSMutableArray *)pendingChanges addObject:v13];
  }

  return 0;
}

- (void)_publishPendingChanges
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_pendingChanges;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        [v6 publish];
        objc_autoreleasePoolPop(v7);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (BOOL)publishWithError:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [(NSMutableArray *)self->_pendingChanges count];
      *buf = 134217984;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "  Publishing PHAssetPropertySetFaceAnalysis for %lu assets", buf, 0xCu);
    }
  }

  publishQueue = self->_publishQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E47FC;
  block[3] = &unk_100286008;
  block[4] = self;
  block[5] = &v11;
  block[6] = error;
  dispatch_sync(publishQueue, block);
  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

@end