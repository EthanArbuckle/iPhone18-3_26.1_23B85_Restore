@interface FMFSessionProxy
- (FMFSession)session;
- (FMFSessionProxy)initWithFMFSession:(id)session;
- (void)abDidChange;
- (void)abPreferencesDidChange;
- (void)didAddFollowerHandle:(id)handle;
- (void)didChangeActiveLocationSharingDevice:(id)device;
- (void)didReceiveFriendshipRequest:(id)request;
- (void)didReceiveServerError:(id)error;
- (void)didRemoveFollowerHandle:(id)handle;
- (void)didStartFollowingHandle:(id)handle;
- (void)didStopFollowingHandle:(id)handle;
- (void)didUpdateActiveDeviceList:(id)list;
- (void)didUpdateFavorites:(id)favorites;
- (void)didUpdateFences:(id)fences;
- (void)didUpdateFollowers:(id)followers;
- (void)didUpdateFollowing:(id)following;
- (void)didUpdateLocations:(id)locations;
- (void)didUpdatePendingOffersForHandles:(id)handles;
- (void)didUpdatePreferences:(id)preferences;
- (void)failedToGetLocationForHandle:(id)handle error:(id)error;
- (void)modelDidLoad;
- (void)sendMappingPacket:(id)packet toHandle:(id)handle;
- (void)setLocations:(id)locations;
@end

@implementation FMFSessionProxy

- (FMFSessionProxy)initWithFMFSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = FMFSessionProxy;
  v5 = [(FMFSessionProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMFSessionProxy *)v5 setSession:sessionCopy];
  }

  return v6;
}

- (void)modelDidLoad
{
  session = [(FMFSessionProxy *)self session];
  [session modelDidLoad];
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  session = [(FMFSessionProxy *)self session];
  [session setLocations:locationsCopy];
}

- (void)failedToGetLocationForHandle:(id)handle error:(id)error
{
  errorCopy = error;
  handleCopy = handle;
  session = [(FMFSessionProxy *)self session];
  [session failedToGetLocationForHandle:handleCopy error:errorCopy];
}

- (void)didAddFollowerHandle:(id)handle
{
  handleCopy = handle;
  session = [(FMFSessionProxy *)self session];
  [session didAddFollowerHandle:handleCopy];
}

- (void)didRemoveFollowerHandle:(id)handle
{
  handleCopy = handle;
  session = [(FMFSessionProxy *)self session];
  [session didRemoveFollowerHandle:handleCopy];
}

- (void)didStartFollowingHandle:(id)handle
{
  handleCopy = handle;
  session = [(FMFSessionProxy *)self session];
  [session didStartFollowingHandle:handleCopy];
}

- (void)didStopFollowingHandle:(id)handle
{
  handleCopy = handle;
  session = [(FMFSessionProxy *)self session];
  [session didStopFollowingHandle:handleCopy];
}

- (void)didReceiveFriendshipRequest:(id)request
{
  requestCopy = request;
  session = [(FMFSessionProxy *)self session];
  [session didReceiveFriendshipRequest:requestCopy];
}

- (void)didUpdatePendingOffersForHandles:(id)handles
{
  handlesCopy = handles;
  session = [(FMFSessionProxy *)self session];
  [session didUpdatePendingOffersForHandles:handlesCopy];
}

- (void)didChangeActiveLocationSharingDevice:(id)device
{
  deviceCopy = device;
  session = [(FMFSessionProxy *)self session];
  [session didChangeActiveLocationSharingDevice:deviceCopy];
}

- (void)didUpdateActiveDeviceList:(id)list
{
  listCopy = list;
  session = [(FMFSessionProxy *)self session];
  [session didUpdateActiveDeviceList:listCopy];
}

- (void)sendMappingPacket:(id)packet toHandle:(id)handle
{
  handleCopy = handle;
  packetCopy = packet;
  session = [(FMFSessionProxy *)self session];
  [session sendMappingPacket:packetCopy toHandle:handleCopy];
}

- (void)didUpdateFavorites:(id)favorites
{
  favoritesCopy = favorites;
  session = [(FMFSessionProxy *)self session];
  [session didUpdateFavorites:favoritesCopy];
}

- (void)didUpdateFences:(id)fences
{
  fencesCopy = fences;
  session = [(FMFSessionProxy *)self session];
  [session didUpdateFences:fencesCopy];
}

- (void)didUpdatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  session = [(FMFSessionProxy *)self session];
  [session didUpdatePreferences:preferencesCopy];
}

- (void)abDidChange
{
  session = [(FMFSessionProxy *)self session];
  [session abDidChange];
}

- (void)abPreferencesDidChange
{
  session = [(FMFSessionProxy *)self session];
  [session abPreferencesDidChange];
}

- (void)didUpdateFollowers:(id)followers
{
  followersCopy = followers;
  session = [(FMFSessionProxy *)self session];
  [session didUpdateFollowers:followersCopy];
}

- (void)didUpdateFollowing:(id)following
{
  followingCopy = following;
  session = [(FMFSessionProxy *)self session];
  [session didUpdateFollowing:followingCopy];
}

- (void)didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  session = [(FMFSessionProxy *)self session];
  [session didUpdateLocations:locationsCopy];
}

- (void)didReceiveServerError:(id)error
{
  errorCopy = error;
  session = [(FMFSessionProxy *)self session];
  [session didReceiveServerError:errorCopy];
}

- (FMFSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end