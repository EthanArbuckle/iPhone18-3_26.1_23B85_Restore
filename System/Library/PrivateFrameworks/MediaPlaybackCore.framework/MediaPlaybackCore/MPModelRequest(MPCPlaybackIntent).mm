@interface MPModelRequest(MPCPlaybackIntent)
- (MPCPlaybackIntent)playbackIntentWithStartItemIdentifiers:()MPCPlaybackIntent;
@end

@implementation MPModelRequest(MPCPlaybackIntent)

- (MPCPlaybackIntent)playbackIntentWithStartItemIdentifiers:()MPCPlaybackIntent
{
  v4 = a3;
  v5 = objc_alloc_init(MPCPlaybackIntent);
  v6 = objc_alloc_init(MPCModelPlaybackIntentTracklistToken);
  [(MPCModelPlaybackIntentTracklistToken *)v6 setRequest:self];
  [(MPCModelPlaybackIntentTracklistToken *)v6 setStartItemIdentifiers:v4];

  [(MPCPlaybackIntent *)v5 setTracklistSource:3];
  [(MPCPlaybackIntent *)v5 setTracklistToken:v6];
  itemKind = [self itemKind];
  identityKind = [itemKind identityKind];
  identityKind2 = [MEMORY[0x1E69707B0] identityKind];
  if ([identityKind isEqual:identityKind2])
  {
  }

  else
  {
    itemKind2 = [self itemKind];
    identityKind3 = [itemKind2 identityKind];
    identityKind4 = [MEMORY[0x1E69706F0] identityKind];
    v13 = [identityKind3 isEqual:identityKind4];

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