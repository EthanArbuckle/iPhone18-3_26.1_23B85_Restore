@interface NUFilterNode
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data;
- (BOOL)isEqualToRenderNode:(id)node;
- (BOOL)isGeometryNode;
- (BOOL)shouldCacheNodeForPipelineState:(id)state;
- (NUFilterNode)initWithFilterName:(id)name settings:(id)settings inputs:(id)inputs;
- (NUFilterNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)_evaluateAuxiliaryImageForType:(int64_t)type error:(id *)error;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)_evaluateImageProperties:(id *)properties;
- (id)debugQuickLookObject;
- (id)descriptionSubClassHook;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (unint64_t)hash;
- (void)nu_updateDigest:(id)digest;
@end

@implementation NUFilterNode

- (void)nu_updateDigest:(id)digest
{
  v5.receiver = self;
  v5.super_class = NUFilterNode;
  digestCopy = digest;
  [(NURenderNode *)&v5 nu_updateDigest:digestCopy];
  [digestCopy addCString:{"filterName", v5.receiver, v5.super_class}];
  [digestCopy addString:self->_filterName];
  [digestCopy addCString:"gainMapMode"];
  [digestCopy addBytes:&self->_gainMapMode length:8];
}

- (id)descriptionSubClassHook
{
  v3 = self->_filterName;
  gainMapMode = [(NUFilterNode *)self gainMapMode];
  if ((gainMapMode - 1) >= 3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NSString *)v3 stringByAppendingFormat:@"[gm:%@]", off_1E810ABC8[gainMapMode - 1]];
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

- (BOOL)isEqualToRenderNode:(id)node
{
  nodeCopy = node;
  v11.receiver = self;
  v11.super_class = NUFilterNode;
  if (-[NURenderNode isEqualToRenderNode:](&v11, sel_isEqualToRenderNode_, nodeCopy) && (-[NUFilterNode filterName](self, "filterName"), v5 = objc_claimAutoreleasedReturnValue(), [nodeCopy filterName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    gainMapMode = [(NUFilterNode *)self gainMapMode];
    v9 = gainMapMode == [nodeCopy gainMapMode];
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
    debugQuickLookObject = [(NURenderNode *)&v5 debugQuickLookObject];
  }

  else
  {
    v6 = 0;
    debugQuickLookObject = [(NUFilterNode *)self _evaluateImage:&v6];
  }

  return debugQuickLookObject;
}

- (id)_evaluateImage:(id *)image
{
  v47 = *MEMORY[0x1E69E9840];
  if (!image)
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
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v27;
        v45 = 2114;
        v46 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFilterNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Filter.m", 233, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != NULL");
  }

  v4 = MEMORY[0x1E695F648];
  filterName = self->_filterName;
  settings = [(NURenderNode *)self settings];
  v7 = [v4 filterWithName:filterName withInputParameters:settings];

  if (!v7)
  {
    [NUError errorWithCode:1 reason:@"Cannot create filter with name" object:self->_filterName];
    *image = v18 = 0;
    goto LABEL_20;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  inputs = [(NURenderNode *)self inputs];
  v9 = [inputs countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = *v39;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(inputs);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        v13 = [(NURenderNode *)self inputForKey:v12];
        v37 = 0;
        v14 = [v13 outputImage:&v37];
        v15 = v37;
        if (!v14)
        {
          *image = [NUError errorWithCode:2 reason:@"Cannot evaluate input" object:v13 underlyingError:v15];

          v18 = 0;
          goto LABEL_20;
        }

        [v7 setValue:v14 forKey:v12];
      }

      v9 = [inputs countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  outputImage = [v7 outputImage];
  if (!outputImage)
  {
    v17 = [NUError invalidError:@"Filter produced a nil output image" object:v7];
LABEL_18:
    [NUError errorWithCode:1 reason:@"Failed to produce valid output image for CIFilter" object:v7 underlyingError:v17];
    *image = v18 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [NUError invalidError:@"Output image is not a CIImage" object:outputImage];

    goto LABEL_18;
  }

  v17 = 0;
  v18 = outputImage;
LABEL_19:

LABEL_20:

  return v18;
}

- (id)_evaluateImageProperties:(id *)properties
{
  v7.receiver = self;
  v7.super_class = NUFilterNode;
  v4 = [(NURenderNode *)&v7 _evaluateImageProperties:properties];
  if (v4 && [(NUFilterNode *)self gainMapMode]== 3)
  {
    v5 = [[_NUImageProperties alloc] initWithProperties:v4];
    [(_NUImageProperties *)v5 setAuxiliaryImageProperties:0 forType:7];

    v4 = v5;
  }

  return v4;
}

- (id)_evaluateImageGeometry:(id *)geometry
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
      renderScale = [v6 renderScale];
      v10 = v9;
      v11 = [(NURenderNode *)self outputImage:geometry];
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
        orientation = [v6 orientation];
        v27.origin = v24;
        v27.size = v23;
        v19 = [(NUImageGeometry *)v20 initWithExtent:&v27 renderScale:renderScale orientation:v10, orientation];
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
  inputs = [(NURenderNode *)self inputs];
  v3 = [inputs count];

  return v3 != 1;
}

- (id)_evaluateAuxiliaryImageForType:(int64_t)type error:(id *)error
{
  if (type == 7 && [(NUFilterNode *)self gainMapMode])
  {
    v7 = @"HDRGainMap";
    *error = [NUError failureError:@"Filter node cannot propagate original auxiliary data" object:@"HDRGainMap"];

    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NUFilterNode;
    v8 = [(NURenderNode *)&v10 _evaluateAuxiliaryImageForType:type error:error];
  }

  return v8;
}

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data
{
  if (data == 7 && [(NUFilterNode *)self gainMapMode])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = NUFilterNode;
  return [(NURenderNode *)&v6 canPropagateOriginalAuxiliaryData:data];
}

- (BOOL)shouldCacheNodeForPipelineState:(id)state
{
  stateCopy = state;
  if ([stateCopy auxiliaryImageType] == 1 || !objc_msgSend(stateCopy, "auxiliaryImageType"))
  {
    evaluationMode = [stateCopy evaluationMode];
    v6 = evaluationMode >= 4;
    v7 = evaluationMode & 0xF;
    v8 = 11;
  }

  else
  {
    if ([stateCopy auxiliaryImageType] != 7)
    {
      v11 = 0;
      goto LABEL_9;
    }

    gainMapMode = [(NUFilterNode *)self gainMapMode];
    v6 = gainMapMode >= 4;
    v7 = gainMapMode & 0xF;
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

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v10.receiver = self;
  v10.super_class = NUFilterNode;
  v7 = [(NURenderNode *)&v10 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong((v7 + 168), self->_filterName);
    v8[22] = self->_gainMapMode;
  }

  return v8;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
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
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v31;
        v46 = 2114;
        v47 = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFilterNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Filter.m", 59, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "error != nil");
  }

  v10 = stateCopy;
  inputs = [(NURenderNode *)self inputs];
  v12 = [inputs count];

  if (!v12)
  {
    dominantInputKey = v10;
    if ([dominantInputKey evaluationMode] == 3)
    {
      v20 = [dominantInputKey copy];

      [v20 setEvaluationMode:1];
      dominantInputKey = v20;
    }

    v43.receiver = self;
    v43.super_class = NUFilterNode;
    [(NURenderNode *)&v43 nodeByReplayingAgainstCache:cacheCopy pipelineState:dominantInputKey error:error];
    goto LABEL_17;
  }

  dominantInputKey = [(NURenderNode *)self dominantInputKey];
  auxiliaryImageType = [v10 auxiliaryImageType];
  if (auxiliaryImageType == 7)
  {
    gainMapMode = [(NUFilterNode *)self gainMapMode];
    switch(gainMapMode)
    {
      case 3:
        filterName = [(NUFilterNode *)self filterName];
        *error = [NUError unsupportedError:@"Gain map is disabled" object:filterName];

        v21 = 0;
        goto LABEL_23;
      case 2:
        v18 = [v10 copy];
        [v18 setAuxiliaryImageType:1];
        v41.receiver = self;
        v41.super_class = NUFilterNode;
        v19 = [(NURenderNode *)&v41 nodeByReplayingAgainstCache:cacheCopy pipelineState:v18 error:error];
        goto LABEL_19;
      case 1:
        v42[0] = self;
        v42[1] = NUFilterNode;
        v16 = v42;
LABEL_16:
        [(objc_super *)v16 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
        v21 = LABEL_17:;
        goto LABEL_23;
    }
  }

  if (auxiliaryImageType == 1 || !dominantInputKey)
  {
    v40.receiver = self;
    v40.super_class = NUFilterNode;
    v16 = &v40;
    goto LABEL_16;
  }

  v17 = [(NURenderNode *)self inputForKey:dominantInputKey];
  v18 = v17;
  if (!v17)
  {
    [NUError missingError:@"missing dominant input" object:self];
    *error = v21 = 0;
    goto LABEL_22;
  }

  v19 = [v17 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
LABEL_19:
  v21 = v19;
LABEL_22:

LABEL_23:

  return v21;
}

- (NUFilterNode)initWithFilterName:(id)name settings:(id)settings inputs:(id)inputs
{
  v41 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  settingsCopy = settings;
  inputsCopy = inputs;
  if (!nameCopy)
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
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v27;
        v39 = 2114;
        v40 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFilterNode initWithFilterName:settings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Filter.m", 37, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "filterName != nil");
  }

  v11 = inputsCopy;
  v12 = [settingsCopy objectForKeyedSubscript:@"__gainMapMode"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [settingsCopy objectForKeyedSubscript:@"__gainMapMode"];
    self->_gainMapMode = [v14 integerValue];

    v15 = [settingsCopy mutableCopy];
    [v15 setObject:0 forKeyedSubscript:@"__gainMapMode"];

    settingsCopy = v15;
  }

  v36.receiver = self;
  v36.super_class = NUFilterNode;
  v16 = [(NURenderNode *)&v36 initWithSettings:settingsCopy inputs:v11];
  v17 = [nameCopy copy];
  filterName = v16->_filterName;
  v16->_filterName = v17;

  return v16;
}

- (NUFilterNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
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
      callStackSymbols = [v17 callStackSymbols];
      v20 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v23 callStackSymbols];
    v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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