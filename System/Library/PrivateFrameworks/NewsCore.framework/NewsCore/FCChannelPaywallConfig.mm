@interface FCChannelPaywallConfig
- (FCChannelPaywallConfig)initWithChannelID:(id)a3 configDictionary:(id)a4;
@end

@implementation FCChannelPaywallConfig

- (FCChannelPaywallConfig)initWithChannelID:(id)a3 configDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = FCChannelPaywallConfig;
  v8 = [(FCChannelPaywallConfig *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    channelID = v8->_channelID;
    v8->_channelID = v9;

    v8->_filterALaCartePaidArticlesForPaidBundleSubscribers = FCAppConfigurationBoolValue(v7, @"filterALaCartePaidArticlesForPaidBundleSubscribers", 0);
    v11 = FCAppConfigurationStringValue(v7, @"articleSoftPaywallPosition", @"bottom");
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
    v13 = FCAppConfigurationStringValue(v7, @"articleSoftPaywallPositionForPaidBundleSubscribers", @"none");

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