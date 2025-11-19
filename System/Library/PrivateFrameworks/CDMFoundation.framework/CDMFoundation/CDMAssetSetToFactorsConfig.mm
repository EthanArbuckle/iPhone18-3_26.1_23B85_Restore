@interface CDMAssetSetToFactorsConfig
- (CDMAssetSetToFactorsConfig)init;
- (id)getAllFactors;
- (id)getCDMFactorConfigForAssetSet:(int64_t)a3;
- (void)setCDMAssetsFactorConfig:(id)a3 forAssetSet:(int64_t)a4;
@end

@implementation CDMAssetSetToFactorsConfig

- (CDMAssetSetToFactorsConfig)init
{
  v6.receiver = self;
  v6.super_class = CDMAssetSetToFactorsConfig;
  v2 = [(CDMAssetSetToFactorsConfig *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetSetToFactorsMapping = v2->_assetSetToFactorsMapping;
    v2->_assetSetToFactorsMapping = v3;
  }

  return v2;
}

- (id)getAllFactors
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(NSMutableDictionary *)self->_assetSetToFactorsMapping allValues];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)self->_assetSetToFactorsMapping allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) getFactorToFoldersMapping];
        v12 = [v11 allKeys];
        [v5 addObjectsFromArray:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setCDMAssetsFactorConfig:(id)a3 forAssetSet:(int64_t)a4
{
  assetSetToFactorsMapping = self->_assetSetToFactorsMapping;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  [(NSMutableDictionary *)assetSetToFactorsMapping setObject:v7 forKey:v8];
}

- (id)getCDMFactorConfigForAssetSet:(int64_t)a3
{
  assetSetToFactorsMapping = self->_assetSetToFactorsMapping;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)assetSetToFactorsMapping objectForKey:v6];

  if (v7)
  {
    v8 = self->_assetSetToFactorsMapping;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end