@interface MADVectorDatabaseChangeManager
+ (id)managerForPhotoLibrary:(id)library;
+ (id)sharedManagerForPhotoLibrary:(id)library;
- (MADVectorDatabaseChangeManager)initWithPhotoLibrary:(id)library;
- (int)publishPendingChanges;
- (int)updateAsset:(id)asset analysis:(id)analysis imageOnly:(BOOL)only vskResults:(id *)results;
- (int)updateAssetWithLocalIdentifier:(id)identifier analysis:(id)analysis;
- (void)addPendingEmbeddingResults:(id)results;
- (void)dealloc;
@end

@implementation MADVectorDatabaseChangeManager

- (MADVectorDatabaseChangeManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v15.receiver = self;
  v15.super_class = MADVectorDatabaseChangeManager;
  v6 = [(MADVectorDatabaseChangeManager *)&v15 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.mediaanalysis.changemanagement.vector", v7);
    managementQueue = v6->_managementQueue;
    v6->_managementQueue = v8;

    objc_storeStrong(&v6->_photoLibrary, library);
    v10 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:libraryCopy];
    vectorDatabase = v6->_vectorDatabase;
    v6->_vectorDatabase = v10;

    v12 = +[NSMutableArray array];
    pendingChanges = v6->_pendingChanges;
    v6->_pendingChanges = v12;
  }

  return v6;
}

+ (id)managerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy];

  return v4;
}

+ (id)sharedManagerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if ((atomic_load_explicit(&qword_1002B8158, memory_order_acquire) & 1) == 0)
  {
    v8 = libraryCopy;
    sub_100020E08();
    libraryCopy = v8;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000200C8;
  v16 = sub_1000200D8;
  v17 = 0;
  v4 = qword_1002B8150;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000200E0;
  v9[3] = &unk_100283178;
  v10 = libraryCopy;
  v11 = &v12;
  v5 = libraryCopy;
  dispatch_sync(v4, v9);
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

- (void)dealloc
{
  [(MADVectorDatabaseChangeManager *)self publishPendingChanges];
  v3.receiver = self;
  v3.super_class = MADVectorDatabaseChangeManager;
  [(MADVectorDatabaseChangeManager *)&v3 dealloc];
}

- (int)updateAsset:(id)asset analysis:(id)analysis imageOnly:(BOOL)only vskResults:(id *)results
{
  v8 = [MADVSKEmbeddingResults resultsFromAnalysis:analysis imageEmbeddingVersion:75 videoEmbeddingVersion:75 asset:asset imageOnly:only];
  v9 = v8;
  if (results)
  {
    v10 = v8;
    *results = v9;
  }

  [(MADVectorDatabaseChangeManager *)self addPendingEmbeddingResults:v9];

  return 0;
}

- (void)addPendingEmbeddingResults:(id)results
{
  resultsCopy = results;
  managementQueue = self->_managementQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002044C;
  v7[3] = &unk_100282BC8;
  v8 = resultsCopy;
  selfCopy = self;
  v6 = resultsCopy;
  dispatch_sync(managementQueue, v7);
}

- (int)updateAssetWithLocalIdentifier:(id)identifier analysis:(id)analysis
{
  identifierCopy = identifier;
  analysisCopy = analysis;
  identifierCopy = [NSString stringWithFormat:@"[VSKDBChangeManager][%@]", identifierCopy];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 138412290;
      v27 = identifierCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Updating asset", buf, 0xCu);
    }
  }

  v25 = 0;
  v10 = [VSKAsset mad_imageAssetWithLocalIdentifier:identifierCopy mediaAnalysisResults:analysisCopy error:&v25];
  v11 = v25;
  if (!v10 && MediaAnalysisLogLevel() >= 4)
  {
    v12 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      *buf = 138412546;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Unable to create image VSKAsset: %@", buf, 0x16u);
    }
  }

  v24 = 0;
  v13 = [VSKAsset mad_videoAssetWithLocalIdentifier:identifierCopy mediaAnalysisResults:analysisCopy error:&v24];
  v14 = v24;
  if (!v13 && MediaAnalysisLogLevel() >= 4)
  {
    v15 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 138412546;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Unable to create video VSKAsset: %@", buf, 0x16u);
    }
  }

  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020860;
  block[3] = &unk_1002832A0;
  v21 = v10;
  selfCopy = self;
  v23 = v13;
  v17 = v13;
  v18 = v10;
  dispatch_sync(managementQueue, block);

  return 0;
}

- (int)publishPendingChanges
{
  v3 = [NSString stringWithFormat:@"%d VSKAssets", [(NSMutableArray *)self->_pendingChanges count]];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000200C8;
  v18 = sub_1000200D8;
  v19 = 0;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020AF8;
  block[3] = &unk_1002832C8;
  block[4] = self;
  v5 = v3;
  v11 = v5;
  v12 = &v20;
  v13 = &v14;
  dispatch_sync(managementQueue, block);
  v6 = *(v21 + 6);
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v7 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        v8 = v15[5];
        *buf = 138412546;
        v25 = v5;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[VSKDBChangeManager] Failed to publish %@: %@", buf, 0x16u);
      }
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v6;
}

@end