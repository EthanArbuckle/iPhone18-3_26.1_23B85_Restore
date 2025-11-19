@interface HFCustomCharacteristicActionSuggestionResult
- (HFCustomCharacteristicActionSuggestionResult)initWithCharacteristic:(id)a3 targetValue:(id)a4 matchingActions:(id)a5;
@end

@implementation HFCustomCharacteristicActionSuggestionResult

- (HFCustomCharacteristicActionSuggestionResult)initWithCharacteristic:(id)a3 targetValue:(id)a4 matchingActions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HFCustomCharacteristicActionSuggestionResult;
  v12 = [(HFCustomCharacteristicActionSuggestionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_characteristic, a3);
    objc_storeStrong(&v13->_targetValue, a4);
    objc_storeStrong(&v13->_matchingExistingActions, a5);
  }

  return v13;
}

@end