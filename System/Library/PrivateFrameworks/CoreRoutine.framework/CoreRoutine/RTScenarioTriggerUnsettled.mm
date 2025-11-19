@interface RTScenarioTriggerUnsettled
- (RTScenarioTriggerUnsettled)init;
- (id)description;
@end

@implementation RTScenarioTriggerUnsettled

- (RTScenarioTriggerUnsettled)init
{
  v3.receiver = self;
  v3.super_class = RTScenarioTriggerUnsettled;
  return [(RTScenarioTrigger *)&v3 initWithType:2];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9.receiver = self;
  v9.super_class = RTScenarioTriggerUnsettled;
  v6 = [(RTScenarioTrigger *)&v9 description];
  v7 = [v3 stringWithFormat:@"%@, %@", v5, v6];

  return v7;
}

@end