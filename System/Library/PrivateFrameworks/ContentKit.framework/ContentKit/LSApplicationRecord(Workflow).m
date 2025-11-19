@interface LSApplicationRecord(Workflow)
+ (id)wf_bundleAllowList;
- (uint64_t)wf_iconIsDefaultVisible;
- (uint64_t)wf_isAvailableInContext:()Workflow;
- (uint64_t)wf_isLinkEnabled;
@end

@implementation LSApplicationRecord(Workflow)

- (uint64_t)wf_iconIsDefaultVisible
{
  v1 = [a1 infoDictionary];
  v2 = [v1 objectForKey:@"SBIconVisibilityDefaultVisible" ofClass:objc_opt_class()];

  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
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
  if (objc_opt_respondsToSelector() & 1) == 0 || ([a1 isLinkEnabled])
  {
    return 1;
  }

  v3 = [a1 applicationExtensionRecords];
  v4 = [v3 allObjects];
  v5 = [v4 if_firstObjectPassingTest:&__block_literal_global_189_14381];

  v2 = v5 != 0;
  return v2;
}

- (uint64_t)wf_isAvailableInContext:()Workflow
{
  v5 = [a1 applicationState];
  v33 = [v5 isInstalled];

  v6 = [a1 applicationState];
  v32 = [v6 isRestricted];

  v7 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D7A310], *MEMORY[0x277D7A308], 0}];
  v8 = [a1 bundleIdentifier];
  if (v8)
  {
    v9 = [MEMORY[0x277CEBE80] hiddenAppBundleIdentifiers];
    v10 = [a1 bundleIdentifier];
    v31 = [v9 containsObject:v10];
  }

  else
  {
    v31 = 0;
  }

  v11 = [a1 compatibilityObject];
  v12 = [v11 bundleType];

  v34 = v7;
  if ([v12 isEqualToString:*MEMORY[0x277CC1E00]])
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v14 = [a1 bundleIdentifier];
    if ([v7 containsObject:v14])
    {
      LOBYTE(v13) = 1;
    }

    else
    {
      v13 = [a1 wf_iconIsDefaultVisible] ^ 1;
    }
  }

  if ([v12 isEqualToString:*MEMORY[0x277CC1E08]])
  {
    v15 = 1;
  }

  else
  {
    v16 = [a1 bundleIdentifier];
    v15 = [v16 isEqualToString:@"com.apple.TapToRadar"];
  }

  v17 = [a1 appTags];
  v18 = [v17 containsObject:@"hidden"];

  v19 = [a1 isLaunchProhibited];
  v20 = [a1 bundleIdentifier];
  if ([v20 isEqualToString:@"com.apple.webapp"])
  {
    v21 = 1;
  }

  else
  {
    v22 = [a1 bundleIdentifier];
    v21 = [v22 isEqualToString:@"com.apple.webapp1"];
  }

  v23 = [MEMORY[0x277CC1E70] wf_bundleAllowList];
  v24 = [a1 bundleIdentifier];
  v25 = [v23 containsObject:v24];

  if (a3 == 2)
  {
    v27 = v33 ^ 1 | v32 | v13;
    v28 = v31 | v21 | v19;
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v27 = v33 ^ 1;
    v28 = v32 | v15;
LABEL_22:
    v26 = v27 | v28;
    goto LABEL_23;
  }

  if (a3)
  {
    v29 = 0;
    goto LABEL_25;
  }

  v26 = v33 ^ 1 | v32 | v13 | v31 | v21 | v19 | v15 | v18;
LABEL_23:
  v29 = v26 ^ 1 | v25;
LABEL_25:

  return v29 & 1;
}

@end