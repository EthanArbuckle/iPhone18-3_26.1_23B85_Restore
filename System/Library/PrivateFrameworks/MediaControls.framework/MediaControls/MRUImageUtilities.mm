@interface MRUImageUtilities
+ (BOOL)imageIsEfficientFormat:(id)format;
+ (BOOL)imageIsJPEG:(id)g;
+ (BOOL)shouldResizeImage:(id)image forFittingSize:(CGSize)size;
+ (CGSize)sizeFromSource:(CGImageSource *)source;
+ (MSVLRUDictionary)cache;
+ (id)derivedSourceImageForImage:(id)image;
+ (id)formatImage:(id)image withIdentifier:(id)identifier forDisplayAtSize:(CGSize)size useCache:(BOOL)cache;
+ (id)formattedImageForIdentifier:(id)identifier size:(CGSize)size;
+ (id)jpegDataForImage:(id)image;
+ (id)resizedImage:(id)image forFittingSize:(CGSize)size;
+ (id)sourceDataForImage:(id)image;
+ (int64_t)subsampleFactorForMaxPixelSize:(int64_t)size imageSize:(CGSize)imageSize;
+ (void)clearCache;
@end

@implementation MRUImageUtilities

+ (MSVLRUDictionary)cache
{
  if (cache_onceToken != -1)
  {
    +[MRUImageUtilities cache];
  }

  v3 = cache___cache;

  return v3;
}

void __26__MRUImageUtilities_cache__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:5];
  v1 = cache___cache;
  cache___cache = v0;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [v3 addObserverForName:0x1F1446768 object:0 queue:0 usingBlock:&__block_literal_global_40_0];
}

void __26__MRUImageUtilities_cache__block_invoke_2()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = +[MRUImageLoaderCoordinator sharedCoordinator];
  v1 = [v0 registeredLoaderArtworkIdentifiers];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [cache___cache allValues];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [v1 containsObject:v8];

        if (v9)
        {
          [v7 cancelEvictionTimer];
        }

        else
        {
          v10 = [v7 evictionTimer];

          if (!v10)
          {
            [v7 startEvictionTimer];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

+ (void)clearCache
{
  v2 = +[MRUImageUtilities cache];
  [v2 removeAllObjects];
}

+ (id)sourceDataForImage:(id)image
{
  [image CGImage];
  v3 = CGImageCopySourceData();

  return v3;
}

+ (BOOL)imageIsJPEG:(id)g
{
  gCopy = g;
  v4 = gCopy;
  if (gCopy && [gCopy CGImage])
  {
    [v4 CGImage];
    v5 = MSVImageUtilitiesCopyUTTypeForImage();
    v6 = [v5 isEqualToString:@"public.jpeg"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)imageIsEfficientFormat:(id)format
{
  formatCopy = format;
  v4 = formatCopy;
  if (formatCopy && [formatCopy CGImage])
  {
    [v4 CGImage];
    v5 = MSVImageUtilitiesCopyUTTypeForImage();
    if ([v5 isEqualToString:@"public.jpeg"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"public.heic"))
    {
      v6 = 1;
    }

    else
    {
      v6 = [v5 isEqualToString:@"public.heif"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)jpegDataForImage:(id)image
{
  v10 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if ([MRUImageUtilities imageIsJPEG:imageCopy]&& ([MRUImageUtilities sourceDataForImage:imageCopy], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (UIImageJPEGRepresentation(imageCopy, 0.9), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    v6 = MCLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = imageCopy;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_ERROR, "[MRUImageUtilities] Failed to produce JPEG data for image %@.", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)formatImage:(id)image withIdentifier:(id)identifier forDisplayAtSize:(CGSize)size useCache:(BOOL)cache
{
  cacheCopy = cache;
  height = size.height;
  width = size.width;
  v85 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  identifierCopy = identifier;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

  if (verboseImageLoadingLogging)
  {
    v16 = MCLogCategoryDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v87.width = width;
      v87.height = height;
      v17 = NSStringFromCGSize(v87);
      *buf = 138412802;
      v80 = uUIDString;
      v81 = 2112;
      v82 = imageCopy;
      v83 = 2112;
      v84 = v17;
      _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> %@ at size: %@", buf, 0x20u);
    }
  }

  if (imageCopy)
  {
    if (!cacheCopy)
    {
      v26 = imageCopy;
      v20 = 0;
      goto LABEL_47;
    }

    v18 = [identifierCopy copy];
    if (!v18)
    {
      currentSettings2 = [MEMORY[0x1E69B0B08] currentSettings];
      verboseImageLoadingLogging2 = [currentSettings2 verboseImageLoadingLogging];

      if (verboseImageLoadingLogging2)
      {
        v29 = MCLogCategoryDefault();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v80 = uUIDString;
          _os_log_impl(&dword_1A20FC000, v29, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> cannot generate derived image for nil identifier. Will format original.", buf, 0xCu);
        }
      }

      v26 = imageCopy;
      v20 = 0;
      goto LABEL_46;
    }

    v19 = +[MRUImageUtilities cache];
    v20 = [v19 objectForKey:v18];

    image = [v20 image];
    if (image)
    {
      v22 = image;
    }

    else
    {
      v30 = [MRUImageUtilities derivedSourceImageForImage:imageCopy];
      if (!v30)
      {
        v77 = MCLogCategoryDefault();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v80 = uUIDString;
          _os_log_impl(&dword_1A20FC000, v77, OS_LOG_TYPE_ERROR, "[MRUImageUtilities] formatImageForDisplay<%@> returning nil because unable to create derived image.", buf, 0xCu);
        }

        v22 = 0;
        goto LABEL_82;
      }

      v22 = v30;
      currentSettings3 = [MEMORY[0x1E69B0B08] currentSettings];
      verboseImageLoadingLogging3 = [currentSettings3 verboseImageLoadingLogging];

      if (verboseImageLoadingLogging3)
      {
        v33 = MCLogCategoryDefault();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          [v22 size];
          v34 = NSStringFromCGSize(v88);
          *buf = 138412802;
          v80 = uUIDString;
          v81 = 2112;
          v82 = v34;
          v83 = 2112;
          v84 = v18;
          _os_log_impl(&dword_1A20FC000, v33, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> setting derived image of size %@ for identifier %@.", buf, 0x20u);
        }
      }

      v35 = objc_opt_new();

      [v35 setImage:v22];
      [v35 setIdentifier:v18];
      [v35 setFittingSize:width, height];
      [v35 startEvictionTimer];
      v36 = +[MRUImageUtilities cache];
      [v36 setObject:v35 forKey:v18];

      v20 = v35;
    }

    [v22 size];
    if (v37 >= width && ([v22 size], v38 >= height) || (objc_msgSend(v22, "size"), v40 = v39, objc_msgSend(imageCopy, "size"), v40 >= v41) && (objc_msgSend(v22, "size"), v43 = v42, objc_msgSend(imageCopy, "size"), v43 >= v44))
    {
      v26 = v22;
LABEL_42:
      if (v20)
      {
        [v20 fittingSize];
        if (v55 < width || ([v20 fittingSize], v56 < height))
        {
          [v20 setFittingSize:width, height];
        }
      }

LABEL_46:

LABEL_47:
      [v26 size];
      v58 = v57;
      [imageCopy size];
      if (v58 > v59 || ([v26 size], v61 = v60, objc_msgSend(imageCopy, "size"), v61 > v62))
      {
        [imageCopy size];
        if (v63 >= width || ([imageCopy size], v64 >= height))
        {
          if (![MRUImageUtilities shouldTranscodeImage:imageCopy])
          {
            v65 = imageCopy;

            v26 = v65;
          }
        }
      }

      height = [MRUImageUtilities shouldResizeImage:v26 forFittingSize:width, height];
      v67 = [MRUImageUtilities shouldTranscodeImage:v26];
      currentSettings4 = [MEMORY[0x1E69B0B08] currentSettings];
      verboseImageLoadingLogging4 = [currentSettings4 verboseImageLoadingLogging];

      if (height)
      {
        if (verboseImageLoadingLogging4)
        {
          v70 = MCLogCategoryDefault();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v80 = uUIDString;
            _os_log_impl(&dword_1A20FC000, v70, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> resizing image.", buf, 0xCu);
          }
        }

        height2 = [MRUImageUtilities resizedImage:v26 forFittingSize:width, height];
      }

      else
      {
        if (v67)
        {
          if (verboseImageLoadingLogging4)
          {
            v72 = MCLogCategoryDefault();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v80 = uUIDString;
              _os_log_impl(&dword_1A20FC000, v72, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> transcoding image.", buf, 0xCu);
            }
          }

          v73 = [MRUImageUtilities jpegDataForImage:v26];
          if (v73)
          {
            v25 = [MEMORY[0x1E69DCAB8] imageWithData:v73];
          }

          else
          {
            v25 = 0;
          }

          goto LABEL_74;
        }

        if (verboseImageLoadingLogging4)
        {
          v74 = MCLogCategoryDefault();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v80 = uUIDString;
            _os_log_impl(&dword_1A20FC000, v74, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> derived image is appropriate for display.", buf, 0xCu);
          }
        }

        height2 = v26;
      }

      v25 = height2;
LABEL_74:
      currentSettings5 = [MEMORY[0x1E69B0B08] currentSettings];
      verboseImageLoadingLogging5 = [currentSettings5 verboseImageLoadingLogging];

      if (!verboseImageLoadingLogging5)
      {
LABEL_84:

        goto LABEL_85;
      }

      v18 = MCLogCategoryDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v80 = uUIDString;
        v81 = 2112;
        v82 = v25;
        _os_log_impl(&dword_1A20FC000, v18, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> Result: %@", buf, 0x16u);
      }

LABEL_83:

      goto LABEL_84;
    }

    currentSettings6 = [MEMORY[0x1E69B0B08] currentSettings];
    verboseImageLoadingLogging6 = [currentSettings6 verboseImageLoadingLogging];

    if (verboseImageLoadingLogging6)
    {
      v47 = MCLogCategoryDefault();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = uUIDString;
        _os_log_impl(&dword_1A20FC000, v47, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> regenerating derived image.", buf, 0xCu);
      }
    }

    v48 = [MRUImageUtilities derivedSourceImageForImage:imageCopy];
    if (v48)
    {
      v26 = v48;
      currentSettings7 = [MEMORY[0x1E69B0B08] currentSettings];
      verboseImageLoadingLogging7 = [currentSettings7 verboseImageLoadingLogging];

      if (verboseImageLoadingLogging7)
      {
        v51 = MCLogCategoryDefault();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          [v26 size];
          v52 = NSStringFromCGSize(v89);
          *buf = 138412802;
          v80 = uUIDString;
          v81 = 2112;
          v82 = v52;
          v83 = 2112;
          v84 = v18;
          _os_log_impl(&dword_1A20FC000, v51, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> setting regenerated derived image of size %@ for identifier %@.", buf, 0x20u);
        }
      }

      v53 = objc_opt_new();

      [v53 setImage:v26];
      [v53 setIdentifier:v18];
      [v53 setFittingSize:width, height];
      [v53 startEvictionTimer];
      v54 = +[MRUImageUtilities cache];
      [v54 setObject:v53 forKey:v18];

      v20 = v53;
      goto LABEL_42;
    }

    v77 = MCLogCategoryDefault();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v80 = uUIDString;
      _os_log_impl(&dword_1A20FC000, v77, OS_LOG_TYPE_ERROR, "[MRUImageUtilities] formatImageForDisplay<%@> returning nil due to error in regenerating derived image", buf, 0xCu);
    }

LABEL_82:

    v25 = 0;
    v26 = v22;
    goto LABEL_83;
  }

  currentSettings8 = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging8 = [currentSettings8 verboseImageLoadingLogging];

  if (!verboseImageLoadingLogging8)
  {
    v25 = 0;
    goto LABEL_86;
  }

  v20 = MCLogCategoryDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = uUIDString;
    _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> returning nil for nil image.", buf, 0xCu);
  }

  v25 = 0;
LABEL_85:

LABEL_86:

  return v25;
}

+ (id)formattedImageForIdentifier:(id)identifier size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [identifier copy];
  v7 = +[MRUImageUtilities cache];
  v8 = [v7 objectForKey:v6];

  image = [v8 image];
  [image size];
  if (width >= height)
  {
    v11 = width;
  }

  else
  {
    v11 = height;
  }

  if (v11 <= 180.0)
  {
    v12 = 4.0;
  }

  else
  {
    v12 = 6.0;
  }

  if (v10 >= width - v12)
  {
    v14 = 1;
  }

  else
  {
    [image size];
    v14 = v13 >= height - v12;
  }

  [v8 fittingSize];
  if (v15 >= width)
  {
    v17 = 1;
  }

  else
  {
    [v8 fittingSize];
    v17 = v16 >= height;
  }

  height = 0;
  if (image && (v14 || v17))
  {
    height = [MRUImageUtilities formatImage:image withIdentifier:v6 forDisplayAtSize:0 useCache:width, height];
  }

  return height;
}

+ (id)derivedSourceImageForImage:(id)image
{
  v25 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v6 = +[MRUImageLoaderCoordinator sharedCoordinator];
  [v6 requestSize];
  v8 = v7;

  v9 = +[MRUImageLoaderCoordinator sharedCoordinator];
  [v9 requestSize];
  v11 = v10;

  if (v8 < v11)
  {
    v8 = v11;
  }

  v12 = [MRUImageUtilities shouldResizeImage:imageCopy forFittingSize:v8, v8];
  v13 = [MRUImageUtilities shouldTranscodeImage:imageCopy];
  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

  if (v12)
  {
    if (verboseImageLoadingLogging)
    {
      v16 = MCLogCategoryDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = uUIDString;
        _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] derivedSourceImageForImage<%@> resizing image.", &v23, 0xCu);
      }
    }

    v17 = [MRUImageUtilities resizedImage:imageCopy forFittingSize:v8, v8];
LABEL_21:
    v20 = v17;
    goto LABEL_24;
  }

  if (!v13)
  {
    if (verboseImageLoadingLogging)
    {
      v21 = MCLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = uUIDString;
        _os_log_impl(&dword_1A20FC000, v21, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] derivedSourceImageForImage<%@> returning original.", &v23, 0xCu);
      }
    }

    v17 = imageCopy;
    goto LABEL_21;
  }

  if (verboseImageLoadingLogging)
  {
    v18 = MCLogCategoryDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = uUIDString;
      _os_log_impl(&dword_1A20FC000, v18, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] derivedSourceImageForImage<%@> transcoding image.", &v23, 0xCu);
    }
  }

  v19 = [MRUImageUtilities jpegDataForImage:imageCopy];
  if (v19)
  {
    v20 = [MEMORY[0x1E69DCAB8] imageWithData:v19];
  }

  else
  {
    v20 = 0;
  }

LABEL_24:

  return v20;
}

+ (BOOL)shouldResizeImage:(id)image forFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [image size];
  v8 = v6 / width;
  if (v6 / width < v7 / height)
  {
    v8 = v7 / height;
  }

  v9 = v6 - width;
  v10 = v7 - height;
  if (v9 < v10)
  {
    v9 = v10;
  }

  return v8 > 1.25 && v9 > 100.0;
}

+ (id)resizedImage:(id)image forFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v44 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

  if (verboseImageLoadingLogging)
  {
    v11 = MCLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v46.width = width;
      v46.height = height;
      v12 = NSStringFromCGSize(v46);
      *buf = 138412802;
      v39 = uUIDString;
      v40 = 2112;
      v41 = imageCopy;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] resizedImage<%@> %@ to fitting size %@", buf, 0x20u);
    }
  }

  [imageCopy size];
  MSVImageUtilitiesMakeBoundingBoxSize();
  v14 = v13;
  v16 = v15;
  v17 = [MRUImageUtilities sourceDataForImage:imageCopy];
  if (v17)
  {
    v18 = *MEMORY[0x1E696E0A8];
    v36 = *MEMORY[0x1E696E0A8];
    v19 = MEMORY[0x1E695E110];
    v37 = MEMORY[0x1E695E110];
    v20 = CGImageSourceCreateWithData(v17, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1]);
    [MRUImageUtilities sizeFromSource:v20];
    if (v14 >= v16)
    {
      v21 = v14;
    }

    else
    {
      v21 = v16;
    }

    v22 = v21;
    v23 = [MRUImageUtilities subsampleFactorForMaxPixelSize:v21 imageSize:?];
    v35[0] = v19;
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:{v23, v18, *MEMORY[0x1E696E0F8]}];
    v35[1] = v24;
    v34[2] = *MEMORY[0x1E696D328];
    v25 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
    v34[3] = *MEMORY[0x1E696D338];
    v35[2] = v25;
    v35[3] = &unk_1F148B4B0;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];

    v27 = objc_opt_new();
    v28 = CGImageDestinationCreateWithData(v27, @"public.jpeg", 1uLL, v26);
    CGImageDestinationAddImageFromSource(v28, v20, 0, v26);
    CGImageDestinationFinalize(v28);
    v29 = [MEMORY[0x1E69DCAB8] imageWithData:v27];
    currentSettings2 = [MEMORY[0x1E69B0B08] currentSettings];
    verboseImageLoadingLogging2 = [currentSettings2 verboseImageLoadingLogging];

    if (verboseImageLoadingLogging2)
    {
      v32 = MCLogCategoryDefault();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v39 = uUIDString;
        v40 = 2112;
        v41 = v29;
        _os_log_impl(&dword_1A20FC000, v32, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] resizedImage<%@> Result: %@", buf, 0x16u);
      }
    }

    CFRelease(v20);
    CFRelease(v28);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (CGSize)sizeFromSource:(CGImageSource *)source
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696E0A8];
  v11[0] = MEMORY[0x1E695E110];
  v3 = CGImageSourceCopyPropertiesAtIndex(source, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1]);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
  v5 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
  integerValue = [v4 integerValue];
  integerValue2 = [v5 integerValue];

  v8 = integerValue;
  v9 = integerValue2;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (int64_t)subsampleFactorForMaxPixelSize:(int64_t)size imageSize:(CGSize)imageSize
{
  if (imageSize.width < imageSize.height)
  {
    imageSize.width = imageSize.height;
  }

  return vcvtmd_s64_f64(imageSize.width / size);
}

@end