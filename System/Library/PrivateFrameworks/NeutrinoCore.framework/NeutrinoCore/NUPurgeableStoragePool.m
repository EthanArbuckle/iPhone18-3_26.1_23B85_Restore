@interface NUPurgeableStoragePool
+ (void)initialize;
+ (void)purge:(BOOL)a3;
+ (void)reapAllPurged;
+ (void)reapAllVolatile;
- (NUPurgeableStoragePool)init;
- (NUPurgeableStoragePool)initWithStorageClass:(Class)a3;
- (NUStoragePoolStats)stats;
- (id)_allocateStorageWithSize:(id)a3 format:(id)a4;
- (id)_popOldestNonPurgeableStorage;
- (id)_storageFromPoolWithSize:(id)a3 format:(id)a4 exactMatch:(BOOL)a5;
- (id)debugDescription;
- (id)newStorageWithMinimumSize:(id)a3 format:(id)a4;
- (id)newStorageWithSize:(id)a3 format:(id)a4 exactMatch:(BOOL)a5;
- (id)reapPurged;
- (id)reapVolatile;
- (void)_enforcePurgableLimit;
- (void)_migrateAllNonPurgeableStorageIfNoRecentActivity:(unint64_t)a3;
- (void)_migrateOldestNonPurgeableStorageToPurgeable;
- (void)_migrateStorageToPurgeable:(id)a3;
- (void)_migrationTimer:(unint64_t)a3;
- (void)_reapPurged;
- (void)_reapVolatile;
- (void)_reclaimSharedStorages;
- (void)_resetNonPurgeableStorageMigrationTimer;
- (void)_returnNonPurgeableStorage:(id)a3;
- (void)_returnPurgedStorage:(id)a3;
- (void)_returnStorage:(id)a3;
- (void)_returnVolatileStorage:(id)a3;
- (void)_scheduleMigrationTimer;
- (void)migrateAllNonPurgeableStorage;
- (void)purge:(BOOL)a3;
- (void)returnStorage:(id)a3;
@end

@implementation NUPurgeableStoragePool

- (id)debugDescription
{
  v3 = [(NUPurgeableStoragePool *)self reapPurged];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [(NUPurgeableStoragePool *)self storageClass];
  v7 = [v3 description];
  v8 = [v4 stringWithFormat:@"%@<%@>:%p stats:\n%@", v5, v6, self, v7];

  return v8;
}

- (void)_migrateStorageToPurgeable:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_1594();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "storage != nil"];
      *buf = 138543362;
      v29 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_1594();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v16;
        v30 = 2114;
        v31 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPurgeableStoragePool _migrateStorageToPurgeable:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPurgeableStoragePool.m", 652, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "storage != nil");
  }

  v5 = v4;
  [v4 makePurgeable];
  v6 = [v5 sizeInBytes];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__NUPurgeableStoragePool__migrateStorageToPurgeable___block_invoke;
  block[3] = &unk_1E810B750;
  block[4] = self;
  v26 = v5;
  v27 = v6;
  v8 = v5;
  dispatch_sync(stateQueue, block);
}

uint64_t __53__NUPurgeableStoragePool__migrateStorageToPurgeable___block_invoke(void *a1)
{
  [*(a1[4] + 64) addObject:a1[5]];
  [*(a1[4] + 8) setVolatileCount:{objc_msgSend(*(a1[4] + 8), "volatileCount") + 1}];
  [*(a1[4] + 8) setVolatileBytes:{a1[6] + objc_msgSend(*(a1[4] + 8), "volatileBytes")}];
  [*(a1[4] + 8) setMigrationCount:{objc_msgSend(*(a1[4] + 8), "migrationCount") + 1}];
  [*(a1[4] + 8) setMigrationBytes:{a1[6] + objc_msgSend(*(a1[4] + 8), "migrationBytes")}];
  v2 = a1[4];

  return [v2 _enforcePurgableLimit];
}

- (id)_popOldestNonPurgeableStorage
{
  if ([(NSMutableArray *)self->_nonPurgeableList count])
  {
    v3 = [(NSMutableArray *)self->_nonPurgeableList objectAtIndex:0];
    [(NSMutableArray *)self->_nonPurgeableList removeObjectAtIndex:0];
    [(NUStoragePoolStats *)self->_stats setNonPurgeableCount:[(NUStoragePoolStats *)self->_stats nonPurgeableCount]- 1];
    -[NUStoragePoolStats setNonPurgeableBytes:](self->_stats, "setNonPurgeableBytes:", -[NUStoragePoolStats nonPurgeableBytes](self->_stats, "nonPurgeableBytes") - [v3 sizeInBytes]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_migrateOldestNonPurgeableStorageToPurgeable
{
  v3 = [(NUPurgeableStoragePool *)self _popOldestNonPurgeableStorage];
  v4 = v3;
  if (v3)
  {
    migrationQueue = self->_migrationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__NUPurgeableStoragePool__migrateOldestNonPurgeableStorageToPurgeable__block_invoke;
    v6[3] = &unk_1E810B958;
    v6[4] = self;
    v7 = v3;
    dispatch_async(migrationQueue, v6);
  }
}

- (void)_migrateAllNonPurgeableStorageIfNoRecentActivity:(unint64_t)a3
{
  v5 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1610;
  v13 = __Block_byref_object_dispose__1611;
  v14 = 0;
  v6 = &v9;
  do
  {
    v6[5] = 0;

    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__NUPurgeableStoragePool__migrateAllNonPurgeableStorageIfNoRecentActivity___block_invoke;
    block[3] = &unk_1E810B3E8;
    block[5] = &v9;
    block[6] = a3;
    block[4] = self;
    dispatch_sync(stateQueue, block);
    if (v10[5])
    {
      [(NUPurgeableStoragePool *)self _migrateStorageToPurgeable:?];
    }

    v6 = v10;
    v5 = v10[5];
  }

  while (v5);
  _Block_object_dispose(&v9, 8);
}

void *__75__NUPurgeableStoragePool__migrateAllNonPurgeableStorageIfNoRecentActivity___block_invoke(void *a1)
{
  v2 = a1[6];
  result = a1[4];
  if (v2 == result[2])
  {
    *(*(a1[5] + 8) + 40) = [result _popOldestNonPurgeableStorage];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (void)migrateAllNonPurgeableStorage
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__NUPurgeableStoragePool_migrateAllNonPurgeableStorage__block_invoke;
  block[3] = &unk_1E810B980;
  block[4] = self;
  block[5] = v7;
  dispatch_sync(stateQueue, block);
  migrationQueue = self->_migrationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__NUPurgeableStoragePool_migrateAllNonPurgeableStorage__block_invoke_2;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = v7;
  dispatch_sync(migrationQueue, v5);
  _Block_object_dispose(v7, 8);
}

- (void)_migrationTimer:(unint64_t)a3
{
  self->_migrationTimerScheduled = 0;
  if (self->_nonPurgeableActivityCounter == a3)
  {
    [(NUPurgeableStoragePool *)self _reclaimSharedStorages];
    migrationQueue = self->_migrationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__NUPurgeableStoragePool__migrationTimer___block_invoke;
    v6[3] = &unk_1E810B078;
    v6[4] = self;
    v6[5] = a3;
    dispatch_async(migrationQueue, v6);
  }

  else
  {

    [(NUPurgeableStoragePool *)self _scheduleMigrationTimer];
  }
}

- (void)_scheduleMigrationTimer
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_migrationTimerScheduled)
  {
    v6 = NUAssertLogger_1594();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"migration timer already scheduled!"];
      *buf = 138543362;
      v24 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_1594();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v13;
        v25 = 2114;
        v26 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPurgeableStoragePool _scheduleMigrationTimer]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPurgeableStoragePool.m", 541, @"migration timer already scheduled!", v18, v19, v20, v21, v22[0]);
  }

  nonPurgeableActivityCounter = self->_nonPurgeableActivityCounter;
  v4 = NUDispatchSeconds(self->_migrationDelay);
  stateQueue = self->_stateQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __49__NUPurgeableStoragePool__scheduleMigrationTimer__block_invoke;
  v22[3] = &unk_1E810B078;
  v22[4] = self;
  v22[5] = nonPurgeableActivityCounter;
  dispatch_after(v4, stateQueue, v22);
  self->_migrationTimerScheduled = 1;
}

- (void)_resetNonPurgeableStorageMigrationTimer
{
  ++self->_nonPurgeableActivityCounter;
  if (!self->_migrationTimerScheduled)
  {
    [(NUPurgeableStoragePool *)self _scheduleMigrationTimer];
  }
}

- (void)_reapVolatile
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4 = 0;
  if ([(NSMutableArray *)self->_volatileList count])
  {
    v5 = 0;
    v6 = &NUIsAppleInternal_onceToken;
    while (1)
    {
      v7 = [(NSMutableArray *)self->_volatileList objectAtIndex:v5];
      if ([v7 isInUse])
      {
        break;
      }

LABEL_17:
      if (([v7 isInUse] & 1) == 0)
      {
        v4 += [v7 sizeInBytes];
        [v3 addIndex:v5];
      }

      if (++v5 >= [(NSMutableArray *)self->_volatileList count])
      {
        goto LABEL_23;
      }
    }

    if (v6[23] != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
    }

    v8 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = v8;
      v11 = [v9 stringWithFormat:@"Volatile storage is still in use"];
      *buf = 138543362;
      v30 = v11;
      _os_log_impl(&dword_1C0184000, v10, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v12 = v6[23];
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v12 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
        }

LABEL_11:
        v13 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v19 = MEMORY[0x1E696AF00];
          v28 = specific;
          log = v13;
          v20 = [v19 callStackSymbols];
          v21 = [v20 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v30 = specific;
          v31 = 2114;
          v32 = v21;
          v22 = log;
          _os_log_error_impl(&dword_1C0184000, log, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);

          v6 = &NUIsAppleInternal_onceToken;
LABEL_22:

          goto LABEL_16;
        }

        goto LABEL_16;
      }

      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      goto LABEL_11;
    }

    v23 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v24 = MEMORY[0x1E696AF00];
      v22 = v23;
      v25 = [v24 callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v26;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);

      v6 = &NUIsAppleInternal_onceToken;
      goto LABEL_22;
    }

LABEL_16:
    _NUAssertContinueHandler("[NUPurgeableStoragePool _reapVolatile]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPurgeableStoragePool.m", 501, @"Volatile storage is still in use", v14, v15, v16, v17, log);
    goto LABEL_17;
  }

LABEL_23:
  if ([v3 count])
  {
    [(NSMutableArray *)self->_volatileList removeObjectsAtIndexes:v3];
    -[NUStoragePoolStats setVolatileCount:](self->_stats, "setVolatileCount:", -[NUStoragePoolStats volatileCount](self->_stats, "volatileCount") - [v3 count]);
    [(NUStoragePoolStats *)self->_stats setVolatileBytes:[(NUStoragePoolStats *)self->_stats volatileBytes]- v4];
    -[NUStoragePoolStats setPurgedCount:](self->_stats, "setPurgedCount:", -[NUStoragePoolStats purgedCount](self->_stats, "purgedCount") + [v3 count]);
    [(NUStoragePoolStats *)self->_stats setPurgedBytes:[(NUStoragePoolStats *)self->_stats purgedBytes]+ v4];
  }
}

- (void)_reapPurged
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v3 = 0;
  if ([(NSMutableArray *)self->_volatileList count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_volatileList objectAtIndex:v4];
      if ([v5 isPurged])
      {
        v3 += [v5 sizeInBytes];
        [v6 addIndex:v4];
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_volatileList count]);
  }

  if ([v6 count])
  {
    [(NSMutableArray *)self->_volatileList removeObjectsAtIndexes:v6];
    -[NUStoragePoolStats setVolatileCount:](self->_stats, "setVolatileCount:", -[NUStoragePoolStats volatileCount](self->_stats, "volatileCount") - [v6 count]);
    [(NUStoragePoolStats *)self->_stats setVolatileBytes:[(NUStoragePoolStats *)self->_stats volatileBytes]- v3];
    -[NUStoragePoolStats setPurgedCount:](self->_stats, "setPurgedCount:", -[NUStoragePoolStats purgedCount](self->_stats, "purgedCount") + [v6 count]);
    [(NUStoragePoolStats *)self->_stats setPurgedBytes:[(NUStoragePoolStats *)self->_stats purgedBytes]+ v3];
  }
}

- (id)reapVolatile
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1610;
  v10 = __Block_byref_object_dispose__1611;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__NUPurgeableStoragePool_reapVolatile__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __38__NUPurgeableStoragePool_reapVolatile__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reapVolatile];
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (id)reapPurged
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1610;
  v10 = __Block_byref_object_dispose__1611;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__NUPurgeableStoragePool_reapPurged__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__NUPurgeableStoragePool_reapPurged__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reapPurged];
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (void)purge:(BOOL)a3
{
  v3 = a3;
  [(NUPurgeableStoragePool *)self migrateAllNonPurgeableStorage];
  if (v3)
  {
    v5 = [(NUPurgeableStoragePool *)self reapVolatile];
  }
}

- (NUStoragePoolStats)stats
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1610;
  v10 = __Block_byref_object_dispose__1611;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__NUPurgeableStoragePool_stats__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __31__NUPurgeableStoragePool_stats__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (void)_returnNonPurgeableStorage:(id)a3
{
  v5 = a3;
  [(NSMutableArray *)self->_nonPurgeableList addObject:?];
  if ([(NSMutableArray *)self->_nonPurgeableList count]> self->_nonPurgeableLimit)
  {
    [(NUPurgeableStoragePool *)self _migrateOldestNonPurgeableStorageToPurgeable];
  }

  v4 = [v5 sizeInBytes];
  [(NUStoragePoolStats *)self->_stats setUsedCount:[(NUStoragePoolStats *)self->_stats usedCount]- 1];
  [(NUStoragePoolStats *)self->_stats setUsedBytes:[(NUStoragePoolStats *)self->_stats usedBytes]- v4];
  [(NUStoragePoolStats *)self->_stats setNonPurgeableCount:[(NUStoragePoolStats *)self->_stats nonPurgeableCount]+ 1];
  [(NUStoragePoolStats *)self->_stats setNonPurgeableBytes:[(NUStoragePoolStats *)self->_stats nonPurgeableBytes]+ v4];
  [(NUPurgeableStoragePool *)self _resetNonPurgeableStorageMigrationTimer];
}

- (void)_returnPurgedStorage:(id)a3
{
  v4 = [a3 sizeInBytes];
  [(NUStoragePoolStats *)self->_stats setUsedCount:[(NUStoragePoolStats *)self->_stats usedCount]- 1];
  [(NUStoragePoolStats *)self->_stats setUsedBytes:[(NUStoragePoolStats *)self->_stats usedBytes]- v4];
  [(NUStoragePoolStats *)self->_stats setPurgedCount:[(NUStoragePoolStats *)self->_stats purgedCount]+ 1];
  stats = self->_stats;
  v6 = [(NUStoragePoolStats *)stats purgedBytes]+ v4;

  [(NUStoragePoolStats *)stats setPurgedBytes:v6];
}

- (void)_returnVolatileStorage:(id)a3
{
  volatileList = self->_volatileList;
  v5 = a3;
  [(NSMutableArray *)volatileList addObject:v5];
  v6 = [v5 sizeInBytes];

  [(NUStoragePoolStats *)self->_stats setUsedCount:[(NUStoragePoolStats *)self->_stats usedCount]- 1];
  [(NUStoragePoolStats *)self->_stats setUsedBytes:[(NUStoragePoolStats *)self->_stats usedBytes]- v6];
  [(NUStoragePoolStats *)self->_stats setVolatileCount:[(NUStoragePoolStats *)self->_stats volatileCount]+ 1];
  [(NUStoragePoolStats *)self->_stats setVolatileBytes:[(NUStoragePoolStats *)self->_stats volatileBytes]+ v6];

  [(NUPurgeableStoragePool *)self _enforcePurgableLimit];
}

- (void)_enforcePurgableLimit
{
  for (i = self->_volatileList; [(NSMutableArray *)i count]> self->_purgeableLimit; i = self->_volatileList)
  {
    v4 = [(NSMutableArray *)self->_volatileList firstObject];
    [(NSMutableArray *)self->_volatileList removeObjectAtIndex:0];
    [(NUStoragePoolStats *)self->_stats setVolatileCount:[(NUStoragePoolStats *)self->_stats volatileCount]- 1];
    -[NUStoragePoolStats setVolatileBytes:](self->_stats, "setVolatileBytes:", -[NUStoragePoolStats volatileBytes](self->_stats, "volatileBytes") - [v4 sizeInBytes]);
    [(NUStoragePoolStats *)self->_stats setDiscardedCount:[(NUStoragePoolStats *)self->_stats discardedCount]+ 1];
  }
}

- (void)returnStorage:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_opt_class() != self->_storageClass)
  {
    v7 = NUAssertLogger_1594();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "storage.class == _storageClass"];
      *buf = 138543362;
      v27 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_1594();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v14;
        v28 = 2114;
        v29 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPurgeableStoragePool returnStorage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPurgeableStoragePool.m", 280, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "storage.class == _storageClass");
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__NUPurgeableStoragePool_returnStorage___block_invoke;
  block[3] = &unk_1E810B958;
  v24 = v4;
  v25 = self;
  v6 = v4;
  dispatch_sync(stateQueue, block);
}

uint64_t __40__NUPurgeableStoragePool_returnStorage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) decrementUseCount];
  v3 = [*(*(a1 + 40) + 32) containsObject:*(a1 + 32)];
  v4 = *(a1 + 40);
  if (v3)
  {
    if (v2)
    {
      [v4[4] removeObject:*(a1 + 32)];
      [*(a1 + 40) _reclaimSharedStorages];
LABEL_5:
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);

      return [v5 _returnStorage:v6];
    }

    return [v4 _resetNonPurgeableStorageMigrationTimer];
  }

  else
  {
    [v4 _reclaimSharedStorages];
    if (v2)
    {
      goto LABEL_5;
    }

    v8 = *(a1 + 32);
    v9 = *(*(a1 + 40) + 32);

    return [v9 addObject:v8];
  }
}

- (void)_returnStorage:(id)a3
{
  v4 = a3;
  [v4 invalidate];
  if ([v4 isPurgeable])
  {
    if ([v4 isPurged])
    {
      [(NUPurgeableStoragePool *)self _returnPurgedStorage:v4];
    }

    else
    {
      [(NUPurgeableStoragePool *)self _returnVolatileStorage:v4];
    }
  }

  else
  {
    [(NUPurgeableStoragePool *)self _returnNonPurgeableStorage:v4];
  }
}

- (id)_storageFromPoolWithSize:(id)a3 format:(id)a4 exactMatch:(BOOL)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v141 = *MEMORY[0x1E69E9840];
  v8 = a4;
  [(NUPurgeableStoragePool *)self _reclaimSharedStorages];
  v9 = [(NSMutableArray *)self->_nonPurgeableList count];
  v121 = v8;
  v117 = self;
  if (!v9)
  {
    goto LABEL_49;
  }

  v10 = v9;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = [(NSMutableArray *)self->_nonPurgeableList reverseObjectEnumerator];
  v11 = [obj countByEnumeratingWithState:&v131 objects:v140 count:16];
  if (!v11)
  {
    goto LABEL_32;
  }

  v12 = v11;
  v13 = *v132;
  while (2)
  {
    v14 = 0;
    v15 = v10 - 1;
    v122 = v10 - v12;
    do
    {
      if (*v132 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v131 + 1) + 8 * v14);
      if ([v16 isInUse])
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
        }

        v17 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
        {
          v18 = MEMORY[0x1E696AEC0];
          v19 = v17;
          v20 = [v18 stringWithFormat:@"No item in the non purgeable list should be in use: %@", v16];
          *buf = 138543362;
          v137 = v20;
          _os_log_impl(&dword_1C0184000, v19, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

          v21 = _NULogOnceToken;
          if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
          {
            if (v21 != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
            }

LABEL_15:
            v22 = _NUAssertLogger;
            if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
            {
              specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
              v28 = MEMORY[0x1E696AF00];
              v120 = specific;
              loga = v22;
              v29 = [v28 callStackSymbols];
              v30 = [v29 componentsJoinedByString:@"\n"];
              *buf = 138543618;
              v137 = specific;
              v138 = 2114;
              v139 = v30;
              v31 = loga;
              _os_log_error_impl(&dword_1C0184000, loga, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);

LABEL_30:
              goto LABEL_20;
            }

            goto LABEL_20;
          }

          if (v21 != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
          }
        }

        else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
          goto LABEL_15;
        }

        v32 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
        {
          v37 = MEMORY[0x1E696AF00];
          v31 = v32;
          v38 = [v37 callStackSymbols];
          v39 = [v38 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v137 = v39;
          _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);

          goto LABEL_30;
        }

LABEL_20:
        _NUAssertContinueHandler("[NUPurgeableStoragePool _storageFromPoolWithSize:format:exactMatch:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPurgeableStoragePool.m", 169, @"No item in the non purgeable list should be in use: %@", v23, v24, v25, v26, v16);
      }

      if ([v16 size] == var0 && v33 == var1)
      {
        v35 = [v16 format];
        v36 = [v121 isEqualToPixelFormat:v35];

        if (v36)
        {
          self = v117;
          if (![v16 isPurgeable])
          {
            goto LABEL_48;
          }

          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
          }

          v41 = _NUAssertLogger;
          if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
          {
            v42 = MEMORY[0x1E696AEC0];
            v43 = v41;
            v44 = [v42 stringWithFormat:@"Purgeable storage found in non-purgeable list: %@", v16];
            *buf = 138543362;
            v137 = v44;
            _os_log_impl(&dword_1C0184000, v43, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

            v45 = _NULogOnceToken;
            if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
            {
              if (v45 != -1)
              {
                dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
              }

LABEL_41:
              v46 = _NUAssertLogger;
              if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
              {
                v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
                v52 = MEMORY[0x1E696AF00];
                v53 = v51;
                v54 = v46;
                v55 = [v52 callStackSymbols];
                v56 = [v55 componentsJoinedByString:@"\n"];
                *buf = 138543618;
                v137 = v51;
                v138 = 2114;
                v139 = v56;
                _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);

                self = v117;
              }

LABEL_47:
              _NUAssertContinueHandler("[NUPurgeableStoragePool _storageFromPoolWithSize:format:exactMatch:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPurgeableStoragePool.m", 172, @"Purgeable storage found in non-purgeable list: %@", v47, v48, v49, v50, v16);
LABEL_48:
              v58 = v16;
              [(NSMutableArray *)self->_nonPurgeableList removeObjectAtIndex:v15];
              [(NUStoragePoolStats *)self->_stats setNonPurgeableCount:[(NUStoragePoolStats *)self->_stats nonPurgeableCount]- 1];
              -[NUStoragePoolStats setNonPurgeableBytes:](self->_stats, "setNonPurgeableBytes:", -[NUStoragePoolStats nonPurgeableBytes](self->_stats, "nonPurgeableBytes") - [v58 sizeInBytes]);
              [(NUStoragePoolStats *)self->_stats setReusedNonPurgeableCount:[(NUStoragePoolStats *)self->_stats reusedNonPurgeableCount]+ 1];
              [(NUPurgeableStoragePool *)self _resetNonPurgeableStorageMigrationTimer];

              v8 = v121;
              if (v58)
              {
                goto LABEL_102;
              }

              goto LABEL_49;
            }

            if (v45 != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
            }
          }

          else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
          {
            goto LABEL_41;
          }

          v57 = _NUAssertLogger;
          if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
          {
            v107 = MEMORY[0x1E696AF00];
            v108 = v57;
            v109 = [v107 callStackSymbols];
            v110 = [v109 componentsJoinedByString:@"\n"];
            *buf = 138543362;
            v137 = v110;
            _os_log_error_impl(&dword_1C0184000, v108, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
          }

          goto LABEL_47;
        }
      }

      ++v14;
      --v15;
    }

    while (v12 != v14);
    v40 = [obj countByEnumeratingWithState:&v131 objects:v140 count:16];
    v12 = v40;
    v10 = v122;
    if (v40)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v8 = v121;
  self = v117;
LABEL_49:
  v58 = [(NSMutableArray *)self->_volatileList count];
  if (!v58)
  {
    goto LABEL_102;
  }

  v59 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  obja = [(NSMutableArray *)self->_volatileList reverseObjectEnumerator];
  v60 = [obja countByEnumeratingWithState:&v127 objects:v135 count:16];
  if (!v60)
  {
    v88 = 0;
    v58 = 0;
    goto LABEL_97;
  }

  log = v59;
  v123 = 0;
  v124 = 0;
  v61 = *v128;
  while (2)
  {
    v62 = 0;
    while (2)
    {
      if (*v128 != v61)
      {
        objc_enumerationMutation(obja);
      }

      v63 = *(*(&v127 + 1) + 8 * v62);
      if (![v63 isInUse])
      {
        goto LABEL_70;
      }

      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
      }

      v64 = _NUAssertLogger;
      if (!os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
      {
        if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
          goto LABEL_63;
        }

        goto LABEL_67;
      }

      v65 = MEMORY[0x1E696AEC0];
      v66 = v64;
      v67 = [v65 stringWithFormat:@"No item in the purgeable list should be in use: %@", v63];
      *buf = 138543362;
      v137 = v67;
      _os_log_impl(&dword_1C0184000, v66, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v68 = _NULogOnceToken;
      if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v68 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
        }

LABEL_67:
        v78 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
        {
          v84 = MEMORY[0x1E696AF00];
          v85 = v78;
          v86 = [v84 callStackSymbols];
          v87 = [v86 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v137 = v87;
          _os_log_error_impl(&dword_1C0184000, v85, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);

          v8 = v121;
        }

        goto LABEL_69;
      }

      if (v68 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
      }

LABEL_63:
      v69 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        v74 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v75 = MEMORY[0x1E696AF00];
        v116 = v74;
        v115 = v69;
        v76 = [v75 callStackSymbols];
        v77 = [v76 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v137 = v74;
        v138 = 2114;
        v139 = v77;
        _os_log_error_impl(&dword_1C0184000, v115, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);

        v8 = v121;
      }

LABEL_69:
      _NUAssertContinueHandler("[NUPurgeableStoragePool _storageFromPoolWithSize:format:exactMatch:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPurgeableStoragePool.m", 197, @"No item in the purgeable list should be in use: %@", v70, v71, v72, v73, v63);
LABEL_70:
      --v58;
      if ([v63 size] == var0 && v79 == var1)
      {
        v81 = [v63 format];
        v82 = [v8 isEqualToPixelFormat:v81];

        if (v82)
        {
          v83 = [v63 makeNonPurgeable];
          [log addIndex:v58];
          if (!v83)
          {
            v123 += [v63 sizeInBytes];
            ++v124;
            goto LABEL_78;
          }

          v58 = v63;
          self = v117;
          [(NUStoragePoolStats *)v117->_stats setVolatileCount:[(NUStoragePoolStats *)v117->_stats volatileCount]- 1];
          v59 = log;
          v60 = v123;
          v88 = v124;
          if ([(NUStoragePoolStats *)v117->_stats volatileCount]< 0)
          {
            if (_NULogOnceToken != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
            }

            v89 = _NUAssertLogger;
            if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
            {
              v90 = MEMORY[0x1E696AEC0];
              v91 = v89;
              v92 = [v90 stringWithFormat:@"volatileCount count should not be negative"];
              *buf = 138543362;
              v137 = v92;
              _os_log_impl(&dword_1C0184000, v91, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

              v93 = _NULogOnceToken;
              if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
              {
                if (v93 != -1)
                {
                  dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
                }

LABEL_90:
                v94 = _NUAssertLogger;
                if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
                {
                  v99 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
                  v100 = MEMORY[0x1E696AF00];
                  v101 = v99;
                  v102 = v94;
                  v103 = [v100 callStackSymbols];
                  v104 = [v103 componentsJoinedByString:@"\n"];
                  *buf = 138543618;
                  v137 = v99;
                  v138 = 2114;
                  v139 = v104;
                  _os_log_error_impl(&dword_1C0184000, v102, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);

                  v59 = log;
                  v88 = v124;
                  goto LABEL_106;
                }

                goto LABEL_95;
              }

              if (v93 != -1)
              {
                dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
              }
            }

            else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
            {
              goto LABEL_90;
            }

            v105 = _NUAssertLogger;
            if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
            {
              v111 = MEMORY[0x1E696AF00];
              v102 = v105;
              v112 = [v111 callStackSymbols];
              v113 = [v112 componentsJoinedByString:@"\n"];
              *buf = 138543362;
              v137 = v113;
              _os_log_error_impl(&dword_1C0184000, v102, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);

LABEL_106:
            }

LABEL_95:
            _NUAssertContinueHandler("[NUPurgeableStoragePool _storageFromPoolWithSize:format:exactMatch:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPurgeableStoragePool.m", 211, @"volatileCount count should not be negative", v95, v96, v97, v98, v114);
          }

          -[NUStoragePoolStats setVolatileBytes:](v117->_stats, "setVolatileBytes:", -[NUStoragePoolStats volatileBytes](v117->_stats, "volatileBytes") - [v58 sizeInBytes]);
          [(NUStoragePoolStats *)v117->_stats setReusedVolatileCount:[(NUStoragePoolStats *)v117->_stats reusedVolatileCount]+ 1];
          goto LABEL_97;
        }
      }

LABEL_78:
      if (v60 != ++v62)
      {
        continue;
      }

      break;
    }

    v60 = [obja countByEnumeratingWithState:&v127 objects:v135 count:16];
    if (v60)
    {
      continue;
    }

    break;
  }

  v58 = 0;
  self = v117;
  v59 = log;
  v60 = v123;
  v88 = v124;
LABEL_97:

  if ([v59 count])
  {
    [(NSMutableArray *)self->_volatileList removeObjectsAtIndexes:v59];
  }

  if (v88)
  {
    [(NUStoragePoolStats *)self->_stats setVolatileCount:[(NUStoragePoolStats *)self->_stats volatileCount]- v88];
    [(NUStoragePoolStats *)self->_stats setVolatileBytes:[(NUStoragePoolStats *)self->_stats volatileBytes]- v60];
    [(NUStoragePoolStats *)self->_stats setPurgedCount:[(NUStoragePoolStats *)self->_stats purgedCount]+ v88];
    [(NUStoragePoolStats *)self->_stats setPurgedBytes:[(NUStoragePoolStats *)self->_stats purgedBytes]+ v60];
  }

LABEL_102:
  [v58 setIsDirty:1];

  return v58;
}

- (void)_reclaimSharedStorages
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_sharedStoragesToBeReclaimedList count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_sharedStoragesToBeReclaimedList;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (!v4)
    {
      v6 = v3;
      goto LABEL_16;
    }

    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v9 isInUse] & 1) == 0)
        {
          [(NUPurgeableStoragePool *)self _returnStorage:v9];
          if (!v6)
          {
            v6 = objc_opt_new();
          }

          [v6 addObject:v9];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);

    if (v6)
    {
      [(NSMutableArray *)self->_sharedStoragesToBeReclaimedList removeObjectsInArray:v6];
LABEL_16:
    }
  }
}

- (id)_allocateStorageWithSize:(id)a3 format:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [objc_alloc(self->_storageClass) initWithSize:var0 format:{var1, v7}];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_138);
  }

  v9 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67109634;
    v11[1] = var0;
    v12 = 1024;
    v13 = var1;
    v14 = 2112;
    v15 = v7;
    _os_log_debug_impl(&dword_1C0184000, v9, OS_LOG_TYPE_DEBUG, "Allocating new storage of size: %dx%d, format: %@", v11, 0x18u);
  }

  return v8;
}

- (id)newStorageWithSize:(id)a3 format:(id)a4 exactMatch:(BOOL)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v55 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__1610;
  v49 = __Block_byref_object_dispose__1611;
  v50 = 0;
  if (var1 < 1 || var0 <= 0)
  {
    v14 = NUAssertLogger_1594();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "size.height > 0 && size.width > 0"];
      *buf = 138543362;
      v52 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_1594();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v27;
        v53 = 2114;
        v54 = v29;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v30 = "size.height > 0 && size.width > 0";
    v31 = 88;
LABEL_21:

    _NUAssertFailHandler("[NUPurgeableStoragePool newStorageWithSize:format:exactMatch:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPurgeableStoragePool.m", v31, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, v30);
  }

  if (!v9)
  {
    v21 = NUAssertLogger_1594();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pixelFormat != nil"];
      *buf = 138543362;
      v52 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_1594();
    v24 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v24)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = [MEMORY[0x1E696AF00] callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v32;
        v53 = 2114;
        v54 = v34;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v26;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v30 = "pixelFormat != nil";
    v31 = 89;
    goto LABEL_21;
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__NUPurgeableStoragePool_newStorageWithSize_format_exactMatch___block_invoke;
  block[3] = &unk_1E8109620;
  v41 = &v45;
  v42 = var0;
  v43 = var1;
  block[4] = self;
  v40 = v9;
  v44 = a5;
  v11 = v9;
  dispatch_sync(stateQueue, block);
  v12 = v46[5];

  _Block_object_dispose(&v45, 8);
  return v12;
}

uint64_t __63__NUPurgeableStoragePool_newStorageWithSize_format_exactMatch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storageFromPoolWithSize:*(a1 + 56) format:*(a1 + 64) exactMatch:{*(a1 + 40), *(a1 + 72)}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (!v5)
  {
    v6 = [*(a1 + 32) _allocateStorageWithSize:*(a1 + 56) format:{*(a1 + 64), *(a1 + 40)}];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = *(*(*(a1 + 48) + 8) + 40);
  }

  [v5 incrementUseCount];
  [*(*(a1 + 32) + 8) setUsedCount:{objc_msgSend(*(*(a1 + 32) + 8), "usedCount") + 1}];
  [*(*(a1 + 32) + 8) setUsedBytes:{objc_msgSend(*(*(a1 + 32) + 8), "usedBytes") + objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "sizeInBytes")}];
  v9 = *(*(a1 + 32) + 8);
  v10 = [v9 requestCount] + 1;

  return [v9 setRequestCount:v10];
}

- (id)newStorageWithMinimumSize:(id)a3 format:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v8 = NUPixelSizeAlignToGrid(var0, var1, 256, 256, 0);
  v10 = [(NUPurgeableStoragePool *)self newStorageWithSize:v8 format:v9 exactMatch:v7, 0];

  return v10;
}

- (NUPurgeableStoragePool)initWithStorageClass:(Class)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v22 = NUAssertLogger_1594();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "storageClass != nil"];
      *buf = 138543362;
      v40 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_1594();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v29;
        v41 = 2114;
        v42 = v33;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPurgeableStoragePool initWithStorageClass:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPurgeableStoragePool.m", 46, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "storageClass != nil");
  }

  v38.receiver = self;
  v38.super_class = NUPurgeableStoragePool;
  v4 = [(NUPurgeableStoragePool *)&v38 init];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("NUPurgeableStoragePool.stateQueue", v5);
  stateQueue = v4->_stateQueue;
  v4->_stateQueue = v6;

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("NUPurgeableStoragePool.migrationQueue", v8);
  migrationQueue = v4->_migrationQueue;
  v4->_migrationQueue = v9;

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:256];
  volatileList = v4->_volatileList;
  v4->_volatileList = v11;

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:256];
  nonPurgeableList = v4->_nonPurgeableList;
  v4->_nonPurgeableList = v13;

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:256];
  sharedStoragesToBeReclaimedList = v4->_sharedStoragesToBeReclaimedList;
  v4->_sharedStoragesToBeReclaimedList = v15;

  objc_storeStrong(&v4->_storageClass, a3);
  v17 = objc_alloc_init(NUStoragePoolStats);
  stats = v4->_stats;
  v4->_stats = v17;

  v4->_nonPurgeableLimit = +[NUGlobalSettings storagePoolNonPurgeableLimit];
  v4->_purgeableLimit = +[NUGlobalSettings storagePoolPurgeableLimit];
  +[NUGlobalSettings storagePoolMigrationDelay];
  v4->_migrationDelay = v19;
  v20 = s_pools;
  objc_sync_enter(v20);
  [s_pools compact];
  [s_pools addPointer:v4];
  objc_sync_exit(v20);

  return v4;
}

- (NUPurgeableStoragePool)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_136);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUPurgeableStoragePool init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPurgeableStoragePool.m", 41, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (void)purge:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = s_pools;
  objc_sync_enter(v4);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = s_pools;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) purge:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
}

+ (void)reapAllVolatile
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = s_pools;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = s_pools;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (v7)
        {
          v8 = [v7 reapVolatile];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

+ (void)reapAllPurged
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = s_pools;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = s_pools;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (v7)
        {
          v8 = [v7 reapPurged];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, &__block_literal_global_1681);
  }
}

uint64_t __36__NUPurgeableStoragePool_initialize__block_invoke()
{
  s_pools = [MEMORY[0x1E696AE08] weakObjectsPointerArray];

  return MEMORY[0x1EEE66BB8]();
}

@end