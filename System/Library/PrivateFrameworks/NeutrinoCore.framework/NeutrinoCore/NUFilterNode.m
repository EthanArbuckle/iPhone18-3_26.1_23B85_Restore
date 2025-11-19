@interface NUFilterNode
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3;
- (BOOL)isEqualToRenderNode:(id)a3;
- (BOOL)isGeometryNode;
- (BOOL)shouldCacheNodeForPipelineState:(id)a3;
- (NUFilterNode)initWithFilterName:(id)a3 settings:(id)a4 inputs:(id)a5;
- (NUFilterNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_evaluateAuxiliaryImageForType:(int64_t)a3 error:(id *)a4;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)_evaluateImageProperties:(id *)a3;
- (id)debugQuickLookObject;
- (id)descriptionSubClassHook;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (unint64_t)hash;
- (void)nu_updateDigest:(id)a3;
@end

@implementation NUFilterNode

- (void)nu_updateDigest:(id)a3
{
  v5.receiver = self;
  v5.super_class = NUFilterNode;
  v4 = a3;
  [(NURenderNode *)&v5 nu_updateDigest:v4];
  [v4 addCString:{"filterName", v5.receiver, v5.super_class}];
  [v4 addString:self->_filterName];
  [v4 addCString:"gainMapMode"];
  [v4 addBytes:&self->_gainMapMode length:8];
}

- (id)descriptionSubClassHook
{
  v3 = self->_filterName;
  v4 = [(NUFilterNode *)self gainMapMode];
  if ((v4 - 1) >= 3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NSString *)v3 stringByAppendingFormat:@"[gm:%@]", off_1E810ABC8[v4 - 1]];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = NUFilterNode;
  v3 = 0x2312EF99DDCBC5 * [(NURenderNode *)&v5 hash];
  return (0x41359F86079F7 * [(NSString *)self->_filterName hash]) ^ v3;
}

- (BOOL)isEqualToRenderNode:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NUFilterNode;
  if (-[NURenderNode isEqualToRenderNode:](&v11, sel_isEqualToRenderNode_, v4) && (-[NUFilterNode filterName](self, "filterName"), v5 = objc_claimAutoreleasedReturnValue(), [v4 filterName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    v8 = [(NUFilterNode *)self gainMapMode];
    v9 = v8 == [v4 gainMapMode];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)debugQuickLookObject
{
  if ([(NURenderNode *)self isCached])
  {
    v5.receiver = self;
    v5.super_class = NUFilterNode;
    v3 = [(NURenderNode *)&v5 debugQuickLookObject];
  }

  else
  {
    v6 = 0;
    v3 = [(NUFilterNode *)self _evaluateImage:&v6];
  }

  return v3;
}

- (id)_evaluateImage:(id *)a3
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v20 = NUAssertLogger_20065();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_20065();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v27;
        v45 = 2114;
        v46 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFilterNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Filter.m", 233, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != NULL");
  }

  v4 = MEMORY[0x1E695F648];
  filterName = self->_filterName;
  v6 = [(NURenderNode *)self settings];
  v7 = [v4 filterWithName:filterName withInputParameters:v6];

  if (!v7)
  {
    [NUError errorWithCode:1 reason:@"Cannot create filter with name" object:self->_filterName];
    *a3 = v18 = 0;
    goto LABEL_20;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [(NURenderNode *)self inputs];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = *v39;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        v13 = [(NURenderNode *)self inputForKey:v12];
        v37 = 0;
        v14 = [v13 outputImage:&v37];
        v15 = v37;
        if (!v14)
        {
          *a3 = [NUError errorWithCode:2 reason:@"Cannot evaluate input" object:v13 underlyingError:v15];

          v18 = 0;
          goto LABEL_20;
        }

        [v7 setValue:v14 forKey:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v7 outputImage];
  if (!v16)
  {
    v17 = [NUError invalidError:@"Filter produced a nil output image" object:v7];
LABEL_18:
    [NUError errorWithCode:1 reason:@"Failed to produce valid output image for CIFilter" object:v7 underlyingError:v17];
    *a3 = v18 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [NUError invalidError:@"Output image is not a CIImage" object:v16];

    goto LABEL_18;
  }

  v17 = 0;
  v18 = v16;
LABEL_19:

LABEL_20:

  return v18;
}

- (id)_evaluateImageProperties:(id *)a3
{
  v7.receiver = self;
  v7.super_class = NUFilterNode;
  v4 = [(NURenderNode *)&v7 _evaluateImageProperties:a3];
  if (v4 && [(NUFilterNode *)self gainMapMode]== 3)
  {
    v5 = [[_NUImageProperties alloc] initWithProperties:v4];
    [(_NUImageProperties *)v5 setAuxiliaryImageProperties:0 forType:7];

    v4 = v5;
  }

  return v4;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v25.receiver = self;
  v25.super_class = NUFilterNode;
  v5 = [(NURenderNode *)&v25 _evaluateImageGeometry:?];
  v6 = v5;
  if (v5)
  {
    [v5 extent];
    if (*&v27.size.width)
    {
      v7 = *&v27.size.height == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = [v6 renderScale];
      v10 = v9;
      v11 = [(NURenderNode *)self outputImage:a3];
      v12 = v11;
      if (v11)
      {
        [v11 extent];
        x = v29.origin.x;
        y = v29.origin.y;
        width = v29.size.width;
        height = v29.size.height;
        if (CGRectIsInfinite(v29))
        {
          v17 = *(MEMORY[0x1E695F040] + 16);
          v27.origin = *MEMORY[0x1E695F040];
          v27.size = v17;
          v18 = 3;
        }

        else
        {
          v27.origin.x = x;
          v27.origin.y = y;
          v27.size.width = width;
          v27.size.height = height;
          v18 = 0;
        }

        NU::RectT<long>::RectT(v26, &v27, v18);
        v23 = v26[1];
        v24 = v26[0];
        v20 = [NUImageGeometry alloc];
        v21 = [v6 orientation];
        v27.origin = v24;
        v27.size = v23;
        v19 = [(NUImageGeometry *)v20 initWithExtent:&v27 renderScale:v8 orientation:v10, v21];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = v6;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)isGeometryNode
{
  v2 = [(NURenderNode *)self inputs];
  v3 = [v2 count];

  return v3 != 1;
}

- (id)_evaluateAuxiliaryImageForType:(int64_t)a3 error:(id *)a4
{
  if (a3 == 7 && [(NUFilterNode *)self gainMapMode])
  {
    v7 = @"HDRGainMap";
    *a4 = [NUError failureError:@"Filter node cannot propagate original auxiliary data" object:@"HDRGainMap"];

    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NUFilterNode;
    v8 = [(NURenderNode *)&v10 _evaluateAuxiliaryImageForType:a3 error:a4];
  }

  return v8;
}

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3
{
  if (a3 == 7 && [(NUFilterNode *)self gainMapMode])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = NUFilterNode;
  return [(NURenderNode *)&v6 canPropagateOriginalAuxiliaryData:a3];
}

- (BOOL)shouldCacheNodeForPipelineState:(id)a3
{
  v4 = a3;
  if ([v4 auxiliaryImageType] == 1 || !objc_msgSend(v4, "auxiliaryImageType"))
  {
    v9 = [v4 evaluationMode];
    v6 = v9 >= 4;
    v7 = v9 & 0xF;
    v8 = 11;
  }

  else
  {
    if ([v4 auxiliaryImageType] != 7)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v5 = [(NUFilterNode *)self gainMapMode];
    v6 = v5 >= 4;
    v7 = v5 & 0xF;
    v8 = 6;
  }

  v10 = v8 >> v7;
  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

LABEL_9:

  return v11 & 1;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v10.receiver = self;
  v10.super_class = NUFilterNode;
  v7 = [(NURenderNode *)&v10 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong((v7 + 168), self->_filterName);
    v8[22] = self->_gainMapMode;
  }

  return v8;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v24 = NUAssertLogger_20065();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_20065();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v31;
        v46 = 2114;
        v47 = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFilterNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Filter.m", 59, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "error != nil");
  }

  v10 = v9;
  v11 = [(NURenderNode *)self inputs];
  v12 = [v11 count];

  if (!v12)
  {
    v13 = v10;
    if ([v13 evaluationMode] == 3)
    {
      v20 = [v13 copy];

      [v20 setEvaluationMode:1];
      v13 = v20;
    }

    v43.receiver = self;
    v43.super_class = NUFilterNode;
    [(NURenderNode *)&v43 nodeByReplayingAgainstCache:v8 pipelineState:v13 error:a5];
    goto LABEL_17;
  }

  v13 = [(NURenderNode *)self dominantInputKey];
  v14 = [v10 auxiliaryImageType];
  if (v14 == 7)
  {
    v15 = [(NUFilterNode *)self gainMapMode];
    switch(v15)
    {
      case 3:
        v22 = [(NUFilterNode *)self filterName];
        *a5 = [NUError unsupportedError:@"Gain map is disabled" object:v22];

        v21 = 0;
        goto LABEL_23;
      case 2:
        v18 = [v10 copy];
        [v18 setAuxiliaryImageType:1];
        v41.receiver = self;
        v41.super_class = NUFilterNode;
        v19 = [(NURenderNode *)&v41 nodeByReplayingAgainstCache:v8 pipelineState:v18 error:a5];
        goto LABEL_19;
      case 1:
        v42[0] = self;
        v42[1] = NUFilterNode;
        v16 = v42;
LABEL_16:
        [(objc_super *)v16 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];
        v21 = LABEL_17:;
        goto LABEL_23;
    }
  }

  if (v14 == 1 || !v13)
  {
    v40.receiver = self;
    v40.super_class = NUFilterNode;
    v16 = &v40;
    goto LABEL_16;
  }

  v17 = [(NURenderNode *)self inputForKey:v13];
  v18 = v17;
  if (!v17)
  {
    [NUError missingError:@"missing dominant input" object:self];
    *a5 = v21 = 0;
    goto LABEL_22;
  }

  v19 = [v17 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];
LABEL_19:
  v21 = v19;
LABEL_22:

LABEL_23:

  return v21;
}

- (NUFilterNode)initWithFilterName:(id)a3 settings:(id)a4 inputs:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v20 = NUAssertLogger_20065();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "filterName != nil"];
      *buf = 138543362;
      v38 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_20065();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v27;
        v39 = 2114;
        v40 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFilterNode initWithFilterName:settings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Filter.m", 37, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "filterName != nil");
  }

  v11 = v10;
  v12 = [v9 objectForKeyedSubscript:@"__gainMapMode"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [v9 objectForKeyedSubscript:@"__gainMapMode"];
    self->_gainMapMode = [v14 integerValue];

    v15 = [v9 mutableCopy];
    [v15 setObject:0 forKeyedSubscript:@"__gainMapMode"];

    v9 = v15;
  }

  v36.receiver = self;
  v36.super_class = NUFilterNode;
  v16 = [(NURenderNode *)&v36 initWithSettings:v9 inputs:v11];
  v17 = [v8 copy];
  filterName = v16->_filterName;
  v16->_filterName = v17;

  return v16;
}

- (NUFilterNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_20112);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = [v9 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v12, v13];
    *buf = 138543362;
    v35 = v14;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v15 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v15 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_20112);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_20112);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v16 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AF00];
      v18 = v16;
      v19 = [v17 callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = MEMORY[0x1E696AF00];
    v24 = specific;
    v25 = v21;
    v26 = [v23 callStackSymbols];
    v27 = [v26 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v35 = specific;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUFilterNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Filter.m", 30, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end