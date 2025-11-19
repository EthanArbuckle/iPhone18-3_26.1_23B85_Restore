@interface NULivePhotoSourceContainerNode
- (NULivePhotoSourceContainerNode)initWithAssetIdentifier:(id)a3;
- (NULivePhotoSourceContainerNode)initWithImageContainerNode:(id)a3 videoContainerNode:(id)a4 assetIdentifier:(id)a5;
- (id)containerNodeForPipelineState:(id)a3;
- (id)resolveSourceNodeForPipelineState:(id)a3 foundScale:(id *)a4 error:(id *)a5;
- (id)sourceNodeForPipelineState:(id)a3 error:(id *)a4;
@end

@implementation NULivePhotoSourceContainerNode

- (id)sourceNodeForPipelineState:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NULivePhotoSourceContainerNode *)self containerNodeForPipelineState:v6];
  v8 = [v7 sourceNodeForPipelineState:v6 error:a4];

  return v8;
}

- (id)resolveSourceNodeForPipelineState:(id)a3 foundScale:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(NULivePhotoSourceContainerNode *)self containerNodeForPipelineState:v8];
  v10 = [v9 resolveSourceNodeForPipelineState:v8 foundScale:a4 error:a5];

  return v10;
}

- (id)containerNodeForPipelineState:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 mediaComponentType];
  switch(v6)
  {
    case 1:
      v14 = &OBJC_IVAR___NULivePhotoSourceContainerNode__image;
      goto LABEL_11;
    case 2:
      v14 = &OBJC_IVAR___NULivePhotoSourceContainerNode__video;
LABEL_11:
      v3 = *(&self->super.super.super.isa + *v14);
      break;
    case 0:
      v7 = NUAssertLogger_8665();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ asked for NUMediaComponentTypeUnknown", self];
        *buf = 138543362;
        v26 = v8;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v10 = NUAssertLogger_8665();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v11)
        {
          v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v17 = MEMORY[0x1E696AF00];
          v18 = v16;
          v19 = [v17 callStackSymbols];
          v20 = [v19 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v26 = v16;
          v27 = 2114;
          v28 = v20;
          _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v11)
      {
        v12 = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [v12 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v26 = v13;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NULivePhotoSourceContainerNode containerNodeForPipelineState:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 417, @"%@ asked for NUMediaComponentTypeUnknown", v21, v22, v23, v24, self);
  }

  return v3;
}

- (NULivePhotoSourceContainerNode)initWithImageContainerNode:(id)a3 videoContainerNode:(id)a4 assetIdentifier:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v20 = NUAssertLogger_8665();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v54 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_8665();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v34;
        v55 = 2114;
        v56 = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NULivePhotoSourceContainerNode initWithImageContainerNode:videoContainerNode:assetIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 386, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "image != nil");
  }

  if (!v9)
  {
    v27 = NUAssertLogger_8665();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "video != nil"];
      *buf = 138543362;
      v54 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_8665();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v43;
        v55 = 2114;
        v56 = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NULivePhotoSourceContainerNode initWithImageContainerNode:videoContainerNode:assetIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 387, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "video != nil");
  }

  v11 = v10;
  v52.receiver = self;
  v52.super_class = NULivePhotoSourceContainerNode;
  v12 = [(NUSourceContainerNode *)&v52 initWithAssetIdentifier:v10];
  image = v12->_image;
  v12->_image = v8;
  v14 = v8;

  video = v12->_video;
  v12->_video = v9;
  v16 = v9;

  v17 = [(NUSourceContainerNode *)v16 primarySourceNode];

  v18 = [(NUSourceContainerNode *)v14 primarySourceNode];

  [v17 setOriginalNode:v18];
  return v12;
}

- (NULivePhotoSourceContainerNode)initWithAssetIdentifier:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_317_8646);
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
  _NUAssertFailHandler("[NULivePhotoSourceContainerNode initWithAssetIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 381, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end