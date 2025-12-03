@interface NUAuxiliaryPropertiesRenderJob
- (BOOL)prepare:(id *)prepare;
- (id)result;
@end

@implementation NUAuxiliaryPropertiesRenderJob

- (id)result
{
  v3 = objc_alloc_init(_NUAuxiliaryPropertiesResult);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  imageProperties = self->_imageProperties;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__NUAuxiliaryPropertiesRenderJob_result__block_invoke;
  v6[3] = &unk_1E8109450;
  v6[4] = self;
  v6[5] = &v7;
  [(NUImageProperties *)imageProperties enumerateAuxiliaryImageProperties:v6];
  [(_NUAuxiliaryPropertiesResult *)v3 setCanPropagateOriginalAuxiliaryData:*(v8 + 24)];
  [(_NUAuxiliaryPropertiesResult *)v3 setProperties:self->_imageProperties];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __40__NUAuxiliaryPropertiesRenderJob_result__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24))
  {
    v10 = v7;
    v9 = [*(a1 + 32) prepareNode];
    *(*(*(a1 + 40) + 8) + 24) = [v9 canPropagateOriginalAuxiliaryData:a2];

    v7 = v10;
  }

  else
  {
    *(v8 + 24) = 0;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (BOOL)prepare:(id *)prepare
{
  v49 = *MEMORY[0x1E69E9840];
  if (!prepare)
  {
    v10 = NUAssertLogger_981();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v46 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_981();
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

    _NUAssertFailHandler("[NUAuxiliaryPropertiesRenderJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 385, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "error != NULL");
  }

  v44.receiver = self;
  v44.super_class = NUAuxiliaryPropertiesRenderJob;
  v5 = [(NURenderJob *)&v44 prepare:?];
  if (v5)
  {
    prepareNode = [(NURenderJob *)self prepareNode];

    if (!prepareNode)
    {
      v26 = NUAssertLogger_981();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing prepare node"];
        *buf = 138543362;
        v46 = v27;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v29 = NUAssertLogger_981();
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

      _NUAssertFailHandler("[NUAuxiliaryPropertiesRenderJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUAuxiliaryImageRenderRequest.m", 391, @"Missing prepare node", v38, v39, v40, v41, v43);
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