@interface HUQuickControlViewProfile
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUQuickControlViewProfile

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setControlSize:{-[HUQuickControlViewProfile controlSize](self, "controlSize")}];
  [v4 setSuspendedState:{-[HUQuickControlViewProfile suspendedState](self, "suspendedState")}];
  [v4 setOrientation:{-[HUQuickControlViewProfile orientation](self, "orientation")}];
  supplementaryFormattedValue = [(HUQuickControlViewProfile *)self supplementaryFormattedValue];
  [v4 setSupplementaryFormattedValue:supplementaryFormattedValue];

  decorationIconDescriptor = [(HUQuickControlViewProfile *)self decorationIconDescriptor];
  [v4 setDecorationIconDescriptor:decorationIconDescriptor];

  tintColor = [(HUQuickControlViewProfile *)self tintColor];
  [v4 setTintColor:tintColor];

  return v4;
}

@end