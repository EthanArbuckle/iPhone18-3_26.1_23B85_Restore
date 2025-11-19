@interface NUNumberSetting
+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4;
- (BOOL)isValid:(id *)a3;
- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4;
- (BOOL)validateNumber:(id)a3 error:(id *)a4;
- (NUNumberSetting)init;
- (NUNumberSetting)initWithAttributes:(id)a3;
- (NUNumberSetting)initWithMinimum:(id)a3 maximum:(id)a4 uiMinimum:(id)a5 uiMaximum:(id)a6 attributes:(id)a7;
- (id)description;
@end

@implementation NUNumberSetting

- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  [v6 setObject:@"number" forKeyedSubscript:@"isa"];
  v7 = [(NUNumberSetting *)self minimumValue];
  [v6 setObject:v7 forKeyedSubscript:@"minimum"];

  v8 = [(NUNumberSetting *)self maximumValue];
  [v6 setObject:v8 forKeyedSubscript:@"maximum"];

  v9 = [(NUNumberSetting *)self ui_minimumValue];

  if (v9)
  {
    v10 = [(NUNumberSetting *)self ui_minimumValue];
    [v6 setObject:v10 forKeyedSubscript:@"ui_minimum"];
  }

  v11 = [(NUNumberSetting *)self ui_maximumValue];

  if (v11)
  {
    v12 = [(NUNumberSetting *)self ui_maximumValue];
    [v6 setObject:v12 forKeyedSubscript:@"ui_maximum"];
  }

  v13 = [(NUSetting *)self serializeAttributesIntoDictionary:v6 error:a4];

  return v13;
}

- (BOOL)isValid:(id *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v15 = NUAssertLogger_25303();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v34 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_25303();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v22;
        v35 = 2114;
        v36 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUNumberSetting isValid:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 431, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "error != NULL");
  }

  minimumValue = self->_minimumValue;
  if (minimumValue)
  {
    v32 = 0;
    if (![NUModel validateNumber:minimumValue error:&v32])
    {
      v9 = v32;
      v10 = @"Invalid minimum value";
      goto LABEL_14;
    }

    maximumValue = self->_maximumValue;
    if (maximumValue)
    {
      v31 = 0;
      if ([NUModel validateNumber:maximumValue error:&v31])
      {
        if ([(NSNumber *)self->_minimumValue compare:self->_maximumValue]!= NSOrderedDescending)
        {
          return [(NUModel *)self validateAttributes:a3];
        }

        v7 = [NUError rangeError:@"invalid value range" object:self];
        goto LABEL_12;
      }

      v9 = v31;
      v10 = @"Invalid maximum value";
LABEL_14:
      v11 = [NUError invalidError:v10 object:self];
      v13 = v11;

      goto LABEL_15;
    }

    v8 = @"Missing maximum value";
  }

  else
  {
    v8 = @"Missing minimum value";
  }

  v7 = [NUError missingError:v8 object:self];
LABEL_12:
  v11 = v7;
  v12 = v7;
LABEL_15:
  result = 0;
  *a3 = v11;
  return result;
}

- (BOOL)validateNumber:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v20 = NUAssertLogger_25303();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v53 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_25303();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v34;
        v54 = 2114;
        v55 = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUNumberSetting validateNumber:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 400, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "object != nil");
  }

  if (!a4)
  {
    v27 = NUAssertLogger_25303();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v53 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_25303();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v43;
        v54 = 2114;
        v55 = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUNumberSetting validateNumber:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 401, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = v6;
  if ([NUModel validateNumber:v6 error:a4])
  {
    v8 = v7;
    [v8 doubleValue];
    v10 = v9;
    v11 = [(NUNumberSetting *)self minimumValue];
    [v11 doubleValue];
    v13 = v12;

    v14 = [(NUNumberSetting *)self maximumValue];
    [v14 doubleValue];
    v16 = v15;

    if (v10 >= v13)
    {
      if (v10 <= v16)
      {
        v17 = 1;
        goto LABEL_11;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Number (%.2f) is greater than maximum (%.2f)", *&v10, *&v16];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Number (%.2f) is less than minimum (%.2f)", *&v10, *&v13];
    }
    v18 = ;
    *a4 = [NUError rangeError:v18 object:v8];

    v17 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUNumberSetting *)self minimumValue];
  v6 = [(NUNumberSetting *)self maximumValue];
  v7 = [(NUModel *)self attributes];
  v8 = [v3 stringWithFormat:@"<%@ min:%@ max:%@ attributes:%@>", v4, v5, v6, v7];

  return v8;
}

- (NUNumberSetting)initWithMinimum:(id)a3 maximum:(id)a4 uiMinimum:(id)a5 uiMaximum:(id)a6 attributes:(id)a7
{
  v64 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    v27 = NUAssertLogger_25303();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "minValue != nil"];
      *buf = 138543362;
      v61 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_25303();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v41;
        v62 = 2114;
        v63 = v45;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUNumberSetting initWithMinimum:maximum:uiMinimum:uiMaximum:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 365, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "minValue != nil");
  }

  if (!v13)
  {
    v34 = NUAssertLogger_25303();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "maxValue != nil"];
      *buf = 138543362;
      v61 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_25303();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        v53 = [v51 callStackSymbols];
        v54 = [v53 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v50;
        v62 = 2114;
        v63 = v54;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUNumberSetting initWithMinimum:maximum:uiMinimum:uiMaximum:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 366, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "maxValue != nil");
  }

  v17 = v16;
  v59.receiver = self;
  v59.super_class = NUNumberSetting;
  v18 = [(NUModel *)&v59 initWithAttributes:v16];
  minimumValue = v18->_minimumValue;
  v18->_minimumValue = v12;
  v20 = v12;

  maximumValue = v18->_maximumValue;
  v18->_maximumValue = v13;
  v22 = v13;

  ui_minimumValue = v18->_ui_minimumValue;
  v18->_ui_minimumValue = v14;
  v24 = v14;

  ui_maximumValue = v18->_ui_maximumValue;
  v18->_ui_maximumValue = v15;

  return v18;
}

- (NUNumberSetting)initWithAttributes:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUNumberSetting initWithAttributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 354, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUNumberSetting)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
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
  _NUAssertFailHandler("[NUNumberSetting init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 349, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v19 = NUAssertLogger_25303();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v53 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_25303();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v33;
        v54 = 2114;
        v55 = v37;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUNumberSetting deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 486, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "dictionary != nil");
  }

  if (!a4)
  {
    v26 = NUAssertLogger_25303();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v53 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_25303();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        v45 = [v43 callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v42;
        v54 = 2114;
        v55 = v46;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUNumberSetting deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSetting.m", 487, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "error != NULL");
  }

  v7 = v6;
  v8 = [v6 objectForKeyedSubscript:@"minimum"];
  if (v8)
  {
    v9 = v8;
    if ([NUModel validateNumber:v8 error:a4])
    {
      v10 = [v7 objectForKeyedSubscript:@"maximum"];
      if (v10)
      {
        v11 = v10;
        if ([NUModel validateNumber:v10 error:a4])
        {
          v12 = [v7 objectForKeyedSubscript:@"ui_minimum"];
          if (v12 && ![NUModel validateNumber:v12 error:a4])
          {
            [NUError invalidError:@"Invalid ui_minimum value" object:v12];
            *a4 = v17 = 0;
            v13 = v12;
          }

          else
          {
            v13 = [v7 objectForKeyedSubscript:@"ui_maximum"];
            if (v13 && ![NUModel validateNumber:v13 error:a4])
            {
              [NUError invalidError:@"Invalid ui_maximum value" object:v13];
              *a4 = v17 = 0;
            }

            else
            {
              v14 = v13;
              v51 = 0;
              v15 = [a1 deserializeAttributesFromDictionary:v7 error:&v51];
              v16 = v51;
              if (v15)
              {
                v17 = [[a1 alloc] initWithMinimum:v9 maximum:v11 uiMinimum:v12 uiMaximum:v14 attributes:v15];
              }

              else
              {
                [NUError errorWithCode:1 reason:@"Failed to deserialized attributes" object:v7 underlyingError:v16];
                *a4 = v17 = 0;
              }
            }
          }
        }

        else
        {
          *a4 = [NUError invalidError:@"Invalid maximum value" object:v11];

          v17 = 0;
        }
      }

      else
      {
        [NUError missingError:@"Missing maximum value" object:v7];
        *a4 = v17 = 0;
      }
    }

    else
    {
      *a4 = [NUError invalidError:@"Invalid minimum value" object:v9];

      v17 = 0;
    }
  }

  else
  {
    [NUError missingError:@"Missing minimum value" object:v7];
    *a4 = v17 = 0;
  }

  return v17;
}

@end