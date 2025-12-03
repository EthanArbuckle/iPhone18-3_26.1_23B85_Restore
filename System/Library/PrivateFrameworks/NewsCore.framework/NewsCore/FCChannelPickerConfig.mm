@interface FCChannelPickerConfig
- (FCChannelPickerConfig)initWithPickerID:(id)d configDictionary:(id)dictionary;
@end

@implementation FCChannelPickerConfig

- (FCChannelPickerConfig)initWithPickerID:(id)d configDictionary:(id)dictionary
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = FCChannelPickerConfig;
  v8 = [(FCChannelPickerConfig *)&v23 init];
  if (v8)
  {
    v9 = [dCopy copy];
    pickerID = v8->_pickerID;
    v8->_pickerID = v9;

    v11 = FCAppConfigurationStringValue(dictionaryCopy, @"titleText", 0);
    titleText = v8->_titleText;
    v8->_titleText = v11;

    v13 = FCAppConfigurationStringValue(dictionaryCopy, @"featureName", 0);
    featureName = v8->_featureName;
    v8->_featureName = v13;

    v15 = FCAppConfigurationStringValue(dictionaryCopy, @"buttonTitle", 0);
    buttonTitle = v8->_buttonTitle;
    v8->_buttonTitle = v15;

    v17 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"featureTextColor", 0);
    v18 = [FCContentColorPair colorPairWithDictionary:v17];
    featureTextColor = v8->_featureTextColor;
    v8->_featureTextColor = v18;

    v8->_showRelatedChannels = FCAppConfigurationBoolValue(dictionaryCopy, @"showRelatedChannels", 0);
    v20 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"initialChannelIDs", 0);
    initialChannelIDs = v8->_initialChannelIDs;
    v8->_initialChannelIDs = v20;
  }

  return v8;
}

@end