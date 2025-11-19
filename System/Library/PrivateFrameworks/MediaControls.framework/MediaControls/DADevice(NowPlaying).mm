@interface DADevice(NowPlaying)
- (id)nowPlayingSubtitle;
@end

@implementation DADevice(NowPlaying)

- (id)nowPlayingSubtitle
{
  if ([a1 mediaPlaybackState] && (objc_msgSend(a1, "mediaContentTitle"), (v2 = objc_claimAutoreleasedReturnValue()) != 0) && (v3 = v2, objc_msgSend(a1, "mediaContentTitle"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", &stru_1F1445548), v4, v3, (v5 & 1) == 0))
  {
    v8 = [a1 mediaContentArtistName];
    if (v8 && (v9 = v8, [a1 mediaContentArtistName], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", &stru_1F1445548), v10, v9, (v11 & 1) == 0))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [a1 mediaContentTitle];
      v14 = [a1 mediaContentArtistName];
      v6 = [v12 stringWithFormat:@"%@ — %@", v13, v14];
    }

    else
    {
      v6 = [a1 mediaContentTitle];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end