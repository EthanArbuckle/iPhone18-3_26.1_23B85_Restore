@interface MTAlarm(HFAlarmUtilities)
+ (id)hf_buildAlarmFromCollectionSettingItem:()HFAlarmUtilities;
+ (id)hf_buildAlarmsFromCollectionSettingItems:()HFAlarmUtilities;
+ (uint64_t)hf_areAlarms:()HFAlarmUtilities equalToAlarms:includeModificationDate:;
+ (uint64_t)hf_verifyThatAlarmsAreConsistent:()HFAlarmUtilities;
+ (void)hf_alarmsMatchingAlarmId:()HFAlarmUtilities withinItemArray:;
@end

@implementation MTAlarm(HFAlarmUtilities)

+ (id)hf_buildAlarmFromCollectionSettingItem:()HFAlarmUtilities
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  value = [v3 value];
  if (objc_opt_isKindOfClass())
  {
    v6 = value;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 count])
  {
    v8 = [objc_alloc(MEMORY[0x277D29720]) initWithEncodedDictionary:v7];
    v9 = [v8 decodeObjectForKey:@"MTAlarms"];
    firstObject = [v9 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  objc_autoreleasePoolPop(v4);

  return firstObject;
}

+ (id)hf_buildAlarmsFromCollectionSettingItems:()HFAlarmUtilities
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [a3 na_map:&__block_literal_global_115];
  v5 = [v3 setWithArray:v4];

  allObjects = [v5 allObjects];
  v7 = [allObjects sortedArrayUsingSelector:sel_compare_];

  return v7;
}

+ (uint64_t)hf_areAlarms:()HFAlarmUtilities equalToAlarms:includeModificationDate:
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  [MEMORY[0x277D296D0] hf_verifyThatAlarmsAreConsistent:v7];
  [MEMORY[0x277D296D0] hf_verifyThatAlarmsAreConsistent:v8];
  if (v7 == v8)
  {
    v17 = 1;
  }

  else if ((v7 || !v8) && (!v7 || v8) && (v9 = [v7 count], v9 == objc_msgSend(v8, "count")))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v7;
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __80__MTAlarm_HFAlarmUtilities__hf_areAlarms_equalToAlarms_includeModificationDate___block_invoke;
          v21[3] = &unk_277DFBFA0;
          v21[4] = v14;
          v15 = [v8 na_firstObjectPassingTest:v21];
          v16 = v15;
          if (a5)
          {
            if (![v15 isEqualToAlarm:v14])
            {
              goto LABEL_22;
            }
          }

          else if (([v15 isEqualIgnoringLastModifiedDate:v14] & 1) == 0)
          {
LABEL_22:

            v17 = 0;
            goto LABEL_23;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 1;
LABEL_23:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (void)hf_alarmsMatchingAlarmId:()HFAlarmUtilities withinItemArray:
{
  v5 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__MTAlarm_HFAlarmUtilities__hf_alarmsMatchingAlarmId_withinItemArray___block_invoke;
  v12[3] = &unk_277DFBF58;
  v13 = v5;
  v6 = v5;
  v7 = [a4 na_filter:v12];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  return v9;
}

+ (uint64_t)hf_verifyThatAlarmsAreConsistent:()HFAlarmUtilities
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [a3 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_25_7];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    v8 = 1;
    *&v5 = 138412290;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:{v10, v17}];
        v12 = [v11 count];

        if (v12 >= 2)
        {
          v13 = HFLogForCategory(0x3EuLL);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = [v3 objectForKeyedSubscript:v10];
            *buf = v17;
            v23 = v14;
            _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "FOUND DUPLICATE ALARMS: %@", buf, 0xCu);
          }

          v8 = 0;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

@end