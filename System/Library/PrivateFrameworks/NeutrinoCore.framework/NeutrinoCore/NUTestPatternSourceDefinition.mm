@interface NUTestPatternSourceDefinition
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (NUTestPatternSourceDefinition)init;
- (NUTestPatternSourceDefinition)initWithSize:(id)size orientation:(int64_t)orientation;
- (id)generateSourceNodeWithIdentifier:(id)identifier error:(id *)error;
@end

@implementation NUTestPatternSourceDefinition

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (NUTestPatternSourceDefinition)initWithSize:(id)size orientation:(int64_t)orientation
{
  var1 = size.var1;
  var0 = size.var0;
  v8.receiver = self;
  v8.super_class = NUTestPatternSourceDefinition;
  result = [(NUSingleSourceDefinition *)&v8 init];
  result->_size.width = var0;
  result->_size.height = var1;
  result->_orientation = orientation;
  return result;
}

- (NUTestPatternSourceDefinition)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_9329);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_9329);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_9329);
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
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUTestPatternSourceDefinition init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 266, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

- (id)generateSourceNodeWithIdentifier:(id)identifier error:(id *)error
{
  v5 = [NUTestPatternSourceNode alloc];
  v6 = [(NUTestPatternSourceDefinition *)self size];
  v8 = [(NUTestPatternSourceNode *)v5 initWithSize:v6 orientation:v7, [(NUTestPatternSourceDefinition *)self orientation]];
  sourceDerivation = [(NUSingleSourceDefinition *)self sourceDerivation];
  [(NUSourceNode *)v8 setSourceDerivation:sourceDerivation];

  return v8;
}

@end