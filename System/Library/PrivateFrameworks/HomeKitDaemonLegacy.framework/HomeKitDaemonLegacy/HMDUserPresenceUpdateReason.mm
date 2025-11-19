@interface HMDUserPresenceUpdateReason
+ (HMDUserPresenceUpdateReason)reasonWithCoder:(id)a3;
+ (HMDUserPresenceUpdateReason)reasonWithDict:(id)a3;
+ (HMDUserPresenceUpdateReason)reasonWithMessage:(id)a3;
+ (HMDUserPresenceUpdateReason)reasonWithNumber:(id)a3;
+ (HMDUserPresenceUpdateReason)reasonWithValue:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HMDUserPresenceUpdateReason)initWithNumber:(id)a3;
- (NSNumber)number;
- (id)description;
- (void)addToCoder:(id)a3;
- (void)addToPayload:(id)a3;
@end

@implementation HMDUserPresenceUpdateReason

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDUserPresenceUpdateReason *)self value];
  if (v3 - 2 >= 0xB)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDUserPresenceUpdateReasonStatus %tu", v3];
  }

  else
  {
    v4 = off_279735818[v3 - 2];
  }

  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDUserPresenceUpdateReason *)self value];
      v8 = v7 == [(HMDUserPresenceUpdateReason *)v6 value];
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
  v3 = [(HMDUserPresenceUpdateReason *)self value];

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)addToPayload:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserPresenceUpdateReason *)self number];
  [v4 setObject:v5 forKeyedSubscript:@"kUserPresenceStatusUpdateReasonKey"];
}

- (void)addToCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserPresenceUpdateReason *)self number];
  [v4 encodeObject:v5 forKey:@"kUserPresenceStatusUpdateReasonKey"];
}

- (HMDUserPresenceUpdateReason)initWithNumber:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8.receiver = self;
    v8.super_class = HMDUserPresenceUpdateReason;
    v5 = [(HMDUserPresenceUpdateReason *)&v8 init];
    if (v5)
    {
      v5->_value = [v4 unsignedIntegerValue];
    }

    self = v5;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (HMDUserPresenceUpdateReason)reasonWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"kUserPresenceStatusUpdateReasonKey"];

  v5 = [HMDUserPresenceUpdateReason reasonWithNumber:v4];

  return v5;
}

+ (HMDUserPresenceUpdateReason)reasonWithDict:(id)a3
{
  v3 = [a3 hmf_numberForKey:@"kUserPresenceStatusUpdateReasonKey"];
  v4 = [HMDUserPresenceUpdateReason reasonWithNumber:v3];

  return v4;
}

+ (HMDUserPresenceUpdateReason)reasonWithMessage:(id)a3
{
  v3 = [a3 numberForKey:@"kUserPresenceStatusUpdateReasonKey"];
  v4 = [HMDUserPresenceUpdateReason reasonWithNumber:v3];

  return v4;
}

+ (HMDUserPresenceUpdateReason)reasonWithNumber:(id)a3
{
  v3 = a3;
  v4 = [[HMDUserPresenceUpdateReason alloc] initWithNumber:v3];

  return v4;
}

+ (HMDUserPresenceUpdateReason)reasonWithValue:(unint64_t)a3
{
  v4 = [HMDUserPresenceUpdateReason alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [(HMDUserPresenceUpdateReason *)v4 initWithNumber:v5];

  return v6;
}

@end