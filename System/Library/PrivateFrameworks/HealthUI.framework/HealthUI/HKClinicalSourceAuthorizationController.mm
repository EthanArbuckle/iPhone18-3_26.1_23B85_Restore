@interface HKClinicalSourceAuthorizationController
- (BOOL)allTypesEnabled;
- (BOOL)anyTypeEnabled;
- (BOOL)anyTypeRequested;
- (BOOL)isTypeEnabled:(id)a3;
- (HKClinicalSourceAuthorizationController)initWithHealthStore:(id)a3 healthRecordsStore:(id)a4 source:(id)a5 typesRequestedForReading:(id)a6;
- (NSString)titleText;
- (UIImage)iconImage;
- (id)_authorizationModesWithMode:(int64_t)a3 types:(id)a4;
- (id)_authorizationStatusesWithTypes:(id)a3;
- (id)_orderTypes:(id)a3;
- (int64_t)_authorizationStatusWithType:(id)a3;
- (void)_commitModeConfirmationAlertRegistrationShouldDisplay:(BOOL)a3;
- (void)_didReloadWithAuthorizationRecords:(id)a3 orError:(id)a4 completion:(id)a5;
- (void)_reloadWithCompletion:(id)a3;
- (void)_setAuthorizationStatuses:(id)a3 modes:(id)a4 shouldUpdateAnchor:(BOOL)a5 completion:(id)a6;
- (void)_updateDisplayReadAuthorizationAnchorDateIfNeededForCommittingModes:(id)a3;
- (void)_updateReminderRegistrationIfNeededForCommittingModes:(id)a3 anyTypeEnabled:(BOOL)a4;
- (void)allTypesEnabled;
- (void)anyTypeEnabled;
- (void)anyTypeRequested;
- (void)commitAllTypesAndUpdateAuthorizationAnchorWithMode:(int64_t)a3 completion:(id)a4;
- (void)disableAllTypes;
- (void)reloadWithCompletion:(id)a3;
- (void)setEnabled:(BOOL)a3 forType:(id)a4 commit:(BOOL)a5 completion:(id)a6;
@end

@implementation HKClinicalSourceAuthorizationController

- (HKClinicalSourceAuthorizationController)initWithHealthStore:(id)a3 healthRecordsStore:(id)a4 source:(id)a5 typesRequestedForReading:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = HKClinicalSourceAuthorizationController;
  v15 = [(HKClinicalSourceAuthorizationController *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_healthStore, a3);
    objc_storeStrong(&v16->_healthRecordsStore, a4);
    v17 = [objc_alloc(MEMORY[0x1E696BF50]) initWithHealthStore:v11];
    authorizationStore = v16->_authorizationStore;
    v16->_authorizationStore = v17;

    v19 = [v13 copy];
    source = v16->_source;
    v16->_source = v19;

    v21 = [v14 copy];
    typesRequestedForReading = v16->_typesRequestedForReading;
    v16->_typesRequestedForReading = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    typesEnabledForReading = v16->_typesEnabledForReading;
    v16->_typesEnabledForReading = v23;

    orderedTypesForReading = v16->_orderedTypesForReading;
    v16->_orderedTypesForReading = MEMORY[0x1E695E0F0];

    v16->_initialLoadComplete = 0;
    v16->_typeRegistryLock._os_unfair_lock_opaque = 0;
  }

  return v16;
}

- (void)reloadWithCompletion:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(HKClinicalSourceAuthorizationController *)self _reloadWithCompletion:v4];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__HKClinicalSourceAuthorizationController_reloadWithCompletion___block_invoke;
    v5[3] = &unk_1E81B5E48;
    v5[4] = self;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_reloadWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_typeRegistryLock);
  [(HKClinicalSourceAuthorizationController *)self setAnyDeterminedTypeAllowsReading:0];
  [(HKClinicalSourceAuthorizationController *)self setAuthorizationModeForSource:1];
  [(HKClinicalSourceAuthorizationController *)self setDisplayReadAuthorizationAnchorDate:0];
  [(HKClinicalSourceAuthorizationController *)self setFetchError:0];
  os_unfair_lock_unlock(&self->_typeRegistryLock);
  v5 = [(HKClinicalSourceAuthorizationController *)self authorizationStore];
  v6 = [(HKClinicalSourceAuthorizationController *)self source];
  v7 = [v6 bundleIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__HKClinicalSourceAuthorizationController__reloadWithCompletion___block_invoke;
  v9[3] = &unk_1E81B7B20;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v5 fetchAuthorizationRecordsForBundleIdentifier:v7 completion:v9];
}

void __65__HKClinicalSourceAuthorizationController__reloadWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogAuthorization();
  v8 = v7;
  if (!v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__HKClinicalSourceAuthorizationController__reloadWithCompletion___block_invoke_cold_1();
    }

    goto LABEL_7;
  }

  v9 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v9)
  {
    v8 = HKLogAuthorization();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v20 = objc_opt_class();
      v10 = v20;
      _os_log_impl(&dword_1C3942000, v8, OS_LOG_TYPE_INFO, "%{public}@ successfully fetched authorization records", buf, 0xCu);
    }

LABEL_7:
  }

  v11 = [v5 hk_filter:&__block_literal_global_28];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__HKClinicalSourceAuthorizationController__reloadWithCompletion___block_invoke_2;
  v15[3] = &unk_1E81B5FD0;
  v12 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v11;
  v17 = v6;
  v18 = v12;
  v13 = v6;
  v14 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

- (void)_didReloadWithAuthorizationRecords:(id)a3 orError:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = [(HKClinicalSourceAuthorizationController *)self typesRequestedForReading];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __97__HKClinicalSourceAuthorizationController__didReloadWithAuthorizationRecords_orError_completion___block_invoke;
  v22[3] = &unk_1E81B7B48;
  v27 = v14 == 0;
  v15 = v14;
  v23 = v15;
  v24 = self;
  v16 = v13;
  v25 = v16;
  v17 = v12;
  v26 = v17;
  [v11 enumerateKeysAndObjectsUsingBlock:v22];

  os_unfair_lock_lock(&self->_typeRegistryLock);
  self->_initialLoadComplete = 1;
  objc_storeStrong(&self->_fetchError, a4);
  v18 = [v16 copy];
  typesForReading = self->_typesForReading;
  self->_typesForReading = v18;

  objc_storeStrong(&self->_typesEnabledForReading, v12);
  if (v11)
  {
    v20 = [(HKClinicalSourceAuthorizationController *)self _orderTypes:v16];
  }

  else
  {
    v20 = 0;
  }

  orderedTypesForReading = self->_orderedTypesForReading;
  self->_orderedTypesForReading = v20;

  os_unfair_lock_unlock(&self->_typeRegistryLock);
  v10[2](v10);
}

void __97__HKClinicalSourceAuthorizationController__didReloadWithAuthorizationRecords_orError_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 status];
  v7 = v6;
  if ((*(a1 + 64) & 1) != 0 || v6 != 100 || [*(a1 + 32) containsObject:v9])
  {
    os_unfair_lock_lock((*(a1 + 40) + 12));
    [v5 status];
    if (HKAuthorizationStatusAllowsReading())
    {
      [*(a1 + 40) setAnyDeterminedTypeAllowsReading:1];
    }

    if (v7 != 100)
    {
      [*(a1 + 40) setAuthorizationModeForSource:{objc_msgSend(v5, "mode")}];
      v8 = [v5 anchorLimitModifiedDate];
      [*(a1 + 40) setDisplayReadAuthorizationAnchorDate:v8];
    }

    os_unfair_lock_unlock((*(a1 + 40) + 12));
    [*(a1 + 48) addObject:v9];
    if ([v5 readingEnabled])
    {
      [*(a1 + 56) addObject:v9];
    }
  }
}

- (id)_orderTypes:(id)a3
{
  healthStore = self->_healthStore;
  v4 = a3;
  v5 = [HKDisplayTypeController sharedInstanceForHealthStore:healthStore];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__HKClinicalSourceAuthorizationController__orderTypes___block_invoke;
  aBlock[3] = &unk_1E81B7B70;
  v12 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);
  v8 = [v4 allObjects];

  v9 = [v8 sortedArrayUsingComparator:v7];

  return v9;
}

uint64_t __55__HKClinicalSourceAuthorizationController__orderTypes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 displayTypeForObjectType:a2];
  v8 = [*(a1 + 32) displayTypeForObjectType:v6];

  v9 = [v7 localization];
  v10 = [v9 displayName];
  v11 = [v8 localization];
  v12 = [v11 displayName];
  v13 = [v10 localizedCaseInsensitiveCompare:v12];

  return v13;
}

- (BOOL)isTypeEnabled:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_typeRegistryLock);
  v5 = [(HKClinicalSourceAuthorizationController *)self typesForReading];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    [HKClinicalSourceAuthorizationController isTypeEnabled:];
  }

  v7 = [(HKClinicalSourceAuthorizationController *)self typesEnabledForReading];
  v8 = [v7 containsObject:v4];

  os_unfair_lock_unlock(&self->_typeRegistryLock);
  return v8;
}

- (void)setEnabled:(BOOL)a3 forType:(id)a4 commit:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a3;
  v15 = a4;
  v10 = a6;
  os_unfair_lock_lock(&self->_typeRegistryLock);
  typesEnabledForReading = self->_typesEnabledForReading;
  if (v8)
  {
    [(NSMutableSet *)typesEnabledForReading addObject:v15];
  }

  else
  {
    [(NSMutableSet *)typesEnabledForReading removeObject:v15];
  }

  os_unfair_lock_unlock(&self->_typeRegistryLock);
  if (v7)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v15, 0}];
    v13 = [(HKClinicalSourceAuthorizationController *)self _authorizationStatusesWithTypes:v12];
    v14 = [(HKClinicalSourceAuthorizationController *)self _authorizationModesWithMode:[(HKClinicalSourceAuthorizationController *)self authorizationModeForSource] types:v12];
    [(HKClinicalSourceAuthorizationController *)self _setAuthorizationStatuses:v13 modes:v14 shouldUpdateAnchor:0 completion:v10];
  }

  else if (v10)
  {
    v10[2](v10, 1, 0);
  }
}

- (void)disableAllTypes
{
  os_unfair_lock_lock(&self->_typeRegistryLock);
  v3 = [(HKClinicalSourceAuthorizationController *)self typesEnabledForReading];
  [v3 removeAllObjects];

  os_unfair_lock_unlock(&self->_typeRegistryLock);
}

- (void)commitAllTypesAndUpdateAuthorizationAnchorWithMode:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(HKClinicalSourceAuthorizationController *)self setAuthorizationModeForSource:a3];
  os_unfair_lock_lock(&self->_typeRegistryLock);
  v7 = [(HKClinicalSourceAuthorizationController *)self typesForReading];
  os_unfair_lock_unlock(&self->_typeRegistryLock);
  if (v7)
  {
    v8 = [(HKClinicalSourceAuthorizationController *)self _authorizationModesWithMode:a3 types:v7];
    v9 = [(HKClinicalSourceAuthorizationController *)self _authorizationStatusesWithTypes:v7];
    [(HKClinicalSourceAuthorizationController *)self _setAuthorizationStatuses:v9 modes:v8 shouldUpdateAnchor:1 completion:v6];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Unable to commit clinical source authorization determinations: no types for reading"];
    _HKInitializeLogging();
    v10 = HKLogAuthorization();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HKClinicalSourceAuthorizationController commitAllTypesAndUpdateAuthorizationAnchorWithMode:v8 completion:?];
    }

    (*(v6 + 2))(v6, 0, v8);
  }
}

- (NSString)titleText
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"AUTHORIZATION_CLINICAL_HEALTH_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (UIImage)iconImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = HKHealthUIFrameworkBundle();
  v4 = [v2 imageNamed:@"health_records_category" inBundle:v3];

  return v4;
}

- (void)_updateDisplayReadAuthorizationAnchorDateIfNeededForCommittingModes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) integerValue];
        if (v10 >= 2)
        {
          [(HKClinicalSourceAuthorizationController *)a2 _updateDisplayReadAuthorizationAnchorDateIfNeededForCommittingModes:v10];
        }

        if ([(HKClinicalSourceAuthorizationController *)self _shouldUpdateDisplayReadAuthorizationAnchorDateWhenCommittingWithMode:v10])
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF00]);
          [(HKClinicalSourceAuthorizationController *)self setDisplayReadAuthorizationAnchorDate:v11];

          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_updateReminderRegistrationIfNeededForCommittingModes:(id)a3 anyTypeEnabled:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (![v7 count])
  {
    [HKClinicalSourceAuthorizationController _updateReminderRegistrationIfNeededForCommittingModes:anyTypeEnabled:];
  }

  memset(v10, 0, sizeof(v10));
  if ([v7 countByEnumeratingWithState:v10 objects:v11 count:16])
  {
    v8 = [**(&v10[0] + 1) integerValue];
    if (v8 < 2)
    {
      goto LABEL_7;
    }

    [(HKClinicalSourceAuthorizationController *)a2 _updateReminderRegistrationIfNeededForCommittingModes:v8 anyTypeEnabled:?];
  }

  v8 = 1;
LABEL_7:
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

  [(HKClinicalSourceAuthorizationController *)self _commitModeConfirmationAlertRegistrationShouldDisplay:v9];
}

- (void)_commitModeConfirmationAlertRegistrationShouldDisplay:(BOOL)a3
{
  v3 = a3;
  v5 = [(HKClinicalSourceAuthorizationController *)self healthRecordsStore];
  v6 = [(HKClinicalSourceAuthorizationController *)self source];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97__HKClinicalSourceAuthorizationController__commitModeConfirmationAlertRegistrationShouldDisplay___block_invoke;
  v8[3] = &unk_1E81B7B98;
  v9 = v3;
  v8[4] = self;
  v7 = _Block_copy(v8);
  if (v3)
  {
    [v5 registerAppSourceForClinicalUnlimitedAuthorizationModeConfirmation:v6 completion:v7];
  }

  else
  {
    [v5 deregisterAppSourceFromClinicalUnlimitedAuthorizationModeConfirmation:v6 completion:v7];
  }
}

void __97__HKClinicalSourceAuthorizationController__commitModeConfirmationAlertRegistrationShouldDisplay___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __97__HKClinicalSourceAuthorizationController__commitModeConfirmationAlertRegistrationShouldDisplay___block_invoke_cold_1(a1, v6);
    }
  }

  v7 = [*(a1 + 32) _unitTesting_reminderRegistryCompletion];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 40));
  }
}

- (BOOL)allTypesEnabled
{
  os_unfair_lock_lock(&self->_typeRegistryLock);
  if (!self->_initialLoadComplete)
  {
    [HKClinicalSourceAuthorizationController allTypesEnabled];
  }

  v3 = [(HKClinicalSourceAuthorizationController *)self typesEnabledForReading];
  v4 = [(HKClinicalSourceAuthorizationController *)self typesForReading];
  v5 = [v3 isEqualToSet:v4];

  os_unfair_lock_unlock(&self->_typeRegistryLock);
  return v5;
}

- (BOOL)anyTypeEnabled
{
  os_unfair_lock_lock(&self->_typeRegistryLock);
  if (!self->_initialLoadComplete)
  {
    [HKClinicalSourceAuthorizationController anyTypeEnabled];
  }

  v3 = [(HKClinicalSourceAuthorizationController *)self typesEnabledForReading];
  v4 = [v3 count] != 0;

  os_unfair_lock_unlock(&self->_typeRegistryLock);
  return v4;
}

- (BOOL)anyTypeRequested
{
  os_unfair_lock_lock(&self->_typeRegistryLock);
  if (!self->_initialLoadComplete)
  {
    [HKClinicalSourceAuthorizationController anyTypeRequested];
  }

  v3 = [(HKClinicalSourceAuthorizationController *)self typesForReading];
  v4 = [v3 count] != 0;

  os_unfair_lock_unlock(&self->_typeRegistryLock);
  return v4;
}

- (int64_t)_authorizationStatusWithType:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_typeRegistryLock);
  [(NSMutableSet *)self->_typesEnabledForReading containsObject:v4];

  os_unfair_lock_unlock(&self->_typeRegistryLock);

  return HKInternalAuthorizationStatusMake();
}

- (id)_authorizationModesWithMode:(int64_t)a3 types:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:{a3, v15}];
        [v6 setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_authorizationStatusesWithTypes:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKClinicalSourceAuthorizationController _authorizationStatusWithType:](self, "_authorizationStatusWithType:", v11, v14)}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_setAuthorizationStatuses:(id)a3 modes:(id)a4 shouldUpdateAnchor:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v14)
  {
    v15 = *v38;
    do
    {
      v16 = 0;
      do
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (([*(*(&v37 + 1) + 8 * v16) isClinicalType] & 1) == 0)
        {
          [HKClinicalSourceAuthorizationController _setAuthorizationStatuses:modes:shouldUpdateAnchor:completion:];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v14);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = v11;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v18)
  {
    v19 = *v34;
    do
    {
      v20 = 0;
      do
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v17);
        }

        if (([*(*(&v33 + 1) + 8 * v20) isClinicalType] & 1) == 0)
        {
          [HKClinicalSourceAuthorizationController _setAuthorizationStatuses:modes:shouldUpdateAnchor:completion:];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v18);
  }

  objc_initWeak(&location, self);
  v21 = [(HKClinicalSourceAuthorizationController *)self authorizationStore];
  v22 = [(HKClinicalSourceAuthorizationController *)self source];
  v23 = [v22 bundleIdentifier];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __105__HKClinicalSourceAuthorizationController__setAuthorizationStatuses_modes_shouldUpdateAnchor_completion___block_invoke;
  v27[3] = &unk_1E81B7BE8;
  objc_copyWeak(&v30, &location);
  v24 = v7;
  v25 = v17;
  v28 = v25;
  v31 = v7;
  v26 = v12;
  v29 = v26;
  [v21 setAuthorizationStatuses:v13 authorizationModes:v25 forBundleIdentifier:v23 options:v24 completion:v27];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __105__HKClinicalSourceAuthorizationController__setAuthorizationStatuses_modes_shouldUpdateAnchor_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    objc_copyWeak(to, (a1 + 48));
    v6 = [*(a1 + 32) allValues];
    WeakRetained = objc_loadWeakRetained(to);
    v8 = [WeakRetained source];
    v9 = [v8 _isApplication];

    if (v9)
    {
      v10 = objc_loadWeakRetained(to);
      [v10 _updateReminderRegistrationIfNeededForCommittingModes:v6 anyTypeEnabled:{objc_msgSend(v10, "anyTypeEnabled")}];
    }

    if (*(a1 + 56) == 1)
    {
      v11 = objc_loadWeakRetained(to);
      [v11 _updateDisplayReadAuthorizationAnchorDateIfNeededForCommittingModes:v6];
    }

    objc_destroyWeak(to);
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogAuthorization();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __105__HKClinicalSourceAuthorizationController__setAuthorizationStatuses_modes_shouldUpdateAnchor_completion___block_invoke_cold_1(v5, v12);
    }
  }

  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__HKClinicalSourceAuthorizationController__setAuthorizationStatuses_modes_shouldUpdateAnchor_completion___block_invoke_355;
    block[3] = &unk_1E81B7BC0;
    v16 = *(a1 + 40);
    v17 = a2;
    v15 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v13 = v16;
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogAuthorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(to[0]) = 0;
      _os_log_impl(&dword_1C3942000, v13, OS_LOG_TYPE_DEFAULT, "HKClinicalSourceAuthorizationController: nil completion handler, setting authorization statuses are now done", to, 2u);
    }
  }
}

void __65__HKClinicalSourceAuthorizationController__reloadWithCompletion___block_invoke_cold_1()
{
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_2_0(&dword_1C3942000, v1, v2, "%{public}@ failed to get authorization records: %@", v3, v4, v5, v6, 2u);
}

- (void)isTypeEnabled:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"[self.typesForReading containsObject:type]" object:? file:? lineNumber:? description:?];
}

- (void)commitAllTypesAndUpdateAuthorizationAnchorWithMode:(uint64_t)a1 completion:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v8 = [a2 localizedDescription];
  OUTLINED_FUNCTION_2_0(&dword_1C3942000, v2, v3, "%{public}@: %{public}@", v4, v5, v6, v7, 2u);
}

- (void)_updateDisplayReadAuthorizationAnchorDateIfNeededForCommittingModes:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HKClinicalSourceAuthorizationController.m" lineNumber:291 description:{@"Invalid mode: %ld", a3}];
}

- (void)_updateReminderRegistrationIfNeededForCommittingModes:anyTypeEnabled:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"modes.count > 0" object:? file:? lineNumber:? description:?];
}

- (void)_updateReminderRegistrationIfNeededForCommittingModes:(uint64_t)a3 anyTypeEnabled:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HKClinicalSourceAuthorizationController.m" lineNumber:310 description:{@"Invalid mode: %ld", a3}];
}

void __97__HKClinicalSourceAuthorizationController__commitModeConfirmationAlertRegistrationShouldDisplay___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Failed to update mode alert confirmation with shouldDisplay: %{public}@", &v3, 0xCu);
}

- (void)allTypesEnabled
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:"-[HKClinicalSourceAuthorizationController allTypesEnabled]" object:? file:? lineNumber:? description:?];
}

- (void)anyTypeEnabled
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:"-[HKClinicalSourceAuthorizationController anyTypeEnabled]" object:? file:? lineNumber:? description:?];
}

- (void)anyTypeRequested
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:"-[HKClinicalSourceAuthorizationController anyTypeRequested]" object:? file:? lineNumber:? description:?];
}

- (void)_setAuthorizationStatuses:modes:shouldUpdateAnchor:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v1 handleFailureInMethod:@"type.isClinicalType" object:? file:? lineNumber:? description:?];
}

- (void)_setAuthorizationStatuses:modes:shouldUpdateAnchor:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v1 handleFailureInMethod:@"type.isClinicalType" object:? file:? lineNumber:? description:?];
}

void __105__HKClinicalSourceAuthorizationController__setAuthorizationStatuses_modes_shouldUpdateAnchor_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Received error when setting authorization state: %{public}@", &v2, 0xCu);
}

@end