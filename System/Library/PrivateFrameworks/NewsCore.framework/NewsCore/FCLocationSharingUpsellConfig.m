@interface FCLocationSharingUpsellConfig
- (FCLocationSharingUpsellConfig)initWithConfigDictionary:(id)a3;
@end

@implementation FCLocationSharingUpsellConfig

- (FCLocationSharingUpsellConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FCLocationSharingUpsellConfig;
  v5 = [(FCLocationSharingUpsellConfig *)&v7 init];
  if (v5)
  {
    v5->_landingPageArticleID = FCAppConfigurationStringValue(v4, @"landingPageArticleId", 0);
  }

  return v5;
}

@end