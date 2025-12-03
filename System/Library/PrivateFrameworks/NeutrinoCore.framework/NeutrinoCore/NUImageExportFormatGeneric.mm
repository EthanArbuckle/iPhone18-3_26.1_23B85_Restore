@interface NUImageExportFormatGeneric
- (NUImageExportFormatGeneric)initWithFileType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addImageDestinationOptionsToImageProperties:(id)properties;
@end

@implementation NUImageExportFormatGeneric

- (void)addImageDestinationOptionsToImageProperties:(id)properties
{
  propertiesCopy = properties;
  options = self->_options;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__NUImageExportFormatGeneric_addImageDestinationOptionsToImageProperties___block_invoke;
  v7[3] = &unk_1E8109EA8;
  v8 = propertiesCopy;
  v6 = propertiesCopy;
  [(NSDictionary *)options enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  if (v4)
  {
    v5 = [(NSString *)self->_fileType copy];
    v6 = *(v4 + 8);
    *(v4 + 8) = v5;

    objc_storeStrong((v4 + 16), self->_pixelFormat);
    v7 = [(NSDictionary *)self->_options copy];
    v8 = *(v4 + 24);
    *(v4 + 24) = v7;
  }

  return v4;
}

- (NUImageExportFormatGeneric)initWithFileType:(id)type
{
  v35 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (!typeCopy)
  {
    v14 = NUAssertLogger_7209();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileType != nil"];
      *buf = 138543362;
      v32 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_7209();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v21;
        v33 = 2114;
        v34 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageExportFormatGeneric initWithFileType:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageExportFormat.m", 71, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "fileType != nil");
  }

  v5 = typeCopy;
  v30.receiver = self;
  v30.super_class = NUImageExportFormatGeneric;
  v6 = [(NUImageExportFormatGeneric *)&v30 init];
  fileType = v6->_fileType;
  v6->_fileType = v5;
  v8 = v5;

  v9 = +[NUPixelFormat RGBA8];
  pixelFormat = v6->_pixelFormat;
  v6->_pixelFormat = v9;

  v11 = objc_alloc_init(MEMORY[0x1E695DF20]);
  options = v6->_options;
  v6->_options = v11;

  return v6;
}

@end