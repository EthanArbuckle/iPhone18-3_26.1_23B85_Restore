@interface NUChannelIfThenElseExpression
- (NUChannelExpression)conditionExpression;
- (NUChannelExpression)falseExpression;
- (NUChannelExpression)trueExpression;
- (NUChannelIfThenElseExpression)initWithConditionExpression:(id)a3 trueExpression:(id)a4 falseExpression:(id)a5;
- (NUChannelIfThenElseExpression)initWithExpressionType:(int64_t)a3 arguments:(id)a4;
- (id)compactDescription;
- (id)description;
- (id)evaluateWithArgumentData:(id)a3 error:(id *)a4;
@end

@implementation NUChannelIfThenElseExpression

- (id)evaluateWithArgumentData:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count] != 3)
  {
    v21 = NUAssertLogger_4187();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "args.count == 3"];
      *buf = 138543362;
      v39 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_4187();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v31 = [v29 callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v28;
        v40 = 2114;
        v41 = v32;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelIfThenElseExpression evaluateWithArgumentData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3716, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "args.count == 3");
  }

  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 format];
  v8 = [v7 expressionType];

  if (v8 == 1)
  {
    v9 = [v5 objectAtIndexedSubscript:1];
    v10 = [v5 objectAtIndexedSubscript:2];
    v11 = [v9 format];
    v12 = [v11 expressionType];

    v13 = [v10 format];
    v14 = [v13 expressionType];

    if (v12 && v14 && v12 != v14)
    {
      v37[0] = v9;
      v37[1] = v10;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      *a4 = [NUError mismatchError:@"Incompatible data type" object:v15];

      v16 = 0;
    }

    else
    {
      v17 = [v6 value];
      v18 = [v17 BOOLValue];

      if (v18)
      {
        v19 = v9;
      }

      else
      {
        v19 = v10;
      }

      v16 = v19;
    }
  }

  else
  {
    [NUError invalidError:@"Expected BOOLean expression" object:v6];
    *a4 = v16 = 0;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUChannelIfThenElseExpression *)self conditionExpression];
  v5 = [v4 description];
  v6 = [(NUChannelIfThenElseExpression *)self trueExpression];
  v7 = [v6 description];
  v8 = [(NUChannelIfThenElseExpression *)self falseExpression];
  v9 = [v8 description];
  v10 = [v3 stringWithFormat:@"ifThenElse<%@, %@, %@>", v5, v7, v9];

  return v10;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUChannelIfThenElseExpression *)self conditionExpression];
  v5 = [v4 compactDescription];
  v6 = [(NUChannelIfThenElseExpression *)self trueExpression];
  v7 = [v6 compactDescription];
  v8 = [(NUChannelIfThenElseExpression *)self falseExpression];
  v9 = [v8 compactDescription];
  v10 = [v3 stringWithFormat:@"(%@?%@:%@)", v5, v7, v9];

  return v10;
}

- (NUChannelExpression)falseExpression
{
  v2 = [(NUChannelExpression *)self arguments];
  v3 = [v2 objectAtIndexedSubscript:2];

  return v3;
}

- (NUChannelExpression)trueExpression
{
  v2 = [(NUChannelExpression *)self arguments];
  v3 = [v2 objectAtIndexedSubscript:1];

  return v3;
}

- (NUChannelExpression)conditionExpression
{
  v2 = [(NUChannelExpression *)self arguments];
  v3 = [v2 objectAtIndexedSubscript:0];

  return v3;
}

- (NUChannelIfThenElseExpression)initWithConditionExpression:(id)a3 trueExpression:(id)a4 falseExpression:(id)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v16 = NUAssertLogger_4187();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "condition != nil"];
      *buf = 138543362;
      v67 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_4187();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        v40 = [v38 callStackSymbols];
        v41 = [v40 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v37;
        v68 = 2114;
        v69 = v41;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelIfThenElseExpression initWithConditionExpression:trueExpression:falseExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3688, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "condition != nil");
  }

  if (!v9)
  {
    v23 = NUAssertLogger_4187();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "trueExpression != nil"];
      *buf = 138543362;
      v67 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_4187();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        v49 = [v47 callStackSymbols];
        v50 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v46;
        v68 = 2114;
        v69 = v50;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelIfThenElseExpression initWithConditionExpression:trueExpression:falseExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3689, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "trueExpression != nil");
  }

  v11 = v10;
  if (!v10)
  {
    v30 = NUAssertLogger_4187();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "falseExpression != nil"];
      *buf = 138543362;
      v67 = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_4187();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        v58 = [v56 callStackSymbols];
        v59 = [v58 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v55;
        v68 = 2114;
        v69 = v59;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelIfThenElseExpression initWithConditionExpression:trueExpression:falseExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3690, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "falseExpression != nil");
  }

  v12 = [v9 type];
  v65[0] = v8;
  v65[1] = v9;
  v65[2] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
  v64.receiver = self;
  v64.super_class = NUChannelIfThenElseExpression;
  v14 = [(NUChannelExpression *)&v64 initWithExpressionType:v12 arguments:v13];

  return v14;
}

- (NUChannelIfThenElseExpression)initWithExpressionType:(int64_t)a3 arguments:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a4;
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
      v17 = [v15 callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
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
    v24 = [v21 callStackSymbols];
    v25 = [v24 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUChannelIfThenElseExpression initWithExpressionType:arguments:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3684, @"Initializer not available: [%@ %@], use designated initializer instead.", v28, v29, v30, v31, v27);
}

@end