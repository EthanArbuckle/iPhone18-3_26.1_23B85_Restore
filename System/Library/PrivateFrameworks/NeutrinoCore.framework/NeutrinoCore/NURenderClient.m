@interface NURenderClient
- (NURenderClient)init;
- (NURenderClient)initWithName:(id)a3;
- (NURenderClient)initWithName:(id)a3 responseQueue:(id)a4;
- (void)cancel;
- (void)submitGenericRequest:(id)a3;
- (void)submitGenericRequest:(id)a3 completion:(id)a4;
@end

@implementation NURenderClient

- (void)submitGenericRequest:(id)a3
{
  v4 = a3;
  v5 = [(NURenderClient *)self genericCompletionBlock];
  [(NURenderClient *)self submitGenericRequest:v4 completion:v5];
}

- (void)submitGenericRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 copy];
  v9 = [v7 name];

  [v8 setName:v9];
  v10 = [(NURenderClient *)self priority];
  [v8 setPriority:v10];

  v11 = [(NURenderClient *)self responseQueue];
  [v8 setResponseQueue:v11];

  v12 = [(NURenderClient *)self renderContext];
  [v8 setRenderContext:v12];

  [v8 setCompletionBlock:v6];
  [v8 setShouldCoalesceUpdates:{-[NURenderClient shouldCoalesceUpdates](self, "shouldCoalesceUpdates")}];
  [v8 setSubmitTime:NUAbsoluteTime()];
  v13 = voucher_copy_without_importance();
  [v8 setVoucher:v13];

  if (+[NUGlobalSettings runNeutrinoSynchronously])
  {
    v14 = [v8 newRenderJob];
    [v14 runSynchronous];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__NURenderClient_submitGenericRequest_completion___block_invoke;
    v15[3] = &unk_1E8109E80;
    v16 = v8;
    [NURenderTransaction withCurrentTransaction:v15];
  }
}

- (void)cancel
{
  v4 = +[NUScheduler sharedScheduler];
  v3 = [(NURenderClient *)self renderContext];
  [v4 cancelJobsForRenderContext:v3];
}

- (NURenderClient)init
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
  _NUAssertFailHandler("[NURenderClient init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 276, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

- (NURenderClient)initWithName:(id)a3 responseQueue:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v19 = NUAssertLogger_7029();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v53 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_7029();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v33;
        v54 = 2114;
        v55 = v37;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderClient initWithName:responseQueue:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 261, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "name != nil");
  }

  v8 = v7;
  if (!v7)
  {
    v26 = NUAssertLogger_7029();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "responseQueue != nil"];
      *buf = 138543362;
      v53 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_7029();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        v45 = [v43 callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v42;
        v54 = 2114;
        v55 = v46;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderClient initWithName:responseQueue:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderRequest.m", 262, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "responseQueue != nil");
  }

  v51.receiver = self;
  v51.super_class = NURenderClient;
  v9 = [(NURenderClient *)&v51 init];
  name = v9->_name;
  v9->_name = v6;
  v11 = v6;

  v12 = objc_alloc_init(NUPriority);
  priority = v9->_priority;
  v9->_priority = v12;

  responseQueue = v9->_responseQueue;
  v9->_responseQueue = v8;
  v15 = v8;

  v16 = objc_alloc_init(NURenderContext);
  renderContext = v9->_renderContext;
  v9->_renderContext = v16;

  return v9;
}

- (NURenderClient)initWithName:(id)a3
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = a3;
  v7 = dispatch_queue_create("NURenderClient.response", v5);

  v8 = [(NURenderClient *)self initWithName:v6 responseQueue:v7];
  return v8;
}

@end