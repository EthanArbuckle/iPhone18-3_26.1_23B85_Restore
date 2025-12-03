@interface NUChannelData
+ (id)BOOLean:(BOOL)lean;
+ (id)aggregateDataWithFormat:(id)format components:(id)components error:(id *)error;
+ (id)null;
+ (id)number:(double)number;
+ (id)rect:(id *)rect;
- (NUChannelData)init;
- (NUChannelData)initWithFormat:(id)format;
- (id)debugDescription;
- (id)description;
- (id)subdataAtIndex:(unint64_t)index error:(id *)error;
- (id)subdataForChannel:(id)channel error:(id *)error;
- (id)value;
- (int64_t)type;
@end

@implementation NUChannelData

- (id)subdataAtIndex:(unint64_t)index error:(id *)error
{
  *error = [NUError unsupportedError:@"Abstract data" object:self];
  return 0;
}

- (id)subdataForChannel:(id)channel error:(id *)error
{
  *error = [NUError unsupportedError:@"Abstract data" object:self];
  return 0;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  format = [(NUChannelData *)self format];
  v6 = [v3 stringWithFormat:@"<%@:%p format:%@>", v4, self, format];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  format = [(NUChannelData *)self format];
  v4 = [v2 stringWithFormat:@"data=%@", format];

  return v4;
}

- (id)value
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      callStackSymbols = [v10 callStackSymbols];
      v13 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    callStackSymbols2 = [v16 callStackSymbols];
    v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NUChannelData value]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1948, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (int64_t)type
{
  format = [(NUChannelData *)self format];
  channelType = [format channelType];

  return channelType;
}

- (NUChannelData)initWithFormat:(id)format
{
  formatCopy = format;
  v8.receiver = self;
  v8.super_class = NUChannelData;
  v5 = [(NUChannelData *)&v8 init];
  format = v5->_format;
  v5->_format = formatCopy;

  return v5;
}

- (NUChannelData)init
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
  _NUAssertFailHandler("[NUChannelData init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1930, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)aggregateDataWithFormat:(id)format components:(id)components error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  componentsCopy = components;
  if (!formatCopy)
  {
    v13 = NUAssertLogger_4187();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      v30 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_4187();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v20;
        v31 = 2114;
        v32 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelData aggregateDataWithFormat:components:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2016, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "format != nil");
  }

  v9 = componentsCopy;
  if ([formatCopy channelType] == 1)
  {
    v10 = formatCopy;
    if ([v10 mediaType] == 4)
    {
      v11 = [NUChannelMediaData containerMediaDataWithFormat:v10 components:v9 error:error];
    }

    else
    {
      [NUError unsupportedError:@"Cannot aggregate media data" object:v10];
      *error = v11 = 0;
    }
  }

  else
  {
    [NUError unsupportedError:@"Cannot aggregate channel data" object:formatCopy];
    *error = v11 = 0;
  }

  return v11;
}

+ (id)null
{
  v2 = objc_alloc_init(NUChannelNullData);

  return v2;
}

+ (id)rect:(id *)rect
{
  v4 = objc_alloc_init(NURectSetting);
  var1 = rect->var1;
  v9[0] = rect->var0;
  v9[1] = var1;
  v6 = [MEMORY[0x1E696B098] nu_valueWithPixelRect:v9];
  v7 = [NUChannelControlData controlDataWithSetting:v4 value:v6];

  return v7;
}

+ (id)BOOLean:(BOOL)lean
{
  leanCopy = lean;
  v4 = [NUBoolSetting alloc];
  v5 = [(NUModel *)v4 initWithAttributes:MEMORY[0x1E695E0F8]];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:leanCopy];
  v7 = [NUChannelControlData controlDataWithSetting:v5 value:v6];

  return v7;
}

+ (id)number:(double)number
{
  v4 = [NUNumberSetting alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:number];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:number];
  v7 = [(NUNumberSetting *)v4 initWithMinimum:v5 maximum:v6 attributes:MEMORY[0x1E695E0F8]];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:number];
  v9 = [NUChannelControlData controlDataWithSetting:v7 value:v8];

  return v9;
}

@end