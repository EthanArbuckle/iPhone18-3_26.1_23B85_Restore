@interface MPModelRequest(MPCPlaybackIntent)
- (MPCPlaybackIntent)playbackIntentWithStartItemIdentifiers:()MPCPlaybackIntent;
@end

@implementation MPModelRequest(MPCPlaybackIntent)

- (MPCPlaybackIntent)playbackIntentWithStartItemIdentifiers:()MPCPlaybackIntent
{
  v4 = a3;
  v5 = objc_alloc_init(MPCPlaybackIntent);
  v6 = objc_alloc_init(MPCModelPlaybackIntentTracklistToken);
  [(MPCModelPlaybackIntentTracklistToken *)v6 setRequest:a1];
  [(MPCModelPlaybackIntentTracklistToken *)v6 setStartItemIdentifiers:v4];

  [(MPCPlaybackIntent *)v5 setTracklistSource:3];
  [(MPCPlaybackIntent *)v5 setTracklistToken:v6];
  v7 = [a1 itemKind];
  v8 = [v7 identityKind];
  v9 = [MEMORY[0x1E69707B0] identityKind];
  if ([v8 isEqual:v9])
  {
  }

  else
  {
    v10 = [a1 itemKind];
    v11 = [v10 identityKind];
    v12 = [MEMORY[0x1E69706F0] identityKind];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_5;
    }
  }

  [(MPCPlaybackIntent *)v5 setPrefersEnqueuingUsingAirPlay:1];
LABEL_5:

  return v5;
}

@end