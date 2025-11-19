@interface NUMultipleSourceContainerNode
- (NUMultipleSourceContainerNode)initWithAssetIdentifier:(id)a3;
- (NUMultipleSourceContainerNode)initWithSourceNodes:(id)a3 assetIdentifier:(id)a4;
- (id)description;
- (id)resolveSourceNodeForPipelineState:(id)a3 foundScale:(id *)a4 error:(id *)a5;
- (id)sourceNodeForPipelineState:(id)a3 error:(id *)a4;
@end

@implementation NUMultipleSourceContainerNode

- (id)sourceNodeForPipelineState:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
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
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMultipleSourceContainerNode sourceNodeForPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 339, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "error != NULL");
  }

  v7 = v6;
  v8 = [(NUMultipleSourceContainerNode *)self primarySourceNode];
  if ([v8 load:a4] && objc_msgSend(v8, "isValid:", a4))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)resolveSourceNodeForPipelineState:(id)a3 foundScale:(id *)a4 error:(id *)a5
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a5)
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
        v55 = [v53 callStackSymbols];
        v56 = [v55 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v86 = v52;
        v87 = 2114;
        v88 = v56;
        _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      v50 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [v50 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v86 = v51;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMultipleSourceContainerNode resolveSourceNodeForPipelineState:foundScale:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 251, @"Invalid parameter not satisfying: %s", v57, v58, v59, v60, "error != NULL");
  }

  v9 = v8;
  v10 = [(NUMultipleSourceContainerNode *)self primarySourceNode];
  if (![v10 load:a5] || !objc_msgSend(v10, "isValid:", a5))
  {
    v42 = 0;
    goto LABEL_40;
  }

  v11 = [v9 mediaComponentType];
  v12 = self->_sources;
  if ([(NSArray *)v12 count])
  {
    v70 = [v9 scale];
    if (v70 >= 1 && v13 > 0)
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
        v62 = a5;
        v63 = a4;
        v61 = self;
        v64 = v12;
        v65 = v10;
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

                  v31 = [v27 renderScale];
                  v33 = v32;
                  if (NUScaleCompare(v31, v32, v70, v68) < 0 && (NUScaleCompare(v31, v33, v74, v29) & 0x8000000000000000) == 0)
                  {
                    v34 = v23;

                    v74 = v31;
                    v29 = v33;
                    v67 = v34;
                  }

                  if (NUScaleCompare(v31, v33, v70, v68) < 0)
                  {
LABEL_23:
                    v31 = v20;
                    v33 = v73;
                  }

                  else if (NUScaleCompare(v31, v33, v20, v73) <= 0)
                  {
                    v35 = v23;

                    v66 = v35;
                  }

                  else
                  {
                    v31 = v20;
                    v33 = v73;
                  }
                }

                else
                {
                  v31 = v20;
                  v33 = v73;
                  v19 = v28;
                }

                v20 = v31;
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

        v10 = v65;
        v37 = v66;
        v38 = v66;
        v39 = v67;
        v40 = v73;
        if (v66 || (v38 = v67, v20 = v14, v40 = v15, v67))
        {
          v41 = v38;
          v63->var0 = v20;
          v63->var1 = v40;
          v42 = v41;
          v9 = v69;
          v12 = v64;
LABEL_38:

          goto LABEL_39;
        }

        v9 = v69;
        v12 = v64;
        self = v61;
        a5 = v62;
      }

      else
      {

        v19 = 0;
      }

      [NUError errorWithCode:5 reason:@"Couldn't find any matching source node" object:self underlyingError:v19];
      v37 = 0;
      v39 = 0;
      *a5 = v42 = 0;
      goto LABEL_38;
    }

    *a4 = NUScaleUnknown;
    v42 = [(NSArray *)v12 objectAtIndexedSubscript:0];
  }

  else
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    *a5 = [NUError missingError:@"No matching source for type" object:v43];

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

- (NUMultipleSourceContainerNode)initWithSourceNodes:(id)a3 assetIdentifier:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v6 count])
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

    _NUAssertFailHandler("[NUMultipleSourceContainerNode initWithSourceNodes:assetIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 214, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "nodes.count >= 1");
  }

  v39.receiver = self;
  v39.super_class = NUMultipleSourceContainerNode;
  v8 = [(NUSourceContainerNode *)&v39 initWithAssetIdentifier:v7];
  v9 = [v6 copy];
  sources = v8->_sources;
  v8->_sources = v9;

  v11 = [(NUMultipleSourceContainerNode *)v8 primarySourceNode];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v6;
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
        if (v17 != v11)
        {
          [v17 setOriginalNode:v11];
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

- (NUMultipleSourceContainerNode)initWithAssetIdentifier:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  _NUAssertFailHandler("[NUMultipleSourceContainerNode initWithAssetIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 209, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end