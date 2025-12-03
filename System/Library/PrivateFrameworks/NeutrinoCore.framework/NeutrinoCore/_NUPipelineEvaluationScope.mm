@interface _NUPipelineEvaluationScope
- (_NUPipelineEvaluationScope)init;
- (_NUPipelineEvaluationScope)initWithName:(id)name channelData:(id)data;
- (id)channelData;
- (id)debugDescription;
- (id)description;
@end

@implementation _NUPipelineEvaluationScope

- (id)channelData
{
  v2 = [(NSMutableDictionary *)self->_channelData copy];

  return v2;
}

- (id)debugDescription
{
  allKeys = [(NSMutableDictionary *)self->_channelData allKeys];
  v4 = PFMap();

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  name = [(_NUPipelineEvaluationScope *)self name];
  v8 = [v4 componentsJoinedByString:{@", "}];
  v9 = [v5 stringWithFormat:@"<%@:%p name='%@' data={%@\n}>", v6, self, name, v8];

  return v9;
}

- (id)description
{
  allKeys = [(NSMutableDictionary *)self->_channelData allKeys];
  v4 = PFMap();

  v5 = MEMORY[0x1E696AEC0];
  name = [(_NUPipelineEvaluationScope *)self name];
  v7 = [v4 componentsJoinedByString:{@", "}];
  v8 = [v5 stringWithFormat:@"%@={%@\n}", name, v7];

  return v8;
}

- (_NUPipelineEvaluationScope)initWithName:(id)name channelData:(id)data
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = _NUPipelineEvaluationScope;
  nameCopy = name;
  v8 = [(_NUPipelineEvaluationScope *)&v14 init];
  v9 = [nameCopy copy];

  name = v8->_name;
  v8->_name = v9;

  if (dataCopy)
  {
    v11 = [dataCopy mutableCopy];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  channelData = v8->_channelData;
  v8->_channelData = v11;

  return v8;
}

- (_NUPipelineEvaluationScope)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
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
  _NUAssertFailHandler("[_NUPipelineEvaluationScope init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3775, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end