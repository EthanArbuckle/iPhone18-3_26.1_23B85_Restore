@interface PAMediaConversionServiceImagingUtilities
+ (BOOL)_generatePosterFrameExportForVideoURL:(id)a3 imageDestinationToAddToAndFinalize:(CGImageDestination *)a4 maximumSize:(CGSize)a5 error:(id *)a6;
+ (BOOL)generatePosterFrameExportForVideoURL:(id)a3 destinationURL:(id)a4 maximumSize:(CGSize)a5 outputFileType:(id)a6 error:(id *)a7;
+ (BOOL)generatePosterFrameExportForVideoURL:(id)a3 outputData:(id *)a4 maximumSize:(CGSize)a5 outputFileType:(id)a6 error:(id *)a7;
+ (id)dataForSingleImageJPEGPassthroughConversionForImageSource:(CGImageSource *)a3 primaryImageProperties:(id)a4;
+ (id)imageDataForPassthroughConversionForSourceURL:(id)a3 metadataPolicy:(id)a4 outResultImageSize:(CGSize *)a5;
+ (id)imagePropertiesByImageIndexInImageSource:(CGImageSource *)a3 processedWithMetadataPolicy:(id)a4;
+ (id)primaryImagePropertiesForFileAtURL:(id)a3;
+ (void)logMissingPropertiesInCMPhotoOutputData:(id)a3 comparedToProcessedSourceImagePropertiesByIndex:(id)a4;
@end

@implementation PAMediaConversionServiceImagingUtilities

+ (BOOL)_generatePosterFrameExportForVideoURL:(id)a3 imageDestinationToAddToAndFinalize:(CGImageDestination *)a4 maximumSize:(CGSize)a5 error:(id *)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  if (!a4)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"imageDestination"}];
  }

  v13 = [AVAsset assetWithURL:v12];
  v14 = [AVAssetImageGenerator assetImageGeneratorWithAsset:v13];
  [v14 setMaximumSize:{width, height}];
  [v14 setAppliesPreferredTrackTransform:1];
  *buf = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  v15 = [PFMediaUtilities copyCGImageFromImageGenerator:v14 atTime:buf actualTime:0 error:a6];
  if (v15)
  {
    v16 = v15;
    CGImageDestinationAddImage(a4, v15, 0);
    v17 = CGImageDestinationFinalize(a4);
    if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v19 = [v12 path];
      *buf = 138412290;
      *&buf[4] = v19;
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

+ (BOOL)generatePosterFrameExportForVideoURL:(id)a3 outputData:(id *)a4 maximumSize:(CGSize)a5 outputFileType:(id)a6 error:(id *)a7
{
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a6;
  if (!v15)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"outputFileType"}];
  }

  v16 = +[NSMutableData data];
  v17 = CGImageDestinationCreateWithData(v16, v15, 1uLL, 0);
  if (v17)
  {
    v18 = v17;
    v19 = [a1 _generatePosterFrameExportForVideoURL:v14 imageDestinationToAddToAndFinalize:v17 maximumSize:a7 error:{width, height}];
    v20 = v19;
    if (a4 && v19)
    {
      v21 = v16;
      *a4 = v16;
    }

    CFRelease(v18);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v23 = [v14 path];
      *buf = 138412290;
      v26 = v23;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create image destination for still image extraction for %@", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

+ (BOOL)generatePosterFrameExportForVideoURL:(id)a3 destinationURL:(id)a4 maximumSize:(CGSize)a5 outputFileType:(id)a6 error:(id *)a7
{
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  if (!v16)
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"outputFileType"}];
  }

  v17 = CGImageDestinationCreateWithURL(v15, v16, 1uLL, 0);
  if (v17)
  {
    v18 = v17;
    v19 = [a1 _generatePosterFrameExportForVideoURL:v14 imageDestinationToAddToAndFinalize:v17 maximumSize:a7 error:{width, height}];
    CFRelease(v18);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 = [v14 path];
      *buf = 138412290;
      v24 = v21;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create image destination for still image extraction for %@", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

+ (id)primaryImagePropertiesForFileAtURL:(id)a3
{
  v3 = a3;
  v12[0] = kCGImageSourceShouldCache;
  v12[1] = @"kCGImageSourceRawPropertiesHint";
  v13[0] = &__kCFBooleanFalse;
  v13[1] = @"ImportOnly";
  v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v5 = CGImageSourceCreateWithURL(v3, v4);
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
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create image source for %@, skipping", &v10, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

+ (void)logMissingPropertiesInCMPhotoOutputData:(id)a3 comparedToProcessedSourceImagePropertiesByIndex:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CGImageSourceCreateWithData(v5, 0);
  if (v7)
  {
    v8 = v7;
    v24 = v5;
    Count = CGImageSourceGetCount(v7);
    v10 = [v6 count];
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
      v26 = v6;
      do
      {
        v13 = CGImageSourceCopyPropertiesAtIndex(v8, v12, 0);
        v28 = v12;
        v14 = [v6 objectAtIndexedSubscript:v12];
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
        v6 = v26;
        v8 = v25;
      }

      while ((v28 + 1) != v27);
    }

    CFRelease(v8);
    v5 = v24;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v35 = v5;
    v36 = 2048;
    v37 = [(__CFData *)v5 length];
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create an image source from Fig outputData %p of length %tu to inspect for missing metadata properties.", buf, 0x16u);
  }
}

+ (id)dataForSingleImageJPEGPassthroughConversionForImageSource:(CGImageSource *)a3 primaryImageProperties:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableData data];
  v7 = [UTTypeJPEG identifier];
  v8 = CGImageDestinationCreateWithData(v6, v7, 1uLL, 0);

  v9 = [v5 mutableCopy];
  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:kCGImageDestinationPreserveGainMap];
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(a3);
  CGImageDestinationAddImageFromSource(v8, a3, PrimaryImageIndex, v9);
  LOBYTE(v5) = CGImageDestinationFinalize(v8);
  CFRelease(v8);
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = a3;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to perform single image JPEG passthrough conversion for source %@", &v12, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)imageDataForPassthroughConversionForSourceURL:(id)a3 metadataPolicy:(id)a4 outResultImageSize:(CGSize *)a5
{
  v7 = a3;
  v8 = a4;
  v36 = kCGImageSourceShouldCache;
  v37 = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v10 = CGImageSourceCreateWithURL(v7, v9);
  if (v10)
  {
    v11 = v10;
    v34 = kCGImageSourceAddHEIFContainerItemID;
    v35 = &__kCFBooleanTrue;
    v26 = CGImageSourceCopyProperties(v10, [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1]);
    v12 = [a1 imagePropertiesByImageIndexInImageSource:v11 processedWithMetadataPolicy:v8];
    v13 = [UTTypeJPEG identifier];
    v29 = 0;
    v28 = 0;
    v14 = [(__CFURL *)v7 getResourceValue:&v29 forKey:NSURLTypeIdentifierKey error:&v28];
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
      v20 = [a1 dataForSingleImageJPEGPassthroughConversionForImageSource:v11 primaryImageProperties:v19];
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
          v23 = [(__CFURL *)v7 path];
          *buf = 138412546;
          v31 = v23;
          v32 = 1024;
          v33 = v22;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to perform passthrough conversion for %@: %d", buf, 0x12u);
        }
      }

      else
      {
        [a1 logMissingPropertiesInCMPhotoOutputData:v20 comparedToProcessedSourceImagePropertiesByIndex:v21];
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
      v31 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unable to create image source from %@", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

+ (id)imagePropertiesByImageIndexInImageSource:(CGImageSource *)a3 processedWithMetadataPolicy:(id)a4
{
  v5 = a4;
  Count = CGImageSourceGetCount(a3);
  v7 = +[NSMutableArray array];
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      v9 = CGImageSourceCopyPropertiesAtIndex(a3, i, 0);
      if (v5)
      {
        v10 = [v5 processMetadata:v9];

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