@interface ISAssetInspector
- (BOOL)assetExistsForSize:(CGSize)size scale:(double)scale;
- (ISAssetCatalogResource)assetCatalogResource;
- (ISAssetInspector)initWithBundleURL:(id)l;
- (unint64_t)catalogAssetAppearances;
- (void)assetCatalogResource;
@end

@implementation ISAssetInspector

- (ISAssetInspector)initWithBundleURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = ISAssetInspector;
  v5 = [(ISAssetInspector *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
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
    bundle = [(ISAssetInspector *)self bundle];
    infoDictionary = [bundle infoDictionary];
    v7 = [v4 initWithInfoDictionary:infoDictionary];

    catalogAssetName = [v7 catalogAssetName];
    bundle2 = [(ISAssetInspector *)self bundle];
    assetCatalogURL = [bundle2 assetCatalogURL];
    bundle3 = [(ISAssetInspector *)self bundle];
    v17 = 0;
    v12 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", assetCatalogURL, catalogAssetName, [bundle3 platform], &v17);
    v13 = v17;

    if (!v12)
    {
      v14 = _ISDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ISAssetInspector *)catalogAssetName assetCatalogResource];
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
  assetCatalogResource = [(ISAssetInspector *)self assetCatalogResource];
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

  assetCatalogResource2 = [(ISAssetInspector *)self assetCatalogResource];
  v7 = [assetCatalogResource2 hasResourceWithAppearance:0xFFFFLL];

  if (v7)
  {
    v5 |= 2uLL;
  }

  assetCatalogResource3 = [(ISAssetInspector *)self assetCatalogResource];
  v9 = [assetCatalogResource3 hasResourceWithAppearance:0];

  if (v9)
  {
    v5 |= 4uLL;
  }

  assetCatalogResource4 = [(ISAssetInspector *)self assetCatalogResource];
  v11 = [assetCatalogResource4 hasResourceWithAppearance:1];

  if (v11)
  {
    v12 = v5 | 8;
  }

  else
  {
    v12 = v5;
  }

  assetCatalogResource5 = [(ISAssetInspector *)self assetCatalogResource];
  v14 = [assetCatalogResource5 hasResourceWithAppearance:2];

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

- (BOOL)assetExistsForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  assetCatalogResource = [(ISAssetInspector *)self assetCatalogResource];
  v8 = [assetCatalogResource imageForSize:width scale:{height, scale}];

  [v8 size];
  if (v9 == width && ([v8 size], v10 == height))
  {
    [v8 scale];
    v12 = v11 == scale;
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
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A77B8000, log, OS_LOG_TYPE_ERROR, "Failed to find resource with name '%@'. Error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end