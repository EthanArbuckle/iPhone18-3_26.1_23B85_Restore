@interface HMAccessoryCollectionSetting(COMeshAlarmAddOn_Internal)
- (id)co_cachedWrite;
- (id)co_mappedAlarms;
- (void)co_enqueueOperation:()COMeshAlarmAddOn_Internal;
- (void)co_flushQueue;
- (void)co_mappedAlarms;
- (void)co_setCachedWrite:()COMeshAlarmAddOn_Internal;
- (void)co_setMappedAlarms:()COMeshAlarmAddOn_Internal completionHandler:;
- (void)co_withLock:()COMeshAlarmAddOn_Internal;
@end

@implementation HMAccessoryCollectionSetting(COMeshAlarmAddOn_Internal)

- (void)co_withLock:()COMeshAlarmAddOn_Internal
{
  v3 = a3;
  os_unfair_lock_lock(&co_withLock__funnel);
  v3[2](v3);

  os_unfair_lock_unlock(&co_withLock__funnel);
}

- (void)co_enqueueOperation:()COMeshAlarmAddOn_Internal
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_enqueueOperation___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [self co_withLock:v6];
}

- (void)co_flushQueue
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = self;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p performing coalesced writes", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_flushQueue__block_invoke;
  v11[3] = &unk_278E15638;
  v11[4] = self;
  v11[5] = &buf;
  [self co_withLock:v11];
  co_mappedAlarms = [self co_mappedAlarms];
  v4 = *(*(&buf + 1) + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_flushQueue__block_invoke_2;
  v9[3] = &unk_278E16130;
  v5 = co_mappedAlarms;
  v10 = v5;
  v6 = [v4 indexesOfObjectsPassingTest:v9];
  [*(*(&buf + 1) + 40) removeObjectsAtIndexes:v6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_flushQueue__block_invoke_3;
  v8[3] = &unk_278E16158;
  v8[4] = self;
  v8[5] = &buf;
  [self co_setMappedAlarms:v5 completionHandler:v8];

  _Block_object_dispose(&buf, 8);
  v7 = *MEMORY[0x277D85DE8];
}

- (id)co_cachedWrite
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__6;
  v8 = __Block_byref_object_dispose__6;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_cachedWrite__block_invoke;
  v3[3] = &unk_278E15638;
  v3[4] = self;
  v3[5] = &v4;
  [self co_withLock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (void)co_setCachedWrite:()COMeshAlarmAddOn_Internal
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setCachedWrite___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [self co_withLock:v6];
}

- (id)co_mappedAlarms
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  co_cachedWrite = [self co_cachedWrite];
  if (co_cachedWrite)
  {
    value = co_cachedWrite;
    v5 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(HMAccessoryCollectionSetting(COMeshAlarmAddOn_Internal) *)self co_mappedAlarms:v5];
    }
  }

  else
  {
    value = [self value];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = value;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        co_alarm = [*(*(&v24 + 1) + 8 * i) co_alarm];
        v18 = co_alarm;
        if (co_alarm)
        {
          alarmID = [co_alarm alarmID];
          v20 = [v2 objectForKey:alarmID];
          v21 = [v18 COPreferredAlarm:v20];
          [v2 setObject:v21 forKey:alarmID];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)co_setMappedAlarms:()COMeshAlarmAddOn_Internal completionHandler:
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  allValues = [v6 allValues];
  v10 = [allValues sortedArrayUsingComparator:&__block_literal_global_0];

  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [MEMORY[0x277CD1690] co_accessoryCollectionSettingItemWithAlarm:*(*(&v30 + 1) + 8 * v13)];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
  }

  value = [self value];
  v16 = value;
  v17 = MEMORY[0x277CBEBF8];
  if (value)
  {
    v17 = value;
  }

  v18 = v17;

  objc_initWeak(&location, self);
  v19 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __96__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setMappedAlarms_completionHandler___block_invoke;
  v24[3] = &unk_278E161F8;
  v28[1] = v19;
  v20 = v18;
  v25 = v20;
  v21 = v8;
  v26 = v21;
  objc_copyWeak(v28, &location);
  v22 = v7;
  v27 = v22;
  [self replaceItems:v20 withItems:v21 completionHandler:v24];

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)co_mappedAlarms
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_244378000, a2, a3, "using cached write for %p", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end