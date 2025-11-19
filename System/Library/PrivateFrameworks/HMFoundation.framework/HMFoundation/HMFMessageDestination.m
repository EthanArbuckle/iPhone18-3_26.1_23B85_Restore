@interface HMFMessageDestination
+ (HMFMessageDestination)allMessageDestinations;
- (BOOL)isEqual:(id)a3;
- (HMFMessageDestination)initWithCoder:(id)a3;
- (HMFMessageDestination)initWithTarget:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFMessageDestination

+ (HMFMessageDestination)allMessageDestinations
{
  v2 = [a1 alloc];
  v3 = +[HMFMessageDestination allMessageTargets];
  v4 = [v2 initWithTarget:v3];

  return v4;
}

- (HMFMessageDestination)initWithTarget:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMFMessageDestination;
  v6 = [(HMFMessageDestination *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_target, a3);
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HMFMessageDestination *)self target];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HMFMessageDestination *)self target];
      v6 = [(HMFMessageDestination *)v4 target];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMFMessageDestination *)self target];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (NSArray)attributeDescriptions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMFMessageDestination *)self target];
  v5 = [v4 UUIDString];
  v6 = [(HMFAttributeDescription *)v3 initWithName:@"Target" value:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMFMessageDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMF.target"];
  if (v5)
  {
    self = [(HMFMessageDestination *)self initWithTarget:v5];
    v6 = self;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"HMFMessageDestination.target is required"];
    [v4 failWithError:v7];

    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessageDestination *)self target];
  [v4 encodeObject:v5 forKey:@"HMF.target"];
}

@end