@interface HMAccessoryCollectionSetting(COMeshAlarmAddOn)
- (id)co_alarms;
- (id)co_rawAlarms;
- (void)co_addAlarm:()COMeshAlarmAddOn completionHandler:;
- (void)co_removeAlarm:()COMeshAlarmAddOn completionHandler:;
- (void)co_updateAlarm:()COMeshAlarmAddOn completionHandler:;
@end

@implementation HMAccessoryCollectionSetting(COMeshAlarmAddOn)

- (id)co_alarms
{
  v1 = [a1 co_mappedAlarms];
  v2 = [v1 allValues];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_0];

  return v3;
}

- (id)co_rawAlarms
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [a1 value];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v17 + 1) + 8 * i) _co_alarm];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 alarmID];
          v11 = [v2 objectForKey:v10];
          v12 = [v9 COPreferredAlarm:v11];
          [v2 setObject:v12 forKey:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = [v2 allValues];
  v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_0];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)co_addAlarm:()COMeshAlarmAddOn completionHandler:
{
  v6 = a4;
  v7 = a3;
  v8 = [[COAlarmOperation alloc] initForAdding:v7 completion:v6];

  [a1 co_enqueueOperation:v8];
}

- (void)co_updateAlarm:()COMeshAlarmAddOn completionHandler:
{
  v6 = a4;
  v7 = a3;
  v8 = [[COAlarmOperation alloc] initForUpdating:v7 completion:v6];

  [a1 co_enqueueOperation:v8];
}

- (void)co_removeAlarm:()COMeshAlarmAddOn completionHandler:
{
  v6 = a4;
  v7 = a3;
  v8 = [[COAlarmOperation alloc] initForRemoving:v7 completion:v6];

  [a1 co_enqueueOperation:v8];
}

@end