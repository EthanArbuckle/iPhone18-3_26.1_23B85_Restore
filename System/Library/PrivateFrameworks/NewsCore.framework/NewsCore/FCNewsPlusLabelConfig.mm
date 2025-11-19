@interface FCNewsPlusLabelConfig
- (FCNewsPlusLabelConfig)initWithConfigDictionary:(id)a3;
@end

@implementation FCNewsPlusLabelConfig

- (FCNewsPlusLabelConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FCNewsPlusLabelConfig;
  v5 = [(FCNewsPlusLabelConfig *)&v19 init];
  if (v5)
  {
    v5->_enabled = FCAppConfigurationBoolValue(v4, @"enabled", 0);
    v5->_toolTipDisplayQuiescenceInterval = FCAppConfigurationIntegerValue(v4, @"toolTipDisplayQuiescenceInterval", 86400);
    v5->_toolTipDisplayMaxCount = FCAppConfigurationIntegerValue(v4, @"toolTipDisplayMaxCount", 0);
    v6 = FCBundle();
    v7 = [v6 localizedStringForKey:@"Welcome to News+" value:&stru_1F2DC7DC0 table:0];
    v8 = FCAppConfigurationStringValue(v4, @"toolTipTitle", v7);
    toolTipTitle = v5->_toolTipTitle;
    v5->_toolTipTitle = v8;

    v10 = FCBundle();
    v11 = [v10 localizedStringForKey:@"Stories with this badge are part of your subscription." value:&stru_1F2DC7DC0 table:0];
    v12 = FCAppConfigurationStringValue(v4, @"toolTipBody", v11);
    toolTipBody = v5->_toolTipBody;
    v5->_toolTipBody = v12;

    v14 = FCBundle();
    v15 = [v14 localizedStringForKey:@"Stories with an Apple News+ badge are part of your subscription." value:&stru_1F2DC7DC0 table:0];
    v16 = FCAppConfigurationStringValue(v4, @"toolTipAlternativeBodyForVoiceOver", v15);
    toolTipAlternativeBodyForVoiceOver = v5->_toolTipAlternativeBodyForVoiceOver;
    v5->_toolTipAlternativeBodyForVoiceOver = v16;
  }

  return v5;
}

@end