@interface MRUWaveformSettings
+ (MRUWaveformSettings)ambientSettings;
+ (MRUWaveformSettings)currentSettings;
- (id)initWithStops:(id *)a1;
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

- (id)initWithStops:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = MRUWaveformSettings;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 12, a2);
      v6 = a1[13];
      a1[13] = &unk_1F148B2E0;

      *(a1 + 12) = xmmword_1A23078B0;
      *(a1 + 28) = xmmword_1A23078C0;
      *(a1 + 11) = 1059648963;
      *(a1 + 8) = MRUDeviceSupportsVariableFrameRate();
      v7 = [MEMORY[0x1E69B0B28] currentSettings];
      *(a1 + 12) = [v7 waveformNonVariableFramerate];

      *(a1 + 52) = xmmword_1A23078D0;
      *(a1 + 68) = xmmword_1A23078E0;
      *(a1 + 84) = 0x3F8000003F000000;
    }
  }

  return a1;
}

uint64_t __38__MRUWaveformSettings_ambientSettings__block_invoke()
{
  v0 = [[MRUWaveformSettings alloc] initWithStops:?];
  v1 = __MRUWaveformSettingsAmbient;
  __MRUWaveformSettingsAmbient = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end