@interface HFPowerStateTargetValueTuple
+ (NAIdentity)na_identity;
+ (id)fanStateTargetValueTuple;
- (BOOL)isEqual:(id)equal;
- (HFPowerStateTargetValueTuple)init;
- (HFPowerStateTargetValueTuple)initWithCharacteristicType:(id)type onTargetValue:(id)value offTargetValue:(id)targetValue;
- (id)targetValueForPrimaryState:(int64_t)state;
- (int64_t)primaryStateForTargetValue:(id)value;
- (unint64_t)hash;
@end

@implementation HFPowerStateTargetValueTuple

+ (id)fanStateTargetValueTuple
{
  v2 = [objc_alloc(objc_opt_class()) initWithCharacteristicType:*MEMORY[0x277CCFB10] onTargetValue:&unk_2825234A8 offTargetValue:0];

  return v2;
}

- (HFPowerStateTargetValueTuple)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCharacteristicType_onTargetValue_offTargetValue_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFPowerStateControlItem.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFPowerStateTargetValueTuple init]", v5}];

  return 0;
}

- (HFPowerStateTargetValueTuple)initWithCharacteristicType:(id)type onTargetValue:(id)value offTargetValue:(id)targetValue
{
  typeCopy = type;
  valueCopy = value;
  targetValueCopy = targetValue;
  v15.receiver = self;
  v15.super_class = HFPowerStateTargetValueTuple;
  v12 = [(HFPowerStateTargetValueTuple *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_characteristicType, type);
    objc_storeStrong(&v13->_onTargetValue, value);
    objc_storeStrong(&v13->_offTargetValue, targetValue);
  }

  return v13;
}

- (id)targetValueForPrimaryState:(int64_t)state
{
  if (state == 2)
  {
    [(HFPowerStateTargetValueTuple *)self onTargetValue];
  }

  else
  {
    [(HFPowerStateTargetValueTuple *)self offTargetValue];
  }
  v3 = ;

  return v3;
}

- (int64_t)primaryStateForTargetValue:(id)value
{
  valueCopy = value;
  onTargetValue = [(HFPowerStateTargetValueTuple *)self onTargetValue];
  v6 = [valueCopy isEqual:onTargetValue];

  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_6_0 != -1)
  {
    dispatch_once(&_MergedGlobals_6_0, &__block_literal_global_10);
  }

  v3 = qword_27C84C438;

  return v3;
}

void __43__HFPowerStateTargetValueTuple_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_17];
  v2 = [v1 appendCharacteristic:&__block_literal_global_20];
  v3 = [v2 appendCharacteristic:&__block_literal_global_22];

  v4 = [v0 build];

  v5 = qword_27C84C438;
  qword_27C84C438 = v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

@end