@interface NUFillKernel
+ (void)fillTexture:(id)a3 color:(id)a4 withCommandBuffer:(id)a5;
+ (void)fillTexture:(id)a3 region:(id *)a4 color:(id)a5 withCommandBuffer:(id)a6;
- ($01BB1521EC52D44A8E7628F5261DCEC8)color;
- ($5EB37A2CB8D9A427EFBC3B5F5EFAD3F6)region;
- (void)encodeToCommandBuffer:(id)a3 destinationTexture:(id)a4;
- (void)setRegion:(id *)a3;
@end

@implementation NUFillKernel

- (void)setRegion:(id *)a3
{
  v4 = *&a3->var0.var2;
  v3 = *&a3->var1.var1;
  *&self->_region.origin.x = *&a3->var0.var0;
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

- (void)encodeToCommandBuffer:(id)a3 destinationTexture:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    if (v7)
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
          v20 = [v18 callStackSymbols];
          v21 = [v20 componentsJoinedByString:@"\n"];
          buf = 138543618;
          buf_4 = v17;
          buf_12 = 2114;
          buf_14 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
        }
      }

      else if (v14)
      {
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
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
        v52 = [v50 callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *v63 = 138543618;
        *&v63[4] = v49;
        *&v63[12] = 2114;
        *&v63[14] = v53;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v63, 0x16u);
      }
    }

    else if (v37)
    {
      v38 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
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
      v43 = [v41 callStackSymbols];
      v44 = [v43 componentsJoinedByString:@"\n"];
      *v63 = 138543618;
      *&v63[4] = v40;
      *&v63[12] = 2114;
      *&v63[14] = v44;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v63, 0x16u);
    }
  }

  else if (v30)
  {
    v31 = [MEMORY[0x1E696AF00] callStackSymbols];
    v32 = [v31 componentsJoinedByString:@"\n"];
    *v63 = 138543362;
    *&v63[4] = v32;
    _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v63, 0xCu);
  }

  _NUAssertFailHandler("[NUFillKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 129, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "commandBuffer != nil");
}

+ (void)fillTexture:(id)a3 region:(id *)a4 color:(id)a5 withCommandBuffer:(id)a6
{
  var3 = a5.var3;
  var2 = a5.var2;
  var1 = a5.var1;
  var0 = a5.var0;
  v12 = a6;
  v13 = a3;
  v14 = [NUFillKernel alloc];
  v15 = [v12 device];
  v16 = [(NUComputeKernel *)v14 initWithDevice:v15];

  [(NUFillKernel *)v16 setColor:var0, var1, var2, var3];
  v17 = *&a4->var0.var2;
  v18[0] = *&a4->var0.var0;
  v18[1] = v17;
  v18[2] = *&a4->var1.var1;
  [(NUFillKernel *)v16 setRegion:v18];
  [(NUFillKernel *)v16 encodeToCommandBuffer:v12 destinationTexture:v13];
}

+ (void)fillTexture:(id)a3 color:(id)a4 withCommandBuffer:(id)a5
{
  var3 = a4.var3;
  var2 = a4.var2;
  var1 = a4.var1;
  var0 = a4.var0;
  v11 = a5;
  v12 = a3;
  memset(v13, 0, 24);
  v13[3] = [v12 width];
  v13[4] = [v12 height];
  v13[5] = 1;
  [a1 fillTexture:v12 region:v13 color:v11 withCommandBuffer:{var0, var1, var2, var3}];
}

@end