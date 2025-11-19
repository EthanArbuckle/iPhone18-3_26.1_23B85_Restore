@interface CPLCloudKitCleanupStagedScopeTask
- (BOOL)shouldLaunchAuxiliaryOperation;
- (CPLCloudKitCleanupStagedScopeTask)initWithController:(id)a3 stagedScope:(id)a4 stagingScope:(id)a5 destinationScope:(id)a6 transportScopeMapping:(id)a7 progressHandler:(id)a8 completionHandler:(id)a9;
- (id)auxiliaryOperationDidFinishWithError:(id)a3;
- (id)operationDidFinish:(id)a3 error:(id)a4;
- (id)operationDidFinishWithError:(id)a3;
- (void)_fetchAndMoveNextBatchWithUserRecordID:(id)a3;
- (void)_moveBatchRecordWithNames:(id)a3 userRecordID:(id)a4 operationID:(id)a5 moveBatchID:(id)a6 hasMore:(BOOL)a7;
- (void)_sendExitFeedbackWithSourceRecordIDs:(id)a3 destinationRecordIDs:(id)a4 moveError:(id)a5 operationID:(id)a6 moveBatchID:(id)a7;
- (void)dispatchAsync:(id)a3;
- (void)launchAuxiliaryOperation:(id)a3 type:(int64_t)a4 withContext:(id)a5;
- (void)launchOperation:(id)a3 type:(int64_t)a4 withContext:(id)a5 sourceBundleIdentifiers:(id)a6;
- (void)runAuxiliaryOperation;
- (void)runOperations;
- (void)updateContextWithBlock:(id)a3;
- (void)updateOneBatch;
- (void)updateProgress:(double)a3;
@end

@implementation CPLCloudKitCleanupStagedScopeTask

- (CPLCloudKitCleanupStagedScopeTask)initWithController:(id)a3 stagedScope:(id)a4 stagingScope:(id)a5 destinationScope:(id)a6 transportScopeMapping:(id)a7 progressHandler:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v28 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v34.receiver = self;
  v34.super_class = CPLCloudKitCleanupStagedScopeTask;
  v21 = [(CPLCloudKitTransportTask *)&v34 initWithController:v15];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_stagedScope, a4);
    objc_storeStrong(&v22->_stagingScope, a5);
    objc_storeStrong(&v22->_destinationScope, a6);
    [(CPLCloudKitTransportTask *)v22 setTransportScopeMapping:v18];
    v23 = [v19 copy];
    progressHandler = v22->_progressHandler;
    v22->_progressHandler = v23;

    from = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000A957C;
    v29[3] = &unk_100276C28;
    objc_copyWeak(&v32, &from);
    v30 = v19;
    v31 = v20;
    v25 = [v29 copy];
    completionHandler = v22->_completionHandler;
    v22->_completionHandler = v25;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
  }

  return v22;
}

- (void)_sendExitFeedbackWithSourceRecordIDs:(id)a3 destinationRecordIDs:(id)a4 moveError:(id)a5 operationID:(id)a6 moveBatchID:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v28 = [CPLCloudKitSendSharedLibraryExitFeedbackTask alloc];
  v17 = [(CPLCloudKitTransportTask *)self controller];
  v18 = [(CPLCloudKitScope *)self->_stagingCloudKitScope zoneID];
  destinationCloudKitScope = self->_destinationCloudKitScope;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001AD640;
  v31[3] = &unk_100276C50;
  v32 = v13;
  v33 = v12;
  v20 = v12;
  v21 = v13;
  v22 = [(CPLCloudKitSendSharedLibraryExitFeedbackTask *)v28 initWithController:v17 sourceRecordIDs:v16 destinationRecordIDs:v15 moveError:v14 operationID:v20 moveBatchID:v21 exitZoneID:v18 scope:destinationCloudKitScope completionHandler:v31];

  v23 = [(CPLCloudKitTransportTask *)self transportGroup];
  [(CPLCloudKitTransportTask *)v22 setTransportGroup:v23];

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

- (void)_moveBatchRecordWithNames:(id)a3 userRecordID:(id)a4 operationID:(id)a5 moveBatchID:(id)a6 hasMore:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v33 = a5;
  v31 = a6;
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  v32 = v12;
  v35 = [[CPLCloudKitMoveBackCopyHelper alloc] initWithUserRecordID:v12 scopeProvider:self];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = v11;
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
  v39 = v33;
  v42 = a7;
  v40 = v31;
  v41 = v32;
  v25 = v32;
  v26 = v31;
  v27 = v33;
  v28 = v14;
  v29 = v13;
  [(CPLCloudKitTransportTask *)self moveRecordsWithIDs:v29 followRemapping:0 sourceType:v23 destinationRecordIDs:v28 destinationType:v24 helper:v35 completionHandler:v36];
}

- (void)_fetchAndMoveNextBatchWithUserRecordID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = [(CPLCloudKitScope *)self->_stagingCloudKitScope zoneID];
    batchSize = self->_batchSize;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A9DB8;
    v10[3] = &unk_100276CA0;
    v10[4] = self;
    v11 = v4;
    v9 = [CPLCKPhotosSharedLibraryOperation getNextBatchToMoveOperationWithZoneID:v7 batchSize:batchSize completionHandler:v10];

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

  v3 = [(CPLCloudKitZoneIdentification *)self->_stagingZoneIdentification libraryInfoRecordName];
  if (v3)
  {
    v4 = [(CPLCloudKitZoneIdentification *)self->_stagingZoneIdentification recordIDWithRecordName:v3];
    v5 = [CKFetchRecordsOperation alloc];
    v17 = v4;
    v6 = [NSArray arrayWithObjects:&v17 count:1];
    v7 = [v5 initWithRecordIDs:v6];

    [v7 setShouldFetchAssetContent:0];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000AA154;
    v14 = &unk_100275080;
    v15 = self;
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

  v5 = [(CPLEngineScope *)self->_stagingScope scopeIdentifier];
  v6 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v5];
  stagingCloudKitScope = self->_stagingCloudKitScope;
  self->_stagingCloudKitScope = v6;

  if (self->_stagingCloudKitScope)
  {
    v8 = [(CPLEngineScope *)self->_destinationScope scopeIdentifier];
    v9 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v8];
    destinationCloudKitScope = self->_destinationCloudKitScope;
    self->_destinationCloudKitScope = v9;

    if (self->_destinationCloudKitScope)
    {
      v11 = [(CPLCloudKitTransportTask *)self controller];
      v12 = [v11 zoneIdentificationForCloudKitScope:self->_stagingCloudKitScope engineScope:self->_stagingScope];
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

  v16 = [(CPLEngineScope *)destinationScope scopeIdentifier];
  v17 = [CPLErrors cplErrorWithCode:32 description:@"Missing transport scope for %@", v16];
  completionHandler[2](completionHandler, v17);
}

- (void)dispatchAsync:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AA6FC;
  v5[3] = &unk_100272350;
  v6 = self;
  v7 = a3;
  v4.receiver = v6;
  v4.super_class = CPLCloudKitCleanupStagedScopeTask;
  v3 = v7;
  [(CPLCloudKitTransportTask *)&v4 dispatchAsync:v5];
}

- (void)launchOperation:(id)a3 type:(int64_t)a4 withContext:(id)a5 sourceBundleIdentifiers:(id)a6
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (self->_mainOperation)
  {
    sub_1001AE0EC(&self->_mainOperation, a2, self, v15, v16, v17, v18, v19, v21[0].receiver, v21[0].super_class, *&v21[1], v22, v23, v24, v25, v26, v27, vars0, vars8);
  }

  v20 = v14;
  objc_storeStrong(&self->_mainOperation, a3);
  v21[0].receiver = self;
  v21[0].super_class = CPLCloudKitCleanupStagedScopeTask;
  [(objc_super *)v21 launchOperation:v12 type:a4 withContext:v13 sourceBundleIdentifiers:v20];
  if ([(CPLCloudKitCleanupStagedScopeTask *)self shouldLaunchAuxiliaryOperation])
  {
    [(CPLCloudKitCleanupStagedScopeTask *)self runAuxiliaryOperation];
  }
}

- (id)operationDidFinish:(id)a3 error:(id)a4
{
  v10.receiver = self;
  v10.super_class = CPLCloudKitCleanupStagedScopeTask;
  v6 = a3;
  v7 = [(CPLCloudKitTransportTask *)&v10 operationDidFinish:v6 error:a4];
  mainOperation = self->_mainOperation;

  if (mainOperation == v6)
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

- (void)updateContextWithBlock:(id)a3
{
  v5 = a3;
  if (!self->_mainOperation)
  {
    sub_1001AE2CC(a2, self);
  }

  v6 = v5;
  [(CPLCloudKitTransportTask *)self updateContextWithBlock:v5 forOperation:?];
}

- (void)updateProgress:(double)a3
{
  if (!self->_mainOperation)
  {
    sub_1001AE3BC(a2, self, a3);
  }

  [(CPLCloudKitTransportTask *)self updateProgress:a3 forOperation:?];
}

- (id)operationDidFinishWithError:(id)a3
{
  v5 = a3;
  mainOperation = self->_mainOperation;
  if (!mainOperation)
  {
    sub_1001AE4AC(a2, self);
  }

  v7 = v5;
  v8 = [(CPLCloudKitCleanupStagedScopeTask *)self operationDidFinish:mainOperation error:v5];

  return v8;
}

- (void)launchAuxiliaryOperation:(id)a3 type:(int64_t)a4 withContext:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (self->_auxiliaryOperation)
  {
    sub_1001AE59C(self, a2);
  }

  v12 = v11;
  objc_storeStrong(&self->_auxiliaryOperation, a3);
  v13 = +[NSDate date];
  dateSinceLastAuxiliaryOperation = self->_dateSinceLastAuxiliaryOperation;
  self->_dateSinceLastAuxiliaryOperation = v13;

  v15 = [(CPLCloudKitTransportTask *)self sourceBundleIdentifier];
  v16 = v15;
  if (!v15)
  {
    a2 = [(CPLCloudKitTransportTask *)self controller];
    v16 = [a2 defaultSourceBundleIdentifier];
  }

  v19 = v16;
  v17 = [NSArray arrayWithObjects:&v19 count:1];
  v18.receiver = self;
  v18.super_class = CPLCloudKitCleanupStagedScopeTask;
  [(CPLCloudKitTransportTask *)&v18 launchOperation:v10 type:a4 withContext:v12 sourceBundleIdentifiers:v17];

  if (!v15)
  {
  }
}

- (id)auxiliaryOperationDidFinishWithError:(id)a3
{
  v5 = a3;
  auxiliaryOperation = self->_auxiliaryOperation;
  if (!auxiliaryOperation)
  {
    sub_1001AE678(a2, self);
  }

  v7 = v5;
  v8 = [(CPLCloudKitCleanupStagedScopeTask *)self operationDidFinish:auxiliaryOperation error:v5];
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