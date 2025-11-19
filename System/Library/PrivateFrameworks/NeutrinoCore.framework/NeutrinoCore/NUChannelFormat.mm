@interface NUChannelFormat
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChannelFormat:(id)a3;
- (BOOL)validateChannelData:(id)a3 error:(id *)a4;
- (BOOL)validateChannelExpression:(id)a3 error:(id *)a4;
- (id)debugDescription;
- (id)description;
- (id)specializedWithFormat:(id)a3;
@end

@implementation NUChannelFormat

- (id)specializedWithFormat:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
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
  _NUAssertFailHandler("[NUChannelFormat specializedWithFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 468, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

- (BOOL)validateChannelExpression:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 isCompatibleWithExpressionType:{-[NUChannelFormat expressionType](self, "expressionType")}];
  if ((v7 & 1) == 0)
  {
    v8 = [v6 type];
    if (v8 > 4)
    {
      v9 = @"???";
    }

    else
    {
      v9 = off_1E8109B40[v8];
    }

    *a4 = [NUError notFoundError:@"Incompatible expression type" object:v9];
  }

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUChannelFormat *)self description];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelFormat *)self channelType];
  if ((v3 - 1) > 4)
  {
    v4 = @"???";
  }

  else
  {
    v4 = off_1E8109B18[v3 - 1];
  }

  return [v2 stringWithFormat:@"type:%@", v4];
}

- (BOOL)validateChannelData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 format];
  v8 = [v7 isCompatibleWithChannelFormat:self];

  if ((v8 & 1) == 0)
  {
    v9 = [v6 format];
    *a4 = [NUError notFoundError:@"Incompatible data format" object:v9];
  }

  return v8;
}

- (BOOL)isEqualToChannelFormat:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
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
  _NUAssertFailHandler("[NUChannelFormat isEqualToChannelFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 410, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUChannelFormat *)self isEqualToChannelFormat:v4];

  return v5;
}

@end