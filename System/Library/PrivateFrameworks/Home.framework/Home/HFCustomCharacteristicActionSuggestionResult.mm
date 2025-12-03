@interface HFCustomCharacteristicActionSuggestionResult
- (HFCustomCharacteristicActionSuggestionResult)initWithCharacteristic:(id)characteristic targetValue:(id)value matchingActions:(id)actions;
@end

@implementation HFCustomCharacteristicActionSuggestionResult

- (HFCustomCharacteristicActionSuggestionResult)initWithCharacteristic:(id)characteristic targetValue:(id)value matchingActions:(id)actions
{
  characteristicCopy = characteristic;
  valueCopy = value;
  actionsCopy = actions;
  v15.receiver = self;
  v15.super_class = HFCustomCharacteristicActionSuggestionResult;
  v12 = [(HFCustomCharacteristicActionSuggestionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_characteristic, characteristic);
    objc_storeStrong(&v13->_targetValue, value);
    objc_storeStrong(&v13->_matchingExistingActions, actions);
  }

  return v13;
}

@end