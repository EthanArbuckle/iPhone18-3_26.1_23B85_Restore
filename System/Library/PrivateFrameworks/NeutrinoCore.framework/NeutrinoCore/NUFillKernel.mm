@interface NUFillKernel
+ (void)fillTexture:(id)texture color:(id)color withCommandBuffer:(id)buffer;
+ (void)fillTexture:(id)texture region:(id *)region color:(id)color withCommandBuffer:(id)buffer;
- ($01BB1521EC52D44A8E7628F5261DCEC8)color;
- ($5EB37A2CB8D9A427EFBC3B5F5EFAD3F6)region;
- (void)encodeToCommandBuffer:(id)buffer destinationTexture:(id)texture;
- (void)setRegion:(id *)region;
@end

@implementation NUFillKernel

- (void)setRegion:(id *)region
{
  v4 = *&region->var0.var2;
  v3 = *&region->var1.var1;
  *&self->_region.origin.x = *&region->var0.var0;
  *&self->_region.origin.z = v4;
  *&self->_region.size.height = v3;
}

- ($5EB37A2CB8D9A427EFBC3B5F5EFAD3F6)region
{
  v3 = *&self[1].var0.var2;
  *&retstr->var0.var0 = *&self[1].var0.var0;
  *&retstr->var0.var2 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var1;
  return self;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)color
{
  red = self->_color.red;
  green = self->_color.green;
  blue = self->_color.blue;
  alpha = self->_color.alpha;
  result.var3 = alpha;
  result.var2 = blue;
  result.var1 = green;
  result.var0 = red;
  return result;
}

- (void)encodeToCommandBuffer:(id)buffer destinationTexture:(id)texture
{
  v64 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  textureCopy = texture;
  if (bufferCopy)
  {
    v8 = textureCopy;
    if (textureCopy)
    {
      memset(v63, 0, 48);
      [(NUFillKernel *)self region];
      v9 = v8;
      if ([v9 width] && objc_msgSend(v9, "height"))
      {
        [v9 depth];
      }

      v10 = NUAssertLogger_11252();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid region"];
        buf = 138543362;
        buf_4 = v11;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = NUAssertLogger_11252();
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
          buf = 138543618;
          buf_4 = v17;
          buf_12 = 2114;
          buf_14 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
        }
      }

      else if (v14)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        buf = 138543362;
        buf_4 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
      }

      _NUAssertFailHandler("[NUFillKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 133, @"Invalid region", v22, v23, v24, v25, v58);
    }

    v33 = NUAssertLogger_11252();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "destinationTexture != nil"];
      *v63 = 138543362;
      *&v63[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v63, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_11252();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        callStackSymbols3 = [v50 callStackSymbols];
        v53 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *v63 = 138543618;
        *&v63[4] = v49;
        *&v63[12] = 2114;
        *&v63[14] = v53;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v63, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *v63 = 138543362;
      *&v63[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v63, 0xCu);
    }

    _NUAssertFailHandler("[NUFillKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 130, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "destinationTexture != nil");
  }

  v26 = NUAssertLogger_11252();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "commandBuffer != nil"];
    *v63 = 138543362;
    *&v63[4] = v27;
    _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v63, 0xCu);
  }

  v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
  v29 = NUAssertLogger_11252();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
  if (v28)
  {
    if (v30)
    {
      v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v41 = MEMORY[0x1E696AF00];
      v42 = v40;
      callStackSymbols5 = [v41 callStackSymbols];
      v44 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *v63 = 138543618;
      *&v63[4] = v40;
      *&v63[12] = 2114;
      *&v63[14] = v44;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v63, 0x16u);
    }
  }

  else if (v30)
  {
    callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
    v32 = [callStackSymbols6 componentsJoinedByString:@"\n"];
    *v63 = 138543362;
    *&v63[4] = v32;
    _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v63, 0xCu);
  }

  _NUAssertFailHandler("[NUFillKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 129, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "commandBuffer != nil");
}

+ (void)fillTexture:(id)texture region:(id *)region color:(id)color withCommandBuffer:(id)buffer
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  bufferCopy = buffer;
  textureCopy = texture;
  v14 = [NUFillKernel alloc];
  device = [bufferCopy device];
  v16 = [(NUComputeKernel *)v14 initWithDevice:device];

  [(NUFillKernel *)v16 setColor:var0, var1, var2, var3];
  v17 = *&region->var0.var2;
  v18[0] = *&region->var0.var0;
  v18[1] = v17;
  v18[2] = *&region->var1.var1;
  [(NUFillKernel *)v16 setRegion:v18];
  [(NUFillKernel *)v16 encodeToCommandBuffer:bufferCopy destinationTexture:textureCopy];
}

+ (void)fillTexture:(id)texture color:(id)color withCommandBuffer:(id)buffer
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  bufferCopy = buffer;
  textureCopy = texture;
  memset(v13, 0, 24);
  v13[3] = [textureCopy width];
  v13[4] = [textureCopy height];
  v13[5] = 1;
  [self fillTexture:textureCopy region:v13 color:bufferCopy withCommandBuffer:{var0, var1, var2, var3}];
}

@end