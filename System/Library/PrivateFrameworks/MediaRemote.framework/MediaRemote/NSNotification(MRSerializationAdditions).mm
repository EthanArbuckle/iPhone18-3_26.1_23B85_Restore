@interface NSNotification(MRSerializationAdditions)
- (id)mr_deviceInfo;
- (id)mr_origin;
- (id)mr_playbackQueue;
- (id)mr_previousDeviceInfo;
- (id)playerPath;
@end

@implementation NSNotification(MRSerializationAdditions)

- (id)playerPath
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  return v2;
}

- (id)mr_origin
{
  userInfo = [self userInfo];
  v2 = MRGetOriginFromUserInfo(userInfo);

  return v2;
}

- (id)mr_playbackQueue
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"kMRPlaybackQueueUserInfoKey"];

  return v2;
}

- (id)mr_deviceInfo
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"kMRPairedDeviceUserInfoKey"];

  return v2;
}

- (id)mr_previousDeviceInfo
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"kMRPreviousPairedDeviceUserInfoKey"];

  return v2;
}

@end