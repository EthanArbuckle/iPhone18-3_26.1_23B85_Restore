@interface CPLCloudKitResourcesCheckTask
- (BOOL)_checkResource:(id)a3 record:(id)a4 error:(id *)a5;
- (CPLCloudKitResourcesCheckTask)initWithController:(id)a3 resources:(id)a4 targetMapping:(id)a5 transportScopeMapping:(id)a6 completionHandler:(id)a7;
- (void)runOperations;
@end

@implementation CPLCloudKitResourcesCheckTask

- (CPLCloudKitResourcesCheckTask)initWithController:(id)a3 resources:(id)a4 targetMapping:(id)a5 transportScopeMapping:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = CPLCloudKitResourcesCheckTask;
  v16 = [(CPLCloudKitTransportTask *)&v22 initWithController:a3];
  if (v16)
  {
    v17 = [v15 copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = [v12 copy];
    resources = v16->_resources;
    v16->_resources = v19;

    objc_storeStrong(&v16->_targetMapping, a5);
    [(CPLCloudKitTransportTask *)v16 setTransportScopeMapping:v14];
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
    v21 = self;
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
          v15 = [(NSArray *)v14 itemScopedIdentifier];
          if (v15)
          {
            v16 = [v8 objectForKeyedSubscript:v15];
            v17 = [v16 mutableCopy];

            if (!v17)
            {
              v17 = objc_alloc_init(NSMutableArray);
              [v8 setObject:v17 forKeyedSubscript:v15];
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

    v18 = [v8 allKeys];
    targetMapping = v21->_targetMapping;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B4000;
    v23[3] = &unk_100275080;
    v23[4] = v21;
    v24 = v8;
    v20 = v8;
    [(CPLCloudKitTransportTask *)v21 fetchFullRecordsForScopedIdentifiers:v18 targetMapping:targetMapping completionHandler:v23];

    v5 = v22;
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (BOOL)_checkResource:(id)a3 record:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 resourceType];
  v10 = [v8 resourceForType:v9];

  if (!v10)
  {
    v11 = [CPLResource shortDescriptionForResourceType:v9];
    v25 = [CPLErrors cplErrorWithCode:26 description:@"Unable to find resource %@ on cloud record", v11];
    goto LABEL_18;
  }

  v11 = [v7 identity];
  v12 = [v10 identity];
  [v11 imageDimensions];
  v14 = v13;
  v16 = v15;
  [v12 imageDimensions];
  if (v14 == v18 && v16 == v17)
  {
    v20 = [v11 fileSize];
    if (v20 == [v12 fileSize])
    {
      v21 = [v11 fileUTI];
      v22 = [v12 fileUTI];
      v23 = v22;
      if (v21 && v22)
      {
        v24 = [v21 isEqual:v22];

        if ((v24 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_14:
        v26 = [v11 fingerPrint];
        v27 = [v12 fingerPrint];
        v28 = v27;
        if (v26 && v27)
        {
          v29 = [v26 isEqual:v27];

          if ((v29 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {

          if (v26 | v28)
          {
            goto LABEL_17;
          }
        }

        v25 = 0;
        v32 = 1;
        goto LABEL_21;
      }

      if (!(v21 | v23))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_17:
  v30 = [CPLResource shortDescriptionForResourceType:v9];
  v25 = [CPLErrors cplErrorWithCode:26 description:@"Resource %@ on cloud record is different from %@", v30, v7];

LABEL_18:
  if (a5)
  {
    v31 = v25;
    v32 = 0;
    *a5 = v25;
  }

  else
  {
    v32 = 0;
  }

LABEL_21:

  return v32;
}

@end