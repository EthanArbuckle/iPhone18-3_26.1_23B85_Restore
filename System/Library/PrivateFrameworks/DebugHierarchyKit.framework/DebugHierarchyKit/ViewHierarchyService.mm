@interface ViewHierarchyService
- (ViewHierarchyService)initWithDataSourceConnection:(id)connection runnablePid:(int)pid;
- (id)_metadata;
- (void)_enqueueAdditionalRequests;
- (void)_enqueueInitialRequest;
- (void)_enqueueRemainingUnfetchedPropertyValuesRequest;
- (void)_requestFailed:(id)failed;
- (void)_saveCompletedRequests;
- (void)captureTo:(id)to completionBlock:(id)block;
- (void)finishWithError:(id)error;
@end

@implementation ViewHierarchyService

- (ViewHierarchyService)initWithDataSourceConnection:(id)connection runnablePid:(int)pid
{
  connectionCopy = connection;
  v17.receiver = self;
  v17.super_class = ViewHierarchyService;
  v8 = [(ViewHierarchyService *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dataSourceConnection, connection);
    v10 = objc_alloc_init(DBGSnapshot);
    v11 = [DBGDataCoordinatorTargetHub coordinatorWithDataSourceConnection:connectionCopy];
    [v11 setShouldStoreCompletedRequests:1];
    v12 = [DBGSnapshotManager snapshotManagerWithSnapshot:v10 primaryDataCoordinator:v11];
    snapshotManager = v9->_snapshotManager;
    v9->_snapshotManager = v12;

    v9->_runnablePid = pid;
    v14 = dispatch_queue_create("CaptureQueue", 0);
    captureQueue = v9->_captureQueue;
    v9->_captureQueue = v14;

    [(DBGStandaloneDataSourceConnection *)v9->_dataSourceConnection setCaptureQueue:v9->_captureQueue];
  }

  return v9;
}

- (void)captureTo:(id)to completionBlock:(id)block
{
  toCopy = to;
  blockCopy = block;
  captureQueue = [(ViewHierarchyService *)self captureQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __50__ViewHierarchyService_captureTo_completionBlock___block_invoke;
  block[3] = &unk_243E8;
  block[4] = self;
  v12 = toCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = toCopy;
  dispatch_async(captureQueue, block);
}

void __50__ViewHierarchyService_captureTo_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];

  if (v2)
  {
    v5 = NSLocalizedDescriptionKey;
    v6 = @"A capture is already in progress";
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    v4 = [NSError errorWithDomain:@"com.apple.dt.ViewHierarchyService" code:-2 userInfo:v3];

    [*(a1 + 32) finishWithError:v4];
  }

  else
  {
    [*(a1 + 32) setDestination:*(a1 + 40)];
    [*(a1 + 32) setCompletionBlock:*(a1 + 48)];
    [*(a1 + 32) _enqueueInitialRequest];
  }
}

- (void)_enqueueInitialRequest
{
  platform = [(ViewHierarchyService *)self platform];
  v4 = platform;
  if (platform)
  {
    defaultPlatform = platform;
  }

  else
  {
    defaultPlatform = [(ViewHierarchyService *)self defaultPlatform];
  }

  v6 = defaultPlatform;

  v7 = [RequestFactory initialRequestForPlatform:v6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __46__ViewHierarchyService__enqueueInitialRequest__block_invoke;
  v10[3] = &unk_24410;
  v10[4] = self;
  [v7 setCompletion:v10];
  snapshotManager = [(ViewHierarchyService *)self snapshotManager];
  primaryDataCoordinator = [snapshotManager primaryDataCoordinator];
  [primaryDataCoordinator performRequest:v7];
}

void __46__ViewHierarchyService__enqueueInitialRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 status];
  v5 = *(a1 + 32);
  if (v4 == &dword_0 + 3)
  {
    [v5 _enqueueAdditionalRequests];
  }

  else
  {
    [v5 _requestFailed:v3];
  }
}

- (void)_enqueueAdditionalRequests
{
  snapshotManager = [(ViewHierarchyService *)self snapshotManager];
  snapshot = [snapshotManager snapshot];

  [RequestFactory additionalRequestsWithSnapshot:snapshot];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __50__ViewHierarchyService__enqueueAdditionalRequests__block_invoke;
  v7 = v6[3] = &unk_24438;
  selfCopy = self;
  v5 = v7;
  [v5 enumerateObjectsUsingBlock:v6];
}

void __50__ViewHierarchyService__enqueueAdditionalRequests__block_invoke(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  if ([*(a1 + 32) count] - 1 <= a3)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __50__ViewHierarchyService__enqueueAdditionalRequests__block_invoke_2;
    v10[3] = &unk_24410;
    v10[4] = *(a1 + 40);
    [v5 setCompletion:v10];
  }

  else
  {
    v6 = [*(a1 + 40) snapshotManager];
    v7 = [v6 primaryDataCoordinator];
    [v7 performRequest:v5];
  }

  v8 = [*(a1 + 40) snapshotManager];
  v9 = [v8 primaryDataCoordinator];
  [v9 performRequest:v5];
}

- (void)_enqueueRemainingUnfetchedPropertyValuesRequest
{
  snapshotManager = [(ViewHierarchyService *)self snapshotManager];
  snapshot = [snapshotManager snapshot];

  v5 = [RequestFactory requestForRemainingLazyPropertiesWithSnapshot:snapshot];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __71__ViewHierarchyService__enqueueRemainingUnfetchedPropertyValuesRequest__block_invoke;
  v8[3] = &unk_24410;
  v8[4] = self;
  [v5 setCompletion:v8];
  snapshotManager2 = [(ViewHierarchyService *)self snapshotManager];
  primaryDataCoordinator = [snapshotManager2 primaryDataCoordinator];
  [primaryDataCoordinator performRequest:v5];
}

void __71__ViewHierarchyService__enqueueRemainingUnfetchedPropertyValuesRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSourceConnection];
  [v4 closeConnection];

  v5 = [v3 status];
  v6 = *(a1 + 32);
  if (v5 == &dword_0 + 3)
  {
    [v6 _saveCompletedRequests];
  }

  else
  {
    [v6 _requestFailed:v3];
  }
}

- (void)_requestFailed:(id)failed
{
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Failed to capture view hierarchy";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v5 = [NSError errorWithDomain:@"com.apple.dt.ViewHierarchyService" code:-1 userInfo:v4];

  [(ViewHierarchyService *)self finishWithError:v5];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionBlock = [(ViewHierarchyService *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(ViewHierarchyService *)self completionBlock];
    (completionBlock2)[2](completionBlock2, errorCopy);

    [(ViewHierarchyService *)self setCompletionBlock:0];
  }
}

- (void)_saveCompletedRequests
{
  v3 = [[NSFileWrapper alloc] initDirectoryWithFileWrappers:&__NSDictionary0__struct];
  destination = [(ViewHierarchyService *)self destination];
  lastPathComponent = [destination lastPathComponent];
  [v3 setPreferredFilename:lastPathComponent];

  v6 = [[NSFileWrapper alloc] initDirectoryWithFileWrappers:&__NSDictionary0__struct];
  [v6 setPreferredFilename:@"RequestResponses"];
  snapshotManager = [(ViewHierarchyService *)self snapshotManager];
  primaryDataCoordinator = [snapshotManager primaryDataCoordinator];
  completedRequests = [primaryDataCoordinator completedRequests];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __46__ViewHierarchyService__saveCompletedRequests__block_invoke;
  v19[3] = &unk_24460;
  v20 = v6;
  v10 = v6;
  [completedRequests enumerateObjectsUsingBlock:v19];

  v11 = [v3 addFileWrapper:v10];
  v12 = [NSFileWrapper alloc];
  _metadata = [(ViewHierarchyService *)self _metadata];
  v14 = [v12 initRegularFileWithContents:_metadata];

  [v14 setPreferredFilename:@"metadata"];
  v15 = [v3 addFileWrapper:v14];
  destination2 = [(ViewHierarchyService *)self destination];
  v18 = 0;
  [v3 writeToURL:destination2 options:1 originalContentsURL:0 error:&v18];
  v17 = v18;

  [(ViewHierarchyService *)self finishWithError:v17];
}

void __46__ViewHierarchyService__saveCompletedRequests__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSFileWrapper alloc];
  v7 = [v5 rawResponseData];

  v10 = [v6 initRegularFileWithContents:v7];
  v8 = [NSString stringWithFormat:@"Response_%lu", a3];
  [v10 setPreferredFilename:v8];

  v9 = [*(a1 + 32) addFileWrapper:v10];
}

- (id)_metadata
{
  v11[0] = &off_2FA78;
  v10[0] = @"DocumentVersion";
  v10[1] = @"RunnablePID";
  v3 = [NSNumber numberWithInt:[(ViewHierarchyService *)self runnablePid]];
  v11[1] = v3;
  v10[2] = @"RunnableDisplayName";
  destination = [(ViewHierarchyService *)self destination];
  lastPathComponent = [destination lastPathComponent];
  v6 = [lastPathComponent stringByReplacingOccurrencesOfString:@".viewhierarchy" withString:&stru_28750];
  v11[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [NSPropertyListSerialization dataWithPropertyList:v7 format:100 options:0 error:0];

  return v8;
}

@end