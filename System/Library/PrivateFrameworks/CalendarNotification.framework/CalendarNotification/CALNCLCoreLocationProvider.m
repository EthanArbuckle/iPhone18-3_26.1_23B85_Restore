@interface CALNCLCoreLocationProvider
+ (id)sharedInstance;
- (void)markAsHavingReceivedLocationWithEffectiveBundleIdentifier:(id)a3;
@end

@implementation CALNCLCoreLocationProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_21 != -1)
  {
    +[CALNCLCoreLocationProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_18;

  return v3;
}

uint64_t __44__CALNCLCoreLocationProvider_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_18 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)markAsHavingReceivedLocationWithEffectiveBundleIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBFC10]) initWithEffectiveBundleIdentifier:v3 delegate:0 onQueue:0];
  [v4 markAsHavingReceivedLocation];
  v5 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Marked as having received location with effective bundle identifier = %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end