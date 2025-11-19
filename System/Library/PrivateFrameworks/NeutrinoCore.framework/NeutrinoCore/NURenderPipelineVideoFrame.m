@interface NURenderPipelineVideoFrame
- (NURenderPipelineVideoFrame)initWithFrameTime:(id *)a3 pixelBuffer:(__CVBuffer *)a4;
- (id)description;
- (void)dealloc;
@end

@implementation NURenderPipelineVideoFrame

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = NURenderPipelineVideoFrame;
  [(NURenderPipelineVideoFrame *)&v4 dealloc];
}

- (NURenderPipelineVideoFrame)initWithFrameTime:(id *)a3 pixelBuffer:(__CVBuffer *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v9 = NUAssertLogger_1288();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pixelBuffer != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_1288();
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

    _NUAssertFailHandler("[NURenderPipelineVideoFrame initWithFrameTime:pixelBuffer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 366, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "pixelBuffer != nil");
  }

  v25.receiver = self;
  v25.super_class = NURenderPipelineVideoFrame;
  v6 = [(NURenderPipelineVideoFrame *)&v25 init];
  var3 = a3->var3;
  *&v6->_frameTime.value = *&a3->var0;
  v6->_frameTime.epoch = var3;
  v6->_pixelBuffer = a4;
  CFRetain(a4);
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  time = self->_frameTime;
  v5 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time);
  v6 = [v3 stringWithFormat:@"<%@:%p frameTime: %@, pixelBuffer: %p>", v4, self, v5, self->_pixelBuffer];

  return v6;
}

@end