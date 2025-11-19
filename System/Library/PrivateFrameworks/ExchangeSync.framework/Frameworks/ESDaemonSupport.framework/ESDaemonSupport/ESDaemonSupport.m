void sub_24A188784(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void handleSignal(int a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1 <= 14)
  {
    if (a1 == 1)
    {
      v10 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v10, v13))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(&dword_24A184000, v10, v13, "HUP received.  HUP is currently unused.  Ignoring.\n", v20, 2u);
      }

      goto LABEL_21;
    }

    if (a1 != 3)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  if (a1 == 15)
  {
    goto LABEL_13;
  }

  if (a1 == 31)
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v11, v12))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&dword_24A184000, v11, v12, "USR2 received.  Dumping our state.\n", v20, 2u);
    }

    v10 = dataaccess_get_global_queue();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __logState_block_invoke;
    v20[3] = &__block_descriptor_33_e5_v8__0l;
    v21 = 1;
    dispatch_async(v10, v20);
    goto LABEL_21;
  }

  if (a1 != 30)
  {
    goto LABEL_22;
  }

  v1 = DALoggingwithCategory();
  v2 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v1, v2))
  {
    LOWORD(v20[0]) = 0;
    _os_log_impl(&dword_24A184000, v1, v2, "Signal USR1 (30) received.  Exit if xpc transaction count is 0.\n", v20, 2u);
  }

  v3 = [MEMORY[0x277D037F8] sharedTransactionMonitor];
  v4 = [v3 transactionCount];

  if (!v4)
  {
LABEL_13:
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&dword_24A184000, v8, v9, "QUIT received.  Shutting down.\n", v20, 2u);
    }

    v10 = +[ESDMain sharedMain];
    [v10 shutdownDAD];
LABEL_21:

    goto LABEL_22;
  }

  v5 = DALoggingwithCategory();
  if (os_log_type_enabled(v5, v2))
  {
    v6 = [MEMORY[0x277D037F8] sharedTransactionMonitor];
    v7 = [v6 transactionCount];
    LODWORD(v20[0]) = 67109120;
    HIDWORD(v20[0]) = v7;
    _os_log_impl(&dword_24A184000, v5, v2, "The xpc transaction count is %d. Do nothing.\n", v20, 8u);
  }

LABEL_22:
  v14 = +[ESDMain sharedMain];
  v15 = [v14 isDisabled];

  if (v15)
  {
    for (i = 0; i != 5; ++i)
    {
      v17 = signalSources[i];
      if (v17)
      {
        dispatch_source_cancel(v17);
        v18 = signalSources[i];
        signalSources[i] = 0;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_24A18A41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _languageMayHaveChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 138412290;
    v7 = a3;
    _os_log_impl(&dword_24A184000, v4, v5, "Received notificaion %@ indicating a language change.  Going to exit to pick up new locale support", buf, 0xCu);
  }

  NSLog(&cfstr_ReceivedNotifi_0.isa, a3);
  sleep(1u);
  exit(0);
}

id getStateString()
{
  v0 = dataaccess_get_global_queue();
  dispatch_assert_queue_V2(v0);

  v1 = +[ESDAgentManager sharedManager];
  v2 = [v1 stateString];

  v3 = [MEMORY[0x277D037B8] sharedManager];
  v4 = [v3 stateString];

  if ([v4 length])
  {
    v5 = [v2 stringByAppendingString:v4];

    v2 = v5;
  }

  return v2;
}

void __logState_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = getStateString();
  v4 = DALoggingwithCategory();
  v5 = v4;
  v6 = 5;
  if (!*(a1 + 32))
  {
    v6 = 6;
  }

  v7 = *(MEMORY[0x277D03988] + v6);
  if (os_log_type_enabled(v4, v7))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_24A184000, v5, v7, "%@", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"ESDRequestClientStatusDumpNotification" object:0];

  dispatch_time(0, 1000000000);
  DACPLoggingFlush();

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

_DWORD *__ESDAddStateCaptureBlock_block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2 && *(a2 + 16) == 3)
  {
    v3 = (*(*(a1 + 32) + 16))();
    if (!v3)
    {
      v8 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v21 = 0;
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:&v21];
    v5 = v21;
    if (v4)
    {
      v6 = [v4 length];
      v7 = malloc_type_calloc(1uLL, v6 + 200, 0x1000040BEF03554uLL);
      if (v7)
      {
        v8 = v7;
        v9 = *(a1 + 40);
        __strlcpy_chk();
        *v8 = 1;
        v8[1] = v6;
        [v4 getBytes:v8 + 50 range:{0, v6}];
LABEL_15:

        goto LABEL_16;
      }

      v10 = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v17))
      {
        v18 = *(a1 + 40);
        *buf = 136315138;
        v23 = v18;
        v13 = "Failed to allocate state capture data (%s)";
        v14 = v10;
        v15 = v17;
        v16 = 12;
        goto LABEL_13;
      }
    }

    else
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(a1 + 40);
        *buf = 136315394;
        v23 = v12;
        v24 = 2112;
        v25 = v5;
        v13 = "Failed to serialize state capture payload (%s): %@";
        v14 = v10;
        v15 = v11;
        v16 = 22;
LABEL_13:
        _os_log_impl(&dword_24A184000, v14, v15, v13, buf, v16);
      }
    }

    v8 = 0;
    goto LABEL_15;
  }

  v8 = 0;
LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

void _devicePowerChanged(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v11[0] = 67109120;
    v11[1] = a3;
    _os_log_impl(&dword_24A184000, v6, v7, "Handling power change call with messageType 0x%x", v11, 8u);
  }

  v8 = +[ESDAgentManager sharedManager];
  v9 = v8;
  switch(a3)
  {
    case -536870288:
      goto LABEL_8;
    case -536870272:
      [v8 _deviceWillSleep];
LABEL_8:
      IOAllowPowerChange(__RootDomainConnect, a4);
      break;
    case -536870144:
      [v8 _deviceDidWake];
      break;
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24A1A24F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void _pcPreferencesDidChange()
{
  v0 = DALoggingwithCategory();
  v1 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v0, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_24A184000, v0, v1, "Received PCPreferencesDidChangeNotification due to user change", v2, 2u);
  }
}

void _calDaysToSyncDidChange()
{
  v0 = DALoggingwithCategory();
  v1 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v0, v1))
  {
    *v3 = 0;
    _os_log_impl(&dword_24A184000, v0, v1, "XPC: Received CDBPreferences_Notification_kCalPreferredDaysToSyncKey or CDBPreferences_Notification_kCalRemindersPreferredDaysToSyncKey", v3, 2u);
  }

  v2 = +[ESDAgentManager sharedManager];
  [v2 _calDaysToSyncDidChange];
}

void _calDatabaseDidChange()
{
  v0 = [MEMORY[0x277D07A00] sharedDBWatcher];
  [v0 didReceiveDarwinNotification:@"_CalDatabaseChangedNotification"];
}

void _abDataBaseDidChangeByOtherProcess()
{
  v0 = [MEMORY[0x277D07A00] sharedDBWatcher];
  [v0 didReceiveDarwinNotification:@"__ABDataBaseChangedByOtherProcessNotification"];
}

void _noteContextDidChange()
{
  v0 = [MEMORY[0x277D07A00] sharedDBWatcher];
  [v0 didReceiveDarwinNotification:@"NoteContextDarwinNotificationWithLoggedChanges"];
}

void _systemReadyCheckFired(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412290;
    v10 = a3;
    _os_log_impl(&dword_24A184000, v5, v6, "ESAgentManager: System Ready Check Fired with Name %@", &v9, 0xCu);
  }

  v7 = a2;
  if ([a3 isEqualToString:@"com.apple.purplebuddy.setupdone"])
  {
    [v7 _resetMonitoringRequestsAndLoadAgents];
  }

  else
  {
    [v7 _systemMayNowBeReady];
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t launchdSemaphorePath()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Preferences/com.apple.dataaccess.launchd"];
  v1 = [v0 fileSystemRepresentation];

  return v1;
}

uint64_t launchdActiveSyncPath()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Preferences/com.apple.dataaccess.activesync"];
  v1 = [v0 fileSystemRepresentation];

  return v1;
}