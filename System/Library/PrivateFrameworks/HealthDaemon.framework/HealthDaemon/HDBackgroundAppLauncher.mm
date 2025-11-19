@interface HDBackgroundAppLauncher
- (void)requestAppLaunchWithBundleID:(id)a3 updateFrequency:(double)a4;
- (void)requestAssertionInvalidationForBundleID:(id)a3;
@end

@implementation HDBackgroundAppLauncher

- (void)requestAppLaunchWithBundleID:(id)a3 updateFrequency:(double)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = 60.0;
  if (a4 >= 60.0)
  {
    v6 = a4;
  }

  v7 = v6 * 0.5;
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [v8 dateByAddingTimeInterval:v7];
  v10 = *MEMORY[0x277D06A98];
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC288];
  if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "Requesting to launch Duet for the App's bundleID %{public}@", buf, 0xCu);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthkit.background-delivery.%@", v5];
  v13 = [MEMORY[0x277D06A00] applicationLaunchActivityWithName:v12 priority:*MEMORY[0x277D06AB8] forApplication:v5 withReason:v10 duration:*MEMORY[0x277D06A68] startingAfter:v8 startingBefore:v9];
  [v13 setCancelAfterDeadline:0];
  v14 = [MEMORY[0x277D06A18] complete];
  [v13 setFileProtection:v14];

  v15 = [MEMORY[0x277D06A28] sharedScheduler];
  [v15 submitActivity:v13];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)requestAssertionInvalidationForBundleID:(id)a3
{
  v3 = MEMORY[0x277D06A28];
  v4 = a3;
  v5 = [v3 sharedScheduler];
  [v5 endLaunchWithReason:*MEMORY[0x277D06A98] forApp:v4];
}

@end