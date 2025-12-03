@interface HDBackgroundAppLauncher
- (void)requestAppLaunchWithBundleID:(id)d updateFrequency:(double)frequency;
- (void)requestAssertionInvalidationForBundleID:(id)d;
@end

@implementation HDBackgroundAppLauncher

- (void)requestAppLaunchWithBundleID:(id)d updateFrequency:(double)frequency
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  frequencyCopy = 60.0;
  if (frequency >= 60.0)
  {
    frequencyCopy = frequency;
  }

  v7 = frequencyCopy * 0.5;
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [date dateByAddingTimeInterval:v7];
  v10 = *MEMORY[0x277D06A98];
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC288];
  if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = dCopy;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "Requesting to launch Duet for the App's bundleID %{public}@", buf, 0xCu);
  }

  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthkit.background-delivery.%@", dCopy];
  v13 = [MEMORY[0x277D06A00] applicationLaunchActivityWithName:dCopy priority:*MEMORY[0x277D06AB8] forApplication:dCopy withReason:v10 duration:*MEMORY[0x277D06A68] startingAfter:date startingBefore:v9];
  [v13 setCancelAfterDeadline:0];
  complete = [MEMORY[0x277D06A18] complete];
  [v13 setFileProtection:complete];

  mEMORY[0x277D06A28] = [MEMORY[0x277D06A28] sharedScheduler];
  [mEMORY[0x277D06A28] submitActivity:v13];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)requestAssertionInvalidationForBundleID:(id)d
{
  v3 = MEMORY[0x277D06A28];
  dCopy = d;
  sharedScheduler = [v3 sharedScheduler];
  [sharedScheduler endLaunchWithReason:*MEMORY[0x277D06A98] forApp:dCopy];
}

@end