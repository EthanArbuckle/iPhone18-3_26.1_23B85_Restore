@interface HUPresenceUserPickerItemModuleOptions
- (HUPresenceUserPickerItemModuleOptions)initWithLocationDevice:(id)device customLocationSelected:(BOOL)selected;
@end

@implementation HUPresenceUserPickerItemModuleOptions

- (HUPresenceUserPickerItemModuleOptions)initWithLocationDevice:(id)device customLocationSelected:(BOOL)selected
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = HUPresenceUserPickerItemModuleOptions;
  v8 = [(HUPresenceUserPickerItemModuleOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationDevice, device);
    v9->_customLocationSelected = selected;
  }

  return v9;
}

@end