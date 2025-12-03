@interface HUQuickControlIconViewController
+ (id)controlItemPredicate;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
@end

@implementation HUQuickControlIconViewController

+ (id)controlItemPredicate
{
  v2 = [[HUQuickControlSingleItemPredicate alloc] initWithBlock:&__block_literal_global_269];

  return v2;
}

uint64_t __56__HUQuickControlIconViewController_controlItemPredicate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)createInteractionCoordinator
{
  v3 = [HUQuickControlIconView alloc];
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v5 = [(HUQuickControlIconView *)v3 initWithProfile:viewProfile];
  [(HUQuickControlIconViewController *)self setQuickControlIconView:v5];

  v6 = [HUQuickControlSimpleInteractionCoordinator alloc];
  quickControlIconView = [(HUQuickControlIconViewController *)self quickControlIconView];
  v8 = [(HUQuickControlSimpleInteractionCoordinator *)v6 initWithControlView:quickControlIconView delegate:self];

  return v8;
}

- (id)createViewProfile
{
  v3 = objc_alloc_init(HUQuickControlIconViewProfile);
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E08]];
  [(HUQuickControlIconViewProfile *)v3 setStatusString:v6];

  controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults2 = [controlItem2 latestResults];
  v9 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DF0]];
  [(HUQuickControlIconViewProfile *)v3 setStatusTextColor:v9];

  controlItem3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults3 = [controlItem3 latestResults];
  v12 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13F28]];
  [(HUQuickControlIconViewProfile *)v3 setSupplementaryString:v12];

  controlItem4 = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults4 = [controlItem4 latestResults];
  v15 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13E00]];
  [(HUQuickControlIconViewProfile *)v3 setIconDescriptor:v15];

  return v3;
}

@end