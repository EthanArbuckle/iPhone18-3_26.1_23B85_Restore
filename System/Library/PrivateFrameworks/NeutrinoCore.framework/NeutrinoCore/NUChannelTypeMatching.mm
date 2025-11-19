@interface NUChannelTypeMatching
- (BOOL)match:(id)a3;
- (NUChannelTypeMatching)init;
- (NUChannelTypeMatching)initWithChannelType:(int64_t)a3;
- (id)description;
@end

@implementation NUChannelTypeMatching

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelTypeMatching *)self channelType];
  if ((v3 - 1) > 4)
  {
    v4 = @"???";
  }

  else
  {
    v4 = off_1E8109B18[v3 - 1];
  }

  return [v2 stringWithFormat:@"TYPE[%@]", v4];
}

- (BOOL)match:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == [(NUChannelTypeMatching *)self channelType])
  {
    v6 = 1;
  }

  else if ([v4 type] == 4)
  {
    v7 = [v4 format];
    v8 = [v7 itemFormat];
    v9 = [v8 channelType];
    v6 = v9 == [(NUChannelTypeMatching *)self channelType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NUChannelTypeMatching)initWithChannelType:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = NUAssertLogger_4187();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "type != NUChannelTypeUnknown"];
      *buf = 138543362;
      v23 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_4187();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v12;
        v24 = 2114;
        v25 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelTypeMatching initWithChannelType:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2673, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "type != NUChannelTypeUnknown");
  }

  v21.receiver = self;
  v21.super_class = NUChannelTypeMatching;
  result = [(NUChannelTypeMatching *)&v21 init];
  result->_channelType = a3;
  return result;
}

- (NUChannelTypeMatching)init
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
  _NUAssertFailHandler("[NUChannelTypeMatching init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2669, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end