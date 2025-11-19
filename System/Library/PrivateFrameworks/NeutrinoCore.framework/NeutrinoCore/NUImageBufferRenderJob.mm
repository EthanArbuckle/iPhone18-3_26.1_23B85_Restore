@interface NUImageBufferRenderJob
- (id)renderBufferOfSize:(id)a3 format:(id)a4;
- (id)result;
@end

@implementation NUImageBufferRenderJob

- (id)result
{
  v3 = objc_alloc_init(_NUImageBufferRenderResult);
  v4 = [(NUImageRenderJob *)self renderedRegion];
  [(_NUImageRenderResult *)v3 setRegion:v4];

  v5 = [(NUImageRenderJob *)self renderBuffer];
  [(_NUImageBufferRenderResult *)v3 setBuffer:v5];

  v6 = [(NURenderJob *)self outputGeometry];
  [(_NUImageRenderResult *)v3 setGeometry:v6];

  return v3;
}

- (id)renderBufferOfSize:(id)a3 format:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(NUImageRenderJob *)self storagePool];
  v9 = [v8 newStorageWithSize:var0 format:{var1, v7}];
  if (!v9)
  {
    v13 = NUAssertLogger_12581();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No storage allocated"];
      *v29 = 138543362;
      *&v29[4] = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v29, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_12581();
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
        *v29 = 138543618;
        *&v29[4] = v20;
        v30 = 2114;
        v31 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v29, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *v29 = 138543362;
      *&v29[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v29, 0xCu);
    }

    _NUAssertFailHandler("[NUImageBufferRenderJob renderBufferOfSize:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 521, @"No storage allocated", v25, v26, v27, v28, *v29);
  }

  v10 = v9;
  v11 = [[NUStorageImageBuffer alloc] initWithStorage:v9 fromPool:v8];

  return v11;
}

@end