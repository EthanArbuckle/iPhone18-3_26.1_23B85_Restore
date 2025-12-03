@interface NUChannelAudioMediaFormat
+ (id)genericAudioFormat;
- (BOOL)canSpecializeMediaFormat:(id)format;
- (BOOL)isCompatibleWithMediaFormat:(id)format;
- (BOOL)isEqualToChannelFormat:(id)format;
- (NUChannelAudioMediaFormat)init;
- (NUChannelAudioMediaFormat)initWithMediaTemporality:(int64_t)temporality;
- (id)description;
- (id)specializedWithAudioMediaFormat:(id)format;
- (id)specializedWithComponentMediaFormat:(id)format;
@end

@implementation NUChannelAudioMediaFormat

- (id)description
{
  v4.receiver = self;
  v4.super_class = NUChannelAudioMediaFormat;
  v2 = [(NUChannelMediaFormat *)&v4 description];

  return v2;
}

- (id)specializedWithComponentMediaFormat:(id)format
{
  v31 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (formatCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = NUAssertLogger_4187();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [v7 stringWithFormat:@"Invalid parameter not kind of %@", v9];
        *buf = 138543362;
        v28 = v10;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v12 = NUAssertLogger_4187();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v13)
        {
          v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v17 = MEMORY[0x1E696AF00];
          v18 = v16;
          callStackSymbols = [v17 callStackSymbols];
          v20 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v28 = v16;
          v29 = 2114;
          v30 = v20;
          _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v13)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v28 = v15;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      _NUAssertFailHandler("[NUChannelAudioMediaFormat specializedWithComponentMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 879, @"Invalid parameter not kind of %@", v23, v24, v25, v26, v22);
    }
  }

  return self;
}

- (id)specializedWithAudioMediaFormat:(id)format
{
  v31 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (formatCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = NUAssertLogger_4187();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [v7 stringWithFormat:@"Invalid parameter not kind of %@", v9];
        *buf = 138543362;
        v28 = v10;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v12 = NUAssertLogger_4187();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v13)
        {
          v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v17 = MEMORY[0x1E696AF00];
          v18 = v16;
          callStackSymbols = [v17 callStackSymbols];
          v20 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v28 = v16;
          v29 = 2114;
          v30 = v20;
          _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v13)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v28 = v15;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      _NUAssertFailHandler("[NUChannelAudioMediaFormat specializedWithAudioMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 873, @"Invalid parameter not kind of %@", v23, v24, v25, v26, v22);
    }
  }

  return self;
}

- (BOOL)canSpecializeMediaFormat:(id)format
{
  v32 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (formatCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = NUAssertLogger_4187();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 stringWithFormat:@"Invalid parameter not kind of %@", v10];
        *buf = 138543362;
        v29 = v11;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = NUAssertLogger_4187();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v14)
        {
          v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v18 = MEMORY[0x1E696AF00];
          v19 = v17;
          callStackSymbols = [v18 callStackSymbols];
          v21 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = v17;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v29 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _NUAssertFailHandler("[NUChannelAudioMediaFormat canSpecializeMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 855, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  v5 = [formatCopy mediaType] == 2 && -[NUChannelAudioMediaFormat canSpecializeAudioMediaFormat:](self, "canSpecializeAudioMediaFormat:", formatCopy);

  return v5;
}

- (BOOL)isCompatibleWithMediaFormat:(id)format
{
  v32 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (formatCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = NUAssertLogger_4187();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 stringWithFormat:@"Invalid parameter not kind of %@", v10];
        *buf = 138543362;
        v29 = v11;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = NUAssertLogger_4187();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v14)
        {
          v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v18 = MEMORY[0x1E696AF00];
          v19 = v17;
          callStackSymbols = [v18 callStackSymbols];
          v21 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = v17;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v29 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _NUAssertFailHandler("[NUChannelAudioMediaFormat isCompatibleWithMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 839, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  v5 = [formatCopy mediaType] == 2 && -[NUChannelAudioMediaFormat isCompatibleWithAudioMediaFormat:](self, "isCompatibleWithAudioMediaFormat:", formatCopy);

  return v5;
}

- (BOOL)isEqualToChannelFormat:(id)format
{
  formatCopy = format;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUChannelAudioMediaFormat *)self isEqualToAudioMediaFormat:formatCopy];

  return v5;
}

- (NUChannelAudioMediaFormat)init
{
  v3.receiver = self;
  v3.super_class = NUChannelAudioMediaFormat;
  return [(NUChannelMediaFormat *)&v3 initWithMediaTemporality:2];
}

- (NUChannelAudioMediaFormat)initWithMediaTemporality:(int64_t)temporality
{
  v34 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = [v5 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v8, v9];
    *buf = 138543362;
    v31 = v10;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v11 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v11 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v11 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v12 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v13 = MEMORY[0x1E696AF00];
      v14 = v12;
      callStackSymbols = [v13 callStackSymbols];
      v16 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v16;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v17 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = MEMORY[0x1E696AF00];
    v20 = specific;
    v21 = v17;
    callStackSymbols2 = [v19 callStackSymbols];
    v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v31 = specific;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUChannelAudioMediaFormat initWithMediaTemporality:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 812, @"Initializer not available: [%@ %@], use designated initializer instead.", v26, v27, v28, v29, v25);
}

+ (id)genericAudioFormat
{
  v2 = objc_alloc_init(self);

  return v2;
}

@end