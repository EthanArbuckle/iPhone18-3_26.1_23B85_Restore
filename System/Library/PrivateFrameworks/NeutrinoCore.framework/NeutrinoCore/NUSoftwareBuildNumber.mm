@interface NUSoftwareBuildNumber
+ (id)buildNumberWithString:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NUSoftwareBuildNumber)init;
- (NUSoftwareBuildNumber)initWithMajor:(unsigned __int16)a3 minor:(char)a4 update:(unsigned __int16)a5 rebuild:(char)a6;
- (int64_t)compareToBuildNumber:(id)a3;
@end

@implementation NUSoftwareBuildNumber

- (int64_t)compareToBuildNumber:(id)a3
{
  v4 = a3;
  v5 = [(NUSoftwareBuildNumber *)self major];
  if (v5 < [v4 major])
  {
    goto LABEL_2;
  }

  v7 = [(NUSoftwareBuildNumber *)self major];
  if (v7 > [v4 major])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  v9 = [(NUSoftwareBuildNumber *)self minor];
  if (v9 >= [v4 minor])
  {
    v10 = [(NUSoftwareBuildNumber *)self minor];
    if (v10 > [v4 minor])
    {
      goto LABEL_4;
    }

    v11 = [(NUSoftwareBuildNumber *)self update];
    if (v11 >= [v4 update])
    {
      v12 = [(NUSoftwareBuildNumber *)self update];
      if (v12 <= [v4 update])
      {
        v13 = [(NUSoftwareBuildNumber *)self rebuild];
        if (v13 >= [v4 rebuild])
        {
          v14 = [(NUSoftwareBuildNumber *)self rebuild];
          v6 = v14 > [v4 rebuild];
          goto LABEL_5;
        }

        goto LABEL_2;
      }

      goto LABEL_4;
    }
  }

LABEL_2:
  v6 = -1;
LABEL_5:

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUSoftwareBuildNumber *)self isEqualToSoftwareBuildNumber:v4];
  }

  return v5;
}

- (NUSoftwareBuildNumber)initWithMajor:(unsigned __int16)a3 minor:(char)a4 update:(unsigned __int16)a5 rebuild:(char)a6
{
  v11.receiver = self;
  v11.super_class = NUSoftwareBuildNumber;
  result = [(NUSoftwareBuildNumber *)&v11 init];
  result->_major = a3;
  result->_minor = a4;
  result->_update = a5;
  result->_rebuild = a6;
  return result;
}

- (NUSoftwareBuildNumber)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_144_5661);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_144_5661);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_144_5661);
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
  _NUAssertFailHandler("[NUSoftwareBuildNumber init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSoftwareVersion.m", 249, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)buildNumberWithString:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a4)
  {
    v13 = NUAssertLogger_5637();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v33 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5637();
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
        v33 = v20;
        v34 = 2114;
        v35 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUSoftwareBuildNumber buildNumberWithString:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSoftwareVersion.m", 210, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "error != NULL");
  }

  v6 = v5;
  *buf = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v7 = sscanf([v5 UTF8String], "%d%c%d%c", buf, &v31, &v30, &v29);
  if (v7 <= 2)
  {
    v8 = [NUError invalidError:@"Build number string does not match expected format" object:v6];
LABEL_14:
    v10 = 0;
    *a4 = v8;
    goto LABEL_15;
  }

  if ((*buf & 0x80000000) != 0)
  {
    v9 = @"Major build number out of range";
    goto LABEL_13;
  }

  if (v31 - 91 <= 0xFFFFFFE5)
  {
    v9 = @"Minor build number out of range";
LABEL_13:
    v8 = [NUError rangeError:v9 object:v6];
    goto LABEL_14;
  }

  if (v30 < 0)
  {
    v9 = @"Update build number out of range";
    goto LABEL_13;
  }

  if (v7 == 4)
  {
    if (v29 - 123 <= 0xFFFFFFE5)
    {
      v9 = @"Rebuild build number out of range";
      goto LABEL_13;
    }
  }

  else
  {
    v29 = 0;
  }

  v12 = [NUSoftwareBuildNumber alloc];
  v10 = [(NUSoftwareBuildNumber *)v12 initWithMajor:*buf minor:v31 update:v30 rebuild:v29];
LABEL_15:

  return v10;
}

@end