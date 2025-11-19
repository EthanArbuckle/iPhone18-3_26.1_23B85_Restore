@interface HMAccessoryCollectionSettingItem(HFAlarmUtilities)
+ (id)hf_collectionSettingItemForAlarm:()HFAlarmUtilities;
+ (void)hf_alarmItemsMatchingAlarmId:()HFAlarmUtilities withinItemArray:;
@end

@implementation HMAccessoryCollectionSettingItem(HFAlarmUtilities)

+ (id)hf_collectionSettingItemForAlarm:()HFAlarmUtilities
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"HFAccessorySettingMobileTimerUtilities.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"alarm"}];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v15[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v7 encodeObject:v8 forKey:@"MTAlarms"];

  v9 = objc_alloc(MEMORY[0x277CD1690]);
  v10 = [v7 encodedDictionary];
  v11 = [v9 initWithValue:v10];

  objc_autoreleasePoolPop(v6);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (void)hf_alarmItemsMatchingAlarmId:()HFAlarmUtilities withinItemArray:
{
  v5 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__HMAccessoryCollectionSettingItem_HFAlarmUtilities__hf_alarmItemsMatchingAlarmId_withinItemArray___block_invoke;
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

@end