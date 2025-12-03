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
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!finalize)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"imageDestination"}];
  }

  v13 = [MEMORY[0x277CE63D8] assetWithURL:lCopy];
  v14 = [MEMORY[0x277CE6408] assetImageGeneratorWithAsset:v13];
  [v14 setMaximumSize:{width, height}];
  [v14 setAppliesPreferredTrackTransform:1];
  *buf = *MEMORY[0x277CC08F0];
  v23 = *(MEMORY[0x277CC08F0] + 16);
  v15 = [MEMORY[0x277D3B450] copyCGImageFromImageGenerator:v14 atTime:buf actualTime:0 error:error];
  if (v15)
  {
    v16 = v15;
    CGImageDestinationAddImage(finalize, v15, 0);
    v17 = CGImageDestinationFinalize(finalize);
    if (!v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412290;
      *&buf[4] = path;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to finalize image destination for still image extraction for %@", buf, 0xCu);
    }

    CFRelease(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)generatePosterFrameExportForVideoURL:(id)l outputData:(id *)data maximumSize:(CGSize)size outputFileType:(id)type error:(id *)error
{
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x277D85DE8];
  lCopy = l;
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"outputFileType"}];
  }

  data = [MEMORY[0x277CBEB28] data];
  v17 = CGImageDestinationCreateWithData(data, typeCopy, 1uLL, 0);
  if (v17)
  {
    v18 = v17;
    v19 = [self _generatePosterFrameExportForVideoURL:lCopy imageDestinationToAddToAndFinalize:v17 maximumSize:error error:{width, height}];
    v20 = v19;
    if (data && v19)
    {
      v21 = data;
      *data = data;
    }

    CFRelease(v18);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412290;
      v27 = path;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create image destination for still image extraction for %@", buf, 0xCu);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (BOOL)generatePosterFrameExportForVideoURL:(id)l destinationURL:(id)rL maximumSize:(CGSize)size outputFileType:(id)type error:(id *)error
{
  height = size.height;
  width = size.width;
  v26 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"outputFileType"}];
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
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412290;
      v25 = path;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create image destination for still image extraction for %@", buf, 0xCu);
    }

    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)primaryImagePropertiesForFileAtURL:(id)l
{
  v14[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v13[0] = *MEMORY[0x277CD3618];
  v13[1] = @"kCGImageSourceRawPropertiesHint";
  v14[0] = MEMORY[0x277CBEC28];
  v14[1] = @"ImportOnly";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
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
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = lCopy;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create image source for %@, skipping", &v11, 0xCu);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)logMissingPropertiesInCMPhotoOutputData:(id)data comparedToProcessedSourceImagePropertiesByIndex:(id)index
{
  v39 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  indexCopy = index;
  v7 = CGImageSourceCreateWithData(dataCopy, 0);
  if (v7)
  {
    v8 = v7;
    v25 = dataCopy;
    Count = CGImageSourceGetCount(v7);
    v10 = [indexCopy count];
    if (v10 != Count && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v36 = v10;
      v37 = 2048;
      v38 = Count;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected input (%tu) / output (%tu) image count mismatch", buf, 0x16u);
    }

    if (v10 >= Count)
    {
      v11 = Count;
    }

    else
    {
      v11 = v10;
    }

    v28 = v11;
    if (v11)
    {
      v12 = 0;
      v26 = v8;
      v27 = indexCopy;
      do
      {
        v13 = CGImageSourceCopyPropertiesAtIndex(v8, v12, 0);
        v29 = v12;
        v14 = [indexCopy objectAtIndexedSubscript:v12];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v31;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v30 + 1) + 8 * i);
              v20 = [v14 objectForKeyedSubscript:{v19, v25}];
              v21 = [(__CFDictionary *)v13 objectForKeyedSubscript:v19];
              if (v21)
              {
              }

              else
              {
                null = [MEMORY[0x277CBEB68] null];
                v23 = [v20 isEqual:null];

                if ((v23 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v36 = v29;
                  v37 = 2114;
                  v38 = v19;
                  _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Output image at index %tu is missing image property '%{public}@' present in input image", buf, 0x16u);
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v16);
        }

        v12 = v29 + 1;
        indexCopy = v27;
        v8 = v26;
      }

      while (v29 + 1 != v28);
    }

    CFRelease(v8);
    dataCopy = v25;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v36 = dataCopy;
    v37 = 2048;
    v38 = [(__CFData *)dataCopy length];
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create an image source from Fig outputData %p of length %tu to inspect for missing metadata properties.", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)dataForSingleImageJPEGPassthroughConversionForImageSource:(CGImageSource *)source primaryImageProperties:(id)properties
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB28];
  propertiesCopy = properties;
  data = [v5 data];
  identifier = [*MEMORY[0x277CE1DC0] identifier];
  v9 = CGImageDestinationCreateWithData(data, identifier, 1uLL, 0);

  v10 = [propertiesCopy mutableCopy];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD2D70]];
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(source);
  CGImageDestinationAddImageFromSource(v9, source, PrimaryImageIndex, v10);
  LOBYTE(propertiesCopy) = CGImageDestinationFinalize(v9);
  CFRelease(v9);
  if ((propertiesCopy & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      sourceCopy = source;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to perform single image JPEG passthrough conversion for source %@", &v14, 0xCu);
    }

    data = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return data;
}

+ (id)imageDataForPassthroughConversionForSourceURL:(id)l metadataPolicy:(id)policy outResultImageSize:(CGSize *)size
{
  v40[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  policyCopy = policy;
  v39 = *MEMORY[0x277CD3618];
  v40[0] = MEMORY[0x277CBEC28];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v10 = CGImageSourceCreateWithURL(lCopy, v9);
  if (v10)
  {
    v11 = v10;
    v37 = *MEMORY[0x277CD3530];
    v38 = MEMORY[0x277CBEC38];
    v29 = CGImageSourceCopyProperties(v10, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1]);
    v12 = [self imagePropertiesByImageIndexInImageSource:v11 processedWithMetadataPolicy:policyCopy];
    v13 = *MEMORY[0x277CE1DC0];
    identifier = [*MEMORY[0x277CE1DC0] identifier];
    v32 = 0;
    v15 = *MEMORY[0x277CBE918];
    v31 = 0;
    v16 = [(__CFURL *)lCopy getResourceValue:&v32 forKey:v15 error:&v31];
    v17 = v32;

    v18 = v31;
    if ((v16 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v18;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get type identifier of image source URL: %@", buf, 0xCu);
    }

    v19 = [MEMORY[0x277D3B508] typeWithIdentifier:{v17, v18}];
    v20 = [v19 conformsToType:v13];

    if (v20)
    {
      v21 = [v12 objectAtIndexedSubscript:CGImageSourceGetPrimaryImageIndex(v11)];
      v22 = [self dataForSingleImageJPEGPassthroughConversionForImageSource:v11 primaryImageProperties:v21];
    }

    else
    {
      v30 = v29;
      v23 = v12;
      v24 = PFFigCopyImageFileWithPropertiesToData();
      v22 = 0;
      if (v24)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          path = [(__CFURL *)lCopy path];
          *buf = 138412546;
          v34 = path;
          v35 = 1024;
          v36 = v24;
          _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to perform passthrough conversion for %@: %d", buf, 0x12u);
        }
      }

      else
      {
        [self logMissingPropertiesInCMPhotoOutputData:v22 comparedToProcessedSourceImagePropertiesByIndex:v23];
      }

      v21 = v30;
    }

    CFRelease(v11);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = lCopy;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to create image source from %@", buf, 0xCu);
    }

    v22 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

id __124__PAMediaConversionServiceImagingUtilities_imageDataForPassthroughConversionForSourceURL_metadataPolicy_outResultImageSize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = 0;
  if (PFFigGetImageSourceImageIndexForContainerItemID())
  {
    v4 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v5 = [MEMORY[0x277CBEB68] null];
    v6 = [v4 isEqual:v5];

    if (v6)
    {

      v4 = 0;
    }
  }

  return v4;
}

+ (id)imagePropertiesByImageIndexInImageSource:(CGImageSource *)source processedWithMetadataPolicy:(id)policy
{
  policyCopy = policy;
  Count = CGImageSourceGetCount(source);
  array = [MEMORY[0x277CBEB18] array];
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
        [array addObject:v9];
      }

      else
      {
        null = [MEMORY[0x277CBEB68] null];
        [array addObject:null];
      }
    }
  }

  return array;
}

@end