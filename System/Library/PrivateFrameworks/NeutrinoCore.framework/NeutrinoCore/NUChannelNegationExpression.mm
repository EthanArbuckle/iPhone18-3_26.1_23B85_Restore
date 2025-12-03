@interface NUChannelNegationExpression
- (id)compactDescription;
- (id)description;
- (id)evaluateWithData:(id)data error:(id *)error;
@end

@implementation NUChannelNegationExpression

- (id)evaluateWithData:(id)data error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
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
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelNegationExpression evaluateWithData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3416, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "data != nil");
  }

  v6 = dataCopy;
  format = [dataCopy format];
  expressionType = [format expressionType];

  if (expressionType == 2)
  {
    value = [v6 value];
    integerValue = [value integerValue];

    v11 = -integerValue;
LABEL_6:
    v17 = [NUChannelData number:v11];
    goto LABEL_8;
  }

  format2 = [v6 format];
  expressionType2 = [format2 expressionType];

  if (expressionType2 == 3)
  {
    value2 = [v6 value];
    [value2 doubleValue];
    v16 = v15;

    v11 = -v16;
    goto LABEL_6;
  }

  [NUError invalidError:@"Expected number expression" object:v6];
  *error = v17 = 0;
LABEL_8:

  return v17;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  expression = [(NUChannelUnaryExpression *)self expression];
  v4 = [expression description];
  v5 = [v2 stringWithFormat:@"neg<%@>", v4];

  return v5;
}

- (id)compactDescription
{
  v2 = MEMORY[0x1E696AEC0];
  expression = [(NUChannelUnaryExpression *)self expression];
  v4 = [v2 stringWithFormat:@"(-%@)", expression];

  return v4;
}

@end