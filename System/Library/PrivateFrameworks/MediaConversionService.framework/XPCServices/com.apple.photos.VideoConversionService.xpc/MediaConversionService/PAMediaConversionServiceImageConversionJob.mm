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
- (PAMediaConversionServiceImageConversionJob)initWithRequestIdentifier:(id)identifier sourceResourceURLCollection:(id)collection outputFileType:(id)type;
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
    sourceImageProperties = [(PAMediaConversionServiceImageConversionJob *)self sourceImageProperties];
    [PFMediaUtilities maximumImageSizeFromProperties:sourceImageProperties];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    Height = v7;
  }

  else
  {
    sourceImageRef = [(PAMediaConversionServiceImageConversionJob *)self sourceImageRef];
    Width = CGImageGetWidth(sourceImageRef);
    Height = CGImageGetHeight(sourceImageRef);
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

  sourceImageProperties = [(PAMediaConversionServiceImageConversionJob *)self sourceImageProperties];
  v4 = [sourceImageProperties objectForKeyedSubscript:kCGImagePropertyOrientation];

  if (!v4)
  {
    return 1;
  }

  integerValue = [v4 integerValue];

  return integerValue;
}

- (BOOL)isRAWSourceUTI
{
  sourceUTI = [(PAMediaConversionServiceImageConversionJob *)self sourceUTI];
  v3 = [PFUniformTypeUtilities typeWithIdentifier:sourceUTI];
  v4 = [v3 conformsToType:UTTypeRAWImage];

  return v4;
}

- (NSString)sourceUTI
{
  sourceResourceURLCollection = [(PAMediaConversionServiceImageConversionJob *)self sourceResourceURLCollection];
  v3 = [sourceResourceURLCollection typeIdentifierForResourceURLWithRole:@"PAMediaConversionResourceRoleMainResource"];

  return v3;
}

- (BOOL)sourceRequiresRasterization
{
  sourceUTI = [(PAMediaConversionServiceImageConversionJob *)self sourceUTI];
  v3 = [PFUniformTypeUtilities typeWithIdentifier:sourceUTI];
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
    sourceResourceURLCollection = [(PAMediaConversionServiceImageConversionJob *)self sourceResourceURLCollection];
    isBlastDoorAccessRequired = [sourceResourceURLCollection isBlastDoorAccessRequired];

    if (isBlastDoorAccessRequired)
    {
      sourceResourceURLCollection2 = [(PAMediaConversionServiceImageConversionJob *)self sourceResourceURLCollection];
      blastDoorMainSourceProperties = [sourceResourceURLCollection2 blastDoorMainSourceProperties];
      v10 = self->_sourceImageProperties;
      self->_sourceImageProperties = blastDoorMainSourceProperties;
    }

    else
    {
      v11 = [PFMediaUtilities imagePropertiesFromImageSource:self->_imageSource];
      sourceResourceURLCollection2 = self->_sourceImageProperties;
      self->_sourceImageProperties = v11;
    }

    sourceImageProperties = self->_sourceImageProperties;
    if (!sourceImageProperties)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mainSourceResourceURL = [(PAMediaConversionServiceImageConversionJob *)self mainSourceResourceURL];
        v14 = 138412290;
        v15 = mainSourceResourceURL;
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
    mainSourceResourceURL2 = [(PAMediaConversionServiceImageConversionJob *)self mainSourceResourceURL];
    v14 = 138412290;
    v15 = mainSourceResourceURL2;
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
        mainSourceResourceURL = [(PAMediaConversionServiceImageConversionJob *)self mainSourceResourceURL];
        path = [mainSourceResourceURL path];
        v6 = 138412290;
        v7 = path;
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
  adjustmentInformation = [(PAMediaConversionServiceImageConversionJob *)self adjustmentInformation];
  v3 = [adjustmentInformation objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatVersionKey"];

  return v3;
}

- (NSString)photosAdjustmentFormatIdentifier
{
  adjustmentInformation = [(PAMediaConversionServiceImageConversionJob *)self adjustmentInformation];
  v3 = [adjustmentInformation objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentFormatIdentifierKey"];

  return v3;
}

- (NSData)photosAdjustmentData
{
  adjustmentInformation = [(PAMediaConversionServiceImageConversionJob *)self adjustmentInformation];
  v3 = [adjustmentInformation objectForKeyedSubscript:@"PAMediaConversionServiceAdjustmentDataKey"];

  return v3;
}

- (BOOL)hasLivePhotoSourceURLs
{
  sourceResourceURLCollection = [(PAMediaConversionServiceImageConversionJob *)self sourceResourceURLCollection];
  v6[0] = @"PAMediaConversionResourceRoleMainResource";
  v6[1] = @"PAMediaConversionResourceRoleVideoComplement";
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [sourceResourceURLCollection containsAllRoles:v3];

  return v4;
}

- (BOOL)hasPhotosAdjustments
{
  photosAdjustmentData = [(PAMediaConversionServiceImageConversionJob *)self photosAdjustmentData];
  v3 = photosAdjustmentData != 0;

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

      requestedMaximumLongSideLength = [(PAMediaConversionServiceImageConversionJob *)self requestedMaximumLongSideLength];
      if (v6 >= v7)
      {
        v10 = v6;
      }

      else
      {
        v10 = v7;
      }

      v8 = requestedMaximumLongSideLength / v10;
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
  sourceOrientation = [(PAMediaConversionServiceImageConversionJob *)self sourceOrientation];
  if ([(PAMediaConversionServiceImageConversionJob *)self applySourceOrientationTransform])
  {
    [(PAMediaConversionServiceImageConversionJob *)self setOrientation:sourceOrientation];
  }

  orientation = [(PAMediaConversionServiceImageConversionJob *)self orientation];
  self->_orientationTransformBehavior = 0;
  if (IPAOrientationIsValid())
  {
    if (orientation == sourceOrientation)
    {
      if (sourceOrientation == 1)
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

  if (!orientation)
  {
LABEL_13:
    LOBYTE(v6) = 1;
    return v6;
  }

  v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    v8 = 134217984;
    v9 = orientation;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Invalid orientation request option %ld", &v8, 0xCu);
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_validateMetadata
{
  if ([(PAMediaConversionServiceImageConversionJob *)self canAccessSourceImageProperties])
  {
    metadataPolicy = [(PAMediaConversionServiceImageConversionJob *)self metadataPolicy];

    if (!metadataPolicy)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No metadata policy provided, defaulting to standard policy", v13, 2u);
      }

      v4 = +[PFImageMetadataChangePolicy standardPolicy];
      [(PAMediaConversionServiceImageConversionJob *)self setMetadataPolicy:v4];
    }

    metadataPolicy2 = [(PAMediaConversionServiceImageConversionJob *)self metadataPolicy];
    sourceImageProperties = [(PAMediaConversionServiceImageConversionJob *)self sourceImageProperties];
    v7 = [metadataPolicy2 processMetadata:sourceImageProperties];
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
  mainSourceResourceURL = [(PAMediaConversionServiceImageConversionJob *)self mainSourceResourceURL];
  v13 = kCGImageSourceShouldCache;
  v14 = &__kCFBooleanFalse;
  v4 = CGImageSourceCreateWithURL(mainSourceResourceURL, [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]);
  self->_imageSource = v4;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      path = [(__CFURL *)mainSourceResourceURL path];
      v11 = 138412290;
      v12 = path;
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_BEGIN, v3, "com.apple.photos.mediaconversion.service.validate", &unk_1000329FA, buf, 2u);
  }

  if ([(PAMediaConversionServiceImageConversionJob *)self _validateSource]&& [(PAMediaConversionServiceImageConversionJob *)self _validateMetadata]&& [(PAMediaConversionServiceImageConversionJob *)self _validateOrientation])
  {
    _validateOutputSize = [(PAMediaConversionServiceImageConversionJob *)self _validateOutputSize];
    v6 = 1;
    if (_validateOutputSize)
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, &_os_log_default, OS_SIGNPOST_INTERVAL_END, v3, "com.apple.photos.mediaconversion.service.validate", &unk_1000329FA, v8, 2u);
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

- (PAMediaConversionServiceImageConversionJob)initWithRequestIdentifier:(id)identifier sourceResourceURLCollection:(id)collection outputFileType:(id)type
{
  identifierCopy = identifier;
  collectionCopy = collection;
  typeCopy = type;
  if (!collectionCopy)
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
    objc_storeStrong(&v13->_requestIdentifier, identifier);
    objc_storeStrong(&v14->_sourceResourceURLCollection, collection);
    objc_storeStrong(&v14->_outputFileType, type);
  }

  return v14;
}

@end