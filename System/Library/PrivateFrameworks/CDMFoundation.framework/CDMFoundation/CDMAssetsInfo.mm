@interface CDMAssetsInfo
- (CDMAssetsInfo)init;
- (CDMAssetsInfo)initWithGraphName:(id)a3;
- (id)getCDMAssetsUsagesForCDMAssetSet:(int64_t)a3;
- (void)setAssetsUsages:(id)a3 withCDMAssetsFactorConfig:(id)a4 forCDMAssetSet:(int64_t)a5;
@end

@implementation CDMAssetsInfo

- (id)getCDMAssetsUsagesForCDMAssetSet:(int64_t)a3
{
  assetSetToUsagesMapping = self->_assetSetToUsagesMapping;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)assetSetToUsagesMapping objectForKey:v6];

  if (v7)
  {
    v8 = self->_assetSetToUsagesMapping;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setAssetsUsages:(id)a3 withCDMAssetsFactorConfig:(id)a4 forCDMAssetSet:(int64_t)a5
{
  assetSetToUsagesMapping = self->_assetSetToUsagesMapping;
  v9 = MEMORY[0x1E696AD98];
  v12 = a4;
  v10 = a3;
  v11 = [v9 numberWithInteger:a5];
  [(NSMutableDictionary *)assetSetToUsagesMapping setObject:v10 forKey:v11];

  [(CDMAssetSetToFactorsConfig *)self->_cdmAssetSetToFactorsConfig setCDMAssetsFactorConfig:v12 forAssetSet:a5];
}

- (CDMAssetsInfo)initWithGraphName:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CDMAssetsInfo;
  v6 = [(CDMAssetsInfo *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphName, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetSetToUsagesMapping = v7->_assetSetToUsagesMapping;
    v7->_assetSetToUsagesMapping = v8;

    v10 = objc_alloc_init(CDMAssetSetToFactorsConfig);
    cdmAssetSetToFactorsConfig = v7->_cdmAssetSetToFactorsConfig;
    v7->_cdmAssetSetToFactorsConfig = v10;
  }

  return v7;
}

- (CDMAssetsInfo)init
{
  v8.receiver = self;
  v8.super_class = CDMAssetsInfo;
  v2 = [(CDMAssetsInfo *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetSetToUsagesMapping = v2->_assetSetToUsagesMapping;
    v2->_assetSetToUsagesMapping = v3;

    v5 = objc_alloc_init(CDMAssetSetToFactorsConfig);
    cdmAssetSetToFactorsConfig = v2->_cdmAssetSetToFactorsConfig;
    v2->_cdmAssetSetToFactorsConfig = v5;
  }

  return v2;
}

@end