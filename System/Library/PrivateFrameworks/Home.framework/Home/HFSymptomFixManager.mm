@interface HFSymptomFixManager
+ (id)sharedManager;
- (BOOL)anySymptomIsBeingFixedForFixableObject:(id)object;
- (BOOL)shouldSuppressNetworkDiagnosticsSymptomsForSymptomsHandler:(id)handler;
- (HFSymptomFixManager)init;
- (id)_itemForFixSession:(id)session;
- (id)_itemForSymptom:(id)symptom accessory:(id)accessory;
- (int64_t)fixStateForSymptom:(id)symptom accessory:(id)accessory;
- (void)fixSession:(id)session didChangeState:(int64_t)state;
- (void)fixSymptom:(id)symptom forFixableObject:(id)object presentingViewController:(id)controller;
- (void)suppressNetworkDiagnosticsSymptomsForAccessory:(id)accessory;
- (void)unsuppressNetworkDiagnosticsSymptomsForAccessory:(id)accessory;
@end

@implementation HFSymptomFixManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HFSymptomFixManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280E02EF8 != -1)
  {
    dispatch_once(&qword_280E02EF8, block);
  }

  v2 = _MergedGlobals_247;

  return v2;
}

void __36__HFSymptomFixManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_247;
  _MergedGlobals_247 = v1;
}

- (HFSymptomFixManager)init
{
  v8.receiver = self;
  v8.super_class = HFSymptomFixManager;
  v2 = [(HFSymptomFixManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms = v2->_suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms;
    v2->_suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    items = v2->_items;
    v2->_items = v5;
  }

  return v2;
}

- (BOOL)anySymptomIsBeingFixedForFixableObject:(id)object
{
  objectCopy = object;
  items = [(HFSymptomFixManager *)self items];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HFSymptomFixManager_anySymptomIsBeingFixedForFixableObject___block_invoke;
  v9[3] = &unk_277DF9B78;
  v10 = objectCopy;
  v6 = objectCopy;
  v7 = [items na_any:v9];

  return v7;
}

uint64_t __62__HFSymptomFixManager_anySymptomIsBeingFixedForFixableObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessories];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HFSymptomFixManager_anySymptomIsBeingFixedForFixableObject___block_invoke_2;
  v8[3] = &unk_277DF3888;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __62__HFSymptomFixManager_anySymptomIsBeingFixedForFixableObject___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessory];
  v5 = [v4 isEqual:v3];

  return v5;
}

- (int64_t)fixStateForSymptom:(id)symptom accessory:(id)accessory
{
  v4 = [(HFSymptomFixManager *)self _itemForSymptom:symptom accessory:accessory];
  v5 = v4;
  if (v4)
  {
    fixSession = [v4 fixSession];
    state = [fixSession state];
  }

  else
  {
    state = 0;
  }

  return state;
}

- (BOOL)shouldSuppressNetworkDiagnosticsSymptomsForSymptomsHandler:(id)handler
{
  handlerCopy = handler;
  suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms = [(HFSymptomFixManager *)self suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms];
  v6 = [suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms containsObject:handlerCopy];

  return v6;
}

- (void)suppressNetworkDiagnosticsSymptomsForAccessory:(id)accessory
{
  v14 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms = [(HFSymptomFixManager *)self suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms];
  symptomsHandler = [accessoryCopy symptomsHandler];
  [suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms addObject:symptomsHandler];

  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms2 = [(HFSymptomFixManager *)self suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms];
    v10 = 138412546;
    v11 = accessoryCopy;
    v12 = 2112;
    v13 = suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms2;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Suppress network diagnostics symptoms for accessory: %@, on suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unsuppressNetworkDiagnosticsSymptomsForAccessory:(id)accessory
{
  v14 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms = [(HFSymptomFixManager *)self suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms];
  symptomsHandler = [accessoryCopy symptomsHandler];
  [suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms removeObject:symptomsHandler];

  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms2 = [(HFSymptomFixManager *)self suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms];
    v10 = 138412546;
    v11 = accessoryCopy;
    v12 = 2112;
    v13 = suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms2;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Stop suppressing network diagnostics symptoms for accessory: %@, on suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fixSymptom:(id)symptom forFixableObject:(id)object presentingViewController:(id)controller
{
  v50 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  objectCopy = object;
  controllerCopy = controller;
  v10 = HFLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v47 = symptomCopy;
    v48 = 2112;
    v49 = objectCopy;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Starting fix for symptom %@ on fixable object %@", buf, 0x16u);
  }

  if (!+[HFUtilities isInternalInstall]|| ![(HFSymptomFixManagerItem *)symptomCopy hf_generatedByHomeAppForDebuggingPurposes])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    accessories = [(HFSymptomFixManagerItem *)objectCopy accessories];
    v18 = [(HFSymptomFixManagerItem *)accessories countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v35 = objectCopy;
      v20 = *v40;
      v36 = *v40;
      v37 = accessories;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(accessories);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          v23 = [(HFSymptomFixManager *)self _itemForSymptom:symptomCopy accessory:v22];
          if (v23)
          {
            v24 = HFLogForCategory(0);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v47 = v22;
              v48 = 2112;
              v49 = v23;
              _os_log_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEFAULT, "Not fixing accessory %@ because it is currently being fixed: %@", buf, 0x16u);
            }
          }

          else
          {
            symptomsHandler = [(HFSymptomFixManagerItem *)v22 symptomsHandler];
            v24 = [symptomsHandler newFixSessionForSymptom:symptomCopy];

            if (v24)
            {
              v26 = symptomCopy;
              v27 = [[HFSymptomFixManagerItem alloc] initWithSymptom:symptomCopy fixSession:v24 accessory:v22];
              items = [(HFSymptomFixManager *)self items];
              [items addObject:v27];

              v29 = HFLogForCategory(0);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v47 = v27;
                _os_log_error_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_ERROR, "Now Posting HFSymptomFixManagerStartSessionNotification for item  %@", buf, 0xCu);
              }

              defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
              v43 = @"symptomItemIdentifier";
              identifier = [(HFSymptomFixManagerItem *)v27 identifier];
              v44 = identifier;
              v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
              [defaultCenter postNotificationName:@"HFSymptomFixManagerStartSessionNotification" object:0 userInfo:v32];

              v33 = HFLogForCategory(0);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v47 = v27;
                _os_log_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEFAULT, "Starting fix session for item: %@", buf, 0xCu);
              }

              [v24 setDelegate:self];
              [v24 setPresentingViewController:controllerCopy];
              [v24 start];
              symptomCopy = v26;
              v20 = v36;
              accessories = v37;
            }

            else
            {
              v27 = HFLogForCategory(0);
              if (os_log_type_enabled(&v27->super, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v47 = symptomCopy;
                v48 = 2112;
                v49 = v22;
                _os_log_error_impl(&dword_20D9BF000, &v27->super, OS_LOG_TYPE_ERROR, "Could not create fix session for symptom: %@ accessory: %@", buf, 0x16u);
              }
            }
          }
        }

        v19 = [(HFSymptomFixManagerItem *)accessories countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v19);
      objectCopy = v35;
    }

    goto LABEL_37;
  }

  v11 = HFLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Updating symptom UI for debugging purposes", buf, 2u);
  }

  if ([(HFSymptomFixManagerItem *)symptomCopy type]== 11)
  {
    objc_opt_class();
    v12 = objectCopy;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    [(HFSymptomFixManagerItem *)v14 hf_setFakeWiFiMismatchSymptom:0];
  }

  if ([(HFSymptomFixManagerItem *)symptomCopy type]== 19)
  {
    objc_opt_class();
    v15 = objectCopy;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    accessories = v16;

    [(HFSymptomFixManagerItem *)accessories hf_setFakeCaptiveLeaseRenewalSymptom:0];
LABEL_37:
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)_itemForSymptom:(id)symptom accessory:(id)accessory
{
  symptomCopy = symptom;
  accessoryCopy = accessory;
  items = [(HFSymptomFixManager *)self items];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__HFSymptomFixManager__itemForSymptom_accessory___block_invoke;
  v13[3] = &unk_277DF9BA0;
  v14 = symptomCopy;
  v15 = accessoryCopy;
  v9 = accessoryCopy;
  v10 = symptomCopy;
  v11 = [items na_firstObjectPassingTest:v13];

  return v11;
}

uint64_t __49__HFSymptomFixManager__itemForSymptom_accessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 symptom];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [v3 accessory];
    v6 = [v5 isEqual:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_itemForFixSession:(id)session
{
  sessionCopy = session;
  items = [(HFSymptomFixManager *)self items];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HFSymptomFixManager__itemForFixSession___block_invoke;
  v9[3] = &unk_277DF9B78;
  v10 = sessionCopy;
  v6 = sessionCopy;
  v7 = [items na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __42__HFSymptomFixManager__itemForFixSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fixSession];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)fixSession:(id)session didChangeState:(int64_t)state
{
  v31 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHMSymptomFixSessionState(state);
    *buf = 138412546;
    v28 = sessionCopy;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFSymptomFixManager fixSession:%@ didChangeState:%@", buf, 0x16u);
  }

  v9 = [(HFSymptomFixManager *)self _itemForFixSession:sessionCopy];
  if (v9)
  {
    v10 = +[HFHomeKitDispatcher sharedDispatcher];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __49__HFSymptomFixManager_fixSession_didChangeState___block_invoke;
    v23[3] = &unk_277DF9BC8;
    v11 = v9;
    v24 = v11;
    [v10 dispatchSymptomFixSessionObserverMessage:v23 sender:0];

    if (state == 2)
    {
      v12 = HFLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v11;
        _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Now Posting HFSymptomFixManagerEndSessionNotification for item  %@", buf, 0xCu);
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v25 = @"symptomItemIdentifier";
      identifier = [v11 identifier];
      v26 = identifier;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [defaultCenter postNotificationName:@"HFSymptomFixManagerEndSessionNotification" object:0 userInfo:v15];

      items = [(HFSymptomFixManager *)self items];
      [items removeObject:v11];

      error = [sessionCopy error];

      if (error)
      {
        v18 = HFLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          error2 = [sessionCopy error];
          *buf = 138412546;
          v28 = sessionCopy;
          v29 = 2112;
          v30 = error2;
          _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "Error with Fix Session: %@ error: %@", buf, 0x16u);
        }
      }
    }

    v19 = v24;
  }

  else
  {
    v19 = HFLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      items2 = [(HFSymptomFixManager *)self items];
      *buf = 138412546;
      v28 = sessionCopy;
      v29 = 2112;
      v30 = items2;
      _os_log_error_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "HFSymptomFixManager received fix session callback for unknown session %@. All items: %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __49__HFSymptomFixManager_fixSession_didChangeState___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessory];
  [v3 fixSessionDidChangeForAccessory:v4];
}

@end