@interface LSApplicationRecord(Workflow)
+ (id)wf_bundleAllowList;
- (uint64_t)wf_iconIsDefaultVisible;
- (uint64_t)wf_isAvailableInContext:()Workflow;
- (uint64_t)wf_isLinkEnabled;
@end

@implementation LSApplicationRecord(Workflow)

- (uint64_t)wf_iconIsDefaultVisible
{
  infoDictionary = [self infoDictionary];
  v2 = [infoDictionary objectForKey:@"SBIconVisibilityDefaultVisible" ofClass:objc_opt_class()];

  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (id)wf_bundleAllowList
{
  if (wf_bundleAllowList_onceToken != -1)
  {
    dispatch_once(&wf_bundleAllowList_onceToken, &__block_literal_global_14410);
  }

  v1 = wf_bundleAllowList_allowlist;

  return v1;
}

- (uint64_t)wf_isLinkEnabled
{
  if (objc_opt_respondsToSelector() & 1) == 0 || ([self isLinkEnabled])
  {
    return 1;
  }

  applicationExtensionRecords = [self applicationExtensionRecords];
  allObjects = [applicationExtensionRecords allObjects];
  v5 = [allObjects if_firstObjectPassingTest:&__block_literal_global_189_14381];

  v2 = v5 != 0;
  return v2;
}

- (uint64_t)wf_isAvailableInContext:()Workflow
{
  applicationState = [self applicationState];
  isInstalled = [applicationState isInstalled];

  applicationState2 = [self applicationState];
  isRestricted = [applicationState2 isRestricted];

  v7 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D7A310], *MEMORY[0x277D7A308], 0}];
  bundleIdentifier = [self bundleIdentifier];
  if (bundleIdentifier)
  {
    hiddenAppBundleIdentifiers = [MEMORY[0x277CEBE80] hiddenAppBundleIdentifiers];
    bundleIdentifier2 = [self bundleIdentifier];
    v31 = [hiddenAppBundleIdentifiers containsObject:bundleIdentifier2];
  }

  else
  {
    v31 = 0;
  }

  compatibilityObject = [self compatibilityObject];
  bundleType = [compatibilityObject bundleType];

  v34 = v7;
  if ([bundleType isEqualToString:*MEMORY[0x277CC1E00]])
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    bundleIdentifier3 = [self bundleIdentifier];
    if ([v7 containsObject:bundleIdentifier3])
    {
      LOBYTE(v13) = 1;
    }

    else
    {
      v13 = [self wf_iconIsDefaultVisible] ^ 1;
    }
  }

  if ([bundleType isEqualToString:*MEMORY[0x277CC1E08]])
  {
    v15 = 1;
  }

  else
  {
    bundleIdentifier4 = [self bundleIdentifier];
    v15 = [bundleIdentifier4 isEqualToString:@"com.apple.TapToRadar"];
  }

  appTags = [self appTags];
  v18 = [appTags containsObject:@"hidden"];

  isLaunchProhibited = [self isLaunchProhibited];
  bundleIdentifier5 = [self bundleIdentifier];
  if ([bundleIdentifier5 isEqualToString:@"com.apple.webapp"])
  {
    v21 = 1;
  }

  else
  {
    bundleIdentifier6 = [self bundleIdentifier];
    v21 = [bundleIdentifier6 isEqualToString:@"com.apple.webapp1"];
  }

  wf_bundleAllowList = [MEMORY[0x277CC1E70] wf_bundleAllowList];
  bundleIdentifier7 = [self bundleIdentifier];
  v25 = [wf_bundleAllowList containsObject:bundleIdentifier7];

  if (a3 == 2)
  {
    v27 = isInstalled ^ 1 | isRestricted | v13;
    v28 = v31 | v21 | isLaunchProhibited;
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v27 = isInstalled ^ 1;
    v28 = isRestricted | v15;
LABEL_22:
    v26 = v27 | v28;
    goto LABEL_23;
  }

  if (a3)
  {
    v29 = 0;
    goto LABEL_25;
  }

  v26 = isInstalled ^ 1 | isRestricted | v13 | v31 | v21 | isLaunchProhibited | v15 | v18;
LABEL_23:
  v29 = v26 ^ 1 | v25;
LABEL_25:

  return v29 & 1;
}

@end