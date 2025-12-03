@interface FCChannelPaywallConfig
- (FCChannelPaywallConfig)initWithChannelID:(id)d configDictionary:(id)dictionary;
@end

@implementation FCChannelPaywallConfig

- (FCChannelPaywallConfig)initWithChannelID:(id)d configDictionary:(id)dictionary
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = FCChannelPaywallConfig;
  v8 = [(FCChannelPaywallConfig *)&v16 init];
  if (v8)
  {
    v9 = [dCopy copy];
    channelID = v8->_channelID;
    v8->_channelID = v9;

    v8->_filterALaCartePaidArticlesForPaidBundleSubscribers = FCAppConfigurationBoolValue(dictionaryCopy, @"filterALaCartePaidArticlesForPaidBundleSubscribers", 0);
    v11 = FCAppConfigurationStringValue(dictionaryCopy, @"articleSoftPaywallPosition", @"bottom");
    if ([v11 isEqualToString:@"top"])
    {
      v12 = 2;
    }

    else if ([v11 isEqualToString:@"bottom"] || !objc_msgSend(v11, "isEqualToString:", @"none"))
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    v8->_articleSoftPaywallPosition = v12;
    v13 = FCAppConfigurationStringValue(dictionaryCopy, @"articleSoftPaywallPositionForPaidBundleSubscribers", @"none");

    if ([v13 isEqualToString:@"top"])
    {
      v14 = 2;
    }

    else if ([v13 isEqualToString:@"bottom"])
    {
      v14 = 3;
    }

    else
    {
      [v13 isEqualToString:@"none"];
      v14 = 1;
    }

    v8->_articleSoftPaywallPositionForPaidBundleSubscribers = v14;
  }

  return v8;
}

@end