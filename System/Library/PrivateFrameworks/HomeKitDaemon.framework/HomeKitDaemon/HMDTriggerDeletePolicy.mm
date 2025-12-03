@interface HMDTriggerDeletePolicy
- (BOOL)isEqual:(id)equal;
- (HMDTriggerDeletePolicy)initWithCoder:(id)coder;
- (HMDTriggerDeletePolicy)initWithIdentifier:(id)identifier;
- (void)applyPolicy:(id)policy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDTriggerDeletePolicy

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = HMDTriggerDeletePolicy;
  return [(HMDTriggerPolicy *)&v4 isEqual:equal];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = HMDTriggerDeletePolicy;
  [(HMDTriggerPolicy *)&v3 encodeWithCoder:coder];
}

- (HMDTriggerDeletePolicy)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HMDTriggerDeletePolicy;
  return [(HMDTriggerPolicy *)&v4 initWithCoder:coder];
}

- (void)applyPolicy:(id)policy
{
  policyCopy = policy;
  home = [policyCopy home];
  [home removeTrigger:policyCopy];
}

- (HMDTriggerDeletePolicy)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = HMDTriggerDeletePolicy;
  return [(HMDTriggerPolicy *)&v4 initWithIdentifier:identifier];
}

@end