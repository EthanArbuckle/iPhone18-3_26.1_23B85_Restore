@interface MKAlarmStore
- (MKAlarmStore)init;
- (id)exportAlarms;
- (void)importWithMKAlarm:(id)a3 completionHandler:(id)a4;
@end

@implementation MKAlarmStore

- (MKAlarmStore)init
{
  v6.receiver = self;
  v6.super_class = MKAlarmStore;
  v2 = [(MKAlarmStore *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mtAlarmManager = v2->_mtAlarmManager;
    v2->_mtAlarmManager = v3;
  }

  return v2;
}

- (id)exportAlarms
{
  v45 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = [(MTAlarmManager *)self->_mtAlarmManager alarmsSync];
  p_info = &OBJC_METACLASS___MKHex.info;
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v37 = [v3 count];
    _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "Alarm count %lu on source", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v31 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v31)
  {
    v7 = *v33;
    v8 = 0x2798DB000uLL;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = objc_alloc_init(*(v8 + 760));
        v12 = [v10 alarmID];
        v13 = [v12 UUIDString];
        [v11 setAlarmID:v13];

        v14 = [v10 title];
        [v11 setLabel:v14];

        [v11 setHour:{objc_msgSend(v10, "hour")}];
        [v11 setMinute:{objc_msgSend(v10, "minute")}];
        [v11 setRepeatSchedule:{objc_msgSend(v10, "repeatSchedule")}];
        v15 = [v10 sound];
        v16 = [v15 vibrationIdentifier];

        if (v16)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        [v11 setVibrationType:v17];
        [v11 setEnabled:{objc_msgSend(v10, "isEnabled")}];
        [v11 setAllowSnooze:{objc_msgSend(v10, "allowsSnooze")}];
        [v6 addObject:v11];
        v18 = [p_info + 311 log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [v11 label];
          v20 = [v11 hour];
          v21 = v7;
          v22 = v6;
          v23 = v8;
          v24 = p_info;
          v25 = [v11 minute];
          v26 = [v11 enabled];
          *buf = 138413058;
          v37 = v19;
          v38 = 2048;
          v39 = v20;
          v40 = 2048;
          v41 = v25;
          p_info = v24;
          v8 = v23;
          v6 = v22;
          v7 = v21;
          v42 = 1024;
          v43 = v26;
          _os_log_impl(&dword_2592D2000, v18, OS_LOG_TYPE_INFO, "Will export Alarm: %@, hour: %lu, minute: %lu, enable status: %d ", buf, 0x26u);
        }
      }

      v31 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v31);
  }

  objc_autoreleasePoolPop(context);
  v27 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)importWithMKAlarm:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277D296F0];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [v8 label];
  [v9 setTitle:v10];

  [v9 setHour:{objc_msgSend(v8, "hour")}];
  [v9 setMinute:{objc_msgSend(v8, "minute")}];
  [v9 setRepeatSchedule:{objc_msgSend(v8, "repeatSchedule")}];
  [v9 setEnabled:{objc_msgSend(v8, "enabled")}];
  v11 = [v8 allowSnooze];

  [v9 setAllowsSnooze:v11];
  v12 = +[MKLog log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v9 title];
    *buf = 138413058;
    v29 = v13;
    v30 = 2048;
    v31 = [v9 hour];
    v32 = 2048;
    v33 = [v9 minute];
    v34 = 1024;
    v35 = [v9 isEnabled];
    _os_log_impl(&dword_2592D2000, v12, OS_LOG_TYPE_INFO, "Will import Alarm: %@, hour: %lu, minute: %lu, enable status: %d", buf, 0x26u);
  }

  v14 = [(MTAlarmManager *)self->_mtAlarmManager addAlarm:v9];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __52__MKAlarmStore_importWithMKAlarm_completionHandler___block_invoke;
  v25[3] = &unk_2798DCB78;
  v15 = v9;
  v26 = v15;
  v16 = v6;
  v27 = v16;
  v17 = [v14 addFailureBlock:v25];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __52__MKAlarmStore_importWithMKAlarm_completionHandler___block_invoke_5;
  v22[3] = &unk_2798DCBA0;
  v23 = v15;
  v24 = v16;
  v18 = v16;
  v19 = v15;
  v20 = [v14 addSuccessBlock:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __52__MKAlarmStore_importWithMKAlarm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[MKLog log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) title];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_2592D2000, v4, OS_LOG_TYPE_INFO, "Alarm Import for %@ failed with error: %@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __52__MKAlarmStore_importWithMKAlarm_completionHandler___block_invoke_5(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[MKLog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) title];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2592D2000, v2, OS_LOG_TYPE_INFO, "Alarm Import for %@ is successful", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end