@interface NUCGAuxiliaryImageProperties
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (CGImageMetadata)auxiliaryDataInfoMetadata;
- (NSString)description;
- (NUCGAuxiliaryImageProperties)initWithCGProperties:(id)a3 imageSource:(CGImageSource *)a4;
- (NUColorSpace)colorSpace;
- (id)auxiliaryCoreGraphicsInfoDictionary:(id *)a3;
- (id)auxiliaryImage:(id *)a3;
- (id)auxiliaryImagePropertiesByUpdatingMetadata:(CGImageMetadata *)a3;
- (id)auxiliaryImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)depthCameraCalibrationData;
- (void)dealloc;
@end

@implementation NUCGAuxiliaryImageProperties

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  height = self->_size.height;
  width = self->_size.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (id)auxiliaryImagePropertiesByUpdatingMetadata:(CGImageMetadata *)a3
{
  v4 = [(NUCGAuxiliaryImageProperties *)self copy];
  [v4 setAuxDataInfoMetadata:a3];
  v10 = 0;
  v5 = [v4 auxiliaryCoreGraphicsInfoDictionary:&v10];
  v6 = [v4 auxCGInfoDictionary];
  v7 = [v6 mutableCopy];

  [v7 setObject:a3 forKeyedSubscript:*MEMORY[0x1E696D228]];
  v8 = [v7 copy];
  [v4 setAuxCGInfoDictionary:v8];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
  v5 = [(NUCGAuxiliaryImageProperties *)self size];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", v5, v6];
  v8 = [v3 stringWithFormat:@"<NUCGAuxiliaryImageProperties:%p> type=%@ size=%@", self, v4, v7];

  return v8;
}

- (id)depthCameraCalibrationData
{
  v12 = *MEMORY[0x1E69E9840];
  depthCamCalibrationData = self->_depthCamCalibrationData;
  if (depthCamCalibrationData)
  {
    v3 = depthCamCalibrationData;
  }

  else
  {
    v9 = 0;
    v5 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImage:&v9];
    v6 = v9;
    if (v5)
    {
      v3 = self->_depthCamCalibrationData;
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
      }

      v7 = _NURenderLogger;
      if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "failed to get cameraCalibrationData. error: %@", buf, 0xCu);
      }

      v3 = 0;
    }
  }

  return v3;
}

- (id)auxiliaryImage:(id *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v16 = NUAssertLogger_2583();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
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

    _NUAssertFailHandler("[NUCGAuxiliaryImageProperties auxiliaryImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1389, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "error != NULL");
  }

  v5 = [(NUCGAuxiliaryImageProperties *)self auxImage];
  if (v5)
  {
    v6 = v5;
    goto LABEL_13;
  }

  v7 = [(NUCGAuxiliaryImageProperties *)self auxiliaryCoreGraphicsInfoDictionary:a3];
  if (v7)
  {
    v8 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
    v9 = [NUAuxiliaryImageFactory auxiliaryImageFromCoreGraphicsInfoDictionary:v7 forCGAuxiliaryImageTypeString:v8 error:a3];

    if (v9)
    {
      [(NUCGAuxiliaryImageProperties *)self setAuxCGInfoDictionary:0];
      [(NUCGAuxiliaryImageProperties *)self setAuxImage:v9];
      if ([v9 auxiliaryImageType] == 2)
      {
        v10 = [(NUCGAuxiliaryImageProperties *)self auxImage];
        v11 = [v10 underlyingAVDepthData];
        v12 = [v11 cameraCalibrationData];
        [(NUCGAuxiliaryImageProperties *)self setDepthCamCalibrationData:v12];
      }

      v6 = v9;
      goto LABEL_12;
    }

    v13 = *a3;
    v14 = @"Cannot create auxiliaryImage. NUAuxiliaryImageFactory failed.";
  }

  else
  {
    v13 = *a3;
    v14 = @"Cannot create auxiliaryImage. Missing dictionary.";
  }

  [NUError errorWithCode:7 reason:v14 object:self underlyingError:v13];
  *a3 = v6 = 0;
LABEL_12:

LABEL_13:

  return v6;
}

- (id)auxiliaryImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a4)
  {
    v12 = NUAssertLogger_2583();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor != NULL"];
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

    _NUAssertFailHandler("[NUCGAuxiliaryImageProperties auxiliaryImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1381, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "subsampleFactor != NULL");
  }

  v9 = v8;
  *a4 = 1;
  v10 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImage:a5];

  return v10;
}

- (id)auxiliaryCoreGraphicsInfoDictionary:(id *)a3
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v26 = NUAssertLogger_2583();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_2583();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v33;
        v46 = 2114;
        v47 = v37;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGAuxiliaryImageProperties auxiliaryCoreGraphicsInfoDictionary:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1323, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  WeakRetained = objc_loadWeakRetained(&self->_imageSource);

  v6 = [(NUCGAuxiliaryImageProperties *)self auxCGInfoDictionary];
  if (!v6)
  {
    v7 = [(NUCGAuxiliaryImageProperties *)self auxImage];

    if (v7)
    {
      v8 = [(NUCGAuxiliaryImageProperties *)self auxImage];
      v9 = [(__CFString *)v8 dictionaryRepresentation];
LABEL_15:
      v6 = v9;

      if (v6)
      {
        v15 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
        if ([v15 isEqualToString:*MEMORY[0x1E696D280]])
        {
          v16 = [(NUCGAuxiliaryImageProperties *)self compatibilityMetadata];

          if (!v16)
          {
LABEL_20:
            [(NUCGAuxiliaryImageProperties *)self setAuxImage:0];
            [(NUCGAuxiliaryImageProperties *)self setAuxCGInfoDictionary:v6];
            if (!self->_auxDataInfoMetadata)
            {
              v19 = [(NUCGAuxiliaryImageProperties *)self auxCGInfoDictionary];
              v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E696D228]];
              auxDataInfoMetadata = self->_auxDataInfoMetadata;
              self->_auxDataInfoMetadata = v20;
            }

            v22 = [(NUCGAuxiliaryImageProperties *)self auxInfoColorSpace];

            if (!v22)
            {
              v23 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696D210]];

              if (v23)
              {
                v24 = [[NUColorSpace alloc] initWithCGColorSpace:v23];
                [(NUCGAuxiliaryImageProperties *)self setAuxInfoColorSpace:v24];
              }
            }

            goto LABEL_27;
          }

          v15 = [v6 mutableCopy];
          v17 = [(NUCGAuxiliaryImageProperties *)self compatibilityMetadata];
          [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x1E696D230]];
          v18 = [v15 copy];

          v6 = v18;
        }

        goto LABEL_20;
      }

      v11 = *a3;
LABEL_26:
      [NUError errorWithCode:1 reason:@"Unable to obtain auxiliary data" object:self underlyingError:v11];
      *a3 = v6 = 0;
      goto LABEL_27;
    }

    if (!WeakRetained)
    {
      v11 = [NUError missingError:@"imageSource is nil" object:0];
      *a3 = v11;
      goto LABEL_26;
    }

    v10 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
    if ([v10 isEqualToString:*MEMORY[0x1E696D280]])
    {
    }

    else
    {
      v12 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
      v13 = [v12 isEqualToString:*MEMORY[0x1E696D270]];

      if (!v13)
      {
LABEL_14:
        v8 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
        v9 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(WeakRetained, 0, v8);
        goto LABEL_15;
      }
    }

    if (ImageIOLibraryCore() && getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc())
    {
      v8 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
      CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc = getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc();
      if (!CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc)
      {
        v42 = [MEMORY[0x1E696AAA8] currentHandler];
        v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFDictionaryRef soft_CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions(CGImageSourceRef, size_t, CFStringRef, CFDictionaryRef _Nullable)"}];
        [v42 handleFailureInFunction:v43 file:@"NURenderSourceNode+CGImage.m" lineNumber:40 description:{@"%s", dlerror()}];

        __break(1u);
      }

      v9 = CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc(WeakRetained, 0, v8, &unk_1F3F82900);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_27:

  return v6;
}

- (NUColorSpace)colorSpace
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(NUCGAuxiliaryImageProperties *)self auxInfoColorSpace];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v10 = 0;
    v6 = [(NUCGAuxiliaryImageProperties *)self auxiliaryCoreGraphicsInfoDictionary:&v10];
    v7 = v10;
    if (v6)
    {
      v5 = [(NUCGAuxiliaryImageProperties *)self auxInfoColorSpace];
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
      }

      v8 = _NURenderLogger;
      if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "failed to get auxiliaryDataInfoMetadata. error: %@", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (CGImageMetadata)auxiliaryDataInfoMetadata
{
  v11 = *MEMORY[0x1E69E9840];
  auxDataInfoMetadata = self->_auxDataInfoMetadata;
  if (!auxDataInfoMetadata)
  {
    v8 = 0;
    v4 = [(NUCGAuxiliaryImageProperties *)self auxiliaryCoreGraphicsInfoDictionary:&v8];
    v5 = v8;
    if (v4)
    {
      auxDataInfoMetadata = self->_auxDataInfoMetadata;
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_495);
      }

      v6 = _NURenderLogger;
      if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "failed to get auxiliaryDataInfoMetadata. error: %@", buf, 0xCu);
      }

      auxDataInfoMetadata = 0;
    }
  }

  return auxDataInfoMetadata;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NUCGAuxiliaryImageProperties alloc];
  objc_storeStrong(&v4->_auxCGInfoDictionary, self->_auxCGInfoDictionary);
  objc_storeStrong(&v4->_auxDataInfoMetadata, self->_auxDataInfoMetadata);
  [(NUCGAuxiliaryImageProperties *)v4 setCompatibilityMetadata:[(NUCGAuxiliaryImageProperties *)self compatibilityMetadata]];
  objc_storeStrong(&v4->_auxImage, self->_auxImage);
  objc_storeStrong(&v4->_auxiliaryImageTypeCGIdentifier, self->_auxiliaryImageTypeCGIdentifier);
  objc_storeStrong(&v4->_depthCamCalibrationData, self->_depthCamCalibrationData);
  WeakRetained = objc_loadWeakRetained(&self->_imageSource);
  objc_storeWeak(&v4->_imageSource, WeakRetained);

  v4->_size = self->_size;
  objc_storeStrong(&v4->_pixelFormat, self->_pixelFormat);
  return v4;
}

- (void)dealloc
{
  [(NUCGAuxiliaryImageProperties *)self setCompatibilityMetadata:0];
  v3.receiver = self;
  v3.super_class = NUCGAuxiliaryImageProperties;
  [(NUCGAuxiliaryImageProperties *)&v3 dealloc];
}

- (NUCGAuxiliaryImageProperties)initWithCGProperties:(id)a3 imageSource:(CGImageSource *)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = NUCGAuxiliaryImageProperties;
  v7 = [(NUCGAuxiliaryImageProperties *)&v21 init];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696D418]];
  auxiliaryImageTypeCGIdentifier = v7->_auxiliaryImageTypeCGIdentifier;
  v7->_auxiliaryImageTypeCGIdentifier = v8;

  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696DFB8]];
  v11 = [v10 integerValue];

  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696DD58]];
  v13 = [v12 integerValue];

  if ((v13 | v11) < 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    [v19 handleFailureInFunction:v20 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
  }

  v7->_size.width = v11;
  v7->_size.height = v13;
  v14 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696DEC0]];
  v15 = [v14 unsignedIntValue];

  if (v15)
  {
    v16 = [NUPixelFormat pixelFormatForCVPixelFormat:v15];
    pixelFormat = v7->_pixelFormat;
    v7->_pixelFormat = v16;
  }

  objc_storeWeak(&v7->_imageSource, a4);

  return v7;
}

@end