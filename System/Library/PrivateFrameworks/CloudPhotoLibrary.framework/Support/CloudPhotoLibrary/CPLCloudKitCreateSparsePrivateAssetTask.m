@interface CPLCloudKitCreateSparsePrivateAssetTask
- (CPLCloudKitCreateSparsePrivateAssetTask)initWithController:(id)a3 scope:(id)a4 sharedScope:(id)a5 transportScopeMapping:(id)a6 privateScopedIdentifier:(id)a7 sharedScopedIdentifier:(id)a8 completionHandler:(id)a9;
- (void)runOperations;
@end

@implementation CPLCloudKitCreateSparsePrivateAssetTask

- (CPLCloudKitCreateSparsePrivateAssetTask)initWithController:(id)a3 scope:(id)a4 sharedScope:(id)a5 transportScopeMapping:(id)a6 privateScopedIdentifier:(id)a7 sharedScopedIdentifier:(id)a8 completionHandler:(id)a9
{
  v26 = a4;
  v25 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v27.receiver = self;
  v27.super_class = CPLCloudKitCreateSparsePrivateAssetTask;
  v20 = [(CPLCloudKitTransportTask *)&v27 initWithController:a3];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_scope, a4);
    objc_storeStrong(&v21->_sharedScope, a5);
    objc_storeStrong(&v21->_privateScopedIdentifier, a7);
    objc_storeStrong(&v21->_sharedScopedIdentifier, a8);
    v22 = [v19 copy];
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v22;

    [(CPLCloudKitTransportTask *)v21 setTransportScopeMapping:v16];
  }

  return v21;
}

- (void)runOperations
{
  v3 = [(CPLEngineScope *)self->_scope scopeIdentifier];
  v4 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v3];

  v5 = [v4 zoneID];

  if (!v5)
  {
    completionHandler = self->_completionHandler;
    v15 = @"Missing required zone";
LABEL_9:
    v8 = [CPLErrors cplErrorWithCode:80 description:v15];
    completionHandler[2](completionHandler, v8);
    goto LABEL_14;
  }

  sharedScope = self->_sharedScope;
  if (!sharedScope)
  {
    completionHandler = self->_completionHandler;
    v15 = @"Missing required shared scope";
    goto LABEL_9;
  }

  v7 = [(CPLEngineScope *)sharedScope scopeIdentifier];
  v8 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v7];

  v9 = [v8 zoneID];

  if (v9)
  {
    v10 = [(CPLCloudKitTransportTask *)self controller];
    v11 = [v10 zoneIdentificationForCloudKitScope:v4 engineScope:self->_scope];

    if (v8 && self->_sharedScope)
    {
      v12 = [(CPLCloudKitTransportTask *)self controller];
      v13 = [v12 zoneIdentificationForCloudKitScope:v8 engineScope:self->_sharedScope];
    }

    else
    {
      v13 = 0;
    }

    v16 = [[CPLRecordTarget alloc] initWithScopedIdentifier:self->_privateScopedIdentifier otherScopedIdentifier:self->_sharedScopedIdentifier targetState:2];
    v17 = objc_alloc_init(CPLRecordTargetMapping);
    [v17 setTarget:v16 forRecordWithScopedIdentifier:self->_privateScopedIdentifier];
    privateScopedIdentifier = self->_privateScopedIdentifier;
    v18 = [NSArray arrayWithObjects:&privateScopedIdentifier count:1];
    [(CPLCloudKitTransportTask *)self updatePrivatePropertiesOnAssetsWithScopedIdentifiers:v18 desiredKeys:&__NSArray0__struct destinationZoneIdentification:v11 sharedZoneIdentification:v13 targetMapping:v17 knownRecords:0 shouldUpdateRecord:&stru_1002765B8 updateBlock:&stru_1002765F8 completionHandler:self->_completionHandler];
  }

  else
  {
    v19 = self->_completionHandler;
    v11 = [CPLErrors cplErrorWithCode:80 description:@"Missing required shared zone"];
    v19[2](v19, v11);
  }

LABEL_14:
}

@end