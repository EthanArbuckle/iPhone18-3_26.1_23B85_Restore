@interface HFAnalyticsAccessCodeEvent
- (HFAnalyticsAccessCodeEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsAccessCodeEvent

- (HFAnalyticsAccessCodeEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"home"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    NSLog(&cfstr_ErrorHfanalyti_17.isa);
  }

  objc_opt_class();
  v8 = [dataCopy objectForKeyedSubscript:@"operationType"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    NSLog(&cfstr_ErrorHfanalyti_18.isa);
  }

  objc_opt_class();
  v11 = [dataCopy objectForKeyedSubscript:@"pinCodeItem"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v41 = v12;

  v13 = [dataCopy objectForKeyedSubscript:@"pinCodeItem"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    NSLog(&cfstr_ErrorHfanalyti_19.isa);
  }

  objc_opt_class();
  v15 = [dataCopy objectForKeyedSubscript:@"duringOnboarding"];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (!v17)
  {
    v15 = MEMORY[0x277CBEC28];
  }

  objc_opt_class();
  v18 = [dataCopy objectForKeyedSubscript:@"error"];
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v47.receiver = self;
  v47.super_class = HFAnalyticsAccessCodeEvent;
  v21 = [(HFAnalyticsEvent *)&v47 initWithEventType:26];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_home, v6);
    v22->_operationType = [v10 integerValue];
    objc_storeStrong(&v22->_pinCodeItem, v12);
    objc_storeStrong(&v22->_duringOnboarding, v15);
    domain = [v20 domain];
    v24 = domain;
    if (domain)
    {
      v25 = domain;
    }

    else
    {
      v25 = @"nil";
    }

    objc_storeStrong(&v22->_errorDomain, v25);

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "code")}];
    errorCode = v22->_errorCode;
    v22->_errorCode = v26;

    v28 = +[HFHomeKitDispatcher sharedDispatcher];
    home = [(HFAnalyticsAccessCodeEvent *)v22 home];
    v30 = [v28 pinCodeManagerForHome:home];

    v31 = MEMORY[0x277CBEB58];
    users = [v7 users];
    v33 = [v31 setWithArray:users];

    currentUser = [v7 currentUser];
    [v33 addObject:currentUser];

    v35 = [v33 count];
    objc_initWeak(&location, v22);
    userPinCodes = [v30 userPinCodes];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __43__HFAnalyticsAccessCodeEvent_initWithData___block_invoke;
    v44[3] = &unk_277DFD838;
    objc_copyWeak(v45, &location);
    *&v45[1] = v35;
    v37 = [userPinCodes addSuccessBlock:v44];

    guestPinCodes = [v30 guestPinCodes];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __43__HFAnalyticsAccessCodeEvent_initWithData___block_invoke_2;
    v42[3] = &unk_277DFD860;
    objc_copyWeak(&v43, &location);
    v39 = [guestPinCodes addSuccessBlock:v42];

    objc_destroyWeak(&v43);
    objc_destroyWeak(v45);
    objc_destroyWeak(&location);
  }

  return v22;
}

void __43__HFAnalyticsAccessCodeEvent_initWithData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 count];

  v5 = v4 / *(a1 + 40);
  if (v5 > 1.0)
  {
    NSLog(&cfstr_ErrorRatioOfUs.isa);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [WeakRetained setRatioOfUserPINCodes:v6];
}

void __43__HFAnalyticsAccessCodeEvent_initWithData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = MEMORY[0x277CCABB0];
  v5 = [v3 count];

  v6 = [v4 numberWithUnsignedInteger:v5];
  [WeakRetained setTotalGuestPINCodes:v6];
}

- (id)payload
{
  v34.receiver = self;
  v34.super_class = HFAnalyticsAccessCodeEvent;
  payload = [(HFAnalyticsEvent *)&v34 payload];
  v4 = [payload mutableCopy];

  operationType = [(HFAnalyticsAccessCodeEvent *)self operationType];
  if (operationType > 2)
  {
    switch(operationType)
    {
      case 3:
        v8 = @"modifyAccessories";
        break;
      case 4:
        duringOnboarding = [(HFAnalyticsAccessCodeEvent *)self duringOnboarding];
        bOOLValue = [duringOnboarding BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          NSLog(&cfstr_ErrorDuringonb.isa);
        }

        v8 = @"skippedOnboarding";
        break;
      case 5:
        v8 = @"share";
        break;
      default:
        v8 = 0;
        break;
    }
  }

  else
  {
    v6 = @"remove";
    v7 = @"modifyValue";
    if (operationType != 2)
    {
      v7 = 0;
    }

    if (operationType != 1)
    {
      v6 = v7;
    }

    if (operationType)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"add";
    }
  }

  [v4 na_safeSetObject:v8 forKey:@"operationType"];
  duringOnboarding2 = [(HFAnalyticsAccessCodeEvent *)self duringOnboarding];
  [v4 na_safeSetObject:duringOnboarding2 forKey:@"duringOnboarding"];

  errorCode = [(HFAnalyticsAccessCodeEvent *)self errorCode];
  [v4 na_safeSetObject:errorCode forKey:@"errorCode"];

  errorDomain = [(HFAnalyticsAccessCodeEvent *)self errorDomain];
  [v4 na_safeSetObject:errorDomain forKey:@"errorDomain"];

  pinCodeItem = [(HFAnalyticsAccessCodeEvent *)self pinCodeItem];

  if (pinCodeItem)
  {
    pinCodeItem2 = [(HFAnalyticsAccessCodeEvent *)self pinCodeItem];
    isGuest = [pinCodeItem2 isGuest];
    v17 = @"user";
    if (isGuest)
    {
      v17 = @"guest";
    }

    v18 = v17;
  }

  else
  {
    v18 = @"none";
  }

  [v4 na_safeSetObject:v18 forKey:@"userType"];
  v19 = MEMORY[0x277CCABB0];
  pinCodeItem3 = [(HFAnalyticsAccessCodeEvent *)self pinCodeItem];
  pinCodeValue = [pinCodeItem3 pinCodeValue];
  v22 = [v19 numberWithUnsignedInteger:{objc_msgSend(pinCodeValue, "length")}];
  [v4 na_safeSetObject:v22 forKey:@"codeLength"];

  pinCodeItem4 = [(HFAnalyticsAccessCodeEvent *)self pinCodeItem];
  accessories = [pinCodeItem4 accessories];
  v25 = [accessories count];

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
  [v4 na_safeSetObject:v26 forKey:@"countOfAccessoriesEnabled"];

  home = [(HFAnalyticsAccessCodeEvent *)self home];
  hf_accessoriesSupportingAccessCodes = [home hf_accessoriesSupportingAccessCodes];
  v29 = [hf_accessoriesSupportingAccessCodes count];

  v30 = [MEMORY[0x277CCABB0] numberWithDouble:v25 / v29];
  [v4 na_safeSetObject:v30 forKey:@"ratioOfAccessoriesEnabled"];

  totalGuestPINCodes = [(HFAnalyticsAccessCodeEvent *)self totalGuestPINCodes];
  [v4 na_safeSetObject:totalGuestPINCodes forKey:@"totalCountGuests"];

  ratioOfUserPINCodes = [(HFAnalyticsAccessCodeEvent *)self ratioOfUserPINCodes];
  [v4 na_safeSetObject:ratioOfUserPINCodes forKey:@"ratioOfUsersWithPIN"];

  return v4;
}

@end