@interface NUWrappedBufferStorage
- (NUWrappedBufferStorage)initWithSize:(id)size format:(id)format bytes:(void *)bytes rowBytes:(int64_t)rowBytes length:(int64_t)length;
- (id)newRenderDestination;
- (int64_t)readBufferInRegion:(id)region block:(id)block;
- (int64_t)writeBufferInRegion:(id)region block:(id)block;
@end

@implementation NUWrappedBufferStorage

- (id)newRenderDestination
{
  v3 = objc_alloc(MEMORY[0x1E695F678]);
  mutableBytes = [(NUWrappedBufferStorage *)self mutableBytes];
  v5 = [(_NUAbstractStorage *)self size];
  [(_NUAbstractStorage *)self size];
  v7 = v6;
  rowBytes = [(NUWrappedBufferStorage *)self rowBytes];
  format = [(_NUAbstractStorage *)self format];
  v10 = [v3 initWithBitmapData:mutableBytes width:v5 height:v7 bytesPerRow:rowBytes format:{objc_msgSend(format, "CIFormat")}];

  [v10 setLabel:@"NUWrappedBufferStorage-new"];
  return v10;
}

- (int64_t)writeBufferInRegion:(id)region block:(id)block
{
  blockCopy = block;
  regionCopy = region;
  v8 = [[NUMutableBufferAdapter alloc] initWithMutableBuffer:self];
  blockCopy[2](blockCopy, v8);

  [(NUBufferAdapter *)v8 invalidate];
  [(_NUAbstractStorage *)self validateRegion:regionCopy];

  return 1;
}

- (int64_t)readBufferInRegion:(id)region block:(id)block
{
  blockCopy = block;
  [(_NUAbstractStorage *)self assertIsValidInRegion:region];
  v7 = [[NUBufferAdapter alloc] initWithBuffer:self];
  blockCopy[2](blockCopy, v7);

  [(NUBufferAdapter *)v7 invalidate];
  return 1;
}

- (NUWrappedBufferStorage)initWithSize:(id)size format:(id)format bytes:(void *)bytes rowBytes:(int64_t)rowBytes length:(int64_t)length
{
  var1 = size.var1;
  var0 = size.var0;
  v102 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (!formatCopy)
  {
    v17 = NUAssertLogger_10319();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pixelFormat != nil"];
      *buf = 138543362;
      v99 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_10319();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols = [v53 callStackSymbols];
        v56 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v52;
        v100 = 2114;
        v101 = v56;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUWrappedBufferStorage initWithSize:format:bytes:rowBytes:length:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 353, @"Invalid parameter not satisfying: %s", v57, v58, v59, v60, "pixelFormat != nil");
  }

  if (!bytes)
  {
    v24 = NUAssertLogger_10319();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "bytes != nil"];
      *buf = 138543362;
      v99 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_10319();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v62 = MEMORY[0x1E696AF00];
        v63 = v61;
        callStackSymbols3 = [v62 callStackSymbols];
        v65 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v61;
        v100 = 2114;
        v101 = v65;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUWrappedBufferStorage initWithSize:format:bytes:rowBytes:length:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 354, @"Invalid parameter not satisfying: %s", v66, v67, v68, v69, "bytes != nil");
  }

  if (!rowBytes)
  {
    v31 = NUAssertLogger_10319();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "rowBytes != 0"];
      *buf = 138543362;
      v99 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_10319();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v70 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v71 = MEMORY[0x1E696AF00];
        v72 = v70;
        callStackSymbols5 = [v71 callStackSymbols];
        v74 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v70;
        v100 = 2114;
        v101 = v74;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUWrappedBufferStorage initWithSize:format:bytes:rowBytes:length:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 355, @"Invalid parameter not satisfying: %s", v75, v76, v77, v78, "rowBytes != 0");
  }

  if (!length)
  {
    v38 = NUAssertLogger_10319();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "length != 0"];
      *buf = 138543362;
      v99 = v39;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v41 = NUAssertLogger_10319();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      if (v42)
      {
        v79 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v80 = MEMORY[0x1E696AF00];
        v81 = v79;
        callStackSymbols7 = [v80 callStackSymbols];
        v83 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v79;
        v100 = 2114;
        v101 = v83;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUWrappedBufferStorage initWithSize:format:bytes:rowBytes:length:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 356, @"Invalid parameter not satisfying: %s", v84, v85, v86, v87, "length != 0");
  }

  if (var1 * rowBytes > length)
  {
    v45 = NUAssertLogger_10319();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "length >= size.height * rowBytes"];
      *buf = 138543362;
      v99 = v46;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v48 = NUAssertLogger_10319();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (v47)
    {
      if (v49)
      {
        v88 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v89 = MEMORY[0x1E696AF00];
        v90 = v88;
        callStackSymbols9 = [v89 callStackSymbols];
        v92 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v88;
        v100 = 2114;
        v101 = v92;
        _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v51;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUWrappedBufferStorage initWithSize:format:bytes:rowBytes:length:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 357, @"Invalid parameter not satisfying: %s", v93, v94, v95, v96, "length >= size.height * rowBytes");
  }

  v14 = formatCopy;
  v97.receiver = self;
  v97.super_class = NUWrappedBufferStorage;
  v15 = [(_NUAbstractStorage *)&v97 init];
  v15->_rowBytes = rowBytes;
  v15->_length = length;
  v15->_bytes = bytes;
  [(_NUAbstractStorage *)v15 _resetSize:var0 format:var1, v14];

  return v15;
}

@end