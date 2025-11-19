@interface HFHomeKitSettingsValueManager
- (HFHomeKitSettingsValueManager)initWithSettings:(id)a3 homeKitObjectIdentifiers:(id)a4;
- (NSSet)pendingWrites;
- (id)_valueForSetting:(id)a3 logRead:(BOOL)a4;
- (id)changeValueForSetting:(id)a3 toValue:(id)a4 changeType:(unint64_t)a5;
- (id)valueForSetting:(id)a3;
- (id)valueForSettingAtKeyPath:(id)a3;
- (void)_clearTransaction:(id)a3;
- (void)_executeNextPendingWriteForSetting:(id)a3;
@end

@implementation HFHomeKitSettingsValueManager

- (HFHomeKitSettingsValueManager)initWithSettings:(id)a3 homeKitObjectIdentifiers:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HFHomeKitSettingsValueManager.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"settings"}];
  }

  v16.receiver = self;
  v16.super_class = HFHomeKitSettingsValueManager;
  v10 = [(HFHomeKitSettingsValueManager *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_settings, a3);
    v12 = objc_opt_new();
    transactionStacks = v11->_transactionStacks;
    v11->_transactionStacks = v12;

    objc_storeStrong(&v11->_homeKitObjectIdentifiers, a4);
  }

  return v11;
}

- (id)changeValueForSetting:(id)a3 toValue:(id)a4 changeType:(unint64_t)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v39 = a4;
  if (v8)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    v38 = [(HFHomeKitSettingsValueManager *)self _valueForSetting:v8 logRead:0];
    v9 = [[_HFHomeKitSettingsVendorSettingsWriteValueTransaction alloc] initWithSetting:v8 previousValue:v38 value:v39 changeType:a5];
    v10 = [(HFHomeKitSettingsValueManager *)self transactionStacks];
    v11 = [v8 keyPath];
    v12 = [v10 na_objectForKey:v11 withDefaultValue:&__block_literal_global_139];

    v13 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "--> Queueing write transaction %@", buf, 0xCu);
    }

    v14 = [v12 count];
    if ([v12 count] >= 2)
    {
      if ([v12 count] >= 3)
      {
        NSLog(&cfstr_MoreThanOneQue.isa, v8, v12);
      }

      v15 = [v12 lastObject];
      v16 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_INFO, "--> Discarding queued write transaction %@", buf, 0xCu);
      }

      v17 = [v15 settingWriteFuture];
      [v17 cancel];

      if ([v12 containsObject:v15])
      {
        NSLog(&cfstr_CancelledTrans.isa, v15);
      }
    }

    v18 = v14 == 0;
    [v12 addObject:v9];
    v19 = [(HFHomeKitSettingsValueManager *)self settings];
    v20 = [MEMORY[0x277CBEB98] setWithObject:v8];
    v21 = [(HFHomeKitSettingsValueManager *)self homeKitObjectIdentifiers];
    v22 = v19;
    v23 = v20;
    v24 = +[HFHomeKitDispatcher sharedDispatcher];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __HFHomeKitSettingsValueManagerDispatchWillWriteValueForSettings_block_invoke;
    v49 = &unk_277DFD750;
    v50 = v22;
    v51 = v23;
    v25 = v23;
    v26 = v22;
    [v24 dispatchHomeKitSettingMessage:buf sender:0];

    if (v18)
    {
      [(HFHomeKitSettingsValueManager *)self _executeNextPendingWriteForSetting:v8];
    }

    else
    {
      v27 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v12 firstObject];
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_INFO, "--> Deferring execution for write transaction %@, as there is already a transaction in-flight (%@)", buf, 0x16u);
      }
    }

    objc_initWeak(buf, v9);
    objc_initWeak(&location, self);
    v32 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)v9 settingWriteFuture];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __74__HFHomeKitSettingsValueManager_changeValueForSetting_toValue_changeType___block_invoke_128;
    v40[3] = &unk_277DFD700;
    objc_copyWeak(&v45, &location);
    objc_copyWeak(&v46, buf);
    v33 = v26;
    v41 = v33;
    v34 = v25;
    v42 = v34;
    v35 = v21;
    v43 = v35;
    v44 = v8;
    v31 = [v32 addCompletionBlock:v40];

    objc_destroyWeak(&v46);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v29 = MEMORY[0x277D2C900];
    v30 = [MEMORY[0x277CCA9B8] hf_errorWithCode:7];
    v31 = [v29 futureWithError:v30];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v31;
}

id __74__HFHomeKitSettingsValueManager_changeValueForSetting_toValue_changeType___block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

void __74__HFHomeKitSettingsValueManager_changeValueForSetting_toValue_changeType___block_invoke_128(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = objc_loadWeakRetained((a1 + 72));
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 transactionStartDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v4)
  {
    [v6 setError:v4];
    [WeakRetained _clearTransaction:v6];
    v11 = [v4 na_isCancelledError];
    v12 = HFLogForCategory(0x3EuLL);
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v33 = 138412290;
        *&v33[4] = v6;
        _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_INFO, "--> Cancelled write transaction %@", v33, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v33 = 138412802;
        *&v33[4] = v6;
        *&v33[12] = 2048;
        *&v33[14] = v10;
        *&v33[22] = 2112;
        v34 = v4;
        _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "--> FAILED write transaction %@ (Execution Time: %.3f) error: %@", v33, 0x20u);
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v26 = *(a1 + 32);
      v27 = v24;
      v28 = v25;
      v29 = +[HFHomeKitDispatcher sharedDispatcher];
      *v33 = MEMORY[0x277D85DD0];
      *&v33[8] = 3221225472;
      *&v33[16] = __HFHomeKitSettingsValueManagerDispatchDidWriteValueForSettings_block_invoke;
      v34 = &unk_277DFD778;
      v35 = v26;
      v36 = 0;
      v37 = v27;
      v38 = v28;
      v30 = v28;
      v31 = v27;
      v13 = v26;
      [v29 dispatchHomeKitSettingMessage:v33 sender:0];
    }
  }

  else
  {
    v14 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 138412546;
      *&v33[4] = v6;
      *&v33[12] = 2048;
      *&v33[14] = v10;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "--> Finished write transaction for %@ (Execution Time: %.3f)", v33, 0x16u);
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = v15;
    v19 = v16;
    v20 = +[HFHomeKitDispatcher sharedDispatcher];
    *v33 = MEMORY[0x277D85DD0];
    *&v33[8] = 3221225472;
    *&v33[16] = __HFHomeKitSettingsValueManagerDispatchDidWriteValueForSettings_block_invoke;
    v34 = &unk_277DFD778;
    v35 = v17;
    v36 = v18;
    v37 = 0;
    v38 = v19;
    v21 = v19;
    v22 = v18;
    v23 = v17;
    [v20 dispatchHomeKitSettingMessage:v33 sender:0];

    [WeakRetained _clearTransaction:v6];
  }

  [WeakRetained _executeNextPendingWriteForSetting:*(a1 + 56)];

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_executeNextPendingWriteForSetting:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFHomeKitSettingsValueManager *)self transactionStacks];
  v6 = [v4 keyPath];
  v7 = [v5 objectForKeyedSubscript:v6];

  if ([v7 count])
  {
    if ([v7 count] != 1)
    {
      NSLog(&cfstr_MoreThanOneQue.isa, v4, v7);
    }

    v8 = [v7 firstObject];
    if (([v8 hasStarted] & 1) == 0)
    {
      v9 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v8;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "--> Executing pending write transaction %@", buf, 0xCu);
      }

      [v8 setStarted:1];
      objc_opt_class();
      v10 = v4;
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      if (v12 && [v8 changeType] == 1)
      {
        v13 = [v12 value];
        v14 = [v8 value];
        v15 = [v8 settingWriteFuture];
        v16 = [v15 errorOnlyCompletionHandlerAdapter];
        [v12 replaceItems:v13 withItems:v14 completionHandler:v16];
      }

      else
      {
        v13 = [v8 value];
        v14 = [v8 settingWriteFuture];
        v15 = [v14 errorOnlyCompletionHandlerAdapter];
        [v10 updateValue:v13 completionHandler:v15];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)valueForSetting:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitSettingsValueManager *)self _valueForSetting:v4 logRead:+[HFUtilities hasInternalDiagnostics]];

  return v5;
}

- (id)_valueForSetting:(id)a3 logRead:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 keyPath];
  v9 = [(HFHomeKitSettingsValueManager *)self transactionStacks];
  v10 = [v9 objectForKey:v8];

  v11 = [v10 lastObject];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 value];
    v14 = @"Transaction";
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = [v7 value];
    v14 = @"Settings";
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  v15 = [MEMORY[0x277CD1DA0] hf_debugDescriptionForValue:v13 keyPath:v8];
  v16 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = NSStringFromSelector(a2);
    v20 = 138413058;
    v21 = v19;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v15;
    _os_log_debug_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEBUG, "--> (%@) Reading %@ Value for %@ (%@)", &v20, 0x2Au);
  }

LABEL_8:
  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)valueForSettingAtKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitSettingsValueManager *)self settings];
  v6 = [v5 hf_accessorySettingAtKeyPath:v4];

  if (v6)
  {
    v7 = [(HFHomeKitSettingsValueManager *)self valueForSetting:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSSet)pendingWrites
{
  v3 = objc_opt_new();
  v4 = [(HFHomeKitSettingsValueManager *)self transactionStacks];
  v5 = [v4 allValues];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HFHomeKitSettingsValueManager_pendingWrites__block_invoke;
  v8[3] = &unk_277DFD728;
  v6 = v3;
  v9 = v6;
  [v5 na_each:v8];

  return v6;
}

void __46__HFHomeKitSettingsValueManager_pendingWrites__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 lastObject];
  v3 = [v4 setting];
  [v2 na_safeAddObject:v3];
}

- (void)_clearTransaction:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(HFHomeKitSettingsValueManager *)self transactionStacks];
    v6 = [v4 setting];
    v7 = [v6 keyPath];

    v8 = [v5 objectForKey:v7];
    v9 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_INFO, "--> Clearing transaction %@", buf, 0xCu);
    }

    if (([v8 containsObject:v4] & 1) == 0)
    {
      NSLog(&cfstr_TriedToClearTr.isa, v4);
    }

    [v8 removeObject:v4];
    v10 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_INFO, "--> Cleared transaction %@", buf, 0xCu);
    }

    if (![v8 count])
    {
      v11 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v7;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_INFO, "--> Tearing down transactionStack for setting key path '%@'", buf, 0xCu);
      }

      [v5 removeObjectForKey:v7];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end