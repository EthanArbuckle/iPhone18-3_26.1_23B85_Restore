@interface CPLCloudKitUploadComputeStatesTask
- (CPLCloudKitUploadComputeStatesTask)initWithController:(id)controller computeStates:(id)states scope:(id)scope sharedScope:(id)sharedScope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping knownRecords:(id)records completionHandler:(id)self0;
- (void)_getEncryptionHelper;
- (void)_getTemporaryFolder;
- (void)_uploadComputeStatesWithTemporaryFolderURL:(id)l;
- (void)runOperations;
@end

@implementation CPLCloudKitUploadComputeStatesTask

- (CPLCloudKitUploadComputeStatesTask)initWithController:(id)controller computeStates:(id)states scope:(id)scope sharedScope:(id)sharedScope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping knownRecords:(id)records completionHandler:(id)self0
{
  statesCopy = states;
  scopeCopy = scope;
  sharedScopeCopy = sharedScope;
  mappingCopy = mapping;
  scopeMappingCopy = scopeMapping;
  recordsCopy = records;
  handlerCopy = handler;
  v31.receiver = self;
  v31.super_class = CPLCloudKitUploadComputeStatesTask;
  v21 = [(CPLCloudKitTransportTask *)&v31 initWithController:controller];
  if (v21)
  {
    v22 = [statesCopy copy];
    computeStates = v21->_computeStates;
    v21->_computeStates = v22;

    objc_storeStrong(&v21->_scope, scope);
    objc_storeStrong(&v21->_sharedScope, sharedScope);
    objc_storeStrong(&v21->_targetMapping, mapping);
    [(CPLCloudKitTransportTask *)v21 setTransportScopeMapping:scopeMappingCopy];
    v24 = [recordsCopy copy];
    knownRecords = v21->_knownRecords;
    v21->_knownRecords = v24;

    v26 = [handlerCopy copy];
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v26;
  }

  return v21;
}

- (void)runOperations
{
  v5 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v5];
  v4 = v5;
  if (v3)
  {
    [(CPLCloudKitUploadComputeStatesTask *)self _getEncryptionHelper];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)_getEncryptionHelper
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100087B94;
  v2[3] = &unk_1002761A8;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self acquireHelperWithIdentifier:@"compute-state-encryption" completionHandler:v2];
}

- (void)_getTemporaryFolder
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100087C9C;
  v2[3] = &unk_100274458;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getTemporaryFolderWithCompletionHandler:v2];
}

- (void)_uploadComputeStatesWithTemporaryFolderURL:(id)l
{
  lCopy = l;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_computeStates, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  selfCopy = self;
  v5 = self->_computeStates;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        itemScopedIdentifier = [v10 itemScopedIdentifier];
        if (itemScopedIdentifier)
        {
          [v4 setObject:v10 forKeyedSubscript:itemScopedIdentifier];
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v12 = sub_1000039EC();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[CCSS] Missing identifier to upload for compute state %@", buf, 0xCu);
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v7);
  }

  scopeIdentifier = [(CPLEngineScope *)selfCopy->_scope scopeIdentifier];
  v14 = [(CPLCloudKitTransportTask *)selfCopy cloudKitScopeForScopeIdentifier:scopeIdentifier];

  zoneID = [v14 zoneID];

  if (zoneID)
  {
    sharedScope = selfCopy->_sharedScope;
    if (sharedScope)
    {
      scopeIdentifier2 = [(CPLEngineScope *)sharedScope scopeIdentifier];
      v18 = [(CPLCloudKitTransportTask *)selfCopy cloudKitScopeForScopeIdentifier:scopeIdentifier2];

      zoneID2 = [v18 zoneID];

      if (!zoneID2)
      {
        completionHandler = selfCopy->_completionHandler;
        v21 = [CPLErrors cplErrorWithCode:80 description:@"Missing required shared zone"];
        completionHandler[2](completionHandler, 0, v21);
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v18 = 0;
    }

    controller = [(CPLCloudKitTransportTask *)selfCopy controller];
    v21 = [controller zoneIdentificationForCloudKitScope:v14 engineScope:selfCopy->_scope];

    if (v18 && selfCopy->_sharedScope)
    {
      controller2 = [(CPLCloudKitTransportTask *)selfCopy controller];
      v30 = [controller2 zoneIdentificationForCloudKitScope:v18 engineScope:selfCopy->_sharedScope];
    }

    else
    {
      v30 = 0;
    }

    v25 = objc_alloc_init(NSMutableArray);
    allKeys = [v4 allKeys];
    targetMapping = selfCopy->_targetMapping;
    knownRecords = selfCopy->_knownRecords;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000881D8;
    v40[3] = &unk_1002761D0;
    v40[4] = selfCopy;
    v41 = v4;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100088508;
    v35[3] = &unk_1002761F8;
    v36 = v41;
    v37 = lCopy;
    v38 = selfCopy;
    v39 = v25;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000888A4;
    v33[3] = &unk_100272268;
    v33[4] = selfCopy;
    v34 = v39;
    v28 = v39;
    [(CPLCloudKitTransportTask *)selfCopy updatePrivatePropertiesOnAssetsWithScopedIdentifiers:allKeys desiredKeys:&off_1002913E0 destinationZoneIdentification:v21 sharedZoneIdentification:v30 targetMapping:targetMapping knownRecords:knownRecords shouldUpdateRecord:v40 updateBlock:v35 completionHandler:v33];

    goto LABEL_25;
  }

  v22 = selfCopy->_completionHandler;
  v18 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone"];
  v22[2](v22, 0, v18);
LABEL_26:
}

@end