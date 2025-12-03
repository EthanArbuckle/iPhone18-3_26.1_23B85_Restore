@interface ISAssetCatalogResource
+ (id)assetCatalogResourceWithURL:(id)l error:(id *)error;
+ (id)assetCatalogResourceWithURL:(id)l imageName:(id)name platform:(unint64_t)platform isAppLike:(BOOL)like error:(id *)error;
- (BOOL)hasResourceWithAppearance:(int64_t)appearance;
- (BOOL)hasResourceWithAppearance:(int64_t)appearance appearanceString:(id)string;
- (IFImageBag)imageBag;
- (ISAssetCatalogResource)initWithCatalog:(id)catalog imageName:(id)name platform:(unint64_t)platform;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (id)imageWithName:(id)name scale:(double)scale;
- (int64_t)_layoutDirectionFromDevice;
- (int64_t)assetAppearance;
@end

@implementation ISAssetCatalogResource

- (int64_t)assetAppearance
{
  v12 = *MEMORY[0x1E69E9840];
  result = [(ISAssetCatalogResource *)self appearanceVariant];
  if (result != 2)
  {
    if ([(ISAssetCatalogResource *)self appearanceVariant]== 3)
    {
LABEL_3:
      result = 2;
      goto LABEL_14;
    }

    if ([(ISAssetCatalogResource *)self appearanceVariant]|| (result = [(ISAssetCatalogResource *)self appearance], result != 1))
    {
      if ([(ISAssetCatalogResource *)self appearanceVariant]|| (result = [(ISAssetCatalogResource *)self appearance]) != 0)
      {
        v4 = +[ISDefaults sharedInstance];
        if (([v4 isSolariumEnabled] & 1) != 0 || -[ISAssetCatalogResource appearanceVariant](self, "appearanceVariant"))
        {
        }

        else
        {
          appearance = [(ISAssetCatalogResource *)self appearance];

          if (appearance == 2)
          {
            goto LABEL_3;
          }
        }

        v5 = _ISDefaultLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 134218240;
          appearance2 = [(ISAssetCatalogResource *)self appearance];
          v10 = 2048;
          appearanceVariant = [(ISAssetCatalogResource *)self appearanceVariant];
          _os_log_impl(&dword_1A77B8000, v5, OS_LOG_TYPE_DEFAULT, "Unknown appearance configuration. A:%lu, AV:%lu", &v8, 0x16u);
        }

        result = 0;
      }
    }
  }

LABEL_14:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)assetCatalogResourceWithURL:(id)l error:(id *)error
{
  lCopy = l;
  if (!lCopy)
  {
    _IS_coreGlyphsBundleURL = [MEMORY[0x1E6999368] _IS_coreGlyphsBundleURL];
    lCopy = [MEMORY[0x1E6999368] _IS_assetCatalogURLWithBundleURL:_IS_coreGlyphsBundleURL];
  }

  v7 = [ISAssetCatalogResource assetCatalogResourceWithURL:lCopy imageName:0 platform:0 error:error];

  return v7;
}

+ (id)assetCatalogResourceWithURL:(id)l imageName:(id)name platform:(unint64_t)platform isAppLike:(BOOL)like error:(id *)error
{
  likeCopy = like;
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  nameCopy = name;
  v13 = nameCopy;
  if (!lCopy || !nameCopy)
  {
    if (error)
    {
      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      *error = [v18 initWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:MEMORY[0x1E695E0F8]];
    }

    v14 = _ISDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v19 = *error;
      }

      else
      {
        v19 = 0;
      }

      *buf = 138412802;
      v37 = lCopy;
      v38 = 2112;
      v39 = v13;
      v40 = 2112;
      v41 = v19;
      _os_log_error_impl(&dword_1A77B8000, v14, OS_LOG_TYPE_ERROR, "Unable to find asset in %@ with name i:%@. Error: %@", buf, 0x20u);
    }

    goto LABEL_15;
  }

  v14 = [objc_alloc(MEMORY[0x1E6999368]) initWithURL:lCopy error:error];
  if (!v14)
  {
    v20 = _ISDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ISAssetCatalogResource assetCatalogResourceWithURL:lCopy imageName:error platform:v20 isAppLike:? error:?];
    }

LABEL_15:
    v21 = 0;
    goto LABEL_36;
  }

  v15 = +[ISPlatformInfo sharedInstance];
  if ([v15 supportsRequestingIconStacksForPlatform:platform])
  {
    v16 = [v14 _IS_possibleIconStackExistsWithName:v13 platform:platform];

    if (v16)
    {
      v17 = ISIconStackAssetCatalogResource;
LABEL_35:
      v21 = [[v17 alloc] initWithCatalog:v14 imageName:v13 platform:platform];
      goto LABEL_36;
    }
  }

  else
  {
  }

  v22 = +[ISPlatformInfo sharedInstance];
  if ([v22 supportsRequestingLayerStacksForPlatform:platform])
  {
    v23 = [v14 _IS_possibleLayerStackExistsWithName:v13 platform:platform];

    if (v23)
    {
      v17 = ISFlattenLayerStackAssetCatalogResource;
      goto LABEL_35;
    }
  }

  else
  {
  }

  v24 = +[ISPlatformInfo sharedInstance];
  if ([v24 supportsRequestingMultisizedImagesForPlatform:platform])
  {
    v25 = [v14 _IS_possibleMultisizedImageExistsWithName:v13 platform:platform];

    if (v25)
    {
      if (likeCopy)
      {
        v17 = ISMultisizedAppAssetCatalogResource;
      }

      else
      {
        v17 = ISMultisizedAssetCatalogResource;
      }

      goto LABEL_35;
    }
  }

  else
  {
  }

  v26 = [v13 stringByAppendingPathComponent:@"image_"];
  allImageNames = [v14 allImageNames];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __89__ISAssetCatalogResource_assetCatalogResourceWithURL_imageName_platform_isAppLike_error___block_invoke;
  v34[3] = &unk_1E77C6618;
  v28 = v26;
  v35 = v28;
  v29 = [allImageNames indexOfObjectPassingTest:v34];

  if (v29 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = _ISDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [ISAssetCatalogResource assetCatalogResourceWithURL:v13 imageName:lCopy platform:v30 isAppLike:? error:?];
    }

    if (error)
    {
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = 0;
      *error = [v31 initWithDomain:*MEMORY[0x1E696A768] code:-2582 userInfo:MEMORY[0x1E695E0F8]];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = [[ISAssetCatalogResource alloc] initWithCatalog:v14 imageName:v13 platform:platform];
  }

LABEL_36:
  v32 = *MEMORY[0x1E69E9840];

  return v21;
}

uint64_t __89__ISAssetCatalogResource_assetCatalogResourceWithURL_imageName_platform_isAppLike_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasPrefix:*(a1 + 32)];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

- (ISAssetCatalogResource)initWithCatalog:(id)catalog imageName:(id)name platform:(unint64_t)platform
{
  catalogCopy = catalog;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = ISAssetCatalogResource;
  v11 = [(ISAssetCatalogResource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_imageName, name);
    objc_storeStrong(&v12->_catalog, catalog);
    v12->_disableSubtype = 0;
    v12->_layoutDirection = 5;
    v12->_platform = platform;
    v12->_appearance = 0;
  }

  return v12;
}

- (id)imageWithName:(id)name scale:(double)scale
{
  v4 = [(CUICatalog *)self->_catalog imageWithName:name scaleFactor:scale];
  v5 = v4;
  if (v4)
  {
    image = [v4 image];
    v7 = *MEMORY[0x1E695E4D0];
    CGImageSetProperty();
    v8 = objc_alloc(MEMORY[0x1E69A8988]);
    [v5 scale];
    v9 = [v8 initWithCGImage:image scale:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_layoutDirectionFromDevice
{
  v2 = MEMORY[0x1E695DF58];
  _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];
  v4 = [v2 characterDirectionForLanguage:_deviceLanguage];

  if (v4 == 1)
  {
    return 5;
  }

  else
  {
    return 4 * (v4 == 2);
  }
}

- (IFImageBag)imageBag
{
  v26 = *MEMORY[0x1E69E9840];
  imageBag = self->_imageBag;
  if (!imageBag)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [(NSString *)self->_imageName stringByAppendingPathComponent:@"image"];
    [(CUICatalog *)self->_catalog allImageNames];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v24 = 0u;
    v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          if ([v10 hasPrefix:v5])
          {
            imageMetadataFromFileName = [v10 imageMetadataFromFileName];
            v12 = [imageMetadataFromFileName objectForKeyedSubscript:kIconCompilerImageInfoNameKey];
            if (([v12 isEqualToString:v5] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", self->_imageName))
            {
              v13 = [(ISAssetCatalogResource *)self imageWithName:v10 scale:1.0];
              if (v13)
              {
                [array addObject:v13];
              }

              v14 = [(ISAssetCatalogResource *)self imageWithName:v10 scale:2.0];
              if (v14)
              {
                [array addObject:v14];
              }

              v15 = [(ISAssetCatalogResource *)self imageWithName:v10 scale:3.0];
              if (v15)
              {
                [array addObject:v15];
              }
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    if ([array count])
    {
      v16 = [objc_alloc(MEMORY[0x1E69A8990]) initWithImages:array];
      v17 = self->_imageBag;
      self->_imageBag = v16;
    }

    imageBag = self->_imageBag;
  }

  v18 = *MEMORY[0x1E69E9840];

  return imageBag;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v25 = *MEMORY[0x1E69E9840];
  imageName = [(ISAssetCatalogResource *)self imageName];

  if (!imageName)
  {
    goto LABEL_5;
  }

  v9 = _ISDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    imageName = self->_imageName;
    v17 = 138413058;
    v18 = imageName;
    v19 = 2048;
    v20 = width;
    v21 = 2048;
    v22 = width;
    v23 = 2048;
    scaleCopy2 = scale;
    _os_log_debug_impl(&dword_1A77B8000, v9, OS_LOG_TYPE_DEBUG, "Looking for resources matching the iconset naming convention. Named: %@ for size: (%f,%f) scale:(%lf)", &v17, 0x2Au);
  }

  imageBag = [(ISAssetCatalogResource *)self imageBag];
  v11 = [imageBag imageForSize:width scale:{height, scale}];

  if (!v11)
  {
LABEL_5:
    v12 = _ISDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = self->_imageName;
      v17 = 138413058;
      v18 = v16;
      v19 = 2048;
      v20 = width;
      v21 = 2048;
      v22 = width;
      v23 = 2048;
      scaleCopy2 = scale;
      _os_log_error_impl(&dword_1A77B8000, v12, OS_LOG_TYPE_ERROR, "Failed to find a icon resources with named: %@ for size: (%f,%f) scale:(%lf)", &v17, 0x2Au);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)hasResourceWithAppearance:(int64_t)appearance appearanceString:(id)string
{
  stringCopy = string;
  catalog = [(ISAssetCatalogResource *)self catalog];
  imageName = [(ISAssetCatalogResource *)self imageName];
  layoutDirection = [(ISAssetCatalogResource *)self layoutDirection];
  platform = [(ISAssetCatalogResource *)self platform];
  v11 = [catalog _IS_multisizedImageWithName:imageName size:layoutDirection scale:platform layoutDirection:appearance platform:*MEMORY[0x1E695F060] appearance:{*(MEMORY[0x1E695F060] + 8), 0.0}];

  if (v11)
  {
    appearance = [v11 appearance];
    v13 = [appearance isEqualToString:stringCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)hasResourceWithAppearance:(int64_t)appearance
{
  v5 = [MEMORY[0x1E6999368] _IS_appearanceStringFromAppearance:?];
  if (v5)
  {
    v6 = [(ISAssetCatalogResource *)self hasResourceWithAppearance:appearance appearanceString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)assetCatalogResourceWithURL:(os_log_t)log imageName:platform:isAppLike:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1A77B8000, log, OS_LOG_TYPE_DEBUG, "Unable to find image with name %@ in catalog at URL: %@.", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)assetCatalogResourceWithURL:(os_log_t)log imageName:platform:isAppLike:error:.cold.2(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1A77B8000, log, OS_LOG_TYPE_ERROR, "Unable to open asset catalog with URL: %@ error: %@.", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end