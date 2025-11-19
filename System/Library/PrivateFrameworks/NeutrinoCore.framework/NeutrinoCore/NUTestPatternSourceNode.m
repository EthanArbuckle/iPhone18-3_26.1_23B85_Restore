@interface NUTestPatternSourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3;
- (BOOL)supportsPipelineState:(id)a3 error:(id *)a4;
- (NUTestPatternSourceNode)initWithSettings:(id)a3;
- (NUTestPatternSourceNode)initWithSize:(id)a3 orientation:(int64_t)a4 scale:(id)a5;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageGeometryWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5;
- (id)preparedNodeWithSourceContainer:(id)a3 pipelineState:(id)a4 pipelineSettings:(id)a5 sourceSettings:(id)a6 error:(id *)a7;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation NUTestPatternSourceNode

- (BOOL)supportsPipelineState:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a4)
  {
    v12 = NUAssertLogger_14097();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_14097();
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
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTestPatternSourceNode supportsPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Test.m", 237, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "error != NULL");
  }

  v6 = v5;
  if (([v5 auxiliaryImageType] - 2) > 9)
  {
    if ([v6 mediaComponentType] == 1)
    {
      v9 = 1;
    }

    else
    {
      [NUError mismatchError:@"expected an image mediaComponentType" object:v6];
      *a4 = v9 = 0;
    }
  }

  else
  {
    v7 = [v6 auxiliaryImageType];
    if (v7 > 0xB)
    {
      v8 = @"Invalid";
    }

    else
    {
      v8 = off_1E8109908[v7];
    }

    v10 = v8;
    *a4 = [NUError unsupportedError:@"Auxiliary image type is not supported" object:v10];

    v9 = 0;
  }

  return v9;
}

- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a4)
  {
    v12 = NUAssertLogger_14097();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor != NULL"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_14097();
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
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTestPatternSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Test.m", 215, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "subsampleFactor != NULL");
  }

  v9 = v8;
  *a4 = 1;
  v10 = [(NUTestPatternSourceNode *)self _evaluateImage:a5];

  return v10;
}

- (id)_evaluateImage:(id *)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = [(NURenderNode *)self outputImageGeometry:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 scaledSize];
    v8 = v7;
    v9 = objc_alloc(MEMORY[0x1E695F658]);
    v10 = objc_alloc_init(NUTestPatternImage);
    v11 = *MEMORY[0x1E695F8A0];
    v12 = [(NUColorSpace *)self->_colorSpace CGColorSpace];
    v18[0] = @"width";
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v18[1] = @"height";
    v19[0] = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v19[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v16 = [v9 initWithImageProvider:v10 size:v6 :v8 format:v11 colorSpace:v12 options:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(NUSourceNode *)self load:a4])
  {
    v7 = objc_alloc_init(_NUImageProperties);
    [(_NUImageProperties *)v7 setMetadata:MEMORY[0x1E695E0F8]];
    [(_NUImageProperties *)v7 setColorSpace:self->_colorSpace];
    v8 = [(NUTestPatternSourceNode *)self pixelSizeWithSourceOptions:v6];
    [(_NUImageProperties *)v7 setSize:v8, v9];
    [(_NUImageProperties *)v7 setOrientation:[(NUTestPatternSourceNode *)self sourceOrientation]];
    [(_NUImageProperties *)v7 setAlphaInfo:2];
    [(_NUImageProperties *)v7 setComponentInfo:0];
    v10 = objc_alloc_init(NUTestPatternAuxiliaryProperties);
    [(NUTestPatternAuxiliaryProperties *)v10 setSize:self->_size.width, self->_size.height];
    [(NUTestPatternAuxiliaryProperties *)v10 setAuxiliaryImageTypeCGIdentifier:*MEMORY[0x1E696D260]];
    [(_NUImageProperties *)v7 setAuxiliaryImageProperties:v10 forType:2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_evaluateImageGeometryWithSourceOptions:(id)a3 error:(id *)a4
{
  v5 = [NUImageGeometry alloc];
  v8[0] = 0;
  v8[1] = 0;
  size = self->_size;
  v6 = [(NUImageGeometry *)v5 initWithExtent:v8 renderScale:self->_scale.numerator orientation:self->_scale.denominator, self->_orientation];

  return v6;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a6)
  {
    v21 = NUAssertLogger_14097();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v38 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_14097();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v31 = [v29 callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v28;
        v39 = 2114;
        v40 = v32;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTestPatternSourceNode resolvedNodeWithCachedInputs:settings:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Test.m", 150, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "error != nil");
  }

  v13 = v12;
  if ([(NUTestPatternSourceNode *)self supportsPipelineState:v12 error:a6])
  {
    v14 = objc_alloc(objc_opt_class());
    p_size = &self->_size;
    orientation = self->_orientation;
    v17 = [v13 scale];
    v19 = [v14 initWithSize:p_size->width orientation:p_size->height scale:{orientation, v17, v18}];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)preparedNodeWithSourceContainer:(id)a3 pipelineState:(id)a4 pipelineSettings:(id)a5 sourceSettings:(id)a6 error:(id *)a7
{
  v10 = a4;
  v11 = a6;
  v12 = [v11 objectForKeyedSubscript:@"__addTags"];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v10 currentGroup];
    v15 = [v14 addTag:@"__SourceOrigin" forNode:self];
  }

  v16 = [(NUSourceNode *)self _addOrientationNode:self sourceSettings:v11 error:a7];

  return v16;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3
{
  p_size = &self->_size;
  width = self->_size.width;
  height = p_size->height;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (NUTestPatternSourceNode)initWithSettings:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14118);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14118);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_14118);
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
  _NUAssertFailHandler("[NUTestPatternSourceNode initWithSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Test.m", 120, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUTestPatternSourceNode)initWithSize:(id)a3 orientation:(int64_t)a4 scale:(id)a5
{
  v82 = *MEMORY[0x1E69E9840];
  if ((a4 - 1) >= 8)
  {
    v21 = NUAssertLogger_14097();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(orientation)"];
      *buf = 138543362;
      v79 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_14097();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        v45 = [v43 callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v42;
        v80 = 2114;
        v81 = v46;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTestPatternSourceNode initWithSize:orientation:scale:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Test.m", 104, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "NUOrientationIsValid(orientation)");
  }

  if (!a3.var0 || (var1 = a3.var1) == 0)
  {
    v28 = NUAssertLogger_14097();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!NUPixelSizeIsEmpty(size)"];
      *buf = 138543362;
      v79 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_14097();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        v54 = [v52 callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v51;
        v80 = 2114;
        v81 = v55;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTestPatternSourceNode initWithSize:orientation:scale:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Test.m", 105, @"Invalid parameter not satisfying: %s", v56, v57, v58, v59, "!NUPixelSizeIsEmpty(size)");
  }

  var0 = a5.var0;
  if (a5.var0 < 1 || (v7 = a5.var1, a5.var1 <= 0))
  {
    v35 = NUAssertLogger_14097();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUScaleIsValid(scale)"];
      *buf = 138543362;
      v79 = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v38 = NUAssertLogger_14097();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      if (v39)
      {
        v60 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v61 = MEMORY[0x1E696AF00];
        v62 = v60;
        v63 = [v61 callStackSymbols];
        v64 = [v63 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v79 = v60;
        v80 = 2114;
        v81 = v64;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v79 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUTestPatternSourceNode initWithSize:orientation:scale:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Test.m", 106, @"Invalid parameter not satisfying: %s", v65, v66, v67, v68, "NUScaleIsValid(scale)");
  }

  v76[0] = @"size";
  v72 = a3.var0;
  v71 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v75[0] = v71;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:var1];
  v75[1] = v10;
  v70 = var1;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  v77[0] = v11;
  v76[1] = @"orientation";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v77[1] = v12;
  v76[2] = @"scale";
  [MEMORY[0x1E696AD98] numberWithInteger:var0];
  v13 = v69 = var0;
  v74[0] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v74[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  v77[2] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v73.receiver = self;
  v73.super_class = NUTestPatternSourceNode;
  v17 = [(NUSourceNode *)&v73 initWithSettings:v16];

  v17->_size.width = v72;
  v17->_size.height = v70;
  v17->_orientation = a4;
  v17->_scale.numerator = v69;
  v17->_scale.denominator = v7;
  v18 = +[NUColorSpace sRGBLinearColorSpace];
  colorSpace = v17->_colorSpace;
  v17->_colorSpace = v18;

  return v17;
}

@end