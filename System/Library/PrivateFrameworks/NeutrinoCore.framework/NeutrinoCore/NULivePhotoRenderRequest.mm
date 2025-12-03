@interface NULivePhotoRenderRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)livePhotoRenderResultFromPhotoResponse:(id)response videoResponse:(id)videoResponse propertiesResponse:(id)propertiesResponse error:(id *)error;
- (void)_commonInit;
- (void)submit:(id)submit;
@end

@implementation NULivePhotoRenderRequest

- (id)livePhotoRenderResultFromPhotoResponse:(id)response videoResponse:(id)videoResponse propertiesResponse:(id)propertiesResponse error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  videoResponseCopy = videoResponse;
  propertiesResponseCopy = propertiesResponse;
  if (!error)
  {
    v20 = NUAssertLogger_31796();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_31796();
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
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NULivePhotoRenderRequest livePhotoRenderResultFromPhotoResponse:videoResponse:propertiesResponse:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/LivePhoto/NULivePhotoRenderRequest.m", 118, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != NULL");
  }

  v12 = propertiesResponseCopy;
  v13 = [responseCopy result:error];
  if (v13)
  {
    v14 = [videoResponseCopy result:error];
    if (v14)
    {
      v15 = [v12 result:error];
      if (v15)
      {
        avAsset = [v14 avAsset];
        videoComposition = [v14 videoComposition];
        memset(buf, 0, sizeof(buf));
        properties = [v15 properties];
        v18 = properties;
        if (properties)
        {
          [properties livePhotoKeyFrameTime];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        *error = [NUError errorWithCode:3 reason:@"Failed to extract time for live photo" object:avAsset];
      }
    }
  }

  return 0;
}

- (void)submit:(id)submit
{
  submitCopy = submit;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("NULivePhotoRenderRequest", v4);

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__31886;
  v41[4] = __Block_byref_object_dispose__31887;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__31886;
  v39[4] = __Block_byref_object_dispose__31887;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__31886;
  v37[4] = __Block_byref_object_dispose__31887;
  v38 = 0;
  +[NURenderTransaction begin];
  v6 = [(NURenderRequest *)[NUBufferRenderRequest alloc] initWithRequest:self];
  v7 = MEMORY[0x1E696AEC0];
  name = [(NURenderRequest *)self name];
  v9 = [v7 stringWithFormat:@"%@-stillFrame", name];
  [(NURenderRequest *)v6 setName:v9];

  [(NURenderRequest *)v6 setRenderContext:self->_stillBufferRenderContext];
  scalePolicy = [(NULivePhotoRenderRequest *)self scalePolicy];
  [(NUImageRenderRequest *)v6 setScalePolicy:scalePolicy];

  colorSpace = [(NULivePhotoRenderRequest *)self colorSpace];
  [(NUImageRenderRequest *)v6 setColorSpace:colorSpace];

  [(NURenderRequest *)v6 setResponseQueue:v5];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __35__NULivePhotoRenderRequest_submit___block_invoke;
  v36[3] = &unk_1E810BA48;
  v36[4] = v39;
  [(NUBufferRenderRequest *)v6 submit:v36];
  v12 = [(NURenderRequest *)[NUVideoRenderRequest alloc] initWithRequest:self];
  v13 = MEMORY[0x1E696AEC0];
  name2 = [(NURenderRequest *)self name];
  v15 = [v13 stringWithFormat:@"%@-NUVideoRenderRequest", name2];
  [(NURenderRequest *)v12 setName:v15];

  v16 = [NUPriority alloc];
  priority = [(NURenderRequest *)self priority];
  level = [priority level];
  priority2 = [(NURenderRequest *)self priority];
  [priority2 order];
  v21 = [(NUPriority *)v16 initWithLevel:level order:v20 + 0.00999999978];
  [(NURenderRequest *)v12 setPriority:v21];

  [(NURenderRequest *)v12 setResponseQueue:v5];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __35__NULivePhotoRenderRequest_submit___block_invoke_2;
  v35[3] = &unk_1E810BA48;
  v35[4] = v41;
  [(NUVideoRenderRequest *)v12 submit:v35];
  v22 = [(NURenderRequest *)[NUVideoPropertiesRequest alloc] initWithRequest:self];
  priority3 = [(NURenderRequest *)v12 priority];
  [(NURenderRequest *)v22 setPriority:priority3];

  [(NURenderRequest *)v22 setResponseQueue:v5];
  v24 = MEMORY[0x1E696AEC0];
  name3 = [(NURenderRequest *)self name];
  v26 = [v24 stringWithFormat:@"%@-videoProperties", name3];
  [(NURenderRequest *)v22 setName:v26];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __35__NULivePhotoRenderRequest_submit___block_invoke_3;
  v34[3] = &unk_1E810BA48;
  v34[4] = v37;
  [(NUVideoPropertiesRequest *)v22 submit:v34];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __35__NULivePhotoRenderRequest_submit___block_invoke_4;
  v29[3] = &unk_1E810BA98;
  v32 = v41;
  v33 = v37;
  v31 = v39;
  v29[4] = self;
  v27 = submitCopy;
  v30 = v27;
  [NURenderTransaction commitAndNotifyOnQueue:v5 withBlock:v29];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(v41, 8);
}

void __35__NULivePhotoRenderRequest_submit___block_invoke_4(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40) && *(*(*(a1 + 56) + 8) + 40) && *(*(*(a1 + 64) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v14 = 0;
    v3 = [v2 livePhotoRenderResultFromPhotoResponse:? videoResponse:? propertiesResponse:? error:?];
    v4 = v14;
    if (v3)
    {
      v5 = [[NUResponse alloc] initWithResult:v3];
    }

    else
    {
      v6 = [*(a1 + 32) copy];
      v7 = [NUError errorWithCode:1 reason:@"Failed to render live photo" object:v6 underlyingError:v4];

      v5 = [[NUResponse alloc] initWithError:v7];
    }

    v8 = [*(a1 + 32) responseQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__NULivePhotoRenderRequest_submit___block_invoke_5;
    block[3] = &unk_1E810BA70;
    v9 = *(a1 + 40);
    v12 = v5;
    v13 = v9;
    v10 = v5;
    dispatch_async(v8, block);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NULivePhotoRenderRequest;
  v4 = [(NURenderRequest *)&v6 copyWithZone:zone];
  [v4 setColorSpace:self->_colorSpace];
  [v4 setScalePolicy:self->_scalePolicy];
  objc_storeStrong(v4 + 20, self->_stillBufferRenderContext);
  return v4;
}

- (void)_commonInit
{
  v9.receiver = self;
  v9.super_class = NULivePhotoRenderRequest;
  [(NURenderRequest *)&v9 _commonInit];
  v3 = +[NUColorSpace sRGBColorSpace];
  colorSpace = self->_colorSpace;
  self->_colorSpace = v3;

  v5 = +[NUFixedScalePolicy oneToOneScalePolicy];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = v5;

  v7 = [[NURenderContext alloc] initWithPurpose:1];
  stillBufferRenderContext = self->_stillBufferRenderContext;
  self->_stillBufferRenderContext = v7;
}

@end