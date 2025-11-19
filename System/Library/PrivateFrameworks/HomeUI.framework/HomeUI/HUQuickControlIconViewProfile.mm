@interface HUQuickControlIconViewProfile
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUQuickControlIconViewProfile

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = HUQuickControlIconViewProfile;
  v4 = [(HUQuickControlViewProfile *)&v10 copyWithZone:a3];
  v5 = [(HUQuickControlIconViewProfile *)self statusString];
  [v4 setStatusString:v5];

  v6 = [(HUQuickControlIconViewProfile *)self statusTextColor];
  [v4 setStatusTextColor:v6];

  v7 = [(HUQuickControlIconViewProfile *)self supplementaryString];
  [v4 setSupplementaryString:v7];

  v8 = [(HUQuickControlIconViewProfile *)self iconDescriptor];
  [v4 setIconDescriptor:v8];

  return v4;
}

@end