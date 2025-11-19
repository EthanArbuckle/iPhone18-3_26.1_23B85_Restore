@interface FCCampaignReferralConfig
- (FCCampaignReferralConfig)initWithCampaignID:(id)a3 configDictionary:(id)a4;
@end

@implementation FCCampaignReferralConfig

- (FCCampaignReferralConfig)initWithCampaignID:(id)a3 configDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = FCCampaignReferralConfig;
  v9 = [(FCCampaignReferralConfig *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_campaignID, a3);
    v11 = FCAppConfigurationArrayValueWithDefaultValue(v8, @"autoFavoriteTagIds", 0);
    autoFavoriteTagIDs = v10->_autoFavoriteTagIDs;
    v10->_autoFavoriteTagIDs = v11;
  }

  return v10;
}

@end