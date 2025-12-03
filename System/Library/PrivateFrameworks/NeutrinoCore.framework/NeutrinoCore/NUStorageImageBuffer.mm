@interface NUStorageImageBuffer
+ (NUStorageImageBuffer)imageBufferWithSize:(id)size format:(id)format fromPool:(id)pool;
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (NUStorageImageBuffer)init;
- (NUStorageImageBuffer)initWithStorage:(id)storage fromPool:(id)pool;
- (__CVBuffer)CVPixelBuffer;
- (void)dealloc;
@end

@implementation NUStorageImageBuffer

- (__CVBuffer)CVPixelBuffer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  storage = self->_storage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__NUStorageImageBuffer_CVPixelBuffer__block_invoke;
  v5[3] = &unk_1E810B6E0;
  v5[4] = &v6;
  [(NUPurgeableStorage *)storage useAsCVPixelBufferWithBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__NUStorageImageBuffer_CVPixelBuffer__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 CVPixelBuffer];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  v2 = [(NUPurgeableStorage *)self->_storage size];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)dealloc
{
  [(NUPurgeableStoragePool *)self->_pool returnStorage:self->_storage];
  v3.receiver = self;
  v3.super_class = NUStorageImageBuffer;
  [(NUStorageImageBuffer *)&v3 dealloc];
}

- (NUStorageImageBuffer)initWithStorage:(id)storage fromPool:(id)pool
{
  v35 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  poolCopy = pool;
  if (!storageCopy)
  {
    v14 = NUAssertLogger_29446();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "storage != nil"];
      *buf = 138543362;
      v32 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_29446();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v21;
        v33 = 2114;
        v34 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStorageImageBuffer initWithStorage:fromPool:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUStorageImageBuffer.m", 28, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "storage != nil");
  }

  v8 = poolCopy;
  v30.receiver = self;
  v30.super_class = NUStorageImageBuffer;
  v9 = [(NUStorageImageBuffer *)&v30 init];
  storage = v9->_storage;
  v9->_storage = storageCopy;
  v11 = storageCopy;

  pool = v9->_pool;
  v9->_pool = v8;

  return v9;
}

- (NUStorageImageBuffer)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_29461);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_29461);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_29461);
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
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUStorageImageBuffer init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUStorageImageBuffer.m", 24, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (NUStorageImageBuffer)imageBufferWithSize:(id)size format:(id)format fromPool:(id)pool
{
  var1 = size.var1;
  var0 = size.var0;
  v35 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  poolCopy = pool;
  if (!poolCopy)
  {
    v15 = NUAssertLogger_29446();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pool != nil"];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_29446();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v22;
        v33 = 2114;
        v34 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUStorageImageBuffer imageBufferWithSize:format:fromPool:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUStorageImageBuffer.m", 15, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "pool != nil");
  }

  v11 = poolCopy;
  v12 = [poolCopy newStorageWithSize:var0 format:{var1, formatCopy}];
  if (v12)
  {
    v13 = [[self alloc] initWithStorage:v12 fromPool:v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end