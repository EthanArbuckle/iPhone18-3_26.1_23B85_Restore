@interface HUServiceDetailsAudioSettingsItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUServiceDetailsAudioSettingsItem

- (id)_subclass_updateWithOptions:(id)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsAudioSettingsLabel", @"HUServiceDetailsAudioSettingsLabel", 1);
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  if (-[HUServiceDetailsAbstractItem isMediaAccessoryGroup](self, "isMediaAccessoryGroup") && (-[HUServiceDetailsAbstractItem home](self, "home"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hf_currentUserIsAdministrator], v6, (v7 & 1) != 0))
  {
    sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    latestResults = [sourceServiceItem latestResults];
    v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13BD0]];
    if ([v10 conformsToProtocol:&unk_2825BCB38])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = MEMORY[0x277CCABB0];
    hf_showsAudioSettings = [v12 hf_showsAudioSettings];

    v15 = [v13 numberWithInt:hf_showsAudioSettings ^ 1u];
    [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277D13EA8]];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v16 = MEMORY[0x277D2C900];
  v17 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
  v18 = [v16 futureWithResult:v17];

  return v18;
}

@end