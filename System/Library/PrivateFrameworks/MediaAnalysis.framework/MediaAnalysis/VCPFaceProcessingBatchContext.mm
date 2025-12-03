@interface VCPFaceProcessingBatchContext
+ (id)batchContextWithPhotoLibrary:(id)library context:(id)context;
- (BOOL)downloadTimedout;
- (VCPFaceProcessingBatchContext)initWithPhotoLibrary:(id)library context:(id)context;
- (id)resourceForLocalIdentifier:(id)identifier;
- (void)storeResource:(id)resource resourceURL:(id)l isBestResource:(BOOL)bestResource requestDownload:(BOOL)download downloadStatus:(int)status forLocalIdentifier:(id)identifier;
- (void)updateLastestDownloadTimestamp;
@end

@implementation VCPFaceProcessingBatchContext

- (VCPFaceProcessingBatchContext)initWithPhotoLibrary:(id)library context:(id)context
{
  libraryCopy = library;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = VCPFaceProcessingBatchContext;
  v8 = [(VCPFaceProcessingBatchContext *)&v27 init];
  if (v8)
  {
    v9 = +[NSMutableSet set];
    processedAssets = v8->_processedAssets;
    v8->_processedAssets = v9;

    v11 = +[NSMutableSet set];
    unprocessedAssets = v8->_unprocessedAssets;
    v8->_unprocessedAssets = v11;

    v13 = +[NSMutableSet set];
    completedLocalIdentifiersFromComputeSync = v8->_completedLocalIdentifiersFromComputeSync;
    v8->_completedLocalIdentifiersFromComputeSync = v13;

    v15 = +[NSMutableDictionary dictionary];
    downloadRequests = v8->_downloadRequests;
    v8->_downloadRequests = v15;

    v17 = +[NSMutableDictionary dictionary];
    resources = v8->_resources;
    v8->_resources = v17;

    v19 = +[NSMutableDictionary dictionary];
    processingStatusMap = v8->_processingStatusMap;
    v8->_processingStatusMap = v19;

    v21 = [VCPFaceProcessingChangeBatch batchForPhotoLibrary:libraryCopy context:contextCopy];
    changeBatch = v8->_changeBatch;
    v8->_changeBatch = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.mediaanalysis.batchContextManagementQueue", v23);
    managementQueue = v8->_managementQueue;
    v8->_managementQueue = v24;

    v8->_timeout = 0;
  }

  return v8;
}

+ (id)batchContextWithPhotoLibrary:(id)library context:(id)context
{
  libraryCopy = library;
  contextCopy = context;
  v7 = [[VCPFaceProcessingBatchContext alloc] initWithPhotoLibrary:libraryCopy context:contextCopy];

  return v7;
}

- (id)resourceForLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000E58EC;
  v16 = sub_1000E58FC;
  v17 = 0;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E5904;
  block[3] = &unk_100283798;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(managementQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)storeResource:(id)resource resourceURL:(id)l isBestResource:(BOOL)bestResource requestDownload:(BOOL)download downloadStatus:(int)status forLocalIdentifier:(id)identifier
{
  resourceCopy = resource;
  lCopy = l;
  identifierCopy = identifier;
  v17 = identifierCopy;
  if (identifierCopy)
  {
    managementQueue = self->_managementQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E5B1C;
    block[3] = &unk_100286058;
    block[4] = self;
    v21 = identifierCopy;
    v22 = resourceCopy;
    v23 = lCopy;
    bestResourceCopy = bestResource;
    downloadCopy = download;
    statusCopy = status;
    dispatch_sync(managementQueue, block);
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v19 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v19))
    {
      *buf = 138412290;
      v28 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[VCPFaceProcessingBatchContext] Nil asset localIdentifier %@", buf, 0xCu);
    }
  }
}

- (void)updateLastestDownloadTimestamp
{
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E5C14;
  block[3] = &unk_100283210;
  block[4] = self;
  dispatch_sync(managementQueue, block);
}

- (BOOL)downloadTimedout
{
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E5D74;
  block[3] = &unk_100283210;
  block[4] = self;
  dispatch_sync(managementQueue, block);
  return self->_timeout;
}

@end