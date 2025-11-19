@interface NUCMPhotoAuxiliaryImageProperties
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (CGImageMetadata)auxiliaryDataInfoMetadata;
- (NUCMPhotoAuxiliaryImageProperties)init;
- (NUCMPhotoAuxiliaryImageProperties)initWithProperties:(id)a3 decompressionContainer:(CMPhotoDecompressionContainer *)a4;
- (id)auxiliaryCoreGraphicsInfoDictionary:(id *)a3;
- (id)auxiliaryImage:(id *)a3;
- (id)auxiliaryImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NUCMPhotoAuxiliaryImageProperties

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  height = self->_size.height;
  width = self->_size.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (id)auxiliaryImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a4)
  {
    v18 = NUAssertLogger_2583();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor != NULL"];
      buf[0] = 138543362;
      *&buf[1] = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_2583();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        buf[0] = 138543618;
        *&buf[1] = v39;
        v68 = 2114;
        v69 = v43;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      buf[0] = 138543362;
      *&buf[1] = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCMPhotoAuxiliaryImageProperties auxiliaryImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1098, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "subsampleFactor != NULL");
  }

  if (!a5)
  {
    v25 = NUAssertLogger_2583();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      buf[0] = 138543362;
      *&buf[1] = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_2583();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        v51 = [v49 callStackSymbols];
        v52 = [v51 componentsJoinedByString:@"\n"];
        buf[0] = 138543618;
        *&buf[1] = v48;
        v68 = 2114;
        v69 = v52;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      buf[0] = 138543362;
      *&buf[1] = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCMPhotoAuxiliaryImageProperties auxiliaryImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1099, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "error != NULL");
  }

  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if (!WeakRetained)
  {
    v32 = NUAssertLogger_2583();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decompression container is dead!"];
      buf[0] = 138543362;
      *&buf[1] = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_2583();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        v60 = [v58 callStackSymbols];
        v61 = [v60 componentsJoinedByString:@"\n"];
        buf[0] = 138543618;
        *&buf[1] = v57;
        v68 = 2114;
        v69 = v61;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      buf[0] = 138543362;
      *&buf[1] = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCMPhotoAuxiliaryImageProperties auxiliaryImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1102, @"Decompression container is dead!", v62, v63, v64, v65, v66);
  }

  v11 = WeakRetained;
  AuxiliaryImageCountForIndexWithOptions = CMPhotoDecompressionContainerGetAuxiliaryImageCountForIndexWithOptions();
  if (AuxiliaryImageCountForIndexWithOptions)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:AuxiliaryImageCountForIndexWithOptions];
    *a5 = [NUError failureError:@"Failed to get number of auxiliary images" object:v13];
  }

  else
  {
    type = self->_type;
    if (type > 0xB)
    {
      v16 = @"Invalid";
    }

    else
    {
      v16 = off_1E8109908[type];
    }

    v17 = v16;
    *a5 = [NUError failureError:@"Missing auxiliary image" object:v17];
  }

  return 0;
}

- (id)auxiliaryImage:(id *)a3
{
  v5 = 1;
  v3 = [(NUCMPhotoAuxiliaryImageProperties *)self auxiliaryImageWithSourceOptions:MEMORY[0x1E695E0F8] subsampleFactor:&v5 error:a3];

  return v3;
}

- (CGImageMetadata)auxiliaryDataInfoMetadata
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
  }

  v2 = _NURenderLogger;
  if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1C0184000, v2, OS_LOG_TYPE_ERROR, "auxiliaryDataInfoMetadata is unavailable", v4, 2u);
  }

  return 0;
}

- (id)auxiliaryCoreGraphicsInfoDictionary:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = NUAssertLogger_2583();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v22 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_2583();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v12;
        v23 = 2114;
        v24 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCMPhotoAuxiliaryImageProperties auxiliaryCoreGraphicsInfoDictionary:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1073, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "error != NULL");
  }

  *a3 = [NUError unsupportedError:@"Dictionary representation for this auxiliary image is not supported" object:self];
  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NUCMPhotoAuxiliaryImageProperties allocWithZone:a3];
  v4->_type = self->_type;
  v4->_size = self->_size;
  objc_storeStrong(&v4->_pixelFormat, self->_pixelFormat);
  objc_storeStrong(&v4->_auxImage, self->_auxImage);
  WeakRetained = objc_loadWeakRetained(&self->_container);
  objc_storeWeak(&v4->_container, WeakRetained);

  objc_storeStrong(&v4->_auxiliaryImageTypeCGIdentifier, self->_auxiliaryImageTypeCGIdentifier);
  return v4;
}

- (NUCMPhotoAuxiliaryImageProperties)initWithProperties:(id)a3 decompressionContainer:(CMPhotoDecompressionContainer *)a4
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v23 = NUAssertLogger_2583();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "properties"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_2583();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v39;
        v77 = 2114;
        v78 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCMPhotoAuxiliaryImageProperties initWithProperties:decompressionContainer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1015, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "properties");
  }

  if (!a4)
  {
    v30 = NUAssertLogger_2583();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "decompressionContainer"];
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_2583();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        v51 = [v49 callStackSymbols];
        v52 = [v51 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v48;
        v77 = 2114;
        v78 = v52;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCMPhotoAuxiliaryImageProperties initWithProperties:decompressionContainer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1016, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "decompressionContainer");
  }

  v7 = v6;
  v75.receiver = self;
  v75.super_class = NUCMPhotoAuxiliaryImageProperties;
  v8 = [(NUCMPhotoAuxiliaryImageProperties *)&v75 init];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696D418]];
  auxiliaryImageTypeCGIdentifier = v8->_auxiliaryImageTypeCGIdentifier;
  v8->_auxiliaryImageTypeCGIdentifier = v9;

  v11 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DFB8]];
  v12 = [v11 integerValue];

  v13 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DD58]];
  v14 = [v13 integerValue];

  if ((v14 | v12) < 0)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    [v37 handleFailureInFunction:v38 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
  }

  v8->_size.width = v12;
  v8->_size.height = v14;
  v15 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DEC0]];
  v16 = [v15 unsignedIntValue];

  if (v16)
  {
    v17 = [NUPixelFormat pixelFormatForCVPixelFormat:v16];
    pixelFormat = v8->_pixelFormat;
    v8->_pixelFormat = v17;
  }

  objc_storeWeak(&v8->_container, a4);
  if ([(NSString *)v8->_auxiliaryImageTypeCGIdentifier isEqualToString:@"tag:apple.com, 2023:photo:aux:linearthumbnail"])
  {
    v8->_type = 10;
    objc_storeStrong(&v8->_auxiliaryImageURN, v8->_auxiliaryImageTypeCGIdentifier);
  }

  else if ([(NSString *)v8->_auxiliaryImageTypeCGIdentifier isEqualToString:@"tag:apple.com, 2023:photo:aux:styledeltamap"])
  {
    v8->_type = 11;
    objc_storeStrong(&v8->_auxiliaryImageURN, v8->_auxiliaryImageTypeCGIdentifier);
    *buf = 0;
    if (!CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions())
    {
      v19 = *buf;
      if ((*buf & 0x8000000000000000) != 0)
      {
        v57 = [MEMORY[0x1E696AAA8] currentHandler];
        v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
        [v57 handleFailureInFunction:v58 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
      }

      v8->_size.width = v19;
      v8->_size.height = 0;
    }
  }

  else
  {
    if ([(NSString *)v8->_auxiliaryImageTypeCGIdentifier isEqualToString:*MEMORY[0x1E696D288]])
    {
      v8->_type = 3;
      auxiliaryImageURN = v8->_auxiliaryImageURN;
      v21 = @"urn:com:apple:photo:2018:aux:portraiteffectsmatte";
    }

    else if ([(NSString *)v8->_auxiliaryImageTypeCGIdentifier isEqualToString:*MEMORY[0x1E696D2A0]])
    {
      v8->_type = 4;
      auxiliaryImageURN = v8->_auxiliaryImageURN;
      v21 = @"urn:com:apple:photo:2019:aux:semanticskinmatte";
    }

    else
    {
      if (![(NSString *)v8->_auxiliaryImageTypeCGIdentifier isEqualToString:*MEMORY[0x1E696D2A8]])
      {
        v59 = NUAssertLogger_2583();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid aux image type: %@", v8->_auxiliaryImageTypeCGIdentifier];
          *buf = 138543362;
          *&buf[4] = v60;
          _os_log_error_impl(&dword_1C0184000, v59, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v62 = NUAssertLogger_2583();
        v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
        if (v61)
        {
          if (v63)
          {
            v66 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v67 = MEMORY[0x1E696AF00];
            v68 = v66;
            v69 = [v67 callStackSymbols];
            v70 = [v69 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            *&buf[4] = v66;
            v77 = 2114;
            v78 = v70;
            _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v63)
        {
          v64 = [MEMORY[0x1E696AF00] callStackSymbols];
          v65 = [v64 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          *&buf[4] = v65;
          _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUCMPhotoAuxiliaryImageProperties initWithProperties:decompressionContainer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1053, @"Invalid aux image type: %@", v71, v72, v73, v74, v8->_auxiliaryImageTypeCGIdentifier);
      }

      v8->_type = 9;
      auxiliaryImageURN = v8->_auxiliaryImageURN;
      v21 = @"urn:com:apple:photo:2020:aux:semanticskymatte";
    }

    v8->_auxiliaryImageURN = &v21->isa;
  }

  return v8;
}

- (NUCMPhotoAuxiliaryImageProperties)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_2609);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_2609);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_2609);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUCMPhotoAuxiliaryImageProperties init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1011, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end