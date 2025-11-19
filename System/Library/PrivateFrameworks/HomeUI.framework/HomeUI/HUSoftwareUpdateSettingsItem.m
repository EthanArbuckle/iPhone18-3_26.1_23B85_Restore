@interface HUSoftwareUpdateSettingsItem
+ (id)footerTitleForHome:(id)a3;
- (BOOL)_shouldShowSoftwareUpdateIcon;
- (HUSoftwareUpdateSettingsItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)description;
@end

@implementation HUSoftwareUpdateSettingsItem

- (HUSoftwareUpdateSettingsItem)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUSoftwareUpdateSettingsItem;
  v6 = [(HUSoftwareUpdateSettingsItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_opt_new();
  v5 = _HULocalizedStringWithDefaultValue(@"HUEditLocationSoftwareUpdateTitle", @"HUEditLocationSoftwareUpdateTitle", 1);
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v6 = *MEMORY[0x277D13DE0];
  [v4 setObject:&unk_282492228 forKeyedSubscript:*MEMORY[0x277D13DE0]];
  [v4 setObject:@"Home.HomeSettings.SoftwareUpdate" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  if ([(HUSoftwareUpdateSettingsItem *)self _shouldShowSoftwareUpdateIcon])
  {
    v7 = objc_alloc(MEMORY[0x277D14728]);
    v8 = [MEMORY[0x277D755D0] configurationWithPointSize:24.0];
    v9 = [v7 initWithSystemImageNamed:@"square.and.arrow.down.fill" configuration:v8];
    [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13E88]];
  }

  v10 = objc_alloc(MEMORY[0x277D14B28]);
  v11 = [(HUSoftwareUpdateSettingsItem *)self home];
  v12 = [v11 accessories];
  v13 = [v10 initWithAccessories:v12];

  v14 = [(HUSoftwareUpdateSettingsItem *)self home];
  v15 = [v14 hf_hasFirstPartyAccessoriesSupportingSoftwareUpdate];

  v16 = [(HUSoftwareUpdateSettingsItem *)self home];
  v17 = [v16 hf_hasThirdPartyAccessoriesSupportingSoftwareUpdate];

  v18 = MEMORY[0x277D13E20];
  if (v15 && v17)
  {
    v19 = [(HUSoftwareUpdateSettingsItem *)self home];
    if ([v19 isAutomaticSoftwareUpdateEnabled])
    {
      v20 = [(HUSoftwareUpdateSettingsItem *)self home];
      v21 = [v20 hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];

      if (v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v22 = [(HUSoftwareUpdateSettingsItem *)self home];
    v23 = [v22 isAutomaticSoftwareUpdateEnabled];

    if (v23)
    {
      v24 = @"HUSoftwareUpdateAutomaticSetting_FirstParty";
    }

    else
    {
      v25 = [(HUSoftwareUpdateSettingsItem *)self home];
      v26 = [v25 hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];

      if ((v26 & 1) == 0)
      {
        goto LABEL_26;
      }

      v24 = @"HUSoftwareUpdateAutomaticSetting_ThirdParty";
    }

    goto LABEL_24;
  }

  if (v15)
  {
    v16 = [(HUSoftwareUpdateSettingsItem *)self home];
    if ([v16 isAutomaticSoftwareUpdateEnabled])
    {

      goto LABEL_23;
    }

    if ((v17 & 1) == 0)
    {
LABEL_25:

      goto LABEL_26;
    }
  }

  else if (!v17)
  {
    goto LABEL_26;
  }

  v27 = [(HUSoftwareUpdateSettingsItem *)self home];
  v28 = [v27 hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];

  if (!v15)
  {
    if (!v28)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v28)
  {
LABEL_23:
    v24 = @"HUSoftwareUpdateAutomaticSetting_All";
LABEL_24:
    v16 = _HULocalizedStringWithDefaultValue(v24, v24, 1);
    [v4 setObject:v16 forKeyedSubscript:*v18];
    goto LABEL_25;
  }

LABEL_26:
  v29 = *v18;
  v30 = [v4 objectForKeyedSubscript:*v18];

  if (!v30)
  {
    if ([v13 updatesReadyToInstall])
    {
      [v4 setObject:&unk_282492240 forKeyedSubscript:v6];
      v31 = [v13 updatesReadyToInstall];
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
      [v4 setObject:v32 forKeyedSubscript:*MEMORY[0x277D13DD0]];

      [v4 setObject:0 forKeyedSubscript:v29];
    }

    else
    {
      v33 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateAutomaticSetting_Off", @"HUSoftwareUpdateAutomaticSetting_Off", 1);
      [v4 setObject:v33 forKeyedSubscript:v29];
    }
  }

  v34 = MEMORY[0x277CBEB98];
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = [v34 setWithObjects:{v35, v36, objc_opt_class(), 0}];
  [v4 setObject:v37 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v38 = MEMORY[0x277CBEB98];
  v39 = [(HUSoftwareUpdateSettingsItem *)self home];
  v40 = [v38 setWithObject:v39];
  [v4 setObject:v40 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v41 = MEMORY[0x277CBEC38];
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FA8]];
  [v4 setObject:v41 forKeyedSubscript:*MEMORY[0x277D13F18]];
  if (![v13 allUpdates])
  {
    v42 = [(HUSoftwareUpdateSettingsItem *)self home];
    v43 = [v42 hf_shouldShowSoftwareUpdateSettings];

    if ((v43 & 1) == 0)
    {
      [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    }
  }

  v44 = MEMORY[0x277D2C900];
  v45 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v46 = [v44 futureWithResult:v45];

  return v46;
}

+ (id)footerTitleForHome:(id)a3
{
  v3 = a3;
  v4 = [v3 hf_hasFirstPartyAccessoriesSupportingSoftwareUpdate];
  v5 = [v3 hf_hasThirdPartyAccessoriesSupportingSoftwareUpdate];
  if (v4 && v5)
  {
    if ([v3 isAutomaticSoftwareUpdateEnabled] && objc_msgSend(v3, "hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled"))
    {
      v6 = @"HUSoftwareUpdateAutomaticSetting_All_Footer";
      goto LABEL_21;
    }

    if ([v3 isAutomaticSoftwareUpdateEnabled])
    {
      v7 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateAutomaticSetting_FirstParty_On_Footer", @"HUSoftwareUpdateAutomaticSetting_FirstParty_On_Footer", 1);
    }

    else
    {
      v8 = [v3 hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
      v7 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateAutomaticSetting_FirstParty_Off_Footer", @"HUSoftwareUpdateAutomaticSetting_FirstParty_Off_Footer", 1);
      if (v8)
      {
        v9 = @"HUSoftwareUpdateAutomaticSetting_ThirdParty_On_Footer";
LABEL_17:
        v18 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
        v16 = HULocalizedStringWithFormat(@"HUSoftwareUpdateAutomaticSettingFooterFormat", @"%@%@", v10, v11, v12, v13, v14, v15, v7);

        goto LABEL_22;
      }
    }

    v9 = @"HUSoftwareUpdateAutomaticSetting_ThirdParty_Off_Footer";
    goto LABEL_17;
  }

  if (v4)
  {
    if ([v3 isAutomaticSoftwareUpdateEnabled])
    {
      v6 = @"HUSoftwareUpdateAutomaticSetting_FirstParty_On_Footer";
    }

    else
    {
      v6 = @"HUSoftwareUpdateAutomaticSetting_FirstParty_Off_Footer";
    }
  }

  else
  {
    if (!v5)
    {
      v16 = 0;
      goto LABEL_22;
    }

    if ([v3 hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled])
    {
      v6 = @"HUSoftwareUpdateAutomaticSetting_ThirdParty_On_Footer";
    }

    else
    {
      v6 = @"HUSoftwareUpdateAutomaticSetting_ThirdParty_Off_Footer";
    }
  }

LABEL_21:
  v16 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
LABEL_22:

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUSoftwareUpdateSettingsItem *)self latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v6 = [v3 appendBool:objc_msgSend(v5 withName:"BOOLValue") ifEqualTo:{@"hidden", 1}];

  v7 = [(HUSoftwareUpdateSettingsItem *)self latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v3 appendString:v8 withName:@"title"];

  v9 = [(HUSoftwareUpdateSettingsItem *)self latestResults];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [v3 appendString:v10 withName:@"description" skipIfEmpty:1];

  v11 = [(HUSoftwareUpdateSettingsItem *)self latestResults];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13DD0]];
  v13 = [v3 appendObject:v12 withName:@"badgeCount" skipIfNil:1];

  v14 = [v3 build];

  return v14;
}

- (BOOL)_shouldShowSoftwareUpdateIcon
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3 = [v2 homeManager];
  v4 = [v3 hasOptedToHH2];

  return v4 ^ 1;
}

@end