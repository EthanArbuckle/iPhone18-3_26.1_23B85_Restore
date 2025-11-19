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
  v6 = [a1 soundVolume];

  if (v6)
  {
    v7 = [a1 soundVolume];
    [v7 floatValue];
    [v5 setAudioVolume:?];
  }

  v8 = [a1 vibrationIdentifier];
  [v5 setVibrationIdentifier:v8];

  v9 = [a1 soundType];
  if (v9 == 3)
  {
    v10 = [a1 mediaItemIdentifier];
    [v5 setExternalToneMediaLibraryItemIdentifier:{objc_msgSend(v10, "integerValue")}];
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_11;
    }

    v10 = [a1 toneIdentifier];
    [v5 setToneIdentifier:v10];
  }

LABEL_11:

  return v5;
}

@end