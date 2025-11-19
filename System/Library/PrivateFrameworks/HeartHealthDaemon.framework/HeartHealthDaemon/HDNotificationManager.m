@interface HDNotificationManager
@end

@implementation HDNotificationManager

void __124__HDNotificationManager_BloodPressureJournal__getBloodPressureJournalDeliveredNotificationIdentifiersWithCompletionHandler___block_invoke(void *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v23 = a1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        _HKInitializeLogging();
        v9 = HKLogBloodPressureJournal();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v6;
          v11 = a1[4];
          v26 = [v8 request];
          v12 = [v26 identifier];
          v13 = [v8 request];
          v14 = [v13 content];
          v15 = [v14 categoryIdentifier];
          *buf = 138543874;
          v32 = v11;
          v6 = v10;
          v33 = 2114;
          v34 = v12;
          v35 = 2114;
          v36 = v15;
          _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] *** notification: %{public}@ categoryIdentifier  %{public}@", buf, 0x20u);

          a1 = v23;
        }

        v16 = a1[5];
        v17 = [v8 request];
        v18 = [v17 content];
        v19 = [v18 categoryIdentifier];
        LODWORD(v16) = [v16 containsObject:v19];

        if (v16)
        {
          v20 = [v8 request];
          v21 = [v20 identifier];
          [v24 addObject:v21];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v5);
  }

  (*(a1[6] + 16))();
  v22 = *MEMORY[0x277D85DE8];
}

@end