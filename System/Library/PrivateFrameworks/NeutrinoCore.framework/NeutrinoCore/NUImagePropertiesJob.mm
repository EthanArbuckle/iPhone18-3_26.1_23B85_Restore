@interface NUImagePropertiesJob
- (BOOL)prepare:(id *)prepare;
- (id)result;
@end

@implementation NUImagePropertiesJob

- (id)result
{
  v3 = objc_alloc_init(_NUImagePropertiesResult);
  [(_NUImagePropertiesResult *)v3 setProperties:self->_imageProperties];

  return v3;
}

- (BOOL)prepare:(id *)prepare
{
  v49 = *MEMORY[0x1E69E9840];
  if (!prepare)
  {
    v10 = NUAssertLogger_23901();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v46 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_23901();
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
        v46 = v17;
        v47 = 2114;
        v48 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImagePropertiesJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImagePropertiesRequest.m", 86, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "error != NULL");
  }

  v44.receiver = self;
  v44.super_class = NUImagePropertiesJob;
  v5 = [(NURenderJob *)&v44 prepare:?];
  if (v5)
  {
    prepareNode = [(NURenderJob *)self prepareNode];

    if (!prepareNode)
    {
      v26 = NUAssertLogger_23901();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing prepare node"];
        *buf = 138543362;
        v46 = v27;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v29 = NUAssertLogger_23901();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
      if (v28)
      {
        if (v30)
        {
          v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v34 = MEMORY[0x1E696AF00];
          v35 = v33;
          callStackSymbols3 = [v34 callStackSymbols];
          v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v46 = v33;
          v47 = 2114;
          v48 = v37;
          _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v30)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v32 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v46 = v32;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUImagePropertiesJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImagePropertiesRequest.m", 92, @"Missing prepare node", v38, v39, v40, v41, v43);
    }

    prepareNode2 = [(NURenderJob *)self prepareNode];
    v8 = [prepareNode2 imageProperties:prepare];
    imageProperties = self->_imageProperties;
    self->_imageProperties = v8;

    LOBYTE(v5) = self->_imageProperties != 0;
  }

  return v5;
}

@end