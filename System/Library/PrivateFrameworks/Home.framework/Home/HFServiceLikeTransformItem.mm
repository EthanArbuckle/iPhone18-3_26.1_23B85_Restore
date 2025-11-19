@interface HFServiceLikeTransformItem
- (BOOL)actionsMayRequireDeviceUnlock;
- (BOOL)containsActions;
- (NSSet)services;
- (id)accessories;
- (id)currentStateActionBuildersForHome:(id)a3;
@end

@implementation HFServiceLikeTransformItem

- (NSSet)services
{
  v2 = [(HFServiceLikeTransformItem *)self sourceServicePickerItem];
  v3 = [v2 services];

  return v3;
}

- (id)accessories
{
  v2 = [(HFServiceLikeTransformItem *)self sourceServicePickerItem];
  v3 = [v2 accessories];

  return v3;
}

- (BOOL)containsActions
{
  v2 = [(HFServiceLikeTransformItem *)self sourceServicePickerItem];
  v3 = [v2 containsActions];

  return v3;
}

- (BOOL)actionsMayRequireDeviceUnlock
{
  v2 = [(HFServiceLikeTransformItem *)self sourceServicePickerItem];
  v3 = [v2 actionsMayRequireDeviceUnlock];

  return v3;
}

- (id)currentStateActionBuildersForHome:(id)a3
{
  v4 = a3;
  v5 = [(HFServiceLikeTransformItem *)self sourceServicePickerItem];
  v6 = [v5 currentStateActionBuildersForHome:v4];

  return v6;
}

@end