@interface NUChannelAdditionExpression
- (id)compactDescription;
- (id)description;
- (id)evaluateWithLeftValue:(id)a3 rightValue:(id)a4 error:(id *)a5;
@end

@implementation NUChannelAdditionExpression

- (id)evaluateWithLeftValue:(id)a3 rightValue:(id)a4 error:(id *)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v17 = NUAssertLogger_4187();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "left != nil"];
      *buf = 138543362;
      v50 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_4187();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v31;
        v51 = 2114;
        v52 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelAdditionExpression evaluateWithLeftValue:rightValue:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3315, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "left != nil");
  }

  v9 = v8;
  if (!v8)
  {
    v24 = NUAssertLogger_4187();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "right != nil"];
      *buf = 138543362;
      v50 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_4187();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v40;
        v51 = 2114;
        v52 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelAdditionExpression evaluateWithLeftValue:rightValue:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3316, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "right != nil");
  }

  v10 = [(NUChannelExpression *)self type];
  v11 = MEMORY[0x1E696AD98];
  if (v10 == 2)
  {
    [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "integerValue") + objc_msgSend(v7, "integerValue")}];
  }

  else
  {
    [v7 doubleValue];
    v13 = v12;
    [v9 doubleValue];
    [v11 numberWithDouble:v13 + v14];
  }
  v15 = ;

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUChannelBinaryExpression *)self leftExpression];
  v5 = [v4 description];
  v6 = [(NUChannelBinaryExpression *)self rightExpression];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"add<%@, %@>", v5, v7];

  return v8;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUChannelBinaryExpression *)self leftExpression];
  v5 = [v4 compactDescription];
  v6 = [(NUChannelBinaryExpression *)self rightExpression];
  v7 = [v6 compactDescription];
  v8 = [v3 stringWithFormat:@"(%@+%@)", v5, v7];

  return v8;
}

@end