@interface ISFlattenLayerStackAssetCatalogResource
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISFlattenLayerStackAssetCatalogResource

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v26 = *MEMORY[0x1E69E9840];
  v8 = [(ISAssetCatalogResource *)self catalog];
  v9 = [(ISAssetCatalogResource *)self imageName];
  v10 = [v8 _IS_layerStackWithName:v9 scale:-[ISAssetCatalogResource layoutDirection](self layoutDirection:"layoutDirection") platform:{-[ISAssetCatalogResource platform](self, "platform"), a4}];

  if (!v10 || (v11 = [v10 flattenedImage], -[ISAssetCatalogResource _tagForLongLife:](self, "_tagForLongLife:", v11), (v12 = objc_msgSend(objc_alloc(MEMORY[0x1E69A8988]), "initWithCGImage:scale:", v11, a4)) == 0))
  {
    v13 = _ISDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(ISAssetCatalogResource *)self imageName];
      *buf = 138413058;
      v19 = v14;
      v20 = 2048;
      v21 = width;
      v22 = 2048;
      v23 = width;
      v24 = 2048;
      v25 = a4;
      _os_log_impl(&dword_1A77B8000, v13, OS_LOG_TYPE_DEFAULT, "Failed to find layer stack flatten image for with named: %@ for size: (%f,%f) scale:(%lf)", buf, 0x2Au);
    }

    v17.receiver = self;
    v17.super_class = ISFlattenLayerStackAssetCatalogResource;
    v12 = [(ISAssetCatalogResource *)&v17 imageForSize:width scale:height, a4];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

@end