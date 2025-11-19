@interface MPCModelMediaClipAVItem
+ (id)requiredMediaClipProperties;
- (BOOL)_allowsCellularPlayback;
- (BOOL)_isVideoAsset;
- (BOOL)isAssetURLValid;
- (BOOL)isValidPlayerSubstituteForItem:(id)a3;
- (MPCModelMediaClipAVItem)initWithMediaClip:(id)a3;
- (double)durationFromExternalMetadata;
- (id)_currentPreferredStaticAsset;
- (id)artworkCatalogBlock;
- (id)description;
- (id)modelGenericObject;
- (void)_applyLoudnessInfo;
- (void)loadAssetAndPlayerItemWithTask:(id)a3 completion:(id)a4;
- (void)reevaluateType;
@end

@implementation MPCModelMediaClipAVItem

- (BOOL)_isVideoAsset
{
  v12 = *MEMORY[0x1E69E9840];
  [(MPModelMediaClip *)self->_mediaClip staticAssets];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) mediaType] == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)_currentPreferredStaticAsset
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69E4428] sharedMonitor];
  v4 = [v3 networkType];

  if (CFPreferencesGetAppBooleanValue(@"AlwaysUse64kbpsQuality", @"com.apple.mobileipod", 0))
  {
    goto LABEL_2;
  }

  if (CFPreferencesGetAppBooleanValue(@"AlwaysUse256kbpsQuality", @"com.apple.mobileipod", 0))
  {
    goto LABEL_4;
  }

  if ((ICEnvironmentNetworkTypeIsBluetooth() & 1) == 0)
  {
    if ([(MPCModelMediaClipAVItem *)self _isVideoAsset])
    {
      if ((ICEnvironmentNetworkTypeIsWiFi() & 1) != 0 || ICEnvironmentNetworkTypeIsWired() || v4 >= 3 && ([MEMORY[0x1E69E4428] sharedMonitor], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isCurrentNetworkLinkExpensive"), v24, (v25 & 1) == 0))
      {
        v18 = [MEMORY[0x1E69708A8] standardUserDefaults];
        v19 = [v18 preferredVideoHighBandwidthResolution];
        goto LABEL_27;
      }

      v26 = [MEMORY[0x1E69708A8] standardUserDefaults];
      v27 = [v26 preferredVideoLowBandwidthResolution];

      if (v27 > 0)
      {
        v18 = [MEMORY[0x1E69708A8] standardUserDefaults];
        v19 = [v18 preferredVideoLowBandwidthResolution];
LABEL_27:
        v20 = v19;

        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (v20 != 1000000)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else
    {
      if (ICEnvironmentNetworkTypeIsWired())
      {
LABEL_4:
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
LABEL_5:
        [v5 addObject:&unk_1F4599370];
        [v5 addObject:&unk_1F4599388];
        goto LABEL_6;
      }

      if (ICEnvironmentNetworkTypeIsWiFi())
      {
        goto LABEL_40;
      }

      v21 = [MEMORY[0x1E69708A8] standardUserDefaults];
      if ([v21 preferredMusicLowBandwidthResolution] >= 256)
      {
      }

      else
      {
        v22 = [MEMORY[0x1E69E4428] sharedMonitor];
        v23 = [v22 isCurrentNetworkLinkExpensive];

        if (v23)
        {
          goto LABEL_2;
        }
      }

      if (v4 > 2)
      {
LABEL_40:
        v28 = [MEMORY[0x1E69E4428] sharedMonitor];
        v29 = [v28 isNetworkConstrained];

        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (v29)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }
  }

LABEL_2:
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
LABEL_6:
  [v5 addObject:&unk_1F45993A0];
  v6 = [(MPModelMediaClip *)self->_mediaClip staticAssets];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v30 = 0;
  v9 = *v32;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v32 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v31 + 1) + 8 * i);
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "flavorType")}];
      v14 = [v5 indexOfObject:v13];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL && (v10 == 0x7FFFFFFFFFFFFFFFLL || v14 < v10))
      {
        v15 = v12;

        v30 = v15;
        v10 = v14;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v8);
  v16 = v30;
  if (!v30)
  {
LABEL_18:
    v16 = [v6 firstObject];
  }

  return v16;
}

- (void)_applyLoudnessInfo
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(MPCModelMediaClipAVItem *)self isAssetLoaded])
  {
    v3 = [(MPCModelMediaClipAVItem *)self asset];
    v4 = [v3 statusOfValueForKey:@"tracks" error:0];

    if (v4 == 2)
    {
      v5 = *MEMORY[0x1E698DA90];
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = v6;
      if (v5)
      {
        [v6 setObject:v5 forKey:*MEMORY[0x1E698DA60]];
      }

      v8 = [(MPCModelMediaClipAVItem *)self playerItem];
      v9 = [v8 tracks];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          v13 = 0;
          do
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v14 + 1) + 8 * v13++) setLoudnessInfo:v7];
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v11);
      }
    }
  }
}

- (BOOL)_allowsCellularPlayback
{
  v2 = [(MPCModelMediaClipAVItem *)self _isVideoAsset];
  v3 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 preferredVideoLowBandwidthResolution];
  }

  else
  {
    v5 = [v3 preferredMusicLowBandwidthResolution];
  }

  v6 = v5;

  return v6 > 0;
}

- (id)artworkCatalogBlock
{
  v2 = self->_mediaClip;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__MPCModelMediaClipAVItem_artworkCatalogBlock__block_invoke;
  aBlock[3] = &unk_1E8235618;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);

  return v4;
}

- (void)reevaluateType
{
  v3.receiver = self;
  v3.super_class = MPCModelMediaClipAVItem;
  [(MPCModelMediaClipAVItem *)&v3 reevaluateType];
  [(MPCModelMediaClipAVItem *)self _applyLoudnessInfo];
}

- (id)modelGenericObject
{
  modelGenericObject = self->_modelGenericObject;
  if (!modelGenericObject)
  {
    v4 = objc_alloc(MEMORY[0x1E6970670]);
    v5 = [MEMORY[0x1E6970550] emptyIdentifierSet];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__MPCModelMediaClipAVItem_modelGenericObject__block_invoke;
    v9[3] = &unk_1E8235578;
    v9[4] = self;
    v6 = [v4 initWithIdentifiers:v5 block:v9];
    v7 = self->_modelGenericObject;
    self->_modelGenericObject = v6;

    modelGenericObject = self->_modelGenericObject;
  }

  return modelGenericObject;
}

- (void)loadAssetAndPlayerItemWithTask:(id)a3 completion:(id)a4
{
  v22 = a4;
  v5 = [MEMORY[0x1E69E4428] sharedMonitor];
  [v5 networkType];

  v6 = [(MPCModelMediaClipAVItem *)self _allowsCellularPlayback];
  IsCellular = ICEnvironmentNetworkTypeIsCellular();
  if ((ICEnvironmentNetworkTypeIsWiFi() & 1) != 0 || (IsWired = ICEnvironmentNetworkTypeIsWired(), v6 || (IsCellular & 1) == 0) || IsWired)
  {
    v8 = [(MPCModelMediaClipAVItem *)self _currentPreferredStaticAsset];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      [v9 setObject:v10 forKey:*MEMORY[0x1E6987B18]];

      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = [(MPCModelMediaClipAVItem *)self rtcReportingServiceIdentifier];
      if (v12)
      {
        [v11 setObject:v12 forKey:*MEMORY[0x1E6987B40]];
      }

      [v9 setObject:v11 forKey:*MEMORY[0x1E6987B38]];
      [v9 setObject:&unk_1F4599358 forKeyedSubscript:*MEMORY[0x1E6987BF0]];
      v13 = MEMORY[0x1E6988168];
      v14 = [v8 url];
      v15 = [v13 URLAssetWithURL:v14 options:v9];
      v16 = *MEMORY[0x1E6970A58];
      v17 = *(&self->super.super.isa + v16);
      *(&self->super.super.isa + v16) = v15;

      v18 = [MEMORY[0x1E69880B0] playerItemWithAsset:*(&self->super.super.isa + v16)];
      [v18 setAudioTimePitchAlgorithm:*MEMORY[0x1E6987390]];
      [(MPCModelMediaClipAVItem *)self setPlayerItem:v18];
    }
  }

  v20 = *MEMORY[0x1E6970A60];
  v21 = *(&self->super.super.isa + v20);
  if (!v21)
  {
    [(MPCModelMediaClipAVItem *)self setItemError:0];
    v21 = *(&self->super.super.isa + v20);
  }

  v22[2](v22, v21, 0);
}

- (BOOL)isValidPlayerSubstituteForItem:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      mediaClip = self->_mediaClip;
      v8 = [(MPCModelMediaClipAVItem *)v4 mediaClip];
      v6 = mediaClip == v8;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isAssetURLValid
{
  v3 = [MEMORY[0x1E69E4428] sharedMonitor];
  [v3 networkType];

  if (ICEnvironmentNetworkTypeIsWiFi() & 1) != 0 || (ICEnvironmentNetworkTypeIsWired())
  {
    LOBYTE(IsCellular) = 1;
  }

  else
  {
    IsCellular = ICEnvironmentNetworkTypeIsCellular();
    if (IsCellular)
    {

      LOBYTE(IsCellular) = [(MPCModelMediaClipAVItem *)self _allowsCellularPlayback];
    }
  }

  return IsCellular;
}

- (double)durationFromExternalMetadata
{
  v2 = [(MPModelMediaClip *)self->_mediaClip staticAssets];
  v3 = [v2 firstObject];
  [v3 duration];
  v5 = v4;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPCModelMediaClipAVItem;
  v4 = [(MPCModelMediaClipAVItem *)&v8 description];
  v5 = [(MPCModelMediaClipAVItem *)self mainTitle];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (MPCModelMediaClipAVItem)initWithMediaClip:(id)a3
{
  v5 = a3;
  v6 = [(MPCModelMediaClipAVItem *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaClip, a3);
  }

  return v7;
}

+ (id)requiredMediaClipProperties
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69708B0]);
  v3 = *MEMORY[0x1E696FD20];
  v16[0] = *MEMORY[0x1E696FD28];
  v16[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v14 = *MEMORY[0x1E6970178];
  v5 = MEMORY[0x1E69708B0];
  v6 = *MEMORY[0x1E696FFF0];
  v13[0] = *MEMORY[0x1E696FFE0];
  v13[1] = v6;
  v7 = *MEMORY[0x1E696FFE8];
  v13[2] = *MEMORY[0x1E696FFF8];
  v13[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v9 = [v5 propertySetWithProperties:v8];
  v15 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v11 = [v2 initWithProperties:v4 relationships:v10];

  return v11;
}

@end