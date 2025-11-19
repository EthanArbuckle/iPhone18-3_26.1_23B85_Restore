@interface CPLCKSharePlan
- (BOOL)hasShareTodoForScopedIdentifier:(id)a3;
- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)a3;
- (CPLCKBatchUploadPlanner)planner;
- (CPLCKSharePlan)initWithPlanner:(id)a3;
- (CPLFingerprintContext)fingerprintContext;
- (NSArray)ckRecordIDsToShare;
- (NSArray)sharedCKRecordIDs;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)a3 destinationCKRecordID:(id)a4 error:(id *)a5;
- (id)cloudKitScopeForScopeIdentifier:(id)a3;
- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)a3 error:(id *)a4;
- (id)recordNameInDestinationCKRecordFromRecordName:(id)a3 error:(id *)a4;
- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)a3;
- (id)scopeIdentifierFromZoneID:(id)a3;
- (id)scopedIdentifierForCKRecordID:(id)a3;
- (id)zoneIDFromScopeIdentifier:(id)a3;
- (void)addShareTodo:(id)a3;
- (void)prepareCopyForCKRecordID:(id)a3 fromCKRecord:(id)a4;
- (void)updateTargetMappingAfterUploadWithRealSourceRecordIDs:(id)a3;
@end

@implementation CPLCKSharePlan

- (CPLFingerprintContext)fingerprintContext
{
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v3 = [WeakRetained fingerprintContext];

  return v3;
}

- (CPLCKSharePlan)initWithPlanner:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CPLCKSharePlan;
  v5 = [(CPLCKSharePlan *)&v12 init];
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

- (NSArray)ckRecordIDsToShare
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

- (NSArray)sharedCKRecordIDs
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

- (void)prepareCopyForCKRecordID:(id)a3 fromCKRecord:(id)a4
{
  v15 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v9 = [WeakRetained scopedIdentifierForCKRecordID:v15];

  if (!v9)
  {
    sub_10019745C(a2, self, v15);
  }

  v10 = [(NSMutableDictionary *)self->_todoPerScopedIdentifier objectForKeyedSubscript:v9];
  currentTodo = self->_currentTodo;
  self->_currentTodo = v10;

  if (!self->_currentTodo)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_1000035AC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v15;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to find share todo matching %@/%@", buf, 0x16u);
      }
    }

    v13 = +[NSAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
    [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:1384 description:{@"Unable to find share todo matching %@/%@", v15, v9}];

    abort();
  }
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
    sub_100197528(self, v4, &v7);
    v5 = v7;
  }

  return v5;
}

- (id)recordNameInDestinationCKRecordFromRecordName:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [CPLScopedIdentifier alloc];
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v8 = [WeakRetained destinationZoneIdentification];
  v9 = [v8 scopeIdentifier];
  v10 = [v6 initWithScopeIdentifier:v9 identifier:v5];

  v11 = objc_loadWeakRetained(&self->_planner);
  v12 = [v11 targetMapping];
  v13 = [v12 targetForRecordWithScopedIdentifier:v10];

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
  v10 = [CKRecordID alloc];
  v11 = [v8 recordID];
  v12 = [v11 recordName];
  v13 = [v9 zoneID];

  v14 = [v10 initWithRecordName:v12 zoneID:v13];
  v15 = [v14 recordName];
  currentTodo = self->_currentTodo;
  if (currentTodo)
  {
    sharedRecordID = currentTodo->_sharedRecordID;
  }

  else
  {
    sharedRecordID = 0;
  }

  v18 = [(CKRecordID *)sharedRecordID recordName];
  v19 = [v15 isEqual:v18];

  if ((v19 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_planner);
    v21 = WeakRetained;
    v22 = self->_currentTodo;
    if (v22)
    {
      scopedIdentifier = v22->_scopedIdentifier;
    }

    else
    {
      scopedIdentifier = 0;
    }

    [WeakRetained _willUpdateCKRecordWithID:v14 onBehalfOfRecordWithScopedIdentifier:scopedIdentifier];

    sub_100195F88(self->_currentTodo, v14);
  }

  v24 = [CPLScopedIdentifier alloc];
  v25 = objc_loadWeakRetained(&self->_planner);
  v26 = [v25 destinationZoneIdentification];
  v27 = [v26 scopeIdentifier];
  v28 = [v14 recordName];
  v29 = [v24 initWithScopeIdentifier:v27 identifier:v28];

  v30 = [CPLScopedIdentifier alloc];
  v31 = objc_loadWeakRetained(&self->_planner);
  v32 = [v31 sharedZoneIdentification];
  v33 = [v32 scopeIdentifier];
  v34 = [v8 recordID];
  v35 = [v34 recordName];
  v36 = sub_1000374F4(v35);

  v37 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v29 otherScopedIdentifier:v36 targetState:3];
  sub_100195F98(self->_currentTodo, v37);

  v38 = [CKRecord alloc];
  v39 = [v8 recordType];
  v40 = [v38 initWithRecordType:v39 recordID:v14];

  return v40;
}

- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  currentTodo = self->_currentTodo;
  if (!currentTodo || (v8 = currentTodo->_recordModificationDate) == 0)
  {
    v8 = +[NSDate date];
  }

  [v6 setObject:v8 forKey:@"recordModificationDate"];
  v9 = self->_currentTodo;
  if (v9)
  {
    v9 = v9->_proposedContributorUserIdentifiers;
  }

  v10 = v9;
  if ([(CPLCKShareRecordTodo *)v10 count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_1000035AC();
      if (sub_1000374B8(v11))
      {
        v12 = [v6 recordID];
        sub_100021CFC();
        sub_10003746C();
        _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
      }
    }

    [v6 cpl_updateContributorsOnSharedRecord:v10];
  }

  v18 = self->_currentTodo;
  if (v18)
  {
    recordClass = v18->_recordClass;
  }

  else
  {
    recordClass = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v21 = [WeakRetained sharedZoneIdentification];

  if (([v21 supportsDirectDeletionOfRecordClass:recordClass] & 1) == 0)
  {
    [v6 setObject:&__kCFBooleanFalse forKey:@"isExpunged"];
    v22 = [v6 objectForKey:@"isDeleted"];

    if (!v22)
    {
      [v6 setObject:&__kCFBooleanFalse forKey:@"isDeleted"];
    }

    if ([(objc_class *)recordClass isSubclassOfClass:objc_opt_class()])
    {
      [v6 setObject:v8 forKey:@"mostRecentAddedDate"];
    }
  }

  if ([(objc_class *)recordClass supportsSharingScopedIdentifier])
  {
    [v6 setObject:0 forKey:@"linkedShareZoneName"];
    [v6 setObject:0 forKey:@"linkedShareZoneOwner"];
    [v6 setObject:0 forKey:@"linkedShareRecordName"];
  }

  v23 = self->_currentTodo;
  if (v23)
  {
    v24 = v23->_recordClass;
  }

  else
  {
    v24 = 0;
  }

  if ([(objc_class *)v24 isSubclassOfClass:objc_opt_class()])
  {
    v25 = objc_loadWeakRetained(&self->_planner);
    v26 = [v25 targetMapping];
    v27 = v26;
    v28 = self->_currentTodo;
    if (v28)
    {
      scopedIdentifier = v28->_scopedIdentifier;
    }

    else
    {
      scopedIdentifier = 0;
    }

    v30 = [v26 targetForRecordWithScopedIdentifier:scopedIdentifier];

    if (v30 && [v30 shouldUploadToOtherRecord])
    {
      [v6 setKnownToServer:1];
      [v6 setEtag:@"-gateon"];
    }
  }

  return v6;
}

@end