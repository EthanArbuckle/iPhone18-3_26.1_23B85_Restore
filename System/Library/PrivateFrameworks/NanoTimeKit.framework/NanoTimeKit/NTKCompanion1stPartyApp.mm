@interface NTKCompanion1stPartyApp
+ (BOOL)complicationType:(unint64_t)a3 mapsToRemovedSystemAppOnDevice:(id)a4;
+ (id)_allApps;
+ (id)allAppsForDevice:(id)a3;
+ (id)appForBundleIdentifier:(id)a3;
+ (id)companionAppWithAppInfo:(_NTKCompanion1stPartyInfo *)a3;
- (NTKCompanion1stPartyApp)initWithAppInfo:(_NTKCompanion1stPartyInfo *)a3;
- (id)complication;
- (id)icon;
@end

@implementation NTKCompanion1stPartyApp

- (id)complication
{
  v2 = [(NTKCompanion1stPartyApp *)self complicationType];

  return [NTKComplication anyComplicationOfType:v2];
}

+ (id)appForBundleIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a1 _allApps];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 watchApplicationIdentifier];
        if ([v11 isEqualToString:v4])
        {

LABEL_13:
          v14 = v10;
          goto LABEL_14;
        }

        v12 = [v10 containerApplicationIdentifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

+ (id)allAppsForDevice:(id)a3
{
  if ([a3 isRunningGraceOrLater])
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v4 = [a1 _allApps];
  }

  return v4;
}

+ (id)_allApps
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__NTKCompanion1stPartyApp__allApps__block_invoke;
  v5[3] = &__block_descriptor_40_e35___NSMutableArray_16__0__CLKDevice_8l;
  v5[4] = a1;
  v2 = [MEMORY[0x277CBBAE8] currentDevice];
  v3 = __35__NTKCompanion1stPartyApp__allApps__block_invoke(v5, v2);

  return v3;
}

id __35__NTKCompanion1stPartyApp__allApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_2);
  if (_block_invoke___cachedDevice_2)
  {
    v4 = _block_invoke___cachedDevice_2 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke___previousCLKDeviceVersion_2))
  {
    _block_invoke___cachedDevice_2 = v3;
    _block_invoke___previousCLKDeviceVersion_2 = [v3 version];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__NTKCompanion1stPartyApp__allApps__block_invoke_2;
    v10[3] = &__block_descriptor_40_e35___NSMutableArray_16__0__CLKDevice_8l;
    v10[4] = *(a1 + 32);
    v6 = __35__NTKCompanion1stPartyApp__allApps__block_invoke_2(v10);
    v7 = _block_invoke_value_1;
    _block_invoke_value_1 = v6;
  }

  v8 = _block_invoke_value_1;
  os_unfair_lock_unlock(&_block_invoke_lock_2);

  return v8;
}

id __35__NTKCompanion1stPartyApp__allApps__block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  for (i = 0; i != 80; i += 4)
  {
    v4 = *(a1 + 32);
    v5 = *&AppInfos[i + 2];
    v8[0] = *&AppInfos[i];
    v8[1] = v5;
    v6 = [v4 companionAppWithAppInfo:v8];
    if (v6)
    {
      [v2 addObject:v6];
    }
  }

  return v2;
}

+ (id)companionAppWithAppInfo:(_NTKCompanion1stPartyInfo *)a3
{
  v4 = a3->var0;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
    if (!v5)
    {
      v6 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
  }

  if (a3->var2 == 9)
  {
    v7 = [NTKCompanion1stPartyStocksApp alloc];
    v8 = [MEMORY[0x277CBBAE8] currentDevice];
    v9 = [(NTKCompanion1stPartyStocksApp *)v7 initWithDevice:v8];

    v10 = [v5 applicationState];
    v11 = [v10 isInstalled];

    if (v11)
    {
      [v5 localizedName];
    }

    else
    {
      NTKCCustomizationLocalizedString(@"STOCKS_APP_NAME", @"Stocks", v12);
    }
    v15 = ;
    [(NTKCompanionApp *)v9 setName:v15];

    NTKImageNamed(a3->var3);
  }

  v13 = [NTKCompanion1stPartyApp alloc];
  v14 = *&a3->var2;
  v17[0] = *&a3->var0;
  v17[1] = v14;
  v6 = [(NTKCompanion1stPartyApp *)v13 initWithAppInfo:v17];

LABEL_11:

  return v6;
}

- (NTKCompanion1stPartyApp)initWithAppInfo:(_NTKCompanion1stPartyInfo *)a3
{
  v10.receiver = self;
  v10.super_class = NTKCompanion1stPartyApp;
  v4 = [(NTKCompanion1stPartyApp *)&v10 init];
  v5 = v4;
  if (v4)
  {
    [(NTKCompanionApp *)v4 setContainerApplicationIdentifier:a3->var0];
    [(NTKCompanionApp *)v5 setWatchApplicationIdentifier:a3->var1];
    [(NTKCompanion1stPartyApp *)v5 setComplicationType:a3->var2];
    if ([(NTKCompanion1stPartyApp *)v5 complicationType]== 8)
    {
      v7 = NTKCCustomizationLocalizedString(@"CALENDAR_APP_NAME", @"Calendar", v6);
    }

    else
    {
      if ([(NTKCompanion1stPartyApp *)v5 complicationType]== 9)
      {
LABEL_7:
        [(NTKCompanion1stPartyApp *)v5 setIconName:a3->var3];
        return v5;
      }

      v7 = NTKComplicationTypeLocalizedLabelText([(NTKCompanion1stPartyApp *)v5 complicationType]);
    }

    v8 = v7;
    [(NTKCompanionApp *)v5 setName:v7];

    goto LABEL_7;
  }

  return v5;
}

- (id)icon
{
  icon = self->_icon;
  if (!icon)
  {
    NTKImageNamed(self->_iconName);
  }

  return icon;
}

+ (BOOL)complicationType:(unint64_t)a3 mapsToRemovedSystemAppOnDevice:(id)a4
{
  if ([a4 isRunningGraceOrLater])
  {
    return 0;
  }

  v5 = &qword_27877DF98;
  v6 = 20;
  while (*v5 != a3)
  {
    v5 += 4;
    if (!--v6)
    {
      return 0;
    }
  }

  v7 = *(v5 - 2);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v7 allowPlaceholder:0 error:0];
  v10 = [v9 applicationState];
  v11 = [v10 isInstalled];

  if ((v11 & 1) == 0)
  {
    v12 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v12 openApplicationWithBundleID:v8];
  }

  v13 = v11 ^ 1;

  return v13;
}

@end