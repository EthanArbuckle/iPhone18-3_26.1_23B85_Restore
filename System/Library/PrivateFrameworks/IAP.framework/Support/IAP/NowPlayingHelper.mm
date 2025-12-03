@interface NowPlayingHelper
+ (BOOL)_loggingEnabled;
+ (void)validateNowPlayingInfo:(id)info;
+ (void)validateNowPlayingInfo:(id)info property:(id)property class:(Class)class;
@end

@implementation NowPlayingHelper

+ (BOOL)_loggingEnabled
{
  if (qword_10012BA50 != -1)
  {
    sub_1000E1E88();
  }

  return byte_10012BA48 & 1;
}

+ (void)validateNowPlayingInfo:(id)info property:(id)property class:(Class)class
{
  if ([info objectForKey:property])
  {
    [info objectForKey:property];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (+[NowPlayingHelper _loggingEnabled])
      {
        [info objectForKey:property];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        NSLog(@"WARNING: found invalid now playing dictionary item for property: %@, should be of class %@, not %@", property, class, v9);
      }

      [info removeObjectForKey:property];
    }
  }
}

+ (void)validateNowPlayingInfo:(id)info
{
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoStartTime class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoTimestamp class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoAlbum class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoArtist class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoArtworkMIMEType class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoComposer class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoGenre class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoMediaType class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoTitle class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoArtworkData class:objc_opt_class()];
  v5 = kMRMediaRemoteNowPlayingInfoUniqueIdentifier;
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoUniqueIdentifier class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoQueueIndex class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoTotalQueueCount class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoPlaybackRate class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoRepeatMode class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoShuffleMode class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoChapterNumber class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoDiscNumber class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoDuration class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoElapsedTime class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoTotalChapterCount class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoTotalDiscCount class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoTotalTrackCount class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:kMRMediaRemoteNowPlayingInfoTrackNumber class:objc_opt_class()];
  [self validateNowPlayingInfo:info property:v5 class:objc_opt_class()];
  v6 = kMRMediaRemoteNowPlayingInfoIsExplicitTrack;
  v7 = objc_opt_class();

  [self validateNowPlayingInfo:info property:v6 class:v7];
}

@end