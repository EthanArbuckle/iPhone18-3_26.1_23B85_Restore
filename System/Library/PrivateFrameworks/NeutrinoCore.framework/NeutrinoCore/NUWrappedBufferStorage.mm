@interface NUWrappedBufferStorage
- (NUWrappedBufferStorage)initWithSize:(id)a3 format:(id)a4 bytes:(void *)a5 rowBytes:(int64_t)a6 length:(int64_t)a7;
- (id)newRenderDestination;
- (int64_t)readBufferInRegion:(id)a3 block:(id)a4;
- (int64_t)writeBufferInRegion:(id)a3 block:(id)a4;
@end

@implementation NUWrappedBufferStorage

- (id)newRenderDestination
{
  v3 = objc_alloc(MEMORY[0x1E695F678]);
  v4 = [(NUWrappedBufferStorage *)self mutableBytes];
  v5 = [(_NUAbstractStorage *)self size];
  [(_NUAbstractStorage *)self size];
  v7 = v6;
  v8 = [(NUWrappedBufferStorage *)self rowBytes];
  v9 = [(_NUAbstractStorage *)self format];
  v10 = [v3 initWithBitmapData:v4 width:v5 height:v7 bytesPerRow:v8 format:{objc_msgSend(v9, "CIFormat")}];

  [v10 setLabel:@"NUWrappedBufferStorage-new"];
  return v10;
}

- (int64_t)writeBufferInRegion:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NUMutableBufferAdapter alloc] initWithMutableBuffer:self];
  v6[2](v6, v8);

  [(NUBufferAdapter *)v8 invalidate];
  [(_NUAbstractStorage *)self validateRegion:v7];

  return 1;
}

- (int64_t)readBufferInRegion:(id)a3 block:(id)a4
{
  v6 = a4;
  [(_NUAbstractStorage *)self assertIsValidInRegion:a3];
  v7 = [[NUBufferAdapter alloc] initWithBuffer:self];
  v6[2](v6, v7);

  [(NUBufferAdapter *)v7 invalidate];
  return 1;
}

- (NUWrappedBufferStorage)initWithSize:(id)a3 format:(id)a4 bytes:(void *)a5 rowBytes:(int64_t)a6 length:(int64_t)a7
{
  var1 = a3.var1;
  var0 = a3.var0;
  v102 = *MEMORY[0x1E69E9840];
  v13 = a4;
  if (!v13)
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
        v55 = [v53 callStackSymbols];
        v56 = [v55 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v52;
        v100 = 2114;
        v101 = v56;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUWrappedBufferStorage initWithSize:format:bytes:rowBytes:length:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 353, @"Invalid parameter not satisfying: %s", v57, v58, v59, v60, "pixelFormat != nil");
  }

  if (!a5)
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
        v64 = [v62 callStackSymbols];
        v65 = [v64 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v61;
        v100 = 2114;
        v101 = v65;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUWrappedBufferStorage initWithSize:format:bytes:rowBytes:length:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 354, @"Invalid parameter not satisfying: %s", v66, v67, v68, v69, "bytes != nil");
  }

  if (!a6)
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
        v73 = [v71 callStackSymbols];
        v74 = [v73 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v70;
        v100 = 2114;
        v101 = v74;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUWrappedBufferStorage initWithSize:format:bytes:rowBytes:length:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 355, @"Invalid parameter not satisfying: %s", v75, v76, v77, v78, "rowBytes != 0");
  }

  if (!a7)
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
        v82 = [v80 callStackSymbols];
        v83 = [v82 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v79;
        v100 = 2114;
        v101 = v83;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      v43 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [v43 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUWrappedBufferStorage initWithSize:format:bytes:rowBytes:length:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 356, @"Invalid parameter not satisfying: %s", v84, v85, v86, v87, "length != 0");
  }

  if (var1 * a6 > a7)
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
        v91 = [v89 callStackSymbols];
        v92 = [v91 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v99 = v88;
        v100 = 2114;
        v101 = v92;
        _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      v50 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [v50 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v99 = v51;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUWrappedBufferStorage initWithSize:format:bytes:rowBytes:length:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUBufferStorage.m", 357, @"Invalid parameter not satisfying: %s", v93, v94, v95, v96, "length >= size.height * rowBytes");
  }

  v14 = v13;
  v97.receiver = self;
  v97.super_class = NUWrappedBufferStorage;
  v15 = [(_NUAbstractStorage *)&v97 init];
  v15->_rowBytes = a6;
  v15->_length = a7;
  v15->_bytes = a5;
  [(_NUAbstractStorage *)v15 _resetSize:var0 format:var1, v14];

  return v15;
}

@end