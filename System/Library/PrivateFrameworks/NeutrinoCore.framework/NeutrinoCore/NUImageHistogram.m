@interface NUImageHistogram
- ($F24F406B2B787EFB06265DBA3D28CBD5)range;
- (NUImageHistogram)initWithBinCount:(int64_t)a3 range:(id)a4;
- (id)description;
- (id)immutableCopyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation NUImageHistogram

- ($F24F406B2B787EFB06265DBA3D28CBD5)range
{
  min = self->_range.min;
  max = self->_range.max;
  result.var1 = max;
  result.var0 = min;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUImageHistogram *)self binCount];
  [(NUImageHistogram *)self range];
  v7 = v6;
  [(NUImageHistogram *)self range];
  v9 = v8;
  v10 = [(NUImageHistogram *)self red];
  v11 = [(NUImageHistogram *)self green];
  v12 = [(NUImageHistogram *)self blue];
  v13 = [(NUImageHistogram *)self luminance];
  v14 = [v3 stringWithFormat:@"<%@:%p> count=%ld, range: [%0.3f..%0.3f], red=%@, green=%@, blue=%@, luminance=%@", v4, self, v5, v7, v9, v10, v11, v12, v13];

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [NUMutableImageHistogram allocWithZone:?];
  v6 = [(NUHistogram *)self->_red mutableCopyWithZone:a3];
  red = v5->super._red;
  v5->super._red = v6;

  v8 = [(NUHistogram *)self->_green mutableCopyWithZone:a3];
  green = v5->super._green;
  v5->super._green = v8;

  v10 = [(NUHistogram *)self->_blue mutableCopyWithZone:a3];
  blue = v5->super._blue;
  v5->super._blue = v10;

  v12 = [(NUHistogram *)self->_luminance mutableCopyWithZone:a3];
  luminance = v5->super._luminance;
  v5->super._luminance = v12;

  v5->super._binCount = self->_binCount;
  v5->super._range = self->_range;
  return v5;
}

- (id)immutableCopyWithZone:(_NSZone *)a3
{
  v5 = [NUImageHistogram allocWithZone:?];
  v6 = [(NUHistogram *)self->_red copyWithZone:a3];
  red = v5->_red;
  v5->_red = v6;

  v8 = [(NUHistogram *)self->_green copyWithZone:a3];
  green = v5->_green;
  v5->_green = v8;

  v10 = [(NUHistogram *)self->_blue copyWithZone:a3];
  blue = v5->_blue;
  v5->_blue = v10;

  v12 = [(NUHistogram *)self->_luminance copyWithZone:a3];
  luminance = v5->_luminance;
  v5->_luminance = v12;

  v5->_binCount = self->_binCount;
  v5->_range = self->_range;

  return v5;
}

- (NUImageHistogram)initWithBinCount:(int64_t)a3 range:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  if (a3 <= 0)
  {
    v18 = NUAssertLogger_21313();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "count > 0"];
      *buf = 138543362;
      v68 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_21313();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v39;
        v69 = 2114;
        v70 = v43;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageHistogram initWithBinCount:range:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUImageHistogram.m", 54, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "count > 0");
  }

  var0 = a4.var0;
  if (a4.var0 > 0.0)
  {
    v25 = NUAssertLogger_21313();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "range.min <= 0.0"];
      *buf = 138543362;
      v68 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_21313();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        v51 = [v49 callStackSymbols];
        v52 = [v51 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v48;
        v69 = 2114;
        v70 = v52;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageHistogram initWithBinCount:range:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUImageHistogram.m", 55, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "range.min <= 0.0");
  }

  var1 = a4.var1;
  if (a4.var1 < 1.0)
  {
    v32 = NUAssertLogger_21313();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "range.max >= 1.0"];
      *buf = 138543362;
      v68 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_21313();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        v60 = [v58 callStackSymbols];
        v61 = [v60 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v57;
        v69 = 2114;
        v70 = v61;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageHistogram initWithBinCount:range:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUImageHistogram.m", 56, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "range.max >= 1.0");
  }

  v66.receiver = self;
  v66.super_class = NUImageHistogram;
  v7 = [(NUImageHistogram *)&v66 init];
  v7->_binCount = a3;
  v7->_range.min = var0;
  v7->_range.max = var1;
  v8 = [objc_opt_class() _histogramClass];
  v9 = [[v8 alloc] initWithBinCount:a3 range:{var0, var1}];
  red = v7->_red;
  v7->_red = v9;

  v11 = [[v8 alloc] initWithBinCount:a3 range:{var0, var1}];
  green = v7->_green;
  v7->_green = v11;

  v13 = [[v8 alloc] initWithBinCount:a3 range:{var0, var1}];
  blue = v7->_blue;
  v7->_blue = v13;

  v15 = [[v8 alloc] initWithBinCount:a3 range:{var0, var1}];
  luminance = v7->_luminance;
  v7->_luminance = v15;

  return v7;
}

@end