@interface NUChannelImageMediaFormat
+ (id)genericImageFormat:(int64_t)a3;
+ (id)stillImageFormat:(int64_t)a3;
+ (id)videoImageFormat:(int64_t)a3;
- (BOOL)canSpecializeComponentMediaFormat:(id)a3;
- (BOOL)canSpecializeImageMediaFormat:(id)a3;
- (BOOL)canSpecializeMediaFormat:(id)a3;
- (BOOL)isCompatibleWithImageMediaFormat:(id)a3;
- (BOOL)isCompatibleWithMediaFormat:(id)a3;
- (BOOL)isEqualToChannelFormat:(id)a3;
- (BOOL)isEqualToImageMediaFormat:(id)a3;
- (NUChannelImageMediaFormat)initWithImageMediaType:(int64_t)a3 temporality:(int64_t)a4;
- (NUChannelImageMediaFormat)initWithMediaTemporality:(int64_t)a3;
- (id)description;
- (id)specializedWithComponentMediaFormat:(id)a3;
- (id)specializedWithImageMediaFormat:(id)a3;
- (unint64_t)hash;
@end

@implementation NUChannelImageMediaFormat

- (id)description
{
  v8.receiver = self;
  v8.super_class = NUChannelImageMediaFormat;
  v3 = [(NUChannelMediaFormat *)&v8 description];
  if ([(NUChannelImageMediaFormat *)self imageMediaType])
  {
    v4 = [(NUChannelImageMediaFormat *)self imageMediaType];
    if (v4 > 4)
    {
      v5 = @"???";
    }

    else
    {
      v5 = off_1E8109AF0[v4];
    }

    v6 = [v3 stringByAppendingFormat:@":%@", v5];

    v3 = v6;
  }

  return v3;
}

- (id)specializedWithComponentMediaFormat:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = NUAssertLogger_4187();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v9 stringWithFormat:@"Invalid parameter not kind of %@", v11];
        *buf = 138543362;
        v30 = v12;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v14 = NUAssertLogger_4187();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v15)
        {
          v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v19 = MEMORY[0x1E696AF00];
          v20 = v18;
          v21 = [v19 callStackSymbols];
          v22 = [v21 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v30 = v18;
          v31 = 2114;
          v32 = v22;
          _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v15)
      {
        v16 = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v30 = v17;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      _NUAssertFailHandler("[NUChannelImageMediaFormat specializedWithComponentMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 784, @"Invalid parameter not kind of %@", v25, v26, v27, v28, v24);
    }
  }

  v5 = [(NUChannelMediaFormat *)self temporality];
  if (!v5)
  {
    v5 = [v4 temporality];
  }

  v6 = [[NUChannelImageMediaFormat alloc] initWithImageMediaType:[(NUChannelImageMediaFormat *)self imageMediaType] temporality:v5];

  return v6;
}

- (id)specializedWithImageMediaFormat:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = NUAssertLogger_4187();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v10 stringWithFormat:@"Invalid parameter not kind of %@", v12];
        *buf = 138543362;
        v31 = v13;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v15 = NUAssertLogger_4187();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v16)
        {
          v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v20 = MEMORY[0x1E696AF00];
          v21 = v19;
          v22 = [v20 callStackSymbols];
          v23 = [v22 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v31 = v19;
          v32 = 2114;
          v33 = v23;
          _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v16)
      {
        v17 = [MEMORY[0x1E696AF00] callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v31 = v18;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      _NUAssertFailHandler("[NUChannelImageMediaFormat specializedWithImageMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 766, @"Invalid parameter not kind of %@", v26, v27, v28, v29, v25);
    }
  }

  v5 = [(NUChannelMediaFormat *)self temporality];
  if (!v5)
  {
    v5 = [v4 temporality];
  }

  v6 = [(NUChannelImageMediaFormat *)self imageMediaType];
  if (!v6)
  {
    v6 = [v4 imageMediaType];
  }

  v7 = [[NUChannelImageMediaFormat alloc] initWithImageMediaType:v6 temporality:v5];

  return v7;
}

- (BOOL)canSpecializeComponentMediaFormat:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = NUAssertLogger_4187();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 stringWithFormat:@"Invalid parameter not kind of %@", v10];
        *buf = 138543362;
        v30 = v11;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = NUAssertLogger_4187();
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
          *buf = 138543618;
          v30 = v17;
          v31 = 2114;
          v32 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v30 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _NUAssertFailHandler("[NUChannelImageMediaFormat canSpecializeComponentMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 750, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  if ([v4 componentMediaType] == 1 && -[NUChannelImageMediaFormat imageMediaType](self, "imageMediaType"))
  {
    v5 = 1;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = NUChannelImageMediaFormat;
    v5 = [(NUChannelMediaFormat *)&v28 canSpecializeComponentMediaFormat:v4];
  }

  return v5;
}

- (BOOL)canSpecializeImageMediaFormat:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = NUAssertLogger_4187();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 stringWithFormat:@"Invalid parameter not kind of %@", v10];
        *buf = 138543362;
        v29 = v11;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = NUAssertLogger_4187();
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
          *buf = 138543618;
          v29 = v17;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v29 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _NUAssertFailHandler("[NUChannelImageMediaFormat canSpecializeImageMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 734, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  v5 = -[NUChannelImageMediaFormat imageMediaType](self, "imageMediaType") && ![v4 imageMediaType] || -[NUChannelMediaFormat temporality](self, "temporality") && !objc_msgSend(v4, "temporality");

  return v5;
}

- (BOOL)canSpecializeMediaFormat:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = NUAssertLogger_4187();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 stringWithFormat:@"Invalid parameter not kind of %@", v10];
        *buf = 138543362;
        v29 = v11;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = NUAssertLogger_4187();
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
          *buf = 138543618;
          v29 = v17;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v29 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _NUAssertFailHandler("[NUChannelImageMediaFormat canSpecializeMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 726, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  v5 = [v4 mediaType] == 1 && -[NUChannelImageMediaFormat canSpecializeImageMediaFormat:](self, "canSpecializeImageMediaFormat:", v4);

  return v5;
}

- (BOOL)isCompatibleWithImageMediaFormat:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = NUAssertLogger_4187();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v10 stringWithFormat:@"Invalid parameter not kind of %@", v12];
        *buf = 138543362;
        v31 = v13;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v15 = NUAssertLogger_4187();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v16)
        {
          v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v20 = MEMORY[0x1E696AF00];
          v21 = v19;
          v22 = [v20 callStackSymbols];
          v23 = [v22 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v31 = v19;
          v32 = 2114;
          v33 = v23;
          _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v16)
      {
        v17 = [MEMORY[0x1E696AF00] callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v31 = v18;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      _NUAssertFailHandler("[NUChannelImageMediaFormat isCompatibleWithImageMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 694, @"Invalid parameter not kind of %@", v26, v27, v28, v29, v25);
    }
  }

  v7 = 0;
  if (!-[NUChannelImageMediaFormat imageMediaType](self, "imageMediaType") || ![v4 imageMediaType] || (v5 = objc_msgSend(v4, "imageMediaType"), v5 == -[NUChannelImageMediaFormat imageMediaType](self, "imageMediaType")))
  {
    if (!-[NUChannelMediaFormat temporality](self, "temporality") || ![v4 temporality] || (v6 = objc_msgSend(v4, "temporality"), v6 == -[NUChannelMediaFormat temporality](self, "temporality")))
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)isCompatibleWithMediaFormat:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = NUAssertLogger_4187();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 stringWithFormat:@"Invalid parameter not kind of %@", v10];
        *buf = 138543362;
        v29 = v11;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = NUAssertLogger_4187();
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
          *buf = 138543618;
          v29 = v17;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v29 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _NUAssertFailHandler("[NUChannelImageMediaFormat isCompatibleWithMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 686, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  v5 = [v4 mediaType] == 1 && -[NUChannelImageMediaFormat isCompatibleWithImageMediaFormat:](self, "isCompatibleWithImageMediaFormat:", v4);

  return v5;
}

- (BOOL)isEqualToImageMediaFormat:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = NUAssertLogger_4187();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v10 stringWithFormat:@"Invalid parameter not kind of %@", v12];
        *buf = 138543362;
        v31 = v13;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v15 = NUAssertLogger_4187();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v16)
        {
          v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v20 = MEMORY[0x1E696AF00];
          v21 = v19;
          v22 = [v20 callStackSymbols];
          v23 = [v22 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v31 = v19;
          v32 = 2114;
          v33 = v23;
          _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v16)
      {
        v17 = [MEMORY[0x1E696AF00] callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v31 = v18;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      _NUAssertFailHandler("[NUChannelImageMediaFormat isEqualToImageMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 675, @"Invalid parameter not kind of %@", v26, v27, v28, v29, v25);
    }
  }

  v5 = [v4 imageMediaType];
  if (v5 == [(NUChannelImageMediaFormat *)self imageMediaType])
  {
    v6 = [v4 temporality];
    v7 = v6 == [(NUChannelMediaFormat *)self temporality];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToChannelFormat:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUChannelImageMediaFormat *)self isEqualToImageMediaFormat:v4];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = NUChannelImageMediaFormat;
  v3 = [(NUChannelMediaFormat *)&v5 hash];
  return (0xE2749F81AA849 * [(NUChannelImageMediaFormat *)self imageMediaType]) ^ v3;
}

- (NUChannelImageMediaFormat)initWithImageMediaType:(int64_t)a3 temporality:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = NUChannelImageMediaFormat;
  result = [(NUChannelMediaFormat *)&v6 initWithMediaTemporality:a4];
  result->_imageMediaType = a3;
  return result;
}

- (NUChannelImageMediaFormat)initWithMediaTemporality:(int64_t)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = [v5 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v8, v9];
    *buf = 138543362;
    v31 = v10;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v11 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v11 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v11 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v12 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v13 = MEMORY[0x1E696AF00];
      v14 = v12;
      v15 = [v13 callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v16;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v17 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = MEMORY[0x1E696AF00];
    v20 = specific;
    v21 = v17;
    v22 = [v19 callStackSymbols];
    v23 = [v22 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v31 = specific;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUChannelImageMediaFormat initWithMediaTemporality:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 648, @"Initializer not available: [%@ %@], use designated initializer instead.", v26, v27, v28, v29, v25);
}

+ (id)videoImageFormat:(int64_t)a3
{
  v3 = [[a1 alloc] initWithImageMediaType:a3 temporality:2];

  return v3;
}

+ (id)stillImageFormat:(int64_t)a3
{
  v3 = [[a1 alloc] initWithImageMediaType:a3 temporality:1];

  return v3;
}

+ (id)genericImageFormat:(int64_t)a3
{
  v3 = [[a1 alloc] initWithImageMediaType:a3 temporality:0];

  return v3;
}

@end