@interface AVPlayerItem(MediaPlaybackCore)
- (id)mpc_loggingIdentifier;
- (id)mpc_reportingIdentifier;
- (id)mpc_setupDescription;
- (id)mpc_subscribeToAVMetricWithSubscriber:()MediaPlaybackCore queue:;
- (uint64_t)mpc_updateAVVariantPreferenceForPlayerAudioFormat:()MediaPlaybackCore spatialPreference:forceSpatial:maxResolution:;
- (uint64_t)mpc_updatePreferredMaximumAudioSampleRateForPlayerAudioFormat:()MediaPlaybackCore maxResolution:;
- (uint64_t)mpc_updatePrefersOfflinePlayableVariantForPlayerAudioFormat:()MediaPlaybackCore isDownloadedAsset:;
- (void)mpc_setReportingValue:()MediaPlaybackCore forKey:;
- (void)mpc_setupForHLSPlaybackWithPreferredFormat:()MediaPlaybackCore spatialPreference:forceSpatial:maxResolution:isDownloadedAsset:;
- (void)mpc_updateAVAudioSpatializationFormatsForPlayerAudioFormat:()MediaPlaybackCore spatialPreference:;
- (void)mpc_updatePreferredForwardBufferDurationForPlayerAudioFormat:()MediaPlaybackCore;
@end

@implementation AVPlayerItem(MediaPlaybackCore)

- (id)mpc_subscribeToAVMetricWithSubscriber:()MediaPlaybackCore queue:
{
  v6 = MEMORY[0x1E6988008];
  v7 = a4;
  v8 = a3;
  eventStream = [v6 eventStream];
  [eventStream subscribeToAllMetricEvents];
  [eventStream setSubscriber:v8 queue:v7];

  [eventStream addPublisher:self];

  return eventStream;
}

- (void)mpc_setReportingValue:()MediaPlaybackCore forKey:
{
  v7 = a3;
  v6 = a4;
  if (_NSIsNSNumber())
  {
    [self setReportingValueWithNumber:v7 forKey:v6];
  }

  else if (_NSIsNSString())
  {
    [self setReportingValueWithString:v7 forKey:v6];
  }
}

- (id)mpc_reportingIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  uUIDString = objc_getAssociatedObject(selfCopy, &mpc_reportingIdentifier_ReportingPlayerItemIdentifierKey);
  if (!uUIDString)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    objc_setAssociatedObject(selfCopy, &mpc_reportingIdentifier_ReportingPlayerItemIdentifierKey, uUIDString, 1);
  }

  objc_sync_exit(selfCopy);

  return uUIDString;
}

- (id)mpc_loggingIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  asset = [self asset];
  loggingIdentifier = [asset loggingIdentifier];
  v5 = [v2 stringWithFormat:@"%@ %p", loggingIdentifier, self];

  return v5;
}

- (id)mpc_setupDescription
{
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "prefersOfflinePlayableVariants")}];
  [v2 setObject:v3 forKeyedSubscript:@"prefersOfflinePlayableVariants"];

  v4 = MEMORY[0x1E696AD98];
  [self preferredMaximumAudioSampleRate];
  v5 = [v4 numberWithDouble:?];
  [v2 setObject:v5 forKeyedSubscript:@"preferredMaximumAudioSampleRate"];

  v6 = MEMORY[0x1E696AD98];
  [self preferredForwardBufferDuration];
  v7 = [v6 numberWithDouble:?];
  [v2 setObject:v7 forKeyedSubscript:@"preferredForwardBufferDuration"];

  if ([self allowedAudioSpatializationFormats] == 4)
  {
    v8 = @"Multichannel";
  }

  else if ([self allowedAudioSpatializationFormats])
  {
    if ([self allowedAudioSpatializationFormats] == 3)
    {
      v8 = @"MonoAndStereo";
    }

    else
    {
      if ([self allowedAudioSpatializationFormats] != 7)
      {
        goto LABEL_10;
      }

      v8 = @"MonoStereoAndMultichannel";
    }
  }

  else
  {
    v8 = @"None";
  }

  [v2 setObject:v8 forKeyedSubscript:@"allowedAudioSpatializationFormats"];
LABEL_10:
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  if (([self variantPreferences] & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GaplessAudioTransitions"];
    [v9 addObject:v10];
  }

  if (([self variantPreferences] & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BinauralAudioForUnknownAudioDeviceTypes"];
    [v9 addObject:v11];
  }

  if ([self variantPreferences])
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ScalabilityToLosslessAudio"];
    [v9 addObject:v12];
  }

  if (([self variantPreferences] & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnconstrainedAudioSampleRate"];
    [v9 addObject:v13];
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = [v9 componentsJoinedByString:{@", "}];
  v16 = [v14 stringWithFormat:@"[%@]", v15];
  [v2 setObject:v16 forKeyedSubscript:@"variantPreferences"];

  v17 = [v2 description];

  return v17;
}

- (void)mpc_updatePreferredForwardBufferDurationForPlayerAudioFormat:()MediaPlaybackCore
{
  if (([a3 tier] - 2) <= 2)
  {
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    [standardUserDefaults forwardBufferDuration];
    [self setPreferredForwardBufferDuration:?];
  }
}

- (uint64_t)mpc_updatePrefersOfflinePlayableVariantForPlayerAudioFormat:()MediaPlaybackCore isDownloadedAsset:
{
  result = [a3 tier];
  if ((result - 2) <= 2)
  {

    return [self setPrefersOfflinePlayableVariants:a4];
  }

  return result;
}

- (uint64_t)mpc_updatePreferredMaximumAudioSampleRateForPlayerAudioFormat:()MediaPlaybackCore maxResolution:
{
  if (a4 <= 47999)
  {
    v5 = 0;
  }

  else
  {
    v5 = a4;
  }

  tier = [a3 tier];
  v7 = 192000;
  v8 = 48000;
  if (tier != 2)
  {
    v8 = v5;
  }

  if (tier != 3)
  {
    v7 = v8;
  }

  return [self setPreferredMaximumAudioSampleRate:v7];
}

- (void)mpc_updateAVAudioSpatializationFormatsForPlayerAudioFormat:()MediaPlaybackCore spatialPreference:
{
  v8 = a3;
  if (MSVDeviceIsHomePod())
  {
    [self setAutoSwitchAtmosStreamVariants:0];
  }

  if ([v8 tier] != 4 && (a4 - 1) >= 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  [self setAllowedAudioSpatializationFormats:v7];
}

- (uint64_t)mpc_updateAVVariantPreferenceForPlayerAudioFormat:()MediaPlaybackCore spatialPreference:forceSpatial:maxResolution:
{
  tier = [a3 tier];
  v11 = a4 == 1 || tier == 4;
  v12 = v11;
  v11 = (v12 & a5) == 0;
  v13 = 20;
  if (!v11)
  {
    v13 = 28;
  }

  if (a6 <= 47999)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 | 3;
  }

  return [self setVariantPreferences:v14];
}

- (void)mpc_setupForHLSPlaybackWithPreferredFormat:()MediaPlaybackCore spatialPreference:forceSpatial:maxResolution:isDownloadedAsset:
{
  v12 = a3;
  [self mpc_updateAVAudioSpatializationFormatsForPlayerAudioFormat:v12 spatialPreference:a4];
  [self mpc_updateAVVariantPreferenceForPlayerAudioFormat:v12 spatialPreference:a4 forceSpatial:a5 maxResolution:a6];
  [self mpc_updatePreferredMaximumAudioSampleRateForPlayerAudioFormat:v12 maxResolution:a6];
  [self mpc_updatePrefersOfflinePlayableVariantForPlayerAudioFormat:v12 isDownloadedAsset:a7];
  [self mpc_updatePreferredForwardBufferDurationForPlayerAudioFormat:v12];
}

@end