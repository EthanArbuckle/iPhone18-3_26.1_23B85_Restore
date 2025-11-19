@interface CPLCloudKitGetScopeInfoTask
- (CPLCloudKitGetScopeInfoTask)initWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 previousScopeChange:(id)a6 completionHandler:(id)a7;
- (void)_checkAccountEPPCapabilityWithCompletionHandler:(id)a3;
- (void)_determineScopeTypeAndFetchLibraryInfoWithCurrentUserID:(id)a3;
- (void)_determineSharedScopeFromFetchedRecords:(id)a3 scopeChange:(id)a4 zoneIdentification:(id)a5 currentUserID:(id)a6;
- (void)getScopeInfoWithCurrentUserID:(id)a3 completionHandler:(id)a4;
- (void)runOperations;
@end

@implementation CPLCloudKitGetScopeInfoTask

- (CPLCloudKitGetScopeInfoTask)initWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 previousScopeChange:(id)a6 completionHandler:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CPLCloudKitGetScopeInfoTask;
  v17 = [(CPLCloudKitTransportTask *)&v21 initWithController:a3];
  if (v17)
  {
    v18 = [v16 copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    objc_storeStrong(&v17->_cloudKitScope, a4);
    v17->_originalScopeType = [v14 scopeType];
    objc_storeStrong(&v17->_scope, a5);
    objc_storeStrong(&v17->_previousScopeChange, a6);
  }

  return v17;
}

- (void)_checkAccountEPPCapabilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!self->_cloudKitScope)
  {
    goto LABEL_4;
  }

  v5 = [(CPLCloudKitGetScopeInfoTask *)self scope];
  v6 = [v5 scopeIdentifier];
  v7 = [(CPLCloudKitTransportTask *)self mainScopeIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    cloudKitScope = self->_cloudKitScope;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000AF260;
    v10[3] = &unk_100276E00;
    v10[4] = self;
    v11 = v4;
    [(CPLCloudKitTransportTask *)self checkEPPCapabilityIfNecessaryForCloudKitScope:cloudKitScope completionHandler:v10];
  }

  else
  {
LABEL_4:
    (*(v4 + 2))(v4, 0);
  }
}

- (void)_determineSharedScopeFromFetchedRecords:(id)a3 scopeChange:(id)a4 zoneIdentification:(id)a5 currentUserID:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [a5 libraryInfoRecordID];
  if (v12)
  {
    v13 = [v16 objectForKeyedSubscript:v12];
    if (v13)
    {
      v14 = [objc_opt_class() sharedCloudKitScopeFromLibraryInfoRecord:v13 userRecordID:v11];
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

- (void)getScopeInfoWithCurrentUserID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      v13 = [(CPLCloudKitTransportTask *)self controller];
      v22 = [v13 zoneIdentificationForCloudKitScope:self->_cloudKitScope engineScope:self->_scope];

      v14 = self->_cloudKitScope;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000AFA20;
      v17[3] = &unk_100276EA0;
      v17[4] = self;
      v20 = v21;
      v19 = v7;
      v18 = v6;
      [(CPLCloudKitTransportTask *)self fetchZoneForScope:v14 completionHandler:v17];

      _Block_object_dispose(v21, 8);
    }

    else
    {
      originalScopeType = self->_originalScopeType;
      v16 = [CPLErrors cplErrorWithCode:32 description:@"No CloudKit scope for %@", self->_scope];
      (*(v7 + 2))(v7, originalScopeType, 0, 0, 0, v16);
    }
  }

  else
  {
    (*(v7 + 2))(v7, self->_originalScopeType, 0, 0, 0, v9);
  }
}

- (void)_determineScopeTypeAndFetchLibraryInfoWithCurrentUserID:(id)a3
{
  v4 = a3;
  v5 = [(CPLCloudKitTransportTask *)self controller];
  v6 = [v5 recordsToFetchToIdentifyCloudKitScope:self->_cloudKitScope proposedScopeType:self->_originalScopeType currentUserID:v4];
  if ([v6 count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_100003C0C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(CPLEngineScope *)self->_scope scopeIdentifier];
        cloudKitScope = self->_cloudKitScope;
        *buf = 138543874;
        v16 = v8;
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
    v13 = v5;
    v14 = v4;
    [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v6 fetchResources:1 inScope:v10 completionHandler:v12];
  }

  else
  {
    originalScopeType = self->_originalScopeType;
    (*(self->_completionHandler + 2))();
  }
}

@end