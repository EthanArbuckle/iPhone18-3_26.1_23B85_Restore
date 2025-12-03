@interface NUStyleTransferLearnNode
- (id)_evaluateImage:(id *)image;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NUStyleTransferLearnNode

- (id)_evaluateImage:(id *)image
{
  v63 = *MEMORY[0x1E69E9840];
  thumbnailNode = [(NUStyleTransferNode *)self thumbnailNode];
  if (!thumbnailNode)
  {
    v22 = NUAssertLogger_30110();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing input thumbnail node"];
      *buf = 138543362;
      v60 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_30110();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v36;
        v61 = 2114;
        v62 = v40;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferLearnNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1254, @"Missing input thumbnail node", v41, v42, v43, v44, v54);
  }

  v6 = thumbnailNode;
  targetNode = [(NUStyleTransferNode *)self targetNode];
  if (!targetNode)
  {
    v29 = NUAssertLogger_30110();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing output thumbnail node"];
      *buf = 138543362;
      v60 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_30110();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols3 = [v46 callStackSymbols];
        v49 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v45;
        v61 = 2114;
        v62 = v49;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUStyleTransferLearnNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1257, @"Missing output thumbnail node", v50, v51, v52, v53, v54);
  }

  v8 = targetNode;
  v58 = 0;
  v9 = [v6 outputImage:&v58];
  v10 = v58;
  if (v9)
  {
    v57 = 0;
    v11 = [v8 outputImage:&v57];
    v12 = v57;

    if (v11)
    {
      configuration = [(NUStyleTransferNode *)self configuration];
      v14 = [configuration mutableCopy];

      [v14 setObject:&unk_1F3F828C0 forKeyedSubscript:@"useFloat16"];
      tuningParameters = [(NUStyleTransferNode *)self tuningParameters];
      targetColorSpace = [(NUStyleTransferNode *)self targetColorSpace];
      v56 = 0;
      v17 = [_NUStyleTransferLearnProcessor learnStyleFromInputThumbnail:v9 targetThumbnail:v11 colorSpace:targetColorSpace configuration:v14 tuningParameters:tuningParameters error:&v56];
      v55 = v56;

      if ([(NUStyleTransferNode *)self shouldCache])
      {
        v18 = [[NUProcessorCache alloc] initWithImage:v17];
        [(NUProcessorCache *)v18 setLabel:@"NUStyleTransferLearnNode.Provider"];
        v19 = +[NUPixelFormat R16h];
        [(NUProcessorCache *)v18 setPixelFormat:v19];

        outputImage = [(NUProcessorCache *)v18 outputImage];

        v17 = outputImage;
      }

      v12 = v55;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Invalid target thumbnail" object:v6 underlyingError:v12];
      *image = v17 = 0;
    }

    v10 = v12;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Invalid input thumbnail" object:v6 underlyingError:v10];
    *image = v17 = 0;
  }

  return v17;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = NUStyleTransferLearnNode;
  v6 = [(NUStyleTransferNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if ([stateCopy auxiliaryImageType] != 1)
  {
    v23 = NUAssertLogger_30110();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot be applied to aux images", objc_opt_class()];
      *buf = 138543362;
      v59 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_30110();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols = [v38 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v37;
        v60 = 2114;
        v61 = v41;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v42 = objc_opt_class();
    _NUAssertFailHandler("[NUStyleTransferLearnNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1193, @"%@ cannot be applied to aux images", v43, v44, v45, v46, v42);
  }

  if ([stateCopy evaluationMode] == 2)
  {
    v30 = NUAssertLogger_30110();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot be evaluated for video", objc_opt_class()];
      *buf = 138543362;
      v59 = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_30110();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        callStackSymbols3 = [v48 callStackSymbols];
        v51 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v47;
        v60 = 2114;
        v61 = v51;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v52 = objc_opt_class();
    _NUAssertFailHandler("[NUStyleTransferLearnNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 1194, @"%@ cannot be evaluated for video", v53, v54, v55, v56, v52);
  }

  if ([stateCopy evaluationMode])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v11 = [NUStyleTransferThumbnailNode alloc];
    inputNode = [(NUStyleTransferNode *)self inputNode];
    settings = [(NURenderNode *)self settings];
    v14 = [(NUStyleTransferThumbnailNode *)v11 initWithInput:inputNode settings:settings];

    v15 = [(NUStyleTransferThumbnailNode *)v14 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

    if (v15)
    {
      [v10 setObject:v15 forKeyedSubscript:@"thumbnail"];
      v16 = [NUStyleTransferThumbnailNode alloc];
      targetNode = [(NUStyleTransferNode *)self targetNode];
      settings2 = [(NURenderNode *)self settings];
      v19 = [(NUStyleTransferThumbnailNode *)v16 initWithInput:targetNode settings:settings2];

      v20 = [(NUStyleTransferThumbnailNode *)v19 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

      if (v20)
      {
        [v10 setObject:v20 forKeyedSubscript:@"target"];
        v21 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v10 cache:cacheCopy pipelineState:stateCopy error:error];
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v57.receiver = self;
    v57.super_class = NUStyleTransferLearnNode;
    v21 = [(NUStyleTransferNode *)&v57 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  }

  return v21;
}

@end