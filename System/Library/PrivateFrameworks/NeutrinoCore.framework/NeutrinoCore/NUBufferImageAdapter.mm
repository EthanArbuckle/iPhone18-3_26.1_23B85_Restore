@interface NUBufferImageAdapter
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (NUBufferImageAdapter)init;
- (NUBufferImageAdapter)initWithBuffer:(id)buffer colorSpace:(id)space validRegion:(id)region;
- (NUBufferImageAdapter)initWithBufferProvider:(id)provider colorSpace:(id)space validRegion:(id)region;
- (id)debugQuickLookObject;
- (id)mutableImageCopy;
- (id)mutablePurgeableImageCopy;
- (id)purgeableImageCopy;
- (void)readBufferRegion:(id)region withBlock:(id)block;
@end

@implementation NUBufferImageAdapter

- (id)debugQuickLookObject
{
  v2 = [NUImageFactory newCGImageFromBufferImage:self];
  v3 = [MEMORY[0x1E695F658] imageWithCGImage:v2];
  CGImageRelease(v2);

  return v3;
}

- (id)mutablePurgeableImageCopy
{
  v23 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v5];
    *buf = 138543362;
    v20 = v6;
    _os_log_error_impl(&dword_1C0184000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v7 = _NUAssertLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v7 = _NUAssertLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v20 = v9;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  _NUAssertFailHandler("[NUBufferImageAdapter mutablePurgeableImageCopy]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 466, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v15, v16, v17, v18, v14);
}

- (id)purgeableImageCopy
{
  v23 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v5];
    *buf = 138543362;
    v20 = v6;
    _os_log_error_impl(&dword_1C0184000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v7 = _NUAssertLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v7 = _NUAssertLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v20 = v9;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  _NUAssertFailHandler("[NUBufferImageAdapter purgeableImageCopy]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 462, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v15, v16, v17, v18, v14);
}

- (id)mutableImageCopy
{
  v23 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v5];
    *buf = 138543362;
    v20 = v6;
    _os_log_error_impl(&dword_1C0184000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v7 = _NUAssertLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v7 = _NUAssertLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v20 = v9;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  _NUAssertFailHandler("[NUBufferImageAdapter mutableImageCopy]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 458, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v15, v16, v17, v18, v14);
}

- (void)readBufferRegion:(id)region withBlock:(id)block
{
  blockCopy = block;
  v6 = [(NUBufferImageAdapter *)self size];
  bufferProvider = self->_bufferProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__NUBufferImageAdapter_readBufferRegion_withBlock___block_invoke;
  v10[3] = &unk_1E810A400;
  v12 = 0;
  v13 = 0;
  v14 = v6;
  v15 = v8;
  v9 = blockCopy;
  v11 = v9;
  [(NUBufferProvider *)bufferProvider provideBuffer:v10];
}

void __51__NUBufferImageAdapter_readBufferRegion_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v4 = [NUBufferTileAdapter alloc];
  v5 = *(a1 + 56);
  v9[0] = *(a1 + 40);
  v9[1] = v5;
  v6 = *(a1 + 56);
  v8[0] = *(a1 + 40);
  v8[1] = v6;
  v7 = [(NUBufferTileAdapter *)v4 initWithFrameRect:v9 contentRect:v8 buffer:v3];
  (*(*(a1 + 32) + 16))();
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  v2 = [(NUBufferProvider *)self->_bufferProvider size];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (NUBufferImageAdapter)init
{
  v25 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    v8 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v6, v7];
    *buf = 138543362;
    v22 = v8;
    _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_13196);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUBufferImageAdapter init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 429, @"Initializer not available: [%@ %@], use designated initializer instead.", v17, v18, v19, v20, v16);
}

- (NUBufferImageAdapter)initWithBufferProvider:(id)provider colorSpace:(id)space validRegion:(id)region
{
  v59 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  spaceCopy = space;
  regionCopy = region;
  v12 = regionCopy;
  if (!providerCopy)
  {
    v20 = NUAssertLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "provider != nil"];
      *buf = 138543362;
      v56 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v39;
        v57 = 2114;
        v58 = v41;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v42 = "provider != nil";
    v43 = 414;
LABEL_29:

    _NUAssertFailHandler("[NUBufferImageAdapter initWithBufferProvider:colorSpace:validRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", v43, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, v42);
  }

  if (!spaceCopy)
  {
    v27 = NUAssertLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "colorSpace != nil"];
      *buf = 138543362;
      v56 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger();
    v30 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v30)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v46 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v44;
        v57 = 2114;
        v58 = v46;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v32;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v42 = "colorSpace != nil";
    v43 = 415;
    goto LABEL_29;
  }

  if (!regionCopy)
  {
    v33 = NUAssertLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "validRegion != nil"];
      *buf = 138543362;
      v56 = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger();
    v36 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v36)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v49 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v47;
        v57 = 2114;
        v58 = v49;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v38;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v42 = "validRegion != nil";
    v43 = 416;
    goto LABEL_29;
  }

  v54.receiver = self;
  v54.super_class = NUBufferImageAdapter;
  v13 = [(NUBufferImageAdapter *)&v54 init];
  objc_storeStrong(&v13->_bufferProvider, provider);
  objc_storeStrong(&v13->_colorSpace, space);
  v14 = [providerCopy size];
  v16 = [NUImageLayout contiguousLayoutForImageSize:v14, v15];
  layout = v13->_layout;
  v13->_layout = v16;

  validRegion = v13->_validRegion;
  v13->_validRegion = v12;

  return v13;
}

- (NUBufferImageAdapter)initWithBuffer:(id)buffer colorSpace:(id)space validRegion:(id)region
{
  v32 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  spaceCopy = space;
  regionCopy = region;
  if (!bufferCopy)
  {
    v14 = NUAssertLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *buf = 138543362;
      v29 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v21;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUBufferImageAdapter initWithBuffer:colorSpace:validRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageUtilities.mm", 407, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "buffer != nil");
  }

  v11 = [[NUBufferAdapter alloc] initWithBuffer:bufferCopy];
  v12 = [(NUBufferImageAdapter *)self initWithBufferProvider:v11 colorSpace:spaceCopy validRegion:regionCopy];

  return v12;
}

@end