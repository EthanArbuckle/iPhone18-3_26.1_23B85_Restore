@interface NUVersion
+ (BOOL)validateVersionString:(id)a3 major:(int64_t *)a4 minor:(int64_t *)a5;
+ (NUVersion)versionWithPackedUInt32:(unsigned int)a3;
+ (NUVersion)versionWithString:(id)a3;
+ (id)regularExpression;
+ (id)versionOne;
+ (id)versionZero;
- (BOOL)atLeastMajor:(int64_t)a3 minor:(int64_t)a4;
- (BOOL)isCompatibleWithVersion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVersion:(id)a3;
- (NUVersion)initWithMajor:(int64_t)a3 minor:(int64_t)a4;
- (int64_t)compare:(id)a3;
@end

@implementation NUVersion

- (BOOL)isCompatibleWithVersion:(id)a3
{
  v4 = a3;
  v5 = [(NUVersion *)self major];
  v6 = [v4 major];

  return v5 <= v6;
}

- (BOOL)isEqualToVersion:(id)a3
{
  v4 = a3;
  v5 = [(NUVersion *)self major];
  if (v5 == [v4 major])
  {
    v6 = [(NUVersion *)self minor];
    v7 = v6 == [v4 minor];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUVersion *)self isEqualToVersion:v4];

  return v5;
}

- (BOOL)atLeastMajor:(int64_t)a3 minor:(int64_t)a4
{
  v5 = [[NUVersion alloc] initWithMajor:a3 minor:a4];
  v6 = [(NUVersion *)self compare:v5]!= -1;

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  major = self->_major;
  if (major == [v4 major])
  {
    minor = self->_minor;
    if (minor == [v4 minor])
    {
      v7 = 0;
      goto LABEL_9;
    }

    v8 = self->_minor;
    v9 = [v4 minor];
  }

  else
  {
    v8 = self->_major;
    v9 = [v4 major];
  }

  if (v8 > v9)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

LABEL_9:

  return v7;
}

- (NUVersion)initWithMajor:(int64_t)a3 minor:(int64_t)a4
{
  v40 = *MEMORY[0x1E69E9840];
  if (a3 > 0x3B9AC9FF)
  {
    v4 = NUAssertLogger_31319();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "major >= 0 && major <= kMajorVersionLimit"];
      *buf = 138543362;
      v37 = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger_31319();
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

    _NUAssertFailHandler("[NUVersion initWithMajor:minor:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUVersion.m", 32, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "major >= 0 && major <= kMajorVersionLimit");
  }

  if (a4 > 0x3B9AC9FF)
  {
    v11 = NUAssertLogger_31319();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "minor >= 0 && minor <= kMinorVersionLimit"];
      *buf = 138543362;
      v37 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_31319();
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

    _NUAssertFailHandler("[NUVersion initWithMajor:minor:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUVersion.m", 33, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "minor >= 0 && minor <= kMinorVersionLimit");
  }

  self->_major = a3;
  self->_minor = a4;
  return self;
}

+ (id)regularExpression
{
  if (regularExpression_onceToken != -1)
  {
    dispatch_once(&regularExpression_onceToken, &__block_literal_global_31352);
  }

  v3 = regularExpression_formatVersionRegex;

  return v3;
}

void __30__NUVersion_regularExpression__block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^([0-9]|[1-9][0-9]{0 options:8})\\.([0-9]|[1-9][0-9]{0 error:{8})$", 0, &v19}];
  v1 = v19;
  v2 = regularExpression_formatVersionRegex;
  regularExpression_formatVersionRegex = v0;

  if (!regularExpression_formatVersionRegex)
  {
    v3 = NUAssertLogger_31319();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to create regex for pattern: %@", @"^([0-9]|[1-9][0-9]{0, 8})\\.([0-9]|[1-9][0-9]{0, 8})$"];
      *buf = 138543362;
      v21 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger_31319();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        v13 = [v11 callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v10;
        v22 = 2114;
        v23 = v14;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVersion regularExpression]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUVersion.m", 175, @"unable to create regex for pattern: %@", v15, v16, v17, v18, @"^([0-9]|[1-9][0-9]{0,8})\\.([0-9]|[1-9][0-9]{0,8})$");
  }
}

+ (BOOL)validateVersionString:(id)a3 major:(int64_t *)a4 minor:(int64_t *)a5
{
  v7 = a3;
  v8 = [v7 length];
  v9 = +[NUVersion regularExpression];
  v10 = [v9 firstMatchInString:v7 options:0 range:{0, v8}];

  if (v10 && ([v10 rangeAtIndex:0], v8 == v11))
  {
    v12 = 1;
    if (a4 && a5)
    {
      v12 = 1;
      v13 = [v10 rangeAtIndex:1];
      v15 = [v7 substringWithRange:{v13, v14}];
      *a4 = [v15 integerValue];

      v16 = [v10 rangeAtIndex:2];
      v18 = [v7 substringWithRange:{v16, v17}];
      *a5 = [v18 integerValue];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (NUVersion)versionWithString:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_31319();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "string != nil"];
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_31319();
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
        *&buf[4] = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUVersion versionWithString:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUVersion.m", 48, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "string != nil");
  }

  v5 = v4;
  v25 = 0;
  *buf = 0;
  v6 = 0;
  if ([a1 validateVersionString:v4 major:buf minor:&v25])
  {
    v7 = [a1 alloc];
    v6 = [v7 initWithMajor:*buf minor:v25];
  }

  return v6;
}

+ (NUVersion)versionWithPackedUInt32:(unsigned int)a3
{
  v3 = [[a1 alloc] initWithMajor:HIWORD(a3) minor:a3];

  return v3;
}

+ (id)versionOne
{
  v2 = [[a1 alloc] initWithMajor:1 minor:0];

  return v2;
}

+ (id)versionZero
{
  v2 = [[a1 alloc] initWithMajor:0 minor:0];

  return v2;
}

@end