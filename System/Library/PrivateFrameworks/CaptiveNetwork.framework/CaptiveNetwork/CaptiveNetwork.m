void CNMonitorSetQueueAndHandler(uint64_t a1, dispatch_object_t object, void *aBlock)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3002000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (object)
  {
    dispatch_retain(object);
  }

  if (aBlock)
  {
    v6 = _Block_copy(aBlock);
  }

  else
  {
    v6 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __CNMonitorSetQueueAndHandler_block_invoke;
  block[3] = &unk_278D898C0;
  block[6] = &v14;
  block[7] = a1;
  block[8] = object;
  block[4] = v6;
  block[5] = &v10;
  dispatch_sync(*(a1 + 8), block);
  v7 = v15[5];
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = v11[3];
  if (v8)
  {
    dispatch_release(v8);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void __CNMonitorSetQueueAndHandler_block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[7] + 16);
  *(*(a1[6] + 8) + 40) = *(a1[7] + 24);
  v2 = a1[8];
  *(a1[7] + 16) = v2;
  v3 = a1[7];
  *(v3 + 24) = a1[4];
  if ((*(*(a1[5] + 8) + 24) == 0) != (v2 == 0))
  {
    *(v3 + 32) = 1;
  }

  if (*(v3 + 32))
  {
    if (*v3)
    {
      HandlerQueue = ServerConnectionGetHandlerQueue(*v3);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 0x40000000;
      v6[2] = __CNMonitorSetQueueAndHandler_block_invoke_2;
      v6[3] = &__block_descriptor_tmp;
      v6[4] = a1[7];
      v5 = v6;
LABEL_6:
      dispatch_async(HandlerQueue, v5);
      return;
    }

    if (!*(v3 + 33))
    {
      *(v3 + 33) = 1;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 0x40000000;
      v9[2] = __CNMonitorSetupConnection_block_invoke;
      v9[3] = &__block_descriptor_tmp_5;
      v9[4] = v3;
      v7[6] = v3;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 0x40000000;
      v8[2] = __CNMonitorSetupConnection_block_invoke_2;
      v8[3] = &__block_descriptor_tmp_7;
      v8[4] = v3;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 0x40000000;
      v7[2] = __CNMonitorSetupConnection_block_invoke_8;
      v7[3] = &unk_278D89950;
      v7[4] = v9;
      v7[5] = v8;
      HandlerQueue = dispatch_get_global_queue(0, 0);
      v5 = v7;
      goto LABEL_6;
    }
  }
}

void CNMonitorSyncState(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __CNMonitorSyncState_block_invoke;
  block[3] = &unk_278D898E8;
  block[5] = &v7;
  block[6] = a1;
  block[4] = &v11;
  dispatch_sync(*(a1 + 8), block);
  if (*(v8 + 24))
  {
    v2 = (*(a1 + 48))(*(v12 + 24));
    if (!ServerConnectionProcessControl(*a1, v2, 0))
    {
      logger = mysyslog_get_logger();
      v4 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v4))
      {
        *v5 = 0;
        _os_log_impl(&dword_242BE1000, logger, v4, "ServerConnectionProcessControl() failed", v5, 2u);
      }
    }

    CFRelease(v2);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

_OWORD *CNMonitorCreate(int a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x38uLL, 0x10A00401588D737uLL);
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  *(v6 + 6) = 0;
  *(v6 + 9) = a1;
  *(v6 + 1) = dispatch_queue_create("CNMonitor", 0);
  *(v6 + 5) = a2;
  *(v6 + 6) = a3;
  return v6;
}

void *__CNMonitorSyncState_block_invoke(void *result)
{
  *(*(result[4] + 8) + 24) = *(result[6] + 16) != 0;
  *(*(result[5] + 8) + 24) = *(result[6] + 32);
  v1 = result[6];
  if (*(v1 + 32))
  {
    *(v1 + 32) = 0;
  }

  return result;
}

void __CNMonitorSetupConnection_block_invoke(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  TypeID = CFArrayGetTypeID();
  if (a3)
  {
    if (CFGetTypeID(a3) == TypeID && (Count = CFArrayGetCount(a3)) != 0)
    {
      v7 = Count;
      if (Count >= 1)
      {
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
          v9 = CFDictionaryGetTypeID();
          if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v9)
          {
            (*(v4 + 40))(v4, ValueAtIndex);
          }

          else
          {
            logger = mysyslog_get_logger();
            v11 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(logger, v11))
            {
              *buf = 138412290;
              v16 = ValueAtIndex;
              _os_log_impl(&dword_242BE1000, logger, v11, "command is not a dictionary %@", buf, 0xCu);
            }
          }

          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v12 = mysyslog_get_logger();
      v13 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 0;
        _os_log_impl(&dword_242BE1000, v12, v13, "given invalid command list", buf, 2u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __CNMonitorSetupConnection_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    if (!*v4)
    {
      *v4 = a2;
      ServerConnectionResume(a2);
      v4 = *(a1 + 32);
    }

    CNMonitorSyncState(v4);
  }

  else
  {
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v6))
    {
      *v7 = 0;
      _os_log_impl(&dword_242BE1000, logger, v6, "Reconnect failed", v7, 2u);
    }
  }
}

void __CNMonitorSetupConnection_block_invoke_8(uint64_t a1)
{
  if (!ServerConnectionCreate("com.apple.networking.captivenetworksupport", "com.apple.networking.captivenetworksupport.startserver", *(*(a1 + 48) + 36), 0, *(a1 + 32), *(a1 + 40)))
  {
    logger = mysyslog_get_logger();
    v2 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v2))
    {
      *v3 = 0;
      _os_log_impl(&dword_242BE1000, logger, v2, "ServerConnectionCreate failed", v3, 2u);
    }
  }
}

uint64_t CNPluginMonitorStart(uint64_t a1, dispatch_object_t object, void *aBlock)
{
  result = 0;
  if (!a1 && object && aBlock)
  {
    if (CNPluginMonitorGet_once != -1)
    {
      CNPluginMonitorStart_cold_1();
    }

    CNMonitorSetQueueAndHandler(CNPluginMonitorGet_monitor, object, aBlock);
    return 1;
  }

  return result;
}

void CNPluginMonitorStop()
{
  if (CNPluginMonitorGet_once != -1)
  {
    CNPluginMonitorStart_cold_1();
  }

  v1 = CNPluginMonitorGet_monitor;

  CNMonitorSetQueueAndHandler(v1, 0, 0);
}

const void *CNPluginMonitorEventCopyDisplayIDs(const void *a1)
{
  TypeID = CFArrayGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      CFRetain(a1);
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

_OWORD *__CNPluginMonitorGet_block_invoke()
{
  result = CNMonitorCreate(6, CNPluginMonitorHandleCommand, CNPluginMonitorCopyControl);
  CNPluginMonitorGet_monitor = result;
  return result;
}

void CNPluginMonitorHandleCommand(uint64_t a1, CFDictionaryRef theDict)
{
  v22 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"EventType");
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || !CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    logger = mysyslog_get_logger();
    v9 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v9))
    {
      goto LABEL_11;
    }

    *buf = 138412290;
    v21 = theDict;
    v10 = "event type invalid/missing in %@";
    v11 = logger;
    v12 = v9;
    v13 = 12;
LABEL_10:
    _os_log_impl(&dword_242BE1000, v11, v12, v10, buf, v13);
    goto LABEL_11;
  }

  if (valuePtr != 1)
  {
    v15 = mysyslog_get_logger();
    v16 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_11;
    }

    *buf = 67109120;
    LODWORD(v21) = valuePtr;
    v10 = "event type %d unrecognized";
    v11 = v15;
    v12 = v16;
    v13 = 8;
    goto LABEL_10;
  }

  v6 = CFDictionaryGetValue(theDict, @"DisplayIDs");
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __CNPluginMonitorHandleCommand_block_invoke;
  v17[3] = &__block_descriptor_tmp_6;
  v18 = valuePtr;
  v17[4] = a1;
  v17[5] = v7;
  CNMonitorPerformBlock(a1, v17);
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
}

CFDictionaryRef CNPluginMonitorCopyControl(int a1)
{
  keys[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  valuePtr = v1;
  keys[0] = @"Type";
  v2 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  values[0] = v2;
  v7 = 1;
  keys[1] = @"EventType";
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &v7);
  values[1] = v3;
  v4 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(v2);
  CFRelease(v3);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void __CNPluginMonitorHandleCommand_block_invoke(uint64_t a1)
{
  Queue = CNMonitorGetQueue(*(a1 + 32));
  if (Queue)
  {
    v3 = Queue;
    dispatch_retain(Queue);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __CNPluginMonitorHandleCommand_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_5_0;
    v4 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v6[5] = v3;
    v7 = *(a1 + 48);
    v6[6] = v4;
    dispatch_async(v3, v6);
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {

      CFRelease(v5);
    }
  }
}

void __CNPluginMonitorHandleCommand_block_invoke_2(uint64_t a1)
{
  Handler = CNMonitorGetHandler(*(a1 + 32));
  if (Handler)
  {
    v3 = Handler;
    if (CNMonitorGetQueue(*(a1 + 32)) == *(a1 + 40))
    {
      (*(v3 + 16))(v3, *(a1 + 56), *(a1 + 48));
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);

  dispatch_release(v5);
}

uint64_t CNProberProvideResult(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v5))
  {
    v8 = 134218240;
    v9 = a1;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_242BE1000, logger, v5, "prober %p result %d", &v8, 0x12u);
  }

  result = (*(a1 + 16))(*(a1 + 24), a1, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

const void *CNProberCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pthread_once(&__captiveInit, CaptiveInitOnce);
  if (!a3)
  {
    return 0;
  }

  pthread_once(&__captiveInit, CaptiveInitOnce);
  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    Instance[2] = a3;
    Instance[3] = a4;
    if (!CNWebSheetProbeRequest(Instance))
    {
      CFRelease(v7);
      return 0;
    }
  }

  return v7;
}

CFRunLoopSourceRef CNProberCreateRunLoopSource(void *a1)
{
  v2.version = 0;
  memset(&v2.retain, 0, 56);
  v2.info = a1;
  v2.perform = CNProberCallback;
  return CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v2);
}

void CNProberCallback()
{
  logger = mysyslog_get_logger();
  v1 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_242BE1000, logger, v1, "Unexpected runloop source triggered", v2, 2u);
  }
}

BOOL CNScrapeCredentials(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  CaptivePort = FindCaptivePort();
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFStringMallocCString(*MEMORY[0x277CBECE8], a1, 0x1000uLL);
  v11 = CFStringMallocCString(v9, a2, 0x1000uLL);
  v12 = CFStringMallocCString(v9, a3, 0x1000uLL);
  v13 = CFStringMallocCString(v9, a4, 0x1000uLL);
  v14 = v13;
  if ((CaptivePort + 1) < 2 || (v10 ? (v15 = v11 == 0) : (v15 = 1), !v15 ? (v16 = v13 == 0) : (v16 = 1), !v16 ? (v17 = v12 == 0) : (v17 = 1), v17))
  {
    v18 = 0;
    v19 = 0;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = ParsePost() == 0;
  }

  CFAllocatorDeallocate(v9, v10);
  v19 = v18;
LABEL_15:
  if (v11)
  {
    CFAllocatorDeallocate(v9, v11);
  }

  if (v14)
  {
    CFAllocatorDeallocate(v9, v14);
  }

  if (v12)
  {
    CFAllocatorDeallocate(v9, v12);
  }

  return v19;
}

uint64_t FindCaptivePort()
{
  pthread_once(&captiveIsPresent_once, setCaptiveIsPresentOnce);
  if (sCaptiveIsPresent)
  {
    return 0;
  }

  sp = 0;
  if (bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.networking.captivenetworksupport", &sp))
  {
    return 0;
  }

  else
  {
    return sp;
  }
}

void *CFStringMallocCString(const __CFAllocator *a1, CFStringRef theString, unint64_t a3)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (MaximumSizeForEncoding >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = MaximumSizeForEncoding;
  }

  v9 = MEMORY[0x245D226F0](a1, v8, 769958923, 0);
  if (v9 && !CFStringGetCString(theString, v9, v8, 0x8000100u))
  {
    CFAllocatorDeallocate(a1, v9);
    return 0;
  }

  return v9;
}

BOOL CNDebugLaunchWebsheet(const void *a1)
{
  v11 = 0;
  CaptivePort = FindCaptivePort();
  v3 = 0;
  if (a1)
  {
    v4 = CaptivePort;
    if (CaptivePort + 1 >= 2)
    {
      Data = my_CFPropertyListCreateData(a1);
      if (Data)
      {
        v6 = Data;
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(v6);
        v9 = DebugLaunchWebsheet(v4, BytePtr, Length, &v11);
        v3 = (v9 | v11) == 0;
        CFRelease(v6);
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

BOOL CNLogoff(const __CFString *a1)
{
  CaptivePort = FindCaptivePort();
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFStringMallocCString(*MEMORY[0x277CBECE8], a1, 0x1000uLL);
  v5 = v4;
  if ((CaptivePort + 1) < 2 || v4 == 0)
  {
    v8 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v8 = Logoff() == 0;
  }

  CFAllocatorDeallocate(v3, v5);
  return v8;
}

BOOL CNForgetSSID(const __CFData *a1)
{
  CaptivePort = FindCaptivePort();
  result = 0;
  if (a1)
  {
    if ((CaptivePort + 1) >= 2)
    {
      BytePtr = CFDataGetBytePtr(a1);
      Length = CFDataGetLength(a1);
      return ForgetNetwork(CaptivePort, BytePtr, Length) == 0;
    }
  }

  return result;
}

uint64_t CNSClientAuthenticateUsingReply(int a1, int a2)
{
  pthread_once(&__captiveInit, CaptiveInitOnce);
  pthread_mutex_lock(&__captiveLock);
  v4 = &sAuthStateHead;
  do
  {
    v5 = v4;
    v4 = *v4;
    if (!v4)
    {
      pthread_mutex_unlock(&__captiveLock);
      return 0;
    }
  }

  while (*(v4 + 8) != a1);
  *v5 = *v4;
  pthread_mutex_unlock(&__captiveLock);
  (v4[1])(v4[2], a2 == 0);
  CFMachPortInvalidate(v4[3]);
  v6 = v4[3];
  if (v6)
  {
    CFRelease(v6);
    v4[3] = 0;
  }

  free(v4);
  return 0;
}

uint64_t CNAccountsUse(const __CFString *a1, const __CFString *a2, __CFRunLoop *a3, uint64_t a4, uint64_t a5)
{
  result = malloc_type_malloc(0x28uLL, 0x10A0040FFE778EBuLL);
  if (result)
  {
    v11 = result;
    pthread_once(&__captiveInit, CaptiveInitOnce);
    *&context.version = xmmword_278D899D0;
    memset(&context.retain, 0, 24);
    v12 = *MEMORY[0x277CBECE8];
    v13 = CFMachPortCreate(*MEMORY[0x277CBECE8], MachServerCallback, &context, 0);
    v11[3] = v13;
    if (!v13)
    {
      goto LABEL_22;
    }

    *(v11 + 8) = CFMachPortGetPort(v13);
    v11[1] = a4;
    v11[2] = a5;
    CaptivePort = FindCaptivePort();
    v15 = CFStringMallocCString(v12, a1, 0x400uLL);
    v16 = CFStringMallocCString(v12, a2, 0x400uLL);
    v17 = v16;
    if (v15)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18 || (CaptivePort - 1) >= 0xFFFFFFFE)
    {
      if (v15)
      {
        free(v15);
      }

      if (v17)
      {
        free(v17);
      }
    }

    else
    {
      v20 = *(v11 + 8);
      v21 = AuthenticateUsing();
      free(v15);
      free(v17);
      v22 = v11[3];
      if (v21)
      {
        if (v22)
        {
          v23 = v11[3];
LABEL_21:
          CFRelease(v23);
        }

LABEL_22:
        free(v11);
        return 0;
      }

      RunLoopSource = CFMachPortCreateRunLoopSource(v12, v22, 0);
      if (RunLoopSource)
      {
        v25 = RunLoopSource;
        pthread_once(&__captiveInit, CaptiveInitOnce);
        pthread_mutex_lock(&__captiveLock);
        *v11 = sAuthStateHead;
        sAuthStateHead = v11;
        pthread_mutex_unlock(&__captiveLock);
        CFRunLoopAddSource(a3, v25, *MEMORY[0x277CBF048]);
        CFRelease(v25);
        return 1;
      }
    }

    v23 = v11[3];
    if (v23)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t CNAuthenticateUsingTokenAccount(const __CFString *a1, const __CFData *a2, __CFRunLoop *a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  pthread_once(&__captiveInit, CaptiveInitOnce);
  v10 = 0;
  if (!a1 || !a2)
  {
    return v10;
  }

  if (!CFDataGetLength(a2))
  {
    return 0;
  }

  v11 = malloc_type_malloc(0x28uLL, 0x10A0040FFE778EBuLL);
  *&v20.version = xmmword_278D899D0;
  memset(&v20.retain, 0, 24);
  v12 = *MEMORY[0x277CBECE8];
  v13 = CFMachPortCreate(*MEMORY[0x277CBECE8], MachServerCallback, &v20, 0);
  v11[3] = v13;
  if (!v13)
  {
    v14 = 0;
LABEL_14:
    free(v11);
    v10 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  *(v11 + 8) = CFMachPortGetPort(v13);
  v11[1] = a4;
  v11[2] = a5;
  if (FindCaptivePort() - 1 > 0xFFFFFFFD)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v14 = CFStringMallocCString(v12, a1, 0x400uLL);
  CFDataGetBytePtr(a2);
  CFDataGetLength(a2);
  v15 = *(v11 + 8);
  if (AuthenticateUsingToken() | v21 || (RunLoopSource = CFMachPortCreateRunLoopSource(v12, v11[3], 0)) == 0)
  {
LABEL_12:
    v18 = v11[3];
    if (v18)
    {
      CFRelease(v18);
    }

    goto LABEL_14;
  }

  v17 = RunLoopSource;
  pthread_once(&__captiveInit, CaptiveInitOnce);
  pthread_mutex_lock(&__captiveLock);
  *v11 = sAuthStateHead;
  sAuthStateHead = v11;
  pthread_mutex_unlock(&__captiveLock);
  CFRunLoopAddSource(a3, v17, *MEMORY[0x277CBF048]);
  v10 = 1;
LABEL_15:
  if (v14)
  {
    free(v14);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v10;
}

CFPropertyListRef CNAccountsCopy()
{
  CaptivePort = FindCaptivePort();
  v2 = 0;
  if ((CaptivePort - 1) > 0xFFFFFFFD)
  {
    return 0;
  }

  memset(length, 0, sizeof(length));
  if (CopyAccountList(CaptivePort, &length[1], length, &v2) && v2)
  {
    return 0;
  }

  else
  {
    return MIGUnserializeAndVMDealloc(*&length[1], length[0]);
  }
}

BOOL CNAccountsResolve(const __CFString *a1)
{
  CaptivePort = FindCaptivePort();
  v3 = 0;
  if (a1 && (CaptivePort + 1) >= 2)
  {
    v4 = CFStringMallocCString(*MEMORY[0x277CBECE8], a1, 0x400uLL);
    if (v4)
    {
      v5 = v4;
      v3 = ResolveAccount() == 0;
      free(v5);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

const void *__CNCopyCurrentNetworkInfo(CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  v1 = *MEMORY[0x277CBECE8];
  v2 = CFStringMallocCString(*MEMORY[0x277CBECE8], theString, 0x1000uLL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = NEHelperCopyCurrentNetworkInfo();
  CFAllocatorDeallocate(v1, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = _CFXPCCreateCFObjectFromXPCObject();
  TypeID = CFDictionaryGetTypeID();
  if (!v5 || CFGetTypeID(v5) != TypeID)
  {
    logger = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v8))
    {
      *v10 = 0;
      _os_log_impl(&dword_242BE1000, logger, v8, "received unexpected data", v10, 2u);
    }
  }

  xpc_release(v4);
  return v5;
}

CFPropertyListRef __CNCopySupportedInterfaces()
{
  CaptivePort = FindCaptivePort();
  v2 = 0;
  if ((CaptivePort - 1) > 0xFFFFFFFD)
  {
    return 0;
  }

  memset(length, 0, sizeof(length));
  if (CopySupportedInterfaces(CaptivePort, &length[1], length, &v2) && v2)
  {
    return 0;
  }

  else
  {
    return MIGUnserializeAndVMDealloc(*&length[1], length[0]);
  }
}

const __CFData *CaptiveCopyWiFiLandingPageURL(void *a1)
{
  v10 = 0;
  bytes = 0;
  v8 = 0;
  CaptivePort = CaptiveCopyWiFiLandingPageURL_server;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    if (!CaptivePort)
    {
      CaptivePort = FindCaptivePort();
      CaptiveCopyWiFiLandingPageURL_server = CaptivePort;
      if (!CaptivePort)
      {
        return 0;
      }
    }

    if (!CopyLandingPageURL(CaptivePort, &bytes, &v8, a1, &v10))
    {
      break;
    }

    CaptivePort = 0;
    CaptiveCopyWiFiLandingPageURL_server = 0;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if (!bytes)
  {
    return 0;
  }

  v5 = my_CFPropertyListCreateWithBytePtrAndLength(bytes, v8);
  MEMORY[0x245D22EB0](*MEMORY[0x277D85F48], bytes, v8);
  TypeID = CFStringGetTypeID();
  if (v5 && CFGetTypeID(v5) != TypeID)
  {
    CFRelease(v5);
    return 0;
  }

  return v5;
}

BOOL CNUserInteractionIsRequired()
{
  CaptivePort = FindCaptivePort();
  v1 = 0;
  v6 = 0;
  v5 = 0;
  if ((CaptivePort - 1) <= 0xFFFFFFFD)
  {
    IsRequired = UserInteractionIsRequired(CaptivePort, &v6, &v5);
    return !(IsRequired | v6) && v5 == 1;
  }

  return v1;
}

uint64_t CNEnableWebSheetLaunch()
{
  if (CNEnableWebSheetLaunch_sc_interface)
  {
    v0 = 0;
  }

  else
  {
    v2 = __CNCopySupportedInterfaces();
    v0 = v2;
    if (!v2 || !CFArrayGetCount(v2))
    {
      logger = mysyslog_get_logger();
      v6 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(logger, v6))
      {
        goto LABEL_17;
      }

      *v12 = 0;
      v7 = "CNCopySupportedInterfaces() returned NULL";
      v8 = v12;
      goto LABEL_16;
    }

    CFArrayGetValueAtIndex(v0, 0);
    CNEnableWebSheetLaunch_sc_interface = _SCNetworkInterfaceCreateWithBSDName();
    if (!CNEnableWebSheetLaunch_sc_interface)
    {
      v3 = mysyslog_get_logger();
      v4 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v3, v4))
      {
        *buf = 0;
        _os_log_impl(&dword_242BE1000, v3, v4, "_SCNetworkInterfaceCreateWithBSDName() returned NULL", buf, 2u);
      }

      v1 = 0;
      goto LABEL_18;
    }
  }

  if (SCNetworkInterfaceSetAdvisory())
  {
    v1 = 1;
    if (!v0)
    {
      return v1;
    }

    goto LABEL_18;
  }

  logger = mysyslog_get_logger();
  v6 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v6))
  {
    v10 = 0;
    v7 = "SCNetworkInterfaceSetAdvisory failed";
    v8 = &v10;
LABEL_16:
    _os_log_impl(&dword_242BE1000, logger, v6, v7, v8, 2u);
  }

LABEL_17:
  v1 = 0;
  if (v0)
  {
LABEL_18:
    CFRelease(v0);
  }

  return v1;
}

BOOL CNSetCaptivePortalAuthenticationCredentials(const __CFString *a1, const __CFString *a2, const __CFData *a3, uint64_t a4, const __CFString *a5)
{
  CaptivePort = FindCaptivePort();
  v10 = 0;
  if (!a3 || (CaptivePort + 1) < 2)
  {
    return v10;
  }

  if (!CFDataGetLength(a3))
  {
    return 0;
  }

  if (a2 && CFStringGetLength(a2) >= 1)
  {
    v11 = CFStringMallocCString(*MEMORY[0x277CBECE8], a2, 0x400uLL);
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = &unk_242BECD7A;
    if (!a1)
    {
LABEL_11:
      v12 = &unk_242BECD7A;
      goto LABEL_12;
    }
  }

  if (CFStringGetLength(a1) < 1)
  {
    goto LABEL_11;
  }

  v12 = CFStringMallocCString(*MEMORY[0x277CBECE8], a1, 0x400uLL);
LABEL_12:
  if (a5)
  {
    if (CFStringGetLength(a5) < 1)
    {
      v13 = &unk_242BECD7A;
    }

    else
    {
      v13 = CFStringMallocCString(*MEMORY[0x277CBECE8], a5, 0x400uLL);
    }
  }

  else
  {
    v13 = &unk_242BECD7A;
  }

  BytePtr = CFDataGetBytePtr(a3);
  v10 = 0;
  if (v11 && BytePtr && v12 && v13)
  {
    CFDataGetLength(a3);
    v10 = AddAccount() == 0;
  }

  if (v11 != &unk_242BECD7A && v11)
  {
    free(v11);
  }

  if (v12 != &unk_242BECD7A && v12)
  {
    free(v12);
  }

  if (v13 != &unk_242BECD7A && v13)
  {
    free(v13);
  }

  return v10;
}

uint64_t CNPurgeCaptivePortalAuthenticationCredentials(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    if (CFStringGetLength(theString) && (CaptivePort = FindCaptivePort(), (CaptivePort - 1) <= 0xFFFFFFFD))
    {
      v3 = CaptivePort;
      v4 = CFStringMallocCString(*MEMORY[0x277CBECE8], v1, 0x400uLL);
      if (v4)
      {
        v5 = v4;
        Length = CFStringGetLength(v1);
        v1 = (PurgeAccountRecord(v3, v5, Length) == 0);
        free(v5);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t CaptiveInitOnce()
{
  v3 = *MEMORY[0x277D85DE8];
  v2.__sig = 0;
  *v2.__opaque = 0;
  __kCNProberTypeID = _CFRuntimeRegisterClass();
  pthread_mutexattr_init(&v2);
  pthread_mutex_init(&__captiveLock, &v2);
  result = pthread_mutexattr_destroy(&v2);
  sMachParams = CNSClient_server;
  dword_27ECDDBD8 = dword_28556E6C8;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t setCaptiveIsPresentOnce()
{
  memset(&v1, 0, sizeof(v1));
  result = stat("/System/Library/SystemConfiguration/CaptiveNetworkSupport.bundle", &v1);
  if (result)
  {
    sCaptiveIsPresent = 1;
  }

  return result;
}

void MachServerCallback(uint64_t a1, mach_msg_header_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x245D226F0](*MEMORY[0x277CBECE8], *(a4 + 8), 3502231575, 0);
  (*a4)(a2, v6);
  if ((v6->msgh_bits & 0x80000000) == 0)
  {
    msgh_remote_port = v6[1].msgh_remote_port;
    if (msgh_remote_port == -305)
    {
      goto LABEL_11;
    }

    if (msgh_remote_port)
    {
      a2->msgh_remote_port = 0;
      mach_msg_destroy(a2);
    }
  }

  if (v6->msgh_remote_port)
  {
    if ((v6->msgh_bits & 0x1F) == 0x12)
    {
      v8 = 17;
    }

    else
    {
      v8 = 1;
    }

    if ((mach_msg(v6, v8, v6->msgh_size, 0, 0, 0, 0) - 268435459) > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v6->msgh_bits & 0x80000000) != 0)
  {
LABEL_10:
    mach_msg_destroy(v6);
  }

LABEL_11:

  CFAllocatorDeallocate(0, v6);
}

CFTypeRef MIGCFPropertyListCreateBinaryData(CFAllocatorRef bufferAllocator, const void *a2)
{
  v3 = CFWriteStreamCreateWithAllocatedBuffers(bufferAllocator, bufferAllocator);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFWriteStreamOpen(v3))
  {
    CFPropertyListWrite(a2, v4, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    CFWriteStreamClose(v4);
    v5 = CFWriteStreamCopyProperty(v4, *MEMORY[0x277CBF068]);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v4);
  return v5;
}

CFPropertyListRef MIGUnserializeAndVMDealloc(UInt8 *bytes, CFIndex length)
{
  v2 = 0;
  if (bytes && length)
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = length;
    v6 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytes, length, *MEMORY[0x277CBED00]);
    if (v6)
    {
      v7 = v6;
      v2 = CFPropertyListCreateWithData(v4, v6, 0, 0, 0);
      CFRelease(v7);
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x245D22EB0](*MEMORY[0x277D85F48], bytes, v5);
  }

  return v2;
}

const __CFData *MIGSerialize(const void *a1, vm_offset_t *a2, mach_msg_type_number_t *a3)
{
  result = MIGCFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a1);
  if (result)
  {
    v6 = result;
    dataCnt = 0;
    *a3 = CFDataGetLength(result);
    v7 = *MEMORY[0x277D85F48];
    BytePtr = CFDataGetBytePtr(v6);
    v9 = vm_read(v7, BytePtr, *a3, a2, &dataCnt);
    CFRelease(v6);
    result = (v9 == 0);
    if (v9)
    {
      *a2 = 0;
    }

    *a3 = dataCnt;
  }

  return result;
}

os_log_t mysyslog_init_logger(os_log_t result)
{
  if (result <= 3 && !S_captive_logger)
  {
    result = os_log_create("com.apple.captive", S_captive_os_log_categories[result]);
    S_captive_logger = result;
  }

  return result;
}

os_log_t mysyslog_get_logger()
{
  result = S_captive_logger;
  if (!S_captive_logger)
  {
    result = os_log_create("com.apple.captive", "Framework");
    S_captive_logger = result;
  }

  return result;
}

const __CFData *my_CFPropertyListCreateVMData(CFPropertyListRef propertyList, _DWORD *a2)
{
  address = 0;
  *a2 = 0;
  result = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (result)
  {
    v4 = result;
    Length = CFDataGetLength(result);
    if (!vm_allocate(*MEMORY[0x277D85F48], &address, Length, 1))
    {
      v6 = address;
      BytePtr = CFDataGetBytePtr(v4);
      memmove(v6, BytePtr, Length);
      *a2 = Length;
    }

    CFRelease(v4);
    return address;
  }

  return result;
}

const __CFData *my_CFPropertyListCreateWithBytePtrAndLength(UInt8 *bytes, int a2)
{
  result = CFDataCreateWithBytesNoCopy(0, bytes, a2, *MEMORY[0x277CBED00]);
  if (result)
  {
    v3 = result;
    v4 = CFPropertyListCreateWithData(0, result, 0, 0, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t my_CFEqual(const void *a1, const void *a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  if (a2)
  {
    return CFEqual(a1, a2);
  }

  return 0;
}

CFStringRef my_CFUUIDStringCreate(const __CFAllocator *a1)
{
  v2 = CFUUIDCreate(a1);
  v3 = CFUUIDCreateString(a1, v2);
  CFRelease(v2);
  return v3;
}

const __CFArray *my_CFArrayContainsStringsOnly(const __CFArray *result)
{
  context = 1;
  if (result)
  {
    v1 = result;
    v3.length = CFArrayGetCount(result);
    v3.location = 0;
    CFArrayApplyFunction(v1, v3, CheckIsString, &context);
    return context;
  }

  return result;
}

CFTypeID CheckIsString(const void *a1, _BYTE *a2)
{
  result = CFStringGetTypeID();
  if (!a1 || (v5 = result, result = CFGetTypeID(a1), result != v5))
  {
    *a2 = 0;
  }

  return result;
}

uint64_t my_CFArrayContainsAnyArrayValues(CFArrayRef theArray, const __CFArray *a2)
{
  result = 0;
  if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    v6 = CFArrayGetCount(a2);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        v10.location = 0;
        v10.length = v7;
        if (CFArrayContainsValue(a2, v10, ValueAtIndex))
        {
          break;
        }

        if (Count == ++v8)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

void my_FieldSetRetainedCFType(const void **a1, CFTypeRef cf)
{
  v4 = *a1;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = cf;
}

uint64_t my_CFDictionaryGetBooleanValue(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return a3;
  }

  return CFBooleanGetValue(Value);
}

uint64_t my_CFArrayPointerAddValue(CFArrayRef *a1, const void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v7.length = CFArrayGetCount(*a1);
    v7.location = 0;
    if (CFArrayContainsValue(v3, v7, a2))
    {
      return 0;
    }

    Mutable = v3;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *a1 = Mutable;
  }

  CFArrayAppendValue(Mutable, a2);
  return 1;
}

CFIndex my_CFArrayFindValue(const __CFArray *a1, const void *a2)
{
  if (!a1)
  {
    return -1;
  }

  v4.length = CFArrayGetCount(a1);
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(a1, v4, a2);
}

uint64_t my_CFArrayFindDictWithKeyAndValue(const __CFArray *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
        Value = CFDictionaryGetValue(ValueAtIndex, a2);
        v11 = a3 == 0;
        if (!Value)
        {
          goto LABEL_7;
        }

        if (a3)
        {
          break;
        }

LABEL_8:
        if (v7 == ++v8)
        {
          return -1;
        }
      }

      v11 = CFEqual(Value, a3);
LABEL_7:
      if (v11)
      {
        return v8;
      }

      goto LABEL_8;
    }
  }

  return -1;
}

CFStringRef URLStringCopyHostName(CFStringRef URLString)
{
  if (!URLString)
  {
    return 0;
  }

  v1 = CFURLCreateWithString(0, URLString, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFURLCopyHostName(v1);
  CFRelease(v2);
  return v3;
}

uint64_t CNNetworkCreate(const void *a1, const void *a2)
{
  if (__CNNetworkRegisterClass_once != -1)
  {
    CNNetworkCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  my_FieldSetRetainedCFType((Instance + 32), a2);
  if (a1)
  {
    *(Instance + 16) = CFRetain(a1);
  }

  return Instance;
}

CFMutableDictionaryRef CNNetworkCopySerialization(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  if (!v3 || !CFDictionaryGetCount(v3))
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 24));
  v6 = MutableCopy;
  if (a2)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      my_CFDictionaryMergeDictionary(MutableCopy, v7);
    }
  }

  return v6;
}

CFDictionaryRef CNNetworkCopySerializationWithoutAnnotations(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return CFDictionaryCreateCopy(0, v1);
  }

  else
  {
    return 0;
  }
}

__CFArray *CNNetworkListCopySerialization(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v6 = CNNetworkCopySerialization(ValueAtIndex, 1);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(Mutable, v6);
        CFRelease(v7);
      }
    }
  }

  return Mutable;
}

CFArrayRef CNNetworkListCreate(const void *a1, const void *a2)
{
  TypeID = CFArrayGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v9 = CNNetworkCreate(ValueAtIndex, a2);
      if (v9)
      {
        v10 = v9;
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v10);
      }
    }
  }

  if (CFArrayGetCount(Mutable))
  {
    Copy = CFArrayCreateCopy(0, Mutable);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(Mutable);
  return Copy;
}

uint64_t CNNetworkGetTypeID()
{
  if (__CNNetworkRegisterClass_once != -1)
  {
    CNNetworkCreate_cold_1();
  }

  return __kCNNetworkTypeID;
}

void CNNetworkSetCaptive(uint64_t a1, int a2)
{
  v2 = MEMORY[0x277CBED28];
  if (!a2)
  {
    v2 = MEMORY[0x277CBED10];
  }

  CNNetworkSetProperty(a1, @"IsCaptive", *v2);
}

void CNNetworkSetProperty(uint64_t a1, void *key, void *value)
{
  Mutable = *(a1 + 24);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 24) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
}

void CNNetworkSetConfidence(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CNNetworkSetProperty(a1, @"Confidence", v3);
  CFRelease(v3);
}

const __CFDictionary *CNNetworkGetPluginBundleID(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"PluginBundleID");
    TypeID = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        return Value;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *CNNetworkGetSSIDString(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"SSIDString");
    TypeID = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        return Value;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *CNNetworkGetSSID(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"SSID");
    TypeID = CFDataGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        return Value;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *CNNetworkGetBSSID(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"BSSID");
    TypeID = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        return Value;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CNNetworkIsProtected(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v1, @"IsProtected");
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  return CFBooleanGetValue(Value);
}

double CNNetworkGetSignalStrength(uint64_t a1)
{
  valuePtr = 0.0;
  v1 = *(a1 + 16);
  v2 = 0.0;
  if (v1)
  {
    Value = CFDictionaryGetValue(v1, @"SignalStrength");
    TypeID = CFNumberGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
        return valuePtr;
      }
    }
  }

  return v2;
}

const __CFBoolean *CNNetworkWasAutoJoined(uint64_t a1)
{
  result = _CNNetworkWasAutoJoined(a1);
  if (result)
  {

    return CFBooleanGetValue(result);
  }

  return result;
}

const __CFDictionary *_CNNetworkWasAutoJoined(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"WasAutoJoined");
    TypeID = CFBooleanGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        return Value;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CNNetworkWasJustJoined(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v1, @"WasJustJoined");
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  return CFBooleanGetValue(Value);
}

void CNNetworkSetPassword(uint64_t a1, void *a2)
{
  TypeID = CFStringGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID && CNNetworkIsProtected(a1) == 1)
  {

    CNNetworkSetProperty(a1, @"Password", a2);
  }
}

const __CFDictionary *CNNetworkGetPassword(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"Password");
    TypeID = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        return Value;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *CNNetworkCopyPluginNames(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v1, @"PluginNames");
  TypeID = CFArrayGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      CFRetain(Value);
      return Value;
    }

    return 0;
  }

  return Value;
}

const __CFDictionary *CNNetworkIsChosenPlugin(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"IsChosenPlugin");
    TypeID = CFBooleanGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      return (CFBooleanGetValue(Value) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *CNNetworkCreateWithSSIDAndBSSID(void *a1, void *a2)
{
  keys[2] = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (v5 = CFStringGetTypeID(), a2) && CFGetTypeID(a2) == v5)
  {
    if (__CNNetworkRegisterClass_once != -1)
    {
      CNNetworkCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    Instance[3] = 0;
    Instance[4] = 0;
    Instance[2] = 0;
    keys[0] = @"SSIDString";
    keys[1] = @"BSSID";
    values[0] = a1;
    values[1] = a2;
    Instance[2] = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  else
  {
    Instance = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return Instance;
}

void __CNNetworkDeallocate(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }
}

__CFString *__CNNetworkCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = _CNNetworkWasAutoJoined(a1);
  if (v3)
  {
    if (CFBooleanGetValue(v3))
    {
      v4 = "[Auto-Join] ";
    }

    else
    {
      v4 = "[User-Join] ";
    }
  }

  else
  {
    v4 = &unk_242BECD7A;
  }

  Mutable = CFStringCreateMutable(v2, 0);
  SSIDString = CNNetworkGetSSIDString(a1);
  BSSID = CNNetworkGetBSSID(a1);
  if (CNNetworkIsProtected(a1))
  {
    v8 = "protected";
  }

  else
  {
    v8 = "open";
  }

  SignalStrength = CNNetworkGetSignalStrength(a1);
  CFStringAppendFormat(Mutable, 0, @"<CNNetwork SSID %@ BSSID %@ [%s] [signal %g] %s%p>", SSIDString, BSSID, v8, *&SignalStrength, v4, a1);
  return Mutable;
}

void _CNPluginProvideResponse(const __CFDictionary *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(G_plugin + 24))
  {
LABEL_10:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  Value = CFDictionaryGetValue(a1, @"UniqueID");
  v3 = *(G_plugin + 24);
  if (!v3 || (v14.length = CFArrayGetCount(v3), v14.location = 0, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(G_plugin + 24), v14, Value), FirstIndexOfValue == -1))
  {
    logger = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v8))
    {
      v10 = 138412290;
      v11 = a1;
      _os_log_impl(&dword_242BE1000, logger, v8, "Ignoring stale command response %@", &v10, 0xCu);
    }

    goto LABEL_10;
  }

  CFArrayRemoveValueAtIndex(*(G_plugin + 24), FirstIndexOfValue);
  v5 = *G_plugin;
  v6 = *MEMORY[0x277D85DE8];

  ServerConnectionProvideResponse(v5, a1);
}

BOOL CNPluginRegister(const void *a1, NSObject *a2, const void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  values = 0;
  if (!a3)
  {
    goto LABEL_19;
  }

  if (!a1)
  {
    Value = 0;
    goto LABEL_10;
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(a1) != TypeID)
  {
    logger = mysyslog_get_logger();
    v16 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(logger, v16);
    if (result)
    {
      *buf = 0;
      v12 = "CNPluginRegister: 'options' is not a dictionary";
      v17 = logger;
      v18 = v16;
      v19 = 2;
LABEL_18:
      _os_log_impl(&dword_242BE1000, v17, v18, v12, buf, v19);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(a1, @"DisplayName");
  values = Value;
  if (!Value || (v8 = CFStringGetTypeID(), CFGetTypeID(Value) == v8))
  {
    if (CFDictionaryGetCount(a1) >= 2)
    {
      v9 = mysyslog_get_logger();
      v10 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(v9, v10);
      if (result)
      {
        *buf = 138412290;
        v25 = @"DisplayName";
        v12 = "CNPluginRegister: 'options' contains properties other than %@";
LABEL_17:
        v17 = v9;
        v18 = v10;
        v19 = 12;
        goto LABEL_18;
      }

      goto LABEL_20;
    }

LABEL_10:
    if (G_plugin)
    {
LABEL_19:
      result = 0;
      goto LABEL_20;
    }

    v13 = malloc_type_malloc(0x20uLL, 0xA00400A0658E3uLL);
    G_plugin = v13;
    *v13 = 0u;
    v13[1] = 0u;
    *(v13 + 1) = a2;
    *(G_plugin + 16) = _Block_copy(a3);
    if (Value)
    {
      v14 = CFDictionaryCreate(0, &kCNPluginOptionDisplayName, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    else
    {
      v14 = 0;
    }

    v21 = ServerConnectionCreate("com.apple.networking.captivenetworksupport", "com.apple.networking.captivenetworksupport.startserver", 3, v14, &__block_literal_global_1, 0);
    v22 = G_plugin;
    *G_plugin = v21;
    if (v14)
    {
      CFRelease(v14);
      v22 = G_plugin;
      v21 = *G_plugin;
    }

    if (v21)
    {
      ServerConnectionResume(v21);
      dispatch_retain(a2);
      result = 1;
    }

    else
    {
      _Block_release(*(v22 + 16));
      free(G_plugin);
      result = 0;
      G_plugin = 0;
    }

    goto LABEL_20;
  }

  v9 = mysyslog_get_logger();
  v10 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(v9, v10);
  if (result)
  {
    *buf = 138412290;
    v25 = @"DisplayName";
    v12 = "CNPluginRegister: %@ property must be a string";
    goto LABEL_17;
  }

LABEL_20:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void __CNPluginRegister_block_invoke(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  TypeID = CFArrayGetTypeID();
  if (a3 && CFGetTypeID(a3) == TypeID && (v5 = CFArrayGetCount(a3)) != 0)
  {
    v6 = v5;
    v7 = *(G_plugin + 24);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
    }

    else
    {
      Count = 0;
    }

    range_8 = CFArrayCreateMutable(0, v6, MEMORY[0x277CBF128]);
    if (v6 >= 1)
    {
      for (i = 0; v6 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        v15 = CFDictionaryGetTypeID();
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v15)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"UniqueID");
          v17 = CFStringGetTypeID();
          if (Value && CFGetTypeID(Value) == v17)
          {
            if (!Count || (v41.location = 0, v41.length = Count, !CFArrayContainsValue(*(G_plugin + 24), v41, Value)))
            {
              v18 = CNPluginCommandCreate(ValueAtIndex);
              if (!v18)
              {
                logger = mysyslog_get_logger();
                v28 = _SC_syslog_os_log_mapping();
                if (!os_log_type_enabled(logger, v28))
                {
                  continue;
                }

                *v38 = 138412290;
                v39 = ValueAtIndex;
                v22 = logger;
                v23 = v28;
                v24 = "CNPluginCommandCreate(%@) failed";
                goto LABEL_27;
              }

              v19 = *(G_plugin + 8);
              *buf = MEMORY[0x277D85DD0];
              v34 = 0x40000000;
              v35 = __CNPluginHandleCommandInfo_block_invoke;
              v36 = &__block_descriptor_tmp_10;
              v37 = v18;
              dispatch_async(v19, buf);
            }

            CFArrayAppendValue(range_8, Value);
          }

          else
          {
            v25 = mysyslog_get_logger();
            v26 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v25, v26))
            {
              *v38 = 138412290;
              v39 = ValueAtIndex;
              v22 = v25;
              v23 = v26;
              v24 = "command contains no uniqueID %@";
              goto LABEL_27;
            }
          }
        }

        else
        {
          v20 = mysyslog_get_logger();
          v21 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v20, v21))
          {
            *v38 = 138412290;
            v39 = ValueAtIndex;
            v22 = v20;
            v23 = v21;
            v24 = "command is not a dictionary %@";
LABEL_27:
            _os_log_impl(&dword_242BE1000, v22, v23, v24, v38, 0xCu);
          }
        }
      }
    }

    v29 = G_plugin;
    v30 = *(G_plugin + 24);
    if (v30)
    {
      CFRelease(v30);
      *(v29 + 24) = 0;
      v29 = G_plugin;
    }

    *(v29 + 24) = range_8;
  }

  else
  {
    v9 = G_plugin;
    v10 = *(G_plugin + 24);
    if (v10)
    {
      CFRelease(v10);
      *(v9 + 24) = 0;
    }

    if (a3)
    {
      v11 = mysyslog_get_logger();
      v12 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 0;
        _os_log_impl(&dword_242BE1000, v11, v12, "given invalid command list", buf, 2u);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t CNPluginLogoffNetwork(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (!G_plugin)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  InterfaceName = CNNetworkGetInterfaceName(a1);
  if (!InterfaceName)
  {
    goto LABEL_9;
  }

  v3 = InterfaceName;
  v22 = 0;
  v20 = 0;
  v4 = CNNetworkCopySerializationWithoutAnnotations(a1);
  valuePtr = 1;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  keys[0] = @"Type";
  keys[1] = @"InterfaceName";
  values[0] = v5;
  values[1] = v3;
  if (v4)
  {
    v22 = @"Network";
    v20 = v4;
    v6 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFRelease(v4);
  }

  else
  {
    v6 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  CFRelease(v5);
  if (!v6)
  {
LABEL_9:
    logger = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v10))
    {
      LOWORD(keys[0]) = 0;
      _os_log_impl(&dword_242BE1000, logger, v10, "Failed to create logoff control", keys, 2u);
    }

    goto LABEL_11;
  }

  HandlerQueue = ServerConnectionGetHandlerQueue(*G_plugin);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __CNPluginLogoffNetwork_block_invoke;
  v13[3] = &unk_278D89A68;
  v13[4] = &v14;
  v13[5] = v6;
  dispatch_sync(HandlerQueue, v13);
  CFRelease(v6);
  v8 = *(v15 + 24);
LABEL_12:
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL __CNPluginLogoffNetwork_block_invoke(uint64_t a1)
{
  result = ServerConnectionProcessControl(*G_plugin, *(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CNPluginCopySupportedInterfaces()
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  context = 0;
  if (G_plugin)
  {
    valuePtr = 2;
    values = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    keys = @"Type";
    v0 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFRelease(values);
    HandlerQueue = ServerConnectionGetHandlerQueue(*G_plugin);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __CNPluginCopySupportedInterfaces_block_invoke;
    block[3] = &unk_278D89A90;
    block[5] = &v15;
    block[6] = v0;
    block[4] = &v11;
    dispatch_sync(HandlerQueue, block);
    CFRelease(v0);
    if (*(v12 + 24))
    {
      v2 = v16[3];
      TypeID = CFArrayGetTypeID();
      if (v2)
      {
        if (CFGetTypeID(v2) == TypeID)
        {
          v4 = v16[3];
          v22.length = CFArrayGetCount(v4);
          v22.location = 0;
          CFArrayApplyFunction(v4, v22, appendCommandAsNetwork, &context);
        }
      }
    }

    v5 = v16;
    v6 = v16[3];
    if (v6)
    {
      CFRelease(v6);
      v5[3] = 0;
    }

    v7 = context;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v7;
}

BOOL __CNPluginCopySupportedInterfaces_block_invoke(uint64_t a1)
{
  result = ServerConnectionProcessControl(*G_plugin, *(a1 + 48), (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void appendCommandAsNetwork(const __CFDictionary *a1, __CFArray **a2)
{
  Value = CFDictionaryGetValue(a1, @"InterfaceName");
  v5 = CFDictionaryGetValue(a1, @"Network");
  v6 = CNNetworkCreate(v5, Value);
  if (v6)
  {
    v7 = v6;
    Mutable = *a2;
    if (!*a2)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      *a2 = Mutable;
    }

    CFArrayAppendValue(Mutable, v7);

    CFRelease(v7);
  }
}

void __CNPluginHandleCommandInfo_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  Value = CFDictionaryGetValue(*(v2 + 16), @"UniqueID");
  TypeID = CFStringGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (v2 + 24));
      if (v5)
      {
        v6 = v5;
        *keys = xmmword_278D89AD0;
        values[0] = Value;
        values[1] = v5;
        v7 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v7)
        {
          v8 = v7;
          HandlerQueue = ServerConnectionGetHandlerQueue(*G_plugin);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __SendEvaluateAck_block_invoke;
          block[3] = &__block_descriptor_tmp_14;
          block[4] = v8;
          dispatch_sync(HandlerQueue, block);
          logger = mysyslog_get_logger();
          v11 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(logger, v11))
          {
            String = CNPCommandTypeGetString(*(v2 + 24));
            *buf = 136315138;
            v17 = String;
            _os_log_impl(&dword_242BE1000, logger, v11, "Delivery of %s command acknowledged", buf, 0xCu);
          }

          CFRelease(v6);
        }

        else
        {
          v8 = v6;
        }

        CFRelease(v8);
      }
    }
  }

  v13 = *(a1 + 32);
  (*(*(G_plugin + 16) + 16))();
  CFRelease(*(a1 + 32));
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t CNPluginCommandGetTypeID()
{
  if (__CNPluginCommandRegisterClass_once != -1)
  {
    CNPluginCommandGetTypeID_cold_1();
  }

  return __kCNPluginCommandTypeID;
}

const void *CNPluginCommandBindReadStream(uint64_t a1, __CFReadStream *a2)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"InterfaceName");
  if (result)
  {
    v4 = *MEMORY[0x277CBADA8];

    return CFReadStreamSetProperty(a2, v4, result);
  }

  return result;
}

uint64_t CNPluginCommandCopyCurrentNetwork(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"Network");
  v3 = CFDictionaryGetValue(*(a1 + 16), @"InterfaceName");

  return CNNetworkCreate(Value, v3);
}

CFArrayRef CNPluginCommandCopyNetworkList(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"NetworkList");
  v3 = CFDictionaryGetValue(*(a1 + 16), @"InterfaceName");

  return CNNetworkListCreate(Value, v3);
}

void *CNPluginCommandCreate(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Type");
  TypeID = CFNumberGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) != TypeID)
    {
      return 0;
    }

    valuePtr = 0;
    if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
    {
      return 0;
    }

    Value = CFDictionaryGetValue(a1, @"UniqueID");
    v4 = CFStringGetTypeID();
    if (!Value)
    {
      return Value;
    }

    if (CFGetTypeID(Value) != v4)
    {
      return 0;
    }

    if (__CNPluginCommandRegisterClass_once != -1)
    {
      CNPluginCommandCreate_cold_1();
    }

    Value = _CFRuntimeCreateInstance();
    Value[2] = 0;
    Value[3] = 0;
    *(Value + 6) = valuePtr;
    Value[2] = CFRetain(a1);
  }

  return Value;
}

void __CNPluginCommandDeallocate(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

__CFString *__CNPluginCommandCopyDebugDesc(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  String = CNPCommandTypeGetString(a1[6]);
  CFStringAppendFormat(Mutable, 0, @"<CNPluginCommand %s %p>", String, a1);
  return Mutable;
}

uint64_t CNPluginResponseGetTypeID()
{
  if (__CNPluginResponseRegisterClass_once != -1)
  {
    CNPluginResponseGetTypeID_cold_1();
  }

  return __kCNPluginResponseTypeID;
}

uint64_t CNPluginResponseCreate(uint64_t a1, int a2)
{
  if (__CNPluginResponseRegisterClass_once != -1)
  {
    CNPluginResponseGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 16) = *(a1 + 24);
  *(Instance + 20) = a2;
  Value = CFDictionaryGetValue(*(a1 + 16), @"UniqueID");
  *(Instance + 24) = CFRetain(Value);
  return Instance;
}

void CNPluginResponseDeliver(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = 0;
  v17 = 0;
  keys[0] = @"UniqueID";
  v2 = a1[3];
  v16 = 0;
  values[0] = v2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 20);
  keys[1] = @"Result";
  values[1] = v3;
  v4 = a1[4];
  if (v4)
  {
    v5 = CNNetworkCopySerialization(v4, 0);
    v6 = v5;
    if (v5)
    {
      v19 = @"Network";
      v16 = v5;
      v7 = 3;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 2;
LABEL_6:
  v8 = a1[5];
  if (v8)
  {
    v9 = CNNetworkListCopySerialization(v8);
    v10 = v9;
    if (v9)
    {
      keys[v7] = @"NetworkList";
      values[v7++] = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = CFDictionaryCreate(0, keys, values, v7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  Queue = _CNPluginGetQueue();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 0x40000000;
  v14[2] = __CNPluginResponseDeliver_block_invoke;
  v14[3] = &__block_descriptor_tmp_4;
  v14[4] = v11;
  dispatch_sync(Queue, v14);
  v13 = *MEMORY[0x277D85DE8];
}

void __CNPluginResponseDeliver_block_invoke(uint64_t a1)
{
  _CNPluginProvideResponse(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void CNPluginResponseSetNetworkList(uint64_t a1, CFTypeRef cf)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) == 1)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 40) = cf;
  }

  else
  {
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v6))
    {
      String = CNPCommandTypeGetString(*(a1 + 16));
      v9 = 136315138;
      v10 = String;
      _os_log_impl(&dword_242BE1000, logger, v6, "CNPluginResponseSetNetworkList() invalid for %s", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void CNPluginResponseSetNetwork(uint64_t a1, CFTypeRef cf)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) == 2)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 32) = cf;
  }

  else
  {
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v6))
    {
      String = CNPCommandTypeGetString(*(a1 + 16));
      v9 = 136315138;
      v10 = String;
      _os_log_impl(&dword_242BE1000, logger, v6, "CNPluginResponseSetNetwork() invalid for %s", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __CNPluginResponseDeallocate(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }
}

__CFString *__CNPluginResponseCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  String = CNPCommandTypeGetString(*(a1 + 16));
  CFStringAppendFormat(Mutable, 0, @"<CNPluginResponse %s %p>", String, a1);
  if (*(a1 + 32) || *(a1 + 40))
  {
    CFStringAppend(Mutable, @"{");
    if (*(a1 + 32))
    {
      CFStringAppendFormat(Mutable, 0, @"network = %@", *(a1 + 32));
    }

    if (*(a1 + 40))
    {
      CFStringAppendFormat(Mutable, 0, @"networks = %@", *(a1 + 40));
    }

    CFStringAppend(Mutable, @"}");
  }

  return Mutable;
}

void CNWebSheetDone(int a1, void *a2)
{
  if (G_websheet && (v4 = *(G_websheet + 8)) != 0)
  {
    Response = createResponse(v4, a1, 1, a2);
    HandlerQueue = ServerConnectionGetHandlerQueue(*G_websheet);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __CNWebSheetDone_block_invoke;
    block[3] = &__block_descriptor_tmp_5;
    block[4] = Response;
    dispatch_sync(HandlerQueue, block);
    CFRelease(Response);
  }

  else
  {
    logger = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_242BE1000, logger, v8, "can't provide result", buf, 2u);
    }
  }
}

CFDictionaryRef createResponse(void *a1, int a2, int a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  valuePtr = a2;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  keys = @"UniqueID";
  values = a1;
  v13 = 0;
  v5 = MEMORY[0x277CBECE8];
  if (a3)
  {
    v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    v16 = @"Result";
    v13 = v6;
    v7 = 2;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = 1;
  if (a4)
  {
LABEL_3:
    *(&keys + v7) = @"ResultOptions";
    *(&values + v7++) = a4;
  }

LABEL_4:
  v8 = CFDictionaryCreate(*v5, &keys, &values, v7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v6)
  {
    CFRelease(v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t CNWebSheetProbeRequest(const void *a1)
{
  if (!G_websheet)
  {
    return 0;
  }

  CFRetain(a1);
  HandlerQueue = ServerConnectionGetHandlerQueue(*G_websheet);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __CNWebSheetProbeRequest_block_invoke;
  block[3] = &__block_descriptor_tmp_11_0;
  block[4] = a1;
  dispatch_async(HandlerQueue, block);
  return 1;
}

void __CNWebSheetProbeRequest_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  theDict = 0;
  valuePtr = 1;
  *keys = @"Type";
  values = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  v3 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(values);
  v4 = ServerConnectionProcessControl(*G_websheet, v3, &theDict);
  CFRelease(v3);
  if (!v4)
  {
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v6))
    {
      *keys = 0;
      _os_log_impl(&dword_242BE1000, logger, v6, "ServerConnectionProcessControl failed", keys, 2u);
    }
  }

  v7 = theDict;
  TypeID = CFDictionaryGetTypeID();
  if (v7)
  {
    if (CFGetTypeID(v7) == TypeID)
    {
      Value = CFDictionaryGetValue(theDict, @"ProbeID");
      v10 = CFStringGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v10)
        {
          Mutable = *(G_websheet + 48);
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            *(G_websheet + 48) = Mutable;
          }

          CFDictionarySetValue(Mutable, Value, v2);
          v12 = mysyslog_get_logger();
          v13 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v12, v13))
          {
            *keys = 138412546;
            *&keys[4] = Value;
            *&keys[12] = 2048;
            *&keys[14] = v2;
            _os_log_impl(&dword_242BE1000, v12, v13, "%@ prober %p", keys, 0x16u);
          }

          v4 = 1;
        }
      }
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (!v4)
  {
    v14 = mysyslog_get_logger();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v14, v15))
    {
      *keys = 0;
      _os_log_impl(&dword_242BE1000, v14, v15, "Prober failed", keys, 2u);
    }

    CFRetain(v2);
    v16 = *(G_websheet + 40);
    v17 = *MEMORY[0x277CBF048];
    *keys = MEMORY[0x277D85DD0];
    *&keys[8] = 0x40000000;
    *&keys[16] = __startProbe_block_invoke;
    v23 = &__block_descriptor_tmp_32;
    v24 = v2;
    CFRunLoopPerformBlock(v16, v17, keys);
    CFRunLoopWakeUp(*(G_websheet + 40));
  }

  CFRelease(*(a1 + 32));
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t CNWebSheetRegister(uint64_t a1, uint64_t a2)
{
  if (G_websheet)
  {
    return 0;
  }

  v5 = malloc_type_malloc(0x38uLL, 0x10E00408C3A25E5uLL);
  G_websheet = v5;
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  *(v5 + 6) = 0;
  v6 = ServerConnectionCreate("com.apple.networking.captivenetworksupport", "com.apple.networking.captivenetworksupport.startserver", 1, 0, &__block_literal_global_4, &__block_literal_global_17);
  if (v6)
  {
    v7 = v6;
    v8 = G_websheet;
    *(G_websheet + 16) = a1;
    *(v8 + 24) = a2;
    Current = CFRunLoopGetCurrent();
    v10 = G_websheet;
    *(G_websheet + 40) = Current;
    *v10 = v7;
    ServerConnectionResume(v7);
    return 1;
  }

  else
  {
    logger = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v12))
    {
      *v13 = 0;
      _os_log_impl(&dword_242BE1000, logger, v12, "ServerConnectionCreate failed", v13, 2u);
    }

    free(G_websheet);
    result = 0;
    G_websheet = 0;
  }

  return result;
}

void __CNWebSheetRegister_block_invoke(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  TypeID = CFArrayGetTypeID();
  if (a3 && CFGetTypeID(a3) == TypeID && (Count = CFArrayGetCount(a3)) != 0)
  {
    v6 = Count;
    if (Count >= 1)
    {
      v7 = 0;
      v53 = *MEMORY[0x277CBF048];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
        v9 = CFDictionaryGetTypeID();
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v9)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"UniqueID");
          v11 = CFStringGetTypeID();
          if (Value && CFGetTypeID(Value) == v11)
          {
            v12 = CFDictionaryGetValue(ValueAtIndex, @"Type");
            v13 = CFNumberGetTypeID();
            if (v12 && CFGetTypeID(v12) == v13)
            {
              valuePtr = 0;
              CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
              logger = mysyslog_get_logger();
              v15 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(logger, v15))
              {
                v16 = "<unknown>";
                if (valuePtr <= 3)
                {
                  v16 = WebSheetCommandTypeGetString_strings[valuePtr];
                }

                LODWORD(buf) = 136315138;
                *(&buf + 4) = v16;
                _os_log_impl(&dword_242BE1000, logger, v15, "Command %s", &buf, 0xCu);
              }

              if (valuePtr != 1)
              {
                if (valuePtr == 2)
                {
                  v55 = 7;
                  v35 = *(G_websheet + 48);
                  if (v35)
                  {
                    v36 = CFDictionaryGetValue(v35, Value);
                    if (v36)
                    {
                      v37 = v36;
                      v38 = CFDictionaryGetValue(ValueAtIndex, @"ProbeResult");
                      v39 = CFNumberGetTypeID();
                      if (v38 && CFGetTypeID(v38) == v39)
                      {
                        CFNumberGetValue(v38, kCFNumberIntType, &v55);
                      }

                      v40 = mysyslog_get_logger();
                      v41 = _SC_syslog_os_log_mapping();
                      if (os_log_type_enabled(v40, v41))
                      {
                        *v61 = 138412802;
                        v62 = Value;
                        v63 = 2048;
                        v64 = v37;
                        v65 = 1024;
                        v66 = v55;
                        _os_log_impl(&dword_242BE1000, v40, v41, "%@ prober %p COMPLETE result %d", v61, 0x1Cu);
                      }

                      CFRetain(v37);
                      v42 = *(G_websheet + 40);
                      *&buf = MEMORY[0x277D85DD0];
                      *(&buf + 1) = 0x40000000;
                      v57 = __CNWebSheetHandleProbeResult_block_invoke;
                      v58 = &__block_descriptor_tmp_48;
                      v59 = v37;
                      v60 = v55;
                      CFRunLoopPerformBlock(v42, v53, &buf);
                      CFRunLoopWakeUp(*(G_websheet + 40));
                      CFDictionaryRemoveValue(*(G_websheet + 48), Value);
                    }

                    else
                    {
                      v48 = mysyslog_get_logger();
                      v49 = _SC_syslog_os_log_mapping();
                      if (os_log_type_enabled(v48, v49))
                      {
                        *v61 = 138412290;
                        v62 = Value;
                        p_buf = v61;
                        v20 = v48;
                        v21 = v49;
                        v22 = "can't find prober with ID %@";
                        v23 = 12;
LABEL_21:
                        _os_log_impl(&dword_242BE1000, v20, v21, v22, p_buf, v23);
                      }
                    }
                  }
                }

                else
                {
                  if (valuePtr == 3)
                  {
                    exit(0);
                  }

                  v17 = mysyslog_get_logger();
                  v18 = _SC_syslog_os_log_mapping();
                  if (os_log_type_enabled(v17, v18))
                  {
                    LODWORD(buf) = 67109120;
                    DWORD1(buf) = valuePtr;
                    p_buf = &buf;
                    v20 = v17;
                    v21 = v18;
                    v22 = "Unrecognized command %d";
                    v23 = 8;
                    goto LABEL_21;
                  }
                }

                provideResponse(Value);
                goto LABEL_30;
              }

              v43 = CFDictionaryGetValue(ValueAtIndex, @"Info");
              v44 = CFDictionaryGetTypeID();
              if (v43 && CFGetTypeID(v43) == v44)
              {
                if (!*(G_websheet + 8))
                {
                  my_FieldSetRetainedCFType((G_websheet + 8), Value);
                  CFRetain(v43);
                  v45 = *(G_websheet + 40);
                  *&buf = MEMORY[0x277D85DD0];
                  *(&buf + 1) = 0x40000000;
                  v57 = __CNWebSheetPresentUI_block_invoke;
                  v58 = &__block_descriptor_tmp_44;
                  v59 = v43;
                  CFRunLoopPerformBlock(v45, v53, &buf);
                  CFRunLoopWakeUp(*(G_websheet + 40));
                }

                goto LABEL_30;
              }

              v46 = mysyslog_get_logger();
              v47 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v46, v47))
              {
                *v61 = 0;
                v26 = v61;
                v27 = v46;
                v28 = v47;
                v29 = "websheet info is missing/invalid";
                v34 = 2;
                goto LABEL_29;
              }
            }

            else
            {
              v32 = mysyslog_get_logger();
              v33 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v32, v33))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = ValueAtIndex;
                v26 = &buf;
                v27 = v32;
                v28 = v33;
                v29 = "command type missing or invalid in %@";
                goto LABEL_28;
              }
            }
          }

          else
          {
            v30 = mysyslog_get_logger();
            v31 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v30, v31))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = ValueAtIndex;
              v26 = &buf;
              v27 = v30;
              v28 = v31;
              v29 = "command contains no uniqueID %@";
              goto LABEL_28;
            }
          }
        }

        else
        {
          v24 = mysyslog_get_logger();
          v25 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v24, v25))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = ValueAtIndex;
            v26 = &buf;
            v27 = v24;
            v28 = v25;
            v29 = "command is not a dictionary %@";
LABEL_28:
            v34 = 12;
LABEL_29:
            _os_log_impl(&dword_242BE1000, v27, v28, v29, v26, v34);
          }
        }

LABEL_30:
        ++v7;
      }

      while (v6 != v7);
    }
  }

  else
  {
    v50 = mysyslog_get_logger();
    v51 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v50, v51))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_242BE1000, v50, v51, "No more commands to process", &buf, 2u);
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

void __CNWebSheetRegister_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v4))
    {
      goto LABEL_9;
    }

    v8 = 0;
    v5 = "Reconnect failed, exiting";
    v6 = &v8;
    goto LABEL_8;
  }

  if (*(G_websheet + 32))
  {
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v4))
    {
      goto LABEL_9;
    }

    v7 = 0;
    v5 = "Server died, exiting";
    v6 = &v7;
LABEL_8:
    _os_log_impl(&dword_242BE1000, logger, v4, v5, v6, 2u);
LABEL_9:
    exit(0);
  }

  *(G_websheet + 32) = 1;
}

void __startProbe_block_invoke(uint64_t a1)
{
  CNProberProvideResult(*(a1 + 32), 7);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void provideResponse(void *a1)
{
  keys[3] = *MEMORY[0x277D85DE8];
  keys[1] = 0;
  keys[2] = 0;
  values[2] = 0;
  keys[0] = @"UniqueID";
  values[0] = a1;
  values[1] = 0;
  v1 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  ServerConnectionProvideResponse(*G_websheet, v1);
  CFRelease(v1);
  v2 = *MEMORY[0x277D85DE8];
}

void __CNWebSheetPresentUI_block_invoke(uint64_t a1)
{
  (*(G_websheet + 16))(*(G_websheet + 24), *(a1 + 32), 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __CNWebSheetHandleProbeResult_block_invoke(uint64_t a1)
{
  CNProberProvideResult(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t ServerConnectionCreate(uint64_t a1, uint64_t a2, int a3, const __CFDictionary *a4, const void *a5, const void *a6)
{
  v6 = 0;
  v47 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  if (!G_conn)
  {
    G_conn = malloc_type_malloc(0x60uLL, 0x10F0040ADC7DA84uLL);
    TypeID = CFDictionaryGetTypeID();
    if (a4)
    {
      if (CFGetTypeID(a4) == TypeID)
      {
        v14 = a4;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = G_conn;
    *G_conn = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    *(v15 + 80) = 0u;
    *(v15 + 8) = a1;
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    if (v14)
    {
      *(v15 + 32) = CFDictionaryCreateCopy(0, v14);
    }

    *v15 = dispatch_queue_create("CommandHandler", 0);
    if (a5)
    {
      *(v15 + 64) = _Block_copy(a5);
      name = 0;
      v16 = MEMORY[0x277D85F48];
      v17 = mach_port_allocate(*MEMORY[0x277D85F48], 1u, &name);
      if (v17)
      {
        v18 = v17;
        logger = mysyslog_get_logger();
        v20 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v20))
        {
          v21 = mach_error_string(v18);
          *buf = 136315138;
          v46 = v21;
          _os_log_impl(&dword_242BE1000, logger, v20, "mach_port_allocate() failed, %s", buf, 0xCu);
        }
      }

      inserted = mach_port_insert_right(*v16, name, name, 0x14u);
      if (inserted)
      {
        v23 = inserted;
        v24 = mysyslog_get_logger();
        v25 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = mach_error_string(v23);
          *buf = 136315138;
          v46 = v26;
          _os_log_impl(&dword_242BE1000, v24, v25, "mach_port_insert_right failed, %s", buf, 0xCu);
        }

        v27 = 0;
      }

      else
      {
        v44 = 1;
        v28 = MEMORY[0x245D22D50](*v16, name, 1, &v44, 1);
        if (v28)
        {
          v29 = v28;
          v30 = mysyslog_get_logger();
          v31 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = mach_error_string(v29);
            *buf = 136315138;
            v46 = v32;
            _os_log_impl(&dword_242BE1000, v30, v31, "mach_port_set_attributes(MACH_PORT_LIMITS_INFO) failed, %s", buf, 0xCu);
          }
        }

        v27 = name;
      }

      *(v15 + 72) = v27;
    }

    if (a6)
    {
      *(v15 + 88) = _Block_copy(a6);
    }

    if (!*v15)
    {
      v33 = mysyslog_get_logger();
      v34 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v33, v34))
      {
        *buf = 0;
        _os_log_impl(&dword_242BE1000, v33, v34, "failed to allocate queue", buf, 2u);
      }

      if (!*v15)
      {
        free(G_conn);
        goto LABEL_31;
      }
    }

    v35 = *G_conn;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 0x40000000;
    v38[2] = __ServerConnectionCreate_block_invoke;
    v38[3] = &unk_278D89C68;
    v38[4] = &v39;
    dispatch_sync(v35, v38);
    v6 = G_conn;
    if (!*(v40 + 24))
    {
      ServerConnectionDeallocate(G_conn);
LABEL_31:
      v6 = 0;
      G_conn = 0;
    }
  }

  _Block_object_dispose(&v39, 8);
  v36 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __ServerConnectionCreate_block_invoke(uint64_t a1)
{
  result = ServerConnectionConnect(G_conn, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ServerConnectionConnect(uint64_t a1, int a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    goto LABEL_2;
  }

  v38 = 0;
  v6 = 0;
  token = 0;
  __errnum = 0;
  v7 = MEMORY[0x277D85F18];
  v8 = 1000000;
  while (2)
  {
    v9 = v6;
    while (1)
    {
      v6 = v9;
      if (v9)
      {
        out_token = 0;
        *handler = MEMORY[0x277D85DD0];
        *&handler[8] = 0x40000000;
        *&handler[16] = __ServerConnectionRegisterForStartNotification_block_invoke;
        *&handler[24] = &__block_descriptor_tmp_4;
        v44 = a1;
        v8 = notify_register_dispatch(*(a1 + 16), &out_token, *a1, handler);
        if (v8)
        {
          logger = mysyslog_get_logger();
          v11 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(logger, v11))
          {
            *buf = 67109120;
            *&buf[4] = v8;
            _os_log_impl(&dword_242BE1000, logger, v11, "notify_register_dispatch failed with %d", buf, 8u);
          }
        }

        else
        {
          token = out_token;
        }
      }

      v12 = *(a1 + 8);
      *buf = 0;
      v13 = bootstrap_look_up(*v7, v12, buf);
      if (v13)
      {
        v14 = v13;
        v15 = mysyslog_get_logger();
        v16 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = mach_error_string(v14);
          *handler = 136315650;
          *&handler[4] = v12;
          *&handler[12] = 1024;
          *&handler[14] = v14;
          *&handler[18] = 2080;
          *&handler[20] = v17;
          _os_log_impl(&dword_242BE1000, v15, v16, "bootstrap_look_up(%s) %d (%s)", handler, 0x1Cu);
        }

        goto LABEL_15;
      }

      v18 = *buf;
      if (*buf)
      {
        break;
      }

LABEL_15:
      result = 0;
      if (a2)
      {
        v9 = 1;
        if (!v6)
        {
          continue;
        }
      }

      goto LABEL_3;
    }

    if (!v8)
    {
      notify_cancel(token);
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], v19);
      *(a1 + 56) = 0;
    }

    v46 = 0;
    *handler = @"Class";
    *&handler[8] = 0;
    *buf = CFNumberCreate(0, kCFNumberSInt32Type, (a1 + 24));
    v20 = *(a1 + 32);
    if (v20)
    {
      *&handler[8] = @"Information";
      v46 = v20;
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    v22 = CFDictionaryCreate(0, handler, buf, v21, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFRelease(*buf);
    Data = my_CFPropertyListCreateData(v22);
    CFRelease(v22);
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(Data);
    v26 = ConnectionEstablish(v18, BytePtr, Length, *(a1 + 72), (a1 + 56), &__errnum);
    CFRelease(Data);
    if (!(v26 | __errnum))
    {
      *(a1 + 40) = v18;
      v31 = dispatch_source_create(MEMORY[0x277D85D10], *(a1 + 56), 1uLL, *a1);
      *(a1 + 48) = v31;
      if (v31)
      {
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 0x40000000;
        v40[2] = __ServerConnectionConnect_block_invoke;
        v40[3] = &__block_descriptor_tmp_2_0;
        v40[4] = a1;
        dispatch_source_set_event_handler(v31, v40);
        dispatch_resume(*(a1 + 48));
        v32 = *(a1 + 88);
        if (v32)
        {
          (*(v32 + 16))(v32, a1, 1);
        }

        v33 = mysyslog_get_logger();
        v34 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v33, v34))
        {
          *handler = 0;
          _os_log_impl(&dword_242BE1000, v33, v34, "Connected", handler, 2u);
        }

        result = 1;
        goto LABEL_3;
      }

      v35 = mysyslog_get_logger();
      v36 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v35, v36))
      {
        *handler = 0;
        _os_log_impl(&dword_242BE1000, v35, v36, "failed to allocate server_died_source", handler, 2u);
      }

      ServerConnectionCleanup(a1);
LABEL_2:
      result = 0;
      goto LABEL_3;
    }

    v27 = mysyslog_get_logger();
    v28 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v27, v28))
    {
      v37 = mach_error_string(v26);
      v29 = strerror(__errnum);
      *handler = 136315394;
      *&handler[4] = v37;
      *&handler[12] = 2080;
      *&handler[14] = v29;
      _os_log_impl(&dword_242BE1000, v27, v28, "ConnectionEstablish failed, %s, %s", handler, 0x16u);
    }

    mach_port_deallocate(*MEMORY[0x277D85F48], v18);
    if (v26 == -308 || v26 == 268435459)
    {
      result = 0;
      if (!a2)
      {
        goto LABEL_3;
      }

      if (v38++ >= 5)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  if (v26 || !a2)
  {
    goto LABEL_2;
  }

  result = *(a1 + 88);
  if (result)
  {
    (*(result + 16))(result, a1, 0);
    goto LABEL_2;
  }

LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void ServerConnectionDeallocate(dispatch_object_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __ServerConnectionDeallocate_block_invoke;
    block[3] = &__block_descriptor_tmp_9_0;
    block[4] = a1;
    dispatch_sync(v2, block);
    dispatch_release(*a1);
  }

  else
  {
    ServerConnectionDeallocateSync(a1);
  }

  free(a1);
}

void ServerConnectionResume(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D08], v1, 0, *a1);
    *(a1 + 80) = v3;
    if (v3)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __add_signal_port_source_block_invoke;
      handler[3] = &__block_descriptor_tmp_10_0;
      v8 = v1;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 0x40000000;
      v6[2] = __add_signal_port_source_block_invoke_2;
      v6[3] = &__block_descriptor_tmp_11_1;
      v6[4] = a1;
      dispatch_source_set_event_handler(v3, v6);
      dispatch_source_set_cancel_handler(*(a1 + 80), handler);
      dispatch_resume(*(a1 + 80));
    }

    else
    {
      logger = mysyslog_get_logger();
      v5 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v5))
      {
        LOWORD(v6[0]) = 0;
        _os_log_impl(&dword_242BE1000, logger, v5, "failed to allocate signal_source", v6, 2u);
      }
    }
  }
}

BOOL ServerConnectionProvideResponse(uint64_t a1, CFPropertyListRef propertyList)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!propertyList)
  {
    goto LABEL_5;
  }

  __errnum = 0;
  Data = my_CFPropertyListCreateData(propertyList);
  LODWORD(a1) = *(a1 + 56);
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  v6 = ConnectionProvideResponse(a1, BytePtr, Length, &__errnum);
  CFRelease(Data);
  if (!(v6 | __errnum))
  {
    result = 1;
    goto LABEL_7;
  }

  logger = mysyslog_get_logger();
  v8 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(logger, v8);
  if (result)
  {
    v10 = mach_error_string(v6);
    v11 = strerror(__errnum);
    *buf = 136315394;
    v15 = v10;
    v16 = 2080;
    v17 = v11;
    _os_log_impl(&dword_242BE1000, logger, v8, "ConnectionProvideResponse failed, %s, %s", buf, 0x16u);
LABEL_5:
    result = 0;
  }

LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ServerConnectionSendCmdAck(uint64_t a1, CFPropertyListRef propertyList)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!propertyList)
  {
    goto LABEL_5;
  }

  __errnum = 0;
  Data = my_CFPropertyListCreateData(propertyList);
  LODWORD(a1) = *(a1 + 56);
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  v6 = ConnectionSendCmdAck(a1, BytePtr, Length, &__errnum);
  CFRelease(Data);
  if (!(v6 | __errnum))
  {
    result = 1;
    goto LABEL_7;
  }

  logger = mysyslog_get_logger();
  v8 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(logger, v8);
  if (result)
  {
    v10 = mach_error_string(v6);
    v11 = strerror(__errnum);
    *buf = 136315394;
    v15 = v10;
    v16 = 2080;
    v17 = v11;
    _os_log_impl(&dword_242BE1000, logger, v8, "ServerConnectionProvideAck failed, %s, %s", buf, 0x16u);
LABEL_5:
    result = 0;
  }

LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ServerConnectionProcessControl(uint64_t a1, CFPropertyListRef propertyList, const __CFData **a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  if (!propertyList)
  {
    goto LABEL_7;
  }

  *__errnum = 0;
  bytes = 0;
  Data = my_CFPropertyListCreateData(propertyList);
  v6 = *(a1 + 56);
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  v9 = ConnectionProcessControl(v6, BytePtr, Length, &bytes, &__errnum[1], __errnum);
  CFRelease(Data);
  if (v9 | __errnum[0])
  {
    logger = mysyslog_get_logger();
    v11 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(logger, v11);
    if (result)
    {
      v13 = mach_error_string(v9);
      v14 = strerror(__errnum[0]);
      *buf = 136315394;
      v19 = v13;
      v20 = 2080;
      v21 = v14;
      _os_log_impl(&dword_242BE1000, logger, v11, "ConnectionProcessControl failed, %s, %s", buf, 0x16u);
LABEL_7:
      result = 0;
    }
  }

  else
  {
    if (bytes)
    {
      if (a3)
      {
        *a3 = my_CFPropertyListCreateWithBytePtrAndLength(bytes, __errnum[1]);
      }

      MEMORY[0x245D22EB0](*MEMORY[0x277D85F48]);
    }

    result = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void ServerConnectionCleanup(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], v3);
    *(a1 + 40) = 0;
  }
}

uint64_t __ServerConnectionConnect_block_invoke(uint64_t a1)
{
  ServerConnectionCleanup(*(a1 + 32));
  v2 = *(a1 + 32);

  return ServerConnectionConnect(v2, 1);
}

uint64_t __ServerConnectionRegisterForStartNotification_block_invoke(uint64_t a1, int a2)
{
  ServerConnectionConnect(*(a1 + 32), 1);

  return notify_cancel(a2);
}

void ServerConnectionDeallocateSync(uint64_t a1)
{
  ServerConnectionCleanup(a1);
  mach_port_deallocate(*MEMORY[0x277D85F48], *(a1 + 56));
  v2 = *(a1 + 64);
  if (v2)
  {
    if (*(a1 + 72))
    {
      if (*(a1 + 80))
      {
        dispatch_source_cancel(*(a1 + 80));
        dispatch_release(*(a1 + 80));
        *(a1 + 80) = 0;
        v2 = *(a1 + 64);
      }

      *(a1 + 72) = 0;
    }

    _Block_release(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    _Block_release(v3);
    *(a1 + 88) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }
}

void __add_signal_port_source_block_invoke_2()
{
  v0 = MEMORY[0x28223BE20]();
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  *__errnum = 0;
  bytes = 0;
  v2 = *(v1 + 72);
  msg.msgh_remote_port = 0;
  msg.msgh_local_port = v2;
  *&msg.msgh_bits = 0x100000000000;
  msg.msgh_id = 0;
  v3 = mach_msg(&msg, 6, 0, 0x1000u, v2, 0, 0);
  if (v3)
  {
    v4 = v3;
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v6))
    {
      *buf = 136315138;
      v18 = mach_error_string(v4);
      _os_log_impl(&dword_242BE1000, logger, v6, "mach_msg: %s", buf, 0xCu);
    }
  }

  CommandInfo = ConnectionGetCommandInfo(*(v1 + 56), &bytes, &__errnum[1], __errnum);
  if (CommandInfo | __errnum[0])
  {
    v8 = CommandInfo;
    v9 = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = mach_error_string(v8);
      v12 = strerror(__errnum[0]);
      msg.msgh_bits = 136315394;
      *&msg.msgh_size = v11;
      LOWORD(msg.msgh_local_port) = 2080;
      *(&msg.msgh_local_port + 2) = v12;
      _os_log_impl(&dword_242BE1000, v9, v10, "ConnectionGetCommandInfo failed, %s, %s", &msg, 0x16u);
    }
  }

  else
  {
    if (bytes)
    {
      v13 = my_CFPropertyListCreateWithBytePtrAndLength(bytes, __errnum[1]);
      MEMORY[0x245D22EB0](*MEMORY[0x277D85F48], bytes, __errnum[1]);
    }

    else
    {
      v13 = 0;
    }

    (*(*(v1 + 64) + 16))();
    if (v13)
    {
      CFRelease(v13);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

const char *CNPCommandTypeGetString(unsigned int a1)
{
  if (a1 <= 6)
  {
    return CNPCommandTypeGetString_strings[a1];
  }

  else
  {
    return "<unknown>";
  }
}

const char *CNPResultGetString(unsigned int a1)
{
  if (a1 <= 6)
  {
    return CNPResultGetString_strings[a1];
  }

  else
  {
    return "<unknown>";
  }
}

const char *CNPConfidenceGetString(unsigned int a1)
{
  if (a1 <= 2)
  {
    return CNPConfidenceGetString_strings[a1];
  }

  else
  {
    return "<unknown>";
  }
}

const char *CNPCaptiveDetectionTypeGetString(unsigned int a1)
{
  if (a1 <= 3)
  {
    return CNPCaptiveDetectionTypeGetString_strings[a1];
  }

  else
  {
    return "<unknown>";
  }
}

uint64_t CNScanListFilterStart(uint64_t a1, dispatch_object_t object, void *aBlock)
{
  result = 0;
  if (!a1 && object && aBlock)
  {
    if (CNScanListFilterGet_once != -1)
    {
      CNScanListFilterStart_cold_1();
    }

    CNMonitorSetQueueAndHandler(CNScanListFilterGet_monitor, object, aBlock);
    return 1;
  }

  return result;
}

uint64_t CNScanListFilterStop()
{
  if (CNScanListFilterGet_once != -1)
  {
    CNScanListFilterStart_cold_1();
  }

  CNMonitorSetQueueAndHandler(CNScanListFilterGet_monitor, 0, 0);
  return 1;
}

_OWORD *__CNScanListFilterGet_block_invoke()
{
  result = CNMonitorCreate(5, CNScanListFilterHandleCommand, CNScanListFilterCopyControl);
  CNScanListFilterGet_monitor = result;
  return result;
}

void CNScanListFilterHandleCommand(uint64_t a1, CFDictionaryRef theDict)
{
  v26 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"Type");
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || !CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    logger = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v12))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v25 = theDict;
    v13 = "command type invalid/missing in %@";
    v14 = logger;
    v15 = v12;
    v16 = 12;
LABEL_11:
    _os_log_impl(&dword_242BE1000, v14, v15, v13, buf, v16);
    goto LABEL_12;
  }

  if (valuePtr != 1)
  {
    v18 = mysyslog_get_logger();
    v19 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_12;
    }

    *buf = 67109120;
    LODWORD(v25) = valuePtr;
    v13 = "command type %d unrecognized";
    v14 = v18;
    v15 = v19;
    v16 = 8;
    goto LABEL_11;
  }

  v6 = CFDictionaryGetValue(theDict, @"InterfaceName");
  v7 = CFStringGetTypeID();
  if (!v6 || CFGetTypeID(v6) != v7)
  {
    v20 = mysyslog_get_logger();
    v21 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v13 = "interface name is missing/invalid";
    goto LABEL_17;
  }

  v8 = CFDictionaryGetValue(theDict, @"NetworkList");
  v9 = CNNetworkListCreate(v8, v6);
  if (!v9)
  {
    v20 = mysyslog_get_logger();
    v21 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v13 = "couldn't get the network list";
LABEL_17:
    v14 = v20;
    v15 = v21;
    v16 = 2;
    goto LABEL_11;
  }

  v10 = v9;
  CFRetain(v6);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 0x40000000;
  v22[2] = __CNScanListFilterHandleCommand_block_invoke;
  v22[3] = &__block_descriptor_tmp_9_1;
  v22[4] = a1;
  v22[5] = v6;
  v22[6] = v10;
  CNMonitorPerformBlock(a1, v22);
LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

CFDictionaryRef CNScanListFilterCopyControl(int a1)
{
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  valuePtr = v1;
  values = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  keys = @"Type";
  v2 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(values);
  return v2;
}

void __CNScanListFilterHandleCommand_block_invoke(uint64_t a1)
{
  Queue = CNMonitorGetQueue(*(a1 + 32));
  if (Queue)
  {
    v3 = Queue;
    dispatch_retain(Queue);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = __CNScanListFilterHandleCommand_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_8_0;
    v5[4] = *(a1 + 32);
    v5[5] = v3;
    v6 = *(a1 + 40);
    dispatch_async(v3, v5);
  }

  else
  {
    CFRelease(*(a1 + 40));
    v4 = *(a1 + 48);

    CFRelease(v4);
  }
}

void __CNScanListFilterHandleCommand_block_invoke_2(uint64_t a1)
{
  Handler = CNMonitorGetHandler(*(a1 + 32));
  if (Handler)
  {
    v3 = Handler;
    if (CNMonitorGetQueue(*(a1 + 32)) == *(a1 + 40))
    {
      (*(v3 + 16))(v3, *(a1 + 48), *(a1 + 56));
    }
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 56));
  v4 = *(a1 + 40);

  dispatch_release(v4);
}

uint64_t LogoffReply(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 18;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 28047703;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
}

uint64_t AuthenticateUsingReply(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 18;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 28047705;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
}

uint64_t CNSClient_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 28047706) >= 0xFFFFFFFC)
  {
    return *(&CNSClientCNSClient_subsystem + 5 * (v1 - 28047702) + 5);
  }

  else
  {
    return 0;
  }
}

_DWORD *_XLogoffReply(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    v3 = result[3];
    v4 = result[8];
    result = CNSClientLogoffReply();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_XAuthenticateUsingReply(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    result = CNSClientAuthenticateUsingReply(result[3], result[8]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t CNSClient_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 28047706) >= 0xFFFFFFFC && (v5 = *(&CNSClientCNSClient_subsystem + 5 * (v4 - 28047702) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t ParsePost()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v42 = *MEMORY[0x277D85DE8];
  memset(v41, 0, 480);
  *reply_port = 0u;
  v40 = 0u;
  *(&v40 + 1) = *MEMORY[0x277D85EF8];
  LODWORD(v41[0]) = v11;
  if (MEMORY[0x28223BE50])
  {
    v12 = mig_strncpy_zerofill(v41 + 12, v1, 4096);
  }

  else
  {
    v12 = mig_strncpy(v41 + 12, v1, 4096);
  }

  DWORD1(v41[0]) = 0;
  DWORD2(v41[0]) = v12;
  v13 = (v12 + 3) & 0xFFFFFFFC;
  v14 = &reply_port[-1024] + v13;
  v15 = &v41[1] + v13 + 4;
  if (MEMORY[0x28223BE50])
  {
    v16 = mig_strncpy_zerofill(v15, v9, 4096);
  }

  else
  {
    v16 = mig_strncpy(v15, v9, 4096);
  }

  v17 = v13 + 68;
  v18 = MEMORY[0x28223BE50];
  *(v14 + 1036) = v16;
  *(v14 + 1035) = 0;
  v19 = (v16 + 3) & 0xFFFFFFFC;
  v20 = &v14[v19];
  v21 = &v14[v19 - 4096];
  v22 = v20 + 4156;
  if (v18)
  {
    v23 = mig_strncpy_zerofill(v22, v7, 4096);
  }

  else
  {
    v23 = mig_strncpy(v22, v7, 4096);
  }

  v24 = v17 + v19;
  v25 = MEMORY[0x28223BE50];
  *(v21 + 8248) = v23;
  *(v21 + 8244) = 0;
  v26 = (v23 + 3) & 0xFFFFFFFC;
  v27 = (v21 + v26 + 8260);
  if (v25)
  {
    v28 = mig_strncpy_zerofill(v27, v5, 4096);
  }

  else
  {
    v28 = mig_strncpy(v27, v5, 4096);
  }

  v29 = v24 + v26;
  *(v21 + v26 + 8256) = v28;
  *(v21 + v26 + 8252) = 0;
  v30 = (v28 + 3) & 0xFFFFFFFC;
  v31 = mig_get_reply_port();
  reply_port[2] = v10;
  reply_port[3] = v31;
  reply_port[0] = 5395;
  *&v40 = 0x1ABF95600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(reply_port);
    v32 = reply_port[3];
  }

  else
  {
    v32 = v31;
  }

  v33 = mach_msg(reply_port, 3, v29 + v30, 0x30u, v32, 0, 0);
  v34 = v33;
  if ((v33 - 268435458) > 0xE || ((1 << (v33 - 2)) & 0x4003) == 0)
  {
    if (v33)
    {
      mig_dealloc_reply_port(reply_port[3]);
      goto LABEL_39;
    }

    if (DWORD1(v40) == 71)
    {
      v34 = 4294966988;
    }

    else if (DWORD1(v40) == 28047802)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] == 40)
        {
          if (!reply_port[2])
          {
            v34 = LODWORD(v41[0]);
            if (!LODWORD(v41[0]))
            {
              *v3 = DWORD1(v41[0]);
              goto LABEL_39;
            }

            goto LABEL_38;
          }
        }

        else if (reply_port[1] == 36)
        {
          if (reply_port[2])
          {
            v36 = 1;
          }

          else
          {
            v36 = LODWORD(v41[0]) == 0;
          }

          if (v36)
          {
            v34 = 4294966996;
          }

          else
          {
            v34 = LODWORD(v41[0]);
          }

          goto LABEL_38;
        }
      }

      v34 = 4294966996;
    }

    else
    {
      v34 = 4294966995;
    }

LABEL_38:
    mach_msg_destroy(reply_port);
    goto LABEL_39;
  }

  mig_put_reply_port(reply_port[3]);
LABEL_39:
  v37 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t Logoff()
{
  v1 = MEMORY[0x28223BE20]();
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, 480);
  *reply_port = 0u;
  v11 = 0u;
  *(&v11 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v2 = mig_strncpy_zerofill(v12 + 8, v0, 4096);
  }

  else
  {
    v2 = mig_strncpy(v12 + 8, v0, 4096);
  }

  LODWORD(v12[0]) = 0;
  DWORD1(v12[0]) = v2;
  v3 = (v2 + 3) & 0xFFFFFFFC;
  v4 = mig_get_reply_port();
  reply_port[2] = v1;
  reply_port[3] = v4;
  reply_port[0] = 5395;
  *&v11 = 0x1ABF95700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(reply_port);
    v5 = reply_port[3];
  }

  else
  {
    v5 = v4;
  }

  v6 = mach_msg(reply_port, 3, v3 + 40, 0x2Cu, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
    goto LABEL_22;
  }

  if (v6)
  {
    mig_dealloc_reply_port(reply_port[3]);
    goto LABEL_22;
  }

  if (DWORD1(v11) == 71)
  {
    v7 = 4294966988;
LABEL_21:
    mach_msg_destroy(reply_port);
    goto LABEL_22;
  }

  if (DWORD1(v11) != 28047803)
  {
    v7 = 4294966995;
    goto LABEL_21;
  }

  v7 = 4294966996;
  if ((reply_port[0] & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  if (reply_port[1] != 36)
  {
    goto LABEL_21;
  }

  if (reply_port[2])
  {
    goto LABEL_21;
  }

  v7 = LODWORD(v12[0]);
  if (LODWORD(v12[0]))
  {
    goto LABEL_21;
  }

LABEL_22:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ForgetNetwork(int a1, uint64_t a2, unsigned int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  memset(&msg[4], 0, 32);
  *&msg[24] = *MEMORY[0x277D85EF8];
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    *msg = 19;
    *&msg[8] = a1;
    *&msg[32] = a3;
    *&msg[20] = 28047705;
    *&msg[12] = 0;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(msg);
    }

    result = mach_msg(msg, 1, ((a3 + 3) & 0xFFC) + 36, 0, 0, 0, 0);
  }

  else
  {
    result = 4294966989;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PurgeAccountRecord(int a1, uint64_t a2, unsigned int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  memset(&msg[4], 0, 32);
  *&msg[24] = *MEMORY[0x277D85EF8];
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    *msg = 19;
    *&msg[8] = a1;
    *&msg[32] = a3;
    *&msg[20] = 28047706;
    *&msg[12] = 0;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(msg);
    }

    result = mach_msg(msg, 1, ((a3 + 3) & 0xFFC) + 36, 0, 0, 0, 0);
  }

  else
  {
    result = 4294966989;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DebugLaunchWebsheet(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x277D85EF8];
  v19 = a3;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = reply_port;
  *&v13.msgh_voucher_port = 0x1ABF95B00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v8 = mach_msg(&v13, 3, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      goto LABEL_25;
    }

    if (v13.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (v13.msgh_id == 28047807)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 40)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = HIDWORD(v15);
            if (!HIDWORD(v15))
            {
              *a4 = v16;
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = HIDWORD(v15) == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = HIDWORD(v15);
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v13);
    goto LABEL_25;
  }

  mig_put_reply_port(v13.msgh_local_port);
LABEL_25:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t DumpState(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1ABF95C00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
}

uint64_t CopySupportedInterfaces(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1ABF96000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 28047812)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
          {
            v12 = DWORD1(v16);
            if (DWORD1(v16) == v17)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v17);
              goto LABEL_27;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      goto LABEL_27;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

LABEL_27:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t CopyCurrentNetworkInfo()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v50 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *&v20[16] = 0u;
  v21 = 0u;
  *reply_port = 0u;
  *v20 = 0u;
  *&v20[8] = *MEMORY[0x277D85EF8];
  *&v20[16] = v9;
  if (MEMORY[0x28223BE50])
  {
    v10 = mig_strncpy_zerofill(&v20[28], v1, 4096);
  }

  else
  {
    v10 = mig_strncpy(&v20[28], v1, 4096);
  }

  *&v20[20] = 0;
  *&v20[24] = v10;
  v11 = (v10 + 3) & 0xFFFFFFFC;
  v12 = mig_get_reply_port();
  reply_port[2] = v8;
  reply_port[3] = v12;
  reply_port[0] = 5395;
  *v20 = 0x1ABF96100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(reply_port);
    v13 = reply_port[3];
  }

  else
  {
    v13 = v12;
  }

  v14 = mach_msg(reply_port, 3, v11 + 44, 0x44u, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else
  {
    if (!v14)
    {
      if (*&v20[4] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&v20[4] == 28047813)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (*&v20[8] == 1 && reply_port[1] == 60 && !reply_port[2] && v20[23] == 1)
          {
            v16 = *&v20[24];
            if (*&v20[24] == DWORD1(v21))
            {
              v15 = 0;
              *v7 = *&v20[12];
              *v5 = v16;
              *v3 = DWORD2(v21);
              goto LABEL_30;
            }
          }
        }

        else if (reply_port[1] == 36)
        {
          v15 = 4294966996;
          if (*&v20[16])
          {
            if (reply_port[2])
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = *&v20[16];
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_30;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

LABEL_30:
  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t CopyAccountList(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1ABF96200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 28047814)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
          {
            v12 = DWORD1(v16);
            if (DWORD1(v16) == v17)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v17);
              goto LABEL_27;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      goto LABEL_27;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

LABEL_27:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t AddAccount()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v0;
  v42 = *MEMORY[0x277D85DE8];
  memset(msg, 0, 512);
  *&msg[1].msgh_bits = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v15 = mig_strncpy_zerofill(&msg[1].msgh_voucher_port, v1, 4096);
  }

  else
  {
    v15 = mig_strncpy(&msg[1].msgh_voucher_port, v1, 4096);
  }

  msg[1].msgh_remote_port = 0;
  msg[1].msgh_local_port = v15;
  if (v11 <= 0x400)
  {
    v40 = v5;
    v17 = v14;
    v39 = v3;
    v18 = MEMORY[0x28223BE50];
    v19 = (v15 + 3) & 0xFFFFFFFC;
    v20 = msg + v19;
    v21 = (v11 + 3) & 0xFFC;
    v22 = &v20[v21];
    memcpy(v20 + 44, v13, v11);
    *(v20 + 10) = v11;
    v23 = &v20[v21 - 9216];
    v24 = &v20[v21 + 52];
    if (v18)
    {
      v25 = mig_strncpy_zerofill(v24, v9, 4096);
      *(v22 + 12) = v25;
      *(v22 + 11) = 0;
      v26 = (v25 + 3) & 0xFFFFFFFC;
      v27 = v23 + v26;
      v28 = mig_strncpy_zerofill((v23 + v26 + 9276), v7, 4096);
    }

    else
    {
      v29 = mig_strncpy(v24, v9, 4096);
      *(v22 + 12) = v29;
      *(v22 + 11) = 0;
      v26 = (v29 + 3) & 0xFFFFFFFC;
      v27 = v23 + v26;
      v28 = mig_strncpy((v23 + v26 + 9276), v7, 4096);
    }

    *(v27 + 9272) = v28;
    *(v27 + 9268) = 0;
    v30 = (v28 + 3) & 0xFFFFFFFC;
    v31 = v21 + v19 + v26 + v30;
    *(v27 + v30 + 9276) = v40;
    reply_port = mig_get_reply_port();
    *&msg[0].msgh_remote_port = __PAIR64__(reply_port, v17);
    msg[0].msgh_bits = 5395;
    *&msg[0].msgh_voucher_port = 0x1ABF96300000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(msg);
      msgh_local_port = msg[0].msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v34 = mach_msg(msg, 3, v31 + 64, 0x30u, msgh_local_port, 0, 0);
    msgh_remote_port = v34;
    if ((v34 - 268435458) <= 0xE && ((1 << (v34 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg[0].msgh_local_port);
      goto LABEL_35;
    }

    if (v34)
    {
      mig_dealloc_reply_port(msg[0].msgh_local_port);
      goto LABEL_35;
    }

    if (msg[0].msgh_id == 71)
    {
      msgh_remote_port = 4294966988;
    }

    else if (msg[0].msgh_id == 28047815)
    {
      if ((msg[0].msgh_bits & 0x80000000) == 0)
      {
        if (msg[0].msgh_size == 40)
        {
          if (!msg[0].msgh_remote_port)
          {
            msgh_remote_port = msg[1].msgh_remote_port;
            if (!msg[1].msgh_remote_port)
            {
              *v39 = msg[1].msgh_local_port;
              goto LABEL_35;
            }

            goto LABEL_34;
          }
        }

        else if (msg[0].msgh_size == 36)
        {
          if (msg[0].msgh_remote_port)
          {
            v36 = 1;
          }

          else
          {
            v36 = msg[1].msgh_remote_port == 0;
          }

          if (v36)
          {
            msgh_remote_port = 4294966996;
          }

          else
          {
            msgh_remote_port = msg[1].msgh_remote_port;
          }

          goto LABEL_34;
        }
      }

      msgh_remote_port = 4294966996;
    }

    else
    {
      msgh_remote_port = 4294966995;
    }

LABEL_34:
    mach_msg_destroy(msg);
    goto LABEL_35;
  }

  msgh_remote_port = 4294966989;
LABEL_35:
  v37 = *MEMORY[0x277D85DE8];
  return msgh_remote_port;
}

uint64_t ResolveAccount()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v4 = v0;
  v17 = *MEMORY[0x277D85DE8];
  memset(v16, 0, 480);
  *reply_port = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v5 = mig_strncpy_zerofill(v16 + 8, v1, 4096);
  }

  else
  {
    v5 = mig_strncpy(v16 + 8, v1, 4096);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = mig_get_reply_port();
  reply_port[2] = v4;
  reply_port[3] = v7;
  reply_port[0] = 5395;
  *&v15 = 0x1ABF96400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(reply_port);
    v8 = reply_port[3];
  }

  else
  {
    v8 = v7;
  }

  v9 = mach_msg(reply_port, 3, v6 + 40, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(reply_port[3]);
      goto LABEL_28;
    }

    if (DWORD1(v15) == 71)
    {
      v10 = 4294966988;
    }

    else if (DWORD1(v15) == 28047816)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] == 40)
        {
          if (!reply_port[2])
          {
            v10 = LODWORD(v16[0]);
            if (!LODWORD(v16[0]))
            {
              *v3 = DWORD1(v16[0]);
              goto LABEL_28;
            }

            goto LABEL_27;
          }
        }

        else if (reply_port[1] == 36)
        {
          if (reply_port[2])
          {
            v11 = 1;
          }

          else
          {
            v11 = LODWORD(v16[0]) == 0;
          }

          if (v11)
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = LODWORD(v16[0]);
          }

          goto LABEL_27;
        }
      }

      v10 = 4294966996;
    }

    else
    {
      v10 = 4294966995;
    }

LABEL_27:
    mach_msg_destroy(reply_port);
    goto LABEL_28;
  }

  mig_put_reply_port(reply_port[3]);
LABEL_28:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t AuthenticateUsing()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v28 = *MEMORY[0x277D85DE8];
  memset(v27, 0, 448);
  v25 = 0u;
  v26 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v23 = 1;
  v24 = v7;
  DWORD1(v25) = 1376256;
  *(&v25 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v8 = mig_strncpy_zerofill(&v26 + 8, v1, 4096);
  }

  else
  {
    v8 = mig_strncpy(&v26 + 8, v1, 4096);
  }

  LODWORD(v26) = 0;
  DWORD1(v26) = v8;
  v9 = (v8 + 3) & 0xFFFFFFFC;
  v10 = &reply_port + v9 - 4096;
  v11 = v27 + v9;
  if (MEMORY[0x28223BE50])
  {
    v12 = mig_strncpy_zerofill(v11, v5, 4096);
  }

  else
  {
    v12 = mig_strncpy(v11, v5, 4096);
  }

  v13 = v9 + 64;
  *(v10 + 1039) = v12;
  *(v10 + 1038) = 0;
  v14 = (v12 + 3) & 0xFFFFFFFC;
  v15 = mig_get_reply_port();
  reply_port.msgh_remote_port = v6;
  reply_port.msgh_local_port = v15;
  reply_port.msgh_bits = -2147478253;
  *&reply_port.msgh_voucher_port = 0x1ABF96500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&reply_port);
    msgh_local_port = reply_port.msgh_local_port;
  }

  else
  {
    msgh_local_port = v15;
  }

  v17 = mach_msg(&reply_port, 3, v13 + v14, 0x30u, msgh_local_port, 0, 0);
  v18 = v17;
  if ((v17 - 268435458) > 0xE || ((1 << (v17 - 2)) & 0x4003) == 0)
  {
    if (v17)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      goto LABEL_31;
    }

    if (reply_port.msgh_id == 71)
    {
      v18 = 4294966988;
    }

    else if (reply_port.msgh_id == 28047817)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size == 40)
        {
          if (!reply_port.msgh_remote_port)
          {
            v18 = v25;
            if (!v25)
            {
              *v3 = DWORD1(v25);
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          if (reply_port.msgh_remote_port)
          {
            v19 = 1;
          }

          else
          {
            v19 = v25 == 0;
          }

          if (v19)
          {
            v18 = 4294966996;
          }

          else
          {
            v18 = v25;
          }

          goto LABEL_30;
        }
      }

      v18 = 4294966996;
    }

    else
    {
      v18 = 4294966995;
    }

LABEL_30:
    mach_msg_destroy(&reply_port);
    goto LABEL_31;
  }

  mig_put_reply_port(reply_port.msgh_local_port);
LABEL_31:
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t AuthenticateUsingToken()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  memset(v24, 0, 464);
  memset(&reply_port, 0, sizeof(reply_port));
  v21 = 1;
  v22 = v9;
  DWORD1(v23) = 1376256;
  *(&v23 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v10 = mig_strncpy_zerofill(v24 + 8, v1, 4096);
  }

  else
  {
    v10 = mig_strncpy(v24 + 8, v1, 4096);
  }

  LODWORD(v24[0]) = 0;
  DWORD1(v24[0]) = v10;
  if (v5 <= 0x400)
  {
    v12 = (v10 + 3) & 0xFFFFFFFC;
    memcpy(v24 + v12 + 12, v7, v5);
    *(v24 + v12 + 8) = v5;
    v13 = ((v5 + 3) & 0xFFC) + v12;
    v14 = mig_get_reply_port();
    reply_port.msgh_remote_port = v8;
    reply_port.msgh_local_port = v14;
    reply_port.msgh_bits = -2147478253;
    *&reply_port.msgh_voucher_port = 0x1ABF96600000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v14;
    }

    v16 = mach_msg(&reply_port, 3, v13 + 60, 0x30u, msgh_local_port, 0, 0);
    v11 = v16;
    if ((v16 - 268435458) <= 0xE && ((1 << (v16 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
      goto LABEL_30;
    }

    if (v16)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      goto LABEL_30;
    }

    if (reply_port.msgh_id == 71)
    {
      v11 = 4294966988;
    }

    else if (reply_port.msgh_id == 28047818)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size == 40)
        {
          if (!reply_port.msgh_remote_port)
          {
            v11 = v23;
            if (!v23)
            {
              *v3 = DWORD1(v23);
              goto LABEL_30;
            }

            goto LABEL_29;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          if (reply_port.msgh_remote_port)
          {
            v17 = 1;
          }

          else
          {
            v17 = v23 == 0;
          }

          if (v17)
          {
            v11 = 4294966996;
          }

          else
          {
            v11 = v23;
          }

          goto LABEL_29;
        }
      }

      v11 = 4294966996;
    }

    else
    {
      v11 = 4294966995;
    }

LABEL_29:
    mach_msg_destroy(&reply_port);
    goto LABEL_30;
  }

  v11 = 4294966989;
LABEL_30:
  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t ConnectionEstablish(mach_port_t a1, uint64_t a2, int a3, unsigned int a4, _DWORD *a5, _DWORD *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  msg.msgh_id = 0;
  *&msg.msgh_size = 0u;
  v17 = 2;
  v18 = a2;
  v19 = 16777472;
  v20 = a3;
  v21 = a4;
  v22 = 1245184;
  v23 = *MEMORY[0x277D85EF8];
  v24 = a3;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x1ABF96800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v11 = mach_msg(&msg, 3, 0x44u, 0x3Cu, msgh_local_port, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v11)
    {
      if (msg.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (msg.msgh_id == 28047820)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v12 = 4294966996;
          if (v17 == 1 && msg.msgh_size == 52 && !msg.msgh_remote_port && HIWORD(v19) << 16 == 1114112)
          {
            v12 = 0;
            v13 = HIDWORD(v21);
            *a5 = v18;
            *a6 = v13;
            goto LABEL_26;
          }
        }

        else if (msg.msgh_size == 36)
        {
          v12 = 4294966996;
          if (HIDWORD(v18))
          {
            if (msg.msgh_remote_port)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = HIDWORD(v18);
            }
          }
        }

        else
        {
          v12 = 4294966996;
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(&msg);
      goto LABEL_26;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

LABEL_26:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t ConnectionGetCommandInfo(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1ABF96900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 28047821)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
          {
            v12 = DWORD1(v16);
            if (DWORD1(v16) == v17)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v17);
              goto LABEL_27;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      goto LABEL_27;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

LABEL_27:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t ConnectionProvideResponse(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x277D85EF8];
  v19 = a3;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = reply_port;
  *&v13.msgh_voucher_port = 0x1ABF96A00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v8 = mach_msg(&v13, 3, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      goto LABEL_25;
    }

    if (v13.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (v13.msgh_id == 28047822)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 40)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = HIDWORD(v15);
            if (!HIDWORD(v15))
            {
              *a4 = v16;
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = HIDWORD(v15) == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = HIDWORD(v15);
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v13);
    goto LABEL_25;
  }

  mig_put_reply_port(v13.msgh_local_port);
LABEL_25:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t ConnectionSendCmdAck(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x277D85EF8];
  v19 = a3;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = reply_port;
  *&v13.msgh_voucher_port = 0x1ABF96B00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v8 = mach_msg(&v13, 3, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      goto LABEL_25;
    }

    if (v13.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (v13.msgh_id == 28047823)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 40)
        {
          if (!v13.msgh_remote_port)
          {
            v9 = HIDWORD(v15);
            if (!HIDWORD(v15))
            {
              *a4 = v16;
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = HIDWORD(v15) == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = HIDWORD(v15);
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v13);
    goto LABEL_25;
  }

  mig_put_reply_port(v13.msgh_local_port);
LABEL_25:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t CopyLandingPageURL(int a1, void *a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1ABF96C00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v11 = *&msg[12];
  }

  else
  {
    v11 = reply_port;
  }

  v12 = mach_msg(msg, 3, 0x18u, 0x4Cu, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v12)
    {
      if (*&msg[20] == 71)
      {
        v13 = 4294966988;
      }

      else if (*&msg[20] == 28047824)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v13 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 68 && !*&msg[8] && BYTE3(v18) == 1)
          {
            v14 = DWORD1(v18);
            if (DWORD1(v18) == v19)
            {
              v13 = 0;
              *a2 = *&msg[28];
              *a3 = v14;
              *a4 = *(&v19 + 4);
              *a5 = HIDWORD(v19);
              goto LABEL_27;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v13 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = *&msg[32];
            }
          }
        }

        else
        {
          v13 = 4294966996;
        }
      }

      else
      {
        v13 = 4294966995;
      }

      mach_msg_destroy(msg);
      goto LABEL_27;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

LABEL_27:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t ConnectionProcessControl(mach_port_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  msg.msgh_id = 0;
  v21 = 0;
  v22 = 0u;
  *&msg.msgh_size = 0u;
  v17 = 1;
  v18 = a2;
  v19 = 16777472;
  v20 = a3;
  v21 = *MEMORY[0x277D85EF8];
  LODWORD(v22) = a3;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x1ABF96D00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x38u, 0x44u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 28047825)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v13 = 4294966996;
          if (v17 == 1 && msg.msgh_size == 60 && !msg.msgh_remote_port && HIBYTE(v19) == 1)
          {
            v14 = v20;
            if (v20 == v22)
            {
              v13 = 0;
              *a4 = v18;
              *a5 = v14;
              *a6 = DWORD1(v22);
              return v13;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v13 = 4294966996;
          if (HIDWORD(v18))
          {
            if (msg.msgh_remote_port)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = HIDWORD(v18);
            }
          }
        }

        else
        {
          v13 = 4294966996;
        }
      }

      else
      {
        v13 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v13;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v13;
}

uint64_t UserInteractionIsRequired(int a1, _DWORD *a2, _DWORD *a3)
{
  *&msg[20] = 0u;
  v14 = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1ABF96E00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(msg, 3, 0x18u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(*&msg[12]);
      return v9;
    }

    if (*&msg[20] == 71)
    {
      v9 = 4294966988;
    }

    else if (*&msg[20] == 28047826)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 44)
        {
          if (!*&msg[8])
          {
            v9 = *&msg[32];
            if (!*&msg[32])
            {
              v12 = DWORD1(v14);
              *a2 = v14;
              *a3 = v12;
              return v9;
            }

            goto LABEL_24;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v10 = 1;
          }

          else
          {
            v10 = *&msg[32] == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = *&msg[32];
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(msg);
    return v9;
  }

  mig_put_reply_port(*&msg[12]);
  return v9;
}