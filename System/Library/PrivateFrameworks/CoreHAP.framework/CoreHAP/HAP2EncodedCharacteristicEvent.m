@interface HAP2EncodedCharacteristicEvent
+ (id)new;
- (HAP2EncodedCharacteristicEvent)init;
- (HAP2EncodedCharacteristicEvent)initWithInstanceID:(id)a3 encodedValueData:(id)a4 encodedContextData:(id)a5;
@end

@implementation HAP2EncodedCharacteristicEvent

- (HAP2EncodedCharacteristicEvent)initWithInstanceID:(id)a3 encodedValueData:(id)a4 encodedContextData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAP2EncodedCharacteristicEvent;
  v12 = [(HAP2EncodedCharacteristicEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_instanceID, a3);
    objc_storeStrong(&v13->_encodedValueData, a4);
    objc_storeStrong(&v13->_encodedContextData, a5);
  }

  return v13;
}

- (HAP2EncodedCharacteristicEvent)init
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

+ (id)new
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