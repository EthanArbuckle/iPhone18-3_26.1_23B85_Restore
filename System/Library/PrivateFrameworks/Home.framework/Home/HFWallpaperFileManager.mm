@interface HFWallpaperFileManager
- (BOOL)originalImageExistsForWallpaper:(id)wallpaper;
- (HFWallpaperFileManager)init;
- (id)_originalImageForWallpaper:(id)wallpaper withFileName:(id)name;
- (id)fileNameForCustomBlurWallpaper:(id)wallpaper;
- (id)fileNameForDefaultBlurWallpaper:(id)wallpaper userInterfaceStyle:(int64_t)style;
- (id)filenameForWallpaper:(id)wallpaper;
- (id)originalImageForWallpaper:(id)wallpaper;
- (void)_saveOriginalImage:(id)image forWallpaper:(id)wallpaper withFileName:(id)name;
- (void)pruneUnusedOriginalWallpaperImages:(id)images;
- (void)saveOriginalImage:(id)image forWallpaper:(id)wallpaper;
@end

@implementation HFWallpaperFileManager

- (HFWallpaperFileManager)init
{
  v6.receiver = self;
  v6.super_class = HFWallpaperFileManager;
  v2 = [(HFWallpaperFileManager *)&v6 init];
  if (v2)
  {
    v3 = +[HFUtilities wallpaperURL];
    wallpaperFolderURL = v2->_wallpaperFolderURL;
    v2->_wallpaperFolderURL = v3;
  }

  return v2;
}

- (BOOL)originalImageExistsForWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  if ([wallpaperCopy type] == 4)
  {
    defaultManager4 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:wallpaperCopy userInterfaceStyle:1];
    v6 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:wallpaperCopy userInterfaceStyle:2];
    defaultManager3 = v6;
    v8 = 0;
    if (defaultManager4 && v6)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      wallpaperFolderURL = [(HFWallpaperFileManager *)self wallpaperFolderURL];
      v11 = [wallpaperFolderURL URLByAppendingPathComponent:defaultManager4];
      path = [v11 path];
      v13 = [defaultManager fileExistsAtPath:path];

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      wallpaperFolderURL2 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
      v16 = [wallpaperFolderURL2 URLByAppendingPathComponent:defaultManager3];
      path2 = [v16 path];
      LOBYTE(path) = [defaultManager2 fileExistsAtPath:path2];

      v8 = v13 & path;
    }
  }

  else
  {
    if ([wallpaperCopy type] == 6)
    {
      defaultManager4 = [(HFWallpaperFileManager *)self fileNameForCustomBlurWallpaper:wallpaperCopy];
      if (!defaultManager4)
      {
        v8 = 0;
        goto LABEL_12;
      }

      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      wallpaperFolderURL3 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
      v19 = [wallpaperFolderURL3 URLByAppendingPathComponent:defaultManager4];
      path3 = [v19 path];
      v21 = defaultManager3;
    }

    else
    {
      v22 = [(HFWallpaperFileManager *)self filenameForWallpaper:wallpaperCopy];

      if (!v22)
      {
        v8 = 0;
        goto LABEL_13;
      }

      defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
      defaultManager3 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
      wallpaperFolderURL3 = [(HFWallpaperFileManager *)self filenameForWallpaper:wallpaperCopy];
      v19 = [defaultManager3 URLByAppendingPathComponent:wallpaperFolderURL3];
      path3 = [v19 path];
      v21 = defaultManager4;
    }

    v8 = [v21 fileExistsAtPath:path3];
  }

LABEL_12:
LABEL_13:

  return v8;
}

- (id)originalImageForWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  if ([wallpaperCopy type] == 4)
  {
    v5 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:wallpaperCopy userInterfaceStyle:1];
    v6 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:wallpaperCopy userInterfaceStyle:2];
    v7 = [(HFWallpaperFileManager *)self _originalImageForWallpaper:wallpaperCopy withFileName:v5];
    v8 = [(HFWallpaperFileManager *)self _originalImageForWallpaper:wallpaperCopy withFileName:v6];
    imageAsset = [v7 imageAsset];
    v10 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    [imageAsset registerImage:v8 withTraitCollection:v10];
  }

  else
  {
    if ([wallpaperCopy type] == 6)
    {
      [(HFWallpaperFileManager *)self fileNameForCustomBlurWallpaper:wallpaperCopy];
    }

    else
    {
      [(HFWallpaperFileManager *)self filenameForWallpaper:wallpaperCopy];
    }
    v5 = ;
    v7 = [(HFWallpaperFileManager *)self _originalImageForWallpaper:wallpaperCopy withFileName:v5];
  }

  return v7;
}

- (id)_originalImageForWallpaper:(id)wallpaper withFileName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  wallpaperCopy = wallpaper;
  nameCopy = name;
  wallpaperFolderURL = [(HFWallpaperFileManager *)self wallpaperFolderURL];
  v9 = [wallpaperFolderURL URLByAppendingPathComponent:nameCopy];

  v10 = HFLogForCategory(0x4EuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = wallpaperCopy;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Retrieving original image for wallpaper %@", buf, 0xCu);
  }

  v19 = 0;
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9 options:1 error:&v19];
  v12 = v19;
  v13 = MEMORY[0x277D755B8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v15 = [v13 imageWithData:v11 scale:?];

  if (!v15)
  {
    NSLog(&cfstr_UnableToLoadOr.isa, wallpaperCopy, v12);
    v20 = wallpaperCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [(HFWallpaperFileManager *)self pruneUnusedOriginalWallpaperImages:v16];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)saveOriginalImage:(id)image forWallpaper:(id)wallpaper
{
  imageCopy = image;
  wallpaperCopy = wallpaper;
  if ([wallpaperCopy type] == 4)
  {
    v7 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:wallpaperCopy userInterfaceStyle:1];
    v8 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:wallpaperCopy userInterfaceStyle:2];
    imageAsset = [imageCopy imageAsset];
    v10 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v11 = [imageAsset imageWithTraitCollection:v10];

    imageAsset2 = [imageCopy imageAsset];
    v13 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    v14 = [imageAsset2 imageWithTraitCollection:v13];

    [(HFWallpaperFileManager *)self _saveOriginalImage:v11 forWallpaper:wallpaperCopy withFileName:v7];
    [(HFWallpaperFileManager *)self _saveOriginalImage:v14 forWallpaper:wallpaperCopy withFileName:v8];
  }

  else if ([wallpaperCopy type] == 6)
  {
    v7 = [(HFWallpaperFileManager *)self fileNameForCustomBlurWallpaper:wallpaperCopy];
    v15 = +[HFWallpaperManager sharedInstance];
    v16 = [v15 processOriginalBlurredImageFromWallpaper:wallpaperCopy originalImage:imageCopy];

    [(HFWallpaperFileManager *)self _saveOriginalImage:v16 forWallpaper:wallpaperCopy withFileName:v7];
    v17 = [(HFWallpaperFileManager *)self filenameForWallpaper:wallpaperCopy];
    [(HFWallpaperFileManager *)self _saveOriginalImage:imageCopy forWallpaper:wallpaperCopy withFileName:v17];
  }

  else
  {
    v7 = [(HFWallpaperFileManager *)self filenameForWallpaper:wallpaperCopy];
    [(HFWallpaperFileManager *)self _saveOriginalImage:imageCopy forWallpaper:wallpaperCopy withFileName:v7];
  }
}

- (void)_saveOriginalImage:(id)image forWallpaper:(id)wallpaper withFileName:(id)name
{
  v34 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  wallpaperCopy = wallpaper;
  nameCopy = name;
  v11 = HFLogForCategory(0x4EuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412546;
    v31 = nameCopy;
    v32 = 2112;
    v33 = wallpaperCopy;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Writing out original image at wallpaper path: %@ for wallpaper %@", &v30, 0x16u);
  }

  wallpaperFolderURL = [(HFWallpaperFileManager *)self wallpaperFolderURL];
  v13 = [wallpaperFolderURL URLByAppendingPathComponent:nameCopy];
  path = [v13 path];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  wallpaperFolderURL2 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
  v17 = [wallpaperFolderURL2 URLByAppendingPathComponent:nameCopy];
  path2 = [v17 path];
  v19 = [defaultManager fileExistsAtPath:path2];

  if (v19)
  {
    v20 = HFLogForCategory(0x4EuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412546;
      v31 = wallpaperCopy;
      v32 = 2112;
      v33 = nameCopy;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "Skipping write for wallpaper %@ as fileName %@ already exists", &v30, 0x16u);
    }
  }

  else
  {
    type = [wallpaperCopy type];
    imageWithNormalizedOrientation = [imageCopy imageWithNormalizedOrientation];
    v23 = imageWithNormalizedOrientation;
    if (type)
    {
      UIImageJPEGRepresentation(imageWithNormalizedOrientation, 1.0);
    }

    else
    {
      UIImagePNGRepresentation(imageWithNormalizedOrientation);
    }
    v20 = ;

    if (!v20)
    {
      v24 = HFLogForCategory(0x4EuLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v30 = 138412290;
        v31 = wallpaperCopy;
        _os_log_error_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_ERROR, "Failed to generate image data for wallpaper %@", &v30, 0xCu);
      }
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = [defaultManager2 createFileAtPath:path contents:v20 attributes:0];

    v27 = HFLogForCategory(0x4EuLL);
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412546;
        v31 = wallpaperCopy;
        v32 = 2112;
        v33 = path;
        _os_log_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_DEFAULT, "Wrote original wallpaper image %@ to path %@", &v30, 0x16u);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v30 = 138412290;
      v31 = path;
      _os_log_error_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_ERROR, "Failed to write original wallpaper image at path %@", &v30, 0xCu);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)pruneUnusedOriginalWallpaperImages:(id)images
{
  v42 = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  v5 = [MEMORY[0x277CBEB58] set];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __61__HFWallpaperFileManager_pruneUnusedOriginalWallpaperImages___block_invoke;
  v35[3] = &unk_277DFCBC0;
  v35[4] = self;
  v6 = v5;
  v36 = v6;
  v28 = imagesCopy;
  [imagesCopy na_each:v35];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  selfCopy = self;
  wallpaperFolderURL = [(HFWallpaperFileManager *)self wallpaperFolderURL];
  path = [wallpaperFolderURL path];
  v10 = [defaultManager contentsOfDirectoryAtPath:path error:0];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        if (([v6 containsObject:v16] & 1) == 0)
        {
          wallpaperFolderURL2 = [(HFWallpaperFileManager *)selfCopy wallpaperFolderURL];
          v18 = [wallpaperFolderURL2 URLByAppendingPathComponent:v16];

          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          path2 = [v18 path];
          v30 = 0;
          v21 = [defaultManager2 removeItemAtPath:path2 error:&v30];
          v22 = v30;

          v23 = HFLogForCategory(0x4EuLL);
          v24 = v23;
          if (v21)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              path3 = [v18 path];
              *buf = 138412290;
              v38 = path3;
              _os_log_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEFAULT, "Removed unused wallpaper at path %@", buf, 0xCu);
              goto LABEL_10;
            }
          }

          else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            path3 = [v18 path];
            *buf = 138412546;
            v38 = path3;
            v39 = 2112;
            v40 = v22;
            _os_log_error_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_ERROR, "Failed to remove wallpaper at path %@ with error %@", buf, 0x16u);
LABEL_10:
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v26 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
      v13 = v26;
    }

    while (v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __61__HFWallpaperFileManager_pruneUnusedOriginalWallpaperImages___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 type] == 4)
  {
    v3 = [*(a1 + 32) fileNameForDefaultBlurWallpaper:v7 userInterfaceStyle:1];
    v4 = [*(a1 + 32) fileNameForDefaultBlurWallpaper:v7 userInterfaceStyle:2];
    [*(a1 + 40) na_safeAddObject:v3];
LABEL_5:
    [*(a1 + 40) na_safeAddObject:v4];

    goto LABEL_7;
  }

  v5 = [v7 type];
  v6 = *(a1 + 32);
  if (v5 == 6)
  {
    v3 = [v6 fileNameForCustomBlurWallpaper:v7];
    [*(a1 + 40) na_safeAddObject:v3];
    v4 = [*(a1 + 32) filenameForWallpaper:v7];
    goto LABEL_5;
  }

  v3 = [v6 filenameForWallpaper:v7];
  [*(a1 + 40) na_safeAddObject:v3];
LABEL_7:
}

- (id)filenameForWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  type = [wallpaperCopy type];
  if (type > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_277DFCBE0[type];
  }

  assetIdentifier = [wallpaperCopy assetIdentifier];

  v7 = [assetIdentifier stringByAppendingPathExtension:v5];

  return v7;
}

- (id)fileNameForDefaultBlurWallpaper:(id)wallpaper userInterfaceStyle:(int64_t)style
{
  assetIdentifier = [wallpaper assetIdentifier];
  v6 = assetIdentifier;
  if (style == 2)
  {
    v7 = @"_dark";
  }

  else
  {
    v7 = @"_light";
  }

  v8 = [assetIdentifier stringByAppendingString:v7];

  v9 = [v8 stringByAppendingPathExtension:@"jpg"];

  return v9;
}

- (id)fileNameForCustomBlurWallpaper:(id)wallpaper
{
  assetIdentifier = [wallpaper assetIdentifier];
  v4 = [assetIdentifier stringByAppendingString:@"_blur"];

  v5 = [v4 stringByAppendingPathExtension:@"jpg"];

  return v5;
}

@end