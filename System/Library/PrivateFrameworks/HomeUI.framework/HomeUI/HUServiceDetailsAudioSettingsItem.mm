@interface HUServiceDetailsAudioSettingsItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsAudioSettingsItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsAudioSettingsLabel", @"HUServiceDetailsAudioSettingsLabel", 1);
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  if (-[HUServiceDetailsAbstractItem isMediaAccessoryGroup](self, "isMediaAccessoryGroup") && (-[HUServiceDetailsAbstractItem home](self, "home"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hf_currentUserIsAdministrator], v6, (v7 & 1) != 0))
  {
    v8 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    v9 = [v8 latestResults];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13BD0]];
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
    v14 = [v12 hf_showsAudioSettings];

    v15 = [v13 numberWithInt:v14 ^ 1u];
    [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13EA8]];
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v16 = MEMORY[0x277D2C900];
  v17 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v18 = [v16 futureWithResult:v17];

  return v18;
}

@end