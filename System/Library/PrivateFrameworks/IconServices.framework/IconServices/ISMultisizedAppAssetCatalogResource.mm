@interface ISMultisizedAppAssetCatalogResource
- (id)_compositingDescriptorWithSize:(CGSize)size scale:(double)scale;
- (id)_lookupForSize:(CGSize)size scale:(double)scale;
- (id)iconStackForSize:(CGSize)size scale:(double)scale;
- (id)imageForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISMultisizedAppAssetCatalogResource

- (id)_lookupForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  catalog = [(ISAssetCatalogResource *)self catalog];
  imageName = [(ISAssetCatalogResource *)self imageName];
  v10 = [catalog _IS_multisizedImageWithName:imageName size:-[ISAssetCatalogResource layoutDirection](self scale:"layoutDirection") layoutDirection:-[ISAssetCatalogResource platform](self platform:"platform") appearance:{-[ISAssetCatalogResource assetAppearance](self, "assetAppearance"), width, height, scale}];

  return v10;
}

- (id)iconStackForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v26 = *MEMORY[0x1E69E9840];
  v8 = [ISMultisizedAppAssetCatalogResource _lookupForSize:"_lookupForSize:scale:" scale:?];
  if (!v8)
  {
    v9 = _ISDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      imageName = [(ISAssetCatalogResource *)self imageName];
      *buf = 138413058;
      v19 = imageName;
      v20 = 2048;
      v21 = width;
      v22 = 2048;
      v23 = width;
      v24 = 2048;
      scaleCopy = scale;
      _os_log_impl(&dword_1A77B8000, v9, OS_LOG_TYPE_DEFAULT, "Failed to find multisized image for with named: %@ for size: (%f,%f) scale:(%lf)", buf, 0x2Au);
    }
  }

  v11 = -[ISIconStackComposer initWithLegacyAsset:assetAppearance:platform:]([ISIconStackComposer alloc], "initWithLegacyAsset:assetAppearance:platform:", [v8 image], objc_msgSend(v8, "_IS_assetAppearance"), -[ISAssetCatalogResource platform](self, "platform"));
  scale = [(ISMultisizedAppAssetCatalogResource *)self _compositingDescriptorWithSize:width scale:height, scale];
  v17 = 0;
  v13 = -[ISIconStackComposer iconStackForSize:scale:desiredAssetAppearance:returningGenerationReport:](v11, "iconStackForSize:scale:desiredAssetAppearance:returningGenerationReport:", [scale assetAppearance], &v17, width, height, scale);
  v14 = v17;
  [(ISIconStackAssetCatalogResource *)self setGenerationReport:v14];

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_compositingDescriptorWithSize:(CGSize)size scale:(double)scale
{
  v7.receiver = self;
  v7.super_class = ISMultisizedAppAssetCatalogResource;
  scale = [(ISIconStackAssetCatalogResource *)&v7 _compositingDescriptorWithSize:size.width scale:size.height, scale];
  v5 = objc_alloc_init(ISCompositingDescriptor);
  [scale setUseLegacyCompatibilityMode:{-[ISCompositingDescriptor useLegacyCompatibilityMode](v5, "useLegacyCompatibilityMode")}];

  return scale;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v30 = *MEMORY[0x1E69E9840];
  v8 = [ISMultisizedAppAssetCatalogResource _compositingDescriptorWithSize:"_compositingDescriptorWithSize:scale:" scale:?];
  v9 = +[ISDefaults sharedInstance];
  safeBoot = [v9 safeBoot];

  if (safeBoot)
  {
    scale = [(ISMultisizedAppAssetCatalogResource *)self _lookupForSize:width scale:height, scale];
    scale3 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:objc_msgSend(scale scale:{"image"), scale}];
LABEL_7:
    v17 = scale3;
    goto LABEL_12;
  }

  scale2 = [(ISIconStackAssetCatalogResource *)self _finalizedIconForSize:width scale:height, scale];
  scale = scale2;
  if (!scale2)
  {
    scale3 = [(ISIconStackAssetCatalogResource *)self _fallbackImageForSize:width scale:height, scale];
    goto LABEL_7;
  }

  v14 = [scale2 _IS_imageWithCompositingDescriptor:v8];
  v15 = v14;
  if (v14)
  {
    scale4 = v14;
  }

  else
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
      _os_log_impl(&dword_1A77B8000, v18, OS_LOG_TYPE_DEFAULT, "Failed to generate flatten representation for multisized image with named: %@ for size: (%f,%f) scale:(%lf)", &v22, 0x2Au);
    }

    scale4 = [(ISIconStackAssetCatalogResource *)self _fallbackImageForSize:width scale:height, scale];
  }

  v17 = scale4;

LABEL_12:
  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

@end