@interface MTAlarm
@end

@implementation MTAlarm

uint64_t __49__MTAlarm_HFAdditions__hf_targetAccessoryInHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

uint64_t __80__MTAlarm_HFAlarmUtilities__hf_areAlarms_equalToAlarms_includeModificationDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alarmID];
  v4 = [*(a1 + 32) alarmID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __70__MTAlarm_HFAlarmUtilities__hf_alarmsMatchingAlarmId_withinItemArray___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D296D0] hf_buildAlarmFromCollectionSettingItem:a2];
  v4 = [v3 alarmID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

@end