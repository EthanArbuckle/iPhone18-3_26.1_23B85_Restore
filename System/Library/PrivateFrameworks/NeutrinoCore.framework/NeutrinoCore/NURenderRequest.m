@interface NURenderRequest
- (BOOL)shouldCoalesceUpdates;
- (NSString)additionalDebugInfo;
- (NUComposition)composition;
- (NURenderRequest)init;
- (NURenderRequest)initWithComposition:(id)a3;
- (NURenderRequest)initWithMedia:(id)a3;
- (NURenderRequest)initWithRequest:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)newRenderJob;
- (id)submitGenericSynchronous:(id *)a3;
- (int64_t)mediaComponentType;
- (void)_commonInit;
- (void)introspectPrepare:(id)a3;
- (void)setShouldCoalesceUpdates:(BOOL)a3;
- (void)setTime:(id *)a3;
- (void)submitGenericConfiguringRequest:(id)a3 completion:(id)a4;
- (void)takePropertiesFromRequest:(id)a3;
@end

@implementation NURenderRequest

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

- (void)introspectPrepare:(id)a3
{
  v4 = a3;
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
  v7 = [v5 newRenderJob];
  [v7 runToPrepareSynchronous];
  v4[2](v4, v7, v10[5]);

  _Block_object_dispose(&v9, 8);
}

void __37__NURenderRequest_introspectPrepare___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = [a2 result:&obj];
  objc_storeStrong((v2 + 40), obj);
}

- (id)submitGenericSynchronous:(id *)a3
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
  v7 = [v4 newRenderJob];
  [v7 runSynchronous];

  objc_autoreleasePoolPop(v6);
  v8 = [v12[5] result:a3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)submitGenericConfiguringRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(NURenderRequest *)self copy];
  [v9 setCompletionBlock:v7];
  [v9 setSubmitTime:NUAbsoluteTime()];
  v10 = voucher_copy_without_importance();
  [v9 setVoucher:v10];

  if (v6)
  {
    v6[2](v6, v9);
  }

  if (+[NUGlobalSettings runNeutrinoSynchronously])
  {
    v11 = [v9 newRenderJob];
    [v11 runSynchronous];
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
      v12 = [v10 callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
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
    v19 = [v16 callStackSymbols];
    v20 = [v19 componentsJoinedByString:@"\n"];
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
      v12 = [v10 callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
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
    v19 = [v16 callStackSymbols];
    v20 = [v19 componentsJoinedByString:@"\n"];
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
  v2 = [(NURenderRequest *)self internalComposition];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)shouldCoalesceUpdates
{
  v2 = [(NURenderRequest *)self renderContext];
  v3 = [v2 shouldCoalesceUpdates];

  return v3;
}

- (void)setShouldCoalesceUpdates:(BOOL)a3
{
  v3 = a3;
  v4 = [(NURenderRequest *)self renderContext];
  [v4 setShouldCoalesceUpdates:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 104), self->_internalComposition);
    objc_storeStrong((v5 + 56), self->_device);
    *(v5 + 40) = self->_sampleMode;
    v6 = [(NSArray *)self->_pipelineFilters copy];
    v7 = *(v5 + 48);
    *(v5 + 48) = v6;

    v8 = [(NURenderRequest *)self name];
    v9 = *(v5 + 64);
    *(v5 + 64) = v8;

    v10 = [(NURenderRequest *)self priority];
    v11 = *(v5 + 80);
    *(v5 + 80) = v10;

    v12 = [(NURenderRequest *)self responseQueue];
    v13 = *(v5 + 88);
    *(v5 + 88) = v12;

    v14 = [(NURenderRequest *)self renderContext];
    v15 = *(v5 + 96);
    *(v5 + 96) = v14;

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

- (void)takePropertiesFromRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 device];
  device = self->_device;
  self->_device = v5;

  self->_sampleMode = [v4 sampleMode];
  v7 = [v4 pipelineFilters];
  pipelineFilters = self->_pipelineFilters;
  self->_pipelineFilters = v7;

  v9 = [v4 priority];
  priority = self->_priority;
  self->_priority = v9;

  v11 = [v4 responseQueue];
  responseQueue = self->_responseQueue;
  self->_responseQueue = v11;

  v13 = [v4 renderContext];
  renderContext = self->_renderContext;
  self->_renderContext = v13;

  if (v4)
  {
    [v4 time];
  }

  else
  {
    v24 = 0uLL;
    v25 = 0;
  }

  *&self->_time.value = v24;
  self->_time.epoch = v25;
  self->_shouldUseLowMemoryMode = [v4 shouldUseLowMemoryMode];
  self->_isOneShot = [v4 isOneShot];
  [v4 submitTime];
  self->_submitTime = v15;
  self->_parentRequestNumber = v4[9];
  v16 = [v4 name];
  v17 = [v16 stringByAppendingFormat:@".%@", objc_opt_class()];
  name = self->_name;
  self->_name = v17;

  v19 = [v4 composition];
  v20 = [v19 copy];
  internalComposition = self->_internalComposition;
  self->_internalComposition = v20;

  v22 = [v4 media];
  media = self->_media;
  self->_media = v22;
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

  v7 = [(NURenderRequest *)self name];
  v8 = [v7 UTF8String];
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create(v8, v9);
  responseQueue = self->_responseQueue;
  self->_responseQueue = v10;

  pipelineFilters = self->_pipelineFilters;
  self->_pipelineFilters = MEMORY[0x1E695E0F0];

  self->_priority = objc_alloc_init(NUPriority);

  MEMORY[0x1EEE66BB8]();
}

- (NURenderRequest)initWithRequest:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v15;
        v27 = 2114;
        v28 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderRequest initWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 63, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "request != nil");
  }

  v5 = v4;
  v24.receiver = self;
  v24.super_class = NURenderRequest;
  v6 = [(NURenderRequest *)&v24 init];
  [(NURenderRequest *)v6 _commonInit];
  [(NURenderRequest *)v6 takePropertiesFromRequest:v5];

  return v6;
}

- (NURenderRequest)initWithMedia:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderRequest initWithMedia:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 50, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "media != nil");
  }

  v5 = v4;
  v25.receiver = self;
  v25.super_class = NURenderRequest;
  v6 = [(NURenderRequest *)&v25 init];
  [(NURenderRequest *)v6 _commonInit];
  media = v6->_media;
  v6->_media = v5;

  return v6;
}

- (NURenderRequest)initWithComposition:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderRequest initWithComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 38, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "composition != nil");
  }

  v5 = v4;
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
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
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
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
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

  v6 = [(NURenderRequest *)self sampleMode];
  if (v6 > 3)
  {
    v7 = @"invalid";
  }

  else
  {
    v7 = off_1E8109968[v6];
  }

  v8 = v7;
  [v3 appendFormat:@"sampleMode = %@\n", v8];

  v9 = [(NURenderRequest *)self pipelineFilters];
  [v3 appendFormat:@"pipelineFilter.count = %d\n", objc_msgSend(v9, "count")];

  v10 = [(NURenderRequest *)self device];
  [v3 appendFormat:@"device = %@\n", v10];

  v11 = [(NURenderRequest *)self priority];
  [v3 appendFormat:@"priority = %@\n", v11];

  if (objc_opt_respondsToSelector())
  {
    v12 = [(NURenderRequest *)self scalePolicy];
    [v3 appendFormat:@"scalePolicy = %@\n", v12];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 appendFormat:@"maxFaceCount = %ld\n", -[NURenderRequest maxFaceCount](self, "maxFaceCount")];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = self;
    v14 = [(NURenderRequest *)v13 dataExtractor];
    [v3 appendFormat:@"dataExtractor = %@\n", v14];

    v15 = [(NURenderRequest *)v13 options];

    if (v15)
    {
      [v3 appendFormat:@"options = %@\n", v15];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = self;
    v17 = [(NURenderRequest *)v16 colorSpace];
    [v3 appendFormat:@"colorSpace = %@\n", v17];

    v18 = [(NURenderRequest *)v16 regionPolicy];
    [v3 appendFormat:@"regionPolicy = %@\n", v18];

    v19 = [(NURenderRequest *)v16 pixelFormat];
    [v3 appendFormat:@"pixelFormat = %@\n", v19];

    v20 = [(NURenderRequest *)v16 tileSize];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", v20, v21];
    [v3 appendFormat:@"tileSize = %@\n", v22];

    v23 = [(NURenderRequest *)v16 borderSize];
    v25 = v24;

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", v23, v25];
    [v3 appendFormat:@"borderSize = %@\n", v26];
  }

  v27 = [v3 copy];

  return v27;
}

@end