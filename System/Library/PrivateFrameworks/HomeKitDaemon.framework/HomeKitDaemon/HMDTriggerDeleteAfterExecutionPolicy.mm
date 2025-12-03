@interface HMDTriggerDeleteAfterExecutionPolicy
- (BOOL)isEqual:(id)equal;
- (HMDTriggerDeleteAfterExecutionPolicy)init;
- (HMDTriggerDeleteAfterExecutionPolicy)initWithCoder:(id)coder;
- (void)applyPolicy:(id)policy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDTriggerDeleteAfterExecutionPolicy

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = HMDTriggerDeleteAfterExecutionPolicy;
  return [(HMDTriggerDeletePolicy *)&v4 isEqual:equal];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = HMDTriggerDeleteAfterExecutionPolicy;
  [(HMDTriggerDeletePolicy *)&v3 encodeWithCoder:coder];
}

- (HMDTriggerDeleteAfterExecutionPolicy)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HMDTriggerDeleteAfterExecutionPolicy;
  return [(HMDTriggerDeletePolicy *)&v4 initWithCoder:coder];
}

- (void)applyPolicy:(id)policy
{
  v3.receiver = self;
  v3.super_class = HMDTriggerDeleteAfterExecutionPolicy;
  [(HMDTriggerDeletePolicy *)&v3 applyPolicy:policy];
}

- (HMDTriggerDeleteAfterExecutionPolicy)init
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [v3 initWithUUIDString:*MEMORY[0x277CD1258]];
  v7.receiver = self;
  v7.super_class = HMDTriggerDeleteAfterExecutionPolicy;
  v5 = [(HMDTriggerDeletePolicy *)&v7 initWithIdentifier:v4];

  return v5;
}

@end