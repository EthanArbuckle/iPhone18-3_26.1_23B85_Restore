@interface FindMyLocateSession
+ (BOOL)FMFAllowed;
+ (BOOL)FMFRestricted;
- (FindMyLocateSession)init;
- (id)cachedFriendsFollowingMyLocation;
- (id)cachedFriendsSharingLocationsWithMe;
- (id)cachedLocationForHandle:(id)a3;
- (id)cachedOfferExpirationForHandle:(id)a3 groupId:(id)a4;
- (id)friendshipUpdateCallback;
- (id)locationUpdateCallback;
- (id)meDeviceUpdateCallback;
- (void)getActiveLocationSharingDeviceWithCompletion:(id)a3;
- (void)getFriendsFollowingMyLocationWithCompletion:(id)a3;
- (void)getFriendsSharingLocationsWithMeWithCompletion:(id)a3;
- (void)getOfferExpirationForHandle:(id)a3 groupId:(id)a4 completion:(id)a5;
- (void)setActiveLocationSharingDevice:(id)a3 completion:(id)a4;
- (void)setFriendshipUpdateCallback:(id)a3;
- (void)setLocationUpdateCallback:(id)a3;
- (void)setMeDeviceUpdateCallback:(id)a3;
- (void)startMonitoringActiveLocationSharingDeviceChangeWithCompletion:(id)a3;
- (void)stopRefreshingLocationWithCompletion:(id)a3;
- (void)stopUpdatingFriendsWithCompletion:(id)a3;
@end

@implementation FindMyLocateSession

- (FindMyLocateSession)init
{
  v5.receiver = self;
  v5.super_class = FindMyLocateSession;
  v2 = [(FindMyLocateSession *)&v5 init];
  v3 = objc_alloc_init(_TtC23FindMyLocateObjCWrapper13ObjCBootstrap);
  [(FindMyLocateSession *)v2 setTrampoline:v3];

  return v2;
}

- (void)setLocationUpdateCallback:(id)a3
{
  v4 = a3;
  v5 = [(FindMyLocateSession *)self trampoline];
  [v5 setLocationUpdateCallback:v4];
}

- (id)locationUpdateCallback
{
  v2 = [(FindMyLocateSession *)self trampoline];
  v3 = [v2 locationUpdateCallback];

  return v3;
}

- (void)setFriendshipUpdateCallback:(id)a3
{
  v4 = a3;
  v5 = [(FindMyLocateSession *)self trampoline];
  [v5 setFriendshipUpdateCallback:v4];
}

- (id)friendshipUpdateCallback
{
  v2 = [(FindMyLocateSession *)self trampoline];
  v3 = [v2 friendshipUpdateCallback];

  return v3;
}

- (void)setMeDeviceUpdateCallback:(id)a3
{
  v4 = a3;
  v5 = [(FindMyLocateSession *)self trampoline];
  [v5 setMeDeviceUpdateCallback:v4];
}

- (id)meDeviceUpdateCallback
{
  v2 = [(FindMyLocateSession *)self trampoline];
  v3 = [v2 meDeviceUpdateCallback];

  return v3;
}

- (void)stopRefreshingLocationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FindMyLocateSession *)self trampoline];
  [v5 stopRefreshingLocationWithCompletionHandler:v4];
}

- (void)stopUpdatingFriendsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FindMyLocateSession *)self trampoline];
  [v5 stopUpdatingFriendsWithCompletionHandler:v4];
}

- (void)startMonitoringActiveLocationSharingDeviceChangeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FindMyLocateSession *)self trampoline];
  [v5 startMonitoringActiveLocationSharingDeviceWithCompletionHandler:v4];
}

- (void)setActiveLocationSharingDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FindMyLocateSession *)self trampoline];
  [v8 setActiveLocationSharingDevice:v7 completionHandler:v6];
}

- (void)getActiveLocationSharingDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FindMyLocateSession *)self trampoline];
  [v5 getActiveLocationSharingDeviceWithCompletionHandler:v4];
}

- (void)getFriendsSharingLocationsWithMeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FindMyLocateSession *)self trampoline];
  [v5 getFriendsWith:1 completionHandler:v4];
}

- (void)getFriendsFollowingMyLocationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FindMyLocateSession *)self trampoline];
  [v5 getFriendsWith:0 completionHandler:v4];
}

- (void)getOfferExpirationForHandle:(id)a3 groupId:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FindMyLocateSession *)self trampoline];
  [v11 getOfferExpirationForHandle:v10 groupId:v9 completionHandler:v8];
}

+ (BOOL)FMFAllowed
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  if (([FMFAllowed_fmfAllowedNumber BOOLValue] & 1) == 0)
  {
    v3 = MGCopyAnswer();
    v4 = FMFAllowed_fmfAllowedNumber;
    FMFAllowed_fmfAllowedNumber = v3;

    if (v3)
    {
      CFRelease(v3);
    }
  }

  v5 = FMFAllowed_fmfAllowedNumber;

  return [v5 BOOLValue];
}

+ (BOOL)FMFRestricted
{
  v2 = *MEMORY[0x277D25EA8];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  LOBYTE(v2) = [v3 effectiveBoolValueForSetting:v2] == 2;

  return v2;
}

- (id)cachedFriendsFollowingMyLocation
{
  v2 = [(FindMyLocateSession *)self trampoline];
  v3 = [v2 cachedFriendsFollowingMyLocation];

  return v3;
}

- (id)cachedFriendsSharingLocationsWithMe
{
  v2 = [(FindMyLocateSession *)self trampoline];
  v3 = [v2 cachedFriendsSharingLocationWithMe];

  return v3;
}

- (id)cachedLocationForHandle:(id)a3
{
  v4 = a3;
  v5 = [(FindMyLocateSession *)self trampoline];
  v6 = [v5 cachedLocationFor:v4 includeAddress:1];

  return v6;
}

- (id)cachedOfferExpirationForHandle:(id)a3 groupId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FindMyLocateSession *)self trampoline];
  v9 = [v8 cachedOfferExpirationFor:v7 groupId:v6];

  return v9;
}

@end