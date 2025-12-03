@interface HUHomeAssistantDevicesUnsupportedLanguageFlow
- (HUHomeAssistantDevicesUnsupportedLanguageFlow)initWithHomeAssistantDevicesHavingLanguageMismatch:(id)mismatch home:(id)home;
- (id)processUserInput:(id)input;
@end

@implementation HUHomeAssistantDevicesUnsupportedLanguageFlow

- (HUHomeAssistantDevicesUnsupportedLanguageFlow)initWithHomeAssistantDevicesHavingLanguageMismatch:(id)mismatch home:(id)home
{
  mismatchCopy = mismatch;
  homeCopy = home;
  v18.receiver = self;
  v18.super_class = HUHomeAssistantDevicesUnsupportedLanguageFlow;
  v8 = [(HUHomeAssistantDevicesUnsupportedLanguageFlow *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    objc_initWeak(&location, v9);
    v10 = [objc_opt_class() needsOnboardingForHome:homeCopy options:MEMORY[0x277CBEC10]];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __105__HUHomeAssistantDevicesUnsupportedLanguageFlow_initWithHomeAssistantDevicesHavingLanguageMismatch_home___block_invoke;
    v14[3] = &unk_277DB91E0;
    objc_copyWeak(&v16, &location);
    v15 = mismatchCopy;
    v11 = [v10 flatMap:v14];
    onboardingFuture = v9->_onboardingFuture;
    v9->_onboardingFuture = v11;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __105__HUHomeAssistantDevicesUnsupportedLanguageFlow_initWithHomeAssistantDevicesHavingLanguageMismatch_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __105__HUHomeAssistantDevicesUnsupportedLanguageFlow_initWithHomeAssistantDevicesHavingLanguageMismatch_home___block_invoke_2;
  v8[3] = &unk_277DB91B8;
  objc_copyWeak(&v11, (a1 + 40));
  v5 = v3;
  v9 = v5;
  v10 = *(a1 + 32);
  v6 = [v4 futureWithBlock:v8];

  objc_destroyWeak(&v11);

  return v6;
}

void __105__HUHomeAssistantDevicesUnsupportedLanguageFlow_initWithHomeAssistantDevicesHavingLanguageMismatch_home___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([*(a1 + 32) BOOLValue])
  {
    v4 = [HUHomeAssistantDevicesUnsupportedLanguageViewController alloc];
    v5 = *(a1 + 40);
    v6 = [WeakRetained home];
    v7 = [(HUHomeAssistantDevicesUnsupportedLanguageViewController *)v4 initWithHomeAssistantDevicesHavingLanguageMismatch:v5 home:v6];
    [WeakRetained setInitialViewController:v7];
  }

  else
  {
    [v8 finishWithNoResult];
  }
}

- (id)processUserInput:(id)input
{
  v18 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v6 = [inputCopy objectForKeyedSubscript:@"HULanguageOnboardingKey_UnsupportedLanguage_UserInput"];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = inputCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", buf, 0x20u);
  }

  if ([v6 integerValue] != 6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUHomeAssistantDevicesUnsupportedLanguageFlow.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"(userInputValue.integerValue == HULanguageOnboardingValue_UnsupportedLanguage_Completed)"}];
  }

  if ([v6 integerValue] == 6)
  {
    onboardingFuture = [(HUHomeAssistantDevicesUnsupportedLanguageFlow *)self onboardingFuture];
    [onboardingFuture finishWithNoResult];
  }

  return 0;
}

@end