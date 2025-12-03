@interface NUMaskSourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- ($41299696D20B6C925B74A5D5E4D5CC87)croppedExtent;
- (BOOL)supportsPipelineState:(id)state error:(id *)error;
- (NUMaskSourceNode)initWithImage:(id)image croppedExtent:(id *)extent scale:(id)scale identifier:(id)identifier orientation:(int64_t)orientation;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometryWithSourceOptions:(id)options error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (id)sourceImage:(id *)image;
@end

@implementation NUMaskSourceNode

- (id)_evaluateImageGeometryWithSourceOptions:(id)options error:(id *)error
{
  v12 = 0u;
  v13 = 0u;
  [(NUMaskSourceNode *)self croppedExtent:options];
  scale = [(NUMaskSourceNode *)self scale];
  NUPixelRectScaleRational(v11, scale, v6, 0, &v12);
  v7 = [NUImageGeometry alloc];
  sourceOrientation = [(NUCISourceNode *)self sourceOrientation];
  v11[0] = v12;
  v11[1] = v13;
  v9 = [(NUImageGeometry *)v7 initWithExtent:v11 renderScale:NUScaleOne orientation:sourceOrientation];

  return v9;
}

- (id)_evaluateImage:(id *)image
{
  v21[1] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = NUMaskSourceNode;
  v4 = [(NUSourceNode *)&v19 _evaluateImage:image];
  if (v4)
  {
    v5 = v4;
    [(NUMaskSourceNode *)self croppedExtent];
    v6 = [v5 imageByCroppingToRect:{*&v18.a, *&v18.b, *&v18.c, *&v18.d}];

    scale = [(NUMaskSourceNode *)self scale];
    v9 = NUScaleToDouble(scale, v8);
    imageByClampingToExtent = [v6 imageByClampingToExtent];

    if (v9 <= 1.0)
    {
      memset(&v18, 0, sizeof(v18));
      CGAffineTransformMakeScale(&v18, v9, v9);
      v17 = v18;
      v14 = [imageByClampingToExtent imageByApplyingTransform:&v17];
    }

    else
    {
      v20 = *MEMORY[0x1E695FB20];
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      v21[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v13 = [imageByClampingToExtent imageByApplyingFilter:@"CISoftCubicUpsample" withInputParameters:v12];

      v14 = [v13 imageByApplyingFilter:@"CIColorThreshold" withInputParameters:&unk_1F3F829F0];
    }

    [(NUMaskSourceNode *)self croppedExtent];
    *&v18.a = *&v17.a;
    *&v18.c = *&v17.c;
    NU::RectT<long>::scale(&v18, 3, v9, v9);
    v15 = [v14 imageByCroppingToRect:{*&v18.a, *&v18.b, *&v18.c, *&v18.d}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)sourceImage:(id *)image
{
  v5.receiver = self;
  v5.super_class = NUMaskSourceNode;
  v3 = [(NUSourceNode *)&v5 _evaluateImage:image];

  return v3;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = NUMaskSourceNode;
  v6 = [(NUCISourceNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (BOOL)supportsPipelineState:(id)state error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!error)
  {
    v9 = NUAssertLogger_26149();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_26149();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMaskSourceNode supportsPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskSource.m", 66, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != NULL");
  }

  v6 = stateCopy;
  mediaComponentType = [stateCopy mediaComponentType];
  if (mediaComponentType != 1)
  {
    *error = [NUError mismatchError:@"expected an image mediaComponentType" object:v6];
  }

  return mediaComponentType == 1;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)scale
{
  v40 = *MEMORY[0x1E69E9840];
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"scale"];

  if (!v3)
  {
    v7 = NUAssertLogger_26149();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing scale"];
      *v39 = 138543362;
      *&v39[4] = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v39, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_26149();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v39 = 138543618;
        *&v39[4] = v21;
        *&v39[12] = 2114;
        *&v39[14] = v25;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v39, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v39 = 138543362;
      *&v39[4] = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v39, 0xCu);
    }

    _NUAssertFailHandler("[NUMaskSourceNode scale]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskSource.m", 59, @"missing scale", v26, v27, v28, v29, *v39);
  }

  if (strncmp([v3 objCType], "{?=qq}", 6uLL))
  {
    v14 = NUAssertLogger_26149();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wrong value type"];
      *v39 = 138543362;
      *&v39[4] = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v39, 0xCu);
    }

    v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_26149();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      if (v18)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols3 = [v31 callStackSymbols];
        v34 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *v39 = 138543618;
        *&v39[4] = v30;
        *&v39[12] = 2114;
        *&v39[14] = v34;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v39, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *v39 = 138543362;
      *&v39[4] = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v39, 0xCu);
    }

    _NUAssertFailHandler("[NUMaskSourceNode scale]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskSource.m", 60, @"wrong value type", v35, v36, v37, v38, *v39);
  }

  *v39 = NUScaleUnknown;
  [v3 getValue:v39];
  v4 = *v39;

  v6 = v4 >> 64;
  v5 = v4;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)croppedExtent
{
  v43 = *MEMORY[0x1E69E9840];
  settings = [(NURenderNode *)self settings];
  v38 = [settings objectForKeyedSubscript:@"croppedExtent"];

  if (!v38)
  {
    v5 = NUAssertLogger_26149();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing croppedExtent"];
      *buf = 138543362;
      v40 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_26149();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v19;
        v41 = 2114;
        v42 = v23;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMaskSourceNode croppedExtent]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskSource.m", 51, @"missing croppedExtent", v24, v25, v26, v27, v37);
  }

  if (strncmp([v38 objCType], "{?={?=qq}{?=qq}}", 0x10uLL))
  {
    v12 = NUAssertLogger_26149();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wrong value type"];
      *buf = 138543362;
      v40 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_26149();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v16)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols3 = [v29 callStackSymbols];
        v32 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v28;
        v41 = 2114;
        v42 = v32;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMaskSourceNode croppedExtent]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskSource.m", 52, @"wrong value type", v33, v34, v35, v36, v37);
  }

  [v38 nu_pixelRect];

  return result;
}

- (NUMaskSourceNode)initWithImage:(id)image croppedExtent:(id *)extent scale:(id)scale identifier:(id)identifier orientation:(int64_t)orientation
{
  var1 = scale.var1;
  var0 = scale.var0;
  v24[3] = *MEMORY[0x1E69E9840];
  v24[0] = identifier;
  v23[0] = @"identifier";
  v23[1] = @"croppedExtent";
  v12 = MEMORY[0x1E696B098];
  v13 = extent->var1;
  v22[0] = extent->var0;
  v22[1] = v13;
  identifierCopy = identifier;
  imageCopy = image;
  v16 = [v12 nu_valueWithPixelRect:v22];
  v24[1] = v16;
  v23[2] = @"scale";
  v17 = NUScaleToValue(var0, var1);
  v24[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v21.receiver = self;
  v21.super_class = NUMaskSourceNode;
  v19 = [(NUCISourceNode *)&v21 initWithImage:imageCopy settings:v18 orientation:orientation];

  return v19;
}

@end