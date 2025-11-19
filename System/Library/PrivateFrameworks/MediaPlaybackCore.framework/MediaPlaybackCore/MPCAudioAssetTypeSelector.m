@interface MPCAudioAssetTypeSelector
- (BOOL)networkBandwidthIsHigh;
- (BOOL)prefersHighQualityStereo;
- (BOOL)prefersHighResolutionLossless;
- (BOOL)prefersLossless;
- (BOOL)prefersLowQualityStereo;
- (BOOL)prefersSpatialOverLossless;
- (BOOL)prefersSpatialOverStereo:(id)a3;
- (BOOL)spatialIsAlwaysOn;
- (BOOL)spatialIsAutomatic;
- (BOOL)spatialIsOff;
- (MPCAudioAssetTypeSelector)initWithPlaybackEngine:(id)a3;
- (MPCAudioAssetTypeSelector)initWithPlaybackEngine:(id)a3 userDefaults:(id)a4 environmentMonitor:(id)a5;
- (MPCPlaybackEngine)playbackEngine;
- (id)audioFormatMatchingAudioAssetType:(int64_t)a3 formats:(id)a4 route:(id)a5;
- (id)description;
- (id)descriptionForTiers:(unint64_t)a3;
- (id)descriptionForTraits:(unint64_t)a3;
- (id)environmentDescription;
- (id)experimentDescription;
- (id)preferencesDescription;
- (id)preferredAudioAssetTypeForItem:(id)a3;
- (id)preferredAudioAssetTypeForSongWithTrait:(unint64_t)a3 isStartItem:(BOOL)a4;
- (id)preferredAudioAssetTypeForSongWithTrait:(unint64_t)a3 isStartItem:(BOOL)a4 supportsVocalAttenuation:(BOOL)a5;
- (id)preferredAudioFormatForAudioFormats:(id)a3 route:(id)a4;
- (id)preferredPlayerAudioFormatForItem:(id)a3 route:(id)a4;
- (int64_t)maxResolution;
- (int64_t)nextAssetTypeOutcomeWithIsStartItem:(BOOL)a3;
- (int64_t)spatialPreference;
- (int64_t)tierMatchingAudioAssetType:(int64_t)a3;
- (unint64_t)audioFormatPreference;
- (void)handleExperimentDidReceiveUpdateNotification:(id)a3;
- (void)updateOutcomeGenerator;
- (void)updateProbabilityOfProgressiveDownloadAssets:(float)a3;
@end

@implementation MPCAudioAssetTypeSelector

- (BOOL)spatialIsOff
{
  if (!MSVDeviceSupportsMultiChannelMusic())
  {
    return 1;
  }

  v3 = [(MPCAudioAssetTypeSelector *)self defaults];
  v4 = [v3 spatialAudioPreference] == 0;

  return v4;
}

- (BOOL)spatialIsAlwaysOn
{
  if (!MSVDeviceSupportsMultiChannelMusic())
  {
    return 0;
  }

  v3 = [(MPCAudioAssetTypeSelector *)self defaults];
  v4 = [v3 spatialAudioPreference] == 1;

  return v4;
}

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (int64_t)tierMatchingAudioAssetType:(int64_t)a3
{
  result = 1;
  if (a3 > 2)
  {
    v7 = 2;
    v8 = 4;
    if (a3 != 3)
    {
      v8 = 1;
    }

    if (a3 != 4)
    {
      v7 = v8;
    }

    if (a3 == 5)
    {
      return 3;
    }

    else
    {
      return v7;
    }
  }

  else if (a3 < 3)
  {
    return [(MPCAudioAssetTypeSelector *)self prefersLowQualityStereo:v3]^ 1;
  }

  return result;
}

- (id)environmentDescription
{
  v25[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MPCAudioAssetTypeSelector *)self environmentMonitor];
  v5 = [v4 networkType];
  v6 = @"Unknown";
  v24 = v4;
  if (v5 <= 99)
  {
    if ((v5 - 1) >= 8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v5 > 1000)
  {
    switch(v5)
    {
      case 1001:
        v6 = @"Bridged WiFi";
        break;
      case 2000:
        v6 = @"Wired Ethernet";
        break;
      case 3000:
        v6 = @"Other";
        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 100:
LABEL_3:
        v6 = @"Cellular";
        break;
      case 500:
        v6 = @"Bluetooth";
        break;
      case 1000:
        v6 = @"WiFi";
        break;
    }
  }

LABEL_4:
  v23 = [v3 stringWithFormat:@"Network: %@", v6];
  v25[0] = v23;
  v7 = MEMORY[0x1E696AEC0];
  v8 = MEMORY[0x1E696AD98];
  v9 = [(MPCAudioAssetTypeSelector *)self environmentMonitor];
  v10 = [v8 numberWithBool:{objc_msgSend(v9, "isCurrentNetworkLinkExpensive")}];
  v11 = [v7 stringWithFormat:@"Expensive: %@", v10];
  v25[1] = v11;
  v12 = MEMORY[0x1E696AEC0];
  v13 = MEMORY[0x1E696AD98];
  v14 = [(MPCAudioAssetTypeSelector *)self environmentMonitor];
  v15 = [v13 numberWithBool:{objc_msgSend(v14, "isNetworkConstrained")}];
  v16 = [v12 stringWithFormat:@"Constrained: %@", v15];
  v25[2] = v16;
  v17 = MEMORY[0x1E696AEC0];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPCAudioAssetTypeSelector networkBandwidthIsHigh](self, "networkBandwidthIsHigh")}];
  v19 = [v17 stringWithFormat:@"HighBandwidth: %@", v18];
  v25[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v21 = [v20 componentsJoinedByString:@" - "];

  return v21;
}

- (id)experimentDescription
{
  v3 = [(MPCAudioAssetTypeSelector *)self trialExperiment];
  v4 = [v3 treatmentID];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(MPCAudioAssetTypeSelector *)self trialExperiment];
    v7 = [v6 experimentID];
    v8 = [(MPCAudioAssetTypeSelector *)self trialExperiment];
    v9 = [v8 treatmentID];
    v10 = [(MPCAudioAssetTypeSelector *)self trialExperiment];
    v11 = [v10 deploymentID];
    v12 = [v5 stringWithFormat:@"%@/%@/%@", v7, v9, v11];
  }

  else
  {
    v12 = @"None";
  }

  return v12;
}

- (id)preferencesDescription
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPCAudioAssetTypeSelector prefersLowQualityStereo](self, "prefersLowQualityStereo")}];
  v21 = [v3 stringWithFormat:@"LQStereo: %@", v22];
  v23[0] = v21;
  v4 = MEMORY[0x1E696AEC0];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPCAudioAssetTypeSelector prefersHighQualityStereo](self, "prefersHighQualityStereo")}];
  v19 = [v4 stringWithFormat:@"HQStereo: %@", v20];
  v23[1] = v19;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPCAudioAssetTypeSelector prefersLossless](self, "prefersLossless")}];
  v7 = [v5 stringWithFormat:@"Lossless: %@", v6];
  v23[2] = v7;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPCAudioAssetTypeSelector prefersHighResolutionLossless](self, "prefersHighResolutionLossless")}];
  v10 = [v8 stringWithFormat:@"HRLossless: %@", v9];
  v23[3] = v10;
  v11 = MEMORY[0x1E696AEC0];
  v12 = [(MPCAudioAssetTypeSelector *)self defaults];
  v13 = [v12 spatialAudioPreference];
  if (v13 >= 3)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown preference:%ld", v13];
  }

  else
  {
    v14 = off_1E82390E0[v13];
  }

  v15 = [v11 stringWithFormat:@"Spatial: %@", v14];
  v23[4] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:5];
  v17 = [v16 componentsJoinedByString:@" - "];

  return v17;
}

- (id)descriptionForTiers:(unint64_t)a3
{
  v22[5] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:a3 & 1];
  v20 = [v4 stringWithFormat:@"LQStereo: %@", v21];
  v22[0] = v20;
  v5 = MEMORY[0x1E696AEC0];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:(a3 >> 1) & 1];
  v6 = [v5 stringWithFormat:@"HQStereo: %@", v19];
  v22[1] = v6;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:(a3 >> 2) & 1];
  v9 = [v7 stringWithFormat:@"Lossless: %@", v8];
  v22[2] = v9;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:(a3 >> 3) & 1];
  v12 = [v10 stringWithFormat:@"HighResLossless: %@", v11];
  v22[3] = v12;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:(a3 >> 4) & 1];
  v15 = [v13 stringWithFormat:@"Spatial: %@", v14];
  v22[4] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
  v17 = [v16 componentsJoinedByString:@" - "];

  return v17;
}

- (id)descriptionForTraits:(unint64_t)a3
{
  v3 = a3;
  v16[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:(a3 >> 1) & 1];
  v6 = [v4 stringWithFormat:@"Lossless: %@", v5];
  v16[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:(v3 >> 2) & 1];
  v9 = [v7 stringWithFormat:@"HRLossless: %@", v8];
  v16[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:(v3 >> 3) & 1];
  v12 = [v10 stringWithFormat:@"Spatial: %@", v11];
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v14 = [v13 componentsJoinedByString:@" - "];

  return v14;
}

- (int64_t)spatialPreference
{
  v2 = [(MPCAudioAssetTypeSelector *)self defaults];
  v3 = [v2 spatialAudioPreference];

  return v3;
}

- (int64_t)maxResolution
{
  v3 = [(MPCAudioAssetTypeSelector *)self networkBandwidthIsHigh];
  v4 = [(MPCAudioAssetTypeSelector *)self defaults];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 preferredMusicHighBandwidthResolution];
  }

  else
  {
    v6 = [v4 preferredMusicLowBandwidthResolution];
  }

  v7 = v6;

  v8 = MSVDeviceSupportsLosslessMusic();
  if (v7 < 48000)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    return v7;
  }

  else
  {
    return 256;
  }
}

- (BOOL)networkBandwidthIsHigh
{
  v3 = [(MPCAudioAssetTypeSelector *)self environmentMonitor];
  v4 = [v3 networkType];

  if (ICEnvironmentNetworkTypeIsBluetooth())
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  if (ICEnvironmentNetworkTypeIsWired())
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  IsWiFi = ICEnvironmentNetworkTypeIsWiFi();
  v7 = [(MPCAudioAssetTypeSelector *)self environmentMonitor];
  v8 = v7;
  if (IsWiFi)
  {
LABEL_9:
    v5 = [v8 isNetworkConstrained] ^ 1;

    return v5;
  }

  v9 = [v7 isCurrentNetworkLinkExpensive];

  LOBYTE(v5) = 0;
  if ((v9 & 1) == 0 && v4 >= 3)
  {
    v8 = [(MPCAudioAssetTypeSelector *)self environmentMonitor];
    goto LABEL_9;
  }

  return v5;
}

- (BOOL)prefersLowQualityStereo
{
  v3 = [(MPCAudioAssetTypeSelector *)self networkBandwidthIsHigh];
  v4 = [(MPCAudioAssetTypeSelector *)self defaults];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 preferredMusicHighBandwidthResolution];
  }

  else
  {
    v6 = [v4 preferredMusicLowBandwidthResolution];
  }

  v7 = v6;

  return v7 == 64;
}

- (BOOL)prefersHighQualityStereo
{
  v3 = [(MPCAudioAssetTypeSelector *)self networkBandwidthIsHigh];
  v4 = [(MPCAudioAssetTypeSelector *)self defaults];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 preferredMusicHighBandwidthResolution];
  }

  else
  {
    v6 = [v4 preferredMusicLowBandwidthResolution];
  }

  v7 = v6;

  return v7 == 256;
}

- (BOOL)prefersLossless
{
  if (!MSVDeviceSupportsLosslessMusic())
  {
    return 0;
  }

  v3 = [(MPCAudioAssetTypeSelector *)self networkBandwidthIsHigh];
  v4 = [(MPCAudioAssetTypeSelector *)self defaults];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 preferredMusicHighBandwidthResolution];
  }

  else
  {
    v6 = [v4 preferredMusicLowBandwidthResolution];
  }

  v7 = v6 > 47999;

  return v7;
}

- (BOOL)prefersHighResolutionLossless
{
  if (!MSVDeviceSupportsLosslessMusic())
  {
    return 0;
  }

  v3 = [(MPCAudioAssetTypeSelector *)self networkBandwidthIsHigh];
  v4 = [(MPCAudioAssetTypeSelector *)self defaults];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 preferredMusicHighBandwidthResolution];
  }

  else
  {
    v6 = [v4 preferredMusicLowBandwidthResolution];
  }

  v7 = v6 == 192000;

  return v7;
}

- (BOOL)prefersSpatialOverLossless
{
  if ([(MPCAudioAssetTypeSelector *)self spatialIsAutomatic])
  {
    return 1;
  }

  return [(MPCAudioAssetTypeSelector *)self spatialIsAlwaysOn];
}

- (BOOL)prefersSpatialOverStereo:(id)a3
{
  v4 = a3;
  if ([(MPCAudioAssetTypeSelector *)self spatialIsAlwaysOn])
  {
    goto LABEL_2;
  }

  if ([(MPCAudioAssetTypeSelector *)self spatialIsOff])
  {
LABEL_4:
    v5 = 0;
    goto LABEL_9;
  }

  if ([v4 type] != 1)
  {
    if (![v4 multiChannelSupport] || (objc_msgSend(v4, "isSpatializationEnabled") & 1) != 0 || objc_msgSend(v4, "canStreamSpatial") && (objc_msgSend(v4, "canRenderSpatial") & 1) == 0)
    {
      v5 = [(MPCAudioAssetTypeSelector *)self spatialIsAutomatic];
      goto LABEL_9;
    }

    goto LABEL_4;
  }

LABEL_2:
  v5 = 1;
LABEL_9:

  return v5;
}

- (BOOL)spatialIsAutomatic
{
  if (!MSVDeviceSupportsMultiChannelMusic())
  {
    return 0;
  }

  v3 = [(MPCAudioAssetTypeSelector *)self defaults];
  v4 = [v3 spatialAudioPreference] == 2;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPCAudioAssetTypeSelector *)self outcomeGenerator];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"-";
  }

  v8 = [(MPCAudioAssetTypeSelector *)self trialExperiment];
  v9 = [v8 treatmentID];
  v10 = v9;
  v11 = @"N/A";
  if (v9)
  {
    v11 = v9;
  }

  v12 = [v3 stringWithFormat:@"<%@: %p %@ experimentTreatmentID:%@>", v4, self, v7, v11];

  return v12;
}

- (id)audioFormatMatchingAudioAssetType:(int64_t)a3 formats:(id)a4 route:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  [v10 setFormat:0];
  [v10 setJustification:0];
  if (![v8 count])
  {
    [v10 setExplanation:@"No available audio formats"];
LABEL_22:
    v22 = v10;
    goto LABEL_30;
  }

  v11 = [MEMORY[0x1E69704E0] sharedCloudController];
  v12 = [v11 isEnhancedAudioAvailable];

  if ((v12 & 1) == 0)
  {
    [v10 setExplanation:@"No enhanced audio available on this store front"];
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[AL] - MPCAudioAssetTypeSelector - No enhanced audio available on this store front", buf, 2u);
    }

    goto LABEL_22;
  }

  v13 = [(MPCAudioAssetTypeSelector *)self tierMatchingAudioAssetType:a3];
  if (v13 == 4)
  {
    if ([(MPCAudioAssetTypeSelector *)self prefersSpatialOverStereo:v9])
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }
  }

  v36 = v9;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __77__MPCAudioAssetTypeSelector_audioFormatMatchingAudioAssetType_formats_route___block_invoke;
  v42[3] = &__block_descriptor_40_e30_B16__0__MPCPlayerAudioFormat_8l;
  v42[4] = v13;
  v14 = [v8 msv_firstWhere:v42];
  if (!v14)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __77__MPCAudioAssetTypeSelector_audioFormatMatchingAudioAssetType_formats_route___block_invoke_2;
    v41[3] = &__block_descriptor_40_e30_B16__0__MPCPlayerAudioFormat_8l;
    v13 = 1;
    v41[4] = 1;
    v14 = [v8 msv_firstWhere:v41];
    if (!v14)
    {
      v14 = [v8 lastObject];
      v13 = 1;
    }
  }

  v35 = v14;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v38;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v18 |= 1 << [*(*(&v37 + 1) + 8 * i) tier];
      }

      v17 = [v15 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  [v10 setFormat:v35];
  [v10 setExplanation:@"Audio format selection [from audio asset type & route]"];
  v47[0] = @"0.Environment";
  v23 = [(MPCAudioAssetTypeSelector *)self environmentDescription];
  v48[0] = v23;
  v47[1] = @"1.Formats";
  v24 = [(MPCAudioAssetTypeSelector *)self descriptionForTiers:v18];
  v48[1] = v24;
  v47[2] = @"2.Audio type";
  if ((a3 - 1) > 4)
  {
    v25 = @"Unspecified";
  }

  else
  {
    v25 = off_1E82390B8[a3 - 1];
  }

  v9 = v36;
  v48[2] = v25;
  v47[3] = @"3.Route";
  v26 = [v36 humanDescription];
  v48[3] = v26;
  v47[4] = @"4.Matched tier";
  v27 = NSStringFromMPCPlayerAudioFormatTier(v13);
  v48[4] = v27;
  v47[5] = @"5.Outcome";
  v28 = [v35 humanDescription];
  v48[5] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:6];
  [v10 setJustification:v29];

  v30 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v10 explanation];
    v32 = [v10 justification];
    *buf = 138543618;
    v44 = v31;
    v45 = 2114;
    v46 = v32;
    v9 = v36;
    _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "[AL] - MPCAudioAssetTypeSelector - %{public}@: %{public}@", buf, 0x16u);
  }

  v33 = v10;
LABEL_30:

  return v10;
}

- (id)preferredPlayerAudioFormatForItem:(id)a3 route:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[AL] - MPCAudioAssetTypeSelector - Starting audio format selection [from preferences & route] - item:%{public}@", &v12, 0xCu);
  }

  v9 = [v6 availableSortedFormats];
  v10 = [(MPCAudioAssetTypeSelector *)self preferredAudioFormatForAudioFormats:v9 route:v7];

  return v10;
}

- (id)preferredAudioFormatForAudioFormats:(id)a3 route:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setFormat:0];
  [v8 setExplanation:&stru_1F454A698];
  [v8 setJustification:0];
  if (![v6 count])
  {
    [v8 setExplanation:@"No available audio formats"];
LABEL_15:
    v18 = v8;
    goto LABEL_40;
  }

  v9 = [MEMORY[0x1E69704E0] sharedCloudController];
  v10 = [v9 isEnhancedAudioAvailable];

  if ((v10 & 1) == 0)
  {
    [v8 setExplanation:@"No enhanced audio available on this store front"];
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[AL] - MPCAudioAssetTypeSelector - No enhanced audio available on this store front", buf, 2u);
    }

    goto LABEL_15;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 |= 1 << [*(*(&v34 + 1) + 8 * i) tier];
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  if (((v14 & 0x10) != 0 && (v14 & 0xC) != 0 || ((v14 & 0xC) == 0 ? (v19 = (v14 & 0x10) == 0) : (v19 = 1), !v19)) && [(MPCAudioAssetTypeSelector *)self prefersSpatialOverStereo:v7])
  {
    v20 = 4;
  }

  else if ((v14 & 8) != 0 && [(MPCAudioAssetTypeSelector *)self prefersHighResolutionLossless])
  {
    v20 = 3;
  }

  else if ((v14 & 4) != 0 && [(MPCAudioAssetTypeSelector *)self prefersLossless])
  {
    v20 = 2;
  }

  else if ((v14 & 2) != 0 && [(MPCAudioAssetTypeSelector *)self prefersHighQualityStereo])
  {
    v20 = 1;
  }

  else
  {
    if (v14)
    {
      [(MPCAudioAssetTypeSelector *)self prefersLowQualityStereo];
    }

    v20 = 0;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __71__MPCAudioAssetTypeSelector_preferredAudioFormatForAudioFormats_route___block_invoke;
  v33[3] = &__block_descriptor_40_e30_B16__0__MPCPlayerAudioFormat_8l;
  v33[4] = v20;
  v21 = [v11 msv_firstWhere:v33];
  [v8 setFormat:v21];
  [v8 setExplanation:@"Audio format selection [from preferences & route]"];
  v42[0] = @"0.Environment";
  v22 = [(MPCAudioAssetTypeSelector *)self environmentDescription];
  v43[0] = v22;
  v42[1] = @"1.Formats";
  v23 = [(MPCAudioAssetTypeSelector *)self descriptionForTiers:v14];
  v43[1] = v23;
  v42[2] = @"2.Preferences";
  v24 = [(MPCAudioAssetTypeSelector *)self preferencesDescription];
  v43[2] = v24;
  v42[3] = @"3.Route";
  v25 = [v7 humanDescription];
  v43[3] = v25;
  v42[4] = @"4.Outcome";
  v26 = [v21 humanDescription];
  v43[4] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:5];
  [v8 setJustification:v27];

  v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v8 explanation];
    v30 = [v8 justification];
    *buf = 138543618;
    v39 = v29;
    v40 = 2114;
    v41 = v30;
    _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "[AL] - MPCAudioAssetTypeSelector - %{public}@: %{public}@", buf, 0x16u);
  }

  v31 = v8;
LABEL_40:

  return v8;
}

- (id)preferredAudioAssetTypeForSongWithTrait:(unint64_t)a3 isStartItem:(BOOL)a4
{
  v4 = a4;
  v25[5] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  v8 = [MEMORY[0x1E69704E0] sharedCloudController];
  v9 = [v8 isEnhancedAudioAvailable];

  if (v9)
  {
    v10 = [(MPCAudioAssetTypeSelector *)self prefersSpatialOverLossless];
    if ((a3 & 8) != 0 && v10)
    {
      v11 = 3;
    }

    else if ((a3 & 4) != 0 && [(MPCAudioAssetTypeSelector *)self prefersHighResolutionLossless])
    {
      v11 = 5;
    }

    else if ((a3 & 2) != 0 && [(MPCAudioAssetTypeSelector *)self prefersLossless])
    {
      v11 = 4;
    }

    else
    {
      v11 = [(MPCAudioAssetTypeSelector *)self nextAssetTypeOutcomeWithIsStartItem:v4];
    }

    [v7 setType:v11];
    [v7 setExplanation:@"Audio type selected from traits & preferences"];
    v24[0] = @"0.Environment";
    v13 = [(MPCAudioAssetTypeSelector *)self environmentDescription];
    v25[0] = v13;
    v24[1] = @"1.Traits";
    v14 = [(MPCAudioAssetTypeSelector *)self descriptionForTraits:a3];
    v25[1] = v14;
    v24[2] = @"2.Preferences";
    v15 = [(MPCAudioAssetTypeSelector *)self preferencesDescription];
    v25[2] = v15;
    v24[3] = @"3.Experiment";
    v16 = [(MPCAudioAssetTypeSelector *)self experimentDescription];
    v25[3] = v16;
    v24[4] = @"4.Outcome";
    if ((v11 - 1) > 4)
    {
      v17 = @"Unspecified";
    }

    else
    {
      v17 = off_1E82390B8[v11 - 1];
    }

    v25[4] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];
    [v7 setJustification:v18];

    v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v7 justification];
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[AL] - MPCAudioAssetTypeSelector - Audio type selection [from preferences]: %{public}@", &v22, 0xCu);
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[AL] - MPCAudioAssetTypeSelector - No enhanced audio available on this store front", &v22, 2u);
    }

    [v7 setType:{-[MPCAudioAssetTypeSelector nextAssetTypeOutcomeWithIsStartItem:](self, "nextAssetTypeOutcomeWithIsStartItem:", v4)}];
    [v7 setExplanation:@"Enhanced audio is not available - type selected randomly"];
    [v7 setJustification:0];
  }

  return v7;
}

- (int64_t)nextAssetTypeOutcomeWithIsStartItem:(BOOL)a3
{
  v5 = [(MPCAudioAssetTypeSelector *)self outcomeGenerator];

  if (!v5)
  {
    return 1;
  }

  v6 = [(MPCAudioAssetTypeSelector *)self outcomeGenerator];
  v7 = v6;
  if (a3)
  {
    v8 = [v6 nextOutcome];
  }

  else
  {
    v8 = [v6 lastOutcome];
  }

  v10 = v8;

  if (v10)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)preferredAudioAssetTypeForSongWithTrait:(unint64_t)a3 isStartItem:(BOOL)a4 supportsVocalAttenuation:(BOOL)a5
{
  v5 = a4;
  if (a5 && (-[MPCAudioAssetTypeSelector playbackEngine](self, "playbackEngine"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isVocalAttenuationEnabled], v8, v9))
  {
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[AL] - MPCAudioAssetTypeSelector - Vocal attenuation is active and item supports it", v13, 2u);
    }

    v11 = objc_opt_new();
    [v11 setType:1];
    [v11 setExplanation:@"Vocal attenuation is active and item supports it"];
  }

  else
  {
    v11 = [(MPCAudioAssetTypeSelector *)self preferredAudioAssetTypeForSongWithTrait:a3 isStartItem:v5];
  }

  return v11;
}

- (id)preferredAudioAssetTypeForItem:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 modelGenericObject];
  v6 = [v5 type];

  if (v6 == 12)
  {
    v7 = objc_opt_new();
    if ([v4 isHLSAsset])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [v7 setType:v8];
    v9 = @"Object type is a podcast";
    goto LABEL_9;
  }

  if (([v4 isAlwaysLive] & 1) != 0 || objc_msgSend(v4, "isRadioStreamPlayback"))
  {
    v7 = objc_opt_new();
    [v7 setType:0];
    v9 = @"Live or radio streaming playback";
LABEL_9:
    [v7 setExplanation:v9];
    goto LABEL_10;
  }

  v11 = [v4 genericObject];
  v12 = [v11 flattenedGenericObject];
  v13 = [v12 type];

  if (v13 != 1)
  {
    v7 = objc_opt_new();
    [v7 setType:0];
    v9 = @"Object type is not a song";
    goto LABEL_9;
  }

  v14 = [v4 genericObject];
  v15 = [v14 flattenedGenericObject];
  v16 = [v15 song];
  v17 = [v16 traits];

  if (MSVDeviceIsWatch())
  {
    v7 = objc_opt_new();
    [v7 setType:1];
    v9 = @"Playback on watch only supports CRABS";
    goto LABEL_9;
  }

  if (!v17 && [v4 hasVideo])
  {
    v7 = objc_opt_new();
    [v7 setType:2];
    v9 = @"Object is a video without traits";
    goto LABEL_9;
  }

  if ([v4 prioritizeStartupOverQuality])
  {
    v7 = objc_opt_new();
    [v7 setType:1];
    v9 = @"Client requested to prioritize startup over quality";
    goto LABEL_9;
  }

  v18 = _MPCLogCategoryPlayback();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109378;
    v19[1] = [v4 supportsVocalAttenuation];
    v20 = 2114;
    v21 = v4;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[AL] - MPCAudioAssetTypeSelector - Starting Audio type selection [from preferences - VA Supported: %{BOOL}u] - item:%{public}@", v19, 0x12u);
  }

  v7 = -[MPCAudioAssetTypeSelector preferredAudioAssetTypeForSongWithTrait:isStartItem:supportsVocalAttenuation:](self, "preferredAudioAssetTypeForSongWithTrait:isStartItem:supportsVocalAttenuation:", v17, [v4 isStartItem], objc_msgSend(v4, "supportsVocalAttenuation"));
LABEL_10:

  return v7;
}

- (unint64_t)audioFormatPreference
{
  if ([(MPCAudioAssetTypeSelector *)self prefersHighResolutionLossless])
  {
    v3 = 8;
  }

  else if ([(MPCAudioAssetTypeSelector *)self prefersLossless])
  {
    v3 = 4;
  }

  else if ([(MPCAudioAssetTypeSelector *)self prefersHighQualityStereo])
  {
    v3 = 2;
  }

  else
  {
    v3 = [(MPCAudioAssetTypeSelector *)self prefersLowQualityStereo];
  }

  if ([(MPCAudioAssetTypeSelector *)self spatialIsOff])
  {
    return v3;
  }

  else
  {
    return v3 | 0x10;
  }
}

- (void)updateProbabilityOfProgressiveDownloadAssets:(float)a3
{
  outcomeGenerator = self->_outcomeGenerator;
  if (!outcomeGenerator || ([(MSVABTestGenerator *)outcomeGenerator probabilityForOutcomeA], v6 != a3))
  {
    v7 = objc_alloc(MEMORY[0x1E69B1398]);
    *&v8 = a3;
    v9 = [v7 initWithProbabilityForOutcomeA:v8];
    v10 = self->_outcomeGenerator;
    self->_outcomeGenerator = v9;

    MEMORY[0x1EEE66BB8](v9, v10);
  }
}

- (void)updateOutcomeGenerator
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(MPPlaybackUserDefaults *)self->_defaults progressiveDownloadAssetRatio];
  [(MSVTrialExperiment *)self->_trialExperiment doubleForFactor:@"StereoHLSAssetRatio"];
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  if (v3)
  {
    v5 = objc_alloc(MEMORY[0x1E69B1398]);
    [v3 floatValue];
    v7 = v5;
LABEL_7:
    v9 = [v7 initWithProbabilityForOutcomeA:v6];
    goto LABEL_8;
  }

  if (v4 > 0.0)
  {
    v8 = 1.0 - v4;
    v7 = objc_alloc(MEMORY[0x1E69B1398]);
    *&v6 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:
  outcomeGenerator = self->_outcomeGenerator;
  self->_outcomeGenerator = v9;

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = self;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updated AB Test Outcome Generator", &v12, 0xCu);
  }
}

- (void)handleExperimentDidReceiveUpdateNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MPCAudioAssetTypeSelector_handleExperimentDidReceiveUpdateNotification___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __74__MPCAudioAssetTypeSelector_handleExperimentDidReceiveUpdateNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 40) refresh];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Did update experiment: %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 32) updateOutcomeGenerator];
}

- (MPCAudioAssetTypeSelector)initWithPlaybackEngine:(id)a3 userDefaults:(id)a4 environmentMonitor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MPCAudioAssetTypeSelector;
  v11 = [(MPCAudioAssetTypeSelector *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_playbackEngine, v8);
    objc_storeStrong(&v12->_defaults, a4);
    objc_storeStrong(&v12->_environmentMonitor, a5);
    if (+[MPCPlaybackEngine isSystemMusic])
    {
      if ((MSVDeviceIsMac() & 1) == 0)
      {
        v13 = +[MPCPlaybackPerformanceController sharedController];
        v14 = [v13 trialExperimentWithNamespaceName:@"MUSIC_PLAYBACK_PERFORMANCE_STEREO_HLS"];
        trialExperiment = v12->_trialExperiment;
        v12->_trialExperiment = v14;

        if (v12->_trialExperiment)
        {
          v16 = [MEMORY[0x1E696AD88] defaultCenter];
          [v16 addObserver:v12 selector:sel_handleExperimentDidReceiveUpdateNotification_ name:*MEMORY[0x1E69B1390] object:v12->_trialExperiment];
        }

        [(MPCAudioAssetTypeSelector *)v12 updateOutcomeGenerator];
      }
    }
  }

  return v12;
}

- (MPCAudioAssetTypeSelector)initWithPlaybackEngine:(id)a3
{
  v4 = MEMORY[0x1E69708A8];
  v5 = a3;
  v6 = [v4 standardUserDefaults];
  v7 = [MEMORY[0x1E69E4428] sharedMonitor];
  v8 = [(MPCAudioAssetTypeSelector *)self initWithPlaybackEngine:v5 userDefaults:v6 environmentMonitor:v7];

  return v8;
}

@end