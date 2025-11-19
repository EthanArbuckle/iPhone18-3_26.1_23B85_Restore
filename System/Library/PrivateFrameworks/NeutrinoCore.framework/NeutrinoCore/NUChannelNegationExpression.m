@interface NUChannelNegationExpression
- (id)compactDescription;
- (id)description;
- (id)evaluateWithData:(id)a3 error:(id *)a4;
@end

@implementation NUChannelNegationExpression

- (id)evaluateWithData:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v19 = NUAssertLogger_4187();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v36 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_4187();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelNegationExpression evaluateWithData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3416, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "data != nil");
  }

  v6 = v5;
  v7 = [v5 format];
  v8 = [v7 expressionType];

  if (v8 == 2)
  {
    v9 = [v6 value];
    v10 = [v9 integerValue];

    v11 = -v10;
LABEL_6:
    v17 = [NUChannelData number:v11];
    goto LABEL_8;
  }

  v12 = [v6 format];
  v13 = [v12 expressionType];

  if (v13 == 3)
  {
    v14 = [v6 value];
    [v14 doubleValue];
    v16 = v15;

    v11 = -v16;
    goto LABEL_6;
  }

  [NUError invalidError:@"Expected number expression" object:v6];
  *a4 = v17 = 0;
LABEL_8:

  return v17;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelUnaryExpression *)self expression];
  v4 = [v3 description];
  v5 = [v2 stringWithFormat:@"neg<%@>", v4];

  return v5;
}

- (id)compactDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelUnaryExpression *)self expression];
  v4 = [v2 stringWithFormat:@"(-%@)", v3];

  return v4;
}

@end