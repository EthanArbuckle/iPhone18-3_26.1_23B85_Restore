@interface MPModelGenericObject(Playability)
- (uint64_t)mpc_playable;
@end

@implementation MPModelGenericObject(Playability)

- (uint64_t)mpc_playable
{
  v4 = [a1 type];
  v5 = 0;
  if (v4 > 5)
  {
    if (v4 == 6)
    {
      v7 = [a1 tvEpisode];
    }

    else
    {
      if (v4 != 9)
      {
        return v5;
      }

      v7 = [a1 movie];
    }

    v6 = v7;
    v14 = [v7 localFileAsset];
    v15 = [v14 filePath];
    v16 = [v15 length];

    if (!v16)
    {
      v13 = [v6 storeAsset];
      v5 = [v13 endpointType] > 0;
      goto LABEL_15;
    }

LABEL_13:
    v5 = 1;
    goto LABEL_16;
  }

  if (v4 == 1)
  {
    v6 = [a1 song];
    v8 = [v6 localFileAsset];
    v9 = [v8 filePath];
    v10 = [v9 length];

    if (!v10)
    {
      v11 = [v6 storeAsset];
      v12 = [v11 endpointType];

      if (v12 <= 0)
      {
        v13 = [v6 homeSharingAsset];
        v5 = [v13 isAvailable];
LABEL_15:

        goto LABEL_16;
      }
    }

    goto LABEL_13;
  }

  if (v4 == 5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject+Playability.m" lineNumber:51 description:@"Attempt to compute playabilty of playlistEntity"];
    v5 = 0;
LABEL_16:
  }

  return v5;
}

@end