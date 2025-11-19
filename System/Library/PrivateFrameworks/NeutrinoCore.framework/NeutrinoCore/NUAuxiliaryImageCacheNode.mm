@interface NUAuxiliaryImageCacheNode
- (BOOL)sourceSupportsAuxiliaryImage;
- (NUAuxiliaryImageCacheNode)initWithInput:(id)a3 auxiliaryImageType:(int64_t)a4;
- (id)evaluateSettings:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)newRenderRequestWithOriginalRequest:(id)a3 error:(id *)a4;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)persistentURL;
- (int64_t)auxiliaryImageType;
- (void)resolveSourceWithPixelBuffer:(__CVBuffer *)a3;
@end

@implementation NUAuxiliaryImageCacheNode

- (void)resolveSourceWithPixelBuffer:(__CVBuffer *)a3
{
  v7 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:a3];
  v4 = [(NUAuxiliaryImageCacheNode *)self persistentURL];
  v5 = [v4 absoluteString];

  v6 = [[NUCISourceNode alloc] initWithImage:v7 identifier:v5 orientation:1];
  [(NUCacheNode *)self resolveWithSourceNode:v6 error:0];
}

- (id)newRenderRequestWithOriginalRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(NUAuxiliaryImageCacheNode *)self auxiliaryImageType];
  if ([(NUAuxiliaryImageCacheNode *)self sourceSupportsAuxiliaryImage])
  {
    v7 = [(NURenderRequest *)[NUAuxiliaryImageRenderRequest alloc] initWithRequest:v5];
    [(NUAuxiliaryImageRenderRequest *)v7 setAuxiliaryImageType:v6];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__NUAuxiliaryImageCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke;
    v13[3] = &unk_1E810B930;
    v13[4] = self;
    v8 = v13;
  }

  else
  {
    if ((v6 - 3) >= 2)
    {
      if (v6 != 9)
      {
        v7 = [(NURenderRequest *)[NUAuxiliaryImageRenderRequest alloc] initWithRequest:v5];
        [(NUAuxiliaryImageRenderRequest *)v7 setAuxiliaryImageType:v6];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __71__NUAuxiliaryImageCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke_3;
        v11[3] = &unk_1E810B930;
        v11[4] = self;
        v8 = v11;
        goto LABEL_9;
      }

      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    v7 = [(NURenderRequest *)[NUVisionSegmentationRequest alloc] initWithRequest:v5];
    [(NUAuxiliaryImageRenderRequest *)v7 setSegmentationType:v9];
    [(NUAuxiliaryImageRenderRequest *)v7 setProduceConfidenceMap:0];
    [(NUAuxiliaryImageRenderRequest *)v7 setVisionSegmentationPolicy:3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__NUAuxiliaryImageCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke_2;
    v12[3] = &unk_1E810B930;
    v12[4] = self;
    v8 = v12;
  }

LABEL_9:
  [(NURenderRequest *)v7 setCompletionBlock:v8];

  return v7;
}

void __71__NUAuxiliaryImageCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = [a2 result:&v7];
  v4 = v7;
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = [v3 auxiliaryImage];
    [v5 resolveSourceWithPixelBuffer:{objc_msgSend(v6, "cvPixelBufferRef")}];
  }

  else
  {
    [v5 resolveWithSourceNode:0 error:v4];
  }
}

void __71__NUAuxiliaryImageCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = [a2 result:&v7];
  v4 = v7;
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = [v3 matteImageBuffer];
    [v5 resolveSourceWithPixelBuffer:{objc_msgSend(v6, "CVPixelBuffer")}];
  }

  else
  {
    [v5 resolveWithSourceNode:0 error:v4];
  }
}

void __71__NUAuxiliaryImageCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = [a2 result:&v7];
  v4 = v7;
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = [v3 auxiliaryImage];
    [v5 resolveSourceWithPixelBuffer:{objc_msgSend(v6, "cvPixelBufferRef")}];
  }

  else
  {
    [v5 resolveWithSourceNode:0 error:v4];
  }
}

- (id)evaluateSettings:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a3 mutableCopy];
  v9 = [v7 auxiliaryImageType];

  if (v9 == [(NUAuxiliaryImageCacheNode *)self auxiliaryImageType])
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"sourceSupportsAuxiliaryImage"];
  }

  return v8;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (+[NUGlobalSettings disableAuxiliaryImageCacheFromSource](NUGlobalSettings, "disableAuxiliaryImageCacheFromSource") || (v10 = [v9 copy], objc_msgSend(v10, "setAuxiliaryImageType:", -[NUAuxiliaryImageCacheNode auxiliaryImageType](self, "auxiliaryImageType")), -[NUCacheNode inputNode](self, "inputNode"), v11 = objc_claimAutoreleasedReturnValue(), v15 = 0, objc_msgSend(v11, "nodeByReplayingAgainstCache:pipelineState:error:", v8, v10, &v15), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, !v12))
  {
    v14.receiver = self;
    v14.super_class = NUAuxiliaryImageCacheNode;
    v12 = [(NUCacheNode *)&v14 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
  }

  return v12;
}

- (BOOL)sourceSupportsAuxiliaryImage
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"sourceSupportsAuxiliaryImage"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int64_t)auxiliaryImageType
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"auxiliaryImageType"];

  if (!v3)
  {
    v6 = NUAssertLogger_31566();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Require a auxImageTypeValue setting"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_31566();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageCacheNode auxiliaryImageType]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUAuxiliaryImageCacheNode.m", 61, @"Require a auxImageTypeValue setting", v18, v19, v20, v21, *v22);
  }

  v4 = [v3 integerValue];

  return v4;
}

- (id)persistentURL
{
  v3 = objc_alloc(MEMORY[0x1E695DFF8]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(NUCacheNode *)self cacheIdentifier];
  v6 = [v4 stringWithFormat:@"x-auxiliary-image-cache-node://%@", v5];
  v7 = [v3 initWithString:v6];

  return v7;
}

- (NUAuxiliaryImageCacheNode)initWithInput:(id)a3 auxiliaryImageType:(int64_t)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"auxiliaryImageType";
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = NUAuxiliaryImageCacheNode;
  v10 = [(NUCacheNode *)&v12 initWithInput:v7 settings:v9];

  return v10;
}

@end