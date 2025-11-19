@interface ISAssetInspector
- (BOOL)assetExistsForSize:(CGSize)a3 scale:(double)a4;
- (ISAssetCatalogResource)assetCatalogResource;
- (ISAssetInspector)initWithBundleURL:(id)a3;
- (unint64_t)catalogAssetAppearances;
- (void)assetCatalogResource;
@end

@implementation ISAssetInspector

- (ISAssetInspector)initWithBundleURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ISAssetInspector;
  v5 = [(ISAssetInspector *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:v4];
    bundle = v5->_bundle;
    v5->_bundle = v6;
  }

  return v5;
}

- (ISAssetCatalogResource)assetCatalogResource
{
  assetCatalogResource = self->_assetCatalogResource;
  if (!assetCatalogResource)
  {
    v4 = objc_alloc(MEMORY[0x1E69A89A8]);
    v5 = [(ISAssetInspector *)self bundle];
    v6 = [v5 infoDictionary];
    v7 = [v4 initWithInfoDictionary:v6];

    v8 = [v7 catalogAssetName];
    v9 = [(ISAssetInspector *)self bundle];
    v10 = [v9 assetCatalogURL];
    v11 = [(ISAssetInspector *)self bundle];
    v17 = 0;
    v12 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", v10, v8, [v11 platform], &v17);
    v13 = v17;

    if (!v12)
    {
      v14 = _ISDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ISAssetInspector *)v8 assetCatalogResource];
      }
    }

    v15 = self->_assetCatalogResource;
    self->_assetCatalogResource = v12;

    assetCatalogResource = self->_assetCatalogResource;
  }

  return assetCatalogResource;
}

- (unint64_t)catalogAssetAppearances
{
  v3 = [(ISAssetInspector *)self assetCatalogResource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = 31;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(ISAssetInspector *)self assetCatalogResource];
  v7 = [v6 hasResourceWithAppearance:0xFFFFLL];

  if (v7)
  {
    v5 |= 2uLL;
  }

  v8 = [(ISAssetInspector *)self assetCatalogResource];
  v9 = [v8 hasResourceWithAppearance:0];

  if (v9)
  {
    v5 |= 4uLL;
  }

  v10 = [(ISAssetInspector *)self assetCatalogResource];
  v11 = [v10 hasResourceWithAppearance:1];

  if (v11)
  {
    v12 = v5 | 8;
  }

  else
  {
    v12 = v5;
  }

  v13 = [(ISAssetInspector *)self assetCatalogResource];
  v14 = [v13 hasResourceWithAppearance:2];

  v15 = v12 | 0x10;
  if (!v14)
  {
    v15 = v12;
  }

  if (v15 == 1)
  {
    return 1;
  }

  else
  {
    return v15 ^ 1;
  }
}

- (BOOL)assetExistsForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(ISAssetInspector *)self assetCatalogResource];
  v8 = [v7 imageForSize:width scale:{height, a4}];

  [v8 size];
  if (v9 == width && ([v8 size], v10 == height))
  {
    [v8 scale];
    v12 = v11 == a4;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)assetCatalogResource
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A77B8000, log, OS_LOG_TYPE_ERROR, "Failed to find resource with name '%@'. Error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end