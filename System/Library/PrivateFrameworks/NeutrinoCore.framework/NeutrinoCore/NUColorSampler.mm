@interface NUColorSampler
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time;
- (NUColorSampler)initWithComposition:(id)a3 responseQueue:(id)a4;
- (void)cancel;
- (void)configureRequest:(id)a3 forSamplingAtPoint:(id)a4;
- (void)sampleColorAt:(id)a3 completion:(id)a4;
- (void)setName:(id)a3;
- (void)setShouldCoalesceUpdates:(BOOL)a3;
@end

@implementation NUColorSampler

- (void)cancel
{
  v2 = [(NURenderRequest *)self->_request renderContext];
  [v2 cancelAllRequests];
}

- (void)configureRequest:(id)a3 forSamplingAtPoint:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = +[NUFixedScalePolicy oneToOneScalePolicy];
  [v7 setScalePolicy:v8];

  [v7 setSampleMode:2];
  [v7 setColorSpace:self->_colorSpace];
  [v7 setResponseQueue:self->_responseQueue];
  sampleRadius = self->_sampleRadius;
  v12[0] = var0 - sampleRadius;
  v12[1] = var1 - sampleRadius;
  v13 = (2 * sampleRadius) | 1;
  v14 = v13;
  v10 = [(NUFixedRegionPolicy *)[NUFixedUpRegionPolicy alloc] initWithRect:v12];
  [v7 setRegionPolicy:v10];

  v11 = [(NUColorSampler *)self _pipelineFilters];
  [v7 setPipelineFilters:v11];
}

- (void)setShouldCoalesceUpdates:(BOOL)a3
{
  v3 = a3;
  v4 = [(NUColorSampler *)self request];
  [v4 setShouldCoalesceUpdates:v3];
}

- (void)sampleColorAt:(id)a3 completion:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v35 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!v7)
  {
    v11 = NUAssertLogger_27696();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completionBlock != nil"];
      *buf = 138543362;
      v32 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_27696();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v18;
        v33 = 2114;
        v34 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUColorSampler sampleColorAt:completion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Sampler/NUColorSampler.m", 72, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "completionBlock != nil");
  }

  v8 = v7;
  [(NUColorSampler *)self configureRequest:self->_request forSamplingAtPoint:var0, var1];
  request = self->_request;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __43__NUColorSampler_sampleColorAt_completion___block_invoke;
  v27[3] = &unk_1E810B378;
  v29 = var0;
  v30 = var1;
  v28 = v8;
  v10 = v8;
  [(NUImageDataRequest *)request submit:v27];
}

void __43__NUColorSampler_sampleColorAt_completion___block_invoke(void *a1, void *a2)
{
  v9 = 0;
  v3 = [a2 result:&v9];
  v4 = v9;
  v5 = [v3 data];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"color"];

    v7 = objc_alloc_init(_NUColorSamplerResult);
    [(_NUColorSamplerResult *)v7 setColor:v6];
    [(_NUColorSamplerResult *)v7 setPoint:a1[5], a1[6]];
    v8 = [[NUResponse alloc] initWithResult:v7];
    (*(a1[4] + 16))();

    v4 = v8;
  }

  else
  {
    v7 = [[NUResponse alloc] initWithError:v4];
    (*(a1[4] + 16))();
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time
{
  result = self->_request;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result time];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- (void)setName:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v7 = NUAssertLogger_27696();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v25 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_27696();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v14;
        v26 = 2114;
        v27 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUColorSampler setName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Sampler/NUColorSampler.m", 54, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "name != nil");
  }

  name = self->_name;
  self->_name = v4;
  v6 = v4;

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-Image-Data-Request", self->_name];
  [(NURenderRequest *)self->_request setName:?];
}

- (NUColorSampler)initWithComposition:(id)a3 responseQueue:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v19 = NUAssertLogger_27696();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v53 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_27696();
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

    _NUAssertFailHandler("[NUColorSampler initWithComposition:responseQueue:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Sampler/NUColorSampler.m", 37, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "composition != nil");
  }

  v8 = v7;
  if (!v7)
  {
    v26 = NUAssertLogger_27696();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "responseQueue != nil"];
      *buf = 138543362;
      v53 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_27696();
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

    _NUAssertFailHandler("[NUColorSampler initWithComposition:responseQueue:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Sampler/NUColorSampler.m", 38, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "responseQueue != nil");
  }

  v51.receiver = self;
  v51.super_class = NUColorSampler;
  v9 = [(NUColorSampler *)&v51 init];
  v10 = [v6 copy];
  composition = v9->_composition;
  v9->_composition = v10;

  v9->_sampleRadius = 2;
  v12 = +[NUColorSpace sRGBColorSpace];
  colorSpace = v9->_colorSpace;
  v9->_colorSpace = v12;

  responseQueue = v9->_responseQueue;
  v9->_responseQueue = v8;
  v15 = v8;

  v16 = [[NUImageDataRequest alloc] initWithComposition:v6 dataExtractor:@"CIAreaAverage" options:0];
  request = v9->_request;
  v9->_request = v16;

  [(NURenderRequest *)v9->_request setShouldCoalesceUpdates:1];
  [(NUColorSampler *)v9 setName:@"NUColorSampler"];

  return v9;
}

@end