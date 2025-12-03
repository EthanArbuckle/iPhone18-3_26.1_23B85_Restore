@interface MTSound(MTSound_Activities)
- (id)tlAlertConfigurationForCategory:()MTSound_Activities;
@end

@implementation MTSound(MTSound_Activities)

- (id)tlAlertConfigurationForCategory:()MTSound_Activities
{
  if (a3 == 1)
  {
    v4 = 14;
  }

  else
  {
    v4 = 13;
  }

  v5 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:v4];
  [v5 setMaximumDuration:900.0];
  [v5 setShouldIgnoreRingerSwitch:1];
  soundVolume = [self soundVolume];

  if (soundVolume)
  {
    soundVolume2 = [self soundVolume];
    [soundVolume2 floatValue];
    [v5 setAudioVolume:?];
  }

  vibrationIdentifier = [self vibrationIdentifier];
  [v5 setVibrationIdentifier:vibrationIdentifier];

  soundType = [self soundType];
  if (soundType == 3)
  {
    mediaItemIdentifier = [self mediaItemIdentifier];
    [v5 setExternalToneMediaLibraryItemIdentifier:{objc_msgSend(mediaItemIdentifier, "integerValue")}];
  }

  else
  {
    if (soundType != 2)
    {
      goto LABEL_11;
    }

    mediaItemIdentifier = [self toneIdentifier];
    [v5 setToneIdentifier:mediaItemIdentifier];
  }

LABEL_11:

  return v5;
}

@end