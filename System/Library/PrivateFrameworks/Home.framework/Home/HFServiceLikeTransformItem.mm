@interface HFServiceLikeTransformItem
- (BOOL)actionsMayRequireDeviceUnlock;
- (BOOL)containsActions;
- (NSSet)services;
- (id)accessories;
- (id)currentStateActionBuildersForHome:(id)home;
@end

@implementation HFServiceLikeTransformItem

- (NSSet)services
{
  sourceServicePickerItem = [(HFServiceLikeTransformItem *)self sourceServicePickerItem];
  services = [sourceServicePickerItem services];

  return services;
}

- (id)accessories
{
  sourceServicePickerItem = [(HFServiceLikeTransformItem *)self sourceServicePickerItem];
  accessories = [sourceServicePickerItem accessories];

  return accessories;
}

- (BOOL)containsActions
{
  sourceServicePickerItem = [(HFServiceLikeTransformItem *)self sourceServicePickerItem];
  containsActions = [sourceServicePickerItem containsActions];

  return containsActions;
}

- (BOOL)actionsMayRequireDeviceUnlock
{
  sourceServicePickerItem = [(HFServiceLikeTransformItem *)self sourceServicePickerItem];
  actionsMayRequireDeviceUnlock = [sourceServicePickerItem actionsMayRequireDeviceUnlock];

  return actionsMayRequireDeviceUnlock;
}

- (id)currentStateActionBuildersForHome:(id)home
{
  homeCopy = home;
  sourceServicePickerItem = [(HFServiceLikeTransformItem *)self sourceServicePickerItem];
  v6 = [sourceServicePickerItem currentStateActionBuildersForHome:homeCopy];

  return v6;
}

@end