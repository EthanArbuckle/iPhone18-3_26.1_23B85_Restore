@interface _HKBehavior(HKMedications)
- (uint64_t)hkmd_supportsMedicationsWidget;
- (uint64_t)hkmd_supportsTimeZone;
@end

@implementation _HKBehavior(HKMedications)

- (uint64_t)hkmd_supportsTimeZone
{
  if ([a1 healthAppHiddenOrNotInstalled])
  {
    _HKInitializeLogging();
    v2 = HKLogMedication();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v3 = "Scheduling disabled. Health app is hidden or not installed.";
      v4 = &v7;
LABEL_7:
      _os_log_impl(&dword_2517E7000, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([a1 isAppleWatch])
  {
    _HKInitializeLogging();
    v2 = HKLogMedication();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 0;
      v3 = "Timezone changes are no-op on watch.";
      v4 = &v6;
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  return 1;
}

- (uint64_t)hkmd_supportsMedicationsWidget
{
  if ([a1 isDeviceSupported])
  {
    v2 = [a1 currentDeviceName];
    v3 = [v2 isEqualToString:@"iPhone"];

    v4 = [a1 isAppleWatch] | v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

@end