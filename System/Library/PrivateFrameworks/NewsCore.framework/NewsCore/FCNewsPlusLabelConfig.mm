@interface FCNewsPlusLabelConfig
- (FCNewsPlusLabelConfig)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCNewsPlusLabelConfig

- (FCNewsPlusLabelConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = FCNewsPlusLabelConfig;
  v5 = [(FCNewsPlusLabelConfig *)&v19 init];
  if (v5)
  {
    v5->_enabled = FCAppConfigurationBoolValue(dictionaryCopy, @"enabled", 0);
    v5->_toolTipDisplayQuiescenceInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"toolTipDisplayQuiescenceInterval", 86400);
    v5->_toolTipDisplayMaxCount = FCAppConfigurationIntegerValue(dictionaryCopy, @"toolTipDisplayMaxCount", 0);
    v6 = FCBundle();
    v7 = [v6 localizedStringForKey:@"Welcome to News+" value:&stru_1F2DC7DC0 table:0];
    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"toolTipTitle", v7);
    toolTipTitle = v5->_toolTipTitle;
    v5->_toolTipTitle = v8;

    v10 = FCBundle();
    v11 = [v10 localizedStringForKey:@"Stories with this badge are part of your subscription." value:&stru_1F2DC7DC0 table:0];
    v12 = FCAppConfigurationStringValue(dictionaryCopy, @"toolTipBody", v11);
    toolTipBody = v5->_toolTipBody;
    v5->_toolTipBody = v12;

    v14 = FCBundle();
    v15 = [v14 localizedStringForKey:@"Stories with an Apple News+ badge are part of your subscription." value:&stru_1F2DC7DC0 table:0];
    v16 = FCAppConfigurationStringValue(dictionaryCopy, @"toolTipAlternativeBodyForVoiceOver", v15);
    toolTipAlternativeBodyForVoiceOver = v5->_toolTipAlternativeBodyForVoiceOver;
    v5->_toolTipAlternativeBodyForVoiceOver = v16;
  }

  return v5;
}

@end