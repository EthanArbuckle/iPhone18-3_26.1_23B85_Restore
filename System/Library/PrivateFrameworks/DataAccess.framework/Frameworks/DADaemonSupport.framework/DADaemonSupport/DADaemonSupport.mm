void sub_248526584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248526ED4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
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
    _os_log_impl(&dword_248524000, v6, v7, "Handling power change call with messageType %d", v11, 8u);
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

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24852EC08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t launchdActiveSyncPath()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Preferences/com.apple.dataaccess.activesync"];
  v1 = [v0 fileSystemRepresentation];

  return v1;
}

void sub_248537CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x248537BB4);
  }

  _Unwind_Resume(exception_object);
}

void handleSignal(int a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1 <= 14)
  {
    if (a1 == 1)
    {
      v11 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v11, v14))
      {
        LOWORD(v21[0]) = 0;
        _os_log_impl(&dword_248524000, v11, v14, "HUP received.  HUP is currently unused.  Ignoring.\n", v21, 2u);
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
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v12, v13))
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&dword_248524000, v12, v13, "USR2 received.  Dumping our state.\n", v21, 2u);
    }

    v11 = dataaccess_get_global_queue();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __logState_block_invoke;
    v21[3] = &__block_descriptor_33_e5_v8__0l;
    v22 = 1;
    dispatch_async(v11, v21);
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
    LOWORD(v21[0]) = 0;
    _os_log_impl(&dword_248524000, v1, v2, "Signal USR1 (30) received.  Exit if xpc transaction count is 0.\n", v21, 2u);
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
      LOWORD(v21[0]) = 0;
      _os_log_impl(&dword_248524000, v8, v9, "QUIT received.  Shutting down.\n", v21, 2u);
    }

    v10 = +[DARefreshManager sharedManager];
    [v10 setPersistAPSAfterShutdown:1];

    v11 = +[DADMain sharedMain];
    [v11 shutdownDAD];
LABEL_21:

    goto LABEL_22;
  }

  v5 = DALoggingwithCategory();
  if (os_log_type_enabled(v5, v2))
  {
    v6 = [MEMORY[0x277D037F8] sharedTransactionMonitor];
    v7 = [v6 transactionCount];
    LODWORD(v21[0]) = 67109120;
    HIDWORD(v21[0]) = v7;
    _os_log_impl(&dword_248524000, v5, v2, "The xpc transaction count is %d. Do nothing.\n", v21, 8u);
  }

LABEL_22:
  v15 = +[DADMain sharedMain];
  v16 = [v15 isDisabled];

  if (v16)
  {
    for (i = 0; i != 5; ++i)
    {
      v18 = signalSources[i];
      if (v18)
      {
        dispatch_source_cancel(v18);
        v19 = signalSources[i];
        signalSources[i] = 0;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_24854785C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t _languageMayHaveChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 138412290;
    v9 = a3;
    _os_log_impl(&dword_248524000, v4, v5, "Received notification %@ indicating a language change.  Going to exit to pick up new locale support", buf, 0xCu);
  }

  NSLog(&cfstr_ReceivedNotifi_0.isa, a3);
  result = xpc_transaction_exit_clean();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

id getStateString()
{
  v0 = dataaccess_get_global_queue();
  dispatch_assert_queue_V2(v0);

  v1 = +[DADAgentManager sharedManager];
  v2 = [v1 stateString];

  v3 = [MEMORY[0x277D037B8] sharedManager];
  v4 = [v3 stateString];

  if ([v4 length])
  {
    v5 = [v2 stringByAppendingString:v4];

    v2 = v5;
  }

  v6 = +[DARefreshManager sharedManager];
  v7 = [v6 stateString];

  if (v7)
  {
    v8 = [v2 stringByAppendingString:v7];

    v2 = v8;
  }

  v9 = +[DADAccessManager sharedManager];
  v10 = [v9 stateString];

  if (v10)
  {
    v11 = [v2 stringByAppendingString:v10];

    v2 = v11;
  }

  v12 = [MEMORY[0x277CF74E0] shared];
  v13 = [v12 get_kCalPreferredDaysToSyncKey];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"SyncWindow=%i\n", v13];
  v15 = [v2 stringByAppendingString:v14];

  return v15;
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
    _os_log_impl(&dword_248524000, v5, v7, "%@", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"DADRequestClientStatusDumpNotification" object:0];

  dispatch_time(0, 1000000000);
  DACPLoggingFlush();

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

BOOL -[DADAgentStopStartController _blockShouldStart:shouldStop:](DADAgentStopStartController *self, SEL a2, BOOL *a3, BOOL *a4)
{
  if (self->_agentsStopped)
  {
    v4 = 0;
    goto LABEL_6;
  }

  if (self->_unexecutedStopReceived || self->_stopsLessStartsReceived >= 1)
  {
    v4 = 1;
LABEL_6:
    v5 = self->_stopsLessStartsReceived == 0;
    v6 = !self->_agentsStopped || v5;
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  v6 = 0;
  v5 = 0;
  if (a4)
  {
LABEL_7:
    *a4 = v4;
  }

LABEL_8:
  if (a3)
  {
    *a3 = v5;
  }

  return v6;
}

void sub_2485517A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_24855BF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}