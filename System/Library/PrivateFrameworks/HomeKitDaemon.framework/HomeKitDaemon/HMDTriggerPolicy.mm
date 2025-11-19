@interface HMDTriggerPolicy
- (BOOL)isEqual:(id)a3;
- (HMDTriggerPolicy)initWithCoder:(id)a3;
- (HMDTriggerPolicy)initWithIdentifier:(id)a3;
- (void)applyPolicy:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDTriggerPolicy

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
    v7 = [(HMDTriggerPolicy *)self uuid];
    v8 = [v6 uuid];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(HMDTriggerPolicy *)self uuid];
  v5 = [v6 UUIDString];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD1280]];
}

- (HMDTriggerPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1280]];

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  v7 = [(HMDTriggerPolicy *)self initWithIdentifier:v6];

  return v7;
}

- (void)applyPolicy:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMDTriggerPolicy)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDTriggerPolicy;
  v6 = [(HMDTriggerPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

@end