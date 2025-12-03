@interface CPLCloudKitGetScopeInfoTask
- (CPLCloudKitGetScopeInfoTask)initWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 previousScopeChange:(id)change completionHandler:(id)handler;
- (void)_checkAccountEPPCapabilityWithCompletionHandler:(id)handler;
- (void)_determineScopeTypeAndFetchLibraryInfoWithCurrentUserID:(id)d;
- (void)_determineSharedScopeFromFetchedRecords:(id)records scopeChange:(id)change zoneIdentification:(id)identification currentUserID:(id)d;
- (void)getScopeInfoWithCurrentUserID:(id)d completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitGetScopeInfoTask

- (CPLCloudKitGetScopeInfoTask)initWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 previousScopeChange:(id)change completionHandler:(id)handler
{
  scopeCopy = scope;
  v14 = a5;
  changeCopy = change;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = CPLCloudKitGetScopeInfoTask;
  v17 = [(CPLCloudKitTransportTask *)&v21 initWithController:controller];
  if (v17)
  {
    v18 = [handlerCopy copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    objc_storeStrong(&v17->_cloudKitScope, scope);
    v17->_originalScopeType = [v14 scopeType];
    objc_storeStrong(&v17->_scope, a5);
    objc_storeStrong(&v17->_previousScopeChange, change);
  }

  return v17;
}

- (void)_checkAccountEPPCapabilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_cloudKitScope)
  {
    goto LABEL_4;
  }

  scope = [(CPLCloudKitGetScopeInfoTask *)self scope];
  scopeIdentifier = [scope scopeIdentifier];
  mainScopeIdentifier = [(CPLCloudKitTransportTask *)self mainScopeIdentifier];
  v8 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v8)
  {
    cloudKitScope = self->_cloudKitScope;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000AF260;
    v10[3] = &unk_100276E00;
    v10[4] = self;
    v11 = handlerCopy;
    [(CPLCloudKitTransportTask *)self checkEPPCapabilityIfNecessaryForCloudKitScope:cloudKitScope completionHandler:v10];
  }

  else
  {
LABEL_4:
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_determineSharedScopeFromFetchedRecords:(id)records scopeChange:(id)change zoneIdentification:(id)identification currentUserID:(id)d
{
  recordsCopy = records;
  changeCopy = change;
  dCopy = d;
  libraryInfoRecordID = [identification libraryInfoRecordID];
  if (libraryInfoRecordID)
  {
    v13 = [recordsCopy objectForKeyedSubscript:libraryInfoRecordID];
    if (v13)
    {
      v14 = [objc_opt_class() sharedCloudKitScopeFromLibraryInfoRecord:v13 userRecordID:dCopy];
      sharedScope = self->_sharedScope;
      self->_sharedScope = v14;
    }
  }
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000AF5A4;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

- (void)getScopeInfoWithCurrentUserID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v23 = 0;
  v8 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v23];
  v9 = v23;
  if (v8)
  {
    cloudKitScope = self->_cloudKitScope;
    if (cloudKitScope && (-[CPLCloudKitScope zone](cloudKitScope, "zone"), v11 = objc_claimAutoreleasedReturnValue(), [v11 zoneID], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x3032000000;
      v21[3] = sub_100004530;
      v21[4] = sub_10000537C;
      controller = [(CPLCloudKitTransportTask *)self controller];
      v22 = [controller zoneIdentificationForCloudKitScope:self->_cloudKitScope engineScope:self->_scope];

      v14 = self->_cloudKitScope;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000AFA20;
      v17[3] = &unk_100276EA0;
      v17[4] = self;
      v20 = v21;
      v19 = handlerCopy;
      v18 = dCopy;
      [(CPLCloudKitTransportTask *)self fetchZoneForScope:v14 completionHandler:v17];

      _Block_object_dispose(v21, 8);
    }

    else
    {
      originalScopeType = self->_originalScopeType;
      v16 = [CPLErrors cplErrorWithCode:32 description:@"No CloudKit scope for %@", self->_scope];
      (*(handlerCopy + 2))(handlerCopy, originalScopeType, 0, 0, 0, v16);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, self->_originalScopeType, 0, 0, 0, v9);
  }
}

- (void)_determineScopeTypeAndFetchLibraryInfoWithCurrentUserID:(id)d
{
  dCopy = d;
  controller = [(CPLCloudKitTransportTask *)self controller];
  v6 = [controller recordsToFetchToIdentifyCloudKitScope:self->_cloudKitScope proposedScopeType:self->_originalScopeType currentUserID:dCopy];
  if ([v6 count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_100003C0C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        scopeIdentifier = [(CPLEngineScope *)self->_scope scopeIdentifier];
        cloudKitScope = self->_cloudKitScope;
        *buf = 138543874;
        v16 = scopeIdentifier;
        v17 = 2114;
        v18 = v6;
        v19 = 2112;
        v20 = cloudKitScope;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Trying to determine scope type for %{public}@. Fetching %{public}@ in %@", buf, 0x20u);
      }
    }

    v10 = self->_cloudKitScope;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B007C;
    v12[3] = &unk_100276EC8;
    v12[4] = self;
    v13 = controller;
    v14 = dCopy;
    [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v6 fetchResources:1 inScope:v10 completionHandler:v12];
  }

  else
  {
    originalScopeType = self->_originalScopeType;
    (*(self->_completionHandler + 2))();
  }
}

@end