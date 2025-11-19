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
  v24 = *MEMORY[0x277D85DE8];
  v12 = a3;
  if (!a4)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"imageDestination"}];
  }

  v13 = [MEMORY[0x277CE63D8] assetWithURL:v12];
  v14 = [MEMORY[0x277CE6408] assetImageGeneratorWithAsset:v13];
  [v14 setMaximumSize:{width, height}];
  [v14 setAppliesPreferredTrackTransform:1];
  *buf = *MEMORY[0x277CC08F0];
  v23 = *(MEMORY[0x277CC08F0] + 16);
  v15 = [MEMORY[0x277D3B450] copyCGImageFromImageGenerator:v14 atTime:buf actualTime:0 error:a6];
  if (v15)
  {
    v16 = v15;
    CGImageDestinationAddImage(a4, v15, 0);
    v17 = CGImageDestinationFinalize(a4);
    if (!v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = [v12 path];
      *buf = 138412290;
      *&buf[4] = v20;
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

+ (BOOL)generatePosterFrameExportForVideoURL:(id)a3 outputData:(id *)a4 maximumSize:(CGSize)a5 outputFileType:(id)a6 error:(id *)a7
{
  height = a5.height;
  width = a5.width;
  v28 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a6;
  if (!v15)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"outputFileType"}];
  }

  v16 = [MEMORY[0x277CBEB28] data];
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
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = [v14 path];
      *buf = 138412290;
      v27 = v24;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create image destination for still image extraction for %@", buf, 0xCu);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (BOOL)generatePosterFrameExportForVideoURL:(id)a3 destinationURL:(id)a4 maximumSize:(CGSize)a5 outputFileType:(id)a6 error:(id *)a7
{
  height = a5.height;
  width = a5.width;
  v26 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  if (!v16)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceImagingUtilities.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"outputFileType"}];
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
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v22 = [v14 path];
      *buf = 138412290;
      v25 = v22;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create image destination for still image extraction for %@", buf, 0xCu);
    }

    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)primaryImagePropertiesForFileAtURL:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13[0] = *MEMORY[0x277CD3618];
  v13[1] = @"kCGImageSourceRawPropertiesHint";
  v14[0] = MEMORY[0x277CBEC28];
  v14[1] = @"ImportOnly";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
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
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create image source for %@, skipping", &v11, 0xCu);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)logMissingPropertiesInCMPhotoOutputData:(id)a3 comparedToProcessedSourceImagePropertiesByIndex:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = CGImageSourceCreateWithData(v5, 0);
  if (v7)
  {
    v8 = v7;
    v25 = v5;
    Count = CGImageSourceGetCount(v7);
    v10 = [v6 count];
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
      v27 = v6;
      do
      {
        v13 = CGImageSourceCopyPropertiesAtIndex(v8, v12, 0);
        v29 = v12;
        v14 = [v6 objectAtIndexedSubscript:v12];
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
                v22 = [MEMORY[0x277CBEB68] null];
                v23 = [v20 isEqual:v22];

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
        v6 = v27;
        v8 = v26;
      }

      while (v29 + 1 != v28);
    }

    CFRelease(v8);
    v5 = v25;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v36 = v5;
    v37 = 2048;
    v38 = [(__CFData *)v5 length];
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create an image source from Fig outputData %p of length %tu to inspect for missing metadata properties.", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)dataForSingleImageJPEGPassthroughConversionForImageSource:(CGImageSource *)a3 primaryImageProperties:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB28];
  v6 = a4;
  v7 = [v5 data];
  v8 = [*MEMORY[0x277CE1DC0] identifier];
  v9 = CGImageDestinationCreateWithData(v7, v8, 1uLL, 0);

  v10 = [v6 mutableCopy];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD2D70]];
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(a3);
  CGImageDestinationAddImageFromSource(v9, a3, PrimaryImageIndex, v10);
  LOBYTE(v6) = CGImageDestinationFinalize(v9);
  CFRelease(v9);
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = a3;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to perform single image JPEG passthrough conversion for source %@", &v14, 0xCu);
    }

    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)imageDataForPassthroughConversionForSourceURL:(id)a3 metadataPolicy:(id)a4 outResultImageSize:(CGSize *)a5
{
  v40[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v39 = *MEMORY[0x277CD3618];
  v40[0] = MEMORY[0x277CBEC28];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v10 = CGImageSourceCreateWithURL(v7, v9);
  if (v10)
  {
    v11 = v10;
    v37 = *MEMORY[0x277CD3530];
    v38 = MEMORY[0x277CBEC38];
    v29 = CGImageSourceCopyProperties(v10, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1]);
    v12 = [a1 imagePropertiesByImageIndexInImageSource:v11 processedWithMetadataPolicy:v8];
    v13 = *MEMORY[0x277CE1DC0];
    v14 = [*MEMORY[0x277CE1DC0] identifier];
    v32 = 0;
    v15 = *MEMORY[0x277CBE918];
    v31 = 0;
    v16 = [(__CFURL *)v7 getResourceValue:&v32 forKey:v15 error:&v31];
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
      v22 = [a1 dataForSingleImageJPEGPassthroughConversionForImageSource:v11 primaryImageProperties:v21];
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
          v25 = [(__CFURL *)v7 path];
          *buf = 138412546;
          v34 = v25;
          v35 = 1024;
          v36 = v24;
          _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to perform passthrough conversion for %@: %d", buf, 0x12u);
        }
      }

      else
      {
        [a1 logMissingPropertiesInCMPhotoOutputData:v22 comparedToProcessedSourceImagePropertiesByIndex:v23];
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
      v34 = v7;
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

+ (id)imagePropertiesByImageIndexInImageSource:(CGImageSource *)a3 processedWithMetadataPolicy:(id)a4
{
  v5 = a4;
  Count = CGImageSourceGetCount(a3);
  v7 = [MEMORY[0x277CBEB18] array];
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
        v11 = [MEMORY[0x277CBEB68] null];
        [v7 addObject:v11];
      }
    }
  }

  return v7;
}

@end