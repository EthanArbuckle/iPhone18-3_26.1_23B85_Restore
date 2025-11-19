@interface NUVideoPropertiesJob
- (BOOL)prepare:(id *)a3;
- (id)result;
@end

@implementation NUVideoPropertiesJob

- (id)result
{
  v3 = objc_alloc_init(_NUVideoPropertiesResult);
  [(_NUVideoPropertiesResult *)v3 setProperties:self->_videoProperties];

  return v3;
}

- (BOOL)prepare:(id *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v10 = NUAssertLogger_440();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v46 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_440();
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
        v46 = v17;
        v47 = 2114;
        v48 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoPropertiesJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoPropertiesRequest.m", 56, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "error != NULL");
  }

  v44.receiver = self;
  v44.super_class = NUVideoPropertiesJob;
  v5 = [(NURenderJob *)&v44 prepare:?];
  if (v5)
  {
    v6 = [(NURenderJob *)self prepareNode];

    if (!v6)
    {
      v26 = NUAssertLogger_440();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing prepare node"];
        *buf = 138543362;
        v46 = v27;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v29 = NUAssertLogger_440();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
      if (v28)
      {
        if (v30)
        {
          v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v34 = MEMORY[0x1E696AF00];
          v35 = v33;
          v36 = [v34 callStackSymbols];
          v37 = [v36 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v46 = v33;
          v47 = 2114;
          v48 = v37;
          _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v30)
      {
        v31 = [MEMORY[0x1E696AF00] callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v46 = v32;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUVideoPropertiesJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoPropertiesRequest.m", 62, @"Missing prepare node", v38, v39, v40, v41, v43);
    }

    v7 = [(NURenderJob *)self prepareNode];
    v8 = [v7 videoProperties:a3];
    videoProperties = self->_videoProperties;
    self->_videoProperties = v8;

    LOBYTE(v5) = self->_videoProperties != 0;
  }

  return v5;
}

@end