@interface HMDTriggerPolicy
- (BOOL)isEqual:(id)equal;
- (HMDTriggerPolicy)initWithCoder:(id)coder;
- (HMDTriggerPolicy)initWithIdentifier:(id)identifier;
- (void)applyPolicy:(id)policy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDTriggerPolicy

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
    uuid = [(HMDTriggerPolicy *)self uuid];
    uuid2 = [v6 uuid];
    v9 = [uuid isEqual:uuid2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(HMDTriggerPolicy *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:*MEMORY[0x277CD1280]];
}

- (HMDTriggerPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1280]];

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  v7 = [(HMDTriggerPolicy *)self initWithIdentifier:v6];

  return v7;
}

- (void)applyPolicy:(id)policy
{
  policyCopy = policy;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMDTriggerPolicy)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HMDTriggerPolicy;
  v6 = [(HMDTriggerPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, identifier);
  }

  return v7;
}

@end