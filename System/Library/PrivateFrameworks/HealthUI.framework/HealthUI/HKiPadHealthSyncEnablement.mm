@interface HKiPadHealthSyncEnablement
+ (BOOL)isSyncPromptedForHealthKit:(id)kit;
+ (id)_syncEnablementKeyValueDomain:(id)domain;
@end

@implementation HKiPadHealthSyncEnablement

+ (id)_syncEnablementKeyValueDomain:(id)domain
{
  v3 = MEMORY[0x1E696C210];
  domainCopy = domain;
  v5 = [v3 alloc];
  v6 = [v5 initWithCategory:3 domainName:*MEMORY[0x1E696C878] healthStore:domainCopy];

  return v6;
}

+ (BOOL)isSyncPromptedForHealthKit:(id)kit
{
  v24 = *MEMORY[0x1E69E9840];
  kitCopy = kit;
  v5 = objc_alloc_init(MEMORY[0x1E6959A48]);
  aa_primaryAppleAccount = [v5 aa_primaryAppleAccount];
  if ([aa_primaryAppleAccount aa_isManagedAppleID])
  {
    v19 = 0;
    [MEMORY[0x1E696ABC0] hk_assignError:&v19 code:701 format:@"Managed Apple IDs are not permitted to participate in HealthKit cloud sync."];
    v7 = v19;
    v8 = 0;
  }

  else
  {
    v7 = [self _syncEnablementKeyValueDomain:kitCopy];
    v18 = *MEMORY[0x1E696C870];
    v9 = [v7 dateForKey:? error:?];
    v10 = 0;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    hk_hasCompletedThirdPartyAuthSyncWithBooleanValue = [standardUserDefaults hk_hasCompletedThirdPartyAuthSyncWithBooleanValue];

    v13 = MEMORY[0x1E696B9A0];
    if (v10)
    {
      _HKInitializeLogging();
      v14 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        [(HKiPadHealthSyncEnablement *)self isSyncPromptedForHealthKit:v10, v14];
      }
    }

    _HKInitializeLogging();
    v15 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
    {
      v16 = @"was not";
      if (hk_hasCompletedThirdPartyAuthSyncWithBooleanValue)
      {
        v16 = @"was";
      }

      *buf = 138543618;
      selfCopy = self;
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&dword_1C3942000, v15, OS_LOG_TYPE_INFO, "%{public}@: HealthKit sync %{public}@ enabled on iPad", buf, 0x16u);
    }

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = hk_hasCompletedThirdPartyAuthSyncWithBooleanValue;
    }
  }

  return v8;
}

+ (void)isSyncPromptedForHealthKit:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1C3942000, log, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get the status update for the sync %{public}@", &v3, 0x16u);
}

@end