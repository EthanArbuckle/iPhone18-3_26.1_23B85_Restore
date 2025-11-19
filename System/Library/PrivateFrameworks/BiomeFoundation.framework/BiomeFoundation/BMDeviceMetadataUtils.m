@interface BMDeviceMetadataUtils
+ (BOOL)currentlyInGameMode;
+ (id)osBuildSupplementalVersion;
+ (id)osBuildVersion;
+ (int64_t)platform;
@end

@implementation BMDeviceMetadataUtils

+ (int64_t)platform
{
  v5 = 0;
  v2 = 0;
  if (!sysctlbyname_get_data_np())
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{0, 0}];
    free(0);
  }

  if ([v2 localizedCaseInsensitiveContainsString:{@"iPhone", v5}])
  {
    v3 = 2;
  }

  else
  {
    v3 = [v2 localizedCaseInsensitiveContainsString:@"iPad"];
  }

  return v3;
}

+ (id)osBuildVersion
{
  if (sysctlbyname_get_data_np())
  {
    v2 = @"?";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{0, 0}];
    free(0);
  }

  return v2;
}

+ (id)osBuildSupplementalVersion
{
  v2 = _CFCopySupplementalVersionDictionary();
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, *MEMORY[0x1E695E1E8]);
    if (Value)
    {
      v5 = Value;
    }

    else
    {
      v5 = @"?";
    }

    CFRelease(v3);
  }

  else
  {
    v5 = @"?";
  }

  return v5;
}

+ (BOOL)currentlyInGameMode
{
  out_token = -1;
  v3 = 0;
  notify_register_check("com.apple.system.console_mode_changed", &out_token);
  notify_get_state(out_token, &v3);
  if (out_token != -1)
  {
    notify_cancel(out_token);
  }

  return v3 != 0;
}

@end