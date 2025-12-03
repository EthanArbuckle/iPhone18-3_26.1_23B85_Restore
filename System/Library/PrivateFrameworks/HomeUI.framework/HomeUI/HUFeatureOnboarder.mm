@interface HUFeatureOnboarder
- (HUConfigurationViewController)_currentViewControllerForTests;
- (HUFeatureOnboarder)initWithFeatures:(id)features usageOptions:(id)options;
- (HUFeatureOnboarder)initWithGroupedFeatures:(id)features usageOptions:(id)options;
- (id)_findNextAppropriateFlowByRemovingFlow:(id)flow currentOnboardingFlowClass:(Class)class usageOptions:(id)options;
- (id)_subclass_buildAllFlowGroupsFromFeatureGroups:(id)groups usageOptions:(id)options;
- (id)getNextViewControllerForOnboardingInput:(id)input currentOnboardingFlowClass:(Class)class;
- (void)_skipAnyFlowsNoLongerRequired;
- (void)configuratorDidFinish:(id)finish;
- (void)configuratorDidUpdateViewController:(id)controller;
- (void)restartCurrentOnboarding;
- (void)startOnboardingWithPresentingViewController:(id)controller usageOptions:(id)options;
@end

@implementation HUFeatureOnboarder

- (HUFeatureOnboarder)initWithFeatures:(id)features usageOptions:(id)options
{
  v6 = MEMORY[0x277CBEA60];
  optionsCopy = options;
  v8 = [v6 arrayWithObject:features];
  v9 = [(HUFeatureOnboarder *)self initWithGroupedFeatures:v8 usageOptions:optionsCopy];

  return v9;
}

- (HUFeatureOnboarder)initWithGroupedFeatures:(id)features usageOptions:(id)options
{
  featuresCopy = features;
  optionsCopy = options;
  if (![featuresCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUFeatureOnboarder.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"featureGroups.count != 0"}];
  }

  v22.receiver = self;
  v22.super_class = HUFeatureOnboarder;
  v9 = [(HUFeatureOnboarder *)&v22 init];
  if (v9)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    userInputResults = v9->_userInputResults;
    v9->_userInputResults = dictionary;

    objc_storeStrong(&v9->_initialUsageOptions, options);
    v12 = [(HUFeatureOnboarder *)v9 _subclass_buildAllFlowGroupsFromFeatureGroups:featuresCopy usageOptions:v9->_initialUsageOptions];
    allRemainingFlowGroups = v9->_allRemainingFlowGroups;
    v9->_allRemainingFlowGroups = v12;

    allRemainingFlowGroups = [(HUFeatureOnboarder *)v9 allRemainingFlowGroups];
    v15 = [allRemainingFlowGroups count];

    if (!v15)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v9 file:@"HUFeatureOnboarder.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"self.allRemainingFlowGroups.count != 0"}];
    }

    v16 = objc_alloc_init(MEMORY[0x277D2C900]);
    completionFuture = v9->_completionFuture;
    v9->_completionFuture = v16;

    if (([MEMORY[0x277D14CE8] isInternalTest] & 1) == 0)
    {
      v18 = objc_alloc_init(MEMORY[0x277D757A0]);
      [(HUFeatureOnboarder *)v9 setNavController:v18];
    }
  }

  return v9;
}

- (id)_subclass_buildAllFlowGroupsFromFeatureGroups:(id)groups usageOptions:(id)options
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFeatureOnboarder.m" lineNumber:124 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUFeatureOnboarder _subclass_buildAllFlowGroupsFromFeatureGroups:usageOptions:]", objc_opt_class()}];

  return 0;
}

- (void)startOnboardingWithPresentingViewController:(id)controller usageOptions:(id)options
{
  controllerCopy = controller;
  optionsCopy = options;
  if (!controllerCopy && ([MEMORY[0x277D14CE8] isInternalTest] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUFeatureOnboarder.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"presentingViewController != nil || [HFUtilities isInternalTest]"}];

    if (!optionsCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (optionsCopy)
  {
LABEL_4:
    [(HUFeatureOnboarder *)self setInitialUsageOptions:optionsCopy];
  }

LABEL_5:
  objc_initWeak(&location, self);
  v9 = [(HUFeatureOnboarder *)self _findNextAppropriateFlowByRemovingFlow:0 currentOnboardingFlowClass:0 usageOptions:optionsCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__HUFeatureOnboarder_startOnboardingWithPresentingViewController_usageOptions___block_invoke;
  v13[3] = &unk_277DBA0F8;
  objc_copyWeak(v15, &location);
  v15[1] = a2;
  v10 = controllerCopy;
  v14 = v10;
  v11 = [v9 addCompletionBlock:v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __79__HUFeatureOnboarder_startOnboardingWithPresentingViewController_usageOptions___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = v3;
  v6 = &unk_2824CE438;
  if ([v5 conformsToProtocol:v6])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412802;
    v33 = WeakRetained;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@: Current Flow: %@", buf, 0x20u);
  }

  if (!v8)
  {
    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v33 = WeakRetained;
      v34 = 2112;
      v35 = v25;
      _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@: None of the feature onboarding flows have work to do, so finishing", buf, 0x16u);
    }

    v26 = [WeakRetained completionFuture];
    v27 = [WeakRetained userInputResults];
    [v26 finishWithResult:v27];
    goto LABEL_20;
  }

  v11 = [v8 initialViewController];

  if (!v11)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:*(a1 + 48) object:WeakRetained file:@"HUFeatureOnboarder.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"currentFeatureOnboardingFlow.initialViewController"}];
  }

  v12 = [HUFeatureOnboardingConfigurator alloc];
  v13 = [v8 initialViewController];
  v14 = [(HUConfigurator *)v12 initWithConfiguratorDelegate:WeakRetained initialViewController:v13];
  [WeakRetained setConfigurator:v14];

  v15 = [WeakRetained configurator];
  v16 = [v8 initialViewController];
  [v16 setDelegate:v15];

  v17 = [v8 initialViewController];
  [WeakRetained set_currentViewControllerForTests:v17];

  v18 = [WeakRetained navController];

  if (v18)
  {
    v19 = [v8 initialViewController];
    v20 = [v19 conformsToProtocol:&unk_28249D748];

    v21 = [WeakRetained navController];
    v22 = [v8 initialViewController];
    if (v20)
    {
      v23 = [v21 hu_pushPreloadableViewController:v22 animated:0];
    }

    else
    {
      [v21 pushViewController:v22 animated:0];
    }

    if (([MEMORY[0x277D14CE8] isInternalTest] & 1) == 0)
    {
      v28 = *(a1 + 32);
      v29 = [WeakRetained navController];
      [v28 presentViewController:v29 animated:1 completion:0];
    }
  }

  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = NSStringFromSelector(*(a1 + 48));
    v30 = [v8 initialViewController];
    *buf = 138413058;
    v33 = WeakRetained;
    v34 = 2112;
    v35 = v27;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v30;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@: Starting feature onboarding with first flow: %@ & view controller %@", buf, 0x2Au);

LABEL_20:
  }
}

- (id)_findNextAppropriateFlowByRemovingFlow:(id)flow currentOnboardingFlowClass:(Class)class usageOptions:(id)options
{
  v35 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  optionsCopy = options;
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    allRemainingFlowGroups = [(HUFeatureOnboarder *)self allRemainingFlowGroups];
    *buf = 138412546;
    v32 = allRemainingFlowGroups;
    v33 = 2112;
    classCopy = class;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "allRemainingFlowGroups: %@, currentOnboardingFlowClass: %@", buf, 0x16u);
  }

  allRemainingFlowGroups2 = [(HUFeatureOnboarder *)self allRemainingFlowGroups];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke;
  v26[3] = &unk_277DBA170;
  v14 = flowCopy;
  v27 = v14;
  v15 = optionsCopy;
  v28 = v15;
  selfCopy = self;
  v30 = a2;
  v16 = [allRemainingFlowGroups2 na_flatMap:v26];

  objc_initWeak(buf, self);
  v17 = MEMORY[0x277D2C900];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v19 = [v17 combineAllFutures:v16 ignoringErrors:1 scheduler:mainThreadScheduler];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_114;
  v23[3] = &unk_277DBA200;
  objc_copyWeak(v25, buf);
  v25[1] = class;
  v20 = v14;
  v24 = v20;
  v21 = [v19 flatMap:v23];

  objc_destroyWeak(v25);
  objc_destroyWeak(buf);

  return v21;
}

id __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsObject:*(a1 + 32)])
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_2;
    v6[3] = &unk_277DBA148;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v4 = [v3 na_map:v6];
  }

  return v4;
}

id __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 onboardingFuture];
  v5 = [v4 isFinished];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v7 = objc_opt_class();
      v8 = [MEMORY[0x277D146E8] sharedDispatcher];
      v9 = [v8 home];
      if (*(a1 + 32))
      {
        v10 = *(a1 + 32);
      }

      else
      {
        v10 = MEMORY[0x277CBEC10];
      }

      v11 = [v7 needsOnboardingForHome:v9 options:v10];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_3;
      v18[3] = &unk_277DBA120;
      v12 = v3;
      v19 = v12;
      v20 = *(a1 + 40);
      v13 = [v11 flatMap:v18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_110;
      v15[3] = &unk_277DBA120;
      v16 = v12;
      v17 = *(a1 + 40);
      v6 = [v13 flatMap:v15];
    }

    else
    {
      v6 = [MEMORY[0x277D2C900] futureWithResult:v3];
    }
  }

  return v6;
}

id __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([a2 BOOLValue])
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) readyFuture];
    }

    else
    {
      [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    }
    v3 = ;
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v7 = NSStringFromSelector(*(a1 + 48));
      v8 = *(a1 + 32);
      v9 = 138412802;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_debug_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEBUG, "%@:%@ checking if flow is ready %@", &v9, 0x20u);
    }
  }

  else
  {
    v3 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  return v3;
}

id __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_110(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([a2 BOOLValue])
  {
    v3 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];
  }

  else
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v7 = NSStringFromSelector(*(a1 + 48));
      v8 = *(a1 + 32);
      v9 = 138412802;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_debug_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEBUG, "%@:%@ skipping flow (either doesn't need onboarding or is not ready): %@", &v9, 0x20u);
    }

    v3 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v3;
}

id __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_114(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_2_115;
  v18[3] = &__block_descriptor_40_e35_B16__0___HUFeatureOnboardingFlow__8lu32l8;
  v18[4] = *(a1 + 48);
  v5 = [v3 na_firstObjectPassingTest:v18];
  if (!v5)
  {
    v5 = [v3 na_firstObjectPassingTest:&__block_literal_global_51];
  }

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "First unfinished flow: %@ (previous flow %@)", buf, 0x16u);
  }

  if (*(a1 + 32))
  {
    v8 = [WeakRetained allRemainingFlowGroups];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_119;
    v16 = &unk_277DBA1D8;
    v17 = *(a1 + 32);
    v9 = [v8 na_firstObjectPassingTest:&v13];

    v10 = [WeakRetained allRemainingFlowGroups];
    [v10 removeObject:v9];
  }

  if (v5)
  {
    [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v11 = ;

  return v11;
}

BOOL __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_2_115(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2824CE438])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (*(a1 + 32))
  {
    if (v5)
    {
      v7 = objc_opt_class() == *(a1 + 32);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = v5 != 0;
  }

  return v7;
}

BOOL __101__HUFeatureOnboarder__findNextAppropriateFlowByRemovingFlow_currentOnboardingFlowClass_usageOptions___block_invoke_3_118(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2824CE438])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 != 0;

  return v4;
}

- (void)_skipAnyFlowsNoLongerRequired
{
  allRemainingFlowGroups = [(HUFeatureOnboarder *)self allRemainingFlowGroups];
  na_arrayByFlattening = [allRemainingFlowGroups na_arrayByFlattening];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__HUFeatureOnboarder__skipAnyFlowsNoLongerRequired__block_invoke;
  v5[3] = &unk_277DBA228;
  v5[4] = self;
  [na_arrayByFlattening na_each:v5];
}

void __51__HUFeatureOnboarder__skipAnyFlowsNoLongerRequired__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 onboardingFuture];
  v4 = [v3 isFinished];

  if (v4 & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) userInputResults];
    [v6 checkIfStillRequiredFromCurrentResults:v5];
  }
}

- (void)configuratorDidUpdateViewController:(id)controller
{
  v24 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    currentViewController = [controllerCopy currentViewController];
    v18 = 138412802;
    selfCopy = self;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = currentViewController;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@: HUFeatureOnboardingConfigurator advanced to %@", &v18, 0x20u);
  }

  configurator = [(HUFeatureOnboarder *)self configurator];
  currentViewController2 = [controllerCopy currentViewController];
  [currentViewController2 setDelegate:configurator];

  currentViewController3 = [controllerCopy currentViewController];
  [(HUFeatureOnboarder *)self set_currentViewControllerForTests:currentViewController3];

  navController = [(HUFeatureOnboarder *)self navController];

  if (navController)
  {
    currentViewController4 = [controllerCopy currentViewController];
    v14 = [currentViewController4 conformsToProtocol:&unk_28249D748];

    navController2 = [(HUFeatureOnboarder *)self navController];
    currentViewController5 = [controllerCopy currentViewController];
    if (v14)
    {
      v17 = [navController2 hu_pushPreloadableViewController:currentViewController5 animated:1];
    }

    else
    {
      [navController2 pushViewController:currentViewController5 animated:1];
    }
  }
}

- (void)configuratorDidFinish:(id)finish
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@: HUFeatureOnboardingConfigurator FINISHED", buf, 0x16u);
  }

  navController = [(HUFeatureOnboarder *)self navController];

  if (navController)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__HUFeatureOnboarder_configuratorDidFinish___block_invoke;
    block[3] = &unk_277DB8488;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  [(HUFeatureOnboarder *)self set_currentViewControllerForTests:0];
  completionFuture = [(HUFeatureOnboarder *)self completionFuture];
  userInputResults = [(HUFeatureOnboarder *)self userInputResults];
  [completionFuture finishWithResult:userInputResults];
}

void __44__HUFeatureOnboarder_configuratorDidFinish___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navController];
  [v2 dismissViewControllerAnimated:objc_msgSend(*(a1 + 32) completion:{"restart") ^ 1, 0}];
}

- (id)getNextViewControllerForOnboardingInput:(id)input currentOnboardingFlowClass:(Class)class
{
  inputCopy = input;
  userInputResults = [(HUFeatureOnboarder *)self userInputResults];
  [userInputResults addEntriesFromDictionary:inputCopy];

  objc_initWeak(&location, self);
  initialUsageOptions = [(HUFeatureOnboarder *)self initialUsageOptions];
  v10 = [(HUFeatureOnboarder *)self _findNextAppropriateFlowByRemovingFlow:0 currentOnboardingFlowClass:class usageOptions:initialUsageOptions];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__HUFeatureOnboarder_getNextViewControllerForOnboardingInput_currentOnboardingFlowClass___block_invoke;
  v13[3] = &unk_277DBA2A0;
  objc_copyWeak(v14, &location);
  v14[1] = a2;
  v11 = [v10 flatMap:v13];
  objc_destroyWeak(v14);

  objc_destroyWeak(&location);

  return v11;
}

id __89__HUFeatureOnboarder_getNextViewControllerForOnboardingInput_currentOnboardingFlowClass___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = &unk_2824CE438;
  if ([v3 conformsToProtocol:v4])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(*(a1 + 40));
      v10 = [WeakRetained userInputResults];
      *buf = 138413058;
      v36 = WeakRetained;
      v37 = 2112;
      v38 = v9;
      v39 = 2112;
      v40 = v6;
      v41 = 2112;
      v42 = v10;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@: Flow %@ processing results %@", buf, 0x2Au);
    }

    if ([v6 shouldAbortAllOnboarding])
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412802;
        v36 = WeakRetained;
        v37 = 2112;
        v38 = v12;
        v39 = 2112;
        v40 = v6;
        _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@: Flow %@ CANCELLED ALL current onboarding before next screen of flow.", buf, 0x20u);
      }

      v13 = 0;
    }

    else
    {
      v11 = [WeakRetained userInputResults];
      v13 = [v6 processUserInput:v11];
    }

    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412802;
      v36 = WeakRetained;
      v37 = 2112;
      v38 = v16;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@: Next viewController: %@", buf, 0x20u);
    }

    if (v13)
    {
      v14 = [MEMORY[0x277D2C900] futureWithResult:v13];
    }

    else
    {
      v17 = [v6 onboardingFuture];
      v18 = [v17 isFinished];

      if ((v18 & 1) == 0)
      {
        NSLog(&cfstr_NextViewcontro.isa);
      }

      v19 = [v6 onboardingFuture];
      v20 = [v19 isFinished];

      if ((v20 & 1) == 0)
      {
        v21 = HFLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v30 = NSStringFromSelector(*(a1 + 40));
          *buf = 138412802;
          v36 = WeakRetained;
          v37 = 2112;
          v38 = v30;
          v39 = 2112;
          v40 = v6;
          _os_log_error_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_ERROR, "%@:%@: Next viewController is nil, but currentFeatureOnboardingFlow.onboardingFuture is not marked as finished. This is likely a programmer error. Forcing future to finish to avoid crashing. %@", buf, 0x20u);
        }

        v22 = [v6 onboardingFuture];
        [v22 finishWithNoResult];
      }

      [WeakRetained _skipAnyFlowsNoLongerRequired];
      if ([v6 shouldAbortAllOnboarding])
      {
        v23 = HFLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = NSStringFromSelector(*(a1 + 40));
          *buf = 138412802;
          v36 = WeakRetained;
          v37 = 2112;
          v38 = v24;
          v39 = 2112;
          v40 = v6;
          _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@: Flow %@ CANCELLED ALL current onboarding before next flow.", buf, 0x20u);
        }

        v25 = [MEMORY[0x277D2C900] futureWithNoResult];
        [WeakRetained setHasPerformedPostProcessing:1];
      }

      else
      {
        if ([v6 shouldAbortThisOnboardingFlowGroup])
        {
          v26 = [WeakRetained initialUsageOptions];
          [WeakRetained _findNextAppropriateFlowByRemovingFlow:v6 currentOnboardingFlowClass:0 usageOptions:v26];
        }

        else
        {
          v27 = objc_opt_class();
          v26 = [WeakRetained initialUsageOptions];
          [WeakRetained _findNextAppropriateFlowByRemovingFlow:0 currentOnboardingFlowClass:v27 usageOptions:v26];
        }
        v25 = ;
      }

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __89__HUFeatureOnboarder_getNextViewControllerForOnboardingInput_currentOnboardingFlowClass___block_invoke_129;
      v31[3] = &unk_277DBA278;
      objc_copyWeak(v34, (a1 + 32));
      v34[1] = *(a1 + 40);
      v28 = v25;
      v32 = v28;
      v33 = v6;
      v14 = [v28 flatMap:v31];

      objc_destroyWeak(v34);
    }
  }

  else
  {
    v14 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v14;
}

id __89__HUFeatureOnboarder_getNextViewControllerForOnboardingInput_currentOnboardingFlowClass___block_invoke_129(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = v3;
  v6 = &unk_2824CE438;
  if ([v5 conformsToProtocol:v6])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412802;
    v29 = WeakRetained;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@: Next Onboarding Flow: %@", buf, 0x20u);
  }

  v11 = *(a1 + 32);
  if (!v8 && ([WeakRetained hasPerformedPostProcessing] & 1) == 0)
  {
    v12 = [WeakRetained userInputResults];
    v13 = [WeakRetained getPostProcessingFlowsForResults:v12];

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v29 = WeakRetained;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@: Adding Post Processing Flow Group: %@", buf, 0x20u);
    }

    [WeakRetained setHasPerformedPostProcessing:1];
    v16 = [WeakRetained allRemainingFlowGroups];
    [v16 na_safeAddObject:v13];

    v17 = [WeakRetained initialUsageOptions];
    v18 = [WeakRetained _findNextAppropriateFlowByRemovingFlow:0 currentOnboardingFlowClass:0 usageOptions:v17];

    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v29 = WeakRetained;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = 0;
      _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@:%@: First Post Processing Flow: %@", buf, 0x20u);
    }

    v11 = v18;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __89__HUFeatureOnboarder_getNextViewControllerForOnboardingInput_currentOnboardingFlowClass___block_invoke_130;
  v25[3] = &unk_277DBA250;
  objc_copyWeak(v27, (a1 + 48));
  v21 = *(a1 + 40);
  v22 = *(a1 + 56);
  v26 = v21;
  v27[1] = v22;
  v23 = [v11 flatMap:v25];

  objc_destroyWeak(v27);

  return v23;
}

id __89__HUFeatureOnboarder_getNextViewControllerForOnboardingInput_currentOnboardingFlowClass___block_invoke_130(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = v3;
  v6 = &unk_2824CE438;
  if ([v5 conformsToProtocol:v6])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 initialViewController];
  if (v8)
  {
    if (v8 == *(a1 + 32))
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 48) object:WeakRetained file:@"HUFeatureOnboarder.m" lineNumber:529 description:{@"Invalid parameter not satisfying: %@", @"nextOrPostProcessingFeatureOnboardingFlow != currentFeatureOnboardingFlow"}];
    }

    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v18 = WeakRetained;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@: First View Controller of Next Flow: %@", buf, 0x20u);
    }
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(*(a1 + 48));
    *buf = 138413058;
    v18 = WeakRetained;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@:Starting next onboarding future %@ with initial view controller: %@", buf, 0x2Au);
  }

  if (v9)
  {
    [MEMORY[0x277D2C900] futureWithResult:v9];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v14 = ;

  return v14;
}

- (void)restartCurrentOnboarding
{
  navController = [(HUFeatureOnboarder *)self navController];

  if (navController)
  {
    navController2 = [(HUFeatureOnboarder *)self navController];
    v5 = [navController2 popToRootViewControllerAnimated:0];
  }

  [(HUFeatureOnboarder *)self setRestart:1];
  configurator = [(HUFeatureOnboarder *)self configurator];
  [(HUFeatureOnboarder *)self configuratorDidFinish:configurator];
}

- (HUConfigurationViewController)_currentViewControllerForTests
{
  WeakRetained = objc_loadWeakRetained(&self->__currentViewControllerForTests);

  return WeakRetained;
}

@end