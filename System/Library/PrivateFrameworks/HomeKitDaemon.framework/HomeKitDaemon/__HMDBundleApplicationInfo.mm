@interface __HMDBundleApplicationInfo
- (BOOL)isEntitledForAPIAccess;
- (BOOL)isEntitledForSPIAccess;
- (__HMDBundleApplicationInfo)initWithBundleIdentifier:(id)a3;
- (__HMDBundleApplicationInfo)initWithRecord:(id)a3;
@end

@implementation __HMDBundleApplicationInfo

- (BOOL)isEntitledForSPIAccess
{
  v3 = [(LSPropertyList *)self->_entitlements objectForKey:@"com.apple.private.homekit" ofClass:objc_opt_class()];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    return 1;
  }

  v6 = [(LSPropertyList *)self->_entitlements objectForKey:@"com.apple.homekit.private-spi-access" ofClass:objc_opt_class()];
  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)isEntitledForAPIAccess
{
  v2 = [(LSPropertyList *)self->_entitlements objectForKey:@"com.apple.developer.homekit" ofClass:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

- (__HMDBundleApplicationInfo)initWithRecord:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 bundleIdentifier];

    if (v6)
    {
      v7 = [v5 bundleIdentifier];
      v8 = [v5 URL];
      v18.receiver = self;
      v18.super_class = __HMDBundleApplicationInfo;
      v9 = [(HMDApplicationInfo *)&v18 initWithBundleIdentifier:v7 bundleURL:v8];

      if (v9)
      {
        v10 = [v5 entitlements];
        v11 = MEMORY[0x277CBEB98];
        v19[0] = @"com.apple.developer.homekit";
        v19[1] = @"com.apple.private.homekit";
        v19[2] = @"com.apple.homekit.private-spi-access";
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
        v13 = [v11 setWithArray:v12];
        v14 = [v10 objectsForKeys:v13];
        entitlements = v9->_entitlements;
        v9->_entitlements = v14;
      }

      self = v9;
      v6 = self;
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (__HMDBundleApplicationInfo)initWithBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x277CC1E70];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];

  v7 = [(__HMDBundleApplicationInfo *)self initWithRecord:v6];
  return v7;
}

@end