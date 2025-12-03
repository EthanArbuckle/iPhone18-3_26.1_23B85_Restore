@interface CPLCKUnsharePlan
- (BOOL)hasShareTodoForScopedIdentifier:(id)identifier;
- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)record;
- (CPLCKBatchUploadPlanner)planner;
- (CPLCKUnsharePlan)initWithPlanner:(id)planner;
- (CPLFingerprintContext)fingerprintContext;
- (NSArray)ckRecordIDsToUnshare;
- (NSArray)privateRecordIDs;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)record destinationCKRecordID:(id)d error:(id *)error;
- (id)ckRecordIDsToDelete;
- (id)ckRecordsToUpdate;
- (id)cloudKitScopeForScopeIdentifier:(id)identifier;
- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)record error:(id *)error;
- (id)recordNameInDestinationCKRecordFromRecordName:(id)name error:(id *)error;
- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)d;
- (id)scopeIdentifierFromZoneID:(id)d;
- (id)scopedIdentifierForCKRecordID:(id)d;
- (id)zoneIDFromScopeIdentifier:(id)identifier;
- (void)_prepareRecordsToDelete;
- (void)addShareTodo:(id)todo;
- (void)prepareCopyForCKRecordID:(id)d fromCKRecord:(id)record;
- (void)removeShareTodoForScopedIdentifier:(id)identifier;
- (void)updateTargetMappingAfterUploadWithRealSourceRecordIDs:(id)ds;
@end

@implementation CPLCKUnsharePlan

- (CPLFingerprintContext)fingerprintContext
{
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  fingerprintContext = [WeakRetained fingerprintContext];

  return fingerprintContext;
}

- (CPLCKUnsharePlan)initWithPlanner:(id)planner
{
  plannerCopy = planner;
  v12.receiver = self;
  v12.super_class = CPLCKUnsharePlan;
  v5 = [(CPLCKUnsharePlan *)&v12 init];
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

- (void)removeShareTodoForScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NSMutableDictionary *)self->_todoPerScopedIdentifier removeObjectForKey:identifierCopy];
  todos = self->_todos;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100196634;
  v8[3] = &unk_100273A90;
  v6 = identifierCopy;
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
    weakRetained = [WeakRetained sharedZoneIdentification];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    selfCopy = self;
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
          if ([weakRetained supportsDirectDeletionOfRecordClass:v12])
          {
            [(NSArray *)v3 addObject:v13];
          }

          else if ([weakRetained supportsDeletionOfRecordClass:v12])
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

    ckRecordsToUpdate = selfCopy->_ckRecordsToUpdate;
    selfCopy->_ckRecordsToUpdate = v21;
    v18 = v21;

    ckRecordIDsToDelete = selfCopy->_ckRecordIDsToDelete;
    selfCopy->_ckRecordIDsToDelete = v3;
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

- (void)prepareCopyForCKRecordID:(id)d fromCKRecord:(id)record
{
  dCopy = d;
  recordCopy = record;
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  v9 = [WeakRetained scopedIdentifierForCKRecordID:dCopy];

  if (!v9)
  {
    sub_1001976A4(a2, self, dCopy);
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
        v20 = dCopy;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to find unshare todo matching %@/%@", buf, 0x16u);
      }
    }

    v16 = +[NSAssertionHandler currentHandler];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
    [v16 handleFailureInMethod:a2 object:self file:v17 lineNumber:1615 description:{@"Unable to find unshare todo matching %@/%@", dCopy, v9}];

    abort();
  }

  v12 = objc_loadWeakRetained(&self->_planner);
  targetMapping = [v12 targetMapping];
  v14 = [targetMapping targetForRecordWithScopedIdentifier:v9];

  if (!v14)
  {
    sub_1001975D8(a2, self, v9);
  }

  self->_wasSplit = [v14 targetState] == 3;
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
    sub_100197770(self, recordCopy, &v7);
    v5 = v7;
  }

  return v5;
}

- (id)recordNameInDestinationCKRecordFromRecordName:(id)name error:(id *)error
{
  nameCopy = name;
  v6 = [CPLScopedIdentifier alloc];
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  weakRetained = [WeakRetained sharedZoneIdentification];
  scopeIdentifier = [weakRetained scopeIdentifier];
  v10 = [v6 initWithScopeIdentifier:scopeIdentifier identifier:nameCopy];

  v11 = objc_loadWeakRetained(&self->_planner);
  targetMapping = [v11 targetMapping];
  v13 = [targetMapping targetForRecordWithOtherScopedIdentifier:v10];

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

- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  currentTodo = self->_currentTodo;
  if (!currentTodo || (v7 = currentTodo->_recordModificationDate) == 0)
  {
    v7 = +[NSDate date];
  }

  [recordCopy setObject:v7 forKey:@"recordModificationDate"];
  [recordCopy setObject:0 forKey:@"linkedShareZoneName"];
  [recordCopy setObject:0 forKey:@"linkedShareZoneOwner"];
  [recordCopy setObject:0 forKey:@"linkedShareRecordName"];
  if (self->_wasSplit && ([recordCopy isKnownToServer] & 1) == 0)
  {
    [recordCopy setKnownToServer:1];
    [recordCopy setEtag:@"-gateon"];
  }

  return recordCopy;
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
  WeakRetained = objc_loadWeakRetained(&self->_planner);
  currentUserRecordID = [WeakRetained currentUserRecordID];
  v12 = [recordCopy cpl_destinationRecordIDInPrivateScopeWithCurrentUserRecordID:currentUserRecordID proposedDestinationRecordID:dCopy];

  if (([v12 isEqual:dCopy] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_1000035AC();
      if (sub_1000374B8(v13))
      {
        recordID = [recordCopy recordID];
        cplFullDescription = [recordID cplFullDescription];
        cplFullDescription2 = [v12 cplFullDescription];
        cplFullDescription3 = [dCopy cplFullDescription];
        *buf = 138412802;
        v41 = cplFullDescription;
        v42 = 2112;
        v43 = cplFullDescription2;
        v44 = 2112;
        v45 = cplFullDescription3;
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
  destinationZoneIdentification = [v23 destinationZoneIdentification];
  scopeIdentifier = [destinationZoneIdentification scopeIdentifier];
  recordID2 = [recordCopy recordID];
  recordName = [recordID2 recordName];
  v28 = sub_1000374F4(recordName);

  v29 = [CPLScopedIdentifier alloc];
  v30 = objc_loadWeakRetained(&self->_planner);
  sharedZoneIdentification = [v30 sharedZoneIdentification];
  scopeIdentifier2 = [sharedZoneIdentification scopeIdentifier];
  recordName2 = [v12 recordName];
  v34 = [v29 initWithScopeIdentifier:scopeIdentifier2 identifier:recordName2];

  v35 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v28 otherScopedIdentifier:v34 targetState:1];
  sub_100195F98(self->_currentTodo, v35);

  v36 = [CKRecord alloc];
  recordType = [recordCopy recordType];
  v38 = [v36 initWithRecordType:recordType recordID:v12];

  return v38;
}

@end