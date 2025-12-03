@interface FCCampaignReferralConfig
- (FCCampaignReferralConfig)initWithCampaignID:(id)d configDictionary:(id)dictionary;
@end

@implementation FCCampaignReferralConfig

- (FCCampaignReferralConfig)initWithCampaignID:(id)d configDictionary:(id)dictionary
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = FCCampaignReferralConfig;
  v9 = [(FCCampaignReferralConfig *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_campaignID, d);
    v11 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"autoFavoriteTagIds", 0);
    autoFavoriteTagIDs = v10->_autoFavoriteTagIDs;
    v10->_autoFavoriteTagIDs = v11;
  }

  return v10;
}

@end