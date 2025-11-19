@interface CPLCloudKitGetCurrentSyncAnchorTask
- (CPLCloudKitGetCurrentSyncAnchorTask)initWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 previousScopeChange:(id)a6 completionHandler:(id)a7;
- (void)_fetchLibraryInfoAndStateWithCurrentSyncAnchor:(id)a3;
- (void)_fetchLibraryInfoAndStateWithCurrentSyncAnchor:(id)a3 currentUserID:(id)a4;
- (void)runOperations;
@end

@implementation CPLCloudKitGetCurrentSyncAnchorTask

- (CPLCloudKitGetCurrentSyncAnchorTask)initWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 previousScopeChange:(id)a6 completionHandler:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CPLCloudKitGetCurrentSyncAnchorTask;
  v17 = [(CPLCloudKitTransportTask *)&v21 initWithController:a3];
  if (v17)
  {
    v18 = [v16 copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    objc_storeStrong(&v17->_cloudKitScope, a4);
    objc_storeStrong(&v17->_scope, a5);
    objc_storeStrong(&v17->_previousScopeChange, a6);
  }

  return v17;
}

- (void)_fetchLibraryInfoAndStateWithCurrentSyncAnchor:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B05BC;
  v4[3] = &unk_100273B50;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CPLCloudKitTransportTask *)v5 getUserRecordIDFetchIfNecessaryWithCompletionHandler:v4];
}

- (void)_fetchLibraryInfoAndStateWithCurrentSyncAnchor:(id)a3 currentUserID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLCloudKitTransportTask *)self controller];
  v9 = [v8 zoneIdentificationForCloudKitScope:self->_cloudKitScope engineScope:self->_scope];

  v10 = [v9 recordsToFetchForScopeInfoWithCurrentUserID:v7];
  if ([v10 count])
  {
    cloudKitScope = self->_cloudKitScope;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B0770;
    v13[3] = &unk_100276EF0;
    v13[4] = self;
    v14 = v9;
    v15 = v7;
    v16 = v6;
    [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v10 fetchResources:1 inScope:cloudKitScope completionHandler:v13];
  }

  else
  {
    updatedTransportScope = self->_updatedTransportScope;
    (*(self->_completionHandler + 2))();
  }
}

- (void)runOperations
{
  v10 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v10];
  v4 = v10;
  if (v3)
  {
    if ([(CPLEngineScope *)self->_scope scopeType])
    {
      cloudKitScope = self->_cloudKitScope;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000B09BC;
      v9[3] = &unk_100276F18;
      v9[4] = self;
      [(CPLCloudKitTransportTask *)self fetchZoneForScope:cloudKitScope completionHandler:v9];
    }

    else
    {
      completionHandler = self->_completionHandler;
      v7 = [(CPLEngineScope *)self->_scope scopeIdentifier];
      v8 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v7];
      (*(completionHandler + 2))(completionHandler, 0, 0, 0, v8);
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end