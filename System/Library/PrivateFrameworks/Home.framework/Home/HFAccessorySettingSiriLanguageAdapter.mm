@interface HFAccessorySettingSiriLanguageAdapter
- (BOOL)shouldShowSettingsEntity:(id)a3;
- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 mode:(unint64_t)a5 updateHandler:(id)a6;
- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 updateHandler:(id)a5;
- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4;
- (NAFuture)languageSettingFuture;
- (id)_reloadLanguagesFromHomeKitNotifyingObservers:(BOOL)a3;
- (id)preferredOutputVoiceAccentOptionsForSelectedOption:(id)a3;
- (id)preferredOutputVoiceOptionsForSelectedOption:(id)a3;
- (id)preferredRecognitionLanguageOptionsForSelectedOption:(id)a3;
- (id)updateAvailableLanguageOptions:(id)a3;
- (id)updateSelectedLanguageOption:(id)a3;
- (void)_dumpAvailableLanguageOptionsWithReason:(id)a3;
- (void)addObserver:(id)a3;
- (void)homeKitSettingWasUpdated:(id)a3 value:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation HFAccessorySettingSiriLanguageAdapter

- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a3;
  v8 = [v6 setWithObject:@"root.siri.language"];
  v16.receiver = self;
  v16.super_class = HFAccessorySettingSiriLanguageAdapter;
  v9 = [(HFAccessorySettingAdapter *)&v16 initWithHomeKitSettingsVendor:v7 keyPaths:v8 mode:a4 updateHandler:0];

  if (v9)
  {
    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = v10;

    v12 = [MEMORY[0x277CBEB98] set];
    availableLanguageOptions = v9->_availableLanguageOptions;
    v9->_availableLanguageOptions = v12;

    v14 = [(HFAccessorySettingSiriLanguageAdapter *)v9 _reloadLanguagesFromHomeKitNotifyingObservers:0];
  }

  return v9;
}

- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 mode:(unint64_t)a5 updateHandler:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [v8 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingSiriLanguageAdapter.m" lineNumber:56 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingSiriLanguageAdapter initWithHomeKitSettingsVendor:keyPaths:mode:updateHandler:]", v9}];

  return 0;
}

- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 updateHandler:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingSiriLanguageAdapter.m" lineNumber:61 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingSiriLanguageAdapter initWithHomeKitSettingsVendor:keyPaths:updateHandler:]", v8}];

  return 0;
}

- (void)homeKitSettingWasUpdated:(id)a3 value:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Siri language was updated to value [%@] - for setting [%@] - self.homeKitSettingsVendor [%@] - reloading", &v12, 0x20u);
  }

  v10 = [(HFAccessorySettingSiriLanguageAdapter *)self _reloadLanguagesFromHomeKitNotifyingObservers:1];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(HFAccessorySettingSiriLanguageAdapter *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(HFAccessorySettingSiriLanguageAdapter *)self observers];
  [v5 removeObject:v4];
}

- (id)updateAvailableLanguageOptions:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(HFAccessorySettingAdapter *)self mode]== 1)
  {
    objc_initWeak(location, self);
    v5 = [(HFAccessorySettingSiriLanguageAdapter *)self languageSettingFuture];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke;
    v12[3] = &unk_277DF5358;
    v13 = v4;
    objc_copyWeak(&v14, location);
    v6 = [v5 flatMap:v12];
    objc_destroyWeak(&v14);

    objc_destroyWeak(location);
  }

  else
  {
    v7 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = self;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Attempted to update available languages on adapter %@ when syncing of available options is disabled!", location, 0xCu);
    }

    v8 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25 operation:@"HFOperationUpdateHomePodAvailableLanguageOptions" options:0];
    v6 = [v8 futureWithError:v9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

id __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v27 = [*(a1 + 32) na_map:&__block_literal_global_33];
  v4 = MEMORY[0x277CBEB98];
  v5 = [v3 items];
  v6 = [v5 na_map:&__block_literal_global_13_1];
  v26 = [v4 setWithArray:v6];

  v7 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Updating available Siri language options...", buf, 2u);
  }

  v8 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v26;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Old languages: %@", buf, 0xCu);
  }

  v9 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v27;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "New languages: %@", buf, 0xCu);
  }

  v10 = [HFSetDiff diffFromSet:v26 toSet:v27];
  v11 = [v10 additions];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_15;
  v36[3] = &unk_277DF5290;
  v12 = v3;
  v37 = v12;
  v25 = [v11 na_map:v36];

  v13 = [v10 deletions];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_20;
  v34[3] = &unk_277DF5290;
  v24 = v12;
  v35 = v24;
  v14 = [v13 na_map:v34];

  v15 = [v25 allObjects];
  v16 = [v14 allObjects];
  v17 = [v15 arrayByAddingObjectsFromArray:v16];

  v18 = [MEMORY[0x277D2C900] combineAllFutures:v17];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_27;
  v32[3] = &unk_277DF52E0;
  objc_copyWeak(&v33, (a1 + 40));
  v19 = [v18 flatMap:v32];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_29;
  v30[3] = &unk_277DF5308;
  objc_copyWeak(&v31, (a1 + 40));
  v20 = [v19 addCompletionBlock:v30];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_34;
  v28[3] = &unk_277DF5330;
  objc_copyWeak(&v29, (a1 + 40));
  v21 = [v20 recover:v28];
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_16;
  v8[3] = &unk_277DF28D8;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = [v4 lazyFutureWithBlock:v8];

  return v6;
}

void __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_16(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Adding available language: %@", &v10, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x277CD1770]) initWithTitle:*(a1 + 32)];
  v7 = *(a1 + 40);
  v8 = [v3 errorOnlyCompletionHandlerAdapter];

  [v7 addItem:v6 completionHandler:v8];
  v9 = *MEMORY[0x277D85DE8];
}

id __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_21;
  v8[3] = &unk_277DF28D8;
  v9 = *(a1 + 32);
  v10 = v3;
  v5 = v3;
  v6 = [v4 lazyFutureWithBlock:v8];

  return v6;
}

void __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_21(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 items];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_3_22;
  v15 = &unk_277DF52B8;
  v16 = *(a1 + 40);
  v6 = [v5 na_firstObjectPassingTest:&v12];

  if (v6)
  {
    v7 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Removing available language: %@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = [v4 errorOnlyCompletionHandlerAdapter];

    [v9 removeItem:v6 completionHandler:v10];
  }

  else
  {
    NSLog(&cfstr_CouldNotFindMa.isa, *(a1 + 40), v12, v13, v14, v15);
    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    [v4 finishWithError:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_3_22(uint64_t a1, void *a2)
{
  v3 = [a2 title];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _reloadLanguagesFromHomeKitNotifyingObservers:0];

  return v2;
}

void __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_29(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to updateAvailableLanguageOptions: %@", &v8, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dumpAvailableLanguageOptionsWithReason:@"Finished updateAvailableLanguageOptions"];

  v7 = *MEMORY[0x277D85DE8];
}

id __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _reloadLanguagesFromHomeKitNotifyingObservers:0];

  return v2;
}

- (id)updateSelectedLanguageOption:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_initWeak(&location, self);
  v5 = [(HFAccessorySettingSiriLanguageAdapter *)self languageSettingFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke;
  v9[3] = &unk_277DF53D0;
  v6 = v4;
  v10 = v6;
  v11 = self;
  objc_copyWeak(&v12, &location);
  v7 = [v5 flatMap:v9];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);

  return v7;
}

id __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke(id *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] allSerializedRepresentations];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v5 = [v3 items];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke_37;
  v21[3] = &unk_277DF5380;
  v6 = v4;
  v22 = v6;
  v23 = &v24;
  [v5 enumerateObjectsUsingBlock:v21];

  if (v25[5])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v8 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [WeakRetained selectedLanguageOption];
      v10 = a1[4];
      *buf = 138412546;
      v31 = v9;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Updating selected Siri language option from: %@ to: %@", buf, 0x16u);
    }

    v11 = [WeakRetained updateSetting:v3 value:v25[5]];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke_42;
    v18[3] = &unk_277DF53A8;
    v19 = a1[4];
    objc_copyWeak(&v20, a1 + 6);
    v12 = [v11 addCompletionBlock:v18];
    objc_destroyWeak(&v20);
  }

  else
  {
    v13 = a1[4];
    v14 = [a1[5] availableLanguageOptions];
    NSLog(&cfstr_CouldNotFindSe.isa, v13, v14);

    v15 = MEMORY[0x277D2C900];
    WeakRetained = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v12 = [v15 futureWithError:WeakRetained];
  }

  _Block_object_dispose(&v24, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

void __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke_37(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v11 = v7;
  v9 = [v7 title];
  v10 = [v8 indexOfObject:v9];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke_42(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x3EuLL);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Error updating selected language option to %@: %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Successfully updated selected language option to: %@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dumpAvailableLanguageOptionsWithReason:@"Finished updateSelectedLanguageOption"];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_dumpAvailableLanguageOptionsWithReason:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "------", buf, 2u);
  }

  v6 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_debug_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEBUG, "[Dumping language options for reason: %@]", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(HFAccessorySettingSiriLanguageAdapter *)self availableLanguageOptions];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = HFLogForCategory(0x3EuLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v22 = v12;
          _os_log_debug_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEBUG, "OPTION: %@", buf, 0xCu);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEBUG, "------", buf, 2u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)preferredRecognitionLanguageOptionsForSelectedOption:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(HFAccessorySettingSiriLanguageAdapter *)self availableLanguageOptions];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 voiceNameWithDefaultFallback];
        v13 = [v11 outputLanguage];
        v14 = v13;
        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v16 = [v13 stringByAppendingString:v12];
          [v5 addObject:v16];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v17 = [(HFAccessorySettingSiriLanguageAdapter *)self availableLanguageOptions];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__HFAccessorySettingSiriLanguageAdapter_preferredRecognitionLanguageOptionsForSelectedOption___block_invoke;
  v23[3] = &unk_277DF53F8;
  v24 = v4;
  v25 = v5;
  v18 = v5;
  v19 = v4;
  v20 = [v17 na_filter:v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __94__HFAccessorySettingSiriLanguageAdapter_preferredRecognitionLanguageOptionsForSelectedOption___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CEF2D8] sharedInstance];
  v5 = [*(a1 + 32) outputVoice];
  v6 = [v3 recognitionLanguage];
  v7 = [v4 voiceSimilarToVoice:v5 inSiriSessionLanguage:v6];

  v8 = [v7 name];
  v9 = [v7 languageCode];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || ([v9 stringByAppendingString:v8], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(*(a1 + 40), "containsObject:", v12), v12, !v13))
  {
    v20 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v3 recognitionLanguage];
      v24 = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "Most similar voice %@ in recognition language %@ not available. Using default", &v24, 0x16u);
    }

    v19 = [v3 isDefaultVoiceForRecognitionLanguage];
  }

  else
  {
    v14 = [v3 voiceNameWithDefaultFallback];
    v15 = [v7 name];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      v17 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v24 = 138412546;
        v25 = v3;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Option %@ most similar to current selected option %@", &v24, 0x16u);
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)preferredOutputVoiceOptionsForSelectedOption:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(HFAccessorySettingSiriLanguageAdapter *)self availableLanguageOptions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceOptionsForSelectedOption___block_invoke;
  v9[3] = &unk_277DF5420;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_filter:v9];

  return v7;
}

uint64_t __86__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceOptionsForSelectedOption___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recognitionLanguage];
  v5 = [*(a1 + 32) recognitionLanguage];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 outputLanguage];
    v7 = [*(a1 + 32) outputLanguage];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)preferredOutputVoiceAccentOptionsForSelectedOption:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(HFAccessorySettingSiriLanguageAdapter *)self availableLanguageOptions];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 recognitionLanguage];
        v13 = [v4 recognitionLanguage];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v15 = [v11 outputLanguage];
          v16 = [v5 na_objectForKey:v15 withDefaultValue:&__block_literal_global_53];
          [v16 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v17 = MEMORY[0x277CBEB98];
  v18 = [v5 allValues];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __92__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceAccentOptionsForSelectedOption___block_invoke_2;
  v24[3] = &unk_277DF5488;
  v25 = v4;
  v19 = v4;
  v20 = [v18 na_map:v24];
  v21 = [v17 setWithArray:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id __92__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceAccentOptionsForSelectedOption___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceAccentOptionsForSelectedOption___block_invoke_3;
  v7[3] = &unk_277DF5420;
  v8 = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:v7];
  if (!v4)
  {
    v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_55_0];
    if (!v4)
    {
      v4 = [v3 anyObject];
    }
  }

  v5 = v4;

  return v5;
}

uint64_t __92__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceAccentOptionsForSelectedOption___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEF2D8];
  v4 = a2;
  v5 = [v3 sharedInstance];
  v6 = [*(a1 + 32) outputVoice];
  v7 = [v4 outputLanguage];
  v8 = [v5 voiceSimilarToVoice:v6 inSiriSessionLanguage:v7];

  v9 = [v4 voiceNameWithDefaultFallback];

  v10 = [v8 name];
  v11 = [v9 isEqualToString:v10];

  return v11;
}

- (NAFuture)languageSettingFuture
{
  v2 = [(HFAccessorySettingAdapter *)self settingWatchFutureForKeyPath:@"root.siri.language"];
  v3 = [v2 flatMap:&__block_literal_global_59_0];

  return v3;
}

id __62__HFAccessorySettingSiriLanguageAdapter_languageSettingFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277D2C900];
  v4 = objc_opt_class();
  v5 = v2;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5;
    if (v6)
    {
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
  }

  v7 = 0;
LABEL_8:

  v10 = [v3 futureWithResult:v7];

  return v10;
}

- (id)_reloadLanguagesFromHomeKitNotifyingObservers:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5 = [(HFAccessorySettingSiriLanguageAdapter *)self languageSettingFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__HFAccessorySettingSiriLanguageAdapter__reloadLanguagesFromHomeKitNotifyingObservers___block_invoke;
  v8[3] = &unk_277DF54F8;
  objc_copyWeak(&v9, &location);
  v10 = a3;
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __87__HFAccessorySettingSiriLanguageAdapter__reloadLanguagesFromHomeKitNotifyingObservers___block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__5;
  v50 = __Block_byref_object_dispose__5;
  v51 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277CBEB98];
  v6 = [v3 items];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __87__HFAccessorySettingSiriLanguageAdapter__reloadLanguagesFromHomeKitNotifyingObservers___block_invoke_2;
  v43[3] = &unk_277DF54D0;
  v43[4] = WeakRetained;
  v7 = v3;
  v44 = v7;
  v45 = &v46;
  v8 = [v6 na_map:v43];
  v9 = [v5 setWithArray:v8];

  v10 = [WeakRetained availableLanguageOptions];
  v11 = v9;
  if (v10 == v11)
  {
    v12 = 1;
  }

  else if (v10)
  {
    v12 = [v10 isEqual:v11];
  }

  else
  {
    v12 = 0;
  }

  [WeakRetained setAvailableLanguageOptions:v11];
  v13 = [WeakRetained selectedLanguageOption];
  v14 = v47[5];
  v15 = v13;
  v16 = v14;
  if (v15 == v16)
  {
    v17 = 1;
  }

  else if (v15)
  {
    v17 = [v15 isEqual:v16];
  }

  else
  {
    v17 = 0;
  }

  [WeakRetained setSelectedLanguageOption:v47[5]];
  if ((v12 & 1) == 0 && *(a1 + 40) == 1)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = [WeakRetained observers];
    v19 = [v18 copy];

    v20 = [v19 countByEnumeratingWithState:&v39 objects:v53 count:16];
    v33 = a1;
    v34 = v7;
    if (v20)
    {
      v21 = *v40;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v23 siriLanguageAdapter:WeakRetained availableLanguageOptionsDidChange:v11];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v39 objects:v53 count:16];
      }

      while (v20);
    }

    a1 = v33;
    v7 = v34;
  }

  if ((v17 & 1) == 0 && *(a1 + 40) == 1)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = [WeakRetained observers];
    v25 = [v24 copy];

    v26 = [v25 countByEnumeratingWithState:&v35 objects:v52 count:16];
    if (v26)
    {
      v27 = *v36;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v35 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v29 siriLanguageAdapter:WeakRetained selectedLanguageOptionDidChange:v47[5]];
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v35 objects:v52 count:16];
      }

      while (v26);
    }
  }

  v30 = [MEMORY[0x277D2C900] futureWithNoResult];

  _Block_object_dispose(&v46, 8);
  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

HFSiriLanguageOption *__87__HFAccessorySettingSiriLanguageAdapter__reloadLanguagesFromHomeKitNotifyingObservers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];
  v5 = [[HFSiriLanguageOption alloc] initWithSerializedRepresentation:v4];
  v6 = [*(a1 + 32) valueManager];
  v7 = [v6 valueForSetting:*(a1 + 40)];
  v8 = [v7 isEqual:v3];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  }

  return v5;
}

- (BOOL)shouldShowSettingsEntity:(id)a3
{
  v4 = a3;
  v5 = [v4 keyPath];
  v6 = [v5 isEqualToString:@"root.siri.personalRequests"];

  if (v6)
  {
    v7 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
    v8 = [v7 isContainedWithinItemGroup];

    if ((v8 & 1) == 0)
    {
      v14 = [HFUserItem alloc];
      v15 = +[HFHomeKitDispatcher sharedDispatcher];
      v16 = [v15 home];
      v17 = +[HFHomeKitDispatcher sharedDispatcher];
      v18 = [v17 home];
      v19 = [v18 currentUser];
      v20 = [(HFUserItem *)v14 initWithHome:v16 user:v19 nameStyle:0];

      v21 = +[HFHomeKitDispatcher sharedDispatcher];
      v22 = [v21 home];
      LOBYTE(v17) = [v22 hf_currentUserIsOwner];

      v23 = +[HFHomeKitDispatcher sharedDispatcher];
      v24 = [v23 home];
      LOBYTE(v18) = [v24 hf_currentUserIsAdministrator];

      v11 = v17 | v18 & [(HFUserItem *)v20 isIdentifyVoiceEnabled];
      goto LABEL_15;
    }
  }

  v9 = [v4 keyPath];
  v10 = [v9 isEqualToString:@"root.siri.identifyVoice"];

  if ((v10 & 1) == 0)
  {
    v12 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
    v13 = [v12 isContainedWithinItemGroup];

    if (v13)
    {
      v11 = 0;
      goto LABEL_16;
    }

    v25 = [v4 keyPath];
    v26 = [v25 isEqualToString:@"root.siri.recognitionLanguage"];

    if (v26)
    {
      v20 = [(HFAccessorySettingSiriLanguageAdapter *)self selectedLanguageOption];
      v27 = [(HFAccessorySettingSiriLanguageAdapter *)self preferredRecognitionLanguageOptionsForSelectedOption:v20];
      v11 = [v27 count] > 1;
    }

    else
    {
      v28 = [v4 keyPath];
      v29 = [v28 isEqualToString:@"root.siri.outputVoice"];

      if (!v29)
      {
        goto LABEL_4;
      }

      v20 = [(HFAccessorySettingSiriLanguageAdapter *)self selectedLanguageOption];
      v30 = [(HFAccessorySettingSiriLanguageAdapter *)self preferredOutputVoiceOptionsForSelectedOption:v20];
      if ([v30 count] > 1)
      {
        v11 = 1;
      }

      else
      {
        v31 = [(HFAccessorySettingSiriLanguageAdapter *)self selectedLanguageOption];
        v32 = [(HFAccessorySettingSiriLanguageAdapter *)self preferredOutputVoiceAccentOptionsForSelectedOption:v31];
        v11 = [v32 count] > 1;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_4:
  v11 = 1;
LABEL_16:

  return v11 & 1;
}

@end