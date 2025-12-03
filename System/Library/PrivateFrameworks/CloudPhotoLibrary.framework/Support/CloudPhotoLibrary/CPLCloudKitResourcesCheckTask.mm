@interface CPLCloudKitResourcesCheckTask
- (BOOL)_checkResource:(id)resource record:(id)record error:(id *)error;
- (CPLCloudKitResourcesCheckTask)initWithController:(id)controller resources:(id)resources targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitResourcesCheckTask

- (CPLCloudKitResourcesCheckTask)initWithController:(id)controller resources:(id)resources targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler
{
  resourcesCopy = resources;
  mappingCopy = mapping;
  scopeMappingCopy = scopeMapping;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = CPLCloudKitResourcesCheckTask;
  v16 = [(CPLCloudKitTransportTask *)&v22 initWithController:controller];
  if (v16)
  {
    v17 = [handlerCopy copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = [resourcesCopy copy];
    resources = v16->_resources;
    v16->_resources = v19;

    objc_storeStrong(&v16->_targetMapping, mapping);
    [(CPLCloudKitTransportTask *)v16 setTransportScopeMapping:scopeMappingCopy];
    [(CPLCloudKitTransportTask *)v16 setForeground:1];
  }

  return v16;
}

- (void)runOperations
{
  v29 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v29];
  v4 = v29;
  v5 = v4;
  if (v3)
  {
    v22 = v4;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_100003C94();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        resources = self->_resources;
        *buf = 138412290;
        v32 = resources;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Checking resources %@", buf, 0xCu);
      }
    }

    v8 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_resources, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    selfCopy = self;
    v9 = self->_resources;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          itemScopedIdentifier = [(NSArray *)v14 itemScopedIdentifier];
          if (itemScopedIdentifier)
          {
            v16 = [v8 objectForKeyedSubscript:itemScopedIdentifier];
            v17 = [v16 mutableCopy];

            if (!v17)
            {
              v17 = objc_alloc_init(NSMutableArray);
              [v8 setObject:v17 forKeyedSubscript:itemScopedIdentifier];
            }

            [v17 addObject:v14];
          }

          else
          {
            if (_CPLSilentLogging)
            {
              goto LABEL_19;
            }

            v17 = sub_100003C94();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = v14;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Missing identifier to check for resource %@", buf, 0xCu);
            }
          }

LABEL_19:
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v11);
    }

    allKeys = [v8 allKeys];
    targetMapping = selfCopy->_targetMapping;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B4000;
    v23[3] = &unk_100275080;
    v23[4] = selfCopy;
    v24 = v8;
    v20 = v8;
    [(CPLCloudKitTransportTask *)selfCopy fetchFullRecordsForScopedIdentifiers:allKeys targetMapping:targetMapping completionHandler:v23];

    v5 = v22;
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (BOOL)_checkResource:(id)resource record:(id)record error:(id *)error
{
  resourceCopy = resource;
  recordCopy = record;
  resourceType = [resourceCopy resourceType];
  v10 = [recordCopy resourceForType:resourceType];

  if (!v10)
  {
    identity = [CPLResource shortDescriptionForResourceType:resourceType];
    resourceCopy = [CPLErrors cplErrorWithCode:26 description:@"Unable to find resource %@ on cloud record", identity];
    goto LABEL_18;
  }

  identity = [resourceCopy identity];
  identity2 = [v10 identity];
  [identity imageDimensions];
  v14 = v13;
  v16 = v15;
  [identity2 imageDimensions];
  if (v14 == v18 && v16 == v17)
  {
    fileSize = [identity fileSize];
    if (fileSize == [identity2 fileSize])
    {
      fileUTI = [identity fileUTI];
      fileUTI2 = [identity2 fileUTI];
      v23 = fileUTI2;
      if (fileUTI && fileUTI2)
      {
        v24 = [fileUTI isEqual:fileUTI2];

        if ((v24 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_14:
        fingerPrint = [identity fingerPrint];
        fingerPrint2 = [identity2 fingerPrint];
        v28 = fingerPrint2;
        if (fingerPrint && fingerPrint2)
        {
          v29 = [fingerPrint isEqual:fingerPrint2];

          if ((v29 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {

          if (fingerPrint | v28)
          {
            goto LABEL_17;
          }
        }

        resourceCopy = 0;
        v32 = 1;
        goto LABEL_21;
      }

      if (!(fileUTI | v23))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_17:
  v30 = [CPLResource shortDescriptionForResourceType:resourceType];
  resourceCopy = [CPLErrors cplErrorWithCode:26 description:@"Resource %@ on cloud record is different from %@", v30, resourceCopy];

LABEL_18:
  if (error)
  {
    v31 = resourceCopy;
    v32 = 0;
    *error = resourceCopy;
  }

  else
  {
    v32 = 0;
  }

LABEL_21:

  return v32;
}

@end