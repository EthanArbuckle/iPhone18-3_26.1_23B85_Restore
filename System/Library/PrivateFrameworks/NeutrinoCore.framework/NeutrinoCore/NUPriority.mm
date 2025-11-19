@interface NUPriority
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPriority:(id)a3;
- (NUPriority)initWithLevel:(int64_t)a3 order:(double)a4;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation NUPriority

- (BOOL)isEqualToPriority:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v8 = NUAssertLogger_4090();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_4090();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPriority isEqualToPriority:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUPriority.m", 91, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "other != nil");
  }

  v5 = v4;
  v6 = [(NUPriority *)self compare:v4]== 0;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUPriority *)self isEqualToPriority:v4];

  return v5;
}

- (int64_t)compare:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v16 = NUAssertLogger_4090();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      v33 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_4090();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPriority compare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUPriority.m", 39, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "other != nil");
  }

  v5 = v4;
  v6 = [(NUPriority *)self level];
  if (v6 < [v5 level])
  {
    goto LABEL_3;
  }

  v8 = [(NUPriority *)self level];
  if (v8 > [v5 level])
  {
    v7 = -1;
    goto LABEL_10;
  }

  [(NUPriority *)self order];
  v10 = v9;
  [v5 order];
  if (v10 < v11)
  {
LABEL_3:
    v7 = 1;
  }

  else
  {
    [(NUPriority *)self order];
    v13 = v12;
    [v5 order];
    if (v13 <= v14)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

LABEL_10:

  return v7;
}

- (id)description
{
  level = self->_level;
  if (level > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E8109988[level];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p - level:%@ order:%.4f>", objc_opt_class(), self, v3, *&self->_order];
}

- (NUPriority)initWithLevel:(int64_t)a3 order:(double)a4
{
  v40 = *MEMORY[0x1E69E9840];
  if (a4 < 0.0)
  {
    v4 = NUAssertLogger_4090();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "order >= 0.f"];
      *buf = 138543362;
      v37 = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger_4090();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v18;
        v38 = 2114;
        v39 = v22;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPriority initWithLevel:order:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUPriority.m", 22, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "order >= 0.f");
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v11 = NUAssertLogger_4090();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "isfinite(order)"];
      *buf = 138543362;
      v37 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_4090();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v15)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v27;
        v38 = 2114;
        v39 = v31;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPriority initWithLevel:order:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUPriority.m", 24, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "isfinite(order)");
  }

  self->_level = a3;
  self->_order = a4;
  return self;
}

@end