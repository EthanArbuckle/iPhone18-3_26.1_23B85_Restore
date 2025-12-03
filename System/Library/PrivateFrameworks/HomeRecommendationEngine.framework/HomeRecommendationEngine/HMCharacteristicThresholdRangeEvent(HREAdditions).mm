@interface HMCharacteristicThresholdRangeEvent(HREAdditions)
- (id)hre_triggeringValues;
@end

@implementation HMCharacteristicThresholdRangeEvent(HREAdditions)

- (id)hre_triggeringValues
{
  characteristic = [self characteristic];
  metadata = [characteristic metadata];

  validValues = [metadata validValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMCharacteristicThresholdRangeEvent_HREAdditions__hre_triggeringValues__block_invoke;
  v7[3] = &unk_279777678;
  v7[4] = self;
  v5 = [validValues na_filter:v7];

  return v5;
}

@end