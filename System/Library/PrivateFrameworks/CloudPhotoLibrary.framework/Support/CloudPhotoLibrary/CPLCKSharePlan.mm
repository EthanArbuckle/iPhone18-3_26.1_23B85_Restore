@interface CPLCKSharePlan
- (BOOL)hasShareTodoForScopedIdentifier:(id)identifier;
- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)record;
- (CPLCKBatchUploadPlanner)planner;
- (CPLCKSharePlan)initWithPlanner:(id)planner;
- (CPLFingerprintContext)fingerprintContext;
- (NSArray)ckRecordIDsToShare;
- (NSArray)sharedCKRecordIDs;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)record destinationCKRecordID:(id)d error:(id *)error;
- (id)cloudKitScopeForScopeIdentifier:(id)identifier;
- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)record error:(id *)error;
- (id)recordNameInDestinationCKRecordFromRecordName:(id)name error:(id *)error;
- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)d;
- (id)scopeIdentifierFromZoneID:(id)d;
- (id)scopedIdentifierForCKRecordID:(id)d;
- (id)zoneIDFromScopeIdentifier:(id)identifier;
- (void)addShareTodo:(id)todo;
- (void)prepareCopyForCKRecordID:(id)d fromCKRecord:(id)record;
- (void)updateTargetMappingAfterUploadWithRealSourceRecordIDs:(id)ds;
@end

@implementation CPLCKSharePlan

- (CPLFingerprintContext)fingerprintContext
{
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  fingerprintContext = [WeakRetained fingerprintContext];

  return fingerprintContext;
}

- (CPLCKSharePlan)initWithPlanner:(id)planner
{
  plannerCopy = planner;
  v12.receiver = self;
  v12.super_class = CPLCKSharePlan;
  v5 = [(CPLCKSharePlan *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_planner, plannerCopy);
    v7 = objc_alloc_init(NSMutableArray);
    todos = v6->_todos;
    v6->_todos = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    todoPerScopedIdentifier = v6->_todoPerScopedIdentifier;
    v6->_todoPerScopedIdentifier = v9;
  }

  return v6;
}

- (BOOL)hasShareTodoForScopedIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_todoPerScopedIdentifier objectForKeyedSubscript:identifier];
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

- (void)updateTargetMappingAfterUploadWithRealSourceRecordIDs:(id)ds
{
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  targetMapping = [WeakRetained targetMapping];

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
            [targetMapping setTarget:v12 forRecordWithScopedIdentifier:{*(v11 + 8), v14}];
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

- (void)prepareCopyForCKRecordID:(id)d fromCKRecord:(id)record
{
  dCopy = d;
  recordCopy = record;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v9 = [WeakRetained scopedIdentifierForCKRecordID:dCopy];

  if (!v9)
  {
    sub_10019745C(a2, self, dCopy);
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
        v17 = dCopy;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to find share todo matching %@/%@", buf, 0x16u);
      }
    }

    v13 = +[NSAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
    [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:1384 description:{@"Unable to find share todo matching %@/%@", dCopy, v9}];

    abort();
  }
}

- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy isEqualToString:@"dateExpunged"])
  {
    v5 = 1;
  }

  else
  {
    sub_100197528(self, recordCopy, &v7);
    v5 = v7;
  }

  return v5;
}

- (id)recordNameInDestinationCKRecordFromRecordName:(id)name error:(id *)error
{
  nameCopy = name;
  v6 = [CPLScopedIdentifier alloc];
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  destinationZoneIdentification = [WeakRetained destinationZoneIdentification];
  scopeIdentifier = [destinationZoneIdentification scopeIdentifier];
  v10 = [v6 initWithScopeIdentifier:scopeIdentifier identifier:nameCopy];

  v11 = objc_loadWeakRetained(&self->_planner);
  targetMapping = [v11 targetMapping];
  v13 = [targetMapping targetForRecordWithScopedIdentifier:v10];

  if (v13)
  {
    otherScopedIdentifier = [v13 otherScopedIdentifier];
    identifier = [otherScopedIdentifier identifier];
    v16 = identifier;
    if (identifier)
    {
      v17 = identifier;
    }

    else
    {
      v17 = nameCopy;
    }

    v18 = v17;
  }

  else
  {
    v18 = nameCopy;
  }

  return v18;
}

- (id)cloudKitScopeForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v6 = [WeakRetained cloudKitScopeForScopeIdentifier:identifierCopy];

  return v6;
}

- (id)zoneIDFromScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v6 = [WeakRetained zoneIDFromScopeIdentifier:identifierCopy];

  return v6;
}

- (id)scopeIdentifierFromZoneID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v6 = [WeakRetained scopeIdentifierFromZoneID:dCopy];

  return v6;
}

- (id)scopedIdentifierForCKRecordID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v6 = [WeakRetained scopedIdentifierForCKRecordID:dCopy];

  return v6;
}

- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v6 = [WeakRetained rejectedScopedIdentifierForRejectedCKRecordID:dCopy];

  return v6;
}

- (CPLCKBatchUploadPlanner)planner
{
  WeakRetained = objc_loadWeakRetained(&self->_planner);

  return WeakRetained;
}

- (void)addShareTodo:(id)todo
{
  todos = self->_todos;
  todoCopy = todo;
  [(NSMutableArray *)todos addObject:todoCopy];
  if (todoCopy)
  {
    v5 = todoCopy[1];
  }

  else
  {
    v5 = 0;
  }

  [(NSMutableDictionary *)self->_todoPerScopedIdentifier setObject:todoCopy forKeyedSubscript:v5];
}

- (id)baseDestinationCKRecordForSourceCKRecord:(id)record destinationCKRecordID:(id)d error:(id *)error
{
  recordCopy = record;
  dCopy = d;
  v10 = [CKRecordID alloc];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  zoneID = [dCopy zoneID];

  v14 = [v10 initWithRecordName:recordName zoneID:zoneID];
  recordName2 = [v14 recordName];
  currentTodo = self->_currentTodo;
  if (currentTodo)
  {
    sharedRecordID = currentTodo->_sharedRecordID;
  }

  else
  {
    sharedRecordID = 0;
  }

  recordName3 = [(CKRecordID *)sharedRecordID recordName];
  v19 = [recordName2 isEqual:recordName3];

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
  destinationZoneIdentification = [v25 destinationZoneIdentification];
  scopeIdentifier = [destinationZoneIdentification scopeIdentifier];
  recordName4 = [v14 recordName];
  v29 = [v24 initWithScopeIdentifier:scopeIdentifier identifier:recordName4];

  v30 = [CPLScopedIdentifier alloc];
  v31 = objc_loadWeakRetained(&self->_planner);
  sharedZoneIdentification = [v31 sharedZoneIdentification];
  scopeIdentifier2 = [sharedZoneIdentification scopeIdentifier];
  recordID2 = [recordCopy recordID];
  recordName5 = [recordID2 recordName];
  v36 = sub_1000374F4(recordName5);

  v37 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v29 otherScopedIdentifier:v36 targetState:3];
  sub_100195F98(self->_currentTodo, v37);

  v38 = [CKRecord alloc];
  recordType = [recordCopy recordType];
  v40 = [v38 initWithRecordType:recordType recordID:v14];

  return v40;
}

- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  currentTodo = self->_currentTodo;
  if (!currentTodo || (v8 = currentTodo->_recordModificationDate) == 0)
  {
    v8 = +[NSDate date];
  }

  [recordCopy setObject:v8 forKey:@"recordModificationDate"];
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
        recordID = [recordCopy recordID];
        sub_100021CFC();
        sub_10003746C();
        _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
      }
    }

    [recordCopy cpl_updateContributorsOnSharedRecord:v10];
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
  weakRetained = [WeakRetained sharedZoneIdentification];

  if (([weakRetained supportsDirectDeletionOfRecordClass:recordClass] & 1) == 0)
  {
    [recordCopy setObject:&__kCFBooleanFalse forKey:@"isExpunged"];
    v22 = [recordCopy objectForKey:@"isDeleted"];

    if (!v22)
    {
      [recordCopy setObject:&__kCFBooleanFalse forKey:@"isDeleted"];
    }

    if ([(objc_class *)recordClass isSubclassOfClass:objc_opt_class()])
    {
      [recordCopy setObject:v8 forKey:@"mostRecentAddedDate"];
    }
  }

  if ([(objc_class *)recordClass supportsSharingScopedIdentifier])
  {
    [recordCopy setObject:0 forKey:@"linkedShareZoneName"];
    [recordCopy setObject:0 forKey:@"linkedShareZoneOwner"];
    [recordCopy setObject:0 forKey:@"linkedShareRecordName"];
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
    targetMapping = [v25 targetMapping];
    v27 = targetMapping;
    v28 = self->_currentTodo;
    if (v28)
    {
      scopedIdentifier = v28->_scopedIdentifier;
    }

    else
    {
      scopedIdentifier = 0;
    }

    v30 = [targetMapping targetForRecordWithScopedIdentifier:scopedIdentifier];

    if (v30 && [v30 shouldUploadToOtherRecord])
    {
      [recordCopy setKnownToServer:1];
      [recordCopy setEtag:@"-gateon"];
    }
  }

  return recordCopy;
}

@end