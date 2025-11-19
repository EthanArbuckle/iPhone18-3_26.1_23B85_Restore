@interface PAMediaConversionServiceImageConversionJob
- (BOOL)_validateMetadata;
- (BOOL)_validateOrientation;
- (BOOL)_validateOutputSize;
- (BOOL)_validateSource;
- (BOOL)hasLivePhotoSourceURLs;
- (BOOL)hasPhotosAdjustments;
- (BOOL)isRAWSourceUTI;
- (BOOL)sourceRequiresRasterization;
- (BOOL)valid;
- (BOOL)validateSourceAndOptions;
- (CGImage)sourceImageRef;
- (CGSize)outputImageSize;
- (CGSize)sourceImageSize;
- (NSData)photosAdjustmentData;
- (NSDictionary)sourceImageProperties;
- (NSMutableDictionary)destinationImageProperties;
- (NSString)photosAdjustmentFormatIdentifier;
- (NSString)photosAdjustmentFormatVersion;
- (NSString)sourceUTI;
- (NSURL)mainSourceResourceURL;
- (PAMediaConversionServiceImageConversionJob)initWithRequestIdentifier:(id)a3 sourceResourceURLCollection:(id)a4 outputFileType:(id)a5;
- (int64_t)requestedOrCalculatedMaximumLongSideLength;
- (int64_t)sourceOrientation;
- (unint64_t)orientationTransformBehavior;
- (void)_validate;
- (void)dealloc;
@end

@implementation PAMediaConversionServiceImageConversionJob

- (CGSize)outputImageSize
{
  objc_copyStruct(v4, &self->_outputImageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)dealloc
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
  }

  imageDestination = self->_imageDestination;
  if (imageDestination)
  {
    CFRelease(imageDestination);
  }

  sourceImageRef = self->_sourceImageRef;
  if (sourceImageRef)
  {
    CGImageRelease(sourceImageRef);
  }

  v6.receiver = self;
  v6.super_class = PAMediaConversionServiceImageConversionJob;
  [(PAMediaConversionServiceImageConversionJob *)&v6 dealloc];
}

- (CGSize)sourceImageSize
{
  if ([(PAMediaConversionServiceImageConversionJob *)self canAccessSourceImageProperties])
  {
    v3 = [(PAMediaConversionServiceImageConversionJob *)self sourceImageProperties];
    [PFMediaUtilities maximumImageSizeFromProperties:v3];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    Height = v7;
  }

  else
  {
    v10 = [(PAMediaConversionServiceImageConversionJob *)self sourceImageRef];
    Width = CGImageGetWidth(v10);
    Height = CGImageGetHeight(v10);
    v8 = Width;
  }

  result.height = Height;
  result.width = v8;
  return result;
}

- (int64_t)sourceOrientation
{
  if (![(PAMediaConversionServiceImageConversionJob *)self canAccessSourceImageProperties])
  {
    return 1;
  }

  v3 = [(PAMediaConversionServiceImageConversionJob *)self sourceImageProperties];
  v4 = [v3 objectForKeyedSubscript:kCGImagePropertyOrientation];

  if (!v4)
  {
    return 1;
  }

  v5 = [v4 integerValue];

  return v5;
}

- (BOOL)isRAWSourceUTI
{
  v2 = [(PAMediaConversionServiceImageConversionJob *)self sourceUTI];
  v3 = [PFUniformTypeUtilities typeWithIdentifier:v2];
  v4 = [v3 conformsToType:UTTypeRAWImage];

  return v4;
}

- (NSString)sourceUTI
{
  v2 = [(PAMediaConversionServiceImageConversionJob *)self sourceResourceURLCollection];
  v3 = [v2 typeIdentifierForResourceURLWithRole:@"PAMediaConversionResourceRoleMainResource"];

  return v3;
}

- (BOOL)sourceRequiresRasterization
{
  v2 = [(PAMediaConversionServiceImageConversionJob *)self sourceUTI];
  v3 = [PFUniformTypeUtilities typeWithIdentifier:v2];
  v4 = [PFMediaUtilities typeRequiresRasterization:v3];

  return v4;
}

- (NSDictionary)sourceImageProperties
{
  sourceImageProperties = self->_sourceImageProperties;
  if (sourceImageProperties)
  {
LABEL_2:
    v3 = sourceImageProperties;
    goto LABEL_3;
  }

  if ([(PAMediaConversionServiceImageConversionJob *)self canAccessSourceImageProperties])
  {
    v6 = [(PAMediaConversionServiceImageConversionJob *)self sourceResourceURLCollection];
    v7 = [v6 isBlastDoorAccessRequired];

    if (v7)
    {
      v8 = [(PAMediaConversionServiceImageConversionJob *)self sourceResourceURLCollection];
      v9 = [v8 blastDoorMainSourceProperties];
      v10 = self->_sourceImageProperties;
      self->_sourceImageProperties = v9;
    }

    else
    {
      v11 = [PFMediaUtilities imagePropertiesFromImageSource:self->_imageSource];
      v8 = self->_sourceImageProperties;
      self->_sourceImageProperties = v11;
    }

    sourceImageProperties = self->_sourceImageProperties;
    if (!sourceImageProperties)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v13 = [(PAMediaConversionServiceImageConversionJob *)self mainSourceResourceURL];
        v14 = 138412290;
        v15 = v13;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to get source image properties for %@", &v14, 0xCu);

        sourceImageProperties = self->_sourceImageProperties;
      }

      else
      {
        sourceImageProperties = 0;
      }
    }

    goto LABEL_2;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v12 = [(PAMediaConversionServiceImageConversionJob *)self mainSourceResourceURL];
    v14 = 138412290;
    v15 = v12;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to get source image properties for input image: %@", &v14, 0xCu);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

- (NSMutableDictionary)destinationImageProperties
{
  if (![(PAMediaConversionServiceImageConversionJob *)self valid])
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1186 description:@"Invalid job"];
  }

  destinationImageProperties = self->_destinationImageProperties;

  return destinationImageProperties;
}

- (CGImage)sourceImageRef
{
  result = self->_sourceImageRef;
  if (!result)
  {
    result = CGImageSourceCreateImageAtIndex(self->_imageSource, 0, 0);
    self->_sourceImageRef = result;
    if (!result)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v4 = [(PAMediaConversionServiceImageConversionJob *)self mainSourceResourceURL];
        v5 = [v4 path];
        v6 = 138412290;
        v7 = v5;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create image ref from %@", &v6, 0xCu);

        return self->_sourceImageRef;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (NSURL)mainSourceResourceURL
{
  v4 = [(PAMediaConversionServiceResourceURLCollection *)self->_sourceResourceURLCollection resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];
  if ([(PAMediaConversionServiceResourceURLCollection *)self->_sourceResourceURLCollection isBlastDoorAccessRequired])
  {
    if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Unexpected nil main resource URL for blastDoorAccess", v7, 2u);
    }
  }

  else if (!v4)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1156 description:@"Unexpected nil main resource URL"];
  }

  return v4;
}

- (unint64_t)orientationTransformBehavior
{
  if (![(PAMediaConversionServiceImageConversionJob *)self valid])
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1144 description:@"Invalid job"];
  }

  return self->_orientationTransformBehavior;
}

- (NSString)photosAdjustmentFormatVersion
{
  v2 = [(PAMediaConversionServiceImageConversionJob *)self adjustmentInformation];
  v3 = [v2 objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatVersionKey"];

  return v3;
}

- (NSString)photosAdjustmentFormatIdentifier
{
  v2 = [(PAMediaConversionServiceImageConversionJob *)self adjustmentInformation];
  v3 = [v2 objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatIdentifierKey"];

  return v3;
}

- (NSData)photosAdjustmentData
{
  v2 = [(PAMediaConversionServiceImageConversionJob *)self adjustmentInformation];
  v3 = [v2 objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentDataKey"];

  return v3;
}

- (BOOL)hasLivePhotoSourceURLs
{
  v2 = [(PAMediaConversionServiceImageConversionJob *)self sourceResourceURLCollection];
  v6[0] = @"PAMediaConversionResourceRoleMainResource";
  v6[1] = @"PAMediaConversionResourceRoleVideoComplement";
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [v2 containsAllRoles:v3];

  return v4;
}

- (BOOL)hasPhotosAdjustments
{
  v2 = [(PAMediaConversionServiceImageConversionJob *)self photosAdjustmentData];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)valid
{
  validationState = self->_validationState;
  if (!validationState)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:1113 description:@"Call validateSourceAndOptions on job before calling valid"];

    validationState = self->_validationState;
  }

  return validationState == 2;
}

- (int64_t)requestedOrCalculatedMaximumLongSideLength
{
  if ([(PAMediaConversionServiceImageConversionJob *)self requestedMaximumLongSideLength])
  {

    return [(PAMediaConversionServiceImageConversionJob *)self requestedMaximumLongSideLength];
  }

  else
  {
    [(PAMediaConversionServiceImageConversionJob *)self sourceImageSize];
    v5 = v4;
    v7 = v6;
    [(PAMediaConversionServiceImageConversionJob *)self scaleFactor];
    if (v5 >= v7)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    v10 = llround(v8 * v9);
    return v10 - ((v10 > 1) & v10);
  }
}

- (BOOL)_validateOutputSize
{
  [(PAMediaConversionServiceImageConversionJob *)self sourceImageSize];
  v5 = v4 != 0.0 && v3 != 0.0;
  if (v5)
  {
    v6 = v3;
    v7 = v4;
    if ([(PAMediaConversionServiceImageConversionJob *)self requestedMaximumPixelCount])
    {
      [(PAMediaConversionServiceImageConversionJob *)self requestedMaximumPixelCount];
      PFScaleFactorForMaximumPixelCount();
    }

    else
    {
      if (![(PAMediaConversionServiceImageConversionJob *)self requestedMaximumLongSideLength])
      {
LABEL_15:
        [(PAMediaConversionServiceImageConversionJob *)self scaleFactor];
        if (v11 > 1.0)
        {
          v11 = 1.0;
        }

        [(PAMediaConversionServiceImageConversionJob *)self setScaleFactor:v11];
        return v5;
      }

      v9 = [(PAMediaConversionServiceImageConversionJob *)self requestedMaximumLongSideLength];
      if (v6 >= v7)
      {
        v10 = v6;
      }

      else
      {
        v10 = v7;
      }

      v8 = v9 / v10;
    }

    [(PAMediaConversionServiceImageConversionJob *)self setScaleFactor:v8];
    goto LABEL_15;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to determine input image size", v13, 2u);
  }

  return v5;
}

- (BOOL)_validateOrientation
{
  v3 = [(PAMediaConversionServiceImageConversionJob *)self sourceOrientation];
  if ([(PAMediaConversionServiceImageConversionJob *)self applySourceOrientationTransform])
  {
    [(PAMediaConversionServiceImageConversionJob *)self setOrientation:v3];
  }

  v4 = [(PAMediaConversionServiceImageConversionJob *)self orientation];
  self->_orientationTransformBehavior = 0;
  if (IPAOrientationIsValid())
  {
    if (v4 == v3)
    {
      if (v3 == 1)
      {
LABEL_12:
        [(NSMutableDictionary *)self->_destinationImageProperties removeObjectForKey:kCGImagePropertyOrientation];
        goto LABEL_13;
      }

      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    self->_orientationTransformBehavior = v5;
    goto LABEL_12;
  }

  if (!v4)
  {
LABEL_13:
    LOBYTE(v6) = 1;
    return v6;
  }

  v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    v8 = 134217984;
    v9 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Invalid orientation request option %ld", &v8, 0xCu);
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_validateMetadata
{
  if ([(PAMediaConversionServiceImageConversionJob *)self canAccessSourceImageProperties])
  {
    v3 = [(PAMediaConversionServiceImageConversionJob *)self metadataPolicy];

    if (!v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No metadata policy provided, defaulting to standard policy", v13, 2u);
      }

      v4 = +[PFImageMetadataChangePolicy standardPolicy];
      [(PAMediaConversionServiceImageConversionJob *)self setMetadataPolicy:v4];
    }

    v5 = [(PAMediaConversionServiceImageConversionJob *)self metadataPolicy];
    v6 = [(PAMediaConversionServiceImageConversionJob *)self sourceImageProperties];
    v7 = [v5 processMetadata:v6];
    v8 = [v7 mutableCopy];
    destinationImageProperties = self->_destinationImageProperties;
    self->_destinationImageProperties = v8;
  }

  else
  {
    v10 = +[NSMutableDictionary dictionary];
    v11 = self->_destinationImageProperties;
    self->_destinationImageProperties = v10;
  }

  return 1;
}

- (BOOL)_validateSource
{
  v3 = [(PAMediaConversionServiceImageConversionJob *)self mainSourceResourceURL];
  v13 = kCGImageSourceShouldCache;
  v14 = &__kCFBooleanFalse;
  v4 = CGImageSourceCreateWithURL(v3, [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]);
  self->_imageSource = v4;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = [(__CFURL *)v3 path];
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create image source from %@", &v11, 0xCu);
    }

    goto LABEL_7;
  }

  v5 = +[NSMutableData data];
  imageDestinationData = self->_imageDestinationData;
  self->_imageDestinationData = v5;

  v7 = 1;
  v8 = CGImageDestinationCreateWithData(self->_imageDestinationData, self->_outputFileType, 1uLL, 0);
  self->_imageDestination = v8;
  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create output image destination", &v11, 2u);
    }

LABEL_7:
    v7 = 0;
  }

  return v7;
}

- (void)_validate
{
  v3 = os_signpost_id_make_with_pointer(&_os_log_default, self);
  v4 = &_os_log_default;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_BEGIN, v3, "com.apple.photos.mediaconversion.service.validate", "", buf, 2u);
  }

  if ([(PAMediaConversionServiceImageConversionJob *)self _validateSource]&& [(PAMediaConversionServiceImageConversionJob *)self _validateMetadata]&& [(PAMediaConversionServiceImageConversionJob *)self _validateOrientation])
  {
    v5 = [(PAMediaConversionServiceImageConversionJob *)self _validateOutputSize];
    v6 = 1;
    if (v5)
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  self->_validationState = v6;
  v7 = &_os_log_default;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&_os_log_default))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_END, v3, "com.apple.photos.mediaconversion.service.validate", "", v8, 2u);
  }
}

- (BOOL)validateSourceAndOptions
{
  if (!self->_validationState)
  {
    [(PAMediaConversionServiceImageConversionJob *)self _validate];
  }

  return [(PAMediaConversionServiceImageConversionJob *)self valid];
}

- (PAMediaConversionServiceImageConversionJob)initWithRequestIdentifier:(id)a3 sourceResourceURLCollection:(id)a4 outputFileType:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v11)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:981 description:{@"Invalid parameter not satisfying: %@", @"resourceURLCollection"}];
  }

  v17.receiver = self;
  v17.super_class = PAMediaConversionServiceImageConversionJob;
  v13 = [(PAMediaConversionServiceImageConversionJob *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_requestIdentifier, a3);
    objc_storeStrong(&v14->_sourceResourceURLCollection, a4);
    objc_storeStrong(&v14->_outputFileType, a5);
  }

  return v14;
}

@end