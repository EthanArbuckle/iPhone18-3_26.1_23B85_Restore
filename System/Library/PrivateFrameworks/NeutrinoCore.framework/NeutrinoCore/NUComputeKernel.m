@interface NUComputeKernel
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)gridSizeForThreadGroupSize:(SEL)a3 imageSize:(id *)a4;
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)groupSizeForImageSize:(SEL)a3 pipelineState:(id *)a4;
+ (id)pipelineStateForFunctionWithName:(id)a3 constants:(id)a4 key:(id)a5 device:(id)a6 error:(id *)a7;
- (NUComputeKernel)initWithDevice:(id)a3;
- (void)encodeToCommandBuffer:(id)a3 destinationTexture:(id)a4;
@end

@implementation NUComputeKernel

- (void)encodeToCommandBuffer:(id)a3 destinationTexture:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_11236);
  }

  v7 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = v7;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v8 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v11];
    *buf = 138543362;
    v33 = v12;
    _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v13 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v13 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_11236);
      }

      goto LABEL_8;
    }

    if (v13 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_11236);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v14 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x1E696AF00];
      v16 = v14;
      v17 = [v15 callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v18;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v19 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = MEMORY[0x1E696AF00];
    v22 = specific;
    v23 = v19;
    v24 = [v21 callStackSymbols];
    v25 = [v24 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v33 = specific;
    v34 = 2114;
    v35 = v25;
    _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  _NUAssertFailHandler("[NUComputeKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 31, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v28, v29, v30, v31, v27);
}

- (NUComputeKernel)initWithDevice:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_11252();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "device != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_11252();
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

    _NUAssertFailHandler("[NUComputeKernel initWithDevice:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 24, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "device != nil");
  }

  v5 = v4;
  v25.receiver = self;
  v25.super_class = NUComputeKernel;
  v6 = [(NUComputeKernel *)&v25 init];
  device = v6->_device;
  v6->_device = v5;

  return v6;
}

+ (id)pipelineStateForFunctionWithName:(id)a3 constants:(id)a4 key:(id)a5 device:(id)a6 error:(id *)a7
{
  v53 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!a7)
  {
    v28 = NUAssertLogger_11252();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v50 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_11252();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v35;
        v51 = 2114;
        v52 = v39;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUComputeKernel pipelineStateForFunctionWithName:constants:key:device:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 75, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v15 = v14;
  v16 = a1;
  objc_sync_enter(v16);
  v17 = pipelineStateForFunctionWithName_constants_key_device_error__pipelineStateByFunctionKey;
  if (!pipelineStateForFunctionWithName_constants_key_device_error__pipelineStateByFunctionKey)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = pipelineStateForFunctionWithName_constants_key_device_error__pipelineStateByFunctionKey;
    pipelineStateForFunctionWithName_constants_key_device_error__pipelineStateByFunctionKey = v18;

    v17 = pipelineStateForFunctionWithName_constants_key_device_error__pipelineStateByFunctionKey;
  }

  v20 = [v17 objectForKey:v13];
  if (!v20)
  {
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:v16];
    v48 = 0;
    v44 = [v15 newDefaultLibraryWithBundle:v21 error:&v48];
    v22 = v48;

    if (!v44)
    {
      [NUError errorWithCode:1 reason:@"Failed to load Metal library for device" object:v15 underlyingError:v22];
      *a7 = v20 = 0;
      goto LABEL_15;
    }

    if (v12)
    {
      v47 = v22;
      v23 = [v44 newFunctionWithName:v45 constantValues:v12 error:&v47];
      v24 = v47;

      v22 = v24;
      if (v23)
      {
LABEL_8:
        v46 = v22;
        v20 = [v15 newComputePipelineStateWithFunction:v23 error:&v46];
        v25 = v46;

        if (v20)
        {
          [pipelineStateForFunctionWithName_constants_key_device_error__pipelineStateByFunctionKey setObject:v20 forKey:v13];

          v22 = v25;
LABEL_15:

          goto LABEL_16;
        }

        v26 = [NUError errorWithCode:1 reason:@"Failed to create pipeline state from function" object:v45 underlyingError:v25];
        v22 = v25;
LABEL_14:
        *a7 = v26;

        v20 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v23 = [v44 newFunctionWithName:v45];
      if (v23)
      {
        goto LABEL_8;
      }
    }

    v26 = [NUError errorWithCode:1 reason:@"Failed to load Metal kernel function" object:v45 underlyingError:v22];
    goto LABEL_14;
  }

LABEL_16:
  objc_sync_exit(v16);

  return v20;
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)gridSizeForThreadGroupSize:(SEL)a3 imageSize:(id *)a4
{
  v5 = (a5->var1 + a4->var1 - 1) / a4->var1;
  retstr->var0 = (a5->var0 + a4->var0 - 1) / a4->var0;
  retstr->var1 = v5;
  retstr->var2 = 1;
  return result;
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)groupSizeForImageSize:(SEL)a3 pipelineState:(id *)a4
{
  v21 = a5;
  v7 = [v21 threadExecutionWidth];
  v8 = [v21 maxTotalThreadsPerThreadgroup];
  v9 = v8 / v7;
  if (v7 <= v8)
  {
    v13 = 2 * v7;
    v14 = -1;
    v15 = -1;
    v16 = v7;
    v11 = v7;
    v10 = v8 / v7;
    do
    {
      var1 = a4->var1;
      if (v16 <= v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      if (v16 >= v9)
      {
        v18 = v9;
      }

      else
      {
        v18 = v16;
      }

      if ((var1 + v9 - 1) / v9 * v9 * (a4->var0 + v16 - 1) / v16 * v16 - var1 * a4->var0 <= v14)
      {
        v19 = v17 / v18;
        if (v19 <= v15)
        {
          v10 = v9;
          v11 = v16;
          v15 = v19;
          v14 = (var1 + v9 - 1) / v9 * v9 * (a4->var0 + v16 - 1) / v16 * v16 - var1 * a4->var0;
        }
      }

      v16 += v7;
      v9 = v8 / v13;
      v13 += v7;
    }

    while (v16 <= v8);
  }

  else
  {
    v10 = v8 / v7;
    v11 = v7;
  }

  retstr->var0 = v11;
  retstr->var1 = v10;
  retstr->var2 = 1;

  return result;
}

@end