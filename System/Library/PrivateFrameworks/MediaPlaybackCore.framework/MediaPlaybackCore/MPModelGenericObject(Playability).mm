@interface MPModelGenericObject(Playability)
- (uint64_t)mpc_playable;
@end

@implementation MPModelGenericObject(Playability)

- (uint64_t)mpc_playable
{
  type = [self type];
  isAvailable = 0;
  if (type > 5)
  {
    if (type == 6)
    {
      tvEpisode = [self tvEpisode];
    }

    else
    {
      if (type != 9)
      {
        return isAvailable;
      }

      tvEpisode = [self movie];
    }

    song = tvEpisode;
    localFileAsset = [tvEpisode localFileAsset];
    filePath = [localFileAsset filePath];
    v16 = [filePath length];

    if (!v16)
    {
      storeAsset = [song storeAsset];
      isAvailable = [storeAsset endpointType] > 0;
      goto LABEL_15;
    }

LABEL_13:
    isAvailable = 1;
    goto LABEL_16;
  }

  if (type == 1)
  {
    song = [self song];
    localFileAsset2 = [song localFileAsset];
    filePath2 = [localFileAsset2 filePath];
    v10 = [filePath2 length];

    if (!v10)
    {
      storeAsset2 = [song storeAsset];
      endpointType = [storeAsset2 endpointType];

      if (endpointType <= 0)
      {
        storeAsset = [song homeSharingAsset];
        isAvailable = [storeAsset isAvailable];
LABEL_15:

        goto LABEL_16;
      }
    }

    goto LABEL_13;
  }

  if (type == 5)
  {
    song = [MEMORY[0x1E696AAA8] currentHandler];
    [song handleFailureInMethod:a2 object:self file:@"MPModelGenericObject+Playability.m" lineNumber:51 description:@"Attempt to compute playabilty of playlistEntity"];
    isAvailable = 0;
LABEL_16:
  }

  return isAvailable;
}

@end