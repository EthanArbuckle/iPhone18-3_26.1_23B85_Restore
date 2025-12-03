@interface CPLCloudKitUpdateContributorsTask
- (CPLCloudKitUpdateContributorsTask)initWithController:(id)controller sharedScope:(id)scope contributorsUpdates:(id)updates transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)_computeUpdatedSharedCKRecordsFromFoundRecord:(id)record usingUpdates:(id)updates error:(id *)error;
- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)d;
- (void)_updateCKRecordsInSharedScope:(id)scope;
- (void)runOperations;
@end

@implementation CPLCloudKitUpdateContributorsTask

- (CPLCloudKitUpdateContributorsTask)initWithController:(id)controller sharedScope:(id)scope contributorsUpdates:(id)updates transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  scopeCopy = scope;
  updatesCopy = updates;
  mappingCopy = mapping;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = CPLCloudKitUpdateContributorsTask;
  v17 = [(CPLCloudKitTransportTask *)&v23 initWithController:controller];
  if (v17)
  {
    v18 = [updatesCopy copy];
    contributorsUpdates = v17->_contributorsUpdates;
    v17->_contributorsUpdates = v18;

    v20 = [handlerCopy copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v20;

    objc_storeStrong(&v17->_sharedScope, scope);
    [(CPLCloudKitTransportTask *)v17 setTransportScopeMapping:mappingCopy];
  }

  return v17;
}

- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)d
{
  dCopy = d;
  v5 = [(NSDictionary *)self->_scopedIdentifiersFromCKRecordID objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CPLCloudKitUpdateContributorsTask;
    v7 = [(CPLCloudKitTransportTask *)&v10 rejectedScopedIdentifierForRejectedCKRecordID:dCopy];
  }

  v8 = v7;

  return v8;
}

- (void)_updateCKRecordsInSharedScope:(id)scope
{
  scopeCopy = scope;
  if ([scopeCopy count])
  {
    v17 = 0;
    v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v17];
    v6 = v17;
    if ((v5 & 1) == 0)
    {
      (*(self->_completionHandler + 2))();
    }

    scopeIdentifier = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
    v8 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

    if (v8)
    {
      v9 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:scopeCopy recordIDsToDelete:0];
      [v9 setSavePolicy:0];
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_100094B64;
      v14 = &unk_100275030;
      selfCopy = self;
      v16 = scopeCopy;
      [v9 setModifyRecordsCompletionBlock:&v11];
      v10 = CPLCloudKitOperationTypeForScope(v8);
      [(CPLCloudKitTransportTask *)self launchOperation:v9 type:v10 withContext:0, v11, v12, v13, v14, selfCopy];
    }

    else
    {
      sub_1001AA720(&self->_sharedScope, self, &v18);
      v9 = v18;
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (id)_computeUpdatedSharedCKRecordsFromFoundRecord:(id)record usingUpdates:(id)updates error:(id *)error
{
  recordCopy = record;
  updatesCopy = updates;
  v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(recordCopy, "count")}];
  v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(recordCopy, "count")}];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000044B0;
  v30 = sub_10000533C;
  v31 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10009509C;
  v21 = &unk_100276578;
  v12 = recordCopy;
  v22 = v12;
  v25 = &v26;
  v13 = v11;
  v23 = v13;
  v14 = v10;
  v24 = v14;
  [updatesCopy enumerateKeysAndObjectsUsingBlock:&v18];
  v15 = v27[5];
  if (v15)
  {
    allValues = 0;
    if (error)
    {
      *error = v15;
    }
  }

  else
  {
    objc_storeStrong(&self->_scopedIdentifiersFromCKRecordID, v10);
    allValues = [v13 allValues];
  }

  _Block_object_dispose(&v26, 8);

  return allValues;
}

- (void)runOperations
{
  v31 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v31];
  v4 = v31;
  v5 = v4;
  if (v3)
  {
    v24 = v4;
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_contributorsUpdates, "count")}];
    v7 = objc_alloc_init(CPLRecordTargetMapping);
    scopeIdentifier = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    selfCopy = self;
    v9 = self->_contributorsUpdates;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          updateSharingContributorUserIdentifiers = [v14 updateSharingContributorUserIdentifiers];
          v16 = [updateSharingContributorUserIdentifiers count];

          if (v16)
          {
            scopedIdentifier = [v14 scopedIdentifier];
            [v6 setObject:v14 forKeyedSubscript:scopedIdentifier];
            v18 = [CPLScopedIdentifier alloc];
            identifier = [scopedIdentifier identifier];
            v20 = [v18 initWithScopeIdentifier:scopeIdentifier identifier:identifier];

            v21 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v20 targetState:0];
            [v7 addKnownTarget:v21 forRecordWithScopedIdentifier:scopedIdentifier];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    if ([v6 count])
    {
      allKeys = [v6 allKeys];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000956C0;
      v25[3] = &unk_100275080;
      v25[4] = selfCopy;
      v26 = v6;
      [(CPLCloudKitTransportTask *)selfCopy fetchFullRecordsForScopedIdentifiers:allKeys targetMapping:v7 completionHandler:v25];
    }

    else
    {
      (*(selfCopy->_completionHandler + 2))();
    }

    v5 = v24;
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end