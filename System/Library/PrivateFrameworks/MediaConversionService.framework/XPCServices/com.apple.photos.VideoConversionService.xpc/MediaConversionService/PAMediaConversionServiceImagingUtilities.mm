@interface PAMediaConversionServiceImagingUtilities
+ (BOOL)_generatePosterFrameExportForVideoURL:(id)l imageDestinationToAddToAndFinalize:(CGImageDestination *)finalize maximumSize:(CGSize)size error:(id *)error;
+ (BOOL)generatePosterFrameExportForVideoURL:(id)l destinationURL:(id)rL maximumSize:(CGSize)size outputFileType:(id)type error:(id *)error;
+ (BOOL)generatePosterFrameExportForVideoURL:(id)l outputData:(id *)data maximumSize:(CGSize)size outputFileType:(id)type error:(id *)error;
+ (id)dataForSingleImageJPEGPassthroughConversionForImageSource:(CGImageSource *)source primaryImageProperties:(id)properties;
+ (id)imageDataForPassthroughConversionForSourceURL:(id)l metadataPolicy:(id)policy outResultImageSize:(CGSize *)size;
+ (id)imagePropertiesByImageIndexInImageSource:(CGImageSource *)source processedWithMetadataPolicy:(id)policy;
+ (id)primaryImagePropertiesForFileAtURL:(id)l;
+ (void)logMissingPropertiesInCMPhotoOutputData:(id)data comparedToProcessedSourceImagePropertiesByIndex:(id)index;
@end

@implementation PAMediaConversionServiceImagingUtilities

+ (BOOL)_generatePosterFrameExportForVideoURL:(id)l imageDestinationToAddToAndFinalize:(CGImageDestination *)finalize maximumSize:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  lCopy = l;
  if (!finalize)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"imageDestination"}];
  }

  v13 = [AVAsset assetWithURL:lCopy];
  v14 = [AVAssetImageGenerator assetImageGeneratorWithAsset:v13];
  [v14 setMaximumSize:{width, height}];
  [v14 setAppliesPreferredTrackTransform:1];
  *buf = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  v15 = [PFMediaUtilities copyCGImageFromImageGenerator:v14 atTime:buf actualTime:0 error:error];
  if (v15)
  {
    v16 = v15;
    CGImageDestinationAddImage(finalize, v15, 0);
    v17 = CGImageDestinationFinalize(finalize);
    if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412290;
      *&buf[4] = path;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to finalize image destination for still image extraction for %@", buf, 0xCu);
    }

    CFRelease(v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)generatePosterFrameExportForVideoURL:(id)l outputData:(id *)data maximumSize:(CGSize)size outputFileType:(id)type error:(id *)error
{
  height = size.height;
  width = size.width;
  lCopy = l;
  typeCopy = type;
  if (!typeCopy)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"outputFileType"}];
  }

  v16 = +[NSMutableData data];
  v17 = CGImageDestinationCreateWithData(v16, typeCopy, 1uLL, 0);
  if (v17)
  {
    v18 = v17;
    v19 = [self _generatePosterFrameExportForVideoURL:lCopy imageDestinationToAddToAndFinalize:v17 maximumSize:error error:{width, height}];
    v20 = v19;
    if (data && v19)
    {
      v21 = v16;
      *data = v16;
    }

    CFRelease(v18);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412290;
      v26 = path;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create image destination for still image extraction for %@", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

+ (BOOL)generatePosterFrameExportForVideoURL:(id)l destinationURL:(id)rL maximumSize:(CGSize)size outputFileType:(id)type error:(id *)error
{
  height = size.height;
  width = size.width;
  lCopy = l;
  rLCopy = rL;
  typeCopy = type;
  if (!typeCopy)
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"outputFileType"}];
  }

  v17 = CGImageDestinationCreateWithURL(rLCopy, typeCopy, 1uLL, 0);
  if (v17)
  {
    v18 = v17;
    v19 = [self _generatePosterFrameExportForVideoURL:lCopy imageDestinationToAddToAndFinalize:v17 maximumSize:error error:{width, height}];
    CFRelease(v18);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412290;
      v24 = path;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create image destination for still image extraction for %@", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

+ (id)primaryImagePropertiesForFileAtURL:(id)l
{
  lCopy = l;
  v12[0] = kCGImageSourceShouldCache;
  v12[1] = @"kCGImageSourceRawPropertiesHint";
  v13[0] = &__kCFBooleanFalse;
  v13[1] = @"ImportOnly";
  v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v5 = CGImageSourceCreateWithURL(lCopy, v4);
  if (v5)
  {
    v6 = v5;
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v5);
    v8 = CGImageSourceCopyPropertiesAtIndex(v6, PrimaryImageIndex, 0);
    CFRelease(v6);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = lCopy;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create image source for %@, skipping", &v10, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

+ (void)logMissingPropertiesInCMPhotoOutputData:(id)data comparedToProcessedSourceImagePropertiesByIndex:(id)index
{
  dataCopy = data;
  indexCopy = index;
  v7 = CGImageSourceCreateWithData(dataCopy, 0);
  if (v7)
  {
    v8 = v7;
    v24 = dataCopy;
    Count = CGImageSourceGetCount(v7);
    v10 = [indexCopy count];
    if (v10 != Count && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v35 = v10;
      v36 = 2048;
      v37 = Count;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected input (%tu) / output (%tu) image count mismatch", buf, 0x16u);
    }

    if (v10 >= Count)
    {
      v11 = Count;
    }

    else
    {
      v11 = v10;
    }

    v27 = v11;
    if (v11)
    {
      v12 = 0;
      v25 = v8;
      v26 = indexCopy;
      do
      {
        v13 = CGImageSourceCopyPropertiesAtIndex(v8, v12, 0);
        v28 = v12;
        v14 = [indexCopy objectAtIndexedSubscript:v12];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v30;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v29 + 1) + 8 * i);
              v20 = [v14 objectForKeyedSubscript:{v19, v24}];
              v21 = [(__CFDictionary *)v13 objectForKeyedSubscript:v19];
              if (v21)
              {
              }

              else
              {
                v22 = +[NSNull null];
                v23 = [v20 isEqual:v22];

                if ((v23 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v35 = v28;
                  v36 = 2114;
                  v37 = v19;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Output image at index %tu is missing image property '%{public}@' present in input image", buf, 0x16u);
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v16);
        }

        v12 = v28 + 1;
        indexCopy = v26;
        v8 = v25;
      }

      while ((v28 + 1) != v27);
    }

    CFRelease(v8);
    dataCopy = v24;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v35 = dataCopy;
    v36 = 2048;
    v37 = [(__CFData *)dataCopy length];
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create an image source from Fig outputData %p of length %tu to inspect for missing metadata properties.", buf, 0x16u);
  }
}

+ (id)dataForSingleImageJPEGPassthroughConversionForImageSource:(CGImageSource *)source primaryImageProperties:(id)properties
{
  propertiesCopy = properties;
  v6 = +[NSMutableData data];
  identifier = [UTTypeJPEG identifier];
  v8 = CGImageDestinationCreateWithData(v6, identifier, 1uLL, 0);

  v9 = [propertiesCopy mutableCopy];
  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:kCGImageDestinationPreserveGainMap];
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(source);
  CGImageDestinationAddImageFromSource(v8, source, PrimaryImageIndex, v9);
  LOBYTE(propertiesCopy) = CGImageDestinationFinalize(v8);
  CFRelease(v8);
  if ((propertiesCopy & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      sourceCopy = source;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to perform single image JPEG passthrough conversion for source %@", &v12, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)imageDataForPassthroughConversionForSourceURL:(id)l metadataPolicy:(id)policy outResultImageSize:(CGSize *)size
{
  lCopy = l;
  policyCopy = policy;
  v36 = kCGImageSourceShouldCache;
  v37 = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v10 = CGImageSourceCreateWithURL(lCopy, v9);
  if (v10)
  {
    v11 = v10;
    v34 = kCGImageSourceAddHEIFContainerItemID;
    v35 = &__kCFBooleanTrue;
    v26 = CGImageSourceCopyProperties(v10, [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1]);
    v12 = [self imagePropertiesByImageIndexInImageSource:v11 processedWithMetadataPolicy:policyCopy];
    identifier = [UTTypeJPEG identifier];
    v29 = 0;
    v28 = 0;
    v14 = [(__CFURL *)lCopy getResourceValue:&v29 forKey:NSURLTypeIdentifierKey error:&v28];
    v15 = v29;

    v16 = v28;
    if ((v14 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v16;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to get type identifier of image source URL: %@", buf, 0xCu);
    }

    v17 = [PFUniformTypeUtilities typeWithIdentifier:v15, v16];
    v18 = [v17 conformsToType:UTTypeJPEG];

    if (v18)
    {
      v19 = [v12 objectAtIndexedSubscript:CGImageSourceGetPrimaryImageIndex(v11)];
      v20 = [self dataForSingleImageJPEGPassthroughConversionForImageSource:v11 primaryImageProperties:v19];
    }

    else
    {
      v27 = v26;
      v21 = v12;
      v22 = PFFigCopyImageFileWithPropertiesToData();
      v20 = 0;
      if (v22)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          path = [(__CFURL *)lCopy path];
          *buf = 138412546;
          v31 = path;
          v32 = 1024;
          v33 = v22;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to perform passthrough conversion for %@: %d", buf, 0x12u);
        }
      }

      else
      {
        [self logMissingPropertiesInCMPhotoOutputData:v20 comparedToProcessedSourceImagePropertiesByIndex:v21];
      }

      v19 = v27;
    }

    CFRelease(v11);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = lCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unable to create image source from %@", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

+ (id)imagePropertiesByImageIndexInImageSource:(CGImageSource *)source processedWithMetadataPolicy:(id)policy
{
  policyCopy = policy;
  Count = CGImageSourceGetCount(source);
  v7 = +[NSMutableArray array];
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      v9 = CGImageSourceCopyPropertiesAtIndex(source, i, 0);
      if (policyCopy)
      {
        v10 = [policyCopy processMetadata:v9];

        v9 = v10;
      }

      if (v9)
      {
        [v7 addObject:v9];
      }

      else
      {
        v11 = +[NSNull null];
        [v7 addObject:v11];
      }
    }
  }

  return v7;
}

@end