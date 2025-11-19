@interface HMDHomePrimaryResidentInitialReachabilityManagerDataSource
- (id)dataValueFromNoBackupStoreWithKey:(id)a3;
@end

@implementation HMDHomePrimaryResidentInitialReachabilityManagerDataSource

- (id)dataValueFromNoBackupStoreWithKey:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, *MEMORY[0x277CD0028]);
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