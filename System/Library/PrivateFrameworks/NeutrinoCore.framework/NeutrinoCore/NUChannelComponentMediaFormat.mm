@interface NUChannelComponentMediaFormat
+ (id)genericImageComponentFormat;
+ (id)genericMediaComponentFormat;
+ (id)genericVideoComponentFormat;
- (BOOL)canSpecializeComponentMediaFormat:(id)a3;
- (BOOL)canSpecializeMediaFormat:(id)a3;
- (BOOL)isCompatibleWithComponentMediaFormat:(id)a3;
- (BOOL)isCompatibleWithMediaFormat:(id)a3;
- (BOOL)isEqualToChannelFormat:(id)a3;
- (BOOL)isEqualToComponentMediaFormat:(id)a3;
- (NUChannelComponentMediaFormat)initWithComponentMediaType:(int64_t)a3 temporality:(int64_t)a4;
- (NUChannelComponentMediaFormat)initWithMediaTemporality:(int64_t)a3;
- (id)description;
- (id)specializedWithComponentMediaFormat:(id)a3;
@end

@implementation NUChannelComponentMediaFormat

- (id)description
{
  v9.receiver = self;
  v9.super_class = NUChannelComponentMediaFormat;
  v3 = [(NUChannelMediaFormat *)&v9 description];
  v4 = [(NUChannelComponentMediaFormat *)self componentMediaType];
  if (v4 > 5)
  {
    v5 = @"???";
  }

  else
  {
    v5 = off_1E8109A90[v4];
  }

  v6 = v5;
  v7 = [v3 stringByAppendingFormat:@":%@", v6];

  return v7;
}

- (id)specializedWithComponentMediaFormat:(id)a3
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
      _NUAssertFailHandler("[NUChannelComponentMediaFormat specializedWithComponentMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1376, @"Invalid parameter not kind of %@", v26, v27, v28, v29, v25);
    }
  }

  v5 = [(NUChannelComponentMediaFormat *)self componentMediaType];
  if (!v5)
  {
    v5 = [v4 componentMediaType];
  }

  v6 = [(NUChannelMediaFormat *)self temporality];
  if (!v6)
  {
    v6 = [v4 temporality];
  }

  v7 = [[NUChannelComponentMediaFormat alloc] initWithComponentMediaType:v5 temporality:v6];

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
      _NUAssertFailHandler("[NUChannelComponentMediaFormat canSpecializeComponentMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1352, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  v5 = -[NUChannelComponentMediaFormat isCompatibleWithComponentMediaFormat:](self, "isCompatibleWithComponentMediaFormat:", v4) && (-[NUChannelComponentMediaFormat componentMediaType](self, "componentMediaType") && ![v4 componentMediaType] || -[NUChannelMediaFormat temporality](self, "temporality") && !objc_msgSend(v4, "temporality"));

  return v5;
}

- (BOOL)canSpecializeMediaFormat:(id)a3
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
      _NUAssertFailHandler("[NUChannelComponentMediaFormat canSpecializeMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1338, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  if ([v4 mediaType] == 5)
  {
    v5 = [(NUChannelComponentMediaFormat *)self canSpecializeComponentMediaFormat:v4];
  }

  else
  {
    v5 = -[NUChannelMediaFormat temporality](self, "temporality") && ![v4 temporality];
  }

  return v5;
}

- (BOOL)isCompatibleWithMediaFormat:(id)a3
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
      _NUAssertFailHandler("[NUChannelComponentMediaFormat isCompatibleWithMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1308, @"Invalid parameter not kind of %@", v26, v27, v28, v29, v25);
    }
  }

  if ([v4 mediaType] == 5)
  {
    v5 = [(NUChannelComponentMediaFormat *)self isCompatibleWithComponentMediaFormat:v4];
  }

  else
  {
    v5 = 0;
    if ([v4 mediaType] != 4)
    {
      if (!-[NUChannelComponentMediaFormat componentMediaType](self, "componentMediaType") || (v6 = [v4 mediaType], v6 == -[NUChannelComponentMediaFormat componentMediaType](self, "componentMediaType")))
      {
        if (!-[NUChannelMediaFormat temporality](self, "temporality") || ![v4 temporality] || (v7 = -[NUChannelMediaFormat temporality](self, "temporality"), v7 == objc_msgSend(v4, "temporality")))
        {
          v5 = 1;
        }
      }
    }
  }

  return v5;
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
      _NUAssertFailHandler("[NUChannelComponentMediaFormat isCompatibleWithComponentMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1288, @"Invalid parameter not kind of %@", v26, v27, v28, v29, v25);
    }
  }

  v7 = 0;
  if (!-[NUChannelComponentMediaFormat componentMediaType](self, "componentMediaType") || ![v4 componentMediaType] || (v5 = objc_msgSend(v4, "componentMediaType"), v5 == -[NUChannelComponentMediaFormat componentMediaType](self, "componentMediaType")))
  {
    if (!-[NUChannelMediaFormat temporality](self, "temporality") || ![v4 temporality] || (v6 = -[NUChannelMediaFormat temporality](self, "temporality"), v6 == objc_msgSend(v4, "temporality")))
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)isEqualToComponentMediaFormat:(id)a3
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
      _NUAssertFailHandler("[NUChannelComponentMediaFormat isEqualToComponentMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1277, @"Invalid parameter not kind of %@", v26, v27, v28, v29, v25);
    }
  }

  v5 = [(NUChannelComponentMediaFormat *)self mediaType];
  if (v5 == [v4 mediaType])
  {
    v6 = [(NUChannelMediaFormat *)self temporality];
    v7 = v6 == [v4 temporality];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToChannelFormat:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUChannelComponentMediaFormat *)self isEqualToComponentMediaFormat:v4];

  return v5;
}

- (NUChannelComponentMediaFormat)initWithComponentMediaType:(int64_t)a3 temporality:(int64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3 == 4)
  {
    v6 = NUAssertLogger_4187();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "mediaType != NUChannelMediaTypeContainer"];
      *buf = 138543362;
      v24 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_4187();
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

    _NUAssertFailHandler("[NUChannelComponentMediaFormat initWithComponentMediaType:temporality:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1259, @"Invalid parameter not satisfying: %s", v18, v19, v20, v21, "mediaType != NUChannelMediaTypeContainer");
  }

  v22.receiver = self;
  v22.super_class = NUChannelComponentMediaFormat;
  result = [(NUChannelMediaFormat *)&v22 initWithMediaTemporality:a4];
  result->_componentMediaType = a3;
  return result;
}

- (NUChannelComponentMediaFormat)initWithMediaTemporality:(int64_t)a3
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
      v15 = [v13 callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
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
    v22 = [v19 callStackSymbols];
    v23 = [v22 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUChannelComponentMediaFormat initWithMediaTemporality:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1255, @"Initializer not available: [%@ %@], use designated initializer instead.", v26, v27, v28, v29, v25);
}

+ (id)genericMediaComponentFormat
{
  v2 = [[a1 alloc] initWithComponentMediaType:0 temporality:0];

  return v2;
}

+ (id)genericVideoComponentFormat
{
  v2 = [[a1 alloc] initWithComponentMediaType:0 temporality:2];

  return v2;
}

+ (id)genericImageComponentFormat
{
  v2 = [[a1 alloc] initWithComponentMediaType:1 temporality:1];

  return v2;
}

@end