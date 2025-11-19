@interface DSApp
+ (BOOL)app:(id)a3 hasPermission:(id)a4;
+ (BOOL)app:(id)a3 hasPermissionAcceptingAnyLocationAuthorization:(id)a4;
+ (BOOL)appHasNoPermissions:(id)a3;
+ (BOOL)skipTCCCheck:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
@end

@implementation DSApp

+ (BOOL)skipTCCCheck:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DSLocationAlways"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"DSLocationWhenInUse") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"DSHealth") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"DSLocalNetwork"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"DSContacts"];
  }

  return v4;
}

+ (BOOL)appHasNoPermissions:(id)a3
{
  v3 = a3;
  v4 = [v3 permissionsGranted];
  if ([v4 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 locationAuthorization] == 0;
  }

  return v5;
}

+ (BOOL)app:(id)a3 hasPermissionAcceptingAnyLocationAuthorization:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v6 isEqualToString:@"DSLocationAlways"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"DSLocationWhenInUse"))
  {
    v7 = [v5 hasLocationAccess];
  }

  else
  {
    v8 = [v5 permissionsGranted];
    v7 = [v8 containsObject:v6];
  }

  return v7;
}

+ (BOOL)app:(id)a3 hasPermission:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"DSLocationAlways"])
  {
    v7 = [v5 locationAuthorization] == 2;
  }

  else
  {
    if (![v6 isEqualToString:@"DSLocationWhenInUse"])
    {
      v9 = [v5 permissionsGranted];
      v8 = [v9 containsObject:v6];

      goto LABEL_9;
    }

    v7 = [v5 locationAuthorization] == 1;
  }

  v8 = v7;
LABEL_9:

  return v8;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = +[DSUtilities tccServices];
  if ([v5 count])
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = [v5 objectAtIndexedSubscript:v6];
      v9 = [DSApp app:self hasPermission:v8];
      if (v9 != [DSApp app:v4 hasPermission:v8])
      {
        break;
      }

      v6 = v7;
      if ([v5 count] <= v7++)
      {
        goto LABEL_5;
      }
    }

    if ([DSApp app:self hasPermission:v8])
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
    v8 = [v4 displayName];
    v12 = [(NSString *)displayName localizedStandardCompare:v8];
  }

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_displayName mutableCopyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_appID mutableCopyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSMutableSet *)self->_permissionsGranted mutableCopyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v5[4] = self->_locationAuthorization;
  return v5;
}

@end