@interface _NULivePhotoAsset
- (_NULivePhotoAsset)initWithIdentifier:(id)a3;
- (_NULivePhotoAsset)initWithImage:(id)a3 video:(id)a4;
- (_NULivePhotoAsset)initWithImage:(id)a3 video:(id)a4 identifier:(id)a5;
- (_NULivePhotoAsset)initWithImageURL:(id)a3 videoURL:(id)a4;
- (_NULivePhotoAsset)initWithImageURL:(id)a3 videoURL:(id)a4 identifier:(id)a5;
- (id)_loadMediaWithOptions:(id)a3 error:(id *)a4;
@end

@implementation _NULivePhotoAsset

- (id)_loadMediaWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  image = self->_image;
  v36 = 0;
  v8 = [(NUImageAsset *)image loadWithOptions:v6 error:&v36];
  v9 = v36;
  if (v8)
  {
    video = self->_video;
    v35 = 0;
    v11 = [(NUVideoAsset *)video loadWithOptions:v6 error:&v35];
    v12 = v35;

    if (v11)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v14 = [(NUImageAsset *)self->_image media];
      [v13 setObject:v14 forKeyedSubscript:@"image"];

      v15 = [(NUVideoAsset *)self->_video media];
      v33 = v13;
      [v13 setObject:v15 forKeyedSubscript:@"video"];

      v32 = [_NUMediaGeometry alloc];
      v16 = [(NUImageAsset *)self->_image media];
      v17 = [v16 geometry];
      v18 = [v17 size];
      v30 = v19;
      v31 = v18;
      v20 = [(NUImageAsset *)self->_image media];
      v21 = [v20 geometry];
      v22 = [v21 orientation];
      v23 = [(NUVideoAsset *)self->_video media];
      v24 = [v23 geometry];
      v25 = v24;
      if (v24)
      {
        [v24 duration];
      }

      else
      {
        memset(v34, 0, sizeof(v34));
      }

      v27 = [(_NUMediaGeometry *)v32 initWithSize:v31 orientation:v30 duration:v22, v34];

      v28 = [[_NUContainerMedia alloc] initWithContainerType:3 components:v33 geometry:v27];
      v26 = [[_NUAssetContainerMedia alloc] initWithAsset:self containerMedia:v28];
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to load video component" object:self->_video underlyingError:v12];
      *a4 = v26 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to load image component" object:self->_image underlyingError:v9];
    *a4 = v26 = 0;
    v12 = v9;
  }

  return v26;
}

- (_NULivePhotoAsset)initWithImage:(id)a3 video:(id)a4 identifier:(id)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v17 = NUAssertLogger_10839();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v67 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_10839();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v38;
        v68 = 2114;
        v69 = v42;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NULivePhotoAsset initWithImage:video:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 580, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "image != nil");
  }

  if (!v9)
  {
    v24 = NUAssertLogger_10839();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "video != nil"];
      *buf = 138543362;
      v67 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_10839();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        v50 = [v48 callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v47;
        v68 = 2114;
        v69 = v51;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NULivePhotoAsset initWithImage:video:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 581, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "video != nil");
  }

  v11 = v10;
  if (!v10)
  {
    v31 = NUAssertLogger_10839();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v67 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_10839();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        v59 = [v57 callStackSymbols];
        v60 = [v59 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v56;
        v68 = 2114;
        v69 = v60;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NULivePhotoAsset initWithImage:video:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 582, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "identifier != nil");
  }

  v65.receiver = self;
  v65.super_class = _NULivePhotoAsset;
  v12 = [(_NUAsset *)&v65 initWithIdentifier:v10];
  image = v12->_image;
  v12->_image = v8;
  v14 = v8;

  video = v12->_video;
  v12->_video = v9;

  return v12;
}

- (_NULivePhotoAsset)initWithImage:(id)a3 video:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [v6 identifier];
  v10 = [v8 commonPrefixWithString:v9 options:2];

  v11 = [v6 identifier];
  v12 = [v11 substringFromIndex:{objc_msgSend(v10, "length")}];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [v7 identifier];
  v15 = [v13 stringWithFormat:@"%@+%@", v14, v12];

  v16 = [(_NULivePhotoAsset *)self initWithImage:v7 video:v6 identifier:v15];
  return v16;
}

- (_NULivePhotoAsset)initWithImageURL:(id)a3 videoURL:(id)a4 identifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_NUImageAsset alloc] initWithImageURL:v10];

  v12 = [[_NUVideoAsset alloc] initWithVideoURL:v9];
  v13 = [(_NULivePhotoAsset *)self initWithImage:v11 video:v12 identifier:v8];

  return v13;
}

- (_NULivePhotoAsset)initWithImageURL:(id)a3 videoURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_NUImageAsset alloc] initWithImageURL:v7];

  v9 = [[_NUVideoAsset alloc] initWithVideoURL:v6];
  v10 = [(_NULivePhotoAsset *)self initWithImage:v8 video:v9];

  return v10;
}

- (_NULivePhotoAsset)initWithIdentifier:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[_NULivePhotoAsset initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 557, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end