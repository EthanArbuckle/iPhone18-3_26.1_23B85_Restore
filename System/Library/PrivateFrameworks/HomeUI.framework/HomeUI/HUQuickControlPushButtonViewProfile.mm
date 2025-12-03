@interface HUQuickControlPushButtonViewProfile
- (HFNumberValueConstraints)primaryValueConstraints;
- (HUQuickControlPushButtonViewProfile)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUQuickControlPushButtonViewProfile

- (HUQuickControlPushButtonViewProfile)init
{
  v5.receiver = self;
  v5.super_class = HUQuickControlPushButtonViewProfile;
  v2 = [(HUQuickControlPushButtonViewProfile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HUQuickControlPushButtonViewProfile *)v2 setToggleColorScheme:1];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HUQuickControlPushButtonViewProfile;
  v4 = [(HUQuickControlViewProfile *)&v6 copyWithZone:zone];
  [v4 setToggleColorScheme:{-[HUQuickControlPushButtonViewProfile toggleColorScheme](self, "toggleColorScheme")}];
  return v4;
}

- (HFNumberValueConstraints)primaryValueConstraints
{
  v2 = [objc_alloc(MEMORY[0x277D148E0]) initWithMinValue:&unk_282492720 maxValue:&unk_282492738 stepValue:&unk_282492738];

  return v2;
}

@end