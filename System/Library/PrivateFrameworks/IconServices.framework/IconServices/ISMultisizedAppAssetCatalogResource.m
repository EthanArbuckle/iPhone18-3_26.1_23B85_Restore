@interface ISMultisizedAppAssetCatalogResource
- (id)_compositingDescriptorWithSize:(CGSize)a3 scale:(double)a4;
- (id)_lookupForSize:(CGSize)a3 scale:(double)a4;
- (id)iconStackForSize:(CGSize)a3 scale:(double)a4;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISMultisizedAppAssetCatalogResource

- (id)_lookupForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(ISAssetCatalogResource *)self catalog];
  v9 = [(ISAssetCatalogResource *)self imageName];
  v10 = [v8 _IS_multisizedImageWithName:v9 size:-[ISAssetCatalogResource layoutDirection](self scale:"layoutDirection") layoutDirection:-[ISAssetCatalogResource platform](self platform:"platform") appearance:{-[ISAssetCatalogResource assetAppearance](self, "assetAppearance"), width, height, a4}];

  return v10;
}

- (id)iconStackForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v26 = *MEMORY[0x1E69E9840];
  v8 = [ISMultisizedAppAssetCatalogResource _lookupForSize:"_lookupForSize:scale:" scale:?];
  if (!v8)
  {
    v9 = _ISDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(ISAssetCatalogResource *)self imageName];
      *buf = 138413058;
      v19 = v10;
      v20 = 2048;
      v21 = width;
      v22 = 2048;
      v23 = width;
      v24 = 2048;
      v25 = a4;
      _os_log_impl(&dword_1A77B8000, v9, OS_LOG_TYPE_DEFAULT, "Failed to find multisized image for with named: %@ for size: (%f,%f) scale:(%lf)", buf, 0x2Au);
    }
  }

  v11 = -[ISIconStackComposer initWithLegacyAsset:assetAppearance:platform:]([ISIconStackComposer alloc], "initWithLegacyAsset:assetAppearance:platform:", [v8 image], objc_msgSend(v8, "_IS_assetAppearance"), -[ISAssetCatalogResource platform](self, "platform"));
  v12 = [(ISMultisizedAppAssetCatalogResource *)self _compositingDescriptorWithSize:width scale:height, a4];
  v17 = 0;
  v13 = -[ISIconStackComposer iconStackForSize:scale:desiredAssetAppearance:returningGenerationReport:](v11, "iconStackForSize:scale:desiredAssetAppearance:returningGenerationReport:", [v12 assetAppearance], &v17, width, height, a4);
  v14 = v17;
  [(ISIconStackAssetCatalogResource *)self setGenerationReport:v14];

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_compositingDescriptorWithSize:(CGSize)a3 scale:(double)a4
{
  v7.receiver = self;
  v7.super_class = ISMultisizedAppAssetCatalogResource;
  v4 = [(ISIconStackAssetCatalogResource *)&v7 _compositingDescriptorWithSize:a3.width scale:a3.height, a4];
  v5 = objc_alloc_init(ISCompositingDescriptor);
  [v4 setUseLegacyCompatibilityMode:{-[ISCompositingDescriptor useLegacyCompatibilityMode](v5, "useLegacyCompatibilityMode")}];

  return v4;
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v30 = *MEMORY[0x1E69E9840];
  v8 = [ISMultisizedAppAssetCatalogResource _compositingDescriptorWithSize:"_compositingDescriptorWithSize:scale:" scale:?];
  v9 = +[ISDefaults sharedInstance];
  v10 = [v9 safeBoot];

  if (v10)
  {
    v11 = [(ISMultisizedAppAssetCatalogResource *)self _lookupForSize:width scale:height, a4];
    v12 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:objc_msgSend(v11 scale:{"image"), a4}];
LABEL_7:
    v17 = v12;
    goto LABEL_12;
  }

  v13 = [(ISIconStackAssetCatalogResource *)self _finalizedIconForSize:width scale:height, a4];
  v11 = v13;
  if (!v13)
  {
    v12 = [(ISIconStackAssetCatalogResource *)self _fallbackImageForSize:width scale:height, a4];
    goto LABEL_7;
  }

  v14 = [v13 _IS_imageWithCompositingDescriptor:v8];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
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
      _os_log_impl(&dword_1A77B8000, v18, OS_LOG_TYPE_DEFAULT, "Failed to generate flatten representation for multisized image with named: %@ for size: (%f,%f) scale:(%lf)", &v22, 0x2Au);
    }

    v16 = [(ISIconStackAssetCatalogResource *)self _fallbackImageForSize:width scale:height, a4];
  }

  v17 = v16;

LABEL_12:
  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

@end