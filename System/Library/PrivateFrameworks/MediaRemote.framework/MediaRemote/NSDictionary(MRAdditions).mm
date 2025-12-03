@interface NSDictionary(MRAdditions)
- (uint64_t)MR_isEqualToNowPlayingInfo:()MRAdditions;
@end

@implementation NSDictionary(MRAdditions)

- (uint64_t)MR_isEqualToNowPlayingInfo:()MRAdditions
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v18 = 1;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [self count];
      if (v6 == [v5 count])
      {
        v34[0] = @"kMRMediaRemoteNowPlayingInfoTimestamp";
        v34[1] = @"kMRMediaRemoteNowPlayingInfoElapsedTime";
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v33 = 1;
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __56__NSDictionary_MRAdditions__MR_isEqualToNowPlayingInfo___block_invoke;
        v26 = &unk_1E769EF78;
        v8 = v7;
        v27 = v8;
        v9 = v5;
        v28 = v9;
        v29 = &v30;
        [self enumerateKeysAndObjectsUsingBlock:&v23];
        if (*(v31 + 24) != 1)
        {
          v18 = 0;
LABEL_19:

          _Block_object_dispose(&v30, 8);
          goto LABEL_20;
        }

        v10 = [self objectForKey:{@"kMRMediaRemoteNowPlayingInfoTimestamp", v23, v24, v25, v26, v27}];
        v11 = [v9 objectForKey:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
        v12 = [self objectForKey:@"kMRMediaRemoteNowPlayingInfoElapsedTime"];
        v13 = [v9 objectForKey:@"kMRMediaRemoteNowPlayingInfoElapsedTime"];
        v14 = v13;
        if (v10 && v11)
        {
          if (v12 && v13)
          {
            v15 = _MRCreateTemporalContentItemFromNowPlayingInfo(self);
            v16 = _MRCreateTemporalContentItemFromNowPlayingInfo(v9);
            IsEqual = MRContentItemCalculatedPlaybackPositionIsEqual(v15, v16);
            *(v31 + 24) = IsEqual;

LABEL_18:
            v18 = *(v31 + 24);
            goto LABEL_19;
          }
        }

        else if (!v10)
        {
          goto LABEL_16;
        }

        v19 = _MRNowPlayingValuesAreEqual(v10, v11);
        *(v31 + 24) &= v19;
LABEL_16:
        if (v12)
        {
          v20 = _MRNowPlayingValuesAreEqual(v12, v14);
          *(v31 + 24) &= v20;
        }

        goto LABEL_18;
      }
    }
  }

  v18 = 0;
LABEL_20:

  v21 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

@end