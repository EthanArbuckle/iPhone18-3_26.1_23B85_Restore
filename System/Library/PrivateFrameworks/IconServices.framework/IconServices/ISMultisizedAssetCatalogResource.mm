@interface ISMultisizedAssetCatalogResource
- (id)_lookupForSize:(CGSize)size scale:(double)scale;
- (id)imageForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISMultisizedAssetCatalogResource

- (id)_lookupForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  catalog = [(ISAssetCatalogResource *)self catalog];
  imageName = [(ISAssetCatalogResource *)self imageName];
  v10 = [catalog _IS_multisizedImageWithName:imageName size:-[ISAssetCatalogResource layoutDirection](self scale:"layoutDirection") layoutDirection:-[ISAssetCatalogResource platform](self platform:"platform") appearance:{-[ISAssetCatalogResource assetAppearance](self, "assetAppearance"), width, height, scale}];

  return v10;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x1E69E9840];
  v8 = [ISMultisizedAssetCatalogResource _lookupForSize:"_lookupForSize:scale:" scale:?];
  v9 = v8;
  if (!v8 || (v10 = [v8 image], objc_msgSend(v9, "scale"), v12 = v11, v19.receiver = self, v19.super_class = ISMultisizedAssetCatalogResource, -[ISAssetCatalogResource _tagForLongLife:](&v19, sel__tagForLongLife_, v10), (scale = objc_msgSend(objc_alloc(MEMORY[0x1E69A8988]), "initWithCGImage:scale:", v10, v12)) == 0))
  {
    v14 = _ISDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      imageName = [(ISAssetCatalogResource *)self imageName];
      *buf = 138413058;
      v21 = imageName;
      v22 = 2048;
      v23 = width;
      v24 = 2048;
      v25 = width;
      v26 = 2048;
      scaleCopy = scale;
      _os_log_impl(&dword_1A77B8000, v14, OS_LOG_TYPE_DEFAULT, "Failed to find multisized image for with named: %@ for size: (%f,%f) scale:(%lf)", buf, 0x2Au);
    }

    v18.receiver = self;
    v18.super_class = ISMultisizedAssetCatalogResource;
    scale = [(ISAssetCatalogResource *)&v18 imageForSize:width scale:height, scale];
  }

  v16 = *MEMORY[0x1E69E9840];

  return scale;
}

@end