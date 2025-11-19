@interface ENCoreTelephonyUtility
+ (ENCoreTelephonyUtility)sharedInstance;
+ (id)countryCodeISOForMobileCountryCode:(id)a3;
+ (id)mobileCountryCodeForISO:(id)a3;
- (ENCoreTelephonyUtility)init;
- (id)countryCodeISOForMobileCountryCode:(id)a3;
- (id)currentMobileCountryCode;
- (id)currentPhoneNumbers;
- (void)addObserver:(id)a3;
- (void)cellMonitorUpdate:(id)a3 info:(id)a4;
- (void)currentPhoneNumbers;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation ENCoreTelephonyUtility

+ (ENCoreTelephonyUtility)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[ENCoreTelephonyUtility sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __40__ENCoreTelephonyUtility_sharedInstance__block_invoke()
{
  if (!sharedInstance_sharedInstance)
  {
    v0 = objc_alloc_init(ENCoreTelephonyUtility);
    v1 = sharedInstance_sharedInstance;
    sharedInstance_sharedInstance = v0;
  }
}

- (ENCoreTelephonyUtility)init
{
  v13.receiver = self;
  v13.super_class = ENCoreTelephonyUtility;
  v2 = [(ENCoreTelephonyUtility *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.exposureNotification.regionSource.telephony", v3);
    [(ENCoreTelephonyUtility *)v2 setSerialQueue:v4];

    v5 = *MEMORY[0x277CBECE0];
    v6 = [(ENCoreTelephonyUtility *)v2 serialQueue];
    v2->_ctServerConnection = _CTServerConnectionCreateOnTargetQueue();

    v7 = objc_alloc(MEMORY[0x277CC37B8]);
    v8 = [(ENCoreTelephonyUtility *)v2 serialQueue];
    v9 = [v7 initWithQueue:v8];
    ctClient = v2->_ctClient;
    v2->_ctClient = v9;

    [(CoreTelephonyClient *)v2->_ctClient setDelegate:v2];
  }

  v11 = [MEMORY[0x277CCAA48] weakObjectsHashTable];
  [(ENCoreTelephonyUtility *)v2 setObserversTable:v11];

  return v2;
}

- (void)dealloc
{
  if (gLogCategory_ENCoreTelephonyUtility <= 30 && (gLogCategory_ENCoreTelephonyUtility != -1 || _LogCategory_Initialize()))
  {
    [ENCoreTelephonyUtility dealloc];
  }

  if ([(ENCoreTelephonyUtility *)self ctServerConnection])
  {
    CFRelease([(ENCoreTelephonyUtility *)self ctServerConnection]);
  }

  v3.receiver = self;
  v3.super_class = ENCoreTelephonyUtility;
  [(ENCoreTelephonyUtility *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(ENCoreTelephonyUtility *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ENCoreTelephonyUtility_addObserver___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __38__ENCoreTelephonyUtility_addObserver___block_invoke(uint64_t a1)
{
  if (gLogCategory_ENCoreTelephonyUtility <= 30 && (gLogCategory_ENCoreTelephonyUtility != -1 || _LogCategory_Initialize()))
  {
    __38__ENCoreTelephonyUtility_addObserver___block_invoke_cold_1();
  }

  v2 = [*(a1 + 32) observersTable];
  [v2 addObject:*(a1 + 40)];

  v4 = [*(a1 + 32) currentMobileCountryCode];
  v3 = [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:?];
  if (v3)
  {
    if (gLogCategory_ENCoreTelephonyUtility < 31 && (gLogCategory_ENCoreTelephonyUtility != -1 || _LogCategory_Initialize()))
    {
      __38__ENCoreTelephonyUtility_addObserver___block_invoke_cold_2(v4);
    }

    [*(a1 + 40) telephonyUtility:*(a1 + 32) mobileCountryCodeChanged:v4 andCountryCodeISO:v3];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (gLogCategory_ENCoreTelephonyUtility <= 30 && (gLogCategory_ENCoreTelephonyUtility != -1 || _LogCategory_Initialize()))
  {
    [ENCoreTelephonyUtility removeObserver:];
  }

  v5 = [(ENCoreTelephonyUtility *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__ENCoreTelephonyUtility_removeObserver___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __41__ENCoreTelephonyUtility_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observersTable];
  [v2 removeObject:*(a1 + 40)];
}

- (id)countryCodeISOForMobileCountryCode:(id)a3
{
  v4 = a3;
  if ([(ENCoreTelephonyUtility *)self ctServerConnection]|| ([(ENCoreTelephonyUtility *)self ctClient], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = objc_autoreleasePoolPush();
    if (v4)
    {
      [(ENCoreTelephonyUtility *)self ctServerConnection];
      _CTServerConnectionCopyISOForMCC();
      if (gLogCategory__ENConfigurationManager <= 90 && (gLogCategory__ENConfigurationManager != -1 || _LogCategory_Initialize()))
      {
        [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:];
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  return 0;
}

- (id)currentMobileCountryCode
{
  v3 = [(ENCoreTelephonyUtility *)self ctClient];

  if (v3)
  {
    v4 = [(ENCoreTelephonyUtility *)self ctClient];
    v5 = [v4 getCurrentDataSubscriptionContextSync:0];

    v6 = [(ENCoreTelephonyUtility *)self ctClient];
    v11 = 0;
    v7 = [v6 copyMobileCountryCode:v5 error:&v11];
    v8 = v11;

    if (!v8 && v7 && [v7 length] && objc_msgSend(v7, "integerValue") != 0xFFFF)
    {
      v9 = v7;
    }

    else
    {
      if (gLogCategory__ENConfigurationManager <= 90 && (gLogCategory__ENConfigurationManager != -1 || _LogCategory_Initialize()))
      {
        [ENCoreTelephonyUtility currentMobileCountryCode];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)currentPhoneNumbers
{
  v41 = *MEMORY[0x277D85DE8];
  v23 = [MEMORY[0x277CBEB50] setWithCapacity:2];
  v3 = [(ENCoreTelephonyUtility *)self ctClient];
  v30 = 0;
  v20 = [v3 getSubscriptionInfoWithError:&v30];
  v22 = v30;

  if (v22)
  {
    if (gLogCategory__ENConfigurationManager <= 90 && (gLogCategory__ENConfigurationManager != -1 || _LogCategory_Initialize()))
    {
      [ENCoreTelephonyUtility currentPhoneNumbers];
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [v20 subscriptionsInUse];
    v4 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (v4)
    {
      v5 = *v27;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v27 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v26 + 1) + 8 * i);
          v8 = [(ENCoreTelephonyUtility *)self ctClient];
          v25 = 0;
          v9 = [v8 getPhoneNumber:v7 error:&v25];
          v10 = v25;

          if (v9)
          {
            v36 = 0;
            v37 = &v36;
            v38 = 0x2020000000;
            v11 = getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_ptr;
            v39 = getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_ptr;
            if (!getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_ptr)
            {
              v31 = MEMORY[0x277D85DD0];
              v32 = 3221225472;
              v33 = __getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_block_invoke;
              v34 = &unk_278FD10F8;
              v35 = &v36;
              __getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_block_invoke(&v31);
              v11 = v37[3];
            }

            _Block_object_dispose(&v36, 8);
            if (!v11)
            {
              [ENCoreTelephonyUtility currentPhoneNumbers];
            }

            v12 = v11();
            if (v12)
            {
              v13 = [v9 number];
              v14 = v12;
              v36 = 0;
              v37 = &v36;
              v38 = 0x2020000000;
              v15 = getTPSNormalizedPhoneNumberStringSymbolLoc_ptr;
              v39 = getTPSNormalizedPhoneNumberStringSymbolLoc_ptr;
              if (!getTPSNormalizedPhoneNumberStringSymbolLoc_ptr)
              {
                v31 = MEMORY[0x277D85DD0];
                v32 = 3221225472;
                v33 = __getTPSNormalizedPhoneNumberStringSymbolLoc_block_invoke;
                v34 = &unk_278FD10F8;
                v35 = &v36;
                __getTPSNormalizedPhoneNumberStringSymbolLoc_block_invoke(&v31);
                v15 = v37[3];
              }

              _Block_object_dispose(&v36, 8);
              if (!v15)
              {
                [ENCoreTelephonyUtility currentPhoneNumbers];
              }

              v16 = v15(v13, v14);

              if (v16)
              {
                [v23 addObject:v16];
              }
            }

            else if (gLogCategory_ENCoreTelephonyUtility <= 90 && (gLogCategory_ENCoreTelephonyUtility != -1 || _LogCategory_Initialize()))
            {
              [ENCoreTelephonyUtility currentPhoneNumbers];
            }
          }

          else if (gLogCategory__ENConfigurationManager <= 90 && (gLogCategory__ENConfigurationManager != -1 || _LogCategory_Initialize()))
          {
            [ENCoreTelephonyUtility currentPhoneNumbers];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
      }

      while (v4);
    }

    if (gLogCategory_ENCoreTelephonyUtility <= 40 && (gLogCategory_ENCoreTelephonyUtility != -1 || _LogCategory_Initialize()))
    {
      [ENCoreTelephonyUtility currentPhoneNumbers];
    }
  }

  v17 = [v23 allObjects];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)cellMonitorUpdate:(id)a3 info:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = [v6 legacyInfo];
  v8 = [(__CFString *)v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v8)
  {
    v10 = v7;
LABEL_35:

    goto LABEL_36;
  }

  v9 = v8;
  v31 = v6;
  v29 = v5;
  v10 = 0;
  v11 = *v37;
  v12 = *MEMORY[0x277CC38A8];
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v37 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v36 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v7;
        v16 = [v14 objectForKeyedSubscript:v12];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_13;
        }

        v18 = MEMORY[0x277CCACA0];
        v19 = [v14 objectForKeyedSubscript:v12];
        v20 = [v18 stringWithFormat:@"%@", v19];

        if (!v20)
        {
          v10 = 0;
LABEL_13:
          v7 = v15;
          continue;
        }

        v7 = v15;
        if ([(__CFString *)v20 integerValue]>= 1 && [(__CFString *)v20 integerValue]!= 0xFFFF)
        {

          v10 = v20;
          v5 = v29;
          v6 = v31;
LABEL_19:
          if ([(__CFString *)v10 isEqualToString:@"209"])
          {

            v10 = @"310";
          }

          v21 = [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:v10];
          if (v21)
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v22 = [(ENCoreTelephonyUtility *)self observersTable];
            v23 = [v22 allObjects];

            v24 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v33;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v33 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  [*(*(&v32 + 1) + 8 * j) telephonyUtility:self mobileCountryCodeChanged:v10 andCountryCodeISO:v21];
                }

                v25 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v25);
            }

            v6 = v31;
          }

          else if (gLogCategory__ENConfigurationManager <= 90 && (gLogCategory__ENConfigurationManager != -1 || _LogCategory_Initialize()))
          {
            [ENCoreTelephonyUtility cellMonitorUpdate:v10 info:?];
          }

          goto LABEL_35;
        }

        v10 = v20;
      }
    }

    v9 = [(__CFString *)v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  v5 = v29;
  v6 = v31;
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_36:

  v28 = *MEMORY[0x277D85DE8];
}

+ (id)mobileCountryCodeForISO:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CBEAC8] dictionaryWithContentsOfFile:@"/System/Library/Carrier Bundles/iPhone/Default.bundle/ISO2MCC.plist"];
    v6 = [v3 lowercaseString];
    v7 = [v5 objectForKey:v6];

    v8 = [v7 firstObject];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)countryCodeISOForMobileCountryCode:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CBEAC8] dictionaryWithContentsOfFile:@"/System/Library/Carrier Bundles/iPhone/Default.bundle/MCC2ISO.plist"];
    v6 = [v5 objectForKey:v3];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)currentPhoneNumbers
{
  v0 = [MEMORY[0x277CCA888] currentHandler];
  v1 = [MEMORY[0x277CCACA0] stringWithUTF8String:"CFStringRef soft_CPPhoneNumberCopyActiveCountryCode(void)"];
  [v0 handleFailureInFunction:v1 file:@"ENCoreTelephonyUtility.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

@end