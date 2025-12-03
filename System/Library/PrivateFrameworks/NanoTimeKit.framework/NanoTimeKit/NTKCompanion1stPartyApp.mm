@interface NTKCompanion1stPartyApp
+ (BOOL)complicationType:(unint64_t)type mapsToRemovedSystemAppOnDevice:(id)device;
+ (id)_allApps;
+ (id)allAppsForDevice:(id)device;
+ (id)appForBundleIdentifier:(id)identifier;
+ (id)companionAppWithAppInfo:(_NTKCompanion1stPartyInfo *)info;
- (NTKCompanion1stPartyApp)initWithAppInfo:(_NTKCompanion1stPartyInfo *)info;
- (id)complication;
- (id)icon;
@end

@implementation NTKCompanion1stPartyApp

- (id)complication
{
  complicationType = [(NTKCompanion1stPartyApp *)self complicationType];

  return [NTKComplication anyComplicationOfType:complicationType];
}

+ (id)appForBundleIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _allApps = [self _allApps];
  v6 = [_allApps countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(_allApps);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        watchApplicationIdentifier = [v10 watchApplicationIdentifier];
        if ([watchApplicationIdentifier isEqualToString:identifierCopy])
        {

LABEL_13:
          v14 = v10;
          goto LABEL_14;
        }

        containerApplicationIdentifier = [v10 containerApplicationIdentifier];
        v13 = [containerApplicationIdentifier isEqualToString:identifierCopy];

        if (v13)
        {
          goto LABEL_13;
        }
      }

      v7 = [_allApps countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (id)allAppsForDevice:(id)device
{
  if ([device isRunningGraceOrLater])
  {
    _allApps = MEMORY[0x277CBEBF8];
  }

  else
  {
    _allApps = [self _allApps];
  }

  return _allApps;
}

+ (id)_allApps
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__NTKCompanion1stPartyApp__allApps__block_invoke;
  v5[3] = &__block_descriptor_40_e35___NSMutableArray_16__0__CLKDevice_8l;
  v5[4] = self;
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v3 = __35__NTKCompanion1stPartyApp__allApps__block_invoke(v5, currentDevice);

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

+ (id)companionAppWithAppInfo:(_NTKCompanion1stPartyInfo *)info
{
  v4 = info->var0;
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

  if (info->var2 == 9)
  {
    v7 = [NTKCompanion1stPartyStocksApp alloc];
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    v9 = [(NTKCompanion1stPartyStocksApp *)v7 initWithDevice:currentDevice];

    applicationState = [v5 applicationState];
    isInstalled = [applicationState isInstalled];

    if (isInstalled)
    {
      [v5 localizedName];
    }

    else
    {
      NTKCCustomizationLocalizedString(@"STOCKS_APP_NAME", @"Stocks", v12);
    }
    v15 = ;
    [(NTKCompanionApp *)v9 setName:v15];

    NTKImageNamed(info->var3);
  }

  v13 = [NTKCompanion1stPartyApp alloc];
  v14 = *&info->var2;
  v17[0] = *&info->var0;
  v17[1] = v14;
  v6 = [(NTKCompanion1stPartyApp *)v13 initWithAppInfo:v17];

LABEL_11:

  return v6;
}

- (NTKCompanion1stPartyApp)initWithAppInfo:(_NTKCompanion1stPartyInfo *)info
{
  v10.receiver = self;
  v10.super_class = NTKCompanion1stPartyApp;
  v4 = [(NTKCompanion1stPartyApp *)&v10 init];
  v5 = v4;
  if (v4)
  {
    [(NTKCompanionApp *)v4 setContainerApplicationIdentifier:info->var0];
    [(NTKCompanionApp *)v5 setWatchApplicationIdentifier:info->var1];
    [(NTKCompanion1stPartyApp *)v5 setComplicationType:info->var2];
    if ([(NTKCompanion1stPartyApp *)v5 complicationType]== 8)
    {
      v7 = NTKCCustomizationLocalizedString(@"CALENDAR_APP_NAME", @"Calendar", v6);
    }

    else
    {
      if ([(NTKCompanion1stPartyApp *)v5 complicationType]== 9)
      {
LABEL_7:
        [(NTKCompanion1stPartyApp *)v5 setIconName:info->var3];
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

+ (BOOL)complicationType:(unint64_t)type mapsToRemovedSystemAppOnDevice:(id)device
{
  if ([device isRunningGraceOrLater])
  {
    return 0;
  }

  v5 = &qword_27877DF98;
  v6 = 20;
  while (*v5 != type)
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
  applicationState = [v9 applicationState];
  isInstalled = [applicationState isInstalled];

  if ((isInstalled & 1) == 0)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace openApplicationWithBundleID:v8];
  }

  v13 = isInstalled ^ 1;

  return v13;
}

@end