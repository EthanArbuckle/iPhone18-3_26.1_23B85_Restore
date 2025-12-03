@interface HUQuickControlIconViewProfile
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUQuickControlIconViewProfile

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = HUQuickControlIconViewProfile;
  v4 = [(HUQuickControlViewProfile *)&v10 copyWithZone:zone];
  statusString = [(HUQuickControlIconViewProfile *)self statusString];
  [v4 setStatusString:statusString];

  statusTextColor = [(HUQuickControlIconViewProfile *)self statusTextColor];
  [v4 setStatusTextColor:statusTextColor];

  supplementaryString = [(HUQuickControlIconViewProfile *)self supplementaryString];
  [v4 setSupplementaryString:supplementaryString];

  iconDescriptor = [(HUQuickControlIconViewProfile *)self iconDescriptor];
  [v4 setIconDescriptor:iconDescriptor];

  return v4;
}

@end