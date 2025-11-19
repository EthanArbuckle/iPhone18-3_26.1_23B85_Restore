@interface CPLCloudKitFetchExistingSharedScopeTask
- (CPLCloudKitFetchExistingSharedScopeTask)initWithController:(id)a3 completionHandler:(id)a4;
- (void)_validateLastZoneIDInArray:(id)a3 currentUserID:(id)a4;
- (void)runOperations;
@end

@implementation CPLCloudKitFetchExistingSharedScopeTask

- (CPLCloudKitFetchExistingSharedScopeTask)initWithController:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = CPLCloudKitFetchExistingSharedScopeTask;
  v7 = [(CPLCloudKitTransportTask *)&v11 initWithController:a3];
  if (v7)
  {
    v8 = [v6 copy];
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v8;
  }

  return v7;
}

- (void)_validateLastZoneIDInArray:(id)a3 currentUserID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v8 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v31];
  v9 = v31;
  if (v8)
  {
    if ([v6 count])
    {
      v10 = [v6 lastObject];
      [v6 removeLastObject];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = sub_100003C0C();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 cpl_zoneName];
          *buf = 138543362;
          v33 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Checking if %{public}@ is a valid shared zone", buf, 0xCu);
        }
      }

      v13 = [[CPLCloudKitScope alloc] initWithZoneID:v10];
      v14 = [(CPLCloudKitTransportTask *)self controller];
      v15 = [v14 recordsToFetchToIdentifyCloudKitScope:v13 proposedScopeType:0 currentUserID:v7];
      if ([v15 count])
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000B0F80;
        v25[3] = &unk_100276F68;
        v25[4] = self;
        v26 = v14;
        v16 = &v27;
        v17 = v9;
        v18 = v10;
        v19 = v13;
        v27 = v19;
        v28 = v7;
        v29 = v18;
        v30 = v6;
        v20 = v19;
        v10 = v18;
        v9 = v17;
        v21 = &v26;
        [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v15 fetchResources:1 inScope:v20 completionHandler:v25];
      }

      else
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000B13A8;
        v22[3] = &unk_1002721A0;
        v22[4] = self;
        v21 = &v23;
        v23 = v6;
        v16 = &v24;
        v24 = v7;
        [(CPLCloudKitTransportTask *)self dispatchAsync:v22];
      }
    }

    else
    {
      sub_1001AF6B8(self);
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)runOperations
{
  v6 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v6];
  v4 = v6;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000B148C;
    v5[3] = &unk_100274018;
    v5[4] = self;
    [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v5];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end