@interface HDUserCharacteristicsManager
- (BOOL)_setUserCharacteristic:(id)a3 forType:(id)a4 shouldInsertSample:(BOOL)a5 updateProfileAndSync:(BOOL)a6 error:(id *)a7;
- (HDUserCharacteristicsManager)initWithProfile:(id)a3;
- (double)restingCaloriesFromTotalCalories:(double)a3 timeInterval:(double)a4 authorizedToRead:(BOOL)a5;
- (id)_getCardioFitnessMedicationsStatusWithError:(void *)a1;
- (id)_mostRecentSampleOfType:(void *)a3 beforeDate:(uint64_t)a4 error:;
- (id)_userCharacteristicForType:(uint64_t)a3 entity:(uint64_t)a4 error:;
- (id)diagnosticDescription;
- (id)modificationDateForCharacteristicWithType:(id)a3 error:(id *)a4;
- (uint64_t)_queue_updateCharacteristicsAndUserProfileWithDelay;
- (void)_queue_updateCharacteristicsAndUserProfile;
- (void)_queue_updateCharacteristicsAndUserProfileWithDate:(uint64_t)a1;
- (void)_queue_updateFitnessModeDefaultAndNotifyIfNecessary;
- (void)_updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary:(uint64_t)a1;
- (void)_userCharacteristicsDidChangeShouldUpdateUserProfile:(int)a3 shouldSync:;
- (void)addProfileObserver:(id)a3;
- (void)cloudSyncManager:(id)a3 didUpdateSyncEnabled:(BOOL)a4;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)didReceiveAuthKitDeviceListChangeNotification:(id)a3;
- (void)didReceiveDayChangeNotification:(id)a3;
- (void)nanoSyncManager:(id)a3 pairedDevicesChanged:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
- (void)unitTest_updateCharacteristicsAndUserProfileWithDate:(id)a3 completion:(id)a4;
@end

@implementation HDUserCharacteristicsManager

uint64_t __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__36;
  v29 = __Block_byref_object_dispose__36;
  v30 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_2;
  aBlock[3] = &unk_2786189E0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v23 = &v31;
  v24 = &v25;
  aBlock[4] = v6;
  v22 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB08]];
  v8[2](v8, *MEMORY[0x277CC1BD8], v9, &__block_literal_global_41);

  v10 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  v8[2](v8, *MEMORY[0x277CC1BC8], v10, &__block_literal_global_375);

  v11 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCDEC8]];
  v8[2](v8, *MEMORY[0x277CC1BF0], v11, &__block_literal_global_379);

  v12 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCDED8]];
  v8[2](v8, *MEMORY[0x277CC1BE8], v12, &__block_literal_global_382);

  v13 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB28]];
  v8[2](v8, *MEMORY[0x277CC1BE0], v13, &__block_literal_global_384_0);

  v14 = *(a1 + 32);
  v15 = (v26 + 5);
  obj = v26[5];
  v16 = [(HDUserCharacteristicsManager *)v14 _getCardioFitnessMedicationsStatusWithError:?];
  objc_storeStrong(v15, obj);
  if (v16)
  {
    [*(a1 + 40) setObject:v16 forKey:*MEMORY[0x277CC1BD0]];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(v32 + 24) = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  v17 = v26[5];
  if (v17)
  {
    *a3 = v17;
  }

LABEL_7:
  v18 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v18;
}

void __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 56) + 8);
    obj = *(v10 + 40);
    v11 = [v9 userCharacteristicForType:a3 error:&obj];
    objc_storeStrong((v10 + 40), obj);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (v11)
    {
      if (v8)
      {
        v12 = v8[2](v8, v11);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v12 = v11;
      }

      [*(a1 + 40) setObject:v12 forKey:v7];

      goto LABEL_10;
    }

LABEL_7:
    [*(a1 + 40) removeObjectForKey:v7];
    goto LABEL_10;
  }

LABEL_11:
}

id __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 integerValue] == 3)
  {

    v2 = &unk_283CB0900;
  }

  return v2;
}

uint64_t __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  if ([a2 integerValue] == 2)
  {
    v3 = 6;
  }

  else
  {
    v3 = 0;
  }

  return [v2 numberWithInteger:v3];
}

- (HDUserCharacteristicsManager)initWithProfile:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"HDUserCharacteristicsManager.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
  }

  v28.receiver = self;
  v28.super_class = HDUserCharacteristicsManager;
  v6 = [(HDUserCharacteristicsManager *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_profile, v5);
    v8 = HKCreateSerialDispatchQueue();
    queue = v7->_queue;
    v7->_queue = v8;

    v7->_needsUpdateAfterUnlock = 1;
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(*MEMORY[0x277CCC178], *MEMORY[0x277CCE4C8], &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:AppBooleanValue != 0];
    }

    else
    {
      v11 = 0;
    }

    hasWatchOnAccount = v7->_hasWatchOnAccount;
    v7->_hasWatchOnAccount = v11;

    v13 = objc_alloc(MEMORY[0x277CCD738]);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = HKLogInfrastructure();
    v17 = [v13 initWithName:v15 loggingCategory:v16];
    observers = v7->_observers;
    v7->_observers = v17;

    v19 = [v5 daemon];
    v20 = [v19 behavior];
    v7->_shouldUpdateQuantityCharacteristics = [v20 supportsComputedUserCharacteristicCaching];

    v21 = [v5 daemon];
    v22 = [v21 behavior];
    v7->_shouldUpdateCategoryCharacteristics = [v22 supportsComputedUserCharacteristicCaching];

    WeakRetained = objc_loadWeakRetained(&v7->_profile);
    [WeakRetained registerProfileReadyObserver:v7 queue:v7->_queue];

    v24 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v24 addObject:v7];
  }

  return v7;
}

- (void)dealloc
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [v3 removeObject:self];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  [v5 removeProtectedDataObserver:self];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = QuantityCharacteristicTypes();
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained(&self->_profile);
        v13 = [v12 dataManager];
        v14 = [v11 _relatedQuantityType];
        [v13 removeObserver:self forDataType:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  v15 = objc_loadWeakRetained(&self->_profile);
  v16 = [v15 dataManager];
  v17 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB00]];
  v18 = [v17 _relatedCategoryType];
  [v16 removeObserver:self forDataType:v18];

  if (self)
  {
    if (notify_is_valid_token(self->_significantTimeChangeNotificationToken))
    {
      notify_cancel(self->_significantTimeChangeNotificationToken);
    }

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 removeObserver:self name:*MEMORY[0x277CBE580] object:0];
  }

  v20 = objc_loadWeakRetained(&self->_profile);
  v21 = [v20 daemon];
  v22 = [v21 behavior];
  v23 = [v22 isAppleWatch];

  if ((v23 & 1) == 0)
  {
    v24 = objc_loadWeakRetained(&self->_profile);
    v25 = [v24 nanoSyncManager];
    [v25 removeObserver:self];

    v26 = objc_loadWeakRetained(&self->_profile);
    v27 = [v26 cloudSyncManager];
    [v27 removeObserver:self];
  }

  v29.receiver = self;
  v29.super_class = HDUserCharacteristicsManager;
  [(HDUserCharacteristicsManager *)&v29 dealloc];
  v28 = *MEMORY[0x277D85DE8];
}

- (id)_userCharacteristicForType:(uint64_t)a3 entity:(uint64_t)a4 error:
{
  if (a1)
  {
    v7 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v9 = [HDProtectedKeyValueEntity userCharacteristicForType:v7 profile:WeakRetained entity:a3 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)modificationDateForCharacteristicWithType:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [HDProtectedKeyValueEntity modificationDateForCharacteristicWithType:v6 profile:WeakRetained error:a4];

  return v8;
}

- (BOOL)_setUserCharacteristic:(id)a3 forType:(id)a4 shouldInsertSample:(BOOL)a5 updateProfileAndSync:(BOOL)a6 error:(id *)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v13;
    _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "Setting user characteristic for type %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke;
  aBlock[3] = &unk_278618918;
  v33 = v12;
  v15 = v13;
  v34 = v15;
  v35 = self;
  v36 = a5;
  v16 = v12;
  v17 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v19 = [WeakRetained database];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke_2;
  v27[3] = &unk_278618940;
  v31 = a6;
  v28 = v15;
  v29 = self;
  v30 = v17;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke_4;
  v25[3] = &unk_278618968;
  v26 = v30;
  v20 = v30;
  v21 = v15;
  v22 = [(HDHealthEntity *)HDProtectedKeyValueEntity performWriteTransactionWithHealthDatabase:v19 error:a7 block:v27 inaccessibilityHandler:v25];

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  v7 = [HDProtectedKeyValueEntity setUserCharacteristic:v4 forType:v5 profile:WeakRetained error:a2];

  if (v7)
  {
    if (*(a1 + 56) == 1)
    {
      v8 = [*(a1 + 40) _relatedSampleForInsertionWithCharacteristicValue:*(a1 + 32)];
      v9 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
      v10 = v9;
      if (!v8)
      {
        goto LABEL_10;
      }

      if (*(a1 + 40) != v9)
      {
        goto LABEL_6;
      }

      v11 = objc_loadWeakRetained((*(a1 + 48) + 8));
      v12 = [v11 daemon];
      v13 = [v12 behavior];
      v14 = [v13 futureMigrationsEnabled];

      if (v14)
      {
LABEL_6:
        v15 = objc_loadWeakRetained((*(a1 + 48) + 8));
        v16 = [v15 dataProvenanceManager];
        v17 = [v16 defaultLocalDataProvenance];

        if (v17)
        {
          v18 = objc_loadWeakRetained((*(a1 + 48) + 8));
          v19 = [v18 dataManager];
          v24[0] = v8;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
          v21 = [v19 insertDataObjects:v20 withProvenance:v17 creationDate:a2 error:2.22507386e-308];
        }

        else
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 description:@"Failed to get local device data provenance"];
          v21 = 0;
        }
      }

      else
      {
LABEL_10:
        v21 = 1;
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 56) == 1)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke_3;
    v10[3] = &unk_278613920;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    [a2 onCommit:v10 orRollback:0];
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), a3, a3, a4);
}

void __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) code];
  v4 = (v2 - 64) <= 0x27 && ((1 << (v2 - 64)) & 0x8001700007) != 0 || v2 == 218;
  v5 = *(a1 + 40);

  [(HDUserCharacteristicsManager *)v5 _userCharacteristicsDidChangeShouldUpdateUserProfile:v4 shouldSync:1];
}

- (void)_userCharacteristicsDidChangeShouldUpdateUserProfile:(int)a3 shouldSync:
{
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__HDUserCharacteristicsManager__userCharacteristicsDidChangeShouldUpdateUserProfile_shouldSync___block_invoke;
      block[3] = &unk_278613968;
      block[4] = a1;
      dispatch_async(v5, block);
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = v6;
    if (a3)
    {
      [v6 postNotificationName:@"HDUserCharacteristicsShouldSyncNotification" object:a1];
    }

    [v7 postNotificationName:@"HDUserCharacteristicsDidChangeNotification" object:a1];
    notify_post(*MEMORY[0x277CCE580]);
  }
}

- (double)restingCaloriesFromTotalCalories:(double)a3 timeInterval:(double)a4 authorizedToRead:(BOOL)a5
{
  if (a5)
  {
    v7 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:{*MEMORY[0x277CCDEC8], a3}];
    v23 = 0;
    v8 = [(HDUserCharacteristicsManager *)self userCharacteristicForType:v7 error:&v23];
    v9 = v23;

    v10 = 0.0;
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8 == 0;
    }

    if (!v11)
    {
      v12 = [MEMORY[0x277CCDAB0] unitFromString:@"kg"];
      [v8 doubleValueForUnit:v12];
      v10 = v13;
    }

    v22 = v9;
    v14 = [(HDUserCharacteristicsManager *)self _getCardioFitnessMedicationsStatusWithError:?];
    v15 = v22;

    v16 = 0;
    if (v14 && !v15)
    {
      v16 = [v14 BOOLValue];
    }
  }

  else
  {
    v16 = 0;
    v10 = 0.0;
  }

  v17 = [objc_alloc(MEMORY[0x277CC1C48]) initWithAge:0 gender:0 height:v16 weight:0.0 condition:0.0 betaBlockerUse:v10];
  v18 = [MEMORY[0x277CC1CE0] computeRestingCaloriesAtRate:1 user:v17 duration:a4];
  [v18 doubleValue];
  v20 = v19 / 1000.0;

  return v20;
}

- (id)_getCardioFitnessMedicationsStatusWithError:(void *)a1
{
  if (a1)
  {
    v4 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCDED0]];
    v11 = 0;
    v5 = [a1 userCharacteristicForType:v4 error:&v11];
    v6 = v11;

    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (v7)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "integerValue") != 0}];
    }

    else if (a2)
    {
      v9 = v6;
      v8 = 0;
      *a2 = v6;
    }

    else
    {
      _HKLogDroppedError();
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_queue_updateCharacteristicsAndUserProfile
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    [(HDUserCharacteristicsManager *)a1 _queue_updateCharacteristicsAndUserProfileWithDate:v2];
  }
}

- (void)_queue_updateCharacteristicsAndUserProfileWithDate:(uint64_t)a1
{
  v123 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a2;
    v96 = a1;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v5 = [WeakRetained database];

    v6 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v6 setCacheScope:1];
    v7 = [(HDDatabaseTransactionContext *)v6 copyForWritingProtectedData];

    v8 = MEMORY[0x277CBEA80];
    v9 = v3;
    v10 = [v8 hk_gregorianCalendarWithLocalTimeZone];
    v11 = [v10 startOfDayForDate:v9];

    v12 = [v10 dateByAddingUnit:16 value:1 toDate:v11 options:0];
    v13 = [v10 startOfDayForDate:v12];

    v14 = _HKActivityCacheDateComponentsFromDate();
    v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:_HKCacheIndexFromDateComponents()];

    *&v97 = 0;
    *(&v97 + 1) = &v97;
    *&v98 = 0x2020000000;
    BYTE8(v98) = 0;
    v103 = 0;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v116 = __84__HDUserCharacteristicsManager__queue_updateActivityMoveModeCharacteristicWithDate___block_invoke;
    v117 = &unk_278615F88;
    v118 = a1;
    v16 = v15;
    v119 = v16;
    v120 = &v97;
    LODWORD(v15) = [v5 performTransactionWithContext:v7 error:&v103 block:&buf inaccessibilityHandler:0];
    v17 = v103;
    v18 = v17;
    if (v15)
    {
      if (*(*(&v97 + 1) + 24) == 1)
      {
        [(HDUserCharacteristicsManager *)a1 _userCharacteristicsDidChangeShouldUpdateUserProfile:1 shouldSync:?];
      }

      *(a1 + 56) = 0;
    }

    else if ([v17 hk_isDatabaseAccessibilityError])
    {
      *(a1 + 56) = 1;
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        LODWORD(keyExistsAndHasValidFormat) = 138543362;
        *(&keyExistsAndHasValidFormat + 4) = v18;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Error updating user activity move mode characteristic: %{public}@", &keyExistsAndHasValidFormat, 0xCu);
      }
    }

    _Block_object_dispose(&v97, 8);
    v20 = objc_loadWeakRetained((a1 + 8));
    v21 = [v20 profileType];

    if (v21 == 1)
    {
      v22 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB00]];
      *&v97 = 0;
      v23 = [(HDUserCharacteristicsManager *)a1 _userCharacteristicForType:v22 entity:0 error:&v97];
      v24 = v97;

      if (v23 || !v24)
      {
        if (v23)
        {
          v26 = [v23 integerValue];
        }

        else
        {
          v26 = 1;
        }

        LOBYTE(keyExistsAndHasValidFormat) = 0;
        v27 = *MEMORY[0x277CCB788];
        v28 = *MEMORY[0x277CCE4C8];
        AppIntegerValue = CFPreferencesGetAppIntegerValue(*MEMORY[0x277CCB788], *MEMORY[0x277CCE4C8], &keyExistsAndHasValidFormat);
        if (!keyExistsAndHasValidFormat || AppIntegerValue != v26)
        {
          CFPreferencesSetAppValue(v27, [MEMORY[0x277CCABB0] numberWithInteger:v26], v28);
          _HKInitializeLogging();
          v30 = *MEMORY[0x277CCC2B0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
            v32 = HKActivityMoveModeToString();
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v32;
            _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "Activity Move Mode defaults value changed to %{public}@! Posting notification!", &buf, 0xCu);
          }

          notify_post(*MEMORY[0x277CCB790]);
        }
      }

      else
      {
        _HKInitializeLogging();
        v25 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v24;
          _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "Error reading activity move mode characteristic for defaults update: %@", &buf, 0xCu);
        }

        if ([v24 hk_isDatabaseAccessibilityError])
        {
          *(a1 + 56) = 1;
        }
      }
    }

    if (*(a1 + 32))
    {
      v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v35 = objc_loadWeakRetained((a1 + 8));
      v36 = [v35 database];

      v37 = QuantityCharacteristicTypes();
      *&keyExistsAndHasValidFormat = 0;
      *(&keyExistsAndHasValidFormat + 1) = &keyExistsAndHasValidFormat;
      v111 = 0x2020000000;
      LOBYTE(v112) = 0;
      v38 = a1;
      v39 = objc_alloc_init(HDMutableDatabaseTransactionContext);
      [(HDMutableDatabaseTransactionContext *)v39 setCacheScope:1];
      v107 = 0;
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v116 = __68__HDUserCharacteristicsManager__queue_updateQuantityCharacteristics__block_invoke;
      v117 = &unk_278618A68;
      v40 = v37;
      v118 = v40;
      v119 = a1;
      v41 = v33;
      v120 = v41;
      v42 = v34;
      v121 = v42;
      p_keyExistsAndHasValidFormat = &keyExistsAndHasValidFormat;
      v43 = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:v36 context:v39 error:&v107 block:&buf];
      v44 = v107;
      v45 = v44;
      v103 = 0;
      v104 = &v103;
      v105 = 0x2020000000;
      v106 = 0;
      if (!v43)
      {
        goto LABEL_84;
      }

      if (*(*(&keyExistsAndHasValidFormat + 1) + 24) != 1)
      {
        goto LABEL_32;
      }

      v102 = v44;
      *&v97 = MEMORY[0x277D85DD0];
      *(&v97 + 1) = 3221225472;
      *&v98 = __68__HDUserCharacteristicsManager__queue_updateQuantityCharacteristics__block_invoke_2;
      *(&v98 + 1) = &unk_278618A68;
      *&v99 = v40;
      *(&v99 + 1) = v41;
      *&v100 = a1;
      *(&v100 + 1) = v42;
      v101 = &v103;
      v46 = [(HDHealthEntity *)HDProtectedKeyValueEntity performWriteTransactionWithHealthDatabase:v36 context:v39 error:&v102 block:&v97];
      v47 = v102;

      if (*(v104 + 24) == 1)
      {
        [(HDUserCharacteristicsManager *)a1 _userCharacteristicsDidChangeShouldUpdateUserProfile:1 shouldSync:?];
      }

      v45 = v47;
      v38 = a1;
      if (v46)
      {
LABEL_32:
        *(v38 + 56) = 0;
      }

      else
      {
LABEL_84:
        if ([v45 hk_isDatabaseAccessibilityError])
        {
          *(a1 + 56) = 1;
        }

        else
        {
          _HKInitializeLogging();
          v48 = *MEMORY[0x277CCC2B0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
          {
            *v108 = 138543362;
            v109 = v45;
            _os_log_error_impl(&dword_228986000, v48, OS_LOG_TYPE_ERROR, "Error updating user characteristics quantity: %{public}@", v108, 0xCu);
          }
        }
      }

      _Block_object_dispose(&v103, 8);

      _Block_object_dispose(&keyExistsAndHasValidFormat, 8);
    }

    v49 = objc_loadWeakRetained((a1 + 8));
    v50 = [v49 profileType];

    if (v50 == 1)
    {
      v95 = [MEMORY[0x277CC1CE0] userProfile];
      if (v95)
      {
        v51 = v95;
      }

      else
      {
        v51 = MEMORY[0x277CBEC10];
      }

      v52 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v51];
      v93 = objc_alloc_init(HDMutableDatabaseTransactionContext);
      [(HDMutableDatabaseTransactionContext *)v93 setCacheScope:1];
      v53 = objc_loadWeakRetained((a1 + 8));
      v54 = [v53 database];
      v103 = 0;
      *&keyExistsAndHasValidFormat = MEMORY[0x277D85DD0];
      *(&keyExistsAndHasValidFormat + 1) = 3221225472;
      v111 = __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke;
      v112 = &unk_278613218;
      v113 = a1;
      v94 = v52;
      v114 = v94;
      v55 = [(HDHealthEntity *)HDProtectedKeyValueEntity performReadTransactionWithHealthDatabase:v54 context:v93 error:&v103 block:&keyExistsAndHasValidFormat];
      v92 = v103;

      if (v55)
      {
        *(a1 + 56) = 0;
        v56 = [MEMORY[0x277CBEAA8] date];
        v57 = *(a1 + 40);
        *(a1 + 40) = v56;

        v58 = [v94 copy];
        v59 = *(a1 + 48);
        *(a1 + 48) = v58;

        if ([v95 isEqualToDictionary:v94])
        {
          v60 = v92;
        }

        else
        {
          v62 = objc_loadWeakRetained((a1 + 8));
          v63 = [v62 daemon];
          v64 = [v63 behavior];
          v65 = [v64 isAppleInternalInstall];

          if (v65)
          {
            if (v95)
            {
              v66 = v95;
              v67 = v94;
              v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v69 = objc_alloc_init(MEMORY[0x277CBEB58]);
              v70 = [v66 allKeys];
              [v69 addObjectsFromArray:v70];

              v71 = [v67 allKeys];
              [v69 addObjectsFromArray:v71];

              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v72 = v69;
              v73 = [v72 countByEnumeratingWithState:&v97 objects:&buf count:16];
              if (v73)
              {
                v74 = *v98;
                do
                {
                  for (i = 0; i != v73; ++i)
                  {
                    if (*v98 != v74)
                    {
                      objc_enumerationMutation(v72);
                    }

                    v76 = *(*(&v97 + 1) + 8 * i);
                    v77 = [v66 objectForKeyedSubscript:v76];
                    v78 = [v67 objectForKeyedSubscript:v76];
                    v79 = v78;
                    if (v77 != v78 && (!v78 || ([v77 isEqual:v78] & 1) == 0))
                    {
                      [v68 addObject:v76];
                    }
                  }

                  v73 = [v72 countByEnumeratingWithState:&v97 objects:&buf count:16];
                }

                while (v73);
              }
            }

            else
            {
              v68 = [v94 allKeys];
            }

            if ([v68 count])
            {
              v81 = MEMORY[0x277CCACA8];
              v82 = [v68 componentsJoinedByString:{@", "}];
              v80 = [v81 stringWithFormat:@"(%@)", v82];
            }

            else
            {
              v80 = 0;
            }
          }

          else
          {
            v80 = 0;
          }

          _HKInitializeLogging();
          v83 = MEMORY[0x277CCC2B0];
          v84 = *MEMORY[0x277CCC2B0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
          {
            v91 = &stru_283BF39C8;
            if (v80)
            {
              v91 = v80;
            }

            LODWORD(buf) = 138543362;
            *(&buf + 4) = v91;
            _os_log_debug_impl(&dword_228986000, v84, OS_LOG_TYPE_DEBUG, "Updating changed user profile keys %{public}@", &buf, 0xCu);
          }

          *&v97 = v92;
          v85 = [MEMORY[0x277CC1CE0] setUserProfile:v94 error:&v97];
          v60 = v97;

          if ((v85 & 1) == 0)
          {
            _HKInitializeLogging();
            v86 = *v83;
            if (os_log_type_enabled(*v83, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v60;
              _os_log_error_impl(&dword_228986000, v86, OS_LOG_TYPE_ERROR, "Error setting CoreMotion user profile: %{public}@", &buf, 0xCu);
            }
          }
        }

        v87 = *(v96 + 48);
        v88 = *(v96 + 24);
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v116 = __73__HDUserCharacteristicsManager__queue_alertObserversDidUpdateUserProfile__block_invoke;
        v117 = &unk_278618A90;
        v118 = v96;
        v119 = v87;
        v89 = v87;
        [v88 notifyObservers:&buf];

        goto LABEL_76;
      }

      if ([v92 hk_isDatabaseAccessibilityError])
      {
        *(a1 + 56) = 1;
      }

      else
      {
        _HKInitializeLogging();
        v61 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          v60 = v92;
          *(&buf + 4) = v92;
          _os_log_error_impl(&dword_228986000, v61, OS_LOG_TYPE_ERROR, "Error updating user characteristics values: %{public}@", &buf, 0xCu);
          goto LABEL_76;
        }
      }

      v60 = v92;
LABEL_76:

      goto LABEL_77;
    }

    *(a1 + 56) = 0;
  }

LABEL_77:
  v90 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_queue_updateCharacteristicsAndUserProfileWithDelay
{
  v6 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    _HKInitializeLogging();
    v2 = HKLogInfrastructure();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = objc_opt_class();
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating age gating due to significant time change.", &v4, 0xCu);
    }

    result = [*(v1 + 80) execute];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __84__HDUserCharacteristicsManager__queue_updateActivityMoveModeCharacteristicWithDate___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB00]];
  v6 = [v5 _relatedCategoryType];
  v7 = a1[4];
  v8 = a1[5];
  v35 = 0;
  if (v7)
  {
    v9 = [(HDUserCharacteristicsManager *)v7 _mostRecentSampleOfType:v6 beforeDate:v8 error:&v35];
    v10 = v35;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = v10;
  v12 = v11;
  if (v9 || !v11)
  {
    v15 = a1[4];
    v34 = 0;
    v16 = [(HDUserCharacteristicsManager *)v15 _userCharacteristicForType:v5 entity:0 error:&v34];
    v17 = v34;
    v18 = v17;
    if (v16)
    {
      v19 = 1;
    }

    else
    {
      v19 = v17 == 0;
    }

    if (!v19)
    {
      if (a3)
      {
        v20 = v17;
        v14 = 0;
        *a3 = v18;
      }

      else
      {
        _HKLogDroppedError();
        v14 = 0;
      }

      goto LABEL_35;
    }

    if (!(v9 | v16))
    {
      v14 = 1;
LABEL_35:

      goto LABEL_36;
    }

    v21 = [v16 integerValue];
    if (v9)
    {
      v22 = [v9 value];
    }

    else
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "Resetting activity move mode characteristic if needed", buf, 2u);
      }

      v22 = 1;
    }

    if (v21 == v22)
    {
      v24 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v31 = HKActivityMoveModeToString();
        *buf = 138543362;
        v37 = v31;
        _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "Updating activity move mode characteristic to %{public}@", buf, 0xCu);
      }

      v27 = a1[4];
      v32 = [MEMORY[0x277CCABB0] numberWithInteger:{v22, v31}];
      v33 = 0;
      LOBYTE(v27) = [v27 _setUserCharacteristic:v32 forType:v5 shouldInsertSample:0 updateProfileAndSync:0 error:&v33];
      v24 = v33;

      *(*(a1[6] + 8) + 24) = v27;
      if ((v27 & 1) == 0)
      {
        v24 = v24;
        if (v24)
        {
          if (a3)
          {
            v28 = v24;
            *a3 = v24;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v14 = 0;
        goto LABEL_34;
      }
    }

    v14 = 1;
LABEL_34:

    goto LABEL_35;
  }

  if (a3)
  {
    v13 = v11;
    v14 = 0;
    *a3 = v12;
  }

  else
  {
    _HKLogDroppedError();
    v14 = 0;
  }

LABEL_36:

  v29 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_queue_updateFitnessModeDefaultAndNotifyIfNecessary
{
  v52 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_32:
    v32 = *MEMORY[0x277D85DE8];
    return;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v2 = [WeakRetained daemon];
  v3 = [v2 behavior];
  if (![v3 isAppleWatch])
  {
    v5 = objc_loadWeakRetained((a1 + 8));
    v6 = [v5 daemon];
    v7 = [v6 behavior];
    v8 = [v7 isiPad];

    if ((v8 & 1) == 0)
    {
      v9 = objc_loadWeakRetained((a1 + 8));
      v10 = [v9 nanoSyncManager];
      v11 = [v10 pairedDevicesSnapshot];
      v12 = [v11 allDeviceInfos];
      v13 = [v12 count];

      if ([*(a1 + 64) BOOLValue])
      {
        v14 = *(a1 + 72);
      }

      else
      {
        v14 = 0;
      }

      v15 = *MEMORY[0x277CCE4C8];
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"HDUserCharacteristicsForceStandalonePhoneFitnessMode", *MEMORY[0x277CCE4C8], 0);
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"HDUserCharacteristicsForceFitnessMode", v15, 0);
      v18 = AppIntegerValue;
      v19 = 2;
      if (v14)
      {
        v19 = 3;
      }

      if (v13)
      {
        v19 = 1;
      }

      if (AppBooleanValue)
      {
        v20 = 1;
      }

      else
      {
        v20 = (v13 == 0) & (v14 ^ 1u);
      }

      if (AppIntegerValue)
      {
        v21 = AppIntegerValue;
      }

      else
      {
        v21 = v19;
      }

      _HKInitializeLogging();
      v22 = MEMORY[0x277CCC2B0];
      v23 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 64);
        v25 = *(a1 + 72);
        *buf = 136316930;
        v37 = "[HDUserCharacteristicsManager _queue_updateFitnessModeDefaultAndNotifyIfNecessary]";
        v38 = 1024;
        v39 = v13 != 0;
        v40 = 2112;
        v41 = v24;
        v42 = 1024;
        v43 = v25;
        v44 = 1024;
        v45 = AppBooleanValue != 0;
        v46 = 2048;
        v47 = v18;
        v48 = 1024;
        v49 = v20;
        v50 = 2048;
        v51 = v21;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%s - hasPairedWatch %d hasWatchOnAccount %@ isCloudSyncEnabled %d isStandalonePhoneFitnessModeForced %d fitnessModeForcedValue %ld isStandalonePhoneFitnessMode %d fitnessMode %lu", buf, 0x42u);
      }

      keyExistsAndHasValidFormat = 0;
      v26 = *MEMORY[0x277CCC260];
      v27 = CFPreferencesGetAppBooleanValue(*MEMORY[0x277CCC260], v15, &keyExistsAndHasValidFormat) == 0;
      if (!keyExistsAndHasValidFormat || ((v20 ^ v27) & 1) == 0)
      {
        CFPreferencesSetAppValue(v26, [MEMORY[0x277CCABB0] numberWithBool:v20], v15);
        _HKInitializeLogging();
        v28 = *v22;
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v37) = v20;
          _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, "Standalone phone fitness mode default value changed to %d. Posting notification!", buf, 8u);
        }

        notify_post(*MEMORY[0x277CCCE08]);
      }

      v34 = 0;
      v29 = *MEMORY[0x277CCC140];
      v30 = CFPreferencesGetAppIntegerValue(*MEMORY[0x277CCC140], v15, &v34);
      if (!v34 || v30 != v21)
      {
        CFPreferencesSetAppValue(v29, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21], v15);
        _HKInitializeLogging();
        v31 = *v22;
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v37 = v21;
          _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "Fitness mode default value changed to %lu. Posting notification!", buf, 0xCu);
        }

        notify_post(*MEMORY[0x277CCC148]);
      }
    }

    goto LABEL_32;
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary:(uint64_t)a1
{
  if (a1)
  {
    v4 = arc4random_uniform(0x12Cu);
    v5 = dispatch_time(0, 1000000000 * v4);
    v6 = *(a1 + 16);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __91__HDUserCharacteristicsManager__updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary___block_invoke;
    v7[3] = &unk_278618990;
    v8 = a2;
    v7[4] = a1;
    dispatch_after(v5, v6, v7);
  }
}

void __91__HDUserCharacteristicsManager__updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary___block_invoke(uint64_t a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 64);
    *(v2 + 64) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 8));
    v6 = [WeakRetained daemon];
    v7 = [v6 behavior];
    v8 = [v7 isAppleWatch];

    if ((v8 & 1) == 0)
    {
      v9 = *MEMORY[0x277CCE4C8];
      v10 = CFPreferencesCopyAppValue(@"HasWatchOnAccountLastFetchDate", *MEMORY[0x277CCE4C8]);
      v11 = [MEMORY[0x277CBEAA8] date];
      v12 = [v11 dateByAddingTimeInterval:-28800.0];

      v13 = [v10 hk_isAfterDate:v12];
      if (*(v4 + 64) && v13)
      {
        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[HDUserCharacteristicsManager _queue_updateHasWatchOnAccount]";
          *&buf[12] = 2114;
          *&buf[14] = v10;
          _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%s not updating has watch on account; last fetch %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v15 = [MEMORY[0x277CF0130] sharedInstance];
        v16 = [v15 primaryAuthKitAccount];

        v17 = [v16 aa_altDSID];

        if (v17)
        {
          v18 = objc_alloc_init(MEMORY[0x277CF0178]);
          v19 = objc_alloc_init(MEMORY[0x277CF0220]);
          v20 = [v16 aa_altDSID];
          [v19 setAltDSID:v20];

          v54[0] = @"watchOS";
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
          [v19 setOperatingSystems:v21];

          v40 = 0;
          v41 = &v40;
          v42 = 0x2020000000;
          v43 = 1;
          v34 = 0;
          v35 = &v34;
          v36 = 0x3032000000;
          v37 = __Block_byref_object_copy__36;
          v38 = __Block_byref_object_dispose__36;
          v39 = MEMORY[0x277CBEC28];
          v22 = dispatch_semaphore_create(0);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __62__HDUserCharacteristicsManager__queue_updateHasWatchOnAccount__block_invoke;
          v49 = &unk_2786189B8;
          v50 = v4;
          v52 = &v40;
          v53 = &v34;
          v23 = v18;
          v24 = v22;
          v51 = v24;
          [v18 deviceListWithContext:v19 completion:buf];
          v25 = dispatch_time(0, 10000000000);
          if (dispatch_semaphore_wait(v24, v25))
          {
            _HKInitializeLogging();
            v26 = *MEMORY[0x277CCC2B0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
            {
              *block = 138543362;
              *&block[4] = v4;
              _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch device list; semaphore timed out", block, 0xCu);
            }
          }

          else if (*(v41 + 24) == 1)
          {
            _HKInitializeLogging();
            log = *MEMORY[0x277CCC2B0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(v4 + 64);
              v28 = v35[5];
              *block = 136315650;
              *&block[4] = "[HDUserCharacteristicsManager _queue_updateHasWatchOnAccount]";
              *&block[12] = 2114;
              *&block[14] = v27;
              *&block[22] = 2114;
              v45 = v28;
              _os_log_impl(&dword_228986000, log, OS_LOG_TYPE_DEFAULT, "%s fetched has watch on account; %{public}@ -> %{public}@", block, 0x20u);
            }

            v29 = [MEMORY[0x277CBEAA8] date];
            CFPreferencesSetAppValue(@"HasWatchOnAccountLastFetchDate", v29, v9);

            v30 = *(v4 + 16);
            *block = MEMORY[0x277D85DD0];
            *&block[8] = 3221225472;
            *&block[16] = __62__HDUserCharacteristicsManager__queue_updateHasWatchOnAccount__block_invoke_367;
            v45 = &unk_278617198;
            v46 = v4;
            v47 = &v34;
            dispatch_async(v30, block);
          }

          _Block_object_dispose(&v34, 8);
          _Block_object_dispose(&v40, 8);
        }
      }
    }
  }

  v31 = *(a1 + 32);
  v32 = *MEMORY[0x277D85DE8];

  [(HDUserCharacteristicsManager *)v31 _queue_updateFitnessModeDefaultAndNotifyIfNecessary];
}

void __62__HDUserCharacteristicsManager__queue_updateHasWatchOnAccount__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 && v6)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = v8;
      v17 = [v7 localizedDescription];
      v18 = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v17;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch device list: %{public}@", &v18, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v9 = MEMORY[0x277CCABB0];
  v10 = [v5 deviceList];
  v11 = [v9 numberWithInt:{objc_msgSend(v10, "count") != 0}];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  dispatch_semaphore_signal(*(a1 + 40));
  v14 = *MEMORY[0x277D85DE8];
}

void __62__HDUserCharacteristicsManager__queue_updateHasWatchOnAccount__block_invoke_367(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = [v3 BOOLValue];
    if (v4 == [*(*(*(a1 + 40) + 8) + 40) BOOLValue])
    {
      return;
    }

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 64), *(*(*(a1 + 40) + 8) + 40));
  CFPreferencesSetAppValue(*MEMORY[0x277CCC178], *(*(*(a1 + 40) + 8) + 40), *MEMORY[0x277CCE4C8]);
  v5 = *(a1 + 32);

  [(HDUserCharacteristicsManager *)v5 _queue_updateFitnessModeDefaultAndNotifyIfNecessary];
}

id __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_372(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEA80];
  v3 = a2;
  v4 = [v2 currentCalendar];
  v5 = [v4 dateFromComponents:v3];

  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v4 components:4 fromDate:v5 toDate:v6 options:0];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "year")}];

  return v8;
}

id __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_2_376(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCDAB0];
  v3 = a2;
  v4 = [v2 gramUnitWithMetricPrefix:9];
  [v3 doubleValueForUnit:v4];
  v6 = v5;

  if (v6 <= 2.22044605e-16)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  }

  return v7;
}

id __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_3_380(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCDAB0];
  v3 = a2;
  v4 = [v2 meterUnit];
  [v3 doubleValueForUnit:v4];
  v6 = v5;

  if (v6 <= 2.22044605e-16)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  }

  return v7;
}

uint64_t __68__HDUserCharacteristicsManager__queue_updateQuantityCharacteristics__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v38 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v29 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v29)
  {
    v26 = 1;
    goto LABEL_32;
  }

  v24 = v4;
  v25 = a3;
  v28 = *v34;
  v26 = 1;
  do
  {
    v5 = 0;
    do
    {
      if (*v34 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v33 + 1) + 8 * v5);
      v7 = [v6 _relatedQuantityType];
      v8 = *(v4 + 40);
      v32 = 0;
      if (v8)
      {
        v9 = [(HDUserCharacteristicsManager *)v8 _mostRecentSampleOfType:v7 beforeDate:0 error:&v32];
        v10 = v32;
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      v11 = v10;
      v12 = [v9 quantity];
      if (v9)
      {
        [*(v4 + 48) setObject:v9 forKeyedSubscript:v6];
      }

      else if (v11)
      {
        v19 = v11;
        v18 = 0;
        v26 = 0;
        *v25 = v11;
        goto LABEL_25;
      }

      v13 = *(v4 + 40);
      v30 = 0;
      v31 = 0;
      v14 = [(HDUserCharacteristicsManager *)v13 _userCharacteristicForType:v6 entity:&v31 error:&v30];
      v15 = v31;
      v16 = v30;
      v17 = v16;
      if (v15)
      {
        [*(v4 + 56) setObject:v15 forKeyedSubscript:v6];
      }

      else if (v16)
      {
        if (v25)
        {
          v20 = v16;
          v18 = 0;
          v26 = 0;
          *v25 = v17;
        }

        else
        {
          _HKLogDroppedError();
          v18 = 0;
          v26 = 0;
        }

        v4 = v24;
        goto LABEL_24;
      }

      if (v12 == v14 || v14 && ([v12 isEqual:v14] & 1) != 0)
      {
        v18 = 1;
      }

      else
      {
        v18 = 1;
        *(*(*(v4 + 64) + 8) + 24) = 1;
      }

LABEL_24:

LABEL_25:
      if (!v18)
      {
        goto LABEL_32;
      }

      ++v5;
    }

    while (v29 != v5);
    v21 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    v29 = v21;
  }

  while (v21);
LABEL_32:

  v22 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

uint64_t __68__HDUserCharacteristicsManager__queue_updateQuantityCharacteristics__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 32);
  v30 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v30)
  {
    v27 = a3;
    v29 = *v36;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v36 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v35 + 1) + 8 * v5);
      v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
      v31 = [v7 quantity];
      v8 = *(a1 + 48);
      v33 = 0;
      v34 = 0;
      v9 = [(HDUserCharacteristicsManager *)v8 _userCharacteristicForType:v6 entity:&v34 error:&v33];
      v10 = v34;
      v11 = v33;
      v12 = [*(a1 + 56) objectForKeyedSubscript:v6];
      v13 = [v12 persistentID];
      v14 = [v10 persistentID];
      if (!v11)
      {
        v15 = v14;
        if (v13 != v14)
        {
          break;
        }
      }

      if (v11)
      {
        goto LABEL_19;
      }

      v17 = v31;
      if (v31 != v9)
      {
        if (!v9 || ([v31 isEqual:v9] & 1) == 0)
        {
          _HKInitializeLogging();
          v18 = *MEMORY[0x277CCC2B0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v40 = v6;
            _os_log_debug_impl(&dword_228986000, v18, OS_LOG_TYPE_DEBUG, "Updating quantity characteristic for %@", buf, 0xCu);
          }

          v19 = *(a1 + 48);
          v20 = [v7 quantity];
          v32 = 0;
          LOBYTE(v19) = [v19 _setUserCharacteristic:v20 forType:v6 shouldInsertSample:0 updateProfileAndSync:0 error:&v32];
          v11 = v32;

          *(*(*(a1 + 64) + 8) + 24) = (*(*(*(a1 + 64) + 8) + 24) | v19) & 1;
          if ((v19 & 1) == 0)
          {
            v22 = v11;
            v23 = v22;
            if (v22)
            {
              if (v27)
              {
                v24 = v22;
                *v27 = v23;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v21 = 0;
            goto LABEL_28;
          }

          goto LABEL_19;
        }

        v11 = 0;
      }

LABEL_20:

      if (v30 == ++v5)
      {
        v30 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v30)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }

    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v40 = v13;
      v41 = 2048;
      v42 = v15;
      _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "Not updating quantity characteristic: kv row changed from %lld to %lld", buf, 0x16u);
    }

    v11 = 0;
LABEL_19:
    v17 = v31;
    goto LABEL_20;
  }

LABEL_22:
  v21 = 1;
LABEL_28:

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)_mostRecentSampleOfType:(void *)a3 beforeDate:(uint64_t)a4 error:
{
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = HDSampleEntityPredicateForStartDate(3);
  }

  else
  {
    v9 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v11 = [HDSampleEntity mostRecentSampleWithType:v7 profile:WeakRetained encodingOptions:0 predicate:v9 anchor:0 error:a4];

  return v11;
}

- (void)profileDidBecomeReady:(id)a3
{
  v68[1] = *MEMORY[0x277D85DE8];
  v46 = a3;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained cloudSyncManager];
  v60 = 0;
  v6 = [v5 canPerformCloudSyncWithError:&v60];
  v44 = v60;
  self->_isCloudSyncEnabled = v6;

  objc_initWeak(&location, self);
  queue = self->_queue;
  handler = MEMORY[0x277D85DD0];
  v65 = 3221225472;
  v66 = __67__HDUserCharacteristicsManager__registerForTimeChangeNotifications__block_invoke;
  v67 = &unk_278613BF0;
  objc_copyWeak(v68, &location);
  notify_register_dispatch("SignificantTimeChangeNotification", &self->_significantTimeChangeNotificationToken, queue, &handler);
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel_didReceiveDayChangeNotification_ name:*MEMORY[0x277CBE580] object:0];

  objc_destroyWeak(v68);
  objc_destroyWeak(&location);
  v9 = objc_loadWeakRetained(&self->_profile);
  v10 = [v9 daemon];
  v11 = [v10 behavior];
  v12 = [v11 isAppleWatch];

  if ((v12 & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v13 addObserver:self selector:sel_didReceiveAuthKitDeviceListChangeNotification_ name:*MEMORY[0x277CF0010] object:0];
  }

  objc_initWeak(&location, self);
  v14 = objc_alloc(MEMORY[0x277CCDD98]);
  v15 = self->_queue;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __54__HDUserCharacteristicsManager_profileDidBecomeReady___block_invoke;
  v58[3] = &unk_278616F38;
  objc_copyWeak(&v59, &location);
  v16 = [v14 initWithMode:0 queue:v15 delay:v58 block:3.0];
  updateOperation = self->_updateOperation;
  self->_updateOperation = v16;

  v18 = objc_loadWeakRetained(&self->_profile);
  v19 = [v18 dataManager];
  v20 = objc_loadWeakRetained(&self->_profile);
  v21 = [v20 daemon];
  v22 = [v21 behavior];
  v23 = [v22 isAppleWatch];

  if ((v23 & 1) == 0)
  {
    v24 = [v18 nanoSyncManager];
    [v24 addObserver:self];

    v25 = [v18 cloudSyncManager];
    [v25 addObserver:self queue:self->_queue];
  }

  if (self->_shouldUpdateQuantityCharacteristics)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v26 = QuantityCharacteristicTypes();
    v27 = [v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v27)
    {
      v28 = *v55;
      do
      {
        v29 = 0;
        do
        {
          if (*v55 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = [*(*(&v54 + 1) + 8 * v29) _relatedQuantityType];
          [v19 addObserver:self forDataType:v30];

          ++v29;
        }

        while (v27 != v29);
        v27 = [v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v27);
    }
  }

  if (self->_shouldUpdateCategoryCharacteristics)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v31 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB10]];
    handler = v31;
    v32 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB20]];
    v65 = v32;
    v33 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB08]];
    v66 = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&handler count:3];

    v35 = [v34 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v35)
    {
      v36 = *v51;
      do
      {
        v37 = 0;
        do
        {
          if (*v51 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = [*(*(&v50 + 1) + 8 * v37) _relatedCategoryType];
          [v19 addObserver:self forDataType:v38];

          ++v37;
        }

        while (v35 != v37);
        v35 = [v34 countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v35);
    }
  }

  v39 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:{*MEMORY[0x277CCBB00], v44}];
  v40 = [v39 _relatedCategoryType];
  [v19 addObserver:self forDataType:v40];

  v41 = [v18 database];
  [v41 addProtectedDataObserver:self queue:self->_queue];

  if (!_HDIsUnitTesting)
  {
    v42 = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HDUserCharacteristicsManager_profileDidBecomeReady___block_invoke_2;
    block[3] = &unk_2786177F8;
    v48 = v18;
    objc_copyWeak(&v49, &location);
    dispatch_async(v42, block);
    objc_destroyWeak(&v49);
  }

  objc_destroyWeak(&v59);
  objc_destroyWeak(&location);

  v43 = *MEMORY[0x277D85DE8];
}

void __54__HDUserCharacteristicsManager_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDUserCharacteristicsManager *)WeakRetained _queue_updateCharacteristicsAndUserProfile];
}

void __54__HDUserCharacteristicsManager_profileDidBecomeReady___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = [v2 isProtectedDataAvailable];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [(HDUserCharacteristicsManager *)WeakRetained _queue_updateCharacteristicsAndUserProfile];
  }
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v4 && self->_needsUpdateAfterUnlock)
  {

    [(HDUserCharacteristicsManager *)self _queue_updateCharacteristicsAndUserProfile];
  }
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDUserCharacteristicsManager_samplesAdded_anchor___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDUserCharacteristicsManager_samplesOfTypesWereRemoved_anchor___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)diagnosticDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = v3;
  if (self->_needsUpdateAfterUnlock)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [v3 appendFormat:@"Needs update after unlock: %s\n", v5];
  userProfileLastUpdated = self->_userProfileLastUpdated;
  v7 = HKDiagnosticStringFromDate();
  [v4 appendFormat:@"Profile last updated: %@\n", v7];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [WeakRetained daemon];
  v10 = [v9 behavior];
  v11 = [v10 isAppleInternalInstall];

  if (v11)
  {
    lastUserProfile = self->_lastUserProfile;
    if (!lastUserProfile)
    {
      lastUserProfile = &stru_283BF39C8;
    }

    [v4 appendFormat:@"Last user profile: %@", lastUserProfile];
  }

  return v4;
}

- (void)nanoSyncManager:(id)a3 pairedDevicesChanged:(id)a4
{
  v5 = a4;
  v6 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"HDUserCharacteristicsManager.nanoSyncManager:pairedDevicesChanged:"];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HDUserCharacteristicsManager_nanoSyncManager_pairedDevicesChanged___block_invoke;
  block[3] = &unk_278613830;
  v11 = v5;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(queue, block);
}

uint64_t __69__HDUserCharacteristicsManager_nanoSyncManager_pairedDevicesChanged___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) allDeviceInfos];
  v3 = [v2 count];

  if (v3)
  {
    [(HDUserCharacteristicsManager *)*(a1 + 40) _queue_updateFitnessModeDefaultAndNotifyIfNecessary];
  }

  else
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[HDUserCharacteristicsManager nanoSyncManager:pairedDevicesChanged:]_block_invoke";
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%s updating the watch on account state for a paired devices change", &v7, 0xCu);
    }

    [(HDUserCharacteristicsManager *)*(a1 + 40) _updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary:?];
  }

  result = [*(a1 + 48) invalidate];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cloudSyncManager:(id)a3 didUpdateSyncEnabled:(BOOL)a4
{
  if (self->_isCloudSyncEnabled != a4)
  {
    self->_isCloudSyncEnabled = a4;
    [(HDUserCharacteristicsManager *)self _queue_updateFitnessModeDefaultAndNotifyIfNecessary];
  }
}

- (void)didReceiveDayChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HDUserCharacteristicsManager_didReceiveDayChangeNotification___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __67__HDUserCharacteristicsManager__registerForTimeChangeNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDUserCharacteristicsManager *)WeakRetained _queue_updateCharacteristicsAndUserProfileWithDelay];
}

- (void)didReceiveAuthKitDeviceListChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HDUserCharacteristicsManager_didReceiveAuthKitDeviceListChangeNotification___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __78__HDUserCharacteristicsManager_didReceiveAuthKitDeviceListChangeNotification___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[HDUserCharacteristicsManager didReceiveAuthKitDeviceListChangeNotification:]_block_invoke";
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%s updating the watch on account state for a device list change", &v4, 0xCu);
  }

  [(HDUserCharacteristicsManager *)*(a1 + 32) _updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary:?];
  v3 = *MEMORY[0x277D85DE8];
}

- (void)addProfileObserver:(id)a3
{
  v4 = a3;
  [(HDUserCharacteristicsProfileObserver *)self->_observers registerObserver:v4];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HDUserCharacteristicsManager_addProfileObserver___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __51__HDUserCharacteristicsManager_addProfileObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(v4 + 24);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__HDUserCharacteristicsManager_addProfileObserver___block_invoke_2;
    v7[3] = &unk_278618A90;
    v7[4] = v4;
    v8 = v2;
    [v6 notifyObserver:v5 handler:v7];
  }
}

- (void)unitTest_updateCharacteristicsAndUserProfileWithDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__HDUserCharacteristicsManager_unitTest_updateCharacteristicsAndUserProfileWithDate_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __96__HDUserCharacteristicsManager_unitTest_updateCharacteristicsAndUserProfileWithDate_completion___block_invoke(uint64_t a1)
{
  [(HDUserCharacteristicsManager *)*(a1 + 32) _queue_updateCharacteristicsAndUserProfileWithDate:?];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

@end