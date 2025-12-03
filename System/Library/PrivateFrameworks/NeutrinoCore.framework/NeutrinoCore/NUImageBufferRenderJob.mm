@interface NUImageBufferRenderJob
- (id)renderBufferOfSize:(id)size format:(id)format;
- (id)result;
@end

@implementation NUImageBufferRenderJob

- (id)result
{
  v3 = objc_alloc_init(_NUImageBufferRenderResult);
  renderedRegion = [(NUImageRenderJob *)self renderedRegion];
  [(_NUImageRenderResult *)v3 setRegion:renderedRegion];

  renderBuffer = [(NUImageRenderJob *)self renderBuffer];
  [(_NUImageBufferRenderResult *)v3 setBuffer:renderBuffer];

  outputGeometry = [(NURenderJob *)self outputGeometry];
  [(_NUImageRenderResult *)v3 setGeometry:outputGeometry];

  return v3;
}

- (id)renderBufferOfSize:(id)size format:(id)format
{
  var1 = size.var1;
  var0 = size.var0;
  v32 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  storagePool = [(NUImageRenderJob *)self storagePool];
  v9 = [storagePool newStorageWithSize:var0 format:{var1, formatCopy}];
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
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v29 = 138543618;
        *&v29[4] = v20;
        v30 = 2114;
        v31 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v29, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v29 = 138543362;
      *&v29[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v29, 0xCu);
    }

    _NUAssertFailHandler("[NUImageBufferRenderJob renderBufferOfSize:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageRenderJob.m", 521, @"No storage allocated", v25, v26, v27, v28, *v29);
  }

  v10 = v9;
  v11 = [[NUStorageImageBuffer alloc] initWithStorage:v9 fromPool:storagePool];

  return v11;
}

@end