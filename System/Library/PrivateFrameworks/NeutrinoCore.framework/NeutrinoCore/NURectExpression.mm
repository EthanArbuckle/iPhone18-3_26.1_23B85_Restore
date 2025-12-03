@interface NURectExpression
- (NUChannelExpression)heightExpression;
- (NUChannelExpression)widthExpression;
- (NUChannelExpression)xExpression;
- (NUChannelExpression)yExpression;
- (NURectExpression)initWithExpressionType:(int64_t)type arguments:(id)arguments;
- (NURectExpression)initWithXExpression:(id)expression yExpression:(id)yExpression widthExpression:(id)widthExpression heightExpression:(id)heightExpression;
- (id)compactDescription;
- (id)description;
- (id)evaluateWithArgumentData:(id)data error:(id *)error;
@end

@implementation NURectExpression

- (id)evaluateWithArgumentData:(id)data error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy count] != 4)
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
        callStackSymbols = [v38 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v37;
        *&buf[12] = 2114;
        *&buf[14] = v41;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression evaluateWithArgumentData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3231, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "args.count == 4");
  }

  if (!error)
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
        callStackSymbols3 = [v47 callStackSymbols];
        v50 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2114;
        *&buf[14] = v50;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression evaluateWithArgumentData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3232, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "error != NULL");
  }

  v6 = 0;
  while (1)
  {
    v7 = [dataCopy objectAtIndexedSubscript:v6];
    format = [v7 format];
    expressionType = [format expressionType];

    if ((expressionType & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      break;
    }

    if (++v6 == 4)
    {
      v10 = [dataCopy objectAtIndexedSubscript:0];
      value = [v10 value];

      v12 = [dataCopy objectAtIndexedSubscript:1];
      value2 = [v12 value];

      v14 = [dataCopy objectAtIndexedSubscript:2];
      value3 = [v14 value];

      v16 = [dataCopy objectAtIndexedSubscript:3];
      value4 = [v16 value];

      *buf = [value integerValue];
      *&buf[8] = [value2 integerValue];
      *&buf[16] = [value3 integerValue];
      integerValue = [value4 integerValue];
      v18 = [MEMORY[0x1E696B098] nu_valueWithPixelRect:buf];
      v19 = [NUChannelControlData alloc];
      v20 = objc_alloc_init(NURectSetting);
      v21 = [(NUChannelControlData *)v19 initWithSetting:v20 value:v18];

      goto LABEL_8;
    }
  }

  *error = [NUError invalidError:@"Expected numeric expression" object:v7];

  v21 = 0;
LABEL_8:

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  xExpression = [(NURectExpression *)self xExpression];
  v5 = [xExpression description];
  yExpression = [(NURectExpression *)self yExpression];
  v7 = [yExpression description];
  widthExpression = [(NURectExpression *)self widthExpression];
  v9 = [widthExpression description];
  heightExpression = [(NURectExpression *)self heightExpression];
  v11 = [heightExpression description];
  v12 = [v3 stringWithFormat:@"rect[origin:%@, %@ size:%@, %@]", v5, v7, v9, v11];

  return v12;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  xExpression = [(NURectExpression *)self xExpression];
  compactDescription = [xExpression compactDescription];
  yExpression = [(NURectExpression *)self yExpression];
  compactDescription2 = [yExpression compactDescription];
  widthExpression = [(NURectExpression *)self widthExpression];
  compactDescription3 = [widthExpression compactDescription];
  heightExpression = [(NURectExpression *)self heightExpression];
  compactDescription4 = [heightExpression compactDescription];
  v12 = [v3 stringWithFormat:@"□[o:%@, %@|s:%@, %@]", compactDescription, compactDescription2, compactDescription3, compactDescription4];

  return v12;
}

- (NUChannelExpression)heightExpression
{
  arguments = [(NUChannelExpression *)self arguments];
  v3 = [arguments objectAtIndexedSubscript:3];

  return v3;
}

- (NUChannelExpression)widthExpression
{
  arguments = [(NUChannelExpression *)self arguments];
  v3 = [arguments objectAtIndexedSubscript:2];

  return v3;
}

- (NUChannelExpression)yExpression
{
  arguments = [(NUChannelExpression *)self arguments];
  v3 = [arguments objectAtIndexedSubscript:1];

  return v3;
}

- (NUChannelExpression)xExpression
{
  arguments = [(NUChannelExpression *)self arguments];
  v3 = [arguments objectAtIndexedSubscript:0];

  return v3;
}

- (NURectExpression)initWithXExpression:(id)expression yExpression:(id)yExpression widthExpression:(id)widthExpression heightExpression:(id)heightExpression
{
  v88 = *MEMORY[0x1E69E9840];
  expressionCopy = expression;
  yExpressionCopy = yExpression;
  widthExpressionCopy = widthExpression;
  heightExpressionCopy = heightExpression;
  if (!expressionCopy)
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
        callStackSymbols = [v47 callStackSymbols];
        v50 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v85 = v46;
        v86 = 2114;
        v87 = v50;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v85 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression initWithXExpression:yExpression:widthExpression:heightExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3197, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "x != nil");
  }

  if (!yExpressionCopy)
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
        callStackSymbols3 = [v56 callStackSymbols];
        v59 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v85 = v55;
        v86 = 2114;
        v87 = v59;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v85 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression initWithXExpression:yExpression:widthExpression:heightExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3198, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "y != nil");
  }

  if (!widthExpressionCopy)
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
        callStackSymbols5 = [v65 callStackSymbols];
        v68 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v85 = v64;
        v86 = 2114;
        v87 = v68;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v85 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression initWithXExpression:yExpression:widthExpression:heightExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3199, @"Invalid parameter not satisfying: %s", v69, v70, v71, v72, "width != nil");
  }

  v14 = heightExpressionCopy;
  if (!heightExpressionCopy)
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
        callStackSymbols7 = [v74 callStackSymbols];
        v77 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v85 = v73;
        v86 = 2114;
        v87 = v77;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v85 = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURectExpression initWithXExpression:yExpression:widthExpression:heightExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3200, @"Invalid parameter not satisfying: %s", v78, v79, v80, v81, "height != nil");
  }

  v83[0] = expressionCopy;
  v83[1] = yExpressionCopy;
  v83[2] = widthExpressionCopy;
  v83[3] = heightExpressionCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
  v82.receiver = self;
  v82.super_class = NURectExpression;
  v16 = [(NUChannelExpression *)&v82 initWithExpressionType:4 arguments:v15];

  return v16;
}

- (NURectExpression)initWithExpressionType:(int64_t)type arguments:(id)arguments
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
  _NUAssertFailHandler("[NURectExpression initWithExpressionType:arguments:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3193, @"Initializer not available: [%@ %@], use designated initializer instead.", v28, v29, v30, v31, v27);
}

@end