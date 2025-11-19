@interface HMDTimePeriodElement
+ (BOOL)doesTypeMatch:(id)a3 against:(id)a4;
+ (id)type;
- (HMDTimePeriodElement)initWithDictionary:(id)a3;
- (id)serializedRegistrationForRemoteMessage;
@end

@implementation HMDTimePeriodElement

- (HMDTimePeriodElement)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)serializedRegistrationForRemoteMessage
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"HMDTPN.type";
  v2 = [objc_opt_class() type];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)type
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (BOOL)doesTypeMatch:(id)a3 against:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:@"HMDTPN.type"];
  v7 = [v6 isEqualToString:v5];

  return v7;
}

@end