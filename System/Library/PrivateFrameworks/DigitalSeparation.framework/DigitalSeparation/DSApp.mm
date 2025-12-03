@interface DSApp
+ (BOOL)app:(id)app hasPermission:(id)permission;
+ (BOOL)app:(id)app hasPermissionAcceptingAnyLocationAuthorization:(id)authorization;
+ (BOOL)appHasNoPermissions:(id)permissions;
+ (BOOL)skipTCCCheck:(id)check;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
@end

@implementation DSApp

+ (BOOL)skipTCCCheck:(id)check
{
  checkCopy = check;
  if ([checkCopy isEqualToString:@"DSLocationAlways"] & 1) != 0 || (objc_msgSend(checkCopy, "isEqualToString:", @"DSLocationWhenInUse") & 1) != 0 || (objc_msgSend(checkCopy, "isEqualToString:", @"DSHealth") & 1) != 0 || (objc_msgSend(checkCopy, "isEqualToString:", @"DSLocalNetwork"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [checkCopy isEqualToString:@"DSContacts"];
  }

  return v4;
}

+ (BOOL)appHasNoPermissions:(id)permissions
{
  permissionsCopy = permissions;
  permissionsGranted = [permissionsCopy permissionsGranted];
  if ([permissionsGranted count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [permissionsCopy locationAuthorization] == 0;
  }

  return v5;
}

+ (BOOL)app:(id)app hasPermissionAcceptingAnyLocationAuthorization:(id)authorization
{
  appCopy = app;
  authorizationCopy = authorization;
  if (([authorizationCopy isEqualToString:@"DSLocationAlways"] & 1) != 0 || objc_msgSend(authorizationCopy, "isEqualToString:", @"DSLocationWhenInUse"))
  {
    hasLocationAccess = [appCopy hasLocationAccess];
  }

  else
  {
    permissionsGranted = [appCopy permissionsGranted];
    hasLocationAccess = [permissionsGranted containsObject:authorizationCopy];
  }

  return hasLocationAccess;
}

+ (BOOL)app:(id)app hasPermission:(id)permission
{
  appCopy = app;
  permissionCopy = permission;
  if ([permissionCopy isEqualToString:@"DSLocationAlways"])
  {
    v7 = [appCopy locationAuthorization] == 2;
  }

  else
  {
    if (![permissionCopy isEqualToString:@"DSLocationWhenInUse"])
    {
      permissionsGranted = [appCopy permissionsGranted];
      v8 = [permissionsGranted containsObject:permissionCopy];

      goto LABEL_9;
    }

    v7 = [appCopy locationAuthorization] == 1;
  }

  v8 = v7;
LABEL_9:

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = +[DSUtilities tccServices];
  if ([v5 count])
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      displayName = [v5 objectAtIndexedSubscript:v6];
      v9 = [DSApp app:self hasPermission:displayName];
      if (v9 != [DSApp app:compareCopy hasPermission:displayName])
      {
        break;
      }

      v6 = v7;
      if ([v5 count] <= v7++)
      {
        goto LABEL_5;
      }
    }

    if ([DSApp app:self hasPermission:displayName])
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
LABEL_5:
    displayName = self->_displayName;
    displayName = [compareCopy displayName];
    v12 = [(NSString *)displayName localizedStandardCompare:displayName];
  }

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_displayName mutableCopyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_appID mutableCopyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSMutableSet *)self->_permissionsGranted mutableCopyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v5[4] = self->_locationAuthorization;
  return v5;
}

@end