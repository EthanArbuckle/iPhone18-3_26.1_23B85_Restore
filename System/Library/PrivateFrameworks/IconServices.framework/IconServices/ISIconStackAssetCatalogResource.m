@interface ISIconStackAssetCatalogResource
- (ISIconStackAssetCatalogResource)initWithCatalog:(id)a3 imageName:(id)a4 platform:(unint64_t)a5;
- (id)_compositingDescriptorWithSize:(CGSize)a3 scale:(double)a4;
- (id)_fallbackImageForSize:(CGSize)a3 scale:(double)a4;
- (id)_finalizedIconForSize:(CGSize)a3 scale:(double)a4;
- (id)iconStackForSize:(CGSize)a3 scale:(double)a4;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
- (id)layerDataForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISIconStackAssetCatalogResource

- (id)iconStackForSize:(CGSize)a3 scale:(double)a4
{
  v6 = [[ISGenerationReport alloc] initWithIconTreatment:2 hasLightingEffects:0];
  [(ISIconStackAssetCatalogResource *)self setGenerationReport:v6];

  v7 = [(ISAssetCatalogResource *)self catalog];
  v8 = [(ISAssetCatalogResource *)self imageName];
  v9 = [v7 _IS_iconStackWithName:v8 scale:0 locale:-[ISAssetCatalogResource platform](self platform:"platform") appearance:{-[ISAssetCatalogResource assetAppearance](self, "assetAppearance"), a4}];

  return v9;
}

- (ISIconStackAssetCatalogResource)initWithCatalog:(id)a3 imageName:(id)a4 platform:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = ISIconStackAssetCatalogResource;
  v5 = [(ISAssetCatalogResource *)&v9 initWithCatalog:a3 imageName:a4 platform:a5];
  if (v5)
  {
    v6 = objc_opt_new();
    finalizedIcons = v5->_finalizedIcons;
    v5->_finalizedIcons = v6;
  }

  return v5;
}

- (id)_compositingDescriptorWithSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = objc_alloc_init(ISCompositingDescriptor);
  [(ISCompositingDescriptor *)v8 setSize:width, height];
  [(ISCompositingDescriptor *)v8 setScale:a4];
  [(ISCompositingDescriptor *)v8 setPlatform:[(ISAssetCatalogResource *)self platform]];
  [(ISCompositingDescriptor *)v8 setAppearance:[(ISAssetCatalogResource *)self appearance]];
  [(ISCompositingDescriptor *)v8 setAppearanceVariant:[(ISAssetCatalogResource *)self appearanceVariant]];
  v9 = [(ISAssetCatalogResource *)self tintColor];
  [(ISCompositingDescriptor *)v8 setTintColor:v9];

  [(ISCompositingDescriptor *)v8 setUseLegacyCompatibilityMode:0];
  [(ISCompositingDescriptor *)v8 setBackground:[(ISAssetCatalogResource *)self background]];
  [(ISCompositingDescriptor *)v8 setShouldApplyMask:[(ISAssetCatalogResource *)self shouldApplyMask]];
  [(ISCompositingDescriptor *)v8 setLanguageDirection:[(ISIconStackAssetCatalogResource *)self languageDirection]];
  [(ISCompositingDescriptor *)v8 setPlatformStyle:[(ISIconStackAssetCatalogResource *)self platformStyle]];
  [(ISCompositingDescriptor *)v8 setShape:[(ISIconStackAssetCatalogResource *)self shape]];

  return v8;
}

- (id)_finalizedIconForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v30 = *MEMORY[0x1E69E9840];
  v8 = [ISIconStackAssetCatalogResource _compositingDescriptorWithSize:"_compositingDescriptorWithSize:scale:" scale:?];
  v9 = [(ISIconStackAssetCatalogResource *)self _keyForSize:width scale:height, a4];
  v10 = [(ISIconStackAssetCatalogResource *)self finalizedIcons];
  v11 = [v10 objectForKey:v9];

  if (v11)
  {
    v12 = v11;
    goto LABEL_11;
  }

  v13 = [(ISIconStackAssetCatalogResource *)self iconStackForSize:width scale:height, a4];
  v14 = v13;
  if (!v13)
  {
    v18 = _ISDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(ISAssetCatalogResource *)self imageName];
      v22 = 138413058;
      v23 = v19;
      v24 = 2048;
      v25 = width;
      v26 = 2048;
      v27 = width;
      v28 = 2048;
      v29 = a4;
      _os_log_impl(&dword_1A77B8000, v18, OS_LOG_TYPE_DEFAULT, "Failed to find icon stack for with named: %@ for size: (%f,%f) scale:(%lf)", &v22, 0x2Au);
    }

    goto LABEL_9;
  }

  v15 = [v13 _IS_finalizedIconWithCompositingDescriptor:v8];
  if (!v15)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v16 = v15;
  v17 = [(ISIconStackAssetCatalogResource *)self finalizedIcons];
  [v17 setObject:v16 forKey:v9];

  v12 = v16;
LABEL_10:

LABEL_11:
  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v27 = *MEMORY[0x1E69E9840];
  v8 = [ISIconStackAssetCatalogResource _compositingDescriptorWithSize:"_compositingDescriptorWithSize:scale:" scale:?];
  v9 = [(ISIconStackAssetCatalogResource *)self _finalizedIconForSize:width scale:height, a4];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 _IS_imageWithCompositingDescriptor:v8];
    v12 = [[ISGenerationReport alloc] initWithIconTreatment:2 hasLightingEffects:0];
    [v11 setGenerationReport:v12];

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v15 = _ISDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(ISAssetCatalogResource *)self imageName];
        v19 = 138413058;
        v20 = v16;
        v21 = 2048;
        v22 = width;
        v23 = 2048;
        v24 = width;
        v25 = 2048;
        v26 = a4;
        _os_log_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_DEFAULT, "Failed to generate flatten representation for icon stack with named: %@ for size: (%f,%f) scale:(%lf)", &v19, 0x2Au);
      }

      v13 = [(ISIconStackAssetCatalogResource *)self _fallbackImageForSize:width scale:height, a4];
    }

    v14 = v13;
  }

  else
  {
    v14 = [(ISIconStackAssetCatalogResource *)self _fallbackImageForSize:width scale:height, a4];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)layerDataForSize:(CGSize)a3 scale:(double)a4
{
  width = a3.width;
  v25 = *MEMORY[0x1E69E9840];
  v7 = [(ISIconStackAssetCatalogResource *)self _finalizedIconForSize:a3.width scale:a3.height];
  v14 = 0;
  v8 = [v7 serializedDataWithError:&v14];
  v9 = v14;
  if (!v8 || ![v8 length])
  {
    v10 = _ISDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [(ISAssetCatalogResource *)self imageName];
      *buf = 138413314;
      v16 = v13;
      v17 = 2048;
      v18 = width;
      v19 = 2048;
      v20 = width;
      v21 = 2048;
      v22 = a4;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_1A77B8000, v10, OS_LOG_TYPE_ERROR, "Failed to serialize finalized icon for named: %@ for size: (%f,%f) scale:(%lf). Error:%@", buf, 0x34u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_fallbackImageForSize:(CGSize)a3 scale:(double)a4
{
  v4 = [[ISImageDescriptor alloc] initWithSize:a3.width scale:a3.height, a4];
  v5 = MEMORY[0x1E69A8988];
  v6 = [*MEMORY[0x1E6982CA8] identifier];
  v7 = [v5 _placeholderImageWithImageDescriptor:v4 markAsPlaceholder:1 fallbackTypeID:v6 referenceIcon:0];

  return v7;
}

@end