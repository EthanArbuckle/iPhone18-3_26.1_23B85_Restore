@interface CPLCloudKitFetchScopeListChangesTask
+ (id)descriptionForScopeListSyncAnchor:(id)a3;
- (CPLCloudKitFetchScopeListChangesTask)initWithController:(id)a3 scopeListSyncAnchor:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (void)_launchOperationForSharedDatabase:(BOOL)a3;
@end

@implementation CPLCloudKitFetchScopeListChangesTask

+ (id)descriptionForScopeListSyncAnchor:(id)a3
{
  v3 = [CPLCloudKitScopeListSyncAnchor cloudKitScopeListSyncAnchorWithScopeListSyncAnchor:a3];
  v4 = [v3 description];

  return v4;
}

- (CPLCloudKitFetchScopeListChangesTask)initWithController:(id)a3 scopeListSyncAnchor:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = CPLCloudKitFetchScopeListChangesTask;
  v13 = [(CPLCloudKitTransportTask *)&v21 initWithController:a3];
  if (v13)
  {
    v14 = [CPLCloudKitScopeListSyncAnchor cloudKitScopeListSyncAnchorWithScopeListSyncAnchor:v10];
    ckScopeListSyncAnchor = v13->_ckScopeListSyncAnchor;
    v13->_ckScopeListSyncAnchor = v14;

    v16 = objc_retainBlock(v11);
    progressHandler = v13->_progressHandler;
    v13->_progressHandler = v16;

    v18 = objc_retainBlock(v12);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v18;
  }

  return v13;
}

- (void)_launchOperationForSharedDatabase:(BOOL)a3
{
  v3 = a3;
  v37 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v37];
  v6 = v37;
  if (v5)
  {
    ckScopeListSyncAnchor = self->_ckScopeListSyncAnchor;
    if (v3)
    {
      [(CPLCloudKitScopeListSyncAnchor *)ckScopeListSyncAnchor sharedChangeToken];
    }

    else
    {
      [(CPLCloudKitScopeListSyncAnchor *)ckScopeListSyncAnchor privateChangeToken];
    }
    v8 = ;
    v9 = [[CKFetchDatabaseChangesOperation alloc] initWithPreviousServerChangeToken:v8];
    [v9 setFetchAllChanges:1];
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = sub_100004540;
    v35[4] = sub_100005384;
    v36 = objc_alloc_init(NSMutableDictionary);
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = sub_100004540;
    v33[4] = sub_100005384;
    v34 = objc_alloc_init(NSMutableArray);
    [(CPLCloudKitTransportTask *)self controller];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000B1D34;
    v10 = v28[3] = &unk_100276FD8;
    v29 = v10;
    v30 = self;
    v32 = v3;
    v31 = v35;
    [v9 setRecordZoneWithIDChangedBlock:v28];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000B1D98;
    v24[3] = &unk_100277000;
    v11 = v10;
    v25 = v11;
    v26 = self;
    v27 = v33;
    [v9 setRecordZoneWithIDWasDeletedBlock:v24];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000B1E08;
    v22[3] = &unk_100277028;
    v23 = v3;
    v22[4] = self;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000B1EC0;
    v18[3] = &unk_100277050;
    v18[4] = self;
    v12 = objc_retainBlock(v22);
    v19 = v12;
    v20 = v35;
    v21 = v33;
    [v9 setChangeTokenUpdatedBlock:v18];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B1FE8;
    v15[3] = &unk_100277078;
    v15[4] = self;
    v17 = v3;
    v13 = v12;
    v16 = v13;
    [v9 setFetchDatabaseChangesCompletionBlock:v15];
    if (v3)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    [(CPLCloudKitTransportTask *)self launchOperation:v9 type:v14 withContext:0];

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v35, 8);
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end