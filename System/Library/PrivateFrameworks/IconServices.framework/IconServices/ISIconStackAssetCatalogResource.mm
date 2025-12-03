@interface ISIconStackAssetCatalogResource
- (ISIconStackAssetCatalogResource)initWithCatalog:(id)catalog imageName:(id)name platform:(unint64_t)platform;
- (id)_compositingDescriptorWithSize:(CGSize)size scale:(double)scale;
- (id)_fallbackImageForSize:(CGSize)size scale:(double)scale;
- (id)_finalizedIconForSize:(CGSize)size scale:(double)scale;
- (id)iconStackForSize:(CGSize)size scale:(double)scale;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (id)layerDataForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISIconStackAssetCatalogResource

- (id)iconStackForSize:(CGSize)size scale:(double)scale
{
  v6 = [[ISGenerationReport alloc] initWithIconTreatment:2 hasLightingEffects:0];
  [(ISIconStackAssetCatalogResource *)self setGenerationReport:v6];

  catalog = [(ISAssetCatalogResource *)self catalog];
  imageName = [(ISAssetCatalogResource *)self imageName];
  v9 = [catalog _IS_iconStackWithName:imageName scale:0 locale:-[ISAssetCatalogResource platform](self platform:"platform") appearance:{-[ISAssetCatalogResource assetAppearance](self, "assetAppearance"), scale}];

  return v9;
}

- (ISIconStackAssetCatalogResource)initWithCatalog:(id)catalog imageName:(id)name platform:(unint64_t)platform
{
  v9.receiver = self;
  v9.super_class = ISIconStackAssetCatalogResource;
  v5 = [(ISAssetCatalogResource *)&v9 initWithCatalog:catalog imageName:name platform:platform];
  if (v5)
  {
    v6 = objc_opt_new();
    finalizedIcons = v5->_finalizedIcons;
    v5->_finalizedIcons = v6;
  }

  return v5;
}

- (id)_compositingDescriptorWithSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v8 = objc_alloc_init(ISCompositingDescriptor);
  [(ISCompositingDescriptor *)v8 setSize:width, height];
  [(ISCompositingDescriptor *)v8 setScale:scale];
  [(ISCompositingDescriptor *)v8 setPlatform:[(ISAssetCatalogResource *)self platform]];
  [(ISCompositingDescriptor *)v8 setAppearance:[(ISAssetCatalogResource *)self appearance]];
  [(ISCompositingDescriptor *)v8 setAppearanceVariant:[(ISAssetCatalogResource *)self appearanceVariant]];
  tintColor = [(ISAssetCatalogResource *)self tintColor];
  [(ISCompositingDescriptor *)v8 setTintColor:tintColor];

  [(ISCompositingDescriptor *)v8 setUseLegacyCompatibilityMode:0];
  [(ISCompositingDescriptor *)v8 setBackground:[(ISAssetCatalogResource *)self background]];
  [(ISCompositingDescriptor *)v8 setShouldApplyMask:[(ISAssetCatalogResource *)self shouldApplyMask]];
  [(ISCompositingDescriptor *)v8 setLanguageDirection:[(ISIconStackAssetCatalogResource *)self languageDirection]];
  [(ISCompositingDescriptor *)v8 setPlatformStyle:[(ISIconStackAssetCatalogResource *)self platformStyle]];
  [(ISCompositingDescriptor *)v8 setShape:[(ISIconStackAssetCatalogResource *)self shape]];

  return v8;
}

- (id)_finalizedIconForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v30 = *MEMORY[0x1E69E9840];
  v8 = [ISIconStackAssetCatalogResource _compositingDescriptorWithSize:"_compositingDescriptorWithSize:scale:" scale:?];
  scale = [(ISIconStackAssetCatalogResource *)self _keyForSize:width scale:height, scale];
  finalizedIcons = [(ISIconStackAssetCatalogResource *)self finalizedIcons];
  v11 = [finalizedIcons objectForKey:scale];

  if (v11)
  {
    v12 = v11;
    goto LABEL_11;
  }

  scale2 = [(ISIconStackAssetCatalogResource *)self iconStackForSize:width scale:height, scale];
  v14 = scale2;
  if (!scale2)
  {
    v18 = _ISDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      imageName = [(ISAssetCatalogResource *)self imageName];
      v22 = 138413058;
      v23 = imageName;
      v24 = 2048;
      v25 = width;
      v26 = 2048;
      v27 = width;
      v28 = 2048;
      scaleCopy = scale;
      _os_log_impl(&dword_1A77B8000, v18, OS_LOG_TYPE_DEFAULT, "Failed to find icon stack for with named: %@ for size: (%f,%f) scale:(%lf)", &v22, 0x2Au);
    }

    goto LABEL_9;
  }

  v15 = [scale2 _IS_finalizedIconWithCompositingDescriptor:v8];
  if (!v15)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v16 = v15;
  finalizedIcons2 = [(ISIconStackAssetCatalogResource *)self finalizedIcons];
  [finalizedIcons2 setObject:v16 forKey:scale];

  v12 = v16;
LABEL_10:

LABEL_11:
  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v27 = *MEMORY[0x1E69E9840];
  v8 = [ISIconStackAssetCatalogResource _compositingDescriptorWithSize:"_compositingDescriptorWithSize:scale:" scale:?];
  scale = [(ISIconStackAssetCatalogResource *)self _finalizedIconForSize:width scale:height, scale];
  v10 = scale;
  if (scale)
  {
    v11 = [scale _IS_imageWithCompositingDescriptor:v8];
    v12 = [[ISGenerationReport alloc] initWithIconTreatment:2 hasLightingEffects:0];
    [v11 setGenerationReport:v12];

    if (v11)
    {
      scale2 = v11;
    }

    else
    {
      v15 = _ISDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        imageName = [(ISAssetCatalogResource *)self imageName];
        v19 = 138413058;
        v20 = imageName;
        v21 = 2048;
        v22 = width;
        v23 = 2048;
        v24 = width;
        v25 = 2048;
        scaleCopy = scale;
        _os_log_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_DEFAULT, "Failed to generate flatten representation for icon stack with named: %@ for size: (%f,%f) scale:(%lf)", &v19, 0x2Au);
      }

      scale2 = [(ISIconStackAssetCatalogResource *)self _fallbackImageForSize:width scale:height, scale];
    }

    scale3 = scale2;
  }

  else
  {
    scale3 = [(ISIconStackAssetCatalogResource *)self _fallbackImageForSize:width scale:height, scale];
  }

  v17 = *MEMORY[0x1E69E9840];

  return scale3;
}

- (id)layerDataForSize:(CGSize)size scale:(double)scale
{
  width = size.width;
  v25 = *MEMORY[0x1E69E9840];
  v7 = [(ISIconStackAssetCatalogResource *)self _finalizedIconForSize:size.width scale:size.height];
  v14 = 0;
  v8 = [v7 serializedDataWithError:&v14];
  v9 = v14;
  if (!v8 || ![v8 length])
  {
    v10 = _ISDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      imageName = [(ISAssetCatalogResource *)self imageName];
      *buf = 138413314;
      v16 = imageName;
      v17 = 2048;
      v18 = width;
      v19 = 2048;
      v20 = width;
      v21 = 2048;
      scaleCopy = scale;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_1A77B8000, v10, OS_LOG_TYPE_ERROR, "Failed to serialize finalized icon for named: %@ for size: (%f,%f) scale:(%lf). Error:%@", buf, 0x34u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_fallbackImageForSize:(CGSize)size scale:(double)scale
{
  scale = [[ISImageDescriptor alloc] initWithSize:size.width scale:size.height, scale];
  v5 = MEMORY[0x1E69A8988];
  identifier = [*MEMORY[0x1E6982CA8] identifier];
  v7 = [v5 _placeholderImageWithImageDescriptor:scale markAsPlaceholder:1 fallbackTypeID:identifier referenceIcon:0];

  return v7;
}

@end