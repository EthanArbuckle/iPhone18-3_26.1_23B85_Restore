@interface FCSportsFavoritesSyncModalConfig
- (FCSportsFavoritesSyncModalConfig)initWithConfigDictionary:(id)a3;
@end

@implementation FCSportsFavoritesSyncModalConfig

- (FCSportsFavoritesSyncModalConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FCSportsFavoritesSyncModalConfig;
  v5 = [(FCSportsFavoritesSyncModalConfig *)&v11 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(v4, @"titleText", 0);
    titleText = v5->_titleText;
    v5->_titleText = v6;

    v8 = FCAppConfigurationStringValue(v4, @"bodyText", 0);
    bodyText = v5->_bodyText;
    v5->_bodyText = v8;
  }

  return v5;
}

@end