@interface CPLCloudKitFetchExistingSharedScopeTask
- (CPLCloudKitFetchExistingSharedScopeTask)initWithController:(id)controller completionHandler:(id)handler;
- (void)_validateLastZoneIDInArray:(id)array currentUserID:(id)d;
- (void)runOperations;
@end

@implementation CPLCloudKitFetchExistingSharedScopeTask

- (CPLCloudKitFetchExistingSharedScopeTask)initWithController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = CPLCloudKitFetchExistingSharedScopeTask;
  v7 = [(CPLCloudKitTransportTask *)&v11 initWithController:controller];
  if (v7)
  {
    v8 = [handlerCopy copy];
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v8;
  }

  return v7;
}

- (void)_validateLastZoneIDInArray:(id)array currentUserID:(id)d
{
  arrayCopy = array;
  dCopy = d;
  v31 = 0;
  v8 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v31];
  v9 = v31;
  if (v8)
  {
    if ([arrayCopy count])
    {
      lastObject = [arrayCopy lastObject];
      [arrayCopy removeLastObject];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = sub_100003C0C();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          cpl_zoneName = [lastObject cpl_zoneName];
          *buf = 138543362;
          v33 = cpl_zoneName;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Checking if %{public}@ is a valid shared zone", buf, 0xCu);
        }
      }

      v13 = [[CPLCloudKitScope alloc] initWithZoneID:lastObject];
      controller = [(CPLCloudKitTransportTask *)self controller];
      v15 = [controller recordsToFetchToIdentifyCloudKitScope:v13 proposedScopeType:0 currentUserID:dCopy];
      if ([v15 count])
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000B0F80;
        v25[3] = &unk_100276F68;
        v25[4] = self;
        v26 = controller;
        v16 = &v27;
        v17 = v9;
        v18 = lastObject;
        v19 = v13;
        v27 = v19;
        v28 = dCopy;
        v29 = v18;
        v30 = arrayCopy;
        v20 = v19;
        lastObject = v18;
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
        v23 = arrayCopy;
        v16 = &v24;
        v24 = dCopy;
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