@interface NUMultipleSourceContainerNode
- (NUMultipleSourceContainerNode)initWithAssetIdentifier:(id)identifier;
- (NUMultipleSourceContainerNode)initWithSourceNodes:(id)nodes assetIdentifier:(id)identifier;
- (id)description;
- (id)resolveSourceNodeForPipelineState:(id)state foundScale:(id *)scale error:(id *)error;
- (id)sourceNodeForPipelineState:(id)state error:(id *)error;
@end

@implementation NUMultipleSourceContainerNode

- (id)sourceNodeForPipelineState:(id)state error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!error)
  {
    v11 = NUAssertLogger_8665();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_8665();
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
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMultipleSourceContainerNode sourceNodeForPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 339, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "error != NULL");
  }

  v7 = stateCopy;
  primarySourceNode = [(NUMultipleSourceContainerNode *)self primarySourceNode];
  if ([primarySourceNode load:error] && objc_msgSend(primarySourceNode, "isValid:", error))
  {
    v9 = primarySourceNode;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)resolveSourceNodeForPipelineState:(id)state foundScale:(id *)scale error:(id *)error
{
  v89 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!error)
  {
    v45 = NUAssertLogger_8665();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v86 = v46;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v48 = NUAssertLogger_8665();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v49)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols = [v53 callStackSymbols];
        v56 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v86 = v52;
        v87 = 2114;
        v88 = v56;
        _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v86 = v51;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMultipleSourceContainerNode resolveSourceNodeForPipelineState:foundScale:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 251, @"Invalid parameter not satisfying: %s", v57, v58, v59, v60, "error != NULL");
  }

  v9 = stateCopy;
  primarySourceNode = [(NUMultipleSourceContainerNode *)self primarySourceNode];
  if (![primarySourceNode load:error] || !objc_msgSend(primarySourceNode, "isValid:", error))
  {
    v42 = 0;
    goto LABEL_40;
  }

  mediaComponentType = [v9 mediaComponentType];
  v12 = self->_sources;
  if ([(NSArray *)v12 count])
  {
    scale = [v9 scale];
    if (scale >= 1 && v13 > 0)
    {
      v68 = v13;
      v14 = NUScaleZero;
      v15 = unk_1EBE0A658;
      v73 = *(&NUScaleOne + 1);
      v16 = NUScaleOne;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v17 = v12;
      v18 = [(NSArray *)v17 countByEnumeratingWithState:&v80 objects:v84 count:16];
      if (v18)
      {
        errorCopy = error;
        scaleCopy = scale;
        selfCopy = self;
        v64 = v12;
        v65 = primarySourceNode;
        v69 = v9;
        v66 = 0;
        v67 = 0;
        v19 = 0;
        v75 = *v81;
        v20 = v16;
        v21 = v18;
        v71 = v17;
        do
        {
          v22 = 0;
          v72 = v21;
          do
          {
            if (*v81 != v75)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v80 + 1) + 8 * v22);
            v79 = 0;
            v24 = [v23 load:&v79];
            v25 = v79;

            if (v24)
            {
              v78 = 0;
              v26 = [v23 isValid:&v78];
              v19 = v78;

              if (v26)
              {
                v74 = v14;
                v77 = 0;
                v27 = [v23 outputImageGeometry:&v77];
                v28 = v77;

                v29 = v15;
                if (v27)
                {
                  v76 = 0;
                  v30 = [v23 supportsPipelineState:v69 error:&v76];
                  v19 = v76;

                  if (!v30)
                  {
                    goto LABEL_23;
                  }

                  renderScale = [v27 renderScale];
                  v33 = v32;
                  if (NUScaleCompare(renderScale, v32, scale, v68) < 0 && (NUScaleCompare(renderScale, v33, v74, v29) & 0x8000000000000000) == 0)
                  {
                    v34 = v23;

                    v74 = renderScale;
                    v29 = v33;
                    v67 = v34;
                  }

                  if (NUScaleCompare(renderScale, v33, scale, v68) < 0)
                  {
LABEL_23:
                    renderScale = v20;
                    v33 = v73;
                  }

                  else if (NUScaleCompare(renderScale, v33, v20, v73) <= 0)
                  {
                    v35 = v23;

                    v66 = v35;
                  }

                  else
                  {
                    renderScale = v20;
                    v33 = v73;
                  }
                }

                else
                {
                  renderScale = v20;
                  v33 = v73;
                  v19 = v28;
                }

                v20 = renderScale;
                v73 = v33;
                v14 = v74;
                v15 = v29;
                v17 = v71;
                v21 = v72;
              }
            }

            else
            {
              v19 = v25;
            }

            ++v22;
          }

          while (v21 != v22);
          v36 = [(NSArray *)v17 countByEnumeratingWithState:&v80 objects:v84 count:16];
          v21 = v36;
        }

        while (v36);

        primarySourceNode = v65;
        v37 = v66;
        v38 = v66;
        v39 = v67;
        v40 = v73;
        if (v66 || (v38 = v67, v20 = v14, v40 = v15, v67))
        {
          v41 = v38;
          scaleCopy->var0 = v20;
          scaleCopy->var1 = v40;
          v42 = v41;
          v9 = v69;
          v12 = v64;
LABEL_38:

          goto LABEL_39;
        }

        v9 = v69;
        v12 = v64;
        self = selfCopy;
        error = errorCopy;
      }

      else
      {

        v19 = 0;
      }

      [NUError errorWithCode:5 reason:@"Couldn't find any matching source node" object:self underlyingError:v19];
      v37 = 0;
      v39 = 0;
      *error = v42 = 0;
      goto LABEL_38;
    }

    *scale = NUScaleUnknown;
    v42 = [(NSArray *)v12 objectAtIndexedSubscript:0];
  }

  else
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInteger:mediaComponentType];
    *error = [NUError missingError:@"No matching source for type" object:v43];

    v42 = 0;
  }

LABEL_39:

LABEL_40:

  return v42;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@:%p>", v5, self];

  [v3 appendFormat:@"Count:%lu ", -[NSArray count](self->_sources, "count")];
  if ([(NSArray *)self->_sources count])
  {
    v6 = 0;
    do
    {
      if ([(NSArray *)self->_sources count]>= 2)
      {
        [v3 appendFormat:@"\n"];
      }

      v7 = [(NSArray *)self->_sources objectAtIndexedSubscript:v6];
      v8 = [v7 description];
      [v3 appendFormat:@"[%lu]=%@", v6, v8];

      ++v6;
    }

    while (v6 < [(NSArray *)self->_sources count]);
  }

  return v3;
}

- (NUMultipleSourceContainerNode)initWithSourceNodes:(id)nodes assetIdentifier:(id)identifier
{
  v45 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  identifierCopy = identifier;
  if (![nodesCopy count])
  {
    v19 = NUAssertLogger_8665();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "nodes.count >= 1"];
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
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v26;
        v43 = 2114;
        v44 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMultipleSourceContainerNode initWithSourceNodes:assetIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 214, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "nodes.count >= 1");
  }

  v39.receiver = self;
  v39.super_class = NUMultipleSourceContainerNode;
  v8 = [(NUSourceContainerNode *)&v39 initWithAssetIdentifier:identifierCopy];
  v9 = [nodesCopy copy];
  sources = v8->_sources;
  v8->_sources = v9;

  primarySourceNode = [(NUMultipleSourceContainerNode *)v8 primarySourceNode];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = nodesCopy;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v35 + 1) + 8 * v16);
        if (v17 != primarySourceNode)
        {
          [v17 setOriginalNode:primarySourceNode];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v14);
  }

  return v8;
}

- (NUMultipleSourceContainerNode)initWithAssetIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
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
      callStackSymbols = [v14 callStackSymbols];
      v17 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v20 callStackSymbols];
    v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUMultipleSourceContainerNode initWithAssetIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 209, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end