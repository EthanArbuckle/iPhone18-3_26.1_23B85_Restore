@interface HMDHAPMetrics
- (HMDHAPMetrics)initWithHMDAccessory:(id)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
@end

@implementation HMDHAPMetrics

- (NSDictionary)coreAnalyticsEventDictionary
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

- (NSString)coreAnalyticsEventName
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

- (HMDHAPMetrics)initWithHMDAccessory:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDHAPMetrics;
  v5 = [(HMMLogEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 identifier];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = v6;
  }

  return v5;
}

@end