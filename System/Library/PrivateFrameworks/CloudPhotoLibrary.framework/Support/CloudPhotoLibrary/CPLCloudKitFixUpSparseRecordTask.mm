@interface CPLCloudKitFixUpSparseRecordTask
- (CPLCloudKitFixUpSparseRecordTask)initWithController:(id)controller tasks:(id)tasks transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (void)_fetchSparseRecordsWithCompletionHandler:(id)handler;
- (void)_updateSparseRecords:(id)records currentUserRecordID:(id)d completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitFixUpSparseRecordTask

- (CPLCloudKitFixUpSparseRecordTask)initWithController:(id)controller tasks:(id)tasks transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  tasksCopy = tasks;
  mappingCopy = mapping;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = CPLCloudKitFixUpSparseRecordTask;
  v14 = [(CPLCloudKitTransportTask *)&v19 initWithController:controller];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_tasks, tasks);
    v16 = [handlerCopy copy];
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v16;

    [(CPLCloudKitTransportTask *)v15 setTransportScopeMapping:mappingCopy];
  }

  return v15;
}

- (void)_fetchSparseRecordsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_tasks, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_tasks;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        privateCloudScopedIdentifier = [*(*(&v15 + 1) + 8 * v10) privateCloudScopedIdentifier];
        [v5 addObject:privateCloudScopedIdentifier];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100074464;
  v13[3] = &unk_100275698;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(CPLCloudKitTransportTask *)self fetchRecordWithScopedIdentifiers:v5 completionHandler:v13];
}

- (void)_updateSparseRecords:(id)records currentUserRecordID:(id)d completionHandler:(id)handler
{
  recordsCopy = records;
  dCopy = d;
  handlerCopy = handler;
  v76 = 0;
  LOBYTE(handler) = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v76];
  v11 = v76;
  v12 = v11;
  if ((handler & 1) == 0)
  {
    handlerCopy[2](handlerCopy, v11);
    goto LABEL_48;
  }

  v59 = a2;
  v60 = v11;
  v61 = handlerCopy;
  v63 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_tasks, "count")}];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v58 = 272;
  obj = self->_tasks;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v85 count:16];
  selfCopy = self;
  if (!v13)
  {
    goto LABEL_41;
  }

  v15 = v13;
  v16 = *v73;
  v62 = recordsCopy;
  selfCopy2 = self;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v73 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v72 + 1) + 8 * i);
      privateCloudScopedIdentifier = [v18 privateCloudScopedIdentifier];
      v20 = [recordsCopy objectForKeyedSubscript:privateCloudScopedIdentifier];

      if (!v20)
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_39;
        }

        v21 = sub_1000038DC();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          privateCloudScopedIdentifier2 = [v18 privateCloudScopedIdentifier];
          sharedCloudScopedIdentifier = [v18 sharedCloudScopedIdentifier];
          realCloudScopedIdentifier = [v18 realCloudScopedIdentifier];
          *buf = 138412802;
          v78 = privateCloudScopedIdentifier2;
          v79 = 2112;
          v80 = sharedCloudScopedIdentifier;
          v81 = 2112;
          v82 = realCloudScopedIdentifier;
          v25 = v21;
          v26 = "Sparse record %@ can't be found anymore. No need to fix-up its sharing record scoped identifier (%@ -> %@)";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0x20u);
        }

LABEL_16:

        goto LABEL_39;
      }

      if ([v20 cpl_inExpunged])
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_39;
        }

        v21 = sub_1000038DC();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          privateCloudScopedIdentifier2 = [v18 privateCloudScopedIdentifier];
          sharedCloudScopedIdentifier = [v18 sharedCloudScopedIdentifier];
          realCloudScopedIdentifier = [v18 realCloudScopedIdentifier];
          *buf = 138412802;
          v78 = privateCloudScopedIdentifier2;
          v79 = 2112;
          v80 = sharedCloudScopedIdentifier;
          v81 = 2112;
          v82 = realCloudScopedIdentifier;
          v25 = v21;
          v26 = "Sparse record %@ is expunged. No need to fix-up its sharing record scoped identifier (%@ -> %@)";
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      v71 = 0;
      v27 = [v20 cpl_sharingRecordScopedIdentifierWithScopeProvider:selfCopy currentUserRecordID:dCopy isSparseRecord:&v71];
      v28 = v27;
      if (v71)
      {
        if (v27)
        {
          sharedCloudScopedIdentifier2 = [v18 sharedCloudScopedIdentifier];
          v30 = [v28 isEqual:sharedCloudScopedIdentifier2];

          if (v30)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v31 = sub_1000038DC();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                privateCloudScopedIdentifier3 = [v18 privateCloudScopedIdentifier];
                sharedCloudScopedIdentifier3 = [v18 sharedCloudScopedIdentifier];
                realCloudScopedIdentifier2 = [v18 realCloudScopedIdentifier];
                *buf = 138412802;
                v78 = privateCloudScopedIdentifier3;
                v79 = 2112;
                v80 = sharedCloudScopedIdentifier3;
                v81 = 2112;
                v82 = realCloudScopedIdentifier2;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Will fix sparse record %@'s sharing record scoped identifier (%@ -> %@)", buf, 0x20u);
              }
            }

            realCloudScopedIdentifier3 = [v18 realCloudScopedIdentifier];
            scopeIdentifier = [realCloudScopedIdentifier3 scopeIdentifier];
            v37 = [(CPLCloudKitTransportTask *)selfCopy2 cloudKitScopeForScopeIdentifier:scopeIdentifier];

            if (!v37)
            {
              sub_1001A4958(v18, v59, selfCopy2);
            }

            realCloudScopedIdentifier4 = [v18 realCloudScopedIdentifier];
            identifier = [realCloudScopedIdentifier4 identifier];
            v40 = [v37 recordIDWithRecordName:identifier];

            [v20 cpl_updatePrivateRecordSharedToRecordWithID:v40 currentUserRecordID:dCopy setSparseRecordFlag:0 force:0];
            [v63 addObject:v20];

            recordsCopy = v62;
            goto LABEL_36;
          }

          selfCopy = selfCopy2;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v37 = sub_1000038DC();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              privateCloudScopedIdentifier4 = [v18 privateCloudScopedIdentifier];
              sharedCloudScopedIdentifier4 = [v18 sharedCloudScopedIdentifier];
              realCloudScopedIdentifier5 = [v18 realCloudScopedIdentifier];
              *buf = 138413058;
              v78 = privateCloudScopedIdentifier4;
              v79 = 2112;
              v80 = v28;
              v81 = 2112;
              v82 = sharedCloudScopedIdentifier4;
              v83 = 2112;
              v84 = realCloudScopedIdentifier5;
              v47 = v37;
              v48 = "Record %@ is sparse but has already been fixed to point to %@. No need to fix-up its sharing record scoped identifier (%@ -> %@)";
              v49 = 42;
              goto LABEL_35;
            }

            goto LABEL_37;
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v37 = sub_1000038DC();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            privateCloudScopedIdentifier4 = [v18 privateCloudScopedIdentifier];
            sharedCloudScopedIdentifier4 = [v18 sharedCloudScopedIdentifier];
            realCloudScopedIdentifier5 = [v18 realCloudScopedIdentifier];
            *buf = 138412802;
            v78 = privateCloudScopedIdentifier4;
            v79 = 2112;
            v80 = sharedCloudScopedIdentifier4;
            v81 = 2112;
            v82 = realCloudScopedIdentifier5;
            v47 = v37;
            v48 = "Record %@ is sparse but pointing to an unknown sharing zone. No need to fix-up its sharing record scoped identifier (%@ -> %@)";
            v49 = 32;
LABEL_35:
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v48, buf, v49);

LABEL_36:
            selfCopy = selfCopy2;
          }

LABEL_37:
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v37 = sub_1000038DC();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          privateCloudScopedIdentifier5 = [v18 privateCloudScopedIdentifier];
          sharedCloudScopedIdentifier5 = [v18 sharedCloudScopedIdentifier];
          realCloudScopedIdentifier6 = [v18 realCloudScopedIdentifier];
          *buf = 138412802;
          v78 = privateCloudScopedIdentifier5;
          v79 = 2112;
          v80 = sharedCloudScopedIdentifier5;
          v81 = 2112;
          v82 = realCloudScopedIdentifier6;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Record %@ is not sparse anymore. No need to fix-up its sharing record scoped identifier (%@ -> %@)", buf, 0x20u);

          selfCopy = selfCopy2;
        }

        goto LABEL_37;
      }

LABEL_39:
    }

    v15 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v85 count:16];
  }

  while (v15);
LABEL_41:

  if ([v63 count])
  {
    [*(&selfCopy->super.super.isa + v58) firstObject];
    v51 = v50 = selfCopy;
    privateCloudScopedIdentifier6 = [v51 privateCloudScopedIdentifier];
    scopeIdentifier2 = [privateCloudScopedIdentifier6 scopeIdentifier];

    handlerCopy = v61;
    if (!scopeIdentifier2)
    {
      sub_1001A4B64(v59, v50);
    }

    v54 = [(CPLCloudKitTransportTask *)v50 cloudKitScopeForScopeIdentifier:scopeIdentifier2];
    v55 = v50;
    if (!v54)
    {
      sub_1001A4AA0(v59, v50);
    }

    v56 = v54;
    v57 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v63 recordIDsToDelete:&__NSArray0__struct];
    [v57 setSavePolicy:0];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100074D0C;
    v67[3] = &unk_100275998;
    v67[4] = v55;
    v70 = v59;
    v68 = v63;
    v69 = v61;
    [v57 setModifyRecordsCompletionBlock:v67];
    [(CPLCloudKitTransportTask *)v55 launchOperation:v57 type:CPLCloudKitOperationTypeForScope(v56) withContext:0];
  }

  else
  {
    handlerCopy = v61;
    v61[2](v61, 0);
  }

  v12 = v60;
LABEL_48:
}

- (void)runOperations
{
  if ([(NSArray *)self->_tasks count])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100075078;
    v4[3] = &unk_100274018;
    v4[4] = self;
    [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v4];
  }

  else
  {
    v3 = *(self->_completionHandler + 2);

    v3();
  }
}

@end