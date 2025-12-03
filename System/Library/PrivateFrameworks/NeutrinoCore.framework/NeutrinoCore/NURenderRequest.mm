@interface NURenderRequest
- (BOOL)shouldCoalesceUpdates;
- (NSString)additionalDebugInfo;
- (NUComposition)composition;
- (NURenderRequest)init;
- (NURenderRequest)initWithComposition:(id)composition;
- (NURenderRequest)initWithMedia:(id)media;
- (NURenderRequest)initWithRequest:(id)request;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)newRenderJob;
- (id)submitGenericSynchronous:(id *)synchronous;
- (int64_t)mediaComponentType;
- (void)_commonInit;
- (void)introspectPrepare:(id)prepare;
- (void)setShouldCoalesceUpdates:(BOOL)updates;
- (void)setTime:(id *)time;
- (void)submitGenericConfiguringRequest:(id)request completion:(id)completion;
- (void)takePropertiesFromRequest:(id)request;
@end

@implementation NURenderRequest

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

- (void)introspectPrepare:(id)prepare
{
  prepareCopy = prepare;
  v5 = [(NURenderRequest *)self copy];
  [v5 setSubmitTime:NUAbsoluteTime()];
  v6 = voucher_copy_without_importance();
  [v5 setVoucher:v6];

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6984;
  v13 = __Block_byref_object_dispose__6985;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__NURenderRequest_introspectPrepare___block_invoke;
  v8[3] = &unk_1E810BA48;
  v8[4] = &v9;
  [v5 setCompletionBlock:v8];
  newRenderJob = [v5 newRenderJob];
  [newRenderJob runToPrepareSynchronous];
  prepareCopy[2](prepareCopy, newRenderJob, v10[5]);

  _Block_object_dispose(&v9, 8);
}

void __37__NURenderRequest_introspectPrepare___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = [a2 result:&obj];
  objc_storeStrong((v2 + 40), obj);
}

- (id)submitGenericSynchronous:(id *)synchronous
{
  v4 = [(NURenderRequest *)self copy];
  [v4 setSubmitTime:NUAbsoluteTime()];
  v5 = voucher_copy_without_importance();
  [v4 setVoucher:v5];

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6984;
  v15 = __Block_byref_object_dispose__6985;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__NURenderRequest_submitGenericSynchronous___block_invoke;
  v10[3] = &unk_1E810BA48;
  v10[4] = &v11;
  [v4 setCompletionBlock:v10];
  v6 = objc_autoreleasePoolPush();
  newRenderJob = [v4 newRenderJob];
  [newRenderJob runSynchronous];

  objc_autoreleasePoolPop(v6);
  v8 = [v12[5] result:synchronous];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)submitGenericConfiguringRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  v9 = [(NURenderRequest *)self copy];
  [v9 setCompletionBlock:completionCopy];
  [v9 setSubmitTime:NUAbsoluteTime()];
  v10 = voucher_copy_without_importance();
  [v9 setVoucher:v10];

  if (requestCopy)
  {
    requestCopy[2](requestCopy, v9);
  }

  if (+[NUGlobalSettings runNeutrinoSynchronously])
  {
    newRenderJob = [v9 newRenderJob];
    [newRenderJob runSynchronous];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__NURenderRequest_submitGenericConfiguringRequest_completion___block_invoke;
    v12[3] = &unk_1E8109E80;
    v13 = v9;
    [NURenderTransaction withCurrentTransaction:v12];
  }

  objc_autoreleasePoolPop(v8);
}

- (int64_t)mediaComponentType
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_6990);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_6990);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_6990);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      callStackSymbols = [v10 callStackSymbols];
      v13 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    callStackSymbols2 = [v16 callStackSymbols];
    v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NURenderRequest mediaComponentType]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 169, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (id)newRenderJob
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_6990);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_6990);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_6990);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      callStackSymbols = [v10 callStackSymbols];
      v13 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    callStackSymbols2 = [v16 callStackSymbols];
    v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NURenderRequest newRenderJob]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 164, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = self->_name;
  requestNumber = self->_requestNumber;
  parentRequestNumber = self->_parentRequestNumber;
  if (parentRequestNumber)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" parent #: %lld", self->_parentRequestNumber];
  }

  else
  {
    v8 = &stru_1F3F4BA98;
  }

  copiedFromRequestNumber = self->_copiedFromRequestNumber;
  if (copiedFromRequestNumber)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" copy-of #: %lld", self->_copiedFromRequestNumber];
  }

  else
  {
    v10 = &stru_1F3F4BA98;
  }

  v11 = [v3 stringWithFormat:@"<%@:%p %@> request #: %lld%@%@ composition: %@ media: %@ device: %@ filters: %@", v4, self, name, requestNumber, v8, v10, self->_internalComposition, self->_media, self->_device, self->_pipelineFilters];
  if (copiedFromRequestNumber)
  {
  }

  if (parentRequestNumber)
  {
  }

  return v11;
}

- (NUComposition)composition
{
  internalComposition = [(NURenderRequest *)self internalComposition];
  v3 = [internalComposition copy];

  return v3;
}

- (BOOL)shouldCoalesceUpdates
{
  renderContext = [(NURenderRequest *)self renderContext];
  shouldCoalesceUpdates = [renderContext shouldCoalesceUpdates];

  return shouldCoalesceUpdates;
}

- (void)setShouldCoalesceUpdates:(BOOL)updates
{
  updatesCopy = updates;
  renderContext = [(NURenderRequest *)self renderContext];
  [renderContext setShouldCoalesceUpdates:updatesCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 104), self->_internalComposition);
    objc_storeStrong((v5 + 56), self->_device);
    *(v5 + 40) = self->_sampleMode;
    v6 = [(NSArray *)self->_pipelineFilters copy];
    v7 = *(v5 + 48);
    *(v5 + 48) = v6;

    name = [(NURenderRequest *)self name];
    v9 = *(v5 + 64);
    *(v5 + 64) = name;

    priority = [(NURenderRequest *)self priority];
    v11 = *(v5 + 80);
    *(v5 + 80) = priority;

    responseQueue = [(NURenderRequest *)self responseQueue];
    v13 = *(v5 + 88);
    *(v5 + 88) = responseQueue;

    renderContext = [(NURenderRequest *)self renderContext];
    v15 = *(v5 + 96);
    *(v5 + 96) = renderContext;

    v16 = *&self->_time.value;
    *(v5 + 152) = self->_time.epoch;
    *(v5 + 136) = v16;
    objc_storeStrong((v5 + 32), self->_media);
    *(v5 + 72) = atomic_fetch_add(&NURenderRequestGlobalCounter, 1uLL);
    *(v5 + 16) = self->_parentRequestNumber;
    copiedFromRequestNumber = self->_copiedFromRequestNumber;
    if (!copiedFromRequestNumber)
    {
      copiedFromRequestNumber = self->_requestNumber;
    }

    *(v5 + 8) = copiedFromRequestNumber;
    *(v5 + 24) = self->_shouldUseLowMemoryMode;
    *(v5 + 25) = self->_isOneShot;
  }

  return v5;
}

- (void)takePropertiesFromRequest:(id)request
{
  requestCopy = request;
  device = [requestCopy device];
  device = self->_device;
  self->_device = device;

  self->_sampleMode = [requestCopy sampleMode];
  pipelineFilters = [requestCopy pipelineFilters];
  pipelineFilters = self->_pipelineFilters;
  self->_pipelineFilters = pipelineFilters;

  priority = [requestCopy priority];
  priority = self->_priority;
  self->_priority = priority;

  responseQueue = [requestCopy responseQueue];
  responseQueue = self->_responseQueue;
  self->_responseQueue = responseQueue;

  renderContext = [requestCopy renderContext];
  renderContext = self->_renderContext;
  self->_renderContext = renderContext;

  if (requestCopy)
  {
    [requestCopy time];
  }

  else
  {
    v24 = 0uLL;
    v25 = 0;
  }

  *&self->_time.value = v24;
  self->_time.epoch = v25;
  self->_shouldUseLowMemoryMode = [requestCopy shouldUseLowMemoryMode];
  self->_isOneShot = [requestCopy isOneShot];
  [requestCopy submitTime];
  self->_submitTime = v15;
  self->_parentRequestNumber = requestCopy[9];
  name = [requestCopy name];
  v17 = [name stringByAppendingFormat:@".%@", objc_opt_class()];
  name = self->_name;
  self->_name = v17;

  composition = [requestCopy composition];
  v20 = [composition copy];
  internalComposition = self->_internalComposition;
  self->_internalComposition = v20;

  media = [requestCopy media];
  media = self->_media;
  self->_media = media;
}

- (void)_commonInit
{
  self->_requestNumber = atomic_fetch_add(&NURenderRequestGlobalCounter, 1uLL);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lld", objc_opt_class(), self->_requestNumber];
  name = self->_name;
  self->_name = v3;

  v5 = objc_alloc_init(NURenderContext);
  renderContext = self->_renderContext;
  self->_renderContext = v5;

  name = [(NURenderRequest *)self name];
  uTF8String = [name UTF8String];
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create(uTF8String, v9);
  responseQueue = self->_responseQueue;
  self->_responseQueue = v10;

  pipelineFilters = self->_pipelineFilters;
  self->_pipelineFilters = MEMORY[0x1E695E0F0];

  self->_priority = objc_alloc_init(NUPriority);

  MEMORY[0x1EEE66BB8]();
}

- (NURenderRequest)initWithRequest:(id)request
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (!requestCopy)
  {
    v8 = NUAssertLogger_7029();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "request != nil"];
      *buf = 138543362;
      v26 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_7029();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v15;
        v27 = 2114;
        v28 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderRequest initWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 63, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "request != nil");
  }

  v5 = requestCopy;
  v24.receiver = self;
  v24.super_class = NURenderRequest;
  v6 = [(NURenderRequest *)&v24 init];
  [(NURenderRequest *)v6 _commonInit];
  [(NURenderRequest *)v6 takePropertiesFromRequest:v5];

  return v6;
}

- (NURenderRequest)initWithMedia:(id)media
{
  v30 = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  if (!mediaCopy)
  {
    v9 = NUAssertLogger_7029();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "media != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_7029();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderRequest initWithMedia:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 50, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "media != nil");
  }

  v5 = mediaCopy;
  v25.receiver = self;
  v25.super_class = NURenderRequest;
  v6 = [(NURenderRequest *)&v25 init];
  [(NURenderRequest *)v6 _commonInit];
  media = v6->_media;
  v6->_media = v5;

  return v6;
}

- (NURenderRequest)initWithComposition:(id)composition
{
  v31 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!compositionCopy)
  {
    v10 = NUAssertLogger_7029();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_7029();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderRequest initWithComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 38, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "composition != nil");
  }

  v5 = compositionCopy;
  v26.receiver = self;
  v26.super_class = NURenderRequest;
  v6 = [(NURenderRequest *)&v26 init];
  [(NURenderRequest *)v6 _commonInit];
  v7 = [v5 copy];
  internalComposition = v6->_internalComposition;
  v6->_internalComposition = v7;

  return v6;
}

- (NURenderRequest)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_6990);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_6990);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_6990);
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
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NURenderRequest init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 33, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

- (NSString)additionalDebugInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"Request Class = %@\n", v5];

  sampleMode = [(NURenderRequest *)self sampleMode];
  if (sampleMode > 3)
  {
    v7 = @"invalid";
  }

  else
  {
    v7 = off_1E8109968[sampleMode];
  }

  v8 = v7;
  [v3 appendFormat:@"sampleMode = %@\n", v8];

  pipelineFilters = [(NURenderRequest *)self pipelineFilters];
  [v3 appendFormat:@"pipelineFilter.count = %d\n", objc_msgSend(pipelineFilters, "count")];

  device = [(NURenderRequest *)self device];
  [v3 appendFormat:@"device = %@\n", device];

  priority = [(NURenderRequest *)self priority];
  [v3 appendFormat:@"priority = %@\n", priority];

  if (objc_opt_respondsToSelector())
  {
    scalePolicy = [(NURenderRequest *)self scalePolicy];
    [v3 appendFormat:@"scalePolicy = %@\n", scalePolicy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 appendFormat:@"maxFaceCount = %ld\n", -[NURenderRequest maxFaceCount](self, "maxFaceCount")];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    dataExtractor = [(NURenderRequest *)selfCopy dataExtractor];
    [v3 appendFormat:@"dataExtractor = %@\n", dataExtractor];

    options = [(NURenderRequest *)selfCopy options];

    if (options)
    {
      [v3 appendFormat:@"options = %@\n", options];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    colorSpace = [(NURenderRequest *)selfCopy2 colorSpace];
    [v3 appendFormat:@"colorSpace = %@\n", colorSpace];

    regionPolicy = [(NURenderRequest *)selfCopy2 regionPolicy];
    [v3 appendFormat:@"regionPolicy = %@\n", regionPolicy];

    pixelFormat = [(NURenderRequest *)selfCopy2 pixelFormat];
    [v3 appendFormat:@"pixelFormat = %@\n", pixelFormat];

    tileSize = [(NURenderRequest *)selfCopy2 tileSize];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", tileSize, v21];
    [v3 appendFormat:@"tileSize = %@\n", v22];

    borderSize = [(NURenderRequest *)selfCopy2 borderSize];
    v25 = v24;

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", borderSize, v25];
    [v3 appendFormat:@"borderSize = %@\n", v26];
  }

  v27 = [v3 copy];

  return v27;
}

@end