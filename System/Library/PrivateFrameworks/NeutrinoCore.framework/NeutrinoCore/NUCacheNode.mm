@interface NUCacheNode
+ (id)cacheDirectoryURL;
+ (id)nodeWithInput:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
+ (id)registry;
+ (void)_ensureCacheDirectoryURL:(id)a3;
+ (void)_pruneCacheDirectory:(id)a3 toSize:(int64_t)a4;
+ (void)clearCacheDirectory;
- (BOOL)installTemporaryURL:(id)a3 intoPersistentURL:(id)a4 error:(id *)a5;
- (BOOL)isEqualToRenderNode:(id)a3;
- (BOOL)isResolved;
- (NSString)cacheIdentifier;
- (NUCacheNode)initWithInput:(id)a3 settings:(id)a4 subsampleFactor:(int64_t)a5;
- (NUCacheNode)initWithInputs:(id)a3 settings:(id)a4 subsampleFactor:(int64_t)a5;
- (NUCacheNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)_evaluateVideo:(id *)a3;
- (id)_evaluateVideoComposition:(id *)a3;
- (id)descriptionSubClassHook;
- (id)evaluateRenderDependenciesWithRequest:(id)a3 error:(id *)a4;
- (id)evaluateSettings:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)inputGeometryForPipelineState:(id)a3 error:(id *)a4;
- (id)newRenderRequestWithOriginalRequest:(id)a3 error:(id *)a4;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)outputGeometryForPipelineState:(id)a3 error:(id *)a4;
- (id)persistentURL;
- (id)persistentURLPrefix;
- (id)resolvedSourceNode:(id *)a3;
- (id)setupDependentJobFromRequest:(id)a3 originalRequest:(id)a4 error:(id *)a5;
- (id)temporaryURLPrefix;
- (int64_t)auxiliaryImageType;
- (int64_t)sampleMode;
- (int64_t)subsampleFactorForScale:(id)a3;
- (unint64_t)_hash;
- (void)_resolveWithSourceNode:(id)a3 error:(id)a4;
- (void)nu_updateDigest:(id)a3;
- (void)resolveSourceWithResponse:(id)a3;
- (void)resolveWithSourceNode:(id)a3 error:(id)a4;
@end

@implementation NUCacheNode

- (id)_evaluateVideoComposition:(id *)a3
{
  v4 = [(NUCacheNode *)self resolvedSourceNode:?];
  v5 = [v4 outputVideoComposition:a3];

  return v5;
}

- (id)_evaluateVideo:(id *)a3
{
  v4 = [(NUCacheNode *)self resolvedSourceNode:?];
  v5 = [v4 outputVideo:a3];

  return v5;
}

- (id)_evaluateImage:(id *)a3
{
  v4 = [(NUCacheNode *)self resolvedSourceNode:?];
  v5 = [v4 _evaluateImage:a3];

  return v5;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v4 = [(NUCacheNode *)self inputNode];
  v5 = [v4 outputImageGeometry:a3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (void)resolveSourceWithResponse:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v13 = NUAssertLogger_15823();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "response != nil"];
      *buf = 138543362;
      v33 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_15823();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v20;
        v34 = 2114;
        v35 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCacheNode resolveSourceWithResponse:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 531, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "response != nil");
  }

  v5 = v4;
  v31 = 0;
  v6 = [v4 result:&v31];
  v7 = v31;
  if (v6)
  {
    v8 = [(NUCacheNode *)self persistentURL];
    v9 = [v6 destinationURL];
    v30 = 0;
    v10 = [(NUCacheNode *)self installTemporaryURL:v9 intoPersistentURL:v8 error:&v30];
    v11 = v30;

    if (v10)
    {
      v29 = 0;
      v12 = [(NUCacheNode *)self tryLoadPersistentURL:v8 error:&v29];
      v7 = v29;

      v11 = v7;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = v11;
    }

    [(NUCacheNode *)self resolveWithSourceNode:0 error:v11];
LABEL_9:

    goto LABEL_10;
  }

  [(NUCacheNode *)self resolveWithSourceNode:0 error:v7];
LABEL_10:
}

- (BOOL)installTemporaryURL:(id)a3 intoPersistentURL:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!a5)
  {
    v21 = NUAssertLogger_15823();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v41 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_15823();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v31 = [v29 callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v28;
        v42 = 2114;
        v43 = v32;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCacheNode installTemporaryURL:intoPersistentURL:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 508, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "error != nil");
  }

  v9 = v8;
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v10 moveItemAtURL:v7 toURL:v9 error:a5];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v37 = 0;
    v12 = [v9 checkResourceIsReachableAndReturnError:&v37];
    v13 = v37;
    if (v12)
    {
      v14 = [MEMORY[0x1E696AC08] defaultManager];
      v38 = *MEMORY[0x1E696A350];
      v15 = [MEMORY[0x1E695DF00] date];
      v39 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v17 = [v9 path];
      [v14 setAttributes:v16 ofItemAtPath:v17 error:0];
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_310);
      }

      v18 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        v20 = *a5;
        *buf = 138412802;
        v41 = v7;
        v42 = 2112;
        v43 = v9;
        v44 = 2112;
        v45 = v20;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Failed to install %@ -> %@: %@", buf, 0x20u);
      }
    }
  }

  return v12;
}

- (id)newRenderRequestWithOriginalRequest:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v9];
    *buf = 138543362;
    v31 = v10;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v11 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v11 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
      }

      goto LABEL_8;
    }

    if (v11 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v12 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v13 = MEMORY[0x1E696AF00];
      v14 = v12;
      v15 = [v13 callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v16;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v17 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = MEMORY[0x1E696AF00];
    v20 = specific;
    v21 = v17;
    v22 = [v19 callStackSymbols];
    v23 = [v22 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v31 = specific;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  _NUAssertFailHandler("[NUCacheNode newRenderRequestWithOriginalRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 503, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v26, v27, v28, v29, v25);
}

- (id)persistentURL
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
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
  _NUAssertFailHandler("[NUCacheNode persistentURL]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 496, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (id)temporaryURLPrefix
{
  v3 = +[NUCacheNode cacheDirectoryURL];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(NUCacheNode *)self cacheIdentifier];
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v8 = [v4 stringWithFormat:@"%@.temp.%@", v5, v7];

  v9 = [v3 URLByAppendingPathComponent:v8];

  return v9;
}

- (id)persistentURLPrefix
{
  v3 = +[NUCacheNode cacheDirectoryURL];
  v4 = [(NUCacheNode *)self cacheIdentifier];
  v5 = [v3 URLByAppendingPathComponent:v4];

  return v5;
}

- (NSString)cacheIdentifier
{
  v32 = *MEMORY[0x1E69E9840];
  if (![(NURenderNode *)self isCached])
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
    }

    v3 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = v3;
      v6 = [v4 stringWithFormat:@"evaluating cacheIdentifier on a non-cached node"];
      *v29 = 138543362;
      *&v29[4] = v6;
      _os_log_impl(&dword_1C0184000, v5, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", v29, 0xCu);

      v7 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v7 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
        }

        goto LABEL_9;
      }

      if (v7 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_9:
      v8 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = specific;
        v16 = v8;
        v17 = [v14 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *v29 = 138543618;
        *&v29[4] = specific;
        v30 = 2114;
        v31 = v18;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v29, 0x16u);
      }

LABEL_15:
      _NUAssertContinueHandler("[NUCacheNode cacheIdentifier]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 460, @"evaluating cacheIdentifier on a non-cached node", v9, v10, v11, v12, *v29);
      goto LABEL_16;
    }

    v19 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v25 = MEMORY[0x1E696AF00];
      v26 = v19;
      v27 = [v25 callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *v29 = 138543362;
      *&v29[4] = v28;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v29, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:
  v20 = [(NUCacheNode *)self cachedCacheIdentifier];
  if (!v20)
  {
    v21 = objc_alloc_init(NUDigest);
    v22 = +[NUSoftwareVersion currentSoftwareVersion];
    v23 = [v22 buildNumber];
    [v23 nu_updateDigest:v21];

    [(NUCacheNode *)self nu_updateDigest:v21];
    [(NUDigest *)v21 finalize];
    v20 = [(NUDigest *)v21 stringValue];
    [(NUCacheNode *)self setCachedCacheIdentifier:v20];
  }

  return v20;
}

- (id)resolvedSourceNode:(id *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = NUAssertLogger_15823();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_15823();
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
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCacheNode resolvedSourceNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 420, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != NULL");
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy__15874;
  v34 = __Block_byref_object_dispose__15875;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__15874;
  queue = self->_queue;
  v30 = __Block_byref_object_dispose__15875;
  v31 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__NUCacheNode_resolvedSourceNode___block_invoke;
  block[3] = &unk_1E810B0A0;
  block[4] = self;
  block[5] = buf;
  block[6] = &v26;
  dispatch_sync(queue, block);
  v6 = *(*&buf[8] + 40);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    if (v27[5])
    {
      [NUError errorWithCode:1 reason:@"Failed to cache source node" object:self underlyingError:?];
    }

    else
    {
      [NUError failureError:@"Cache node doesn't have cached contents" object:self];
    }
    *a3 = ;
  }

  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(buf, 8);

  return v6;
}

void __34__NUCacheNode_resolvedSourceNode___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 192));
  v2 = *(a1[4] + 200);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)_resolveWithSourceNode:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!self->_sourceNode)
  {
    if (v7)
    {
      [v7 setOriginalNode:self];
      v9 = [[NUCacheNodeSourceDerivation alloc] initWithSubsampleFactor:[(NUCacheNode *)self subsampleFactor]];
      [v7 setSourceDerivation:v9];

      [(NURenderContext *)self->_renderContext cancelAllJobs];
      objc_storeStrong(&self->_sourceNode, a3);
      sourceError = self->_sourceError;
      self->_sourceError = 0;
    }

    else if (!self->_sourceError)
    {
      self->_sourceNode = 0;
      objc_storeStrong(&self->_sourceError, a4);
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_310);
      }

      v11 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [(NUCacheNode *)self persistentURL];
        v14 = 138412546;
        v15 = v13;
        v16 = 2112;
        v17 = v8;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Error preparing cache node %@: %@", &v14, 0x16u);
      }
    }
  }
}

- (void)resolveWithSourceNode:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__NUCacheNode_resolveWithSourceNode_error___block_invoke;
  block[3] = &unk_1E810B3A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (BOOL)isResolved
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__NUCacheNode_isResolved__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __25__NUCacheNode_isResolved__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 192) || *(v1 + 200))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (id)setupDependentJobFromRequest:(id)a3 originalRequest:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 priority];
  [v8 setPriority:v9];

  [v8 setSubmitTime:NUAbsoluteTime()];
  v10 = [v8 newRenderJob];

  [v10 setReplyGroup:self->_group];
  v11 = [NUPipelineOutputNode alloc];
  v12 = [(NUCacheNode *)self inputNode];
  v13 = [(NUPipelineOutputNode *)v11 initWithInput:v12];
  [v10 setPrepareNode:v13];

  v14 = [(NURenderNode *)self outputImageGeometry:a5];
  if (v14)
  {
    [v10 setOutputGeometry:v14];
    v15 = [v14 renderScale];
    [v10 setRenderScale:{v15, v16}];
    [(NURenderContext *)self->_renderContext addJob:v10];
    v17 = v10;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)evaluateRenderDependenciesWithRequest:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(NUCacheNode *)self wantsDependentJob])
  {
    if ([(NUCacheNode *)self subsampleFactor]<= 0)
    {
      v27 = NUAssertLogger_15823();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Node hasn't been evaluated for render"];
        *buf = 138543362;
        v50 = v28;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v30 = NUAssertLogger_15823();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v31)
        {
          v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v35 = MEMORY[0x1E696AF00];
          v36 = v34;
          v37 = [v35 callStackSymbols];
          v38 = [v37 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v50 = v34;
          v51 = 2114;
          v52 = v38;
          _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v31)
      {
        v32 = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v50 = v33;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUCacheNode evaluateRenderDependenciesWithRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 305, @"Node hasn't been evaluated for render", v39, v40, v41, v42, v43);
    }

    if ([(NUCacheNode *)self isResolved])
    {
      v7 = MEMORY[0x1E695E0F8];
      goto LABEL_25;
    }

    v8 = [(NUCacheNode *)self persistentURL];
    v44 = 0;
    v9 = [(NUCacheNode *)self tryLoadPersistentURL:v8 error:&v44];
    v10 = v44;
    if (v9)
    {
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v47 = *MEMORY[0x1E696A350];
      v12 = [MEMORY[0x1E695DF00] date];
      v48 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v14 = [v8 path];
      [v11 setAttributes:v13 ofItemAtPath:v14 error:0];

      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_310);
      }

      v15 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = objc_opt_class();
        v18 = [v8 path];
        *buf = 138543618;
        v50 = v17;
        v51 = 2114;
        v52 = v18;
        _os_log_impl(&dword_1C0184000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ cache hit: %{public}@", buf, 0x16u);
      }

      v7 = MEMORY[0x1E695E0F8];
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_310);
      }

      v19 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = objc_opt_class();
        v22 = [v8 path];
        *buf = 138543618;
        v50 = v21;
        v51 = 2114;
        v52 = v22;
        _os_log_impl(&dword_1C0184000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ cache miss: %{public}@", buf, 0x16u);
      }

      v23 = [(NUCacheNode *)self newRenderRequestWithOriginalRequest:v6 error:a4];
      if (v23)
      {
        v24 = [(NUCacheNode *)self setupDependentJobFromRequest:v23 originalRequest:v6 error:a4];
        if (v24)
        {
          v25 = [(NUCacheNode *)self cacheIdentifier];
          v45 = v25;
          v46 = v24;
          v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v8 = [(NUCacheNode *)self inputNode];
    v7 = [v8 evaluateRenderDependenciesWithRequest:v6 error:a4];
  }

LABEL_25:

  return v7;
}

- (int64_t)sampleMode
{
  v2 = +[NUPlatform currentPlatform];
  v3 = [v2 mainDevice];
  v4 = [v3 defaultSampleMode];

  return v4;
}

- (int64_t)subsampleFactorForScale:(id)a3
{
  v4[0] = 0;
  v4[1] = 0;
  return [NUSubsampleNode subsampleFactorForScale:a3.var0 additionalScale:a3.var1, v4];
}

- (int64_t)auxiliaryImageType
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"auxiliaryImageType"];

  if (v3)
  {
    v4 = NUAuxiliaryImageTypeFromString(v3);
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)evaluateSettings:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = NUCacheNode;
  v9 = [(NURenderNode *)&v15 evaluateSettings:a3 pipelineState:v8 error:a5];
  if ([v8 auxiliaryImageType] == 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = [v9 mutableCopy];
    v11 = [v8 auxiliaryImageType];
    if (v11 > 0xB)
    {
      v12 = @"Invalid";
    }

    else
    {
      v12 = off_1E8109908[v11];
    }

    v13 = v12;
    [v10 setObject:v13 forKeyedSubscript:@"auxiliaryImageType"];
  }

  return v10;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v63 = a3;
  v8 = a4;
  if (!a5)
  {
    v41 = NUAssertLogger_15823();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v72 = v42;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v44 = NUAssertLogger_15823();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v45)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        v51 = [v49 callStackSymbols];
        v52 = [v51 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v48;
        v73 = 2114;
        v74 = v52;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      v46 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [v46 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCacheNode nodeByReplayingAgainstCache:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 183, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "error != NULL");
  }

  v9 = v8;
  if ([(NURenderNode *)self isCached])
  {
    -[NURenderNode setEvaluatedForMode:](self, "setEvaluatedForMode:", [v9 evaluationMode]);
    v10 = self;
  }

  else
  {
    v69 = 0;
    v11 = [(NUCacheNode *)self outputGeometryForPipelineState:v9 error:&v69];
    v12 = v69;
    if (v11)
    {
      v13 = [v9 scale];
      v15 = v14;
      v16 = [v11 renderScale];
      v18 = NUScaleDivide(v13, v15, v16, v17);
      v20 = [(NUCacheNode *)self subsampleFactorForScale:v18, v19];
      v68 = 0;
      v21 = [(NUCacheNode *)self inputGeometryForPipelineState:v9 error:&v68];
      v22 = v68;

      if (v21)
      {
        v59 = v22;
        v60 = v11;
        v61 = v9;
        v23 = [v9 copy];
        if ([(NUCacheNode *)self wantsDependentJob])
        {
          [v23 setEvaluationMode:0];
          [v23 setAuxiliaryImageType:1];
        }

        v58 = v21;
        v24 = [v21 renderScale];
        v57 = v20;
        v26 = NUScaleMultiply(1, v20, v24, v25);
        [v23 setScale:{v26, v27}];
        v28 = v23;
        [v23 setSampleMode:{-[NUCacheNode sampleMode](self, "sampleMode")}];
        v62 = objc_opt_new();
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v29 = [(NURenderNode *)self inputs];
        v30 = [v29 allKeys];

        v31 = [v30 countByEnumeratingWithState:&v64 objects:v70 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v65;
          while (2)
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v65 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v64 + 1) + 8 * i);
              v36 = [(NURenderNode *)self inputForKey:v35];
              v37 = [v36 nodeByReplayingAgainstCache:v63 pipelineState:v28 error:a5];

              if (!v37)
              {
                [NUError errorWithCode:1 reason:@"[NUCacheNode nodeByReplayingAgainstCache] could not get cached input node." object:0 underlyingError:*a5];
                *a5 = v10 = 0;
                v9 = v61;
                goto LABEL_20;
              }

              [v62 setObject:v37 forKeyedSubscript:v35];
            }

            v32 = [v30 countByEnumeratingWithState:&v64 objects:v70 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }

        v38 = [(NURenderNode *)self settings];
        v9 = v61;
        v30 = [(NUCacheNode *)self evaluateSettings:v38 pipelineState:v61 error:a5];

        if (v30)
        {
          v39 = [objc_alloc(objc_opt_class()) initWithInputs:v62 settings:v30 subsampleFactor:v57];
          v10 = [NURenderNode nodeFromCache:v39 cache:v63];

          -[NURenderNode setEvaluatedForMode:](v10, "setEvaluatedForMode:", [v61 evaluationMode]);
        }

        else
        {
          [NUError errorWithCode:1 reason:@"[NUCacheNode nodeByReplayingAgainstCache] could not get resolve settings" object:0 underlyingError:*a5];
          *a5 = v10 = 0;
        }

LABEL_20:
        v22 = v59;
        v11 = v60;
        v21 = v58;
      }

      else
      {
        [NUError errorWithCode:1 reason:@"[NUCacheNode nodeByReplayingAgainstCache] could not get input geometry" object:v9 underlyingError:v22];
        *a5 = v10 = 0;
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"[NUCacheNode nodeByReplayingAgainstCache] could not get output geometry" object:v9 underlyingError:v12];
      *a5 = v10 = 0;
      v22 = v12;
    }
  }

  return v10;
}

- (id)outputGeometryForPipelineState:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 auxiliaryImageType] == 1)
  {
    [(NURenderNode *)self outputImageGeometry:a4];
  }

  else
  {
    [(NUCacheNode *)self inputGeometryForPipelineState:v6 error:a4];
  }
  v7 = ;

  return v7;
}

- (id)inputGeometryForPipelineState:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NUCacheNode *)self inputNode];
  v8 = [v7 outputImageGeometry:a4];

  if (v8 && [v6 auxiliaryImageType] != 1)
  {
    v9 = [(NUCacheNode *)self inputNode];
    v10 = [v9 imageProperties:a4];

    if (v10)
    {
      v11 = [v10 auxiliaryImagePropertiesForType:{objc_msgSend(v6, "auxiliaryImageType")}];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 size];
        v14 = [v10 size];
        v15 = [NUImageGeometry alloc];
        [v8 extent];
        v16 = [(NUImageGeometry *)v15 initWithExtent:&v21 renderScale:v13, v14];

        v8 = v10;
LABEL_11:

        v8 = v16;
        goto LABEL_12;
      }

      v17 = [v6 auxiliaryImageType];
      if (v17 > 0xB)
      {
        v18 = @"Invalid";
      }

      else
      {
        v18 = off_1E8109908[v17];
      }

      v19 = v18;
      *a4 = [NUError missingError:@"Auxiliary image properties not found" object:v19];
    }

    v16 = 0;
    goto LABEL_11;
  }

LABEL_12:

  return v8;
}

- (BOOL)isEqualToRenderNode:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NUCacheNode;
  if ([(NURenderNode *)&v8 isEqualToRenderNode:v4])
  {
    subsampleFactor = self->_subsampleFactor;
    v6 = subsampleFactor == [v4 subsampleFactor];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)nu_updateDigest:(id)a3
{
  v5.receiver = self;
  v5.super_class = NUCacheNode;
  v4 = a3;
  [(NURenderNode *)&v5 nu_updateDigest:v4];
  [v4 addCString:{"subsample", v5.receiver, v5.super_class}];
  [v4 addBytes:&self->_subsampleFactor length:8];
}

- (unint64_t)_hash
{
  v3.receiver = self;
  v3.super_class = NUCacheNode;
  return self->_subsampleFactor ^ [(NURenderNode *)&v3 _hash];
}

- (id)descriptionSubClassHook
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15874;
  v11 = __Block_byref_object_dispose__15875;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__NUCacheNode_descriptionSubClassHook__block_invoke;
  block[3] = &unk_1E810B980;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(queue, block);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" sourceNode : %@ %lu", v8[5], self->_subsampleFactor];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NUCacheNode)initWithInputs:(id)a3 settings:(id)a4 subsampleFactor:(int64_t)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 objectForKeyedSubscript:@"input"];

  if (!v10)
  {
    v20 = NUAssertLogger_15823();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputs[NUCacheNodeInputKey] != nil"];
      *buf = 138543362;
      v54 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_15823();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v34;
        v55 = 2114;
        v56 = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCacheNode initWithInputs:settings:subsampleFactor:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 95, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "inputs[NUCacheNodeInputKey] != nil");
  }

  if (a5 < 0)
  {
    v27 = NUAssertLogger_15823();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor >= 0"];
      *buf = 138543362;
      v54 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_15823();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v43;
        v55 = 2114;
        v56 = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCacheNode initWithInputs:settings:subsampleFactor:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 96, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "subsampleFactor >= 0");
  }

  v52.receiver = self;
  v52.super_class = NUCacheNode;
  v11 = [(NURenderNode *)&v52 initWithSettings:v9 inputs:v8];
  v11->_subsampleFactor = a5;
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("NUCacheNode", v12);
  queue = v11->_queue;
  v11->_queue = v13;

  v15 = dispatch_group_create();
  group = v11->_group;
  v11->_group = v15;

  v17 = objc_alloc_init(NURenderContext);
  renderContext = v11->_renderContext;
  v11->_renderContext = v17;

  return v11;
}

- (NUCacheNode)initWithInput:(id)a3 settings:(id)a4 subsampleFactor:(int64_t)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"input";
  v15[0] = a3;
  v8 = MEMORY[0x1E695DF20];
  v9 = a4;
  v10 = a3;
  v11 = [v8 dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v12 = [(NUCacheNode *)self initWithInputs:v11 settings:v9 subsampleFactor:a5];
  return v12;
}

- (NUCacheNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_308);
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
      v19 = [v17 callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
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
    v26 = [v23 callStackSymbols];
    v27 = [v26 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUCacheNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUCacheNode.m", 80, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

+ (void)clearCacheDirectory
{
  v6 = +[NUGlobalSettings cacheNodeDirectoryURL];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v6 path];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    [a1 _pruneCacheDirectory:v6 toSize:0];
  }
}

+ (void)_pruneCacheDirectory:(id)a3 toSize:(int64_t)a4
{
  v47[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v6 = *MEMORY[0x1E695DB50];
  v7 = *MEMORY[0x1E695DAA8];
  v47[0] = *MEMORY[0x1E695DB50];
  v47[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v33 = v5;
  v32 = v4;
  v9 = [v5 enumeratorAtURL:v4 includingPropertiesForKeys:v8 options:1 errorHandler:0];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v38 + 1) + 8 * i);
        v37 = 0;
        [v17 getResourceValue:&v37 forKey:v6 error:0];
        v18 = v37;
        [v10 insertObject:v17 atIndex:{objc_msgSend(v10, "indexOfObject:inSortedRange:options:usingComparator:", v17, 0, objc_msgSend(v10, "count"), 1024, &__block_literal_global_95)}];
        v19 = [v18 integerValue];

        v14 += v19;
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_310);
  }

  v20 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v43 = v14;
    v44 = 2048;
    v45 = a4;
    _os_log_impl(&dword_1C0184000, v20, OS_LOG_TYPE_DEFAULT, "Current cache size: %{iec-bytes}ld, max: %{iec-bytes}ld", buf, 0x16u);
  }

  while (v14 > a4)
  {
    v21 = [v10 lastObject];
    v36 = 0;
    [v21 getResourceValue:&v36 forKey:v6 error:0];
    v22 = v36;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_310);
    }

    v23 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v21 path];
      v26 = [v22 longValue];
      *buf = 138412546;
      v43 = v25;
      v44 = 2048;
      v45 = v26;
      _os_log_impl(&dword_1C0184000, v24, OS_LOG_TYPE_DEFAULT, "Deleting file %@, size: %{iec-bytes}ld", buf, 0x16u);
    }

    v35 = 0;
    v27 = [v33 removeItemAtURL:v21 error:&v35];
    v28 = v35;
    if ((v27 & 1) == 0)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_310);
      }

      v29 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        v30 = v29;
        v31 = [v21 path];
        *buf = 138543618;
        v43 = v31;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Failed to delete file at path: %{public}@, error: %{public}@", buf, 0x16u);
      }
    }

    [v10 removeLastObject];
    v14 -= [v22 integerValue];
  }
}

uint64_t __43__NUCacheNode__pruneCacheDirectory_toSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x1E695DA90];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = [v9 compare:v6];
  return v7;
}

+ (void)_ensureCacheDirectoryURL:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v32 = 0;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v32];

  if (!v6)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_12;
  }

  if (v32)
  {
    v7 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v31 = 0;
    v10 = [v9 removeItemAtURL:v3 error:&v31];
    v7 = v31;

    if (v10)
    {
      v8 = 0;
      goto LABEL_12;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_310);
    }

    v11 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v27 = v11;
      v28 = [v3 path];
      *buf = 138412546;
      v36 = v28;
      v37 = 2112;
      v38 = v7;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Failed to delete file at path: %@, error: %@", buf, 0x16u);
    }
  }

  v8 = 1;
LABEL_12:
  v33[0] = *MEMORY[0x1E696A358];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:getuid()];
  v34[0] = v12;
  v33[1] = *MEMORY[0x1E696A320];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:getgid()];
  v34[1] = v13;
  v33[2] = *MEMORY[0x1E696A370];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{+[NUGlobalSettings cacheNodeFilePermissions](NUGlobalSettings, "cacheNodeFilePermissions")}];
  v34[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = v16;
  if (v8)
  {
    v18 = [v3 path];
    v29 = v7;
    v19 = [v17 setAttributes:v15 ofItemAtPath:v18 error:&v29];
    v20 = v29;

    if ((v19 & 1) == 0)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_310);
      }

      v21 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        v23 = [v3 path];
        *buf = 138412546;
        v36 = v23;
        v37 = 2112;
        v38 = v20;
        v24 = "Failed to set directory attributes at path: %@, error: %@";
LABEL_24:
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, v24, buf, 0x16u);
      }
    }
  }

  else
  {
    v30 = v7;
    v25 = [v16 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:v15 error:&v30];
    v20 = v30;

    if ((v25 & 1) == 0)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_310);
      }

      v26 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        v22 = v26;
        v23 = [v3 path];
        *buf = 138412546;
        v36 = v23;
        v37 = 2112;
        v38 = v20;
        v24 = "Failed to create temporary directory at path: %@, error: %@";
        goto LABEL_24;
      }
    }
  }
}

+ (id)cacheDirectoryURL
{
  if (cacheDirectoryURL_onceToken != -1)
  {
    dispatch_once(&cacheDirectoryURL_onceToken, &__block_literal_global_15982);
  }

  v3 = +[NUGlobalSettings cacheNodeDirectoryURL];
  [a1 _ensureCacheDirectoryURL:v3];
  v4 = cacheDirectoryURL_pruneCoalescer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__NUCacheNode_cacheDirectoryURL__block_invoke_2;
  v7[3] = &unk_1E810B078;
  v9 = a1;
  v5 = v3;
  v8 = v5;
  [v4 coalesceBlock:v7];

  return v5;
}

uint64_t __32__NUCacheNode_cacheDirectoryURL__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [v1 _maxCacheDirectorySize];

  return [v1 _pruneCacheDirectory:v2 toSize:v3];
}

void __32__NUCacheNode_cacheDirectoryURL__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("NUCacheNode.prune", v0);

  v1 = [[NUCoalescer alloc] initWithDelay:v3 queue:0.5];
  v2 = cacheDirectoryURL_pruneCoalescer;
  cacheDirectoryURL_pruneCoalescer = v1;
}

+ (id)nodeWithInput:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithInput:v9 settings:v8];

  return v10;
}

+ (id)registry
{
  v2 = +[NUFactory sharedFactory];
  v3 = [v2 cacheNodeRegistry];

  return v3;
}

@end