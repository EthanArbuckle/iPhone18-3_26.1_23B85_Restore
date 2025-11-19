@interface NUImageExportFormatJPEG
- (NUImageExportFormatJPEG)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addImageDestinationOptionsToImageProperties:(id)a3;
- (void)setCompressionQuality:(double)a3;
@end

@implementation NUImageExportFormatJPEG

- (void)addImageDestinationOptionsToImageProperties:(id)a3
{
  v3 = *MEMORY[0x1E696D338];
  v4 = MEMORY[0x1E696AD98];
  compressionQuality = self->_compressionQuality;
  v6 = a3;
  v7 = [v4 numberWithDouble:compressionQuality];
  [v6 setObject:v7 forKeyedSubscript:v3];
}

- (void)setCompressionQuality:(double)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0 || a3 > 1.0)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_7168);
    }

    v6 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v6;
      v9 = [v7 stringWithFormat:@"Compression quality should be between 0 and 1"];
      *v27 = 138543362;
      *&v27[4] = v9;
      _os_log_impl(&dword_1C0184000, v8, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", v27, 0xCu);

      v10 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v10 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_7168);
        }

        goto LABEL_13;
      }

      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_7168);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_13:
      v11 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = specific;
        v19 = v11;
        v20 = [v17 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *v27 = 138543618;
        *&v27[4] = specific;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v27, 0x16u);
      }

LABEL_19:
      _NUAssertContinueHandler("[NUImageExportFormatJPEG setCompressionQuality:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageExportFormat.m", 139, @"Compression quality should be between 0 and 1", v12, v13, v14, v15, *v27);
      goto LABEL_20;
    }

    v22 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v23 = MEMORY[0x1E696AF00];
      v24 = v22;
      v25 = [v23 callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *v27 = 138543362;
      *&v27[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v27, 0xCu);
    }

    goto LABEL_19;
  }

LABEL_20:
  self->_compressionQuality = fmax(fmin(a3, 1.0), 0.0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  if (result)
  {
    *(result + 1) = *&self->_compressionQuality;
  }

  return result;
}

- (NUImageExportFormatJPEG)init
{
  v3.receiver = self;
  v3.super_class = NUImageExportFormatJPEG;
  result = [(NUImageExportFormatJPEG *)&v3 init];
  result->_compressionQuality = 0.75;
  return result;
}

@end