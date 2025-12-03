@interface CPSClipLaunchOptions
+ (id)optionsForAppClipRecord:(id)record;
- (CPSClipLaunchOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSClipLaunchOptions

+ (id)optionsForAppClipRecord:(id)record
{
  recordCopy = record;
  v5 = objc_alloc_init(self);
  userNotificationGranted = [recordCopy userNotificationGranted];
  [v5 setUserNotificationGranted:userNotificationGranted];

  locationConfirmationGranted = [recordCopy locationConfirmationGranted];

  [v5 setLocationConfirmationGranted:locationConfirmationGranted];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setUserNotificationGranted:self->_userNotificationGranted];
  [v4 setLocationConfirmationGranted:self->_locationConfirmationGranted];
  v5 = [(NSString *)self->_predefinedBundleID copy];
  [v4 setPredefinedBundleID:v5];

  [v4 setSkipsLaunching:self->_skipsLaunching];
  [v4 setShowsAppAttributionBanner:self->_showsAppAttributionBanner];
  return v4;
}

- (CPSClipLaunchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CPSClipLaunchOptions;
  v5 = [(CPSClipLaunchOptions *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserNotificationPermissionEnabled"];
    userNotificationGranted = v5->_userNotificationGranted;
    v5->_userNotificationGranted = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LocationConfirmationPermissionEnabled"];
    locationConfirmationGranted = v5->_locationConfirmationGranted;
    v5->_locationConfirmationGranted = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PredefinedBundleID"];
    predefinedBundleID = v5->_predefinedBundleID;
    v5->_predefinedBundleID = v10;

    v5->_skipsLaunching = [coderCopy decodeBoolForKey:@"InstallWithoutLaunching"];
    v5->_showsAppAttributionBanner = [coderCopy decodeBoolForKey:@"ShowsAppAttributionBanner"];
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  userNotificationGranted = self->_userNotificationGranted;
  coderCopy = coder;
  [coderCopy encodeObject:userNotificationGranted forKey:@"UserNotificationPermissionEnabled"];
  [coderCopy encodeObject:self->_locationConfirmationGranted forKey:@"LocationConfirmationPermissionEnabled"];
  [coderCopy encodeObject:self->_predefinedBundleID forKey:@"PredefinedBundleID"];
  [coderCopy encodeBool:self->_skipsLaunching forKey:@"InstallWithoutLaunching"];
  [coderCopy encodeBool:self->_showsAppAttributionBanner forKey:@"ShowsAppAttributionBanner"];
}

@end