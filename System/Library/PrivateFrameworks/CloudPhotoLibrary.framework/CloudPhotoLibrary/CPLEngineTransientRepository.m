@interface CPLEngineTransientRepository
+ (id)orderedClassesForChanges;
+ (id)orderedClassesForChangesForLargeSync;
+ (id)orderedClassesForDelete;
- (BOOL)_appendBatchToStorage:(id)a3 alreadyMingled:(BOOL)a4 countOfAssetChanges:(unint64_t *)a5 error:(id *)a6;
- (BOOL)deleteMingledRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)hasMingledRecordsForScopeWithIdentifier:(id)a3;
- (BOOL)hasOnlyMingledRecordsWithScopeIdentifier:(id)a3;
- (BOOL)hasRecordWithScopedIdentifier:(id)a3;
- (BOOL)hasStashedChangesForScopeWithIdentifier:(id)a3;
- (BOOL)hasStashedRecordWithScopedIdentifier:(id)a3;
- (BOOL)hasUnmingledChanges;
- (BOOL)hasUnmingledChangesForScope:(id)a3;
- (BOOL)hasUnmingledNonStashedRecordsForScopeWithIdentifier:(id)a3;
- (BOOL)hasUnmingledOrStashedRecordsWithScopeFilter:(id)a3;
- (BOOL)markUnmingledChangeWithScopedIdentifierAsMingled:(id)a3 error:(id *)a4;
- (BOOL)openWithError:(id *)a3;
- (BOOL)popChangeBatchOfRemappedRecords:(id *)a3 scope:(id)a4 maximumCount:(unint64_t)a5 error:(id *)a6;
- (BOOL)resetMingledRecordsWithScopeFilter:(id)a3 error:(id *)a4;
- (BOOL)resetTransientRepositoryForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)shouldKeepDeleteChange:(id)a3 forRecordWithScopedIdentifier:(id)a4;
- (BOOL)stashChangeWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)unstashRecordsForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4 hasMore:(BOOL *)a5 unstashedCount:(unint64_t *)a6 error:(id *)a7;
- (CPLEngineTransientRepository)initWithEngineStore:(id)a3 name:(id)a4;
- (id)_sharedDeleteFromDelete:(id)a3;
- (id)allUnmingledChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4;
- (id)allUnmingledChangesWithClass:(Class)a3 scopeIdentifier:(id)a4;
- (id)allUnmingledChangesWithScopeIdentifier:(id)a3;
- (id)allUnmingledDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4;
- (id)allUnmingledNonDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4;
- (id)batchStorageForScope:(id)a3;
- (id)cachedRecordWithScopedIdentifier:(id)a3;
- (id)changeWithScopedIdentifier:(id)a3;
- (id)nextBatchOfRemappedRecordsInScope:(id)a3 maximumCount:(unint64_t)a4;
- (id)status;
- (id)unmingledChangeWithScopedIdentifier:(id)a3;
- (unint64_t)countOfUnmingledRecords;
- (void)setMaximumCountOfRecordsInBatches:(unint64_t)a3;
@end

@implementation CPLEngineTransientRepository

- (id)status
{
  v6.receiver = self;
  v6.super_class = CPLEngineTransientRepository;
  v3 = [(CPLEngineStorage *)&v6 status];
  v4 = [v3 mutableCopy];

  if ([(NSMutableArray *)self->_observers count])
  {
    [v4 appendFormat:@"\n%lu observers", -[NSMutableArray count](self->_observers, "count")];
  }

  return v4;
}

- (BOOL)openWithError:(id *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CPLEngineTransientRepository;
  v4 = [(CPLEngineStorage *)&v10 openWithError:a3];
  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 integerForKey:@"CPLMaximumSizeForPulledBatches"];

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

- (BOOL)hasStashedChangesForScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasStashedChangesForScopeWithIdentifier:v4];

  return v6;
}

- (BOOL)unstashRecordsForScopeWithIdentifier:(id)a3 maxCount:(unint64_t)a4 hasMore:(BOOL *)a5 unstashedCount:(unint64_t *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a7) = [v13 unstashRecordsForScopeWithIdentifier:v12 maxCount:a4 hasMore:a5 unstashedCount:a6 error:a7];

  return a7;
}

- (BOOL)stashChangeWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 stashChangeWithScopedIdentifier:v6 error:a4];

  return a4;
}

- (BOOL)hasUnmingledOrStashedRecordsWithScopeFilter:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasUnmingledOrStashedRecordsWithScopeFilter:v4];

  return v6;
}

- (BOOL)resetTransientRepositoryForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_9448();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Deleting all transient changes in storage", v11, 2u);
    }
  }

  v8 = [(CPLEngineStorage *)self platformObject];
  v9 = [v8 deleteAllRecordsForScopeWithIdentifier:v6 error:a4];

  return v9;
}

- (unint64_t)countOfUnmingledRecords
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 countOfUnmingledRecords];

  return v3;
}

- (BOOL)deleteMingledRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_9448();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Deleting mingled records", v11, 2u);
    }
  }

  v8 = [(CPLEngineStorage *)self platformObject];
  v9 = [v8 deleteMingledRecordsForScopeWithIdentifier:v6 error:a4];

  return v9;
}

- (BOOL)resetMingledRecordsWithScopeFilter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 resetMingledRecordsWithScopeFilter:v6 error:a4];

  if (v8)
  {
    observers = self->_observers;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__CPLEngineTransientRepository_resetMingledRecordsWithScopeFilter_error___block_invoke;
    v11[3] = &unk_1E861CC50;
    v11[4] = self;
    v12 = v6;
    [(NSMutableArray *)observers enumerateObjectsUsingBlock:v11];
  }

  return v8;
}

- (BOOL)hasOnlyMingledRecordsWithScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasOnlyMingledRecordsWithScopeIdentifier:v4];

  return v6;
}

- (BOOL)hasUnmingledNonStashedRecordsForScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasUnmingledNonStashedRecordsForScopeWithIdentifier:v4];

  return v6;
}

- (BOOL)hasMingledRecordsForScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasMingledRecordsForScopeWithIdentifier:v4];

  return v6;
}

- (BOOL)markUnmingledChangeWithScopedIdentifierAsMingled:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 markUnmingledChangeWithScopedIdentifierAsMingled:v6 error:a4];

  return a4;
}

- (id)allUnmingledChangesWithScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 allUnmingledChangesWithScopeIdentifier:v4];

  return v6;
}

- (id)allUnmingledChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 allUnmingledChangesWithClass:a3 relatedScopedIdentifier:v6];

  return v8;
}

- (id)allUnmingledDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 allUnmingledDeletedChangesWithClass:a3 scopeIdentifier:v6];

  return v8;
}

- (id)allUnmingledNonDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 allUnmingledNonDeletedChangesWithClass:a3 scopeIdentifier:v6];

  return v8;
}

- (id)allUnmingledChangesWithClass:(Class)a3 scopeIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 allUnmingledChangesWithClass:a3 scopeIdentifier:v6];

  return v8;
}

- (id)unmingledChangeWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 unmingledChangeWithScopedIdentifier:v4];

  return v6;
}

- (BOOL)popChangeBatchOfRemappedRecords:(id *)a3 scope:(id)a4 maximumCount:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a6) = [v11 popChangeBatchOfRemappedRecords:a3 scope:v10 maximumCount:a5 error:a6];

  return a6;
}

- (id)nextBatchOfRemappedRecordsInScope:(id)a3 maximumCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 nextBatchOfRemappedRecordsInScope:v6 maximumCount:a4];

  return v8;
}

- (BOOL)_appendBatchToStorage:(id)a3 alreadyMingled:(BOOL)a4 countOfAssetChanges:(unint64_t *)a5 error:(id *)a6
{
  v48 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v54 = objc_alloc_init(CPLChangeBatch);
  v58 = self;
  v9 = [(CPLEngineStorage *)self engineStore];
  v52 = [v9 remappedRecords];
  v10 = [v9 sharingScopeIdentifier];
  v50 = v9;
  v51 = [v9 ignoredRecords];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v8;
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
      v15 = [v13 scopedIdentifier];
      v16 = [v15 scopeIdentifier];
      v17 = [(CPLEngineStorage *)v58 mainScopeIdentifier];
      v18 = [v16 isEqualToString:v17];

      if ((v18 & 1) == 0 && v10)
      {
        v19 = [v15 scopeIdentifier];
        v18 = [v19 isEqualToString:v10];
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

      if (v10)
      {
        v20 = [v15 scopeIdentifier];
        v21 = [v20 isEqualToString:v10];

        if (v21)
        {
          v22 = [(CPLEngineTransientRepository *)v58 _sharedDeleteFromDelete:v13];
          goto LABEL_24;
        }
      }

      if (!v15)
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

        v44 = [MEMORY[0x1E696AAA8] currentHandler];
        v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepository.m"];
        [v44 handleFailureInMethod:v46 object:v58 file:v45 lineNumber:387 description:{@"Got a delete change with no identifier: %@", 0}];

        abort();
      }

      v24 = [(CPLEngineTransientRepository *)v58 cachedRecordWithScopedIdentifier:v15];
      if (v24)
      {
        break;
      }

      v27 = [(CPLEngineTransientRepository *)v58 changeWithScopedIdentifier:v15];
      if (v27)
      {
        v24 = v27;
        if ([v27 changeType] != 1024)
        {
          break;
        }
      }

      if ([(CPLEngineTransientRepository *)v58 shouldKeepDeleteChange:v13 forRecordWithScopedIdentifier:v15])
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
        v32 = [v13 scopedIdentifier];
        v33 = [v32 copy];
        v59 = v11;
        v34 = [v52 removeRemappedRecordWithScopedIdentifier:v33 error:&v59];
        v31 = v59;

        v11 = v31;
        if (!v34)
        {
LABEL_44:

          objc_autoreleasePoolPop(v14);
          if (a6)
          {
            v37 = v31;
            v38 = 0;
            *a6 = v31;
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
      v26 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:v15];
    }

    else
    {
      v26 = v13;
    }

    v23 = v26;
    v28 = [v24 relatedIdentifier];
    if (v28)
    {
      [v23 setRelatedIdentifier:v28];
    }

    if (v18)
    {
LABEL_30:
      v29 = [v13 scopedIdentifier];
      v60 = v11;
      v30 = [v51 removeRecordWithScopedIdentifier:v29 error:&v60];
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

  if (a5)
  {
    *a5 = v57;
  }

  v39 = [(CPLEngineStorage *)v58 platformObject];
  v40 = v54;
  v38 = [v39 appendBatch:v54 alreadyMingled:v48 error:a6];

LABEL_52:
  v41 = *MEMORY[0x1E69E9840];
  return v38;
}

- (id)_sharedDeleteFromDelete:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 cloudCache];

  v7 = [v4 scopedIdentifier];
  v8 = [v6 targetForRecordWithSharedCloudScopedIdentifier:v7];
  v9 = [v8 scopedIdentifier];
  v10 = [(CPLEngineTransientRepository *)self cachedRecordWithScopedIdentifier:v9];

  if (!v10)
  {
    v10 = [(CPLEngineTransientRepository *)self changeWithScopedIdentifier:v7];
    if ([v10 changeType] == 1024)
    {
    }

    else if (v10)
    {
      v14 = [v10 relatedIdentifier];
      goto LABEL_8;
    }

    v18 = [v8 scopedIdentifier];
    v19 = [(CPLEngineTransientRepository *)self shouldKeepDeleteChange:v4 forRecordWithScopedIdentifier:v18];

    if (v19)
    {
      v17 = v4;
      v10 = 0;
      v14 = 0;
    }

    else
    {
      v10 = 0;
      v14 = 0;
      v17 = 0;
    }

    goto LABEL_18;
  }

  v11 = [v10 relatedScopedIdentifier];
  if (v11)
  {
    v12 = [v6 targetForRecordWithCloudScopedIdentifier:v11];
    v13 = [v12 otherScopedIdentifier];
    v14 = [v13 identifier];
  }

  else
  {
    v14 = 0;
  }

LABEL_8:
  v15 = objc_opt_class();
  if (v15 == objc_opt_class())
  {
    v16 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:v7];
  }

  else
  {
    v16 = v4;
  }

  v17 = v16;
  if (v14)
  {
    [v16 setRelatedIdentifier:v14];
  }

LABEL_18:

  return v17;
}

- (BOOL)hasStashedRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasStashedRecordWithScopedIdentifier:v4];

  return v6;
}

- (id)changeWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 recordWithScopedIdentifier:v4];

  return v6;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasRecordWithScopedIdentifier:v4];

  return v6;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a6) = [v10 deleteRecordsForScopeIndex:a3 maxCount:a4 deletedCount:a5 error:a6];

  return a6;
}

- (BOOL)shouldKeepDeleteChange:(id)a3 forRecordWithScopedIdentifier:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v8 = [(CPLEngineStorage *)self engineStore];
  v9 = [v8 idMapping];
  v10 = [v9 localScopedIdentifierForCloudScopedIdentifier:v7 isFinal:&v27];

  if (v10)
  {
    v11 = [(CPLEngineStorage *)self engineStore];
    v12 = [v11 quarantinedRecords];
    v13 = [v12 isRecordWithScopedIdentifierQuarantined:v10];

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
        v29 = v6;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "%@ is a delete for a quarantined record. Keeping.", buf, 0xCu);
      }

      goto LABEL_6;
    }
  }

  v16 = [(CPLEngineStorage *)self engineStore];
  v17 = [v16 cloudCache];
  v14 = [v17 targetForRecordWithCloudScopedIdentifier:v7];

  v18 = [v14 otherScopedIdentifier];
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [(CPLEngineStorage *)self engineStore];
  v21 = [v20 ignoredRecords];
  v22 = [v14 otherScopedIdentifier];
  v23 = [v21 hasRecordWithScopedIdentifier:v22];

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
      v29 = v6;
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
      v29 = v6;
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

- (id)cachedRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 cloudCache];
  v7 = [v6 recordWithScopedIdentifier:v4 isFinal:0];

  return v7;
}

- (id)batchStorageForScope:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 scopeType];
  if ((v5 - 4) < 2)
  {
    v6 = [(CPLEngineStorage *)self engineStore];
    v7 = [v6 sharingScopeIdentifier];
    if (v7)
    {
      v8 = [v6 scopes];
      v9 = [v8 scopeForSharingScope:v4];
      if (v9)
      {
        v10 = v9;
        v11 = [[CPLInvalidBatchStorage alloc] initWithTransientRepository:self scope:v4];

LABEL_11:
        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (v5 == 1)
  {
    v6 = [(CPLEngineStorage *)self engineStore];
    v7 = [v6 sharingScopeIdentifier];
    if (v7)
    {
      v8 = [v6 scopes];
      v12 = [v8 sharingScopeForScope:v4];
      if (v12)
      {
        v13 = v12;
        v14 = [v8 flagsForScope:v12];
        if (![v14 valueForFlag:52] || (objc_msgSend(v14, "valueForFlag:", 64) & 1) != 0)
        {
          v15 = [CPLSharedRecordMerger alloc];
          v16 = [(CPLEngineStorage *)self engineStore];
          v17 = [v16 engineLibrary];
          [v17 transport];
          v18 = v24 = v14;
          [v18 propertyMapping];
          v19 = v25 = v8;
          v20 = [(CPLSharedRecordMerger *)v15 initWithMapping:v19];

          v11 = [[CPLSharedBatchStorage alloc] initWithTransientRepository:self scope:v4 sharedScope:v13 merger:v20];
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
            v31 = v4;
            _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring %@ (%@) for %@", buf, 0x20u);
          }
        }
      }

      goto LABEL_17;
    }

LABEL_18:
  }

  v11 = [[CPLEngineTransientRepositoryBatchStorage alloc] initWithTransientRepository:self scope:v4];
LABEL_20:

  v22 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)hasUnmingledChangesForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasUnmingledChangesForScope:v4];

  return v6;
}

- (BOOL)hasUnmingledChanges
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 hasUnmingledChanges];

  return v3;
}

- (void)setMaximumCountOfRecordsInBatches:(unint64_t)a3
{
  v3 = 100;
  if (a3)
  {
    v3 = a3;
  }

  self->_maximumCountOfRecordsInBatches = v3;
}

- (CPLEngineTransientRepository)initWithEngineStore:(id)a3 name:(id)a4
{
  v9.receiver = self;
  v9.super_class = CPLEngineTransientRepository;
  v4 = [(CPLEngineStorage *)&v9 initWithEngineStore:a3 name:a4];
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