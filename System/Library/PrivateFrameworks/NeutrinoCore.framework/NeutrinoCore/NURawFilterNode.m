@interface NURawFilterNode
- (BOOL)shouldCacheNodeForPipelineState:(id)a3;
- (NURawFilterNode)initWithFilterName:(id)a3 settings:(id)a4 inputs:(id)a5;
- (NURawFilterNode)initWithRawFilter:(id)a3 type:(int)a4 settings:(id)a5 input:(id)a6;
- (NURawFilterNode)initWithRawFilterName:(id)a3 type:(int)a4 settings:(id)a5 inputs:(id)a6;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation NURawFilterNode

- (BOOL)shouldCacheNodeForPipelineState:(id)a3
{
  v4 = a3;
  if ([v4 auxiliaryImageType] == 10)
  {
    v5 = (([(NURawFilterNode *)self rawFilterType]- 10) & 0xFFFFFFFB) != 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NURawFilterNode;
    v5 = [(NUFilterNode *)&v7 shouldCacheNodeForPipelineState:v4];
  }

  return v5;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v9.receiver = self;
  v9.super_class = NURawFilterNode;
  v7 = [(NUFilterNode *)&v9 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];
  if (v7)
  {
    v7[46] = self->_rawFilterType;
  }

  return v7;
}

- (NURawFilterNode)initWithFilterName:(id)a3 settings:(id)a4 inputs:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
  }

  v11 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = v11;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    v17 = [v12 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v15, v16];
    *buf = 138543362;
    v38 = v17;
    _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v18 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v18 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
      }

      goto LABEL_8;
    }

    if (v18 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_712);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v19 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x1E696AF00];
      v21 = v19;
      v22 = [v20 callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v23;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v24 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = MEMORY[0x1E696AF00];
    v27 = specific;
    v28 = v24;
    v29 = [v26 callStackSymbols];
    v30 = [v29 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v38 = specific;
    v39 = 2114;
    v40 = v30;
    _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NURawFilterNode initWithFilterName:settings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 1057, @"Initializer not available: [%@ %@], use designated initializer instead.", v33, v34, v35, v36, v32);
}

- (NURawFilterNode)initWithRawFilterName:(id)a3 type:(int)a4 settings:(id)a5 inputs:(id)a6
{
  v8.receiver = self;
  v8.super_class = NURawFilterNode;
  result = [(NUFilterNode *)&v8 initWithFilterName:a3 settings:a5 inputs:a6];
  result->_rawFilterType = a4;
  return result;
}

- (NURawFilterNode)initWithRawFilter:(id)a3 type:(int)a4 settings:(id)a5 input:(id)a6
{
  v73 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    v28 = NUAssertLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "filter != nil"];
      *buf = 138543362;
      v70 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        v45 = [v43 callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v42;
        v71 = 2114;
        v72 = v46;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURawFilterNode initWithRawFilter:type:settings:input:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 1030, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "filter != nil");
  }

  v13 = v12;
  if (!v12)
  {
    v35 = NUAssertLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v70 = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v38 = NUAssertLogger();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      if (v39)
      {
        v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        v54 = [v52 callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v51;
        v71 = 2114;
        v72 = v55;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURawFilterNode initWithRawFilter:type:settings:input:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+RAW.m", 1031, @"Invalid parameter not satisfying: %s", v56, v57, v58, v59, "input != nil");
  }

  v60 = self;
  v61 = a4;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v15 = [v10 inputKeys];
  v16 = [v15 countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v63;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v63 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v62 + 1) + 8 * i);
        v21 = [v10 valueForKey:v20];
        [v14 setObject:v21 forKeyedSubscript:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v17);
  }

  v22 = *MEMORY[0x1E695FB40];
  v23 = [v10 valueForKey:*MEMORY[0x1E695FB40]];
  [v14 setObject:v23 forKeyedSubscript:v22];

  [v14 addEntriesFromDictionary:v11];
  v24 = [v10 name];
  v66 = *MEMORY[0x1E695FAB0];
  v67 = v13;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v26 = [(NURawFilterNode *)v60 initWithRawFilterName:v24 type:v61 settings:v14 inputs:v25];

  return v26;
}

@end