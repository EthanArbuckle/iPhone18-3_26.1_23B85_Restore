@interface _NUImageTile
- (BOOL)_decrementAccessCount;
- (BOOL)_incrementAccessCount;
- (BOOL)decrementAccessCount;
- (BOOL)incrementAccessCount;
- (BOOL)isValid;
- (_NUImageTile)initWithStorage:(id)storage;
- (int64_t)copyFromTile:(id)tile region:(id)region;
- (int64_t)readStorageInRegion:(id)region block:(id)block;
- (int64_t)writeStorageInRegion:(id)region block:(id)block;
- (unint64_t)accessCount;
- (void)_visitRead:(id)read;
- (void)dealloc;
- (void)decrementAccessCountButLeaveAccessedIfLastUse;
- (void)returnToStorageFactory:(id)factory;
@end

@implementation _NUImageTile

- (BOOL)isValid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23___NUImageTile_isValid__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)copyFromTile:(id)tile region:(id)region
{
  v35 = *MEMORY[0x1E69E9840];
  tileCopy = tile;
  regionCopy = region;
  if (!tileCopy)
  {
    v13 = NUAssertLogger_31651();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "otherTile != nil"];
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_31651();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageTile copyFromTile:region:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageTile.m", 252, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "otherTile != nil");
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v34 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36___NUImageTile_copyFromTile_region___block_invoke;
  block[3] = &unk_1E810BA20;
  block[4] = self;
  v30 = tileCopy;
  v31 = regionCopy;
  v32 = buf;
  v9 = regionCopy;
  v10 = tileCopy;
  dispatch_barrier_sync(queue, block);
  v11 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v11;
}

- (int64_t)writeStorageInRegion:(id)region block:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  blockCopy = block;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (!blockCopy)
  {
    v12 = NUAssertLogger_31651();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v34 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_31651();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v19;
        v35 = 2114;
        v36 = v21;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageTile writeStorageInRegion:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageTile.m", 227, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "block != nil");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___NUImageTile_writeStorageInRegion_block___block_invoke;
  block[3] = &unk_1E810B9D0;
  v27 = blockCopy;
  v28 = &v29;
  block[4] = self;
  v9 = blockCopy;
  dispatch_barrier_sync(queue, block);
  v10 = v30[3];

  _Block_object_dispose(&v29, 8);
  return v10;
}

- (int64_t)readStorageInRegion:(id)region block:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  blockCopy = block;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (!blockCopy)
  {
    v12 = NUAssertLogger_31651();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v34 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_31651();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v19;
        v35 = 2114;
        v36 = v21;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageTile readStorageInRegion:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageTile.m", 207, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "block != nil");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___NUImageTile_readStorageInRegion_block___block_invoke;
  block[3] = &unk_1E810B9D0;
  v27 = blockCopy;
  v28 = &v29;
  block[4] = self;
  v9 = blockCopy;
  dispatch_sync(queue, block);
  v10 = v30[3];

  _Block_object_dispose(&v29, 8);
  return v10;
}

- (void)_visitRead:(id)read
{
  readCopy = read;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27___NUImageTile__visitRead___block_invoke;
  v7[3] = &unk_1E810BA70;
  v7[4] = self;
  v8 = readCopy;
  v6 = readCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)_decrementAccessCount
{
  v3 = self->_accessCount - 1;
  self->_accessCount = v3;
  if (!v3)
  {
    [(_NUImageTile *)self _markAsPurgeable];
  }

  return !self->_wasPurged;
}

- (BOOL)_incrementAccessCount
{
  accessCount = self->_accessCount;
  self->_accessCount = accessCount + 1;
  if (!accessCount && [(_NUImageTile *)self _markAsUnpurgeable])
  {
    self->_wasPurged = 1;
  }

  return !self->_wasPurged;
}

- (void)decrementAccessCountButLeaveAccessedIfLastUse
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___NUImageTile_decrementAccessCountButLeaveAccessedIfLastUse__block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  dispatch_barrier_sync(queue, block);
}

- (BOOL)decrementAccessCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36___NUImageTile_decrementAccessCount__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)incrementAccessCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36___NUImageTile_incrementAccessCount__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)accessCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27___NUImageTile_accessCount__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)returnToStorageFactory:(id)factory
{
  v30 = *MEMORY[0x1E69E9840];
  factoryCopy = factory;
  if (!factoryCopy)
  {
    v7 = NUAssertLogger_31651();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "storageFactory != nil"];
      *buf = 138543362;
      v27 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_31651();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        callStackSymbols = [v15 callStackSymbols];
        v18 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v14;
        v28 = 2114;
        v29 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageTile returnToStorageFactory:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageTile.m", 56, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "storageFactory != nil");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___NUImageTile_returnToStorageFactory___block_invoke;
  block[3] = &unk_1E810B958;
  v24 = factoryCopy;
  selfCopy = self;
  v6 = factoryCopy;
  dispatch_sync(queue, block);
}

- (void)dealloc
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_accessCount >= 2)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_31678);
    }

    v3 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x1E696AEC0];
      accessCount = self->_accessCount;
      v6 = v3;
      accessCount = [v4 stringWithFormat:@"bad access count: %lu", accessCount];
      *buf = 138543362;
      v27 = accessCount;
      _os_log_impl(&dword_1C0184000, v6, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v8 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v8 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_31678);
        }

        goto LABEL_9;
      }

      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_31678);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_9:
      v9 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = specific;
        v17 = v9;
        callStackSymbols = [v15 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = specific;
        v28 = 2114;
        v29 = v19;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_15:
      _NUAssertContinueHandler("[_NUImageTile dealloc]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageTile.m", 46, @"bad access count: %lu", v10, v11, v12, v13, self->_accessCount);
      goto LABEL_16;
    }

    v20 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v21 = MEMORY[0x1E696AF00];
      v22 = v20;
      callStackSymbols2 = [v21 callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v24;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:
  v25.receiver = self;
  v25.super_class = _NUImageTile;
  [(_NUImageTile *)&v25 dealloc];
}

- (_NUImageTile)initWithStorage:(id)storage
{
  v33 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  if (!storageCopy)
  {
    v12 = NUAssertLogger_31651();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "storage != nil"];
      *buf = 138543362;
      v30 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_31651();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v19;
        v31 = 2114;
        v32 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImageTile initWithStorage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageTile.m", 25, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "storage != nil");
  }

  v6 = storageCopy;
  v28.receiver = self;
  v28.super_class = _NUImageTile;
  v7 = [(_NUImageTile *)&v28 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("NUImageTile", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    objc_storeStrong(&v7->_storage, storage);
    v7->_accessCount = 1;
    v7->_wasPurged = 0;
  }

  return v7;
}

@end