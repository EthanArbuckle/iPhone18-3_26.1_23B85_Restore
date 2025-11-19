@interface NowPlayingHelper
+ (BOOL)_loggingEnabled;
+ (void)validateNowPlayingInfo:(id)a3;
+ (void)validateNowPlayingInfo:(id)a3 property:(id)a4 class:(Class)a5;
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

+ (void)validateNowPlayingInfo:(id)a3 property:(id)a4 class:(Class)a5
{
  if ([a3 objectForKey:a4])
  {
    [a3 objectForKey:a4];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (+[NowPlayingHelper _loggingEnabled])
      {
        [a3 objectForKey:a4];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        NSLog(@"WARNING: found invalid now playing dictionary item for property: %@, should be of class %@, not %@", a4, a5, v9);
      }

      [a3 removeObjectForKey:a4];
    }
  }
}

+ (void)validateNowPlayingInfo:(id)a3
{
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoStartTime class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoTimestamp class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoAlbum class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoArtist class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoArtworkMIMEType class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoComposer class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoGenre class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoMediaType class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoTitle class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoArtworkData class:objc_opt_class()];
  v5 = kMRMediaRemoteNowPlayingInfoUniqueIdentifier;
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoUniqueIdentifier class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoQueueIndex class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoTotalQueueCount class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoPlaybackRate class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoRepeatMode class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoShuffleMode class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoChapterNumber class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoDiscNumber class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoDuration class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoElapsedTime class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoTotalChapterCount class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoTotalDiscCount class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoTotalTrackCount class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:kMRMediaRemoteNowPlayingInfoTrackNumber class:objc_opt_class()];
  [a1 validateNowPlayingInfo:a3 property:v5 class:objc_opt_class()];
  v6 = kMRMediaRemoteNowPlayingInfoIsExplicitTrack;
  v7 = objc_opt_class();

  [a1 validateNowPlayingInfo:a3 property:v6 class:v7];
}

@end