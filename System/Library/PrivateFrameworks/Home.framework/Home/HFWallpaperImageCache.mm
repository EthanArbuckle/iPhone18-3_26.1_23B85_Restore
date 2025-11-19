@interface HFWallpaperImageCache
- (HFWallpaperImageCache)initWithIdentifier:(id)a3;
- (NSArray)supportedProcessedVariants;
- (id)_cacheKeyForCustomBlurWallpaper:(id)a3 withVariant:(int64_t)a4;
- (id)_cacheKeyForDefaultBlurWallpaper:(id)a3 withVariant:(int64_t)a4 forUserInterfaceStyle:(int64_t)a5;
- (id)_cacheKeyForWallpaper:(id)a3 withVariant:(int64_t)a4;
- (id)_imageForVariant:(int64_t)a3 wallpaper:(id)a4 imageKey:(id)a5 withOriginalImageGenerator:(id)a6;
- (id)imageForVariant:(int64_t)a3 wallpaper:(id)a4 withOriginalImageGenerator:(id)a5;
- (void)_saveVariants:(int64_t)a3 forWallpaper:(id)a4 originalImage:(id)a5 withImageKey:(id)a6;
- (void)pruneUnusedWallpaperVariants:(id)a3;
- (void)saveVariantsForWallpaper:(id)a3 originalImage:(id)a4;
@end

@implementation HFWallpaperImageCache

- (HFWallpaperImageCache)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFWallpaperImageCache;
  v5 = [(HFWallpaperImageCache *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CF0D68]) initWithUniqueIdentifier:v4];
    imageCache = v5->_imageCache;
    v5->_imageCache = v6;
  }

  return v5;
}

- (NSArray)supportedProcessedVariants
{
  v2 = [(HFWallpaperImageCache *)self processedWallpaperSource];
  v3 = [v2 supportedVariants];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)imageForVariant:(int64_t)a3 wallpaper:(id)a4 withOriginalImageGenerator:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v8 type] == 4)
  {
    v10 = [(HFWallpaperImageCache *)self _cacheKeyForDefaultBlurWallpaper:v8 withVariant:a3 forUserInterfaceStyle:1];
    v11 = [(HFWallpaperImageCache *)self _cacheKeyForDefaultBlurWallpaper:v8 withVariant:a3 forUserInterfaceStyle:2];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__HFWallpaperImageCache_imageForVariant_wallpaper_withOriginalImageGenerator___block_invoke;
    v23[3] = &unk_277E00450;
    v12 = v9;
    v24 = v12;
    v13 = [(HFWallpaperImageCache *)self _imageForVariant:a3 wallpaper:v8 imageKey:v10 withOriginalImageGenerator:v23];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __78__HFWallpaperImageCache_imageForVariant_wallpaper_withOriginalImageGenerator___block_invoke_2;
    v21 = &unk_277E00450;
    v22 = v12;
    v14 = [(HFWallpaperImageCache *)self _imageForVariant:a3 wallpaper:v8 imageKey:v11 withOriginalImageGenerator:&v18];
    v15 = [v13 imageAsset];
    v16 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    [v15 registerImage:v14 withTraitCollection:v16];
  }

  else
  {
    if ([v8 type] == 6)
    {
      [(HFWallpaperImageCache *)self _cacheKeyForCustomBlurWallpaper:v8 withVariant:a3];
    }

    else
    {
      [(HFWallpaperImageCache *)self _cacheKeyForWallpaper:v8 withVariant:a3];
    }
    v10 = ;
    v13 = [(HFWallpaperImageCache *)self _imageForVariant:a3 wallpaper:v8 imageKey:v10 withOriginalImageGenerator:v9];
  }

  return v13;
}

id __78__HFWallpaperImageCache_imageForVariant_wallpaper_withOriginalImageGenerator___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 imageAsset];
  v3 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v4 = [v2 imageWithTraitCollection:v3];

  return v4;
}

id __78__HFWallpaperImageCache_imageForVariant_wallpaper_withOriginalImageGenerator___block_invoke_2(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 imageAsset];
  v3 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v4 = [v2 imageWithTraitCollection:v3];

  return v4;
}

- (id)_imageForVariant:(int64_t)a3 wallpaper:(id)a4 imageKey:(id)a5 withOriginalImageGenerator:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [(HFWallpaperImageCache *)self processedWallpaperSource];

  if (!v13)
  {
    NSLog(&cfstr_MustRegisterPr.isa);
  }

  v14 = HFLogForCategory(0x4EuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromHFWallpaperVariant(a3);
    *buf = 138412546;
    v28 = v15;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Retrieving cached %@ image from wallpaper %@", buf, 0x16u);
  }

  v16 = [(HFWallpaperImageCache *)self imageCache];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__HFWallpaperImageCache__imageForVariant_wallpaper_imageKey_withOriginalImageGenerator___block_invoke;
  v22[3] = &unk_277E00478;
  v23 = v10;
  v24 = self;
  v25 = v11;
  v26 = a3;
  v17 = v11;
  v18 = v10;
  v19 = [v16 imageForKey:v12 generatingIfNecessaryWithBlock:v22];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id __88__HFWallpaperImageCache__imageForVariant_wallpaper_imageKey_withOriginalImageGenerator___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *a2 = 4 * ([*(a1 + 32) type] != 2);
  v3 = HFLogForCategory(0x4EuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromHFWallpaperVariant(*(a1 + 56));
    v5 = *(a1 + 32);
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Recreating evicted %@ slice from wallpaper %@", buf, 0x16u);
  }

  v6 = *(a1 + 56);
  if ((v6 - 2) < 3)
  {
    v7 = [*(a1 + 40) imageForVariant:1 wallpaper:*(a1 + 32) withOriginalImageGenerator:*(a1 + 48)];
    v8 = [*(a1 + 40) processedWallpaperSource];
    v9 = [v8 processedImageForVariant:*(a1 + 56) wallpaper:*(a1 + 32) image:v7];

LABEL_7:
    goto LABEL_8;
  }

  if (v6 == 1)
  {
    v7 = [*(a1 + 40) processedWallpaperSource];
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = (*(*(a1 + 48) + 16))();
    v9 = [v7 processedImageForVariant:v11 wallpaper:v10 image:v12];

    goto LABEL_7;
  }

  NSLog(&cfstr_UnexpectedWall.isa, *(a1 + 56));
  v9 = 0;
LABEL_8:
  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)saveVariantsForWallpaper:(id)a3 originalImage:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v34 = a4;
  v7 = [(HFWallpaperImageCache *)self processedWallpaperSource];

  if (!v7)
  {
    NSLog(&cfstr_MustRegisterPr.isa);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [(HFWallpaperImageCache *)self processedWallpaperSource];
  v9 = [v8 supportedVariants];

  obj = v9;
  v35 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v35)
  {
    v10 = *v37;
    do
    {
      v11 = 0;
      do
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v36 + 1) + 8 * v11) unsignedIntegerValue];
        if ([v6 type] == 4)
        {
          v32 = [(HFWallpaperImageCache *)self _cacheKeyForDefaultBlurWallpaper:v6 withVariant:v12 forUserInterfaceStyle:1];
          v33 = [(HFWallpaperImageCache *)self _cacheKeyForDefaultBlurWallpaper:v6 withVariant:v12 forUserInterfaceStyle:2];
          [v34 imageAsset];
          v13 = v6;
          v14 = self;
          v16 = v15 = v10;
          v17 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
          v18 = [v16 imageWithTraitCollection:v17];

          v19 = [v34 imageAsset];
          v20 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
          v21 = [v19 imageWithTraitCollection:v20];

          v10 = v15;
          self = v14;
          v6 = v13;
          v22 = v32;

          [(HFWallpaperImageCache *)self _saveVariants:v12 forWallpaper:v6 originalImage:v18 withImageKey:v32];
          v23 = v33;
          [(HFWallpaperImageCache *)self _saveVariants:v12 forWallpaper:v6 originalImage:v21 withImageKey:v33];

LABEL_12:
          goto LABEL_14;
        }

        if ([v6 type] == 6)
        {
          v24 = [(HFWallpaperImageCache *)self processedWallpaperSource];
          v22 = [v24 generateFilteredImageForWallpaper:v6 image:v34];

          v25 = [(HFWallpaperImageCache *)self _cacheKeyForCustomBlurWallpaper:v6 withVariant:v12];
          [(HFWallpaperImageCache *)self _saveVariants:v12 forWallpaper:v6 originalImage:v22 withImageKey:v25];

          v26 = [HFWallpaper alloc];
          v27 = [v6 assetIdentifier];
          v28 = [v6 cropInfo];
          v23 = [(HFWallpaper *)v26 initWithType:1 assetIdentifier:v27 cropInfo:v28];

          v29 = [(HFWallpaperImageCache *)self _cacheKeyForWallpaper:v23 withVariant:v12];
          [(HFWallpaperImageCache *)self _saveVariants:v12 forWallpaper:v23 originalImage:v34 withImageKey:v29];

          goto LABEL_12;
        }

        v22 = [(HFWallpaperImageCache *)self _cacheKeyForWallpaper:v6 withVariant:v12];
        [(HFWallpaperImageCache *)self _saveVariants:v12 forWallpaper:v6 originalImage:v34 withImageKey:v22];
LABEL_14:

        ++v11;
      }

      while (v35 != v11);
      v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v35);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_saveVariants:(int64_t)a3 forWallpaper:(id)a4 originalImage:(id)a5 withImageKey:(id)a6
{
  v10 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__HFWallpaperImageCache__saveVariants_forWallpaper_originalImage_withImageKey___block_invoke;
  v13[3] = &unk_277E004A0;
  v14 = v10;
  v11 = v10;
  v12 = [(HFWallpaperImageCache *)self _imageForVariant:a3 wallpaper:a4 imageKey:a6 withOriginalImageGenerator:v13];
}

- (void)pruneUnusedWallpaperVariants:(id)a3
{
  v4 = a3;
  v5 = [(HFWallpaperImageCache *)self imageCache];
  v6 = [v5 allKeys];

  v7 = [MEMORY[0x277CBEB58] set];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HFWallpaperImageCache_pruneUnusedWallpaperVariants___block_invoke;
  v13[3] = &unk_277DFCBC0;
  v13[4] = self;
  v8 = v7;
  v14 = v8;
  [v4 na_each:v13];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HFWallpaperImageCache_pruneUnusedWallpaperVariants___block_invoke_3;
  v10[3] = &unk_277DFFAC8;
  v11 = v8;
  v12 = self;
  v9 = v8;
  [v6 na_each:v10];
}

void __54__HFWallpaperImageCache_pruneUnusedWallpaperVariants___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) processedWallpaperSource];
  v5 = [v4 supportedVariants];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HFWallpaperImageCache_pruneUnusedWallpaperVariants___block_invoke_2;
  v9[3] = &unk_277E004C8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v12 = v7;
  v8 = v3;
  [v5 na_each:v9];
}

void __54__HFWallpaperImageCache_pruneUnusedWallpaperVariants___block_invoke_2(id *a1, void *a2)
{
  v10 = a2;
  if ([a1[4] type] == 4)
  {
    v3 = [a1[5] _cacheKeyForDefaultBlurWallpaper:a1[4] withVariant:objc_msgSend(v10 forUserInterfaceStyle:{"unsignedIntegerValue"), 1}];
    v4 = [a1[5] _cacheKeyForDefaultBlurWallpaper:a1[4] withVariant:objc_msgSend(v10 forUserInterfaceStyle:{"unsignedIntegerValue"), 2}];
LABEL_5:
    v9 = v4;
    [a1[6] na_safeAddObject:v3];
    [a1[6] na_safeAddObject:v9];

    goto LABEL_7;
  }

  v5 = [a1[4] type];
  v7 = a1[4];
  v6 = a1[5];
  v8 = [v10 unsignedIntegerValue];
  if (v5 == 6)
  {
    v3 = [v6 _cacheKeyForCustomBlurWallpaper:v7 withVariant:v8];
    v4 = [a1[5] _cacheKeyForWallpaper:a1[4] withVariant:{objc_msgSend(v10, "unsignedIntegerValue")}];
    goto LABEL_5;
  }

  v3 = [v6 _cacheKeyForWallpaper:v7 withVariant:v8];
  [a1[6] na_safeAddObject:v3];
LABEL_7:
}

void __54__HFWallpaperImageCache_pruneUnusedWallpaperVariants___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = HFLogForCategory(0x4EuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Removed unused image variant at key %@", &v7, 0xCu);
    }

    v5 = [*(a1 + 40) imageCache];
    [v5 removeImageForKey:v3];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_cacheKeyForWallpaper:(id)a3 withVariant:(int64_t)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a3 sliceIdentifierForVariant:a4];
  v7 = [(HFWallpaperImageCache *)self processedWallpaperSource];
  v8 = [v5 stringWithFormat:@"%@_v%ld", v6, objc_msgSend(v7, "processVersionNumber")];

  return v8;
}

- (id)_cacheKeyForDefaultBlurWallpaper:(id)a3 withVariant:(int64_t)a4 forUserInterfaceStyle:(int64_t)a5
{
  v6 = [(HFWallpaperImageCache *)self _cacheKeyForWallpaper:a3 withVariant:a4];
  v7 = v6;
  if (a5 == 1)
  {
    v8 = @"_light";
  }

  else
  {
    v8 = @"_dark";
  }

  v9 = [v6 stringByAppendingString:v8];

  return v9;
}

- (id)_cacheKeyForCustomBlurWallpaper:(id)a3 withVariant:(int64_t)a4
{
  v4 = [(HFWallpaperImageCache *)self _cacheKeyForWallpaper:a3 withVariant:a4];
  v5 = [v4 stringByAppendingString:@"_blur"];

  return v5;
}

@end