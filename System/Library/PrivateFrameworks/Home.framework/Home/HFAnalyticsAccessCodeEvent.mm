@interface HFAnalyticsAccessCodeEvent
- (HFAnalyticsAccessCodeEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsAccessCodeEvent

- (HFAnalyticsAccessCodeEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"home"];
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
  v8 = [v4 objectForKeyedSubscript:@"operationType"];
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
  v11 = [v4 objectForKeyedSubscript:@"pinCodeItem"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v41 = v12;

  v13 = [v4 objectForKeyedSubscript:@"pinCodeItem"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    NSLog(&cfstr_ErrorHfanalyti_19.isa);
  }

  objc_opt_class();
  v15 = [v4 objectForKeyedSubscript:@"duringOnboarding"];
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
  v18 = [v4 objectForKeyedSubscript:@"error"];
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
    v23 = [v20 domain];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
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
    v29 = [(HFAnalyticsAccessCodeEvent *)v22 home];
    v30 = [v28 pinCodeManagerForHome:v29];

    v31 = MEMORY[0x277CBEB58];
    v32 = [v7 users];
    v33 = [v31 setWithArray:v32];

    v34 = [v7 currentUser];
    [v33 addObject:v34];

    v35 = [v33 count];
    objc_initWeak(&location, v22);
    v36 = [v30 userPinCodes];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __43__HFAnalyticsAccessCodeEvent_initWithData___block_invoke;
    v44[3] = &unk_277DFD838;
    objc_copyWeak(v45, &location);
    *&v45[1] = v35;
    v37 = [v36 addSuccessBlock:v44];

    v38 = [v30 guestPinCodes];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __43__HFAnalyticsAccessCodeEvent_initWithData___block_invoke_2;
    v42[3] = &unk_277DFD860;
    objc_copyWeak(&v43, &location);
    v39 = [v38 addSuccessBlock:v42];

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
  v3 = [(HFAnalyticsEvent *)&v34 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsAccessCodeEvent *)self operationType];
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v8 = @"modifyAccessories";
        break;
      case 4:
        v9 = [(HFAnalyticsAccessCodeEvent *)self duringOnboarding];
        v10 = [v9 BOOLValue];

        if ((v10 & 1) == 0)
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
    if (v5 != 2)
    {
      v7 = 0;
    }

    if (v5 != 1)
    {
      v6 = v7;
    }

    if (v5)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"add";
    }
  }

  [v4 na_safeSetObject:v8 forKey:@"operationType"];
  v11 = [(HFAnalyticsAccessCodeEvent *)self duringOnboarding];
  [v4 na_safeSetObject:v11 forKey:@"duringOnboarding"];

  v12 = [(HFAnalyticsAccessCodeEvent *)self errorCode];
  [v4 na_safeSetObject:v12 forKey:@"errorCode"];

  v13 = [(HFAnalyticsAccessCodeEvent *)self errorDomain];
  [v4 na_safeSetObject:v13 forKey:@"errorDomain"];

  v14 = [(HFAnalyticsAccessCodeEvent *)self pinCodeItem];

  if (v14)
  {
    v15 = [(HFAnalyticsAccessCodeEvent *)self pinCodeItem];
    v16 = [v15 isGuest];
    v17 = @"user";
    if (v16)
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
  v20 = [(HFAnalyticsAccessCodeEvent *)self pinCodeItem];
  v21 = [v20 pinCodeValue];
  v22 = [v19 numberWithUnsignedInteger:{objc_msgSend(v21, "length")}];
  [v4 na_safeSetObject:v22 forKey:@"codeLength"];

  v23 = [(HFAnalyticsAccessCodeEvent *)self pinCodeItem];
  v24 = [v23 accessories];
  v25 = [v24 count];

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
  [v4 na_safeSetObject:v26 forKey:@"countOfAccessoriesEnabled"];

  v27 = [(HFAnalyticsAccessCodeEvent *)self home];
  v28 = [v27 hf_accessoriesSupportingAccessCodes];
  v29 = [v28 count];

  v30 = [MEMORY[0x277CCABB0] numberWithDouble:v25 / v29];
  [v4 na_safeSetObject:v30 forKey:@"ratioOfAccessoriesEnabled"];

  v31 = [(HFAnalyticsAccessCodeEvent *)self totalGuestPINCodes];
  [v4 na_safeSetObject:v31 forKey:@"totalCountGuests"];

  v32 = [(HFAnalyticsAccessCodeEvent *)self ratioOfUserPINCodes];
  [v4 na_safeSetObject:v32 forKey:@"ratioOfUsersWithPIN"];

  return v4;
}

@end