@interface MRUImageUtilities
+ (BOOL)imageIsEfficientFormat:(id)a3;
+ (BOOL)imageIsJPEG:(id)a3;
+ (BOOL)shouldResizeImage:(id)a3 forFittingSize:(CGSize)a4;
+ (CGSize)sizeFromSource:(CGImageSource *)a3;
+ (MSVLRUDictionary)cache;
+ (id)derivedSourceImageForImage:(id)a3;
+ (id)formatImage:(id)a3 withIdentifier:(id)a4 forDisplayAtSize:(CGSize)a5 useCache:(BOOL)a6;
+ (id)formattedImageForIdentifier:(id)a3 size:(CGSize)a4;
+ (id)jpegDataForImage:(id)a3;
+ (id)resizedImage:(id)a3 forFittingSize:(CGSize)a4;
+ (id)sourceDataForImage:(id)a3;
+ (int64_t)subsampleFactorForMaxPixelSize:(int64_t)a3 imageSize:(CGSize)a4;
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

+ (id)sourceDataForImage:(id)a3
{
  [a3 CGImage];
  v3 = CGImageCopySourceData();

  return v3;
}

+ (BOOL)imageIsJPEG:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 CGImage])
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

+ (BOOL)imageIsEfficientFormat:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 CGImage])
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

+ (id)jpegDataForImage:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([MRUImageUtilities imageIsJPEG:v3]&& ([MRUImageUtilities sourceDataForImage:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (UIImageJPEGRepresentation(v3, 0.9), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    v6 = MCLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_ERROR, "[MRUImageUtilities] Failed to produce JPEG data for image %@.", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)formatImage:(id)a3 withIdentifier:(id)a4 forDisplayAtSize:(CGSize)a5 useCache:(BOOL)a6
{
  v6 = a6;
  height = a5.height;
  width = a5.width;
  v85 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];

  v14 = [MEMORY[0x1E69B0B08] currentSettings];
  v15 = [v14 verboseImageLoadingLogging];

  if (v15)
  {
    v16 = MCLogCategoryDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v87.width = width;
      v87.height = height;
      v17 = NSStringFromCGSize(v87);
      *buf = 138412802;
      v80 = v13;
      v81 = 2112;
      v82 = v10;
      v83 = 2112;
      v84 = v17;
      _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> %@ at size: %@", buf, 0x20u);
    }
  }

  if (v10)
  {
    if (!v6)
    {
      v26 = v10;
      v20 = 0;
      goto LABEL_47;
    }

    v18 = [v11 copy];
    if (!v18)
    {
      v27 = [MEMORY[0x1E69B0B08] currentSettings];
      v28 = [v27 verboseImageLoadingLogging];

      if (v28)
      {
        v29 = MCLogCategoryDefault();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v80 = v13;
          _os_log_impl(&dword_1A20FC000, v29, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> cannot generate derived image for nil identifier. Will format original.", buf, 0xCu);
        }
      }

      v26 = v10;
      v20 = 0;
      goto LABEL_46;
    }

    v19 = +[MRUImageUtilities cache];
    v20 = [v19 objectForKey:v18];

    v21 = [v20 image];
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v30 = [MRUImageUtilities derivedSourceImageForImage:v10];
      if (!v30)
      {
        v77 = MCLogCategoryDefault();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v80 = v13;
          _os_log_impl(&dword_1A20FC000, v77, OS_LOG_TYPE_ERROR, "[MRUImageUtilities] formatImageForDisplay<%@> returning nil because unable to create derived image.", buf, 0xCu);
        }

        v22 = 0;
        goto LABEL_82;
      }

      v22 = v30;
      v31 = [MEMORY[0x1E69B0B08] currentSettings];
      v32 = [v31 verboseImageLoadingLogging];

      if (v32)
      {
        v33 = MCLogCategoryDefault();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          [v22 size];
          v34 = NSStringFromCGSize(v88);
          *buf = 138412802;
          v80 = v13;
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
    if (v37 >= width && ([v22 size], v38 >= height) || (objc_msgSend(v22, "size"), v40 = v39, objc_msgSend(v10, "size"), v40 >= v41) && (objc_msgSend(v22, "size"), v43 = v42, objc_msgSend(v10, "size"), v43 >= v44))
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
      [v10 size];
      if (v58 > v59 || ([v26 size], v61 = v60, objc_msgSend(v10, "size"), v61 > v62))
      {
        [v10 size];
        if (v63 >= width || ([v10 size], v64 >= height))
        {
          if (![MRUImageUtilities shouldTranscodeImage:v10])
          {
            v65 = v10;

            v26 = v65;
          }
        }
      }

      v66 = [MRUImageUtilities shouldResizeImage:v26 forFittingSize:width, height];
      v67 = [MRUImageUtilities shouldTranscodeImage:v26];
      v68 = [MEMORY[0x1E69B0B08] currentSettings];
      v69 = [v68 verboseImageLoadingLogging];

      if (v66)
      {
        if (v69)
        {
          v70 = MCLogCategoryDefault();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v80 = v13;
            _os_log_impl(&dword_1A20FC000, v70, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> resizing image.", buf, 0xCu);
          }
        }

        v71 = [MRUImageUtilities resizedImage:v26 forFittingSize:width, height];
      }

      else
      {
        if (v67)
        {
          if (v69)
          {
            v72 = MCLogCategoryDefault();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v80 = v13;
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

        if (v69)
        {
          v74 = MCLogCategoryDefault();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v80 = v13;
            _os_log_impl(&dword_1A20FC000, v74, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> derived image is appropriate for display.", buf, 0xCu);
          }
        }

        v71 = v26;
      }

      v25 = v71;
LABEL_74:
      v75 = [MEMORY[0x1E69B0B08] currentSettings];
      v76 = [v75 verboseImageLoadingLogging];

      if (!v76)
      {
LABEL_84:

        goto LABEL_85;
      }

      v18 = MCLogCategoryDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v80 = v13;
        v81 = 2112;
        v82 = v25;
        _os_log_impl(&dword_1A20FC000, v18, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> Result: %@", buf, 0x16u);
      }

LABEL_83:

      goto LABEL_84;
    }

    v45 = [MEMORY[0x1E69B0B08] currentSettings];
    v46 = [v45 verboseImageLoadingLogging];

    if (v46)
    {
      v47 = MCLogCategoryDefault();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = v13;
        _os_log_impl(&dword_1A20FC000, v47, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> regenerating derived image.", buf, 0xCu);
      }
    }

    v48 = [MRUImageUtilities derivedSourceImageForImage:v10];
    if (v48)
    {
      v26 = v48;
      v49 = [MEMORY[0x1E69B0B08] currentSettings];
      v50 = [v49 verboseImageLoadingLogging];

      if (v50)
      {
        v51 = MCLogCategoryDefault();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          [v26 size];
          v52 = NSStringFromCGSize(v89);
          *buf = 138412802;
          v80 = v13;
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
      v80 = v13;
      _os_log_impl(&dword_1A20FC000, v77, OS_LOG_TYPE_ERROR, "[MRUImageUtilities] formatImageForDisplay<%@> returning nil due to error in regenerating derived image", buf, 0xCu);
    }

LABEL_82:

    v25 = 0;
    v26 = v22;
    goto LABEL_83;
  }

  v23 = [MEMORY[0x1E69B0B08] currentSettings];
  v24 = [v23 verboseImageLoadingLogging];

  if (!v24)
  {
    v25 = 0;
    goto LABEL_86;
  }

  v20 = MCLogCategoryDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = v13;
    _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> returning nil for nil image.", buf, 0xCu);
  }

  v25 = 0;
LABEL_85:

LABEL_86:

  return v25;
}

+ (id)formattedImageForIdentifier:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [a3 copy];
  v7 = +[MRUImageUtilities cache];
  v8 = [v7 objectForKey:v6];

  v9 = [v8 image];
  [v9 size];
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
    [v9 size];
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

  v18 = 0;
  if (v9 && (v14 || v17))
  {
    v18 = [MRUImageUtilities formatImage:v9 withIdentifier:v6 forDisplayAtSize:0 useCache:width, height];
  }

  return v18;
}

+ (id)derivedSourceImageForImage:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];

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

  v12 = [MRUImageUtilities shouldResizeImage:v3 forFittingSize:v8, v8];
  v13 = [MRUImageUtilities shouldTranscodeImage:v3];
  v14 = [MEMORY[0x1E69B0B08] currentSettings];
  v15 = [v14 verboseImageLoadingLogging];

  if (v12)
  {
    if (v15)
    {
      v16 = MCLogCategoryDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v5;
        _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] derivedSourceImageForImage<%@> resizing image.", &v23, 0xCu);
      }
    }

    v17 = [MRUImageUtilities resizedImage:v3 forFittingSize:v8, v8];
LABEL_21:
    v20 = v17;
    goto LABEL_24;
  }

  if (!v13)
  {
    if (v15)
    {
      v21 = MCLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v5;
        _os_log_impl(&dword_1A20FC000, v21, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] derivedSourceImageForImage<%@> returning original.", &v23, 0xCu);
      }
    }

    v17 = v3;
    goto LABEL_21;
  }

  if (v15)
  {
    v18 = MCLogCategoryDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v5;
      _os_log_impl(&dword_1A20FC000, v18, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] derivedSourceImageForImage<%@> transcoding image.", &v23, 0xCu);
    }
  }

  v19 = [MRUImageUtilities jpegDataForImage:v3];
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

+ (BOOL)shouldResizeImage:(id)a3 forFittingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [a3 size];
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

+ (id)resizedImage:(id)a3 forFittingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];

  v9 = [MEMORY[0x1E69B0B08] currentSettings];
  v10 = [v9 verboseImageLoadingLogging];

  if (v10)
  {
    v11 = MCLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v46.width = width;
      v46.height = height;
      v12 = NSStringFromCGSize(v46);
      *buf = 138412802;
      v39 = v8;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] resizedImage<%@> %@ to fitting size %@", buf, 0x20u);
    }
  }

  [v6 size];
  MSVImageUtilitiesMakeBoundingBoxSize();
  v14 = v13;
  v16 = v15;
  v17 = [MRUImageUtilities sourceDataForImage:v6];
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
    v30 = [MEMORY[0x1E69B0B08] currentSettings];
    v31 = [v30 verboseImageLoadingLogging];

    if (v31)
    {
      v32 = MCLogCategoryDefault();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v39 = v8;
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

+ (CGSize)sizeFromSource:(CGImageSource *)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696E0A8];
  v11[0] = MEMORY[0x1E695E110];
  v3 = CGImageSourceCopyPropertiesAtIndex(a3, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1]);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
  v5 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
  v6 = [v4 integerValue];
  v7 = [v5 integerValue];

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (int64_t)subsampleFactorForMaxPixelSize:(int64_t)a3 imageSize:(CGSize)a4
{
  if (a4.width < a4.height)
  {
    a4.width = a4.height;
  }

  return vcvtmd_s64_f64(a4.width / a3);
}

@end