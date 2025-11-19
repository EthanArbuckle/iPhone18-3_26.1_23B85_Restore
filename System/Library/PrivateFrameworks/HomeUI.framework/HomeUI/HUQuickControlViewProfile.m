@interface HUQuickControlViewProfile
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUQuickControlViewProfile

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setControlSize:{-[HUQuickControlViewProfile controlSize](self, "controlSize")}];
  [v4 setSuspendedState:{-[HUQuickControlViewProfile suspendedState](self, "suspendedState")}];
  [v4 setOrientation:{-[HUQuickControlViewProfile orientation](self, "orientation")}];
  v5 = [(HUQuickControlViewProfile *)self supplementaryFormattedValue];
  [v4 setSupplementaryFormattedValue:v5];

  v6 = [(HUQuickControlViewProfile *)self decorationIconDescriptor];
  [v4 setDecorationIconDescriptor:v6];

  v7 = [(HUQuickControlViewProfile *)self tintColor];
  [v4 setTintColor:v7];

  return v4;
}

@end