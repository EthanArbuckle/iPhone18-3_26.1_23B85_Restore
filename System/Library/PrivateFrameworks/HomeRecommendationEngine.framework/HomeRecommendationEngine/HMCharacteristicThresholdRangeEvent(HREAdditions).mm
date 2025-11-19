@interface HMCharacteristicThresholdRangeEvent(HREAdditions)
- (id)hre_triggeringValues;
@end

@implementation HMCharacteristicThresholdRangeEvent(HREAdditions)

- (id)hre_triggeringValues
{
  v2 = [a1 characteristic];
  v3 = [v2 metadata];

  v4 = [v3 validValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMCharacteristicThresholdRangeEvent_HREAdditions__hre_triggeringValues__block_invoke;
  v7[3] = &unk_279777678;
  v7[4] = a1;
  v5 = [v4 na_filter:v7];

  return v5;
}

@end