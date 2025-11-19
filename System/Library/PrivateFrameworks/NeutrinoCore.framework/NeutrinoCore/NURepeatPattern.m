@interface NURepeatPattern
- (BOOL)isEqualToPattern:(id)a3;
- (BOOL)isEqualToRepeatPattern:(id)a3;
- (BOOL)match:(id)a3 location:(unint64_t *)a4 count:(unint64_t *)a5;
- (NURepeatPattern)init;
- (NURepeatPattern)initWithPattern:(id)a3 minCount:(int64_t)a4 maxCount:(int64_t)a5;
- (id)optimizedPattern;
- (id)shortestMatch;
- (id)stringRepresentation;
@end

@implementation NURepeatPattern

- (BOOL)match:(id)a3 location:(unint64_t *)a4 count:(unint64_t *)a5
{
  v8 = a3;
  v15 = 0;
  minCount = self->_minCount;
  if (minCount < 1)
  {
    i = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0;
    for (i = 0; i < minCount; ++i)
    {
      v12 = [(NUPattern *)self->_pattern match:v8 location:a4 count:&v15];
      minCount = self->_minCount;
      if (!v12)
      {
        break;
      }

      v10 += v15;
    }
  }

  if (i == minCount)
  {
    if (minCount < self->_maxCount)
    {
      v13 = minCount;
      do
      {
        if (![(NUPattern *)self->_pattern match:v8 location:a4 count:&v15])
        {
          break;
        }

        ++v13;
        v10 += v15;
      }

      while (v13 < self->_maxCount);
    }

    *a5 = v10;
  }

  return i == minCount;
}

- (BOOL)isEqualToRepeatPattern:(id)a3
{
  v4 = a3;
  v5 = [(NURepeatPattern *)self minCount];
  if (v5 == [v4 minCount] && (v6 = -[NURepeatPattern maxCount](self, "maxCount"), v6 == objc_msgSend(v4, "maxCount")))
  {
    v7 = [(NURepeatPattern *)self pattern];
    v8 = [v4 pattern];
    v9 = [v7 isEqualToPattern:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualToPattern:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NURepeatPattern *)self isEqualToRepeatPattern:v4];

  return v5;
}

- (id)stringRepresentation
{
  minCount = self->_minCount;
  maxCount = self->_maxCount;
  if (minCount == 1)
  {
    if (maxCount == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = MEMORY[0x1E696AEC0];
      v6 = [(NUPattern *)self->_pattern stringRepresentation];
      [v7 stringWithFormat:@"%@+", v6, v13, v14];
      goto LABEL_12;
    }
  }

  else if (!minCount)
  {
    if (maxCount == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = MEMORY[0x1E696AEC0];
      v6 = [(NUPattern *)self->_pattern stringRepresentation];
      [v10 stringWithFormat:@"%@*", v6, v13, v14];
      goto LABEL_12;
    }

    if (maxCount == 1)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [(NUPattern *)self->_pattern stringRepresentation];
      [v5 stringWithFormat:@"%@?", v6, v13, v14];
      goto LABEL_12;
    }
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(NUPattern *)self->_pattern stringRepresentation];
  v6 = v9;
  if (minCount == maxCount)
  {
    [v8 stringWithFormat:@"%@<%d>", v9, LODWORD(self->_minCount), v14];
  }

  else
  {
    [v8 stringWithFormat:@"%@<%d, %d>", v9, LODWORD(self->_minCount), self->_maxCount];
  }

  v11 = LABEL_12:;

  return v11;
}

- (id)optimizedPattern
{
  v3 = [(NUPattern *)self->_pattern optimizedPattern];
  if ([v3 isEmpty] || self->_minCount == 1 && self->_maxCount == 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = [[NURepeatPattern alloc] initWithPattern:v3 minCount:self->_minCount maxCount:self->_maxCount];
  }

  v5 = v4;

  return v5;
}

- (id)shortestMatch
{
  if (self->_minCount)
  {
    v3 = [(NUPattern *)self->_pattern shortestMatch];
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{LODWORD(self->_minCount) * objc_msgSend(v3, "count")}];
      if (self->_minCount >= 1)
      {
        v5 = 0;
        do
        {
          [v4 addObjectsFromArray:v3];
          ++v5;
        }

        while (v5 < self->_minCount);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (NURepeatPattern)initWithPattern:(id)a3 minCount:(int64_t)a4 maxCount:(int64_t)a5
{
  v83 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!v9)
  {
    v14 = NUAssertLogger_5128();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pattern != nil"];
      *buf = 138543362;
      v80 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_5128();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        v45 = [v43 callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v42;
        v81 = 2114;
        v82 = v46;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURepeatPattern initWithPattern:minCount:maxCount:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 766, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "pattern != nil");
  }

  if (a4 < 0)
  {
    v21 = NUAssertLogger_5128();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "min >= 0"];
      *buf = 138543362;
      v80 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_5128();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v25)
      {
        v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        v54 = [v52 callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v51;
        v81 = 2114;
        v82 = v55;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURepeatPattern initWithPattern:minCount:maxCount:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 767, @"Invalid parameter not satisfying: %s", v56, v57, v58, v59, "min >= 0");
  }

  if (a5 < 0)
  {
    v28 = NUAssertLogger_5128();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "max >= 0"];
      *buf = 138543362;
      v80 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_5128();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v60 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v61 = MEMORY[0x1E696AF00];
        v62 = v60;
        v63 = [v61 callStackSymbols];
        v64 = [v63 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v60;
        v81 = 2114;
        v82 = v64;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURepeatPattern initWithPattern:minCount:maxCount:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 768, @"Invalid parameter not satisfying: %s", v65, v66, v67, v68, "max >= 0");
  }

  if (a4 > a5)
  {
    v35 = NUAssertLogger_5128();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "min <= max"];
      *buf = 138543362;
      v80 = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v38 = NUAssertLogger_5128();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      if (v39)
      {
        v69 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v70 = MEMORY[0x1E696AF00];
        v71 = v69;
        v72 = [v70 callStackSymbols];
        v73 = [v72 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v80 = v69;
        v81 = 2114;
        v82 = v73;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v80 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURepeatPattern initWithPattern:minCount:maxCount:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 769, @"Invalid parameter not satisfying: %s", v74, v75, v76, v77, "min <= max");
  }

  v10 = v9;
  v78.receiver = self;
  v78.super_class = NURepeatPattern;
  v11 = [(NURepeatPattern *)&v78 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pattern, a3);
    v12->_minCount = a4;
    v12->_maxCount = a5;
  }

  return v12;
}

- (NURepeatPattern)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_5142);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_5142);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_5142);
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
  _NUAssertFailHandler("[NURepeatPattern init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 751, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end