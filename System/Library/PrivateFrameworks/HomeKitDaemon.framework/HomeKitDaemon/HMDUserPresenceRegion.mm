@interface HMDUserPresenceRegion
+ (HMDUserPresenceRegion)regionWithCoder:(id)a3;
+ (HMDUserPresenceRegion)regionWithDict:(id)a3;
+ (HMDUserPresenceRegion)regionWithMessage:(id)a3;
+ (HMDUserPresenceRegion)regionWithNumber:(id)a3;
+ (HMDUserPresenceRegion)regionWithValue:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HMDUserPresenceRegion)initWithNumber:(id)a3;
- (NSNumber)number;
- (id)description;
- (void)addToCoder:(id)a3;
- (void)addToPayload:(id)a3;
@end

@implementation HMDUserPresenceRegion

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDUserPresenceRegionStatusAsString([(HMDUserPresenceRegion *)self value]);
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
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
      v7 = [(HMDUserPresenceRegion *)self value];
      v8 = v7 == [(HMDUserPresenceRegion *)v6 value];
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
  v3 = [(HMDUserPresenceRegion *)self value];

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)addToPayload:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserPresenceRegion *)self number];
  [v4 setObject:v5 forKeyedSubscript:@"kUserPresenceRegionStatusKey"];
}

- (void)addToCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserPresenceRegion *)self number];
  [v4 encodeObject:v5 forKey:@"kUserPresenceRegionStatusKey"];
}

- (HMDUserPresenceRegion)initWithNumber:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8.receiver = self;
    v8.super_class = HMDUserPresenceRegion;
    v5 = [(HMDUserPresenceRegion *)&v8 init];
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

+ (HMDUserPresenceRegion)regionWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"kUserPresenceRegionStatusKey"];

  v5 = [HMDUserPresenceRegion regionWithNumber:v4];

  return v5;
}

+ (HMDUserPresenceRegion)regionWithDict:(id)a3
{
  v3 = [a3 hmf_numberForKey:@"kUserPresenceRegionStatusKey"];
  v4 = [HMDUserPresenceRegion regionWithNumber:v3];

  return v4;
}

+ (HMDUserPresenceRegion)regionWithMessage:(id)a3
{
  v3 = [a3 numberForKey:@"kUserPresenceRegionStatusKey"];
  v4 = [HMDUserPresenceRegion regionWithNumber:v3];

  return v4;
}

+ (HMDUserPresenceRegion)regionWithNumber:(id)a3
{
  v3 = a3;
  v4 = [[HMDUserPresenceRegion alloc] initWithNumber:v3];

  return v4;
}

+ (HMDUserPresenceRegion)regionWithValue:(unint64_t)a3
{
  v4 = [HMDUserPresenceRegion alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [(HMDUserPresenceRegion *)v4 initWithNumber:v5];

  return v6;
}

@end