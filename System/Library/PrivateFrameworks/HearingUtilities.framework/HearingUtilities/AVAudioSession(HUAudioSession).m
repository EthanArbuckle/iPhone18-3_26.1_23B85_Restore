@interface AVAudioSession(HUAudioSession)
- (uint64_t)currentFeature;
- (void)setActive:()HUAudioSession forFeature:error:;
- (void)setCurrentFeature:()HUAudioSession;
@end

@implementation AVAudioSession(HUAudioSession)

- (void)setActive:()HUAudioSession forFeature:error:
{
  v18 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) != 0 || [a1 currentFeature] == a4)
  {
    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109376;
      v15 = a3;
      v16 = 2048;
      v17 = a4;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Setting session active %d for %lu", &v14, 0x12u);
    }

    v10 = HCLogComfortSounds();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109376;
      v15 = a3;
      v16 = 2048;
      v17 = a4;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Setting session active %d for %lu", &v14, 0x12u);
    }

    if (a3)
    {
      [a1 setCurrentFeature:a4];
    }

    [a1 setActive:a3 error:a5];
  }

  else
  {
    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109376;
      v15 = 0;
      v16 = 2048;
      v17 = a4;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Skipping session change %d, %lu", &v14, 0x12u);
    }

    v12 = HCLogComfortSounds();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109376;
      v15 = 0;
      v16 = 2048;
      v17 = a4;
      _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Skipping session change %d, %lu", &v14, 0x12u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentFeature:()HUAudioSession
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(a1, &AVAS_PROPERTY_KEY, v2, 1);
}

- (uint64_t)currentFeature
{
  v1 = objc_getAssociatedObject(a1, &AVAS_PROPERTY_KEY);
  v2 = [v1 integerValue];

  return v2;
}

@end