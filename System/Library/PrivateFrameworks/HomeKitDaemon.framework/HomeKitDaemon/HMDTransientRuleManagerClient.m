@interface HMDTransientRuleManagerClient
- (HMDTransientRuleManagerClient)initWithDescription:(id)a3;
- (NSString)description;
@end

@implementation HMDTransientRuleManagerClient

- (NSString)description
{
  if (self->_description)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"<%@ %p - %@>", v5, self, self->_description];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HMDTransientRuleManagerClient;
    v6 = [(HMDTransientRuleManagerClient *)&v8 description];
  }

  return v6;
}

- (HMDTransientRuleManagerClient)initWithDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDTransientRuleManagerClient;
  v6 = [(HMDTransientRuleManagerClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_description, a3);
  }

  return v7;
}

@end