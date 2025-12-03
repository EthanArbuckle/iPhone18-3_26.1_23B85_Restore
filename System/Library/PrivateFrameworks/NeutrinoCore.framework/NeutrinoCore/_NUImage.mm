@interface _NUImage
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (BOOL)beginAccess;
- (BOOL)beginAccessRegion:(id)region;
- (BOOL)copyBufferStorage:(id)storage fromRect:(id *)rect toPoint:(id)point;
- (BOOL)copySurfaceStorage:(id)storage fromRect:(id *)rect toPoint:(id)point device:(id)device;
- (NSString)description;
- (_NUImage)init;
- (_NUImage)initWithLayout:(id)layout format:(id)format colorSpace:(id)space headroom:(float)headroom tileFactory:(id)factory;
- (id).cxx_construct;
- (id)_createOrCopyTile:(id)tile tileInfo:(id)info writeRegion:(id)region;
- (id)_nonPurgeableCopy;
- (id)_purgeableCopy;
- (id)tileAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)endAccess;
- (void)endAccessRegion:(id)region;
- (void)readRegion:(id)region withBlock:(id)block;
- (void)writeRegion:(id)region withBlock:(id)block;
@end

@implementation _NUImage

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

- (BOOL)copyBufferStorage:(id)storage fromRect:(id *)rect toPoint:(id)point
{
  v27 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
  }

  v6 = _NUAssertLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v9];
    *buf = 138543362;
    v24 = v10;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
    }

    v11 = _NUAssertLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v24 = v14;
      v25 = 2114;
      v26 = v16;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
    }

    v11 = _NUAssertLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  _NUAssertFailHandler("[_NUImage copyBufferStorage:fromRect:toPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 891, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v19, v20, v21, v22, v18);
}

- (BOOL)copySurfaceStorage:(id)storage fromRect:(id *)rect toPoint:(id)point device:(id)device
{
  v30 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  deviceCopy = device;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
  }

  v9 = _NUAssertLogger;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v12];
    *buf = 138543362;
    v27 = v13;
    _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
    }

    v14 = _NUAssertLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v27 = v17;
      v28 = 2114;
      v29 = v19;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
    }

    v14 = _NUAssertLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  _NUAssertFailHandler("[_NUImage copySurfaceStorage:fromRect:toPoint:device:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 886, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v22, v23, v24, v25, v21);
}

- (id)_nonPurgeableCopy
{
  _purgeableCopy = [(_NUImage *)self _purgeableCopy];
  [_purgeableCopy beginAccess];

  return _purgeableCopy;
}

- (id)_purgeableCopy
{
  v3 = objc_alloc(objc_opt_class());
  *&v4 = self->_contentHeadroom;
  v5 = [v3 initWithLayout:self->_layout format:self->_format colorSpace:self->_colorSpace headroom:self->_tileFactory tileFactory:v4];
  objc_storeStrong((v5 + 64), self->_tileFactory);
  tileCount = [(NUImageLayout *)self->_layout tileCount];
  v15 = 0;
  std::vector<unsigned char>::vector[abi:ne200100](&v16, tileCount);
  v7 = *(v5 + 72);
  if (v7)
  {
    *(v5 + 80) = v7;
    operator delete(v7);
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
  }

  *(v5 + 72) = v16;
  *(v5 + 88) = v17;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26___NUImage__purgeableCopy__block_invoke;
  block[3] = &unk_1E810B958;
  v9 = v5;
  v13 = v9;
  selfCopy = self;
  dispatch_sync(queue, block);
  v10 = v9;

  return v9;
}

- (void)endAccessRegion:(id)region
{
  v27 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  if (!regionCopy)
  {
    v7 = NUAssertLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "region != nil"];
      *buf = 138543362;
      v24 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v14;
        v25 = 2114;
        v26 = v16;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImage endAccessRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 821, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "region != nil");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28___NUImage_endAccessRegion___block_invoke;
  block[3] = &unk_1E810B958;
  block[4] = self;
  v22 = regionCopy;
  v6 = regionCopy;
  dispatch_sync(queue, block);
}

- (void)endAccess
{
  imageSize = [(NUImageLayout *)self->_layout imageSize];
  v6[0] = 0;
  v6[1] = 0;
  v6[2] = imageSize;
  v6[3] = v4;
  v5 = [NURegion regionWithRect:v6];
  [(_NUImage *)self endAccessRegion:v5];
}

- (BOOL)beginAccessRegion:(id)region
{
  regionCopy = region;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30___NUImage_beginAccessRegion___block_invoke;
  block[3] = &unk_1E810B500;
  block[4] = self;
  v9 = regionCopy;
  v10 = &v11;
  v6 = regionCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (BOOL)beginAccess
{
  selfCopy = self;
  imageSize = [(NUImageLayout *)self->_layout imageSize];
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = imageSize;
  v7[3] = v4;
  v5 = [NURegion regionWithRect:v7];
  LOBYTE(selfCopy) = [(_NUImage *)selfCopy beginAccessRegion:v5];

  return selfCopy;
}

- (void)writeRegion:(id)region withBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  blockCopy = block;
  if ([regionCopy isEmpty])
  {
    v13 = NUAssertLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "![region isEmpty]"];
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2114;
        *&buf[14] = v22;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUImage writeRegion:withBlock:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 712, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "![region isEmpty]");
  }

  layout = self->_layout;
  if (regionCopy)
  {
    [regionCopy bounds];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __34___NUImage_writeRegion_withBlock___block_invoke;
  v29[3] = &unk_1E810B438;
  v9 = regionCopy;
  v30 = v9;
  selfCopy = self;
  v10 = blockCopy;
  v32 = v10;
  [(NUImageLayout *)layout enumerateTilesForWritingInRect:buf withBlock:v29];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34___NUImage_writeRegion_withBlock___block_invoke_5;
  block[3] = &unk_1E810B958;
  block[4] = self;
  v28 = v9;
  v12 = v9;
  dispatch_sync(queue, block);
}

- (id)_createOrCopyTile:(id)tile tileInfo:(id)info writeRegion:(id)region
{
  v76 = *MEMORY[0x1E69E9840];
  tileCopy = tile;
  infoCopy = info;
  regionCopy = region;
  v59 = regionCopy;
  index = [infoCopy index];
  tileFactory = self->_tileFactory;
  v13 = [infoCopy size];
  v15 = [(NUStorageFactory *)tileFactory newStorageWithSize:v13 format:v14, self->_format];
  [v15 setColorSpace:self->_colorSpace];
  *&v16 = self->_contentHeadroom;
  [v15 setContentHeadroom:v16];
  v60 = [[_NUImageTile alloc] initWithStorage:v15];
  if ([(_NUImageTile *)v60 accessCount]!= 1)
  {
    v39 = NUAssertLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tile should have an access count"];
      *v73 = 138543362;
      *&v73[4] = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v73, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v43)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v48 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v73 = 138543618;
        *&v73[4] = v46;
        *&v73[12] = 2114;
        *&v73[14] = v48;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v73, 0x16u);
      }
    }

    else if (v43)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v73 = 138543362;
      *&v73[4] = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v73, 0xCu);
    }

    _NUAssertFailHandler("[_NUImage _createOrCopyTile:tileInfo:writeRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 616, @"Tile should have an access count", v49, v50, v51, v52, v53);
  }

  v17 = &off_1C03C2000;
  if (tileCopy)
  {
    memset(v73, 0, sizeof(v73));
    if (infoCopy)
    {
      [infoCopy frameRect];
    }

    validRegion = [(_NUImage *)self validRegion];
    *buf = *v73;
    *&buf[16] = *&v73[16];
    v19 = [validRegion regionByClippingToRect:buf];

    v20 = [v19 regionByRemovingRegion:regionCopy];
    v21 = [v20 mutableCopy];

    [v21 translateBy:{-*v73, -*&v73[8]}];
    if (([v21 isEmpty] & 1) == 0)
    {
      v58 = [(_NUImageTile *)v60 copyFromTile:tileCopy region:v21];
      if (v58 != 1)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
        }

        v22 = _NUAssertLogger;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = tileCopy;
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: failed to copy tile %@ -> %@ result=%ld", self, tileCopy, v60, v58];
          *buf = 138543362;
          *&buf[4] = v24;
          _os_log_impl(&dword_1C0184000, v22, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

          tileCopy = v23;
          v17 = &off_1C03C2000;
        }

        if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
          }

          log = _NUAssertLogger;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
            v25 = [callStackSymbols3 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            *&buf[4] = v55;
            *&buf[12] = 2114;
            *&buf[14] = v25;
            _os_log_error_impl(&dword_1C0184000, log, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
          }

          log = _NUAssertLogger;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
            v38 = [callStackSymbols4 componentsJoinedByString:@"\n"];
            *buf = 138543362;
            *&buf[4] = v38;
            _os_log_error_impl(&dword_1C0184000, log, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
          }
        }

        _NUAssertContinueHandler("[_NUImage _createOrCopyTile:tileInfo:writeRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 634, @"%@: failed to copy tile %@ -> %@ result=%ld", v26, v27, v28, v29, self);
        queue = self->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = *(v17 + 135);
        block[2] = __51___NUImage__createOrCopyTile_tileInfo_writeRegion___block_invoke;
        block[3] = &unk_1E810B460;
        block[4] = self;
        v68 = *v73;
        v69 = *&v73[16];
        dispatch_sync(queue, block);
      }
    }
  }

  *v73 = 0;
  *&v73[8] = v73;
  *&v73[16] = 0x3032000000;
  *&v73[24] = __Block_byref_object_copy__28726;
  v74 = __Block_byref_object_dispose__28727;
  v75 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__28726;
  v71 = __Block_byref_object_dispose__28727;
  v31 = v60;
  v72 = v31;
  v32 = self->_queue;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = *(v17 + 135);
  v61[2] = __51___NUImage__createOrCopyTile_tileInfo_writeRegion___block_invoke_2;
  v61[3] = &unk_1E810B488;
  v61[4] = self;
  v66 = index;
  v33 = tileCopy;
  v62 = v33;
  v64 = v73;
  v34 = v31;
  v63 = v34;
  v65 = buf;
  dispatch_sync(v32, v61);
  v35 = *(*&v73[8] + 40);
  if (v35)
  {
    [v35 returnToStorageFactory:self->_tileFactory];
  }

  v36 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v73, 8);

  return v36;
}

- (void)readRegion:(id)region withBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  blockCopy = block;
  if ([regionCopy isEmpty])
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
    }

    v8 = _NUAssertLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "![region isEmpty]"];
      *buf = 138543362;
      *&buf[4] = v9;
      _os_log_impl(&dword_1C0184000, v8, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);
    }

    if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
      }

      v10 = _NUAssertLogger;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v11;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
      }

      v10 = _NUAssertLogger;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v20;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }
    }

    _NUAssertContinueHandler("[_NUImage readRegion:withBlock:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 580, @"Invalid parameter not satisfying: %s", v14, v15, v16, v17, "![region isEmpty]");
  }

  if (([regionCopy isEmpty] & 1) == 0)
  {
    layout = self->_layout;
    if (regionCopy)
    {
      [regionCopy bounds];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __33___NUImage_readRegion_withBlock___block_invoke;
    v21[3] = &unk_1E810B438;
    v22 = regionCopy;
    selfCopy = self;
    v24 = blockCopy;
    [(NUImageLayout *)layout enumerateTilesForReadingInRect:buf withBlock:v21];
  }
}

- (id)tileAtIndex:(unint64_t)index
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__28726;
  v11 = __Block_byref_object_dispose__28727;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24___NUImage_tileAtIndex___block_invoke;
  block[3] = &unk_1E810B3E8;
  block[4] = self;
  block[5] = &v7;
  block[6] = index;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  imageSize = [(NUImageLayout *)self->_layout imageSize];
  result.var1 = v3;
  result.var0 = imageSize;
  return result;
}

- (NSString)description
{
  layout = [(_NUImage *)self layout];
  tileCount = [layout tileCount];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23___NUImage_description__block_invoke;
  block[3] = &unk_1E810B750;
  v21 = tileCount;
  block[4] = self;
  v7 = v5;
  v20 = v7;
  dispatch_sync(queue, block);
  v18 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = [(_NUImage *)self size];
  [(_NUImage *)self size];
  v11 = v10;
  format = [(_NUImage *)self format];
  colorSpace = [(_NUImage *)self colorSpace];
  name = [colorSpace name];
  v15 = [v7 componentsJoinedByString:@"\n"];
  v16 = [v18 stringWithFormat:@"<%@:%p> size: %dx%d, format: %@, space: %@, %d tiles:\n%@", v8, self, v9, v11, format, name, tileCount, v15];

  return v16;
}

- (void)dealloc
{
  tileCount = [(NUImageLayout *)self->_layout tileCount];
  if (tileCount)
  {
    for (i = 0; i != tileCount; ++i)
    {
      v5 = [(NSPointerArray *)self->_tiles pointerAtIndex:i];
      v6 = v5;
      if (v5)
      {
        if (self->_accessCount.__begin_[i])
        {
          [v5 decrementAccessCountButLeaveAccessedIfLastUse];
        }

        [v6 returnToStorageFactory:self->_tileFactory];
      }
    }
  }

  tiles = self->_tiles;
  self->_tiles = 0;

  v8.receiver = self;
  v8.super_class = _NUImage;
  [(_NUImage *)&v8 dealloc];
}

- (_NUImage)initWithLayout:(id)layout format:(id)format colorSpace:(id)space headroom:(float)headroom tileFactory:(id)factory
{
  v69 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  formatCopy = format;
  spaceCopy = space;
  factoryCopy = factory;
  v17 = factoryCopy;
  if (!layoutCopy)
  {
    v33 = NUAssertLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "layout != nil"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v37)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v54 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v52;
        *&buf[12] = 2114;
        *&buf[14] = v54;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v55 = "layout != nil";
    v56 = 493;
LABEL_33:

    _NUAssertFailHandler("[_NUImage initWithLayout:format:colorSpace:headroom:tileFactory:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", v56, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, v55);
  }

  if (!formatCopy)
  {
    v40 = NUAssertLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger();
    v43 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v42)
    {
      if (v43)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v59 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v57;
        *&buf[12] = 2114;
        *&buf[14] = v59;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v45;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v55 = "format != nil";
    v56 = 494;
    goto LABEL_33;
  }

  if (!factoryCopy)
  {
    v46 = NUAssertLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tileFactory != nil"];
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger();
    v49 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v48)
    {
      if (v49)
      {
        v60 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v62 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v60;
        *&buf[12] = 2114;
        *&buf[14] = v62;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v51;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v55 = "tileFactory != nil";
    v56 = 495;
    goto LABEL_33;
  }

  v67.receiver = self;
  v67.super_class = _NUImage;
  v18 = [(_NUImage *)&v67 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_layout, layout);
    objc_storeStrong(&v19->_format, format);
    objc_storeStrong(&v19->_colorSpace, space);
    v19->_contentHeadroom = headroom;
    v20 = +[NURegion region];
    validRegion = v19->_validRegion;
    v19->_validRegion = v20;

    objc_storeStrong(&v19->_tileFactory, factory);
    tileCount = [(NUImageLayout *)v19->_layout tileCount];
    strongObjectsPointerArray = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
    tiles = v19->_tiles;
    v19->_tiles = strongObjectsPointerArray;

    [(NSPointerArray *)v19->_tiles setCount:tileCount];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create("_NUImage", v25);
    queue = v19->_queue;
    v19->_queue = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("_NUImage.write", v28);
    writeQueue = v19->_writeQueue;
    v19->_writeQueue = v29;

    std::vector<unsigned char>::vector[abi:ne200100](buf, tileCount);
    begin = v19->_accessCount.__begin_;
    if (begin)
    {
      v19->_accessCount.__end_ = begin;
      operator delete(begin);
      v19->_accessCount.__begin_ = 0;
      v19->_accessCount.__end_ = 0;
      v19->_accessCount.__cap_ = 0;
    }

    *&v19->_accessCount.__begin_ = *buf;
    v19->_accessCount.__cap_ = *&buf[16];
  }

  return v19;
}

- (_NUImage)init
{
  v25 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    v8 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v6, v7];
    *buf = 138543362;
    v22 = v8;
    _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_28600);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[_NUImage init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 489, @"Initializer not available: [%@ %@], use designated initializer instead.", v17, v18, v19, v20, v16);
}

@end