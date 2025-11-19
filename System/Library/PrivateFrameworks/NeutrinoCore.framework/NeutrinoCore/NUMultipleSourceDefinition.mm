@interface NUMultipleSourceDefinition
- (NUMultipleSourceDefinition)init;
- (NUMultipleSourceDefinition)initWithSourceDefinitions:(id)a3;
- (id)description;
- (id)sourceContainerNodeWithIdentifier:(id)a3 error:(id *)a4;
- (int64_t)mediaType;
@end

@implementation NUMultipleSourceDefinition

- (id)sourceContainerNodeWithIdentifier:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v19 = NUAssertLogger_8665();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_8665();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v26;
        v43 = 2114;
        v44 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMultipleSourceDefinition(NodeProvider) sourceContainerNodeWithIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 571, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "error != NULL");
  }

  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [(NUMultipleSourceDefinition *)self sourceDefinitions];
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v35 = 0;
        v15 = [v14 generateSourceNodeWithIdentifier:v7 error:&v35];
        v16 = v35;
        if (!v15)
        {
          *a4 = [NUError errorWithCode:1 reason:@"Failed to generate source node" object:v7 underlyingError:v16];

          v17 = 0;
          goto LABEL_12;
        }

        [v8 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = [[NUMultipleSourceContainerNode alloc] initWithSourceNodes:v8 assetIdentifier:v7];
LABEL_12:

  return v17;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"<NUMultipleSourceDefinition "];
  [v3 appendFormat:@"Count:%lu ", -[NSArray count](self->_sourceDefinitions, "count")];
  if ([(NSArray *)self->_sourceDefinitions count])
  {
    v4 = 0;
    do
    {
      if ([(NSArray *)self->_sourceDefinitions count]>= 2)
      {
        [v3 appendFormat:@"\n"];
      }

      v5 = [(NSArray *)self->_sourceDefinitions objectAtIndexedSubscript:v4];
      v6 = [v5 description];
      [v3 appendFormat:@"[%lu]=%@", v4, v6];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_sourceDefinitions count]);
  }

  [v3 appendString:@">"];

  return v3;
}

- (int64_t)mediaType
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  v2 = self->_sourceDefinitions;
  if ([(NSArray *)v2 countByEnumeratingWithState:v5 objects:v6 count:16])
  {
    v3 = [**(&v5[0] + 1) mediaType];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NUMultipleSourceDefinition)initWithSourceDefinitions:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 count])
  {
    v9 = NUAssertLogger_9314();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceDefinitions.count > 0"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_9314();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMultipleSourceDefinition initWithSourceDefinitions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 296, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "sourceDefinitions.count > 0");
  }

  v25.receiver = self;
  v25.super_class = NUMultipleSourceDefinition;
  v5 = [(NUMultipleSourceDefinition *)&v25 init];
  v6 = [v4 copy];
  sourceDefinitions = v5->_sourceDefinitions;
  v5->_sourceDefinitions = v6;

  return v5;
}

- (NUMultipleSourceDefinition)init
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
  _NUAssertFailHandler("[NUMultipleSourceDefinition init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Adjustments/NUSource.m", 291, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end