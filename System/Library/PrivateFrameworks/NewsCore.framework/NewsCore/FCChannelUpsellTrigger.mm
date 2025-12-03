@interface FCChannelUpsellTrigger
- (FCChannelUpsellTrigger)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCChannelUpsellTrigger

- (FCChannelUpsellTrigger)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FCChannelUpsellTrigger;
  v5 = [(FCChannelUpsellTrigger *)&v12 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(dictionaryCopy, @"triggerMethod", 0);
    v5->_triggerMethod = FCChannelUpsellTriggerMethodForValue(v6);

    v5->_triggerCount = FCAppConfigurationIntegerValue(dictionaryCopy, @"triggerCount", 0);
    v7 = FCAppConfigurationStringValue(dictionaryCopy, @"subscriberUpsellArticleID", 0);
    subscriberUpsellArticleID = v5->_subscriberUpsellArticleID;
    v5->_subscriberUpsellArticleID = v7;

    v9 = FCAppConfigurationStringValue(dictionaryCopy, @"nonSubscriberUpsellArticleID", 0);
    nonSubscriberUpsellArticleID = v5->_nonSubscriberUpsellArticleID;
    v5->_nonSubscriberUpsellArticleID = v9;
  }

  return v5;
}

@end