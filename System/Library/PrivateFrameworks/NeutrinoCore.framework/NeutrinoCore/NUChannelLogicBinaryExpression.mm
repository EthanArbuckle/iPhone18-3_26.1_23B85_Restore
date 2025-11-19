@interface NUChannelLogicBinaryExpression
- (id)evaluateWithLeftData:(id)a3 rightData:(id)a4 error:(id *)a5;
- (id)evaluateWithLeftValue:(id)a3 rightValue:(id)a4 error:(id *)a5;
@end

@implementation NUChannelLogicBinaryExpression

- (id)evaluateWithLeftValue:(id)a3 rightValue:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
      v18 = [v16 callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
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
    v25 = [v22 callStackSymbols];
    v26 = [v25 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v34 = specific;
    v35 = 2114;
    v36 = v26;
    _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  _NUAssertFailHandler("[NUChannelLogicBinaryExpression evaluateWithLeftValue:rightValue:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3614, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v29, v30, v31, v32, v28);
}

- (id)evaluateWithLeftData:(id)a3 rightData:(id)a4 error:(id *)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v22 = NUAssertLogger_4187();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "leftData != nil"];
      *buf = 138543362;
      v56 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_4187();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v36;
        v57 = 2114;
        v58 = v40;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelLogicBinaryExpression evaluateWithLeftData:rightData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3586, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "leftData != nil");
  }

  v10 = v9;
  if (!v9)
  {
    v29 = NUAssertLogger_4187();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "rightData != nil"];
      *buf = 138543362;
      v56 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_4187();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v45;
        v57 = 2114;
        v58 = v49;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelLogicBinaryExpression evaluateWithLeftData:rightData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3587, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "rightData != nil");
  }

  v11 = [v8 format];
  v12 = [v11 expressionType];

  if (v12 == 1)
  {
    v13 = [v10 format];
    v14 = [v13 expressionType];

    if (v14 == 1)
    {
      v15 = [v8 value];
      v16 = [v10 value];
      v54 = 0;
      v17 = [(NUChannelLogicBinaryExpression *)self evaluateWithLeftValue:v15 rightValue:v16 error:&v54];
      v18 = v54;
      if (v17)
      {
        v19 = +[NUChannelData BOOLean:](NUChannelData, "BOOLean:", [v17 BOOLValue]);
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Failed to evaluate logic expresssion" object:self underlyingError:v18];
        *a5 = v19 = 0;
      }

      goto LABEL_12;
    }

    v20 = v10;
  }

  else
  {
    v20 = v8;
  }

  [NUError invalidError:@"expected BOOLean data" object:v20];
  *a5 = v19 = 0;
LABEL_12:

  return v19;
}

@end