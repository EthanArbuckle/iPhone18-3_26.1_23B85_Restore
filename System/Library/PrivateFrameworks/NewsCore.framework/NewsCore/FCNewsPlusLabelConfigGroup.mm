@interface FCNewsPlusLabelConfigGroup
- (FCNewsPlusLabelConfigGroup)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCNewsPlusLabelConfigGroup

- (FCNewsPlusLabelConfigGroup)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = FCNewsPlusLabelConfigGroup;
  v5 = [(FCNewsPlusLabelConfigGroup *)&v19 init];
  if (v5)
  {
    v6 = [FCNewsPlusLabelConfig alloc];
    v7 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"configForTrialists", 0);
    v8 = [(FCNewsPlusLabelConfig *)v6 initWithConfigDictionary:v7];
    configForTrialists = v5->_configForTrialists;
    v5->_configForTrialists = v8;

    v10 = [FCNewsPlusLabelConfig alloc];
    v11 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"configForSubscribers", 0);
    v12 = [(FCNewsPlusLabelConfig *)v10 initWithConfigDictionary:v11];
    configForSubscribers = v5->_configForSubscribers;
    v5->_configForSubscribers = v12;

    v14 = [FCNewsPlusLabelConfig alloc];
    v15 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"configForPaidBundleViaOffer", 0);
    v16 = [(FCNewsPlusLabelConfig *)v14 initWithConfigDictionary:v15];
    configForPaidBundleViaOffer = v5->_configForPaidBundleViaOffer;
    v5->_configForPaidBundleViaOffer = v16;
  }

  return v5;
}

@end