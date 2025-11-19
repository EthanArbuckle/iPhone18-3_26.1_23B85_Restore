@interface HDSettingsMigrationStep
@end

@implementation HDSettingsMigrationStep

uint64_t __110__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveAlgorithmicProjectionsToFeatureSettingsWithUserDefaults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveAlgorithmicProjectionsToFeatureSettingsWithUserDefaults___block_invoke_2;
  aBlock[3] = &unk_27865ADC0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v24 = v6;
  v26 = v7;
  v8 = v5;
  v25 = v8;
  v9 = _Block_copy(aBlock);
  v10 = v9[2];
  v11 = *MEMORY[0x277D11808];
  v22 = 0;
  v12 = v10(v9, @"MenstruationProjectionsEnabled", v11, &v22);
  v13 = v22;
  v14 = v13;
  if ((v12 & 1) == 0)
  {
    v17 = v13;
    if (!v17)
    {
LABEL_10:

      v18 = 0;
      goto LABEL_11;
    }

    if (!a3)
    {
LABEL_9:
      _HKLogDroppedError();
      goto LABEL_10;
    }

LABEL_6:
    v19 = v17;
    *a3 = v17;
    goto LABEL_10;
  }

  v15 = *MEMORY[0x277D11800];
  v21 = v13;
  v16 = (v9[2])(v9, @"FertileWindowProjectionsEnabled", v15, &v21);
  v17 = v21;

  if ((v16 & 1) == 0)
  {
    v17 = v17;
    if (!v17)
    {
      goto LABEL_10;
    }

    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v18 = 1;
LABEL_11:

  return v18;
}

uint64_t __110__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveAlgorithmicProjectionsToFeatureSettingsWithUserDefaults___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) hk_safeNumberForKeyPath:v7 error:0];
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2E8];
  v11 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      v17 = *(a1 + 48);
      *buf = 138543618;
      v25 = v17;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_2293D1000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] No value to migrate for %{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if (v11)
  {
    v12 = *(a1 + 48);
    *buf = 138543874;
    v25 = v12;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = v9;
    _os_log_impl(&dword_2293D1000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Migrating %{public}@: %{public}@", buf, 0x20u);
  }

  v13 = [*(a1 + 40) featureSettingsManager];
  v14 = *MEMORY[0x277CCC090];
  v23 = 0;
  v15 = [v13 setFeatureSettingsNumber:v9 forKey:v8 featureIdentifier:v14 suppressNotificationsToObserver:0 error:&v23];
  v16 = v23;

  if (v15)
  {

LABEL_8:
    v18 = 1;
    goto LABEL_14;
  }

  v19 = v16;
  if (v19)
  {
    if (a4)
    {
      v20 = v19;
      *a4 = v19;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v18 = 0;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __115__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveOnboardingTileDismissalDateToKeyValueStorageWithUserDefaults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) hk_safeNumberForKeyPath:@"CycleTrackingOnboardingTileDismissedDate" error:0];
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E8];
  v8 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      v15 = *(a1 + 40);
      *buf = 138543618;
      v23 = v15;
      v24 = 2114;
      v25 = @"CycleTrackingOnboardingTileDismissedDate";
      _os_log_impl(&dword_2293D1000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] No value to migrate for %{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if (v8)
  {
    v9 = *(a1 + 40);
    *buf = 138543874;
    v23 = v9;
    v24 = 2114;
    v25 = @"CycleTrackingOnboardingTileDismissedDate";
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_2293D1000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Migrating %{public}@: %{public}@", buf, 0x20u);
  }

  v10 = objc_alloc(MEMORY[0x277D10718]);
  v11 = [v10 initWithCategory:1 domainName:*MEMORY[0x277D11898] profile:v5];
  v21 = 0;
  v12 = [v11 hdmc_setOnboardingTileLastDismissedTimeIntervalSinceReferenceDate:v6 error:&v21];
  v13 = v21;
  v14 = v13;
  if (v12)
  {

LABEL_8:
    v16 = 1;
    goto LABEL_14;
  }

  v17 = v13;
  if (v17)
  {
    if (a3)
    {
      v18 = v17;
      *a3 = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v16 = 0;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __99__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveHiddenCycleChartRowsSettingsWithUserDefaults___block_invoke(uint64_t a1, void *a2, NSObject **a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) hk_safeDictionaryForKeyPath:@"ShouldHideByChartDataTypeIdentifier" error:0];
  v48 = a1;
  v7 = [*(a1 + 32) hk_safeDictionaryForKeyPath:@"ShouldHideByDisplayTypeIdentifier" error:0];
  v8 = v7;
  v9 = MEMORY[0x277CBEC10];
  if (v7)
  {
    v9 = v7;
  }

  v46 = v9;

  v10 = HKMCCycleChartMainTypes();
  v11 = HKMCSymptomSampleTypes();
  v12 = [v10 arrayByAddingObjectsFromArray:v11];

  v13 = [MEMORY[0x277D10718] hdmc_cycleChartsHiddenRowsDomainWithProfile:v5];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (!v14)
  {
    v38 = 1;
    goto LABEL_32;
  }

  v15 = v14;
  v44 = a3;
  v45 = v5;
  v16 = MEMORY[0x277CCC2E8];
  v17 = *v52;
LABEL_5:
  v18 = 0;
  v47 = v15;
  while (1)
  {
    if (*v52 != v17)
    {
      objc_enumerationMutation(obj);
    }

    v19 = *(*(&v51 + 1) + 8 * v18);
    if (v6)
    {
      v20 = [*(*(&v51 + 1) + 8 * v18) identifier];
      v21 = v6;
LABEL_12:
      v22 = [v21 objectForKeyedSubscript:{v20, v44}];
      goto LABEL_13;
    }

    v20 = HKMCDisplayTypeIdentifierForSampleType();
    if (v20)
    {
      v21 = v46;
      goto LABEL_12;
    }

    v22 = 0;
LABEL_13:

    _HKInitializeLogging();
    v23 = *v16;
    v24 = os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      break;
    }

    if (v24)
    {
      v35 = *(v48 + 40);
      v34 = v23;
      v36 = [v19 identifier];
      *buf = 138543618;
      v56 = v35;
      v57 = 2114;
      v58 = v36;
      _os_log_impl(&dword_2293D1000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] No value to migrate for %{public}@", buf, 0x16u);

LABEL_20:
    }

    if (v15 == ++v18)
    {
      v37 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      v15 = v37;
      if (!v37)
      {
        v38 = 1;
        v5 = v45;
        goto LABEL_32;
      }

      goto LABEL_5;
    }
  }

  if (v24)
  {
    v25 = v6;
    v26 = v17;
    v27 = v13;
    v28 = v16;
    v29 = *(v48 + 40);
    v30 = v23;
    v31 = [v19 identifier];
    *buf = 138543874;
    v56 = v29;
    v16 = v28;
    v13 = v27;
    v17 = v26;
    v6 = v25;
    v15 = v47;
    v57 = 2114;
    v58 = v31;
    v59 = 2114;
    v60 = v22;
    _os_log_impl(&dword_2293D1000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Migrating %{public}@: %{public}@", buf, 0x20u);
  }

  v32 = [v19 identifier];
  v50 = 0;
  v33 = [v13 setNumber:v22 forKey:v32 error:&v50];
  v34 = v50;

  if (v33)
  {
    goto LABEL_20;
  }

  v39 = v34;
  v40 = v39;
  v5 = v45;
  if (v39)
  {
    if (v44)
    {
      v41 = v39;
      *v44 = v40;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v38 = 0;
LABEL_32:

  v42 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t __96__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveHiddenLoggingRowsSettingsWithUserDefaults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveHiddenLoggingRowsSettingsWithUserDefaults___block_invoke_2;
  aBlock[3] = &unk_27865AE10;
  v36 = *(a1 + 40);
  v6 = v5;
  v35 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) hk_safeDictionaryIfExistsForKeyPath:@"ShouldHideByDisplayTypeIdentifier" error:0];
  v9 = v8;
  v10 = MEMORY[0x277CBEC10];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = HKMCAllDisplayTypeIdentifiers();
  v12 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v27 = a3;
    v14 = *v31;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = [v11 objectForKeyedSubscript:{v16, v27}];
        v18 = HKFeatureSettingsKeyForIsLoggingHiddenForDisplayTypeIdentifier();
        v29 = 0;
        v19 = v7[2](v7, v16, v17, v18, &v29);
        v20 = v29;

        if ((v19 & 1) == 0)
        {
          v22 = v20;
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
          goto LABEL_18;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v21 = 1;
  }

  else
  {
    v21 = 1;
  }

LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __96__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveHiddenLoggingRowsSettingsWithUserDefaults___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC2E8];
  v13 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v13)
    {
      v19 = *(a1 + 40);
      *buf = 138543618;
      v27 = v19;
      v28 = 2114;
      v29 = v11;
      _os_log_impl(&dword_2293D1000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] No value to migrate for %{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if (v13)
  {
    v14 = *(a1 + 40);
    *buf = 138543874;
    v27 = v14;
    v28 = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_2293D1000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Migrating %{public}@: %{public}@", buf, 0x20u);
  }

  v15 = [*(a1 + 32) featureSettingsManager];
  v16 = *MEMORY[0x277CCC090];
  v25 = 0;
  v17 = [v15 setFeatureSettingsNumber:v10 forKey:v11 featureIdentifier:v16 suppressNotificationsToObserver:0 error:&v25];
  v18 = v25;

  if (v17)
  {

LABEL_8:
    v20 = 1;
    goto LABEL_14;
  }

  v21 = v18;
  if (v21)
  {
    if (a5)
    {
      v22 = v21;
      *a5 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v20 = 0;
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __106__HDSettingsMigrationStep_HDMenstrualCycles__dawnMoveToDeviationDetectionFeatureSettingsWithUserDefaults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v30 = a2;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = HKMCAllDeviationTypes();
  v5 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v27 = a3;
    v7 = *v33;
    v29 = *MEMORY[0x277CCC098];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [v9 integerValue];
        if (v10 >= 4)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"UnknownType_%ld", v10];
        }

        else
        {
          v11 = off_27865AE30[v10];
        }

        v12 = [*(a1 + 32) hk_safeNumberForKeyPath:v11 error:0];
        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC2E8];
        v14 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v14)
          {
            v15 = *(a1 + 40);
            *buf = 138543874;
            v37 = v15;
            v38 = 2114;
            v39 = v11;
            v40 = 2114;
            v41 = v12;
            _os_log_impl(&dword_2293D1000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Migrating %{public}@: %{public}@", buf, 0x20u);
          }

          v16 = [v30 featureSettingsManager];
          [v9 integerValue];
          v17 = HKFeatureSettingsKeyForDeviationDetectionTypeEnabled();
          v31 = 0;
          v18 = [v16 setFeatureSettingsNumber:v12 forKey:v17 featureIdentifier:v29 suppressNotificationsToObserver:0 error:&v31];
          v19 = v31;

          if ((v18 & 1) == 0)
          {
            v22 = v19;
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
            goto LABEL_24;
          }
        }

        else if (v14)
        {
          v20 = *(a1 + 40);
          *buf = 138543618;
          v37 = v20;
          v38 = 2114;
          v39 = v11;
          _os_log_impl(&dword_2293D1000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] No value to migrate for %{public}@", buf, 0x16u);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_24:

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

@end