@interface NUChannelMetadataFormat
- (BOOL)isEqualToChannelFormat:(id)a3;
- (NUChannelMetadataFormat)init;
- (NUChannelMetadataFormat)initWithMetadataType:(int64_t)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation NUChannelMetadataFormat

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelMetadataFormat *)self metadataType];
  v4 = @"???";
  if (v3 == 2)
  {
    v4 = @"video";
  }

  if (v3 == 1)
  {
    v4 = @"image";
  }

  return [v2 stringWithFormat:@"metadata:%@", v4];
}

- (BOOL)isEqualToChannelFormat:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NUChannelMetadataFormat;
  if ([(NUChannelFormat *)&v8 isEqualToChannelFormat:v4])
  {
    v5 = [v4 metadataType];
    v6 = v5 == [(NUChannelMetadataFormat *)self metadataType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = NUChannelMetadataFormat;
  return (0x7F34415F73 * self->_metadataType) ^ [(NUChannelFormat *)&v3 hash];
}

- (NUChannelMetadataFormat)initWithMetadataType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NUChannelMetadataFormat;
  result = [(NUChannelMetadataFormat *)&v5 init];
  result->_metadataType = a3;
  return result;
}

- (NUChannelMetadataFormat)init
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
  _NUAssertFailHandler("[NUChannelMetadataFormat init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1710, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end