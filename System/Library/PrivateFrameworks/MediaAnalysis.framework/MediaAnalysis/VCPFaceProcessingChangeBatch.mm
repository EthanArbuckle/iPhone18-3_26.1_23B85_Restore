@interface VCPFaceProcessingChangeBatch
+ (id)batchForPhotoLibrary:(id)a3 context:(id)a4;
- (BOOL)publishWithError:(id *)a3;
- (VCPFaceProcessingChangeBatch)initWithPhotoLibrary:(id)a3 context:(id)a4;
- (int)updateAsset:(id)a3 withAnalysis:(id)a4;
- (void)_publishPendingChanges;
@end

@implementation VCPFaceProcessingChangeBatch

- (VCPFaceProcessingChangeBatch)initWithPhotoLibrary:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v17.receiver = self;
    v17.super_class = VCPFaceProcessingChangeBatch;
    v9 = [(VCPFaceProcessingChangeBatch *)&v17 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_photoLibrary, a3);
      objc_storeStrong(&v10->_context, a4);
      v11 = +[NSMutableArray array];
      pendingChanges = v10->_pendingChanges;
      v10->_pendingChanges = v11;

      v13 = dispatch_queue_create("com.apple.mediaanalysisd.VCPFaceProcessingChangeBatch", 0);
      publishQueue = v10->_publishQueue;
      v10->_publishQueue = v13;
    }

    self = v10;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)batchForPhotoLibrary:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:v5 context:v6];

  return v7;
}

- (int)updateAsset:(id)a3 withAnalysis:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 vcp_version];
  v9 = [v6 photoLibrary];
  v10 = [v9 mad_faceProcessingInternalVersion];

  if (v8 == v10 && ([v7 vcp_types] & 4) != 0)
  {
    pendingChanges = self->_pendingChanges;
    v12 = [v7 vcp_results];
    v13 = [VCPFaceProcessingChangeEntry entryWithAsset:v6 andAnalysis:v12];
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

- (BOOL)publishWithError:(id *)a3
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
  block[6] = a3;
  dispatch_sync(publishQueue, block);
  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

@end