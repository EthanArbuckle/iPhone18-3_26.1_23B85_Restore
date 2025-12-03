@interface NUMixKernel
+ (void)mixTexture:(id)texture region:(id *)region withTexture:(id)withTexture region:(id *)a6 factor:(float)factor intoTexture:(id)intoTexture atPoint:(id *)point withCommandBuffer:(id)self0;
+ (void)mixTexture:(id)texture withTexture:(id)withTexture factor:(float)factor intoTexture:(id)intoTexture withCommandBuffer:(id)buffer;
- ($5EB37A2CB8D9A427EFBC3B5F5EFAD3F6)sourceRegion1;
- ($5EB37A2CB8D9A427EFBC3B5F5EFAD3F6)sourceRegion2;
- (void)encodeToCommandBuffer:(id)buffer destinationTexture:(id)texture;
- (void)setDestinationOffset:(id *)offset;
- (void)setSourceRegion1:(id *)region1;
- (void)setSourceRegion2:(id *)region2;
@end

@implementation NUMixKernel

- (void)setDestinationOffset:(id *)offset
{
  var2 = offset->var2;
  *&self->_destinationOffset.x = *&offset->var0;
  self->_destinationOffset.z = var2;
}

- (void)setSourceRegion2:(id *)region2
{
  v4 = *&region2->var0.var2;
  v3 = *&region2->var1.var1;
  *&self->_sourceRegion2.origin.x = *&region2->var0.var0;
  *&self->_sourceRegion2.origin.z = v4;
  *&self->_sourceRegion2.size.height = v3;
}

- ($5EB37A2CB8D9A427EFBC3B5F5EFAD3F6)sourceRegion2
{
  v3 = *&self[2].var1.var1;
  *&retstr->var0.var0 = *&self[2].var0.var2;
  *&retstr->var0.var2 = v3;
  *&retstr->var1.var1 = *&self[3].var0.var0;
  return self;
}

- (void)setSourceRegion1:(id *)region1
{
  v4 = *&region1->var0.var2;
  v3 = *&region1->var1.var1;
  *&self->_sourceRegion1.origin.x = *&region1->var0.var0;
  *&self->_sourceRegion1.origin.z = v4;
  *&self->_sourceRegion1.size.height = v3;
}

- ($5EB37A2CB8D9A427EFBC3B5F5EFAD3F6)sourceRegion1
{
  v3 = *&self[1].var1.var1;
  *&retstr->var0.var0 = *&self[1].var0.var2;
  *&retstr->var0.var2 = v3;
  *&retstr->var1.var1 = *&self[2].var0.var0;
  return self;
}

- (void)encodeToCommandBuffer:(id)buffer destinationTexture:(id)texture
{
  v81 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  textureCopy = texture;
  if (bufferCopy)
  {
    if (textureCopy)
    {
      sourceTexture1 = [(NUMixKernel *)self sourceTexture1];
      if (sourceTexture1)
      {
        v9 = sourceTexture1;
        memset(v80, 0, 48);
        [(NUMixKernel *)self sourceRegion1];
        v10 = v9;
        if ([v10 width] && objc_msgSend(v10, "height"))
        {
          [v10 depth];
        }

        v11 = NUAssertLogger_11252();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid region"];
          v76 = 138543362;
          v77 = v12;
          _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v76, 0xCu);
        }

        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = NUAssertLogger_11252();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (specific)
        {
          if (v15)
          {
            v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v19 = MEMORY[0x1E696AF00];
            v20 = v18;
            callStackSymbols = [v19 callStackSymbols];
            v22 = [callStackSymbols componentsJoinedByString:@"\n"];
            v76 = 138543618;
            v77 = v18;
            v78 = 2114;
            v79 = v22;
            _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v76, 0x16u);
          }
        }

        else if (v15)
        {
          callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
          v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
          v76 = 138543362;
          v77 = v17;
          _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v76, 0xCu);
        }

        _NUAssertFailHandler("[NUMixKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 237, @"Invalid region", v23, v24, v25, v26, v75);
      }

      v41 = NUAssertLogger_11252();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing source texture"];
        *v80 = 138543362;
        *&v80[4] = v42;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v80, 0xCu);
      }

      v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v44 = NUAssertLogger_11252();
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (v43)
      {
        if (v45)
        {
          v66 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v67 = MEMORY[0x1E696AF00];
          v68 = v66;
          callStackSymbols3 = [v67 callStackSymbols];
          v70 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *v80 = 138543618;
          *&v80[4] = v66;
          *&v80[12] = 2114;
          *&v80[14] = v70;
          _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v80, 0x16u);
        }
      }

      else if (v45)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v47 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *v80 = 138543362;
        *&v80[4] = v47;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v80, 0xCu);
      }

      _NUAssertFailHandler("[NUMixKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 235, @"Missing source texture", v71, v72, v73, v74, v75);
    }

    v34 = NUAssertLogger_11252();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "destinationTexture != nil"];
      *v80 = 138543362;
      *&v80[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v80, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_11252();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        callStackSymbols5 = [v58 callStackSymbols];
        v61 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *v80 = 138543618;
        *&v80[4] = v57;
        *&v80[12] = 2114;
        *&v80[14] = v61;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v80, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *v80 = 138543362;
      *&v80[4] = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v80, 0xCu);
    }

    _NUAssertFailHandler("[NUMixKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 232, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "destinationTexture != nil");
  }

  v27 = NUAssertLogger_11252();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "commandBuffer != nil"];
    *v80 = 138543362;
    *&v80[4] = v28;
    _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v80, 0xCu);
  }

  v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
  v30 = NUAssertLogger_11252();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
  if (v29)
  {
    if (v31)
    {
      v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v49 = MEMORY[0x1E696AF00];
      v50 = v48;
      callStackSymbols7 = [v49 callStackSymbols];
      v52 = [callStackSymbols7 componentsJoinedByString:@"\n"];
      *v80 = 138543618;
      *&v80[4] = v48;
      *&v80[12] = 2114;
      *&v80[14] = v52;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v80, 0x16u);
    }
  }

  else if (v31)
  {
    callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
    v33 = [callStackSymbols8 componentsJoinedByString:@"\n"];
    *v80 = 138543362;
    *&v80[4] = v33;
    _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v80, 0xCu);
  }

  _NUAssertFailHandler("[NUMixKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 231, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "commandBuffer != nil");
}

+ (void)mixTexture:(id)texture region:(id *)region withTexture:(id)withTexture region:(id *)a6 factor:(float)factor intoTexture:(id)intoTexture atPoint:(id *)point withCommandBuffer:(id)self0
{
  bufferCopy = buffer;
  intoTextureCopy = intoTexture;
  withTextureCopy = withTexture;
  textureCopy = texture;
  v21 = [NUMixKernel alloc];
  device = [bufferCopy device];
  v23 = [(NUComputeKernel *)v21 initWithDevice:device];

  [(NUMixKernel *)v23 setSourceTexture1:textureCopy];
  [(NUMixKernel *)v23 setSourceTexture2:withTextureCopy];

  v24 = *&region->var0.var2;
  v27 = *&region->var0.var0;
  v28 = v24;
  v29 = *&region->var1.var1;
  [(NUMixKernel *)v23 setSourceRegion1:&v27];
  v25 = *&a6->var0.var2;
  v27 = *&a6->var0.var0;
  v28 = v25;
  v29 = *&a6->var1.var1;
  [(NUMixKernel *)v23 setSourceRegion2:&v27];
  v27 = *&point->var0;
  *&v28 = point->var2;
  [(NUMixKernel *)v23 setDestinationOffset:&v27];
  *&v26 = factor;
  [(NUMixKernel *)v23 setFactor:v26];
  [(NUMixKernel *)v23 encodeToCommandBuffer:bufferCopy destinationTexture:intoTextureCopy];
}

+ (void)mixTexture:(id)texture withTexture:(id)withTexture factor:(float)factor intoTexture:(id)intoTexture withCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  intoTextureCopy = intoTexture;
  withTextureCopy = withTexture;
  textureCopy = texture;
  memset(v19, 0, 24);
  v19[3] = [textureCopy width];
  v19[4] = [textureCopy height];
  v19[5] = 1;
  memset(v18, 0, 24);
  v18[3] = [withTextureCopy width];
  v18[4] = [withTextureCopy height];
  v18[5] = 1;
  memset(v17, 0, sizeof(v17));
  *&v16 = factor;
  [self mixTexture:textureCopy region:v19 withTexture:withTextureCopy region:v18 factor:intoTextureCopy intoTexture:v17 atPoint:v16 withCommandBuffer:bufferCopy];
}

@end