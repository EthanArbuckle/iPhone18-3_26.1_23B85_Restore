@interface __HMDBundleApplicationInfo
- (BOOL)isEntitledForAPIAccess;
- (BOOL)isEntitledForSPIAccess;
- (__HMDBundleApplicationInfo)initWithBundleIdentifier:(id)identifier;
- (__HMDBundleApplicationInfo)initWithRecord:(id)record;
@end

@implementation __HMDBundleApplicationInfo

- (BOOL)isEntitledForSPIAccess
{
  v3 = [(LSPropertyList *)self->_entitlements objectForKey:@"com.apple.private.homekit" ofClass:objc_opt_class()];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    return 1;
  }

  v6 = [(LSPropertyList *)self->_entitlements objectForKey:@"com.apple.homekit.private-spi-access" ofClass:objc_opt_class()];
  bOOLValue2 = [v6 BOOLValue];

  return bOOLValue2;
}

- (BOOL)isEntitledForAPIAccess
{
  v2 = [(LSPropertyList *)self->_entitlements objectForKey:@"com.apple.developer.homekit" ofClass:objc_opt_class()];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (__HMDBundleApplicationInfo)initWithRecord:(id)record
{
  v19[3] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = recordCopy;
  if (recordCopy)
  {
    selfCopy = [recordCopy bundleIdentifier];

    if (selfCopy)
    {
      bundleIdentifier = [v5 bundleIdentifier];
      v8 = [v5 URL];
      v18.receiver = self;
      v18.super_class = __HMDBundleApplicationInfo;
      v9 = [(HMDApplicationInfo *)&v18 initWithBundleIdentifier:bundleIdentifier bundleURL:v8];

      if (v9)
      {
        entitlements = [v5 entitlements];
        v11 = MEMORY[0x277CBEB98];
        v19[0] = @"com.apple.developer.homekit";
        v19[1] = @"com.apple.private.homekit";
        v19[2] = @"com.apple.homekit.private-spi-access";
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
        v13 = [v11 setWithArray:v12];
        v14 = [entitlements objectsForKeys:v13];
        entitlements = v9->_entitlements;
        v9->_entitlements = v14;
      }

      self = v9;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (__HMDBundleApplicationInfo)initWithBundleIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CC1E70];
  identifierCopy = identifier;
  v6 = [[v4 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];

  v7 = [(__HMDBundleApplicationInfo *)self initWithRecord:v6];
  return v7;
}

@end