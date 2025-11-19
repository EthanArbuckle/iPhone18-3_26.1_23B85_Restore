@interface NUImageAccumulationNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)imageSize;
- (NUImageAccumulationNode)initWithImageSize:(id)a3 tileSize:(id)a4 borderSize:(id)a5 pixelFormat:(id)a6 colorSpace:(id)a7 headroom:(float)a8 input:(id)a9;
- (NUImageAccumulationNode)initWithSettings:(id)a3 inputs:(id)a4;
- (NUMutablePurgeableImage)image;
- (id)_image;
- (id)_newImage;
- (id)debugQuickLookObject;
@end

@implementation NUImageAccumulationNode

- ($0AC6E346AE4835514AAA8AC86D8F4844)imageSize
{
  p_imageSize = &self->_imageSize;
  width = self->_imageSize.width;
  height = p_imageSize->height;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (id)debugQuickLookObject
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NUMutablePurgeableImage *)self->_image performSelector:sel_debugQuickLookObject];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NUImageAccumulationNode;
    v3 = [(NURenderNode *)&v5 debugQuickLookObject];
  }

  return v3;
}

- (id)_newImage
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_31131);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_31131);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_31131);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      v12 = [v10 callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    v19 = [v16 callStackSymbols];
    v20 = [v19 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NUImageAccumulationNode _newImage]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUImageAccumulationNode.m", 90, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (id)_image
{
  v27 = *MEMORY[0x1E69E9840];
  image = self->_image;
  if (!image)
  {
    v4 = [(NUImageAccumulationNode *)self _newImage];
    v5 = [v4 mutablePurgeableImageCopy];
    v6 = self->_image;
    self->_image = v5;

    if (!self->_image)
    {
      v8 = NUAssertLogger_31147();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to allocate tiled image"];
        *v24 = 138543362;
        *&v24[4] = v9;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v24, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v11 = NUAssertLogger_31147();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v12)
        {
          v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v16 = MEMORY[0x1E696AF00];
          v17 = v15;
          v18 = [v16 callStackSymbols];
          v19 = [v18 componentsJoinedByString:@"\n"];
          *v24 = 138543618;
          *&v24[4] = v15;
          v25 = 2114;
          v26 = v19;
          _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v24, 0x16u);
        }
      }

      else if (v12)
      {
        v13 = [MEMORY[0x1E696AF00] callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        *v24 = 138543362;
        *&v24[4] = v14;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v24, 0xCu);
      }

      _NUAssertFailHandler("[NUImageAccumulationNode _image]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUImageAccumulationNode.m", 82, @"Failed to allocate tiled image", v20, v21, v22, v23, *v24);
    }

    image = self->_image;
  }

  return image;
}

- (NUMutablePurgeableImage)image
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__31154;
  v10 = __Block_byref_object_dispose__31155;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__NUImageAccumulationNode_image__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __32__NUImageAccumulationNode_image__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _image];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (NUImageAccumulationNode)initWithImageSize:(id)a3 tileSize:(id)a4 borderSize:(id)a5 pixelFormat:(id)a6 colorSpace:(id)a7 headroom:(float)a8 input:(id)a9
{
  var1 = a5.var1;
  var0 = a5.var0;
  v11 = a4.var1;
  v12 = a4.var0;
  v13 = a3.var1;
  v14 = a3.var0;
  v126 = *MEMORY[0x1E69E9840];
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v115 = v14;
  if (v14 < 1 || v13 <= 0)
  {
    v45 = NUAssertLogger_31147();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageSize.width > 0 && imageSize.height > 0"];
      *buf = 138543362;
      v123 = v46;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v48 = NUAssertLogger_31147();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v49)
      {
        v73 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v74 = MEMORY[0x1E696AF00];
        v75 = v73;
        v76 = [v74 callStackSymbols];
        v77 = [v76 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v123 = v73;
        v124 = 2114;
        v125 = v77;
        _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      v50 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [v50 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v123 = v51;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageAccumulationNode initWithImageSize:tileSize:borderSize:pixelFormat:colorSpace:headroom:input:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUImageAccumulationNode.m", 36, @"Invalid parameter not satisfying: %s", v78, v79, v80, v81, "imageSize.width > 0 && imageSize.height > 0");
  }

  if (!v15)
  {
    v52 = NUAssertLogger_31147();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      v123 = v53;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v55 = NUAssertLogger_31147();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (v54)
    {
      if (v56)
      {
        v82 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v83 = MEMORY[0x1E696AF00];
        v84 = v82;
        v85 = [v83 callStackSymbols];
        v86 = [v85 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v123 = v82;
        v124 = 2114;
        v125 = v86;
        _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v56)
    {
      v57 = [MEMORY[0x1E696AF00] callStackSymbols];
      v58 = [v57 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v123 = v58;
      _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageAccumulationNode initWithImageSize:tileSize:borderSize:pixelFormat:colorSpace:headroom:input:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUImageAccumulationNode.m", 37, @"Invalid parameter not satisfying: %s", v87, v88, v89, v90, "format != nil");
  }

  if (!v16)
  {
    v59 = NUAssertLogger_31147();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "space != nil"];
      *buf = 138543362;
      v123 = v60;
      _os_log_error_impl(&dword_1C0184000, v59, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v62 = NUAssertLogger_31147();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (v61)
    {
      if (v63)
      {
        v91 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v92 = MEMORY[0x1E696AF00];
        v93 = v91;
        v94 = [v92 callStackSymbols];
        v95 = [v94 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v123 = v91;
        v124 = 2114;
        v125 = v95;
        _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v63)
    {
      v64 = [MEMORY[0x1E696AF00] callStackSymbols];
      v65 = [v64 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v123 = v65;
      _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageAccumulationNode initWithImageSize:tileSize:borderSize:pixelFormat:colorSpace:headroom:input:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUImageAccumulationNode.m", 38, @"Invalid parameter not satisfying: %s", v96, v97, v98, v99, "space != nil");
  }

  v19 = v17;
  if (!v17)
  {
    v66 = NUAssertLogger_31147();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v123 = v67;
      _os_log_error_impl(&dword_1C0184000, v66, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v68 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v69 = NUAssertLogger_31147();
    v70 = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
    if (v68)
    {
      if (v70)
      {
        v100 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v101 = MEMORY[0x1E696AF00];
        v102 = v100;
        v103 = [v101 callStackSymbols];
        v104 = [v103 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v123 = v100;
        v124 = 2114;
        v125 = v104;
        _os_log_error_impl(&dword_1C0184000, v69, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v70)
    {
      v71 = [MEMORY[0x1E696AF00] callStackSymbols];
      v72 = [v71 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v123 = v72;
      _os_log_error_impl(&dword_1C0184000, v69, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageAccumulationNode initWithImageSize:tileSize:borderSize:pixelFormat:colorSpace:headroom:input:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUImageAccumulationNode.m", 39, @"Invalid parameter not satisfying: %s", v105, v106, v107, v108, "input != nil");
  }

  v120[0] = @"space";
  v120[1] = @"format";
  v113 = v16;
  v121[0] = v16;
  v121[1] = v15;
  v111 = v15;
  v120[2] = @"headroom";
  *&v18 = a8;
  [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v21 = v20 = v13;
  v121[2] = v21;
  v120[3] = @"width";
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
  v121[3] = v22;
  v120[4] = @"height";
  v109 = v20;
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
  v121[4] = v23;
  v120[5] = @"tile_width";
  v110 = v12;
  [MEMORY[0x1E696AD98] numberWithInteger:v12];
  v25 = v24 = var1;
  v121[5] = v25;
  v120[6] = @"tile_height";
  v112 = v11;
  [MEMORY[0x1E696AD98] numberWithInteger:v11];
  v27 = v26 = v19;
  v121[6] = v27;
  v120[7] = @"border_width";
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:var0];
  v121[7] = v28;
  v120[8] = @"border_height";
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
  v121[8] = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:v120 count:9];

  v31 = v26;
  v118 = *MEMORY[0x1E695FAB0];
  v119 = v26;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
  v117.receiver = self;
  v117.super_class = NUImageAccumulationNode;
  v33 = [(NURenderNode *)&v117 initWithSettings:v30 inputs:v32];
  image = v33->_image;
  v33->_image = 0;

  if (var0 && v24)
  {
    v35 = [NUImageLayout overlappingTiledLayoutForImageSize:v115 tileSize:v109 borderSize:v110, v112, var0, v24];
  }

  else
  {
    v35 = [NUImageLayout tiledLayoutForImageSize:v115 tileSize:v109, v110, v112];
  }

  layout = v33->_layout;
  v33->_layout = v35;

  pixelFormat = v33->_pixelFormat;
  v33->_pixelFormat = v111;
  v38 = v111;

  colorSpace = v33->_colorSpace;
  v33->_colorSpace = v113;
  v40 = v113;

  v33->_contentHeadroom = a8;
  v41 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v42 = dispatch_queue_create("NUImageNode", v41);
  queue = v33->_queue;
  v33->_queue = v42;

  return v33;
}

- (NUImageAccumulationNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_31131);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_31131);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_31131);
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
      v19 = [v17 callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
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
    v26 = [v23 callStackSymbols];
    v27 = [v26 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUImageAccumulationNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUImageAccumulationNode.m", 30, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end