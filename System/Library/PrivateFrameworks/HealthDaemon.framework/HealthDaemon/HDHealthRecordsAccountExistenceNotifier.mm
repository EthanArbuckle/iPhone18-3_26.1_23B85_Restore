@interface HDHealthRecordsAccountExistenceNotifier
- (BOOL)isCurrentCountryCodeSupportingCHR;
- (HDHealthRecordsAccountExistenceNotifier)init;
- (HDHealthRecordsAccountExistenceNotifier)initWithProfile:(id)profile;
- (HDProfile)profile;
- (const)_updateAndReturnState;
- (int64_t)ontologyEnablingHealthRecordsAccountState;
- (void)profileDidBecomeReady:(id)ready;
- (void)setUnitTesting_profileReadyCompleteHandler:(id)handler;
- (void)unitTesting_setOntologyEnablingHealthRecordsAccountExists:(BOOL)exists;
@end

@implementation HDHealthRecordsAccountExistenceNotifier

- (HDHealthRecordsAccountExistenceNotifier)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHealthRecordsAccountExistenceNotifier)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDHealthRecordsAccountExistenceNotifier;
  v5 = [(HDHealthRecordsAccountExistenceNotifier *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = [v7 initWithName:@"HDHealthRecordsAccountExistenceObservers" loggingCategory:*MEMORY[0x277CCC2C0]];
    observers = v6->_observers;
    v6->_observers = v8;

    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_state = 0;
    v6->_testOverrideState = 0;
    v6->_isProfileReady = 0;
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (int64_t)ontologyEnablingHealthRecordsAccountState
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  if (state)
  {
    return state;
  }

  return [(HDHealthRecordsAccountExistenceNotifier *)self _updateAndReturnState];
}

- (const)_updateAndReturnState
{
  selfCopy = self;
  v22 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_assert_not_owner(self + 6);
    os_unfair_lock_lock(&selfCopy[6]);
    os_unfair_lock_opaque_low = LOBYTE(selfCopy[12]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(&selfCopy[6]);
    if (os_unfair_lock_opaque_low == 1)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      WeakRetained = objc_loadWeakRetained(&selfCopy[14]);
      database = [WeakRetained database];
      v5 = +[HDDatabaseTransactionContext highPriorityContext];
      copyForReadingProtectedData = [v5 copyForReadingProtectedData];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64__HDHealthRecordsAccountExistenceNotifier__queryForAccountState__block_invoke;
      v12[3] = &unk_278614110;
      v12[4] = selfCopy;
      v12[5] = &v14;
      v13 = 0;
      v7 = [database performTransactionWithContext:copyForReadingProtectedData error:&v13 block:v12 inaccessibilityHandler:0];
      v8 = v13;

      if ((v7 & 1) == 0 && (HKIsUnitTesting() & 1) == 0)
      {
        _HKInitializeLogging();
        v9 = *MEMORY[0x277CCC2C0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v19 = selfCopy;
          v20 = 2114;
          v21 = v8;
          _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to determine if profile has health records accounts: %{public}@", buf, 0x16u);
        }
      }

      selfCopy = v15[3];
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      selfCopy = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)isCurrentCountryCodeSupportingCHR
{
  profile = [(HDHealthRecordsAccountExistenceNotifier *)self profile];
  daemon = [profile daemon];
  ontologyConfigurationProvider = [daemon ontologyConfigurationProvider];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [ontologyConfigurationProvider isCountrySupported:currentLocale];

  return v6;
}

- (void)unitTesting_setOntologyEnablingHealthRecordsAccountExists:(BOOL)exists
{
  if (exists)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  os_unfair_lock_lock(&self->_lock);
  self->_testOverrideState = v4;
  os_unfair_lock_unlock(&self->_lock);

  [(HDHealthRecordsAccountExistenceNotifier *)self _updateAndReturnState];
}

- (void)setUnitTesting_profileReadyCompleteHandler:(id)handler
{
  unitTesting_profileReadyCompleteHandler = handler;
  os_unfair_lock_lock(&self->_lock);
  if (self->_isProfileReady)
  {
    unitTesting_profileReadyCompleteHandler[2](unitTesting_profileReadyCompleteHandler, self);
  }

  else
  {
    v5 = [unitTesting_profileReadyCompleteHandler copy];

    unitTesting_profileReadyCompleteHandler = self->_unitTesting_profileReadyCompleteHandler;
    self->_unitTesting_profileReadyCompleteHandler = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained profileExtensionsConformingToProtocol:&unk_283D71148];
  firstObject = [v5 firstObject];
  objc_storeWeak(&self->_healthRecordsProfileExtension, firstObject);

  v7 = objc_loadWeakRetained(&self->_healthRecordsProfileExtension);
  [v7 addAccountEventObserver:self];

  if (self)
  {
    os_unfair_lock_lock(&self->_lock);
    self->_isProfileReady = 1;
    os_unfair_lock_unlock(&self->_lock);
    [(HDHealthRecordsAccountExistenceNotifier *)self _updateAndReturnState];
    os_unfair_lock_lock(&self->_lock);
    v10 = _Block_copy(self->_unitTesting_profileReadyCompleteHandler);
    unitTesting_profileReadyCompleteHandler = self->_unitTesting_profileReadyCompleteHandler;
    self->_unitTesting_profileReadyCompleteHandler = 0;

    os_unfair_lock_unlock(&self->_lock);
    v9 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, self);
      v9 = v10;
    }
  }

  else
  {

    [(HDHealthRecordsAccountExistenceNotifier *)0 _updateAndReturnState];
  }
}

BOOL __64__HDHealthRecordsAccountExistenceNotifier__queryForAccountState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  os_unfair_lock_lock(v5 + 6);
  v7 = *(a1 + 32);
  v8 = v6;
  if (v7)
  {
    os_unfair_lock_assert_owner((v7 + 24));
    if (*(v7 + 40))
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v7;
        _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ lookup state: returning unit test override value", buf, 0xCu);
      }

      v10 = *(v7 + 40);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((v7 + 8));
      v12 = WeakRetained;
      if (WeakRetained)
      {
        v34 = 0;
        v13 = [WeakRetained hasGatewayBackedAccountsWithTransaction:v8 error:&v34];
        v14 = v34;
        if (v13 == 1)
        {
          _HKInitializeLogging();
          v21 = *MEMORY[0x277CCC2C0];
          v10 = 2;
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v7;
            v10 = 2;
            _os_log_debug_impl(&dword_228986000, v21, OS_LOG_TYPE_DEBUG, "%{public}@ lookup state: returning accounts exist since there are gateway backed accounts", buf, 0xCu);
          }

          v17 = v14;
        }

        else
        {
          if (!v13)
          {
            _HKInitializeLogging();
            v15 = *MEMORY[0x277CCC2C0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = v7;
              *&buf[12] = 2114;
              *&buf[14] = v14;
              _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@ lookup state: error checking for gateway backed accounts, skipping to issuer backed accounts lookup. Error: %{public}@", buf, 0x16u);
            }
          }

          v33 = v14;
          v16 = [v12 hasIssuerBackedAccountsWithTransaction:v8 error:&v33];
          v17 = v33;

          if (v16 == 2)
          {
            _HKInitializeLogging();
            v22 = *MEMORY[0x277CCC2C0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v7;
              _os_log_debug_impl(&dword_228986000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ lookup state: returning no accounts since there are no issuer backed accounts", buf, 0xCu);
            }

            v10 = 1;
          }

          else if (v16)
          {
            v23 = [v7 isCurrentCountryCodeSupportingCHR];
            _HKInitializeLogging();
            v24 = *MEMORY[0x277CCC2C0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
            {
              v31 = v24;
              v32 = HKStringFromBool();
              *buf = 138543618;
              *&buf[4] = v7;
              *&buf[12] = 2114;
              *&buf[14] = v32;
              _os_log_debug_impl(&dword_228986000, v31, OS_LOG_TYPE_DEBUG, "%{public}@ lookup state: there are issuer backed accounts, locale is supported: %{public}@", buf, 0x16u);
            }

            if (v23)
            {
              v10 = 2;
            }

            else
            {
              v10 = 1;
            }
          }

          else
          {
            _HKInitializeLogging();
            v18 = *MEMORY[0x277CCC2C0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = v7;
              *&buf[12] = 2114;
              *&buf[14] = v17;
              _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@ lookup state: returning unknown since there was an error checking issuer backed accounts: %{public}@", buf, 0x16u);
            }

            v17 = v17;
            if (v17)
            {
              if (a3)
              {
                v19 = v17;
                *a3 = v17;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v10 = 0;
          }
        }
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"nil HDHealthRecordsProfileExtension"];
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC2C0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v7;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@ lookup state: returning unknown since there is no CHR profile extension", buf, 0xCu);
        }

        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v10;
  v25 = *(a1 + 32);
  if (v25)
  {
    v26 = *(*(*(a1 + 40) + 8) + 24);
    os_unfair_lock_assert_owner((v25 + 24));
    v27 = *(v25 + 32);
    *(v25 + 32) = v26;
    if ((v26 == 2) == (v27 != 2))
    {
      v28 = *(v25 + 16);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __92__HDHealthRecordsAccountExistenceNotifier__lock_updateStateAndNotifyIfRequiredWithNewState___block_invoke;
      v36 = &unk_278619178;
      v37 = v25;
      v38 = v26 == 2;
      [v28 notifyObservers:buf];
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 24));
  result = *(*(*(a1 + 40) + 8) + 24) != 0;
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end