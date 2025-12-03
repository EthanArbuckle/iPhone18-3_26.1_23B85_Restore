@interface NUCGAuxiliaryImageProperties
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (CGImageMetadata)auxiliaryDataInfoMetadata;
- (NSString)description;
- (NUCGAuxiliaryImageProperties)initWithCGProperties:(id)properties imageSource:(CGImageSource *)source;
- (NUColorSpace)colorSpace;
- (id)auxiliaryCoreGraphicsInfoDictionary:(id *)dictionary;
- (id)auxiliaryImage:(id *)image;
- (id)auxiliaryImagePropertiesByUpdatingMetadata:(CGImageMetadata *)metadata;
- (id)auxiliaryImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)auxiliaryImagePropertiesByUpdatingMetadata:(CGImageMetadata *)metadata
{
  v4 = [(NUCGAuxiliaryImageProperties *)self copy];
  [v4 setAuxDataInfoMetadata:metadata];
  v10 = 0;
  v5 = [v4 auxiliaryCoreGraphicsInfoDictionary:&v10];
  auxCGInfoDictionary = [v4 auxCGInfoDictionary];
  v7 = [auxCGInfoDictionary mutableCopy];

  [v7 setObject:metadata forKeyedSubscript:*MEMORY[0x1E696D228]];
  v8 = [v7 copy];
  [v4 setAuxCGInfoDictionary:v8];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  auxiliaryImageTypeCGIdentifier = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
  v5 = [(NUCGAuxiliaryImageProperties *)self size];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", v5, v6];
  v8 = [v3 stringWithFormat:@"<NUCGAuxiliaryImageProperties:%p> type=%@ size=%@", self, auxiliaryImageTypeCGIdentifier, v7];

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

- (id)auxiliaryImage:(id *)image
{
  v36 = *MEMORY[0x1E69E9840];
  if (!image)
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
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGAuxiliaryImageProperties auxiliaryImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1389, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "error != NULL");
  }

  auxImage = [(NUCGAuxiliaryImageProperties *)self auxImage];
  if (auxImage)
  {
    v6 = auxImage;
    goto LABEL_13;
  }

  v7 = [(NUCGAuxiliaryImageProperties *)self auxiliaryCoreGraphicsInfoDictionary:image];
  if (v7)
  {
    auxiliaryImageTypeCGIdentifier = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
    v9 = [NUAuxiliaryImageFactory auxiliaryImageFromCoreGraphicsInfoDictionary:v7 forCGAuxiliaryImageTypeString:auxiliaryImageTypeCGIdentifier error:image];

    if (v9)
    {
      [(NUCGAuxiliaryImageProperties *)self setAuxCGInfoDictionary:0];
      [(NUCGAuxiliaryImageProperties *)self setAuxImage:v9];
      if ([v9 auxiliaryImageType] == 2)
      {
        auxImage2 = [(NUCGAuxiliaryImageProperties *)self auxImage];
        underlyingAVDepthData = [auxImage2 underlyingAVDepthData];
        cameraCalibrationData = [underlyingAVDepthData cameraCalibrationData];
        [(NUCGAuxiliaryImageProperties *)self setDepthCamCalibrationData:cameraCalibrationData];
      }

      v6 = v9;
      goto LABEL_12;
    }

    v13 = *image;
    v14 = @"Cannot create auxiliaryImage. NUAuxiliaryImageFactory failed.";
  }

  else
  {
    v13 = *image;
    v14 = @"Cannot create auxiliaryImage. Missing dictionary.";
  }

  [NUError errorWithCode:7 reason:v14 object:self underlyingError:v13];
  *image = v6 = 0;
LABEL_12:

LABEL_13:

  return v6;
}

- (id)auxiliaryImageWithSourceOptions:(id)options subsampleFactor:(int64_t *)factor error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!factor)
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
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGAuxiliaryImageProperties auxiliaryImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1381, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "subsampleFactor != NULL");
  }

  v9 = optionsCopy;
  *factor = 1;
  v10 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImage:error];

  return v10;
}

- (id)auxiliaryCoreGraphicsInfoDictionary:(id *)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  if (!dictionary)
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
        callStackSymbols = [v34 callStackSymbols];
        v37 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v33;
        v46 = 2114;
        v47 = v37;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCGAuxiliaryImageProperties auxiliaryCoreGraphicsInfoDictionary:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+CGImage.m", 1323, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  WeakRetained = objc_loadWeakRetained(&self->_imageSource);

  auxCGInfoDictionary = [(NUCGAuxiliaryImageProperties *)self auxCGInfoDictionary];
  if (!auxCGInfoDictionary)
  {
    auxImage = [(NUCGAuxiliaryImageProperties *)self auxImage];

    if (auxImage)
    {
      auxImage2 = [(NUCGAuxiliaryImageProperties *)self auxImage];
      dictionaryRepresentation = [(__CFString *)auxImage2 dictionaryRepresentation];
LABEL_15:
      auxCGInfoDictionary = dictionaryRepresentation;

      if (auxCGInfoDictionary)
      {
        auxiliaryImageTypeCGIdentifier = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
        if ([auxiliaryImageTypeCGIdentifier isEqualToString:*MEMORY[0x1E696D280]])
        {
          compatibilityMetadata = [(NUCGAuxiliaryImageProperties *)self compatibilityMetadata];

          if (!compatibilityMetadata)
          {
LABEL_20:
            [(NUCGAuxiliaryImageProperties *)self setAuxImage:0];
            [(NUCGAuxiliaryImageProperties *)self setAuxCGInfoDictionary:auxCGInfoDictionary];
            if (!self->_auxDataInfoMetadata)
            {
              auxCGInfoDictionary2 = [(NUCGAuxiliaryImageProperties *)self auxCGInfoDictionary];
              v20 = [auxCGInfoDictionary2 objectForKeyedSubscript:*MEMORY[0x1E696D228]];
              auxDataInfoMetadata = self->_auxDataInfoMetadata;
              self->_auxDataInfoMetadata = v20;
            }

            auxInfoColorSpace = [(NUCGAuxiliaryImageProperties *)self auxInfoColorSpace];

            if (!auxInfoColorSpace)
            {
              v23 = [auxCGInfoDictionary objectForKeyedSubscript:*MEMORY[0x1E696D210]];

              if (v23)
              {
                v24 = [[NUColorSpace alloc] initWithCGColorSpace:v23];
                [(NUCGAuxiliaryImageProperties *)self setAuxInfoColorSpace:v24];
              }
            }

            goto LABEL_27;
          }

          auxiliaryImageTypeCGIdentifier = [auxCGInfoDictionary mutableCopy];
          compatibilityMetadata2 = [(NUCGAuxiliaryImageProperties *)self compatibilityMetadata];
          [auxiliaryImageTypeCGIdentifier setObject:compatibilityMetadata2 forKeyedSubscript:*MEMORY[0x1E696D230]];
          v18 = [auxiliaryImageTypeCGIdentifier copy];

          auxCGInfoDictionary = v18;
        }

        goto LABEL_20;
      }

      v11 = *dictionary;
LABEL_26:
      [NUError errorWithCode:1 reason:@"Unable to obtain auxiliary data" object:self underlyingError:v11];
      *dictionary = auxCGInfoDictionary = 0;
      goto LABEL_27;
    }

    if (!WeakRetained)
    {
      v11 = [NUError missingError:@"imageSource is nil" object:0];
      *dictionary = v11;
      goto LABEL_26;
    }

    auxiliaryImageTypeCGIdentifier2 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
    if ([auxiliaryImageTypeCGIdentifier2 isEqualToString:*MEMORY[0x1E696D280]])
    {
    }

    else
    {
      auxiliaryImageTypeCGIdentifier3 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
      v13 = [auxiliaryImageTypeCGIdentifier3 isEqualToString:*MEMORY[0x1E696D270]];

      if (!v13)
      {
LABEL_14:
        auxImage2 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
        dictionaryRepresentation = CGImageSourceCopyAuxiliaryDataInfoAtIndex(WeakRetained, 0, auxImage2);
        goto LABEL_15;
      }
    }

    if (ImageIOLibraryCore() && getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc())
    {
      auxImage2 = [(NUCGAuxiliaryImageProperties *)self auxiliaryImageTypeCGIdentifier];
      CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc = getCGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc();
      if (!CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFDictionaryRef soft_CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions(CGImageSourceRef, size_t, CFStringRef, CFDictionaryRef _Nullable)"}];
        [currentHandler handleFailureInFunction:v43 file:@"NURenderSourceNode+CGImage.m" lineNumber:40 description:{@"%s", dlerror()}];

        __break(1u);
      }

      dictionaryRepresentation = CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptionsSymbolLoc(WeakRetained, 0, auxImage2, &unk_1F3F82900);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_27:

  return auxCGInfoDictionary;
}

- (NUColorSpace)colorSpace
{
  v13 = *MEMORY[0x1E69E9840];
  auxInfoColorSpace = [(NUCGAuxiliaryImageProperties *)self auxInfoColorSpace];
  v4 = auxInfoColorSpace;
  if (auxInfoColorSpace)
  {
    auxInfoColorSpace2 = auxInfoColorSpace;
  }

  else
  {
    v10 = 0;
    v6 = [(NUCGAuxiliaryImageProperties *)self auxiliaryCoreGraphicsInfoDictionary:&v10];
    v7 = v10;
    if (v6)
    {
      auxInfoColorSpace2 = [(NUCGAuxiliaryImageProperties *)self auxInfoColorSpace];
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

      auxInfoColorSpace2 = 0;
    }
  }

  return auxInfoColorSpace2;
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

- (id)copyWithZone:(_NSZone *)zone
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

- (NUCGAuxiliaryImageProperties)initWithCGProperties:(id)properties imageSource:(CGImageSource *)source
{
  propertiesCopy = properties;
  v21.receiver = self;
  v21.super_class = NUCGAuxiliaryImageProperties;
  v7 = [(NUCGAuxiliaryImageProperties *)&v21 init];
  v8 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696D418]];
  auxiliaryImageTypeCGIdentifier = v7->_auxiliaryImageTypeCGIdentifier;
  v7->_auxiliaryImageTypeCGIdentifier = v8;

  v10 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696DFB8]];
  integerValue = [v10 integerValue];

  v12 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696DD58]];
  integerValue2 = [v12 integerValue];

  if ((integerValue2 | integerValue) < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    [currentHandler handleFailureInFunction:v20 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
  }

  v7->_size.width = integerValue;
  v7->_size.height = integerValue2;
  v14 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696DEC0]];
  unsignedIntValue = [v14 unsignedIntValue];

  if (unsignedIntValue)
  {
    v16 = [NUPixelFormat pixelFormatForCVPixelFormat:unsignedIntValue];
    pixelFormat = v7->_pixelFormat;
    v7->_pixelFormat = v16;
  }

  objc_storeWeak(&v7->_imageSource, source);

  return v7;
}

@end