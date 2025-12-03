@interface BLTAlertStateTester
- (BOOL)isScreenTimeBlockedForBundleIdentifier:(id)identifier ignoresDowntime:(BOOL)downtime;
@end

@implementation BLTAlertStateTester

- (BOOL)isScreenTimeBlockedForBundleIdentifier:(id)identifier ignoresDowntime:(BOOL)downtime
{
  downtimeCopy = downtime;
  identifierCopy = identifier;
  v6 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:identifierCopy];
  deviceManagementPolicy = [v6 deviceManagementPolicy];
  if (deviceManagementPolicy)
  {
    v8 = !downtimeCopy;
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
    v9 = deviceManagementPolicy;
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
      v15 = [v11 objectForKey:identifierCopy];
      unsignedIntegerValue = [v15 unsignedIntegerValue];

      v13 = unsignedIntegerValue != 0;
    }

    v14 = (v9 != 0 || v13) && !downtimeCopy;
  }

  return v14;
}

@end