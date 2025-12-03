@interface CRSessionSilentModeStatus
- (BOOL)isDeviceSilentModeOn;
- (unint64_t)getCarPlaySilentModePreference;
- (void)setCarPlaySilentModePreference:(unint64_t)preference;
- (void)setDeviceSilentMode:(BOOL)mode reason:(id)reason;
@end

@implementation CRSessionSilentModeStatus

- (unint64_t)getCarPlaySilentModePreference
{
  v2 = CFPreferencesCopyAppValue(@"CRCarPlaySilentModePref", @"com.apple.CarPlayApp");
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setCarPlaySilentModePreference:(unint64_t)preference
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(CRSessionSilentModeStatus *)self getCarPlaySilentModePreference]!= preference)
  {
    v4 = CarSilentModeLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"Unmuted";
      if (preference == 1)
      {
        v5 = @"Muted";
      }

      if (!preference)
      {
        v5 = @"Mirror iPhone";
      }

      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "CarPlay Silent Mode Preference changed: %{public}@", &v7, 0xCu);
    }

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:preference];
    CFPreferencesSetAppValue(@"CRCarPlaySilentModePref", v6, @"com.apple.CarPlayApp");
  }
}

- (BOOL)isDeviceSilentModeOn
{
  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedInstance];
  getSilentMode = [mEMORY[0x1E69AED10] getSilentMode];

  return getSilentMode;
}

- (void)setDeviceSilentMode:(BOOL)mode reason:(id)reason
{
  modeCopy = mode;
  v20 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69AED10];
  reasonCopy = reason;
  sharedInstance = [v6 sharedInstance];
  [sharedInstance setSilentMode:modeCopy untilTime:0 reason:reasonCopy clientType:8];

  isDeviceSilentModeOn = [(CRSessionSilentModeStatus *)self isDeviceSilentModeOn];
  v10 = CarSilentModeLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Unmuted";
    if (modeCopy)
    {
      v12 = @"Muted";
    }

    else
    {
      v12 = @"Unmuted";
    }

    if (isDeviceSilentModeOn)
    {
      v11 = @"Muted";
    }

    v14 = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = v11;
    if (isDeviceSilentModeOn != modeCopy)
    {
      v13 = @"NO";
    }

    else
    {
      v13 = @"YES";
    }

    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_DEFAULT, "Should have %{public}@ device. Device is %{public}@. Success: %{public}@", &v14, 0x20u);
  }
}

@end