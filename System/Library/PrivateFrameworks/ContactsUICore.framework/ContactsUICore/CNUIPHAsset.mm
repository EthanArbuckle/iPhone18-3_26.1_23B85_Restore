@interface CNUIPHAsset
- (CNUIPHAsset)initWithWrappedAsset:(id)asset;
- (NSString)assetID;
- (void)exportAsWallpaperToURL:(id)l isMeContact:(BOOL)contact completionHandler:(id)handler;
- (void)requestImageWithTargetSize:(CGSize)size completionHandler:(id)handler;
@end

@implementation CNUIPHAsset

- (CNUIPHAsset)initWithWrappedAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = CNUIPHAsset;
  v6 = [(CNUIPHAsset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedAsset, asset);
  }

  return v7;
}

- (NSString)assetID
{
  v3 = getPHObjectClass[0]();
  localIdentifier = [(PHAsset *)self->_wrappedAsset localIdentifier];
  v5 = [(objc_class *)v3 uuidFromLocalIdentifier:localIdentifier];

  return v5;
}

- (void)requestImageWithTargetSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  defaultManager = [getPHCachingImageManagerClass[0]() defaultManager];
  v9 = objc_alloc_init(getPHImageRequestOptionsClass[0]());
  [v9 setNetworkAccessAllowed:1];
  [v9 setDeliveryMode:1];
  wrappedAsset = self->_wrappedAsset;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__CNUIPHAsset_requestImageWithTargetSize_completionHandler___block_invoke;
  v12[3] = &unk_1E76E8000;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [defaultManager requestImageForAsset:wrappedAsset targetSize:0 contentMode:v9 options:v12 resultHandler:{width, height}];
}

void __60__CNUIPHAsset_requestImageWithTargetSize_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [a3 objectForKey:*MEMORY[0x1E6978DF0]];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)exportAsWallpaperToURL:(id)l isMeContact:(BOOL)contact completionHandler:(id)handler
{
  v31[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  assetID = [(CNUIPHAsset *)self assetID];
  v11 = [objc_alloc(MEMORY[0x1E69C07E8]) initWithConfigurationType:0];
  [v11 setOptions:32];
  v12 = [objc_alloc(MEMORY[0x1E69C0808]) initWithAssetUUID:assetID];
  v31[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v11 setMedia:v13];

  v14 = [objc_alloc(getPHWallpaperAssetClass[0]()) initWithPhotoAsset:self->_wrappedAsset];
  v15 = [objc_alloc(getPISegmentationLoaderClass()) initWithParallaxAsset:v14];
  deviceConfiguration = [MEMORY[0x1E69C0938] deviceConfiguration];
  if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      [objc_opt_class() specificConfigurationWithPortraitTitleBounds:0.147962032 portraitScreenSize:0.112227806 landscapeScreenSize:{0.704075935, 0.0824958124, 551.076923, 1194.0, 551.076923, 1194.0}];
      deviceConfiguration = v17 = deviceConfiguration;
    }

    else
    {
      v17 = +[CNUICoreLogProvider photos_os_log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CNUIPHAsset exportAsWallpaperToURL:isMeContact:completionHandler:];
      }
    }
  }

  [v15 setLayoutConfiguration:deviceConfiguration];
  [v15 setDisableSettlingEffect:1];
  [v15 setDisableSpatialPhoto:1];
  [v15 setRole:1];
  v18 = +[CNUICoreLogProvider photos_os_log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = assetID;
    _os_log_impl(&dword_1A31E6000, v18, OS_LOG_TYPE_DEFAULT, "Generating segmentation item for asset: %@", buf, 0xCu);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68__CNUIPHAsset_exportAsWallpaperToURL_isMeContact_completionHandler___block_invoke;
  v23[3] = &unk_1E76E8050;
  contactCopy = contact;
  v24 = v11;
  v25 = assetID;
  v26 = lCopy;
  v27 = handlerCopy;
  v19 = handlerCopy;
  v20 = lCopy;
  v21 = assetID;
  v22 = v11;
  [v15 loadSegmentationItemWithCompletion:v23];
}

void __68__CNUIPHAsset_exportAsWallpaperToURL_isMeContact_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) userInfo];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v11 = v10;

    v12 = [v5 regions];
    if (v12)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2050000000;
      v13 = getPISegmentationLayoutRegionsClass_softClass;
      v42 = getPISegmentationLayoutRegionsClass_softClass;
      if (!getPISegmentationLayoutRegionsClass_softClass)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __getPISegmentationLayoutRegionsClass_block_invoke;
        v38[3] = &unk_1E76E79E0;
        v38[4] = &v39;
        __getPISegmentationLayoutRegionsClass_block_invoke(v38);
        v13 = v40[3];
      }

      v14 = v13;
      _Block_object_dispose(&v39, 8);
      v15 = [v13 dictionaryFromRegions:v12];
      [v11 setObject:v15 forKeyedSubscript:@"regions"];
    }

    else
    {
      [v11 setObject:0 forKeyedSubscript:@"regions"];
    }

    v16 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
    [v11 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69C0C50]];

    v17 = *(a1 + 40);
    if (v17)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "hash")}];
      [v11 setObject:v18 forKeyedSubscript:@"hashedAssetIdentifier"];
    }

    else
    {
      [v11 setObject:0 forKeyedSubscript:@"hashedAssetIdentifier"];
    }

    [v11 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E69C0C48]];
    v19 = [v11 copy];
    [*(a1 + 32) setUserInfo:v19];

    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v37 = 0;
    [v20 saveToURL:v21 error:&v37];
    v22 = v37;
    v23 = *(a1 + 48);
    v24 = [*(a1 + 32) media];
    v25 = [v24 firstObject];
    v26 = [v25 subpath];
    v27 = [v23 URLByAppendingPathComponent:v26];

    v28 = [MEMORY[0x1E696AC08] defaultManager];
    [v28 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:0];

    PISegmentationLoaderClass = getPISegmentationLoaderClass();
    v30 = [*(a1 + 32) editConfiguration];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __68__CNUIPHAsset_exportAsWallpaperToURL_isMeContact_completionHandler___block_invoke_2;
    v34[3] = &unk_1E76E8028;
    v35 = v27;
    v36 = *(a1 + 56);
    v31 = v27;
    LOBYTE(v33) = 0;
    v32 = [PISegmentationLoaderClass saveSegmentationItem:v5 layerStackOptions:3 configuration:v30 style:0 layout:0 allowedLayoutStrategies:1 shouldRecalculateLayoutProperties:v33 toWallpaperURL:v31 completion:v34];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __68__CNUIPHAsset_exportAsWallpaperToURL_isMeContact_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[CNUICoreLogProvider photos_os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__CNUIPHAsset_exportAsWallpaperToURL_isMeContact_completionHandler___block_invoke_2_cold_1(a1, v3, v4);
    }

    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);
  }

  v5();
}

void __68__CNUIPHAsset_exportAsWallpaperToURL_isMeContact_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A31E6000, log, OS_LOG_TYPE_ERROR, "Failed to save segmentation item to URL: %@ error: %@", &v4, 0x16u);
}

@end