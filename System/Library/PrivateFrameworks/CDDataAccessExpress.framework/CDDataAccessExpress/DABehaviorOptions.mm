@interface DABehaviorOptions
+ (BOOL)CFNetworkLogging;
+ (BOOL)_shouldForceCookies:(BOOL *)a3;
+ (BOOL)addDAManagedDefaults:(id)a3;
+ (BOOL)allIMAPServersSupportNotesSearch;
+ (BOOL)alwaysUseCalendarHomeSync;
+ (BOOL)babysitterEnabled;
+ (BOOL)calDAVRemindersForAll;
+ (BOOL)completelyIgnoreNotes;
+ (BOOL)compressRequests;
+ (BOOL)cookiesEnabled;
+ (BOOL)customAutoDV2UserAgentEnabled;
+ (BOOL)earlyPingEnabled;
+ (BOOL)enablePromptForServerTrust;
+ (BOOL)ignoreBadLDAPCerts;
+ (BOOL)ignoreSupportedCommands;
+ (BOOL)isAppleInternalInstall;
+ (BOOL)isEASParsingLogEnabled;
+ (BOOL)isInHoldingPattern;
+ (BOOL)orphanCheckEnabled;
+ (BOOL)perfLogging;
+ (BOOL)promptForAllCerts;
+ (BOOL)sendMeCardEverywhere;
+ (BOOL)useContactsFramerwork;
+ (BOOL)useThunderhillBetaServers;
+ (BOOL)writeOutBrokenCancelationRequests;
+ (double)defaultDAVProbeTimeout;
+ (double)defaultEASTaskTimeoutOutWasFound:(BOOL *)a3;
+ (double)holidayCalendarRefreshInterval;
+ (id)APSEnv;
+ (id)DAManagedDefaultForKey:(id)a3;
+ (id)DAManagedDefaults;
+ (id)_daManagedDefaultsPath;
+ (id)allowlistedEASProtocols;
+ (id)holidayCalendarURL;
+ (int)numForgivable401s;
+ (int)refreshThrottleTime;
+ (int64_t)rem_changeTrackingBehaviors;
+ (void)_startListeningForNotifications;
+ (void)removeDAManagedDefaults:(id)a3;
@end

@implementation DABehaviorOptions

+ (void)_startListeningForNotifications
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__DABehaviorOptions__startListeningForNotifications__block_invoke_6;
  block[3] = &unk_278D54E50;
  v3 = &__block_literal_global_3;
  if (_startListeningForNotifications_once != -1)
  {
    dispatch_once(&_startListeningForNotifications_once, block);
  }
}

uint64_t __52__DABehaviorOptions__startListeningForNotifications__block_invoke()
{
  v0 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_242505000, v0, OS_LOG_TYPE_DEBUG, "Bumping behavior token number", v2, 2u);
  }

  result = CFPreferencesSynchronize(@"com.apple.DataAccess.BehaviorOptions", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  ++sDABehaviorToken;
  return result;
}

void __52__DABehaviorOptions__startListeningForNotifications__block_invoke_6(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &_startListeningForNotifications_token, v2, *(a1 + 32));

  notify_register_dispatch("com.apple.dataaccess.BehaviorOptionsChanged", &_startListeningForNotifications_token2, v2, *(a1 + 32));
}

+ (BOOL)ignoreSupportedCommands
{
  if (ignoreSupportedCommands___haveCheckedGetOptionsIgnore != 1 || ignoreSupportedCommands___lastToken != sDABehaviorToken)
  {
    ignoreSupportedCommands___lastToken = sDABehaviorToken;
    ignoreSupportedCommands___haveCheckedGetOptionsIgnore = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"GetOptionsIgnoresCommands"];
      ignoreSupportedCommands___ignoreSupportedCommands = [v5 intValue] != 0;
    }
  }

  return ignoreSupportedCommands___ignoreSupportedCommands;
}

+ (int)refreshThrottleTime
{
  result = refreshThrottleTime___sThrottleTime;
  if (refreshThrottleTime___sThrottleTime == -1 || refreshThrottleTime___lastToken != sDABehaviorToken)
  {
    refreshThrottleTime___lastToken = sDABehaviorToken;
    v4 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v5 = [v4 objectForKeyedSubscript:@"RefreshThrottleTime"];
    if (v5 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && ([v5 intValue] & 0x80000000) == 0)
    {
      v6 = [v5 intValue];
    }

    else
    {
      v6 = 300;
    }

    refreshThrottleTime___sThrottleTime = v6;

    return refreshThrottleTime___sThrottleTime;
  }

  return result;
}

+ (BOOL)ignoreBadLDAPCerts
{
  if (ignoreBadLDAPCerts___haveCheckedIgnoreBadLDAPCerts != 1 || ignoreBadLDAPCerts___lastToken != sDABehaviorToken)
  {
    ignoreBadLDAPCerts___lastToken = sDABehaviorToken;
    ignoreBadLDAPCerts___haveCheckedIgnoreBadLDAPCerts = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"IgnoreBadLDAPCerts"];
      ignoreBadLDAPCerts___ignoreBadLDAPCerts = [v5 intValue] != 0;
    }
  }

  return ignoreBadLDAPCerts___ignoreBadLDAPCerts;
}

+ (double)defaultEASTaskTimeoutOutWasFound:(BOOL *)a3
{
  if (defaultEASTaskTimeoutOutWasFound____haveCheckedDefaultEASTaskTimeout != 1 || defaultEASTaskTimeoutOutWasFound____lastToken != sDABehaviorToken)
  {
    defaultEASTaskTimeoutOutWasFound____lastToken = sDABehaviorToken;
    defaultEASTaskTimeoutOutWasFound____haveCheckedDefaultEASTaskTimeout = 1;
    v5 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"DefaultEASTaskTimeout"];
      v8 = v7;
      if (v7)
      {
        defaultEASTaskTimeoutOutWasFound____defaultWasFound = 1;
        [v7 doubleValue];
        defaultEASTaskTimeoutOutWasFound____defaultEASTaskTimeout = v9;
      }
    }
  }

  if (a3)
  {
    *a3 = defaultEASTaskTimeoutOutWasFound____defaultWasFound;
  }

  return *&defaultEASTaskTimeoutOutWasFound____defaultEASTaskTimeout;
}

+ (double)defaultDAVProbeTimeout
{
  if (defaultDAVProbeTimeout___haveCheckedDAVProbeTimeout != 1 || defaultDAVProbeTimeout___lastToken != sDABehaviorToken)
  {
    defaultDAVProbeTimeout___lastToken = sDABehaviorToken;
    defaultDAVProbeTimeout___haveCheckedDAVProbeTimeout = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"DAVProbeTimeout"];
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 doubleValue];
          defaultDAVProbeTimeout___defaultDAVProbeTimeout = v6;
        }
      }
    }
  }

  return *&defaultDAVProbeTimeout___defaultDAVProbeTimeout;
}

+ (id)allowlistedEASProtocols
{
  if (allowlistedEASProtocols___haveCheckedAllowlistedEASProtocols != 1 || allowlistedEASProtocols___lastToken != sDABehaviorToken)
  {
    allowlistedEASProtocols___lastToken = sDABehaviorToken;
    allowlistedEASProtocols___haveCheckedAllowlistedEASProtocols = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"AllowlistedEASProtocols"];
      v6 = allowlistedEASProtocols___allowlistedEASProtocols;
      allowlistedEASProtocols___allowlistedEASProtocols = v5;
    }
  }

  v7 = allowlistedEASProtocols___allowlistedEASProtocols;

  return v7;
}

+ (BOOL)_shouldForceCookies:(BOOL *)a3
{
  if (_shouldForceCookies____haveCheckedEnableCookies != 1 || _shouldForceCookies____lastToken != sDABehaviorToken)
  {
    _shouldForceCookies____lastToken = sDABehaviorToken;
    _shouldForceCookies____haveCheckedEnableCookies = 1;
    v5 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"EnableCookies"];
      _shouldForceCookies____isSet = v7 != 0;

      v8 = [v6 objectForKeyedSubscript:@"EnableCookies"];
      _shouldForceCookies____enableCookies = [v8 intValue] != 0;
    }
  }

  if (a3)
  {
    *a3 = _shouldForceCookies____isSet;
  }

  return _shouldForceCookies____enableCookies;
}

+ (BOOL)cookiesEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  if (cookiesEnabled___flagChecked != 1 || cookiesEnabled___lastToken != sDABehaviorToken)
  {
    cookiesEnabled___lastToken = sDABehaviorToken;
    cookiesEnabled___flagChecked = 1;
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      v3 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_242505000, v3, OS_LOG_TYPE_DEFAULT, "Turning off cookie support because we are running on older hardware", buf, 2u);
      }

      cookiesEnabled___cookiesEnabled = 1;
    }
  }

  v10 = 0;
  v4 = [DABehaviorOptions _shouldForceCookies:&v10];
  if (v10 == 1)
  {
    v5 = v4;
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"dis";
      if (v5)
      {
        v7 = @"en";
      }

      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_DEFAULT, "Due to a profile setting, we are forcing cookies to be %@abled", buf, 0xCu);
    }
  }

  else
  {
    LOBYTE(v5) = cookiesEnabled___cookiesEnabled ^ 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

+ (BOOL)calDAVRemindersForAll
{
  if (calDAVRemindersForAll___haveCheckedRemindersForAll != 1 || calDAVRemindersForAll___lastToken != sDABehaviorToken)
  {
    calDAVRemindersForAll___lastToken = sDABehaviorToken;
    calDAVRemindersForAll___haveCheckedRemindersForAll = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"RemindersForAll"];
      calDAVRemindersForAll___remindersForAll = [v5 intValue] != 0;
    }
  }

  return calDAVRemindersForAll___remindersForAll;
}

+ (BOOL)promptForAllCerts
{
  if (promptForAllCerts___haveCheckedPromptForAllCerts != 1 || promptForAllCerts___lastToken != sDABehaviorToken)
  {
    promptForAllCerts___lastToken = sDABehaviorToken;
    promptForAllCerts___haveCheckedPromptForAllCerts = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"PromptForAllCerts"];
      promptForAllCerts___promptForAllCerts = [v5 intValue] != 0;
    }
  }

  return promptForAllCerts___promptForAllCerts;
}

+ (BOOL)enablePromptForServerTrust
{
  if (enablePromptForServerTrust___haveCheckedEnablePromptForServerTrust != 1 || enablePromptForServerTrust___lastToken != sDABehaviorToken)
  {
    enablePromptForServerTrust___lastToken = sDABehaviorToken;
    enablePromptForServerTrust___haveCheckedEnablePromptForServerTrust = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"EnableServerTrustProcessing"];
      enablePromptForServerTrust___enablePromptForServerTrust = [v5 intValue] != 0;
    }
  }

  return enablePromptForServerTrust___enablePromptForServerTrust;
}

+ (BOOL)compressRequests
{
  if (compressRequests___haveCheckedCompressRequests != 1 || compressRequests___lastToken != sDABehaviorToken)
  {
    compressRequests___lastToken = sDABehaviorToken;
    compressRequests___haveCheckedCompressRequests = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"CompressRequests"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"CompressRequests"];
        compressRequests___compressRequests = [v6 intValue] != 0;
      }
    }
  }

  return compressRequests___compressRequests;
}

+ (BOOL)useThunderhillBetaServers
{
  if (useThunderhillBetaServers___haveCheckedThunderhillBeta != 1 || useThunderhillBetaServers___lastToken != sDABehaviorToken)
  {
    useThunderhillBetaServers___lastToken = sDABehaviorToken;
    useThunderhillBetaServers___haveCheckedThunderhillBeta = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"ThunderhillBeta"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"ThunderhillBeta"];
        useThunderhillBetaServers___ThunderhillBeta = [v6 intValue] != 0;
      }
    }
  }

  return useThunderhillBetaServers___ThunderhillBeta;
}

+ (BOOL)perfLogging
{
  if (perfLogging___haveCheckedPerfLogging != 1 || perfLogging___lastToken != sDABehaviorToken)
  {
    perfLogging___lastToken = sDABehaviorToken;
    perfLogging___haveCheckedPerfLogging = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"PerfLogging"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"PerfLogging"];
        perfLogging___PerfLogging = [v6 intValue] != 0;
      }
    }
  }

  return perfLogging___PerfLogging;
}

+ (BOOL)CFNetworkLogging
{
  if (CFNetworkLogging___haveCheckedCFNetworkLogging != 1 || CFNetworkLogging___lastToken != sDABehaviorToken)
  {
    CFNetworkLogging___lastToken = sDABehaviorToken;
    CFNetworkLogging___haveCheckedCFNetworkLogging = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"CFNetworkLogging"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"CFNetworkLogging"];
        CFNetworkLogging___CFNetworkLogging = [v6 intValue] != 0;
      }
    }
  }

  return CFNetworkLogging___CFNetworkLogging;
}

+ (id)APSEnv
{
  if (APSEnv___APSEnvChecked == 1 && APSEnv___lastToken == sDABehaviorToken)
  {
    v4 = 0;
  }

  else
  {
    APSEnv___lastToken = sDABehaviorToken;
    APSEnv___APSEnvChecked = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = [v3 objectForKeyedSubscript:@"APSEnv"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&APSEnv___sAPSEnv, v4);
      }
    }

    if (!APSEnv___sAPSEnv)
    {
      v5 = CFPreferencesCopyAppValue(@"DAAPSEnv", *MEMORY[0x277CBF008]);
      v6 = APSEnv___sAPSEnv;
      APSEnv___sAPSEnv = v5;
    }
  }

  v7 = APSEnv___sAPSEnv;
  v8 = APSEnv___sAPSEnv;

  return v7;
}

+ (BOOL)allIMAPServersSupportNotesSearch
{
  if (allIMAPServersSupportNotesSearch___haveCheckedAllIMAPServersSupportNotesSearch != 1 || allIMAPServersSupportNotesSearch___lastToken != sDABehaviorToken)
  {
    allIMAPServersSupportNotesSearch___lastToken = sDABehaviorToken;
    allIMAPServersSupportNotesSearch___haveCheckedAllIMAPServersSupportNotesSearch = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"AllIMAPServersSupportNotesSearch"];
      allIMAPServersSupportNotesSearch___allIMAPServersSupportNotesSearch = [v5 intValue] != 0;
    }
  }

  return allIMAPServersSupportNotesSearch___allIMAPServersSupportNotesSearch;
}

+ (BOOL)completelyIgnoreNotes
{
  if (completelyIgnoreNotes___haveCheckedCompletelyIgnoreNotes != 1 || completelyIgnoreNotes___lastToken != sDABehaviorToken)
  {
    completelyIgnoreNotes___lastToken = sDABehaviorToken;
    completelyIgnoreNotes___haveCheckedCompletelyIgnoreNotes = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"CompletelyIgnoreNotes"];
      completelyIgnoreNotes___completelyIgnoreNotes = [v5 intValue] != 0;
    }
  }

  return completelyIgnoreNotes___completelyIgnoreNotes;
}

+ (BOOL)writeOutBrokenCancelationRequests
{
  if (writeOutBrokenCancelationRequests___haveCheckedWriteOutBrokenCancelationRequests != 1 || writeOutBrokenCancelationRequests___lastToken != sDABehaviorToken)
  {
    writeOutBrokenCancelationRequests___lastToken = sDABehaviorToken;
    writeOutBrokenCancelationRequests___haveCheckedWriteOutBrokenCancelationRequests = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"WriteOutBrokenCancelationRequests"];
      writeOutBrokenCancelationRequests___writeOutBrokenCancelationRequests = [v5 intValue] != 0;
    }
  }

  return writeOutBrokenCancelationRequests___writeOutBrokenCancelationRequests;
}

+ (BOOL)sendMeCardEverywhere
{
  if (sendMeCardEverywhere___haveCheckedSendMeCardEverywhere != 1 || sendMeCardEverywhere___lastToken != sDABehaviorToken)
  {
    sendMeCardEverywhere___lastToken = sDABehaviorToken;
    sendMeCardEverywhere___haveCheckedSendMeCardEverywhere = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"SendMeCardEverywhere"];
      sendMeCardEverywhere___sendMeCardEverywhere = [v5 intValue] != 0;
    }
  }

  return sendMeCardEverywhere___sendMeCardEverywhere;
}

+ (BOOL)isInHoldingPattern
{
  if (isInHoldingPattern___haveCheckedIsInHoldingPattern != 1 || isInHoldingPattern___lastToken != sDABehaviorToken)
  {
    isInHoldingPattern___lastToken = sDABehaviorToken;
    isInHoldingPattern___haveCheckedIsInHoldingPattern = 1;
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    isInHoldingPattern___isInHoldingPattern = [v3 BOOLForKey:@"DAInHoldingPattern"];

    if (isInHoldingPattern___isInHoldingPattern == 1)
    {
      v4 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_242505000, v4, OS_LOG_TYPE_ERROR, "\n*\n*\n*\n*\nDA is in a holding pattern.  We will not be syncing any time soon\n*\n*\n*\n*", v6, 2u);
      }
    }
  }

  return isInHoldingPattern___isInHoldingPattern;
}

+ (BOOL)babysitterEnabled
{
  if (babysitterEnabled___haveCheckedBabysitterEnabled != 1 || babysitterEnabled___lastToken != sDABehaviorToken)
  {
    babysitterEnabled___lastToken = sDABehaviorToken;
    babysitterEnabled___haveCheckedBabysitterEnabled = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"BabysitterEnabled"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"BabysitterEnabled"];
        babysitterEnabled___babysitterEnabled = [v6 intValue] != 0;
      }
    }
  }

  return babysitterEnabled___babysitterEnabled;
}

+ (BOOL)alwaysUseCalendarHomeSync
{
  if (alwaysUseCalendarHomeSync___haveCheckedAlwaysUseCalendarHomeSync != 1 || alwaysUseCalendarHomeSync___lastToken != sDABehaviorToken)
  {
    alwaysUseCalendarHomeSync___lastToken = sDABehaviorToken;
    alwaysUseCalendarHomeSync___haveCheckedAlwaysUseCalendarHomeSync = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"AlwaysUseCalendarHomeSync"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"AlwaysUseCalendarHomeSync"];
        alwaysUseCalendarHomeSync___alwaysUseCalendarHomeSync = [v6 intValue] != 0;
      }
    }
  }

  return alwaysUseCalendarHomeSync___alwaysUseCalendarHomeSync;
}

+ (BOOL)useContactsFramerwork
{
  if (useContactsFramerwork___haveCheckedUseContactsFramework != 1 || useContactsFramerwork___lastToken != sDABehaviorToken)
  {
    useContactsFramerwork___lastToken = sDABehaviorToken;
    useContactsFramerwork___haveCheckedUseContactsFramework = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"UseContactsFramework"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"UseContactsFramework"];
        useContactsFramerwork___useContactsFramework = [v6 intValue] != 0;
      }
    }
  }

  return useContactsFramerwork___useContactsFramework;
}

+ (BOOL)earlyPingEnabled
{
  if (earlyPingEnabled___haveCheckedEarlyPingEnabled != 1 || earlyPingEnabled___lastToken != sDABehaviorToken)
  {
    earlyPingEnabled___lastToken = sDABehaviorToken;
    earlyPingEnabled___haveCheckedEarlyPingEnabled = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"EarlyPingEnabled"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"EarlyPingEnabled"];
        earlyPingEnabled___earlyPingEnabled = [v6 intValue] != 0;
      }
    }
  }

  return earlyPingEnabled___earlyPingEnabled;
}

+ (BOOL)customAutoDV2UserAgentEnabled
{
  if (customAutoDV2UserAgentEnabled___haveCheckedCustomAutoDV2UserAgentEnabled != 1 || customAutoDV2UserAgentEnabled___lastToken != sDABehaviorToken)
  {
    customAutoDV2UserAgentEnabled___lastToken = sDABehaviorToken;
    customAutoDV2UserAgentEnabled___haveCheckedCustomAutoDV2UserAgentEnabled = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"CustomAutoDV2UserAgentEnabled"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"CustomAutoDV2UserAgentEnabled"];
        customAutoDV2UserAgentEnabled___customAutoDV2UserAgentEnabled = [v6 intValue] != 0;
      }
    }
  }

  return customAutoDV2UserAgentEnabled___customAutoDV2UserAgentEnabled;
}

+ (id)holidayCalendarURL
{
  if (holidayCalendarURL___haveCheckedHolidayCalendarURL != 1 || holidayCalendarURL___lastToken != sDABehaviorToken)
  {
    holidayCalendarURL___lastToken = sDABehaviorToken;
    holidayCalendarURL___haveCheckedHolidayCalendarURL = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"HolidayCalendarURL"];
      if ([(__CFString *)v5 length])
      {
        v6 = v5;
      }

      else
      {
        v6 = @"https://caldav.icloud.com/.well-known/calendarsearchdav";
      }

      v8 = [MEMORY[0x277CBEBC0] URLWithString:v6];
      v9 = holidayCalendarURL___holidayCalendarURL;
      holidayCalendarURL___holidayCalendarURL = v8;
    }

    else
    {
      v7 = [MEMORY[0x277CBEBC0] URLWithString:@"https://caldav.icloud.com/.well-known/calendarsearchdav"];
      v5 = holidayCalendarURL___holidayCalendarURL;
      holidayCalendarURL___holidayCalendarURL = v7;
    }
  }

  v10 = holidayCalendarURL___holidayCalendarURL;

  return v10;
}

+ (double)holidayCalendarRefreshInterval
{
  if (holidayCalendarRefreshInterval___haveCheckedHolidayCalendarRefreshInterval != 1 || holidayCalendarRefreshInterval___lastToken != sDABehaviorToken)
  {
    holidayCalendarRefreshInterval___lastToken = sDABehaviorToken;
    holidayCalendarRefreshInterval___haveCheckedHolidayCalendarRefreshInterval = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"HolidayCalendarRefreshInterval"];
      v6 = v5;
      if (v5)
      {
        [v5 doubleValue];
        holidayCalendarRefreshInterval___holidayCalendarRefreshInterval = v7;
      }
    }
  }

  return *&holidayCalendarRefreshInterval___holidayCalendarRefreshInterval;
}

+ (BOOL)isAppleInternalInstall
{
  if ((isAppleInternalInstall___haveCheckedIsAppleInternalInstall & 1) == 0)
  {
    isAppleInternalInstall___haveCheckedIsAppleInternalInstall = 1;
    v2 = MGCopyAnswer();
    if (v2)
    {
      v3 = v2;
      isAppleInternalInstall___isAppleInternalInstall = CFEqual(v2, @"Internal") != 0;
      CFRelease(v3);
    }

    else
    {
      isAppleInternalInstall___isAppleInternalInstall = 0;
    }
  }

  return isAppleInternalInstall___isAppleInternalInstall;
}

+ (int)numForgivable401s
{
  result = numForgivable401s___sNumForgivable401s;
  if (numForgivable401s___sNumForgivable401s == -1 || numForgivable401s___lastToken != sDABehaviorToken)
  {
    numForgivable401s___lastToken = sDABehaviorToken;
    v4 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v5 = [v4 objectForKeyedSubscript:@"NumForgivable401s"];
    v6 = v5;
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && ([v6 intValue] & 0x80000000) == 0)
      {
        LODWORD(v5) = [v6 intValue];
      }

      else
      {
        LODWORD(v5) = 0;
      }
    }

    numForgivable401s___sNumForgivable401s = v5;

    return numForgivable401s___sNumForgivable401s;
  }

  return result;
}

+ (BOOL)isEASParsingLogEnabled
{
  if (isEASParsingLogEnabled___haveCheckedEASParsingLogEnabled != 1 || isEASParsingLogEnabled___lastToken != sDABehaviorToken)
  {
    isEASParsingLogEnabled___haveCheckedEASParsingLogEnabled = 1;
    isEASParsingLogEnabled___lastToken = sDABehaviorToken;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = [v3 objectForKeyedSubscript:@"EASParsingLogEnabled"];
    v5 = v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [v4 intValue] != 0;
    isEASParsingLogEnabled___isEASParsingLogEnabled = v5;
  }

  return isEASParsingLogEnabled___isEASParsingLogEnabled;
}

+ (BOOL)orphanCheckEnabled
{
  if (orphanCheckEnabled___haveCheckedOrphanCheckEnabled != 1 || orphanCheckEnabled___lastToken != sDABehaviorToken)
  {
    orphanCheckEnabled___lastToken = sDABehaviorToken;
    orphanCheckEnabled___haveCheckedOrphanCheckEnabled = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"OrphanCheckEnabled"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"OrphanCheckEnabled"];
        orphanCheckEnabled___orphanCheckEnabled = [v6 intValue] != 0;
      }
    }
  }

  return orphanCheckEnabled___orphanCheckEnabled;
}

+ (id)_daManagedDefaultsPath
{
  if (_daManagedDefaultsPath_onceToken != -1)
  {
    +[DABehaviorOptions _daManagedDefaultsPath];
  }

  v3 = _daManagedDefaultsPath_defaultsPath;

  return v3;
}

void __43__DABehaviorOptions__daManagedDefaultsPath__block_invoke()
{
  v0 = _daManagedDefaultsPath_defaultsPath;
  _daManagedDefaultsPath_defaultsPath = @"/Library/Managed Preferences/mobile/.GlobalPreferences.plist";
}

+ (id)DAManagedDefaults
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [objc_opt_class() _daManagedDefaultsPath];
  v4 = [v2 dictionaryWithContentsOfFile:v3];

  return v4;
}

+ (id)DAManagedDefaultForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 DAManagedDefaults];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

+ (BOOL)addDAManagedDefaults:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() DAManagedDefaults];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    [v5 addEntriesFromDictionary:v3];
    v6 = v5;

    v3 = v6;
  }

  v7 = [objc_opt_class() setDAManagedDefaults:v3];

  return v7;
}

+ (void)removeDAManagedDefaults:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() DAManagedDefaults];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 removeObjectForKey:{*(*(&v12 + 1) + 8 * v10++), v12}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [objc_opt_class() setDAManagedDefaults:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (int64_t)rem_changeTrackingBehaviors
{
  if (rem_changeTrackingBehaviors___haveCheckedDADREMChangeTrackingBehaviors != 1 || rem_changeTrackingBehaviors___lastToken != sDABehaviorToken)
  {
    rem_changeTrackingBehaviors___lastToken = sDABehaviorToken;
    rem_changeTrackingBehaviors___haveCheckedDADREMChangeTrackingBehaviors = 1;
    v3 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"DADREMChangeTrackingBehaviors"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"DADREMChangeTrackingBehaviors"];
        rem_changeTrackingBehaviors___remChangeTrackingBehaviors = [v6 intValue];
      }
    }
  }

  return rem_changeTrackingBehaviors___remChangeTrackingBehaviors;
}

@end