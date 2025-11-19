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
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"kMRNowPlayingPlayerPathUserInfoKey"];

  return v2;
}

- (id)mr_origin
{
  v1 = [a1 userInfo];
  v2 = MRGetOriginFromUserInfo(v1);

  return v2;
}

- (id)mr_playbackQueue
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"kMRPlaybackQueueUserInfoKey"];

  return v2;
}

- (id)mr_deviceInfo
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"kMRPairedDeviceUserInfoKey"];

  return v2;
}

- (id)mr_previousDeviceInfo
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"kMRPreviousPairedDeviceUserInfoKey"];

  return v2;
}

@end