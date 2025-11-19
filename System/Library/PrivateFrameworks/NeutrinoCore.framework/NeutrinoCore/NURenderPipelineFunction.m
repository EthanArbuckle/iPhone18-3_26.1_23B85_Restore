@interface NURenderPipelineFunction
+ (id)functionWithName:(id)a3 parameters:(id)a4 evaluationBlock:(id)a5;
+ (id)redEyeSpotsWithCorrectionInfo:(id)a3;
+ (id)scaleMultiplyOfScalar:(double)a3;
+ (id)scaledVector:(id)a3;
+ (id)sharpnessWithIntensity:(double)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRenderPipelineFunction:(id)a3;
- (NURenderPipelineFunction)init;
- (NURenderPipelineFunction)initWithName:(id)a3 parameters:(id)a4;
- (id)evaluate:(id)a3 error:(id *)a4;
@end

@implementation NURenderPipelineFunction

- (BOOL)isEqualToRenderPipelineFunction:(id)a3
{
  v4 = a3;
  v5 = [(NURenderPipelineFunction *)self name];
  v6 = [v4 name];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(NURenderPipelineFunction *)self parameters];
    v9 = [v4 parameters];
    v10 = [v8 isEqualToArray:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NURenderPipelineFunction *)v4 isEqualToRenderPipelineFunction:self];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)evaluate:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_409);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_409);
      }

      goto LABEL_8;
    }

    if (v11 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_409);
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
  _NUAssertFailHandler("[NURenderPipelineFunction evaluate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 521, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v26, v27, v28, v29, v25);
}

- (NURenderPipelineFunction)initWithName:(id)a3 parameters:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v15 = NUAssertLogger_1288();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v49 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_1288();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v29;
        v50 = 2114;
        v51 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineFunction initWithName:parameters:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 411, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "name != nil");
  }

  v8 = v7;
  if (!v7)
  {
    v22 = NUAssertLogger_1288();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "parameters != nil"];
      *buf = 138543362;
      v49 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_1288();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v38;
        v50 = 2114;
        v51 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineFunction initWithName:parameters:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 412, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "parameters != nil");
  }

  v47.receiver = self;
  v47.super_class = NURenderPipelineFunction;
  v9 = [(NURenderPipelineFunction *)&v47 init];
  v10 = [v6 copy];
  name = v9->_name;
  v9->_name = v10;

  v12 = [v8 copy];
  parameters = v9->_parameters;
  v9->_parameters = v12;

  return v9;
}

- (NURenderPipelineFunction)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_409);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_409);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_409);
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
  _NUAssertFailHandler("[NURenderPipelineFunction init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 407, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

id __55__NURenderPipelineFunction_grainInputSeedFromFrameTime__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    [v2 time];
    if ((v9 & 0x100000000) != 0)
    {
      [v3 time];
      Seconds = CMTimeGetSeconds(&v7);
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:{modf(Seconds / 10.0, &v7.value)}];
    }

    else
    {
      v4 = &unk_1F3F82260;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v4 = &unk_1F3F82260;
    v10 = 0;
  }

  return v4;
}

+ (id)redEyeSpotsWithCorrectionInfo:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__NURenderPipelineFunction_redEyeSpotsWithCorrectionInfo___block_invoke;
  v7[3] = &unk_1E81094E0;
  v8 = v3;
  v4 = v3;
  v5 = [NURenderPipelineFunction functionWithName:@"redEyeSpotsWithCorrectionInfo" parameters:v4 evaluationBlock:v7];

  return v5;
}

id __58__NURenderPipelineFunction_redEyeSpotsWithCorrectionInfo___block_invoke(uint64_t a1, void *a2)
{
  v39[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [MEMORY[0x1E695DF70] array];
  v35 = v34 = v3;
  v4 = [v3 scale];
  v6 = NUScaleToDouble(v4, v5);
  if ([*(a1 + 32) count])
  {
    v7 = 0;
    v8 = @"pointY";
    v9 = @"radius";
    v10 = @"sensitivity";
    do
    {
      v11 = [*(a1 + 32) objectAtIndexedSubscript:v7];
      v12 = [v11 objectForKeyedSubscript:@"pointX"];
      [v12 doubleValue];
      v14 = v13;
      v15 = [v11 objectForKeyedSubscript:v8];
      [v15 doubleValue];
      v17 = v16;

      v18 = [v11 objectForKeyedSubscript:v9];
      [v18 doubleValue];
      v20 = v19;

      v21 = [v11 objectForKeyedSubscript:v10];
      [v21 doubleValue];
      v23 = v22;

      v24 = fmin(v6 * (v20 + 10.0), 400.0);
      if (v24 >= 3.0)
      {
        v38[0] = @"inputCenter";
        v37[0] = v6 * v14;
        v37[1] = v6 * v17;
        v36 = [MEMORY[0x1E696B098] valueWithBytes:v37 objCType:"{CGPoint=dd}"];
        v39[0] = v36;
        v38[1] = @"inputRadius";
        v25 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
        v39[1] = v25;
        v38[2] = @"inputSensitivity";
        v26 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
        v39[2] = v26;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
        v27 = a1;
        v28 = v10;
        v29 = v9;
        v31 = v30 = v8;
        [v35 addObject:v31];

        v8 = v30;
        v9 = v29;
        v10 = v28;
        a1 = v27;
      }

      ++v7;
    }

    while (v7 < [*(a1 + 32) count]);
  }

  v32 = [v35 copy];

  return v32;
}

+ (id)sharpnessWithIntensity:(double)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__NURenderPipelineFunction_sharpnessWithIntensity___block_invoke;
  v8[3] = &__block_descriptor_40_e31__16__0__NURenderPipelineState_8l;
  *&v8[4] = a3;
  v6 = [NURenderPipelineFunction functionWithName:@"sharpnessWithIntensity" parameters:v5 evaluationBlock:v8];

  return v6;
}

uint64_t __51__NURenderPipelineFunction_sharpnessWithIntensity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scale];
  v5 = NUScaleToDouble(v3, v4) * -2.0 * *(a1 + 32) + 1.0;
  if (v5 >= 0.0)
  {
    v6 = log10(v5 * 9.0 + 1.0);
  }

  else
  {
    v6 = -log10(v5 * -9.0 + 1.0);
  }

  v7 = 1.0 - v6;
  v8 = MEMORY[0x1E696AD98];

  return [v8 numberWithDouble:v7];
}

+ (id)scaledVector:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__NURenderPipelineFunction_scaledVector___block_invoke;
  v7[3] = &unk_1E81094E0;
  v8 = v3;
  v4 = v3;
  v5 = [NURenderPipelineFunction functionWithName:@"scaledVector" parameters:v4 evaluationBlock:v7];

  return v5;
}

id __41__NURenderPipelineFunction_scaledVector___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 scale];
  v6 = NUScaleToDouble(v4, v5);
  v7 = [*(a1 + 32) count];
  if (v7 >= 0x20)
  {
    v8 = 32;
  }

  else
  {
    v8 = v7;
  }

  v9 = [*(a1 + 32) mutableCopy];
  v10 = [v9 subarrayWithRange:{0, v8}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    v15 = v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v20 + 1) + 8 * i) doubleValue];
        *v15++ = v6 * v17;
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  v18 = [MEMORY[0x1E695F688] vectorWithValues:v24 count:{objc_msgSend(v11, "count")}];

  return v18;
}

+ (id)scaleMultiplyOfScalar:(double)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__NURenderPipelineFunction_scaleMultiplyOfScalar___block_invoke;
  v8[3] = &__block_descriptor_40_e31__16__0__NURenderPipelineState_8l;
  *&v8[4] = a3;
  v6 = [NURenderPipelineFunction functionWithName:@"scaleMultiplyOfScalar" parameters:v5 evaluationBlock:v8];

  return v6;
}

uint64_t __50__NURenderPipelineFunction_scaleMultiplyOfScalar___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a2 scale];
  v6 = NUScaleToDouble(v4, v5) * *(a1 + 32);

  return [v3 numberWithDouble:v6];
}

+ (id)functionWithName:(id)a3 parameters:(id)a4 evaluationBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_NURenderPipelineBlockVariable alloc] initWithName:v9 parameters:v8 evaluationBlock:v7];

  return v10;
}

@end