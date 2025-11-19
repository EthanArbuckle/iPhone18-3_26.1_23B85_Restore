@interface CPLCloudKitFetchMasterAssetPairTask
- (CPLCloudKitFetchMasterAssetPairTask)initWithController:(id)a3 scopedIdentifier:(id)a4 cloudKitScope:(id)a5 resourcesFolderURL:(id)a6 completionHandler:(id)a7;
- (id)cloudKitScopeForScopeIdentifier:(id)a3;
- (id)scopeIdentifierFromZoneID:(id)a3;
- (id)scopedIdentifierForCKRecordID:(id)a3;
- (void)_fetchRecordWithIdentifier:(id)a3 expectedClass:(Class)a4 currentUserRecordID:(id)a5 completionHandler:(id)a6;
- (void)runOperations;
@end

@implementation CPLCloudKitFetchMasterAssetPairTask

- (CPLCloudKitFetchMasterAssetPairTask)initWithController:(id)a3 scopedIdentifier:(id)a4 cloudKitScope:(id)a5 resourcesFolderURL:(id)a6 completionHandler:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = CPLCloudKitFetchMasterAssetPairTask;
  v17 = [(CPLCloudKitTransportTask *)&v24 initWithController:a3];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_scopedIdentifier, a4);
    objc_storeStrong(&v18->_cloudKitScope, a5);
    v19 = [v15 copy];
    resourcesFolderURL = v18->_resourcesFolderURL;
    v18->_resourcesFolderURL = v19;

    v21 = [v16 copy];
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v21;
  }

  return v18;
}

- (void)_fetchRecordWithIdentifier:(id)a3 expectedClass:(Class)a4 currentUserRecordID:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(CPLCloudKitScope *)self->_cloudKitScope recordIDWithRecordName:v10];
  v27 = v13;
  v14 = [NSArray arrayWithObjects:&v27 count:1];
  v15 = [(CPLCloudKitFetchMasterAssetPairTask *)self cloudKitScope];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100044B04;
  v20[3] = &unk_100274248;
  v25 = v12;
  v26 = a4;
  v21 = v13;
  v22 = v10;
  v23 = self;
  v24 = v11;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  v19 = v12;
  [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v14 fetchResources:1 inScope:v15 completionHandler:v20];
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000451FC;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

- (id)cloudKitScopeForScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLCloudKitFetchMasterAssetPairTask *)self scopedIdentifier];
  v6 = [v5 scopeIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [(CPLCloudKitFetchMasterAssetPairTask *)self cloudKitScope];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)scopeIdentifierFromZoneID:(id)a3
{
  v4 = a3;
  v5 = [(CPLCloudKitFetchMasterAssetPairTask *)self cloudKitScope];
  v6 = [v5 zoneID];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(CPLCloudKitFetchMasterAssetPairTask *)self scopedIdentifier];
    v9 = [v8 scopeIdentifier];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CPLCloudKitFetchMasterAssetPairTask;
    v9 = [(CPLCloudKitTransportTask *)&v11 scopeIdentifierFromZoneID:v4];
  }

  return v9;
}

- (id)scopedIdentifierForCKRecordID:(id)a3
{
  v4 = a3;
  v5 = [v4 zoneID];
  v6 = [(CPLCloudKitFetchMasterAssetPairTask *)self cloudKitScope];
  v7 = [v6 zoneID];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = [(CPLCloudKitFetchMasterAssetPairTask *)self scopedIdentifier];
    v10 = [v9 scopeIdentifier];
    v11 = [v4 cpl_scopedIdentifierWithScopeIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end