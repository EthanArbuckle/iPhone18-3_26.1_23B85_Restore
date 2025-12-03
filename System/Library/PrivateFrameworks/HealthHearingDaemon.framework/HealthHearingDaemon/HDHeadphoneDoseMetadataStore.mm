@interface HDHeadphoneDoseMetadataStore
- (BOOL)_clearPreviousSevenDayLocalNotificationFireDateWithError:(id *)error;
- (BOOL)_clearPreviousSevenDayRemoteNotificationFireDateWithError:(id *)error;
- (BOOL)_overrideDoseLimit:(id)limit error:(id *)error;
- (BOOL)_rebuildCachedFireDateFromLocalHAENStoreWithNow:(id)now error:(id *)error;
- (BOOL)_shouldRebuildPreviousSevenDayNotificationWithError:(id *)error;
- (BOOL)_shouldRebuildSevenDayStatisticsWithError:(id *)error;
- (BOOL)_updateCacheWithFireDate:(id)date fromRemoteNotification:(BOOL)notification changed:(BOOL *)changed error:(id *)error;
- (BOOL)rebuildCachedFireDateFromLocalHAENStoreIfNeededWithError:(id *)error;
- (BOOL)rebuildCachedFireDateFromLocalHAENStoreWithError:(id *)error;
- (BOOL)shouldNotifyUserForAccumulatedDose:(double)dose;
- (HDHeadphoneDoseMetadataStore)initWithProfile:(id)profile;
- (HKProfileIdentifier)_profileIdentifier;
- (id)_fetchDoseLimitInfoWithError:(id *)error;
- (id)_fetchPreviousSevenDayLocalNotificationFireDateWithError:(id *)error;
- (id)_fetchPreviousSevenDayLocalNotificationFireDateWithNow:(id)now error:(id *)error;
- (id)_fetchPreviousSevenDayRemoteNotificationFireDateWithError:(id *)error;
- (id)_fetchPreviousSevenDayRemoteNotificationFireDateWithNow:(id)now error:(id *)error;
- (id)_filterForValidateFireDate:(id)date now:(id)now error:(id *)error;
- (id)_info;
- (id)_infoDict;
- (id)_infoForAccumulatedDoseAtFireDate:(id)date;
- (id)_infoForSevenDayDoseAtFireDate:(id)date;
- (id)_lock_fetchDoseLimitInfoWithError:(id *)error;
- (id)_mostRecentSevenDayLocalNotificationWithNow:(id)now error:(id *)error;
- (id)collectionIntervalForDoseAccumulated:(double)accumulated;
- (int64_t)_updatePreviousSevenDayLocalNotificationFireDateWithSamplesInserted:(id)inserted now:(id)now error:(id *)error;
- (int64_t)updatePreviousSevenDayLocalNotificationFireDateWithSamplesInserted:(id)inserted error:(id *)error;
- (int64_t)updatePreviousSevenDayRemoteNotificationFireDateWith:(id)with error:(id *)error;
- (void)_lock_loadDoseLimitOverride;
- (void)_lock_loadDoseLimitOverrideIfNeeded;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDHeadphoneDoseMetadataStore

- (HDHeadphoneDoseMetadataStore)initWithProfile:(id)profile
{
  profileCopy = profile;
  v14.receiver = self;
  v14.super_class = HDHeadphoneDoseMetadataStore;
  v5 = [(HDHeadphoneDoseMetadataStore *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = [objc_alloc(MEMORY[0x277D10718]) initWithCategory:0 domainName:@"Hearing" profile:profileCopy];
    domain = v6->_domain;
    v6->_domain = v7;

    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_doseLimit = 1.0;
    isAppleInternalInstall = [MEMORY[0x277CCDD30] isAppleInternalInstall];
    v10 = 0;
    if (isAppleInternalInstall)
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

- (BOOL)shouldNotifyUserForAccumulatedDose:(double)dose
{
  os_unfair_lock_lock(&self->_lock);
  [(HDHeadphoneDoseMetadataStore *)self _lock_loadDoseLimitOverrideIfNeeded];
  v5 = self->_doseLimit <= dose;
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (int64_t)updatePreviousSevenDayLocalNotificationFireDateWithSamplesInserted:(id)inserted error:(id *)error
{
  v6 = MEMORY[0x277CBEAA8];
  insertedCopy = inserted;
  v8 = [v6 now];
  v9 = [(HDHeadphoneDoseMetadataStore *)self _updatePreviousSevenDayLocalNotificationFireDateWithSamplesInserted:insertedCopy now:v8 error:error];

  return v9;
}

- (int64_t)updatePreviousSevenDayRemoteNotificationFireDateWith:(id)with error:(id *)error
{
  v6 = MEMORY[0x277CBEAA8];
  withCopy = with;
  v8 = [v6 now];
  v9 = [(HDHeadphoneDoseMetadataStore *)self _updatePreviousSevenDayNotificationFireDateWith:withCopy fromRemoteNotification:1 isLocalDevice:0 now:v8 error:error];

  return v9;
}

- (BOOL)rebuildCachedFireDateFromLocalHAENStoreIfNeededWithError:(id *)error
{
  v12 = 0;
  v5 = [(HDHeadphoneDoseMetadataStore *)self _shouldRebuildPreviousSevenDayNotificationWithError:&v12];
  v6 = v12;
  if (v6)
  {
    if (error)
    {
      v7 = v6;
      v8 = 0;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
      v8 = 0;
    }
  }

  else if (v5)
  {
    v8 = [(HDHeadphoneDoseMetadataStore *)self rebuildCachedFireDateFromLocalHAENStoreWithError:error];
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

- (BOOL)rebuildCachedFireDateFromLocalHAENStoreWithError:(id *)error
{
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(error) = [(HDHeadphoneDoseMetadataStore *)self _rebuildCachedFireDateFromLocalHAENStoreWithNow:v5 error:error];

  return error;
}

- (id)collectionIntervalForDoseAccumulated:(double)accumulated
{
  if ([MEMORY[0x277D11268] unitTesting_forceDefaultHeadphoneDataCollectionInterval])
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_lock);
  doseLimit = self->_doseLimit;
  os_unfair_lock_unlock(&self->_lock);
  v7 = doseLimit - accumulated;
  if (doseLimit - accumulated <= 0.01)
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

- (void)profileDidBecomeReady:(id)ready
{
  os_unfair_lock_lock(&self->_lock);
  [(HDHeadphoneDoseMetadataStore *)self _lock_loadDoseLimitOverrideIfNeeded];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_rebuildCachedFireDateFromLocalHAENStoreWithNow:(id)now error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  nowCopy = now;
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
    v9 = [(HDHeadphoneDoseMetadataStore *)self _mostRecentSevenDayLocalNotificationWithNow:nowCopy error:&v21];
    v10 = v21;
    v11 = v10;
    if (!v9 && v10)
    {
      if (error)
      {
        v12 = v10;
        v13 = 0;
        *error = v11;
LABEL_16:

        goto LABEL_17;
      }

      _HKLogDroppedError();
LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }

    if (![(HDHeadphoneDoseMetadataStore *)self _setPreviousSevenDayLocalNotificationFireDate:v9 error:error]|| ![(HDHeadphoneDoseMetadataStore *)self _setShouldRebuildPreviousSevenDayNotification:0 error:error])
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

  [MEMORY[0x277CCA9B8] hk_assignError:error code:111 description:@"Feature Disabled: 7-Day HAEN"];
  v13 = 0;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_mostRecentSevenDayLocalNotificationWithNow:(id)now error:(id *)error
{
  v31[3] = *MEMORY[0x277D85DE8];
  nowCopy = now;
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
  if ([v16 enumerateWithError:error handler:v23])
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
  profileIdentifier = [WeakRetained profileIdentifier];

  return profileIdentifier;
}

- (id)_fetchPreviousSevenDayLocalNotificationFireDateWithError:(id *)error
{
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [(HDHeadphoneDoseMetadataStore *)self _fetchPreviousSevenDayLocalNotificationFireDateWithNow:v5 error:error];

  return v6;
}

- (id)_fetchPreviousSevenDayLocalNotificationFireDateWithNow:(id)now error:(id *)error
{
  nowCopy = now;
  v7 = [(HDKeyValueDomain *)self->_domain dateForKey:@"_PreviousSevenDayHeadphoneExposureNotificationFireDate" error:error];
  if (v7)
  {
    v8 = [(HDHeadphoneDoseMetadataStore *)self _filterForValidateFireDate:v7 now:nowCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_clearPreviousSevenDayLocalNotificationFireDateWithError:(id *)error
{
  domain = self->_domain;
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"_PreviousSevenDayHeadphoneExposureNotificationFireDate"];
  LOBYTE(error) = [(HDKeyValueDomain *)domain removeValuesForKeys:v5 error:error];

  return error;
}

- (id)_fetchPreviousSevenDayRemoteNotificationFireDateWithError:(id *)error
{
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [(HDHeadphoneDoseMetadataStore *)self _fetchPreviousSevenDayRemoteNotificationFireDateWithNow:v5 error:error];

  return v6;
}

- (id)_fetchPreviousSevenDayRemoteNotificationFireDateWithNow:(id)now error:(id *)error
{
  nowCopy = now;
  v7 = [(HDKeyValueDomain *)self->_domain dateForKey:@"_PreviousSevenDayHeadphoneExposureRemoteNotificationFireDate" error:error];
  if (v7)
  {
    v8 = [(HDHeadphoneDoseMetadataStore *)self _filterForValidateFireDate:v7 now:nowCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_clearPreviousSevenDayRemoteNotificationFireDateWithError:(id *)error
{
  domain = self->_domain;
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"_PreviousSevenDayHeadphoneExposureRemoteNotificationFireDate"];
  LOBYTE(error) = [(HDKeyValueDomain *)domain removeValuesForKeys:v5 error:error];

  return error;
}

- (BOOL)_shouldRebuildSevenDayStatisticsWithError:(id *)error
{
  domain = self->_domain;
  v10 = 0;
  v5 = [(HDKeyValueDomain *)domain numberForKey:@"_ShouldRebuildSevenDayHeadphoneExposureStatistics" error:&v10];
  v6 = v10;
  if (v6)
  {
    if (error)
    {
      v7 = v6;
      *error = v6;
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
    bOOLValue = 1;
    goto LABEL_9;
  }

  bOOLValue = [v5 BOOLValue];
LABEL_9:

  return bOOLValue;
}

- (BOOL)_shouldRebuildPreviousSevenDayNotificationWithError:(id *)error
{
  v3 = [(HDKeyValueDomain *)self->_domain numberForKey:@"_ShouldRebuildPreviousSevenDayHeadphoneExposureNotification" error:error];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)_info
{
  _infoDict = [(HDHeadphoneDoseMetadataStore *)self _infoDict];
  v3 = [_infoDict objectForKeyedSubscript:@"recent_seven_day_haen_error"];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [_infoDict objectForKeyedSubscript:@"recent_seven_day_haen_error"];
    v6 = [v4 stringWithFormat:@"Recent 7-Day HAEN:\t Error (%@)", v5];
LABEL_3:
    v7 = v6;

    goto LABEL_6;
  }

  v8 = [_infoDict objectForKeyedSubscript:@"recent_seven_day_haen_nil"];

  if (!v8)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [v5 appendString:@"Recent 7-Day HAEN:\n"];
    v10 = [_infoDict objectForKeyedSubscript:@"previous_fire_date"];
    [v5 appendFormat:@"\tFireDate:\t  %@\n", v10];

    v11 = [_infoDict objectForKeyedSubscript:@"seven_day_dose"];
    [v5 appendFormat:@"\t7-Day Dose:\t  %@\n", v11];

    v12 = [_infoDict objectForKeyedSubscript:@"accumulated_dose_from_fire_date"];
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

- (id)_fetchDoseLimitInfoWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDHeadphoneDoseMetadataStore *)self _lock_fetchDoseLimitInfoWithError:error];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_fetchDoseLimitInfoWithError:(id *)error
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
        0x4059000000000000 = 0;
      }

      else
      {
        [v6 doubleValue];
        if (v14 > 5.0 || v14 < 0.01)
        {
          v13 = @"[Current] %.2f%%\n [Invalid] %@";
        }

        0x4059000000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f%% (Override)", v14 * 100.0];
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
        0x4059000000000000 = 0;
      }

      else
      {
        0x4059000000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f%% (Default)", 0x4059000000000000];
      }

      v13 = @"[Current] %.2f%%\n [After Reboot] %@";
    }

    if ([0x4059000000000000 length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:v13, self->_doseLimit * 100.0, 0x4059000000000000];
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

  else if (error)
  {
    v17 = v7;
    v18 = 0;
    *error = v8;
  }

  else
  {
    _HKLogDroppedError();
    v18 = 0;
  }

  return v18;
}

- (BOOL)_overrideDoseLimit:(id)limit error:(id *)error
{
  limitCopy = limit;
  v7 = limitCopy;
  if (limitCopy && (([limitCopy doubleValue], v8 < 0.01) || v8 > 5.0) && (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Dose Limit %.2f%% is outside the range %.2f%% - %.2f%% (Default: %.2f%%)", v8 * 100.0, 0x3FF0000000000000, 0x407F400000000000, 0x4059000000000000), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCA9B8], "hk_error:description:", 3, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, (v11 = v10) != 0))
  {
    v12 = v11;
    if (error)
    {
      v13 = v11;
      *error = v12;
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
    v14 = [(HDKeyValueDomain *)self->_domain setNumber:v7 forKey:@"_SevenDayHeadphoneExposureDoseNotificationThreshold" error:error];
    if (v14)
    {
      [(HDHeadphoneDoseMetadataStore *)self _lock_loadDoseLimitOverride];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  return v14;
}

- (id)_infoForSevenDayDoseAtFireDate:(id)date
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [HDHeadphoneAudioExposureStatisticsBucket _currentDoseStringForEndDate:dateCopy earliestStartDate:0 profile:WeakRetained];

  return v6;
}

- (id)_infoForAccumulatedDoseAtFireDate:(id)date
{
  dateCopy = date;
  v5 = [dateCopy dateByAddingTimeInterval:-1.0];
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
    v11 = [HDHeadphoneAudioExposureStatisticsBucket _currentDoseStringForEndDate:dateCopy earliestStartDate:v6 profile:WeakRetained];
  }

  else
  {
    hk_isDatabaseAccessibilityError = [v7 hk_isDatabaseAccessibilityError];
    if (hk_isDatabaseAccessibilityError)
    {
      v11 = @"Locked (Data Inaccessible)";
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"fetch previous HAEN before %@ failed: %@", dateCopy, v8];
    }
  }

  return v11;
}

- (BOOL)_updateCacheWithFireDate:(id)date fromRemoteNotification:(BOOL)notification changed:(BOOL *)changed error:(id *)error
{
  notificationCopy = notification;
  dateCopy = date;
  if (!dateCopy)
  {
    [HDHeadphoneDoseMetadataStore _updateCacheWithFireDate:a2 fromRemoteNotification:self changed:? error:?];
    if (notificationCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    v12 = &v21;
    v13 = [(HDHeadphoneDoseMetadataStore *)self _fetchPreviousSevenDayLocalNotificationFireDateWithError:&v21];
    goto LABEL_6;
  }

  if (!notificationCopy)
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
    if (v14 && ([v14 hk_isBeforeDate:dateCopy] & 1) == 0)
    {
      if (changed)
      {
        *changed = 0;
      }

      v18 = 1;
    }

    else
    {
      if (notificationCopy)
      {
        v19 = [(HDHeadphoneDoseMetadataStore *)self _setPreviousSevenDayRemoteNotificationFireDate:dateCopy error:error];
      }

      else
      {
        v19 = [(HDHeadphoneDoseMetadataStore *)self _setPreviousSevenDayLocalNotificationFireDate:dateCopy error:error];
      }

      v18 = v19;
      if (changed)
      {
        *changed = v19;
      }
    }
  }

  else
  {
    if (changed)
    {
      *changed = 0;
    }

    if (error)
    {
      v17 = v15;
      v18 = 0;
      *error = v16;
    }

    else
    {
      _HKLogDroppedError();
      v18 = 0;
    }
  }

  return v18;
}

- (int64_t)_updatePreviousSevenDayLocalNotificationFireDateWithSamplesInserted:(id)inserted now:(id)now error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  insertedCopy = inserted;
  nowCopy = now;
  if ([MEMORY[0x277D11268] isHeadphoneExposureNotificationsEnabled])
  {
    v45 = [objc_opt_class() _earliestFireDateAllowedWithNow:nowCopy];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = insertedCopy;
    v46 = [v10 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v46)
    {
      selfCopy = self;
      v43 = insertedCopy;
      _isLocalDevice = 0;
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
            errorCopy = error;
            v19 = v10;
            v20 = v13;
            endDate = [v17 endDate];
            v22 = [endDate hk_isAfterDate:nowCopy];

            if (v22)
            {
              _HKInitializeLogging();
              v23 = *MEMORY[0x277CCC2C8];
              if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
              {
                log = v23;
                endDate2 = [v17 endDate];
                [endDate2 timeIntervalSinceDate:nowCopy];
                v25 = v24;
                endDate3 = [v17 endDate];
                [endDate3 timeIntervalSince1970];
                v27 = v26;
                [nowCopy timeIntervalSince1970];
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
              endDate4 = [v17 endDate];
              v30 = [endDate4 hk_isAfterOrEqualToDate:v45];

              if (v30)
              {
                if (!v11 || ([v17 endDate], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v11, "hk_isBeforeDate:", v31), v31, v32))
                {
                  endDate5 = [v17 endDate];

                  sourceRevision = [v17 sourceRevision];
                  source = [sourceRevision source];
                  _isLocalDevice = [source _isLocalDevice];

                  v11 = endDate5;
                }
              }
            }

            v13 = v20;
            v10 = v19;
            error = errorCopy;
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
        v36 = [(HDHeadphoneDoseMetadataStore *)selfCopy _updatePreviousSevenDayNotificationFireDateWith:v11 fromRemoteNotification:0 isLocalDevice:_isLocalDevice & 1 now:nowCopy error:error];
        insertedCopy = v43;
        goto LABEL_25;
      }

      v36 = 1;
LABEL_23:
      insertedCopy = v43;
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
    [MEMORY[0x277CCA9B8] hk_assignError:error code:111 description:@"Feature Disabled: 7-Day HAEN"];
    v36 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)_filterForValidateFireDate:(id)date now:(id)now error:(id *)error
{
  dateCopy = date;
  nowCopy = now;
  if ([dateCopy hk_isAfterDate:nowCopy])
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      [HDHeadphoneDoseMetadataStore _filterForValidateFireDate:v8 now:dateCopy error:nowCopy];
    }

    v9 = 0;
  }

  else
  {
    v10 = [objc_opt_class() _earliestFireDateAllowedWithNow:nowCopy];
    if ([dateCopy hk_isAfterOrEqualToDate:v10])
    {
      v9 = dateCopy;
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