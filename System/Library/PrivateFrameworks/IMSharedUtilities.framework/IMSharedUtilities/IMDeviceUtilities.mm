@interface IMDeviceUtilities
+ (BOOL)IMDeviceIsChinaRegion;
+ (BOOL)IMDeviceIsGreenTea;
+ (BOOL)IMDeviceIsIndiaRegion;
+ (BOOL)_completedSystemAppMigration;
+ (BOOL)deviceIsLockedDown;
+ (BOOL)isInternalCarryDevice;
+ (BOOL)isMessagesInstalled;
@end

@implementation IMDeviceUtilities

+ (BOOL)isMessagesInstalled
{
  v9 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E6963608] "defaultWorkspace")])
  {
    LOBYTE(v3) = 1;
  }

  else if ([a1 _completedSystemAppMigration])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = IMGetCachedDomainBoolForKeyWithDefaultValue();
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = @"NO";
        if (v3)
        {
          v5 = @"YES";
        }

        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "We did not finish SystemAppMigration yet, overriding isMessagesInstalled to %@", &v7, 0xCu);
      }
    }
  }

  return v3;
}

+ (BOOL)deviceIsLockedDown
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"LDMGlobalEnabled" inDomain:*MEMORY[0x1E696A400]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v3 BOOLValue];
}

+ (BOOL)IMDeviceIsChinaRegion
{
  if (qword_1ED8C96C8 != -1)
  {
    sub_1A88C1470();
  }

  return byte_1EB3096A0;
}

+ (BOOL)IMDeviceIsGreenTea
{
  if (qword_1ED8C9988 != -1)
  {
    sub_1A88C1484();
  }

  return byte_1EB30A568;
}

+ (BOOL)IMDeviceIsIndiaRegion
{
  if (qword_1EB30AE70 != -1)
  {
    sub_1A88C1498();
  }

  return byte_1EB30AE68;
}

+ (BOOL)isInternalCarryDevice
{
  if (!+[IMDeviceUtilities isInternalInstall])
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  v3 = [v2 isEqualToString:@"carry"];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

+ (BOOL)_completedSystemAppMigration
{
  v9 = *MEMORY[0x1E69E9840];
  SystemAppMigrationStatus = MobileInstallationGetSystemAppMigrationStatus();
  v3 = IMOSLoggingEnabled();
  if (SystemAppMigrationStatus)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v8 = @"NO";
        v5 = "Fetching SystemAppMigrationStatus is %@";
LABEL_8:
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, v5, buf, 0xCu);
      }
    }
  }

  else if (v3)
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = 0;
      v5 = "Fetching SystemAppMigrationStatus failed with error %@";
      goto LABEL_8;
    }
  }

  return 0;
}

@end