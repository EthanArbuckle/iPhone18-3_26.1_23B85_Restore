@interface NUMemoryCacheNode
- (id)evaluateSettings:(id)settings pipelineState:(id)state error:(id *)error;
- (id)newRenderRequestWithOriginalRequest:(id)request error:(id *)error;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)persistentURL;
- (void)resolveSourceWithResponse:(id)response;
@end

@implementation NUMemoryCacheNode

- (void)resolveSourceWithResponse:(id)response
{
  v35 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (!responseCopy)
  {
    v14 = NUAssertLogger_15823();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "response != nil"];
      *buf = 138543362;
      v32 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_15823();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v21;
        v33 = 2114;
        v34 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMemoryCacheNode resolveSourceWithResponse:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 1096, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "response != nil");
  }

  v5 = responseCopy;
  v30 = 0;
  v6 = [responseCopy result:&v30];
  v7 = v30;
  if (v6)
  {
    image = [v6 image];
    v9 = [NUImageFactory newCIImageFromBufferImage:image];
    persistentURL = [(NUMemoryCacheNode *)self persistentURL];
    absoluteString = [persistentURL absoluteString];

    v12 = [[NUCISourceNode alloc] initWithImage:v9 identifier:absoluteString orientation:1];
    [(NUCacheNode *)self resolveWithSourceNode:v12 error:0];
    cachedImage = self->_cachedImage;
    self->_cachedImage = image;
  }

  else
  {
    [(NUCacheNode *)self resolveWithSourceNode:0 error:v7];
  }
}

- (id)newRenderRequestWithOriginalRequest:(id)request error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (!requestCopy)
  {
    v22 = NUAssertLogger_15823();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "originalRequest != nil"];
      *buf = 138543362;
      v40 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_15823();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v29;
        v41 = 2114;
        v42 = v33;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMemoryCacheNode newRenderRequestWithOriginalRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 1074, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "originalRequest != nil");
  }

  v6 = requestCopy;
  auxiliaryImageType = [(NUCacheNode *)self auxiliaryImageType];
  settings = [(NURenderNode *)self settings];
  v9 = [settings objectForKeyedSubscript:@"pixelFormat"];

  settings2 = [(NURenderNode *)self settings];
  v11 = [settings2 objectForKeyedSubscript:@"colorSpace"];

  v12 = [NUBufferRenderRequest alloc];
  composition = [v6 composition];
  v14 = [(NURenderRequest *)v12 initWithComposition:composition];

  [(NUImageRenderRequest *)v14 setColorSpace:v11];
  [(NUImageRenderRequest *)v14 setPixelFormat:v9];
  [(NUImageRenderRequest *)v14 setAuxiliaryImageType:auxiliaryImageType];
  v15 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  name = [v6 name];
  v18 = [v15 stringWithFormat:@"%@:%p-%@", v16, self, name];
  [(NURenderRequest *)v14 setName:v18];

  v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v20 = dispatch_queue_create("NUMemoryCacheNode", v19);
  [(NURenderRequest *)v14 setResponseQueue:v20];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __63__NUMemoryCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke;
  v38[3] = &unk_1E810B930;
  v38[4] = self;
  [(NURenderRequest *)v14 setCompletionBlock:v38];

  return v14;
}

- (id)evaluateSettings:(id)settings pipelineState:(id)state error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  stateCopy = state;
  if (!error)
  {
    v28 = NUAssertLogger_15823();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v47 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_15823();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v35;
        v48 = 2114;
        v49 = v39;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMemoryCacheNode evaluateSettings:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 1010, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v10 = stateCopy;
  v45.receiver = self;
  v45.super_class = NUMemoryCacheNode;
  v11 = [(NUCacheNode *)&v45 evaluateSettings:settingsCopy pipelineState:stateCopy error:error];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v17 = 0;
    goto LABEL_22;
  }

  auxiliaryImageType = [v10 auxiliaryImageType];
  v14 = [v12 objectForKeyedSubscript:@"pixelFormat"];
  v15 = [v12 objectForKeyedSubscript:@"colorSpace"];
  v16 = v15;
  if (auxiliaryImageType > 9)
  {
    goto LABEL_29;
  }

  if (((1 << auxiliaryImageType) & 0x378) == 0)
  {
    if (auxiliaryImageType == 2)
    {
      if (!v14)
      {
        v14 = +[NUPixelFormat R16h];
      }

      if (v16)
      {
        goto LABEL_20;
      }

      v25 = +[NUColorSpace extendedLinearGrayColorSpace];
      goto LABEL_19;
    }

    if (auxiliaryImageType == 7)
    {
      inputNode = [(NUCacheNode *)self inputNode];
      v44 = 0;
      v19 = [inputNode imageProperties:&v44];
      v20 = v44;

      if (!v19)
      {
        inputNode2 = [(NUCacheNode *)self inputNode];
        *error = [NUError errorWithCode:1 reason:@"Failed to get image properties" object:inputNode2 underlyingError:v20];

        v17 = 0;
        goto LABEL_21;
      }

      v21 = [v19 auxiliaryImagePropertiesForType:7];
      pixelFormat = [v21 pixelFormat];
      numberOfComponents = [pixelFormat numberOfComponents];

      if (numberOfComponents == 1)
      {
        if (!v14)
        {
          v14 = +[NUPixelFormat R16h];
        }

        if (v16)
        {
          goto LABEL_39;
        }

        v24 = +[NUColorSpace linearGrayColorSpace];
      }

      else
      {
        if (!v14)
        {
          v14 = +[NUPixelFormat RGBAh];
        }

        if (v16)
        {
          goto LABEL_39;
        }

        v24 = +[NUColorSpace extendedSRGBLinearColorSpace];
      }

      v16 = v24;
LABEL_39:

      goto LABEL_20;
    }

LABEL_29:
    if (!v14)
    {
      v14 = +[NUPixelFormat RGBAh];
    }

    if (v16)
    {
      goto LABEL_20;
    }

    v25 = +[NUColorSpace workingColorSpace];
    goto LABEL_19;
  }

  if (v14)
  {
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = +[NUPixelFormat R8];
    if (!v16)
    {
LABEL_18:
      v25 = +[NUColorSpace linearGrayColorSpace];
LABEL_19:
      v16 = v25;
    }
  }

LABEL_20:
  [v12 setObject:v14 forKeyedSubscript:@"pixelFormat"];
  [v12 setObject:v16 forKeyedSubscript:@"colorSpace"];
  v17 = v12;
LABEL_21:

LABEL_22:

  return v17;
}

- (id)persistentURL
{
  v3 = objc_alloc(MEMORY[0x1E695DFF8]);
  v4 = MEMORY[0x1E696AEC0];
  cacheIdentifier = [(NUCacheNode *)self cacheIdentifier];
  v6 = [v4 stringWithFormat:@"x-memory-cache-node://%@", cacheIdentifier];
  v7 = [v3 initWithString:v6];

  return v7;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
  {
    v31 = NUAssertLogger_15823();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v50 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_15823();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols = [v39 callStackSymbols];
        v42 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v38;
        v51 = 2114;
        v52 = v42;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMemoryCacheNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 952, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v10 = stateCopy;
  if ([stateCopy evaluationMode] == 2 || objc_msgSend(v10, "evaluationMode") == 3)
  {
    goto LABEL_4;
  }

  if ([v10 evaluationMode] == 1 || !objc_msgSend(v10, "evaluationMode"))
  {
    auxiliaryImageType = [(NUCacheNode *)self auxiliaryImageType];
    if (!auxiliaryImageType || [v10 auxiliaryImageType] == auxiliaryImageType)
    {
      v48.receiver = self;
      v48.super_class = NUMemoryCacheNode;
      inputNode = [(NUCacheNode *)&v48 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
      if (inputNode)
      {
        v47 = 0;
        v15 = [(NUCacheNode *)self inputGeometryForPipelineState:v10 error:&v47];
        v16 = v47;
        if (v15)
        {
          renderScale = [v15 renderScale];
          v19 = NUScaleMultiply(renderScale, v18, 1, [inputNode subsampleFactor]);
          v21 = v20;
          scale = [v10 scale];
          v24 = NUScaleDivide(scale, v23, v19, v21);
          v26 = v25;
          v27 = [NUScaleNode alloc];
          scale2 = [v10 scale];
          v30 = -[NUScaleNode initWithTargetScale:effectiveScale:sampleMode:input:](v27, "initWithTargetScale:effectiveScale:sampleMode:input:", scale2, v29, v24, v26, [v10 sampleMode], inputNode);
          v12 = [NURenderNode nodeFromCache:v30 cache:cacheCopy];

          [v12 setEvaluatedForMode:{objc_msgSend(v10, "evaluationMode")}];
        }

        else
        {
          [NUError errorWithCode:1 reason:@"failed to get input geometry" object:self underlyingError:v16];
          *error = v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_5;
    }

LABEL_4:
    inputNode = [(NUCacheNode *)self inputNode];
    v12 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
LABEL_5:

    goto LABEL_6;
  }

  [NUError invalidError:@"Cannot evaluate cache node" object:self];
  *error = v12 = 0;
LABEL_6:

  return v12;
}

@end