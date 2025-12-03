@interface DADevice(NowPlaying)
- (id)nowPlayingSubtitle;
@end

@implementation DADevice(NowPlaying)

- (id)nowPlayingSubtitle
{
  if ([self mediaPlaybackState] && (objc_msgSend(self, "mediaContentTitle"), (v2 = objc_claimAutoreleasedReturnValue()) != 0) && (v3 = v2, objc_msgSend(self, "mediaContentTitle"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", &stru_1F1445548), v4, v3, (v5 & 1) == 0))
  {
    mediaContentArtistName = [self mediaContentArtistName];
    if (mediaContentArtistName && (v9 = mediaContentArtistName, [self mediaContentArtistName], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", &stru_1F1445548), v10, v9, (v11 & 1) == 0))
    {
      v12 = MEMORY[0x1E696AEC0];
      mediaContentTitle = [self mediaContentTitle];
      mediaContentArtistName2 = [self mediaContentArtistName];
      mediaContentTitle2 = [v12 stringWithFormat:@"%@ — %@", mediaContentTitle, mediaContentArtistName2];
    }

    else
    {
      mediaContentTitle2 = [self mediaContentTitle];
    }
  }

  else
  {
    mediaContentTitle2 = 0;
  }

  return mediaContentTitle2;
}

@end