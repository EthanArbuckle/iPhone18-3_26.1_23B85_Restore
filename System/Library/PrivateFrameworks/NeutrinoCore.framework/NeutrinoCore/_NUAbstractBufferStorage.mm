@interface _NUAbstractBufferStorage
- (const)bytesAtPoint:(id)a3;
- (int64_t)copyFromStorage:(id)a3 region:(id)a4;
- (void)mutableBytesAtPoint:(id)a3;
@end

@implementation _NUAbstractBufferStorage

- (int64_t)copyFromStorage:(id)a3 region:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v18 = NUAssertLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = [MEMORY[0x1E696AF00] callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v37;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v40 = "other != nil";
    v41 = 193;
LABEL_32:

    _NUAssertFailHandler("[_NUAbstractBufferStorage copyFromStorage:region:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageStorage.mm", v41, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, v40);
  }

  v8 = [v6 size];
  v10 = v9;
  if (v8 != [(_NUAbstractStorage *)self size]|| v10 != v11)
  {
    v25 = NUAssertLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUPixelSizeEqualToSize(other.size, self.size)"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger();
    v28 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v28)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = [MEMORY[0x1E696AF00] callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v42;
        *&buf[12] = 2114;
        *&buf[14] = v44;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v40 = "NUPixelSizeEqualToSize(other.size, self.size)";
    v41 = 194;
    goto LABEL_32;
  }

  v12 = [(_NUAbstractStorage *)self format];
  v13 = [v6 format];
  v14 = [v12 isEqualToPixelFormat:v13];

  if ((v14 & 1) == 0)
  {
    v31 = NUAssertLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[self.format isEqualToPixelFormat:other.format]"];
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger();
    v34 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v34)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = [MEMORY[0x1E696AF00] callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v45;
        *&buf[12] = 2114;
        *&buf[14] = v47;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v36;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v40 = "[self.format isEqualToPixelFormat:other.format]";
    v41 = 195;
    goto LABEL_32;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v56 = 1;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __51___NUAbstractBufferStorage_copyFromStorage_region___block_invoke;
  v52[3] = &unk_1E810A988;
  v54 = buf;
  v52[4] = self;
  v15 = v7;
  v53 = v15;
  v16 = [v6 readBufferInRegion:v15 block:v52];
  if (v16 == 1)
  {
    v16 = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);
  return v16;
}

- (void)mutableBytesAtPoint:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v30 = *MEMORY[0x1E69E9840];
  v6 = [(_NUAbstractStorage *)self size];
  if (var0 < 0 || var0 >= v6 || var1 < 0 || var1 >= v7)
  {
    v12 = NUAssertLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUPixelPointInRect(point, extent)"];
      *buf = 138543362;
      v27 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v19;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUAbstractBufferStorage mutableBytesAtPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageStorage.mm", 183, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "NUPixelPointInRect(point, extent)");
  }

  v8 = [(_NUAbstractStorage *)self format];
  v9 = [v8 bytesPerPixel];

  v10 = [(_NUAbstractBufferStorage *)self rowBytes];
  return ([(_NUAbstractBufferStorage *)self mutableBytes]+ v10 * var1 + v9 * var0);
}

- (const)bytesAtPoint:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v30 = *MEMORY[0x1E69E9840];
  v6 = [(_NUAbstractStorage *)self size];
  if (var0 < 0 || var0 >= v6 || var1 < 0 || var1 >= v7)
  {
    v12 = NUAssertLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUPixelPointInRect(point, extent)"];
      *buf = 138543362;
      v27 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v19;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUAbstractBufferStorage bytesAtPoint:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageStorage.mm", 172, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "NUPixelPointInRect(point, extent)");
  }

  v8 = [(_NUAbstractStorage *)self format];
  v9 = [v8 bytesPerPixel];

  v10 = [(_NUAbstractBufferStorage *)self rowBytes];
  return ([(_NUAbstractBufferStorage *)self bytes]+ v10 * var1 + v9 * var0);
}

@end