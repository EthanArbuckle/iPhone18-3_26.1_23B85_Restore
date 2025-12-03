@interface CPLEngineStatusCenter
- (BOOL)acknowledgeChangedStatuses:(id)statuses error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)discardNotificationForRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)hasStatusChanges;
- (BOOL)notifyStatusForRecordWithScopedIdentifierHasChanged:(id)changed recordClass:(Class)class persist:(BOOL)persist error:(id *)error;
- (CPLEngineStatusCenter)initWithEngineStore:(id)store name:(id)name;
- (id)_allScopedIdentifierInCollection:(id)collection withScopeIdentifier:(id)identifier;
- (id)_statusFromCachesWithRecordScopedIdentifier:(id)identifier;
- (id)allStatusChanges;
- (id)recordForStatusWithScopedIdentifier:(id)identifier;
- (id)recordViewForStatusWithScopedIdentifier:(id)identifier;
- (id)status;
- (id)statusChanges;
- (id)statusesForRecordsWithIdentifiers:(id)identifiers;
- (id)statusesForRecordsWithScopedIdentifiers:(id)identifiers;
- (void)_fillStatus:(id)status;
- (void)_fillStatus:(id)status withClientCacheRecordView:(id)view cloudCacheRecord:(id)record isConfirmed:(BOOL)confirmed isStaged:(BOOL)staged isInIDMapping:(BOOL)mapping;
- (void)_removeScopedIdentifiersFromSet:(id)set withScopeIdentifier:(id)identifier;
- (void)_removeStatusesInDictionary:(id)dictionary withScopeIdentifier:(id)identifier;
- (void)resetAllTransientStatuses;
- (void)resetTransientStatusesWithScopeIdentifier:(id)identifier;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineStatusCenter

- (void)writeTransactionDidSucceed
{
  v33 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = CPLEngineStatusCenter;
  [(CPLEngineStorage *)&v29 writeTransactionDidSucceed];
  if ([(NSMutableSet *)self->_persistedScopedIdentifiers count])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(NSMutableDictionary *)self->_pendingTransientStatuses count]!= 0;
  }

  transientStatuses = self->_transientStatuses;
  allObjects = [(NSMutableSet *)self->_persistedScopedIdentifiers allObjects];
  [(NSMutableDictionary *)transientStatuses removeObjectsForKeys:allObjects];

  [(NSMutableSet *)self->_persistedScopedIdentifiers removeAllObjects];
  [(NSMutableDictionary *)self->_transientStatuses addEntriesFromDictionary:self->_pendingTransientStatuses];
  v6 = self->_transientStatuses;
  allObjects2 = [(NSMutableSet *)self->_pendingDeletedTransientStatuses allObjects];
  [(NSMutableDictionary *)v6 removeObjectsForKeys:allObjects2];

  [(NSMutableDictionary *)self->_pendingTransientStatuses removeAllObjects];
  [(NSMutableSet *)self->_pendingDeletedTransientStatuses removeAllObjects];
  self->_currentGeneration = 0;
  transactionStartDate = self->_transactionStartDate;
  self->_transactionStartDate = 0;

  if ([(NSMutableDictionary *)self->_transientStatuses count]>= 0xC9)
  {
    v9 = 200 - [(NSMutableDictionary *)self->_transientStatuses count];
    if ((_CPLSilentLogging & 1) == 0)
    {
      if (__CPLStorageOSLogDomain_onceToken_20553 != -1)
      {
        dispatch_once(&__CPLStorageOSLogDomain_onceToken_20553, &__block_literal_global_143);
      }

      v10 = __CPLStorageOSLogDomain_result_20554;
      if (os_log_type_enabled(__CPLStorageOSLogDomain_result_20554, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v32 = v9;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Too many pending transient notifications, dropping %lu of them", buf, 0xCu);
      }
    }

    v24 = v3;
    allValues = [(NSMutableDictionary *)self->_transientStatuses allValues];
    v12 = [allValues sortedArrayUsingComparator:&__block_literal_global_20556];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
LABEL_12:
      v17 = 0;
      while (1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = self->_transientStatuses;
        record = [*(*(&v25 + 1) + 8 * v17) record];
        scopedIdentifier = [record scopedIdentifier];
        [(NSMutableDictionary *)v18 removeObjectForKey:scopedIdentifier];

        if (!--v9)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v15)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    v3 = v24;
  }

  if (v3)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore engineLibrary];
    [engineLibrary notifyAttachedObjectsHasStatusChanges];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)allStatusChanges
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NSMutableDictionary *)self->_transientStatuses count]|| [(NSMutableSet *)self->_pendingDeletedTransientStatuses count])
  {
    v4 = [(NSMutableSet *)self->_pendingDeletedTransientStatuses count];
    transientStatuses = self->_transientStatuses;
    if (v4)
    {
      v6 = [(NSMutableDictionary *)transientStatuses mutableCopy];
      [(NSMutableDictionary *)v6 addEntriesFromDictionary:self->_pendingTransientStatuses];
    }

    else
    {
      v6 = transientStatuses;
    }

    v7 = [(NSMutableDictionary *)self->_transientStatuses count];
    if (v7 >= 0x3E8)
    {
      v8 = 1000;
    }

    else
    {
      v8 = v7;
    }

    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __41__CPLEngineStatusCenter_allStatusChanges__block_invoke;
    v25[3] = &unk_1E861F710;
    v25[4] = self;
    v26 = v3;
    v27 = v29;
    v28 = v8;
    [(NSMutableDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v25];

    _Block_object_dispose(v29, 8);
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v10 = [platformObject statusChangesMaximumCount:10000];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        record = [v15 record];
        scopedIdentifier = [record scopedIdentifier];

        v18 = [v3 objectForKeyedSubscript:scopedIdentifier];
        LODWORD(record) = v18 == 0;

        if (record)
        {
          [(CPLEngineStatusCenter *)self _fillStatus:v15];
          [v3 setObject:v15 forKeyedSubscript:scopedIdentifier];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

void __41__CPLEngineStatusCenter_allStatusChanges__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v6 = [v9 record];
  v7 = [v6 scopedIdentifier];

  if (([*(*(a1 + 32) + 72) containsObject:v7] & 1) == 0)
  {
    v8 = [v9 status];
    [*(a1 + 32) _fillStatus:v8];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
    if (++*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56))
    {
      *a4 = 1;
    }
  }
}

- (id)status
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_transientStatuses count])
  {
    v3 = objc_alloc(MEMORY[0x1E696AD60]);
    v24.receiver = self;
    v24.super_class = CPLEngineStatusCenter;
    status = [(CPLEngineStorage *)&v24 status];
    status2 = [v3 initWithFormat:@"%@\n%lu transient:", status, -[NSMutableDictionary count](self->_transientStatuses, "count")];

    v6 = objc_alloc_init(MEMORY[0x1E696AB50]);
    transientStatuses = self->_transientStatuses;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __31__CPLEngineStatusCenter_status__block_invoke;
    v22[3] = &unk_1E861F758;
    v8 = v6;
    v23 = v8;
    [(NSMutableDictionary *)transientStatuses enumerateKeysAndObjectsUsingBlock:v22];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allObjects = [v8 allObjects];
    v10 = [allObjects sortedArrayUsingSelector:sel_compare_];

    v11 = [v10 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [status2 appendFormat:@"\n\t%@: %lu", *(*(&v18 + 1) + 8 * i), objc_msgSend(v8, "countForObject:", *(*(&v18 + 1) + 8 * i))];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CPLEngineStatusCenter;
    status2 = [(CPLEngineStorage *)&v17 status];
  }

  v15 = *MEMORY[0x1E69E9840];

  return status2;
}

void __31__CPLEngineStatusCenter_status__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 record];
  v5 = objc_opt_class();

  v6 = *(a1 + 32);
  v7 = NSStringFromClass(v5);
  [v6 addObject:v7];
}

- (id)recordViewForStatusWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  engineStore = [(CPLEngineStorage *)self engineStore];
  transactionClientCacheView = [engineStore transactionClientCacheView];
  v7 = [transactionClientCacheView recordViewWithScopedIdentifier:identifierCopy];

  if (v7)
  {
    asRecordView = v7;
  }

  else
  {
    quarantinedRecords = [engineStore quarantinedRecords];
    v10 = [quarantinedRecords classForQuarantinedRecordWithScopedIdentifier:identifierCopy];

    if (!v10)
    {
      v10 = objc_opt_class();
    }

    v11 = [v10 newRecordWithScopedIdentifier:identifierCopy];
    asRecordView = [v11 asRecordView];
  }

  return asRecordView;
}

- (id)recordForStatusWithScopedIdentifier:(id)identifier
{
  v3 = [(CPLEngineStatusCenter *)self recordViewForStatusWithScopedIdentifier:identifier];
  synthesizedRecord = [v3 synthesizedRecord];

  return synthesizedRecord;
}

- (id)_statusFromCachesWithRecordScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  engineStore = [(CPLEngineStorage *)self engineStore];
  transactionClientCacheView = [engineStore transactionClientCacheView];
  v7 = [transactionClientCacheView recordViewWithScopedIdentifier:identifierCopy];

  v19 = 0;
  v18 = 0;
  idMapping = [engineStore idMapping];
  v9 = [idMapping cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:&v19 + 1];
  cloudCache = v9;
  if (!v9)
  {
    cloudCache = [identifierCopy copy];
    v13 = [idMapping localScopedIdentifierForCloudScopedIdentifier:cloudCache isFinal:&v19 + 1];

    if (v13)
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_5;
    }

    if (!cloudCache)
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_6;
    }
  }

  v11 = cloudCache;
  cloudCache = [engineStore cloudCache];
  v12 = [cloudCache recordWithScopedIdentifier:v11 isConfirmed:&v19 isStaged:&v18];
LABEL_5:

LABEL_6:
  recordClass = [v7 recordClass];
  if (!recordClass)
  {
    recordClass = objc_opt_class();
    if (!recordClass)
    {
      recordClass = objc_opt_class();
    }
  }

  v15 = [recordClass newRecordWithScopedIdentifier:identifierCopy];
  v16 = [[CPLRecordStatus alloc] initWithRecord:v15 generation:0];
  [(CPLEngineStatusCenter *)self _fillStatus:v16 withClientCacheRecordView:v7 cloudCacheRecord:v12 isConfirmed:v19 isStaged:v18 isInIDMapping:v9 != 0];

  return v16;
}

- (void)_fillStatus:(id)status
{
  statusCopy = status;
  engineStore = [(CPLEngineStorage *)self engineStore];
  record = [statusCopy record];
  scopedIdentifier = [record scopedIdentifier];

  transactionClientCacheView = [engineStore transactionClientCacheView];
  v9 = [transactionClientCacheView recordViewWithScopedIdentifier:scopedIdentifier];

  v17 = 0;
  v16 = 0;
  idMapping = [engineStore idMapping];
  v11 = [idMapping cloudScopedIdentifierForLocalScopedIdentifier:scopedIdentifier isFinal:&v17 + 1];

  if (v11)
  {
    cloudCache = [engineStore cloudCache];
    v13 = [cloudCache recordWithScopedIdentifier:v11 isConfirmed:&v17 isStaged:&v16];

    v14 = v16;
    v15 = v17;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v13 = 0;
  }

  [(CPLEngineStatusCenter *)self _fillStatus:statusCopy withClientCacheRecordView:v9 cloudCacheRecord:v13 isConfirmed:v15 & 1 isStaged:v14 & 1 isInIDMapping:v11 != 0];
}

- (void)_fillStatus:(id)status withClientCacheRecordView:(id)view cloudCacheRecord:(id)record isConfirmed:(BOOL)confirmed isStaged:(BOOL)staged isInIDMapping:(BOOL)mapping
{
  mappingCopy = mapping;
  stagedCopy = staged;
  confirmedCopy = confirmed;
  statusCopy = status;
  recordCopy = record;
  engineStore = [(CPLEngineStorage *)self engineStore];
  pushRepository = [engineStore pushRepository];
  record = [statusCopy record];
  scopedIdentifier = [record scopedIdentifier];

  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = __115__CPLEngineStatusCenter__fillStatus_withClientCacheRecordView_cloudCacheRecord_isConfirmed_isStaged_isInIDMapping___block_invoke;
  v35 = &unk_1E861B1C8;
  v36 = pushRepository;
  v20 = scopedIdentifier;
  v37 = v20;
  v21 = statusCopy;
  v38 = v21;
  v22 = pushRepository;
  v23 = MEMORY[0x1E128EBA0](&v32);
  v24 = v23;
  if (!view)
  {
    if (recordCopy)
    {
      (*(v23 + 16))(v23);
      if ([v21 isWaitingForUpdate] & 1) != 0 || (objc_msgSend(v21, "isUpdating"))
      {
        goto LABEL_16;
      }

      if (stagedCopy)
      {
        goto LABEL_3;
      }
    }

    else if (!mappingCopy)
    {
      [v21 setUnknown:1];
      goto LABEL_16;
    }

    [v21 setResetting:1];
    goto LABEL_16;
  }

  (*(v23 + 16))(v23);
  if (recordCopy)
  {
LABEL_3:
    [v21 setUploaded:1];
    goto LABEL_16;
  }

  if ([v21 isUpdating])
  {
    [v21 setUploading:1];
    [v21 setUpdating:0];
  }

  else if ([v21 isWaitingForUpdate])
  {
    [v21 setWaitingForUpload:1];
    [v21 setWaitingForUpdate:0];
  }

LABEL_16:
  if (([v21 isResetting] & 1) == 0 && (objc_msgSend(v21, "isUnknown") & 1) == 0)
  {
    sharingScopeIdentifier = [engineStore sharingScopeIdentifier];
    v26 = sharingScopeIdentifier;
    if (recordCopy && sharingScopeIdentifier)
    {
      if ([recordCopy supportsSharingScopedIdentifier] && objc_msgSend(recordCopy, "isSharedInScopeWithIdentifier:", v26))
      {
        [v21 setShared:1];
      }

      else if ([recordCopy supportsSharing])
      {
        cloudCache = [engineStore cloudCache];
        scopedIdentifier2 = [recordCopy scopedIdentifier];
        v31 = [cloudCache targetForRecordWithCloudScopedIdentifier:scopedIdentifier2];

        if (([v31 targetState] & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          [v21 setShared:1];
        }
      }
    }
  }

  quarantinedRecords = [engineStore quarantinedRecords];
  v30 = [quarantinedRecords isRecordWithScopedIdentifierQuarantined:v20];

  if (v30)
  {
    [v21 setQuarantined:1];
  }

  if (recordCopy && confirmedCopy && ([v21 isWaitingForUpdate] & 1) == 0)
  {
    [v21 setConfirmed:1];
  }
}

void __115__CPLEngineStatusCenter__fillStatus_withClientCacheRecordView_cloudCacheRecord_isConfirmed_isStaged_isInIDMapping___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) storedExtractedBatch];
  v2 = [v4 batch];
  v3 = [v2 hasChangeWithScopedIdentifier:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 48) setUpdating:1];
  }

  else if ([*(a1 + 32) hasSomeChangeWithScopedIdentifier:*(a1 + 40)])
  {
    [*(a1 + 48) setWaitingForUpdate:1];
  }
}

uint64_t __51__CPLEngineStatusCenter_writeTransactionDidSucceed__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)writeTransactionDidFail
{
  v4.receiver = self;
  v4.super_class = CPLEngineStatusCenter;
  [(CPLEngineStorage *)&v4 writeTransactionDidFail];
  [(NSMutableSet *)self->_persistedScopedIdentifiers removeAllObjects];
  [(NSMutableDictionary *)self->_pendingTransientStatuses removeAllObjects];
  [(NSMutableSet *)self->_pendingDeletedTransientStatuses removeAllObjects];
  self->_currentGeneration = 0;
  transactionStartDate = self->_transactionStartDate;
  self->_transactionStartDate = 0;
}

- (BOOL)discardNotificationForRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  persistedScopedIdentifiers = self->_persistedScopedIdentifiers;
  identifierCopy = identifier;
  [(NSMutableSet *)persistedScopedIdentifiers removeObject:identifierCopy];
  [(NSMutableDictionary *)self->_pendingTransientStatuses removeObjectForKey:identifierCopy];
  [(NSMutableSet *)self->_pendingDeletedTransientStatuses addObject:identifierCopy];
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject discardNotificationForRecordWithScopedIdentifier:identifierCopy error:error];

  return error;
}

- (BOOL)acknowledgeChangedStatuses:(id)statuses error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = statuses;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        record = [v9 record];
        scopedIdentifier = [record scopedIdentifier];

        v12 = [(NSMutableDictionary *)self->_transientStatuses objectForKeyedSubscript:scopedIdentifier];
        v13 = [(NSMutableDictionary *)self->_pendingTransientStatuses objectForKeyedSubscript:scopedIdentifier];
        v14 = v13;
        if (v13)
        {
          generation = [v13 generation];
          if (generation <= [v9 generation])
          {
            [(NSMutableDictionary *)self->_pendingTransientStatuses removeObjectForKey:scopedIdentifier];

            v14 = 0;
          }
        }

        if (v12)
        {
          generation2 = [v12 generation];
          generation3 = [v9 generation];
          if (!v14 && generation2 <= generation3)
          {
            [(NSMutableSet *)self->_pendingDeletedTransientStatuses addObject:scopedIdentifier];
          }
        }

        v25 = 0;
        platformObject = [(CPLEngineStorage *)self platformObject];
        v19 = [platformObject acknowledgeChangedStatus:v9 hasBeenDeleted:&v25 error:error];

        if (!v19)
        {

          v20 = 0;
          goto LABEL_20;
        }

        if (v25 == 1)
        {
          [(NSMutableSet *)self->_persistedScopedIdentifiers removeObject:scopedIdentifier];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_20:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)statusesForRecordsWithIdentifiers:(id)identifiers
{
  v4 = [CPLScopedIdentifier scopedIdentifiersFromArrayOfUnknownIdentifiers:identifiers];
  v5 = [(CPLEngineStatusCenter *)self statusesForRecordsWithScopedIdentifiers:v4];
  v6 = [CPLScopedIdentifier unscopedIdentifiersFromDictionaryOfScopedIdentifiers:v5];

  return v6;
}

- (id)statusesForRecordsWithScopedIdentifiers:(id)identifiers
{
  v24 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [(NSMutableDictionary *)self->_pendingTransientStatuses objectForKeyedSubscript:v11, v19];
        if (v12 || ([(NSMutableDictionary *)self->_transientStatuses objectForKeyedSubscript:v11], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          platformObject = v12;
          status = [v12 status];
        }

        else
        {
          platformObject = [(CPLEngineStorage *)self platformObject];
          status = [platformObject statusForRecordWithScopedIdentifier:v11];
        }

        v15 = status;

        if (v15)
        {
          [(CPLEngineStatusCenter *)self _fillStatus:v15];
        }

        else
        {
          v15 = [(CPLEngineStatusCenter *)self _statusFromCachesWithRecordScopedIdentifier:v11];
        }

        [v5 setObject:v15 forKeyedSubscript:v11];

        ++v10;
      }

      while (v8 != v10);
      v16 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v8 = v16;
    }

    while (v16);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)resetAllTransientStatuses
{
  [(NSMutableSet *)self->_persistedScopedIdentifiers removeAllObjects];
  [(NSMutableDictionary *)self->_pendingTransientStatuses removeAllObjects];
  [(NSMutableSet *)self->_pendingDeletedTransientStatuses removeAllObjects];
  transientStatuses = self->_transientStatuses;

  [(NSMutableDictionary *)transientStatuses removeAllObjects];
}

- (void)resetTransientStatusesWithScopeIdentifier:(id)identifier
{
  transientStatuses = self->_transientStatuses;
  identifierCopy = identifier;
  [(CPLEngineStatusCenter *)self _removeStatusesInDictionary:transientStatuses withScopeIdentifier:identifierCopy];
  [(CPLEngineStatusCenter *)self _removeStatusesInDictionary:self->_pendingTransientStatuses withScopeIdentifier:identifierCopy];
  [(CPLEngineStatusCenter *)self _removeScopedIdentifiersFromSet:self->_persistedScopedIdentifiers withScopeIdentifier:identifierCopy];
  [(CPLEngineStatusCenter *)self _removeScopedIdentifiersFromSet:self->_pendingDeletedTransientStatuses withScopeIdentifier:identifierCopy];
}

- (void)_removeScopedIdentifiersFromSet:(id)set withScopeIdentifier:(id)identifier
{
  setCopy = set;
  v5 = [CPLEngineStatusCenter _allScopedIdentifierInCollection:"_allScopedIdentifierInCollection:withScopeIdentifier:" withScopeIdentifier:?];
  if (v5)
  {
    [setCopy minusSet:v5];
  }
}

- (void)_removeStatusesInDictionary:(id)dictionary withScopeIdentifier:(id)identifier
{
  dictionaryCopy = dictionary;
  v8 = [(CPLEngineStatusCenter *)self _allScopedIdentifierInCollection:dictionaryCopy withScopeIdentifier:identifier];
  allObjects = [v8 allObjects];
  [dictionaryCopy removeObjectsForKeys:allObjects];
}

- (id)_allScopedIdentifierInCollection:(id)collection withScopeIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [collectionCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(collectionCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        scopeIdentifier = [v12 scopeIdentifier];
        v14 = [scopeIdentifier isEqualToString:identifierCopy];

        if (v14)
        {
          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          }

          [v9 addObject:v12];
        }
      }

      v8 = [collectionCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)statusChanges
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_transientStatuses count]|| [(NSMutableSet *)self->_pendingDeletedTransientStatuses count])
  {
    v3 = [(NSMutableSet *)self->_pendingDeletedTransientStatuses count];
    transientStatuses = self->_transientStatuses;
    if (v3)
    {
      v5 = [(NSMutableDictionary *)transientStatuses mutableCopy];
      [(NSMutableDictionary *)v5 addEntriesFromDictionary:self->_pendingTransientStatuses];
    }

    else
    {
      v5 = transientStatuses;
    }

    v6 = [(NSMutableDictionary *)self->_transientStatuses count];
    if (v6 >= 0x3E8)
    {
      v7 = 1000;
    }

    else
    {
      v7 = v6;
    }

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = 0;
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __38__CPLEngineStatusCenter_statusChanges__block_invoke;
    v24[3] = &unk_1E861F710;
    v24[4] = self;
    v9 = v8;
    v25 = v9;
    v26 = v28;
    v27 = v7;
    [(NSMutableDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v24];
    v10 = [v9 count];
    v11 = v25;
    if (v10)
    {
      v12 = v9;

      _Block_object_dispose(v28, 8);
      goto LABEL_20;
    }

    _Block_object_dispose(v28, 8);
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v14 = [platformObject statusChangesMaximumCount:1000];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v14;
  v15 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v15)
  {
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v5);
        }

        [(CPLEngineStatusCenter *)self _fillStatus:*(*(&v20 + 1) + 8 * i), v20];
      }

      v15 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v15);
  }

  v12 = v5;
LABEL_20:

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

void __38__CPLEngineStatusCenter_statusChanges__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v6 = [v9 record];
  v7 = [v6 scopedIdentifier];

  if (([*(*(a1 + 32) + 72) containsObject:v7] & 1) == 0)
  {
    v8 = [v9 status];
    [*(a1 + 32) _fillStatus:v8];
    [*(a1 + 40) addObject:v8];
    if (++*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56))
    {
      *a4 = 1;
    }
  }
}

- (BOOL)notifyStatusForRecordWithScopedIdentifierHasChanged:(id)changed recordClass:(Class)class persist:(BOOL)persist error:(id *)error
{
  changedCopy = changed;
  if (!self->_transactionStartDate)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v12 = [platformObject getNewGeneration:&self->_currentGeneration error:error];

    if (!v12)
    {
      v18 = 0;
      goto LABEL_17;
    }

    date = [MEMORY[0x1E695DF00] date];
    transactionStartDate = self->_transactionStartDate;
    self->_transactionStartDate = date;
  }

  if (([(NSMutableSet *)self->_persistedScopedIdentifiers containsObject:changedCopy]& 1) == 0)
  {
    v15 = [(NSMutableDictionary *)self->_pendingTransientStatuses objectForKeyedSubscript:changedCopy];
    v16 = v15;
    if (persist)
    {
      if (v15)
      {
        status = [(_CPLTransientStatus *)v15 status];
        [(NSMutableDictionary *)self->_pendingTransientStatuses removeObjectForKey:changedCopy];
      }

      else
      {
        v19 = [(objc_class *)class newRecordWithScopedIdentifier:changedCopy];
        status = [[CPLRecordStatus alloc] initWithRecord:v19 generation:self->_currentGeneration];
      }

      v20 = [(NSMutableDictionary *)self->_transientStatuses objectForKeyedSubscript:changedCopy];

      if (v20)
      {
        [(NSMutableSet *)self->_pendingDeletedTransientStatuses addObject:changedCopy];
      }

      [(NSMutableSet *)self->_persistedScopedIdentifiers addObject:changedCopy];
      platformObject2 = [(CPLEngineStorage *)self platformObject];
      v18 = [platformObject2 addStatus:status error:error];

      goto LABEL_16;
    }

    if (!v16)
    {
      [(NSMutableSet *)self->_pendingDeletedTransientStatuses removeObject:changedCopy];
      status = [(objc_class *)class newRecordWithScopedIdentifier:changedCopy];
      v16 = [[_CPLTransientStatus alloc] initWithRecord:status generation:self->_currentGeneration date:self->_transactionStartDate];
      [(NSMutableDictionary *)self->_pendingTransientStatuses setObject:v16 forKeyedSubscript:changedCopy];
      v18 = 1;
LABEL_16:

      goto LABEL_17;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (BOOL)hasStatusChanges
{
  if ([(NSMutableDictionary *)self->_transientStatuses count])
  {
    return 1;
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  hasStatusChanges = [platformObject hasStatusChanges];

  return hasStatusChanges;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  [(NSMutableSet *)self->_persistedScopedIdentifiers removeAllObjects];
  [(NSMutableDictionary *)self->_pendingTransientStatuses removeAllObjects];
  [(NSMutableSet *)self->_pendingDeletedTransientStatuses removeAllObjects];
  self->_currentGeneration = 0;
  transactionStartDate = self->_transactionStartDate;
  self->_transactionStartDate = 0;

  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  return error;
}

- (CPLEngineStatusCenter)initWithEngineStore:(id)store name:(id)name
{
  v14.receiver = self;
  v14.super_class = CPLEngineStatusCenter;
  v4 = [(CPLEngineStorage *)&v14 initWithEngineStore:store name:name];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    persistedScopedIdentifiers = v4->_persistedScopedIdentifiers;
    v4->_persistedScopedIdentifiers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingTransientStatuses = v4->_pendingTransientStatuses;
    v4->_pendingTransientStatuses = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingDeletedTransientStatuses = v4->_pendingDeletedTransientStatuses;
    v4->_pendingDeletedTransientStatuses = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    transientStatuses = v4->_transientStatuses;
    v4->_transientStatuses = v11;
  }

  return v4;
}

@end