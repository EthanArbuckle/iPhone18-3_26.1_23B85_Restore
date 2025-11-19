@interface HUPresenceUserPickerItemModuleOptions
- (HUPresenceUserPickerItemModuleOptions)initWithLocationDevice:(id)a3 customLocationSelected:(BOOL)a4;
@end

@implementation HUPresenceUserPickerItemModuleOptions

- (HUPresenceUserPickerItemModuleOptions)initWithLocationDevice:(id)a3 customLocationSelected:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUPresenceUserPickerItemModuleOptions;
  v8 = [(HUPresenceUserPickerItemModuleOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationDevice, a3);
    v9->_customLocationSelected = a4;
  }

  return v9;
}

@end