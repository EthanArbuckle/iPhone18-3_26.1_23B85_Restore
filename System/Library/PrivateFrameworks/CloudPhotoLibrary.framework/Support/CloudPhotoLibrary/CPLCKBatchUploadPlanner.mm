@interface CPLCKBatchUploadPlanner
- (BOOL)_shouldUpdateKeyOnCKRecord:(id)a3;
- (BOOL)_shouldUpdateKeyOnSharedCKRecord:(id)a3;
- (BOOL)didFetchPrivateCKRecord:(id)a3 forRecordWithRecordID:(id)a4 error:(id *)a5;
- (BOOL)didFetchSharedCKRecord:(id)a3 forRecordWithRecordID:(id)a4 error:(id *)a5;
- (BOOL)planRecordChangeUpload:(id)a3 error:(id *)a4;
- (CPLCKBatchUploadPlanner)initWithScopeProvider:(id)a3 destinationZoneIdentification:(id)a4 sharedZoneIdentification:(id)a5 propertyMapping:(id)a6 currentUserRecordID:(id)a7 targetMapping:(id)a8 fetchCache:(id)a9 cplEnabledDate:(id)a10;
- (double)planProgess;
- (double)uploadedSize;
- (id)_recordIDFromScopedIdentifier:(id)a3 cloudKitScope:(id *)a4 error:(id *)a5;
- (id)_shareTodoForRecordWithScopedIdentifier:(id)a3 recordClass:(Class)a4 proposedContributorUserIdentifiers:(id)a5 target:(id)a6;
- (id)recordBuilderForKey:(id)a3;
- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)a3 cloudKitScope:(id *)a4 error:(id *)a5;
- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)a3;
- (id)scopedIdentifierForCKRecordID:(id)a3;
- (id)willUploadRecords;
- (id)willUploadSharedRecords;
- (void)_addCKRecordIDForResourcesUploadProgressTracking:(id)a3 size:(double)a4;
- (void)_addRecordWithScopedIdentifierToShareTodos:(id)a3 recordClass:(Class)a4 proposedContributorUserIdentifiers:(id)a5 target:(id)a6 force:(BOOL)a7;
- (void)_addRecordWithScopedIdentifierToUnshareTodos:(id)a3 recordClass:(Class)a4 target:(id)a5;
- (void)_copyPrivateMasterWithScopedIdentifier:(id)a3 masterTarget:(id)a4 uploadIndex:(unint64_t)a5 reason:(id)a6;
- (void)_deleteRecord;
- (void)_deleteSharedRecord;
- (void)_dontUnshareRecordWithScopedIdentifier:(id)a3 recordClass:(Class)a4;
- (void)_noteMasterWillBeUploadedToPrivateZone:(id)a3;
- (void)_noteMasterWillBeUploadedToSharedZone:(id)a3;
- (void)_noteRecordWithScopedIdentifierWillMoveToSplitState:(id)a3;
- (void)_resetPlannerState;
- (void)_willUpdateCKRecordWithID:(id)a3 onBehalfOfRecordWithScopedIdentifier:(id)a4;
- (void)deleteCKRecordWithRecordID:(id)a3;
- (void)deleteSharedCKRecordWithRecordID:(id)a3;
- (void)didFinishUploadOfRecordsWithError:(id)a3;
- (void)didFinishUploadOfSharedRecordsWithError:(id)a3;
- (void)requestPrivateCKRecordWithRecordIDBeforeUpload:(id)a3 fetchedBlock:(id)a4 reason:(id)a5;
- (void)requestRecordWithID:(id)a3 cloudKitScope:(id)a4 forKey:(id)a5 completionHandler:(id)a6;
- (void)requestSharedCKRecordWithRecordIDBeforeUpload:(id)a3 fetchedBlock:(id)a4 reason:(id)a5;
- (void)setCKAsset:(id)a3 forKey:(id)a4;
- (void)setCKReferenceWithScopedIdentifier:(id)a3 forKey:(id)a4 referenceAction:(unint64_t)a5;
- (void)setEncryptedObject:(id)a3 forKey:(id)a4 validateClass:(Class)a5;
- (void)setLegacyEncryptedObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)updateTargetMappingAfterUpload;
- (void)uploadCKRecord:(id)a3 forScopedIdentifier:(id)a4 triggeringKey:(id)a5;
- (void)uploadOfRecordID:(id)a3 didProgress:(double)a4;
- (void)uploadSharedCKRecord:(id)a3 forScopedIdentifier:(id)a4 triggeringKey:(id)a5;
@end

@implementation CPLCKBatchUploadPlanner

- (CPLCKBatchUploadPlanner)initWithScopeProvider:(id)a3 destinationZoneIdentification:(id)a4 sharedZoneIdentification:(id)a5 propertyMapping:(id)a6 currentUserRecordID:(id)a7 targetMapping:(id)a8 fetchCache:(id)a9 cplEnabledDate:(id)a10
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v17 = a9;
  v18 = a10;
  v30.receiver = self;
  v30.super_class = CPLCKBatchUploadPlanner;
  v19 = [(CPLCKBatchUploadPlanner *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_scopeProvider, a3);
    objc_storeStrong(&v20->_destinationZoneIdentification, a4);
    objc_storeStrong(&v20->_sharedZoneIdentification, a5);
    objc_storeStrong(&v20->_propertyMapping, a6);
    objc_storeStrong(&v20->_currentUserRecordID, a7);
    objc_storeStrong(&v20->_targetMapping, a8);
    if (v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = objc_alloc_init(CPLCKRecordFetchCache);
    }

    fetchCache = v20->_fetchCache;
    v20->_fetchCache = v21;

    objc_storeStrong(&v20->_cplEnabledDate, a10);
  }

  return v20;
}

- (void)_noteRecordWithScopedIdentifierWillMoveToSplitState:(id)a3
{
  v4 = a3;
  scopedIdentifiersMovingToSplitState = self->_scopedIdentifiersMovingToSplitState;
  v8 = v4;
  if (!scopedIdentifiersMovingToSplitState)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_scopedIdentifiersMovingToSplitState;
    self->_scopedIdentifiersMovingToSplitState = v6;

    v4 = v8;
    scopedIdentifiersMovingToSplitState = self->_scopedIdentifiersMovingToSplitState;
  }

  [(NSMutableSet *)scopedIdentifiersMovingToSplitState addObject:v4];
}

- (void)_resetPlannerState
{
  currentRecordChange = self->_currentRecordChange;
  self->_currentRecordChange = 0;

  currentRecordTarget = self->_currentRecordTarget;
  self->_currentRecordTarget = 0;

  recordModificationDate = self->_recordModificationDate;
  self->_recordModificationDate = 0;

  simpleBuilder = self->_simpleBuilder;
  self->_simpleBuilder = 0;

  ckRecordToUpload = self->_ckRecordToUpload;
  self->_ckRecordToUpload = 0;

  v8 = self->_currentRecordTarget;
  self->_currentRecordTarget = 0;

  currentRecordID = self->_currentRecordID;
  self->_currentRecordID = 0;

  v10 = self->_recordModificationDate;
  self->_recordModificationDate = 0;

  sharedCKRecordToUpload = self->_sharedCKRecordToUpload;
  self->_sharedCKRecordToUpload = 0;

  sharedRecordID = self->_sharedRecordID;
  self->_sharedRecordID = 0;

  pendingCKRecordToUpload = self->_pendingCKRecordToUpload;
  self->_pendingCKRecordToUpload = 0;
}

- (void)_addCKRecordIDForResourcesUploadProgressTracking:(id)a3 size:(double)a4
{
  v9 = a3;
  self->_uploadTotalSize = self->_uploadTotalSize + a4;
  if (!self->_sizesPerRecordID)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    sizesPerRecordID = self->_sizesPerRecordID;
    self->_sizesPerRecordID = v6;
  }

  v8 = [NSNumber numberWithDouble:a4];
  [(NSMutableDictionary *)self->_sizesPerRecordID setObject:v8 forKeyedSubscript:v9];
}

- (id)_shareTodoForRecordWithScopedIdentifier:(id)a3 recordClass:(Class)a4 proposedContributorUserIdentifiers:(id)a5 target:(id)a6
{
  v10 = a3;
  v11 = a5;
  destinationZoneIdentification = self->_destinationZoneIdentification;
  v13 = a6;
  v14 = [v13 scopedIdentifier];
  v15 = [v14 identifier];
  v16 = [(CPLCloudKitZoneIdentification *)destinationZoneIdentification recordIDWithRecordName:v15];

  sharedZoneIdentification = self->_sharedZoneIdentification;
  v18 = [v13 otherScopedIdentifier];

  v19 = [v18 identifier];
  v20 = [(CPLCloudKitZoneIdentification *)sharedZoneIdentification recordIDWithRecordName:v19];

  if ([v11 count])
  {
    v21 = [(CKRecordID *)self->_currentUserRecordID recordName];
    v22 = [v11 containsObject:v21];

    if ((v22 & 1) == 0)
    {
      v23 = [v11 mutableCopy];
      v24 = [(CKRecordID *)self->_currentUserRecordID recordName];
      [v23 addObject:v24];

      v11 = v23;
    }
  }

  v25 = [CPLCKShareRecordTodo alloc];
  v26 = [(CPLRecordChange *)self->_currentRecordChange recordModificationDate];
  if (v26)
  {
    v28 = sub_100194CDC(&v25->super.isa, v10, a4, v16, v20, v11, v26);
  }

  else
  {
    v27 = +[NSDate date];
    v28 = sub_100194CDC(&v25->super.isa, v10, a4, v16, v20, v11, v27);
  }

  return v28;
}

- (void)_dontUnshareRecordWithScopedIdentifier:(id)a3 recordClass:(Class)a4
{
  v9 = a3;
  if (objc_opt_class() != a4)
  {
    dontUnshareScopedIdentifier = self->_dontUnshareScopedIdentifier;
    if (!dontUnshareScopedIdentifier)
    {
      v7 = objc_alloc_init(NSMutableSet);
      v8 = self->_dontUnshareScopedIdentifier;
      self->_dontUnshareScopedIdentifier = v7;

      dontUnshareScopedIdentifier = self->_dontUnshareScopedIdentifier;
    }

    [(NSMutableSet *)dontUnshareScopedIdentifier addObject:v9];
  }
}

- (void)_addRecordWithScopedIdentifierToShareTodos:(id)a3 recordClass:(Class)a4 proposedContributorUserIdentifiers:(id)a5 target:(id)a6 force:(BOOL)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if ([v14 shouldUploadToOtherRecord] && !a7)
  {
    sub_10019698C(v12, self, a4);
  }

  else if ([(CPLCKUnsharePlan *)self->_unsharePlan hasShareTodoForScopedIdentifier:v12])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = sub_1000035AC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Remove plan to unshare %@", buf, 0xCu);
      }
    }

    [(CPLCKUnsharePlan *)self->_unsharePlan removeShareTodoForScopedIdentifier:v12];
    [(CPLCKBatchUploadPlanner *)self _dontUnshareRecordWithScopedIdentifier:v12 recordClass:a4];
  }

  else if (![(CPLCKSharePlan *)self->_sharePlan hasShareTodoForScopedIdentifier:v12])
  {
    if (!self->_sharePlan)
    {
      v16 = [[CPLCKSharePlan alloc] initWithPlanner:self];
      sharePlan = self->_sharePlan;
      self->_sharePlan = v16;
    }

    v18 = [(CPLCKBatchUploadPlanner *)self _shareTodoForRecordWithScopedIdentifier:v12 recordClass:a4 proposedContributorUserIdentifiers:v13 target:v14];
    v19 = v18;
    if (v18)
    {
      [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:*(v18 + 24) onBehalfOfRecordWithScopedIdentifier:v12];
      v20 = v19[4];
    }

    else
    {
      [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:0 onBehalfOfRecordWithScopedIdentifier:v12];
      v20 = 0;
    }

    [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v20 onBehalfOfRecordWithScopedIdentifier:v12];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = sub_1000035AC();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification engineScope];
        if (v19)
        {
          v22 = v19[3];
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        v24 = [v23 recordName];
        v28 = v23;
        if (v19)
        {
          v25 = v19[4];
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;
        v27 = [v26 recordName];
        *buf = 138413058;
        v31 = v12;
        v32 = 2112;
        v33 = v29;
        v34 = 2112;
        v35 = v24;
        v36 = 2112;
        v37 = v27;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Will move %@ to %@ (%@ -> %@)", buf, 0x2Au);
      }
    }

    [(CPLCKSharePlan *)self->_sharePlan addShareTodo:v19, v28];
  }
}

- (void)_deleteSharedRecord
{
  if (!self->_sharedRecordID)
  {
    sub_100196AF8(self, a2);
  }

  if ([(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification supportsDeletionOfRecord:self->_currentRecordChange scopeProvider:self])
  {
    if ([(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification supportsDirectDeletionOfRecord:self->_currentRecordChange scopeProvider:self])
    {
      sharedRecordID = self->_sharedRecordID;

      [(CPLCKBatchUploadPlanner *)self deleteSharedCKRecordWithRecordID:sharedRecordID];
    }

    else
    {
      currentRecordChange = self->_currentRecordChange;
      v5 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zone];
      v7 = [CKRecord cpl_expungedSharedRecordFromCPLRecordChange:currentRecordChange inZone:v5 target:self->_currentRecordTarget];

      v6 = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
      [(CPLCKBatchUploadPlanner *)self uploadSharedCKRecord:v7 forScopedIdentifier:v6 triggeringKey:@"isExpunged"];
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    sub_100196A58(&self->_currentRecordChange);
  }
}

- (void)requestSharedCKRecordWithRecordIDBeforeUpload:(id)a3 fetchedBlock:(id)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  p_requestedSharedCKRecordIDs = &self->_requestedSharedCKRecordIDs;
  requestedSharedCKRecordIDs = self->_requestedSharedCKRecordIDs;
  if (requestedSharedCKRecordIDs)
  {
    v13 = [(NSMutableDictionary *)requestedSharedCKRecordIDs objectForKeyedSubscript:v8];

    if (v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_100196BD4(&self->_requestedSharedCKRecordIDs);
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = sub_1000035AC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      currentRecordChange = self->_currentRecordChange;
      v17 = 138543874;
      v18 = v8;
      v19 = 2112;
      v20 = currentRecordChange;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Will fetch shared %{public}@ for %@ before upload because %{public}@", &v17, 0x20u);
    }
  }

  v16 = objc_retainBlock(v9);
  [(NSMutableDictionary *)*p_requestedSharedCKRecordIDs setObject:v16 forKeyedSubscript:v8];

LABEL_8:
}

- (BOOL)didFetchSharedCKRecord:(id)a3 forRecordWithRecordID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_requestedSharedCKRecordIDs objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    v12 = (*(v10 + 16))(v10, v9, v8, a5);
    [(NSMutableDictionary *)self->_requestedSharedCKRecordIDs removeObjectForKey:v9];
  }

  else
  {
    sub_100196C18(v8, v9, a5);
    v12 = 0;
  }

  return v12;
}

- (BOOL)didFetchPrivateCKRecord:(id)a3 forRecordWithRecordID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_requestedPrivateCKRecordIDs objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    v12 = (*(v10 + 16))(v10, v9, v8, a5);
    [(NSMutableDictionary *)self->_requestedPrivateCKRecordIDs removeObjectForKey:v9];
  }

  else
  {
    sub_100196C18(v8, v9, a5);
    v12 = 0;
  }

  return v12;
}

- (double)uploadedSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  progressSizesPerRecordID = self->_progressSizesPerRecordID;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032578;
  v5[3] = &unk_1002739A0;
  v5[4] = &v6;
  [(NSMutableDictionary *)progressSizesPerRecordID enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)planProgess
{
  result = 0.0;
  if (self->_uploadTotalSize > 0.0)
  {
    [(CPLCKBatchUploadPlanner *)self uploadedSize];
    return fmin(v4 / self->_uploadTotalSize, 1.0);
  }

  return result;
}

- (void)uploadOfRecordID:(id)a3 didProgress:(double)a4
{
  v19 = a3;
  v7 = [(NSMutableDictionary *)self->_sizesPerRecordID objectForKeyedSubscript:?];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
    if (v9 > 0.0)
    {
      v10 = v9;
      if (!self->_dateOfFirstUploadProgress)
      {
        v11 = +[NSDate date];
        dateOfFirstUploadProgress = self->_dateOfFirstUploadProgress;
        self->_dateOfFirstUploadProgress = v11;
      }

      if (!self->_progressSizesPerRecordID)
      {
        v13 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSMutableDictionary count](self->_sizesPerRecordID, "count")}];
        progressSizesPerRecordID = self->_progressSizesPerRecordID;
        self->_progressSizesPerRecordID = v13;
      }

      v15 = [NSNumber numberWithDouble:v10 * a4];
      [(NSMutableDictionary *)self->_progressSizesPerRecordID setObject:v15 forKeyedSubscript:v19];
    }
  }

  v16 = [(CPLCKBatchUploadPlanner *)self scopedIdentifierForCKRecordID:v19];
  if (!v16)
  {
    sub_100196CF8(a2, self, v19);
  }

  v17 = v16;
  if (self->_progressHandler && [(NSMutableSet *)self->_scopedIdentifiersNeedingToCallProgressHandler containsObject:v16])
  {
    v18 = a4;
    (*(self->_progressHandler + 2))(v18);
  }
}

- (void)didFinishUploadOfRecordsWithError:(id)a3
{
  dateOfFirstUploadProgress = self->_dateOfFirstUploadProgress;
  if (dateOfFirstUploadProgress)
  {
    [(NSDate *)dateOfFirstUploadProgress timeIntervalSinceNow];
    self->_totalDurationOfUpload = self->_totalDurationOfUpload + fmax(-v5, 0.0);
    v6 = self->_dateOfFirstUploadProgress;
    self->_dateOfFirstUploadProgress = 0;
  }

  uploadContext = self->_uploadContext;
  self->_uploadContext = 0;
}

- (void)didFinishUploadOfSharedRecordsWithError:(id)a3
{
  dateOfFirstUploadProgress = self->_dateOfFirstUploadProgress;
  if (dateOfFirstUploadProgress)
  {
    [(NSDate *)dateOfFirstUploadProgress timeIntervalSinceNow];
    self->_totalDurationOfUpload = self->_totalDurationOfUpload + fmax(-v5, 0.0);
    v6 = self->_dateOfFirstUploadProgress;
    self->_dateOfFirstUploadProgress = 0;
  }

  sharedUploadContext = self->_sharedUploadContext;
  self->_sharedUploadContext = 0;
}

- (void)updateTargetMappingAfterUpload
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_scopedIdentifiersMovingToSplitState;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v8, v14];
        v10 = [CPLRecordTarget alloc];
        v11 = [v9 otherScopedIdentifier];
        v12 = [v10 initWithScopedIdentifier:v8 otherScopedIdentifier:v11 targetState:3];

        [(CPLRecordTargetMapping *)self->_targetMapping setTarget:v12 forRecordWithScopedIdentifier:v8];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  requestedSharedCKRecordIDs = self->_requestedSharedCKRecordIDs;
  self->_requestedSharedCKRecordIDs = 0;
}

- (id)scopedIdentifierForCKRecordID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_ckRecordIDToScopedIdentifier objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CPLCloudKitScopeProvider *)self->_scopeProvider scopedIdentifierForCKRecordID:v4];
  }

  v8 = v7;

  return v8;
}

- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_ckRecordIDToRejectedScopedIdentifier objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CPLCKBatchUploadPlanner *)self scopedIdentifierForCKRecordID:v4];
  }

  v8 = v7;

  return v8;
}

- (void)_noteMasterWillBeUploadedToPrivateZone:(id)a3
{
  v4 = a3;
  mastersUploadedToPrivateZone = self->_mastersUploadedToPrivateZone;
  v8 = v4;
  if (!mastersUploadedToPrivateZone)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_mastersUploadedToPrivateZone;
    self->_mastersUploadedToPrivateZone = v6;

    v4 = v8;
    mastersUploadedToPrivateZone = self->_mastersUploadedToPrivateZone;
  }

  [(NSMutableSet *)mastersUploadedToPrivateZone addObject:v4];
  [(NSMutableDictionary *)self->_mastersNotYetUploadedToPrivateZone removeObjectForKey:v8];
}

- (void)_noteMasterWillBeUploadedToSharedZone:(id)a3
{
  v4 = a3;
  mastersUploadedToSharedZone = self->_mastersUploadedToSharedZone;
  v8 = v4;
  if (!mastersUploadedToSharedZone)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_mastersUploadedToSharedZone;
    self->_mastersUploadedToSharedZone = v6;

    v4 = v8;
    mastersUploadedToSharedZone = self->_mastersUploadedToSharedZone;
  }

  [(NSMutableSet *)mastersUploadedToSharedZone addObject:v4];
  [(NSMutableDictionary *)self->_mastersNotYetUploadedToSharedZone removeObjectForKey:v8];
}

- (BOOL)_shouldUpdateKeyOnCKRecord:(id)a3
{
  v5 = a3;
  if ([(CPLCKRecordPropertyMapping *)self->_propertyMapping isKeyReadOnly:v5 recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
  {
    goto LABEL_2;
  }

  if (!self->_sharedZoneIdentification || ![(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord])
  {
LABEL_8:
    if (self->_ckRecordToUpload)
    {
LABEL_68:
      v6 = 1;
      goto LABEL_69;
    }

    pendingCKRecordToUpload = self->_pendingCKRecordToUpload;
    if (pendingCKRecordToUpload)
    {
      v8 = pendingCKRecordToUpload;
      ckRecordToUpload = self->_ckRecordToUpload;
      self->_ckRecordToUpload = v8;
    }

    else
    {
      currentRecordChange = self->_currentRecordChange;
      ckRecordToUpload = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zone];
      v11 = CPLBaseCKRecordFromCPLRecordChange(currentRecordChange, ckRecordToUpload, self->_currentRecordTarget);
      v12 = self->_ckRecordToUpload;
      self->_ckRecordToUpload = v11;
    }

    v13 = self->_pendingCKRecordToUpload;
    self->_pendingCKRecordToUpload = 0;

    if ([(CPLRecordChange *)self->_currentRecordChange isMasterChange])
    {
      v14 = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
      [(CPLCKBatchUploadPlanner *)self _noteMasterWillBeUploadedToPrivateZone:v14];
    }

    if (self->_cplEnabledDate && [(CPLRecordChange *)self->_currentRecordChange isAssetChange])
    {
      [(CPLRecordChange *)self->_currentRecordChange setMostRecentAddedDateOnCKRecord:self->_ckRecordToUpload withCPLEnabledDate:self->_cplEnabledDate];
    }

    if ([(CPLRecordChange *)self->_currentRecordChange isFullRecord])
    {
      [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification setupRootOnRecord:self->_ckRecordToUpload];
    }

    if (self->_recordModificationDate && [(CPLRecordChange *)self->_currentRecordChange supportsRecordModificationDate])
    {
      [(CKRecord *)self->_ckRecordToUpload setObject:self->_recordModificationDate forKey:@"recordModificationDate"];
    }

    v15 = self->_ckRecordToUpload;
    v16 = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
    [(CPLCKBatchUploadPlanner *)self uploadCKRecord:v15 forScopedIdentifier:v16 triggeringKey:v5];

    if (!self->_sharedZoneIdentification)
    {
LABEL_67:
      v69 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:self->_ckRecordToUpload scopeProvider:self currentUserRecordID:self->_currentUserRecordID targetMapping:self->_targetMapping];
      simpleBuilder = self->_simpleBuilder;
      self->_simpleBuilder = v69;

      goto LABEL_68;
    }

    if ([(CPLRecordTarget *)self->_currentRecordTarget targetState]== 2)
    {
      v114 = a2;
      [(CPLCKBatchUploadPlanner *)self updatePrivateRecord:self->_ckRecordToUpload sharedToRecordWithID:self->_sharedRecordID];
      if ([(CPLRecordChange *)self->_currentRecordChange isEPPRecord])
      {
        [(CKRecord *)self->_ckRecordToUpload cpl_markRecordAsEPP];
      }

      v17 = [(CPLRecordTarget *)self->_currentRecordTarget scopedIdentifier];
      [(CPLCKBatchUploadPlanner *)self _noteRecordWithScopedIdentifierWillMoveToSplitState:v17];

      if ([(CPLCKRecordPropertyMapping *)self->_propertyMapping doesRecordClassSupportSparseRecords:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
      {
        v18 = @"creating private sparse record from shared record";
      }

      else
      {
        v18 = @"shared record needs private properties to be uploaded but can't be sparse";
      }

      v19 = [(CPLRecordTarget *)self->_currentRecordTarget otherScopedIdentifier];
      v20 = [v19 identifier];

      v21 = [CKRecordID alloc];
      v22 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zoneID];
      v23 = [v21 initWithRecordName:v20 zoneID:v22];

      v24 = [(CPLRecordChange *)self->_currentRecordChange recordClass];
      v25 = [CPLCKSplitCopyHelper alloc];
      v26 = self->_ckRecordToUpload;
      v27 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification databaseScope];
      v28 = [(CKRecord *)self->_ckRecordToUpload recordID];
      v29 = [(CPLCKSplitCopyHelper *)v25 initWithBaseCKRecord:v26 sourceRecordID:v23 fromPrivateRecord:0 recordClass:v24 sourceDatabaseScope:v27 destinationRecordID:v28 planner:self];

      v131[0] = _NSConcreteStackBlock;
      v131[1] = 3221225472;
      v131[2] = sub_100195B0C;
      v131[3] = &unk_1002739C8;
      a2 = v114;
      v133 = self;
      v134 = v114;
      v132 = v29;
      v30 = v29;
      [(CPLCKBatchUploadPlanner *)self requestSharedCKRecordWithRecordIDBeforeUpload:v23 fetchedBlock:v131 reason:v18];
    }

    v31 = [(CPLRecordChange *)self->_currentRecordChange isAssetChange];
    v32 = self->_currentRecordChange;
    if (!v31)
    {
      v37 = [(CPLRecordChange *)v32 relatedScopedIdentifier];
      if (!v37)
      {
LABEL_66:

        goto LABEL_67;
      }

      v38 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v37];
      if (v38)
      {
        v39 = v38;
        if ([v38 targetState] != 2 || (-[NSMutableSet containsObject:](self->_scopedIdentifiersMovingToSplitState, "containsObject:", v37) & 1) != 0)
        {
          goto LABEL_65;
        }

        v40 = [v39 otherScopedIdentifier];
        v41 = [v40 identifier];

        v42 = [CKRecordID alloc];
        v43 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zoneID];
        v112 = v41;
        v44 = [v42 initWithRecordName:v41 zoneID:v43];

        v109 = [(CPLRecordChange *)self->_currentRecordChange relatedRecordClass];
        v45 = [v109 newRecordWithScopedIdentifier:v37];
        v46 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zone];
        v47 = CPLBaseCKRecordFromCPLRecordChange(v45, v46, v39);

        [(CPLCKBatchUploadPlanner *)self updatePrivateRecord:v47 sharedToRecordWithID:v44];
        v48 = [v47 recordID];
        [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v48 onBehalfOfRecordWithScopedIdentifier:v37];

        [(NSMutableArray *)self->_ckRecordsToUpload insertObject:v47 atIndex:[(NSMutableArray *)self->_ckRecordsToUpload count]- 1];
        [(CPLCKBatchUploadPlanner *)self _noteRecordWithScopedIdentifierWillMoveToSplitState:v37];
        v49 = self->_recordModificationDate;
        if (v49)
        {
          [v47 setObject:v49 forKeyedSubscript:@"recordModificationDate"];
        }

        if ([v45 isAssetChange])
        {
          [v45 setMostRecentAddedDateOnCKRecord:v47 withCPLEnabledDate:self->_cplEnabledDate];
        }

        v107 = v49;
        v115 = a2;
        if ([(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification supportsDeletionOfRecord:v45 scopeProvider:self]&& ![(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification supportsDirectDeletionOfRecord:v45 scopeProvider:self])
        {
          [v47 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isExpunged"];
          v50 = [NSNumber numberWithBool:[(CPLRecordChange *)self->_currentRecordChange inTrash]];
          [v47 setObject:v50 forKeyedSubscript:@"isDeleted"];
        }

        v51 = [CPLCKSplitCopyHelper alloc];
        v52 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification databaseScope];
        v53 = [v47 recordID];
        v54 = [(CPLCKSplitCopyHelper *)v51 initWithBaseCKRecord:v47 sourceRecordID:v44 fromPrivateRecord:0 recordClass:v109 sourceDatabaseScope:v52 destinationRecordID:v53 planner:self];

        v118[0] = _NSConcreteStackBlock;
        v118[1] = 3221225472;
        v118[2] = sub_100195D38;
        v118[3] = &unk_1002739C8;
        v120 = self;
        v121 = v115;
        v119 = v54;
        v55 = v54;
        [(CPLCKBatchUploadPlanner *)self requestSharedCKRecordWithRecordIDBeforeUpload:v44 fetchedBlock:v118 reason:@"shared related record needs to be in private zone"];

        goto LABEL_51;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v100 = sub_1000035AC();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
        {
          v101 = [(CPLRecordChange *)self->_currentRecordChange relatedRecordClass];
          v102 = self->_currentRecordChange;
          *buf = 138412802;
          v136 = v101;
          v137 = 2112;
          v138 = v37;
          v139 = 2112;
          v140 = v102;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "Target for <%@ %@> related to %@ should be known here", buf, 0x20u);
        }
      }

      v103 = +[NSAssertionHandler currentHandler];
      v104 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
      [v103 handleFailureInMethod:a2 object:self file:v104 lineNumber:932 description:{@"Target for <%@ %@> related to %@ should be known here", -[CPLRecordChange relatedRecordClass](self->_currentRecordChange, "relatedRecordClass"), v37, self->_currentRecordChange}];
LABEL_104:

      abort();
    }

    if (![(CPLRecordChange *)v32 hasChangeType:64])
    {
      goto LABEL_57;
    }

    v33 = self->_currentRecordChange;
    v34 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification scopeIdentifier];
    LOBYTE(v33) = [(CPLRecordChange *)v33 isSharedInScopeWithIdentifier:v34];

    if (v33)
    {
      if (![(CPLRecordChange *)self->_currentRecordChange _relatedRecordShouldBeShared]|| ([(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord]& 1) != 0)
      {
        goto LABEL_57;
      }

      v35 = [(CPLRecordChange *)self->_currentRecordChange relatedScopedIdentifier];
      if (!v35 || ([(NSMutableSet *)self->_mastersUploadedToPrivateZone containsObject:v35]& 1) != 0)
      {
        v36 = v35;
LABEL_38:

        goto LABEL_57;
      }

      v85 = [(NSMutableDictionary *)self->_mastersNotYetUploadedToPrivateZone objectForKeyedSubscript:v35];
      v86 = v85;
      if (v85)
      {
        if (([v85 isFullRecord] & 1) == 0)
        {
          sub_100196DC4(a2, self, v86);
        }

        v113 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v35];
        if (!v113)
        {
          sub_100197008(a2, self, v86);
        }

        v87 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zone];
        v88 = CPLBaseCKRecordFromCPLRecordChange(v86, v87, v113);

        v111 = v88;
        v89 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:v88 scopeProvider:self currentUserRecordID:self->_currentUserRecordID targetMapping:self->_targetMapping];
        sharedCKRecordsToUpload = self->_sharedCKRecordsToUpload;
        v129[0] = _NSConcreteStackBlock;
        v129[1] = 3221225472;
        v129[2] = sub_100033C54;
        v129[3] = &unk_1002739F0;
        v36 = v35;
        v130 = v36;
        v91 = [(NSMutableArray *)sharedCKRecordsToUpload indexOfObjectWithOptions:2 passingTest:v129];
        if (v91 != 0x7FFFFFFFFFFFFFFFLL)
        {
          sub_100196E90(v36, &self->_sharedCKRecordsToUpload, v91);
        }

        v92 = objc_alloc_init(CPLCloudKitResourceCountAndSize);
        v128 = 0;
        v110 = v89;
        v93 = [v86 prepareWithCKRecordBuilder:v89 resourceCountAndSize:v92 scopeProvider:self error:&v128];
        v94 = v128;
        if (v93)
        {
          if (self->_metric)
          {
            if (sub_1001941F8(v92) || sub_100194228(v92))
            {
              [(CPLCloudKitUploadMetric *)self->_metric setItemCount:[(CPLCloudKitUploadMetric *)self->_metric itemCount]+ 1];
              [(CPLCloudKitUploadMetric *)self->_metric setUploadSize:[(CPLCloudKitUploadMetric *)self->_metric uploadSize]+ sub_1001941F8(v92)];
              [(CPLCloudKitUploadMetric *)self->_metric setReferencedResourcesSize:[(CPLCloudKitUploadMetric *)self->_metric referencedResourcesSize]+ sub_100194228(v92)];
              [(CPLCloudKitUploadMetric *)self->_metric setReferencedResourcesCount:[(CPLCloudKitUploadMetric *)self->_metric referencedResourcesCount]+ sub_100194210(v92)];
            }

            else
            {
              [(CPLCloudKitUploadMetric *)self->_metric setOtherItemCount:[(CPLCloudKitUploadMetric *)self->_metric otherItemCount]+ 1];
            }
          }

          if ((_CPLSilentLogging & 1) == 0)
          {
            v95 = sub_1000035AC();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              v96 = [v111 recordID];
              v108 = v94;
              v97 = [(CPLRecordChange *)self->_currentRecordChange recordClass];
              [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
              v98 = v117 = a2;
              *buf = 138543874;
              v136 = v96;
              v137 = 2112;
              v138 = v97;
              v94 = v108;
              v139 = 2112;
              v140 = v98;
              _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Will update %{public}@ (triggered by sharing <%@ %@>)", buf, 0x20u);

              a2 = v117;
            }
          }

          [(CPLCKBatchUploadPlanner *)self _noteMasterWillBeUploadedToPrivateZone:v36];
          [(NSMutableArray *)self->_ckRecordsToUpload insertObject:v111 atIndex:[(NSMutableArray *)self->_ckRecordsToUpload count]- 1];
          v99 = [v111 recordID];
          [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v99 onBehalfOfRecordWithScopedIdentifier:v36];

          goto LABEL_38;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_100196F60(v86, v94);
        }
      }

      v67 = 0;
      v68 = @"asset/master needs to be uploaded to private zone first before being shared";
    }

    else
    {
      if (([(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord]& 1) != 0)
      {
LABEL_57:
        if (![(CPLRecordChange *)self->_currentRecordChange hasChangeType:2])
        {
          goto LABEL_67;
        }

        if (([(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord]& 1) != 0)
        {
          goto LABEL_67;
        }

        v63 = [(CPLRecordChange *)self->_currentRecordChange relatedScopedIdentifier];
        if (!v63)
        {
          goto LABEL_67;
        }

        v64 = v63;
        v65 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v63];
        v66 = [v65 targetState];

        if (v66 != 2)
        {
          goto LABEL_67;
        }

        v67 = 1;
        v68 = @"private asset is pointing to indirect master";
        goto LABEL_63;
      }

      v67 = 1;
      v68 = @"private asset needs to copy shared master back to private zone";
    }

LABEL_63:
    v37 = self->_currentRecordChange;
    v39 = [(CPLRecordChange *)v37 masterScopedIdentifier];
    if (!v39 || ([(NSMutableSet *)self->_mastersUploadedToPrivateZone containsObject:v39]& 1) != 0)
    {
      goto LABEL_65;
    }

    if (v67)
    {
      [(CPLCKBatchUploadPlanner *)self _noteRecordWithScopedIdentifierWillMoveToSplitState:v39];
    }

    [(CPLCKUnsharePlan *)self->_unsharePlan removeShareTodoForScopedIdentifier:v39];
    v72 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v39];
    if (v72)
    {
      v56 = v72;
      if ([v72 targetState] != 2)
      {
        goto LABEL_52;
      }

      v73 = [CKRecordID alloc];
      v74 = [v56 scopedIdentifier];
      [v74 identifier];
      v76 = v75 = v56;
      v77 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zoneID];
      v116 = [v73 initWithRecordName:v76 zoneID:v77];

      v78 = [CKRecordID alloc];
      v112 = v75;
      v79 = [v75 otherScopedIdentifier];
      v80 = [v79 identifier];
      v81 = v80;
      if (!v80)
      {
        v111 = [v112 scopedIdentifier];
        v81 = [v111 identifier];
      }

      v82 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zoneID];
      v83 = [v78 initWithRecordName:v81 zoneID:v82];

      if (!v80)
      {
      }

      v84 = [(NSMutableArray *)self->_ckRecordsToUpload count]- 1;
      [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v116 onBehalfOfRecordWithScopedIdentifier:v39];
      [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v83 onBehalfOfRecordWithScopedIdentifier:v39];
      v122[0] = _NSConcreteStackBlock;
      v122[1] = 3221225472;
      v122[2] = sub_100033CC8;
      v122[3] = &unk_100273A18;
      v122[4] = self;
      v123 = v39;
      v124 = v83;
      v125 = v116;
      v126 = v68;
      v127 = v84;
      v45 = v116;
      v44 = v83;
      [(CPLCKBatchUploadPlanner *)self requestSharedCKRecordWithRecordIDBeforeUpload:v44 fetchedBlock:v122 reason:v68];

LABEL_51:
      v56 = v112;
LABEL_52:

LABEL_65:
      goto LABEL_66;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v105 = sub_1000035AC();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v136 = v39;
        v137 = 2112;
        v138 = v37;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "Missing target for %@ to upload %@", buf, 0x16u);
      }
    }

    v103 = +[NSAssertionHandler currentHandler];
    v104 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
    [v103 handleFailureInMethod:a2 object:self file:v104 lineNumber:889 description:{@"Missing target for %@ to upload %@", v39, v37, v106}];
    goto LABEL_104;
  }

  if ([(CPLRecordTarget *)self->_currentRecordTarget targetState]== 2 && !self->_ckRecordToUpload)
  {
    if (![(CPLCKRecordPropertyMapping *)self->_propertyMapping shouldSplitIndirectRecordForKey:v5 recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
    {
      if ([(CPLCKRecordPropertyMapping *)self->_propertyMapping shouldUpdateKeyOnPrivateRecord:v5 recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
      {
        v57 = self->_currentRecordChange;
        v58 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zone];
        v59 = CPLBaseCKRecordFromCPLRecordChange(v57, v58, self->_currentRecordTarget);
        v60 = self->_pendingCKRecordToUpload;
        self->_pendingCKRecordToUpload = v59;

        v61 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:self->_pendingCKRecordToUpload scopeProvider:self currentUserRecordID:self->_currentUserRecordID targetMapping:self->_targetMapping];
        v62 = self->_simpleBuilder;
        self->_simpleBuilder = v61;
      }

      goto LABEL_2;
    }

    goto LABEL_8;
  }

  if ([(CPLCKRecordPropertyMapping *)self->_propertyMapping shouldUpdateKeyOnPrivateRecord:v5 recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
  {
    goto LABEL_8;
  }

LABEL_2:
  v6 = 0;
LABEL_69:

  return v6;
}

- (void)_copyPrivateMasterWithScopedIdentifier:(id)a3 masterTarget:(id)a4 uploadIndex:(unint64_t)a5 reason:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [CKRecordID alloc];
  v14 = [v11 otherScopedIdentifier];
  v15 = [v14 identifier];
  v16 = v15;
  if (!v15)
  {
    v6 = [v11 scopedIdentifier];
    v16 = [v6 identifier];
  }

  v17 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zoneID:a2];
  v18 = [v13 initWithRecordName:v16 zoneID:v17];

  if (!v15)
  {
  }

  v19 = [CKRecordID alloc];
  v20 = [v11 scopedIdentifier];
  v21 = [v20 identifier];
  v22 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zoneID];
  v23 = [v19 initWithRecordName:v21 zoneID:v22];

  [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v18 onBehalfOfRecordWithScopedIdentifier:v10];
  [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v23 onBehalfOfRecordWithScopedIdentifier:v10];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100034058;
  v33[3] = &unk_100273A40;
  v33[4] = self;
  v34 = v10;
  v35 = v11;
  v36 = v18;
  v37 = v23;
  v38 = v12;
  v39 = v30;
  v40 = v32;
  v24 = v12;
  v25 = v23;
  v26 = v18;
  v27 = v11;
  v28 = v10;
  [(CPLCKBatchUploadPlanner *)self requestPrivateCKRecordWithRecordIDBeforeUpload:v25 fetchedBlock:v33 reason:v24];
}

- (BOOL)_shouldUpdateKeyOnSharedCKRecord:(id)a3
{
  v5 = a3;
  if (![(CPLCKRecordPropertyMapping *)self->_propertyMapping isKeyReadOnly:v5 recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]]&& self->_sharedZoneIdentification && [(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord]&& [(CPLCKRecordPropertyMapping *)self->_propertyMapping shouldUpdateKeyOnSharedRecord:v5 recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
  {
    if (!self->_sharedCKRecordToUpload)
    {
      currentRecordChange = self->_currentRecordChange;
      v9 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zone];
      v10 = CPLBaseSharedCKRecordFromCPLRecordChange(currentRecordChange, v9, self->_currentRecordTarget);
      sharedCKRecordToUpload = self->_sharedCKRecordToUpload;
      self->_sharedCKRecordToUpload = v10;

      v12 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:self->_sharedCKRecordToUpload scopeProvider:self currentUserRecordID:self->_currentUserRecordID targetMapping:self->_targetMapping];
      simpleBuilderForSharedCKRecord = self->_simpleBuilderForSharedCKRecord;
      self->_simpleBuilderForSharedCKRecord = v12;

      if ([(CPLRecordChange *)self->_currentRecordChange isMasterChange])
      {
        v14 = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
        [(CPLCKBatchUploadPlanner *)self _noteMasterWillBeUploadedToSharedZone:v14];
      }

      recordModificationDate = self->_recordModificationDate;
      if (recordModificationDate)
      {
        [self->_sharedCKRecordToUpload setObject:recordModificationDate forKey:@"recordModificationDate"];
      }

      v16 = self->_sharedCKRecordToUpload;
      v17 = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
      [(CPLCKBatchUploadPlanner *)self uploadSharedCKRecord:v16 forScopedIdentifier:v17 triggeringKey:v5];

      if (self->_sharedZoneIdentification)
      {
        if ([(CPLRecordChange *)self->_currentRecordChange isAssetChange])
        {
          if ([(CPLRecordChange *)self->_currentRecordChange hasChangeType:2])
          {
            if ([(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord])
            {
              v18 = [(CPLRecordChange *)self->_currentRecordChange relatedScopedIdentifier];
              if (v18)
              {
                v19 = v18;
                v20 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v18];
                v21 = [v20 shouldUploadToOtherRecord];

                if ((v21 & 1) == 0)
                {
                  v22 = self->_currentRecordChange;
                  v23 = [(CPLRecordChange *)v22 masterScopedIdentifier];
                  if (v23 && ([(NSMutableSet *)self->_mastersUploadedToPrivateZone containsObject:v23]& 1) == 0)
                  {
                    [(CPLCKBatchUploadPlanner *)self _noteRecordWithScopedIdentifierWillMoveToSplitState:v23];
                    v24 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v23];
                    if (!v24)
                    {
                      if ((_CPLSilentLogging & 1) == 0)
                      {
                        v26 = sub_1000035AC();
                        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v30 = v23;
                          v31 = 2112;
                          v32 = v22;
                          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Missing target for %@ to upload %@", buf, 0x16u);
                        }
                      }

                      v27 = +[NSAssertionHandler currentHandler];
                      v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
                      [v27 handleFailureInMethod:a2 object:self file:v28 lineNumber:1113 description:{@"Missing target for %@ to upload %@", v23, v22}];

                      abort();
                    }

                    v25 = v24;
                    if (([v24 shouldUploadToOtherRecord] & 1) == 0)
                    {
                      [(CPLCKBatchUploadPlanner *)self _copyPrivateMasterWithScopedIdentifier:v23 masterTarget:v25 uploadIndex:[(NSMutableArray *)self->_sharedCKRecordsToUpload count]- 1 reason:@"shared asset is pointing to direct master"];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v15 = a3;
  v8 = a4;
  v9 = v8;
  if (!self->_recordModificationDate && [v8 isEqualToString:@"recordModificationDate"])
  {
    if (!v15)
    {
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1001971D8(a2, self, v15);
    }

    objc_storeStrong(&self->_recordModificationDate, a3);
    ckRecordToUpload = self->_ckRecordToUpload;
    if (ckRecordToUpload)
    {
      [(CKRecord *)ckRecordToUpload setObject:v15 forKey:v9];
    }

    sharedCKRecordToUpload = self->_sharedCKRecordToUpload;
    if (!sharedCKRecordToUpload)
    {
      goto LABEL_16;
    }

LABEL_15:
    [sharedCKRecordToUpload setObject:v15 forKey:v9];
    goto LABEL_16;
  }

  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:v9])
  {
    [(CPLSimpleCKRecordBuilder *)self->_simpleBuilder setObject:v15 forKey:v9];
  }

  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:v9])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = self->_sharedCKRecordToUpload;
    if (isKindOfClass)
    {
      v14 = [v15 cplCopyCleanAsset];
      [(CKRecord *)v13 setObject:v14 forKey:v9];

      goto LABEL_16;
    }

    sharedCKRecordToUpload = v13;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)setEncryptedObject:(id)a3 forKey:(id)a4 validateClass:(Class)a5
{
  v9 = a3;
  v8 = a4;
  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:v8])
  {
    [(CPLSimpleCKRecordBuilder *)self->_simpleBuilder setEncryptedObject:v9 forKey:v8 validateClass:a5];
  }

  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:v8])
  {
    [self->_sharedCKRecordToUpload cpl_setEncryptedObject:v9 forKey:v8 validateClass:a5];
  }
}

- (void)setLegacyEncryptedObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:v6])
  {
    [(CPLSimpleCKRecordBuilder *)self->_simpleBuilder setLegacyEncryptedObject:v7 forKey:v6];
  }

  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:v6])
  {
    [self->_sharedCKRecordToUpload cpl_setLegacyEncryptedObject:v7 forKey:v6];
  }
}

- (void)setCKAsset:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:v6])
  {
    [(CPLSimpleCKRecordBuilder *)self->_simpleBuilder setCKAsset:v9 forKey:v6];
    if (![(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:v6])
    {
      goto LABEL_7;
    }

    v7 = [v9 cplCopyCleanAsset];
  }

  else
  {
    if (![(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:v6])
    {
      goto LABEL_7;
    }

    v7 = v9;
  }

  v8 = v7;
  [self->_sharedCKRecordToUpload setObject:v7 forKey:v6];

LABEL_7:
}

- (void)setCKReferenceWithScopedIdentifier:(id)a3 forKey:(id)a4 referenceAction:(unint64_t)a5
{
  v15 = a3;
  v8 = a4;
  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:v8])
  {
    [(CPLSimpleCKRecordBuilder *)self->_simpleBuilder setCKReferenceWithScopedIdentifier:v15 forKey:v8 referenceAction:a5];
  }

  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:v8])
  {
    v9 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v15];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 otherScopedIdentifier];
      v12 = [v11 identifier];
    }

    else
    {
      v12 = [v15 identifier];
    }

    v13 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification recordIDWithRecordName:v12];
    v14 = [[CKReference alloc] initWithRecordID:v13 action:a5];
    [self->_sharedCKRecordToUpload setObject:v14 forKey:v8];
  }
}

- (id)recordBuilderForKey:(id)a3
{
  v5 = a3;
  v6 = [(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:v5];
  v7 = [(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:v5];
  if ((v6 & 1) == 0 && (v7 & 1) == 0)
  {
    sub_1001972A4(self, a2, v5);
  }

  if (!v6)
  {
    p_simpleBuilderForSharedCKRecord = &self->_simpleBuilderForSharedCKRecord;
    goto LABEL_9;
  }

  if (!v7)
  {
    p_simpleBuilderForSharedCKRecord = &self->_simpleBuilder;
    goto LABEL_9;
  }

  p_simpleBuilderForSharedCKRecord = &self->_unionBuilderForCKRecords;
  unionBuilderForCKRecords = self->_unionBuilderForCKRecords;
  if (!unionBuilderForCKRecords)
  {
    v10 = [CPLUnionCKRecordBuilder alloc];
    simpleBuilder = self->_simpleBuilder;
    v17[0] = self->_simpleBuilderForSharedCKRecord;
    v17[1] = simpleBuilder;
    v12 = [NSArray arrayWithObjects:v17 count:2];
    v13 = [(CPLUnionCKRecordBuilder *)v10 initWithRecordBuilders:v12];
    v14 = self->_unionBuilderForCKRecords;
    self->_unionBuilderForCKRecords = v13;

LABEL_9:
    unionBuilderForCKRecords = *p_simpleBuilderForSharedCKRecord;
  }

  v15 = unionBuilderForCKRecords;

  return unionBuilderForCKRecords;
}

- (void)requestRecordWithID:(id)a3 cloudKitScope:(id)a4 forKey:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = [(CPLCKBatchUploadPlanner *)self recordBuilderForKey:a5];
  if (!self->_recordRequestor)
  {
    v14 = [[CPLCKRecordRequestor alloc] initWithFetchCache:self->_fetchCache scopeProvider:self];
    recordRequestor = self->_recordRequestor;
    self->_recordRequestor = v14;
  }

  v16 = self->_recordRequestor;
  v17 = self->_currentRecordID;
  v18 = CPLCloudKitOperationTypeForScope(v10);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100034E74;
  v21[3] = &unk_100273A68;
  v22 = v13;
  v23 = v11;
  v19 = v13;
  v20 = v11;
  [(CPLCKRecordRequestor *)v16 requestRecordWithRecordID:v12 operationType:v18 forRecordWithRecordID:v17 completionHandler:v21];
}

- (id)_recordIDFromScopedIdentifier:(id)a3 cloudKitScope:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 scopeIdentifier];
  v10 = [(CPLCKBatchUploadPlanner *)self cloudKitScopeForScopeIdentifier:v9];

  if (v10)
  {
    v11 = [v8 identifier];
    a5 = [v10 recordIDWithRecordName:v11];

    v12 = v10;
    *a4 = v10;
  }

  else if (a5)
  {
    v13 = [v8 scopeIdentifier];
    *a5 = [CPLErrors cplErrorWithCode:2001 description:@"Can't find CloudKit scope for %@", v13];

    a5 = 0;
  }

  return a5;
}

- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)a3 cloudKitScope:(id *)a4 error:(id *)a5
{
  v9 = a3;
  v10 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v9];
  if (!v10)
  {
    sub_100197390(a2, self, v9);
  }

  v11 = v10;
  v12 = [v10 resourceScopedIdentifier];
  v13 = [(CPLCKBatchUploadPlanner *)self _recordIDFromScopedIdentifier:v12 cloudKitScope:a4 error:a5];

  return v13;
}

- (void)_willUpdateCKRecordWithID:(id)a3 onBehalfOfRecordWithScopedIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_1000035AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000187DC();
      sub_1000033B4();
      v19 = v7;
      sub_100037514(&_mh_execute_header, v8, v9, "If necessary, will update %@ on behalf of %@", v18);
    }
  }

  ckRecordIDToScopedIdentifier = self->_ckRecordIDToScopedIdentifier;
  if (!ckRecordIDToScopedIdentifier)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = self->_ckRecordIDToScopedIdentifier;
    self->_ckRecordIDToScopedIdentifier = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    ckRecordIDToRejectedScopedIdentifier = self->_ckRecordIDToRejectedScopedIdentifier;
    self->_ckRecordIDToRejectedScopedIdentifier = v13;

    ckRecordIDToScopedIdentifier = self->_ckRecordIDToScopedIdentifier;
  }

  [(NSMutableDictionary *)ckRecordIDToScopedIdentifier setObject:v7 forKeyedSubscript:v6];
  v15 = [(NSMutableDictionary *)self->_ckRecordIDToRejectedScopedIdentifier objectForKeyedSubscript:v6];

  if (!v15)
  {
    currentRecordChange = self->_currentRecordChange;
    if (currentRecordChange)
    {
      v17 = [(CPLRecordChange *)currentRecordChange scopedIdentifier];
      [(NSMutableDictionary *)self->_ckRecordIDToRejectedScopedIdentifier setObject:v17 forKeyedSubscript:v6];
    }

    else
    {
      [(NSMutableDictionary *)self->_ckRecordIDToRejectedScopedIdentifier setObject:v7 forKeyedSubscript:v6];
    }
  }
}

- (BOOL)planRecordChangeUpload:(id)a3 error:(id *)a4
{
  v8 = a3;
  [(CPLCKBatchUploadPlanner *)self _resetPlannerState];
  objc_storeStrong(&self->_currentRecordChange, a3);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_1000035AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      currentRecordChange = self->_currentRecordChange;
      v11 = [(CPLRecordChange *)currentRecordChange attachedDiffTracker];
      v13 = v11;
      v14 = @"no diff tracker";
      if (v11)
      {
        v14 = v11;
      }

      *buf = 138412546;
      v73 = currentRecordChange;
      v74 = 2112;
      v75 = v14;
      sub_100037514(&_mh_execute_header, v9, v12, "Planning %@ (%@)", buf);
    }
  }

  v15 = [v8 scopedIdentifier];
  v16 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v15];
  currentRecordTarget = self->_currentRecordTarget;
  self->_currentRecordTarget = v16;

  v18 = self->_currentRecordTarget;
  if (!v18)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v61 = sub_1000035AC();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v73) = HIDWORD(v8);
        sub_10000348C(&_mh_execute_header, v62, v63, "Target for %@ was not specified before upload", v64, v65, v66, v67, v70, v71, 2u);
      }
    }

    v68 = +[NSAssertionHandler currentHandler];
    v69 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
    [v68 handleFailureInMethod:a2 object:self file:v69 lineNumber:207 description:{@"Target for %@ was not specified before upload", v8}];

    abort();
  }

  destinationZoneIdentification = self->_destinationZoneIdentification;
  v20 = [(CPLRecordTarget *)v18 scopedIdentifier];
  v21 = [v20 identifier];
  v22 = [(CPLCloudKitZoneIdentification *)destinationZoneIdentification recordIDWithRecordName:v21];
  currentRecordID = self->_currentRecordID;
  self->_currentRecordID = v22;

  [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:self->_currentRecordID onBehalfOfRecordWithScopedIdentifier:v15];
  if (self->_sharedZoneIdentification)
  {
    v24 = [(CPLRecordTarget *)self->_currentRecordTarget otherScopedIdentifier];
    v25 = v24;
    if (v24)
    {
      v26 = [v24 scopeIdentifier];
      [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification scopeIdentifier];
      objc_claimAutoreleasedReturnValue();
      v27 = [sub_1000374E8() isEqualToString:v21];

      if (v27)
      {
        sharedZoneIdentification = self->_sharedZoneIdentification;
        [v25 identifier];
        objc_claimAutoreleasedReturnValue();
        v29 = [sub_1000374E8() recordIDWithRecordName:v21];
        sharedRecordID = self->_sharedRecordID;
        self->_sharedRecordID = v29;

        [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:self->_sharedRecordID onBehalfOfRecordWithScopedIdentifier:v15];
      }
    }

    if ([v8 isMasterChange] && objc_msgSend(v8, "isFullRecord"))
    {
      if (!self->_mastersNotYetUploadedToPrivateZone)
      {
        v31 = objc_alloc_init(NSMutableDictionary);
        mastersNotYetUploadedToPrivateZone = self->_mastersNotYetUploadedToPrivateZone;
        self->_mastersNotYetUploadedToPrivateZone = v31;
      }

      if (!self->_mastersNotYetUploadedToSharedZone)
      {
        v33 = objc_alloc_init(NSMutableDictionary);
        mastersNotYetUploadedToSharedZone = self->_mastersNotYetUploadedToSharedZone;
        self->_mastersNotYetUploadedToSharedZone = v33;
      }

      v35 = self->_mastersNotYetUploadedToPrivateZone;
      [v8 scopedIdentifier];
      objc_claimAutoreleasedReturnValue();
      [sub_1000374E8() setObject:v8 forKeyedSubscript:v21];

      v36 = self->_mastersNotYetUploadedToSharedZone;
      [v8 scopedIdentifier];
      objc_claimAutoreleasedReturnValue();
      [sub_1000374E8() setObject:v8 forKeyedSubscript:v21];
    }
  }

  v37 = objc_alloc_init(CPLCloudKitResourceCountAndSize);
  if ([v8 isDelete])
  {
    v38 = [(CPLRecordTarget *)self->_currentRecordTarget targetState];
    if (v38 < 2)
    {
      [(CPLCKBatchUploadPlanner *)self _deleteRecord];
    }

    else
    {
      if (v38 != 2)
      {
        if (v38 != 3)
        {
          goto LABEL_44;
        }

        [(CPLCKBatchUploadPlanner *)self _deleteRecord];
      }

      [(CPLCKBatchUploadPlanner *)self _deleteSharedRecord];
    }
  }

  else
  {
    if ([v8 supportsResources])
    {
      scopedIdentifiersNeedingToCallProgressHandler = self->_scopedIdentifiersNeedingToCallProgressHandler;
      if (!scopedIdentifiersNeedingToCallProgressHandler)
      {
        v40 = objc_alloc_init(NSMutableSet);
        v41 = self->_scopedIdentifiersNeedingToCallProgressHandler;
        self->_scopedIdentifiersNeedingToCallProgressHandler = v40;

        scopedIdentifiersNeedingToCallProgressHandler = self->_scopedIdentifiersNeedingToCallProgressHandler;
      }

      [(NSMutableSet *)scopedIdentifiersNeedingToCallProgressHandler addObject:v15];
    }

    if (![v8 prepareWithCKRecordBuilder:self resourceCountAndSize:v37 scopeProvider:self error:a4])
    {
      v46 = 0;
      goto LABEL_62;
    }

    if (self->_metric)
    {
      if (sub_1001941F8(v37) || sub_100194228(v37))
      {
        [(CPLCloudKitUploadMetric *)self->_metric setItemCount:[(CPLCloudKitUploadMetric *)self->_metric itemCount]+ 1];
        [(CPLCloudKitUploadMetric *)self->_metric setUploadSize:[(CPLCloudKitUploadMetric *)self->_metric uploadSize]+ sub_1001941F8(v37)];
        [(CPLCloudKitUploadMetric *)self->_metric setReferencedResourcesSize:[(CPLCloudKitUploadMetric *)self->_metric referencedResourcesSize]+ sub_100194228(v37)];
        [(CPLCloudKitUploadMetric *)self->_metric setReferencedResourcesCount:[(CPLCloudKitUploadMetric *)self->_metric referencedResourcesCount]+ sub_100194210(v37)];
      }

      else
      {
        [(CPLCloudKitUploadMetric *)self->_metric setOtherItemCount:[(CPLCloudKitUploadMetric *)self->_metric otherItemCount]+ 1];
      }
    }

    if (self->_sharedZoneIdentification && [v8 supportsSharingScopedIdentifier] && objc_msgSend(v8, "hasChangeType:", 64))
    {
      v42 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification scopeIdentifier];
      v43 = [v8 isSharedInScopeWithIdentifier:v42];

      v44 = [v8 relatedScopedIdentifier];
      v45 = v44;
      if (v43)
      {
        if (v44)
        {
          if ((-[CPLRecordTarget shouldUploadToOtherRecord](self->_currentRecordTarget, "shouldUploadToOtherRecord") & 1) == 0 && ([v8 _relatedRecordShouldBeShared] & 1) == 0 && objc_msgSend(v8, "isAssetChange"))
          {
            v60 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v45];
            if ([v60 targetState] == 3)
            {
              [sub_1000374D0() _copyPrivateMasterWithScopedIdentifier:? masterTarget:? uploadIndex:? reason:?];
            }
          }

          [v8 relatedRecordClass];
          v58 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v45];
          [sub_1000374D0() _addRecordWithScopedIdentifierToShareTodos:? recordClass:? proposedContributorUserIdentifiers:? target:? force:?];
        }

        v57 = [v8 updateSharingContributorUserIdentifiers];
        v59 = [v8 scopedIdentifier];
        -[CPLCKBatchUploadPlanner _addRecordWithScopedIdentifierToShareTodos:recordClass:proposedContributorUserIdentifiers:target:force:](self, "_addRecordWithScopedIdentifierToShareTodos:recordClass:proposedContributorUserIdentifiers:target:force:", v59, [v8 recordClass], v57, self->_currentRecordTarget, 0);
      }

      else
      {
        if (v44)
        {
          [v8 relatedRecordClass];
          v56 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v45];
          [sub_1000374D0() _addRecordWithScopedIdentifierToUnshareTodos:? recordClass:? target:?];
        }

        v57 = [v8 scopedIdentifier];
        -[CPLCKBatchUploadPlanner _addRecordWithScopedIdentifierToUnshareTodos:recordClass:target:](self, "_addRecordWithScopedIdentifierToUnshareTodos:recordClass:target:", v57, [v8 recordClass], self->_currentRecordTarget);
      }
    }
  }

LABEL_44:
  if (self->_ckRecordToUpload)
  {
    if (!self->_uploadContext)
    {
      v47 = objc_alloc_init(CPLCloudKitUploadOperationContext);
      uploadContext = self->_uploadContext;
      self->_uploadContext = v47;
    }

    if (self->_sharedZoneIdentification && ([(CPLRecordChange *)self->_currentRecordChange isMasterChange]& 1) == 0 && [(CPLRecordChange *)self->_currentRecordChange supportsSharingScopedIdentifier])
    {
      v49 = [(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord];
      [(CPLCloudKitUploadOperationContext *)self->_uploadContext addRecord:self->_currentRecordChange forRecordID:self->_currentRecordID ignoreResources:v49];
      if (v49)
      {
        goto LABEL_55;
      }
    }

    else
    {
      [(CPLCloudKitUploadOperationContext *)self->_uploadContext addRecord:self->_currentRecordChange forRecordID:self->_currentRecordID ignoreResources:0];
    }

    if (sub_1001941F8(v37))
    {
      v50 = self->_currentRecordID;
      sub_1001941F8(v37);
      [sub_1000374D0() _addCKRecordIDForResourcesUploadProgressTracking:? size:?];
    }
  }

LABEL_55:
  if (self->_sharedCKRecordToUpload)
  {
    if (self->_sharedUploadContext)
    {
      v51 = objc_alloc_init(CPLCloudKitUploadOperationContext);
      sharedUploadContext = self->_sharedUploadContext;
      self->_sharedUploadContext = v51;

      v53 = self->_sharedUploadContext;
    }

    else
    {
      v53 = 0;
    }

    [(CPLCloudKitUploadOperationContext *)v53 addRecord:self->_currentRecordChange forRecordID:self->_sharedRecordID ignoreResources:0];
    if (sub_1001941F8(v37))
    {
      v54 = self->_sharedRecordID;
      sub_1001941F8(v37);
      [sub_1000374D0() _addCKRecordIDForResourcesUploadProgressTracking:? size:?];
    }
  }

  v46 = 1;
LABEL_62:

  return v46;
}

- (void)_addRecordWithScopedIdentifierToUnshareTodos:(id)a3 recordClass:(Class)a4 target:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CPLCKBatchUploadPlanner *)self _shareTodoForRecordWithScopedIdentifier:v8 recordClass:a4 proposedContributorUserIdentifiers:0 target:v9];
  if (-[objc_class isSubclassOfClass:](a4, "isSubclassOfClass:", objc_opt_class()) && [v9 shouldUploadToOtherRecord] && (!v10 ? (v11 = 0) : (v11 = v10[4]), -[NSMutableDictionary objectForKeyedSubscript:](self->_requestedSharedCKRecordIDs, "objectForKeyedSubscript:", v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_1000035AC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification scopeIdentifier];
        v36 = 138412802;
        v37 = a4;
        sub_1000033B4();
        v38 = v8;
        v39 = 2114;
        v40 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "We are already planning to copy shared <%@ %@> to %{public}@ - no need to unshare", &v36, 0x20u);
      }
    }
  }

  else if ([v9 shouldUploadToOtherRecord])
  {
    if (([(NSMutableSet *)self->_dontUnshareScopedIdentifier containsObject:v8]& 1) != 0 || [(CPLCKSharePlan *)self->_sharePlan hasShareTodoForScopedIdentifier:v8])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v16 = sub_1000035AC();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000187DC();
          sub_1000374A0(&_mh_execute_header, v16, v17, "Won't unshare %@", &v36);
        }
      }
    }

    else if (![(CPLCKUnsharePlan *)self->_unsharePlan hasShareTodoForScopedIdentifier:v8])
    {
      if (!self->_unsharePlan)
      {
        v18 = [[CPLCKUnsharePlan alloc] initWithPlanner:self];
        unsharePlan = self->_unsharePlan;
        self->_unsharePlan = v18;
      }

      if (v10)
      {
        [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v10[3] onBehalfOfRecordWithScopedIdentifier:v8];
        v20 = v10[4];
      }

      else
      {
        [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:0 onBehalfOfRecordWithScopedIdentifier:v8];
        v20 = 0;
      }

      [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v20 onBehalfOfRecordWithScopedIdentifier:v8];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = sub_1000035AC();
        if (sub_1000374B8(v21))
        {
          v22 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification engineScope];
          if (v10)
          {
            v23 = v10[4];
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;
          v25 = [v24 recordName];
          if (v10)
          {
            v26 = v10[3];
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;
          v28 = [v27 recordName];
          sub_1000187DC();
          sub_1000033B4();
          v38 = v22;
          v39 = v29;
          v40 = v25;
          v41 = v29;
          v42 = v30;
          sub_10003746C();
          _os_log_impl(v31, v32, v33, v34, v35, 0x2Au);
        }
      }

      [(CPLCKUnsharePlan *)self->_unsharePlan addShareTodo:v10];
    }
  }
}

- (void)_deleteRecord
{
  if ([(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification supportsDeletionOfRecord:self->_currentRecordChange scopeProvider:self])
  {
    if ([(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification supportsDirectDeletionOfRecord:self->_currentRecordChange scopeProvider:self])
    {
      currentRecordID = self->_currentRecordID;

      [(CPLCKBatchUploadPlanner *)self deleteCKRecordWithRecordID:currentRecordID];
    }

    else
    {
      currentRecordChange = self->_currentRecordChange;
      v8 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zone];
      v10 = [CKRecord cpl_expungedRecordFromCPLRecordChange:currentRecordChange inZone:v8 target:self->_currentRecordTarget];

      v9 = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
      [(CPLCKBatchUploadPlanner *)self uploadCKRecord:v10 forScopedIdentifier:v9 triggeringKey:@"isExpunged"];
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1000035AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_currentRecordChange;
      v11 = 138412290;
      v12 = v6;
      sub_1000374A0(&_mh_execute_header, v4, v5, "Dropping %@", &v11);
    }
  }
}

- (void)deleteCKRecordWithRecordID:(id)a3
{
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_1000035AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000187DC();
      sub_1000374A0(&_mh_execute_header, v5, v6, "Will delete shared %{public}@", v10);
    }
  }

  ckRecordIDsToDelete = self->_ckRecordIDsToDelete;
  if (!ckRecordIDsToDelete)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = self->_ckRecordIDsToDelete;
    self->_ckRecordIDsToDelete = v8;

    ckRecordIDsToDelete = self->_ckRecordIDsToDelete;
  }

  [(NSMutableArray *)ckRecordIDsToDelete addObject:v4];
}

- (void)uploadCKRecord:(id)a3 forScopedIdentifier:(id)a4 triggeringKey:(id)a5
{
  sub_10002B0F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v9;
  v15 = v7;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = sub_1000035AC();
    if (sub_1000374B8(v16))
    {
      [v13 recordID];
      *&v25[4] = *v25 = 138543618;
      sub_1000033B4();
      *&v25[14] = v15;
      sub_10003746C();
      _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    }
  }

  v22 = *(v11 + 24);
  if (!v22)
  {
    v23 = objc_alloc_init(NSMutableArray);
    v24 = *(v11 + 24);
    *(v11 + 24) = v23;

    v22 = *(v11 + 24);
  }

  [v22 addObject:{v13, *v25, *&v25[16]}];
}

- (void)deleteSharedCKRecordWithRecordID:(id)a3
{
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_1000035AC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000187DC();
      sub_1000374A0(&_mh_execute_header, v5, v6, "Will delete shared %{public}@", v10);
    }
  }

  sharedCKRecordIDsToDelete = self->_sharedCKRecordIDsToDelete;
  if (!sharedCKRecordIDsToDelete)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = self->_sharedCKRecordIDsToDelete;
    self->_sharedCKRecordIDsToDelete = v8;

    sharedCKRecordIDsToDelete = self->_sharedCKRecordIDsToDelete;
  }

  [(NSMutableArray *)sharedCKRecordIDsToDelete addObject:v4];
}

- (void)uploadSharedCKRecord:(id)a3 forScopedIdentifier:(id)a4 triggeringKey:(id)a5
{
  sub_10002B0F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v9;
  v15 = v7;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = sub_1000035AC();
    if (sub_1000374B8(v16))
    {
      [v13 recordID];
      *&v25[4] = *v25 = 138543618;
      sub_1000033B4();
      *&v25[14] = v15;
      sub_10003746C();
      _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    }
  }

  v22 = *(v11 + 48);
  if (!v22)
  {
    v23 = objc_alloc_init(NSMutableArray);
    v24 = *(v11 + 48);
    *(v11 + 48) = v23;

    v22 = *(v11 + 48);
  }

  [v22 addObject:{v13, *v25, *&v25[16]}];
}

- (void)requestPrivateCKRecordWithRecordIDBeforeUpload:(id)a3 fetchedBlock:(id)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  requestedPrivateCKRecordIDs = self->_requestedPrivateCKRecordIDs;
  if (requestedPrivateCKRecordIDs)
  {
    v12 = [(NSMutableDictionary *)requestedPrivateCKRecordIDs objectForKeyedSubscript:v8];

    if (v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = self->_requestedPrivateCKRecordIDs;
    self->_requestedPrivateCKRecordIDs = v13;
  }

  v15 = [(NSMutableDictionary *)self->_requestedPrivateCKRecordIDs objectForKeyedSubscript:v8];

  if (!v15)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = sub_1000035AC();
      if (sub_1000374B8(v23))
      {
        currentRecordChange = self->_currentRecordChange;
        sub_10003747C();
        sub_10003746C();
        _os_log_impl(v25, v26, v27, v28, v29, 0x20u);
      }
    }

    v15 = objc_retainBlock(v9);
    [(NSMutableDictionary *)self->_requestedPrivateCKRecordIDs setObject:v15 forKeyedSubscript:v8];
    goto LABEL_14;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = sub_1000035AC();
    if (sub_1000374B8(v16))
    {
      v17 = self->_currentRecordChange;
      sub_10003747C();
      sub_10003746C();
      _os_log_impl(v18, v19, v20, v21, v22, 0x20u);
    }

LABEL_14:
  }

LABEL_15:
}

- (id)willUploadRecords
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_1000035AC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification cloudKitScope];
      if (self->_ckRecordsToUpload)
      {
        ckRecordsToUpload = self->_ckRecordsToUpload;
      }

      else
      {
        ckRecordsToUpload = &__NSArray0__struct;
      }

      v6 = [(NSMutableArray *)ckRecordsToUpload cplFullDescription];
      sub_100021CFC();
      sub_100013984();
      sub_100037514(v7, v8, v9, v10, v11);
    }
  }

  dateOfFirstUploadProgress = self->_dateOfFirstUploadProgress;
  self->_dateOfFirstUploadProgress = 0;

  [(CPLCKBatchUploadPlanner *)self _resetPlannerState];
  requestedSharedCKRecordIDs = self->_requestedSharedCKRecordIDs;
  self->_requestedSharedCKRecordIDs = 0;

  uploadContext = self->_uploadContext;

  return uploadContext;
}

- (id)willUploadSharedRecords
{
  if (self->_sharedZoneIdentification && (_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_1000035AC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification cloudKitScope];
      if (self->_sharedCKRecordsToUpload)
      {
        sharedCKRecordsToUpload = self->_sharedCKRecordsToUpload;
      }

      else
      {
        sharedCKRecordsToUpload = &__NSArray0__struct;
      }

      v6 = [(NSMutableArray *)sharedCKRecordsToUpload cplFullDescription];
      sub_100021CFC();
      sub_100013984();
      sub_100037514(v7, v8, v9, v10, v11);
    }
  }

  dateOfFirstUploadProgress = self->_dateOfFirstUploadProgress;
  self->_dateOfFirstUploadProgress = 0;

  sharedUploadContext = self->_sharedUploadContext;

  return sharedUploadContext;
}

@end