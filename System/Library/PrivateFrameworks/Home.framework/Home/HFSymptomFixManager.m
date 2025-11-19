@interface HFSymptomFixManager
+ (id)sharedManager;
- (BOOL)anySymptomIsBeingFixedForFixableObject:(id)a3;
- (BOOL)shouldSuppressNetworkDiagnosticsSymptomsForSymptomsHandler:(id)a3;
- (HFSymptomFixManager)init;
- (id)_itemForFixSession:(id)a3;
- (id)_itemForSymptom:(id)a3 accessory:(id)a4;
- (int64_t)fixStateForSymptom:(id)a3 accessory:(id)a4;
- (void)fixSession:(id)a3 didChangeState:(int64_t)a4;
- (void)fixSymptom:(id)a3 forFixableObject:(id)a4 presentingViewController:(id)a5;
- (void)suppressNetworkDiagnosticsSymptomsForAccessory:(id)a3;
- (void)unsuppressNetworkDiagnosticsSymptomsForAccessory:(id)a3;
@end

@implementation HFSymptomFixManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HFSymptomFixManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (BOOL)anySymptomIsBeingFixedForFixableObject:(id)a3
{
  v4 = a3;
  v5 = [(HFSymptomFixManager *)self items];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HFSymptomFixManager_anySymptomIsBeingFixedForFixableObject___block_invoke;
  v9[3] = &unk_277DF9B78;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

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

- (int64_t)fixStateForSymptom:(id)a3 accessory:(id)a4
{
  v4 = [(HFSymptomFixManager *)self _itemForSymptom:a3 accessory:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fixSession];
    v7 = [v6 state];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldSuppressNetworkDiagnosticsSymptomsForSymptomsHandler:(id)a3
{
  v4 = a3;
  v5 = [(HFSymptomFixManager *)self suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)suppressNetworkDiagnosticsSymptomsForAccessory:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFSymptomFixManager *)self suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms];
  v6 = [v4 symptomsHandler];
  [v5 addObject:v6];

  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(HFSymptomFixManager *)self suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Suppress network diagnostics symptoms for accessory: %@, on suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unsuppressNetworkDiagnosticsSymptomsForAccessory:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFSymptomFixManager *)self suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms];
  v6 = [v4 symptomsHandler];
  [v5 removeObject:v6];

  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(HFSymptomFixManager *)self suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Stop suppressing network diagnostics symptoms for accessory: %@, on suppressedSymptomsHandlersForNetworkDiagnosticsSymptoms: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fixSymptom:(id)a3 forFixableObject:(id)a4 presentingViewController:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v38 = a5;
  v10 = HFLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v47 = v8;
    v48 = 2112;
    v49 = v9;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Starting fix for symptom %@ on fixable object %@", buf, 0x16u);
  }

  if (!+[HFUtilities isInternalInstall]|| ![(HFSymptomFixManagerItem *)v8 hf_generatedByHomeAppForDebuggingPurposes])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v17 = [(HFSymptomFixManagerItem *)v9 accessories];
    v18 = [(HFSymptomFixManagerItem *)v17 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v35 = v9;
      v20 = *v40;
      v36 = *v40;
      v37 = v17;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          v23 = [(HFSymptomFixManager *)self _itemForSymptom:v8 accessory:v22];
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
            v25 = [(HFSymptomFixManagerItem *)v22 symptomsHandler];
            v24 = [v25 newFixSessionForSymptom:v8];

            if (v24)
            {
              v26 = v8;
              v27 = [[HFSymptomFixManagerItem alloc] initWithSymptom:v8 fixSession:v24 accessory:v22];
              v28 = [(HFSymptomFixManager *)self items];
              [v28 addObject:v27];

              v29 = HFLogForCategory(0);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v47 = v27;
                _os_log_error_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_ERROR, "Now Posting HFSymptomFixManagerStartSessionNotification for item  %@", buf, 0xCu);
              }

              v30 = [MEMORY[0x277CCAB98] defaultCenter];
              v43 = @"symptomItemIdentifier";
              v31 = [(HFSymptomFixManagerItem *)v27 identifier];
              v44 = v31;
              v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
              [v30 postNotificationName:@"HFSymptomFixManagerStartSessionNotification" object:0 userInfo:v32];

              v33 = HFLogForCategory(0);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v47 = v27;
                _os_log_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEFAULT, "Starting fix session for item: %@", buf, 0xCu);
              }

              [v24 setDelegate:self];
              [v24 setPresentingViewController:v38];
              [v24 start];
              v8 = v26;
              v20 = v36;
              v17 = v37;
            }

            else
            {
              v27 = HFLogForCategory(0);
              if (os_log_type_enabled(&v27->super, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v47 = v8;
                v48 = 2112;
                v49 = v22;
                _os_log_error_impl(&dword_20D9BF000, &v27->super, OS_LOG_TYPE_ERROR, "Could not create fix session for symptom: %@ accessory: %@", buf, 0x16u);
              }
            }
          }
        }

        v19 = [(HFSymptomFixManagerItem *)v17 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v19);
      v9 = v35;
    }

    goto LABEL_37;
  }

  v11 = HFLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Updating symptom UI for debugging purposes", buf, 2u);
  }

  if ([(HFSymptomFixManagerItem *)v8 type]== 11)
  {
    objc_opt_class();
    v12 = v9;
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

  if ([(HFSymptomFixManagerItem *)v8 type]== 19)
  {
    objc_opt_class();
    v15 = v9;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    [(HFSymptomFixManagerItem *)v17 hf_setFakeCaptiveLeaseRenewalSymptom:0];
LABEL_37:
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)_itemForSymptom:(id)a3 accessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFSymptomFixManager *)self items];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__HFSymptomFixManager__itemForSymptom_accessory___block_invoke;
  v13[3] = &unk_277DF9BA0;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 na_firstObjectPassingTest:v13];

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

- (id)_itemForFixSession:(id)a3
{
  v4 = a3;
  v5 = [(HFSymptomFixManager *)self items];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HFSymptomFixManager__itemForFixSession___block_invoke;
  v9[3] = &unk_277DF9B78;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __42__HFSymptomFixManager__itemForFixSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fixSession];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)fixSession:(id)a3 didChangeState:(int64_t)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHMSymptomFixSessionState(a4);
    *buf = 138412546;
    v28 = v6;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFSymptomFixManager fixSession:%@ didChangeState:%@", buf, 0x16u);
  }

  v9 = [(HFSymptomFixManager *)self _itemForFixSession:v6];
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

    if (a4 == 2)
    {
      v12 = HFLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v11;
        _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Now Posting HFSymptomFixManagerEndSessionNotification for item  %@", buf, 0xCu);
      }

      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      v25 = @"symptomItemIdentifier";
      v14 = [v11 identifier];
      v26 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v13 postNotificationName:@"HFSymptomFixManagerEndSessionNotification" object:0 userInfo:v15];

      v16 = [(HFSymptomFixManager *)self items];
      [v16 removeObject:v11];

      v17 = [v6 error];

      if (v17)
      {
        v18 = HFLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = [v6 error];
          *buf = 138412546;
          v28 = v6;
          v29 = 2112;
          v30 = v22;
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
      v21 = [(HFSymptomFixManager *)self items];
      *buf = 138412546;
      v28 = v6;
      v29 = 2112;
      v30 = v21;
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