@interface HFWallpaperFileManager
- (BOOL)originalImageExistsForWallpaper:(id)a3;
- (HFWallpaperFileManager)init;
- (id)_originalImageForWallpaper:(id)a3 withFileName:(id)a4;
- (id)fileNameForCustomBlurWallpaper:(id)a3;
- (id)fileNameForDefaultBlurWallpaper:(id)a3 userInterfaceStyle:(int64_t)a4;
- (id)filenameForWallpaper:(id)a3;
- (id)originalImageForWallpaper:(id)a3;
- (void)_saveOriginalImage:(id)a3 forWallpaper:(id)a4 withFileName:(id)a5;
- (void)pruneUnusedOriginalWallpaperImages:(id)a3;
- (void)saveOriginalImage:(id)a3 forWallpaper:(id)a4;
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

- (BOOL)originalImageExistsForWallpaper:(id)a3
{
  v4 = a3;
  if ([v4 type] == 4)
  {
    v5 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:v4 userInterfaceStyle:1];
    v6 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:v4 userInterfaceStyle:2];
    v7 = v6;
    v8 = 0;
    if (v5 && v6)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
      v11 = [v10 URLByAppendingPathComponent:v5];
      v12 = [v11 path];
      v13 = [v9 fileExistsAtPath:v12];

      v14 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
      v16 = [v15 URLByAppendingPathComponent:v7];
      v17 = [v16 path];
      LOBYTE(v12) = [v14 fileExistsAtPath:v17];

      v8 = v13 & v12;
    }
  }

  else
  {
    if ([v4 type] == 6)
    {
      v5 = [(HFWallpaperFileManager *)self fileNameForCustomBlurWallpaper:v4];
      if (!v5)
      {
        v8 = 0;
        goto LABEL_12;
      }

      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
      v19 = [v18 URLByAppendingPathComponent:v5];
      v20 = [v19 path];
      v21 = v7;
    }

    else
    {
      v22 = [(HFWallpaperFileManager *)self filenameForWallpaper:v4];

      if (!v22)
      {
        v8 = 0;
        goto LABEL_13;
      }

      v5 = [MEMORY[0x277CCAA00] defaultManager];
      v7 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
      v18 = [(HFWallpaperFileManager *)self filenameForWallpaper:v4];
      v19 = [v7 URLByAppendingPathComponent:v18];
      v20 = [v19 path];
      v21 = v5;
    }

    v8 = [v21 fileExistsAtPath:v20];
  }

LABEL_12:
LABEL_13:

  return v8;
}

- (id)originalImageForWallpaper:(id)a3
{
  v4 = a3;
  if ([v4 type] == 4)
  {
    v5 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:v4 userInterfaceStyle:1];
    v6 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:v4 userInterfaceStyle:2];
    v7 = [(HFWallpaperFileManager *)self _originalImageForWallpaper:v4 withFileName:v5];
    v8 = [(HFWallpaperFileManager *)self _originalImageForWallpaper:v4 withFileName:v6];
    v9 = [v7 imageAsset];
    v10 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    [v9 registerImage:v8 withTraitCollection:v10];
  }

  else
  {
    if ([v4 type] == 6)
    {
      [(HFWallpaperFileManager *)self fileNameForCustomBlurWallpaper:v4];
    }

    else
    {
      [(HFWallpaperFileManager *)self filenameForWallpaper:v4];
    }
    v5 = ;
    v7 = [(HFWallpaperFileManager *)self _originalImageForWallpaper:v4 withFileName:v5];
  }

  return v7;
}

- (id)_originalImageForWallpaper:(id)a3 withFileName:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
  v9 = [v8 URLByAppendingPathComponent:v7];

  v10 = HFLogForCategory(0x4EuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Retrieving original image for wallpaper %@", buf, 0xCu);
  }

  v19 = 0;
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9 options:1 error:&v19];
  v12 = v19;
  v13 = MEMORY[0x277D755B8];
  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 scale];
  v15 = [v13 imageWithData:v11 scale:?];

  if (!v15)
  {
    NSLog(&cfstr_UnableToLoadOr.isa, v6, v12);
    v20 = v6;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [(HFWallpaperFileManager *)self pruneUnusedOriginalWallpaperImages:v16];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)saveOriginalImage:(id)a3 forWallpaper:(id)a4
{
  v18 = a3;
  v6 = a4;
  if ([v6 type] == 4)
  {
    v7 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:v6 userInterfaceStyle:1];
    v8 = [(HFWallpaperFileManager *)self fileNameForDefaultBlurWallpaper:v6 userInterfaceStyle:2];
    v9 = [v18 imageAsset];
    v10 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v11 = [v9 imageWithTraitCollection:v10];

    v12 = [v18 imageAsset];
    v13 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    v14 = [v12 imageWithTraitCollection:v13];

    [(HFWallpaperFileManager *)self _saveOriginalImage:v11 forWallpaper:v6 withFileName:v7];
    [(HFWallpaperFileManager *)self _saveOriginalImage:v14 forWallpaper:v6 withFileName:v8];
  }

  else if ([v6 type] == 6)
  {
    v7 = [(HFWallpaperFileManager *)self fileNameForCustomBlurWallpaper:v6];
    v15 = +[HFWallpaperManager sharedInstance];
    v16 = [v15 processOriginalBlurredImageFromWallpaper:v6 originalImage:v18];

    [(HFWallpaperFileManager *)self _saveOriginalImage:v16 forWallpaper:v6 withFileName:v7];
    v17 = [(HFWallpaperFileManager *)self filenameForWallpaper:v6];
    [(HFWallpaperFileManager *)self _saveOriginalImage:v18 forWallpaper:v6 withFileName:v17];
  }

  else
  {
    v7 = [(HFWallpaperFileManager *)self filenameForWallpaper:v6];
    [(HFWallpaperFileManager *)self _saveOriginalImage:v18 forWallpaper:v6 withFileName:v7];
  }
}

- (void)_saveOriginalImage:(id)a3 forWallpaper:(id)a4 withFileName:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = HFLogForCategory(0x4EuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412546;
    v31 = v10;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Writing out original image at wallpaper path: %@ for wallpaper %@", &v30, 0x16u);
  }

  v12 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
  v13 = [v12 URLByAppendingPathComponent:v10];
  v14 = [v13 path];

  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
  v17 = [v16 URLByAppendingPathComponent:v10];
  v18 = [v17 path];
  v19 = [v15 fileExistsAtPath:v18];

  if (v19)
  {
    v20 = HFLogForCategory(0x4EuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412546;
      v31 = v9;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "Skipping write for wallpaper %@ as fileName %@ already exists", &v30, 0x16u);
    }
  }

  else
  {
    v21 = [v9 type];
    v22 = [v8 imageWithNormalizedOrientation];
    v23 = v22;
    if (v21)
    {
      UIImageJPEGRepresentation(v22, 1.0);
    }

    else
    {
      UIImagePNGRepresentation(v22);
    }
    v20 = ;

    if (!v20)
    {
      v24 = HFLogForCategory(0x4EuLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v30 = 138412290;
        v31 = v9;
        _os_log_error_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_ERROR, "Failed to generate image data for wallpaper %@", &v30, 0xCu);
      }
    }

    v25 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = [v25 createFileAtPath:v14 contents:v20 attributes:0];

    v27 = HFLogForCategory(0x4EuLL);
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412546;
        v31 = v9;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_DEFAULT, "Wrote original wallpaper image %@ to path %@", &v30, 0x16u);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v30 = 138412290;
      v31 = v14;
      _os_log_error_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_ERROR, "Failed to write original wallpaper image at path %@", &v30, 0xCu);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)pruneUnusedOriginalWallpaperImages:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __61__HFWallpaperFileManager_pruneUnusedOriginalWallpaperImages___block_invoke;
  v35[3] = &unk_277DFCBC0;
  v35[4] = self;
  v6 = v5;
  v36 = v6;
  v28 = v4;
  [v4 na_each:v35];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v29 = self;
  v8 = [(HFWallpaperFileManager *)self wallpaperFolderURL];
  v9 = [v8 path];
  v10 = [v7 contentsOfDirectoryAtPath:v9 error:0];

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
          v17 = [(HFWallpaperFileManager *)v29 wallpaperFolderURL];
          v18 = [v17 URLByAppendingPathComponent:v16];

          v19 = [MEMORY[0x277CCAA00] defaultManager];
          v20 = [v18 path];
          v30 = 0;
          v21 = [v19 removeItemAtPath:v20 error:&v30];
          v22 = v30;

          v23 = HFLogForCategory(0x4EuLL);
          v24 = v23;
          if (v21)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v18 path];
              *buf = 138412290;
              v38 = v25;
              _os_log_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEFAULT, "Removed unused wallpaper at path %@", buf, 0xCu);
              goto LABEL_10;
            }
          }

          else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v25 = [v18 path];
            *buf = 138412546;
            v38 = v25;
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

- (id)filenameForWallpaper:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  if (v4 > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_277DFCBE0[v4];
  }

  v6 = [v3 assetIdentifier];

  v7 = [v6 stringByAppendingPathExtension:v5];

  return v7;
}

- (id)fileNameForDefaultBlurWallpaper:(id)a3 userInterfaceStyle:(int64_t)a4
{
  v5 = [a3 assetIdentifier];
  v6 = v5;
  if (a4 == 2)
  {
    v7 = @"_dark";
  }

  else
  {
    v7 = @"_light";
  }

  v8 = [v5 stringByAppendingString:v7];

  v9 = [v8 stringByAppendingPathExtension:@"jpg"];

  return v9;
}

- (id)fileNameForCustomBlurWallpaper:(id)a3
{
  v3 = [a3 assetIdentifier];
  v4 = [v3 stringByAppendingString:@"_blur"];

  v5 = [v4 stringByAppendingPathExtension:@"jpg"];

  return v5;
}

@end