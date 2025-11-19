@interface HFPinCodeManager
+ (id)asciiStringForLocalizedPINString:(id)a3 error:(id *)a4;
- (HFPinCodeManager)initWithHome:(id)a3;
- (id)_buildDataStoreWithAccessoryAccessCodeFetch:(id)a3;
- (id)_deleteGuestPinCode:(id)a3;
- (id)_deleteUnknownGuestFromMatterPinCode:(id)a3;
- (id)_fetchAccessCodesFromAccessories;
- (id)_fetchAccessoryConstraints;
- (id)_fetchCachedAccessoryAccessCodes;
- (id)_modificationCompletionHandlerForFuture:(id)a3;
- (id)_submitModificationRequests:(id)a3;
- (id)_updateGuestPinCodeWithItem:(id)a3 withCodeValue:(id)a4 withUserInfo:(id)a5;
- (id)addGuestPinCode:(id)a3 withLabel:(id)a4 onAccessories:(id)a5;
- (id)checkForValidationErrorsWithPINCodeValue:(id)a3 originalPINCode:(id)a4;
- (id)currentUserPinCode;
- (id)deleteGuestPinCodeWithItem:(id)a3;
- (id)deleteUserPinCodeWithUser:(id)a3;
- (id)enablePinCodesForAllUsersOnNewAccessory:(id)a3;
- (id)enablePinCodesForNewAccessory:(id)a3 forGuestItems:(id)a4;
- (id)fetchFromAccessories;
- (id)fetchFromAccessoryCache;
- (id)generateNewCodeValue;
- (id)guestPinCodes;
- (id)guestUserInformation;
- (id)hasValidConstraints;
- (id)otherEcosystemGuestPinCodes;
- (id)pinCodeForCodeValue:(id)a3;
- (id)refreshDataStore;
- (id)removedUserPINCodes;
- (id)restoreFullAccessForUserWithItem:(id)a3;
- (id)revokeAccessForAllRemovedUsers;
- (id)setPinCodeWithItem:(id)a3 enabled:(BOOL)a4 onAccessories:(id)a5;
- (id)setUserPinCode:(id)a3 forUser:(id)a4;
- (id)updateGuestPinCodeWithItem:(id)a3 withCodeValue:(id)a4 withLabel:(id)a5;
- (id)updateGuestPinCodeWithItem:(id)a3 withLabel:(id)a4;
- (id)updatePinCodeWithItem:(id)a3 withCodeValue:(id)a4;
- (id)userPinCodes;
- (void)_addNewHomeAccessCode:(id)a3 toStore:(id)a4;
- (void)_fetchPinCodeConstraints:(id)a3;
- (void)_kickoff;
- (void)_reloadObservers;
- (void)accessCodeManager:(id)a3 didAddAccessoryAccessCodes:(id)a4;
- (void)accessCodeManager:(id)a3 didAddHomeAccessCodes:(id)a4;
- (void)accessCodeManager:(id)a3 didRemoveAccessoryAccessCodes:(id)a4;
- (void)accessCodeManager:(id)a3 didRemoveHomeAccessCodes:(id)a4;
- (void)accessCodeManager:(id)a3 didUpdateHomeAccessCodes:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)executionEnvironmentRunningStateDidChange:(id)a3;
- (void)fetchPinCodeConstraints:(id)a3;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)removeObserver:(id)a3;
- (void)setFetchInProgress:(int64_t)a3;
@end

@implementation HFPinCodeManager

- (HFPinCodeManager)initWithHome:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HFPinCodeManager;
  v6 = [(HFPinCodeManager *)&v14 init];
  if (v6)
  {
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    [v7 addHomeObserver:v6];

    v8 = +[HFExecutionEnvironment sharedInstance];
    [v8 addObserver:v6];

    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v9;

    v6->_fetchInProgress = 0;
    objc_storeStrong(&v6->_home, a3);
    v11 = [v5 createAccessCodeManager];
    accessCodeManager = v6->_accessCodeManager;
    v6->_accessCodeManager = v11;

    [(HMAccessCodeManager *)v6->_accessCodeManager addObserver:v6];
    [(HFPinCodeManager *)v6 _kickoff];
  }

  return v6;
}

- (void)dealloc
{
  [(HMAccessCodeManager *)self->_accessCodeManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = HFPinCodeManager;
  [(HFPinCodeManager *)&v3 dealloc];
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 supportsAccessCodes])
  {
    v6 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Re-fetching access code constraints because accessory was added %@", &v9, 0xCu);
    }

    v7 = [(HFPinCodeManager *)self _fetchAccessoryConstraints];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 supportsAccessCodes])
  {
    v6 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Re-fetching access code constraints because accessory was removed %@", &v9, 0xCu);
    }

    v7 = [(HFPinCodeManager *)self _fetchAccessoryConstraints];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)executionEnvironmentRunningStateDidChange:(id)a3
{
  if (![a3 runningState])
  {
    v4 = [(HFPinCodeManager *)self fetchFromAccessories];
  }
}

- (id)_fetchCachedAccessoryAccessCodes
{
  v15 = *MEMORY[0x277D85DE8];
  [(HFPinCodeManager *)self setFetchInProgress:[(HFPinCodeManager *)self fetchInProgress]+ 1];
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Starting to fetch accessory access codes from cache with future: %p", buf, 0xCu);
  }

  v5 = [(HFPinCodeManager *)self accessCodeManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HFPinCodeManager__fetchCachedAccessoryAccessCodes__block_invoke;
  v10[3] = &unk_277DFA638;
  v6 = v3;
  v11 = v6;
  v12 = self;
  [v5 fetchCachedAccessoryAccessCodesWithCompletion:v10];

  v7 = v6;
  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void __52__HFPinCodeManager__fetchCachedAccessoryAccessCodes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = &stru_2824B1A78;
    if (v6)
    {
      v9 = v6;
    }

    v12 = 134218242;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Received response fetching PIN Codes from cache with future: %p %@", &v12, 0x16u);
  }

  v10 = *(a1 + 32);
  if (v6)
  {
    [v10 finishWithError:v6];
  }

  else
  {
    [v10 finishWithResult:v5];
  }

  [*(a1 + 40) setFetchInProgress:{objc_msgSend(*(a1 + 40), "fetchInProgress") - 1}];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_fetchAccessCodesFromAccessories
{
  v17 = *MEMORY[0x277D85DE8];
  [(HFPinCodeManager *)self setFetchInProgress:[(HFPinCodeManager *)self fetchInProgress]+ 1];
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Starting to fetch accessory access codes directly from accessories with future: %p", buf, 0xCu);
  }

  v5 = [(HFPinCodeManager *)self accessCodeManager];
  v6 = [(HFPinCodeManager *)self accessCodeManager];
  v7 = [v6 accessoriesSupportingAccessCodes];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HFPinCodeManager__fetchAccessCodesFromAccessories__block_invoke;
  v12[3] = &unk_277DFA638;
  v8 = v3;
  v13 = v8;
  v14 = self;
  [v5 fetchAccessCodesFromAccessories:v7 completion:v12];

  v9 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void __52__HFPinCodeManager__fetchAccessCodesFromAccessories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = &stru_2824B1A78;
    if (v6)
    {
      v9 = v6;
    }

    v12 = 134218242;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Received response fetching PIN Codes directly from accessories with future: %p %@", &v12, 0x16u);
  }

  v10 = *(a1 + 32);
  if (v6)
  {
    [v10 finishWithError:v6];
  }

  else
  {
    [v10 finishWithResult:v5];
  }

  [*(a1 + 40) setFetchInProgress:{objc_msgSend(*(a1 + 40), "fetchInProgress") - 1}];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_buildDataStoreWithAccessoryAccessCodeFetch:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HFPinCodeManager *)self setFetchInProgress:[(HFPinCodeManager *)self fetchInProgress]+ 1];
  v5 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HFPinCodeManager *)self accessCodeManager];
    *buf = 138412546;
    v26 = self;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "PIN Code Manager %@, Access Code Manager %@ Starting to build data store", buf, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277D2C900]);
  objc_initWeak(buf, self);
  v8 = [(HFPinCodeManager *)self accessCodeManager];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__HFPinCodeManager__buildDataStoreWithAccessoryAccessCodeFetch___block_invoke;
  v21[3] = &unk_277DFCCA0;
  objc_copyWeak(&v23, buf);
  v9 = v7;
  v22 = v9;
  [v8 fetchHomeAccessCodesWithCompletion:v21];

  v10 = MEMORY[0x277D2C900];
  v24[0] = v9;
  v24[1] = v4;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v12 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v13 = [v10 combineAllFutures:v11 ignoringErrors:1 scheduler:v12];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__HFPinCodeManager__buildDataStoreWithAccessoryAccessCodeFetch___block_invoke_58;
  v20[3] = &unk_277DF5938;
  v20[4] = self;
  v14 = [v13 flatMap:v20];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__HFPinCodeManager__buildDataStoreWithAccessoryAccessCodeFetch___block_invoke_61;
  v18[3] = &unk_277DFCCC8;
  objc_copyWeak(&v19, buf);
  v15 = [v14 addSuccessBlock:v18];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __64__HFPinCodeManager__buildDataStoreWithAccessoryAccessCodeFetch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Received an error fetching PIN Codes from iCloud: %@", buf, 0xCu);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v9 = objc_alloc_init(HFPinCodeDataStore);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [WeakRetained _addNewHomeAccessCode:*(*(&v21 + 1) + 8 * v14++) toStore:{v9, v21}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v12);
    }

    v15 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(HFPinCodeDataStore *)v9 userPINCodes];
      v17 = [v16 count];
      v18 = [(HFPinCodeDataStore *)v9 guestPINCodes];
      v19 = [v18 count];
      *buf = 134218498;
      v26 = v17;
      v27 = 2048;
      v28 = v19;
      v29 = 2112;
      v30 = &stru_2824B1A78;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Fetched %lu user PIN codes and %lu guest PIN codes from iCloud. %@", buf, 0x20u);
    }

    [*(a1 + 32) finishWithResult:v9];
  }

  v20 = *MEMORY[0x277D85DE8];
}

id __64__HFPinCodeManager__buildDataStoreWithAccessoryAccessCodeFetch___block_invoke_58(uint64_t a1, void *a2)
{
  v38 = a1;
  v58 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  v3 = [v2 objectAtIndex:0];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v39 = v2;
  v6 = [v2 objectAtIndex:1];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v8;
  v42 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v42)
  {
    v41 = *v49;
    do
    {
      v9 = 0;
      do
      {
        if (*v49 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v9;
        v10 = *(*(&v48 + 1) + 8 * v9);
        v11 = HFLogForCategory(0x37uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 accessoryAccessCodes];
          v13 = [v12 count];
          v14 = [v10 accessory];
          *buf = 134218242;
          v54 = v13;
          v55 = 2112;
          v56 = v14;
          _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Fetched %lu PIN codes from accessory %@.", buf, 0x16u);
        }

        v15 = [v10 error];

        if (v15)
        {
          v16 = HFLogForCategory(0x37uLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v33 = [v10 accessory];
            v34 = [v10 error];
            *buf = 138412546;
            v54 = v33;
            v55 = 2112;
            v56 = v34;
            _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Received an error fetching PIN Codes from Accessory: %@ - %@", buf, 0x16u);
          }
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v17 = [v10 accessoryAccessCodes];
        v18 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v45;
          do
          {
            v21 = 0;
            do
            {
              if (*v45 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v44 + 1) + 8 * v21);
              v23 = [v22 accessCodeValue];
              v24 = [v23 stringValue];

              v25 = [v5 guestPINCodes];
              v26 = [v25 objectForKey:v24];

              if (v26)
              {
                goto LABEL_26;
              }

              v27 = [v5 userPINCodes];
              v26 = [v27 objectForKey:v24];

              if (v26 || ([v5 removedUserPINCodes], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "objectForKey:", v24), v26 = objc_claimAutoreleasedReturnValue(), v28, v26))
              {
LABEL_26:
                [(HFPinCode *)v26 addAccessoryAccessCode:v22];
              }

              else
              {
                v26 = [[HFPinCode alloc] initWithAccessoryAccessCode:v22];
                if ([v24 length])
                {
                  v29 = [v5 guestPINCodes];
                  v30 = [v22 accessCodeValue];
                  v31 = [v30 stringValue];
                  [v29 setValue:v26 forKey:v31];
                }

                else
                {
                  v29 = [v5 otherEcosystemGuestPINCodes];
                  v30 = [(HFPinCode *)v26 unknownMatterGuestUniqueID];
                  [v29 setValue:v26 forKey:v30];
                }
              }

              ++v21;
            }

            while (v19 != v21);
            v32 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
            v19 = v32;
          }

          while (v32);
        }

        v9 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v42);
  }

  [*(v38 + 32) setFetchInProgress:{objc_msgSend(*(v38 + 32), "fetchInProgress") - 1}];
  v35 = [MEMORY[0x277D2C900] futureWithResult:v5];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

void __64__HFPinCodeManager__buildDataStoreWithAccessoryAccessCodeFetch___block_invoke_61(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDataStore:v3];

  [WeakRetained _reloadObservers];
}

- (id)_fetchAccessoryConstraints
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HFPinCodeManager *)self accessCodeManager];
  v4 = [v3 accessoriesSupportingAccessCodes];

  v5 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = [v4 count];
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Starting to fetch constraints from accessories: %lu", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  [(HFPinCodeManager *)self setConstraintsFuture:v6];
  objc_initWeak(buf, self);
  v7 = [(HFPinCodeManager *)self accessCodeManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__HFPinCodeManager__fetchAccessoryConstraints__block_invoke;
  v11[3] = &unk_277DFCCA0;
  objc_copyWeak(&v13, buf);
  v8 = v6;
  v12 = v8;
  [v7 fetchAccessCodeConstraintsFromAccessories:v4 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __46__HFPinCodeManager__fetchAccessoryConstraints__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v5 na_map:&__block_literal_global_132];
  [WeakRetained setConstraints:v8];
  v9 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218754;
    v15 = [v8 count];
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Fetched %lu constraints from accessories. Response: %@ Error: %@ constraints: %@", &v14, 0x2Au);
  }

  v10 = [v8 count];
  v11 = *(a1 + 32);
  if (v10)
  {
    [v11 finishWithResult:v8];
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:73];
    [v11 finishWithError:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_kickoff
{
  v3 = [(HFPinCodeManager *)self fetchFromAccessoryCache];
  v4 = [(HFPinCodeManager *)self fetchFromAccessories];
  v5 = [(HFPinCodeManager *)self _fetchAccessoryConstraints];
}

- (void)_addNewHomeAccessCode:(id)a3 toStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[HFPinCode alloc] initWithHomeAccessCode:v6];
  v9 = [v6 userInformation];
  v10 = [v9 user];

  if (v10)
  {
    v42 = v9;
    v11 = [v7 userPINCodes];
    v12 = [(HFPinCode *)v8 pinCodeValue];
    v13 = [v11 valueForKey:v12];

    if (v13)
    {
      v14 = HFLogForCategory(0x37uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Adding a new User Pin Code, we seem to already have one with the same value", buf, 2u);
      }
    }

    v15 = [v7 userPINCodes];
    v16 = [(HFPinCode *)v8 pinCodeValue];
    [v15 setValue:v8 forKey:v16];

    v17 = [(HFPinCodeManager *)self home];
    v18 = [v17 currentUser];
    v19 = [v18 uniqueIdentifier];
    v20 = [v6 userInformation];
    v21 = [v20 user];
    v22 = [v21 uniqueIdentifier];
    v23 = [v19 isEqual:v22];

    v9 = v42;
    if (v23)
    {
      [v7 setCurrentUserPinCode:v8];
    }
  }

  else
  {
    v24 = [v9 removedUserInfo];

    if (v24)
    {
      v25 = [v7 userPINCodes];
      v26 = [(HFPinCode *)v8 pinCodeValue];
      v27 = [v25 valueForKey:v26];

      if (v27)
      {
        v28 = HFLogForCategory(0x37uLL);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *v44 = 0;
          _os_log_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_DEFAULT, "Adding a removed User Pin Code, we seem to already have one with the same value", v44, 2u);
        }
      }

      v29 = [v7 removedUserPINCodes];
      v30 = [(HFPinCode *)v8 pinCodeValue];
      [v29 setValue:v8 forKey:v30];
    }

    else
    {
      v31 = [v7 guestPINCodes];
      v32 = [(HFPinCode *)v8 pinCodeValue];
      v33 = [v31 valueForKey:v32];

      if (!v33)
      {
        goto LABEL_18;
      }

      v34 = HFLogForCategory(0x37uLL);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 0;
        _os_log_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEFAULT, "Adding a new Guest Pin Code, we seem to already have one with the same value", v43, 2u);
      }

      v35 = [v33 userLabel];
      v36 = [v35 simpleLabel];
      v37 = [(HFPinCode *)v8 userLabel];
      v38 = [v37 simpleLabel];
      v39 = [v36 isEqualToString:v38];

      if ((v39 & 1) == 0)
      {
LABEL_18:
        v40 = [v7 guestPINCodes];
        v41 = [(HFPinCode *)v8 pinCodeValue];
        [v40 setValue:v8 forKey:v41];
      }
    }
  }
}

- (void)setFetchInProgress:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = self->_fetchInProgress <= 0;
  }

  v5 = !v4;
  self->_fetchInProgress = a3;
  if (a3 < 0)
  {
    v6 = objc_opt_class();
    NSLog(&cfstr_Fetchinprogres.isa, v6);
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  else if (!v5)
  {
    goto LABEL_21;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(HFPinCodeManager *)self observers];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 pinCodeManagerFetchDidComplete:self];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

LABEL_21:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)fetchFromAccessories
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HFPinCodeManager *)self inProgressFetchFromAccessories];

  if (v3)
  {
    v4 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(HFPinCodeManager *)self inProgressFetchFromAccessories];
      *buf = 134217984;
      v16 = v5;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Skipping fetch from accessories because a fetch is already in progress %p", buf, 0xCu);
    }

    v6 = [(HFPinCodeManager *)self inProgressFetchFromAccessories];
  }

  else
  {
    v7 = [(HFPinCodeManager *)self _fetchAccessCodesFromAccessories];
    v8 = [(HFPinCodeManager *)self _buildDataStoreWithAccessoryAccessCodeFetch:v7];
    [(HFPinCodeManager *)self setInProgressFetchFromAccessories:v8];

    objc_initWeak(buf, self);
    v9 = [(HFPinCodeManager *)self inProgressFetchFromAccessories];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __40__HFPinCodeManager_fetchFromAccessories__block_invoke;
    v13[3] = &unk_277DFCD10;
    objc_copyWeak(&v14, buf);
    v10 = [v9 addCompletionBlock:v13];

    v6 = [(HFPinCodeManager *)self inProgressFetchFromAccessories];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

void __40__HFPinCodeManager_fetchFromAccessories__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInProgressFetchFromAccessories:0];
}

- (id)fetchFromAccessoryCache
{
  v3 = [(HFPinCodeManager *)self _fetchCachedAccessoryAccessCodes];
  v4 = [(HFPinCodeManager *)self _buildDataStoreWithAccessoryAccessCodeFetch:v3];

  return v4;
}

- (id)refreshDataStore
{
  v3 = [(HFPinCodeManager *)self fetchFromAccessoryCache];
  v4 = [(HFPinCodeManager *)self constraints];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(HFPinCodeManager *)self _fetchAccessoryConstraints];
  }

  v7 = [(HFPinCodeManager *)self fetchFromAccessories];

  return v3;
}

- (id)userPinCodes
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HFPinCodeManager *)self dataStore];
  v4 = [v3 userPINCodes];
  v5 = [v4 allValues];
  v6 = [v2 futureWithResult:v5];

  return v6;
}

- (id)removedUserPINCodes
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HFPinCodeManager *)self dataStore];
  v4 = [v3 removedUserPINCodes];
  v5 = [v4 allValues];
  v6 = [v2 futureWithResult:v5];

  return v6;
}

- (id)guestPinCodes
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HFPinCodeManager *)self dataStore];
  v4 = [v3 guestPINCodes];
  v5 = [v4 allValues];
  v6 = [v2 futureWithResult:v5];

  return v6;
}

- (id)guestUserInformation
{
  v2 = [(HFPinCodeManager *)self dataStore];
  v3 = [v2 guestPINCodes];
  v4 = [v3 allValues];
  v5 = [v4 na_map:&__block_literal_global_73];

  return v5;
}

- (id)otherEcosystemGuestPinCodes
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HFPinCodeManager *)self dataStore];
  v4 = [v3 otherEcosystemGuestPINCodes];
  v5 = [v4 allValues];
  v6 = [v2 futureWithResult:v5];

  return v6;
}

- (id)currentUserPinCode
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HFPinCodeManager *)self dataStore];
  v4 = [v3 currentUserPinCode];
  v5 = [v2 futureWithResult:v4];

  return v5;
}

- (id)pinCodeForCodeValue:(id)a3
{
  v4 = MEMORY[0x277D2C900];
  v5 = a3;
  v6 = [(HFPinCodeManager *)self dataStore];
  v7 = [v6 pinCodeForCodeValue:v5];

  v8 = [v4 futureWithResult:v7];

  return v8;
}

- (id)addGuestPinCode:(id)a3 withLabel:(id)a4 onAccessories:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = [v10 count];
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Adding guest pin code on %lu accessories", buf, 0xCu);
  }

  if ([v8 length])
  {
    objc_initWeak(buf, self);
    v12 = MEMORY[0x277D2C900];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __60__HFPinCodeManager_addGuestPinCode_withLabel_onAccessories___block_invoke;
    v23[3] = &unk_277DFCA88;
    objc_copyWeak(&v27, buf);
    v24 = v9;
    v13 = v8;
    v25 = v13;
    v26 = v10;
    v14 = [v12 futureWithBlock:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__HFPinCodeManager_addGuestPinCode_withLabel_onAccessories___block_invoke_4;
    v21[3] = &unk_277DFA5C0;
    v21[4] = self;
    v22 = v13;
    v15 = [v14 flatMap:v21];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Pin Code Value should not be empty", buf, 2u);
    }

    v17 = MEMORY[0x277D2C900];
    v18 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v15 = [v17 futureWithError:v18];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

void __60__HFPinCodeManager_addGuestPinCode_withLabel_onAccessories___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained dataStore];
  v6 = [v5 guestPINCodes];
  v7 = [v6 allValues];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __60__HFPinCodeManager_addGuestPinCode_withLabel_onAccessories___block_invoke_2;
  v50[3] = &unk_277DFCD58;
  v51 = *(a1 + 32);
  v8 = [v7 na_any:v50];

  if (v8)
  {
    v9 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "There is already a guest PIN Code with this label. Aborting", buf, 2u);
    }

    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:76];
    [v3 finishWithError:v10];

    v11 = v51;
  }

  else
  {
    v35 = v3;

    v12 = [objc_alloc(MEMORY[0x277CD1638]) initWithSimpleLabel:*(a1 + 32)];
    v13 = [[HFPinCode alloc] initWithLabel:v12 accessCodeValue:*(a1 + 40) accessoryAccessCodes:0];
    v14 = [WeakRetained dataStore];
    v15 = [v14 guestPINCodes];
    v34 = v13;
    [v15 setValue:v13 forKey:*(a1 + 40)];

    [WeakRetained _reloadObservers];
    v16 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:*(a1 + 40)];
    v17 = [MEMORY[0x277CBEB18] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v18 = *(a1 + 48);
    v19 = [v18 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        v22 = 0;
        do
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [objc_alloc(MEMORY[0x277CD15F8]) initWithAccessCodeValue:v16 accessory:*(*(&v45 + 1) + 8 * v22)];
          [v17 addObject:v23];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v20);
    }

    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    v25 = [WeakRetained accessCodeManager];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __60__HFPinCodeManager_addGuestPinCode_withLabel_onAccessories___block_invoke_79;
    v42[3] = &unk_277DF2748;
    v43 = v12;
    v44 = v24;
    v26 = v24;
    v27 = v12;
    [v25 setUserInformation:v27 forHomeAccessCodeWithValue:v16 completion:v42];

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __60__HFPinCodeManager_addGuestPinCode_withLabel_onAccessories___block_invoke_81;
    v40[3] = &unk_277DFA610;
    v40[4] = WeakRetained;
    v41 = v17;
    v28 = v17;
    v29 = [v26 flatMap:v40];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __60__HFPinCodeManager_addGuestPinCode_withLabel_onAccessories___block_invoke_2_83;
    v38[3] = &unk_277DF2720;
    v3 = v35;
    v30 = v35;
    v39 = v30;
    v31 = [v29 addSuccessBlock:v38];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __60__HFPinCodeManager_addGuestPinCode_withLabel_onAccessories___block_invoke_3;
    v36[3] = &unk_277DF2D08;
    v37 = v30;
    v32 = [v31 addFailureBlock:v36];

    v11 = v34;
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HFPinCodeManager_addGuestPinCode_withLabel_onAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userLabel];
  v4 = [v3 simpleLabel];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void __60__HFPinCodeManager_addGuestPinCode_withLabel_onAccessories___block_invoke_79(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Received response to setting iCloud User Info for new guest %@: %@", &v8, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v3)
  {
    [v6 finishWithError:v3];
  }

  else
  {
    [v6 finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
}

id __60__HFPinCodeManager_addGuestPinCode_withLabel_onAccessories___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) dataStore];
  v3 = [v2 pinCodeForCodeValue:*(a1 + 40)];

  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

- (id)setUserPinCode:(id)a3 forUser:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v7;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Setting user pin code for user %@", buf, 0xCu);
  }

  if ([v6 length])
  {
    v9 = [(HFPinCodeManager *)self dataStore];
    v10 = [v9 userPINCodes];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __43__HFPinCodeManager_setUserPinCode_forUser___block_invoke;
    v31[3] = &unk_277DFCD80;
    v11 = v7;
    v32 = v11;
    v12 = [v10 na_firstKeyPassingTest:v31];

    if (v12)
    {
      v13 = [(HFPinCodeManager *)self dataStore];
      v14 = [v13 userPINCodes];
      [v14 removeObjectForKey:v12];
    }

    v15 = [objc_alloc(MEMORY[0x277CD1638]) initWithUser:v11];
    v16 = [[HFPinCode alloc] initWithLabel:v15 accessCodeValue:v6 accessoryAccessCodes:0];
    v17 = [(HFPinCodeManager *)self dataStore];
    v18 = [v17 userPINCodes];
    [v18 setValue:v16 forKey:v6];

    v19 = objc_alloc_init(MEMORY[0x277D2C900]);
    v20 = [(HFPinCodeManager *)self accessCodeManager];
    v21 = [v11 uniqueIdentifier];
    v22 = [(HFPinCodeManager *)self _modificationCompletionHandlerForFuture:v19];
    [v20 setAccessCode:v6 forUserWithUUID:v21 completion:v22];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __43__HFPinCodeManager_setUserPinCode_forUser___block_invoke_2;
    v29[3] = &unk_277DFA5C0;
    v29[4] = self;
    v30 = v6;
    v23 = [v19 flatMap:v29];

    v24 = v32;
  }

  else
  {
    v25 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_ERROR, "Pin Code Value should not be empty", buf, 2u);
    }

    v26 = MEMORY[0x277D2C900];
    v24 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v23 = [v26 futureWithError:v24];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __43__HFPinCodeManager_setUserPinCode_forUser___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 userLabel];
  v5 = [v4 user];
  v6 = [v5 uniqueIdentifier];
  v7 = [*(a1 + 32) uniqueIdentifier];
  v8 = [v6 isEqual:v7];

  return v8;
}

id __43__HFPinCodeManager_setUserPinCode_forUser___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dataStore];
  v3 = [v2 pinCodeForCodeValue:*(a1 + 40)];

  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

- (id)deleteGuestPinCodeWithItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HFPinCodeManager.m" lineNumber:693 description:{@"Invalid parameter not satisfying: %@", @"pinCodeItem"}];
  }

  v6 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Deleting guest pin code.", buf, 2u);
  }

  v7 = [(HFPinCodeManager *)self dataStore];
  v8 = [v7 guestPinCodeFromItem:v5];

  if ([v5 isUnknownGuestFromMatter])
  {
    [(HFPinCodeManager *)self _deleteUnknownGuestFromMatterPinCode:v8];
  }

  else
  {
    [(HFPinCodeManager *)self _deleteGuestPinCode:v8];
  }
  v9 = ;

  return v9;
}

- (id)_deleteUnknownGuestFromMatterPinCode:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HFPinCodeManager.m" lineNumber:710 description:{@"Invalid parameter not satisfying: %@", @"pinCode"}];
  }

  v6 = [v5 unknownMatterGuestUniqueID];

  if (v6)
  {
    v7 = [(HFPinCodeManager *)self dataStore];
    v8 = [v7 otherEcosystemGuestPINCodes];
    v9 = [v5 unknownMatterGuestUniqueID];
    [v8 removeObjectForKey:v9];

    [(HFPinCodeManager *)self _reloadObservers];
    v10 = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v5 accessoryAccessCodes];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [objc_alloc(MEMORY[0x277CD1620]) initWithAccessoryAccessCode:*(*(&v24 + 1) + 8 * i)];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    v17 = [(HFPinCodeManager *)self _submitModificationRequests:v10];
  }

  else
  {
    v18 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[HFPinCodeManager _deleteUnknownGuestFromMatterPinCode:]";
      v31 = 2112;
      v32 = v5;
      _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "(%s) Expected an unknown guest from Matter PIN Code, but got this: %@", buf, 0x16u);
    }

    v19 = MEMORY[0x277D2C900];
    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v17 = [v19 futureWithError:v10];
  }

  v20 = v17;

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_deleteGuestPinCode:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"HFPinCodeManager.m" lineNumber:735 description:{@"Invalid parameter not satisfying: %@", @"pinCode"}];
  }

  v6 = [v5 pinCodeValue];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(HFPinCodeManager *)self dataStore];
    v9 = [v8 guestPINCodes];
    v10 = [v5 pinCodeValue];
    [v9 removeObjectForKey:v10];

    [(HFPinCodeManager *)self _reloadObservers];
    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v12 = [(HFPinCodeManager *)self accessCodeManager];
    v13 = [v5 pinCodeValue];
    v14 = [(HFPinCodeManager *)self _modificationCompletionHandlerForFuture:v11];
    [v12 removeSimpleLabelAccessCode:v13 completion:v14];
  }

  else
  {
    v15 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Attempted to delete a guest PIN Code that has no value: %@", buf, 0xCu);
    }

    v16 = [(HFPinCodeManager *)self fetchFromAccessoryCache];
    v17 = MEMORY[0x277D2C900];
    v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v11 = [v17 futureWithError:v12];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)deleteUserPinCodeWithUser:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 hf_prettyDescription];
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Deleting user PIN Code for user: %@", buf, 0xCu);
  }

  v7 = [(HFPinCodeManager *)self dataStore];
  v8 = [v7 userPINCodes];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__HFPinCodeManager_deleteUserPinCodeWithUser___block_invoke;
  v19[3] = &unk_277DFCD80;
  v20 = v4;
  v9 = v4;
  v10 = [v8 na_firstKeyPassingTest:v19];

  if (v10)
  {
    v11 = [(HFPinCodeManager *)self dataStore];
    v12 = [v11 userPINCodes];
    [v12 removeObjectForKey:v10];
  }

  v13 = objc_alloc_init(MEMORY[0x277D2C900]);
  v14 = [(HFPinCodeManager *)self accessCodeManager];
  v15 = [v9 uniqueIdentifier];
  v16 = [(HFPinCodeManager *)self _modificationCompletionHandlerForFuture:v13];
  [v14 setAccessCode:0 forUserWithUUID:v15 completion:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __46__HFPinCodeManager_deleteUserPinCodeWithUser___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 userLabel];
  v5 = [v4 user];
  v6 = [v5 uniqueIdentifier];
  v7 = [*(a1 + 32) uniqueIdentifier];
  v8 = [v6 isEqual:v7];

  return v8;
}

- (id)updateGuestPinCodeWithItem:(id)a3 withLabel:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HFPinCodeManager.m" lineNumber:788 description:{@"Invalid parameter not satisfying: %@", @"label"}];
  }

  v9 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Updating guest PIN Code with new label", buf, 2u);
  }

  objc_initWeak(buf, self);
  v10 = MEMORY[0x277D2C900];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HFPinCodeManager_updateGuestPinCodeWithItem_withLabel___block_invoke;
  v16[3] = &unk_277DFCDA8;
  objc_copyWeak(&v19, buf);
  v11 = v7;
  v17 = v11;
  v12 = v8;
  v18 = v12;
  v13 = [v10 futureWithBlock:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  return v13;
}

void __57__HFPinCodeManager_updateGuestPinCodeWithItem_withLabel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained dataStore];
  v6 = [v5 guestPinCodeFromItem:*(a1 + 32)];

  v7 = objc_alloc(MEMORY[0x277CD1648]);
  v8 = [v6 pinCodeValue];
  v9 = [v7 initWithStringValue:v8];

  v10 = [objc_alloc(MEMORY[0x277CD1638]) initWithSimpleLabel:*(a1 + 40)];
  [v6 setUserLabel:v10];
  [WeakRetained _reloadObservers];
  v11 = [WeakRetained accessCodeManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HFPinCodeManager_updateGuestPinCodeWithItem_withLabel___block_invoke_2;
  v13[3] = &unk_277DF8400;
  objc_copyWeak(&v15, (a1 + 48));
  v12 = v3;
  v14 = v12;
  [v11 setUserInformation:v10 forHomeAccessCodeWithValue:v9 completion:v13];

  objc_destroyWeak(&v15);
}

void __57__HFPinCodeManager_updateGuestPinCodeWithItem_withLabel___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Received response from iCloud for updating guest PIN Code label: %@", &v8, 0xCu);
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained fetchFromAccessoryCache];

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)updatePinCodeWithItem:(id)a3 withCodeValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HFPinCodeManager.m" lineNumber:833 description:{@"Invalid parameter not satisfying: %@", @"newCodeValue"}];
  }

  v9 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Updating pin code with new code value", buf, 2u);
  }

  v10 = [v7 user];
  if (v10)
  {
    v11 = [(HFPinCodeManager *)self setUserPinCode:v8 forUser:v10];
  }

  else
  {
    v12 = [(HFPinCodeManager *)self dataStore];
    v13 = [v12 pinCodeFromItem:v7];

    v14 = [v13 userLabel];
    v11 = [(HFPinCodeManager *)self _updateGuestPinCodeWithItem:v7 withCodeValue:v8 withUserInfo:v14];
  }

  return v11;
}

- (id)updateGuestPinCodeWithItem:(id)a3 withCodeValue:(id)a4 withLabel:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HFPinCodeManager *)self dataStore];
  v12 = [v11 guestPINCodes];
  v13 = [v8 pinCodeValue];
  v14 = [v12 objectForKey:v13];

  if (!v14)
  {
    v18 = [(HFPinCodeManager *)self dataStore];
    v19 = [v18 userPINCodes];
    v20 = [v8 pinCodeValue];
    v21 = [v19 objectForKey:v20];

    v22 = HFLogForCategory(0x37uLL);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v30 = 136315138;
        v31 = "[HFPinCodeManager updateGuestPinCodeWithItem:withCodeValue:withLabel:]";
        v24 = "(%s) Expected a guest PIN Code, but found a user code instead.";
LABEL_14:
        _os_log_error_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_ERROR, v24, &v30, 0xCu);
      }
    }

    else if (v23)
    {
      v30 = 136315138;
      v31 = "[HFPinCodeManager updateGuestPinCodeWithItem:withCodeValue:withLabel:]";
      v24 = "(%s) Could not find PIN Code in data store.";
      goto LABEL_14;
    }

    v25 = [(HFPinCodeManager *)self fetchFromAccessoryCache];
    v26 = MEMORY[0x277D2C900];
    v16 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v17 = [v26 futureWithError:v16];
    goto LABEL_10;
  }

  v15 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Updating guest pin code with new code value and label", &v30, 2u);
  }

  v16 = [objc_alloc(MEMORY[0x277CD1638]) initWithSimpleLabel:v10];
  v17 = [(HFPinCodeManager *)self _updateGuestPinCodeWithItem:v8 withCodeValue:v9 withUserInfo:v16];
LABEL_10:
  v27 = v17;

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_updateGuestPinCodeWithItem:(id)a3 withCodeValue:(id)a4 withUserInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HFPinCodeManager *)self dataStore];
  v12 = [v11 pinCodeFromItem:v8];

  v13 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v9];
  v14 = [[HFPinCode alloc] initWithLabel:v10 accessCodeValue:v9 accessoryAccessCodes:0];
  v15 = [(HFPinCodeManager *)self dataStore];
  v16 = [v12 pinCodeValue];
  [v15 updateWithPinCode:v14 forOldCodeValue:v16];

  [(HFPinCodeManager *)self _reloadObservers];
  v17 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Removing current home access code ahead of replacing it with new value", buf, 2u);
  }

  v18 = objc_alloc_init(MEMORY[0x277D2C900]);
  v19 = [(HFPinCodeManager *)self accessCodeManager];
  v20 = [v12 pinCodeValue];
  v21 = [(HFPinCodeManager *)self _modificationCompletionHandlerForFuture:v18];
  [v19 removeSimpleLabelAccessCode:v20 completion:v21];

  objc_initWeak(buf, self);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __75__HFPinCodeManager__updateGuestPinCodeWithItem_withCodeValue_withUserInfo___block_invoke;
  v28[3] = &unk_277DFCE20;
  objc_copyWeak(&v33, buf);
  v22 = v10;
  v29 = v22;
  v23 = v13;
  v30 = v23;
  v24 = v12;
  v31 = v24;
  v25 = v9;
  v32 = v25;
  v26 = [v18 flatMap:v28];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);

  return v26;
}

id __75__HFPinCodeManager__updateGuestPinCodeWithItem_withCodeValue_withUserInfo___block_invoke(id *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v20 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v4 = MEMORY[0x277D2C900];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __75__HFPinCodeManager__updateGuestPinCodeWithItem_withCodeValue_withUserInfo___block_invoke_2;
  v31[3] = &unk_277DFCDD0;
  v21 = WeakRetained;
  v31[4] = WeakRetained;
  v32 = a1[4];
  v33 = a1[5];
  objc_copyWeak(&v34, a1 + 8);
  v22 = [v4 futureWithBlock:v31];
  v5 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [a1[6] accessoryAccessCodes];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CD15F8]);
        v12 = a1[5];
        v13 = [v10 accessory];
        v14 = [v11 initWithAccessCodeValue:v12 accessory:v13];

        [v5 addObject:v14];
      }

      v7 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75__HFPinCodeManager__updateGuestPinCodeWithItem_withCodeValue_withUserInfo___block_invoke_109;
  v25[3] = &unk_277DFA5C0;
  v25[4] = v21;
  v15 = v5;
  v26 = v15;
  v16 = [v22 flatMap:v25];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__HFPinCodeManager__updateGuestPinCodeWithItem_withCodeValue_withUserInfo___block_invoke_2_110;
  v23[3] = &unk_277DFCDF8;
  v23[4] = v21;
  v24 = a1[7];
  v17 = [v16 flatMap:v23];

  objc_destroyWeak(&v34);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __75__HFPinCodeManager__updateGuestPinCodeWithItem_withCodeValue_withUserInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Add new home access code", buf, 2u);
  }

  v5 = [*(a1 + 32) accessCodeManager];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__HFPinCodeManager__updateGuestPinCodeWithItem_withCodeValue_withUserInfo___block_invoke_108;
  v9[3] = &unk_277DF8400;
  objc_copyWeak(&v11, (a1 + 56));
  v8 = v3;
  v10 = v8;
  [v5 setUserInformation:v6 forHomeAccessCodeWithValue:v7 completion:v9];

  objc_destroyWeak(&v11);
}

void __75__HFPinCodeManager__updateGuestPinCodeWithItem_withCodeValue_withUserInfo___block_invoke_108(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Got response from adding home access code: %@", &v8, 0xCu);
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained fetchFromAccessoryCache];

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    [*(a1 + 32) finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
}

id __75__HFPinCodeManager__updateGuestPinCodeWithItem_withCodeValue_withUserInfo___block_invoke_2_110(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "All operations for updating PIN Code have completed: %@", &v10, 0xCu);
  }

  [*(a1 + 32) _reloadObservers];
  v5 = [*(a1 + 32) dataStore];
  v6 = [v5 pinCodeForCodeValue:*(a1 + 40)];

  v7 = [MEMORY[0x277D2C900] futureWithResult:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_modificationCompletionHandlerForFuture:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HFPinCodeManager__modificationCompletionHandlerForFuture___block_invoke;
  aBlock[3] = &unk_277DFCCA0;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __60__HFPinCodeManager__modificationCompletionHandlerForFuture___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v44 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v58 = v5;
    v59 = 2112;
    v60 = v6;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Received response to access code modification requests: %@ %@", buf, 0x16u);
  }

  v46 = [MEMORY[0x277CBEB18] array];
  v45 = v6;
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v43 = v9;
  v47 = [MEMORY[0x277CBEB18] array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v10)
  {
    v11 = v10;
    v49 = *v51;
    do
    {
      v12 = 0;
      do
      {
        if (*v51 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v50 + 1) + 8 * v12);
        v14 = [v13 accessoryAccessCode];
        v15 = [v14 accessCodeValue];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = [v13 accessCodeValue];
        }

        v18 = v17;

        v19 = [WeakRetained dataStore];
        v20 = [v18 stringValue];
        v21 = [v19 pinCodeForCodeValue:v20];

        v22 = [v13 error];

        if (v22)
        {
          v23 = WeakRetained;
          v24 = [v13 error];
          v25 = HFLogForCategory(0x37uLL);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v13 accessory];
            *buf = 138412546;
            v58 = v24;
            v59 = 2112;
            v60 = v26;
            _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_DEFAULT, "Access Code Modification Response has an error: %@ accessory: %@", buf, 0x16u);
          }

          v27 = [v13 accessory];
          v28 = [v27 supportsCHIP];

          v29 = [v13 operationType];
          if (v29 >= 2)
          {
            if (v29 != 2 || [v24 code]!= 2606)
            {
LABEL_29:
              [v47 addObject:v24];
              objc_setAssociatedObject(v24, "HFAssociatedPinCodeKey", v21, 0x301);
              v33 = HFLogForCategory(0x37uLL);
              WeakRetained = v23;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v58 = v21;
                v59 = 2112;
                v60 = v24;
                _os_log_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEFAULT, "Setting PinCode (%@) on error (%@)", buf, 0x16u);
              }

LABEL_32:
              goto LABEL_33;
            }
          }

          else if ((v28 & 1) != 0 || [v24 code]!= 2602)
          {
            goto LABEL_29;
          }

          v30 = HFLogForCategory(0x37uLL);
          WeakRetained = v23;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v13 operationType];
            *buf = 138412546;
            v58 = v24;
            v59 = 2048;
            v60 = v31;
            _os_log_impl(&dword_20D9BF000, v30, OS_LOG_TYPE_DEFAULT, "Ignoring Access Code Modification Response error: %@ for operation type %ld", buf, 0x16u);
          }
        }

        if (v21)
        {
          [v46 addObject:v21];
          v32 = [v13 operationType];
          if (v32 >= 2)
          {
            if (v32 == 2)
            {
              [v21 removeAccessoryAccessCode:v14];
            }
          }

          else
          {
            [v21 addAccessoryAccessCode:v14];
          }
        }

        else if ([v13 operationType]!= 2)
        {
          v24 = HFLogForCategory(0x37uLL);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v58 = v13;
            _os_log_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEFAULT, "Failed to find existing PIN Code while processing update response %@", buf, 0xCu);
          }

          goto LABEL_32;
        }

LABEL_33:

        ++v12;
      }

      while (v11 != v12);
      v34 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      v11 = v34;
    }

    while (v34);
  }

  [WeakRetained _reloadObservers];
  if ([v47 count])
  {
    v35 = [obj count];
    v36 = v46;
    if (v35 == [v47 count])
    {
      v37 = [v47 firstObject];
      v38 = v43;
    }

    else
    {
      v40 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277CCA578];
      v55 = v47;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v37 = [v40 errorWithDomain:@"HFErrorDomain" code:80 userInfo:v38];
    }

    v39 = v45;
    if (v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v39 = v45;
    v36 = v46;
    v37 = v43;
    if (v43)
    {
LABEL_48:
      v41 = [WeakRetained fetchFromAccessoryCache];
      [*(v44 + 32) finishWithError:v37];
      goto LABEL_49;
    }
  }

  [*(v44 + 32) finishWithResult:v36];
LABEL_49:

  v42 = *MEMORY[0x277D85DE8];
}

- (id)_submitModificationRequests:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = [v4 count];
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Called _submitModificationRequests with %lu requests", &v11, 0xCu);
  }

  if ([v4 count])
  {
    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    v7 = [(HFPinCodeManager *)self accessCodeManager];
    v8 = [(HFPinCodeManager *)self _modificationCompletionHandlerForFuture:v6];
    [v7 submitAccessCodeModificationRequests:v4 completion:v8];
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)setPinCodeWithItem:(id)a3 enabled:(BOOL)a4 onAccessories:(id)a5
{
  v6 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = v6;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Setting pin code enabled (%{BOOL}d) on accessories: %@", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  v11 = MEMORY[0x277D2C900];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__HFPinCodeManager_setPinCodeWithItem_enabled_onAccessories___block_invoke;
  v17[3] = &unk_277DFCE98;
  objc_copyWeak(&v20, &buf);
  v12 = v8;
  v18 = v12;
  v21 = v6;
  v13 = v9;
  v19 = v13;
  v14 = [v11 futureWithBlock:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&buf);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __61__HFPinCodeManager_setPinCodeWithItem_enabled_onAccessories___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained dataStore];
  v6 = [v5 pinCodeFromItem:*(a1 + 32)];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = v7;
    if (*(a1 + 56) != 1)
    {
      v11 = v7;
      v37 = WeakRetained;
      v39 = v3;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v36 = a1;
      obj = *(a1 + 40);
      v23 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v47;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v47 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v46 + 1) + 8 * i);
            v28 = [v6 accessoryAccessCodes];
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __61__HFPinCodeManager_setPinCodeWithItem_enabled_onAccessories___block_invoke_112;
            v45[3] = &unk_277DFCE48;
            v45[4] = v27;
            v29 = [v28 na_firstObjectPassingTest:v45];

            v30 = [objc_alloc(MEMORY[0x277CD1620]) initWithAccessoryAccessCode:v29];
            [v11 addObject:v30];
          }

          v24 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
        }

        while (v24);
      }

      v15 = v36;
      [v6 removeAccessories:*(v36 + 40)];
      WeakRetained = v37;
      v3 = v39;
      goto LABEL_23;
    }

    v9 = [v6 pinCodeValue];
    v10 = [v9 length];

    if (v10)
    {
      v38 = v3;
      v11 = v8;
      v12 = objc_alloc(MEMORY[0x277CD1648]);
      v13 = [v6 pinCodeValue];
      v14 = [v12 initWithStringValue:v13];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v15 = a1;
      v16 = *(a1 + 40);
      v17 = [v16 countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v51;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v51 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [objc_alloc(MEMORY[0x277CD15F8]) initWithAccessCodeValue:v14 accessory:*(*(&v50 + 1) + 8 * j)];
            [v11 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v50 objects:v56 count:16];
        }

        while (v18);
      }

      [v6 addAccessories:*(v15 + 40)];
      v3 = v38;
LABEL_23:
      v8 = v11;
      v31 = [WeakRetained _submitModificationRequests:v11];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __61__HFPinCodeManager_setPinCodeWithItem_enabled_onAccessories___block_invoke_2;
      v41[3] = &unk_277DFCE70;
      v41[4] = WeakRetained;
      v42 = *(v15 + 32);
      v43 = v3;
      v44 = v6;
      v32 = [v31 addCompletionBlock:v41];

      goto LABEL_24;
    }

    v34 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_ERROR, "Pin Code Value should not be empty", buf, 2u);
    }

    v35 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    [v3 finishWithError:v35];
  }

  else
  {
    v22 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Couldn't find Pin Code from item", buf, 2u);
    }

    v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    [v3 finishWithError:v8];
  }

LABEL_24:

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __61__HFPinCodeManager_setPinCodeWithItem_enabled_onAccessories___block_invoke_112(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __61__HFPinCodeManager_setPinCodeWithItem_enabled_onAccessories___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [*(a1 + 32) home];
  [v4 na_safeSetObject:v5 forKey:@"home"];

  [v4 na_safeSetObject:&unk_2825242A0 forKey:@"operationType"];
  [v4 na_safeSetObject:*(a1 + 40) forKey:@"pinCodeItem"];
  [v4 na_safeSetObject:v7 forKey:@"error"];
  [HFAnalytics sendEvent:26 withData:v4];
  v6 = *(a1 + 48);
  if (v7)
  {
    [v6 finishWithError:v7];
  }

  else
  {
    [v6 finishWithResult:*(a1 + 56)];
  }
}

- (id)enablePinCodesForAllUsersOnNewAccessory:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v26 = self;
  v6 = [(HFPinCodeManager *)self dataStore];
  v7 = [v6 userPINCodes];
  v8 = [v7 allValues];

  v9 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v34 = [v8 count];
    v35 = 2112;
    v36 = v4;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Enabling pin codes for all (%lu) users on accessory: %@", buf, 0x16u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [v15 accessories];
        v17 = [v16 containsObject:v4];

        if (v17)
        {
          v18 = HFLogForCategory(0x37uLL);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Skipping user that is already enabled on accessory", buf, 2u);
          }
        }

        else
        {
          v19 = objc_alloc(MEMORY[0x277CD1648]);
          v20 = [v15 pinCodeValue];
          v18 = [v19 initWithStringValue:v20];

          v21 = [objc_alloc(MEMORY[0x277CD15F8]) initWithAccessCodeValue:v18 accessory:v4];
          [v5 addObject:v21];

          v31 = v4;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          [v15 addAccessories:v22];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v12);
  }

  v23 = [(HFPinCodeManager *)v26 _submitModificationRequests:v5];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)enablePinCodesForNewAccessory:(id)a3 forGuestItems:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Enabling pin codes on accessory for provided guests: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10 = MEMORY[0x277D2C900];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__HFPinCodeManager_enablePinCodesForNewAccessory_forGuestItems___block_invoke;
  v16[3] = &unk_277DFCEE8;
  objc_copyWeak(v19, buf);
  v11 = v8;
  v17 = v11;
  v19[1] = a2;
  v12 = v7;
  v18 = v12;
  v13 = [v10 futureWithBlock:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __64__HFPinCodeManager_enablePinCodesForNewAccessory_forGuestItems___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v22 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__HFPinCodeManager_enablePinCodesForNewAccessory_forGuestItems___block_invoke_2;
  v27[3] = &unk_277DFCEC0;
  v21 = WeakRetained;
  v27[4] = WeakRetained;
  v5 = [v4 na_map:v27];
  v6 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 pinCodeValue];
        if ([v13 length])
        {
          v14 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v13];
          v15 = [objc_alloc(MEMORY[0x277CD15F8]) initWithAccessCodeValue:v14 accessory:*(a1 + 40)];
          [v6 addObject:v15];

          v28 = *(a1 + 40);
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
          [v12 addAccessories:v16];
        }

        else
        {
          v14 = HFLogForCategory(0x37uLL);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_11;
          }

          v16 = NSStringFromSelector(*(a1 + 56));
          *buf = 138412546;
          v30 = v16;
          v31 = 2112;
          v32 = v12;
          _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "[%@]: Skipping pin code that does not have a value %@", buf, 0x16u);
        }

LABEL_11:
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v9);
  }

  v17 = [v21 _submitModificationRequests:v6];
  v18 = [v22 completionHandlerAdapter];
  v19 = [v17 addCompletionBlock:v18];

  v20 = *MEMORY[0x277D85DE8];
}

id __64__HFPinCodeManager_enablePinCodesForNewAccessory_forGuestItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dataStore];
  v5 = [v4 guestPinCodeFromItem:v3];

  return v5;
}

- (id)generateNewCodeValue
{
  v3 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Generating a new unique Pin Code Value", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [(HFPinCodeManager *)self constraintsFuture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HFPinCodeManager_generateNewCodeValue__block_invoke;
  v7[3] = &unk_277DF52E0;
  objc_copyWeak(&v8, buf);
  v5 = [v4 flatMap:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(buf);

  return v5;
}

id __40__HFPinCodeManager_generateNewCodeValue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained dataStore];

  if (!v5)
  {
    v6 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Pin Code data store is nil.", v19, 2u);
    }
  }

  v7 = [WeakRetained dataStore];
  v8 = [v7 userPINCodes];
  v9 = [v8 allKeys];
  v10 = [WeakRetained dataStore];
  v11 = [v10 guestPINCodes];
  v12 = [v11 allKeys];
  v13 = [v9 arrayByAddingObjectsFromArray:v12];

  v14 = [MEMORY[0x277CD1610] generateAccessCodeValueFromConstraints:v3 existingAccessCodes:v13];

  v15 = MEMORY[0x277D2C900];
  v16 = [v14 stringValue];
  v17 = [v15 futureWithResult:v16];

  return v17;
}

- (id)checkForValidationErrorsWithPINCodeValue:(id)a3 originalPINCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Validating PIN Code value", buf, 2u);
  }

  objc_initWeak(buf, self);
  v9 = [(HFPinCodeManager *)self constraintsFuture];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__HFPinCodeManager_checkForValidationErrorsWithPINCodeValue_originalPINCode___block_invoke;
  v14[3] = &unk_277DFCF38;
  objc_copyWeak(&v17, buf);
  v10 = v6;
  v15 = v10;
  v11 = v7;
  v16 = v11;
  v12 = [v9 flatMap:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  return v12;
}

id __77__HFPinCodeManager_checkForValidationErrorsWithPINCodeValue_originalPINCode___block_invoke(id *a1, void *a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v41 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = [WeakRetained dataStore];

  if (!v4)
  {
    v5 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v48 = 0;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Pin Code data store is nil.", v48, 2u);
    }
  }

  v6 = [WeakRetained dataStore];
  v7 = [v6 userPINCodes];
  v8 = [v7 allKeys];
  v9 = [WeakRetained dataStore];
  v10 = [v9 guestPINCodes];
  v11 = [v10 allKeys];
  v12 = [v8 arrayByAddingObjectsFromArray:v11];

  *v48 = 0;
  v49 = v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __77__HFPinCodeManager_checkForValidationErrorsWithPINCodeValue_originalPINCode___block_invoke_118;
  v43[3] = &unk_277DFCF10;
  v43[4] = v48;
  v43[5] = &v44;
  [WeakRetained _fetchPinCodeConstraints:v43];
  v13 = _HFLocalizedStringWithDefaultValue(@"HFPinCodeEditorErrorChangeButtonTitle", @"HFPinCodeEditorErrorChangeButtonTitle", 1);
  if (*(v49 + 3) >= 1)
  {
    v14 = [a1[4] length];
    v21 = *(v49 + 3);
    if (v14 < v21)
    {
      v22 = v45[3];
LABEL_11:
      v24 = HFLocalizedStringWithFormat(@"HFPinCodeEditorCodeLengthErrorMessage", @"%ld %ld", v15, v16, v17, v18, v19, v20, v21);
      v25 = 0;
      v26 = 74;
LABEL_17:
      v54 = @"HFErrorHandlerOptionCancelButtonTextKey";
      v55[0] = v13;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      v33 = [v32 mutableCopy];

      if (v25)
      {
        [v33 setObject:v25 forKey:@"HFErrorHandlerOptionRetryButtonText"];
      }

      if (v24)
      {
        [v33 setObject:v24 forKey:@"HFErrorUserInfoOptionDescriptionKey"];
      }

      v52[0] = @"HFErrorUserInfoOptionsKey";
      v52[1] = @"HFErrorUserInfoOperationKey";
      v53[0] = v33;
      v53[1] = @"HFOperationChangePINCodeValue";
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
      v35 = MEMORY[0x277D2C900];
      v36 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HFErrorDomain" code:v26 userInfo:v34];
      v37 = [v35 futureWithError:v36];

      goto LABEL_22;
    }
  }

  if (v45[3] >= 1)
  {
    v23 = [a1[4] length];
    if (v23 > v45[3])
    {
      v21 = *(v49 + 3);
      goto LABEL_11;
    }
  }

  if (([a1[5] isEqualToString:a1[4]] & 1) == 0)
  {
    v27 = MEMORY[0x277CD1610];
    v28 = a1[4];
    v29 = [MEMORY[0x277CBEB98] setWithArray:v12];
    v30 = [v27 doesAccessCode:v28 conflictWithExistingAccessCodes:v29];

    if (v30)
    {
      v24 = 0;
      v25 = 0;
      v26 = 75;
      goto LABEL_17;
    }
  }

  if ([MEMORY[0x277CD1610] isWeakAccessCode:a1[4]])
  {
    v31 = _HFLocalizedStringWithDefaultValue(@"HFPinCodeEditorErrorPickNewPINButtonTitle", @"HFPinCodeEditorErrorPickNewPINButtonTitle", 1);

    v25 = _HFLocalizedStringWithDefaultValue(@"HFPinCodeEditorErrorContinueButtonTitle", @"HFPinCodeEditorErrorContinueButtonTitle", 1);
    v24 = 0;
    v26 = 77;
    v13 = v31;
    goto LABEL_17;
  }

  v40 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_DEFAULT, "Validating PIN Code value succeeded with no problems!", buf, 2u);
  }

  v37 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_22:

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(v48, 8);

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

uint64_t __77__HFPinCodeManager_checkForValidationErrorsWithPINCodeValue_originalPINCode___block_invoke_118(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

- (id)restoreFullAccessForUserWithItem:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Restoring full access for user pin code %@", buf, 0xCu);
  }

  objc_opt_class();
  v6 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(HFPinCodeManager *)self dataStore];
    v10 = [v9 pinCodeFromItem:v8];

    v11 = [v10 userLabel];
    v12 = [v11 user];

    if (!v12)
    {
      NSLog(&cfstr_RestoreFullAcc.isa);
    }

    v13 = [(HFPinCodeManager *)self accessCodeManager];
    v14 = [v13 accessoriesSupportingAccessCodes];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __53__HFPinCodeManager_restoreFullAccessForUserWithItem___block_invoke;
    v23[3] = &unk_277DF3888;
    v24 = v10;
    v15 = v10;
    v16 = [v14 na_filter:v23];

    v17 = [(HFPinCodeManager *)self setPinCodeWithItem:v8 enabled:1 onAccessories:v16];
  }

  else
  {
    v18 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      *buf = 138412290;
      v26 = v22;
      _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "Restore Full Access was called with an unsupported item type: %@", buf, 0xCu);
    }

    v19 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v17 = [v19 futureWithError:v15];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __53__HFPinCodeManager_restoreFullAccessForUserWithItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessories];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

- (id)revokeAccessForAllRemovedUsers
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to remove all deleted users", buf, 2u);
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(HFPinCodeManager *)self dataStore];
  v6 = [v5 removedUserPINCodes];
  v7 = [v6 allValues];

  v8 = v7;
  v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v22 + 1) + 8 * i) userLabel];
        v14 = [v13 removedUserInfo];
        v15 = [v14 userUUID];

        v16 = objc_alloc_init(MEMORY[0x277D2C900]);
        v17 = [(HFPinCodeManager *)self accessCodeManager];
        v18 = [(HFPinCodeManager *)self _modificationCompletionHandlerForFuture:v16];
        [v17 setAccessCode:0 forUserWithUUID:v15 completion:v18];

        [v4 addObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v19 = [MEMORY[0x277D2C900] combineAllFutures:v4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)hasValidConstraints
{
  v3 = [(HFPinCodeManager *)self constraintsFuture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HFPinCodeManager_hasValidConstraints__block_invoke;
  v7[3] = &unk_277DF5038;
  v7[4] = self;
  v4 = [v3 recover:v7];
  v5 = [v4 flatMap:&__block_literal_global_145_2];

  return v5;
}

id __39__HFPinCodeManager_hasValidConstraints__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[HFExecutionEnvironment isHomeUIService])
  {
    v4 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  else
  {
    v5 = [*(a1 + 32) _fetchAccessoryConstraints];
    v4 = [v5 recover:&__block_literal_global_143_0];
  }

  return v4;
}

uint64_t __39__HFPinCodeManager_hasValidConstraints__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = MEMORY[0x277CBEC28];
  }

  else
  {
    v5 = MEMORY[0x277CBEC38];
  }

  return [v2 futureWithResult:v5];
}

- (void)_fetchPinCodeConstraints:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CD1610];
  v6 = [(HFPinCodeManager *)self constraints];
  v7 = [v5 greatestLowerBoundForAccessCodeLengthFromConstraints:v6];

  v8 = MEMORY[0x277CD1610];
  v9 = [(HFPinCodeManager *)self constraints];
  v10 = [v8 leastUpperBoundForAccessCodeLengthFromConstraints:v9];

  if (v7 < 0 || v10 <= 0)
  {
    v11 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [(HFPinCodeManager *)self constraints];
      v14 = 134218498;
      v15 = v7;
      v16 = 2048;
      v17 = v10;
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Fetching constraints Pin Code, we got a min or max length of zero. min: %ld max: %ld constraints: %@", &v14, 0x20u);
    }
  }

  v4[2](v4, v7, v10);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchPinCodeConstraints:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HFPinCodeManager *)self constraintsFuture];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__HFPinCodeManager_fetchPinCodeConstraints___block_invoke;
  v12[3] = &unk_277DFCF80;
  objc_copyWeak(&v14, &location);
  v6 = v4;
  v13 = v6;
  v7 = [v5 addSuccessBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HFPinCodeManager_fetchPinCodeConstraints___block_invoke_2;
  v10[3] = &unk_277DFCFA8;
  v8 = v6;
  v11 = v8;
  v9 = [v7 addFailureBlock:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __44__HFPinCodeManager_fetchPinCodeConstraints___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchPinCodeConstraints:*(a1 + 32)];
}

uint64_t __44__HFPinCodeManager_fetchPinCodeConstraints___block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_WeShouldNotBeT.isa);
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFPinCodeManager *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFPinCodeManager *)self observers];
  [v5 removeObject:v4];
}

- (void)_reloadObservers
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HFPinCodeManager *)self observers];
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Telling observers to reload %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HFPinCodeManager *)self observers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 pinCodeManagerDidUpdate:self pinCodes:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeManager:(id)a3 didAddAccessoryAccessCodes:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v28 = [v5 count];
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Received didAddAccessoryAccessCodes notification with %lu new PIN codes", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 accessCodeValue];
        v14 = [v13 stringValue];

        v15 = [(HFPinCodeManager *)self dataStore];
        v16 = [v15 pinCodeForCodeValue:v14];

        if (v16)
        {
          [v16 addAccessoryAccessCode:v12];
        }

        else
        {
          v17 = HFLogForCategory(0x37uLL);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Adding new guest PIN Code because we could not find an existing PIN Code for new accessory access code.", buf, 2u);
          }

          v18 = [[HFPinCode alloc] initWithAccessoryAccessCode:v12];
          v19 = [(HFPinCodeManager *)self dataStore];
          v20 = [v19 guestPINCodes];
          [v20 setValue:v18 forKey:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  [(HFPinCodeManager *)self _reloadObservers];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeManager:(id)a3 didRemoveAccessoryAccessCodes:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = [v5 count];
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Received didRemoveAccessoryAccessCodes notification with %lu PIN codes", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 accessCodeValue];
        v14 = [v13 stringValue];

        v15 = [(HFPinCodeManager *)self dataStore];
        v16 = [v15 pinCodeForCodeValue:v14];

        [v16 removeAccessoryAccessCode:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  [(HFPinCodeManager *)self _reloadObservers];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeManager:(id)a3 didAddHomeAccessCodes:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = [v5 count];
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Received didAddHomeAccessCodes notification with %lu new PIN codes", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [(HFPinCodeManager *)self dataStore];
        [(HFPinCodeManager *)self _addNewHomeAccessCode:v12 toStore:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(HFPinCodeManager *)self _reloadObservers];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeManager:(id)a3 didUpdateHomeAccessCodes:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = [v5 count];
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Received didUpdateHomeAccessCodes notification with %lu PIN codes", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v11 accessCodeValue];
        v13 = [v12 stringValue];

        v14 = [v11 userInformation];
        v15 = [v14 user];

        v16 = [(HFPinCodeManager *)self dataStore];
        v17 = v16;
        if (v15)
        {
          v18 = [v16 userPINCodes];
          v19 = [v18 allValues];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __63__HFPinCodeManager_accessCodeManager_didUpdateHomeAccessCodes___block_invoke;
          v29[3] = &unk_277DFCD58;
          v29[4] = v11;
          v20 = [v19 na_firstObjectPassingTest:v29];

          if (v20)
          {
            v21 = [v20 copyWithNewPinCodeValue:v13];
            v22 = [(HFPinCodeManager *)self dataStore];
            v23 = [v20 pinCodeValue];
            [v22 updateWithPinCode:v21 forOldCodeValue:v23];
          }
        }

        else
        {
          v24 = [v16 guestPINCodes];
          v25 = [v24 objectForKey:v13];

          v26 = [v11 userInformation];
          [v25 setUserLabel:v26];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  [(HFPinCodeManager *)self _reloadObservers];
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HFPinCodeManager_accessCodeManager_didUpdateHomeAccessCodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userLabel];
  v4 = [v3 user];
  v5 = [v4 uniqueIdentifier];
  v6 = [*(a1 + 32) userInformation];
  v7 = [v6 user];
  v8 = [v7 uniqueIdentifier];
  v9 = [v5 isEqual:v8];

  return v9;
}

- (void)accessCodeManager:(id)a3 didRemoveHomeAccessCodes:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = [v5 count];
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Received didRemoveHomeAccessCodes notification with %lu PIN codes", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v21 + 1) + 8 * v11) accessCodeValue];
        v13 = [v12 stringValue];

        if (v13)
        {
          v14 = [(HFPinCodeManager *)self dataStore];
          v15 = [v14 userPINCodes];
          [v15 removeObjectForKey:v13];

          v16 = [(HFPinCodeManager *)self dataStore];
          v17 = [v16 guestPINCodes];
          [v17 removeObjectForKey:v13];

          v18 = [(HFPinCodeManager *)self dataStore];
          v19 = [v18 removedUserPINCodes];
          [v19 removeObjectForKey:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  [(HFPinCodeManager *)self _reloadObservers];
  v20 = *MEMORY[0x277D85DE8];
}

+ (id)asciiStringForLocalizedPINString:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v5, "length")}];
  if ([v5 length])
  {
    v7 = 0;
    do
    {
      v8 = u_charDigitValue([v5 characterAtIndex:v7]);
      if (v8 == -1)
      {

        if (a4)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"HFErrorDomain" code:82 userInfo:0];
          *a4 = v6 = 0;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v9 = [MEMORY[0x277CCABB0] numberWithInt:v8];
        v10 = [v9 stringValue];
        [v6 appendString:v10];
      }

      ++v7;
    }

    while (v7 < [v5 length]);
  }

  return v6;
}

@end