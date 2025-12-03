@interface NUPixelCountScalePolicy
- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleForImageSize:(id)size;
- (NUPixelCountScalePolicy)init;
- (NUPixelCountScalePolicy)initWithTargetPixelCount:(int64_t)count;
@end

@implementation NUPixelCountScalePolicy

- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleForImageSize:(id)size
{
  v39 = *MEMORY[0x1E69E9840];
  if (size.var0 < 1 || size.var1 <= 0)
  {
    v19 = NUAssertLogger_27066();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageSize.width > 0 && imageSize.height > 0"];
      *buf = 138543362;
      v36 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_27066();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPixelCountScalePolicy scaleForImageSize:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUScalePolicy.m", 248, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "imageSize.width > 0 && imageSize.height > 0");
  }

  totalPixelCount = self->_totalPixelCount;
  v4 = size.var0 / size.var1;
  v5 = sqrt(totalPixelCount / v4);
  v6 = vcvtmd_s64_f64(v5);
  v7 = vcvtpd_s64_f64(v4 * floor(v5));
  v8 = sqrt(v4 * totalPixelCount);
  v9 = vcvtmd_s64_f64(v8);
  v10 = v7 * v6;
  v11 = vcvtpd_s64_f64(floor(v8) / v4) * v9;
  if (v11 <= totalPixelCount)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v11 <= totalPixelCount)
  {
    var0 = size.var0;
  }

  else
  {
    var0 = size.var1;
  }

  v14 = v10 <= totalPixelCount;
  if (v10 <= totalPixelCount)
  {
    v15 = v6;
  }

  else
  {
    v15 = v9;
  }

  if (v14)
  {
    var1 = size.var1;
  }

  else
  {
    var1 = size.var0;
  }

  if (v10 < v11)
  {
    v15 = v12;
    var1 = var0;
  }

  if (v15 <= var1)
  {
    v17 = var1;
  }

  else
  {
    v17 = *(&NUScaleOne + 1);
  }

  if (v15 <= var1)
  {
    v18 = v15;
  }

  else
  {
    v18 = NUScaleOne;
  }

  result.var1 = v17;
  result.var0 = v18;
  return result;
}

- (NUPixelCountScalePolicy)initWithTargetPixelCount:(int64_t)count
{
  v26 = *MEMORY[0x1E69E9840];
  if (count <= 0)
  {
    v5 = NUAssertLogger_27066();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetPixelCount > 0"];
      *buf = 138543362;
      v23 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_27066();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        callStackSymbols = [v13 callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v12;
        v24 = 2114;
        v25 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPixelCountScalePolicy initWithTargetPixelCount:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUScalePolicy.m", 223, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "targetPixelCount > 0");
  }

  v21.receiver = self;
  v21.super_class = NUPixelCountScalePolicy;
  result = [(NUPixelCountScalePolicy *)&v21 init];
  result->_totalPixelCount = count;
  return result;
}

- (NUPixelCountScalePolicy)init
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
  _NUAssertFailHandler("[NUPixelCountScalePolicy init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUScalePolicy.m", 218, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end