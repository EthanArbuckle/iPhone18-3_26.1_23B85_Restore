@interface CDMServiceAssetConfig
- (CDMServiceAssetConfig)init;
- (id)getCDMAssetFactorToFoldersMappingForAssetSet:(int64_t)set;
- (void)addCDMFactorToFoldersMapping:(id)mapping forAssetSet:(int64_t)set;
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

- (id)getCDMAssetFactorToFoldersMappingForAssetSet:(int64_t)set
{
  v3 = [(CDMAssetSetToFactorsConfig *)self->_assetSetToFactorsConfig getCDMFactorConfigForAssetSet:set];
  v4 = v3;
  if (v3)
  {
    getFactorToFoldersMapping = [v3 getFactorToFoldersMapping];
  }

  else
  {
    getFactorToFoldersMapping = 0;
  }

  return getFactorToFoldersMapping;
}

- (void)addCDMFactorToFoldersMapping:(id)mapping forAssetSet:(int64_t)set
{
  mappingCopy = mapping;
  v7 = [[CDMAssetsFactorConfig alloc] initWithFactorToFoldersMapping:mappingCopy];

  [(CDMAssetSetToFactorsConfig *)self->_assetSetToFactorsConfig setCDMAssetsFactorConfig:v7 forAssetSet:set];
}

@end