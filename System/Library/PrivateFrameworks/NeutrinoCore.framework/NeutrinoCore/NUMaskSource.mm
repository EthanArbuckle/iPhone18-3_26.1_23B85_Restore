@interface NUMaskSource
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- ($41299696D20B6C925B74A5D5E4D5CC87)extent;
- (NUMaskSource)initWithContentsOfURL:(id)l identifier:(id)identifier extent:(id *)extent scale:(id)scale;
- (NUMaskSource)initWithImage:(id)image identifier:(id)identifier extent:(id *)extent scale:(id)scale;
- (NUMaskSource)initWithImageBuffer:(id)buffer identifier:(id)identifier extent:(id *)extent scale:(id)scale;
- (id)_initWithDefinition:(id)definition identifier:(id)identifier extent:(id *)extent scale:(id)scale;
- (id)newSourceNode:(id *)node;
- (id)sourceImage:(id *)image;
@end

@implementation NUMaskSource

- ($0AC6E346AE4835514AAA8AC86D8F4844)scale
{
  v40 = *MEMORY[0x1E69E9840];
  settings = [(NUSource *)self settings];
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

    _NUAssertFailHandler("[NUMaskSource scale]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskSource.m", 207, @"missing scale", v26, v27, v28, v29, *v39);
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

    _NUAssertFailHandler("[NUMaskSource scale]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskSource.m", 208, @"wrong value type", v35, v36, v37, v38, *v39);
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

- ($41299696D20B6C925B74A5D5E4D5CC87)extent
{
  v43 = *MEMORY[0x1E69E9840];
  settings = [(NUSource *)self settings];
  v38 = [settings objectForKeyedSubscript:@"extent"];

  if (!v38)
  {
    v5 = NUAssertLogger_26149();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing extent"];
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

    _NUAssertFailHandler("[NUMaskSource extent]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskSource.m", 198, @"missing extent", v24, v25, v26, v27, v37);
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

    _NUAssertFailHandler("[NUMaskSource extent]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskSource.m", 199, @"wrong value type", v33, v34, v35, v36, v37);
  }

  [v38 nu_pixelRect];

  return result;
}

- (NUMaskSource)initWithContentsOfURL:(id)l identifier:(id)identifier extent:(id *)extent scale:(id)scale
{
  var1 = scale.var1;
  var0 = scale.var0;
  identifierCopy = identifier;
  lCopy = l;
  v13 = [[NUFileSourceDefinition alloc] initWithURL:lCopy UTI:0];

  v14 = extent->var1;
  v17[0] = extent->var0;
  v17[1] = v14;
  var1 = [(NUMaskSource *)self _initWithDefinition:v13 identifier:identifierCopy extent:v17 scale:var0, var1];

  return var1;
}

- (NUMaskSource)initWithImage:(id)image identifier:(id)identifier extent:(id *)extent scale:(id)scale
{
  var1 = scale.var1;
  var0 = scale.var0;
  identifierCopy = identifier;
  imageCopy = image;
  v13 = [NUMaskSourceDefinition alloc];
  v14 = extent->var1;
  v19 = extent->var0;
  v20 = v14;
  v15 = [(NUMaskSourceDefinition *)v13 initWithCIImage:imageCopy croppedExtent:&v19 scale:var0 orientation:var1, 1];

  v16 = extent->var1;
  v19 = extent->var0;
  v20 = v16;
  var1 = [(NUMaskSource *)self _initWithDefinition:v15 identifier:identifierCopy extent:&v19 scale:var0, var1];

  return var1;
}

- (NUMaskSource)initWithImageBuffer:(id)buffer identifier:(id)identifier extent:(id *)extent scale:(id)scale
{
  var1 = scale.var1;
  var0 = scale.var0;
  identifierCopy = identifier;
  cVPixelBuffer = [buffer CVPixelBuffer];
  v13 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:cVPixelBuffer];
  v14 = extent->var1;
  v17[0] = extent->var0;
  v17[1] = v14;
  var1 = [(NUMaskSource *)self initWithImage:v13 identifier:identifierCopy extent:v17 scale:var0, var1];

  return var1;
}

- (id)_initWithDefinition:(id)definition identifier:(id)identifier extent:(id *)extent scale:(id)scale
{
  var1 = scale.var1;
  var0 = scale.var0;
  definitionCopy = definition;
  identifierCopy = identifier;
  v13 = +[NUSourceSchema sharedSourceSchema];
  v21.receiver = self;
  v21.super_class = NUMaskSource;
  v14 = [(NUSource *)&v21 initWithSourceSchema:v13];

  if (v14)
  {
    [(NUSource *)v14 setAssetIdentifier:identifierCopy];
    [(NUSource *)v14 setDefinition:definitionCopy];
    v15 = objc_opt_new();
    v16 = extent->var1;
    v20[0] = extent->var0;
    v20[1] = v16;
    v17 = [MEMORY[0x1E696B098] nu_valueWithPixelRect:v20];
    [v15 setObject:v17 forKeyedSubscript:@"extent"];

    v18 = NUScaleToValue(var0, var1);
    [v15 setObject:v18 forKeyedSubscript:@"scale"];

    [(NUSource *)v14 setSettings:v15];
  }

  return v14;
}

- (id)sourceImage:(id *)image
{
  v35 = *MEMORY[0x1E69E9840];
  if (!image)
  {
    v15 = NUAssertLogger_26149();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_26149();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v22;
        v33 = 2114;
        v34 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMaskSource(MaskEvaluation) sourceImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskSource.m", 242, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "error != NULL");
  }

  definition = [(NUSource *)self definition];

  if (definition)
  {
    definition2 = [(NUSource *)self definition];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    definition3 = [(NUSource *)self definition];
    definition4 = definition3;
    if (isKindOfClass)
    {
      image = [definition3 image];
    }

    else
    {
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      definition4 = [(NUSource *)self definition];
      if (v11)
      {
        v12 = objc_alloc(MEMORY[0x1E695F658]);
        v13 = [definition4 url];
        image = [v12 initWithContentsOfURL:v13];
      }

      else
      {
        [NUError unsupportedError:@"Unexpected source definition kind" object:definition4];
        *image = image = 0;
      }
    }
  }

  else
  {
    [NUError missingError:@"Missing source" object:self];
    *image = image = 0;
  }

  return image;
}

- (id)newSourceNode:(id *)node
{
  v31 = *MEMORY[0x1E69E9840];
  if (!node)
  {
    v11 = NUAssertLogger_26149();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_26149();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMaskSource(MaskEvaluation) newSourceNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskSource.m", 219, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "error != NULL");
  }

  definition = [(NUSource *)self definition];
  if (!definition)
  {
    v9 = [NUError missingError:@"Missing source" object:self];
LABEL_9:
    v7 = 0;
    *node = v9;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [NUError invalidError:@"Unexpected source definition kind" object:definition];
    goto LABEL_9;
  }

  assetIdentifier = [(NUSource *)self assetIdentifier];
  v7 = [definition generateSourceNodeWithIdentifier:assetIdentifier error:node];

  if (v7)
  {
    v8 = v7;
  }

LABEL_10:
  return v7;
}

@end