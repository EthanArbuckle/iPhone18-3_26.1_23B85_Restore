@interface NUChannelBinaryExpression
+ (int64_t)expressionTypeWithLeftExpression:(id)expression rightExpression:(id)rightExpression;
- (NUChannelBinaryExpression)initWithExpressionType:(int64_t)type arguments:(id)arguments;
- (NUChannelBinaryExpression)initWithLeftExpression:(id)expression rightExpression:(id)rightExpression;
- (NUChannelExpression)leftExpression;
- (NUChannelExpression)rightExpression;
- (id)debugDescription;
- (id)evaluateWithArgumentData:(id)data error:(id *)error;
- (id)evaluateWithContext:(id)context error:(id *)error;
- (id)evaluateWithLeftData:(id)data rightData:(id)rightData error:(id *)error;
@end

@implementation NUChannelBinaryExpression

- (id)evaluateWithLeftData:(id)data rightData:(id)rightData error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  rightDataCopy = rightData;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v9 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v12];
    *buf = 138543362;
    v34 = v13;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v14 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v14 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v14 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v15 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      callStackSymbols = [v16 callStackSymbols];
      v19 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v19;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v20 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = MEMORY[0x1E696AF00];
    v23 = specific;
    v24 = v20;
    callStackSymbols2 = [v22 callStackSymbols];
    v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v34 = specific;
    v35 = 2114;
    v36 = v26;
    _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  _NUAssertFailHandler("[NUChannelBinaryExpression evaluateWithLeftData:rightData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3185, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v29, v30, v31, v32, v28);
}

- (id)evaluateWithArgumentData:(id)data error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy count] != 2)
  {
    v11 = NUAssertLogger_4187();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "args.count == 2"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_4187();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelBinaryExpression evaluateWithArgumentData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3180, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "args.count == 2");
  }

  v7 = [dataCopy objectAtIndexedSubscript:0];
  v8 = [dataCopy objectAtIndexedSubscript:1];
  v9 = [(NUChannelBinaryExpression *)self evaluateWithLeftData:v7 rightData:v8 error:error];

  return v9;
}

- (id)evaluateWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  leftExpression = [(NUChannelBinaryExpression *)self leftExpression];
  v8 = [leftExpression evaluateWithContext:contextCopy error:error];

  if (v8)
  {
    rightExpression = [(NUChannelBinaryExpression *)self rightExpression];
    v10 = [rightExpression evaluateWithContext:contextCopy error:error];

    if (v10)
    {
      v11 = [(NUChannelBinaryExpression *)self evaluateWithLeftData:v8 rightData:v10 error:error];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  type = [(NUChannelExpression *)self type];
  if (type > 4)
  {
    v6 = @"???";
  }

  else
  {
    v6 = off_1E8109B40[type];
  }

  leftExpression = [(NUChannelBinaryExpression *)self leftExpression];
  rightExpression = [(NUChannelBinaryExpression *)self rightExpression];
  v9 = [v3 stringWithFormat:@"<%@:%p type=%@, left=%@, right=%@>", v4, self, v6, leftExpression, rightExpression];

  return v9;
}

- (NUChannelExpression)rightExpression
{
  arguments = [(NUChannelExpression *)self arguments];
  v3 = [arguments objectAtIndexedSubscript:1];

  return v3;
}

- (NUChannelExpression)leftExpression
{
  arguments = [(NUChannelExpression *)self arguments];
  v3 = [arguments objectAtIndexedSubscript:0];

  return v3;
}

- (NUChannelBinaryExpression)initWithLeftExpression:(id)expression rightExpression:(id)rightExpression
{
  v51 = *MEMORY[0x1E69E9840];
  expressionCopy = expression;
  rightExpressionCopy = rightExpression;
  if (!expressionCopy)
  {
    v13 = NUAssertLogger_4187();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "left != nil"];
      *buf = 138543362;
      v48 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_4187();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v27;
        v49 = 2114;
        v50 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelBinaryExpression initWithLeftExpression:rightExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3148, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "left != nil");
  }

  v8 = rightExpressionCopy;
  if (!rightExpressionCopy)
  {
    v20 = NUAssertLogger_4187();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "right != nil"];
      *buf = 138543362;
      v48 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_4187();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols3 = [v37 callStackSymbols];
        v40 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v36;
        v49 = 2114;
        v50 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelBinaryExpression initWithLeftExpression:rightExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3149, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "right != nil");
  }

  v9 = [objc_opt_class() expressionTypeWithLeftExpression:expressionCopy rightExpression:rightExpressionCopy];
  v46[0] = expressionCopy;
  v46[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v45.receiver = self;
  v45.super_class = NUChannelBinaryExpression;
  v11 = [(NUChannelExpression *)&v45 initWithExpressionType:v9 arguments:v10];

  return v11;
}

- (NUChannelBinaryExpression)initWithExpressionType:(int64_t)type arguments:(id)arguments
{
  v36 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v6 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = v6;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v12 = [v7 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v10, v11];
    *buf = 138543362;
    v33 = v12;
    _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v13 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v13 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v13 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v14 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x1E696AF00];
      v16 = v14;
      callStackSymbols = [v15 callStackSymbols];
      v18 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v18;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v19 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = MEMORY[0x1E696AF00];
    v22 = specific;
    v23 = v19;
    callStackSymbols2 = [v21 callStackSymbols];
    v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v33 = specific;
    v34 = 2114;
    v35 = v25;
    _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUChannelBinaryExpression initWithExpressionType:arguments:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3140, @"Initializer not available: [%@ %@], use designated initializer instead.", v28, v29, v30, v31, v27);
}

+ (int64_t)expressionTypeWithLeftExpression:(id)expression rightExpression:(id)rightExpression
{
  v36 = *MEMORY[0x1E69E9840];
  expressionCopy = expression;
  rightExpressionCopy = rightExpression;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v7 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = v7;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v8 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v11];
    *buf = 138543362;
    v33 = v12;
    _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v13 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v13 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v13 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v14 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x1E696AF00];
      v16 = v14;
      callStackSymbols = [v15 callStackSymbols];
      v18 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v18;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v19 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = MEMORY[0x1E696AF00];
    v22 = specific;
    v23 = v19;
    callStackSymbols2 = [v21 callStackSymbols];
    v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v33 = specific;
    v34 = 2114;
    v35 = v25;
    _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  _NUAssertFailHandler("+[NUChannelBinaryExpression expressionTypeWithLeftExpression:rightExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3144, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v28, v29, v30, v31, v27);
}

@end