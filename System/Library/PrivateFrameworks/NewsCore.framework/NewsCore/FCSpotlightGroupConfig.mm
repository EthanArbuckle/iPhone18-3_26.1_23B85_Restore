@interface FCSpotlightGroupConfig
- (FCCardStyleProviding)spotlightItemDarkStyle;
- (FCCardStyleProviding)spotlightItemStyle;
- (FCSpotlightGroupConfig)initWithDictionary:(id)dictionary;
- (NSString)spotlightCallToActionTitle;
- (NSString)spotlightEyebrowTitle;
@end

@implementation FCSpotlightGroupConfig

- (FCSpotlightGroupConfig)initWithDictionary:(id)dictionary
{
  v12.receiver = self;
  v12.super_class = FCSpotlightGroupConfig;
  v3 = [(FCGroupConfig *)&v12 initWithDictionary:dictionary];
  v4 = v3;
  if (v3)
  {
    dictionary = [(FCGroupConfig *)v3 dictionary];
    v6 = [dictionary objectForKeyedSubscript:@"publishDate"];

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

    dictionary2 = [(FCGroupConfig *)v4 dictionary];
    v9 = [dictionary2 objectForKeyedSubscript:@"articleID"];
    spotlightArticleID = v4->_spotlightArticleID;
    v4->_spotlightArticleID = v9;
  }

  return v4;
}

- (NSString)spotlightCallToActionTitle
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"spotlightCallToActionTitle"];

  return v3;
}

- (NSString)spotlightEyebrowTitle
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"spotlightEyebrowTitle"];

  return v3;
}

- (FCCardStyleProviding)spotlightItemStyle
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"spotlightStyle"];

  v4 = [FCCardStyle styleWithConfigDict:v3];

  return v4;
}

- (FCCardStyleProviding)spotlightItemDarkStyle
{
  dictionary = [(FCGroupConfig *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"spotlightStyleDark"];

  v4 = [FCCardStyle styleWithConfigDict:v3];

  return v4;
}

@end