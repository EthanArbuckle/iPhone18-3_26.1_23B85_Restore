@interface BLTAlertStateTester
- (BOOL)isScreenTimeBlockedForBundleIdentifier:(id)a3 ignoresDowntime:(BOOL)a4;
@end

@implementation BLTAlertStateTester

- (BOOL)isScreenTimeBlockedForBundleIdentifier:(id)a3 ignoresDowntime:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v5];
  v7 = [v6 deviceManagementPolicy];
  if (v7)
  {
    v8 = !v4;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v14 = 1;
  }

  else
  {
    v9 = v7;
    v10 = [objc_alloc(MEMORY[0x277D04BF0]) initWithPolicyChangeHandler:0];
    v18 = 0;
    v11 = [v10 requestPoliciesByBundleIdentifierWithError:&v18];
    v12 = v11;
    if (v18)
    {
      v13 = 0;
    }

    else
    {
      v15 = [v11 objectForKey:v5];
      v16 = [v15 unsignedIntegerValue];

      v13 = v16 != 0;
    }

    v14 = (v9 != 0 || v13) && !v4;
  }

  return v14;
}

@end