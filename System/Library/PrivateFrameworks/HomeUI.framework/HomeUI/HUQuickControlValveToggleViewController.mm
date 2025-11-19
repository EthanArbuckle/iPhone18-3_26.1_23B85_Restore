@interface HUQuickControlValveToggleViewController
+ (id)controlItemPredicate;
- (id)controlToViewValueTransformer;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
@end

@implementation HUQuickControlValveToggleViewController

+ (id)controlItemPredicate
{
  v2 = [[HUQuickControlSingleItemPredicate alloc] initWithBlock:&__block_literal_global_23];

  return v2;
}

uint64_t __63__HUQuickControlValveToggleViewController_controlItemPredicate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueSource];
  v4 = [v3 primaryServiceDescriptor];

  v5 = [v4 parentServiceDescriptor];
  v6 = [v5 serviceType];

  if ([*MEMORY[0x277CD0E48] isEqualToString:v6])
  {
    v7 = [v2 conformsToProtocol:&unk_2825BD600];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createInteractionCoordinator
{
  v3 = [HUQuickControlValveToggleView alloc];
  v4 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v5 = [(HUQuickControlValveToggleView *)v3 initWithProfile:v4];

  v6 = [[HUQuickControlSimpleInteractionCoordinator alloc] initWithControlView:v5 delegate:self];

  return v6;
}

- (id)createViewProfile
{
  v3 = objc_alloc_init(HUQuickControlSwitchViewProfile);
  [(HUQuickControlViewProfile *)v3 setControlSize:[(HUQuickControlViewController *)self controlSize]];

  return v3;
}

- (id)controlToViewValueTransformer
{
  v2 = MEMORY[0x277D14CF0];
  v3 = objc_opt_class();

  return [v2 transformerForValueClass:v3 transformBlock:&__block_literal_global_55 reverseTransformBlock:&__block_literal_global_61];
}

void *__72__HUQuickControlValveToggleViewController_controlToViewValueTransformer__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 integerValue] == 2)
  {
    return &unk_282490C08;
  }

  else
  {
    return &unk_282490C20;
  }
}

uint64_t __72__HUQuickControlValveToggleViewController_controlToViewValueTransformer__block_invoke_59(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v3 = MEMORY[0x277CCABB0];
  if (llround(v2) < 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return [v3 numberWithInteger:v4];
}

@end