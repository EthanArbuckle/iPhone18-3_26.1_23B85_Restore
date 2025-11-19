@interface NRMagicSwitchHelper
+ (id)companionSeed;
+ (void)clearCompanionSeed;
@end

@implementation NRMagicSwitchHelper

+ (id)companionSeed
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  if (!qword_1ED6F0B28)
  {
    v2 = CFPreferencesCopyAppValue(@"AdvertisingIdentifierSeed", @"com.apple.NanoRegistry");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];
      v4 = qword_1ED6F0B28;
      qword_1ED6F0B28 = v3;
    }

    if (!qword_1ED6F0B28)
    {
      v5 = objc_opt_new();
      v6 = qword_1ED6F0B28;
      qword_1ED6F0B28 = v5;

      CFPreferencesSetAppValue(@"AdvertisingIdentifierSeed", [qword_1ED6F0B28 UUIDString], @"com.apple.NanoRegistry");
      v7 = CFPreferencesAppSynchronize(@"com.apple.NanoRegistry");
      v8 = nr_framework_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v10 = nr_framework_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [qword_1ED6F0B28 UUIDString];
          v15 = 138412546;
          v16 = v11;
          v17 = 1024;
          v18 = v7;
          _os_log_impl(&dword_1E0ADF000, v10, OS_LOG_TYPE_DEFAULT, "Generated and persisted new companion seed: (%@); ret: (%u)", &v15, 0x12u);
        }
      }
    }
  }

  os_unfair_lock_unlock(&_MergedGlobals_12);
  v12 = qword_1ED6F0B28;
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (void)clearCompanionSeed
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v2 = qword_1ED6F0B28;
  qword_1ED6F0B28 = 0;

  CFPreferencesSetAppValue(@"AdvertisingIdentifierSeed", 0, @"com.apple.NanoRegistry");
  v3 = CFPreferencesAppSynchronize(@"com.apple.NanoRegistry");
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_DEFAULT, "Cleared Advertising Identifier Seed; ret: (%u)", v8, 8u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(&_MergedGlobals_12);
}

@end