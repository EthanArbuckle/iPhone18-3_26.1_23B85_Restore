@interface HMSettings(HFAdditions)
+ (id)hf_LoadSettingsAllowlist:()HFAdditions;
+ (void)hf_resetAllowlists;
- (id)hf_accessorySettingItemAtKeyPath:()HFAdditions;
- (uint64_t)hf_codex;
- (void)hf_accessorySettingAtKeyPath:()HFAdditions;
- (void)hf_accessorySettingGroupAtKeyPath:()HFAdditions;
@end

@implementation HMSettings(HFAdditions)

+ (void)hf_resetAllowlists
{
  v1 = _MergedGlobals_311;
  if (_MergedGlobals_311)
  {
    _MergedGlobals_311 = 0;

    v0 = vars8;
  }

  v2 = qword_280E03C08;
  if (qword_280E03C08)
  {
    qword_280E03C08 = 0;
  }
}

+ (id)hf_LoadSettingsAllowlist:()HFAdditions
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 != 1)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v6 = @"SettingsAllowlist-User";
    v7 = &qword_280E03C08;
  }

  else
  {
    v6 = @"SettingsAllowlist-HomePod";
    v7 = &_MergedGlobals_311;
  }

  v8 = *v7;
  if (v8)
  {
    goto LABEL_23;
  }

LABEL_8:
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 URLForResource:v6 withExtension:@"plist"];

  v18 = 0;
  v8 = [HFAccessorySettingsEntity settingsAtURL:v10 error:&v18];
  v11 = v18;
  if (v11 || !v8)
  {
    v12 = HFLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Error building Settings Allowlist: %@ %@", buf, 0x16u);
    }
  }

  v13 = HFLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v20 = v6;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v11;
    _os_log_debug_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEBUG, "retrieved settings allowlist %@ %@ with error %@", buf, 0x20u);
  }

  if (v8)
  {
    if (a3)
    {
      goto LABEL_17;
    }

LABEL_20:
    v14 = &_MergedGlobals_311;
    goto LABEL_21;
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"HMAccessorySettings+HFAdditions.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"currentAllowlist"}];

  if (!a3)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (a3 == 1)
  {
    v14 = &qword_280E03C08;
LABEL_21:
    objc_storeStrong(v14, v8);
  }

LABEL_23:
  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (uint64_t)hf_codex
{
  v0 = objc_opt_class();
  v1 = [v0 isEqual:objc_opt_class()];
  v2 = objc_opt_class();

  return [v2 hf_LoadSettingsAllowlist:v1];
}

- (void)hf_accessorySettingGroupAtKeyPath:()HFAdditions
{
  v4 = a3;
  objc_opt_class();
  v5 = [a1 hf_accessorySettingItemAtKeyPath:v4];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)hf_accessorySettingAtKeyPath:()HFAdditions
{
  v4 = a3;
  objc_opt_class();
  v5 = [a1 hf_accessorySettingItemAtKeyPath:v4];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)hf_accessorySettingItemAtKeyPath:()HFAdditions
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"HMAccessorySettings+HFAdditions.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  v6 = [a1 rootGroup];
  v7 = [v6 keyPath];
  v8 = [v7 isEqualToString:v5];

  if (v8)
  {
    v9 = a1;
  }

  else
  {
    v29 = v5;
    v10 = [v5 componentsSeparatedByString:@"."];
    v11 = [a1 rootGroup];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v35;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v12);
          }

          if (!v11)
          {
            v9 = 0;
LABEL_19:

            goto LABEL_22;
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          if ([v18 isEqualToString:@"root"])
          {
            v19 = @"root";

            v15 = v19;
          }

          else
          {
            v20 = [(__CFString *)v15 stringByAppendingFormat:@".%@", v18];

            v21 = objc_autoreleasePoolPush();
            v22 = [v11 settings];
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __60__HMSettings_HFAdditions__hf_accessorySettingItemAtKeyPath___block_invoke;
            v32[3] = &unk_277DF57B0;
            v15 = v20;
            v33 = v15;
            v9 = [v22 na_firstObjectPassingTest:v32];

            objc_autoreleasePoolPop(v21);
            if (v9)
            {
              goto LABEL_19;
            }

            v23 = objc_autoreleasePoolPush();
            v24 = [v11 groups];
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __60__HMSettings_HFAdditions__hf_accessorySettingItemAtKeyPath___block_invoke_2;
            v30[3] = &unk_277E00CC8;
            v15 = v15;
            v31 = v15;
            v25 = [v24 na_firstObjectPassingTest:v30];

            objc_autoreleasePoolPop(v23);
            v11 = v25;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 0;
    }

    v11 = v11;
    v9 = v11;
LABEL_22:
    v5 = v29;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v9;
}

@end