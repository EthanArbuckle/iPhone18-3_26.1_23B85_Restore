@interface NSUserActivity(MobileSafariFrameworkExtras)
+ (id)_sf_windowCreationActivityFromSceneConnectionOptions:()MobileSafariFrameworkExtras;
+ (id)_sf_windowCreationActivityWithMode:()MobileSafariFrameworkExtras;
+ (id)_sf_windowCreationActivityWithNavigationIntent:()MobileSafariFrameworkExtras;
+ (id)_sf_windowCreationActivityWithRecentlyClosedTabUUID:()MobileSafariFrameworkExtras browserControllerUUID:;
+ (id)_sf_windowCreationActivityWithTabUUID:()MobileSafariFrameworkExtras tabGroupUUID:browserControllerUUID:;
+ (id)safari_windowCreationActivityWithTabUUIDs:()MobileSafariFrameworkExtras selectedTabUUID:browserControllerUUID:;
- (id)_sf_windowCreationMode;
- (id)_sf_windowCreationNavigationIntent;
- (id)_sf_windowCreationRecentlyClosedTabUUID;
- (id)_sf_windowCreationSourceBrowserControllerUUID;
- (id)_sf_windowCreationTabGroupUUID;
- (id)_sf_windowCreationTabUUID;
- (id)safari_windowCreationSelectedTabUUID;
- (id)safari_windowCreationTabUUIDs;
- (id)sf_windowCreationNavigationIntentID;
- (void)_sf_invalidateWindowCreationData;
@end

@implementation NSUserActivity(MobileSafariFrameworkExtras)

+ (id)_sf_windowCreationActivityWithNavigationIntent:()MobileSafariFrameworkExtras
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE30];
  v4 = a3;
  processInfo = [v3 processInfo];
  globallyUniqueString = [processInfo globallyUniqueString];

  v7 = windowCreationNavigationIntentDictionary();
  [v7 setObject:v4 forKeyedSubscript:globallyUniqueString];

  v8 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.mobilesafari.UserActivity.create-window"];
  [v8 setEligibleForHandoff:0];
  v11 = @"navigation-intent-id";
  v12[0] = globallyUniqueString;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v8 setUserInfo:v9];

  return v8;
}

+ (id)_sf_windowCreationActivityWithMode:()MobileSafariFrameworkExtras
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.mobilesafari.UserActivity.create-window"];
  [v4 setEligibleForHandoff:0];
  v8 = @"mode";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v4 setUserInfo:v6];

  return v4;
}

+ (id)_sf_windowCreationActivityWithTabUUID:()MobileSafariFrameworkExtras tabGroupUUID:browserControllerUUID:
{
  v7 = MEMORY[0x1E69636A8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithActivityType:@"com.apple.mobilesafari.UserActivity.create-window"];
  [v11 setEligibleForHandoff:0];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v10 forKeyedSubscript:@"tab-uuid"];

  [dictionary setObject:v9 forKeyedSubscript:@"tab-group-uuid"];
  [dictionary setObject:v8 forKeyedSubscript:@"source-browser-controller-uuid"];

  [v11 setUserInfo:dictionary];

  return v11;
}

+ (id)safari_windowCreationActivityWithTabUUIDs:()MobileSafariFrameworkExtras selectedTabUUID:browserControllerUUID:
{
  v7 = MEMORY[0x1E69636A8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithActivityType:@"com.apple.mobilesafari.UserActivity.create-window"];
  [v11 setEligibleForHandoff:0];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v10 forKeyedSubscript:@"tab-uuids"];

  [dictionary setObject:v9 forKeyedSubscript:@"selected-tab-uuid"];
  [dictionary setObject:v8 forKeyedSubscript:@"source-browser-controller-uuid"];

  [v11 setUserInfo:dictionary];

  return v11;
}

+ (id)_sf_windowCreationActivityWithRecentlyClosedTabUUID:()MobileSafariFrameworkExtras browserControllerUUID:
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69636A8];
  v4 = a3;
  v5 = [[v3 alloc] initWithActivityType:@"com.apple.mobilesafari.UserActivity.create-window"];
  [v5 setEligibleForHandoff:0];
  v8 = @"recently-closed-tab-uuid";
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v5 setUserInfo:v6];

  return v5;
}

+ (id)_sf_windowCreationActivityFromSceneConnectionOptions:()MobileSafariFrameworkExtras
{
  userActivities = [a3 userActivities];
  anyObject = [userActivities anyObject];

  activityType = [anyObject activityType];
  v6 = [activityType isEqualToString:@"com.apple.mobilesafari.UserActivity.create-window"];

  if (v6)
  {
    v7 = anyObject;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sf_windowCreationNavigationIntentID
{
  userInfo = [self userInfo];
  v2 = [userInfo safari_stringForKey:@"navigation-intent-id"];

  return v2;
}

- (id)_sf_windowCreationNavigationIntent
{
  sf_windowCreationNavigationIntentID = [self sf_windowCreationNavigationIntentID];
  if (sf_windowCreationNavigationIntentID)
  {
    v2 = windowCreationNavigationIntentDictionary();
    v3 = [v2 objectForKeyedSubscript:sf_windowCreationNavigationIntentID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_sf_windowCreationTabUUID
{
  userInfo = [self userInfo];
  v2 = [userInfo safari_UUIDForKey:@"tab-uuid"];

  return v2;
}

- (id)_sf_windowCreationTabGroupUUID
{
  userInfo = [self userInfo];
  v2 = [userInfo safari_UUIDForKey:@"tab-group-uuid"];

  return v2;
}

- (id)_sf_windowCreationSourceBrowserControllerUUID
{
  userInfo = [self userInfo];
  v2 = [userInfo safari_UUIDForKey:@"source-browser-controller-uuid"];

  return v2;
}

- (id)_sf_windowCreationRecentlyClosedTabUUID
{
  userInfo = [self userInfo];
  v2 = [userInfo safari_UUIDForKey:@"recently-closed-tab-uuid"];

  return v2;
}

- (id)_sf_windowCreationMode
{
  userInfo = [self userInfo];
  v2 = [userInfo safari_numberForKey:@"mode"];

  return v2;
}

- (id)safari_windowCreationSelectedTabUUID
{
  userInfo = [self userInfo];
  v2 = [userInfo safari_UUIDForKey:@"selected-tab-uuid"];

  return v2;
}

- (id)safari_windowCreationTabUUIDs
{
  userInfo = [self userInfo];
  v2 = [userInfo safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"tab-uuids"];

  return v2;
}

- (void)_sf_invalidateWindowCreationData
{
  sf_windowCreationNavigationIntentID = [self sf_windowCreationNavigationIntentID];
  if (sf_windowCreationNavigationIntentID)
  {
    v3 = sf_windowCreationNavigationIntentID;
    v2 = windowCreationNavigationIntentDictionary();
    [v2 removeObjectForKey:v3];

    sf_windowCreationNavigationIntentID = v3;
  }
}

@end