@interface CDMAssetConfig
- (CDMAssetConfig)init;
- (id)getAssetConfigItemForKey:(id)key;
@end

@implementation CDMAssetConfig

- (id)getAssetConfigItemForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_assetConfigs objectForKey:keyCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_assetConfigs objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CDMAssetConfig)init
{
  v6.receiver = self;
  v6.super_class = CDMAssetConfig;
  v2 = [(CDMAssetConfig *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetConfigs = v2->_assetConfigs;
    v2->_assetConfigs = v3;
  }

  return v2;
}

@end