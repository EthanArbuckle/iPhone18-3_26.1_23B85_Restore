@interface HMDAccessoryCategoryLogEvent
+ (id)denominatorSpecifyingEvent;
- (HMDAccessoryCategoryLogEvent)initWithAccessoryDetailsType:(unint64_t)a3 accessoryCategoryIdentifier:(id)a4 homeUUID:(id)a5;
- (NSData)sampledData;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAccessoryCategoryLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryCategoryLogEvent accessoryDetailsType](self, "accessoryDetailsType")}];
  [v3 setObject:v4 forKeyedSubscript:@"accessoryDetailsType"];

  v5 = [(HMDAccessoryCategoryLogEvent *)self accessoryCategoryIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"accessoryCategoryUUID"];

  [v3 setObject:&unk_2866276D0 forKeyedSubscript:@"accessoryCategoryCount"];
  v6 = [v3 copy];

  return v6;
}

- (NSData)sampledData
{
  v3 = MEMORY[0x277CBEB28];
  v4 = [(HMDAccessoryCategoryLogEvent *)self accessoryCategoryIdentifier];
  v5 = [v4 dataUsingEncoding:4];
  v6 = [v3 dataWithData:v5];

  v9 = [(HMDAccessoryCategoryLogEvent *)self accessoryDetailsType];
  [v6 appendBytes:&v9 length:8];
  v7 = [v6 copy];

  return v7;
}

- (HMDAccessoryCategoryLogEvent)initWithAccessoryDetailsType:(unint64_t)a3 accessoryCategoryIdentifier:(id)a4 homeUUID:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = HMDAccessoryCategoryLogEvent;
  v10 = [(HMMHomeLogEvent *)&v13 initWithHomeUUID:a5];
  v11 = v10;
  if (v10)
  {
    v10->_accessoryDetailsType = a3;
    objc_storeStrong(&v10->_accessoryCategoryIdentifier, a4);
    v11->_isDenominatorSpecifying = a3 == 0;
  }

  return v11;
}

+ (id)denominatorSpecifyingEvent
{
  v2 = objc_alloc(objc_opt_class());
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v2 initWithAccessoryDetailsType:0 accessoryCategoryIdentifier:0 homeUUID:v3];

  return v4;
}

@end