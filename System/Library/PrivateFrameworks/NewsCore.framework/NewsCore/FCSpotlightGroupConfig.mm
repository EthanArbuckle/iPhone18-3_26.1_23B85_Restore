@interface FCSpotlightGroupConfig
- (FCCardStyleProviding)spotlightItemDarkStyle;
- (FCCardStyleProviding)spotlightItemStyle;
- (FCSpotlightGroupConfig)initWithDictionary:(id)a3;
- (NSString)spotlightCallToActionTitle;
- (NSString)spotlightEyebrowTitle;
@end

@implementation FCSpotlightGroupConfig

- (FCSpotlightGroupConfig)initWithDictionary:(id)a3
{
  v12.receiver = self;
  v12.super_class = FCSpotlightGroupConfig;
  v3 = [(FCGroupConfig *)&v12 initWithDictionary:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(FCGroupConfig *)v3 dictionary];
    v6 = [v5 objectForKeyedSubscript:@"publishDate"];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DF00] fc_dateFromStringWithISO8601Format:v6];
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&v4->_publishDate, v7);
    if (v6)
    {
    }

    v8 = [(FCGroupConfig *)v4 dictionary];
    v9 = [v8 objectForKeyedSubscript:@"articleID"];
    spotlightArticleID = v4->_spotlightArticleID;
    v4->_spotlightArticleID = v9;
  }

  return v4;
}

- (NSString)spotlightCallToActionTitle
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"spotlightCallToActionTitle"];

  return v3;
}

- (NSString)spotlightEyebrowTitle
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"spotlightEyebrowTitle"];

  return v3;
}

- (FCCardStyleProviding)spotlightItemStyle
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"spotlightStyle"];

  v4 = [FCCardStyle styleWithConfigDict:v3];

  return v4;
}

- (FCCardStyleProviding)spotlightItemDarkStyle
{
  v2 = [(FCGroupConfig *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"spotlightStyleDark"];

  v4 = [FCCardStyle styleWithConfigDict:v3];

  return v4;
}

@end