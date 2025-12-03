@interface NUBufferStorage
- (BOOL)decrementUseCount;
- (BOOL)makeNonPurgeable;
- (NSString)description;
- (NUBufferStorage)initWithSize:(id)size format:(id)format;
- (id)_purgeStateDescription;
- (id)newRenderDestination;
- (int)_fetchPurgeState:(int *)state;
- (int)_purgeLevelToOSValue:(int64_t)value;
- (int64_t)readBufferInRegion:(id)region block:(id)block;
- (int64_t)useAsCIImageWithOptions:(id)options renderer:(id)renderer block:(id)block;
- (int64_t)useAsCIRenderDestinationWithRenderer:(id)renderer block:(id)block;
- (int64_t)writeBufferInRegion:(id)region block:(id)block;
- (void)_allocateMemory:(int64_t)memory;
- (void)adjustPurgeLevel:(int64_t)level;
- (void)dealloc;
- (void)makePurgeable;
@end

@implementation NUBufferStorage

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  bytes = self->_bytes;
  length = self->_length;
  purgeLevel = self->_purgeLevel;
  _purgeStateDescription = [(NUBufferStorage *)self _purgeStateDescription];
  v9 = [v3 stringWithFormat:@"<%@:%p> bytes=%p length=%ld priority=%ld %@", v4, self, bytes, length, purgeLevel, _purgeStateDescription];

  return v9;
}

- (id)newRenderDestination
{
  v3 = objc_alloc(MEMORY[0x1E695F678]);
  mutableBytes = [(NUBufferStorage *)self mutableBytes];
  v5 = [(_NUAbstractStorage *)self size];
  [(_NUAbstractStorage *)self size];
  v7 = v6;
  rowBytes = [(NUBufferStorage *)self rowBytes];
  format = [(_NUAbstractStorage *)self format];
  v10 = [v3 initWithBitmapData:mutableBytes width:v5 height:v7 bytesPerRow:rowBytes format:{objc_msgSend(format, "CIFormat")}];

  [v10 setLabel:@"NUBufferStorage-new"];
  return v10;
}

- (int64_t)useAsCIRenderDestinationWithRenderer:(id)renderer block:(id)block
{
  rendererCopy = renderer;
  blockCopy = block;
  v17 = 0;
  v18 = 0;
  v19 = [(_NUAbstractStorage *)self size];
  v20 = v8;
  v9 = [NURegion regionWithRect:&v17];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  LOBYTE(v20) = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__NUBufferStorage_useAsCIRenderDestinationWithRenderer_block___block_invoke;
  v14[3] = &unk_1E8109FF8;
  v16 = &v17;
  v10 = blockCopy;
  v15 = v10;
  v11 = [(NUBufferStorage *)self writeBufferInRegion:v9 block:v14];
  if (*(v18 + 24))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);
  return v12;
}

void __62__NUBufferStorage_useAsCIRenderDestinationWithRenderer_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 newRenderDestination];
  *(*(*(a1 + 40) + 8) + 24) = (*(v3 + 16))(v3, v4);
}

- (int64_t)useAsCIImageWithOptions:(id)options renderer:(id)renderer block:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  rendererCopy = renderer;
  blockCopy = block;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
  }

  v10 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = v10;
    v13 = [v11 stringWithFormat:@"Not implemented"];
    *v31 = 138543362;
    *&v31[4] = v13;
    _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v31, 0xCu);

    v14 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v14 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
      }

      goto LABEL_8;
    }

    if (v14 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v15 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x1E696AF00];
      v21 = v15;
      callStackSymbols = [v20 callStackSymbols];
      v23 = [callStackSymbols componentsJoinedByString:@"\n"];
      *v31 = 138543362;
      *&v31[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v31, 0xCu);
    }

    goto LABEL_14;
  }

  v24 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = MEMORY[0x1E696AF00];
    v27 = specific;
    v28 = v24;
    callStackSymbols2 = [v26 callStackSymbols];
    v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *v31 = 138543618;
    *&v31[4] = specific;
    v32 = 2114;
    v33 = v30;
    _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v31, 0x16u);
  }

LABEL_14:
  _NUAssertFailHandler("[NUBufferStorage useAsCIImageWithOptions:renderer:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 299, @"Not implemented", v16, v17, v18, v19, *v31);
}

- (int64_t)writeBufferInRegion:(id)region block:(id)block
{
  v19[2] = *MEMORY[0x1E69E9840];
  regionCopy = region;
  blockCopy = block;
  if ([(_NUAbstractStorage *)self isDirty])
  {
    v8 = [(_NUAbstractStorage *)self size];
    v10 = v9;
    v15 = 0;
    v16 = 0;
    v17 = v8;
    v18 = v9;
    v11 = [NURegion regionWithRect:&v15];
    v12 = [regionCopy isEqualToRegion:v11];

    if ((v12 & 1) == 0)
    {
      v19[0] = 0;
      v19[1] = 0;
      v15 = 0;
      v16 = 0;
      v17 = v8;
      v18 = v10;
      [NUImageUtilities fillPixelsInBuffer:self rect:&v15 srcPixel:v19];
    }

    [(_NUAbstractStorage *)self setIsDirty:0];
  }

  v13 = [[NUMutableBufferAdapter alloc] initWithMutableBuffer:self];
  blockCopy[2](blockCopy, v13);

  [(NUBufferAdapter *)v13 invalidate];
  [(_NUAbstractStorage *)self validateRegion:regionCopy];

  return 1;
}

- (int64_t)readBufferInRegion:(id)region block:(id)block
{
  blockCopy = block;
  [(_NUAbstractStorage *)self assertIsValidInRegion:region];
  v7 = [[NUBufferAdapter alloc] initWithBuffer:self];
  blockCopy[2](blockCopy, v7);

  [(NUBufferAdapter *)v7 invalidate];
  return 1;
}

- (BOOL)makeNonPurgeable
{
  v34 = *MEMORY[0x1E69E9840];
  if (!self->_purgeable)
  {
    return 1;
  }

  v29 = 0;
  v3 = MEMORY[0x1C68D9C70](*MEMORY[0x1E69E9A60], self->_bytes, 0, &v29);
  if (v29 == 2 && v3 == 0)
  {
    result = 0;
    self->_purgeable = 0;
    return result;
  }

  v5 = v3;
  if (!v3)
  {
    self->_purgeable = 0;
    return 1;
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
  }

  v6 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = v6;
    v9 = [v7 stringWithFormat:@"%@ failed to make non purgeable: %d", self, v5];
    *buf = 138543362;
    v31 = v9;
    _os_log_impl(&dword_1C0184000, v8, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
      }

      goto LABEL_17;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
    }

LABEL_21:
    v23 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v25 = MEMORY[0x1E696AF00];
      v26 = v23;
      callStackSymbols = [v25 callStackSymbols];
      v28 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v28;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    goto LABEL_21;
  }

LABEL_17:
  v12 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v12;
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v31 = specific;
    v32 = 2114;
    v33 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_23:
  _NUAssertContinueHandler("[NUBufferStorage makeNonPurgeable]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 257, @"%@ failed to make non purgeable: %d", v13, v14, v15, v16, self);
  [(NUBufferStorage *)self _deallocateMemory];
  v24 = [(NUBufferStorage *)self _allocateMemory:self->_length];
  result = 0;
  self->_bytes = v24;
  return result;
}

- (void)makePurgeable
{
  v31 = *MEMORY[0x1E69E9840];
  if (!self->_purgeable)
  {
    self->_purgeable = 1;
    v26 = [(NUBufferStorage *)self _purgeLevelToOSValue:self->_purgeLevel];
    v3 = MEMORY[0x1C68D9C70](*MEMORY[0x1E69E9A60], self->_bytes, 0, &v26);
    if (v3)
    {
      v4 = v3;
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
      }

      v5 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
      {
        v6 = MEMORY[0x1E696AEC0];
        v7 = v5;
        v8 = [v6 stringWithFormat:@"%@ failed to set purgeable: %d", self, v4];
        *buf = 138543362;
        v28 = v8;
        _os_log_impl(&dword_1C0184000, v7, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

        v9 = _NULogOnceToken;
        if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
          if (v9 != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
          }

          goto LABEL_10;
        }

        if (v9 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
        }
      }

      else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
LABEL_10:
        v10 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v16 = MEMORY[0x1E696AF00];
          v17 = specific;
          v18 = v10;
          callStackSymbols = [v16 callStackSymbols];
          v20 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v28 = specific;
          v29 = 2114;
          v30 = v20;
          _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

LABEL_16:
        _NUAssertContinueHandler("[NUBufferStorage makePurgeable]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 233, @"%@ failed to set purgeable: %d", v11, v12, v13, v14, self);
        return;
      }

      v21 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols2 = [v22 callStackSymbols];
        v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v28 = v25;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_16;
    }
  }
}

- (void)adjustPurgeLevel:(int64_t)level
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->_purgeLevel != level)
  {
    self->_purgeLevel = level;
    if (self->_purgeable)
    {
      v27 = [(NUBufferStorage *)self _purgeLevelToOSValue:?];
      v4 = MEMORY[0x1C68D9C70](*MEMORY[0x1E69E9A60], self->_bytes, 0, &v27);
      if (v4)
      {
        v5 = v4;
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
        }

        v6 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
        {
          v7 = MEMORY[0x1E696AEC0];
          v8 = v6;
          v9 = [v7 stringWithFormat:@"%@ failed to reset vm_purgable_control: %d", self, v5];
          *buf = 138543362;
          v29 = v9;
          _os_log_impl(&dword_1C0184000, v8, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

          v10 = _NULogOnceToken;
          if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
          {
            if (v10 != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
            }

            goto LABEL_11;
          }

          if (v10 != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
          }
        }

        else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
LABEL_11:
          v11 = _NUAssertLogger;
          if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
          {
            specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v17 = MEMORY[0x1E696AF00];
            v18 = specific;
            v19 = v11;
            callStackSymbols = [v17 callStackSymbols];
            v21 = [callStackSymbols componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v29 = specific;
            v30 = 2114;
            v31 = v21;
            _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }

LABEL_17:
          _NUAssertContinueHandler("[NUBufferStorage adjustPurgeLevel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 216, @"%@ failed to reset vm_purgable_control: %d", v12, v13, v14, v15, self);
          return;
        }

        v22 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
        {
          v23 = MEMORY[0x1E696AF00];
          v24 = v22;
          callStackSymbols2 = [v23 callStackSymbols];
          v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v29 = v26;
          _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        goto LABEL_17;
      }
    }
  }
}

- (int)_purgeLevelToOSValue:(int64_t)value
{
  if ((value - 1) > 3)
  {
    return 33;
  }

  else
  {
    return dword_1C03C2A70[value - 1];
  }
}

- (id)_purgeStateDescription
{
  if (!self->_purgeable)
  {
    return @"Not Purgeable";
  }

  v6 = v2;
  v7 = v3;
  v5 = 0;
  if ([(NUBufferStorage *)self _fetchPurgeState:&v5])
  {
    return 0;
  }

  if (v5 > 3)
  {
    return @"Purgeable (Unknown)";
  }

  return off_1E810A018[v5];
}

- (int)_fetchPurgeState:(int *)state
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1C68D9C70](*MEMORY[0x1E69E9A60], self->_bytes, 1, state);
  if (v4)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
    }

    v5 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = [v6 stringWithFormat:@"%@ failed to read vm_purgable_control: %d", self, v4];
      *buf = 138543362;
      v28 = v8;
      _os_log_impl(&dword_1C0184000, v7, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v9 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v9 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
        }

        goto LABEL_9;
      }

      if (v9 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10259);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_9:
      v10 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = specific;
        v18 = v10;
        callStackSymbols = [v16 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = specific;
        v29 = 2114;
        v30 = v20;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_15:
      _NUAssertContinueHandler("[NUBufferStorage _fetchPurgeState:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 138, @"%@ failed to read vm_purgable_control: %d", v11, v12, v13, v14, self);
      return v4;
    }

    v21 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v23 = MEMORY[0x1E696AF00];
      v24 = v21;
      callStackSymbols2 = [v23 callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v26;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  return v4;
}

- (BOOL)decrementUseCount
{
  v23 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(&self->_useCount, 0xFFFFFFFF);
  if (add <= 0)
  {
    v4 = NUAssertLogger_10319();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"over released use count on buffer storage"];
      *v20 = 138543362;
      *&v20[4] = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v20, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger_10319();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v12 = MEMORY[0x1E696AF00];
        v13 = v11;
        callStackSymbols = [v12 callStackSymbols];
        v15 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v20 = 138543618;
        *&v20[4] = v11;
        v21 = 2114;
        v22 = v15;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v20, 0x16u);
      }
    }

    else if (v8)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v20 = 138543362;
      *&v20[4] = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v20, 0xCu);
    }

    _NUAssertFailHandler("[NUBufferStorage decrementUseCount]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 126, @"over released use count on buffer storage", v16, v17, v18, v19, *v20);
  }

  return add == 1;
}

- (void)_allocateMemory:(int64_t)memory
{
  v28 = *MEMORY[0x1E69E9840];
  address = 0;
  v4 = vm_allocate(*MEMORY[0x1E69E9A60], &address, (memory + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], -117440509);
  if (v4)
  {
    v6 = v4;
    v7 = NUAssertLogger_10319();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ failed to vm_allocate: %d", self, v6];
      *buf = 138543362;
      v25 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_10319();
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
        v25 = v14;
        v26 = 2114;
        v27 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUBufferStorage _allocateMemory:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 88, @"%@ failed to vm_allocate: %d", v19, v20, v21, v22, self);
  }

  return address;
}

- (void)dealloc
{
  [(NUBufferStorage *)self _deallocateMemory];
  v3.receiver = self;
  v3.super_class = NUBufferStorage;
  [(NUBufferStorage *)&v3 dealloc];
}

- (NUBufferStorage)initWithSize:(id)size format:(id)format
{
  var1 = size.var1;
  var0 = size.var0;
  v50 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (!formatCopy)
  {
    v12 = NUAssertLogger_10319();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pixelFormat != nil"];
      *buf = 138543362;
      v47 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_10319();
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
        v47 = v19;
        v48 = 2114;
        v49 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUBufferStorage initWithSize:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 51, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "pixelFormat != nil");
  }

  v8 = formatCopy;
  v45.receiver = self;
  v45.super_class = NUBufferStorage;
  v9 = [(_NUAbstractStorage *)&v45 init];
  v10 = [v8 alignedRowBytesForWidth:var0];
  v9->_rowBytes = v10;
  v9->_length = var1 * v10;
  if ((var1 * v10) >> 64 != (var1 * v10) >> 63)
  {
    v28 = NUAssertLogger_10319();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"integer overflow detected"];
      *buf = 138543362;
      v47 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_10319();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v35;
        v48 = 2114;
        v49 = v39;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUBufferStorage initWithSize:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 59, @"integer overflow detected", v40, v41, v42, v43, v44);
  }

  v9->_bytes = [(NUBufferStorage *)v9 _allocateMemory:?];
  v9->_purgeLevel = 1;
  atomic_store(0, &v9->_useCount);
  [(_NUAbstractStorage *)v9 _resetSize:var0 format:var1, v8];

  return v9;
}

@end