@interface ISFlattenLayerStackAssetCatalogResource
- (id)imageForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISFlattenLayerStackAssetCatalogResource

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v26 = *MEMORY[0x1E69E9840];
  catalog = [(ISAssetCatalogResource *)self catalog];
  imageName = [(ISAssetCatalogResource *)self imageName];
  v10 = [catalog _IS_layerStackWithName:imageName scale:-[ISAssetCatalogResource layoutDirection](self layoutDirection:"layoutDirection") platform:{-[ISAssetCatalogResource platform](self, "platform"), scale}];

  if (!v10 || (v11 = [v10 flattenedImage], -[ISAssetCatalogResource _tagForLongLife:](self, "_tagForLongLife:", v11), (scale = objc_msgSend(objc_alloc(MEMORY[0x1E69A8988]), "initWithCGImage:scale:", v11, scale)) == 0))
  {
    v13 = _ISDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      imageName2 = [(ISAssetCatalogResource *)self imageName];
      *buf = 138413058;
      v19 = imageName2;
      v20 = 2048;
      v21 = width;
      v22 = 2048;
      v23 = width;
      v24 = 2048;
      scaleCopy = scale;
      _os_log_impl(&dword_1A77B8000, v13, OS_LOG_TYPE_DEFAULT, "Failed to find layer stack flatten image for with named: %@ for size: (%f,%f) scale:(%lf)", buf, 0x2Au);
    }

    v17.receiver = self;
    v17.super_class = ISFlattenLayerStackAssetCatalogResource;
    scale = [(ISAssetCatalogResource *)&v17 imageForSize:width scale:height, scale];
  }

  v15 = *MEMORY[0x1E69E9840];

  return scale;
}

@end