@interface NUFixedRegionPolicy
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- (NSString)debugDescription;
- (NSString)description;
- (NUFixedRegionPolicy)init;
- (NUFixedRegionPolicy)initWithRect:(id *)a3;
- (NUFixedRegionPolicy)initWithRegion:(id)a3;
- (id)regionForGeometry:(id)a3;
@end

@implementation NUFixedRegionPolicy

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
  v3 = [(NUFixedRegionPolicy *)self region];
  v4 = [v2 stringWithFormat:@"{region=%@}", v3];

  return v4;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUFixedRegionPolicy *)self region];
  v6 = [v3 stringWithFormat:@"<%@:%p> region=%@", v4, self, v5];

  return v6;
}

- (id)regionForGeometry:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_scale.numerator < 1 || self->_scale.denominator <= 0)
  {
    v16 = NUAssertLogger_15661();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld", self->_scale.numerator, self->_scale.denominator];
      v19 = [v17 stringWithFormat:@"Invalid scale: %@", v18];
      *buf = 138543362;
      v36 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_15661();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v25;
        v37 = 2114;
        v38 = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v30 = NUScaleToString(self->_scale.numerator, self->_scale.denominator);
    _NUAssertFailHandler("[NUFixedRegionPolicy regionForGeometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURegionPolicy.m", 51, @"Invalid scale: %@", v31, v32, v33, v34, v30);
  }

  v6 = v4;
  v7 = [v4 renderScale];
  v9 = v8;
  if (NUScaleEqual(v7, v8, self->_scale.numerator, self->_scale.denominator))
  {
    v10 = self->_region;
  }

  else
  {
    v11 = NUScaleDivide(v7, v9, self->_scale.numerator, self->_scale.denominator);
    v13 = NUScaleToDouble(v11, v12);
    v10 = -[NURegion regionByScalingBy:withRounding:](self->_region, "regionByScalingBy:withRounding:", [v6 roundingPolicy], v13, v13);
  }

  v14 = v10;

  return v14;
}

- (NUFixedRegionPolicy)initWithRegion:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v10 = NUAssertLogger_15661();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "region != nil"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_15661();
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
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFixedRegionPolicy initWithRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURegionPolicy.m", 39, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "region != nil");
  }

  v5 = v4;
  v26.receiver = self;
  v26.super_class = NUFixedRegionPolicy;
  v6 = [(NUFixedRegionPolicy *)&v26 init];
  v7 = [v5 copy];
  region = v6->_region;
  v6->_region = v7;

  v6->_scale = NUScaleOne;
  return v6;
}

- (NUFixedRegionPolicy)initWithRect:(id *)a3
{
  var1 = a3->var1;
  v8[0] = a3->var0;
  v8[1] = var1;
  v5 = [NURegion regionWithRect:v8];
  v6 = [(NUFixedRegionPolicy *)self initWithRegion:v5];

  return v6;
}

- (NUFixedRegionPolicy)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_15673);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_15673);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_15673);
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
  _NUAssertFailHandler("[NUFixedRegionPolicy init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURegionPolicy.m", 29, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end