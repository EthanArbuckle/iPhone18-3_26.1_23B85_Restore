@interface CPSClipLaunchOptions
+ (id)optionsForAppClipRecord:(id)a3;
- (CPSClipLaunchOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSClipLaunchOptions

+ (id)optionsForAppClipRecord:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 userNotificationGranted];
  [v5 setUserNotificationGranted:v6];

  v7 = [v4 locationConfirmationGranted];

  [v5 setLocationConfirmationGranted:v7];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setUserNotificationGranted:self->_userNotificationGranted];
  [v4 setLocationConfirmationGranted:self->_locationConfirmationGranted];
  v5 = [(NSString *)self->_predefinedBundleID copy];
  [v4 setPredefinedBundleID:v5];

  [v4 setSkipsLaunching:self->_skipsLaunching];
  [v4 setShowsAppAttributionBanner:self->_showsAppAttributionBanner];
  return v4;
}

- (CPSClipLaunchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CPSClipLaunchOptions;
  v5 = [(CPSClipLaunchOptions *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserNotificationPermissionEnabled"];
    userNotificationGranted = v5->_userNotificationGranted;
    v5->_userNotificationGranted = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LocationConfirmationPermissionEnabled"];
    locationConfirmationGranted = v5->_locationConfirmationGranted;
    v5->_locationConfirmationGranted = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PredefinedBundleID"];
    predefinedBundleID = v5->_predefinedBundleID;
    v5->_predefinedBundleID = v10;

    v5->_skipsLaunching = [v4 decodeBoolForKey:@"InstallWithoutLaunching"];
    v5->_showsAppAttributionBanner = [v4 decodeBoolForKey:@"ShowsAppAttributionBanner"];
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  userNotificationGranted = self->_userNotificationGranted;
  v5 = a3;
  [v5 encodeObject:userNotificationGranted forKey:@"UserNotificationPermissionEnabled"];
  [v5 encodeObject:self->_locationConfirmationGranted forKey:@"LocationConfirmationPermissionEnabled"];
  [v5 encodeObject:self->_predefinedBundleID forKey:@"PredefinedBundleID"];
  [v5 encodeBool:self->_skipsLaunching forKey:@"InstallWithoutLaunching"];
  [v5 encodeBool:self->_showsAppAttributionBanner forKey:@"ShowsAppAttributionBanner"];
}

@end