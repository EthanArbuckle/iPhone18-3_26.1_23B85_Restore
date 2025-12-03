@interface FCLocationSharingUpsellConfig
- (FCLocationSharingUpsellConfig)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCLocationSharingUpsellConfig

- (FCLocationSharingUpsellConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = FCLocationSharingUpsellConfig;
  v5 = [(FCLocationSharingUpsellConfig *)&v7 init];
  if (v5)
  {
    v5->_landingPageArticleID = FCAppConfigurationStringValue(dictionaryCopy, @"landingPageArticleId", 0);
  }

  return v5;
}

@end