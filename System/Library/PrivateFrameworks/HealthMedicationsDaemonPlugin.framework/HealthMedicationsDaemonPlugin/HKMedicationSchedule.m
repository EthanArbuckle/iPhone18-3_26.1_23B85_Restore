@interface HKMedicationSchedule
+ (id)_codableArrayForMedicationScheduleIntervalDatas:(uint64_t)a1;
+ (id)_medicationScheduleIntervalDataFromCodable:(uint64_t)a1;
@end

@implementation HKMedicationSchedule

uint64_t __101__HKMedicationSchedule_HDCodingSupport__hd_medicationSchedulesFromCodables_profile_ignoreDuplicates___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    do
    {
      v6 = 0;
      v25 = v4;
      do
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * v6);
        if (*(a1 + 56) != 1 || ([*(*(&v29 + 1) + 8 * v6) duplicate] & 1) == 0)
        {
          v8 = [*(a1 + 40) syncIdentityManager];
          v9 = [v8 legacySyncIdentity];

          if ([v7 hasSyncIdentity])
          {
            v10 = v5;
            v11 = MEMORY[0x277D108E0];
            v12 = [v7 syncIdentity];
            v28 = 0;
            v13 = [v11 syncIdentityWithCodable:v12 error:&v28];
            v14 = v28;

            if (v13)
            {
              v15 = [*(a1 + 40) syncIdentityManager];
              v27 = v14;
              v16 = [v15 concreteIdentityForIdentity:v13 shouldCreate:1 transaction:v24 error:&v27];
              v17 = v27;

              if (v16)
              {

                v9 = v16;
                v5 = v10;
                v4 = v25;
                goto LABEL_12;
              }

              _HKInitializeLogging();
              v21 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                v34 = v17;
                _os_log_fault_impl(&dword_25181C000, v21, OS_LOG_TYPE_FAULT, "MedicationSchedule ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
              }

              v9 = 0;
              v14 = v17;
            }

            else
            {
              _HKInitializeLogging();
              v20 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                v34 = v14;
                _os_log_fault_impl(&dword_25181C000, v20, OS_LOG_TYPE_FAULT, "MedicationSchedule SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
              }
            }

            v5 = v10;
            v4 = v25;
          }

          else
          {
LABEL_12:
            v18 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v9];

            if (v18)
            {
              v14 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v9];
              v13 = [MEMORY[0x277D11570] hd_medicationScheduleFromCodable:v7];
              [v14 addObject:v13];
            }

            else
            {
              v19 = objc_alloc(MEMORY[0x277CBEB18]);
              v14 = [MEMORY[0x277D11570] hd_medicationScheduleFromCodable:v7];
              v13 = [v19 initWithObjects:{v14, 0}];
              [*(*(*(a1 + 48) + 8) + 40) setObject:v13 forKeyedSubscript:v9];
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v4);
  }

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)_medicationScheduleIntervalDataFromCodable:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_map:&__block_literal_global_0];

  return v3;
}

+ (id)_codableArrayForMedicationScheduleIntervalDatas:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_map:&__block_literal_global_344];

  return v3;
}

@end