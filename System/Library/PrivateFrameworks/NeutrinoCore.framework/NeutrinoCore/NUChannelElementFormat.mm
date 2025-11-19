@interface NUChannelElementFormat
- (BOOL)canSpecializeFormat:(id)a3;
- (BOOL)isCompatibleWithChannelFormat:(id)a3;
- (BOOL)isEqualToChannelFormat:(id)a3;
- (BOOL)isGeneric;
- (NUChannelElementFormat)init;
- (NUChannelElementFormat)initWithRepresentedFormat:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)specializedWithFormat:(id)a3;
- (id)subchannelFormatForKey:(id)a3;
- (id)subchannelKeys;
- (unint64_t)hash;
@end

@implementation NUChannelElementFormat

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUChannelElementFormat *)self representedFormat];
  v6 = [v5 description];
  v7 = [v3 stringWithFormat:@"<%@:%p element:%@>", v4, self, v6];

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelElementFormat *)self representedFormat];
  v4 = [v3 description];
  v5 = [v2 stringWithFormat:@"{%@}", v4];

  return v5;
}

- (id)subchannelFormatForKey:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelElementFormat *)self representedFormat];
  v6 = [v5 subchannelFormatForKey:v4];

  return v6;
}

- (id)subchannelKeys
{
  v2 = [(NUChannelElementFormat *)self representedFormat];
  v3 = [v2 subchannelKeys];

  return v3;
}

- (id)specializedWithFormat:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelElementFormat *)self representedFormat];
  v6 = [v5 specializedWithFormat:v4];

  v7 = [[NUChannelElementFormat alloc] initWithRepresentedFormat:v6];

  return v7;
}

- (BOOL)canSpecializeFormat:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelElementFormat *)self representedFormat];
  v6 = [v5 canSpecializeFormat:v4];

  return v6;
}

- (BOOL)isGeneric
{
  v2 = [(NUChannelElementFormat *)self representedFormat];
  v3 = [v2 isGeneric];

  return v3;
}

- (BOOL)isCompatibleWithChannelFormat:(id)a3
{
  v4 = a3;
  v5 = [(NUChannelElementFormat *)self representedFormat];
  v6 = [v5 isCompatibleWithChannelFormat:v4];

  return v6;
}

- (BOOL)isEqualToChannelFormat:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 representedFormat];
    v6 = [(NUChannelElementFormat *)self representedFormat];
    v7 = [v5 isEqualToChannelFormat:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = NUChannelElementFormat;
  v3 = 0x99A2CFABC7 * [(NUChannelFormat *)&v5 hash];
  return (0xDB57D8CCADLL * [(NUChannelFormat *)self->_representedFormat hash]) ^ v3;
}

- (NUChannelElementFormat)initWithRepresentedFormat:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_4187();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "representedFormat != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
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
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelElementFormat initWithRepresentedFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1842, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "representedFormat != nil");
  }

  v5 = v4;
  v25.receiver = self;
  v25.super_class = NUChannelElementFormat;
  v6 = [(NUChannelElementFormat *)&v25 init];
  representedFormat = v6->_representedFormat;
  v6->_representedFormat = v5;

  return v6;
}

- (NUChannelElementFormat)init
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
  _NUAssertFailHandler("[NUChannelElementFormat init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1834, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end