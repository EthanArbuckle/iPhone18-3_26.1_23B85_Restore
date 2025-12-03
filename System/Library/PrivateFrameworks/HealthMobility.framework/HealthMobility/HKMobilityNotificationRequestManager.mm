@interface HKMobilityNotificationRequestManager
+ (void)postWalkingSteadinessNotificationWithHealthStore:(id)store category:(id)category completion:(id)completion;
@end

@implementation HKMobilityNotificationRequestManager

+ (void)postWalkingSteadinessNotificationWithHealthStore:(id)store category:(id)category completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v8 = MEMORY[0x277CCD460];
  completionCopy = completion;
  categoryCopy = category;
  v11 = [v8 alloc];
  v12 = [v11 initWithFeatureIdentifier:*MEMORY[0x277CCC110] healthStore:storeCopy countryCodeSource:0];
  v23 = 0;
  v13 = [v12 featureStatusWithError:&v23];
  v14 = v23;
  if (v13)
  {
    v15 = [v13 objectForKeyedSubscript:@"WalkingSteadinessShouldNotShowPregnancyContent"];
    areAllRequirementsSatisfied = [v15 areAllRequirementsSatisfied];
  }

  else
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = objc_opt_class();
      *buf = 138543618;
      v25 = v19;
      v26 = 2114;
      v27 = v14;
      _os_log_impl(&dword_251952000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Unable to get featureStatus. error: %{public}@", buf, 0x16u);
    }

    areAllRequirementsSatisfied = 1;
  }

  v20 = [MEMORY[0x277CE1FC0] hkmobility_requestForCategory:categoryCopy shouldHidePregnancyContent:areAllRequirementsSatisfied];

  v21 = [objc_alloc(MEMORY[0x277CCD6D8]) initWithHealthStore:storeCopy];
  [v21 postNotificationWithRequest:v20 completion:completionCopy];

  v22 = *MEMORY[0x277D85DE8];
}

@end