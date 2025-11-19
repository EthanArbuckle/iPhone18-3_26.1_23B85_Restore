@interface NUChannelData
+ (id)BOOLean:(BOOL)a3;
+ (id)aggregateDataWithFormat:(id)a3 components:(id)a4 error:(id *)a5;
+ (id)null;
+ (id)number:(double)a3;
+ (id)rect:(id *)a3;
- (NUChannelData)init;
- (NUChannelData)initWithFormat:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)subdataAtIndex:(unint64_t)a3 error:(id *)a4;
- (id)subdataForChannel:(id)a3 error:(id *)a4;
- (id)value;
- (int64_t)type;
@end

@implementation NUChannelData

- (id)subdataAtIndex:(unint64_t)a3 error:(id *)a4
{
  *a4 = [NUError unsupportedError:@"Abstract data" object:self];
  return 0;
}

- (id)subdataForChannel:(id)a3 error:(id *)a4
{
  *a4 = [NUError unsupportedError:@"Abstract data" object:self];
  return 0;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUChannelData *)self format];
  v6 = [v3 stringWithFormat:@"<%@:%p format:%@>", v4, self, v5];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelData *)self format];
  v4 = [v2 stringWithFormat:@"data=%@", v3];

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
      v12 = [v10 callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
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
    v19 = [v16 callStackSymbols];
    v20 = [v19 componentsJoinedByString:@"\n"];
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
  v2 = [(NUChannelData *)self format];
  v3 = [v2 channelType];

  return v3;
}

- (NUChannelData)initWithFormat:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NUChannelData;
  v5 = [(NUChannelData *)&v8 init];
  format = v5->_format;
  v5->_format = v4;

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
  _NUAssertFailHandler("[NUChannelData init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1930, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)aggregateDataWithFormat:(id)a3 components:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
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
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v20;
        v31 = 2114;
        v32 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelData aggregateDataWithFormat:components:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2016, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "format != nil");
  }

  v9 = v8;
  if ([v7 channelType] == 1)
  {
    v10 = v7;
    if ([v10 mediaType] == 4)
    {
      v11 = [NUChannelMediaData containerMediaDataWithFormat:v10 components:v9 error:a5];
    }

    else
    {
      [NUError unsupportedError:@"Cannot aggregate media data" object:v10];
      *a5 = v11 = 0;
    }
  }

  else
  {
    [NUError unsupportedError:@"Cannot aggregate channel data" object:v7];
    *a5 = v11 = 0;
  }

  return v11;
}

+ (id)null
{
  v2 = objc_alloc_init(NUChannelNullData);

  return v2;
}

+ (id)rect:(id *)a3
{
  v4 = objc_alloc_init(NURectSetting);
  var1 = a3->var1;
  v9[0] = a3->var0;
  v9[1] = var1;
  v6 = [MEMORY[0x1E696B098] nu_valueWithPixelRect:v9];
  v7 = [NUChannelControlData controlDataWithSetting:v4 value:v6];

  return v7;
}

+ (id)BOOLean:(BOOL)a3
{
  v3 = a3;
  v4 = [NUBoolSetting alloc];
  v5 = [(NUModel *)v4 initWithAttributes:MEMORY[0x1E695E0F8]];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v7 = [NUChannelControlData controlDataWithSetting:v5 value:v6];

  return v7;
}

+ (id)number:(double)a3
{
  v4 = [NUNumberSetting alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v7 = [(NUNumberSetting *)v4 initWithMinimum:v5 maximum:v6 attributes:MEMORY[0x1E695E0F8]];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v9 = [NUChannelControlData controlDataWithSetting:v7 value:v8];

  return v9;
}

@end