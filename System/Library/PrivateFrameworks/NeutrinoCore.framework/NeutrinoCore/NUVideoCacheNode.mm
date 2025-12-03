@interface NUVideoCacheNode
- (BOOL)tryLoadPersistentURL:(id)l error:(id *)error;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)newRenderRequestWithOriginalRequest:(id)request error:(id *)error;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)outputSettings:(id *)settings;
- (id)persistentURL;
@end

@implementation NUVideoCacheNode

- (id)newRenderRequestWithOriginalRequest:(id)request error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (!requestCopy)
  {
    v20 = NUAssertLogger_15823();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "originalRequest != nil"];
      *buf = 138543362;
      v38 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_15823();
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

    _NUAssertFailHandler("[NUVideoCacheNode newRenderRequestWithOriginalRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 1244, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "originalRequest != nil");
  }

  v7 = requestCopy;
  temporaryURLPrefix = [(NUCacheNode *)self temporaryURLPrefix];
  v9 = [temporaryURLPrefix URLByAppendingPathExtension:@"mov"];

  v10 = [NUVideoExportRequest alloc];
  composition = [v7 composition];
  v12 = [(NUExportRequest *)v10 initWithComposition:composition destinationURL:v9];

  v13 = [(NUVideoCacheNode *)self outputSettings:error];
  if (v13)
  {
    [(NUVideoExportRequest *)v12 setOutputSettings:v13];
    [(NUVideoExportRequest *)v12 setApplyOrientationAsMetadata:0];
    name = [v7 name];
    if ([name length])
    {
      name2 = [v7 name];
      [(NURenderRequest *)v12 setName:name2];
    }

    else
    {
      [(NURenderRequest *)v12 setName:@"NUVideoCacheNode-new"];
    }

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("NUVideoCacheNode", v17);
    [(NURenderRequest *)v12 setResponseQueue:v18];

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __62__NUVideoCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke;
    v36[3] = &unk_1E810B930;
    v36[4] = self;
    [(NURenderRequest *)v12 setCompletionBlock:v36];
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)persistentURL
{
  persistentURLPrefix = [(NUCacheNode *)self persistentURLPrefix];
  v3 = [persistentURLPrefix URLByAppendingPathExtension:@"mov"];

  return v3;
}

- (id)outputSettings:(id *)settings
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v3;
}

- (BOOL)tryLoadPersistentURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [[NUVideoSourceNode alloc] initWithURL:lCopy identifier:@"cache" options:0];

  v8 = [(NUVideoSourceNode *)v7 load:error];
  if (v8)
  {
    [(NUCacheNode *)self resolveWithSourceNode:v7 error:0];
  }

  return v8;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
  {
    v38 = NUAssertLogger_15823();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v59 = v39;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v41 = NUAssertLogger_15823();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v42)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols = [v46 callStackSymbols];
        v49 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v45;
        v60 = 2114;
        v61 = v49;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoCacheNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 1164, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "error != NULL");
  }

  v10 = stateCopy;
  if ([stateCopy evaluationMode] == 1)
  {
    inputNode = [(NUCacheNode *)self inputNode];
    v12 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
  }

  else
  {
    if ([v10 evaluationMode] != 3)
    {
      v56.receiver = self;
      v56.super_class = NUVideoCacheNode;
      v12 = [(NUCacheNode *)&v56 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
      goto LABEL_20;
    }

    inputNode = [v10 copy];
    [inputNode setEvaluationMode:2];
    v57.receiver = self;
    v57.super_class = NUVideoCacheNode;
    v13 = [(NUCacheNode *)&v57 nodeByReplayingAgainstCache:cacheCopy pipelineState:inputNode error:error];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 resolvedSourceNode:error];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 resolvedNodeWithCachedInputs:MEMORY[0x1E695E0F8] settings:MEMORY[0x1E695E0F8] pipelineState:v10 error:error];
        if (v17)
        {
          inputNode2 = [(NUCacheNode *)self inputNode];
          v19 = [inputNode2 outputImageGeometry:error];

          if (v19)
          {
            scale = [v10 scale];
            v22 = v21;
            renderScale = [v19 renderScale];
            v25 = NUScaleDivide(scale, v22, renderScale, v24);
            v27 = NUScaleDivide(v25, v26, 1, [v14 subsampleFactor]);
            v54 = v28;
            v55 = v27;
            v29 = [NUScaleNode alloc];
            v30 = v19;
            scale2 = [v10 scale];
            v33 = v32;
            sampleMode = [v10 sampleMode];
            v35 = scale2;
            v19 = v30;
            v36 = [(NUScaleNode *)v29 initWithTargetScale:v35 effectiveScale:v33 sampleMode:v55 input:v54, sampleMode, v17];
            -[NURenderNode setEvaluatedForMode:](v36, "setEvaluatedForMode:", [v10 evaluationMode]);
            v12 = [NURenderNode nodeFromCache:v36 cache:cacheCopy];
          }

          else
          {
            [NUError errorWithCode:1 reason:@"failed to get self.inputNode geometry" object:v16 underlyingError:*error];
            *error = v12 = 0;
          }
        }

        else
        {
          [NUError errorWithCode:1 reason:@"Failed to resolve video frame node" object:v16 underlyingError:*error];
          *error = v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_20:

  return v12;
}

- (id)_evaluateImageGeometry:(id *)geometry
{
  v14.receiver = self;
  v14.super_class = NUVideoCacheNode;
  v3 = [(NUCacheNode *)&v14 _evaluateImageGeometry:geometry];
  if (v3)
  {
    v4 = v3;
    v5 = [NUImageGeometry alloc];
    [v4 extent];
    renderScale = [v4 renderScale];
    v8 = v7;
    orientation = [v4 orientation];
    spaceMap = [v4 spaceMap];
    v11 = [(NUImageGeometry *)v5 initWithExtent:&v13 renderScale:renderScale orientation:v8 spaceMap:orientation roundingPolicy:spaceMap, 4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end