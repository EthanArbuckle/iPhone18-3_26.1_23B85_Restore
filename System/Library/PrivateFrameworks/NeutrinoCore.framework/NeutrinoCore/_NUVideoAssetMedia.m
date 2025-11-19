@interface _NUVideoAssetMedia
- (NSArray)requiredSourceMedias;
- (_NUVideoAssetMedia)initWithAsset:(id)a3 resourceID:(id)a4 format:(id)a5 geometry:(id)a6;
- (_NUVideoAssetMedia)initWithVideoAsset:(id)a3 track:(id)a4 format:(id)a5 geometry:(id)a6;
@end

@implementation _NUVideoAssetMedia

- (NSArray)requiredSourceMedias
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (_NUVideoAssetMedia)initWithVideoAsset:(id)a3 track:(id)a4 format:(id)a5 geometry:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v18 = NUAssertLogger_10839();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "track != nil"];
      *buf = 138543362;
      v36 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_10839();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v25;
        v37 = 2114;
        v38 = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUVideoAssetMedia initWithVideoAsset:track:format:geometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 523, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "track != nil");
  }

  v14 = v13;
  v15 = [[_NUVideoAssetResourceID alloc] initWithAssetTrack:v11];
  v34.receiver = self;
  v34.super_class = _NUVideoAssetMedia;
  v16 = [(_NUAssetMedia *)&v34 initWithAsset:v10 resourceID:v15 format:v12 geometry:v14];

  return v16;
}

- (_NUVideoAssetMedia)initWithAsset:(id)a3 resourceID:(id)a4 format:(id)a5 geometry:(id)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = v14;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    v20 = [v15 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v18, v19];
    *buf = 138543362;
    v41 = v20;
    _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v21 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v21 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
      }

      goto LABEL_8;
    }

    if (v21 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v22 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v23 = MEMORY[0x1E696AF00];
      v24 = v22;
      v25 = [v23 callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v26;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v27 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = MEMORY[0x1E696AF00];
    v30 = specific;
    v31 = v27;
    v32 = [v29 callStackSymbols];
    v33 = [v32 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v41 = specific;
    v42 = 2114;
    v43 = v33;
    _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[_NUVideoAssetMedia initWithAsset:resourceID:format:geometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 519, @"Initializer not available: [%@ %@], use designated initializer instead.", v36, v37, v38, v39, v35);
}

@end