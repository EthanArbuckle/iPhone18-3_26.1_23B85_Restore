void _devicePowerChanged(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v11[0] = 67109120;
    v11[1] = a3;
    _os_log_impl(&dword_2424DF000, v6, v7, "Handling power change call with messageType %d", v11, 8u);
  }

  v8 = +[DADAgentManager sharedManager];
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

void sub_2424E10DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2424E6484(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2424E6AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t launchdActiveSyncPath()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Preferences/com.apple.dataaccess.activesync"];
  v1 = [v0 fileSystemRepresentation];

  return v1;
}

void handleSignal(int a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1 <= 14)
  {
    if (a1 == 1)
    {
      v11 = DALoggingwithCategory();
      v20 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v11, v20))
      {
        LOWORD(v21[0]) = 0;
        _os_log_impl(&dword_2424DF000, v11, v20, "HUP received.  HUP is currently unused.  Ignoring.\n", v21, 2u);
      }

      goto LABEL_16;
    }

    if (a1 != 3)
    {
      goto LABEL_20;
    }

LABEL_13:
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&dword_2424DF000, v8, v9, "QUIT received.  Shutting down.\n", v21, 2u);
    }

    v10 = +[DARefreshManager sharedManager];
    [v10 setPersistAPSAfterShutdown:1];

    v11 = +[DADMain sharedMain];
    [v11 shutdownDAD];
LABEL_16:

    goto LABEL_20;
  }

  if (a1 == 15)
  {
    goto LABEL_13;
  }

  if (a1 != 31)
  {
    if (a1 != 30)
    {
      goto LABEL_20;
    }

    v1 = DALoggingwithCategory();
    v2 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v1, v2))
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&dword_2424DF000, v1, v2, "Signal USR1 (30) received.  Exit if xpc transaction count is 0.\n", v21, 2u);
    }

    v3 = [MEMORY[0x277CF3A38] sharedTransactionMonitor];
    v4 = [v3 transactionCount];

    if (v4)
    {
      v5 = DALoggingwithCategory();
      if (os_log_type_enabled(v5, v2))
      {
        v6 = [MEMORY[0x277CF3A38] sharedTransactionMonitor];
        v7 = [v6 transactionCount];
        v21[0] = 67109120;
        v21[1] = v7;
        _os_log_impl(&dword_2424DF000, v5, v2, "The xpc transaction count is %d. Do nothing.\n", v21, 8u);
      }

      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v12, v13))
  {
    LOWORD(v21[0]) = 0;
    _os_log_impl(&dword_2424DF000, v12, v13, "USR2 received.  Dumping our state.\n", v21, 2u);
  }

  logState(1);
LABEL_20:
  v14 = +[DADMain sharedMain];
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

void logState(char a1)
{
  v2 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __logState_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v4 = a1;
  dispatch_async(v2, block);
}

void sub_2424E97A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _languageMayHaveChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 138412290;
    v7 = a3;
    _os_log_impl(&dword_2424DF000, v4, v5, "Received notificaion %@ indicating a language change.  Going to exit to pick up new locale support", buf, 0xCu);
  }

  NSLog(&cfstr_ReceivedNotifi_0.isa, a3);
  sleep(1u);
  exit(0);
}

void __logState_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = +[DADAgentManager sharedManager];
  v4 = [v3 stateString];

  v5 = +[DARefreshManager sharedManager];
  v6 = [v5 stateString];

  if (v6)
  {
    v7 = [v4 stringByAppendingString:v6];

    v4 = v7;
  }

  v8 = DALoggingwithCategory();
  v9 = v8;
  v10 = 5;
  if (!*(a1 + 32))
  {
    v10 = 6;
  }

  v11 = *(MEMORY[0x277CF3AF0] + v10);
  if (os_log_type_enabled(v8, v11))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_2424DF000, v9, v11, "%@", &v13, 0xCu);
  }

  dispatch_time(0, 1000000000);
  DACPLoggingFlush();

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2424F5744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}