@interface NUCopyKernel
+ (void)copyFromTexture:(id)texture region:(id *)region toTexture:(id)toTexture atPoint:(id *)point withCommandBuffer:(id)buffer;
+ (void)copyFromTexture:(id)texture toTexture:(id)toTexture atPoint:(id *)point withCommandBuffer:(id)buffer;
- ($5EB37A2CB8D9A427EFBC3B5F5EFAD3F6)sourceRegion;
- (void)encodeToCommandBuffer:(id)buffer destinationTexture:(id)texture;
- (void)setDestinationOffset:(id *)offset;
- (void)setSourceRegion:(id *)region;
@end

@implementation NUCopyKernel

- (void)setDestinationOffset:(id *)offset
{
  var2 = offset->var2;
  *&self->_destinationOffset.x = *&offset->var0;
  self->_destinationOffset.z = var2;
}

- (void)setSourceRegion:(id *)region
{
  v4 = *&region->var0.var2;
  v3 = *&region->var1.var1;
  *&self->_sourceRegion.origin.x = *&region->var0.var0;
  *&self->_sourceRegion.origin.z = v4;
  *&self->_sourceRegion.size.height = v3;
}

- ($5EB37A2CB8D9A427EFBC3B5F5EFAD3F6)sourceRegion
{
  v3 = *&self[1].var0.var2;
  *&retstr->var0.var0 = *&self[1].var0.var0;
  *&retstr->var0.var2 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var1;
  return self;
}

- (void)encodeToCommandBuffer:(id)buffer destinationTexture:(id)texture
{
  v147 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  textureCopy = texture;
  if (!bufferCopy)
  {
    v59 = NUAssertLogger_11252();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "commandBuffer != nil"];
      *v146 = 138543362;
      *&v146[4] = v60;
      _os_log_error_impl(&dword_1C0184000, v59, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v146, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v62 = NUAssertLogger_11252();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v63)
      {
        v94 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v95 = MEMORY[0x1E696AF00];
        v96 = v94;
        callStackSymbols = [v95 callStackSymbols];
        v98 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v146 = 138543618;
        *&v146[4] = v94;
        *&v146[12] = 2114;
        *&v146[14] = v98;
        _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v146, 0x16u);
      }
    }

    else if (v63)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v65 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v146 = 138543362;
      *&v146[4] = v65;
      _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v146, 0xCu);
    }

    _NUAssertFailHandler("[NUCopyKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 189, @"Invalid parameter not satisfying: %s", v99, v100, v101, v102, "commandBuffer != nil");
  }

  v8 = textureCopy;
  if (!textureCopy)
  {
    v66 = NUAssertLogger_11252();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dstTexture != nil"];
      *v146 = 138543362;
      *&v146[4] = v67;
      _os_log_error_impl(&dword_1C0184000, v66, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v146, 0xCu);
    }

    v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v69 = NUAssertLogger_11252();
    v70 = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
    if (v68)
    {
      if (v70)
      {
        v103 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v104 = MEMORY[0x1E696AF00];
        v105 = v103;
        callStackSymbols3 = [v104 callStackSymbols];
        v107 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *v146 = 138543618;
        *&v146[4] = v103;
        *&v146[12] = 2114;
        *&v146[14] = v107;
        _os_log_error_impl(&dword_1C0184000, v69, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v146, 0x16u);
      }
    }

    else if (v70)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v72 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *v146 = 138543362;
      *&v146[4] = v72;
      _os_log_error_impl(&dword_1C0184000, v69, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v146, 0xCu);
    }

    _NUAssertFailHandler("[NUCopyKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 190, @"Invalid parameter not satisfying: %s", v108, v109, v110, v111, "dstTexture != nil");
  }

  sourceTexture = [(NUCopyKernel *)self sourceTexture];
  if (!sourceTexture)
  {
    v73 = NUAssertLogger_11252();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing source texture"];
      *v146 = 138543362;
      *&v146[4] = v74;
      _os_log_error_impl(&dword_1C0184000, v73, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v146, 0xCu);
    }

    v75 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v76 = NUAssertLogger_11252();
    v77 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
    if (v75)
    {
      if (v77)
      {
        v112 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v113 = MEMORY[0x1E696AF00];
        v114 = v112;
        callStackSymbols5 = [v113 callStackSymbols];
        v116 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *v146 = 138543618;
        *&v146[4] = v112;
        *&v146[12] = 2114;
        *&v146[14] = v116;
        _os_log_error_impl(&dword_1C0184000, v76, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v146, 0x16u);
      }
    }

    else if (v77)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v79 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *v146 = 138543362;
      *&v146[4] = v79;
      _os_log_error_impl(&dword_1C0184000, v76, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v146, 0xCu);
    }

    _NUAssertFailHandler("[NUCopyKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 192, @"Missing source texture", v117, v118, v119, v120, v139);
  }

  v10 = sourceTexture;
  pixelFormat = [sourceTexture pixelFormat];
  if (pixelFormat != [v8 pixelFormat])
  {
    v80 = NUAssertLogger_11252();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Pixel format mismatch"];
      *v146 = 138543362;
      *&v146[4] = v81;
      _os_log_error_impl(&dword_1C0184000, v80, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v146, 0xCu);
    }

    v82 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v83 = NUAssertLogger_11252();
    v84 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
    if (v82)
    {
      if (v84)
      {
        v121 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v122 = MEMORY[0x1E696AF00];
        v123 = v121;
        callStackSymbols7 = [v122 callStackSymbols];
        v125 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *v146 = 138543618;
        *&v146[4] = v121;
        *&v146[12] = 2114;
        *&v146[14] = v125;
        _os_log_error_impl(&dword_1C0184000, v83, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v146, 0x16u);
      }
    }

    else if (v84)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v86 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *v146 = 138543362;
      *&v146[4] = v86;
      _os_log_error_impl(&dword_1C0184000, v83, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v146, 0xCu);
    }

    _NUAssertFailHandler("[NUCopyKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 195, @"Pixel format mismatch", v126, v127, v128, v129, v139);
  }

  memset(v146, 0, 48);
  [(NUCopyKernel *)self sourceRegion];
  v13 = *v146;
  v12 = *&v146[8];
  v14 = *&v146[16];
  v15 = *&v146[32];
  v16 = v10;
  if (v13 >= [v16 width] || v12 >= objc_msgSend(v16, "height") || v14 >= objc_msgSend(v16, "depth") || !*(&v14 + 1) || *(&v14 + 1) + v13 > objc_msgSend(v16, "width") || !v15 || v15 + v12 > objc_msgSend(v16, "height") || !*(&v15 + 1))
  {

LABEL_26:
    v27 = NUAssertLogger_11252();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid source region"];
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_11252();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols9 = [v42 callStackSymbols];
        v45 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = v45;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCopyKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 198, @"Invalid source region", v46, v47, v48, v49, v139);
  }

  depth = [v16 depth];

  if (*(&v15 + 1) + v14 > depth)
  {
    goto LABEL_26;
  }

  memset(buf, 0, sizeof(buf));
  [(NUCopyKernel *)self destinationOffset];
  *&buf[24] = *&v146[24];
  v18 = *&v146[40];
  *&buf[40] = *&v146[40];
  v20 = *buf;
  v19 = *&buf[8];
  v21 = *&buf[16];
  v22 = *&v146[32];
  v23 = v8;
  if (v20 >= [v23 width] || v19 >= objc_msgSend(v23, "height") || v21 >= objc_msgSend(v23, "depth") || !*(&v21 + 1) || *(&v21 + 1) + v20 > objc_msgSend(v23, "width") || !v22 || v22 + v19 > objc_msgSend(v23, "height") || !v18)
  {

LABEL_32:
    v34 = NUAssertLogger_11252();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid destination offset"];
      *v144 = 138543362;
      *&v144[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v144, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_11252();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols11 = [v51 callStackSymbols];
        v54 = [callStackSymbols11 componentsJoinedByString:@"\n"];
        *v144 = 138543618;
        *&v144[4] = v50;
        *&v144[12] = 2114;
        *&v144[14] = v54;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v144, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols12 componentsJoinedByString:@"\n"];
      *v144 = 138543362;
      *&v144[4] = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v144, 0xCu);
    }

    _NUAssertFailHandler("[NUCopyKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 200, @"Invalid destination offset", v55, v56, v57, v58, v139);
  }

  depth2 = [v23 depth];

  if (v18 + v21 > depth2)
  {
    goto LABEL_32;
  }

  blitCommandEncoder = [bufferCopy blitCommandEncoder];
  if (!blitCommandEncoder)
  {
    v87 = NUAssertLogger_11252();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no blit encoder"];
      *v144 = 138543362;
      *&v144[4] = v88;
      _os_log_error_impl(&dword_1C0184000, v87, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v144, 0xCu);
    }

    v89 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v90 = NUAssertLogger_11252();
    v91 = os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
    if (v89)
    {
      if (v91)
      {
        v130 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v131 = MEMORY[0x1E696AF00];
        v132 = v130;
        callStackSymbols13 = [v131 callStackSymbols];
        v134 = [callStackSymbols13 componentsJoinedByString:@"\n"];
        *v144 = 138543618;
        *&v144[4] = v130;
        *&v144[12] = 2114;
        *&v144[14] = v134;
        _os_log_error_impl(&dword_1C0184000, v90, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v144, 0x16u);
      }
    }

    else if (v91)
    {
      callStackSymbols14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v93 = [callStackSymbols14 componentsJoinedByString:@"\n"];
      *v144 = 138543362;
      *&v144[4] = v93;
      _os_log_error_impl(&dword_1C0184000, v90, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v144, 0xCu);
    }

    _NUAssertFailHandler("[NUCopyKernel encodeToCommandBuffer:destinationTexture:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Metal/NUComputeKernel.m", 204, @"no blit encoder", v135, v136, v137, v138, v139);
  }

  v26 = blitCommandEncoder;
  *v144 = *v146;
  *&v144[16] = *&v146[16];
  v142 = *&v146[24];
  v143 = *&v146[40];
  v140 = *buf;
  v141 = *&buf[16];
  [blitCommandEncoder copyFromTexture:v16 sourceSlice:0 sourceLevel:0 sourceOrigin:v144 sourceSize:&v142 toTexture:v23 destinationSlice:0 destinationLevel:0 destinationOrigin:&v140];
  [v26 endEncoding];
}

+ (void)copyFromTexture:(id)texture region:(id *)region toTexture:(id)toTexture atPoint:(id *)point withCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  toTextureCopy = toTexture;
  textureCopy = texture;
  v14 = [NUCopyKernel alloc];
  device = [bufferCopy device];
  v16 = [(NUComputeKernel *)v14 initWithDevice:device];

  [(NUCopyKernel *)v16 setSourceTexture:textureCopy];
  v17 = *&region->var0.var2;
  v18 = *&region->var0.var0;
  v19 = v17;
  v20 = *&region->var1.var1;
  [(NUCopyKernel *)v16 setSourceRegion:&v18];
  v18 = *&point->var0;
  *&v19 = point->var2;
  [(NUCopyKernel *)v16 setDestinationOffset:&v18];
  [(NUCopyKernel *)v16 encodeToCommandBuffer:bufferCopy destinationTexture:toTextureCopy];
}

+ (void)copyFromTexture:(id)texture toTexture:(id)toTexture atPoint:(id *)point withCommandBuffer:(id)buffer
{
  memset(v14, 0, 24);
  bufferCopy = buffer;
  toTextureCopy = toTexture;
  textureCopy = texture;
  v14[3] = [textureCopy width];
  v14[4] = [textureCopy height];
  v14[5] = [textureCopy depth];
  v13 = *point;
  [self copyFromTexture:textureCopy region:v14 toTexture:toTextureCopy atPoint:&v13 withCommandBuffer:bufferCopy];
}

@end