@interface MRUWaveformSettings
+ (MRUWaveformSettings)ambientSettings;
+ (MRUWaveformSettings)currentSettings;
- (id)initWithStops:(id *)stops;
@end

@implementation MRUWaveformSettings

+ (MRUWaveformSettings)currentSettings
{
  if (currentSettings_onceToken != -1)
  {
    +[MRUWaveformSettings currentSettings];
  }

  v3 = __MRUWaveformSettingsCurrent;

  return v3;
}

uint64_t __38__MRUWaveformSettings_currentSettings__block_invoke()
{
  __MRUWaveformSettingsCurrent = [[MRUWaveformSettings alloc] initWithStops:?];

  return MEMORY[0x1EEE66BB8]();
}

+ (MRUWaveformSettings)ambientSettings
{
  if (ambientSettings_onceToken != -1)
  {
    +[MRUWaveformSettings ambientSettings];
  }

  v3 = __MRUWaveformSettingsAmbient;

  return v3;
}

- (id)initWithStops:(id *)stops
{
  v4 = a2;
  if (stops)
  {
    v9.receiver = stops;
    v9.super_class = MRUWaveformSettings;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    stops = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 12, a2);
      v6 = stops[13];
      stops[13] = &unk_1F148B2E0;

      *(stops + 12) = xmmword_1A23078B0;
      *(stops + 28) = xmmword_1A23078C0;
      *(stops + 11) = 1059648963;
      *(stops + 8) = MRUDeviceSupportsVariableFrameRate();
      currentSettings = [MEMORY[0x1E69B0B28] currentSettings];
      *(stops + 12) = [currentSettings waveformNonVariableFramerate];

      *(stops + 52) = xmmword_1A23078D0;
      *(stops + 68) = xmmword_1A23078E0;
      *(stops + 84) = 0x3F8000003F000000;
    }
  }

  return stops;
}

uint64_t __38__MRUWaveformSettings_ambientSettings__block_invoke()
{
  v0 = [[MRUWaveformSettings alloc] initWithStops:?];
  v1 = __MRUWaveformSettingsAmbient;
  __MRUWaveformSettingsAmbient = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end