@interface NURectExpression
- (NUChannelExpression)heightExpression;
- (NUChannelExpression)widthExpression;
- (NUChannelExpression)xExpression;
- (NUChannelExpression)yExpression;
- (NURectExpression)initWithExpressionType:(int64_t)a3 arguments:(id)a4;
- (NURectExpression)initWithXExpression:(id)a3 yExpression:(id)a4 widthExpression:(id)a5 heightExpression:(id)a6;
- (id)compactDescription;
- (id)description;
- (id)evaluateWithArgumentData:(id)a3 error:(id *)a4;
@end

@implementation NURectExpression

- (id)evaluateWithArgumentData:(id)a3 error:(id *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count] != 4)
  {
    v23 = NUAssertLogger_4187();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "args.count == 4"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_4187();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        v40 = [v38 callStackSymbols];
        v41 = [v40 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v37;
        *&buf[12] = 2114;
        *&buf[14] = v41;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression evaluateWithArgumentData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3231, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "args.count == 4");
  }

  if (!a4)
  {
    v30 = NUAssertLogger_4187();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_4187();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        v49 = [v47 callStackSymbols];
        v50 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2114;
        *&buf[14] = v50;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression evaluateWithArgumentData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3232, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "error != NULL");
  }

  v6 = 0;
  while (1)
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
    v8 = [v7 format];
    v9 = [v8 expressionType];

    if ((v9 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      break;
    }

    if (++v6 == 4)
    {
      v10 = [v5 objectAtIndexedSubscript:0];
      v11 = [v10 value];

      v12 = [v5 objectAtIndexedSubscript:1];
      v13 = [v12 value];

      v14 = [v5 objectAtIndexedSubscript:2];
      v15 = [v14 value];

      v16 = [v5 objectAtIndexedSubscript:3];
      v17 = [v16 value];

      *buf = [v11 integerValue];
      *&buf[8] = [v13 integerValue];
      *&buf[16] = [v15 integerValue];
      v56 = [v17 integerValue];
      v18 = [MEMORY[0x1E696B098] nu_valueWithPixelRect:buf];
      v19 = [NUChannelControlData alloc];
      v20 = objc_alloc_init(NURectSetting);
      v21 = [(NUChannelControlData *)v19 initWithSetting:v20 value:v18];

      goto LABEL_8;
    }
  }

  *a4 = [NUError invalidError:@"Expected numeric expression" object:v7];

  v21 = 0;
LABEL_8:

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NURectExpression *)self xExpression];
  v5 = [v4 description];
  v6 = [(NURectExpression *)self yExpression];
  v7 = [v6 description];
  v8 = [(NURectExpression *)self widthExpression];
  v9 = [v8 description];
  v10 = [(NURectExpression *)self heightExpression];
  v11 = [v10 description];
  v12 = [v3 stringWithFormat:@"rect[origin:%@, %@ size:%@, %@]", v5, v7, v9, v11];

  return v12;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NURectExpression *)self xExpression];
  v5 = [v4 compactDescription];
  v6 = [(NURectExpression *)self yExpression];
  v7 = [v6 compactDescription];
  v8 = [(NURectExpression *)self widthExpression];
  v9 = [v8 compactDescription];
  v10 = [(NURectExpression *)self heightExpression];
  v11 = [v10 compactDescription];
  v12 = [v3 stringWithFormat:@"□[o:%@, %@|s:%@, %@]", v5, v7, v9, v11];

  return v12;
}

- (NUChannelExpression)heightExpression
{
  v2 = [(NUChannelExpression *)self arguments];
  v3 = [v2 objectAtIndexedSubscript:3];

  return v3;
}

- (NUChannelExpression)widthExpression
{
  v2 = [(NUChannelExpression *)self arguments];
  v3 = [v2 objectAtIndexedSubscript:2];

  return v3;
}

- (NUChannelExpression)yExpression
{
  v2 = [(NUChannelExpression *)self arguments];
  v3 = [v2 objectAtIndexedSubscript:1];

  return v3;
}

- (NUChannelExpression)xExpression
{
  v2 = [(NUChannelExpression *)self arguments];
  v3 = [v2 objectAtIndexedSubscript:0];

  return v3;
}

- (NURectExpression)initWithXExpression:(id)a3 yExpression:(id)a4 widthExpression:(id)a5 heightExpression:(id)a6
{
  v88 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v18 = NUAssertLogger_4187();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "x != nil"];
      *buf = 138543362;
      v85 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_4187();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        v49 = [v47 callStackSymbols];
        v50 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v85 = v46;
        v86 = 2114;
        v87 = v50;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v85 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression initWithXExpression:yExpression:widthExpression:heightExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3197, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "x != nil");
  }

  if (!v11)
  {
    v25 = NUAssertLogger_4187();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "y != nil"];
      *buf = 138543362;
      v85 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_4187();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        v58 = [v56 callStackSymbols];
        v59 = [v58 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v85 = v55;
        v86 = 2114;
        v87 = v59;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v85 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression initWithXExpression:yExpression:widthExpression:heightExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3198, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "y != nil");
  }

  if (!v12)
  {
    v32 = NUAssertLogger_4187();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "width != nil"];
      *buf = 138543362;
      v85 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_4187();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        v67 = [v65 callStackSymbols];
        v68 = [v67 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v85 = v64;
        v86 = 2114;
        v87 = v68;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v85 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression initWithXExpression:yExpression:widthExpression:heightExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3199, @"Invalid parameter not satisfying: %s", v69, v70, v71, v72, "width != nil");
  }

  v14 = v13;
  if (!v13)
  {
    v39 = NUAssertLogger_4187();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "height != nil"];
      *buf = 138543362;
      v85 = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger_4187();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      if (v43)
      {
        v73 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v74 = MEMORY[0x1E696AF00];
        v75 = v73;
        v76 = [v74 callStackSymbols];
        v77 = [v76 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v85 = v73;
        v86 = 2114;
        v87 = v77;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      v44 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [v44 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v85 = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression initWithXExpression:yExpression:widthExpression:heightExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3200, @"Invalid parameter not satisfying: %s", v78, v79, v80, v81, "height != nil");
  }

  v83[0] = v10;
  v83[1] = v11;
  v83[2] = v12;
  v83[3] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
  v82.receiver = self;
  v82.super_class = NURectExpression;
  v16 = [(NUChannelExpression *)&v82 initWithExpressionType:4 arguments:v15];

  return v16;
}

- (NURectExpression)initWithExpressionType:(int64_t)a3 arguments:(id)a4
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
  _NUAssertFailHandler("[NURectExpression initWithExpressionType:arguments:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3193, @"Initializer not available: [%@ %@], use designated initializer instead.", v28, v29, v30, v31, v27);
}

@end