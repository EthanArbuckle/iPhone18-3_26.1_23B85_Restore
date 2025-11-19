@interface CDMServiceAssetConfig
- (CDMServiceAssetConfig)init;
- (id)getCDMAssetFactorToFoldersMappingForAssetSet:(int64_t)a3;
- (void)addCDMFactorToFoldersMapping:(id)a3 forAssetSet:(int64_t)a4;
@end

@implementation CDMServiceAssetConfig

- (CDMServiceAssetConfig)init
{
  v6.receiver = self;
  v6.super_class = CDMServiceAssetConfig;
  v2 = [(CDMServiceAssetConfig *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CDMAssetSetToFactorsConfig);
    assetSetToFactorsConfig = v2->_assetSetToFactorsConfig;
    v2->_assetSetToFactorsConfig = v3;

    v2->_isAssetRequiredForSetup = 1;
  }

  return v2;
}

- (id)getCDMAssetFactorToFoldersMappingForAssetSet:(int64_t)a3
{
  v3 = [(CDMAssetSetToFactorsConfig *)self->_assetSetToFactorsConfig getCDMFactorConfigForAssetSet:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 getFactorToFoldersMapping];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addCDMFactorToFoldersMapping:(id)a3 forAssetSet:(int64_t)a4
{
  v6 = a3;
  v7 = [[CDMAssetsFactorConfig alloc] initWithFactorToFoldersMapping:v6];

  [(CDMAssetSetToFactorsConfig *)self->_assetSetToFactorsConfig setCDMAssetsFactorConfig:v7 forAssetSet:a4];
}

@end