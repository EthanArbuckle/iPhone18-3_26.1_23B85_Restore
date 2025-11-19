@interface NUChannelMediaFormat
- (BOOL)canSpecializeComponentMediaFormat:(id)a3;
- (BOOL)canSpecializeFormat:(id)a3;
- (BOOL)canSpecializeMediaFormat:(id)a3;
- (BOOL)isCompatibleWithChannelFormat:(id)a3;
- (BOOL)isCompatibleWithComponentMediaFormat:(id)a3;
- (BOOL)isCompatibleWithMediaFormat:(id)a3;
- (NUChannelMediaFormat)init;
- (NUChannelMediaFormat)initWithMediaTemporality:(int64_t)a3;
- (id)description;
- (id)specializedWithComponentMediaFormat:(id)a3;
- (id)specializedWithFormat:(id)a3;
- (id)specializedWithMediaFormat:(id)a3;
- (unint64_t)hash;
@end

@implementation NUChannelMediaFormat

- (id)description
{
  v3 = [(NUChannelMediaFormat *)self temporality];
  v4 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v5 = [(NUChannelMediaFormat *)self temporality];
    if (v5 > 2)
    {
      v6 = @"???";
    }

    else
    {
      v6 = off_1E8109AC0[v5];
    }

    v9 = [(NUChannelMediaFormat *)self mediaType];
    if (v9 > 5)
    {
      v10 = @"???";
    }

    else
    {
      v10 = off_1E8109A90[v9];
    }

    v11 = v10;
    [v4 stringWithFormat:@"%@-media:%@", v6, v11];
  }

  else
  {
    v7 = [(NUChannelMediaFormat *)self mediaType];
    if (v7 > 5)
    {
      v8 = @"???";
    }

    else
    {
      v8 = off_1E8109A90[v7];
    }

    v11 = v8;
    [v4 stringWithFormat:@"media:%@", v11, v14];
  }
  v12 = ;

  return v12;
}

- (id)specializedWithComponentMediaFormat:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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
          v19 = [v17 callStackSymbols];
          v20 = [v19 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v28 = v16;
          v29 = 2114;
          v30 = v20;
          _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v13)
      {
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v28 = v15;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      _NUAssertFailHandler("[NUChannelMediaFormat specializedWithComponentMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 615, @"Invalid parameter not kind of %@", v23, v24, v25, v26, v22);
    }
  }

  return self;
}

- (id)specializedWithMediaFormat:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
    v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
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
  _NUAssertFailHandler("[NUChannelMediaFormat specializedWithMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 611, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

- (id)specializedWithFormat:(id)a3
{
  v4 = a3;
  if ([v4 channelType] == 4)
  {
    v5 = [v4 itemFormat];
LABEL_5:
    v6 = v5;
    v7 = [(NUChannelMediaFormat *)self specializedWithFormat:v5];

    goto LABEL_13;
  }

  if ([v4 channelType] == 5)
  {
    v5 = [v4 representedFormat];
    goto LABEL_5;
  }

  if ([v4 channelType] == 1 && (objc_msgSend(v4, "canSpecializeFormat:", self) & 1) != 0)
  {
    if ([v4 mediaType] == 5)
    {
      [(NUChannelMediaFormat *)self specializedWithComponentMediaFormat:v4];
    }

    else
    {
      [(NUChannelMediaFormat *)self specializedWithMediaFormat:v4];
    }
    v8 = ;
  }

  else
  {
    v8 = self;
  }

  v7 = v8;
LABEL_13:

  return v7;
}

- (BOOL)canSpecializeComponentMediaFormat:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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
          v20 = [v18 callStackSymbols];
          v21 = [v20 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = v17;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v29 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _NUAssertFailHandler("[NUChannelMediaFormat canSpecializeComponentMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 572, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  v5 = ![v4 componentMediaType] && -[NUChannelMediaFormat mediaType](self, "mediaType") != 4 || !objc_msgSend(v4, "temporality") && -[NUChannelMediaFormat temporality](self, "temporality");

  return v5;
}

- (BOOL)canSpecializeMediaFormat:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
    v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
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
  _NUAssertFailHandler("[NUChannelMediaFormat canSpecializeMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 568, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

- (BOOL)canSpecializeFormat:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v11 = NUAssertLogger_4187();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_4187();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelMediaFormat canSpecializeFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 545, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "other != nil");
  }

  v5 = v4;
  if ([v4 channelType] != 4)
  {
    if ([v5 channelType] == 5)
    {
      v6 = [v5 representedFormat];
      goto LABEL_6;
    }

    if ([v5 channelType] == 1)
    {
      if ([v5 mediaType] == 5)
      {
        v10 = [(NUChannelMediaFormat *)self canSpecializeComponentMediaFormat:v5];
LABEL_13:
        v8 = v10;
        goto LABEL_7;
      }

      if ([(NUChannelMediaFormat *)self isCompatibleWithMediaFormat:v5])
      {
        v10 = [(NUChannelMediaFormat *)self canSpecializeMediaFormat:v5];
        goto LABEL_13;
      }
    }

    v8 = 0;
    goto LABEL_7;
  }

  v6 = [v5 itemFormat];
LABEL_6:
  v7 = v6;
  v8 = [(NUChannelMediaFormat *)self canSpecializeFormat:v6];

LABEL_7:
  return v8;
}

- (BOOL)isCompatibleWithComponentMediaFormat:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = NUAssertLogger_4187();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v10 stringWithFormat:@"Invalid parameter not kind of %@", v12];
        *buf = 138543362;
        v31 = v13;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v15 = NUAssertLogger_4187();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v16)
        {
          v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v20 = MEMORY[0x1E696AF00];
          v21 = v19;
          v22 = [v20 callStackSymbols];
          v23 = [v22 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v31 = v19;
          v32 = 2114;
          v33 = v23;
          _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v16)
      {
        v17 = [MEMORY[0x1E696AF00] callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v31 = v18;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      _NUAssertFailHandler("[NUChannelMediaFormat isCompatibleWithComponentMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 520, @"Invalid parameter not kind of %@", v26, v27, v28, v29, v25);
    }
  }

  v7 = 0;
  if ([(NUChannelMediaFormat *)self mediaType]!= 4)
  {
    if (![v4 componentMediaType] || (v5 = objc_msgSend(v4, "componentMediaType"), v5 == -[NUChannelMediaFormat mediaType](self, "mediaType")))
    {
      if (!-[NUChannelMediaFormat temporality](self, "temporality") || ![v4 temporality] || (v6 = objc_msgSend(v4, "temporality"), v6 == -[NUChannelMediaFormat temporality](self, "temporality")))
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

- (BOOL)isCompatibleWithMediaFormat:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
    v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
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
  _NUAssertFailHandler("[NUChannelMediaFormat isCompatibleWithMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 516, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

- (BOOL)isCompatibleWithChannelFormat:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v10 = NUAssertLogger_4187();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
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
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelMediaFormat isCompatibleWithChannelFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 500, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "other != nil");
  }

  v5 = v4;
  if ([v4 channelType] == 5)
  {
    v6 = [v5 representedFormat];
    v7 = [(NUChannelMediaFormat *)self isCompatibleWithChannelFormat:v6];
  }

  else if ([v5 channelType] == 1)
  {
    if ([v5 mediaType] == 5)
    {
      v8 = [(NUChannelMediaFormat *)self isCompatibleWithComponentMediaFormat:v5];
    }

    else
    {
      v8 = [(NUChannelMediaFormat *)self isCompatibleWithMediaFormat:v5];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = NUChannelMediaFormat;
  v3 = [(NUChannelFormat *)&v6 hash];
  v4 = 0xFBC1449AFA067 * [(NUChannelMediaFormat *)self mediaType];
  return v4 ^ v3 ^ (0x54292DFE08551 * [(NUChannelMediaFormat *)self temporality]);
}

- (NUChannelMediaFormat)initWithMediaTemporality:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NUChannelMediaFormat;
  result = [(NUChannelMediaFormat *)&v5 init];
  result->_temporality = a3;
  return result;
}

- (NUChannelMediaFormat)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
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
  _NUAssertFailHandler("[NUChannelMediaFormat init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 478, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end