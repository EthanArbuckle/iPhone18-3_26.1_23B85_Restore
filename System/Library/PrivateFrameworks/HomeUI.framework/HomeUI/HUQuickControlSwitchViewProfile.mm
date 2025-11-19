@interface HUQuickControlSwitchViewProfile
- (HFNumberValueConstraints)primaryValueConstraints;
@end

@implementation HUQuickControlSwitchViewProfile

- (HFNumberValueConstraints)primaryValueConstraints
{
  v2 = [objc_alloc(MEMORY[0x277D148E0]) initWithMinValue:&unk_282492720 maxValue:&unk_282492738 stepValue:&unk_282492738];

  return v2;
}

@end