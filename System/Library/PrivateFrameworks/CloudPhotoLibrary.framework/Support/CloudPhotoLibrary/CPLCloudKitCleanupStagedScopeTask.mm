@interface CPLCloudKitCleanupStagedScopeTask
- (BOOL)shouldLaunchAuxiliaryOperation;
- (CPLCloudKitCleanupStagedScopeTask)initWithController:(id)controller stagedScope:(id)scope stagingScope:(id)stagingScope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)auxiliaryOperationDidFinishWithError:(id)error;
- (id)operationDidFinish:(id)finish error:(id)error;
- (id)operationDidFinishWithError:(id)error;
- (void)_fetchAndMoveNextBatchWithUserRecordID:(id)d;
- (void)_moveBatchRecordWithNames:(id)names userRecordID:(id)d operationID:(id)iD moveBatchID:(id)batchID hasMore:(BOOL)more;
- (void)_sendExitFeedbackWithSourceRecordIDs:(id)ds destinationRecordIDs:(id)iDs moveError:(id)error operationID:(id)d moveBatchID:(id)iD;
- (void)dispatchAsync:(id)async;
- (void)launchAuxiliaryOperation:(id)operation type:(int64_t)type withContext:(id)context;
- (void)launchOperation:(id)operation type:(int64_t)type withContext:(id)context sourceBundleIdentifiers:(id)identifiers;
- (void)runAuxiliaryOperation;
- (void)runOperations;
- (void)updateContextWithBlock:(id)block;
- (void)updateOneBatch;
- (void)updateProgress:(double)progress;
@end

@implementation CPLCloudKitCleanupStagedScopeTask

- (CPLCloudKitCleanupStagedScopeTask)initWithController:(id)controller stagedScope:(id)scope stagingScope:(id)stagingScope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler
{
  controllerCopy = controller;
  scopeCopy = scope;
  stagingScopeCopy = stagingScope;
  destinationScopeCopy = destinationScope;
  mappingCopy = mapping;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v34.receiver = self;
  v34.super_class = CPLCloudKitCleanupStagedScopeTask;
  v21 = [(CPLCloudKitTransportTask *)&v34 initWithController:controllerCopy];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_stagedScope, scope);
    objc_storeStrong(&v22->_stagingScope, stagingScope);
    objc_storeStrong(&v22->_destinationScope, destinationScope);
    [(CPLCloudKitTransportTask *)v22 setTransportScopeMapping:mappingCopy];
    v23 = [handlerCopy copy];
    progressHandler = v22->_progressHandler;
    v22->_progressHandler = v23;

    from = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000A957C;
    v29[3] = &unk_100276C28;
    objc_copyWeak(&v32, &from);
    v30 = handlerCopy;
    v31 = completionHandlerCopy;
    v25 = [v29 copy];
    completionHandler = v22->_completionHandler;
    v22->_completionHandler = v25;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
  }

  return v22;
}

- (void)_sendExitFeedbackWithSourceRecordIDs:(id)ds destinationRecordIDs:(id)iDs moveError:(id)error operationID:(id)d moveBatchID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  iDsCopy = iDs;
  dsCopy = ds;
  v28 = [CPLCloudKitSendSharedLibraryExitFeedbackTask alloc];
  controller = [(CPLCloudKitTransportTask *)self controller];
  zoneID = [(CPLCloudKitScope *)self->_stagingCloudKitScope zoneID];
  destinationCloudKitScope = self->_destinationCloudKitScope;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001AD640;
  v31[3] = &unk_100276C50;
  v32 = iDCopy;
  v33 = dCopy;
  v20 = dCopy;
  v21 = iDCopy;
  v22 = [(CPLCloudKitSendSharedLibraryExitFeedbackTask *)v28 initWithController:controller sourceRecordIDs:dsCopy destinationRecordIDs:iDsCopy moveError:errorCopy operationID:v20 moveBatchID:v21 exitZoneID:zoneID scope:destinationCloudKitScope completionHandler:v31];

  transportGroup = [(CPLCloudKitTransportTask *)self transportGroup];
  [(CPLCloudKitTransportTask *)v22 setTransportGroup:transportGroup];

  v24 = dispatch_get_global_queue(0, 0);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000A9894;
  v29[3] = &unk_100271F40;
  v30 = v22;
  v25 = v29;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B6C;
  block[3] = &unk_100271E98;
  v35 = v25;
  v26 = v22;
  v27 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v24, v27);
}

- (void)_moveBatchRecordWithNames:(id)names userRecordID:(id)d operationID:(id)iD moveBatchID:(id)batchID hasMore:(BOOL)more
{
  namesCopy = names;
  dCopy = d;
  iDCopy = iD;
  batchIDCopy = batchID;
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v32 = dCopy;
  v35 = [[CPLCloudKitMoveBackCopyHelper alloc] initWithUserRecordID:dCopy scopeProvider:self];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = namesCopy;
  v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v44;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        v21 = [(CPLCloudKitScope *)self->_stagingCloudKitScope recordIDWithRecordName:v20];
        [v13 addObject:v21];
        v22 = [(CPLCloudKitScope *)self->_destinationCloudKitScope recordIDWithRecordName:v20];
        [v14 addObject:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v17);
  }

  v30 = v15;

  v23 = CPLCloudKitOperationTypeForScope(self->_stagingCloudKitScope);
  v24 = CPLCloudKitOperationTypeForScope(self->_destinationCloudKitScope);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000A9BA8;
  v36[3] = &unk_100276C78;
  v36[4] = self;
  v37 = v13;
  v38 = v14;
  v39 = iDCopy;
  moreCopy = more;
  v40 = batchIDCopy;
  v41 = v32;
  v25 = v32;
  v26 = batchIDCopy;
  v27 = iDCopy;
  v28 = v14;
  v29 = v13;
  [(CPLCloudKitTransportTask *)self moveRecordsWithIDs:v29 followRemapping:0 sourceType:v23 destinationRecordIDs:v28 destinationType:v24 helper:v35 completionHandler:v36];
}

- (void)_fetchAndMoveNextBatchWithUserRecordID:(id)d
{
  dCopy = d;
  v12 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v12];
  v6 = v12;
  if (v5)
  {
    zoneID = [(CPLCloudKitScope *)self->_stagingCloudKitScope zoneID];
    batchSize = self->_batchSize;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A9DB8;
    v10[3] = &unk_100276CA0;
    v10[4] = self;
    v11 = dCopy;
    v9 = [CPLCKPhotosSharedLibraryOperation getNextBatchToMoveOperationWithZoneID:zoneID batchSize:batchSize completionHandler:v10];

    [(CPLCloudKitTransportTask *)self launchOperation:v9 type:CPLCloudKitOperationTypeForScope(self->_stagingCloudKitScope) withContext:0];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)runAuxiliaryOperation
{
  if (!self->_mainOperation)
  {
    sub_1001ADEA8();
  }

  libraryInfoRecordName = [(CPLCloudKitZoneIdentification *)self->_stagingZoneIdentification libraryInfoRecordName];
  if (libraryInfoRecordName)
  {
    v4 = [(CPLCloudKitZoneIdentification *)self->_stagingZoneIdentification recordIDWithRecordName:libraryInfoRecordName];
    v5 = [CKFetchRecordsOperation alloc];
    v17 = v4;
    v6 = [NSArray arrayWithObjects:&v17 count:1];
    v7 = [v5 initWithRecordIDs:v6];

    [v7 setShouldFetchAssetContent:0];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000AA154;
    v14 = &unk_100275080;
    selfCopy = self;
    v16 = v4;
    v8 = v4;
    [v7 setFetchRecordsCompletionBlock:&v11];
    [(CPLCloudKitCleanupStagedScopeTask *)self launchAuxiliaryOperation:v7 type:[(CPLCloudKitZoneIdentification *)self->_stagingZoneIdentification operationType:v11] withContext:0];
  }

  else
  {
    v9 = +[NSDate date];
    dateSinceLastAuxiliaryOperation = self->_dateSinceLastAuxiliaryOperation;
    self->_dateSinceLastAuxiliaryOperation = v9;
  }
}

- (void)runOperations
{
  self->_batchSize = 100;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"CPLCleanupStagedScopeBatchSize"];

  if (v4 >= 1)
  {
    sub_1001ADF70(v4, &self->_batchSize);
  }

  scopeIdentifier = [(CPLEngineScope *)self->_stagingScope scopeIdentifier];
  v6 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];
  stagingCloudKitScope = self->_stagingCloudKitScope;
  self->_stagingCloudKitScope = v6;

  if (self->_stagingCloudKitScope)
  {
    scopeIdentifier2 = [(CPLEngineScope *)self->_destinationScope scopeIdentifier];
    v9 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier2];
    destinationCloudKitScope = self->_destinationCloudKitScope;
    self->_destinationCloudKitScope = v9;

    if (self->_destinationCloudKitScope)
    {
      controller = [(CPLCloudKitTransportTask *)self controller];
      v12 = [controller zoneIdentificationForCloudKitScope:self->_stagingCloudKitScope engineScope:self->_stagingScope];
      stagingZoneIdentification = self->_stagingZoneIdentification;
      self->_stagingZoneIdentification = v12;

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000AA624;
      v18[3] = &unk_100274018;
      v18[4] = self;
      [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v18];
      return;
    }

    completionHandler = self->_completionHandler;
    destinationScope = self->_destinationScope;
  }

  else
  {
    completionHandler = self->_completionHandler;
    destinationScope = self->_stagingScope;
  }

  scopeIdentifier3 = [(CPLEngineScope *)destinationScope scopeIdentifier];
  v17 = [CPLErrors cplErrorWithCode:32 description:@"Missing transport scope for %@", scopeIdentifier3];
  completionHandler[2](completionHandler, v17);
}

- (void)dispatchAsync:(id)async
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AA6FC;
  v5[3] = &unk_100272350;
  selfCopy = self;
  asyncCopy = async;
  v4.receiver = selfCopy;
  v4.super_class = CPLCloudKitCleanupStagedScopeTask;
  v3 = asyncCopy;
  [(CPLCloudKitTransportTask *)&v4 dispatchAsync:v5];
}

- (void)launchOperation:(id)operation type:(int64_t)type withContext:(id)context sourceBundleIdentifiers:(id)identifiers
{
  operationCopy = operation;
  contextCopy = context;
  identifiersCopy = identifiers;
  if (self->_mainOperation)
  {
    sub_1001AE0EC(&self->_mainOperation, a2, self, v15, v16, v17, v18, v19, v21[0].receiver, v21[0].super_class, *&v21[1], v22, v23, v24, v25, v26, v27, vars0, vars8);
  }

  v20 = identifiersCopy;
  objc_storeStrong(&self->_mainOperation, operation);
  v21[0].receiver = self;
  v21[0].super_class = CPLCloudKitCleanupStagedScopeTask;
  [(objc_super *)v21 launchOperation:operationCopy type:type withContext:contextCopy sourceBundleIdentifiers:v20];
  if ([(CPLCloudKitCleanupStagedScopeTask *)self shouldLaunchAuxiliaryOperation])
  {
    [(CPLCloudKitCleanupStagedScopeTask *)self runAuxiliaryOperation];
  }
}

- (id)operationDidFinish:(id)finish error:(id)error
{
  v10.receiver = self;
  v10.super_class = CPLCloudKitCleanupStagedScopeTask;
  finishCopy = finish;
  v7 = [(CPLCloudKitTransportTask *)&v10 operationDidFinish:finishCopy error:error];
  mainOperation = self->_mainOperation;

  if (mainOperation == finishCopy)
  {
    self->_mainOperation = 0;
  }

  return v7;
}

- (void)updateOneBatch
{
  if (!self->_mainOperation)
  {
    sub_1001AE1DC(a2, self);
  }

  [(CPLCloudKitTransportTask *)self updateOneBatchForOperation:?];
}

- (void)updateContextWithBlock:(id)block
{
  blockCopy = block;
  if (!self->_mainOperation)
  {
    sub_1001AE2CC(a2, self);
  }

  v6 = blockCopy;
  [(CPLCloudKitTransportTask *)self updateContextWithBlock:blockCopy forOperation:?];
}

- (void)updateProgress:(double)progress
{
  if (!self->_mainOperation)
  {
    sub_1001AE3BC(a2, self, progress);
  }

  [(CPLCloudKitTransportTask *)self updateProgress:progress forOperation:?];
}

- (id)operationDidFinishWithError:(id)error
{
  errorCopy = error;
  mainOperation = self->_mainOperation;
  if (!mainOperation)
  {
    sub_1001AE4AC(a2, self);
  }

  v7 = errorCopy;
  v8 = [(CPLCloudKitCleanupStagedScopeTask *)self operationDidFinish:mainOperation error:errorCopy];

  return v8;
}

- (void)launchAuxiliaryOperation:(id)operation type:(int64_t)type withContext:(id)context
{
  operationCopy = operation;
  contextCopy = context;
  if (self->_auxiliaryOperation)
  {
    sub_1001AE59C(self, a2);
  }

  v12 = contextCopy;
  objc_storeStrong(&self->_auxiliaryOperation, operation);
  v13 = +[NSDate date];
  dateSinceLastAuxiliaryOperation = self->_dateSinceLastAuxiliaryOperation;
  self->_dateSinceLastAuxiliaryOperation = v13;

  sourceBundleIdentifier = [(CPLCloudKitTransportTask *)self sourceBundleIdentifier];
  defaultSourceBundleIdentifier = sourceBundleIdentifier;
  if (!sourceBundleIdentifier)
  {
    a2 = [(CPLCloudKitTransportTask *)self controller];
    defaultSourceBundleIdentifier = [a2 defaultSourceBundleIdentifier];
  }

  v19 = defaultSourceBundleIdentifier;
  v17 = [NSArray arrayWithObjects:&v19 count:1];
  v18.receiver = self;
  v18.super_class = CPLCloudKitCleanupStagedScopeTask;
  [(CPLCloudKitTransportTask *)&v18 launchOperation:operationCopy type:type withContext:v12 sourceBundleIdentifiers:v17];

  if (!sourceBundleIdentifier)
  {
  }
}

- (id)auxiliaryOperationDidFinishWithError:(id)error
{
  errorCopy = error;
  auxiliaryOperation = self->_auxiliaryOperation;
  if (!auxiliaryOperation)
  {
    sub_1001AE678(a2, self);
  }

  v7 = errorCopy;
  v8 = [(CPLCloudKitCleanupStagedScopeTask *)self operationDidFinish:auxiliaryOperation error:errorCopy];
  v9 = self->_auxiliaryOperation;
  self->_auxiliaryOperation = 0;

  return v8;
}

- (BOOL)shouldLaunchAuxiliaryOperation
{
  dateSinceLastAuxiliaryOperation = self->_dateSinceLastAuxiliaryOperation;
  if (!dateSinceLastAuxiliaryOperation)
  {
    return 1;
  }

  [(NSDate *)dateSinceLastAuxiliaryOperation timeIntervalSinceNow];
  return v3 < -30.0;
}

@end