@interface CPLEngineTransientRepository
+ (id)orderedClassesForChanges;
+ (id)orderedClassesForChangesForLargeSync;
+ (id)orderedClassesForDelete;
- (BOOL)_appendBatchToStorage:(id)storage alreadyMingled:(BOOL)mingled countOfAssetChanges:(unint64_t *)changes error:(id *)error;
- (BOOL)deleteMingledRecordsForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasMingledRecordsForScopeWithIdentifier:(id)identifier;
- (BOOL)hasOnlyMingledRecordsWithScopeIdentifier:(id)identifier;
- (BOOL)hasRecordWithScopedIdentifier:(id)identifier;
- (BOOL)hasStashedChangesForScopeWithIdentifier:(id)identifier;
- (BOOL)hasStashedRecordWithScopedIdentifier:(id)identifier;
- (BOOL)hasUnmingledChanges;
- (BOOL)hasUnmingledChangesForScope:(id)scope;
- (BOOL)hasUnmingledNonStashedRecordsForScopeWithIdentifier:(id)identifier;
- (BOOL)hasUnmingledOrStashedRecordsWithScopeFilter:(id)filter;
- (BOOL)markUnmingledChangeWithScopedIdentifierAsMingled:(id)mingled error:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)popChangeBatchOfRemappedRecords:(id *)records scope:(id)scope maximumCount:(unint64_t)count error:(id *)error;
- (BOOL)resetMingledRecordsWithScopeFilter:(id)filter error:(id *)error;
- (BOOL)resetTransientRepositoryForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)shouldKeepDeleteChange:(id)change forRecordWithScopedIdentifier:(id)identifier;
- (BOOL)stashChangeWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)unstashRecordsForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count hasMore:(BOOL *)more unstashedCount:(unint64_t *)unstashedCount error:(id *)error;
- (CPLEngineTransientRepository)initWithEngineStore:(id)store name:(id)name;
- (id)_sharedDeleteFromDelete:(id)delete;
- (id)allUnmingledChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier;
- (id)allUnmingledChangesWithClass:(Class)class scopeIdentifier:(id)identifier;
- (id)allUnmingledChangesWithScopeIdentifier:(id)identifier;
- (id)allUnmingledDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier;
- (id)allUnmingledNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier;
- (id)batchStorageForScope:(id)scope;
- (id)cachedRecordWithScopedIdentifier:(id)identifier;
- (id)changeWithScopedIdentifier:(id)identifier;
- (id)nextBatchOfRemappedRecordsInScope:(id)scope maximumCount:(unint64_t)count;
- (id)status;
- (id)unmingledChangeWithScopedIdentifier:(id)identifier;
- (unint64_t)countOfUnmingledRecords;
- (void)setMaximumCountOfRecordsInBatches:(unint64_t)batches;
@end

@implementation CPLEngineTransientRepository

- (id)status
{
  v6.receiver = self;
  v6.super_class = CPLEngineTransientRepository;
  status = [(CPLEngineStorage *)&v6 status];
  v4 = [status mutableCopy];

  if ([(NSMutableArray *)self->_observers count])
  {
    [v4 appendFormat:@"\n%lu observers", -[NSMutableArray count](self->_observers, "count")];
  }

  return v4;
}

- (BOOL)openWithError:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CPLEngineTransientRepository;
  v4 = [(CPLEngineStorage *)&v10 openWithError:error];
  if (v4)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults integerForKey:@"CPLMaximumSizeForPulledBatches"];

    if (v6 >= 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = __CPLStorageOSLogDomain_9448();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v12 = v6;
          _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Will give batches with a maximum size of %lu", buf, 0xCu);
        }
      }

      self->_maximumCountOfRecordsInBatches = v6;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)hasStashedChangesForScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasStashedChangesForScopeWithIdentifier:identifierCopy];

  return v6;
}

- (BOOL)unstashRecordsForScopeWithIdentifier:(id)identifier maxCount:(unint64_t)count hasMore:(BOOL *)more unstashedCount:(unint64_t *)unstashedCount error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject unstashRecordsForScopeWithIdentifier:identifierCopy maxCount:count hasMore:more unstashedCount:unstashedCount error:error];

  return error;
}

- (BOOL)stashChangeWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject stashChangeWithScopedIdentifier:identifierCopy error:error];

  return error;
}

- (BOOL)hasUnmingledOrStashedRecordsWithScopeFilter:(id)filter
{
  filterCopy = filter;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasUnmingledOrStashedRecordsWithScopeFilter:filterCopy];

  return v6;
}

- (BOOL)resetTransientRepositoryForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_9448();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Deleting all transient changes in storage", v11, 2u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject deleteAllRecordsForScopeWithIdentifier:identifierCopy error:error];

  return v9;
}

- (unint64_t)countOfUnmingledRecords
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  countOfUnmingledRecords = [platformObject countOfUnmingledRecords];

  return countOfUnmingledRecords;
}

- (BOOL)deleteMingledRecordsForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_9448();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Deleting mingled records", v11, 2u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject deleteMingledRecordsForScopeWithIdentifier:identifierCopy error:error];

  return v9;
}

- (BOOL)resetMingledRecordsWithScopeFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject resetMingledRecordsWithScopeFilter:filterCopy error:error];

  if (v8)
  {
    observers = self->_observers;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__CPLEngineTransientRepository_resetMingledRecordsWithScopeFilter_error___block_invoke;
    v11[3] = &unk_1E861CC50;
    v11[4] = self;
    v12 = filterCopy;
    [(NSMutableArray *)observers enumerateObjectsUsingBlock:v11];
  }

  return v8;
}

- (BOOL)hasOnlyMingledRecordsWithScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasOnlyMingledRecordsWithScopeIdentifier:identifierCopy];

  return v6;
}

- (BOOL)hasUnmingledNonStashedRecordsForScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasUnmingledNonStashedRecordsForScopeWithIdentifier:identifierCopy];

  return v6;
}

- (BOOL)hasMingledRecordsForScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasMingledRecordsForScopeWithIdentifier:identifierCopy];

  return v6;
}

- (BOOL)markUnmingledChangeWithScopedIdentifierAsMingled:(id)mingled error:(id *)error
{
  mingledCopy = mingled;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject markUnmingledChangeWithScopedIdentifierAsMingled:mingledCopy error:error];

  return error;
}

- (id)allUnmingledChangesWithScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject allUnmingledChangesWithScopeIdentifier:identifierCopy];

  return v6;
}

- (id)allUnmingledChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject allUnmingledChangesWithClass:class relatedScopedIdentifier:identifierCopy];

  return v8;
}

- (id)allUnmingledDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject allUnmingledDeletedChangesWithClass:class scopeIdentifier:identifierCopy];

  return v8;
}

- (id)allUnmingledNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject allUnmingledNonDeletedChangesWithClass:class scopeIdentifier:identifierCopy];

  return v8;
}

- (id)allUnmingledChangesWithClass:(Class)class scopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject allUnmingledChangesWithClass:class scopeIdentifier:identifierCopy];

  return v8;
}

- (id)unmingledChangeWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject unmingledChangeWithScopedIdentifier:identifierCopy];

  return v6;
}

- (BOOL)popChangeBatchOfRemappedRecords:(id *)records scope:(id)scope maximumCount:(unint64_t)count error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject popChangeBatchOfRemappedRecords:records scope:scopeCopy maximumCount:count error:error];

  return error;
}

- (id)nextBatchOfRemappedRecordsInScope:(id)scope maximumCount:(unint64_t)count
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject nextBatchOfRemappedRecordsInScope:scopeCopy maximumCount:count];

  return v8;
}

- (BOOL)_appendBatchToStorage:(id)storage alreadyMingled:(BOOL)mingled countOfAssetChanges:(unint64_t *)changes error:(id *)error
{
  mingledCopy = mingled;
  v68 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v54 = objc_alloc_init(CPLChangeBatch);
  selfCopy = self;
  engineStore = [(CPLEngineStorage *)self engineStore];
  remappedRecords = [engineStore remappedRecords];
  sharingScopeIdentifier = [engineStore sharingScopeIdentifier];
  v50 = engineStore;
  ignoredRecords = [engineStore ignoredRecords];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = storageCopy;
  v56 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v56)
  {
    v46 = a2;
    v11 = 0;
    v57 = 0;
    v55 = *v62;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v62 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v61 + 1) + 8 * v12);
      v14 = objc_autoreleasePoolPush();
      scopedIdentifier = [v13 scopedIdentifier];
      scopeIdentifier = [scopedIdentifier scopeIdentifier];
      mainScopeIdentifier = [(CPLEngineStorage *)selfCopy mainScopeIdentifier];
      v18 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

      if ((v18 & 1) == 0 && sharingScopeIdentifier)
      {
        scopeIdentifier2 = [scopedIdentifier scopeIdentifier];
        v18 = [scopeIdentifier2 isEqualToString:sharingScopeIdentifier];
      }

      if (![v13 isDelete])
      {
        v23 = v13;
        objc_opt_class();
        v57 += objc_opt_isKindOfClass() & 1;
        if (v18)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (sharingScopeIdentifier)
      {
        scopeIdentifier3 = [scopedIdentifier scopeIdentifier];
        v21 = [scopeIdentifier3 isEqualToString:sharingScopeIdentifier];

        if (v21)
        {
          v22 = [(CPLEngineTransientRepository *)selfCopy _sharedDeleteFromDelete:v13];
          goto LABEL_24;
        }
      }

      if (!scopedIdentifier)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v43 = __CPLStorageOSLogDomain_9448();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v66 = 0;
            _os_log_impl(&dword_1DC05A000, v43, OS_LOG_TYPE_ERROR, "Got a delete change with no identifier: %@", buf, 0xCu);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepository.m"];
        [currentHandler handleFailureInMethod:v46 object:selfCopy file:v45 lineNumber:387 description:{@"Got a delete change with no identifier: %@", 0}];

        abort();
      }

      v24 = [(CPLEngineTransientRepository *)selfCopy cachedRecordWithScopedIdentifier:scopedIdentifier];
      if (v24)
      {
        break;
      }

      v27 = [(CPLEngineTransientRepository *)selfCopy changeWithScopedIdentifier:scopedIdentifier];
      if (v27)
      {
        v24 = v27;
        if ([v27 changeType] != 1024)
        {
          break;
        }
      }

      if ([(CPLEngineTransientRepository *)selfCopy shouldKeepDeleteChange:v13 forRecordWithScopedIdentifier:scopedIdentifier])
      {
        v22 = v13;
LABEL_24:
        v23 = v22;
        if (v18)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      v23 = 0;
      if (v18)
      {
        goto LABEL_30;
      }

LABEL_31:
      if (([v13 isDelete] & 1) != 0 || objc_msgSend(v13, "hasChangeType:", 2) && (objc_msgSend(v13, "realIdentifier"), v35 = objc_claimAutoreleasedReturnValue(), v35, !v35))
      {
        scopedIdentifier2 = [v13 scopedIdentifier];
        v33 = [scopedIdentifier2 copy];
        v59 = v11;
        v34 = [remappedRecords removeRemappedRecordWithScopedIdentifier:v33 error:&v59];
        v31 = v59;

        v11 = v31;
        if (!v34)
        {
LABEL_44:

          objc_autoreleasePoolPop(v14);
          if (error)
          {
            v37 = v31;
            v38 = 0;
            *error = v31;
          }

          else
          {
            v38 = 0;
          }

          v11 = v31;
          v40 = v54;
          goto LABEL_52;
        }
      }

      if (v23)
      {
        [(CPLChangeBatch *)v54 addRecord:v23];
      }

      objc_autoreleasePoolPop(v14);
      if (v56 == ++v12)
      {
        v36 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
        v56 = v36;
        if (v36)
        {
          goto LABEL_3;
        }

        goto LABEL_47;
      }
    }

    v25 = objc_opt_class();
    if (v25 == objc_opt_class())
    {
      v26 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:scopedIdentifier];
    }

    else
    {
      v26 = v13;
    }

    v23 = v26;
    relatedIdentifier = [v24 relatedIdentifier];
    if (relatedIdentifier)
    {
      [v23 setRelatedIdentifier:relatedIdentifier];
    }

    if (v18)
    {
LABEL_30:
      scopedIdentifier3 = [v13 scopedIdentifier];
      v60 = v11;
      v30 = [ignoredRecords removeRecordWithScopedIdentifier:scopedIdentifier3 error:&v60];
      v31 = v60;

      v11 = v31;
      if (!v30)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v11 = 0;
  v57 = 0;
LABEL_47:

  if (changes)
  {
    *changes = v57;
  }

  platformObject = [(CPLEngineStorage *)selfCopy platformObject];
  v40 = v54;
  v38 = [platformObject appendBatch:v54 alreadyMingled:mingledCopy error:error];

LABEL_52:
  v41 = *MEMORY[0x1E69E9840];
  return v38;
}

- (id)_sharedDeleteFromDelete:(id)delete
{
  deleteCopy = delete;
  engineStore = [(CPLEngineStorage *)self engineStore];
  cloudCache = [engineStore cloudCache];

  scopedIdentifier = [deleteCopy scopedIdentifier];
  v8 = [cloudCache targetForRecordWithSharedCloudScopedIdentifier:scopedIdentifier];
  scopedIdentifier2 = [v8 scopedIdentifier];
  v10 = [(CPLEngineTransientRepository *)self cachedRecordWithScopedIdentifier:scopedIdentifier2];

  if (!v10)
  {
    v10 = [(CPLEngineTransientRepository *)self changeWithScopedIdentifier:scopedIdentifier];
    if ([v10 changeType] == 1024)
    {
    }

    else if (v10)
    {
      relatedIdentifier = [v10 relatedIdentifier];
      goto LABEL_8;
    }

    scopedIdentifier3 = [v8 scopedIdentifier];
    v19 = [(CPLEngineTransientRepository *)self shouldKeepDeleteChange:deleteCopy forRecordWithScopedIdentifier:scopedIdentifier3];

    if (v19)
    {
      v17 = deleteCopy;
      v10 = 0;
      relatedIdentifier = 0;
    }

    else
    {
      v10 = 0;
      relatedIdentifier = 0;
      v17 = 0;
    }

    goto LABEL_18;
  }

  relatedScopedIdentifier = [v10 relatedScopedIdentifier];
  if (relatedScopedIdentifier)
  {
    v12 = [cloudCache targetForRecordWithCloudScopedIdentifier:relatedScopedIdentifier];
    otherScopedIdentifier = [v12 otherScopedIdentifier];
    relatedIdentifier = [otherScopedIdentifier identifier];
  }

  else
  {
    relatedIdentifier = 0;
  }

LABEL_8:
  v15 = objc_opt_class();
  if (v15 == objc_opt_class())
  {
    v16 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:scopedIdentifier];
  }

  else
  {
    v16 = deleteCopy;
  }

  v17 = v16;
  if (relatedIdentifier)
  {
    [v16 setRelatedIdentifier:relatedIdentifier];
  }

LABEL_18:

  return v17;
}

- (BOOL)hasStashedRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasStashedRecordWithScopedIdentifier:identifierCopy];

  return v6;
}

- (id)changeWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject recordWithScopedIdentifier:identifierCopy];

  return v6;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasRecordWithScopedIdentifier:identifierCopy];

  return v6;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  return error;
}

- (BOOL)shouldKeepDeleteChange:(id)change forRecordWithScopedIdentifier:(id)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  identifierCopy = identifier;
  v27 = 0;
  engineStore = [(CPLEngineStorage *)self engineStore];
  idMapping = [engineStore idMapping];
  v10 = [idMapping localScopedIdentifierForCloudScopedIdentifier:identifierCopy isFinal:&v27];

  if (v10)
  {
    engineStore2 = [(CPLEngineStorage *)self engineStore];
    quarantinedRecords = [engineStore2 quarantinedRecords];
    v13 = [quarantinedRecords isRecordWithScopedIdentifierQuarantined:v10];

    if (v13)
    {
      if (_CPLSilentLogging)
      {
        v15 = 1;
        goto LABEL_19;
      }

      v14 = __CPLStorageOSLogDomain_9448();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "%@ is a delete for a quarantined record. Keeping.", buf, 0xCu);
      }

      goto LABEL_6;
    }
  }

  engineStore3 = [(CPLEngineStorage *)self engineStore];
  cloudCache = [engineStore3 cloudCache];
  v14 = [cloudCache targetForRecordWithCloudScopedIdentifier:identifierCopy];

  otherScopedIdentifier = [v14 otherScopedIdentifier];
  if (!otherScopedIdentifier)
  {
    goto LABEL_13;
  }

  v19 = otherScopedIdentifier;
  engineStore4 = [(CPLEngineStorage *)self engineStore];
  ignoredRecords = [engineStore4 ignoredRecords];
  otherScopedIdentifier2 = [v14 otherScopedIdentifier];
  v23 = [ignoredRecords hasRecordWithScopedIdentifier:otherScopedIdentifier2];

  if (!v23)
  {
LABEL_13:
    if (_CPLSilentLogging)
    {
      v15 = 0;
      goto LABEL_18;
    }

    v24 = __CPLStorageOSLogDomain_9448();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = changeCopy;
      _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEBUG, "%@ is a delete for a record we don't know or has already been deleted. Ignoring.", buf, 0xCu);
    }

    v15 = 0;
    goto LABEL_17;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v24 = __CPLStorageOSLogDomain_9448();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = changeCopy;
      _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEBUG, "%@ is a delete of a record shadowing an other record", buf, 0xCu);
    }

    v15 = 1;
LABEL_17:

    goto LABEL_18;
  }

LABEL_6:
  v15 = 1;
LABEL_18:

LABEL_19:
  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)cachedRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  engineStore = [(CPLEngineStorage *)self engineStore];
  cloudCache = [engineStore cloudCache];
  v7 = [cloudCache recordWithScopedIdentifier:identifierCopy isFinal:0];

  return v7;
}

- (id)batchStorageForScope:(id)scope
{
  v32 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  scopeType = [scopeCopy scopeType];
  if ((scopeType - 4) < 2)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    sharingScopeIdentifier = [engineStore sharingScopeIdentifier];
    if (sharingScopeIdentifier)
    {
      scopes = [engineStore scopes];
      v9 = [scopes scopeForSharingScope:scopeCopy];
      if (v9)
      {
        v10 = v9;
        v11 = [[CPLInvalidBatchStorage alloc] initWithTransientRepository:self scope:scopeCopy];

LABEL_11:
        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (scopeType == 1)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    sharingScopeIdentifier = [engineStore sharingScopeIdentifier];
    if (sharingScopeIdentifier)
    {
      scopes = [engineStore scopes];
      v12 = [scopes sharingScopeForScope:scopeCopy];
      if (v12)
      {
        v13 = v12;
        v14 = [scopes flagsForScope:v12];
        if (![v14 valueForFlag:52] || (objc_msgSend(v14, "valueForFlag:", 64) & 1) != 0)
        {
          v15 = [CPLSharedRecordMerger alloc];
          engineStore2 = [(CPLEngineStorage *)self engineStore];
          engineLibrary = [engineStore2 engineLibrary];
          [engineLibrary transport];
          v18 = v24 = v14;
          [v18 propertyMapping];
          v19 = v25 = scopes;
          v20 = [(CPLSharedRecordMerger *)v15 initWithMapping:v19];

          v11 = [[CPLSharedBatchStorage alloc] initWithTransientRepository:self scope:scopeCopy sharedScope:v13 merger:v20];
          goto LABEL_11;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = __CPLStorageOSLogDomain_9448();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v27 = v13;
            v28 = 2112;
            v29 = v14;
            v30 = 2112;
            v31 = scopeCopy;
            _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring %@ (%@) for %@", buf, 0x20u);
          }
        }
      }

      goto LABEL_17;
    }

LABEL_18:
  }

  v11 = [[CPLEngineTransientRepositoryBatchStorage alloc] initWithTransientRepository:self scope:scopeCopy];
LABEL_20:

  v22 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)hasUnmingledChangesForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasUnmingledChangesForScope:scopeCopy];

  return v6;
}

- (BOOL)hasUnmingledChanges
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasUnmingledChanges = [platformObject hasUnmingledChanges];

  return hasUnmingledChanges;
}

- (void)setMaximumCountOfRecordsInBatches:(unint64_t)batches
{
  batchesCopy = 100;
  if (batches)
  {
    batchesCopy = batches;
  }

  self->_maximumCountOfRecordsInBatches = batchesCopy;
}

- (CPLEngineTransientRepository)initWithEngineStore:(id)store name:(id)name
{
  v9.receiver = self;
  v9.super_class = CPLEngineTransientRepository;
  v4 = [(CPLEngineStorage *)&v9 initWithEngineStore:store name:name];
  v5 = v4;
  if (v4)
  {
    v4->_maximumCountOfRecordsInBatches = 100;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v5->_observers;
    v5->_observers = v6;
  }

  return v5;
}

+ (id)orderedClassesForChangesForLargeSync
{
  if (orderedClassesForChangesForLargeSync_onceToken != -1)
  {
    dispatch_once(&orderedClassesForChangesForLargeSync_onceToken, &__block_literal_global_18);
  }

  v3 = orderedClassesForChangesForLargeSync_orderedClasses;

  return v3;
}

void __68__CPLEngineTransientRepository_orderedClassesForChangesForLargeSync__block_invoke()
{
  v3[14] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v3[11] = objc_opt_class();
  v3[12] = objc_opt_class();
  v3[13] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:14];
  v1 = orderedClassesForChangesForLargeSync_orderedClasses;
  orderedClassesForChangesForLargeSync_orderedClasses = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)orderedClassesForChanges
{
  if (orderedClassesForChanges_onceToken != -1)
  {
    dispatch_once(&orderedClassesForChanges_onceToken, &__block_literal_global_16);
  }

  v3 = orderedClassesForChanges_orderedClasses;

  return v3;
}

void __56__CPLEngineTransientRepository_orderedClassesForChanges__block_invoke()
{
  v3[14] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v3[11] = objc_opt_class();
  v3[12] = objc_opt_class();
  v3[13] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:14];
  v1 = orderedClassesForChanges_orderedClasses;
  orderedClassesForChanges_orderedClasses = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)orderedClassesForDelete
{
  if (orderedClassesForDelete_onceToken != -1)
  {
    dispatch_once(&orderedClassesForDelete_onceToken, &__block_literal_global_9499);
  }

  v3 = orderedClassesForDelete_orderedClasses;

  return v3;
}

void __55__CPLEngineTransientRepository_orderedClassesForDelete__block_invoke()
{
  v3[14] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v3[11] = objc_opt_class();
  v3[12] = objc_opt_class();
  v3[13] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:14];
  v1 = orderedClassesForDelete_orderedClasses;
  orderedClassesForDelete_orderedClasses = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end