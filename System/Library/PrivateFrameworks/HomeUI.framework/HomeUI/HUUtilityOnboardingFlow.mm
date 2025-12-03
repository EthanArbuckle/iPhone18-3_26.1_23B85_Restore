@interface HUUtilityOnboardingFlow
+ (id)needsOnboardingForHome:(id)home options:(id)options;
- (HUUtilityOnboardingFlow)initWithUsageOptions:(id)options home:(id)home;
- (id)determineNextViewControllerFromResults:(id)results;
- (id)processUserInput:(id)input;
- (id)processUserInputWithState:(id)state;
- (void)_setThisUserDismissedOnboarding;
- (void)updateState:(unint64_t)state;
@end

@implementation HUUtilityOnboardingFlow

- (HUUtilityOnboardingFlow)initWithUsageOptions:(id)options home:(id)home
{
  optionsCopy = options;
  homeCopy = home;
  v21.receiver = self;
  v21.super_class = HUUtilityOnboardingFlow;
  v8 = [(HUUtilityOnboardingFlow *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    v9->_currentState = 0;
    v10 = [[_TtC6HomeUI24UtilityOnboardingContext alloc] initWithHome:homeCopy];
    context = v9->_context;
    v9->_context = v10;

    objc_initWeak(&location, v9);
    v12 = objc_alloc_init(MEMORY[0x277D2C900]);
    readyFuture = v9->_readyFuture;
    v9->_readyFuture = v12;

    v14 = MEMORY[0x277D2C900];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__HUUtilityOnboardingFlow_initWithUsageOptions_home___block_invoke;
    v18[3] = &unk_277DBCA20;
    objc_copyWeak(&v19, &location);
    v15 = [v14 futureWithBlock:v18];
    onboardingFuture = v9->_onboardingFuture;
    v9->_onboardingFuture = v15;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __53__HUUtilityOnboardingFlow_initWithUsageOptions_home___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setThisUserDismissedOnboarding];
  v1 = [HUUtilityOnboardingIntroViewController alloc];
  v2 = [WeakRetained context];
  v3 = [(HUUtilityOnboardingIntroViewController *)v1 initWithContext:v2];
  [WeakRetained setInitialViewController:v3];

  v4 = [WeakRetained readyFuture];
  [v4 finishWithResult:MEMORY[0x277CBEC38]];
}

- (void)_setThisUserDismissedOnboarding
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"HUHomeFeatureOnboardingKey_UtilityDiscovery_FinishedOnboarding";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  home = [(HUUtilityOnboardingFlow *)self home];
  v5 = [HUHomeFeatureOnboardingUtilities home:home processHomeFeatureOnboarderResults:v3];

  home2 = [(HUUtilityOnboardingFlow *)self home];
  [HUHomeEnergyManagerHelper setHasDismissedConnectAccountBannerWithHome:home2];
}

+ (id)needsOnboardingForHome:(id)home options:(id)options
{
  v26 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  optionsCopy = options;
  if (HFForceUtilityOnboarding())
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy2 = self;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ FORCING Utility Onboarding", buf, 0x16u);
LABEL_7:

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v11 = [optionsCopy objectForKeyedSubscript:@"OnboardingDisplayOption_OnboardingFromUserInput"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      name = [homeCopy name];
      *buf = 138412802;
      selfCopy2 = self;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = name;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ true for home(%@) because: onboarding", buf, 0x20u);

      goto LABEL_7;
    }

LABEL_8:

    v14 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    goto LABEL_10;
  }

  v15 = MEMORY[0x277D2C900];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__HUUtilityOnboardingFlow_needsOnboardingForHome_options___block_invoke;
  v17[3] = &unk_277DBB320;
  v18 = homeCopy;
  v19 = 0;
  v14 = [v15 futureWithBlock:v17];

LABEL_10:

  return v14;
}

void __58__HUUtilityOnboardingFlow_needsOnboardingForHome_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HUUtilityOnboardingFlow_needsOnboardingForHome_options___block_invoke_2;
  v7[3] = &unk_277DB8C28;
  v8 = v3;
  v6 = v3;
  [HUHomeEnergyManagerHelper shouldShowConnectAccountBannerFor:v4 checkLocation:(v5 & 1) == 0 completionHandler:v7];
}

void __58__HUUtilityOnboardingFlow_needsOnboardingForHome_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v2 finishWithResult:v3];
}

- (id)processUserInput:(id)input
{
  v65 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v59 = 138412802;
    selfCopy = self;
    v61 = 2112;
    v62 = v7;
    v63 = 2112;
    v64 = inputCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", &v59, 0x20u);
  }

  if (_os_feature_enabled_impl())
  {
    v8 = [inputCopy objectForKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_UserInput"];
    switch([v8 integerValue])
    {
      case 0:
        [(UtilityOnboardingContext *)self->_context updateStateWithNewState:8];
        v9 = HFLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v10;
          _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: UtilityLookup ", &v59, 0xCu);
        }

        v11 = _TtC6HomeUI36UtilityOnboardingSetupViewController;
        goto LABEL_52;
      case 1:
        v28 = HFLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v29;
          _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Quick Lookup", &v59, 0xCu);
        }

        v30 = [HUUtilityOnboardingQuickLookupViewController alloc];
        context = [(HUUtilityOnboardingFlow *)self context];
        v23 = v30;
        v24 = context;
        v25 = 1;
        goto LABEL_26;
      case 2:
        v18 = HFLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v19;
          _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: TAF", &v59, 0xCu);
        }

        isMeContactComplete = [(UtilityOnboardingContext *)self->_context isMeContactComplete];
        context = self->_context;
        if (!isMeContactComplete)
        {
          goto LABEL_60;
        }

        [(UtilityOnboardingContext *)context updateStateWithNewState:7];
        v22 = [HUUtilityOnboardingQuickLookupViewController alloc];
        context = [(HUUtilityOnboardingFlow *)self context];
        v23 = v22;
        v24 = context;
        v25 = 0;
LABEL_26:
        v31 = [(HUUtilityOnboardingQuickLookupViewController *)v23 initWithContext:v24 hideBackButton:v25];
        goto LABEL_53;
      case 3:
        v36 = HFLogForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v37;
          _os_log_impl(&dword_20CEB6000, v36, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: OAuth Login ", &v59, 0xCu);
        }

        v11 = HUUtilityOnboardingOAuthLoginViewController;
        goto LABEL_52;
      case 4:
        v38 = HFLogForCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v39;
          _os_log_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: TAF Edit Details", &v59, 0xCu);
        }

        if ([(UtilityOnboardingContext *)self->_context currentState]== 7)
        {
          v40 = [UtilityOnboardingPasswordlessViewController alloc];
          context = [(HUUtilityOnboardingFlow *)self context];
          v41 = v40;
          v42 = context;
          v43 = 1;
        }

        else
        {
          context = self->_context;
LABEL_60:
          [(UtilityOnboardingContext *)context updateStateWithNewState:1];
          v58 = [UtilityOnboardingPasswordlessViewController alloc];
          context = [(HUUtilityOnboardingFlow *)self context];
          v41 = v58;
          v42 = context;
          v43 = 0;
        }

        v31 = [(UtilityOnboardingPasswordlessViewController *)v41 initWithContext:v42 isEditMode:v43];
        goto LABEL_53;
      case 5:
        v26 = HFLogForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v27;
          _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: OTP Selection ", &v59, 0xCu);
        }

        [(UtilityOnboardingContext *)self->_context updateStateWithNewState:4];
        v11 = HUUtilityOnboardingOTPSelectionViewController;
        goto LABEL_52;
      case 6:
        v32 = HFLogForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v33;
          _os_log_impl(&dword_20CEB6000, v32, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Enter OTP", &v59, 0xCu);
        }

        [(UtilityOnboardingContext *)self->_context updateStateWithNewState:5];
        v11 = HUUtilityOnboardingEnterOTPViewController;
        goto LABEL_52;
      case 7:
        v34 = HFLogForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v35;
          _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: T&Cs", &v59, 0xCu);
        }

        [(UtilityOnboardingContext *)self->_context updateStateWithNewState:6];
        v11 = HUUtilityOnboardingTermsViewController;
        goto LABEL_52;
      case 8:
        v54 = HFLogForCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v55;
          _os_log_impl(&dword_20CEB6000, v54, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Loading", &v59, 0xCu);
        }

        [(UtilityOnboardingContext *)self->_context updateStateWithNewState:9];
        v11 = HUUtilityOnboardingLoadingViewController;
        goto LABEL_52;
      case 9:
        v46 = HFLogForCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v47;
          _os_log_impl(&dword_20CEB6000, v46, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Service Locations", &v59, 0xCu);
        }

        [(UtilityOnboardingContext *)self->_context updateStateWithNewState:10];
        v48 = [HUUtilityOnboardingSelectLocationViewController alloc];
        home = self->_home;
        context = [(HUUtilityOnboardingFlow *)self context];
        v31 = [(HUUtilityOnboardingSelectLocationViewController *)v48 initWithHome:home context:context];
        goto LABEL_53;
      case 10:
        v16 = HFLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v17;
          _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Connected", &v59, 0xCu);
        }

        [(UtilityOnboardingContext *)self->_context updateStateWithNewState:11];
        v11 = HUUtilityOnboardingConnectionViewController;
        goto LABEL_52;
      case 11:
        v13 = HFLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v14;
          _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Onboarding completed successfully. ", &v59, 0xCu);
        }

        goto LABEL_12;
      case 12:
        v44 = HFLogForCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v45;
          _os_log_impl(&dword_20CEB6000, v44, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Account Not Found", &v59, 0xCu);
        }

        [(UtilityOnboardingContext *)self->_context updateStateWithNewState:2];
        v11 = HUUtilityOnboardingNoAccountViewController;
LABEL_52:
        v56 = [v11 alloc];
        context = [(HUUtilityOnboardingFlow *)self context];
        v31 = [v56 initWithContext:context];
LABEL_53:
        v12 = v31;
        goto LABEL_54;
      case 13:
        v50 = HFLogForCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = NSStringFromSelector(a2);
          v59 = 138412290;
          selfCopy = v51;
          _os_log_impl(&dword_20CEB6000, v50, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Error", &v59, 0xCu);
        }

        [(UtilityOnboardingContext *)self->_context updateStateWithNewState:3];
        v52 = [HUUtilityOnboardingErrorViewController alloc];
        context = [(HUUtilityOnboardingFlow *)self context];
        v53 = [inputCopy objectForKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_Error"];
        v12 = [(HUUtilityOnboardingErrorViewController *)v52 initWithContext:context error:v53];

        goto LABEL_54;
      case 14:
      case 16:
LABEL_12:
        context = [(HUUtilityOnboardingFlow *)self onboardingFuture];
        [context finishWithNoResult];
        v12 = 0;
LABEL_54:

        break;
      default:

        v12 = 0;
        break;
    }
  }

  else
  {
    v12 = [(HUUtilityOnboardingFlow *)self processUserInputWithState:inputCopy];
  }

  return v12;
}

- (id)processUserInputWithState:(id)state
{
  v63 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *v61 = 138412802;
    *&v61[4] = self;
    *&v61[12] = 2112;
    *&v61[14] = v7;
    *&v61[22] = 2112;
    v62 = stateCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", v61, 0x20u);
  }

  v8 = [stateCopy objectForKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_UserInput"];
  integerValue = [v8 integerValue];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    currentState = self->_currentState;
    *v61 = 138412802;
    *&v61[4] = self;
    *&v61[12] = 2112;
    *&v61[14] = v11;
    *&v61[22] = 2048;
    v62 = currentState;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@: Starting %@ with current state -> %lu", v61, 0x20u);
  }

  v13 = self->_currentState;
  switch(v13)
  {
    case 0uLL:
    case 2uLL:
      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v15;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@ -> Start & user input=%@", v61, 0x16u);
      }

      v16 = integerValue == 17;
      v17 = 3;
      goto LABEL_16;
    case 1uLL:
      onboardingFuture = [(HUUtilityOnboardingFlow *)self onboardingFuture];
      [onboardingFuture finishWithNoResult];
      goto LABEL_27;
    case 3uLL:
      v43 = HFLogForCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v44;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v43, OS_LOG_TYPE_DEFAULT, "%@ -> DoUtilityLookup & user input=%@", v61, 0x16u);
      }

      if (integerValue <= 12)
      {
        if (integerValue == 2)
        {
          [(UtilityOnboardingContext *)self->_context populateFieldsFromMeContact];
          if ([(UtilityOnboardingContext *)self->_context quickLookupHasAllFields])
          {
            allRequiredFieldsComplete = [(UtilityOnboardingContext *)self->_context allRequiredFieldsComplete];
          }

          else
          {
            allRequiredFieldsComplete = 0;
          }

          v60 = HFLogForCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *v61 = 67109120;
            *&v61[4] = allRequiredFieldsComplete;
            _os_log_impl(&dword_20CEB6000, v60, OS_LOG_TYPE_DEFAULT, "MeCard contains all the keys? --> %{BOOL}d", v61, 8u);
          }

          v54 = !allRequiredFieldsComplete;
          v55 = 6;
          v56 = 4;
          goto LABEL_107;
        }

        if (integerValue == 3)
        {
          goto LABEL_96;
        }

        goto LABEL_100;
      }

      if (integerValue == 13)
      {
        goto LABEL_57;
      }

      if (integerValue != 15)
      {
        if (integerValue == 17)
        {
          goto LABEL_64;
        }

LABEL_100:
        onboardingFuture = HFLogForCategory();
        if (os_log_type_enabled(onboardingFuture, OS_LOG_TYPE_DEFAULT))
        {
          v28 = NSStringFromSelector(a2);
          *v61 = 138412546;
          *&v61[4] = self;
          *&v61[12] = 2112;
          *&v61[14] = v28;
          v29 = "%@:%@ Invalid User Input in DoUtilityLookup";
LABEL_102:
          _os_log_impl(&dword_20CEB6000, onboardingFuture, OS_LOG_TYPE_DEFAULT, v29, v61, 0x16u);
        }

LABEL_27:
      }

LABEL_90:
      v13 = 1;
LABEL_91:
      [(HUUtilityOnboardingFlow *)self updateState:v13, *v61, *&v61[16]];
      v57 = [(HUUtilityOnboardingFlow *)self determineNextViewControllerFromResults:stateCopy];

      return v57;
    case 4uLL:
      v45 = HFLogForCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v46;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v45, OS_LOG_TYPE_DEFAULT, "%@ -> Quick Lookup & user input=%@", v61, 0x16u);
      }

      switch(integerValue)
      {
        case 17:
          goto LABEL_86;
        case 13:
          goto LABEL_85;
        case 4:
          v13 = 6;
          break;
        default:
          v13 = 1;
          break;
      }

      goto LABEL_91;
    case 5uLL:
      v26 = HFLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v27;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@ -> OAuth Login & user input=%@", v61, 0x16u);
      }

      if (integerValue == 17)
      {
        goto LABEL_64;
      }

      if (integerValue == 13)
      {
        goto LABEL_57;
      }

      onboardingFuture = HFLogForCategory();
      if (!os_log_type_enabled(onboardingFuture, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v28 = NSStringFromSelector(a2);
      *v61 = 138412546;
      *&v61[4] = self;
      *&v61[12] = 2112;
      *&v61[14] = v28;
      v29 = "%@:%@ Invalid User Input in OAuth Login";
      goto LABEL_102;
    case 6uLL:
      v36 = HFLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v37;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v36, OS_LOG_TYPE_DEFAULT, "%@ -> TAF & user input=%@", v61, 0x16u);
      }

      if (integerValue > 16)
      {
        if (integerValue == 17)
        {
LABEL_86:
          v13 = 8;
        }

        else
        {
          if (integerValue != 18)
          {
            goto LABEL_90;
          }

          v13 = 3;
        }

        goto LABEL_91;
      }

      if (integerValue == 13)
      {
LABEL_85:
        v52 = [stateCopy objectForKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_Error"];
        v53 = [HUHomeEnergyManagerHelper redirectToOAuth:v52];

        v54 = !v53;
        v55 = 15;
        v56 = 7;
LABEL_107:
        if (v54)
        {
          v13 = v55;
        }

        else
        {
          v13 = v56;
        }

        goto LABEL_91;
      }

      if (integerValue == 14)
      {
        goto LABEL_97;
      }

      goto LABEL_90;
    case 7uLL:
      v38 = HFLogForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v39;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_DEFAULT, "%@ -> Account Not Found & user input=%@", v61, 0x16u);
      }

      if (integerValue <= 12)
      {
        if (integerValue == 3)
        {
LABEL_96:
          v13 = 5;
        }

        else
        {
          if (integerValue != 4)
          {
            goto LABEL_90;
          }

          v13 = 6;
        }
      }

      else
      {
        switch(integerValue)
        {
          case 13:
LABEL_57:
            v13 = 15;
            break;
          case 14:
LABEL_97:
            v13 = 4;
            break;
          case 17:
LABEL_64:
            v13 = 10;
            break;
          default:
            goto LABEL_90;
        }
      }

      goto LABEL_91;
    case 8uLL:
      v49 = HFLogForCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v50;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v49, OS_LOG_TYPE_DEFAULT, "%@ -> OTPSelection & user input=%@", v61, 0x16u);
      }

      v32 = integerValue - 13;
      if ((integerValue - 13) >= 6)
      {
        goto LABEL_90;
      }

      v33 = &unk_20D5CADF0;
      goto LABEL_80;
    case 9uLL:
      v47 = HFLogForCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v48;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v47, OS_LOG_TYPE_DEFAULT, "%@ -> EnterOTP & user input=%@", v61, 0x16u);
      }

      v32 = integerValue - 13;
      if ((integerValue - 13) >= 6)
      {
        goto LABEL_90;
      }

      v33 = &unk_20D5CAE20;
      goto LABEL_80;
    case 0xAuLL:
      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v21;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@ -> GetTermsConsent & user input=%@", v61, 0x16u);
      }

      v16 = integerValue == 17;
      v17 = 11;
LABEL_16:
      if (v16)
      {
        v13 = v17;
      }

      else
      {
        v13 = 1;
      }

      goto LABEL_91;
    case 0xBuLL:
      v30 = HFLogForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v31;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "%@ -> Loading screen & user input=%@", v61, 0x16u);
      }

      v32 = integerValue - 13;
      if ((integerValue - 13) >= 7)
      {
        goto LABEL_90;
      }

      v33 = &unk_20D5CAE50;
LABEL_80:
      v13 = v33[v32];
      goto LABEL_91;
    case 0xCuLL:
      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v23;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@ -> GetServiceLocations & user input=%@", v61, 0x16u);
      }

      v24 = 12;
      if (integerValue == 13)
      {
        v24 = 15;
      }

      if (integerValue == 17)
      {
        v13 = 13;
      }

      else
      {
        v13 = v24;
      }

      goto LABEL_91;
    case 0xDuLL:
      v18 = HFLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = v19;
        *&v61[12] = 2112;
        *&v61[14] = v8;
        _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@ -> GetHomeSubscription & user input=%@", v61, 0x16u);
      }

      if (integerValue == 17)
      {
        v13 = 14;
      }

      else
      {
        onboardingFuture2 = [(HUUtilityOnboardingFlow *)self onboardingFuture];
        [onboardingFuture2 finishWithNoResult];

        v13 = 0;
      }

      goto LABEL_91;
    case 0xFuLL:
      v40 = HFLogForCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = NSStringFromSelector(a2);
        *v61 = 138412546;
        *&v61[4] = self;
        *&v61[12] = 2112;
        *&v61[14] = v41;
        _os_log_impl(&dword_20CEB6000, v40, OS_LOG_TYPE_DEFAULT, "%@:%@ Finishing the onboarding flow due to error", v61, 0x16u);
      }

      onboardingFuture3 = [(HUUtilityOnboardingFlow *)self onboardingFuture];
      [onboardingFuture3 finishWithNoResult];

      [stateCopy setObject:0 forKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_Error"];
      goto LABEL_57;
    default:
      v34 = HFLogForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = NSStringFromSelector(a2);
        *v61 = 138412802;
        *&v61[4] = self;
        *&v61[12] = 2112;
        *&v61[14] = v35;
        *&v61[22] = 2112;
        v62 = v8;
        _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "%@:%@ Unsupported state! %@", v61, 0x20u);
      }

      goto LABEL_91;
  }
}

- (id)determineNextViewControllerFromResults:(id)results
{
  v46 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    currentState = self->_currentState;
    v40 = 138412802;
    selfCopy = self;
    v42 = 2112;
    v43 = v7;
    v44 = 2048;
    v45 = currentState;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Determine next view controller for current state -> %lu", &v40, 0x20u);
  }

  v9 = self->_currentState;
  home = HFLogForCategory();
  v11 = os_log_type_enabled(home, OS_LOG_TYPE_DEFAULT);
  switch(v9)
  {
    case 1uLL:
      if (!v11)
      {
        goto LABEL_19;
      }

      v12 = NSStringFromSelector(a2);
      v40 = 138412290;
      selfCopy = v12;
      v13 = "%@ -> CASE: Declined";
      goto LABEL_18;
    case 3uLL:
      if (v11)
      {
        v28 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v28;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: UtilityLookup ", &v40, 0xCu);
      }

      if (!_os_feature_enabled_impl())
      {
        v39 = [HUUtilityDiscoverySetupViewController alloc];
        home = [(HUUtilityOnboardingFlow *)self home];
        context = [(HUUtilityOnboardingFlow *)self context];
        v38 = [(HUUtilityDiscoverySetupViewController *)v39 initWithHome:home onboardingContext:context];
        goto LABEL_61;
      }

      v21 = _TtC6HomeUI36UtilityOnboardingSetupViewController;
LABEL_50:
      v27 = [v21 alloc];
      home = [(HUUtilityOnboardingFlow *)self context];
LABEL_51:
      v19 = [(HUUtilityOnboardingQuickLookupViewController *)v27 initWithContext:home];
LABEL_52:
      v15 = v19;
      goto LABEL_53;
    case 4uLL:
      if (v11)
      {
        v25 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v25;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Quick Lookup", &v40, 0xCu);
      }

      v26 = _os_feature_enabled_impl();
      v27 = [HUUtilityOnboardingQuickLookupViewController alloc];
      home = [(HUUtilityOnboardingFlow *)self context];
      if (!v26)
      {
        goto LABEL_51;
      }

      v19 = [(HUUtilityOnboardingQuickLookupViewController *)v27 initWithContext:home hideBackButton:0];
      goto LABEL_52;
    case 5uLL:
      if (v11)
      {
        v24 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v24;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: OAuth Login ", &v40, 0xCu);
      }

      v21 = HUUtilityOnboardingOAuthLoginViewController;
      goto LABEL_50;
    case 6uLL:
      if (v11)
      {
        v20 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v20;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: TAF", &v40, 0xCu);
      }

      v21 = HUUtilityOnboardingTAFViewController;
      goto LABEL_50;
    case 7uLL:
      if (v11)
      {
        v22 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v22;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Account Not Found", &v40, 0xCu);
      }

      v21 = HUUtilityOnboardingNoAccountViewController;
      goto LABEL_50;
    case 8uLL:
      if (v11)
      {
        v29 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v29;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: OTP Selection ", &v40, 0xCu);
      }

      v21 = HUUtilityOnboardingOTPSelectionViewController;
      goto LABEL_50;
    case 9uLL:
      if (v11)
      {
        v30 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v30;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Enter OTP", &v40, 0xCu);
      }

      v21 = HUUtilityOnboardingEnterOTPViewController;
      goto LABEL_50;
    case 0xAuLL:
      if (v11)
      {
        v32 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v32;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: T&Cs", &v40, 0xCu);
      }

      v21 = HUUtilityOnboardingTermsViewController;
      goto LABEL_50;
    case 0xBuLL:
      if (v11)
      {
        v31 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v31;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Loading", &v40, 0xCu);
      }

      v21 = HUUtilityOnboardingLoadingViewController;
      goto LABEL_50;
    case 0xCuLL:
      if (v11)
      {
        v16 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v16;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Service Locations", &v40, 0xCu);
      }

      v17 = [HUUtilityOnboardingSelectLocationViewController alloc];
      home = self->_home;
      home = [(HUUtilityOnboardingFlow *)self context];
      v19 = [(HUUtilityOnboardingSelectLocationViewController *)v17 initWithHome:home context:home];
      goto LABEL_52;
    case 0xDuLL:
      if (v11)
      {
        v23 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v23;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: GetHomeSubscription ", &v40, 0xCu);
      }

      v21 = HUUtilityOnboardingConnectionViewController;
      goto LABEL_50;
    case 0xEuLL:
      if (v11)
      {
        v12 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v12;
        v13 = "%@ -> CASE: Onboarding completed successfully. ";
LABEL_18:
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, v13, &v40, 0xCu);
      }

LABEL_19:

      home = [(HUUtilityOnboardingFlow *)self onboardingFuture];
      [home finishWithNoResult];
      goto LABEL_20;
    case 0xFuLL:
      if (v11)
      {
        v14 = NSStringFromSelector(a2);
        v40 = 138412290;
        selfCopy = v14;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: Error", &v40, 0xCu);
      }

      if (self->_previousState == self->_currentState)
      {
        v15 = 0;
      }

      else
      {
        v36 = [HUUtilityOnboardingErrorViewController alloc];
        home = [(HUUtilityOnboardingFlow *)self context];
        context = [resultsCopy objectForKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_Error"];
        v38 = [(HUUtilityOnboardingErrorViewController *)v36 initWithContext:home error:context];
LABEL_61:
        v15 = v38;

LABEL_53:
      }

      return v15;
    default:
      if (v11)
      {
        v34 = NSStringFromSelector(a2);
        v35 = self->_currentState;
        v40 = 138412546;
        selfCopy = v34;
        v42 = 2048;
        v43 = v35;
        _os_log_impl(&dword_20CEB6000, home, OS_LOG_TYPE_DEFAULT, "%@ -> CASE: %lu does not present a view controller ", &v40, 0x16u);
      }

LABEL_20:
      v15 = 0;
      goto LABEL_53;
  }
}

- (void)updateState:(unint64_t)state
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    previousState = self->_previousState;
    currentState = self->_currentState;
    v10 = 138413314;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2048;
    v15 = currentState;
    v16 = 2048;
    stateCopy = state;
    v18 = 2048;
    v19 = previousState;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ updating homeEnergyOnboardingState=%lu with state=%lu\t previous state=%lu", &v10, 0x34u);
  }

  self->_previousState = self->_currentState;
  self->_currentState = state;
}

@end