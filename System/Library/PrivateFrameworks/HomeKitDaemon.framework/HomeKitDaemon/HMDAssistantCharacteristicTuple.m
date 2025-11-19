@interface HMDAssistantCharacteristicTuple
- (HMDAssistantCharacteristicTuple)init;
- (HMDAssistantCharacteristicTuple)initWithAttribute:(id)a3 value:(id)a4;
@end

@implementation HMDAssistantCharacteristicTuple

- (HMDAssistantCharacteristicTuple)initWithAttribute:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDAssistantCharacteristicTuple;
  v9 = [(HMDAssistantCharacteristicTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attribute, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

- (HMDAssistantCharacteristicTuple)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end