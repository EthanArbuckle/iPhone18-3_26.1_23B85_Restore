@interface DMEnvironment
+ (BOOL)isBuildVersion:(id)a3 equalToBuildVersion:(id)a4;
+ (DMEnvironment)sharedInstance;
- (BOOL)deviceModeIsSharediPad;
- (BOOL)shouldImposePluginArtificialHang;
- (BOOL)shouldWatchdogPluginsAfterTimeout;
- (BOOL)suppressMigrationPluginWrapperExitMarkerPref;
- (BOOL)userSessionIsLoginWindow;
- (BOOL)waitForExecutePluginsSignalMarkerPref;
- (id)buildVersion;
- (id)context;
- (id)continuousIntegrationMarkerPref;
- (id)inducedPluginFailures;
- (id)lastBuildVersionPref;
- (id)lastMigrationResultsPref;
- (id)migrationPluginResultsPref;
- (id)migrationRebootCountPref;
- (id)userDataDispositionPref;
- (unint64_t)migrationRebootCount;
- (void)clearContext;
- (void)setContext:(id)a3;
- (void)setLastBuildVersionPref:(id)a3;
- (void)setLastMigrationResultsPref:(id)a3;
- (void)setMigrationPluginResultsPref:(id)a3;
- (void)setMigrationRebootCount:(unint64_t)a3;
- (void)setMigrationRebootCountPref:(id)a3;
- (void)setUserDataDispositionPref:(id)a3;
@end

@implementation DMEnvironment

+ (DMEnvironment)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DMEnvironment sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __31__DMEnvironment_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_alloc_init(DMEnvironment);

  return MEMORY[0x2821F96F8]();
}

- (id)lastBuildVersionPref
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(@"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v4 = CFPreferencesCopyValue(@"LastSystemVersion", @"com.apple.migration", v2, v3);

  return v4;
}

- (void)setLastBuildVersionPref:(id)a3
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"LastSystemVersion", a3, @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.migration", v3, v4);
}

- (id)lastMigrationResultsPref
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(@"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v4 = CFPreferencesCopyValue(@"DMLastMigrationResults", @"com.apple.migration", v2, v3);

  return v4;
}

- (void)setLastMigrationResultsPref:(id)a3
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"DMLastMigrationResults", a3, @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.migration", v3, v4);
}

- (id)userDataDispositionPref
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(@"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v4 = CFPreferencesCopyValue(@"DMUserDataDisposition", @"com.apple.migration", v2, v3);

  return v4;
}

- (void)setUserDataDispositionPref:(id)a3
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"DMUserDataDisposition", a3, @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.migration", v3, v4);
}

- (id)continuousIntegrationMarkerPref
{
  CFPreferencesAppSynchronize(@"com.apple.migration");
  v2 = CFPreferencesCopyAppValue(@"com.apple.datamigrator.continuous-integration", @"com.apple.migration");

  return v2;
}

- (BOOL)waitForExecutePluginsSignalMarkerPref
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.migration");
  if (CFPreferencesGetAppBooleanValue(@"DMWaitForExecutePluginsSignal", @"com.apple.migration", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (BOOL)suppressMigrationPluginWrapperExitMarkerPref
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.migration");
  if (CFPreferencesGetAppBooleanValue(@"DMSuppressMigrationPluginWrapperExit", @"com.apple.migration", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (id)migrationPluginResultsPref
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(@"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v4 = CFPreferencesCopyValue(@"DMMigrationPluginResults", @"com.apple.migration", v2, v3);

  return v4;
}

- (void)setMigrationPluginResultsPref:(id)a3
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"DMMigrationPluginResults", a3, @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.migration", v3, v4);
}

- (BOOL)deviceModeIsSharediPad
{
  v3 = MKBUserTypeDeviceMode();
  _DMLogFunc(v2, 7, @"MKBUserTypeDeviceMode returned error %@ result %@");
  v4 = [v3 objectForKeyedSubscript:{*MEMORY[0x277D28AD0], 0, v3}];
  v5 = [v4 isEqualToString:*MEMORY[0x277D28AE0]];

  return v5;
}

- (BOOL)userSessionIsLoginWindow
{
  IsLoginWindow = MKBUserSessionIsLoginWindow();
  v5 = [MEMORY[0x277CCABB0] numberWithBool:IsLoginWindow];
  _DMLogFunc(v2, 7, @"MKBUserSessionIsLoginWindow returned error %@ result %@");

  return IsLoginWindow;
}

- (BOOL)shouldWatchdogPluginsAfterTimeout
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.migration");
  return CFPreferencesGetAppBooleanValue(@"DMWatchdogPluginsAfterTimeout", @"com.apple.migration", &keyExistsAndHasValidFormat) || keyExistsAndHasValidFormat == 0;
}

- (unint64_t)migrationRebootCount
{
  v3 = [(DMEnvironment *)self migrationRebootCountPref];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(DMEnvironment *)self buildVersion];
    v5 = [v3 dm_migrationRebootCountPref_buildVersion];
    v6 = [DMEnvironment isBuildVersion:v4 equalToBuildVersion:v5];

    if (v6)
    {
      v7 = [v3 dm_migrationRebootCountPref_rebootCount];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setMigrationRebootCount:(unint64_t)a3
{
  v5 = MEMORY[0x277CBEAC0];
  v6 = [(DMEnvironment *)self buildVersion];
  v7 = [v5 dm_migrationRebootCountPrefWithRebootCount:a3 buildVersion:v6];
  [(DMEnvironment *)self setMigrationRebootCountPref:v7];

  [(DMEnvironment *)self blockUntilPreferencesFlush];
}

- (id)migrationRebootCountPref
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(@"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v4 = CFPreferencesCopyValue(@"DMMigrationRebootCount", @"com.apple.migration", v2, v3);

  return v4;
}

- (void)setMigrationRebootCountPref:(id)a3
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"DMMigrationRebootCount", a3, @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.migration", v3, v4);
}

- (BOOL)shouldImposePluginArtificialHang
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.migration");
  if (CFPreferencesGetAppBooleanValue(@"DMImposePluginArtificialHang", @"com.apple.migration", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (id)inducedPluginFailures
{
  v2 = CFPreferencesCopyValue(@"DMInducedPluginFailures", @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  return v2;
}

- (id)context
{
  if (DMContextPath_onceToken != -1)
  {
    [DMEnvironment(DMContext) context];
  }

  v2 = CFURLCreateWithFileSystemPath(0, DMContextPath_retval, kCFURLPOSIXPathStyle, 0);
  if (v2)
  {
    v3 = v2;
    v4 = CFReadStreamCreateWithFile(0, v2);
    if (v4)
    {
      v5 = v4;
      if (CFReadStreamOpen(v4))
      {
        v6 = CFPropertyListCreateWithStream(0, v5, 0, 0, 0, 0);
        v7 = v6;
        if (v6)
        {
          v8 = CFGetTypeID(v6);
          if (v8 != CFDictionaryGetTypeID())
          {
            CFRelease(v7);
            v7 = 0;
          }
        }

        CFReadStreamClose(v5);
      }

      else
      {
        v7 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setContext:(id)a3
{
  propertyList = a3;
  _DMLogFunc(v3, 7, @"Setting context to %@");
  v4 = getpwnam("mobile");
  if (!v4)
  {
    v11 = @"Couldn't get user info for the mobile user";
LABEL_16:
    _DMLogFunc(v3, 3, v11);
    goto LABEL_23;
  }

  v5 = v4;
  if (DMContextPath_onceToken != -1)
  {
    [DMEnvironment(DMContext) context];
  }

  v6 = CFURLCreateWithFileSystemPath(0, DMContextPath_retval, kCFURLPOSIXPathStyle, 0);
  if (!v6)
  {
    if (DMContextPath_onceToken != -1)
    {
      [DMEnvironment(DMContext) context];
    }

    v11 = @"Couldn't create a URL for the path %@";
    goto LABEL_16;
  }

  v7 = v6;
  v8 = CFWriteStreamCreateWithFile(0, v6);
  if (v8)
  {
    v9 = v8;
    if (CFWriteStreamOpen(v8))
    {
      if (!CFPropertyListWrite(propertyList, v9, kCFPropertyListBinaryFormat_v1_0, 0, 0))
      {
        _DMLogFunc(v3, 3, @"Error writing context property list to stream.");
      }

      if (chown("/var/mobile/Library/Preferences/com.apple.DataMigration.plist", v5->pw_uid, v5->pw_gid))
      {
        v10 = __error();
        strerror(*v10);
        _DMLogFunc(v3, 3, @"Couldn't chown the preferences file to the mobile user: %s");
      }

      CFWriteStreamClose(v9);
    }

    else
    {
      v12 = CFWriteStreamCopyError(v9);
      _DMLogFunc(v3, 3, @"Couldn't open the stream at %@: %@");
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  else
  {
    v9 = CFWriteStreamCopyError(0);
    _DMLogFunc(v3, 3, @"Couldn't create a stream for the file at %@: %@");
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  CFRelease(v9);
LABEL_22:
  CFRelease(v7);
LABEL_23:
}

- (void)clearContext
{
  if (DMContextPathCStr_onceToken != -1)
  {
    [DMEnvironment(DMContext) clearContext];
  }

  if (unlink(DMContextPathCStr_retval))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:*__error()];
    if (DMContextPathCStr_onceToken != -1)
    {
      [DMEnvironment(DMContext) clearContext];
    }

    _DMLogFunc(v2, 3, @"clearContext failed with errno %@ for path '%s'");
  }

  else
  {
    if (DMContextPathCStr_onceToken != -1)
    {
      [DMEnvironment(DMContext) clearContext];
    }

    _DMLogFunc(v2, 7, @"clearContext succeeded for path '%s'");
  }
}

- (id)buildVersion
{
  v2 = _CFCopySystemVersionDictionary();
  if (v2)
  {
    v3 = v2;
    v4 = [CFDictionaryGetValue(v2 *MEMORY[0x277CBEC70])];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isBuildVersion:(id)a3 equalToBuildVersion:(id)a4
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      return [a3 compare:a4 options:1] == 0;
    }
  }

  return result;
}

@end