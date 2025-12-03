@interface HMDUserPresenceUpdateReason
+ (HMDUserPresenceUpdateReason)reasonWithCoder:(id)coder;
+ (HMDUserPresenceUpdateReason)reasonWithDict:(id)dict;
+ (HMDUserPresenceUpdateReason)reasonWithMessage:(id)message;
+ (HMDUserPresenceUpdateReason)reasonWithNumber:(id)number;
+ (HMDUserPresenceUpdateReason)reasonWithValue:(unint64_t)value;
- (BOOL)isEqual:(id)equal;
- (HMDUserPresenceUpdateReason)initWithNumber:(id)number;
- (NSNumber)number;
- (id)description;
- (void)addToCoder:(id)coder;
- (void)addToPayload:(id)payload;
@end

@implementation HMDUserPresenceUpdateReason

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  value = [(HMDUserPresenceUpdateReason *)self value];
  if (value - 2 >= 0xB)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDUserPresenceUpdateReasonStatus %tu", value];
  }

  else
  {
    v4 = off_279735818[value - 2];
  }

  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
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
      value = [(HMDUserPresenceUpdateReason *)self value];
      v8 = value == [(HMDUserPresenceUpdateReason *)v6 value];
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
  value = [(HMDUserPresenceUpdateReason *)self value];

  return [v2 numberWithUnsignedInteger:value];
}

- (void)addToPayload:(id)payload
{
  payloadCopy = payload;
  number = [(HMDUserPresenceUpdateReason *)self number];
  [payloadCopy setObject:number forKeyedSubscript:@"kUserPresenceStatusUpdateReasonKey"];
}

- (void)addToCoder:(id)coder
{
  coderCopy = coder;
  number = [(HMDUserPresenceUpdateReason *)self number];
  [coderCopy encodeObject:number forKey:@"kUserPresenceStatusUpdateReasonKey"];
}

- (HMDUserPresenceUpdateReason)initWithNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    v8.receiver = self;
    v8.super_class = HMDUserPresenceUpdateReason;
    v5 = [(HMDUserPresenceUpdateReason *)&v8 init];
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

+ (HMDUserPresenceUpdateReason)reasonWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUserPresenceStatusUpdateReasonKey"];

  v5 = [HMDUserPresenceUpdateReason reasonWithNumber:v4];

  return v5;
}

+ (HMDUserPresenceUpdateReason)reasonWithDict:(id)dict
{
  v3 = [dict hmf_numberForKey:@"kUserPresenceStatusUpdateReasonKey"];
  v4 = [HMDUserPresenceUpdateReason reasonWithNumber:v3];

  return v4;
}

+ (HMDUserPresenceUpdateReason)reasonWithMessage:(id)message
{
  v3 = [message numberForKey:@"kUserPresenceStatusUpdateReasonKey"];
  v4 = [HMDUserPresenceUpdateReason reasonWithNumber:v3];

  return v4;
}

+ (HMDUserPresenceUpdateReason)reasonWithNumber:(id)number
{
  numberCopy = number;
  v4 = [[HMDUserPresenceUpdateReason alloc] initWithNumber:numberCopy];

  return v4;
}

+ (HMDUserPresenceUpdateReason)reasonWithValue:(unint64_t)value
{
  v4 = [HMDUserPresenceUpdateReason alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  v6 = [(HMDUserPresenceUpdateReason *)v4 initWithNumber:v5];

  return v6;
}

@end