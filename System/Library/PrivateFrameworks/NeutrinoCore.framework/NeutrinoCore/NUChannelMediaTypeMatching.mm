@interface NUChannelMediaTypeMatching
- (BOOL)match:(id)match;
- (NUChannelMediaTypeMatching)init;
- (NUChannelMediaTypeMatching)initWithMediaType:(int64_t)type;
- (id)description;
@end

@implementation NUChannelMediaTypeMatching

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  mediaType = [(NUChannelMediaTypeMatching *)self mediaType];
  if (mediaType > 5)
  {
    v4 = @"???";
  }

  else
  {
    v4 = off_1E8109A90[mediaType];
  }

  v5 = v4;
  v6 = [v2 stringWithFormat:@"MEDIA[%@]", v5];

  return v6;
}

- (BOOL)match:(id)match
{
  matchCopy = match;
  if ([matchCopy type] == 1)
  {
    if ([(NUChannelMediaTypeMatching *)self mediaType])
    {
      format = [matchCopy format];
      mediaType = [(NUChannelMediaTypeMatching *)self mediaType];
      v7 = mediaType == [format mediaType];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NUChannelMediaTypeMatching)initWithMediaType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = NUChannelMediaTypeMatching;
  result = [(NUChannelMediaTypeMatching *)&v5 init];
  result->_mediaType = type;
  return result;
}

- (NUChannelMediaTypeMatching)init
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
  _NUAssertFailHandler("[NUChannelMediaTypeMatching init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2722, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end