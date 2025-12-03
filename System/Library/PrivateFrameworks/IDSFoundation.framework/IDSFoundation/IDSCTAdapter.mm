@interface IDSCTAdapter
+ (BOOL)isPhoneNumber:(id)number equivalentToExistingPhoneNumber:(id)phoneNumber;
+ (id)sharedInstance;
- (BOOL)_legacy_supportsSMSIdentification;
- (BOOL)doesAnySIMSupportsSimultaneousVoiceAndDataRightNow;
- (BOOL)dualSIMCapabilityEnabled;
- (BOOL)hasMultipleSIMs;
- (BOOL)isAnySIMInserted;
- (BOOL)isAnySIMUsable;
- (BOOL)isPNRNumber:(id)number andPhoneBookNumber:(id)bookNumber differentEnoughFromSIMIdentifier:(id)identifier toReregisterWithNewNumber:(id *)newNumber;
- (BOOL)isPhoneNumberEmergencyNumber:(id)number;
- (BOOL)supportsIdentification;
- (IDSCTAdapter)initWithCoreTelephonyClient:(id)client systemMonitor:(id)monitor;
- (id)CTPNRForSIM:(id)m;
- (id)PNRRegistrationPriorityListWithError:(id *)error;
- (id)SIMForIdentifier:(id)identifier;
- (id)_unlocked_currentSIMsWithFilterOptions:(unsigned __int8)options error:(id *)error;
- (id)carrierBundleValueFromAllSIMsForKey:(id)key ofType:(Class)type withFallback:(id)fallback;
- (id)carrierBundleValueFromSIM:(id)m forKey:(id)key ofType:(Class)type withFallback:(id)fallback;
- (id)contextForSim:(id)sim;
- (id)currentSIMsWithFilterOptions:(unsigned __int8)options error:(id *)error;
- (unsigned)_filterOptionsNeededForPNRSupportStatus:(id)status;
- (void)SIMStatusDidChange:(id)change status:(id)status;
- (void)_checkRegistrationStateForContext:(id)context;
- (void)_iterateListenersForSelector:(SEL)selector block:(id)block;
- (void)_locked_accessCache:(id)cache;
- (void)_unlocked_iterateListenersForSelector:(SEL)selector block:(id)block;
- (void)addListener:(id)listener;
- (void)carrierBundleChange:(id)change;
- (void)context:(id)context capabilitiesChanged:(id)changed;
- (void)context:(id)context pnrSupportChanged:(BOOL)changed;
- (void)dealloc;
- (void)didDetectSimDeactivation:(id)deactivation info:(id)info;
- (void)dualSimCapabilityDidChange;
- (void)operatorBundleChange:(id)change;
- (void)phoneNumberChanged:(id)changed;
- (void)pnrReadyStateNotification:(id)notification regState:(BOOL)state;
- (void)removeListener:(id)listener;
- (void)subscriptionInfoDidChange;
@end

@implementation IDSCTAdapter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A7AFF008;
  block[3] = &unk_1E77DD328;
  block[4] = self;
  if (qword_1ED5DF800 != -1)
  {
    dispatch_once(&qword_1ED5DF800, block);
  }

  v2 = qword_1ED5DF7F0;

  return v2;
}

- (BOOL)supportsIdentification
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7B01160;
  v4[3] = &unk_1E77E25B0;
  v4[4] = self;
  v4[5] = v5;
  v4[6] = &v7;
  [(IDSCTAdapter *)self _locked_accessCache:v4];
  v2 = *(v8 + 24);
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(&v7, 8);
  return v2;
}

- (void)subscriptionInfoDidChange
{
  v3 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Sub info changed -- clearing value", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7B090D8;
  v4[3] = &unk_1E77E0818;
  v4[4] = self;
  [(IDSCTAdapter *)self _locked_accessCache:v4];
  [(IDSCTAdapter *)self _iterateListenersForSelector:sel_SIMInformationDidChange block:&unk_1F1AAB820];
}

- (BOOL)doesAnySIMSupportsSimultaneousVoiceAndDataRightNow
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7B09498;
  v4[3] = &unk_1E77E2588;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSCTAdapter *)self _locked_accessCache:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (IDSCTAdapter)initWithCoreTelephonyClient:(id)client systemMonitor:(id)monitor
{
  clientCopy = client;
  monitorCopy = monitor;
  v18.receiver = self;
  v18.super_class = IDSCTAdapter;
  v9 = [(IDSCTAdapter *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    registrationStateByLabelID = v10->_registrationStateByLabelID;
    v10->_registrationStateByLabelID = v11;

    v13 = objc_alloc_init(IDSCTAdapterCache);
    cache = v10->_cache;
    v10->_cache = v13;

    objc_storeStrong(&v10->_coreTelephonyClient, client);
    [v10->_coreTelephonyClient setDelegate:v10];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    listeners = v10->_listeners;
    v10->_listeners = weakObjectsHashTable;

    objc_storeStrong(&v10->_systemMonitor, monitor);
    if (([(IMSystemMonitor *)v10->_systemMonitor isActive]& 1) == 0)
    {
      [(IMSystemMonitor *)v10->_systemMonitor setActive:1];
    }

    [(IMSystemMonitor *)v10->_systemMonitor addListener:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(IMSystemMonitor *)self->_systemMonitor removeListener:self];
  v3.receiver = self;
  v3.super_class = IDSCTAdapter;
  [(IDSCTAdapter *)&v3 dealloc];
}

- (BOOL)dualSIMCapabilityEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7C6BCC8;
  v4[3] = &unk_1E77E2588;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSCTAdapter *)self _locked_accessCache:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isAnySIMUsable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7C6BF24;
  v4[3] = &unk_1E77E2588;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSCTAdapter *)self _locked_accessCache:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isAnySIMInserted
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7C6C2D8;
  v4[3] = &unk_1E77E2588;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSCTAdapter *)self _locked_accessCache:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)hasMultipleSIMs
{
  v2 = [(IDSCTAdapter *)self currentSIMsWithError:0];
  v3 = [v2 __imArrayByApplyingBlock:&unk_1F1AAB780];
  v4 = [v3 count] > 1;

  return v4;
}

- (BOOL)_legacy_supportsSMSIdentification
{
  *&v16[7] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  if (qword_1EB2BC140 != -1)
  {
    sub_1A7E1F388();
  }

  if (qword_1EB2BC150 != -1)
  {
    sub_1A7E1F39C();
  }

  v12 = -86;
  v2 = off_1EB2BC138(*MEMORY[0x1E695E480], nullsub_8, &v9);
  if (!v2)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "Could not create CT server connection to query _CTServerConnectionIsPhoneNumberRegistrationSupported", buf, 2u);
    }

    return 1;
  }

  v3 = v2;
  v4 = off_1EB2BC148(v2, &v12);
  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v14 = v12;
    v15 = 1024;
    *v16 = v4;
    v16[2] = 2048;
    *&v16[3] = v4 >> 32;
    _os_log_impl(&dword_1A7AD9000, registration2, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionIsPhoneNumberRegistrationSupported returned value { registrationSupported: %d, error: (%d:%ld) }", buf, 0x18u);
  }

  CFRelease(v3);
  if (v4)
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v14 = v4;
      v15 = 2048;
      *v16 = v4 >> 32;
      _os_log_impl(&dword_1A7AD9000, registration3, OS_LOG_TYPE_DEFAULT, "Failed to query _CTServerConnectionIsPhoneNumberRegistrationSupported from CT { error: (%d:%ld) }", buf, 0x12u);
    }

    return 1;
  }

  return v12 != 0;
}

- (id)carrierBundleValueFromAllSIMsForKey:(id)key ofType:(Class)type withFallback:(id)fallback
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  fallbackCopy = fallback;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(IDSCTAdapter *)self currentSIMsWithError:0, 0];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(IDSCTAdapter *)self carrierBundleValueFromSIM:*(*(&v18 + 1) + 8 * i) forKey:keyCopy ofType:type withFallback:fallbackCopy];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

- (id)carrierBundleValueFromSIM:(id)m forKey:(id)key ofType:(Class)type withFallback:(id)fallback
{
  v40 = *MEMORY[0x1E69E9840];
  mCopy = m;
  keyCopy = key;
  fallbackCopy = fallback;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sIMIdentifier = [mCopy SIMIdentifier];
    v14 = [(IDSCTAdapter *)self SIMForIdentifier:sIMIdentifier];

    mCopy = v14;
  }

  context = [mCopy context];
  v16 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
  if (context)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v31 = 0;
    v18 = [coreTelephonyClient copyCarrierBundleValue:context key:keyCopy bundleType:v16 error:&v31];
    v19 = v31;
    if (v18)
    {
      isKindOfClass = objc_opt_isKindOfClass();
      v21 = [MEMORY[0x1E69A6138] sms];
      v22 = v21;
      if (isKindOfClass)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v33 = keyCopy;
          v34 = 2112;
          v35 = v18;
          _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "Found carrier bundle value { key: %@, value: %@ }", buf, 0x16u);
        }

        v23 = v18;
        goto LABEL_22;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v29 = objc_opt_class();
        *buf = 138413058;
        v33 = keyCopy;
        v34 = 2112;
        v35 = fallbackCopy;
        v36 = 2112;
        typeCopy = type;
        v38 = 2112;
        v39 = v29;
        v30 = v29;
        _os_log_fault_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_FAULT, "Unexpected type loading carrier bundle value { key: %@, fallbackValue: %@, expectedClass: %@, foundClass: %@ }", buf, 0x2Au);
      }
    }

    else
    {
      v24 = [MEMORY[0x1E69A6138] sms];
      v25 = v24;
      if (v19)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v33 = keyCopy;
          v34 = 2112;
          v35 = fallbackCopy;
          v36 = 2112;
          typeCopy = v19;
          _os_log_error_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_ERROR, "Failed to load carrier bundle value { key: %@, fallbackValue: %@, carrierBundleError: %@ }", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_1A7E1F3B0();
      }
    }

    v23 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v19 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v33 = keyCopy;
    v34 = 2112;
    v35 = fallbackCopy;
    v36 = 2112;
    typeCopy = 0;
    _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "Unable to load subscription context to look up carrier bundle value -- falling back { key: %@, fallbackValue: %@, subscriptionError: %@ }", buf, 0x20u);
  }

  v23 = 0;
LABEL_23:

  if (v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = fallbackCopy;
  }

  v27 = v26;

  return v26;
}

- (id)_unlocked_currentSIMsWithFilterOptions:(unsigned __int8)options error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  cache = [(IDSCTAdapter *)self cache];
  sims = [cache sims];

  v9 = &off_1A7E40000;
  if (sims)
  {
    goto LABEL_23;
  }

  if (_os_feature_enabled_impl())
  {
    coreTelephonyClient = [(IDSCTAdapter *)self coreTelephonyClient];
    v42 = 0;
    v11 = [coreTelephonyClient getActiveContexts:&v42];
    v12 = v42;

    if (v11)
    {
      objc_initWeak(&location, self);
      existingUserSubscriptions = [v11 existingUserSubscriptions];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = sub_1A7C6D308;
      v38[3] = &unk_1E77E25D8;
      objc_copyWeak(&v39, &location);
      v38[4] = self;
      optionsCopy = options;
      v14 = [existingUserSubscriptions __imArrayByApplyingBlock:v38];
      cache2 = [(IDSCTAdapter *)self cache];
      [cache2 setSims:v14];

      v16 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v11;
        _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "Loaded active contexts { contexts: %@ }", buf, 0xCu);
      }

      v17 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        cache3 = [(IDSCTAdapter *)self cache];
        sims2 = [cache3 sims];
        v19 = [sims2 count];
        cache4 = [(IDSCTAdapter *)self cache];
        sims3 = [cache4 sims];
        *buf = 134218242;
        v44 = v19;
        v45 = 2112;
        v46 = sims3;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Found %lu IDSCTSIM(s): %@", buf, 0x16u);

        v9 = &off_1A7E40000;
      }

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    else
    {
      v28 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v12;
        _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "Unable to load subscription contexts { subError: %@ }", buf, 0xCu);
      }
    }

    goto LABEL_19;
  }

  coreTelephonyClient = self->_coreTelephonyClient;
  v37 = 0;
  v11 = [coreTelephonyClient getSubscriptionInfoWithError:&v37];
  v12 = v37;
  if (v11)
  {
    subscriptions = [v11 subscriptions];
    v24 = [subscriptions __imArrayByApplyingBlock:&unk_1F1AAB7E0];
    cache5 = [(IDSCTAdapter *)self cache];
    [cache5 setSims:v24];

    v26 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v11;
      v27 = "Loaded subscription contexts { subInfo: %@ }";
LABEL_14:
      _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
    }
  }

  else
  {
    v26 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v12;
      v27 = "Unable to load subscription contexts { subError: %@ }";
      goto LABEL_14;
    }
  }

LABEL_19:
  if (error && v12)
  {
    v29 = v12;
    *error = v12;
  }

LABEL_23:
  cache6 = [(IDSCTAdapter *)self cache];
  sims4 = [cache6 sims];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = *(v9 + 303);
  v35[2] = sub_1A7C6D840;
  v35[3] = &unk_1E77E2618;
  optionsCopy2 = options;
  v32 = [sims4 __imArrayByFilteringWithBlock:v35];

  return v32;
}

- (unsigned)_filterOptionsNeededForPNRSupportStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isSupported])
  {
    isDisallowedByMDM = 0;
  }

  else
  {
    isDisallowedByMDM = [statusCopy isDisallowedByMDM];
  }

  return isDisallowedByMDM;
}

- (id)currentSIMsWithFilterOptions:(unsigned __int8)options error:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1A7C6DA4C;
  v20 = sub_1A7C6DA5C;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1A7C6DA4C;
  v14 = sub_1A7C6DA5C;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A7C6DA64;
  v8[3] = &unk_1E77E2640;
  v8[4] = self;
  v8[5] = &v16;
  optionsCopy = options;
  v8[6] = &v10;
  [(IDSCTAdapter *)self _locked_accessCache:v8];
  if (error)
  {
    v5 = v11[5];
    if (v5)
    {
      *error = v5;
    }
  }

  v6 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

- (id)SIMForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(IDSCTAdapter *)self currentSIMsWithError:0, 0];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        sIMIdentifier = [v9 SIMIdentifier];
        v11 = [sIMIdentifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)contextForSim:(id)sim
{
  v26 = *MEMORY[0x1E69E9840];
  simCopy = sim;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sIMIdentifier = [simCopy SIMIdentifier];
    v6 = [(IDSCTAdapter *)self SIMForIdentifier:sIMIdentifier];

    simCopy = v6;
  }

  context = [simCopy context];
  coreTelephonyClient = self->_coreTelephonyClient;
  v19 = 0;
  v9 = [coreTelephonyClient getPNRContext:context outError:&v19];
  v10 = v19;
  v11 = v10;
  if (!v9 || v10)
  {
    v17 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1F434();
    }

    v16 = 0;
  }

  else
  {
    isReady = [v9 isReady];
    v13 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"NO";
      *buf = 138412802;
      if (isReady)
      {
        v14 = @"YES";
      }

      v21 = v14;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = simCopy;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "Fetched SIMContext for SIM {validContext: %@, PNRContext: %@, context: %@}", buf, 0x20u);
    }

    if (isReady)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  return v16;
}

- (BOOL)isPNRNumber:(id)number andPhoneBookNumber:(id)bookNumber differentEnoughFromSIMIdentifier:(id)identifier toReregisterWithNewNumber:(id *)newNumber
{
  v55 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  bookNumberCopy = bookNumber;
  identifierCopy = identifier;
  v45 = 0;
  v11 = [(IDSCTAdapter *)self currentSIMsWithError:&v45];
  v39 = v45;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = *v42;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v42 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v41 + 1) + 8 * i);
      sIMIdentifier = [v17 SIMIdentifier];
      v19 = [sIMIdentifier isEqualToString:identifierCopy];

      if (v19)
      {
        v20 = v17;
        v21 = [(IDSCTAdapter *)self contextForSim:v20];

        if (!v20)
        {
          goto LABEL_17;
        }

        v22 = [MEMORY[0x1E69A6138] sms];
        v23 = bookNumberCopy;
        v24 = numberCopy;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v47 = numberCopy;
          v48 = 2112;
          v49 = v23;
          v50 = 2112;
          v51 = v20;
          v52 = 2112;
          v53 = v21;
          _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "** Checking for phone number change { phoneNumber: %@, phoneBookNumber: %@, matchingSIM: %@, matchingSIMContext: %@ }", buf, 0x2Au);
        }

        if (v21)
        {
          phoneNumberOnSIM = [v21 phoneNumberOnSIM];
          v26 = sub_1A7C6E1AC(phoneNumberOnSIM, v23);
          if (v26)
          {
            phoneNumberOnSIM2 = [v21 phoneNumberOnSIM];
            if (sub_1A7C6E1AC(phoneNumberOnSIM2, numberCopy))
            {
              v28 = 1;
              goto LABEL_33;
            }

            if (!numberCopy)
            {
              v28 = 0;
              goto LABEL_33;
            }

            v36 = phoneNumberOnSIM2;
LABEL_30:
            phoneNumber = [v21 phoneNumber];
            v28 = sub_1A7C6E1AC(phoneNumber, numberCopy);

            phoneNumberOnSIM2 = v37;
            if (!v26)
            {
LABEL_34:

              newNumberCopy2 = newNumber;
              v29 = v39;
              if (!newNumber || !v28)
              {
                goto LABEL_19;
              }

              phoneNumberOnSIM3 = [v21 phoneNumberOnSIM];
              goto LABEL_37;
            }

LABEL_33:

            goto LABEL_34;
          }

          if (numberCopy)
          {
            goto LABEL_30;
          }
        }

        else
        {
          phoneNumber2 = [v20 phoneNumber];
          if (sub_1A7C6E1AC(phoneNumber2, v23))
          {
            phoneNumber3 = [v20 phoneNumber];
            v28 = sub_1A7C6E1AC(phoneNumber3, numberCopy);

            v21 = 0;
            newNumberCopy2 = newNumber;
            if (!newNumber)
            {
              goto LABEL_18;
            }

            v29 = v39;
            if (!v28)
            {
              goto LABEL_19;
            }

            phoneNumberOnSIM3 = [v20 phoneNumber];
            v21 = 0;
LABEL_37:
            *newNumberCopy2 = phoneNumberOnSIM3;
            LOBYTE(v28) = 1;
            goto LABEL_19;
          }

          v21 = 0;
        }

        LOBYTE(v28) = 0;
        goto LABEL_18;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_9:

  v20 = 0;
  v21 = 0;
LABEL_17:
  LOBYTE(v28) = 0;
  v23 = bookNumberCopy;
  v24 = numberCopy;
LABEL_18:
  v29 = v39;
LABEL_19:

  return v28;
}

+ (BOOL)isPhoneNumber:(id)number equivalentToExistingPhoneNumber:(id)phoneNumber
{
  v23 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  phoneNumberCopy = phoneNumber;
  if ([numberCopy length] || objc_msgSend(phoneNumberCopy, "length"))
  {
    if ([numberCopy length] && objc_msgSend(phoneNumberCopy, "length"))
    {
      v7 = [phoneNumberCopy _IDFromFZIDType:0];
      _stripFZIDPrefix = [v7 _stripFZIDPrefix];

      v9 = [numberCopy _IDFromFZIDType:0];
      _stripFZIDPrefix2 = [v9 _stripFZIDPrefix];

      if ([_stripFZIDPrefix hasPrefix:@"+"])
      {
        v11 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+"];
        v12 = [_stripFZIDPrefix stringByRemovingCharactersFromSet:v11];

        _stripFZIDPrefix = v12;
      }

      v13 = (_IDSAreIDsEquivalent(_stripFZIDPrefix2, _stripFZIDPrefix) & 1) != 0 || (_IDSAreIDsEquivalent(_stripFZIDPrefix, _stripFZIDPrefix2) & 1) != 0 || [_stripFZIDPrefix rangeOfString:_stripFZIDPrefix2] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(_stripFZIDPrefix2, "rangeOfString:", _stripFZIDPrefix) != 0x7FFFFFFFFFFFFFFFLL;
      v14 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        v17 = 138412802;
        v18 = numberCopy;
        v19 = 2112;
        if (v13)
        {
          v15 = @"YES";
        }

        v20 = phoneNumberCopy;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "Determined whether phone numbers are equivalent { phoneNumber: %@, existingPhoneNumber: %@, equivalent: %@ }", &v17, 0x20u);
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (BOOL)isPhoneNumberEmergencyNumber:(id)number
{
  v33 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if (IMStringIsInHardcodedEmergencyNumberSet())
  {
    v5 = 1;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [(IDSCTAdapter *)self currentSIMsWithError:0];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v23;
      *&v8 = 138412802;
      v20 = v8;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          coreTelephonyClient = self->_coreTelephonyClient;
          context = [v12 context];
          v21 = 0;
          v15 = [coreTelephonyClient isEmergencyNumber:context number:numberCopy error:&v21];
          v16 = v21;

          if (v16)
          {
            v17 = [MEMORY[0x1E69A6138] sms];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              context2 = [v12 context];
              *buf = v20;
              v27 = numberCopy;
              v28 = 2112;
              v29 = context2;
              v30 = 2112;
              v31 = v16;
              _os_log_error_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_ERROR, "Failed to check if number is emergency number { phoneNumber: %@, context: %@, error: %@ }", buf, 0x20u);
            }
          }

          if (v15)
          {
            v5 = 1;
            goto LABEL_17;
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_17:
  }

  return v5;
}

- (id)CTPNRForSIM:(id)m
{
  mCopy = m;
  v4 = [IDSCTPNR alloc];
  v5 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
  v6 = [(IDSCTPNR *)v4 _initWithCoreTelephonyClient:v5 SIM:mCopy];

  return v6;
}

- (void)addListener:(id)listener
{
  if (listener)
  {
    listenerCopy = listener;
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_listeners addObject:listenerCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)removeListener:(id)listener
{
  if (listener)
  {
    listenerCopy = listener;
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_listeners removeObject:listenerCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_unlocked_iterateListenersForSelector:(SEL)selector block:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_assert_owner(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_listeners;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          blockCopy[2](blockCopy, v11);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_iterateListenersForSelector:(SEL)selector block:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  [(IDSCTAdapter *)self _unlocked_iterateListenersForSelector:selector block:blockCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_checkRegistrationStateForContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  labelID = [contextCopy labelID];
  if (!labelID)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = contextCopy;
      _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "No label ID found for context -- ignoring { context: %@ }", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v6 = [(NSMutableDictionary *)self->_registrationStateByLabelID objectForKeyedSubscript:labelID];
  coreTelephonyClient = self->_coreTelephonyClient;
  v18 = 0;
  v8 = [coreTelephonyClient getPNRContext:contextCopy outError:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isReady")}];
    v11 = v10;
    if (!v6 || !v10 || (v12 = [v10 BOOLValue], v12 != objc_msgSend(v6, "BOOLValue")))
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1A7C6ECBC;
      v15[3] = &unk_1E77E2668;
      v16 = contextCopy;
      v17 = v11;
      [(IDSCTAdapter *)self _unlocked_iterateListenersForSelector:sel_SIM_didUpdateRegistrationState_ block:v15];
    }

    [(NSMutableDictionary *)self->_registrationStateByLabelID setObject:v11 forKeyedSubscript:labelID];
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_1A7AD9000, registration2, OS_LOG_TYPE_DEFAULT, "Failed loading PNRContext -- exiting { error: %@ }", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
    v11 = 0;
  }

  if (v8)
  {
LABEL_15:
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_locked_accessCache:(id)cache
{
  cacheCopy = cache;
  os_unfair_lock_lock(&self->_lock);
  cacheCopy[2](cacheCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)PNRRegistrationPriorityListWithError:(id *)error
{
  coreTelephonyClient = [(IDSCTAdapter *)self coreTelephonyClient];
  v11 = 0;
  v5 = [coreTelephonyClient getPNRPriorityRegistrationListWithError:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1F4B8();
    }
  }

  v8 = [v5 __imArrayByApplyingBlock:&unk_1F1AAB800];
  if (error && v6)
  {
    v9 = v6;
    *error = v6;
  }

  return v8;
}

- (void)dualSimCapabilityDidChange
{
  v3 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Sim cap changed -- clearing value", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7C6EFA0;
  v4[3] = &unk_1E77E0818;
  v4[4] = self;
  [(IDSCTAdapter *)self _locked_accessCache:v4];
}

- (void)SIMStatusDidChange:(id)change status:(id)status
{
  v5 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Sim status changed -- clearing value", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A7C6F0B0;
  v6[3] = &unk_1E77E0818;
  v6[4] = self;
  [(IDSCTAdapter *)self _locked_accessCache:v6];
}

- (void)phoneNumberChanged:(id)changed
{
  v4 = MEMORY[0x1E69A6138];
  changedCopy = changed;
  v6 = [v4 sms];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Phone number changed -- clearing value", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A7C6F208;
  v7[3] = &unk_1E77E0818;
  v7[4] = self;
  [(IDSCTAdapter *)self _locked_accessCache:v7];
  [(IDSCTAdapter *)self _iterateListenersForSelector:sel_SIMInformationDidChange block:&unk_1F1AAB840];
  [(IDSCTAdapter *)self _checkRegistrationStateForContext:changedCopy];
}

- (void)context:(id)context pnrSupportChanged:(BOOL)changed
{
  v5 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "PNR support changed -- clearing value", v6, 2u);
  }

  [(IDSCTAdapter *)self subscriptionInfoDidChange];
}

- (void)pnrReadyStateNotification:(id)notification regState:(BOOL)state
{
  v5 = MEMORY[0x1E69A6138];
  notificationCopy = notification;
  v7 = [v5 sms];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "PNR ready state changed -- clearing value", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A7C6F3D0;
  v8[3] = &unk_1E77E0818;
  v8[4] = self;
  [(IDSCTAdapter *)self _locked_accessCache:v8];
  [(IDSCTAdapter *)self _checkRegistrationStateForContext:notificationCopy];
}

- (void)carrierBundleChange:(id)change
{
  v4 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Carrier bundle changed -- clearing value", v5, 2u);
  }

  [(IDSCTAdapter *)self _iterateListenersForSelector:sel_carrierBundleInformationDidChange block:&unk_1F1AAB860];
  [(IDSCTAdapter *)self _iterateListenersForSelector:sel_SIMInformationDidChange block:&unk_1F1AAB880];
}

- (void)operatorBundleChange:(id)change
{
  v4 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Operator bundle changed -- clearing value", v5, 2u);
  }

  [(IDSCTAdapter *)self _iterateListenersForSelector:sel_carrierBundleInformationDidChange block:&unk_1F1AAB8A0];
  [(IDSCTAdapter *)self _iterateListenersForSelector:sel_SIMInformationDidChange block:&unk_1F1AAB8C0];
}

- (void)didDetectSimDeactivation:(id)deactivation info:(id)info
{
  deactivationCopy = deactivation;
  infoCopy = info;
  v8 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "Detected sim deactivation", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A7C6F6C0;
  v11[3] = &unk_1E77E2668;
  v12 = deactivationCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = deactivationCopy;
  [(IDSCTAdapter *)self _iterateListenersForSelector:sel_SIM_didDeactivateWithInfo_ block:v11];
}

- (void)context:(id)context capabilitiesChanged:(id)changed
{
  v5 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Sim capabilitiesChanged -- clearing value", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A7C6F808;
  v6[3] = &unk_1E77E0818;
  v6[4] = self;
  [(IDSCTAdapter *)self _locked_accessCache:v6];
}

@end