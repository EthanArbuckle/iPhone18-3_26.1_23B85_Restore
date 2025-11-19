@interface NUImageExportFormatHEIF
- (NUImageExportFormatHEIF)initWithBitDepth:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)pixelFormat;
- (void)addImageDestinationOptionsToImageProperties:(id)a3;
@end

@implementation NUImageExportFormatHEIF

- (void)addImageDestinationOptionsToImageProperties:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{-[NUImageExportFormatHEIF bitDepth](self, "bitDepth")}];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696D890]];
}

- (id)pixelFormat
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(NUImageExportFormatHEIF *)self bitDepth]== 8)
  {
    v3 = +[NUPixelFormat RGBA8];
  }

  else
  {
    if ([(NUImageExportFormatHEIF *)self bitDepth]!= 10)
    {
      v5 = NUAssertLogger_7209();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported bit depth: %ld", -[NUImageExportFormatHEIF bitDepth](self, "bitDepth")];
        *buf = 138543362;
        v23 = v6;
        _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v8 = NUAssertLogger_7209();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v9)
        {
          v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v13 = MEMORY[0x1E696AF00];
          v14 = v12;
          v15 = [v13 callStackSymbols];
          v16 = [v15 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v23 = v12;
          v24 = 2114;
          v25 = v16;
          _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v9)
      {
        v10 = [MEMORY[0x1E696AF00] callStackSymbols];
        v11 = [v10 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v23 = v11;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v17 = [(NUImageExportFormatHEIF *)self bitDepth];
      _NUAssertFailHandler("[NUImageExportFormatHEIF pixelFormat]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageExportFormat.m", 199, @"Unsupported bit depth: %ld", v18, v19, v20, v21, v17);
    }

    v3 = +[NUPixelFormat X2RGB10];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  *(result + 1) = self->_bitDepth;
  return result;
}

- (NUImageExportFormatHEIF)initWithBitDepth:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 8)
  {
    v5 = NUAssertLogger_7209();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "bitDepth == 8 || bitDepth == 10"];
      *buf = 138543362;
      v23 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_7209();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v12;
        v24 = 2114;
        v25 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageExportFormatHEIF initWithBitDepth:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageExportFormat.m", 169, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "bitDepth == 8 || bitDepth == 10");
  }

  v21.receiver = self;
  v21.super_class = NUImageExportFormatHEIF;
  result = [(NUImageExportFormatHEIF *)&v21 init];
  result->_bitDepth = a3;
  return result;
}

@end