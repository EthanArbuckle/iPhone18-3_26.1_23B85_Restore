@interface NUIOSurfaceStorage
- (BOOL)decrementUseCount;
- (BOOL)isInUse;
- (BOOL)isShared;
- (BOOL)makeNonPurgeable;
- (NSString)description;
- (NUIOSurfaceStorage)initWithSize:(id)size format:(id)format;
- (NUIOSurfaceStorage)initWithSurface:(id)surface;
- (int)useCount;
- (int64_t)_copyFromIOSurfaceStorage:(id)storage region:(id)region device:(id)device;
- (int64_t)copyFromStorage:(id)storage region:(id)region;
- (int64_t)readBufferInRegion:(id)region block:(id)block;
- (int64_t)readSurfaceInRegion:(id)region block:(id)block;
- (int64_t)readTextureInRegion:(id)region device:(id)device block:(id)block;
- (int64_t)useAsCIImageWithOptions:(id)options renderer:(id)renderer block:(id)block;
- (int64_t)useAsCIRenderDestinationWithRenderer:(id)renderer block:(id)block;
- (int64_t)useAsCVPixelBufferWithBlock:(id)block;
- (int64_t)writeBufferInRegion:(id)region block:(id)block;
- (int64_t)writeSurfaceInRegion:(id)region block:(id)block;
- (int64_t)writeTextureInRegion:(id)region device:(id)device block:(id)block;
- (void)_allocateSurface;
- (void)adjustPurgeLevel:(int64_t)level;
- (void)incrementUseCount;
- (void)setColorSpace:(id)space;
- (void)setContentHeadroom:(float)headroom;
@end

@implementation NUIOSurfaceStorage

- (NSString)description
{
  iOSurfaceRef = [(NUIOSurface *)self->_surface IOSurfaceRef];
  UseCount = IOSurfaceGetUseCount(iOSurfaceRef);
  v5 = IOSurfaceIsInUse(iOSurfaceRef) != 0;
  ID = IOSurfaceGetID(iOSurfaceRef);
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p> IOSurface=%p inUse=%d useCount=%d purgeable=%d sizeInBytes=%ld surface=%@ sid=%x", objc_opt_class(), self, iOSurfaceRef, v5, UseCount, self->_purgeable, -[NUIOSurface sizeInBytes](self->_surface, "sizeInBytes"), self->_surface, ID];
}

- (int64_t)_copyFromIOSurfaceStorage:(id)storage region:(id)region device:(id)device
{
  v38 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  regionCopy = region;
  deviceCopy = device;
  if (!storageCopy)
  {
    v16 = NUAssertLogger_22007();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_22007();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurfaceStorage _copyFromIOSurfaceStorage:region:device:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurfaceStorage.m", 433, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "other != nil");
  }

  v11 = deviceCopy;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v37 = 1;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __62__NUIOSurfaceStorage__copyFromIOSurfaceStorage_region_device___block_invoke;
  v32[3] = &unk_1E810AE88;
  v35 = buf;
  v32[4] = self;
  v12 = regionCopy;
  v33 = v12;
  v13 = v11;
  v34 = v13;
  v14 = [storageCopy readTextureInRegion:v12 device:v13 block:v32];
  if (v14 == 1)
  {
    v14 = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);
  return v14;
}

uint64_t __62__NUIOSurfaceStorage__copyFromIOSurfaceStorage_region_device___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__NUIOSurfaceStorage__copyFromIOSurfaceStorage_region_device___block_invoke_2;
  v9[3] = &unk_1E810AE60;
  v10 = v6;
  v11 = a1[5];
  v12 = v3;
  v7 = v3;
  *(*(a1[7] + 8) + 24) = [v4 writeTextureInRegion:v5 device:v10 block:v9];

  return 1;
}

uint64_t __62__NUIOSurfaceStorage__copyFromIOSurfaceStorage_region_device___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__NUIOSurfaceStorage__copyFromIOSurfaceStorage_region_device___block_invoke_3;
  v7[3] = &unk_1E810AE38;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v3;
  v5 = v3;
  [v4 executeMetal:v7];

  return 1;
}

void __62__NUIOSurfaceStorage__copyFromIOSurfaceStorage_region_device___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  if (v4)
  {
    [v4 bounds];
    v6 = v11;
    v5 = v12;
    v7 = *v13;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0uLL;
  }

  v8 = a1[5];
  v9 = a1[6];
  v11 = v6;
  v12 = v5;
  *v13 = 0;
  *&v13[8] = v7;
  v14 = 1;
  v10[0] = v6;
  v10[1] = v5;
  v10[2] = 0;
  [NUCopyKernel copyFromTexture:v8 region:&v11 toTexture:v9 atPoint:v10 withCommandBuffer:v3];
}

- (int64_t)copyFromStorage:(id)storage region:(id)region
{
  v75 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  regionCopy = region;
  if (!storageCopy)
  {
    v22 = NUAssertLogger_22007();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      v72 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_22007();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        callStackSymbols = [v44 callStackSymbols];
        v47 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v43;
        v73 = 2114;
        v74 = v47;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurfaceStorage copyFromStorage:region:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurfaceStorage.m", 409, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "other != nil");
  }

  v8 = regionCopy;
  v9 = [storageCopy size];
  v11 = v10;
  if (v9 != [(_NUAbstractStorage *)self size]|| v11 != v12)
  {
    v29 = NUAssertLogger_22007();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUPixelSizeEqualToSize(other.size, self.size)"];
      *buf = 138543362;
      v72 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_22007();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols3 = [v53 callStackSymbols];
        v56 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v52;
        v73 = 2114;
        v74 = v56;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurfaceStorage copyFromStorage:region:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurfaceStorage.m", 410, @"Invalid parameter not satisfying: %s", v57, v58, v59, v60, "NUPixelSizeEqualToSize(other.size, self.size)");
  }

  format = [(_NUAbstractStorage *)self format];
  format2 = [storageCopy format];
  v15 = [format isEqualToPixelFormat:format2];

  if ((v15 & 1) == 0)
  {
    v36 = NUAssertLogger_22007();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[self.format isEqualToPixelFormat:other.format]"];
      *buf = 138543362;
      v72 = v37;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v39 = NUAssertLogger_22007();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v40)
      {
        v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v62 = MEMORY[0x1E696AF00];
        v63 = v61;
        callStackSymbols5 = [v62 callStackSymbols];
        v65 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v61;
        v73 = 2114;
        v74 = v65;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v42;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurfaceStorage copyFromStorage:region:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurfaceStorage.m", 411, @"Invalid parameter not satisfying: %s", v66, v67, v68, v69, "[self.format isEqualToPixelFormat:other.format]");
  }

  v16 = storageCopy[10];
  if (self->_device | v16)
  {
    if (v16)
    {
      device = storageCopy[10];
    }

    else
    {
      device = self->_device;
    }

    v18 = v16;
    v19 = [(NUIOSurfaceStorage *)self _copyFromIOSurfaceStorage:storageCopy region:v8 device:device];
  }

  else
  {
    v70.receiver = self;
    v70.super_class = NUIOSurfaceStorage;
    v19 = [(_NUAbstractBufferStorage *)&v70 copyFromStorage:storageCopy region:v8];
  }

  v20 = v19;

  return v20;
}

- (int64_t)useAsCVPixelBufferWithBlock:(id)block
{
  blockCopy = block;
  v12[0] = 0;
  v12[1] = 0;
  v12[2] = [(_NUAbstractStorage *)self size];
  v12[3] = v5;
  v6 = [NURegion regionWithRect:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__NUIOSurfaceStorage_useAsCVPixelBufferWithBlock___block_invoke;
  v10[3] = &unk_1E810AD98;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = [(NUIOSurfaceStorage *)self readSurfaceInRegion:v6 block:v10];

  return v8;
}

uint64_t __50__NUIOSurfaceStorage_useAsCVPixelBufferWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NUCVPixelBuffer alloc];
  v5 = [v3 pixelBuffer];

  v6 = [(NUCVPixelBuffer *)v4 initWithCVPixelBuffer:v5];
  (*(*(a1 + 32) + 16))();

  return 1;
}

- (int64_t)useAsCIRenderDestinationWithRenderer:(id)renderer block:(id)block
{
  rendererCopy = renderer;
  blockCopy = block;
  v17[0] = 0;
  v17[1] = 0;
  v17[2] = [(_NUAbstractStorage *)self size];
  v17[3] = v8;
  v9 = [NURegion regionWithRect:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__NUIOSurfaceStorage_useAsCIRenderDestinationWithRenderer_block___block_invoke;
  v14[3] = &unk_1E810AE10;
  v15 = rendererCopy;
  v16 = blockCopy;
  v14[4] = self;
  v10 = rendererCopy;
  v11 = blockCopy;
  v12 = [(NUIOSurfaceStorage *)self writeSurfaceInRegion:v9 block:v14];

  return v12;
}

uint64_t __65__NUIOSurfaceStorage_useAsCIRenderDestinationWithRenderer_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 incrementUseCount];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) renderDestinationForSurface:v4];

  v7 = (*(v5 + 16))(v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__NUIOSurfaceStorage_useAsCIRenderDestinationWithRenderer_block___block_invoke_2;
  v10[3] = &unk_1E810B9A8;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  if (([v8 addCurrentRenderCompletionHandler:v10] & 1) == 0)
  {
    [*(a1 + 32) decrementUseCount];
  }

  if (v7)
  {
    [*(a1 + 32) setIsDirty:0];
  }

  return v7;
}

- (int64_t)useAsCIImageWithOptions:(id)options renderer:(id)renderer block:(id)block
{
  optionsCopy = options;
  rendererCopy = renderer;
  blockCopy = block;
  v22[0] = 0;
  v22[1] = 0;
  v22[2] = [(_NUAbstractStorage *)self size];
  v22[3] = v11;
  v12 = [NURegion regionWithRect:v22];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__NUIOSurfaceStorage_useAsCIImageWithOptions_renderer_block___block_invoke;
  v18[3] = &unk_1E810AE10;
  v20 = optionsCopy;
  v21 = blockCopy;
  v19 = rendererCopy;
  v13 = optionsCopy;
  v14 = rendererCopy;
  v15 = blockCopy;
  v16 = [(NUIOSurfaceStorage *)self readSurfaceInRegion:v12 block:v18];

  return v16;
}

uint64_t __61__NUIOSurfaceStorage_useAsCIImageWithOptions_renderer_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) imageForSurface:a2 options:*(a1 + 40)];
  (*(v2 + 16))(v2, v3);

  return 1;
}

- (int64_t)writeTextureInRegion:(id)region device:(id)device block:(id)block
{
  v40 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  deviceCopy = device;
  blockCopy = block;
  if (![(NUDevice *)deviceCopy hasMetalSupport])
  {
    v20 = NUAssertLogger_22007();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "device.hasMetalSupport"];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_22007();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurfaceStorage writeTextureInRegion:device:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurfaceStorage.m", 325, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "device.hasMetalSupport");
  }

  surface = self->_surface;
  metalDevice = [(NUDevice *)deviceCopy metalDevice];
  v13 = [(NUIOSurface *)surface textureForDevice:metalDevice];

  if ([(_NUAbstractStorage *)self isDirty])
  {
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = [(_NUAbstractStorage *)self size];
    v39 = v14;
    v15 = [NURegion regionWithRect:buf];
    v16 = [regionCopy isEqualToRegion:v15];

    if ((v16 & 1) == 0)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __56__NUIOSurfaceStorage_writeTextureInRegion_device_block___block_invoke;
      v36[3] = &unk_1E810ADE8;
      v37 = v13;
      [(NUDevice *)deviceCopy executeMetal:v36];
    }

    [(_NUAbstractStorage *)self setIsDirty:0];
  }

  if (blockCopy[2](blockCopy, v13))
  {
    [(_NUAbstractStorage *)self validateRegion:regionCopy];
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  device = self->_device;
  self->_device = deviceCopy;

  return v17;
}

- (int64_t)readTextureInRegion:(id)region device:(id)device block:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  deviceCopy = device;
  blockCopy = block;
  if (![(NUDevice *)deviceCopy hasMetalSupport])
  {
    v16 = NUAssertLogger_22007();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "device.hasMetalSupport"];
      *buf = 138543362;
      v33 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_22007();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurfaceStorage readTextureInRegion:device:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurfaceStorage.m", 305, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "device.hasMetalSupport");
  }

  [(_NUAbstractStorage *)self assertIsValidInRegion:regionCopy];
  surface = self->_surface;
  metalDevice = [(NUDevice *)deviceCopy metalDevice];
  v13 = [(NUIOSurface *)surface textureForDevice:metalDevice];

  LODWORD(surface) = blockCopy[2](blockCopy, v13);
  device = self->_device;
  self->_device = deviceCopy;

  return surface;
}

- (int64_t)writeSurfaceInRegion:(id)region block:(id)block
{
  regionCopy = region;
  if ((*(block + 2))(block, self->_surface))
  {
    [(_NUAbstractStorage *)self validateRegion:regionCopy];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)readSurfaceInRegion:(id)region block:(id)block
{
  blockCopy = block;
  [(_NUAbstractStorage *)self assertIsValidInRegion:region];
  LODWORD(region) = blockCopy[2](blockCopy, self->_surface);

  return region;
}

- (int64_t)writeBufferInRegion:(id)region block:(id)block
{
  regionCopy = region;
  blockCopy = block;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__NUIOSurfaceStorage_writeBufferInRegion_block___block_invoke;
  v13[3] = &unk_1E810AE10;
  v13[4] = self;
  v14 = regionCopy;
  v15 = blockCopy;
  v8 = blockCopy;
  v9 = regionCopy;
  v10 = [(NUIOSurfaceStorage *)self writeSurfaceInRegion:v9 block:v13];
  device = self->_device;
  self->_device = 0;

  return v10;
}

uint64_t __48__NUIOSurfaceStorage_writeBufferInRegion_block___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__NUIOSurfaceStorage_writeBufferInRegion_block___block_invoke_2;
  v7[3] = &unk_1E810ADC0;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = [a2 write:v7];

  return v5;
}

void __48__NUIOSurfaceStorage_writeBufferInRegion_block___block_invoke_2(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) isDirty])
  {
    v4 = [*(a1 + 32) size];
    v6 = v5;
    v7 = *(a1 + 40);
    v9 = 0;
    v10 = 0;
    v11 = v4;
    v12 = v5;
    v8 = [NURegion regionWithRect:&v9];
    LOBYTE(v7) = [v7 isEqualToRegion:v8];

    if ((v7 & 1) == 0)
    {
      v13[0] = 0;
      v13[1] = 0;
      v9 = 0;
      v10 = 0;
      v11 = v4;
      v12 = v6;
      [NUImageUtilities fillPixelsInBuffer:v3 rect:&v9 srcPixel:v13];
    }

    [*(a1 + 32) setIsDirty:0];
  }

  (*(*(a1 + 48) + 16))();
}

- (int64_t)readBufferInRegion:(id)region block:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__NUIOSurfaceStorage_readBufferInRegion_block___block_invoke;
  v11[3] = &unk_1E810AD98;
  v12 = blockCopy;
  v7 = blockCopy;
  v8 = [(NUIOSurfaceStorage *)self readSurfaceInRegion:region block:v11];
  device = self->_device;
  self->_device = 0;

  return v8;
}

uint64_t __47__NUIOSurfaceStorage_readBufferInRegion_block___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__NUIOSurfaceStorage_readBufferInRegion_block___block_invoke_2;
  v5[3] = &unk_1E810AD70;
  v6 = *(a1 + 32);
  v3 = [a2 read:v5];

  return v3;
}

- (void)setContentHeadroom:(float)headroom
{
  v6.receiver = self;
  v6.super_class = NUIOSurfaceStorage;
  [(_NUAbstractStorage *)&v6 setContentHeadroom:?];
  *&v5 = headroom;
  [(NUIOSurface *)self->_surface setContentHeadroom:v5];
}

- (void)setColorSpace:(id)space
{
  v7.receiver = self;
  v7.super_class = NUIOSurfaceStorage;
  spaceCopy = space;
  [(_NUAbstractStorage *)&v7 setColorSpace:spaceCopy];
  surface = self->_surface;
  cGColorSpace = [spaceCopy CGColorSpace];

  [(NUIOSurface *)surface setColorSpace:cGColorSpace];
}

- (int)useCount
{
  iOSurface = [(NUIOSurface *)self->_surface IOSurface];
  localUseCount = [iOSurface localUseCount];

  return localUseCount;
}

- (BOOL)decrementUseCount
{
  [(NUIOSurface *)self->_surface invalidatePixelBuffer];
  iOSurface = [(NUIOSurface *)self->_surface IOSurface];
  [iOSurface decrementUseCount];

  iOSurface2 = [(NUIOSurface *)self->_surface IOSurface];
  LOBYTE(iOSurface) = [iOSurface2 isInUse];

  return iOSurface ^ 1;
}

- (void)incrementUseCount
{
  iOSurface = [(NUIOSurface *)self->_surface IOSurface];
  [iOSurface incrementUseCount];
}

- (BOOL)isInUse
{
  iOSurface = [(NUIOSurface *)self->_surface IOSurface];
  isInUse = [iOSurface isInUse];

  return isInUse;
}

- (BOOL)isShared
{
  iOSurface = [(NUIOSurface *)self->_surface IOSurface];
  localUseCount = [iOSurface localUseCount];
  if (localUseCount <= 1)
  {
    if (localUseCount)
    {
      isInUse = 0;
    }

    else
    {
      isInUse = [iOSurface isInUse];
    }
  }

  else
  {
    isInUse = 1;
  }

  return isInUse;
}

- (BOOL)makeNonPurgeable
{
  makeNonPurgeable = [(NUIOSurface *)self->_surface makeNonPurgeable];
  if (makeNonPurgeable)
  {
    self->_purgeable = 0;
  }

  return makeNonPurgeable;
}

- (void)adjustPurgeLevel:(int64_t)level
{
  if (self->_purgeLevel != level)
  {
    self->_purgeLevel = level;
    if (self->_purgeable)
    {
      [(NUIOSurface *)self->_surface makePurgeable:?];
    }
  }
}

- (void)_allocateSurface
{
  v3 = [NUIOSurface alloc];
  v4 = [(_NUAbstractStorage *)self size];
  v6 = v5;
  format = [(_NUAbstractStorage *)self format];
  v8 = [(NUIOSurface *)v3 initWithSize:v4 format:v6, format];
  surface = self->_surface;
  self->_surface = v8;

  v10 = self->_surface;

  [(NUIOSurface *)v10 setName:@"NUIOSurfaceStorage"];
}

- (NUIOSurfaceStorage)initWithSurface:(id)surface
{
  v34 = *MEMORY[0x1E69E9840];
  surfaceCopy = surface;
  if (!surfaceCopy)
  {
    v13 = NUAssertLogger_22007();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "surface != nil"];
      *buf = 138543362;
      v31 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_22007();
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
        *buf = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurfaceStorage initWithSurface:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurfaceStorage.m", 72, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "surface != nil");
  }

  v5 = surfaceCopy;
  v29.receiver = self;
  v29.super_class = NUIOSurfaceStorage;
  v6 = [(_NUAbstractStorage *)&v29 init];
  v7 = [(NUIOSurface *)v5 size];
  v9 = v8;
  format = [(NUIOSurface *)v5 format];
  [(_NUAbstractStorage *)v6 _resetSize:v7 format:v9, format];

  surface = v6->_surface;
  v6->_surface = v5;

  v6->_purgeLevel = 1;
  return v6;
}

- (NUIOSurfaceStorage)initWithSize:(id)size format:(id)format
{
  var1 = size.var1;
  var0 = size.var0;
  v32 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (!formatCopy)
  {
    v11 = NUAssertLogger_22007();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pixelFormat != nil"];
      *buf = 138543362;
      v29 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_22007();
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
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUIOSurfaceStorage initWithSize:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUIOSurfaceStorage.m", 55, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "pixelFormat != nil");
  }

  v8 = formatCopy;
  v27.receiver = self;
  v27.super_class = NUIOSurfaceStorage;
  v9 = [(_NUAbstractStorage *)&v27 init];
  [(_NUAbstractStorage *)v9 _resetSize:var0 format:var1, v8];
  [(NUIOSurfaceStorage *)v9 _allocateSurface];
  v9->_purgeLevel = 1;

  return v9;
}

@end