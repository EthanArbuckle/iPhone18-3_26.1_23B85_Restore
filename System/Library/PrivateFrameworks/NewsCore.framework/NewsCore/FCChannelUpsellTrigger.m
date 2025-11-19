@interface FCChannelUpsellTrigger
- (FCChannelUpsellTrigger)initWithConfigDictionary:(id)a3;
@end

@implementation FCChannelUpsellTrigger

- (FCChannelUpsellTrigger)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FCChannelUpsellTrigger;
  v5 = [(FCChannelUpsellTrigger *)&v12 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(v4, @"triggerMethod", 0);
    v5->_triggerMethod = FCChannelUpsellTriggerMethodForValue(v6);

    v5->_triggerCount = FCAppConfigurationIntegerValue(v4, @"triggerCount", 0);
    v7 = FCAppConfigurationStringValue(v4, @"subscriberUpsellArticleID", 0);
    subscriberUpsellArticleID = v5->_subscriberUpsellArticleID;
    v5->_subscriberUpsellArticleID = v7;

    v9 = FCAppConfigurationStringValue(v4, @"nonSubscriberUpsellArticleID", 0);
    nonSubscriberUpsellArticleID = v5->_nonSubscriberUpsellArticleID;
    v5->_nonSubscriberUpsellArticleID = v9;
  }

  return v5;
}

@end