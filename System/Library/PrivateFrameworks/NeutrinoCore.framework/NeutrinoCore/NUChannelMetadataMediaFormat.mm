@interface NUChannelMetadataMediaFormat
+ (id)genericMetadataFormat;
+ (id)imageMetadataFormat;
+ (id)videoMetadataFormat;
- (BOOL)canSpecializeMediaFormat:(id)format;
- (BOOL)canSpecializeMetadataMediaFormat:(id)format;
- (BOOL)isCompatibleWithMediaFormat:(id)format;
- (BOOL)isCompatibleWithMetadataMediaFormat:(id)format;
- (BOOL)isEqualToChannelFormat:(id)format;
- (id)description;
- (id)specializedWithComponentMediaFormat:(id)format;
- (id)specializedWithMetadataMediaFormat:(id)format;
@end

@implementation NUChannelMetadataMediaFormat

- (id)description
{
  v4.receiver = self;
  v4.super_class = NUChannelMetadataMediaFormat;
  v2 = [(NUChannelMediaFormat *)&v4 description];

  return v2;
}

- (id)specializedWithComponentMediaFormat:(id)format
{
  v33 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (formatCopy)
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
          callStackSymbols = [v19 callStackSymbols];
          v22 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v30 = v18;
          v31 = 2114;
          v32 = v22;
          _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v15)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v30 = v17;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      _NUAssertFailHandler("[NUChannelMetadataMediaFormat specializedWithComponentMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 971, @"Invalid parameter not kind of %@", v25, v26, v27, v28, v24);
    }
  }

  temporality = [(NUChannelMediaFormat *)self temporality];
  if (!temporality)
  {
    temporality = [formatCopy temporality];
  }

  v6 = [(NUChannelMediaFormat *)[NUChannelMetadataMediaFormat alloc] initWithMediaTemporality:temporality];

  return v6;
}

- (id)specializedWithMetadataMediaFormat:(id)format
{
  v33 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (formatCopy)
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
          callStackSymbols = [v19 callStackSymbols];
          v22 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v30 = v18;
          v31 = 2114;
          v32 = v22;
          _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v15)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v30 = v17;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      _NUAssertFailHandler("[NUChannelMetadataMediaFormat specializedWithMetadataMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 959, @"Invalid parameter not kind of %@", v25, v26, v27, v28, v24);
    }
  }

  temporality = [(NUChannelMediaFormat *)self temporality];
  if (!temporality)
  {
    temporality = [formatCopy temporality];
  }

  v6 = [(NUChannelMediaFormat *)[NUChannelMetadataMediaFormat alloc] initWithMediaTemporality:temporality];

  return v6;
}

- (BOOL)canSpecializeMetadataMediaFormat:(id)format
{
  formatCopy = format;
  v5 = -[NUChannelMediaFormat temporality](self, "temporality") && ![formatCopy temporality];

  return v5;
}

- (BOOL)canSpecializeMediaFormat:(id)format
{
  v32 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (formatCopy)
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
          callStackSymbols = [v18 callStackSymbols];
          v21 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = v17;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v29 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _NUAssertFailHandler("[NUChannelMetadataMediaFormat canSpecializeMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 937, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  v5 = [formatCopy mediaType] == 3 && -[NUChannelMetadataMediaFormat canSpecializeMetadataMediaFormat:](self, "canSpecializeMetadataMediaFormat:", formatCopy);

  return v5;
}

- (BOOL)isCompatibleWithMetadataMediaFormat:(id)format
{
  v30 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (formatCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = NUAssertLogger_4187();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = MEMORY[0x1E696AEC0];
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v6 stringWithFormat:@"Invalid parameter not kind of %@", v8];
        *buf = 138543362;
        v27 = v9;
        _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v11 = NUAssertLogger_4187();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v12)
        {
          v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v16 = MEMORY[0x1E696AF00];
          v17 = v15;
          callStackSymbols = [v16 callStackSymbols];
          v19 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v27 = v15;
          v28 = 2114;
          v29 = v19;
          _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v12)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v27 = v14;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      _NUAssertFailHandler("[NUChannelMetadataMediaFormat isCompatibleWithMetadataMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 928, @"Invalid parameter not kind of %@", v22, v23, v24, v25, v21);
    }
  }

  return 1;
}

- (BOOL)isCompatibleWithMediaFormat:(id)format
{
  v32 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (formatCopy)
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
          callStackSymbols = [v18 callStackSymbols];
          v21 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = v17;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v29 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _NUAssertFailHandler("[NUChannelMetadataMediaFormat isCompatibleWithMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 920, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  v5 = [formatCopy mediaType] == 3 && -[NUChannelMetadataMediaFormat isCompatibleWithMetadataMediaFormat:](self, "isCompatibleWithMetadataMediaFormat:", formatCopy);

  return v5;
}

- (BOOL)isEqualToChannelFormat:(id)format
{
  formatCopy = format;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUChannelMetadataMediaFormat *)self isEqualToMetadataMediaFormat:formatCopy];

  return v5;
}

+ (id)videoMetadataFormat
{
  v2 = [[self alloc] initWithMediaTemporality:2];

  return v2;
}

+ (id)imageMetadataFormat
{
  v2 = [[self alloc] initWithMediaTemporality:1];

  return v2;
}

+ (id)genericMetadataFormat
{
  v2 = [[self alloc] initWithMediaTemporality:0];

  return v2;
}

@end