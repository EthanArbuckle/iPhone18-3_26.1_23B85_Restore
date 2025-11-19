@interface NUCGImageSourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (BOOL)_load:(id *)a3;
- (BOOL)_loadSemanticStylesProperties:(id *)a3;
- (BOOL)_setAuxiliaryImagePropertiesFromCGProperties:(id)a3 error:(id *)a4;
- (BOOL)_setGeometryFromProperties:(id)a3 error:(id *)a4;
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3;
- (BOOL)load:(id *)a3;
- (BOOL)supportsPipelineState:(id)a3 error:(id *)a4;
- (BOOL)useEmbeddedPreview;
- (CGImageSource)cgImageSource;
- (NUCGImageSourceNode)initWithImageSource:(CGImageSource *)a3 identifier:(id)a4;
- (NUCGImageSourceNode)initWithSettings:(id)a3;
- (NUCGImageSourceNode)initWithURL:(id)a3 UTI:(id)a4 identifier:(id)a5;
- (NUCGImageSourceNode)initWithURL:(id)a3 UTI:(id)a4 identifier:(id)a5 options:(id)a6;
- (NUCGImageSourceNode)initWithURL:(id)a3 UTI:(id)a4 settings:(id)a5;
- (id)_evaluateAuxiliaryImageForType:(int64_t)a3 error:(id *)a4;
- (id)_evaluateImageGeometryWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5;
- (id)_evaluateRawImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_finalizeSourceOptions:(id)a3 subsampleFactor:(int64_t)a4;
- (id)auxiliaryImagePropertiesForAuxImageType:(int64_t)a3;
- (id)debugQuickLookObject;
- (id)loadEmbeddedThumbnailDataFromImageSource:(CGImageSource *)a3 options:(id)a4;
- (id)preparedNodeWithSourceContainer:(id)a3 pipelineState:(id)a4 pipelineSettings:(id)a5 sourceSettings:(id)a6 error:(id *)a7;
- (id)resolvedAuxiliaryImageNodeForPipelineState:(id)a3 error:(id *)a4;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (int64_t)normalizeSubsampleFactor:(int64_t)a3;
- (int64_t)sourceOrientation;
- (void)_addDefaultFinalizedSourceOptions:(id)a3;
- (void)_init;
- (void)dealloc;
@end

@implementation NUCGImageSourceNode

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(NUCGImageSourceNode *)self load:a4])
  {
    v8 = 0;
    goto LABEL_35;
  }

  v7 = [(NUCGImageSourceNode *)self _evaluateRawImagePropertiesWithSourceOptions:v6 error:a4];
  if (v7)
  {
    v8 = objc_alloc_init(_NUImageProperties);
    [(_NUImageProperties *)v8 setUrl:self->_URL];
    [(_NUImageProperties *)v8 setMetadata:v7];
    v9 = [(NUCGImageSourceNode *)self colorSpace];
    [(_NUImageProperties *)v8 setColorSpace:v9];

    [(NUCGImageSourceNode *)self contentHeadroom];
    [(_NUImageProperties *)v8 setContentHeadroom:?];
    v10 = [(NUCGImageSourceNode *)self pixelSizeWithSourceOptions:v6];
    [(_NUImageProperties *)v8 setSize:v10, v11];
    [(_NUImageProperties *)v8 setOrientation:[(NUCGImageSourceNode *)self sourceOrientation]];
    v12 = [(NUCGImageSourceNode *)self UTI];
    [(_NUImageProperties *)v8 setFileUTI:v12];

    [(_NUImageProperties *)v8 setAlphaInfo:[(NUCGImageSourceNode *)self alphaInfo]];
    [(_NUImageProperties *)v8 setComponentInfo:[(NUCGImageSourceNode *)self componentInfo]];
    v13 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696D260]];

    if (v14)
    {
      [(_NUImageProperties *)v8 setAuxiliaryImageProperties:v14 forType:2];
    }

    v15 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x1E696D288]];

    if (v16)
    {
      [(_NUImageProperties *)v8 setAuxiliaryImageProperties:v16 forType:3];
    }

    v17 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E696D2A0]];

    if (v18)
    {
      [(_NUImageProperties *)v8 setAuxiliaryImageProperties:v18 forType:4];
    }

    v19 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E696D2B0]];

    if (v20)
    {
      [(_NUImageProperties *)v8 setAuxiliaryImageProperties:v20 forType:6];
    }

    v21 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E696D298]];

    if (v22)
    {
      [(_NUImageProperties *)v8 setAuxiliaryImageProperties:v22 forType:5];
    }

    v23 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x1E696D290]];

    if (v24)
    {
      [(_NUImageProperties *)v8 setAuxiliaryImageProperties:v24 forType:8];
    }

    v25 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v26 = [v25 objectForKeyedSubscript:*MEMORY[0x1E696D2A8]];

    if (v26)
    {
      [(_NUImageProperties *)v8 setAuxiliaryImageProperties:v26 forType:9];
    }

    v27 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v28 = [v27 objectForKeyedSubscript:*MEMORY[0x1E696D280]];

    if (v28)
    {
      v29 = +[NUGlobalSettings enableFlexRange];

      if (v29)
      {
        [(_NUImageProperties *)v8 setAuxiliaryImageProperties:v28 forType:7];
        v30 = +[_NUFlexRangeProperties flexRangePropertiesWithGainMapMetadata:](_NUFlexRangeProperties, "flexRangePropertiesWithGainMapMetadata:", [v28 auxiliaryDataInfoMetadata]);
        v31 = [v28 colorSpace];
        [v30 setAlternateColorSpace:v31];

        v43 = 0.0;
        v32 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
        v33 = [v32 objectForKeyedSubscript:*MEMORY[0x1E696D270]];

        if ([v33 auxiliaryDataInfoMetadata] && +[_NUImageProperties getGainMapHeadroom:fromMetadata:](_NUImageProperties, "getGainMapHeadroom:fromMetadata:", &v43, objc_msgSend(v33, "auxiliaryDataInfoMetadata")))
        {
          v34 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
          [v30 setCompatibilityGainMapHeadroom:v34];
        }

        [(_NUImageProperties *)v8 setFlexRangeProperties:v30];

        goto LABEL_28;
      }
    }

    else
    {
    }

    v35 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v36 = [v35 objectForKeyedSubscript:*MEMORY[0x1E696D270]];

    if (!v36)
    {
LABEL_29:
      v37 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
      v38 = [v37 objectForKeyedSubscript:{@"tag:apple.com, 2023:photo:aux:linearthumbnail"}];

      if (v38)
      {
        [(_NUImageProperties *)v8 setAuxiliaryImageProperties:v38 forType:10];
      }

      v39 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
      v40 = [v39 objectForKeyedSubscript:{@"tag:apple.com, 2023:photo:aux:styledeltamap"}];

      if (v40)
      {
        [(_NUImageProperties *)v8 setAuxiliaryImageProperties:v40 forType:11];
      }

      v41 = [(NUCGImageSourceNode *)self semanticStylesProperties];
      [(_NUImageProperties *)v8 setSemanticStyleProperties:v41];

      goto LABEL_34;
    }

    [(_NUImageProperties *)v8 setAuxiliaryImageProperties:v36 forType:7];
    v28 = v36;
LABEL_28:

    goto LABEL_29;
  }

  v8 = 0;
LABEL_34:

LABEL_35:

  return v8;
}

- (id)_evaluateImageGeometryWithSourceOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(NUCGImageSourceNode *)self load:a4])
  {
    v9.receiver = self;
    v9.super_class = NUCGImageSourceNode;
    v7 = [(NUSourceNode *)&v9 _evaluateImageGeometryWithSourceOptions:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a4)
  {
    v32 = NUAssertLogger_2583();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor != NULL"];
      *buf = 138543362;
      v67 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_2583();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v36)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        v49 = [v47 callStackSymbols];
        v50 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v46;
        v68 = 2114;
        v69 = v50;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 814, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "subsampleFactor != NULL");
  }

  if (!a5)
  {
    v39 = NUAssertLogger_2583();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v67 = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger_2583();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      if (v43)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        v58 = [v56 callStackSymbols];
        v59 = [v58 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v55;
        v68 = 2114;
        v69 = v59;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      v44 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [v44 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 815, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "error != NULL");
  }

  v9 = v8;
  if (![(NUCGImageSourceNode *)self load:a5])
  {
    v10 = 0;
    goto LABEL_22;
  }

  v10 = [(NUCGImageSourceNode *)self cgImageSource];
  if (!v10)
  {
    *a5 = [NUError invalidError:@"Unable to create imageSource" object:self];
    goto LABEL_22;
  }

  v11 = [(NUCGImageSourceNode *)self _finalizeSourceOptions:v9 subsampleFactor:*a4];
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v11];
  v13 = +[NUGlobalSettings imageSourceDisableCacheImmediately];
  v14 = MEMORY[0x1E695F998];
  if (v13)
  {
    v15 = MEMORY[0x1E695E110];
LABEL_13:
    [v12 setObject:v15 forKeyedSubscript:*v14];
    goto LABEL_14;
  }

  v16 = [(NUCGImageSourceNode *)self colorSpace];
  if ([v16 isHDR])
  {

LABEL_12:
    v15 = MEMORY[0x1E695E118];
    goto LABEL_13;
  }

  [(NUCGImageSourceNode *)self UTI];
  v17 = v65 = v11;
  v18 = [*MEMORY[0x1E6982E60] identifier];
  v64 = [v17 isEqualToString:v18];

  v14 = MEMORY[0x1E695F998];
  v11 = v65;

  if (v64)
  {
    goto LABEL_12;
  }

LABEL_14:
  v19 = +[NUGlobalSettings maxPixelCountForCacheImmediately];
  v20 = [(NUCGImageSourceNode *)self size];
  if (v20 * v21 <= v19)
  {
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v14];
  }

  v22 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImageSource:v10 index:0 options:v12];
  v10 = v22;
  if (v22)
  {
    [(CGImageSource *)v22 extent];
    v24 = v23;
    [(CGImageSource *)v10 extent];
    v26 = v25;
    v27 = [(NUCGImageSourceNode *)self pixelSizeWithSourceOptions:v9];
    v29 = (v27 + v28) / (v26 + v24);
    v30 = 1;
    if (v29 >= 1.0)
    {
      v30 = 1 << llround(log2(v29));
    }

    *a4 = v30;
  }

  else
  {
    *a5 = [NUError invalidError:@"Unable to create image from imageSource" object:self];
  }

LABEL_22:

  return v10;
}

- (id)_evaluateRawImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v11 = NUAssertLogger_2583();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_2583();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode _evaluateRawImagePropertiesWithSourceOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 785, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "error != NULL");
  }

  v7 = v6;
  if ([(NUCGImageSourceNode *)self load:a4])
  {
    if ([v7 count])
    {
      v8 = [(NUCGImageSourceNode *)self cgImageSource];
      if (v8)
      {
        v9 = [(NUCGImageSourceNode *)self _finalizeSourceOptions:v7 subsampleFactor:1];
        v8 = CGImageSourceCopyPropertiesAtIndex(v8, 0, v9);
        if (!v8)
        {
          *a4 = [NUError invalidError:@"Unable to get properties from imageSource" object:self];
        }
      }

      else
      {
        *a4 = [NUError invalidError:@"Unable to create imageSource" object:self];
      }
    }

    else
    {
      v8 = [(NUCGImageSourceNode *)self cgImageProperties];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_finalizeSourceOptions:(id)a3 subsampleFactor:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NUCGImageSourceNode *)self _addDefaultFinalizedSourceOptions:v7];
  if (a4 >= 2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696E0F8]];
  }

  if ([v6 count])
  {
    [v7 addEntriesFromDictionary:v6];
  }

  return v7;
}

- (void)_addDefaultFinalizedSourceOptions:(id)a3
{
  v5 = a3;
  v4 = [(NUCGImageSourceNode *)self UTI];
  [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696E118]];
  if (+[NUGlobalSettings allAssetsCanUseHDRPipeline])
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696E0A0]];
  }
}

- (CGImageSource)cgImageSource
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(NUCGImageSourceNode *)self loaded])
  {
    v4 = NUAssertLogger_2583();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not loaded", self];
      *buf = 138543362;
      v21 = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger_2583();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v12 = MEMORY[0x1E696AF00];
        v13 = v11;
        v14 = [v12 callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v11;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode cgImageSource]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 751, @"%@ not loaded", v16, v17, v18, v19, self);
  }

  return self->_cgImageSource;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NUCGImageSourceNode *)self loaded])
  {
    v10 = NUAssertLogger_2583();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not loaded", self];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_2583();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode pixelSizeWithSourceOptions:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 745, @"%@ not loaded", v22, v23, v24, v25, self);
  }

  p_size = &self->_size;
  width = self->_size.width;
  height = p_size->height;

  v8 = width;
  v9 = height;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (id)debugQuickLookObject
{
  v9 = 0;
  v3 = [(NURenderNode *)self outputImage:&v9];
  v4 = v3;
  if (!v3 || v9)
  {
    v8.receiver = self;
    v8.super_class = NUCGImageSourceNode;
    v5 = [(NURenderNode *)&v8 debugQuickLookObject];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (BOOL)load:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = [(NUCGImageSourceNode *)self loaded];
  if (v17[3])
  {
    v5 = 1;
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
    }

    v6 = _NURenderLogger;
    v7 = os_signpost_id_make_with_pointer(v6, self);
    v8 = v6;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0184000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "NUCGImageSourceNode.load", "", buf, 2u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __28__NUCGImageSourceNode_load___block_invoke;
    v14[3] = &unk_1E810B3E8;
    v14[4] = self;
    v14[5] = &v16;
    v14[6] = a3;
    v10 = MEMORY[0x1C68D98A0](v14);
    v10[2]();
    v11 = v9;
    v12 = v11;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0184000, v12, OS_SIGNPOST_INTERVAL_END, v7, "NUCGImageSourceNode.load", "", buf, 2u);
    }

    v5 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);
  return v5 & 1;
}

__n128 __28__NUCGImageSourceNode_load___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__NUCGImageSourceNode_load___block_invoke_2;
  block[3] = &unk_1E810B3E8;
  v5 = v1;
  v6 = *(a1 + 48);
  dispatch_sync(v2, block);
  return result;
}

uint64_t __28__NUCGImageSourceNode_load___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _load:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)loadEmbeddedThumbnailDataFromImageSource:(CGImageSource *)a3 options:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = CGImageSourceCopyProperties(a3, a4);
  v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:@"{raw}"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"CropSize"];
    v9 = [v8 objectForKeyedSubscript:@"Width"];
    v10 = [v9 unsignedIntegerValue];

    v11 = [v8 objectForKeyedSubscript:@"Height"];
    v12 = [v11 unsignedIntegerValue];

    if (!v10 || !v12)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
      }

      v31 = _NURenderLogger;
      if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v7;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Invalid image size from Raw properties: %{public}@", buf, 0xCu);
      }

      v28 = 0;
      goto LABEL_36;
    }

    v13 = [v7 objectForKeyedSubscript:@"Thumbnails"];
    v14 = [v13 firstObject];

    if (v14)
    {
      v15 = [v14 objectForKeyedSubscript:@"Width"];
      v16 = [v15 unsignedIntegerValue];

      v17 = [v14 objectForKeyedSubscript:@"Height"];
      v18 = [v17 unsignedIntegerValue];

      if (v16 == v10 && v18 == v12)
      {
        v19 = [v14 objectForKeyedSubscript:@"JPEGOffset"];
        v20 = [v19 unsignedIntegerValue];

        v21 = [v14 objectForKeyedSubscript:@"JPEGLength"];
        v22 = [v21 unsignedIntegerValue];

        if (v20 && v22)
        {
          v23 = MEMORY[0x1E695DEF0];
          v24 = [(NUCGImageSourceNode *)self URL];
          v39 = 0;
          v25 = [v23 dataWithContentsOfURL:v24 options:1 error:&v39];
          v26 = v39;

          v27 = [v25 subdataWithRange:{v20, v22}];
          v28 = v27;
          if (v27)
          {
            v29 = v27;
          }

          else
          {
            v38 = NURenderLogger();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v41 = v26;
              _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Failed to load embedded thumbnail data: %{public}@", buf, 0xCu);
            }
          }

          goto LABEL_35;
        }

        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
        }

        v32 = _NURenderLogger;
        if (!os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
        {
LABEL_34:
          v28 = 0;
LABEL_35:

LABEL_36:
          goto LABEL_37;
        }

        *buf = 138543362;
        v41 = v7;
        v33 = "Invalid thumbnail data range: %{public}@";
      }

      else
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
        }

        v32 = _NURenderLogger;
        if (!os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *buf = 138543362;
        v41 = v7;
        v33 = "Embedded thumbnail dimension mismatch: %{public}@";
      }
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
      }

      v32 = _NURenderLogger;
      if (!os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v41 = v7;
      v33 = "Missing thumbnail properties: %{public}@";
    }

    _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, v33, buf, 0xCu);
    goto LABEL_34;
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
  }

  v30 = _NURenderLogger;
  if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
  {
    v35 = v30;
    v36 = [(NUCGImageSourceNode *)self URL];
    v37 = [v36 path];
    *buf = 138412290;
    v41 = v37;
    _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Invalid {raw} properties: %@", buf, 0xCu);
  }

  v28 = 0;
LABEL_37:

  return v28;
}

- (BOOL)_loadSemanticStylesProperties:(id *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(NUCGImageSourceNode *)self URL];
  v6 = CMPhotoDecompressionDetectContainerFormat();

  if (!v6)
  {
    return 1;
  }

  v7 = CMPhotoDecompressionSessionCreate();
  if (self->_decompressionSession)
  {
    v8 = [(NUCGImageSourceNode *)self URL];
    Container = CMPhotoDecompressionSessionCreateContainer();

    if (self->_decompressionContainer)
    {
      v16 = 0;
      v10 = CMPhotoDecompressionContainerCopyCustomMetadataForIndexWithOptions();
      if (v10 >> 1 != 2147475151)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithInt:v10];
        [NUError failureError:@"Failed to load custom metadata" object:v14];
        *a3 = v13 = 0;

        return v13;
      }

      return 1;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInt:Container];
    *a3 = [NUError failureError:@"Failed to create decompression container" object:v12];
  }

  else
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    *a3 = [NUError failureError:@"Failed to create decompression session" object:v11];
  }

  return 0;
}

- (BOOL)_load:(id *)a3
{
  v75 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v52 = NUAssertLogger_2583();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v72 = v53;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v55 = NUAssertLogger_2583();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v56)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v59;
        v73 = 2114;
        v74 = v63;
        _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v56)
    {
      v57 = [MEMORY[0x1E696AF00] callStackSymbols];
      v58 = [v57 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v58;
      _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode _load:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 497, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != NULL");
  }

  if (![(NUCGImageSourceNode *)self loaded])
  {
    v6 = [(NUCGImageSourceNode *)self _finalizeSourceOptions:MEMORY[0x1E695E0F8] subsampleFactor:1];
    v7 = [(NUCGImageSourceNode *)self URL];
    v8 = CGImageSourceCreateWithURL(v7, v6);
    if (!v8)
    {
      [NUError unknownError:@"Unable to create CGImageSourceRef" object:v7];
      *a3 = v5 = 0;
LABEL_53:
      [(NUCGImageSourceNode *)self setLoaded:v5];

      return v5;
    }

    v9 = v8;
    if ([(NUCGImageSourceNode *)self useEmbeddedPreview])
    {
      v10 = [(NUCGImageSourceNode *)self loadEmbeddedThumbnailDataFromImageSource:v9 options:v6];
      v11 = v10;
      if (v10)
      {
        v12 = CGImageSourceCreateWithData(v10, v6);
        if (v12)
        {
          v13 = v12;
          CFRelease(v9);
          v9 = v13;
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
          }

          v14 = _NURenderLogger;
          if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
          {
            v46 = v14;
            v47 = [(__CFURL *)v7 path];
            *buf = 138543362;
            v72 = v47;
            _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Failed to load image source from embedded thumbnail data at path: '%{public}@'", buf, 0xCu);
          }
        }
      }
    }

    [(NUCGImageSourceNode *)self setCgImageSource:v9];
    v15 = CGImageSourceCopyPropertiesAtIndex(v9, 0, v6);
    [(NUCGImageSourceNode *)self setCgImageProperties:v15];
    if (v15)
    {
      v16 = [(NUCGImageSourceNode *)self _setGeometryFromProperties:v15 error:a3];
    }

    else
    {
      [NUError errorWithCode:2 reason:@"Unable to load CGImageProperties" object:self];
      *a3 = v16 = 0;
    }

    v70 = 0;
    v17 = [(NUCGImageSourceNode *)self _loadSemanticStylesProperties:&v70];
    v18 = v70;
    if (!v17)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
      }

      v19 = _NURenderLogger;
      if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v72 = v18;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Failed to get style metadata: %{public}@", buf, 0xCu);
      }
    }

    if (v16)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, v6);
      v5 = ImageAtIndex;
      if (ImageAtIndex)
      {
        BitmapInfo = CGImageGetBitmapInfo(ImageAtIndex);
        if ((BitmapInfo & 0x1F) > 6)
        {
          v22 = 0;
        }

        else
        {
          v22 = qword_1C03C41A0[BitmapInfo & 0x1F];
        }

        [(NUCGImageSourceNode *)self setAlphaInfo:v22];
        if ((BitmapInfo & 0x100) != 0)
        {
          v24 = 4;
        }

        else
        {
          v23 = (BitmapInfo >> 12) & 7;
          if (v23 > 4)
          {
            v24 = 0;
          }

          else
          {
            v24 = qword_1C03C41D8[v23];
          }
        }

        [(NUCGImageSourceNode *)self setComponentInfo:v24];
        ColorSpace = CGImageGetColorSpace(v5);
        if (ColorSpace)
        {
          v26 = [[NUColorSpace alloc] initWithCGColorSpace:ColorSpace];
LABEL_51:
          v43 = v26;
          [(NUCGImageSourceNode *)self setColorSpace:v26];

          CGImageGetContentHeadroom();
          [(NUCGImageSourceNode *)self setContentHeadroom:?];
          CGImageRelease(v5);
          v44 = CGImageSourceCopyProperties(v9, v6);
          v5 = [(NUCGImageSourceNode *)self _setAuxiliaryImagePropertiesFromCGProperties:v44 error:a3];

          goto LABEL_52;
        }

        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_2609);
        }

        v27 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
        {
          v28 = MEMORY[0x1E696AEC0];
          v29 = v27;
          v30 = [v28 stringWithFormat:@"Could not get the color space from the image - attempting to use built in sRGB"];
          *buf = 138543362;
          v72 = v30;
          _os_log_impl(&dword_1C0184000, v29, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

          v31 = _NULogOnceToken;
          if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
          {
            if (v31 != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_2609);
            }

            goto LABEL_44;
          }

          if (v31 != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_2609);
          }
        }

        else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
LABEL_44:
          v32 = _NUAssertLogger;
          if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
          {
            v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v38 = MEMORY[0x1E696AF00];
            v69 = v37;
            v39 = v32;
            v40 = [v38 callStackSymbols];
            v41 = [v40 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v72 = v37;
            v73 = 2114;
            v74 = v41;
            _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }

LABEL_50:
          _NUAssertContinueHandler("[NUCGImageSourceNode _load:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 562, @"Could not get the color space from the image - attempting to use built in sRGB", v33, v34, v35, v36, v68);
          v26 = +[NUColorSpace sRGBColorSpace];
          goto LABEL_51;
        }

        v42 = _NUAssertLogger;
        if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
        {
          v48 = MEMORY[0x1E696AF00];
          v49 = v42;
          v50 = [v48 callStackSymbols];
          v51 = [v50 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v72 = v51;
          _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        goto LABEL_50;
      }

      *a3 = [NUError invalidError:@"Unable to create image from imageSource" object:self];
    }

    else
    {
      v5 = 0;
    }

LABEL_52:
    CFRelease(v9);
    goto LABEL_53;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (BOOL)_setAuxiliaryImagePropertiesFromCGProperties:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696DB58]];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DDE8]];
    v10 = v9;
    if (v9 && [v9 count])
    {
      v33 = v8;
      v34 = v5;
      v32 = v10;
      v31 = [v10 objectAtIndexedSubscript:0];
      v11 = [v31 objectForKeyedSubscript:*MEMORY[0x1E696D410]];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v39;
        v15 = *MEMORY[0x1E696D418];
        v37 = *MEMORY[0x1E696D288];
        v36 = *MEMORY[0x1E696D2A0];
        v35 = *MEMORY[0x1E696D2A8];
        do
        {
          v16 = 0;
          do
          {
            if (*v39 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v38 + 1) + 8 * v16);
            v18 = [v17 objectForKeyedSubscript:v15];
            v19 = v18;
            if (v18)
            {
              if (self->_decompressionContainer && (([v18 isEqualToString:{@"tag:apple.com, 2023:photo:aux:linearthumbnail"}] & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", v37) & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", v36) & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", v35) & 1) != 0 || objc_msgSend(v19, "isEqualToString:", @"tag:apple.com,2023:photo:aux:styledeltamap")))
              {
                v20 = [[NUCMPhotoAuxiliaryImageProperties alloc] initWithProperties:v17 decompressionContainer:self->_decompressionContainer];
              }

              else
              {
                v20 = [[NUCGAuxiliaryImageProperties alloc] initWithCGProperties:v17 imageSource:self->_cgImageSource];
              }

              v22 = v20;
              [v6 setObject:v20 forKeyedSubscript:v19];
            }

            else
            {
              if (_NULogOnceToken != -1)
              {
                dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
              }

              v21 = _NURenderLogger;
              if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v43 = v17;
                _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Missing AuxiliaryDataType key: %{public}@", buf, 0xCu);
              }
            }

            ++v16;
          }

          while (v13 != v16);
          v13 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v13);
      }

      v23 = *MEMORY[0x1E696D280];
      v24 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696D280]];
      if (v24)
      {
        v25 = v24;
        v26 = *MEMORY[0x1E696D270];
        v27 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696D270]];

        if (v27)
        {
          v28 = [v6 objectForKeyedSubscript:v23];
          v29 = [v6 objectForKeyedSubscript:v26];
          [v28 setCompatibilityMetadata:{objc_msgSend(v29, "auxiliaryDataInfoMetadata")}];
        }
      }

      [(NUCGImageSourceNode *)self setAuxiliaryImagesProperties:v6];

      v8 = v33;
      v5 = v34;
      v10 = v32;
    }
  }

  return 1;
}

- (BOOL)_setGeometryFromProperties:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v18 = NUAssertLogger_2583();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v37 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_2583();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v27;
        v38 = 2114;
        v39 = v31;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode _setGeometryFromProperties:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 391, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != nil");
  }

  v7 = v6;
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
  v9 = [v8 integerValue];

  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
  v11 = [v10 integerValue];

  if ((v11 | v9) < 0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    [v25 handleFailureInFunction:v26 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
  }

  [(NUCGImageSourceNode *)self setSize:v9, v11];
  v12 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DF58]];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
    if (!v13)
    {
      v15 = 1;
      goto LABEL_14;
    }
  }

  v14 = [v13 integerValue];
  if ((v14 - 1) >= 8)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
    }

    v16 = _NURenderLogger;
    v15 = 1;
    if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v37 = self;
      v38 = 2114;
      v39 = v13;
      v15 = 1;
      _os_log_impl(&dword_1C0184000, v16, OS_LOG_TYPE_INFO, "%@ has invalid orientation: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v15 = v14;
  }

LABEL_14:
  [(NUCGImageSourceNode *)self setOrientation:v15];

  return 1;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a6)
  {
    v16 = NUAssertLogger_2583();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v33 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_2583();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode resolvedNodeWithCachedInputs:settings:pipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 375, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "error != nil");
  }

  v13 = v12;
  if ([(NUCGImageSourceNode *)self load:a6]&& [(NUCGImageSourceNode *)self supportsPipelineState:v13 error:a6])
  {
    v14 = [(NUCGImageSourceNode *)self resolvedAuxiliaryImageNodeForPipelineState:v13 error:a6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)preparedNodeWithSourceContainer:(id)a3 pipelineState:(id)a4 pipelineSettings:(id)a5 sourceSettings:(id)a6 error:(id *)a7
{
  v42 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!a7)
  {
    v21 = NUAssertLogger_2583();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v39 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_2583();
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
        v39 = v28;
        v40 = 2114;
        v41 = v32;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode preparedNodeWithSourceContainer:pipelineState:pipelineSettings:sourceSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 347, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "error != nil");
  }

  v16 = v15;
  if ([(NUCGImageSourceNode *)self load:a7]&& [(NUCGImageSourceNode *)self supportsPipelineState:v13 error:a7])
  {
    if ([v13 auxiliaryImageType] == 1 || !objc_msgSend(v13, "auxiliaryImageType"))
    {
      v37.receiver = self;
      v37.super_class = NUCGImageSourceNode;
      v19 = [(NUSourceNode *)&v37 preparedNodeWithSourceContainer:v12 pipelineState:v13 pipelineSettings:v14 sourceSettings:v16 error:a7];
    }

    else
    {
      v17 = [(NUCGImageSourceNode *)self resolvedAuxiliaryImageNodeForPipelineState:v13 error:a7];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 preparedNodeWithSourceContainer:v12 pipelineState:v13 pipelineSettings:v14 sourceSettings:v16 error:a7];
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3
{
  v3 = [(NUCGImageSourceNode *)self auxiliaryImagePropertiesForAuxImageType:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)_evaluateAuxiliaryImageForType:(int64_t)a3 error:(id *)a4
{
  v6 = [(NUCGImageSourceNode *)self auxiliaryImagePropertiesForAuxImageType:?];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 auxiliaryImage:a4];
  }

  else
  {
    if (a3 > 0xB)
    {
      v9 = @"Invalid";
    }

    else
    {
      v9 = off_1E8109908[a3];
    }

    v10 = v9;
    *a4 = [NUError missingError:@"source does not have properties for given auxiliary image type:" object:v10];

    v8 = 0;
  }

  return v8;
}

- (id)resolvedAuxiliaryImageNodeForPipelineState:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v18 = NUAssertLogger_2583();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v35 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_2583();
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
        v35 = v25;
        v36 = 2114;
        v37 = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode resolvedAuxiliaryImageNodeForPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 300, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "error != nil");
  }

  v7 = v6;
  v8 = [v6 auxiliaryImageType];
  if (v8)
  {
    v9 = v8;
    if (v8 == 1)
    {
      v10 = self;
    }

    else
    {
      v11 = [(NUCGImageSourceNode *)self auxiliaryImagePropertiesForAuxImageType:v8];
      if (v11)
      {
        if (v9 == 2)
        {
          v12 = [NUCGImageDepthSourceNode alloc];
          v13 = self;
          v14 = 2;
        }

        else
        {
          v12 = [NUCGAuxiliaryImageSourceNode alloc];
          v13 = self;
          v14 = v9;
        }

        v10 = [(NUCGImageDepthSourceNode *)v12 initWithSourceNode:v13 auxiliaryImageType:v14 auxiliaryImageProperties:v11];
      }

      else
      {
        if (v9 > 0xB)
        {
          v15 = @"Invalid";
        }

        else
        {
          v15 = off_1E8109908[v9];
        }

        v16 = v15;
        *a4 = [NUError missingError:@"source does not have properties for given auxiliaryImageType:" object:v16];

        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)auxiliaryImagePropertiesForAuxImageType:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 6)
  {
    if (a3 <= 3)
    {
      if (a3 == 2)
      {
        v5 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
        v6 = v5;
        v7 = MEMORY[0x1E696D260];
      }

      else
      {
        if (a3 != 3)
        {
          goto LABEL_28;
        }

        v5 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
        v6 = v5;
        v7 = MEMORY[0x1E696D288];
      }
    }

    else if (a3 == 4)
    {
      v5 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
      v6 = v5;
      v7 = MEMORY[0x1E696D2A0];
    }

    else if (a3 == 5)
    {
      v5 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
      v6 = v5;
      v7 = MEMORY[0x1E696D298];
    }

    else
    {
      v5 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
      v6 = v5;
      v7 = MEMORY[0x1E696D2B0];
    }

    goto LABEL_26;
  }

  if (a3 > 8)
  {
    if (a3 != 9)
    {
      if (a3 == 10)
      {
        v5 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
        v6 = v5;
        v8 = @"tag:apple.com,2023:photo:aux:linearthumbnail";
      }

      else
      {
        if (a3 != 11)
        {
          goto LABEL_28;
        }

        v5 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
        v6 = v5;
        v8 = @"tag:apple.com,2023:photo:aux:styledeltamap";
      }

      goto LABEL_27;
    }

    v5 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v6 = v5;
    v7 = MEMORY[0x1E696D2A8];
    goto LABEL_26;
  }

  if (a3 != 7)
  {
    v5 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v6 = v5;
    v7 = MEMORY[0x1E696D290];
LABEL_26:
    v8 = *v7;
    goto LABEL_27;
  }

  v9 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
  v10 = *MEMORY[0x1E696D280];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696D280]];
  if (!v11)
  {

    goto LABEL_25;
  }

  v12 = v11;
  v13 = +[NUGlobalSettings enableFlexRange];

  if (!v13)
  {
LABEL_25:
    v5 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
    v6 = v5;
    v7 = MEMORY[0x1E696D270];
    goto LABEL_26;
  }

  v5 = [(NUCGImageSourceNode *)self auxiliaryImagesProperties];
  v6 = v5;
  v8 = v10;
LABEL_27:
  v4 = [v5 objectForKeyedSubscript:v8];

LABEL_28:

  return v4;
}

- (BOOL)supportsPipelineState:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v22 = NUAssertLogger_2583();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v49 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_2583();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v29;
        v50 = 2114;
        v51 = v33;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode supportsPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 220, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "error != nil");
  }

  v7 = v6;
  if ([v6 mediaComponentType] != 1)
  {
    [NUError mismatchError:@"expected an image mediaComponentType" object:v7];
    *a4 = v10 = 0;
    goto LABEL_18;
  }

  v8 = [v7 auxiliaryImageType];
  if ((v8 - 2) >= 0xA)
  {
    if (!v8 && [v7 evaluationMode] == 1)
    {
      v13 = NUAssertLogger_2583();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected a valid auxiliaryImageType during render"];
        *buf = 138543362;
        v49 = v14;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v16 = NUAssertLogger_2583();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        if (v17)
        {
          v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v39 = MEMORY[0x1E696AF00];
          v40 = v38;
          v41 = [v39 callStackSymbols];
          v42 = [v41 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v49 = v38;
          v50 = 2114;
          v51 = v42;
          _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v17)
      {
        v18 = [MEMORY[0x1E696AF00] callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v49 = v19;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUCGImageSourceNode supportsPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 233, @"expected a valid auxiliaryImageType during render", v43, v44, v45, v46, v47);
    }

    goto LABEL_5;
  }

  v9 = -[NUCGImageSourceNode auxiliaryImagePropertiesForAuxImageType:](self, "auxiliaryImagePropertiesForAuxImageType:", [v7 auxiliaryImageType]);

  if (v9)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_18;
  }

  v11 = [v7 auxiliaryImageType];
  if (v11 > 0xB)
  {
    v12 = @"Invalid";
  }

  else
  {
    v12 = off_1E8109908[v11];
  }

  v20 = v12;
  *a4 = [NUError missingError:@"auxiliary image data not found" object:v20];

  v10 = 0;
LABEL_18:

  return v10;
}

- (int64_t)normalizeSubsampleFactor:(int64_t)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (![(NUCGImageSourceNode *)self loaded])
  {
    v12 = NUAssertLogger_2583();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not loaded", self];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_2583();
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

    _NUAssertFailHandler("[NUCGImageSourceNode normalizeSubsampleFactor:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 152, @"%@ not loaded", v24, v25, v26, v27, self);
  }

  v5 = CGImageSourceGetType(self->_cgImageSource);
  if (v5)
  {
    v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 conformsToType:*MEMORY[0x1E6982E58]])
  {
    v7 = a3 < 8;
    v8 = 8;
    goto LABEL_11;
  }

  if ([v6 conformsToType:*MEMORY[0x1E6983138]])
  {
    v7 = a3 < 64;
    v8 = 64;
    goto LABEL_11;
  }

  if ([v6 conformsToType:*MEMORY[0x1E6982F28]])
  {
    v7 = a3 < 128;
    v8 = 128;
LABEL_11:
    if (!v7)
    {
      a3 = v8;
    }

    goto LABEL_13;
  }

  if ([v6 conformsToType:*MEMORY[0x1E6982F88]])
  {
    a3 = 1;
  }

  else
  {
    v10 = [v6 conformsToType:*MEMORY[0x1E6983008]];
    v11 = 128;
    if (a3 < 128)
    {
      v11 = a3;
    }

    if (v10)
    {
      a3 = v11;
    }

    else
    {
      a3 = 1;
    }
  }

LABEL_13:

  return a3;
}

- (int64_t)sourceOrientation
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(NUCGImageSourceNode *)self loaded])
  {
    v4 = NUAssertLogger_2583();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not loaded", self];
      *buf = 138543362;
      v21 = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger_2583();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v12 = MEMORY[0x1E696AF00];
        v13 = v11;
        v14 = [v12 callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v11;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode sourceOrientation]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 146, @"%@ not loaded", v16, v17, v18, v19, self);
  }

  return self->_orientation;
}

- (void)dealloc
{
  cgImageSource = self->_cgImageSource;
  if (cgImageSource)
  {
    CFRelease(cgImageSource);
  }

  decompressionSession = self->_decompressionSession;
  if (decompressionSession)
  {
    CFRelease(decompressionSession);
  }

  decompressionContainer = self->_decompressionContainer;
  if (decompressionContainer)
  {
    CFRelease(decompressionContainer);
  }

  v6.receiver = self;
  v6.super_class = NUCGImageSourceNode;
  [(NUCGImageSourceNode *)&v6 dealloc];
}

- (NUCGImageSourceNode)initWithSettings:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_2609);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_2609);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_2609);
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
  _NUAssertFailHandler("[NUCGImageSourceNode initWithSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 128, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUCGImageSourceNode)initWithURL:(id)a3 UTI:(id)a4 settings:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 count])
  {
    v11 = [v10 mutableCopy];
    [v11 setObject:v8 forKeyedSubscript:@"url"];
    v12 = [v11 copy];
  }

  else
  {
    v19 = @"url";
    v20[0] = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  }

  v18.receiver = self;
  v18.super_class = NUCGImageSourceNode;
  v13 = [(NUSourceNode *)&v18 initWithSettings:v12];
  [(NUCGImageSourceNode *)v13 _init];
  URL = v13->_URL;
  v13->_URL = v8;
  v15 = v8;

  UTI = v13->_UTI;
  v13->_UTI = v9;

  return v13;
}

- (BOOL)useEmbeddedPreview
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"useEmbeddedPreview"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NUCGImageSourceNode)initWithURL:(id)a3 UTI:(id)a4 identifier:(id)a5 options:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v21 = NUAssertLogger_2583();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "URL != nil"];
      *buf = 138543362;
      v56 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_2583();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v35;
        v57 = 2114;
        v58 = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode initWithURL:UTI:identifier:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 94, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "URL != nil");
  }

  if (!v12)
  {
    v28 = NUAssertLogger_2583();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v56 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_2583();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v44;
        v57 = 2114;
        v58 = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode initWithURL:UTI:identifier:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 95, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "identifier != nil");
  }

  v14 = v13;
  v15 = [v13 objectForKeyedSubscript:@"useEmbeddedPreview"];
  v16 = [v15 BOOLValue];

  v53[1] = @"useEmbeddedPreview";
  v54[0] = v12;
  v53[0] = @"identifier";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:v16];
  v54[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v19 = [(NUCGImageSourceNode *)self initWithURL:v10 UTI:v11 settings:v18];

  return v19;
}

- (NUCGImageSourceNode)initWithURL:(id)a3 UTI:(id)a4 identifier:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v15 = NUAssertLogger_2583();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "URL != nil"];
      *buf = 138543362;
      v50 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_2583();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v29;
        v51 = 2114;
        v52 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode initWithURL:UTI:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 87, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "URL != nil");
  }

  v11 = v10;
  if (!v10)
  {
    v22 = NUAssertLogger_2583();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v50 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_2583();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v38;
        v51 = 2114;
        v52 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGImageSourceNode initWithURL:UTI:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 88, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "identifier != nil");
  }

  v47 = @"identifier";
  v48 = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v13 = [(NUCGImageSourceNode *)self initWithURL:v8 UTI:v9 settings:v12];

  return v13;
}

- (NUCGImageSourceNode)initWithImageSource:(CGImageSource *)a3 identifier:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = @"identifier";
  v13[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = NUCGImageSourceNode;
  v9 = [(NUSourceNode *)&v11 initWithSettings:v8];

  [(NUCGImageSourceNode *)v9 _init];
  v9->_cgImageSource = CFRetain(a3);
  return v9;
}

- (void)_init
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("NUCGImageSourceNode", v5);
  queue = self->_queue;
  self->_queue = v3;
}

@end