@interface HMDUserPresenceRegion
+ (HMDUserPresenceRegion)regionWithCoder:(id)coder;
+ (HMDUserPresenceRegion)regionWithDict:(id)dict;
+ (HMDUserPresenceRegion)regionWithMessage:(id)message;
+ (HMDUserPresenceRegion)regionWithNumber:(id)number;
+ (HMDUserPresenceRegion)regionWithValue:(unint64_t)value;
- (BOOL)isEqual:(id)equal;
- (HMDUserPresenceRegion)initWithNumber:(id)number;
- (NSNumber)number;
- (id)description;
- (void)addToCoder:(id)coder;
- (void)addToPayload:(id)payload;
@end

@implementation HMDUserPresenceRegion

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDUserPresenceRegionStatusAsString([(HMDUserPresenceRegion *)self value]);
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      value = [(HMDUserPresenceRegion *)self value];
      v8 = value == [(HMDUserPresenceRegion *)v6 value];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSNumber)number
{
  v2 = MEMORY[0x277CCABB0];
  value = [(HMDUserPresenceRegion *)self value];

  return [v2 numberWithUnsignedInteger:value];
}

- (void)addToPayload:(id)payload
{
  payloadCopy = payload;
  number = [(HMDUserPresenceRegion *)self number];
  [payloadCopy setObject:number forKeyedSubscript:@"kUserPresenceRegionStatusKey"];
}

- (void)addToCoder:(id)coder
{
  coderCopy = coder;
  number = [(HMDUserPresenceRegion *)self number];
  [coderCopy encodeObject:number forKey:@"kUserPresenceRegionStatusKey"];
}

- (HMDUserPresenceRegion)initWithNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    v8.receiver = self;
    v8.super_class = HMDUserPresenceRegion;
    v5 = [(HMDUserPresenceRegion *)&v8 init];
    if (v5)
    {
      v5->_value = [numberCopy unsignedIntegerValue];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (HMDUserPresenceRegion)regionWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUserPresenceRegionStatusKey"];

  v5 = [HMDUserPresenceRegion regionWithNumber:v4];

  return v5;
}

+ (HMDUserPresenceRegion)regionWithDict:(id)dict
{
  v3 = [dict hmf_numberForKey:@"kUserPresenceRegionStatusKey"];
  v4 = [HMDUserPresenceRegion regionWithNumber:v3];

  return v4;
}

+ (HMDUserPresenceRegion)regionWithMessage:(id)message
{
  v3 = [message numberForKey:@"kUserPresenceRegionStatusKey"];
  v4 = [HMDUserPresenceRegion regionWithNumber:v3];

  return v4;
}

+ (HMDUserPresenceRegion)regionWithNumber:(id)number
{
  numberCopy = number;
  v4 = [[HMDUserPresenceRegion alloc] initWithNumber:numberCopy];

  return v4;
}

+ (HMDUserPresenceRegion)regionWithValue:(unint64_t)value
{
  v4 = [HMDUserPresenceRegion alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  v6 = [(HMDUserPresenceRegion *)v4 initWithNumber:v5];

  return v6;
}

@end