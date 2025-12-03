@interface CPLCloudKitFetchMasterAssetPairTask
- (CPLCloudKitFetchMasterAssetPairTask)initWithController:(id)controller scopedIdentifier:(id)identifier cloudKitScope:(id)scope resourcesFolderURL:(id)l completionHandler:(id)handler;
- (id)cloudKitScopeForScopeIdentifier:(id)identifier;
- (id)scopeIdentifierFromZoneID:(id)d;
- (id)scopedIdentifierForCKRecordID:(id)d;
- (void)_fetchRecordWithIdentifier:(id)identifier expectedClass:(Class)class currentUserRecordID:(id)d completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitFetchMasterAssetPairTask

- (CPLCloudKitFetchMasterAssetPairTask)initWithController:(id)controller scopedIdentifier:(id)identifier cloudKitScope:(id)scope resourcesFolderURL:(id)l completionHandler:(id)handler
{
  identifierCopy = identifier;
  scopeCopy = scope;
  lCopy = l;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = CPLCloudKitFetchMasterAssetPairTask;
  v17 = [(CPLCloudKitTransportTask *)&v24 initWithController:controller];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_scopedIdentifier, identifier);
    objc_storeStrong(&v18->_cloudKitScope, scope);
    v19 = [lCopy copy];
    resourcesFolderURL = v18->_resourcesFolderURL;
    v18->_resourcesFolderURL = v19;

    v21 = [handlerCopy copy];
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v21;
  }

  return v18;
}

- (void)_fetchRecordWithIdentifier:(id)identifier expectedClass:(Class)class currentUserRecordID:(id)d completionHandler:(id)handler
{
  identifierCopy = identifier;
  dCopy = d;
  handlerCopy = handler;
  v13 = [(CPLCloudKitScope *)self->_cloudKitScope recordIDWithRecordName:identifierCopy];
  v27 = v13;
  v14 = [NSArray arrayWithObjects:&v27 count:1];
  cloudKitScope = [(CPLCloudKitFetchMasterAssetPairTask *)self cloudKitScope];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100044B04;
  v20[3] = &unk_100274248;
  v25 = handlerCopy;
  classCopy = class;
  v21 = v13;
  v22 = identifierCopy;
  selfCopy = self;
  v24 = dCopy;
  v16 = dCopy;
  v17 = identifierCopy;
  v18 = v13;
  v19 = handlerCopy;
  [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v14 fetchResources:1 inScope:cloudKitScope completionHandler:v20];
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

- (id)cloudKitScopeForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scopedIdentifier = [(CPLCloudKitFetchMasterAssetPairTask *)self scopedIdentifier];
  scopeIdentifier = [scopedIdentifier scopeIdentifier];
  v7 = [identifierCopy isEqualToString:scopeIdentifier];

  if (v7)
  {
    cloudKitScope = [(CPLCloudKitFetchMasterAssetPairTask *)self cloudKitScope];
  }

  else
  {
    cloudKitScope = 0;
  }

  return cloudKitScope;
}

- (id)scopeIdentifierFromZoneID:(id)d
{
  dCopy = d;
  cloudKitScope = [(CPLCloudKitFetchMasterAssetPairTask *)self cloudKitScope];
  zoneID = [cloudKitScope zoneID];
  v7 = [zoneID isEqual:dCopy];

  if (v7)
  {
    scopedIdentifier = [(CPLCloudKitFetchMasterAssetPairTask *)self scopedIdentifier];
    scopeIdentifier = [scopedIdentifier scopeIdentifier];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CPLCloudKitFetchMasterAssetPairTask;
    scopeIdentifier = [(CPLCloudKitTransportTask *)&v11 scopeIdentifierFromZoneID:dCopy];
  }

  return scopeIdentifier;
}

- (id)scopedIdentifierForCKRecordID:(id)d
{
  dCopy = d;
  zoneID = [dCopy zoneID];
  cloudKitScope = [(CPLCloudKitFetchMasterAssetPairTask *)self cloudKitScope];
  zoneID2 = [cloudKitScope zoneID];
  v8 = [zoneID isEqual:zoneID2];

  if (v8)
  {
    scopedIdentifier = [(CPLCloudKitFetchMasterAssetPairTask *)self scopedIdentifier];
    scopeIdentifier = [scopedIdentifier scopeIdentifier];
    v11 = [dCopy cpl_scopedIdentifierWithScopeIdentifier:scopeIdentifier];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end