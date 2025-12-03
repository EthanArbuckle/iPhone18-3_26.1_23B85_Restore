@interface CPLCloudKitCreateScopeTask
- (CPLCloudKitCreateScopeTask)initWithController:(id)controller scope:(id)scope completionHandler:(id)handler;
- (id)scope;
- (void)_clearPartiallyCreatedZoneIfNecessary;
- (void)_createCKShare:(id)share andRootRecord:(id)record currentUserID:(id)d withCompletionHandler:(id)handler;
- (void)_createCKShareWithCompletionHandler:(id)handler;
- (void)_createCollectionShareWithScopeChange:(id)change completionHandler:(id)handler;
- (void)_createLibraryShareWithScopeChange:(id)change completionHandler:(id)handler;
- (void)_createLibraryWithScopeChange:(id)change completionHandler:(id)handler;
- (void)_createMomentShareWithScopeChange:(id)change completionHandler:(id)handler;
- (void)_createZoneWithCompletionHandler:(id)handler;
- (void)_runOperations;
- (void)runOperations;
@end

@implementation CPLCloudKitCreateScopeTask

- (CPLCloudKitCreateScopeTask)initWithController:(id)controller scope:(id)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = CPLCloudKitCreateScopeTask;
  v9 = [(CPLCloudKitManageScopeTask *)&v13 initWithController:controller scope:scope];
  if (v9)
  {
    v10 = [handlerCopy copy];
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = v10;
  }

  return v9;
}

- (id)scope
{
  updatedScope = self->_updatedScope;
  if (updatedScope)
  {
    scope = updatedScope;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CPLCloudKitCreateScopeTask;
    scope = [(CPLCloudKitManageScopeTask *)&v5 scope];
  }

  return scope;
}

- (void)_clearPartiallyCreatedZoneIfNecessary
{
  identificationToCleanIfNecessary = self->_identificationToCleanIfNecessary;
  if (identificationToCleanIfNecessary && [(CPLCloudKitZoneIdentification *)identificationToCleanIfNecessary supportsZoneDelete])
  {
    zoneID = [(CPLCloudKitZoneIdentification *)self->_identificationToCleanIfNecessary zoneID];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_100003744();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = zoneID;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will try to delete partially created zone %{public}@", &buf, 0xCu);
      }
    }

    v6 = [CPLCloudKitDeleteTransportScopeTask alloc];
    controller = [(CPLCloudKitTransportTask *)self controller];
    cloudKitScope = [(CPLCloudKitZoneIdentification *)self->_identificationToCleanIfNecessary cloudKitScope];
    engineScope = [(CPLCloudKitZoneIdentification *)self->_identificationToCleanIfNecessary engineScope];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10019A67C;
    v19[3] = &unk_100272468;
    v20 = zoneID;
    v10 = zoneID;
    v11 = [(CPLCloudKitDeleteTransportScopeTask *)v6 initWithController:controller cloudKitScope:cloudKitScope scope:engineScope completionHandler:v19];

    transportGroup = [(CPLCloudKitTransportTask *)self transportGroup];
    [(CPLCloudKitTransportTask *)v11 setTransportGroup:transportGroup];

    v13 = dispatch_get_global_queue(0, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100049D98;
    v17[3] = &unk_100271F40;
    v18 = v11;
    v14 = v17;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v22 = sub_100002958;
    v23 = &unk_100271E98;
    v24 = v14;
    v15 = v11;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
    dispatch_async(v13, v16);
  }
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100049E0C;
  v2[3] = &unk_100274458;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getTemporaryFolderWithCompletionHandler:v2];
}

- (void)_runOperations
{
  v11 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v11];
  v4 = v11;
  v5 = v4;
  if (v3)
  {
    v10 = v4;
    v6 = [(CPLCloudKitManageScopeTask *)self checkScopeIsValidWithError:&v10];
    v7 = v10;

    if (v6)
    {
      identification = [(CPLCloudKitManageScopeTask *)self identification];
      if ([identification supportsZoneCreation])
      {
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100049FFC;
        v9[3] = &unk_100272468;
        v9[4] = self;
        [identification validateCreateScopeTask:self completionHandler:v9];
      }

      else
      {
        sub_10019AA7C(self);
      }
    }

    else
    {
      (*(self->_completionHandler + 2))();
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
    v7 = v5;
  }
}

- (void)_createCKShare:(id)share andRootRecord:(id)record currentUserID:(id)d withCompletionHandler:(id)handler
{
  shareCopy = share;
  recordCopy = record;
  dCopy = d;
  handlerCopy = handler;
  v28 = 0;
  v14 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v28];
  v15 = v28;
  if (v14)
  {
    if (recordCopy)
    {
      v30[0] = shareCopy;
      v30[1] = recordCopy;
      v16 = v30;
      v17 = 2;
    }

    else
    {
      v29 = shareCopy;
      v16 = &v29;
      v17 = 1;
    }

    v18 = [NSArray arrayWithObjects:v16 count:v17];
    v19 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v18 recordIDsToDelete:0];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004A878;
    v22[3] = &unk_1002744D0;
    v22[4] = self;
    v23 = v18;
    v27 = handlerCopy;
    v24 = shareCopy;
    v25 = dCopy;
    v26 = recordCopy;
    v20 = v18;
    [v19 setModifyRecordsCompletionBlock:v22];
    cloudKitScope = [(CPLCloudKitManageScopeTask *)self cloudKitScope];
    [(CPLCloudKitTransportTask *)self launchOperation:v19 type:CPLCloudKitOperationTypeForScope(cloudKitScope) withContext:0];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

- (void)_createCKShareWithCompletionHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004ADA0;
  v5[3] = &unk_100274520;
  selfCopy = self;
  handlerCopy = handler;
  v8 = a2;
  v4 = handlerCopy;
  [(CPLCloudKitTransportTask *)selfCopy getUserRecordIDFetchIfNecessaryWithCompletionHandler:v5];
}

- (void)_createZoneWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v23 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v23];
  v6 = v23;
  if (v5)
  {
    cloudKitScope = [(CPLCloudKitManageScopeTask *)self cloudKitScope];
    databaseScope = [cloudKitScope databaseScope];
    controller = [(CPLCloudKitTransportTask *)self controller];
    zoneID = [cloudKitScope zoneID];
    v11 = [controller shouldIgnoreZoneWithZoneID:zoneID];

    if (v11)
    {
      zoneID2 = [cloudKitScope zoneID];
      cpl_zoneName = [zoneID2 cpl_zoneName];
      v14 = [CPLErrors cplErrorWithCode:38 description:@"Zone %@ is not supported by this engine", cpl_zoneName];

      handlerCopy[2](handlerCopy, v14);
    }

    else
    {
      v15 = [CKModifyRecordZonesOperation alloc];
      v16 = [cloudKitScope zone];
      v24 = v16;
      v17 = [NSArray arrayWithObjects:&v24 count:1];
      v14 = [v15 initWithRecordZonesToSave:v17 recordZoneIDsToDelete:0];

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10004B4EC;
      v19[3] = &unk_100274570;
      v19[4] = self;
      v21 = handlerCopy;
      v22 = databaseScope;
      v18 = cloudKitScope;
      v20 = v18;
      [v14 setModifyRecordZonesCompletionBlock:v19];
      [(CPLCloudKitTransportTask *)self launchOperation:v14 type:CPLCloudKitOperationTypeForScope(v18) withContext:0];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, v6);
  }
}

- (void)_createMomentShareWithScopeChange:(id)change completionHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004BB78;
  v5[3] = &unk_1002724D0;
  selfCopy = self;
  handlerCopy = handler;
  v4 = handlerCopy;
  [(CPLCloudKitCreateScopeTask *)selfCopy _createZoneWithCompletionHandler:v5];
}

- (void)_createLibraryWithScopeChange:(id)change completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004BC60;
  v8[3] = &unk_1002724D0;
  changeCopy = change;
  handlerCopy = handler;
  v6 = changeCopy;
  v7 = handlerCopy;
  [(CPLCloudKitCreateScopeTask *)self _createZoneWithCompletionHandler:v8];
}

- (void)_createLibraryShareWithScopeChange:(id)change completionHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004BD90;
  v5[3] = &unk_1002724D0;
  selfCopy = self;
  handlerCopy = handler;
  v4 = handlerCopy;
  [(CPLCloudKitCreateScopeTask *)selfCopy _createZoneWithCompletionHandler:v5];
}

- (void)_createCollectionShareWithScopeChange:(id)change completionHandler:(id)handler
{
  handlerCopy = handler;
  if (CPLIsCollectionShareFeatureEnabled())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004BE94;
    v7[3] = &unk_1002724D0;
    v7[4] = self;
    v8 = handlerCopy;
    [(CPLCloudKitCreateScopeTask *)self _createZoneWithCompletionHandler:v7];
  }

  else
  {
    v6 = [CPLErrors cplErrorWithCode:1002 description:@"Feature is disabled"];
    (*(handlerCopy + 2))(handlerCopy, 0, v6);
  }
}

@end