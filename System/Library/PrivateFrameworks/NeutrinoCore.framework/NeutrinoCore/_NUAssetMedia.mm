@interface _NUAssetMedia
- (NUAsset)asset;
- (_NUAssetMedia)initWithAsset:(id)asset resourceID:(id)d format:(id)format geometry:(id)geometry;
- (_NUAssetMedia)initWithFormat:(id)format geometry:(id)geometry;
@end

@implementation _NUAssetMedia

- (NUAsset)asset
{
  WeakRetained = objc_loadWeakRetained(&self->_asset);

  return WeakRetained;
}

- (_NUAssetMedia)initWithAsset:(id)asset resourceID:(id)d format:(id)format geometry:(id)geometry
{
  v87 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  dCopy = d;
  formatCopy = format;
  geometryCopy = geometry;
  if (!assetCopy)
  {
    v18 = NUAssertLogger_10839();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v84 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_10839();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        callStackSymbols = [v47 callStackSymbols];
        v50 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v46;
        v85 = 2114;
        v86 = v50;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v84 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUAssetMedia initWithAsset:resourceID:format:geometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 155, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "asset != nil");
  }

  if (!dCopy)
  {
    v25 = NUAssertLogger_10839();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resourceID != nil"];
      *buf = 138543362;
      v84 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_10839();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        callStackSymbols3 = [v56 callStackSymbols];
        v59 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v55;
        v85 = 2114;
        v86 = v59;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v84 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUAssetMedia initWithAsset:resourceID:format:geometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 156, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "resourceID != nil");
  }

  if (!formatCopy)
  {
    v32 = NUAssertLogger_10839();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      v84 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_10839();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        callStackSymbols5 = [v65 callStackSymbols];
        v68 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v64;
        v85 = 2114;
        v86 = v68;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v84 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUAssetMedia initWithAsset:resourceID:format:geometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 157, @"Invalid parameter not satisfying: %s", v69, v70, v71, v72, "format != nil");
  }

  v14 = geometryCopy;
  if (!geometryCopy)
  {
    v39 = NUAssertLogger_10839();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "geometry != nil"];
      *buf = 138543362;
      v84 = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger_10839();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      if (v43)
      {
        v73 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v74 = MEMORY[0x1E696AF00];
        v75 = v73;
        callStackSymbols7 = [v74 callStackSymbols];
        v77 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v73;
        v85 = 2114;
        v86 = v77;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v84 = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUAssetMedia initWithAsset:resourceID:format:geometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 158, @"Invalid parameter not satisfying: %s", v78, v79, v80, v81, "geometry != nil");
  }

  v82.receiver = self;
  v82.super_class = _NUAssetMedia;
  v15 = [(_NUMedia *)&v82 initWithFormat:formatCopy geometry:geometryCopy];
  objc_storeWeak(&v15->_asset, assetCopy);
  resourceID = v15->_resourceID;
  v15->_resourceID = dCopy;

  return v15;
}

- (_NUAssetMedia)initWithFormat:(id)format geometry:(id)geometry
{
  v38 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  geometryCopy = geometry;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = [v9 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v12, v13];
    *buf = 138543362;
    v35 = v14;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v15 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v15 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v16 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AF00];
      v18 = v16;
      callStackSymbols = [v17 callStackSymbols];
      v20 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = MEMORY[0x1E696AF00];
    v24 = specific;
    v25 = v21;
    callStackSymbols2 = [v23 callStackSymbols];
    v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v35 = specific;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[_NUAssetMedia initWithFormat:geometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 151, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end