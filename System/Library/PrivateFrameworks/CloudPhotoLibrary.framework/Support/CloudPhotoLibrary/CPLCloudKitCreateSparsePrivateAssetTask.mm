@interface CPLCloudKitCreateSparsePrivateAssetTask
- (CPLCloudKitCreateSparsePrivateAssetTask)initWithController:(id)controller scope:(id)scope sharedScope:(id)sharedScope transportScopeMapping:(id)mapping privateScopedIdentifier:(id)identifier sharedScopedIdentifier:(id)scopedIdentifier completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitCreateSparsePrivateAssetTask

- (CPLCloudKitCreateSparsePrivateAssetTask)initWithController:(id)controller scope:(id)scope sharedScope:(id)sharedScope transportScopeMapping:(id)mapping privateScopedIdentifier:(id)identifier sharedScopedIdentifier:(id)scopedIdentifier completionHandler:(id)handler
{
  scopeCopy = scope;
  sharedScopeCopy = sharedScope;
  mappingCopy = mapping;
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = CPLCloudKitCreateSparsePrivateAssetTask;
  v20 = [(CPLCloudKitTransportTask *)&v27 initWithController:controller];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_scope, scope);
    objc_storeStrong(&v21->_sharedScope, sharedScope);
    objc_storeStrong(&v21->_privateScopedIdentifier, identifier);
    objc_storeStrong(&v21->_sharedScopedIdentifier, scopedIdentifier);
    v22 = [handlerCopy copy];
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v22;

    [(CPLCloudKitTransportTask *)v21 setTransportScopeMapping:mappingCopy];
  }

  return v21;
}

- (void)runOperations
{
  scopeIdentifier = [(CPLEngineScope *)self->_scope scopeIdentifier];
  v4 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

  zoneID = [v4 zoneID];

  if (!zoneID)
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

  scopeIdentifier2 = [(CPLEngineScope *)sharedScope scopeIdentifier];
  v8 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier2];

  zoneID2 = [v8 zoneID];

  if (zoneID2)
  {
    controller = [(CPLCloudKitTransportTask *)self controller];
    v11 = [controller zoneIdentificationForCloudKitScope:v4 engineScope:self->_scope];

    if (v8 && self->_sharedScope)
    {
      controller2 = [(CPLCloudKitTransportTask *)self controller];
      v13 = [controller2 zoneIdentificationForCloudKitScope:v8 engineScope:self->_sharedScope];
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