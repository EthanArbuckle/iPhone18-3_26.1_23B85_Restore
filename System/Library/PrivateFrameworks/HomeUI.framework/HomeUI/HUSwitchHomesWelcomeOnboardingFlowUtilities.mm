@interface HUSwitchHomesWelcomeOnboardingFlowUtilities
+ (id)currentUserHasUnfinishedFeatureOnboardingForHome:(id)home;
@end

@implementation HUSwitchHomesWelcomeOnboardingFlowUtilities

+ (id)currentUserHasUnfinishedFeatureOnboardingForHome:(id)home
{
  v17[8] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v17[2] = objc_opt_class();
  v17[3] = objc_opt_class();
  v17[4] = objc_opt_class();
  v17[5] = objc_opt_class();
  v17[6] = objc_opt_class();
  v17[7] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:8];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __96__HUSwitchHomesWelcomeOnboardingFlowUtilities_currentUserHasUnfinishedFeatureOnboardingForHome___block_invoke;
  v15 = &unk_277DBFB60;
  v16 = homeCopy;
  v5 = homeCopy;
  v6 = [v4 na_map:&v12];
  v7 = MEMORY[0x277D2C900];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v9 = [v7 combineAllFutures:v6 ignoringErrors:1 scheduler:mainThreadScheduler];
  v10 = [v9 flatMap:&__block_literal_global_157];

  return v10;
}

id __96__HUSwitchHomesWelcomeOnboardingFlowUtilities_currentUserHasUnfinishedFeatureOnboardingForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 na_any:&__block_literal_global_14_0];
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

uint64_t __96__HUSwitchHomesWelcomeOnboardingFlowUtilities_currentUserHasUnfinishedFeatureOnboardingForHome___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

@end