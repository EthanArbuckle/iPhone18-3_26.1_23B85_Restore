@interface NSDictionary(NURenderPipelineFunction)
- (id)nu_evaluateWithPipelineState:()NURenderPipelineFunction error:;
@end

@implementation NSDictionary(NURenderPipelineFunction)

- (id)nu_evaluateWithPipelineState:()NURenderPipelineFunction error:
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v13 = NUAssertLogger_1288();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_1288();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSDictionary(NURenderPipelineFunction) nu_evaluateWithPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 571, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "error != NULL");
  }

  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = __Block_byref_object_copy__1479;
  v40 = __Block_byref_object_dispose__1480;
  v41 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __77__NSDictionary_NURenderPipelineFunction__nu_evaluateWithPipelineState_error___block_invoke;
  v29[3] = &unk_1E8109528;
  v9 = v7;
  v30 = v9;
  v32 = buf;
  v10 = v8;
  v31 = v10;
  v33 = &v34;
  [self enumerateKeysAndObjectsUsingBlock:v29];
  if (v35[3])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
    *a4 = *(*&buf[8] + 40);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v34, 8);

  return v11;
}

@end