@interface HFCachedValueReadPolicy
- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4;
@end

@implementation HFCachedValueReadPolicy

- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4
{
  v5 = a3;
  v6 = [v5 service];
  v7 = [v6 accessory];
  v8 = [v7 home];

  v9 = [v8 hf_characteristicValueManager];
  if (v9)
  {
    v10 = +[HFCharacteristicNotificationManager notificationsStateContainer];
    v11 = [v10 lastNotificationsEnableRequestDateForCharacteristic:v5 forHome:v8];
    v12 = [v9 cachedValueForCharacteristic:v5];

    if (v12)
    {
      if ([v5 isNotificationEnabled])
      {
        v12 = [v5 valueUpdatedTime];
        if (v12)
        {
          v13 = v11;
          v14 = [v5 valueUpdatedTime];
          v15 = [MEMORY[0x277CBEAA8] distantPast];
          v16 = [v14 isEqualToDate:v15];

          if (v16)
          {
            LODWORD(v12) = 0;
            v17 = @"CacheNeverUpdated";
            v11 = v13;
          }

          else
          {
            v11 = v13;
            if ([v10 notificationsEnabledForCharacteristic:v5 inHome:v8])
            {
              LODWORD(v12) = [v10 cacheUpToDateWithNotificationsEnabledForCharacteristic:v5 inHome:v8];
              if (v12)
              {
                v17 = @"CacheUpToDate";
              }

              else
              {
                v17 = @"NotificationsEnabledAfterLastRead";
              }
            }

            else
            {
              LODWORD(v12) = 0;
              v17 = @"HomeNotificationsDisabled";
            }
          }
        }

        else
        {
          v17 = @"CacheNeverUpdated";
        }
      }

      else
      {
        LODWORD(v12) = 0;
        v17 = @"CharacteristicNotificationsDisabled";
      }
    }

    else
    {
      v17 = @"CacheMissing";
    }

    if (+[HFUtilities hasInternalDiagnostics])
    {
      v28 = v17;
      objc_initWeak(&location, v9);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __61__HFCachedValueReadPolicy_evaluateWithCharacteristic_traits___block_invoke;
      aBlock[3] = &unk_277DFB038;
      objc_copyWeak(&v33, &location);
      v34 = v12;
      v30 = v5;
      v23 = v11;
      v31 = v11;
      v32 = v10;
      v24 = _Block_copy(aBlock);
      v25 = [MEMORY[0x277D2C938] globalAsyncScheduler];
      [v25 performBlock:v24];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
      v11 = v23;
      v17 = v28;
    }

    if (a4)
    {
      v26 = [MEMORY[0x277CBEB98] setWithObject:v17];
      *a4 = v26;
    }

    v22 = v12 ^ 1;
  }

  else
  {
    if (!+[HFUtilities isInternalTest])
    {
      v18 = [v5 hf_prettyDescription];
      v19 = [v5 service];
      v20 = [v19 accessory];
      v21 = [v20 home];
      NSLog(&cfstr_MissingValueMa.isa, v18, v21);
    }

    v22 = 1;
  }

  return v22;
}

void __61__HFCachedValueReadPolicy_evaluateWithCharacteristic_traits___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = HFLogForCategory(0x3DuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 64);
    v5 = [*(a1 + 32) hf_prettyDescription];
    v6 = [WeakRetained cachedValueForCharacteristic:*(a1 + 32)];
    v7 = [*(a1 + 32) value];
    v8 = [*(a1 + 32) valueUpdatedTime];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12[0] = 67110658;
    v12[1] = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFCachedValueReadPolicy: cacheUpToDate=%{BOOL}d for characteristic %@\ncachedValue=%@, value=%@, valueUpdatedTime=%@, lastNotificationsEnableRequestDate=%@, notificationStateContainer=%@", v12, 0x44u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end