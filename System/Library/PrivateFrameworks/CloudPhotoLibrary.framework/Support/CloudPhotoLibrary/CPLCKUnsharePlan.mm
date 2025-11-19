@interface CPLCKUnsharePlan
- (BOOL)hasShareTodoForScopedIdentifier:(id)a3;
- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)a3;
- (CPLCKBatchUploadPlanner)planner;
- (CPLCKUnsharePlan)initWithPlanner:(id)a3;
- (CPLFingerprintContext)fingerprintContext;
- (NSArray)ckRecordIDsToUnshare;
- (NSArray)privateRecordIDs;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)a3 destinationCKRecordID:(id)a4 error:(id *)a5;
- (id)ckRecordIDsToDelete;
- (id)ckRecordsToUpdate;
- (id)cloudKitScopeForScopeIdentifier:(id)a3;
- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)a3 error:(id *)a4;
- (id)recordNameInDestinationCKRecordFromRecordName:(id)a3 error:(id *)a4;
- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)a3;
- (id)scopeIdentifierFromZoneID:(id)a3;
- (id)scopedIdentifierForCKRecordID:(id)a3;
- (id)zoneIDFromScopeIdentifier:(id)a3;
- (void)_prepareRecordsToDelete;
- (void)addShareTodo:(id)a3;
- (void)prepareCopyForCKRecordID:(id)a3 fromCKRecord:(id)a4;
- (void)removeShareTodoForScopedIdentifier:(id)a3;
- (void)updateTargetMappingAfterUploadWithRealSourceRecordIDs:(id)a3;
@end

@implementation CPLCKUnsharePlan

- (CPLFingerprintContext)fingerprintContext
{
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v3 = [WeakRetained fingerprintContext];

  return v3;
}

- (CPLCKUnsharePlan)initWithPlanner:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CPLCKUnsharePlan;
  v5 = [(CPLCKUnsharePlan *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_planner, v4);
    v7 = objc_alloc_init(NSMutableArray);
    todos = v6->_todos;
    v6->_todos = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    todoPerScopedIdentifier = v6->_todoPerScopedIdentifier;
    v6->_todoPerScopedIdentifier = v9;
  }

  return v6;
}

- (BOOL)hasShareTodoForScopedIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_todoPerScopedIdentifier objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)removeShareTodoForScopedIdentifier:(id)a3
{
  v4 = a3;
  [(NSMutableDictionary *)self->_todoPerScopedIdentifier removeObjectForKey:v4];
  todos = self->_todos;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100196634;
  v8[3] = &unk_100273A90;
  v6 = v4;
  v9 = v6;
  v7 = [(NSMutableArray *)todos indexOfObjectPassingTest:v8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_todos removeObjectAtIndex:v7];
  }
}

- (NSArray)ckRecordIDsToUnshare
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_todos, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_todos;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 32);
        }

        else
        {
          v10 = 0;
        }

        [v3 addObject:{v10, v13}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v11 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v11;
    }

    while (v11);
  }

  return v3;
}

- (void)_prepareRecordsToDelete
{
  if (!self->_ckRecordsToUpdate)
  {
    v21 = objc_alloc_init(NSMutableArray);
    v3 = objc_alloc_init(NSMutableArray);
    WeakRetained = objc_loadWeakRetained(&self->_planner);
    v5 = [WeakRetained sharedZoneIdentification];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = self;
    v6 = self->_todos;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          if (v11)
          {
            v12 = v11[2];
            v11 = v11[4];
          }

          else
          {
            v12 = 0;
          }

          v13 = v11;
          if ([v5 supportsDirectDeletionOfRecordClass:v12])
          {
            [(NSArray *)v3 addObject:v13];
          }

          else if ([v5 supportsDeletionOfRecordClass:v12])
          {
            v14 = CPLCKRecord(v12, v13, 1);
            v15 = +[NSDate date];
            [v14 setObject:v15 forKey:@"recordModificationDate"];

            [v14 setObject:&__kCFBooleanTrue forKey:@"isDeleted"];
            [v14 setObject:&__kCFBooleanTrue forKey:@"isExpunged"];
            [(NSArray *)v21 addObject:v14];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v16 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v8 = v16;
      }

      while (v16);
    }

    ckRecordsToUpdate = v20->_ckRecordsToUpdate;
    v20->_ckRecordsToUpdate = v21;
    v18 = v21;

    ckRecordIDsToDelete = v20->_ckRecordIDsToDelete;
    v20->_ckRecordIDsToDelete = v3;
  }
}

- (id)ckRecordsToUpdate
{
  [(CPLCKUnsharePlan *)self _prepareRecordsToDelete];
  ckRecordsToUpdate = self->_ckRecordsToUpdate;

  return ckRecordsToUpdate;
}

- (id)ckRecordIDsToDelete
{
  [(CPLCKUnsharePlan *)self _prepareRecordsToDelete];
  ckRecordIDsToDelete = self->_ckRecordIDsToDelete;

  return ckRecordIDsToDelete;
}

- (void)updateTargetMappingAfterUploadWithRealSourceRecordIDs:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v5 = [WeakRetained targetMapping];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_todos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (v11)
        {
          v12 = *(v11 + 56);
          if (v12)
          {
            v13 = v12;
            [v5 setTarget:v12 forRecordWithScopedIdentifier:{*(v11 + 8), v14}];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (NSArray)privateRecordIDs
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_todos, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_todos;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 24);
        }

        else
        {
          v10 = 0;
        }

        [v3 addObject:{v10, v13}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v11 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v11;
    }

    while (v11);
  }

  return v3;
}

- (void)prepareCopyForCKRecordID:(id)a3 fromCKRecord:(id)a4
{
  v18 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v9 = [WeakRetained scopedIdentifierForCKRecordID:v18];

  if (!v9)
  {
    sub_1001976A4(a2, self, v18);
  }

  v10 = [(NSMutableDictionary *)self->_todoPerScopedIdentifier objectForKeyedSubscript:v9];
  currentTodo = self->_currentTodo;
  self->_currentTodo = v10;

  if (!self->_currentTodo)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = sub_1000035AC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = v18;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to find unshare todo matching %@/%@", buf, 0x16u);
      }
    }

    v16 = +[NSAssertionHandler currentHandler];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
    [v16 handleFailureInMethod:a2 object:self file:v17 lineNumber:1615 description:{@"Unable to find unshare todo matching %@/%@", v18, v9}];

    abort();
  }

  v12 = objc_loadWeakRetained(&self->_planner);
  v13 = [v12 targetMapping];
  v14 = [v13 targetForRecordWithScopedIdentifier:v9];

  if (!v14)
  {
    sub_1001975D8(a2, self, v9);
  }

  self->_wasSplit = [v14 targetState] == 3;
}

- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"dateExpunged"])
  {
    v5 = 1;
  }

  else
  {
    sub_100197770(self, v4, &v7);
    v5 = v7;
  }

  return v5;
}

- (id)recordNameInDestinationCKRecordFromRecordName:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [CPLScopedIdentifier alloc];
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v8 = [WeakRetained sharedZoneIdentification];
  v9 = [v8 scopeIdentifier];
  v10 = [v6 initWithScopeIdentifier:v9 identifier:v5];

  v11 = objc_loadWeakRetained(&self->_planner);
  v12 = [v11 targetMapping];
  v13 = [v12 targetForRecordWithOtherScopedIdentifier:v10];

  if (v13)
  {
    v14 = [v13 otherScopedIdentifier];
    v15 = [v14 identifier];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v5;
    }

    v18 = v17;
  }

  else
  {
    v18 = v5;
  }

  return v18;
}

- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)a3 error:(id *)a4
{
  v5 = a3;
  currentTodo = self->_currentTodo;
  if (!currentTodo || (v7 = currentTodo->_recordModificationDate) == 0)
  {
    v7 = +[NSDate date];
  }

  [v5 setObject:v7 forKey:@"recordModificationDate"];
  [v5 setObject:0 forKey:@"linkedShareZoneName"];
  [v5 setObject:0 forKey:@"linkedShareZoneOwner"];
  [v5 setObject:0 forKey:@"linkedShareRecordName"];
  if (self->_wasSplit && ([v5 isKnownToServer] & 1) == 0)
  {
    [v5 setKnownToServer:1];
    [v5 setEtag:@"-gateon"];
  }

  return v5;
}

- (id)cloudKitScopeForScopeIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v6 = [WeakRetained cloudKitScopeForScopeIdentifier:v4];

  return v6;
}

- (id)zoneIDFromScopeIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v6 = [WeakRetained zoneIDFromScopeIdentifier:v4];

  return v6;
}

- (id)scopeIdentifierFromZoneID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v6 = [WeakRetained scopeIdentifierFromZoneID:v4];

  return v6;
}

- (id)scopedIdentifierForCKRecordID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v6 = [WeakRetained scopedIdentifierForCKRecordID:v4];

  return v6;
}

- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v6 = [WeakRetained rejectedScopedIdentifierForRejectedCKRecordID:v4];

  return v6;
}

- (CPLCKBatchUploadPlanner)planner
{
  WeakRetained = objc_loadWeakRetained(&self->_planner);

  return WeakRetained;
}

- (void)addShareTodo:(id)a3
{
  todos = self->_todos;
  v6 = a3;
  [(NSMutableArray *)todos addObject:v6];
  if (v6)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = 0;
  }

  [(NSMutableDictionary *)self->_todoPerScopedIdentifier setObject:v6 forKeyedSubscript:v5];
}

- (id)baseDestinationCKRecordForSourceCKRecord:(id)a3 destinationCKRecordID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v11 = [WeakRetained currentUserRecordID];
  v12 = [v8 cpl_destinationRecordIDInPrivateScopeWithCurrentUserRecordID:v11 proposedDestinationRecordID:v9];

  if (([v12 isEqual:v9] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_1000035AC();
      if (sub_1000374B8(v13))
      {
        v14 = [v8 recordID];
        v15 = [v14 cplFullDescription];
        v16 = [v12 cplFullDescription];
        v17 = [v9 cplFullDescription];
        *buf = 138412802;
        v41 = v15;
        v42 = 2112;
        v43 = v16;
        v44 = 2112;
        v45 = v17;
        _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Moving %@ to %@ instead of %@", buf, 0x20u);
      }
    }

    v18 = objc_loadWeakRetained(&self->_planner);
    v19 = v18;
    currentTodo = self->_currentTodo;
    if (currentTodo)
    {
      scopedIdentifier = currentTodo->_scopedIdentifier;
    }

    else
    {
      scopedIdentifier = 0;
    }

    [v18 _willUpdateCKRecordWithID:v12 onBehalfOfRecordWithScopedIdentifier:scopedIdentifier];

    sub_100195F78(self->_currentTodo, v12);
  }

  v22 = [CPLScopedIdentifier alloc];
  v23 = objc_loadWeakRetained(&self->_planner);
  v24 = [v23 destinationZoneIdentification];
  v25 = [v24 scopeIdentifier];
  v26 = [v8 recordID];
  v27 = [v26 recordName];
  v28 = sub_1000374F4(v27);

  v29 = [CPLScopedIdentifier alloc];
  v30 = objc_loadWeakRetained(&self->_planner);
  v31 = [v30 sharedZoneIdentification];
  v32 = [v31 scopeIdentifier];
  v33 = [v12 recordName];
  v34 = [v29 initWithScopeIdentifier:v32 identifier:v33];

  v35 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v28 otherScopedIdentifier:v34 targetState:1];
  sub_100195F98(self->_currentTodo, v35);

  v36 = [CKRecord alloc];
  v37 = [v8 recordType];
  v38 = [v36 initWithRecordType:v37 recordID:v12];

  return v38;
}

@end