@interface NUImagePropertiesClient
- (void)submitPropertiesRequestForComposition:(id)composition completion:(id)completion;
@end

@implementation NUImagePropertiesClient

- (void)submitPropertiesRequestForComposition:(id)composition completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  completionCopy = completion;
  if (!compositionCopy)
  {
    v8 = NUAssertLogger_23901();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v42 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_23901();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v22;
        v43 = 2114;
        v44 = v26;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImagePropertiesClient submitPropertiesRequestForComposition:completion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImagePropertiesRequest.m", 29, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "composition != nil");
  }

  if (!completionCopy)
  {
    v15 = NUAssertLogger_23901();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completionBlock != nil"];
      *buf = 138543362;
      v42 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_23901();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v19)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols3 = [v32 callStackSymbols];
        v35 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v31;
        v43 = 2114;
        v44 = v35;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImagePropertiesClient submitPropertiesRequestForComposition:completion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImagePropertiesRequest.m", 30, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "completionBlock != nil");
  }

  v7 = [(NURenderRequest *)[NUImagePropertiesRequest alloc] initWithComposition:compositionCopy];
  [(NURenderRequest *)v7 setName:@"NUImagePropertiesRequest-generic"];
  [(NURenderClient *)self submitGenericRequest:v7 completion:completionCopy];
}

@end