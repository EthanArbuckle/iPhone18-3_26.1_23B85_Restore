@interface _NUAbstractStorage
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (BOOL)isValidInRect:(id *)rect;
- (BOOL)isValidInRegion:(id)region;
- (NURegion)validRegion;
- (_NUAbstractStorage)init;
- (int64_t)copyFromStorage:(id)storage region:(id)region;
- (int64_t)fillBufferWithPattern4:(unsigned int)pattern4;
- (int64_t)fillBufferWithPattern8:(unint64_t)pattern8;
- (void)assertIsValidInRect:(id *)rect;
- (void)assertIsValidInRegion:(id)region;
- (void)provideBuffer:(id)buffer;
- (void)provideMutableBuffer:(id)buffer;
- (void)validateRect:(id *)rect;
- (void)validateRegion:(id)region;
@end

@implementation _NUAbstractStorage

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)provideMutableBuffer:(id)buffer
{
  bufferCopy = buffer;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = [(_NUAbstractStorage *)self size];
  v7[3] = v5;
  v6 = [NURegion regionWithRect:v7];
  [(_NUAbstractStorage *)self writeBufferInRegion:v6 block:bufferCopy];
}

- (void)provideBuffer:(id)buffer
{
  bufferCopy = buffer;
  validRegion = [(_NUAbstractStorage *)self validRegion];
  [(_NUAbstractStorage *)self readBufferInRegion:validRegion block:bufferCopy];
}

- (int64_t)fillBufferWithPattern8:(unint64_t)pattern8
{
  v5 = [(_NUAbstractStorage *)self size];
  v7 = v6;
  sizeInBytes = [(_NUAbstractStorage *)self sizeInBytes];
  v13[0] = 0;
  v13[1] = 0;
  v13[2] = v5;
  v13[3] = v7;
  v9 = [NURegion regionWithRect:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45___NUAbstractStorage_fillBufferWithPattern8___block_invoke;
  v12[3] = &__block_descriptor_48_e27_v16__0___NUMutableBuffer__8l;
  v12[4] = pattern8;
  v12[5] = sizeInBytes;
  v10 = [(_NUAbstractStorage *)self writeBufferInRegion:v9 block:v12];

  return v10;
}

- (int64_t)fillBufferWithPattern4:(unsigned int)pattern4
{
  v5 = [(_NUAbstractStorage *)self size];
  v7 = v6;
  sizeInBytes = [(_NUAbstractStorage *)self sizeInBytes];
  v14[0] = 0;
  v14[1] = 0;
  v14[2] = v5;
  v14[3] = v7;
  v9 = [NURegion regionWithRect:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45___NUAbstractStorage_fillBufferWithPattern4___block_invoke;
  v12[3] = &__block_descriptor_44_e27_v16__0___NUMutableBuffer__8l;
  pattern4Copy = pattern4;
  v12[4] = sizeInBytes;
  v10 = [(_NUAbstractStorage *)self writeBufferInRegion:v9 block:v12];

  return v10;
}

- (int64_t)copyFromStorage:(id)storage region:(id)region
{
  v28 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  regionCopy = region;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_17850);
  }

  v7 = _NUAssertLogger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v10];
    *buf = 138543362;
    v25 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_17850);
    }

    v12 = _NUAssertLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v25 = v15;
      v26 = 2114;
      v27 = v17;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_17850);
    }

    v12 = _NUAssertLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  _NUAssertFailHandler("[_NUAbstractStorage copyFromStorage:region:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageStorage.mm", 101, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v20, v21, v22, v23, v19);
}

- (void)assertIsValidInRegion:(id)region
{
  v23 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  if (![(_NUAbstractStorage *)self isValidInRegion:?])
  {
    v4 = NUAssertLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not valid in %@: %@", self, regionCopy, self->_validRegion];
      *buf = 138543362;
      v20 = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v20 = v11;
        v21 = 2114;
        v22 = v13;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v20 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUAbstractStorage assertIsValidInRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageStorage.mm", 96, @"%@ is not valid in %@: %@", v14, v15, v16, v17, self);
  }
}

- (void)assertIsValidInRect:(id *)rect
{
  v23 = *MEMORY[0x1E69E9840];
  var1 = rect->var1;
  *buf = rect->var0;
  *&buf[16] = var1;
  if (![(_NUAbstractStorage *)self isValidInRect:buf])
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{origin={%ld, %ld} size={%ld, %ld}}]", rect->var0.var0, rect->var0.var1, rect->var1.var0, rect->var1.var1];
      v9 = [v7 stringWithFormat:@"%@ is not valid in %@: %@", self, v8, self->_validRegion];
      *buf = 138543362;
      *&buf[4] = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"{origin={%ld, %ld} size={%ld, %ld}}]", rect->var0.var0, rect->var0.var1, rect->var1.var0, rect->var1.var1];
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler("[_NUAbstractStorage assertIsValidInRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageStorage.mm", 90, @"%@ is not valid in %@: %@", v18, v19, v20, v21, self);
  }
}

- (BOOL)isValidInRegion:(id)region
{
  regionCopy = region;
  validRegion = self->_validRegion;
  if (validRegion)
  {
    v6 = [(NURegion *)validRegion includesRegion:regionCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isValidInRect:(id *)rect
{
  validRegion = self->_validRegion;
  if (!validRegion)
  {
    return 1;
  }

  var1 = rect->var1;
  v6[0] = rect->var0;
  v6[1] = var1;
  return [(NURegion *)validRegion includesRect:v6];
}

- (NURegion)validRegion
{
  v2 = [(NUMutableRegion *)self->_validRegion copy];

  return v2;
}

- (void)validateRegion:(id)region
{
  v24 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  if ([(_NUAbstractStorage *)self isDirty])
  {
    v4 = NUAssertLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Storage was left dirty!"];
      *buf = 138543362;
      v21 = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v11;
        v22 = 2114;
        v23 = v13;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUAbstractStorage validateRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageStorage.mm", 61, @"Storage was left dirty!", v14, v15, v16, v17, v18);
  }

  [(NUMutableRegion *)self->_validRegion addRegion:regionCopy];
}

- (void)validateRect:(id *)rect
{
  validRegion = self->_validRegion;
  var1 = rect->var1;
  v5[0] = rect->var0;
  v5[1] = var1;
  [(NUMutableRegion *)validRegion addRect:v5];
}

- (_NUAbstractStorage)init
{
  v3.receiver = self;
  v3.super_class = _NUAbstractStorage;
  return [(_NUAbstractStorage *)&v3 init];
}

@end