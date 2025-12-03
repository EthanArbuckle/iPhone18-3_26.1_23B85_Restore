@interface HMDHomePrimaryResidentInitialReachabilityManagerDataSource
- (id)dataValueFromNoBackupStoreWithKey:(id)key;
@end

@implementation HMDHomePrimaryResidentInitialReachabilityManagerDataSource

- (id)dataValueFromNoBackupStoreWithKey:(id)key
{
  v3 = CFPreferencesCopyAppValue(key, *MEMORY[0x277CD0028]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end