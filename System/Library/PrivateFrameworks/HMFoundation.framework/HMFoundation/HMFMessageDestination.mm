@interface HMFMessageDestination
+ (HMFMessageDestination)allMessageDestinations;
- (BOOL)isEqual:(id)equal;
- (HMFMessageDestination)initWithCoder:(id)coder;
- (HMFMessageDestination)initWithTarget:(id)target;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFMessageDestination

+ (HMFMessageDestination)allMessageDestinations
{
  v2 = [self alloc];
  v3 = +[HMFMessageDestination allMessageTargets];
  v4 = [v2 initWithTarget:v3];

  return v4;
}

- (HMFMessageDestination)initWithTarget:(id)target
{
  targetCopy = target;
  v9.receiver = self;
  v9.super_class = HMFMessageDestination;
  v6 = [(HMFMessageDestination *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_target, target);
  }

  return v7;
}

- (unint64_t)hash
{
  target = [(HMFMessageDestination *)self target];
  v3 = [target hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      target = [(HMFMessageDestination *)self target];
      target2 = [(HMFMessageDestination *)equalCopy target];
      v7 = [target isEqual:target2];
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
  shortDescription = [objc_opt_class() shortDescription];
  target = [(HMFMessageDestination *)self target];
  uUIDString = [target UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (NSArray)attributeDescriptions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  target = [(HMFMessageDestination *)self target];
  uUIDString = [target UUIDString];
  v6 = [(HMFAttributeDescription *)v3 initWithName:@"Target" value:uUIDString];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMFMessageDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.target"];
  if (v5)
  {
    self = [(HMFMessageDestination *)self initWithTarget:v5];
    selfCopy = self;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"HMFMessageDestination.target is required"];
    [coderCopy failWithError:v7];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  target = [(HMFMessageDestination *)self target];
  [coderCopy encodeObject:target forKey:@"HMF.target"];
}

@end