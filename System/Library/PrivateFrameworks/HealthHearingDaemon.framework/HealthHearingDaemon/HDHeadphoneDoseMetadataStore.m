@interface HDHeadphoneDoseMetadataStore
- (BOOL)_clearPreviousSevenDayLocalNotificationFireDateWithError:(id *)a3;
- (BOOL)_clearPreviousSevenDayRemoteNotificationFireDateWithError:(id *)a3;
- (BOOL)_overrideDoseLimit:(id)a3 error:(id *)a4;
- (BOOL)_rebuildCachedFireDateFromLocalHAENStoreWithNow:(id)a3 error:(id *)a4;
- (BOOL)_shouldRebuildPreviousSevenDayNotificationWithError:(id *)a3;
- (BOOL)_shouldRebuildSevenDayStatisticsWithError:(id *)a3;
- (BOOL)_updateCacheWithFireDate:(id)a3 fromRemoteNotification:(BOOL)a4 changed:(BOOL *)a5 error:(id *)a6;
- (BOOL)rebuildCachedFireDateFromLocalHAENStoreIfNeededWithError:(id *)a3;
- (BOOL)rebuildCachedFireDateFromLocalHAENStoreWithError:(id *)a3;
- (BOOL)shouldNotifyUserForAccumulatedDose:(double)a3;
- (HDHeadphoneDoseMetadataStore)initWithProfile:(id)a3;
- (HKProfileIdentifier)_profileIdentifier;
- (id)_fetchDoseLimitInfoWithError:(id *)a3;
- (id)_fetchPreviousSevenDayLocalNotificationFireDateWithError:(id *)a3;
- (id)_fetchPreviousSevenDayLocalNotificationFireDateWithNow:(id)a3 error:(id *)a4;
- (id)_fetchPreviousSevenDayRemoteNotificationFireDateWithError:(id *)a3;
- (id)_fetchPreviousSevenDayRemoteNotificationFireDateWithNow:(id)a3 error:(id *)a4;
- (id)_filterForValidateFireDate:(id)a3 now:(id)a4 error:(id *)a5;
- (id)_info;
- (id)_infoDict;
- (id)_infoForAccumulatedDoseAtFireDate:(id)a3;
- (id)_infoForSevenDayDoseAtFireDate:(id)a3;
- (id)_lock_fetchDoseLimitInfoWithError:(id *)a3;
- (id)_mostRecentSevenDayLocalNotificationWithNow:(id)a3 error:(id *)a4;
- (id)collectionIntervalForDoseAccumulated:(double)a3;
- (int64_t)_updatePreviousSevenDayLocalNotificationFireDateWithSamplesInserted:(id)a3 now:(id)a4 error:(id *)a5;
- (int64_t)updatePreviousSevenDayLocalNotificationFireDateWithSamplesInserted:(id)a3 error:(id *)a4;
- (int64_t)updatePreviousSevenDayRemoteNotificationFireDateWith:(id)a3 error:(id *)a4;
- (void)_lock_loadDoseLimitOverride;
- (void)_lock_loadDoseLimitOverrideIfNeeded;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDHeadphoneDoseMetadataStore

- (HDHeadphoneDoseMetadataStore)initWithProfile:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDHeadphoneDoseMetadataStore;
  v5 = [(HDHeadphoneDoseMetadataStore *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = [objc_alloc(MEMORY[0x277D10718]) initWithCategory:0 domainName:@"Hearing" profile:v4];
    domain = v6->_domain;
    v6->_domain = v7;

    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_doseLimit = 1.0;
    v9 = [MEMORY[0x277CCDD30] isAppleInternalInstall];
    v10 = 0;
    if (v9)
    {
      v10 = [MEMORY[0x277CCDD30] isTestingDevice] ^ 1;
    }

    v6->_shouldLoadDoseLimitOverride = v10;
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];

    v12 = v6;
  }

  return v6;
}

- (void)_lock_loadDoseLimitOverrideIfNeeded
{
  os_unfair_lock_assert_owner(&self->_lock);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && self->_shouldLoadDoseLimitOverride)
  {
    self->_shouldLoadDoseLimitOverride = 0;

    [(HDHeadphoneDoseMetadataStore *)self _lock_loadDoseLimitOverride];
  }
}

- (void)_lock_loadDoseLimitOverride
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = @"_SevenDayHeadphoneExposureDoseNotificationThreshold";
  _os_log_error_impl(&dword_251764000, log, OS_LOG_TYPE_ERROR, "Unable to read value for AppleInternal key %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldNotifyUserForAccumulatedDose:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HDHeadphoneDoseMetadataStore *)self _lock_loadDoseLimitOverrideIfNeeded];
  v5 = self->_doseLimit <= a3;
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (int64_t)updatePreviousSevenDayLocalNotificationFireDateWithSamplesInserted:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 now];
  v9 = [(HDHeadphoneDoseMetadataStore *)self _updatePreviousSevenDayLocalNotificationFireDateWithSamplesInserted:v7 now:v8 error:a4];

  return v9;
}

- (int64_t)updatePreviousSevenDayRemoteNotificationFireDateWith:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 now];
  v9 = [(HDHeadphoneDoseMetadataStore *)self _updatePreviousSevenDayNotificationFireDateWith:v7 fromRemoteNotification:1 isLocalDevice:0 now:v8 error:a4];

  return v9;
}

- (BOOL)rebuildCachedFireDateFromLocalHAENStoreIfNeededWithError:(id *)a3
{
  v12 = 0;
  v5 = [(HDHeadphoneDoseMetadataStore *)self _shouldRebuildPreviousSevenDayNotificationWithError:&v12];
  v6 = v12;
  if (v6)
  {
    if (a3)
    {
      v7 = v6;
      v8 = 0;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
      v8 = 0;
    }
  }

  else if (v5)
  {
    v8 = [(HDHeadphoneDoseMetadataStore *)self rebuildCachedFireDateFromLocalHAENStoreWithError:a3];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_251764000, v9, OS_LOG_TYPE_DEFAULT, "Rebuild largest recent dose is not needed yet.", v11, 2u);
    }

    v8 = 1;
  }

  return v8;
}

- (BOOL)rebuildCachedFireDateFromLocalHAENStoreWithError:(id *)a3
{
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(a3) = [(HDHeadphoneDoseMetadataStore *)self _rebuildCachedFireDateFromLocalHAENStoreWithNow:v5 error:a3];

  return a3;
}

- (id)collectionIntervalForDoseAccumulated:(double)a3
{
  if ([MEMORY[0x277D11268] unitTesting_forceDefaultHeadphoneDataCollectionInterval])
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_lock);
  doseLimit = self->_doseLimit;
  os_unfair_lock_unlock(&self->_lock);
  v7 = doseLimit - a3;
  if (doseLimit - a3 <= 0.01)
  {
    return &unk_2863A9AB8;
  }

  if (v7 <= 0.03)
  {
    return &unk_2863A9AD0;
  }

  if (v7 <= 0.05)
  {
    return &unk_2863A9AE8;
  }

  if (v7 <= 0.1)
  {
    return &unk_2863A9B00;
  }

  if (v7 <= 0.3)
  {
    return &unk_2863A9CF8;
  }

  if (v7 >= 0.6)
  {
    return 0;
  }

  return &unk_2863A9D08;
}

- (void)profileDidBecomeReady:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HDHeadphoneDoseMetadataStore *)self _lock_loadDoseLimitOverrideIfNeeded];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_rebuildCachedFireDateFromLocalHAENStoreWithNow:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC2C8];
  v8 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251764000, v8, OS_LOG_TYPE_DEFAULT, "Rebuilding Previous 7-day HAEN Fire Date.", buf, 2u);
  }

  if ([MEMORY[0x277D11268] isHeadphoneExposureNotificationsEnabled])
  {
    v21 = 0;
    v9 = [(HDHeadphoneDoseMetadataStore *)self _mostRecentSevenDayLocalNotificationWithNow:v6 error:&v21];
    v10 = v21;
    v11 = v10;
    if (!v9 && v10)
    {
      if (a4)
      {
        v12 = v10;
        v13 = 0;
        *a4 = v11;
LABEL_16:

        goto LABEL_17;
      }

      _HKLogDroppedError();
LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }

    if (![(HDHeadphoneDoseMetadataStore *)self _setPreviousSevenDayLocalNotificationFireDate:v9 error:a4]|| ![(HDHeadphoneDoseMetadataStore *)self _setShouldRebuildPreviousSevenDayNotification:0 error:a4])
    {
      goto LABEL_15;
    }

    _HKInitializeLogging();
    v14 = *v7;
    v15 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v15)
      {
        *buf = 138412290;
        v23 = v9;
        v16 = "Updated Previous 7-day HAEN Fire Date to %@.";
        v17 = v14;
        v18 = 12;
LABEL_20:
        _os_log_impl(&dword_251764000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

    else if (v15)
    {
      *buf = 0;
      v16 = "Cleared Previous 7-day HAEN Fire Date, no recent HAENs.";
      v17 = v14;
      v18 = 2;
      goto LABEL_20;
    }

    v13 = 1;
    goto LABEL_16;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a4 code:111 description:@"Feature Disabled: 7-Day HAEN"];
  v13 = 0;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_mostRecentSevenDayLocalNotificationWithNow:(id)a3 error:(id *)a4
{
  v31[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277D10B20];
  v8 = HKHeadphoneAudioExposureEventType();
  v9 = HDSampleEntityPredicateForDataType();
  v31[0] = v9;
  v10 = HDCategorySampleEntityPredicateForValue();
  v31[1] = v10;
  v11 = HDSampleEntityPredicateForEndDate();
  v31[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v13 = [v7 predicateMatchingAllPredicates:v12];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v14 = MEMORY[0x277D105E8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [v14 entityEnumeratorWithProfile:WeakRetained];

  [v16 setPredicate:v13];
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD38] ascending:0];
  v30 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  [v16 setSortDescriptors:v18];

  [v16 setLimitCount:1];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82__HDHeadphoneDoseMetadataStore__mostRecentSevenDayLocalNotificationWithNow_error___block_invoke;
  v23[3] = &unk_2796C6510;
  v23[4] = &v24;
  if ([v16 enumerateWithError:a4 handler:v23])
  {
    v19 = v25[5];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  _Block_object_dispose(&v24, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

BOOL __82__HDHeadphoneDoseMetadataStore__mostRecentSevenDayLocalNotificationWithNow_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = HKSafeObject();

  if (v4)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5 || ([v4 endDate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "hk_isBeforeDate:", v6), v6, v7))
    {
      v8 = [v4 endDate];
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

  return v4 != 0;
}

- (HKProfileIdentifier)_profileIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained profileIdentifier];

  return v3;
}

- (id)_fetchPreviousSevenDayLocalNotificationFireDateWithError:(id *)a3
{
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [(HDHeadphoneDoseMetadataStore *)self _fetchPreviousSevenDayLocalNotificationFireDateWithNow:v5 error:a3];

  return v6;
}

- (id)_fetchPreviousSevenDayLocalNotificationFireDateWithNow:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDKeyValueDomain *)self->_domain dateForKey:@"_PreviousSevenDayHeadphoneExposureNotificationFireDate" error:a4];
  if (v7)
  {
    v8 = [(HDHeadphoneDoseMetadataStore *)self _filterForValidateFireDate:v7 now:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_clearPreviousSevenDayLocalNotificationFireDateWithError:(id *)a3
{
  domain = self->_domain;
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"_PreviousSevenDayHeadphoneExposureNotificationFireDate"];
  LOBYTE(a3) = [(HDKeyValueDomain *)domain removeValuesForKeys:v5 error:a3];

  return a3;
}

- (id)_fetchPreviousSevenDayRemoteNotificationFireDateWithError:(id *)a3
{
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [(HDHeadphoneDoseMetadataStore *)self _fetchPreviousSevenDayRemoteNotificationFireDateWithNow:v5 error:a3];

  return v6;
}

- (id)_fetchPreviousSevenDayRemoteNotificationFireDateWithNow:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDKeyValueDomain *)self->_domain dateForKey:@"_PreviousSevenDayHeadphoneExposureRemoteNotificationFireDate" error:a4];
  if (v7)
  {
    v8 = [(HDHeadphoneDoseMetadataStore *)self _filterForValidateFireDate:v7 now:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_clearPreviousSevenDayRemoteNotificationFireDateWithError:(id *)a3
{
  domain = self->_domain;
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"_PreviousSevenDayHeadphoneExposureRemoteNotificationFireDate"];
  LOBYTE(a3) = [(HDKeyValueDomain *)domain removeValuesForKeys:v5 error:a3];

  return a3;
}

- (BOOL)_shouldRebuildSevenDayStatisticsWithError:(id *)a3
{
  domain = self->_domain;
  v10 = 0;
  v5 = [(HDKeyValueDomain *)domain numberForKey:@"_ShouldRebuildSevenDayHeadphoneExposureStatistics" error:&v10];
  v6 = v10;
  if (v6)
  {
    if (a3)
    {
      v7 = v6;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_8;
  }

  if (!v5)
  {
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  v8 = [v5 BOOLValue];
LABEL_9:

  return v8;
}

- (BOOL)_shouldRebuildPreviousSevenDayNotificationWithError:(id *)a3
{
  v3 = [(HDKeyValueDomain *)self->_domain numberForKey:@"_ShouldRebuildPreviousSevenDayHeadphoneExposureNotification" error:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_info
{
  v2 = [(HDHeadphoneDoseMetadataStore *)self _infoDict];
  v3 = [v2 objectForKeyedSubscript:@"recent_seven_day_haen_error"];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v2 objectForKeyedSubscript:@"recent_seven_day_haen_error"];
    v6 = [v4 stringWithFormat:@"Recent 7-Day HAEN:\t Error (%@)", v5];
LABEL_3:
    v7 = v6;

    goto LABEL_6;
  }

  v8 = [v2 objectForKeyedSubscript:@"recent_seven_day_haen_nil"];

  if (!v8)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [v5 appendString:@"Recent 7-Day HAEN:\n"];
    v10 = [v2 objectForKeyedSubscript:@"previous_fire_date"];
    [v5 appendFormat:@"\tFireDate:\t  %@\n", v10];

    v11 = [v2 objectForKeyedSubscript:@"seven_day_dose"];
    [v5 appendFormat:@"\t7-Day Dose:\t  %@\n", v11];

    v12 = [v2 objectForKeyedSubscript:@"accumulated_dose_from_fire_date"];
    [v5 appendFormat:@"\tAccumulated Dose: %@\n", v12];

    v6 = [v5 copy];
    goto LABEL_3;
  }

  v7 = @"Recent 7-Day HAEN:\t None";
LABEL_6:

  return v7;
}

- (id)_infoDict
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = 0;
  v4 = [HDHeadphoneAudioExposurePolicyDeterminer determinePreviousFireDateWithStore:self error:&v14];
  v5 = v14;
  v6 = v5;
  if (v4)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v4];
    [v3 setObject:v7 forKeyedSubscript:@"previous_fire_date"];

    v8 = [(HDHeadphoneDoseMetadataStore *)self _infoForSevenDayDoseAtFireDate:v4];
    [v3 setObject:v8 forKeyedSubscript:@"seven_day_dose"];

    v9 = [(HDHeadphoneDoseMetadataStore *)self _infoForAccumulatedDoseAtFireDate:v4];
    [v3 setObject:v9 forKeyedSubscript:@"accumulated_dose_from_fire_date"];

    v10 = [v3 copy];
  }

  else
  {
    if (v5)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"error (%@)", v5];
      [v3 setObject:v11 forKeyedSubscript:@"recent_seven_day_haen_error"];
    }

    else
    {
      [v3 setObject:@"none" forKeyedSubscript:@"recent_seven_day_haen_nil"];
    }

    v10 = v3;
  }

  v12 = v10;

  return v12;
}

- (id)_fetchDoseLimitInfoWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDHeadphoneDoseMetadataStore *)self _lock_fetchDoseLimitInfoWithError:a3];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_fetchDoseLimitInfoWithError:(id *)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  domain = self->_domain;
  v22 = 0;
  v6 = [(HDKeyValueDomain *)domain numberForKey:@"_SevenDayHeadphoneExposureDoseNotificationThreshold" error:&v22];
  v7 = v22;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    doseLimit = self->_doseLimit;
    if (v6)
    {
      [v6 doubleValue];
      v12 = doseLimit - v11;
      if (v12 < 0.0)
      {
        v12 = -v12;
      }

      v13 = @"[Current] %.2f%%\n [After Reboot] %@";
      if (v12 <= 2.22044605e-16)
      {
        v16 = 0;
      }

      else
      {
        [v6 doubleValue];
        if (v14 > 5.0 || v14 < 0.01)
        {
          v13 = @"[Current] %.2f%%\n [Invalid] %@";
        }

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f%% (Override)", v14 * 100.0];
      }
    }

    else
    {
      v19 = doseLimit + -1.0;
      if (doseLimit + -1.0 < 0.0)
      {
        v19 = -(doseLimit + -1.0);
      }

      if (v19 <= 2.22044605e-16)
      {
        v16 = 0;
      }

      else
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f%% (Default)", 0x4059000000000000];
      }

      v13 = @"[Current] %.2f%%\n [After Reboot] %@";
    }

    if ([v16 length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:v13, self->_doseLimit * 100.0, v16];
    }

    else
    {
      v20 = @"Override";
      if (!v6)
      {
        v20 = @"Default";
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f%% (%@)", self->_doseLimit * 100.0, v20];
    }
    v18 = ;
  }

  else if (a3)
  {
    v17 = v7;
    v18 = 0;
    *a3 = v8;
  }

  else
  {
    _HKLogDroppedError();
    v18 = 0;
  }

  return v18;
}

- (BOOL)_overrideDoseLimit:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && (([v6 doubleValue], v8 < 0.01) || v8 > 5.0) && (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Dose Limit %.2f%% is outside the range %.2f%% - %.2f%% (Default: %.2f%%)", v8 * 100.0, 0x3FF0000000000000, 0x407F400000000000, 0x4059000000000000), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCA9B8], "hk_error:description:", 3, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, (v11 = v10) != 0))
  {
    v12 = v11;
    if (a4)
    {
      v13 = v11;
      *a4 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }

    LOBYTE(v14) = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v14 = [(HDKeyValueDomain *)self->_domain setNumber:v7 forKey:@"_SevenDayHeadphoneExposureDoseNotificationThreshold" error:a4];
    if (v14)
    {
      [(HDHeadphoneDoseMetadataStore *)self _lock_loadDoseLimitOverride];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  return v14;
}

- (id)_infoForSevenDayDoseAtFireDate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [HDHeadphoneAudioExposureStatisticsBucket _currentDoseStringForEndDate:v4 earliestStartDate:0 profile:WeakRetained];

  return v6;
}

- (id)_infoForAccumulatedDoseAtFireDate:(id)a3
{
  v4 = a3;
  v5 = [v4 dateByAddingTimeInterval:-1.0];
  v14 = 0;
  v6 = [(HDHeadphoneDoseMetadataStore *)self _mostRecentSevenDayLocalNotificationWithNow:v5 error:&v14];
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v11 = [HDHeadphoneAudioExposureStatisticsBucket _currentDoseStringForEndDate:v4 earliestStartDate:v6 profile:WeakRetained];
  }

  else
  {
    v12 = [v7 hk_isDatabaseAccessibilityError];
    if (v12)
    {
      v11 = @"Locked (Data Inaccessible)";
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"fetch previous HAEN before %@ failed: %@", v4, v8];
    }
  }

  return v11;
}

- (BOOL)_updateCacheWithFireDate:(id)a3 fromRemoteNotification:(BOOL)a4 changed:(BOOL *)a5 error:(id *)a6
{
  v8 = a4;
  v11 = a3;
  if (!v11)
  {
    [HDHeadphoneDoseMetadataStore _updateCacheWithFireDate:a2 fromRemoteNotification:self changed:? error:?];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    v12 = &v21;
    v13 = [(HDHeadphoneDoseMetadataStore *)self _fetchPreviousSevenDayLocalNotificationFireDateWithError:&v21];
    goto LABEL_6;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = 0;
  v12 = &v22;
  v13 = [(HDHeadphoneDoseMetadataStore *)self _fetchPreviousSevenDayRemoteNotificationFireDateWithError:&v22];
LABEL_6:
  v14 = v13;
  v15 = *v12;
  v16 = v15;
  if (v14 || !v15)
  {
    if (v14 && ([v14 hk_isBeforeDate:v11] & 1) == 0)
    {
      if (a5)
      {
        *a5 = 0;
      }

      v18 = 1;
    }

    else
    {
      if (v8)
      {
        v19 = [(HDHeadphoneDoseMetadataStore *)self _setPreviousSevenDayRemoteNotificationFireDate:v11 error:a6];
      }

      else
      {
        v19 = [(HDHeadphoneDoseMetadataStore *)self _setPreviousSevenDayLocalNotificationFireDate:v11 error:a6];
      }

      v18 = v19;
      if (a5)
      {
        *a5 = v19;
      }
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      v17 = v15;
      v18 = 0;
      *a6 = v16;
    }

    else
    {
      _HKLogDroppedError();
      v18 = 0;
    }
  }

  return v18;
}

- (int64_t)_updatePreviousSevenDayLocalNotificationFireDateWithSamplesInserted:(id)a3 now:(id)a4 error:(id *)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277D11268] isHeadphoneExposureNotificationsEnabled])
  {
    v45 = [objc_opt_class() _earliestFireDateAllowedWithNow:v9];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = v8;
    v46 = [v10 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v46)
    {
      v42 = self;
      v43 = v8;
      v44 = 0;
      v11 = 0;
      v12 = *v48;
      v13 = @"sample";
      while (2)
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v48 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v47 + 1) + 8 * i);
          objc_opt_class();
          v16 = HKSafeObject();
          if (!v16)
          {

            v36 = 0;
            goto LABEL_23;
          }

          v17 = v16;
          if ([v16 hk_isHearingSevenDayDoseNotification])
          {
            v18 = a5;
            v19 = v10;
            v20 = v13;
            v21 = [v17 endDate];
            v22 = [v21 hk_isAfterDate:v9];

            if (v22)
            {
              _HKInitializeLogging();
              v23 = *MEMORY[0x277CCC2C8];
              if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
              {
                log = v23;
                v41 = [v17 endDate];
                [v41 timeIntervalSinceDate:v9];
                v25 = v24;
                v39 = [v17 endDate];
                [v39 timeIntervalSince1970];
                v27 = v26;
                [v9 timeIntervalSince1970];
                *buf = 134218496;
                v52 = v25;
                v53 = 2048;
                v54 = v27;
                v55 = 2048;
                v56 = v28;
                _os_log_error_impl(&dword_251764000, log, OS_LOG_TYPE_ERROR, "Ignoring incoming HAEN ending %f seconds in the future (endDate: %{time_t}ld, now: %{time_t}ld).", buf, 0x20u);
              }
            }

            else
            {
              v29 = [v17 endDate];
              v30 = [v29 hk_isAfterOrEqualToDate:v45];

              if (v30)
              {
                if (!v11 || ([v17 endDate], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v11, "hk_isBeforeDate:", v31), v31, v32))
                {
                  v33 = [v17 endDate];

                  v34 = [v17 sourceRevision];
                  v35 = [v34 source];
                  v44 = [v35 _isLocalDevice];

                  v11 = v33;
                }
              }
            }

            v13 = v20;
            v10 = v19;
            a5 = v18;
          }
        }

        v46 = [v10 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }

      if (v11)
      {
        v36 = [(HDHeadphoneDoseMetadataStore *)v42 _updatePreviousSevenDayNotificationFireDateWith:v11 fromRemoteNotification:0 isLocalDevice:v44 & 1 now:v9 error:a5];
        v8 = v43;
        goto LABEL_25;
      }

      v36 = 1;
LABEL_23:
      v8 = v43;
    }

    else
    {

      v11 = 0;
      v36 = 1;
    }

LABEL_25:
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:111 description:@"Feature Disabled: 7-Day HAEN"];
    v36 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)_filterForValidateFireDate:(id)a3 now:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  if ([v6 hk_isAfterDate:v7])
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      [HDHeadphoneDoseMetadataStore _filterForValidateFireDate:v8 now:v6 error:v7];
    }

    v9 = 0;
  }

  else
  {
    v10 = [objc_opt_class() _earliestFireDateAllowedWithNow:v7];
    if ([v6 hk_isAfterOrEqualToDate:v10])
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)_updateCacheWithFireDate:(uint64_t)a1 fromRemoteNotification:(uint64_t)a2 changed:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHeadphoneDoseMetadataStore.m" lineNumber:459 description:{@"Invalid parameter not satisfying: %@", @"fireDate"}];
}

- (void)_updatePreviousSevenDayNotificationFireDateWith:(uint64_t)a1 fromRemoteNotification:(uint64_t)a2 isLocalDevice:now:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHeadphoneDoseMetadataStore.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"(!isLocalDevice && fromRemoteNotification) || !fromRemoteNotification"}];
}

- (void)_filterForValidateFireDate:(void *)a1 now:(void *)a2 error:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 timeIntervalSinceDate:a3];
  v8 = 134217984;
  v9 = v6;
  _os_log_fault_impl(&dword_251764000, v5, OS_LOG_TYPE_FAULT, "Ignoring fetched HAEN ending %f seconds in the future.", &v8, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end