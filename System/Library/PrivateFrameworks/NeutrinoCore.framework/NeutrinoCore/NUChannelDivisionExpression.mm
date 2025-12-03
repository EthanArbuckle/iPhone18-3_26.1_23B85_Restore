@interface NUChannelDivisionExpression
- (id)compactDescription;
- (id)description;
- (id)evaluateWithLeftValue:(id)value rightValue:(id)rightValue error:(id *)error;
@end

@implementation NUChannelDivisionExpression

- (id)evaluateWithLeftValue:(id)value rightValue:(id)rightValue error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  rightValueCopy = rightValue;
  if (!valueCopy)
  {
    v19 = NUAssertLogger_4187();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "left != nil"];
      *buf = 138543362;
      v54 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_4187();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols = [v34 callStackSymbols];
        v37 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v33;
        v55 = 2114;
        v56 = v37;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelDivisionExpression evaluateWithLeftValue:rightValue:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3381, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "left != nil");
  }

  v10 = rightValueCopy;
  if (!rightValueCopy)
  {
    v26 = NUAssertLogger_4187();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "right != nil"];
      *buf = 138543362;
      v54 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_4187();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        callStackSymbols3 = [v43 callStackSymbols];
        v46 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v42;
        v55 = 2114;
        v56 = v46;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelDivisionExpression evaluateWithLeftValue:rightValue:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3382, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "right != nil");
  }

  if ([(NUChannelExpression *)self type]== 2)
  {
    if ([v10 integerValue])
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(valueCopy, "integerValue") / objc_msgSend(v10, "integerValue")}];
LABEL_8:
      v15 = v11;
      goto LABEL_12;
    }

    v52[0] = valueCopy;
    v52[1] = v10;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v17 = @"Division by zero";
  }

  else
  {
    [valueCopy doubleValue];
    v13 = v12;
    [v10 doubleValue];
    if (fabs(v13 / v14) != INFINITY)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      goto LABEL_8;
    }

    v51[0] = valueCopy;
    v51[1] = v10;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v17 = @"Infinite value";
  }

  *error = [NUError invalidError:v17 object:v16];

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  leftExpression = [(NUChannelBinaryExpression *)self leftExpression];
  v5 = [leftExpression description];
  rightExpression = [(NUChannelBinaryExpression *)self rightExpression];
  v7 = [rightExpression description];
  v8 = [v3 stringWithFormat:@"div<%@, %@>", v5, v7];

  return v8;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  leftExpression = [(NUChannelBinaryExpression *)self leftExpression];
  compactDescription = [leftExpression compactDescription];
  rightExpression = [(NUChannelBinaryExpression *)self rightExpression];
  compactDescription2 = [rightExpression compactDescription];
  v8 = [v3 stringWithFormat:@"(%@/%@)", compactDescription, compactDescription2];

  return v8;
}

@end