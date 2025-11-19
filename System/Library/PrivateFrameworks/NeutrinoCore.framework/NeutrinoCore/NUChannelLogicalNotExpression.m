@interface NUChannelLogicalNotExpression
- (id)compactDescription;
- (id)description;
- (id)evaluateWithData:(id)a3 error:(id *)a4;
@end

@implementation NUChannelLogicalNotExpression

- (id)evaluateWithData:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v13 = NUAssertLogger_4187();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
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

    _NUAssertFailHandler("[NUChannelLogicalNotExpression evaluateWithData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3670, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "data != nil");
  }

  v6 = v5;
  v7 = [v5 format];
  v8 = [v7 expressionType];

  if (v8 == 1)
  {
    v9 = [v6 value];
    v10 = [v9 BOOLValue];

    v11 = [NUChannelData BOOLean:v10 ^ 1u];
  }

  else
  {
    [NUError invalidError:@"Expected BOOLean expression" object:v6];
    *a4 = v11 = 0;
  }

  return v11;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelUnaryExpression *)self expression];
  v4 = [v3 description];
  v5 = [v2 stringWithFormat:@"not<%@>", v4];

  return v5;
}

- (id)compactDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelUnaryExpression *)self expression];
  v4 = [v2 stringWithFormat:@"(!%@)", v3];

  return v4;
}

@end