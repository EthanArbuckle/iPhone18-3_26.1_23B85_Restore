@interface HMAccessoryCollectionSettingItem
@end

@implementation HMAccessoryCollectionSettingItem

uint64_t __99__HMAccessoryCollectionSettingItem_HFAlarmUtilities__hf_alarmItemsMatchingAlarmId_withinItemArray___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D296D0] hf_buildAlarmFromCollectionSettingItem:a2];
  v4 = [v3 alarmID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

@end