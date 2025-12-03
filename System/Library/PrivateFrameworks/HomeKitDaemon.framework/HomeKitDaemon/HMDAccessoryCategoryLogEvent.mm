@interface HMDAccessoryCategoryLogEvent
+ (id)denominatorSpecifyingEvent;
- (HMDAccessoryCategoryLogEvent)initWithAccessoryDetailsType:(unint64_t)type accessoryCategoryIdentifier:(id)identifier homeUUID:(id)d;
- (NSData)sampledData;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAccessoryCategoryLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryCategoryLogEvent accessoryDetailsType](self, "accessoryDetailsType")}];
  [dictionary setObject:v4 forKeyedSubscript:@"accessoryDetailsType"];

  accessoryCategoryIdentifier = [(HMDAccessoryCategoryLogEvent *)self accessoryCategoryIdentifier];
  [dictionary setObject:accessoryCategoryIdentifier forKeyedSubscript:@"accessoryCategoryUUID"];

  [dictionary setObject:&unk_283E72398 forKeyedSubscript:@"accessoryCategoryCount"];
  v6 = [dictionary copy];

  return v6;
}

- (NSData)sampledData
{
  v3 = MEMORY[0x277CBEB28];
  accessoryCategoryIdentifier = [(HMDAccessoryCategoryLogEvent *)self accessoryCategoryIdentifier];
  v5 = [accessoryCategoryIdentifier dataUsingEncoding:4];
  v6 = [v3 dataWithData:v5];

  accessoryDetailsType = [(HMDAccessoryCategoryLogEvent *)self accessoryDetailsType];
  [v6 appendBytes:&accessoryDetailsType length:8];
  v7 = [v6 copy];

  return v7;
}

- (HMDAccessoryCategoryLogEvent)initWithAccessoryDetailsType:(unint64_t)type accessoryCategoryIdentifier:(id)identifier homeUUID:(id)d
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = HMDAccessoryCategoryLogEvent;
  v10 = [(HMMHomeLogEvent *)&v13 initWithHomeUUID:d];
  v11 = v10;
  if (v10)
  {
    v10->_accessoryDetailsType = type;
    objc_storeStrong(&v10->_accessoryCategoryIdentifier, identifier);
    v11->_isDenominatorSpecifying = type == 0;
  }

  return v11;
}

+ (id)denominatorSpecifyingEvent
{
  v2 = objc_alloc(objc_opt_class());
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = [v2 initWithAccessoryDetailsType:0 accessoryCategoryIdentifier:0 homeUUID:uUID];

  return v4;
}

@end