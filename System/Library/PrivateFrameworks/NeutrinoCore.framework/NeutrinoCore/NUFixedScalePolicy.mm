@interface NUFixedScalePolicy
+ (id)oneToOneScalePolicy;
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleForImageSize:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (NUFixedScalePolicy)init;
- (NUFixedScalePolicy)initWithScale:(id)a3;
@end

@implementation NUFixedScalePolicy

- ($0AC6E346AE4835514AAA8AC86D8F4844)scale
{
  objc_copyStruct(v4, &self->_scale, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld", self->_scale.numerator, self->_scale.denominator];
  v4 = [v2 stringWithFormat:@"{scale=%@}", v3];

  return v4;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld", self->_scale.numerator, self->_scale.denominator];
  v6 = [v3 stringWithFormat:@"<%@:%p> scale=%@", v4, self, v5];

  return v6;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleForImageSize:(id)a3
{
  denominator = self->_scale.denominator;
  numerator = self->_scale.numerator;
  result.var1 = denominator;
  result.var0 = numerator;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NUFixedScalePolicy *)v4 scale];
      v7 = NUScaleEqual(v5, v6, self->_scale.numerator, self->_scale.denominator);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NUFixedScalePolicy)initWithScale:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6.receiver = self;
  v6.super_class = NUFixedScalePolicy;
  result = [(NUFixedScalePolicy *)&v6 init];
  result->_scale.numerator = var0;
  result->_scale.denominator = var1;
  return result;
}

- (NUFixedScalePolicy)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_27036);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_27036);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_27036);
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
  _NUAssertFailHandler("[NUFixedScalePolicy init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUScalePolicy.m", 19, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)oneToOneScalePolicy
{
  v2 = [a1 alloc];
  v3 = [v2 initWithScale:NUScaleOne];

  return v3;
}

@end