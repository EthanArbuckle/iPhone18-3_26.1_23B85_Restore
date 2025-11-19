@interface HFPowerStateTargetValueTuple
+ (NAIdentity)na_identity;
+ (id)fanStateTargetValueTuple;
- (BOOL)isEqual:(id)a3;
- (HFPowerStateTargetValueTuple)init;
- (HFPowerStateTargetValueTuple)initWithCharacteristicType:(id)a3 onTargetValue:(id)a4 offTargetValue:(id)a5;
- (id)targetValueForPrimaryState:(int64_t)a3;
- (int64_t)primaryStateForTargetValue:(id)a3;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCharacteristicType_onTargetValue_offTargetValue_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFPowerStateControlItem.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFPowerStateTargetValueTuple init]", v5}];

  return 0;
}

- (HFPowerStateTargetValueTuple)initWithCharacteristicType:(id)a3 onTargetValue:(id)a4 offTargetValue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HFPowerStateTargetValueTuple;
  v12 = [(HFPowerStateTargetValueTuple *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_characteristicType, a3);
    objc_storeStrong(&v13->_onTargetValue, a4);
    objc_storeStrong(&v13->_offTargetValue, a5);
  }

  return v13;
}

- (id)targetValueForPrimaryState:(int64_t)a3
{
  if (a3 == 2)
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

- (int64_t)primaryStateForTargetValue:(id)a3
{
  v4 = a3;
  v5 = [(HFPowerStateTargetValueTuple *)self onTargetValue];
  v6 = [v4 isEqual:v5];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

@end