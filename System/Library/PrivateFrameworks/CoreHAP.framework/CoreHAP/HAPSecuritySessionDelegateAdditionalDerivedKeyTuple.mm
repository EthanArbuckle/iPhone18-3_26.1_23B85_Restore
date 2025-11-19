@interface HAPSecuritySessionDelegateAdditionalDerivedKeyTuple
+ (id)new;
- (HAPSecuritySessionDelegateAdditionalDerivedKeyTuple)init;
- (HAPSecuritySessionDelegateAdditionalDerivedKeyTuple)initWithName:(id)a3 saltData:(id)a4 infoData:(id)a5;
@end

@implementation HAPSecuritySessionDelegateAdditionalDerivedKeyTuple

- (HAPSecuritySessionDelegateAdditionalDerivedKeyTuple)initWithName:(id)a3 saltData:(id)a4 infoData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HAPSecuritySessionDelegateAdditionalDerivedKeyTuple;
  v11 = [(HAPSecuritySessionDelegateAdditionalDerivedKeyTuple *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 copy];
    saltData = v11->_saltData;
    v11->_saltData = v14;

    v16 = [v10 copy];
    infoData = v11->_infoData;
    v11->_infoData = v16;
  }

  return v11;
}

- (HAPSecuritySessionDelegateAdditionalDerivedKeyTuple)init
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