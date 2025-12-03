@interface NUChannelStaticExpression
- (NUChannelStaticExpression)initWithExpressionType:(int64_t)type arguments:(id)arguments;
- (NUChannelStaticExpression)initWithPort:(id)port expressionType:(int64_t)type;
- (id)compactDescription;
- (id)debugDescription;
- (id)description;
- (id)evaluateWithContext:(id)context error:(id *)error;
- (id)inputPorts;
@end

@implementation NUChannelStaticExpression

- (id)inputPorts
{
  v5[1] = *MEMORY[0x1E69E9840];
  port = [(NUChannelStaticExpression *)self port];
  v5[0] = port;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)evaluateWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  port = [(NUChannelStaticExpression *)self port];
  v8 = [port evaluateOutputWithContext:contextCopy error:error];

  return v8;
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

  port = [(NUChannelStaticExpression *)self port];
  v8 = [v3 stringWithFormat:@"<%@:%p type=%@, port=%@>", v4, self, v6, port];

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  port = [(NUChannelStaticExpression *)self port];
  v4 = [port description];
  v5 = [v2 stringWithFormat:@"static<%@>", v4];

  return v5;
}

- (id)compactDescription
{
  v2 = MEMORY[0x1E696AEC0];
  port = [(NUChannelStaticExpression *)self port];
  compactDescription = [port compactDescription];
  v5 = [v2 stringWithFormat:@"(%@)", compactDescription];

  return v5;
}

- (NUChannelStaticExpression)initWithPort:(id)port expressionType:(int64_t)type
{
  v32 = *MEMORY[0x1E69E9840];
  portCopy = port;
  if (!portCopy)
  {
    v11 = NUAssertLogger_4187();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "port != nil"];
      *buf = 138543362;
      v29 = v12;
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
        v29 = v18;
        v30 = 2114;
        v31 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelStaticExpression initWithPort:expressionType:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3078, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "port != nil");
  }

  v7 = portCopy;
  v27.receiver = self;
  v27.super_class = NUChannelStaticExpression;
  v8 = [(NUChannelExpression *)&v27 initWithExpressionType:type arguments:MEMORY[0x1E695E0F0]];
  port = v8->_port;
  v8->_port = v7;

  return v8;
}

- (NUChannelStaticExpression)initWithExpressionType:(int64_t)type arguments:(id)arguments
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
  _NUAssertFailHandler("[NUChannelStaticExpression initWithExpressionType:arguments:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 3074, @"Initializer not available: [%@ %@], use designated initializer instead.", v28, v29, v30, v31, v27);
}

@end