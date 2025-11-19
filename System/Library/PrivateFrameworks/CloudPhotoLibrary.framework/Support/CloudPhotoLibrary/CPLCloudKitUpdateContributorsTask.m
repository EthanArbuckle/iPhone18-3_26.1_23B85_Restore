@interface CPLCloudKitUpdateContributorsTask
- (CPLCloudKitUpdateContributorsTask)initWithController:(id)a3 sharedScope:(id)a4 contributorsUpdates:(id)a5 transportScopeMapping:(id)a6 completionHandler:(id)a7;
- (id)_computeUpdatedSharedCKRecordsFromFoundRecord:(id)a3 usingUpdates:(id)a4 error:(id *)a5;
- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)a3;
- (void)_updateCKRecordsInSharedScope:(id)a3;
- (void)runOperations;
@end

@implementation CPLCloudKitUpdateContributorsTask

- (CPLCloudKitUpdateContributorsTask)initWithController:(id)a3 sharedScope:(id)a4 contributorsUpdates:(id)a5 transportScopeMapping:(id)a6 completionHandler:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = CPLCloudKitUpdateContributorsTask;
  v17 = [(CPLCloudKitTransportTask *)&v23 initWithController:a3];
  if (v17)
  {
    v18 = [v14 copy];
    contributorsUpdates = v17->_contributorsUpdates;
    v17->_contributorsUpdates = v18;

    v20 = [v16 copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v20;

    objc_storeStrong(&v17->_sharedScope, a4);
    [(CPLCloudKitTransportTask *)v17 setTransportScopeMapping:v15];
  }

  return v17;
}

- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_scopedIdentifiersFromCKRecordID objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CPLCloudKitUpdateContributorsTask;
    v7 = [(CPLCloudKitTransportTask *)&v10 rejectedScopedIdentifierForRejectedCKRecordID:v4];
  }

  v8 = v7;

  return v8;
}

- (void)_updateCKRecordsInSharedScope:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v17 = 0;
    v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v17];
    v6 = v17;
    if ((v5 & 1) == 0)
    {
      (*(self->_completionHandler + 2))();
    }

    v7 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
    v8 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v7];

    if (v8)
    {
      v9 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v4 recordIDsToDelete:0];
      [v9 setSavePolicy:0];
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_100094B64;
      v14 = &unk_100275030;
      v15 = self;
      v16 = v4;
      [v9 setModifyRecordsCompletionBlock:&v11];
      v10 = CPLCloudKitOperationTypeForScope(v8);
      [(CPLCloudKitTransportTask *)self launchOperation:v9 type:v10 withContext:0, v11, v12, v13, v14, v15];
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

- (id)_computeUpdatedSharedCKRecordsFromFoundRecord:(id)a3 usingUpdates:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
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
  v12 = v8;
  v22 = v12;
  v25 = &v26;
  v13 = v11;
  v23 = v13;
  v14 = v10;
  v24 = v14;
  [v9 enumerateKeysAndObjectsUsingBlock:&v18];
  v15 = v27[5];
  if (v15)
  {
    v16 = 0;
    if (a5)
    {
      *a5 = v15;
    }
  }

  else
  {
    objc_storeStrong(&self->_scopedIdentifiersFromCKRecordID, v10);
    v16 = [v13 allValues];
  }

  _Block_object_dispose(&v26, 8);

  return v16;
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
    v8 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = self;
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
          v15 = [v14 updateSharingContributorUserIdentifiers];
          v16 = [v15 count];

          if (v16)
          {
            v17 = [v14 scopedIdentifier];
            [v6 setObject:v14 forKeyedSubscript:v17];
            v18 = [CPLScopedIdentifier alloc];
            v19 = [v17 identifier];
            v20 = [v18 initWithScopeIdentifier:v8 identifier:v19];

            v21 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v17 otherScopedIdentifier:v20 targetState:0];
            [v7 addKnownTarget:v21 forRecordWithScopedIdentifier:v17];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    if ([v6 count])
    {
      v22 = [v6 allKeys];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000956C0;
      v25[3] = &unk_100275080;
      v25[4] = v23;
      v26 = v6;
      [(CPLCloudKitTransportTask *)v23 fetchFullRecordsForScopedIdentifiers:v22 targetMapping:v7 completionHandler:v25];
    }

    else
    {
      (*(v23->_completionHandler + 2))();
    }

    v5 = v24;
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end