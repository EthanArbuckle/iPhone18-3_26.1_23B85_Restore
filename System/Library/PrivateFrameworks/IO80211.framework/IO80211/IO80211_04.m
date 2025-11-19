IONotificationPort *_performEventMonitoringHaltIOUC(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 1848);
    v3 = *(a1 + 1840) != 0;
    v4 = *(a1 + 1944) != 0;
    *buf = 136315906;
    v36 = "_performEventMonitoringHaltIOUC";
    v37 = 2048;
    v38 = v2;
    v39 = 1024;
    *v40 = v3;
    *&v40[4] = 1024;
    *&v40[6] = v4;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Enter, ioucPort[%p], dispatch[%u] runloop[%u]\n", buf, 0x22u);
  }

  result = *(a1 + 1848);
  if (result)
  {
    IONotificationPortDestroy(result);
    *(a1 + 1848) = 0;
    *(a1 + 1952) = 0;
    v34 = 0;
    current_queue = dispatch_get_current_queue();
    dispatch_queue_get_label(current_queue);
    pthread_threadid_np(0, &v34);
    clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    if (*(a1 + 1896))
    {
      v7 = MEMORY[0x259C1D0B0](*(a1 + 1880), 1, *(a1 + 1884));
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 1896);
        v12 = *(a1 + 1904);
        v13 = *(a1 + 1880);
        v14 = *(a1 + 1884);
        *buf = 136316674;
        v36 = "_destroyMemoryMappings";
        v37 = 2080;
        v38 = a1 + 4;
        v39 = 2048;
        *v40 = v11;
        *&v40[8] = 2048;
        v41 = v12;
        v42 = 1024;
        v43 = v13;
        v44 = 1024;
        v45 = v14;
        v46 = 1024;
        v47 = v7;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %s unmapped buffer info: ringBuffer: ringBuffer[0x%llx] ringSize[0x%llx], connect[0x%x] task[0x%x] retVal[0x%08x]\n", buf, 0x3Cu);
      }

      v32 = *(a1 + 1884);
      v28 = *(a1 + 1904);
      v30 = *(a1 + 1880);
      v26 = *(a1 + 1896);
      v24 = *(a1 + 1848);
      _logEventPipeLogWithFormat(0, *(a1 + 1832), 2, 0, "%s:%u, @[%llu.%06llu] '%s' unmapped buffer info: tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], ringBuffer: ringBuffer[0x%llx] ringSize[0x%llx], connect[0x%x] task[0x%x] retVal[0x%08x]\n", v8, v9, v10, "_destroyMemoryMappings");
      *(a1 + 1880) = 0u;
      *(a1 + 1896) = 0u;
      *(a1 + 1856) = 0u;
    }

    if (*(a1 + 1928))
    {
      v15 = MEMORY[0x259C1D0B0](*(a1 + 1912), 2, *(a1 + 1916));
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 1928);
        v20 = *(a1 + 1936);
        v21 = *(a1 + 1912);
        v22 = *(a1 + 1916);
        *buf = 136316674;
        v36 = "_destroyMemoryMappings";
        v37 = 2080;
        v38 = a1 + 4;
        v39 = 2048;
        *v40 = v19;
        *&v40[8] = 2048;
        v41 = v20;
        v42 = 1024;
        v43 = v21;
        v44 = 1024;
        v45 = v22;
        v46 = 1024;
        v47 = v15;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %s unmapped buffer info: ringState: ringState[0x%llx] ringSize[0x%llx], connect[0x%x] task[0x%x] retVal[0x%08x]\n", buf, 0x3Cu);
      }

      v33 = *(a1 + 1916);
      v29 = *(a1 + 1936);
      v31 = *(a1 + 1912);
      v27 = *(a1 + 1928);
      v25 = *(a1 + 1848);
      _logEventPipeLogWithFormat(0, *(a1 + 1832), 2, 0, "%s:%u, @[%llu.%06llu] '%s' unmapped buffer info: tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], ringState: ringState[0x%llx] ringSize[0x%llx], connect[0x%x] task[0x%x] retVal[0x%08x]\n", v16, v17, v18, "_destroyMemoryMappings");
      *(a1 + 1912) = 0u;
      *(a1 + 1928) = 0u;
      *(a1 + 1872) = 0;
    }

    result = IOConnectCallStructMethod(*(a1 + 1820), 4u, 0, 0, 0, 0);
    *(a1 + 1856) = 0;
    *(a1 + 1872) = 0;
    *(a1 + 1864) = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __Apple80211EventMonitoringHaltIOUC_block_invoke_2(uint64_t a1)
{
  _performEventMonitoringHaltIOUC(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(a1 + 40) + 1944) = 0;
  return result;
}

void ___checkEntitlements_block_invoke()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = SecTaskCreateFromSelf(0);
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  buffer[0] = v1;
  buffer[1] = v1;
  v2 = getpid();
  proc_name(v2, buffer, 0x20u);
  if (v0)
  {
    v3 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.driverkit.driver-access", 0);
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      if (v5 == CFArrayGetTypeID())
      {
        v20.length = CFArrayGetCount(v4);
        v20.location = 0;
        v6 = CFArrayContainsValue(v4, v20, @"com.apple.private.wifi.driverkit");
      }

      else
      {
        v7 = CFGetTypeID(v4);
        v6 = v7 == CFStringGetTypeID() && CFStringCompare(v4, @"com.apple.private.wifi.driverkit", 0) == kCFCompareEqualTo;
      }

      CFRelease(v4);
    }

    else
    {
      v6 = 0;
    }

    v8 = SecTaskCopyValueForEntitlement(v0, @"com.apple.developer.driverkit.userclient-access", 0);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFArrayGetTypeID())
      {
        v21.length = CFArrayGetCount(v9);
        v21.location = 0;
        v11 = CFArrayContainsValue(v9, v21, @"com.apple.DriverKit-AppleBCMWLAN") != 0;
      }

      else
      {
        v12 = CFGetTypeID(v9);
        v11 = v12 == CFStringGetTypeID() && CFStringCompare(v9, @"com.apple.DriverKit-AppleBCMWLAN", 0) == kCFCompareEqualTo;
      }

      CFRelease(v9);
      if (v6)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v11 = 0;
      if (v6)
      {
        goto LABEL_22;
      }
    }

    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        v16 = 136446210;
        v17 = buffer;
        v13 = MEMORY[0x277D86220];
        v14 = "Process %{public}s is missing entitlement required for Wi-Fi user-client access: <key>com.apple.private.driverkit.driver-access</key> <string>com.apple.private.wifi.driverkit</string>";
LABEL_28:
        _os_log_fault_impl(&dword_254882000, v13, OS_LOG_TYPE_FAULT, v14, &v16, 0xCu);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

LABEL_22:
    if (v6 == 0 || !v11)
    {
      if (v6 != 0 || !v11 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_29;
      }

      v16 = 136446210;
      v17 = buffer;
      v13 = MEMORY[0x277D86220];
      v14 = "Process %{public}s has a deprecated entitlement for Wi-Fi user client access, please replace: <key>com.apple.developer.driverkit.userclient-access</key> <string>com.apple.DriverKit-AppleBCMWLAN</string> with: <key>com.apple.private.driverkit.driver-access</key> <string>com.apple.private.wifi.driverkit</string>";
      goto LABEL_28;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v16 = 136446210;
      v17 = buffer;
      v13 = MEMORY[0x277D86220];
      v14 = "Process %{public}s has a deprecated entitlement for Wi-Fi user client access: <key>com.apple.developer.driverkit.userclient-access</key> <string>com.apple.DriverKit-AppleBCMWLAN</string>";
      goto LABEL_28;
    }

LABEL_29:
    CFRelease(v0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void _processApple8021180211ServiceTerminatedCallbackHaltHelper(uint64_t a1, int a2, int a3, uint64_t a4, const char *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v44 = 0;
  if (a1)
  {
    v10 = *(a1 + 1976);
    v11 = *(a1 + 1944);
    v12 = *(a1 + 1840);
    label = dispatch_queue_get_label(0);
    if (label)
    {
      v14 = label;
    }

    else
    {
      v14 = "";
    }

    __strlcpy_chk();
    HIBYTE(v44) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = "";
      if (a5)
      {
        v15 = a5;
      }

      v23 = 136317954;
      v24 = "_processApple8021180211ServiceTerminatedCallbackHaltHelper";
      v25 = 1024;
      *v26 = 9738;
      *&v26[4] = 2082;
      *&v26[6] = &v43;
      v27 = 1024;
      *v28 = a3;
      *&v28[4] = 1024;
      *&v28[6] = a2;
      v29 = 2048;
      v30 = a1;
      v31 = 2048;
      v32 = v12;
      v33 = 2048;
      v34 = v11;
      v35 = 2048;
      v36 = v10;
      v37 = 2048;
      v38 = a4;
      v39 = 2082;
      v40 = v15;
      v41 = 2082;
      v42 = v14;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s/%u: '%{public}s' [%u] service:%u opaque:%p, ioucQueue[%p] ioucRunLoop[%p] serviceQ[%p] currentQ[%p], '%{public}s' dq:'%{public}s', halting ...\n", &v23, 0x6Eu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 1820);
      v17 = *(a1 + 1848);
      v23 = 136446978;
      v24 = "_Apple80211IOUCHalt";
      v25 = 2048;
      *v26 = a1;
      *&v26[8] = 1024;
      *&v26[10] = v16;
      v27 = 2048;
      *v28 = v17;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: opaque:%p, connect[%u] port[%p]\n", &v23, 0x26u);
    }

    v18 = *(a1 + 1848);
    if (v18 || *(a1 + 64) || *(a1 + 56))
    {
      if (*(a1 + 152))
      {
        dispatch_semaphore_signal(*(a1 + 152));
        v18 = *(a1 + 1848);
      }

      if (v18)
      {
        IONotificationPortDestroy(v18);
        *(a1 + 1848) = 0;
      }

      *(a1 + 1872) = 0;
      *(a1 + 1856) = 0u;
    }

    v19 = *(a1 + 1820);
    if (v19)
    {
      *(a1 + 1820) = 0;
      IOServiceClose(v19);
    }

    v20 = *(a1 + 1960);
    if (v20)
    {
      v20(0, a1, 0, 0, *(a1 + 1968));
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = "";
      if (a5)
      {
        v21 = a5;
      }

      v23 = 136317954;
      v24 = "_processApple8021180211ServiceTerminatedCallbackHaltHelper";
      v25 = 1024;
      *v26 = 9745;
      *&v26[4] = 2082;
      *&v26[6] = &v43;
      v27 = 1024;
      *v28 = a3;
      *&v28[4] = 1024;
      *&v28[6] = a2;
      v29 = 2048;
      v30 = a1;
      v31 = 2048;
      v32 = v12;
      v33 = 2048;
      v34 = v11;
      v35 = 2048;
      v36 = v10;
      v37 = 2048;
      v38 = a4;
      v39 = 2082;
      v40 = v21;
      v41 = 2082;
      v42 = v14;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s/%u: '%{public}s' [%u] service:%u opaque:%p, ioucQueue[%p] ioucRunLoop[%p] serviceQ[%p] currentQ[%p], '%{public}s' dq:'%{public}s', ... halted\n", &v23, 0x6Eu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v23 = 136315138;
    v24 = "_processApple8021180211ServiceTerminatedCallbackHaltHelper";
    _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: No opaque, bailing\n", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t _getRoamProfile(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  v4 = *(a1 + 99);
  *(a2 + 24) = 384;
  *(a2 + 32) = v15;
  if (Apple80211RawGet(a1, a2))
  {
    result = *__error();
    goto LABEL_11;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_12;
  }

  v7 = Mutable;
  if (!HIDWORD(v15[0]))
  {
    goto LABEL_13;
  }

  v8 = (v4 >> 6) & 1;
  _getRoamProfilePerBand(v8, v15, Mutable);
  CFDictionarySetValue(a3, @"APPLE80211KEY_ROAM_PROF_2G", v7);
  CFRelease(v7);
  v9 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v9)
  {
    goto LABEL_12;
  }

  v7 = v9;
  if (!HIDWORD(v16[0]))
  {
LABEL_13:
    v12 = v7;
    goto LABEL_9;
  }

  _getRoamProfilePerBand(v8, v16, v9);
  CFDictionarySetValue(a3, @"APPLE80211KEY_ROAM_PROF_5G", v7);
  CFRelease(v7);
  if (HIDWORD(v17[0]))
  {
    v10 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v10)
    {
      v11 = v10;
      _getRoamProfilePerBand(v8, v17, v10);
      CFDictionarySetValue(a3, @"APPLE80211KEY_ROAM_PROF_6G", v11);
      v12 = v11;
LABEL_9:
      CFRelease(v12);
      goto LABEL_10;
    }

LABEL_12:
    result = 4294963395;
    goto LABEL_11;
  }

LABEL_10:
  result = 0;
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _getUCMProfile(int a1, uint64_t a2, CFDictionaryRef theDict)
{
  v45 = *MEMORY[0x277D85DE8];
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 0u;
  value = 0;
  if (!CFDictionaryGetValueIfPresent(theDict, @"UCM_PROFILE_INDEX", &value) || (valuePtr = 0, CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr), BYTE4(v42) = valuePtr, valuePtr > 9u))
  {
    result = 4294963396;
    goto LABEL_20;
  }

  *(a2 + 24) = 56;
  *(a2 + 32) = &v42;
  if (Apple80211IOCTLGetWrapper())
  {
    result = *__error();
    goto LABEL_20;
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, &v42);
  CFDictionarySetValue(theDict, @"UCM_VERSION", v6);
  CFRelease(v6);
  v7 = CFNumberCreate(v5, kCFNumberSInt8Type, &v42 + 4);
  CFDictionarySetValue(theDict, @"UCM_PROFILE_INDEX", v7);
  CFRelease(v7);
  v8 = CFNumberCreate(v5, kCFNumberSInt8Type, &v42 + 5);
  CFDictionarySetValue(theDict, @"UCM_MODE_STRONG_WL_BT", v8);
  CFRelease(v8);
  v9 = CFNumberCreate(v5, kCFNumberSInt8Type, &v42 + 6);
  CFDictionarySetValue(theDict, @"UCM_MODE_WEAK_WL", v9);
  CFRelease(v9);
  v10 = CFNumberCreate(v5, kCFNumberSInt8Type, &v42 + 7);
  CFDictionarySetValue(theDict, @"UCM_MODE_WEAK_BT", v10);
  CFRelease(v10);
  v11 = CFNumberCreate(v5, kCFNumberSInt8Type, &v42 + 8);
  CFDictionarySetValue(theDict, @"UCM_MODE_WEAK_WL_BT", v11);
  CFRelease(v11);
  v12 = CFNumberCreate(v5, kCFNumberSInt8Type, (&v42 | 9));
  CFDictionarySetValue(theDict, @"UCM_MODE_WL_HI_LO_RSSI_THRESH", v12);
  CFRelease(v12);
  v13 = CFNumberCreate(v5, kCFNumberSInt8Type, (&v42 | 0xA));
  CFDictionarySetValue(theDict, @"UCM_MODE_WL_LO_HI_RSSI_THRESH", v13);
  CFRelease(v13);
  v14 = CFNumberCreate(v5, kCFNumberSInt8Type, (&v42 | 0xB));
  CFDictionarySetValue(theDict, @"UCM_MODE_BT_HI_LO_RSSI_THRESH", v14);
  CFRelease(v14);
  v15 = CFNumberCreate(v5, kCFNumberSInt8Type, (&v42 | 0xC));
  CFDictionarySetValue(theDict, @"UCM_MODE_BT_LO_HI_RSSI_THRESH", v15);
  CFRelease(v15);
  v16 = CFNumberCreate(v5, kCFNumberSInt8Type, (&v42 | 0xD));
  CFDictionarySetValue(theDict, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH", v16);
  CFRelease(v16);
  v17 = CFNumberCreate(v5, kCFNumberSInt8Type, (&v42 | 0xE));
  CFDictionarySetValue(theDict, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH", v17);
  CFRelease(v17);
  v18 = CFNumberCreate(v5, kCFNumberSInt8Type, (&v42 | 0xF));
  CFDictionarySetValue(theDict, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH", v18);
  CFRelease(v18);
  v19 = CFNumberCreate(v5, kCFNumberSInt8Type, v43);
  CFDictionarySetValue(theDict, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH", v19);
  CFRelease(v19);
  v20 = CFNumberCreate(v5, kCFNumberSInt8Type, v43 + 1);
  CFDictionarySetValue(theDict, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH", v20);
  CFRelease(v20);
  v21 = CFNumberCreate(v5, kCFNumberSInt8Type, v43 + 2);
  CFDictionarySetValue(theDict, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH", v21);
  CFRelease(v21);
  if ((v42 & 0xFFFE) == 2)
  {
    v22 = CFNumberCreate(v5, kCFNumberSInt8Type, v43 + 3);
    CFDictionarySetValue(theDict, @"UCM_HYBRID_ANT_CORE_CONFIG", v22);
    CFRelease(v22);
  }

  if (!BYTE3(v42))
  {
    goto LABEL_19;
  }

  Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    goto LABEL_22;
  }

  v24 = Mutable;
  theDicta = theDict;
  if (!BYTE3(v42))
  {
LABEL_18:
    CFDictionarySetValue(theDicta, @"UCM_CHAIN_ATTR", v24);
    CFRelease(v24);
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    v27 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v27)
    {
      break;
    }

    v28 = v27;
    if (v42 - 1 >= 2)
    {
      if (v42 != 3)
      {
        goto LABEL_16;
      }

      v31 = CFNumberCreate(v5, kCFNumberSInt8Type, v43 + v25 + 5);
      CFDictionarySetValue(v28, @"UCM_DESENSE_STRONG_RSSI", v31);
      CFRelease(v31);
      v29 = v43 + 8 * v26 - v26 + 6;
      v30 = @"UCM_DESENSE_WEAK_RSSI";
    }

    else
    {
      v29 = v43 + v25 + 4;
      v30 = @"UCM_DESENSE_LEVEL";
    }

    v32 = CFNumberCreate(v5, kCFNumberSInt8Type, v29);
    CFDictionarySetValue(v28, v30, v32);
    CFRelease(v32);
LABEL_16:
    v33 = CFNumberCreate(v5, kCFNumberSInt8Type, v43 + v25 + 7);
    CFDictionarySetValue(v28, @"UCM_ACK_PWR_STRONG_RSSI", v33);
    CFRelease(v33);
    v34 = CFNumberCreate(v5, kCFNumberSInt8Type, v43 + v25 + 8);
    CFDictionarySetValue(v28, @"UCM_ACK_PWR_WEAK_RSSI", v34);
    CFRelease(v34);
    v35 = CFNumberCreate(v5, kCFNumberSInt8Type, v43 + v25 + 9);
    CFDictionarySetValue(v28, @"UCM_TX_PWR_STRONG_RSSI", v35);
    CFRelease(v35);
    v36 = CFNumberCreate(v5, kCFNumberSInt8Type, v43 + v25 + 10);
    CFDictionarySetValue(v28, @"UCM_TX_PWR_WEAK_RSSI", v36);
    CFRelease(v36);
    CFArrayAppendValue(v24, v28);
    CFRelease(v28);
    if (v26 <= 3)
    {
      ++v26;
      v25 += 7;
      if (v26 < BYTE3(v42))
      {
        continue;
      }
    }

    goto LABEL_18;
  }

  CFRelease(v24);
LABEL_22:
  result = 4294963395;
LABEL_20:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _get2GChainDisable(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 1;
  *(a2 + 24) = 8;
  *(a2 + 32) = v9;
  if (Apple80211IOCTLGetWrapper())
  {
    result = *__error();
  }

  else
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, v9 + 4);
    CFDictionarySetValue(a3, @"BTCOEX_2G_CHAIN_DISABLE", v5);
    CFRelease(v5);
    v6 = CFNumberCreate(v4, kCFNumberSInt8Type, v9 + 5);
    CFDictionarySetValue(a3, @"BTCOEX_2G_CHAIN_DISABLE_REASSOC", v6);
    CFRelease(v6);
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _storeTrapInfoDataInDict(__CFDictionary *a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (a2 + 8));
  CFDictionarySetValue(a1, @"TRAP_SEQUENECE_NUM", v5);
  CFRelease(v5);
  v6 = *(a2 + 14);
  if (v6 <= 0x200)
  {
    if (v6 < 2)
    {
      return 0;
    }

    v7 = (a2 + 16);
    v8 = MEMORY[0x277CBF128];
    while (1)
    {
      v9 = v7[1];
      v10 = v9 + 2;
      if (v9 + 2 > v6 || (v9 & 3) != 0)
      {
        break;
      }

      Mutable = CFArrayCreateMutable(v4, 0, v8);
      v13 = CFNumberCreate(v4, kCFNumberSInt8Type, v7);
      v7 += 2;
      if (v9)
      {
        if ((v9 >> 2) <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v9 >> 2;
        }

        do
        {
          v15 = CFNumberCreate(v4, kCFNumberSInt8Type, v7);
          CFArrayAppendValue(Mutable, v15);
          CFRelease(v15);
          v7 += 4;
          --v14;
        }

        while (v14);
      }

      CFDictionarySetValue(a1, v13, Mutable);
      CFRelease(Mutable);
      CFRelease(v13);
      LOWORD(v6) = v6 - v10;
      if (v6 <= 1u)
      {
        return 0;
      }
    }
  }

  return 4294963396;
}

uint64_t _setLQMConfigIntoDict(char *a1, __CFDictionary *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, a1 + 4);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  CFDictionarySetValue(a2, @"LQM_UPDATE_INTERVAL", v5);
  CFRelease(v6);
  v7 = CFNumberCreate(v4, kCFNumberIntType, a1 + 8);
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  CFDictionarySetValue(a2, @"LQM_RSSI_UPDATE_INTERVAL", v7);
  CFRelease(v8);
  v9 = CFNumberCreate(v4, kCFNumberIntType, a1 + 12);
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  CFDictionarySetValue(a2, @"LQM_CHAN_QUAL_UPDATE_INTERVAL", v9);
  CFRelease(v10);
  v11 = CFNumberCreate(v4, kCFNumberSInt8Type, a1 + 16);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  CFDictionarySetValue(a2, @"LQM_GOOD_RSSI_THRESH", v11);
  CFRelease(v12);
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v14 = Mutable;
    v15 = a1 + 17;
    v16 = 7;
    while (1)
    {
      v17 = CFNumberCreate(v4, kCFNumberSInt8Type, v15);
      if (!v17)
      {
        break;
      }

      v18 = v17;
      CFArrayAppendValue(v14, v17);
      CFRelease(v18);
      ++v15;
      if (!--v16)
      {
        CFDictionarySetValue(a2, @"LQM_RSSI_LEVELS", v14);
        CFRelease(v14);
        v19 = CFNumberCreate(v4, kCFNumberCharType, a1 + 24);
        if (v19)
        {
          v20 = v19;
          CFDictionarySetValue(a2, @"LQM_CCA_HYSTERISIS", v19);
          CFRelease(v20);
          v21 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
          if (!v21)
          {
            goto LABEL_18;
          }

          v14 = v21;
          v22 = a1 + 25;
          v23 = 8;
          while (1)
          {
            v24 = CFNumberCreate(v4, kCFNumberCharType, v22);
            if (!v24)
            {
              break;
            }

            v25 = v24;
            CFArrayAppendValue(v14, v24);
            CFRelease(v25);
            ++v22;
            if (!--v23)
            {
              CFDictionarySetValue(a2, @"LQM_CCA_BOUNDS", v14);
              v26 = 0;
              goto LABEL_15;
            }
          }
        }

        break;
      }
    }

    CFRelease(a2);
    v26 = 4294963395;
LABEL_15:
    a2 = v14;
  }

  else
  {
LABEL_18:
    v26 = 4294963395;
  }

  CFRelease(a2);
  return v26;
}

uint64_t _storeTrapCrashTracerMiniDumpinDict(__CFDictionary *a1, uint64_t a2)
{
  v3 = (a2 + 4);
  v4 = *MEMORY[0x277CBECE8];
  v5 = 102400;
  while (1)
  {
    v6 = v3[1];
    if (!v6)
    {
      return 0;
    }

    if (v5 < v6 + 8)
    {
      return 4294963396;
    }

    if (*v3 == 1)
    {
      if (v6 > 0x18028)
      {
        return 4294963396;
      }

      goto LABEL_9;
    }

    if (*v3 || v6 > 0xFC8)
    {
      return 4294963396;
    }

LABEL_9:
    v7 = CFDataCreate(v4, v3 + 8, v6);
    v8 = CFNumberCreate(v4, kCFNumberSInt32Type, v3);
    CFDictionarySetValue(a1, v8, v7);
    CFRelease(v8);
    CFRelease(v7);
    v9 = v3[1];
    v3 = (v3 + v9 + 8);
    v5 = (v5 - v9 - 8);
    if (v5 <= 8)
    {
      return 0;
    }
  }
}

void _getRoamProfilePerBand(int a1, char *a2, __CFDictionary *a3)
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2 + 4);
  CFDictionarySetValue(a3, @"ROAM_PROF_BAND", v7);
  CFRelease(v7);
  v8 = CFNumberCreate(v6, kCFNumberSInt32Type, a2 + 8);
  CFDictionarySetValue(a3, @"ROAM_PROF_NUM", v8);
  CFRelease(v8);
  if (*(a2 + 2))
  {
    Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v10 = Mutable;
      theDict = a3;
      if (*(a2 + 2))
      {
        v11 = 0;
        v12 = a2 + 40;
        while (1)
        {
          v13 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v13)
          {
            break;
          }

          v14 = v13;
          v15 = CFNumberCreate(v6, kCFNumberSInt32Type, v12 - 24);
          CFDictionarySetValue(v14, @"ROAM_PROF_ROAM_FLAGS", v15);
          CFRelease(v15);
          v16 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 20);
          CFDictionarySetValue(v14, @"ROAM_PROF_ROAM_TRIGGER", v16);
          CFRelease(v16);
          v17 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 19);
          CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_LOWER", v17);
          CFRelease(v17);
          v18 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 18);
          CFDictionarySetValue(v14, @"ROAM_PROF_ROAM_DELTA", v18);
          CFRelease(v18);
          v19 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 15);
          CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_THRESH_2G", v19);
          CFRelease(v19);
          v20 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 14);
          CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_DELTA_2G", v20);
          CFRelease(v20);
          v21 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 13);
          CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_THRESH_5G", v21);
          CFRelease(v21);
          v22 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 12);
          CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_DELTA_5G", v22);
          CFRelease(v22);
          if (a1)
          {
            v23 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 11);
            CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_THRESH_6G", v23);
            CFRelease(v23);
            v24 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 10);
            CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_DELTA_6G", v24);
            CFRelease(v24);
          }

          v25 = *(a2 + 1);
          if (v25 == 2)
          {
            if (*(v12 - 17) != 127)
            {
              v26 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 17);
              CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_THRESH_2G", v26);
              CFRelease(v26);
            }

            if (*(v12 - 16) != 127)
            {
              v27 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 16);
              CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_DELTA_2G", v27);
              CFRelease(v27);
            }

            v25 = *(a2 + 1);
          }

          if (v25 == 8 || v25 == 4)
          {
            if (*(v12 - 17) != 127)
            {
              v28 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 17);
              CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_THRESH_5G", v28);
              CFRelease(v28);
            }

            if (*(v12 - 16) != 127)
            {
              v29 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 16);
              CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_DELTA_5G", v29);
              CFRelease(v29);
            }
          }

          v30 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 17);
          CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_THRESH", v30);
          CFRelease(v30);
          v31 = CFNumberCreate(v6, kCFNumberSInt8Type, v12 - 16);
          CFDictionarySetValue(v14, @"ROAM_PROF_RSSI_BOOST_DELTA", v31);
          CFRelease(v31);
          v32 = CFNumberCreate(v6, kCFNumberSInt16Type, v12 - 8);
          CFDictionarySetValue(v14, @"ROAM_PROF_NFSCAN", v32);
          CFRelease(v32);
          v33 = CFNumberCreate(v6, kCFNumberSInt16Type, v12 - 6);
          CFDictionarySetValue(v14, @"ROAM_PROF_FULLSCAN_PERIOD", v33);
          CFRelease(v33);
          v34 = CFNumberCreate(v6, kCFNumberSInt16Type, v12 - 4);
          CFDictionarySetValue(v14, @"ROAM_PROF_INIT_SCAN_PERIOD", v34);
          CFRelease(v34);
          v35 = CFNumberCreate(v6, kCFNumberSInt16Type, v12 - 2);
          CFDictionarySetValue(v14, @"ROAM_PROF_BACKOFF_MULTIPLIER", v35);
          CFRelease(v35);
          v36 = CFNumberCreate(v6, kCFNumberSInt16Type, v12);
          CFDictionarySetValue(v14, @"ROAM_PROF_MAX_SCAN_PERIOD", v36);
          CFRelease(v36);
          CFArrayAppendValue(v10, v14);
          CFRelease(v14);
          if (v11 <= 2)
          {
            ++v11;
            v12 += 28;
            if (v11 < *(a2 + 2))
            {
              continue;
            }
          }

          goto LABEL_22;
        }
      }

      else
      {
LABEL_22:
        CFDictionarySetValue(theDict, @"ROAM_PROF", v10);
      }

      CFRelease(v10);
    }
  }
}

void _stopHostAPD(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2088))
  {
    goto LABEL_29;
  }

  number = 0;
  valuePtr = 0;
  v2 = Apple80211CopyValue();
  if (v2)
  {
    v15 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "_stopHostAPD";
      v22 = 1024;
      v23 = v15;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s error:%d \n", buf, 0x12u);
    }

    goto LABEL_21;
  }

  if (!CFNumberGetValue(number, kCFNumberIntType, &valuePtr))
  {
LABEL_21:
    v13 = *(a1 + 2088);
    if (v13)
    {
      xpc_connection_cancel(v13);
      xpc_release(*(a1 + 2088));
      *(a1 + 2088) = 0;
    }

    goto LABEL_23;
  }

  if ((valuePtr & 8) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "_stopHostAPD";
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s hostap is up in the driver, try to recover hostapd xpc connection\n", buf, 0xCu);
    }

    mach_service = xpc_connection_create_mach_service("com.apple.wifi.hostapd", 0, 2uLL);
    *(a1 + 2088) = mach_service;
    if (mach_service)
    {
      xpc_connection_set_event_handler(mach_service, &__block_literal_global_4016);
      xpc_connection_activate(*(a1 + 2088));
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "_stopHostAPD";
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s failed to start hostapd\n", buf, 0xCu);
    }
  }

  CFRelease(number);
  if (*(a1 + 2088))
  {
LABEL_29:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "_stopHostAPD";
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Trying to terminate hostapd process\n", buf, 0xCu);
    }

    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      v17 = 1;
      v7 = CFNumberCreate(v4, kCFNumberSInt8Type, &v17);
      CFDictionarySetValue(v6, @"Terminate", v7);
      CFRelease(v7);
      v8 = _CFXPCCreateXPCObjectFromCFObject();
      if (v8)
      {
        v9 = v8;
        v10 = dispatch_semaphore_create(0);
        v11 = *(a1 + 2088);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 0x40000000;
        handler[2] = ___stopHostAPD_block_invoke_4020;
        handler[3] = &__block_descriptor_tmp_4021;
        handler[4] = v10;
        xpc_connection_send_message_with_reply(v11, v9, 0, handler);
        v12 = dispatch_time(0, 1000000000);
        if (dispatch_semaphore_wait(v10, v12) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v21 = "_stopHostAPD";
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Timeout waiting to terminate hostapd process\n", buf, 0xCu);
        }

        CFRelease(v6);
        xpc_release(v9);
        if (v10)
        {
          dispatch_release(v10);
        }
      }

      else
      {
        CFRelease(v6);
      }
    }

    goto LABEL_21;
  }

LABEL_23:
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t _getBGScanData(const __CFDictionary *a1, _DWORD *a2, uint64_t a3)
{
  v70 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_92;
  }

  v3 = a2;
  bzero(a2, 0x2030uLL);
  *v3 = 1;
  v5 = CFDictionaryGetValue(a1, @"SCAN_SSID_LIST");
  v59 = a1;
  v60 = v3;
  if (v5)
  {
    v6 = v5;
    memset(buffer, 170, 18);
    value = 0;
    valuePtr = 0;
    v65 = 0;
    BOOLean = 0;
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = *MEMORY[0x277CBED28];
      v61 = (v3 + 2);
      v62 = (v3 + 227);
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
        if (!ValueAtIndex)
        {
          goto LABEL_92;
        }

        v14 = ValueAtIndex;
        v15 = CFDictionaryGetValue(ValueAtIndex, @"SSID_STR");
        if (!v15 || (v16 = v15, CFEqual(v15, &stru_2866A9700)) || v10 > 15)
        {
          if (v11 <= 359)
          {
            v23 = CFDictionaryGetValue(v14, @"BSSID");
            if (!v23)
            {
              goto LABEL_92;
            }

            if (!CFStringGetCString(v23, buffer, 18, 0x8000100u))
            {
              goto LABEL_92;
            }

            v24 = ether_aton(buffer);
            if (!v24)
            {
              goto LABEL_92;
            }

            v25 = *v24->octet;
            v26 = &v62[8 * v11 - v11];
            *(v26 + 4) = *&v24->octet[4];
            *v26 = v25;
            v27 = CFDictionaryGetValue(v14, @"ENTRY_NETWORK");
            BoolRef = makeBoolRef(v27);
            v29 = CFDictionaryGetValue(v14, @"EXIT_NETWORK");
            v30 = makeBoolRef(v29);
            if (!BoolRef)
            {
              goto LABEL_95;
            }

            if (CFEqual(BoolRef, v12) && v30 && CFEqual(v30, v12))
            {
              v31 = 3;
LABEL_40:
              *(v26 + 6) |= v31;
              ++v11;
              goto LABEL_41;
            }

            if (!CFEqual(BoolRef, v12))
            {
LABEL_95:
              if (v30 && CFEqual(v30, v12))
              {
                v31 = 2;
                goto LABEL_40;
              }
            }

            v31 = 1;
            goto LABEL_40;
          }
        }

        else
        {
          Length = CFStringGetLength(v16);
          if (Length > 32)
          {
            goto LABEL_92;
          }

          v18 = Length;
          v19 = &v61[56 * v10];
          *v19 = 1;
          usedBufLen = 0;
          if (CFStringGetLength(v16))
          {
            v71.location = 0;
            v71.length = v18;
            if (!CFStringGetBytes(v16, v71, 0x8000100u, 0, 0, (v19 + 8), 32, &usedBufLen))
            {
              goto LABEL_92;
            }
          }

          *(v19 + 4) = usedBufLen;
          __getNetworkSecurityParams(v14, v19, a3);
          v20 = CFDictionaryGetValue(v14, @"HIDDEN_NETWORK");
          v21 = makeBoolRef(v20);
          v22 = v21 && CFEqual(v21, v12);
          *(v19 + 49) = v22;
          if (CFDictionaryGetValueIfPresent(v14, @"BGSCANRSSITHRES", &value) && value)
          {
            CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
            *(v19 + 52) = valuePtr;
          }

          if (CFDictionaryGetValueIfPresent(v14, @"HOTSPOT", &BOOLean) && BOOLean)
          {
            *(v19 + 48) = *(v19 + 48) & 0xFB | (4 * (CFBooleanGetValue(BOOLean) & 1));
          }

          if (CFDictionaryGetValueIfPresent(v14, @"DISALLOW_PNO", &v65) && v65)
          {
            *(v19 + 48) = *(v19 + 48) & 0xF7 | (8 * (CFBooleanGetValue(v65) & 1));
          }

          ++v10;
        }

LABEL_41:
        if (v8 == ++v9)
        {
          goto LABEL_44;
        }
      }
    }

    v11 = 0;
    v10 = 0;
LABEL_44:
    v32 = 16;
    if (v10 < 16)
    {
      v32 = v10;
    }

    a1 = v59;
    v3 = v60;
    v60[1] = v32;
    v33 = 360;
    if (v11 < 360)
    {
      v33 = v11;
    }

    v60[226] = v33;
  }

  v34 = CFDictionaryGetValue(a1, @"SCAN_CHANNELS");
  if (v34)
  {
    v35 = v34;
    LODWORD(value) = -1431655766;
    LODWORD(BOOLean) = -1431655766;
    v36 = CFArrayGetCount(v34);
    if (v36 >= 1)
    {
      v37 = 0;
      v38 = 0;
      v39 = (v3 + 858);
      if ((v36 - 1) >= 0x18F)
      {
        v40 = 399;
      }

      else
      {
        v40 = v36 - 1;
      }

      while (1)
      {
        v41 = CFArrayGetValueAtIndex(v35, v38);
        if (!v41)
        {
          goto LABEL_92;
        }

        v42 = v41;
        v43 = CFDictionaryGetValue(v41, @"CHANNEL");
        if (!v43 || !CFNumberGetValue(v43, kCFNumberSInt32Type, &value))
        {
          goto LABEL_92;
        }

        v44 = CFDictionaryGetValue(v42, @"CHANNEL_FLAGS");
        if (v44)
        {
          if (!CFNumberGetValue(v44, kCFNumberSInt32Type, &BOOLean))
          {
            goto LABEL_92;
          }
        }

        else
        {
          v45 = value;
          if (value >= 0xE)
          {
            v46 = 18;
          }

          else
          {
            v46 = 10;
          }

          LODWORD(BOOLean) = v46;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buffer = 67109376;
            *&buffer[4] = v45;
            *&buffer[8] = 1024;
            *&buffer[10] = v46;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Missing channel flags for background scan channel (%u) fake flags %x", buffer, 0xEu);
          }
        }

        v47 = BOOLean;
        if ((BOOLean & 0x2000) == 0)
        {
          break;
        }

        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

          *buffer = 67109120;
          *&buffer[4] = value;
          v54 = MEMORY[0x277D86220];
          v55 = "Excluding 6GHz scan channel (%u)";
          goto LABEL_80;
        }

        v49 = _os_feature_enabled_impl();
        v48 = value;
        v47 = BOOLean;
        if (v49)
        {
          goto LABEL_74;
        }

        if ((~BOOLean & 0x2002) == 0)
        {
          v50 = 0;
          do
          {
            v51 = k6GHzPSC[v50];
            if (v50 > 0xD)
            {
              break;
            }

            ++v50;
          }

          while (v51 != value);
          if (v51 == value)
          {
            goto LABEL_74;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buffer = 67109120;
          *&buffer[4] = v48;
          v54 = MEMORY[0x277D86220];
          v55 = "Excluding 6GHz non-PSC scan channel (%u)";
LABEL_80:
          _os_log_error_impl(&dword_254882000, v54, OS_LOG_TYPE_ERROR, v55, buffer, 8u);
        }

LABEL_75:
        if (v38++ == v40)
        {
          a1 = v59;
          v3 = v60;
          goto LABEL_84;
        }
      }

      v48 = value;
LABEL_74:
      v52 = &v39[12 * v37];
      *v52 = 1;
      *(v52 + 1) = v48;
      *(v52 + 2) = v47;
      ++v37;
      goto LABEL_75;
    }

    LODWORD(v37) = 0;
LABEL_84:
    v3[857] = v37;
  }

  v56 = CFDictionaryGetValue(a1, @"BGSCAN_CACHE");
  if (v56)
  {
    *buffer = 0;
    if (!CFNumberGetValue(v56, kCFNumberSInt32Type, buffer))
    {
      goto LABEL_92;
    }

    v3[2058] = *buffer;
  }

  result = CFDictionaryGetValue(a1, @"BGSCAN_CACHE_WSB_ROLLOVER");
  if (result)
  {
    *buffer = 0;
    if (CFNumberGetValue(result, kCFNumberSInt32Type, buffer))
    {
      result = 0;
      *(v3 + 8236) = v3[2059] & 0xFE | buffer[0] & 1;
      goto LABEL_91;
    }

LABEL_92:
    result = 4294963396;
  }

LABEL_91:
  v58 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _setRoamProfile(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v5 = *(a1 + 99);
  result = CFDictionaryGetValue(theDict, @"APPLE80211KEY_ROAM_PROF_2G");
  if (result)
  {
    v7 = (v5 >> 6) & 1;
    _setRoamProfilePerBand(v7, v10, result);
    result = CFDictionaryGetValue(theDict, @"APPLE80211KEY_ROAM_PROF_5G");
    if (result)
    {
      _setRoamProfilePerBand(v7, v11, result);
      Value = CFDictionaryGetValue(theDict, @"APPLE80211KEY_ROAM_PROF_6G");
      if (Value)
      {
        _setRoamProfilePerBand(v7, v12, Value);
      }

      *(a2 + 24) = 384;
      *(a2 + 32) = v10;
      result = Apple80211RawSet();
      if (result)
      {
        result = *__error();
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _setUCMProfile(int a1, uint64_t a2, CFDictionaryRef theDict)
{
  v43 = *MEMORY[0x277D85DE8];
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  valuePtr = 0u;
  Value = CFDictionaryGetValue(theDict, @"UCM_VERSION");
  if (!Value)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr))
  {
    goto LABEL_62;
  }

  v6 = CFDictionaryGetValue(theDict, @"UCM_PROFILE_INDEX");
  if (!v6)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v6, kCFNumberSInt8Type, &valuePtr + 4))
  {
    goto LABEL_62;
  }

  v7 = CFDictionaryGetValue(theDict, @"UCM_MODE_STRONG_WL_BT");
  if (!v7)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v7, kCFNumberSInt8Type, &valuePtr + 5))
  {
    goto LABEL_62;
  }

  v8 = CFDictionaryGetValue(theDict, @"UCM_MODE_WEAK_WL");
  if (!v8)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v8, kCFNumberSInt8Type, &valuePtr + 6))
  {
    goto LABEL_62;
  }

  v9 = CFDictionaryGetValue(theDict, @"UCM_MODE_WEAK_BT");
  if (!v9)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v9, kCFNumberSInt8Type, &valuePtr + 7))
  {
    goto LABEL_62;
  }

  v10 = CFDictionaryGetValue(theDict, @"UCM_MODE_WEAK_WL_BT");
  if (!v10)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v10, kCFNumberSInt8Type, &valuePtr + 8))
  {
    goto LABEL_62;
  }

  v11 = CFDictionaryGetValue(theDict, @"UCM_MODE_WL_HI_LO_RSSI_THRESH");
  if (!v11)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v11, kCFNumberSInt8Type, (&valuePtr | 9)))
  {
    goto LABEL_62;
  }

  v12 = CFDictionaryGetValue(theDict, @"UCM_MODE_WL_LO_HI_RSSI_THRESH");
  if (!v12)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v12, kCFNumberSInt8Type, (&valuePtr | 0xA)))
  {
    goto LABEL_62;
  }

  v13 = CFDictionaryGetValue(theDict, @"UCM_MODE_BT_HI_LO_RSSI_THRESH");
  if (!v13)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v13, kCFNumberSInt8Type, (&valuePtr | 0xB)))
  {
    goto LABEL_62;
  }

  v14 = CFDictionaryGetValue(theDict, @"UCM_MODE_BT_LO_HI_RSSI_THRESH");
  if (!v14)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v14, kCFNumberSInt8Type, (&valuePtr | 0xC)))
  {
    goto LABEL_62;
  }

  v15 = CFDictionaryGetValue(theDict, @"UCM_DESENSE_WL_HI_LO_RSSI_THRESH");
  if (!v15)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v15, kCFNumberSInt8Type, (&valuePtr | 0xD)))
  {
    goto LABEL_62;
  }

  v16 = CFDictionaryGetValue(theDict, @"UCM_DESENSE_WL_LO_HI_RSSI_THRESH");
  if (!v16)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v16, kCFNumberSInt8Type, (&valuePtr | 0xE)))
  {
    goto LABEL_62;
  }

  v17 = CFDictionaryGetValue(theDict, @"UCM_ACK_PWR_WL_HI_LO_RSSI_THRESH");
  if (!v17)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v17, kCFNumberSInt8Type, (&valuePtr | 0xF)))
  {
    goto LABEL_62;
  }

  v18 = CFDictionaryGetValue(theDict, @"UCM_ACK_PWR_WL_LO_HI_RSSI_THRESH");
  if (!v18)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v18, kCFNumberSInt8Type, v41))
  {
    goto LABEL_62;
  }

  v19 = CFDictionaryGetValue(theDict, @"UCM_TX_PWR_WL_HI_LO_RSSI_THRESH");
  if (!v19)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v19, kCFNumberSInt8Type, v41 + 1))
  {
    goto LABEL_62;
  }

  v20 = CFDictionaryGetValue(theDict, @"UCM_TX_PWR_WL_LO_HI_RSSI_THRESH");
  if (!v20)
  {
    goto LABEL_62;
  }

  if (!CFNumberGetValue(v20, kCFNumberSInt8Type, v41 + 2))
  {
    goto LABEL_62;
  }

  if (valuePtr == 2)
  {
    v21 = CFDictionaryGetValue(theDict, @"UCM_HYBRID_ANT_CORE_CONFIG");
    if (!v21 || !CFNumberGetValue(v21, kCFNumberSInt8Type, v41 + 3))
    {
      goto LABEL_62;
    }
  }

  v39 = a2;
  v22 = CFDictionaryGetValue(theDict, @"UCM_CHAIN_ATTR");
  BYTE3(valuePtr) = 0;
  if (v22)
  {
    v23 = v22;
    Count = CFArrayGetCount(v22);
    if (Count <= 5)
    {
      v25 = Count;
      if (Count >= 1)
      {
        v26 = 0;
        v27 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v23, v27);
          if (!ValueAtIndex)
          {
            result = 4294963395;
            goto LABEL_61;
          }

          v29 = ValueAtIndex;
          if (valuePtr - 1 > 1)
          {
            if (valuePtr != 3)
            {
              goto LABEL_50;
            }

            v32 = CFDictionaryGetValue(ValueAtIndex, @"UCM_DESENSE_STRONG_RSSI");
            if (!v32)
            {
              goto LABEL_62;
            }

            if (!CFNumberGetValue(v32, kCFNumberSInt8Type, v41 + v26 + 5))
            {
              goto LABEL_62;
            }

            v30 = CFDictionaryGetValue(v29, @"UCM_DESENSE_WEAK_RSSI");
            if (!v30)
            {
              goto LABEL_62;
            }

            v31 = v41 + v26 + 6;
          }

          else
          {
            v30 = CFDictionaryGetValue(ValueAtIndex, @"UCM_DESENSE_LEVEL");
            if (!v30)
            {
              goto LABEL_62;
            }

            v31 = v41 + v26 + 4;
          }

          if (!CFNumberGetValue(v30, kCFNumberSInt8Type, v31))
          {
            goto LABEL_62;
          }

LABEL_50:
          v33 = CFDictionaryGetValue(v29, @"UCM_ACK_PWR_STRONG_RSSI");
          if (!v33)
          {
            goto LABEL_62;
          }

          if (!CFNumberGetValue(v33, kCFNumberSInt8Type, v41 + v26 + 7))
          {
            goto LABEL_62;
          }

          v34 = CFDictionaryGetValue(v29, @"UCM_ACK_PWR_WEAK_RSSI");
          if (!v34)
          {
            goto LABEL_62;
          }

          if (!CFNumberGetValue(v34, kCFNumberSInt8Type, v41 + v26 + 8))
          {
            goto LABEL_62;
          }

          v35 = CFDictionaryGetValue(v29, @"UCM_TX_PWR_STRONG_RSSI");
          if (!v35)
          {
            goto LABEL_62;
          }

          if (!CFNumberGetValue(v35, kCFNumberSInt8Type, v41 + v26 + 9))
          {
            goto LABEL_62;
          }

          v36 = CFDictionaryGetValue(v29, @"UCM_TX_PWR_WEAK_RSSI");
          if (!v36 || !CFNumberGetValue(v36, kCFNumberSInt8Type, v41 + v26 + 10))
          {
            goto LABEL_62;
          }

          ++BYTE3(valuePtr);
          ++v27;
          v26 += 7;
          if (v25 == v27)
          {
            goto LABEL_59;
          }
        }
      }

      goto LABEL_59;
    }

LABEL_62:
    result = 4294963396;
    goto LABEL_61;
  }

LABEL_59:
  *(v39 + 24) = 56;
  *(v39 + 32) = &valuePtr;
  result = Apple80211IOCTLSetWrapper();
  if (result)
  {
    result = *__error();
  }

LABEL_61:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _setUCMExtProfile(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v162 = *MEMORY[0x277D85DE8];
  v5 = malloc_type_malloc(0x2DuLL, 0x10000403289E3B0uLL);
  if (!v5)
  {
    v146 = 4294963396;
    goto LABEL_127;
  }

  v6 = v5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v155 = "_setUCMExtProfile";
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): Entry\n", buf, 0xCu);
  }

  Value = CFDictionaryGetValue(a3, @"UCM_EXT_VERSION");
  if (Value && CFNumberGetValue(Value, kCFNumberSInt8Type, v6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v6;
      *buf = 136315394;
      v155 = "_setUCMExtProfile";
      v156 = 1024;
      LODWORD(v157) = v8;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): Version %d\n", buf, 0x12u);
    }

    v9 = CFDictionaryGetValue(a3, @"UCM_EXT_PROFILE_INDEX");
    if (v9 && CFNumberGetValue(v9, kCFNumberSInt8Type, v6 + 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v6[1];
        *buf = 136315394;
        v155 = "_setUCMExtProfile";
        v156 = 1024;
        LODWORD(v157) = v10;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): Index %d\n", buf, 0x12u);
      }

      v11 = CFDictionaryGetValue(a3, @"UCM_EXT_WIFI_RSSI_NUM_RANGES");
      if (v11 && CFNumberGetValue(v11, kCFNumberSInt8Type, v6 + 2))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v12 = v6[2];
          *buf = 136315394;
          v155 = "_setUCMExtProfile";
          v156 = 1024;
          LODWORD(v157) = v12;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): WiFi NUM_RANGES %d\n", buf, 0x12u);
        }

        v13 = CFDictionaryGetValue(a3, @"UCM_EXT_WIFI_HI_LO_RSSI_THRESH_ARR");
        if (v13)
        {
          v14 = v13;
          Count = CFArrayGetCount(v13);
          if (Count)
          {
            v16 = Count;
            if (Count < v6[2])
            {
              v17 = Count - 1;
              if (Count < 1)
              {
LABEL_23:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v21 = v6[3];
                  v22 = v6[v17 + 3];
                  *buf = 136315906;
                  v155 = "_setUCMExtProfile";
                  v156 = 2048;
                  v157 = v16 - 1;
                  v158 = 1024;
                  v159 = v21;
                  v160 = 1024;
                  v161 = v22;
                  _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): WiFi HI_LO RSSI[0]...RSSI[%ld] = %d...%d\n", buf, 0x22u);
                }

                v23 = CFDictionaryGetValue(a3, @"UCM_EXT_WIFI_LO_HI_RSSI_THRESH_ARR");
                if (v23)
                {
                  v24 = v23;
                  v25 = CFArrayGetCount(v23);
                  if (v25)
                  {
                    v26 = v25;
                    if (v25 < v6[2])
                    {
                      v27 = v25 - 1;
                      if (v25 < 1)
                      {
LABEL_32:
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          v31 = v6[5];
                          v32 = v6[v27 + 5];
                          *buf = 136315906;
                          v155 = "_setUCMExtProfile";
                          v156 = 2048;
                          v157 = v26 - 1;
                          v158 = 1024;
                          v159 = v31;
                          v160 = 1024;
                          v161 = v32;
                          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): WiFi LO_HI RSSI[0]...RSSI[%ld] = %d...%d\n", buf, 0x22u);
                        }

                        v33 = CFDictionaryGetValue(a3, @"UCM_EXT_BT_RSSI_NUM_RANGES");
                        if (v33 && CFNumberGetValue(v33, kCFNumberSInt8Type, v6 + 7))
                        {
                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            v34 = v6[7];
                            *buf = 136315394;
                            v155 = "_setUCMExtProfile";
                            v156 = 1024;
                            LODWORD(v157) = v34;
                            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): BT NUM_RANGES %d\n", buf, 0x12u);
                          }

                          v35 = CFDictionaryGetValue(a3, @"UCM_EXT_BT_HI_LO_RSSI_THRESH_ARR");
                          if (v35)
                          {
                            v36 = v35;
                            v37 = CFArrayGetCount(v35);
                            if (v37)
                            {
                              v38 = v37;
                              if (v37 < v6[7])
                              {
                                v39 = v37 - 1;
                                if (v37 < 1)
                                {
LABEL_45:
                                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                  {
                                    v43 = v6[8];
                                    v44 = v6[v39 + 8];
                                    *buf = 136315906;
                                    v155 = "_setUCMExtProfile";
                                    v156 = 2048;
                                    v157 = v38 - 1;
                                    v158 = 1024;
                                    v159 = v43;
                                    v160 = 1024;
                                    v161 = v44;
                                    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): BT HI_LO RSSI[0]...RSSI[%ld] = %d...%d\n", buf, 0x22u);
                                  }

                                  v45 = CFDictionaryGetValue(a3, @"UCM_EXT_BT_LO_HI_RSSI_THRESH_ARR");
                                  if (v45)
                                  {
                                    v46 = v45;
                                    v47 = CFArrayGetCount(v45);
                                    if (v47)
                                    {
                                      v48 = v47;
                                      if (v47 < v6[7])
                                      {
                                        v49 = v47 - 1;
                                        if (v47 < 1)
                                        {
LABEL_54:
                                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                          {
                                            v53 = v6[10];
                                            v54 = v6[v49 + 10];
                                            *buf = 136315906;
                                            v155 = "_setUCMExtProfile";
                                            v156 = 2048;
                                            v157 = v48 - 1;
                                            v158 = 1024;
                                            v159 = v53;
                                            v160 = 1024;
                                            v161 = v54;
                                            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): BT HI_LO RSSI[0]...RSSI[%ld] = %d...%d\n", buf, 0x22u);
                                          }

                                          v153 = a2;
                                          v55 = CFDictionaryGetValue(a3, @"UCM_EXT_COEX_MODE_ARR");
                                          if (v55)
                                          {
                                            v56 = v55;
                                            v57 = CFArrayGetCount(v55);
                                            if (v57 < 1)
                                            {
LABEL_64:
                                              v67 = CFDictionaryGetValue(a3, @"UCM_EXT_COEX_DESENSE_ARR");
                                              if (v67)
                                              {
                                                v68 = v67;
                                                v69 = CFArrayGetCount(v67);
                                                if (v69 < 1)
                                                {
LABEL_72:
                                                  v79 = CFDictionaryGetValue(a3, @"UCM_EXT_TX_PWR_RSSI_NUM_RANGES");
                                                  if (v79)
                                                  {
                                                    if (CFNumberGetValue(v79, kCFNumberSInt8Type, v6 + 30))
                                                    {
                                                      v80 = CFDictionaryGetValue(a3, @"UCM_EXT_ACK_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR");
                                                      if (v80)
                                                      {
                                                        v81 = v80;
                                                        v82 = CFArrayGetCount(v80);
                                                        v83 = v82 - 1;
                                                        if (v82 < 1)
                                                        {
LABEL_79:
                                                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                          {
                                                            v88 = v6[31];
                                                            v89 = v6[v83 + 31];
                                                            *buf = 136315906;
                                                            v155 = "_setUCMExtProfile";
                                                            v156 = 2048;
                                                            v157 = v83;
                                                            v158 = 1024;
                                                            v159 = v88;
                                                            v160 = 1024;
                                                            v161 = v89;
                                                            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): ACK TX PWR HI_LO RSSI[0]...RSSI[%ld] = %d...%d\n", buf, 0x22u);
                                                          }

                                                          v90 = CFDictionaryGetValue(a3, @"UCM_EXT_ACK_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR");
                                                          if (v90)
                                                          {
                                                            v91 = v90;
                                                            v92 = CFArrayGetCount(v90);
                                                            v93 = v92 - 1;
                                                            if (v92 < 1)
                                                            {
LABEL_86:
                                                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                              {
                                                                v98 = v6[33];
                                                                v99 = v6[v93 + 33];
                                                                *buf = 136315906;
                                                                v155 = "_setUCMExtProfile";
                                                                v156 = 2048;
                                                                v157 = v93;
                                                                v158 = 1024;
                                                                v159 = v98;
                                                                v160 = 1024;
                                                                v161 = v99;
                                                                _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): ACK TX PWR LO_HI RSSI[0]...RSSI[%ld] = %d...%d\n", buf, 0x22u);
                                                              }

                                                              v100 = CFDictionaryGetValue(a3, @"UCM_EXT_DATA_TX_PWR_WIFI_HI_LO_RSSI_THRESH_ARR");
                                                              if (v100)
                                                              {
                                                                v101 = v100;
                                                                v102 = CFArrayGetCount(v100);
                                                                if (v102)
                                                                {
                                                                  v103 = v102;
                                                                  v104 = v102 - 1;
                                                                  if (v102 < 1)
                                                                  {
LABEL_94:
                                                                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                    {
                                                                      v108 = v6[35];
                                                                      v109 = v6[v104 + 35];
                                                                      *buf = 136315906;
                                                                      v155 = "_setUCMExtProfile";
                                                                      v156 = 2048;
                                                                      v157 = v104;
                                                                      v158 = 1024;
                                                                      v159 = v108;
                                                                      v160 = 1024;
                                                                      v161 = v109;
                                                                      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): DATA TX PWR HI_LO RSSI[0]...RSSI[%ld] = %d...%d\n", buf, 0x22u);
                                                                    }

                                                                    v110 = CFDictionaryGetValue(a3, @"UCM_EXT_DATA_TX_PWR_WIFI_LO_HI_RSSI_THRESH_ARR");
                                                                    if (v110)
                                                                    {
                                                                      v111 = v110;
                                                                      v112 = CFArrayGetCount(v110);
                                                                      if (v112)
                                                                      {
                                                                        v113 = v112;
                                                                        v114 = v112 - 1;
                                                                        if (v112 < 1)
                                                                        {
LABEL_102:
                                                                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                          {
                                                                            v118 = v6[36];
                                                                            v119 = v6[v114 + 36];
                                                                            *buf = 136315906;
                                                                            v155 = "_setUCMExtProfile";
                                                                            v156 = 2048;
                                                                            v157 = v114;
                                                                            v158 = 1024;
                                                                            v159 = v118;
                                                                            v160 = 1024;
                                                                            v161 = v119;
                                                                            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): DATA TX PWR LO_HI RSSI[0]...RSSI[%ld] = %d...%d\n", buf, 0x22u);
                                                                          }

                                                                          v120 = CFDictionaryGetValue(a3, @"UCM_EXT_BT_COEX_CHAIN_ATTR_ARR");
                                                                          if (v120)
                                                                          {
                                                                            v121 = v120;
                                                                            v151 = CFArrayGetCount(v120);
                                                                            if (v151 < 1)
                                                                            {
LABEL_123:
                                                                              *(v153 + 24) = 45;
                                                                              *(v153 + 32) = v6;
                                                                              if (Apple80211IOCTLSetWrapper())
                                                                              {
                                                                                v146 = *__error();
                                                                              }

                                                                              else
                                                                              {
                                                                                v146 = 0;
                                                                              }

                                                                              goto LABEL_126;
                                                                            }

                                                                            v122 = 0;
                                                                            v123 = v6 + 37;
                                                                            v152 = v6 + 39;
                                                                            v124 = @"UCM_EXT_ACK_TX_PWR_ARR";
                                                                            v150 = v6 + 37;
                                                                            while (1)
                                                                            {
                                                                              ValueAtIndex = CFArrayGetValueAtIndex(v121, v122);
                                                                              if (!ValueAtIndex)
                                                                              {
                                                                                break;
                                                                              }

                                                                              v126 = ValueAtIndex;
                                                                              v127 = v124;
                                                                              v128 = CFDictionaryGetValue(ValueAtIndex, v124);
                                                                              if (!v128)
                                                                              {
                                                                                break;
                                                                              }

                                                                              v129 = v128;
                                                                              v130 = CFArrayGetCount(v128);
                                                                              if (v130 >= 1)
                                                                              {
                                                                                v131 = v130;
                                                                                v132 = 0;
                                                                                v149 = &v150[4 * v122];
                                                                                v133 = v123;
                                                                                while (1)
                                                                                {
                                                                                  v134 = CFArrayGetValueAtIndex(v129, v132);
                                                                                  if (!CFNumberGetValue(v134, kCFNumberSInt8Type, v133))
                                                                                  {
                                                                                    goto LABEL_125;
                                                                                  }

                                                                                  ++v132;
                                                                                  ++v133;
                                                                                  if (v131 == v132)
                                                                                  {
                                                                                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                                    {
                                                                                      v135 = *v149;
                                                                                      v136 = v149[v131 - 1];
                                                                                      *buf = 136315906;
                                                                                      v155 = "_setUCMExtProfile";
                                                                                      v156 = 2048;
                                                                                      v157 = v122;
                                                                                      v158 = 1024;
                                                                                      v159 = v135;
                                                                                      v160 = 1024;
                                                                                      v161 = v136;
                                                                                      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): Chain %ld - ACK TX PWRs %d...%d\n", buf, 0x22u);
                                                                                    }

                                                                                    break;
                                                                                  }
                                                                                }
                                                                              }

                                                                              v137 = CFDictionaryGetValue(v126, @"UCM_EXT_DATA_TX_PWR_ARR");
                                                                              if (!v137)
                                                                              {
                                                                                break;
                                                                              }

                                                                              v138 = v137;
                                                                              v139 = CFArrayGetCount(v137);
                                                                              if (v139 >= 1)
                                                                              {
                                                                                v140 = v139;
                                                                                v141 = 0;
                                                                                v142 = v152;
                                                                                while (1)
                                                                                {
                                                                                  v143 = CFArrayGetValueAtIndex(v138, v141);
                                                                                  if (!CFNumberGetValue(v143, kCFNumberSInt8Type, v142))
                                                                                  {
                                                                                    goto LABEL_125;
                                                                                  }

                                                                                  ++v141;
                                                                                  ++v142;
                                                                                  if (v140 == v141)
                                                                                  {
                                                                                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                                    {
                                                                                      v144 = &v150[4 * v122];
                                                                                      v145 = v144[2];
                                                                                      LODWORD(v144) = v144[v140 + 1];
                                                                                      *buf = 136315906;
                                                                                      v155 = "_setUCMExtProfile";
                                                                                      v156 = 2048;
                                                                                      v157 = v122;
                                                                                      v158 = 1024;
                                                                                      v159 = v145;
                                                                                      v160 = 1024;
                                                                                      v161 = v144;
                                                                                      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s(UCMEXT): Chain %ld - DATA TX PWRs %d...%d\n", buf, 0x22u);
                                                                                    }

                                                                                    break;
                                                                                  }
                                                                                }
                                                                              }

                                                                              ++v122;
                                                                              v123 += 4;
                                                                              v152 += 4;
                                                                              v124 = v127;
                                                                              if (v122 == v151)
                                                                              {
                                                                                goto LABEL_123;
                                                                              }
                                                                            }
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v115 = 0;
                                                                          v116 = (v6 + 36);
                                                                          while (1)
                                                                          {
                                                                            v117 = CFArrayGetValueAtIndex(v111, v115);
                                                                            if (!CFNumberGetValue(v117, kCFNumberSInt8Type, v116))
                                                                            {
                                                                              break;
                                                                            }

                                                                            ++v115;
                                                                            ++v116;
                                                                            if (v113 == v115)
                                                                            {
                                                                              goto LABEL_102;
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v105 = 0;
                                                                    v106 = (v6 + 35);
                                                                    while (1)
                                                                    {
                                                                      v107 = CFArrayGetValueAtIndex(v101, v105);
                                                                      if (!CFNumberGetValue(v107, kCFNumberSInt8Type, v106))
                                                                      {
                                                                        break;
                                                                      }

                                                                      ++v105;
                                                                      ++v106;
                                                                      if (v103 == v105)
                                                                      {
                                                                        goto LABEL_94;
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v94 = v92;
                                                              v95 = 0;
                                                              v96 = (v6 + 33);
                                                              while (1)
                                                              {
                                                                v97 = CFArrayGetValueAtIndex(v91, v95);
                                                                if (!CFNumberGetValue(v97, kCFNumberSInt8Type, v96))
                                                                {
                                                                  break;
                                                                }

                                                                ++v95;
                                                                ++v96;
                                                                if (v94 == v95)
                                                                {
                                                                  goto LABEL_86;
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v84 = v82;
                                                          v85 = 0;
                                                          v86 = (v6 + 31);
                                                          while (1)
                                                          {
                                                            v87 = CFArrayGetValueAtIndex(v81, v85);
                                                            if (!CFNumberGetValue(v87, kCFNumberSInt8Type, v86))
                                                            {
                                                              break;
                                                            }

                                                            ++v85;
                                                            ++v86;
                                                            if (v84 == v85)
                                                            {
                                                              goto LABEL_79;
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  v70 = v69;
                                                  v71 = 0;
                                                  v72 = v6 + 21;
                                                  while (1)
                                                  {
                                                    v73 = CFArrayGetValueAtIndex(v68, v71);
                                                    v74 = CFArrayGetCount(v73);
                                                    if (v74 >= 1)
                                                    {
                                                      break;
                                                    }

LABEL_71:
                                                    ++v71;
                                                    v72 += 3;
                                                    if (v71 == v70)
                                                    {
                                                      goto LABEL_72;
                                                    }
                                                  }

                                                  v75 = v74;
                                                  v76 = 0;
                                                  v77 = v72;
                                                  while (1)
                                                  {
                                                    v78 = CFArrayGetValueAtIndex(v73, v76);
                                                    if (!CFNumberGetValue(v78, kCFNumberSInt8Type, v77))
                                                    {
                                                      break;
                                                    }

                                                    ++v76;
                                                    ++v77;
                                                    if (v75 == v76)
                                                    {
                                                      goto LABEL_71;
                                                    }
                                                  }
                                                }
                                              }
                                            }

                                            else
                                            {
                                              v58 = v57;
                                              v59 = 0;
                                              v60 = v6 + 12;
                                              while (1)
                                              {
                                                v61 = CFArrayGetValueAtIndex(v56, v59);
                                                v62 = CFArrayGetCount(v61);
                                                if (v62 >= 1)
                                                {
                                                  break;
                                                }

LABEL_63:
                                                ++v59;
                                                v60 += 3;
                                                if (v59 == v58)
                                                {
                                                  goto LABEL_64;
                                                }
                                              }

                                              v63 = v62;
                                              v64 = 0;
                                              v65 = v60;
                                              while (1)
                                              {
                                                v66 = CFArrayGetValueAtIndex(v61, v64);
                                                if (!CFNumberGetValue(v66, kCFNumberSInt8Type, v65))
                                                {
                                                  break;
                                                }

                                                ++v64;
                                                ++v65;
                                                if (v63 == v64)
                                                {
                                                  goto LABEL_63;
                                                }
                                              }
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v50 = 0;
                                          v51 = (v6 + 10);
                                          while (1)
                                          {
                                            v52 = CFArrayGetValueAtIndex(v46, v50);
                                            if (!CFNumberGetValue(v52, kCFNumberSInt8Type, v51))
                                            {
                                              break;
                                            }

                                            ++v50;
                                            ++v51;
                                            if (v48 == v50)
                                            {
                                              goto LABEL_54;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }

                                else
                                {
                                  v40 = 0;
                                  v41 = (v6 + 8);
                                  while (1)
                                  {
                                    v42 = CFArrayGetValueAtIndex(v36, v40);
                                    if (!CFNumberGetValue(v42, kCFNumberSInt8Type, v41))
                                    {
                                      break;
                                    }

                                    ++v40;
                                    ++v41;
                                    if (v38 == v40)
                                    {
                                      goto LABEL_45;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      else
                      {
                        v28 = 0;
                        v29 = (v6 + 5);
                        while (1)
                        {
                          v30 = CFArrayGetValueAtIndex(v24, v28);
                          if (!CFNumberGetValue(v30, kCFNumberSInt8Type, v29))
                          {
                            break;
                          }

                          ++v28;
                          ++v29;
                          if (v26 == v28)
                          {
                            goto LABEL_32;
                          }
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v18 = 0;
                v19 = (v6 + 3);
                while (1)
                {
                  v20 = CFArrayGetValueAtIndex(v14, v18);
                  if (!CFNumberGetValue(v20, kCFNumberSInt8Type, v19))
                  {
                    break;
                  }

                  ++v18;
                  ++v19;
                  if (v16 == v18)
                  {
                    goto LABEL_23;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_125:
  v146 = 4294963396;
LABEL_126:
  free(v6);
LABEL_127:
  v147 = *MEMORY[0x277D85DE8];
  return v146;
}

uint64_t _set2GChainDisable(int a1, uint64_t a2, CFDictionaryRef theDict)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 1;
  Value = CFDictionaryGetValue(theDict, @"BTCOEX_2G_CHAIN_DISABLE");
  if (Value && CFNumberGetValue(Value, kCFNumberSInt8Type, v9 + 4) && (v6 = CFDictionaryGetValue(theDict, @"BTCOEX_2G_CHAIN_DISABLE_REASSOC")) != 0 && CFNumberGetValue(v6, kCFNumberSInt8Type, v9 + 5))
  {
    *(a2 + 24) = 8;
    *(a2 + 32) = v9;
    result = Apple80211IOCTLSetWrapper();
    if (result)
    {
      result = *__error();
    }
  }

  else
  {
    result = 4294963396;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _setDeviceOrientation(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (!v5)
  {
    return 4294963396;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(a3, @"APPLE80211KEY_DEVICE_ORIENTATION_VERSION");
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, v6) && (v8 = CFDictionaryGetValue(a3, @"APPLE80211KEY_DEVICE_ORIENTATION_INFO")) != 0 && CFNumberGetValue(v8, kCFNumberSInt32Type, v6 + 4))
  {
    *(a2 + 24) = 8;
    *(a2 + 32) = v6;
    if (Apple80211IOCTLSetWrapper())
    {
      v9 = *__error();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 4294963396;
  }

  free(v6);
  return v9;
}

uint64_t _setAccessoryState(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = malloc_type_malloc(0xCuLL, 0x10000403E1C8BA9uLL);
  if (!v5)
  {
    return 4294963396;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(a3, @"APPLE80211KEY_ACCESSORY_STATE_VERSION");
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, v6) && (v8 = CFDictionaryGetValue(a3, @"APPLE80211KEY_ACCESSORY_TYPE")) != 0 && CFNumberGetValue(v8, kCFNumberSInt32Type, v6 + 4) && (v9 = CFDictionaryGetValue(a3, @"APPLE80211KEY_ACCESSORY_STATUS")) != 0 && CFNumberGetValue(v9, kCFNumberSInt32Type, v6 + 8))
  {
    *(a2 + 24) = 12;
    *(a2 + 32) = v6;
    if (Apple80211IOCTLSetWrapper())
    {
      v10 = *__error();
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 4294963396;
  }

  free(v6);
  return v10;
}

uint64_t _getLQMConfigFromDict(CFDictionaryRef theDict, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v43 = 0;
  valuePtr = 0;
  v41 = 0;
  result = 4294963396;
  if (theDict && a2)
  {
    Value = CFDictionaryGetValue(theDict, @"LQM_UPDATE_INTERVAL");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr))
        {
          *(a2 + 4) = valuePtr;
          v8 = CFDictionaryGetValue(theDict, @"LQM_RSSI_UPDATE_INTERVAL");
          if (v8)
          {
            v9 = v8;
            v10 = CFGetTypeID(v8);
            if (v10 == CFNumberGetTypeID())
            {
              if (CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr))
              {
                *(a2 + 8) = valuePtr;
                v11 = CFDictionaryGetValue(theDict, @"LQM_CHAN_QUAL_UPDATE_INTERVAL");
                if (v11)
                {
                  v12 = v11;
                  v13 = CFGetTypeID(v11);
                  if (v13 == CFNumberGetTypeID())
                  {
                    if (CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr))
                    {
                      *(a2 + 12) = valuePtr;
                      v14 = CFDictionaryGetValue(theDict, @"LQM_GOOD_RSSI_THRESH");
                      if (v14)
                      {
                        v15 = v14;
                        v16 = CFGetTypeID(v14);
                        if (v16 == CFNumberGetTypeID())
                        {
                          if (CFNumberGetValue(v15, kCFNumberSInt8Type, &v43))
                          {
                            *(a2 + 16) = v43;
                            v17 = CFDictionaryGetValue(theDict, @"LQM_RSSI_LEVELS");
                            if (v17)
                            {
                              v18 = v17;
                              Count = CFArrayGetCount(v17);
                              v20 = Count - 1;
                              if (Count < 1)
                              {
LABEL_25:
                                v26 = CFDictionaryGetValue(theDict, @"LQM_CCA_HYSTERISIS");
                                if (v26)
                                {
                                  v27 = v26;
                                  v28 = CFGetTypeID(v26);
                                  if (v28 == CFNumberGetTypeID())
                                  {
                                    if (CFNumberGetValue(v27, kCFNumberSInt8Type, &v41))
                                    {
                                      *(a2 + 24) = v41;
                                      v29 = CFDictionaryGetValue(theDict, @"LQM_CCA_BOUNDS");
                                      if (v29)
                                      {
                                        v30 = v29;
                                        v31 = CFArrayGetCount(v29);
                                        v32 = v31 - 1;
                                        if (v31 < 1)
                                        {
                                          result = 0;
                                          goto LABEL_39;
                                        }

                                        v33 = 0;
                                        v34 = a2 + 25;
                                        if (v32 >= 7)
                                        {
                                          v32 = 7;
                                        }

                                        v35 = v32 + 1;
                                        while (1)
                                        {
                                          v40 = 0;
                                          ValueAtIndex = CFArrayGetValueAtIndex(v30, v33);
                                          if (!ValueAtIndex)
                                          {
                                            break;
                                          }

                                          v37 = ValueAtIndex;
                                          v38 = CFGetTypeID(ValueAtIndex);
                                          if (v38 != CFNumberGetTypeID() || !CFNumberGetValue(v37, kCFNumberSInt8Type, &v40))
                                          {
                                            break;
                                          }

                                          result = 0;
                                          *(v34 + v33++) = v40;
                                          if (v35 == v33)
                                          {
                                            goto LABEL_39;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }

                              else
                              {
                                v21 = 0;
                                if (v20 >= 6)
                                {
                                  v20 = 6;
                                }

                                v22 = v20 + 1;
                                while (1)
                                {
                                  v40 = 0;
                                  v23 = CFArrayGetValueAtIndex(v18, v21);
                                  if (!v23)
                                  {
                                    break;
                                  }

                                  v24 = v23;
                                  v25 = CFGetTypeID(v23);
                                  if (v25 == CFNumberGetTypeID() && CFNumberGetValue(v24, kCFNumberSInt8Type, &v40))
                                  {
                                    *(a2 + 17 + v21) = v40;
                                  }

                                  if (v22 == ++v21)
                                  {
                                    goto LABEL_25;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    result = 4294963396;
  }

LABEL_39:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _getSensingRequest(CFTypeRef cf, uint64_t a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    result = 4294963396;
    goto LABEL_16;
  }

  *(a2 + 16) = 1;
  if (!cf)
  {
    goto LABEL_15;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(cf, @"SENSING_PARAMS_TIMEOUT");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, (a2 + 4));
  }

  v6 = CFDictionaryGetValue(cf, @"SENSING_PARAMS_NUMBER_OF_REPORTS");
  if (v6)
  {
    CFNumberGetValue(v6, kCFNumberSInt32Type, (a2 + 8));
  }

  v7 = CFDictionaryGetValue(cf, @"SENSING_PARAMS_MATCH_FRAME_TYPE");
  if (v7)
  {
    CFNumberGetValue(v7, kCFNumberSInt32Type, (a2 + 12));
  }

  result = CFDictionaryGetValue(cf, @"SENSING_PARAMS_MATCH_MAC_ADDRESS");
  if (result)
  {
    v9 = result;
    memset(v13, 170, 20);
    CFStringGetCString(result, v13, 20, 0x8000100u);
    v10 = ether_aton(v13);
    if (v10)
    {
      v11 = *v10->octet;
      *(a2 + 24) = *&v10->octet[4];
      *(a2 + 20) = v11;
    }

    if (CFStringCompare(v9, @"00:00:00:00:00:00", 0) == kCFCompareEqualTo)
    {
      *(a2 + 16) = 0;
    }

LABEL_15:
    result = 0;
  }

LABEL_16:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void ___stopHostAPD_block_invoke_4020(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2 == MEMORY[0x277D863F8])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "_stopHostAPD_block_invoke";
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s : XPC_ERROR_CONNECTION_INVALID\n", &v5, 0xCu);
    }

    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D85DE8];

    dispatch_semaphore_signal(v2);
  }
}

const __CFNumber *_setRoamProfilePerBand(int a1, char *a2, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, @"ROAM_PROF_BAND");
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberSInt32Type, a2 + 4);
    if (result)
    {
      if ((*(a2 + 1) ^ (*(a2 + 1) - 1)) > *(a2 + 1) - 1)
      {
        result = CFDictionaryGetValue(theDict, @"ROAM_PROF_NUM");
        if (result)
        {
          result = CFNumberGetValue(result, kCFNumberSInt32Type, a2 + 8);
          if (result)
          {
            if ((*(a2 + 2) - 5) >= 0xFFFFFFFC)
            {
              result = CFDictionaryGetValue(theDict, @"ROAM_PROF");
              if (result)
              {
                if (*(a2 + 2))
                {
                  v7 = result;
                  v8 = 0;
                  v9 = a2 + 40;
                  while (1)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_ROAM_FLAGS");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt32Type, v9 - 24);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_ROAM_TRIGGER");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 20);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_RSSI_LOWER");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 19);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_ROAM_DELTA");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 18);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_RSSI_BOOST_THRESH_2G");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 15);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_RSSI_BOOST_DELTA_2G");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 14);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_RSSI_BOOST_THRESH_5G");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 13);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_RSSI_BOOST_DELTA_5G");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 12);
                    if (!result)
                    {
                      return result;
                    }

                    if (a1)
                    {
                      result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_RSSI_BOOST_THRESH_6G");
                      if (!result)
                      {
                        return result;
                      }

                      result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 11);
                      if (!result)
                      {
                        return result;
                      }

                      result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_RSSI_BOOST_DELTA_6G");
                      if (!result)
                      {
                        return result;
                      }

                      result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 10);
                      if (!result)
                      {
                        return result;
                      }
                    }

                    v11 = *(a2 + 1);
                    if (v11 == 8 || v11 == 4)
                    {
                      result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_RSSI_BOOST_THRESH_5G");
                      if (!result)
                      {
                        return result;
                      }

                      result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 17);
                      if (!result)
                      {
                        return result;
                      }

                      v12 = ValueAtIndex;
                      v13 = @"ROAM_PROF_RSSI_BOOST_DELTA_5G";
                    }

                    else
                    {
                      if (v11 != 2)
                      {
                        goto LABEL_42;
                      }

                      result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_RSSI_BOOST_THRESH_2G");
                      if (!result)
                      {
                        return result;
                      }

                      result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 17);
                      if (!result)
                      {
                        return result;
                      }

                      v12 = ValueAtIndex;
                      v13 = @"ROAM_PROF_RSSI_BOOST_DELTA_2G";
                    }

                    result = CFDictionaryGetValue(v12, v13);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt8Type, v9 - 16);
                    if (!result)
                    {
                      return result;
                    }

LABEL_42:
                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_NFSCAN");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt16Type, v9 - 8);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_FULLSCAN_PERIOD");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt16Type, v9 - 6);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_INIT_SCAN_PERIOD");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt16Type, v9 - 4);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_BACKOFF_MULTIPLIER");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt16Type, v9 - 2);
                    if (!result)
                    {
                      return result;
                    }

                    result = CFDictionaryGetValue(ValueAtIndex, @"ROAM_PROF_MAX_SCAN_PERIOD");
                    if (!result)
                    {
                      return result;
                    }

                    result = CFNumberGetValue(result, kCFNumberSInt16Type, v9);
                    if (!result)
                    {
                      return result;
                    }

                    if (v8 <= 2)
                    {
                      ++v8;
                      v9 += 28;
                      if (v8 < *(a2 + 2))
                      {
                        continue;
                      }
                    }

                    break;
                  }
                }

                *(a2 + 3) = 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL _containsNonHiddenRNRChannels(const __CFArray *a1)
{
  if (!a1 || !CFArrayGetCount(a1) || CFArrayGetCount(a1) < 1)
  {
    return 0;
  }

  v2 = *MEMORY[0x277CBED28];
  v3 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v3 - 1);
    if (ValueAtIndex)
    {
      v5 = CFDictionaryGetValue(ValueAtIndex, @"ORIG_RNR_CHANNEL_FROM_HIDDEN_BSS") != v2;
    }

    else
    {
      v5 = 0;
    }

    if (CFArrayGetCount(a1) <= v3)
    {
      break;
    }

    ++v3;
  }

  while (!v5);
  return v5;
}

const __CFString *Apple80211GetAddressFromString(const __CFString *result)
{
  v3 = *MEMORY[0x277D85DE8];
  memset(v2, 0, sizeof(v2));
  if (result)
  {
    CFStringGetCString(result, v2, 32, 0x8000100u);
    result = ether_aton(v2);
    if (result)
    {
      result = (LODWORD(result->isa) | (WORD2(result->isa) << 32));
    }
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211ParseAppleSWAPIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1)
  {
    goto LABEL_35;
  }

  v4 = a2;
  if (!a2 || !a3)
  {
    goto LABEL_35;
  }

  if (a2 < 2)
  {
LABEL_34:
    v3 = 0;
    goto LABEL_35;
  }

  v5 = a1;
  v6 = 0;
  valuePtr = -86;
  v7 = MEMORY[0x277CBF138];
  v8 = *MEMORY[0x277CBECE8];
  v9 = *MEMORY[0x277CBED28];
  while (1)
  {
    v10 = v5[1];
    if (v10 + 2 > v4)
    {
LABEL_31:
      if (v6)
      {
        CFDictionarySetValue(a3, @"APPLE_SWAP_IE", v6);
        v3 = 0;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v10 >= 4 && *v5 == 221 && Apple80211ParseAppleSWAPIE_signature == *(v5 + 2))
    {
      Mutable = CFDictionaryCreateMutable(v8, 0, v7, MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        v3 = 4294963395;
        goto LABEL_35;
      }

      v6 = Mutable;
      v10 = v5[1];
      v12 = v10 - 4;
      if (v10 - 4 >= 3)
      {
        break;
      }
    }

LABEL_28:
    v4 = v4 - v10 - 2;
    v27 = &v5[v10 + 2];
    if (v4 > 0)
    {
      v5 = v27;
    }

    if (v4 <= 1)
    {
      goto LABEL_31;
    }
  }

  v13 = v5 + 6;
  while (1)
  {
    v14 = *v13;
    v15 = v13[1];
    valuePtr = v13[1];
    v16 = v13[2];
    v17 = v12 - 3;
    if (v16 > (v12 - 3))
    {
LABEL_36:
      v3 = 4294963394;
      goto LABEL_33;
    }

    v18 = v13 + 3;
    if (v15 != 1)
    {
      goto LABEL_26;
    }

    if (!v14)
    {
      break;
    }

    if (v14 == 1)
    {
      if (!v13[2])
      {
        goto LABEL_36;
      }

      v19 = CFNumberCreate(v8, kCFNumberSInt8Type, &valuePtr);
      if (!v19)
      {
        goto LABEL_37;
      }

      v20 = v19;
      CFDictionarySetValue(v6, @"SWAP_IE_FEATURE_VERSION", v19);
      CFRelease(v20);
      v21 = CFDataCreate(v8, v18, v16);
      if (!v21)
      {
        goto LABEL_37;
      }

      v22 = v21;
      CFDictionarySetValue(v6, @"SWAP_IE_FEATURES", v21);
      CFRelease(v22);
      if (*v18)
      {
        CFDictionarySetValue(v6, @"SWAP_IE_FEATURE_INTERNET_CONNECTION_SHARING_ENABLED", v9);
      }
    }

LABEL_26:
    v12 = v17 - v16;
    v13 = &v18[v16];
    if ((v17 - v16) <= 2u)
    {
      v10 = v5[1];
      v7 = MEMORY[0x277CBF138];
      goto LABEL_28;
    }
  }

  if (!v13[2])
  {
    goto LABEL_36;
  }

  v23 = CFNumberCreate(v8, kCFNumberSInt8Type, &valuePtr);
  if (v23)
  {
    v24 = v23;
    CFDictionarySetValue(v6, @"SWAP_IE_MODEL_IDENTIFIER_VERSION", v23);
    CFRelease(v24);
    v25 = CFStringCreateWithBytes(v8, v18, v16, 0x8000100u, 0);
    if (v25)
    {
      v26 = v25;
      CFDictionarySetValue(v6, @"SWAP_IE_MODEL_IDENTIFIER", v25);
      CFRelease(v26);
      goto LABEL_26;
    }
  }

LABEL_37:
  v3 = 4294963395;
LABEL_33:
  CFRelease(v6);
LABEL_35:
  v28 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t _channelFlagsFromIEEEOperatingClass(int a1)
{
  v1 = a1 - 81;
  result = 0;
  switch(v1)
  {
    case 0:
    case 1:
      result = 10;
      break;
    case 2:
      result = 524;
      break;
    case 3:
      result = 12;
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 46:
      return result;
    case 34:
    case 43:
    case 44:
      result = 18;
      break;
    case 35:
    case 45:
      result = 532;
      break;
    case 36:
      result = 20;
      break;
    case 37:
    case 40:
      result = 274;
      break;
    case 38:
    case 41:
      result = 788;
      break;
    case 39:
    case 42:
      result = 276;
      break;
    case 47:
      result = 1040;
      break;
    case 48:
    case 49:
      result = 2064;
      break;
    case 50:
    case 55:
      result = 8194;
      break;
    case 51:
      result = 8196;
      break;
    case 52:
      result = 9216;
      break;
    case 53:
    case 54:
      result = 10240;
      break;
    case 56:
      result = 24576;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t Apple80211ParseFILSDiscoveryFrame(uint64_t a1, unsigned int a2, __CFDictionary *a3)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    v5 = a2;
    v6 = a2 - 14;
    if (a2 < 0xE || *a1 != 4 || *(a1 + 1) != 34)
    {
      v3 = 0;
      goto LABEL_120;
    }

    v7 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v3 = 4294963395;
      goto LABEL_120;
    }

    v9 = Mutable;
    v10 = *(a1 + 2);
    valuePtr[0] = *(a1 + 4);
    v11 = CFNumberCreate(v7, kCFNumberSInt64Type, valuePtr);
    if (!v11)
    {
      goto LABEL_121;
    }

    v12 = v11;
    CFDictionarySetValue(v9, @"TIMESTAMP", v11);
    CFRelease(v12);
    v111 = *(a1 + 12);
    v13 = CFNumberCreate(v7, kCFNumberSInt16Type, &v111);
    if (!v13)
    {
      goto LABEL_121;
    }

    v14 = v13;
    v101 = v10 & 0xF;
    v15 = (v101 + 1);
    CFDictionarySetValue(v9, @"BEACON_INTERVAL", v13);
    CFRelease(v14);
    if (v6 < v15)
    {
      goto LABEL_122;
    }

    theDict = a3;
    v16 = (a1 + 14);
    if ((v10 & 0x40) != 0)
    {
      v110 = *v16;
      v20 = CFNumberCreate(v7, kCFNumberSInt32Type, &v110);
      if (!v20)
      {
        goto LABEL_121;
      }

      v18 = v20;
      v19 = @"SHORT_SSID";
    }

    else
    {
      v17 = CFDataCreate(v7, (a1 + 14), v15);
      if (!v17)
      {
        goto LABEL_121;
      }

      v18 = v17;
      v19 = @"SSID";
    }

    CFDictionarySetValue(v9, v19, v18);
    CFRelease(v18);
    v21 = v16 + v15;
    v22 = v6 - v15;
    if ((v10 & 0x1000) != 0)
    {
      if (v5 < 1)
      {
        goto LABEL_122;
      }

      v99 = *v21;
      if (v22 < v99)
      {
        goto LABEL_122;
      }

      ++v21;
      --v22;
    }

    else
    {
      v99 = 0;
    }

    v102 = v5;
    if ((v10 & 0x20) != 0)
    {
      v23 = __OFSUB__(v22, 2);
      v22 -= 2;
      if (v22 < 0 != v23)
      {
        goto LABEL_122;
      }

      v24 = *v21;
      v25 = *MEMORY[0x277CBED28];
      v26 = *MEMORY[0x277CBED10];
      if (v24)
      {
        v27 = *MEMORY[0x277CBED28];
      }

      else
      {
        v27 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v9, @"FD_CAP_ESS", v27);
      if ((v24 & 2) != 0)
      {
        v28 = v25;
      }

      else
      {
        v28 = v26;
      }

      CFDictionarySetValue(v9, @"FD_CAP_PRIVACY", v28);
      LOBYTE(v110) = (v24 >> 2) & 7;
      v29 = CFNumberCreate(v7, kCFNumberSInt8Type, &v110);
      if (!v29)
      {
        goto LABEL_121;
      }

      v30 = v29;
      CFDictionarySetValue(v9, @"FD_CAP_BSS_CH_WIDTH", v29);
      CFRelease(v30);
      v109 = v24 >> 5;
      v31 = CFNumberCreate(v7, kCFNumberSInt8Type, &v109);
      if (!v31)
      {
        goto LABEL_121;
      }

      v32 = v31;
      CFDictionarySetValue(v9, @"FD_CAP_MAX_NSS", v31);
      CFRelease(v32);
      v33 = (v24 & 0x200) != 0 ? v25 : v26;
      CFDictionarySetValue(v9, @"FD_CAP_MULTI_BSSID_PRESENCE_IND", v33);
      v108 = (v24 >> 10) & 7;
      v34 = CFNumberCreate(v7, kCFNumberSInt8Type, &v108);
      if (!v34)
      {
        goto LABEL_121;
      }

      v35 = v34;
      CFDictionarySetValue(v9, @"FD_CAP_PHY_INDEX", v34);
      CFRelease(v35);
      v107 = v24 >> 13;
      v36 = CFNumberCreate(v7, kCFNumberSInt8Type, &v107);
      if (!v36)
      {
        goto LABEL_121;
      }

      v37 = v36;
      CFDictionarySetValue(v9, @"FD_CAP_FILS_MIN_RATE", v36);
      CFRelease(v37);
      v21 += 2;
      v5 = v102;
    }

    if ((v10 & 0x400) != 0)
    {
      v23 = __OFSUB__(v22, 2);
      v22 -= 2;
      if (v22 < 0 != v23)
      {
        goto LABEL_122;
      }

      v109 = *v21;
      v38 = CFNumberCreate(v7, kCFNumberSInt8Type, &v109);
      if (!v38)
      {
        goto LABEL_121;
      }

      v39 = v38;
      CFDictionarySetValue(v9, @"OPERATING_CLASS", v38);
      CFRelease(v39);
      v108 = v21[1];
      v40 = CFNumberCreate(v7, kCFNumberSInt8Type, &v108);
      if (!v40)
      {
        goto LABEL_121;
      }

      v41 = v40;
      CFDictionarySetValue(v9, @"PRIMARY_CHANNEL", v40);
      CFRelease(v41);
      v110 = _channelFlagsFromIEEEOperatingClass(v109);
      v42 = CFNumberCreate(v7, kCFNumberSInt32Type, &v110);
      if (!v42)
      {
        goto LABEL_121;
      }

      v43 = v42;
      v21 += 2;
      CFDictionarySetValue(v9, @"CHANNEL_FLAGS", v42);
      CFRelease(v43);
    }

    if ((v10 & 0x80) != 0)
    {
      v23 = __OFSUB__(v22--, 1);
      if (v22 < 0 != v23)
      {
        goto LABEL_122;
      }

      LOBYTE(v110) = *v21;
      v44 = CFNumberCreate(v7, kCFNumberSInt8Type, &v110);
      if (!v44)
      {
        goto LABEL_121;
      }

      v45 = v44;
      CFDictionarySetValue(v9, @"AP_CONFIG_SEQ_NUM", v44);
      CFRelease(v45);
      ++v21;
    }

    if ((v10 & 0x100) != 0)
    {
      v23 = __OFSUB__(v22--, 1);
      if (v22 < 0 != v23)
      {
        goto LABEL_122;
      }

      v46 = *v21;
      LOBYTE(v110) = *v21 & 0xF;
      v47 = CFNumberCreate(v7, kCFNumberSInt8Type, &v110);
      if (!v47)
      {
        goto LABEL_121;
      }

      v48 = v47;
      CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_NETWORK_TYPE", v47);
      CFRelease(v48);
      v49 = *MEMORY[0x277CBED28];
      v50 = v7;
      v51 = v10;
      v52 = v5;
      v53 = *MEMORY[0x277CBED10];
      if ((v46 & 0x10) != 0)
      {
        v54 = *MEMORY[0x277CBED28];
      }

      else
      {
        v54 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_INTERNET", v54);
      if ((v46 & 0x20) != 0)
      {
        v55 = v49;
      }

      else
      {
        v55 = v53;
      }

      CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_ASRA", v55);
      if ((v46 & 0x40) != 0)
      {
        v56 = v49;
      }

      else
      {
        v56 = v53;
      }

      CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_ESR", v56);
      if (v46 >= 0)
      {
        v57 = v53;
      }

      else
      {
        v57 = v49;
      }

      v5 = v52;
      v10 = v51;
      v7 = v50;
      CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_UESA", v57);
      ++v21;
    }

    if ((v10 & 0x800) != 0)
    {
      v23 = __OFSUB__(v22, 5);
      v22 -= 5;
      if (v22 < 0 != v23)
      {
        goto LABEL_122;
      }

      v58 = v21[4];
      v59 = *v21;
      LOWORD(v110) = *v21;
      v60 = CFNumberCreate(v7, kCFNumberSInt16Type, &v110);
      if (!v60)
      {
        goto LABEL_121;
      }

      v61 = v60;
      CFDictionarySetValue(v9, @"RSN_CAPABILITIES", v60);
      CFRelease(v61);
      v62 = *MEMORY[0x277CBED28];
      v63 = *MEMORY[0x277CBED10];
      v64 = ((v110 & 1) != 0 ? *MEMORY[0x277CBED28] : *MEMORY[0x277CBED10]);
      CFDictionarySetValue(v9, @"PRE_AUTH", v64);
      v65 = (v110 >> 2) & 3;
      if (v65 > 1)
      {
        v66 = v65 == 2 ? 4 : 16;
      }

      else
      {
        v66 = v65 ? 2 : 1;
      }

      v109 = v66;
      v67 = CFNumberCreate(v7, kCFNumberSInt8Type, &v109);
      if (!v67)
      {
        goto LABEL_121;
      }

      v68 = v67;
      CFDictionarySetValue(v9, @"PTKSA_REPLAY_COUNTERS", v67);
      CFRelease(v68);
      v69 = (v110 >> 4) & 3;
      if (v69 > 1)
      {
        v70 = v69 == 2 ? 4 : 16;
      }

      else
      {
        v70 = v69 ? 2 : 1;
      }

      v108 = v70;
      v71 = CFNumberCreate(v7, kCFNumberSInt8Type, &v108);
      if (!v71)
      {
        goto LABEL_121;
      }

      v72 = v71;
      v73 = v59 | (v58 << 32);
      CFDictionarySetValue(v9, @"GTKSA_REPLAY_COUNTERS", v71);
      CFRelease(v72);
      v74 = ((v110 & 1) != 0 ? v62 : v63);
      CFDictionarySetValue(v9, @"PRE_AUTH", v74);
      v75 = ((v110 & 0x80) != 0 ? v62 : v63);
      CFDictionarySetValue(v9, @"MFP_CAPABLE", v75);
      v76 = ((v110 & 0x40) != 0 ? v62 : v63);
      CFDictionarySetValue(v9, @"MFP_REQUIRED", v76);
      v77 = ((v110 & 0x4000) != 0 ? v62 : v63);
      CFDictionarySetValue(v9, @"OCV", v77);
      v107 = BYTE2(v73) & 0x3F;
      v78 = CFNumberCreate(v7, kCFNumberSInt8Type, &v107);
      if (!v78)
      {
        goto LABEL_121;
      }

      v79 = v78;
      CFDictionarySetValue(v9, @"RSN_MCIPHER", v78);
      CFRelease(v79);
      v106 = (v73 >> 22) & 0x3F;
      v80 = CFNumberCreate(v7, kCFNumberSInt8Type, &v106);
      if (!v80)
      {
        goto LABEL_121;
      }

      v81 = v80;
      CFDictionarySetValue(v9, @"RSN_BCIPHER", v80);
      CFRelease(v81);
      v105 = (v73 >> 28) & 0x3F;
      v82 = CFNumberCreate(v7, kCFNumberSInt8Type, &v105);
      if (!v82)
      {
        goto LABEL_121;
      }

      v83 = v82;
      CFDictionarySetValue(v9, @"RSN_UCIPHER", v82);
      CFRelease(v83);
      v104 = v73 >> 34;
      v84 = CFNumberCreate(v7, kCFNumberSInt8Type, &v104);
      if (!v84)
      {
        goto LABEL_121;
      }

      v85 = v84;
      CFDictionarySetValue(v9, @"RSN_AUTHSEL", v84);
      CFRelease(v85);
      v21 += 5;
      v5 = v102;
    }

    if ((v10 & 0x200) == 0)
    {
      goto LABEL_105;
    }

    v23 = __OFSUB__(v22--, 1);
    if (v22 < 0 != v23)
    {
      goto LABEL_122;
    }

    LOBYTE(v110) = *v21;
    v86 = CFNumberCreate(v7, kCFNumberSInt8Type, &v110);
    if (v86)
    {
      v87 = v86;
      CFDictionarySetValue(v9, @"CHANNEL_CENTER_FREQ_SEG_1", v86);
      CFRelease(v87);
      ++v21;
LABEL_105:
      if ((v10 & 0x2000) == 0)
      {
        goto LABEL_116;
      }

      if (v22 >= 3)
      {
        v88 = CFDataCreate(v7, v21, 2);
        if (v88)
        {
          v89 = v88;
          CFDictionarySetValue(v9, @"MOBILITY_DOMAIN_IDENTIFIER", v88);
          CFRelease(v89);
          LOBYTE(v110) = *v21;
          v90 = CFNumberCreate(v7, kCFNumberSInt8Type, &v110);
          if (v90)
          {
            v91 = v90;
            CFDictionarySetValue(v9, @"MOBILITY_DOMAIN_FT_CAP", v90);
            CFRelease(v91);
            v92 = *MEMORY[0x277CBED28];
            v93 = *MEMORY[0x277CBED10];
            if (v21[2])
            {
              v94 = *MEMORY[0x277CBED28];
            }

            else
            {
              v94 = *MEMORY[0x277CBED10];
            }

            CFDictionarySetValue(v9, @"MOBILITY_DOMAIN_FT_OVER_DS", v94);
            if ((v21[2] & 2) != 0)
            {
              v95 = v92;
            }

            else
            {
              v95 = v93;
            }

            CFDictionarySetValue(v9, @"MOBILITY_DOMAIN_RESOURCE_REQ_PROTO", v95);
LABEL_116:
            CFDictionarySetValue(theDict, @"FILS_DISC_INFO", v9);
            v96 = v99 + (v101 + 15);
            if (v5 - v96 >= 1)
            {
              Apple80211ParseRNRIE((a1 + v96), v5 - v96, theDict);
            }

            v3 = 0;
            goto LABEL_119;
          }
        }

        goto LABEL_121;
      }

LABEL_122:
      v3 = 4294963392;
      goto LABEL_119;
    }

LABEL_121:
    v3 = 4294963395;
LABEL_119:
    CFRelease(v9);
  }

LABEL_120:
  v97 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211CalculateShortSSIDCopy(const __CFData *a1, CFTypeRef *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = 0;
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    if (CNCRC())
    {
      result = 4294963394;
    }

    else
    {
      valuePtr = v9;
      v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
      if (v4)
      {
        v5 = v4;
        if (a2)
        {
          *a2 = CFRetain(v4);
        }

        CFRelease(v5);
        result = 0;
      }

      else
      {
        result = 4294963395;
      }
    }
  }

  else
  {
    result = 4294963396;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

const char *convertIEEEStatusToString(int a1)
{
  v1 = &k80211StatusDescList;
  if (!a1)
  {
    return v1[1];
  }

  v3 = 1;
  result = "unknown IEEE status";
  while (1)
  {
    v5 = (&k80211StatusDescList + 16 * v3);
    if (*v5 == -1)
    {
      break;
    }

    ++v3;
    if (*v5 == a1)
    {
      v1 = v5;
      return v1[1];
    }
  }

  return result;
}

const char *convertIEEEReasonToString(int a1)
{
  if (a1 == 1)
  {
    v1 = &unk_27978FD60;
    return v1[1];
  }

  else
  {
    v3 = &unk_27978FD60;
    v4 = 33;
    result = "unknown IEEE reason";
    while (--v4)
    {
      v1 = v3 + 4;
      v6 = v3[4];
      v3 += 4;
      if (v6 == a1)
      {
        return v1[1];
      }
    }
  }

  return result;
}

uint64_t convertApple80211ReturnToErrno(int a1)
{
  if ((a1 & 0x1E00 | 0x2000) == 0x3000)
  {
    return a1 & 0x1FF;
  }

  v2 = &dword_27978F264;
  v3 = 176;
  while (*(v2 - 1) != a1)
  {
    v2 += 4;
    if (!--v3)
    {
      return 0;
    }
  }

  return *v2;
}

const char *convertLinkStateReasonToString(int a1)
{
  v1 = 0;
  v13 = *MEMORY[0x277D85DE8];
  v7[0] = 1;
  v8 = "Unspecified";
  v9 = 2;
  v11 = 0;
  v12 = 0;
  v10 = "MAC Address Changed";
  if (a1 == 1)
  {
LABEL_5:
    v3 = (&v8)[2 * v1];
  }

  else
  {
    v2 = 1;
    v3 = "unknown reason";
    while (1)
    {
      v4 = v7[4 * v2];
      if (!v4)
      {
        break;
      }

      v1 = v2++;
      if (v4 == a1)
      {
        goto LABEL_5;
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

const char *convertApple80211IOCTLToString(int a1)
{
  if (a1 > 584)
  {
    return "Error Invalid ioctl";
  }

  if (a1 == -1)
  {
    return "APPLE80211_IOC_CARD_SPECIFIC";
  }

  if (a1 < 0)
  {
    return "unknown Apple80211_IOC_";
  }

  result = gAppleIoucIndexToString[a1];
  if (!result)
  {
    return "unknown Apple80211_IOC_";
  }

  return result;
}

const char *convertApple80211EventToString(int a1)
{
  if ((a1 - 246) >= 0xFFFFFF0B)
  {
    return gAppleMIndexToString[a1];
  }

  else
  {
    return "unknown APPLE80211_M_";
  }
}

const char *awdlStringForState(unsigned int a1)
{
  if (a1 > 0x35)
  {
    return "unknown";
  }

  else
  {
    return off_2797921A8[a1];
  }
}

const char *convertBssidChangedReasonToString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "BSSID_CHANGE_REASON_INVALID";
  }

  else
  {
    return off_279792358[a1 - 1];
  }
}

const char *convertLinkChangeReasonToString(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return "APPLE80211_LINK_CHANGE_REASON_INVALID";
  }

  else
  {
    return off_279792380[a1 - 1];
  }
}

const char *convertPhyTypeToString(int a1)
{
  if (a1 <= 15)
  {
    if (a1 == 2)
    {
      return "11A";
    }

    if (a1 != 4)
    {
      if (a1 == 8)
      {
        return "11G";
      }

      return "unknown";
    }

    return "11B";
  }

  else if (a1 > 255)
  {
    if (a1 != 256)
    {
      if (a1 == 512)
      {
        return "11BE";
      }

      return "unknown";
    }

    return "11AX";
  }

  else
  {
    if (a1 != 16)
    {
      if (a1 == 128)
      {
        return "11AC";
      }

      return "unknown";
    }

    return "11N";
  }
}

uint64_t convertAssocStatusToAssocResult(int a1, int a2)
{
  if (a2 == 2)
  {
    return 21;
  }

  result = 1;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 201:
      result = 2;
      break;
    case 2:
    case 3:
    case 31:
    case 39:
    case 47:
    case 49:
    case 50:
    case 56:
    case 57:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 67:
    case 68:
    case 73:
    case 74:
    case 75:
    case 77:
    case 78:
    case 80:
    case 81:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 100:
    case 101:
    case 102:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 111:
    case 113:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 128:
    case 129:
      result = 41;
      break;
    case 4:
    case 8:
    case 9:
    case 20:
    case 21:
    case 22:
    case 29:
    case 36:
    case 48:
    case 66:
    case 69:
    case 70:
    case 71:
    case 90:
    case 91:
    case 114:
    case 115:
    case 124:
    case 127:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 217:
    case 218:
    case 219:
    case 221:
    case 222:
    case 223:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
LABEL_17:
      result = 0xFFFFLL;
      break;
    case 5:
    case 214:
      result = 42;
      break;
    case 6:
      result = 43;
      break;
    case 7:
      result = 44;
      break;
    case 10:
      result = 3;
      break;
    case 11:
      result = 4;
      break;
    case 12:
      result = 5;
      break;
    case 13:
      result = 6;
      break;
    case 14:
      result = 7;
      break;
    case 15:
      result = 8;
      break;
    case 16:
      result = 9;
      break;
    case 17:
      result = 10;
      break;
    case 18:
      result = 11;
      break;
    case 19:
      result = 45;
      break;
    case 23:
      result = 46;
      break;
    case 24:
      result = 47;
      break;
    case 25:
      result = 12;
      break;
    case 26:
      result = 13;
      break;
    case 27:
      result = 23;
      break;
    case 28:
      result = 24;
      break;
    case 30:
      result = 48;
      break;
    case 32:
      result = 49;
      break;
    case 33:
      result = 50;
      break;
    case 34:
      result = 51;
      break;
    case 35:
      result = 52;
      break;
    case 37:
      result = 53;
      break;
    case 38:
      result = 54;
      break;
    case 40:
    case 213:
      result = 14;
      break;
    case 41:
      result = 15;
      break;
    case 42:
      result = 16;
      break;
    case 43:
    case 220:
      result = 17;
      break;
    case 44:
      result = 18;
      break;
    case 45:
      result = 19;
      break;
    case 46:
    case 224:
      result = 20;
      break;
    case 51:
      result = 55;
      break;
    case 52:
      result = 56;
      break;
    case 53:
    case 249:
      result = 57;
      break;
    case 54:
      result = 58;
      break;
    case 55:
      result = 59;
      break;
    case 58:
      result = 60;
      break;
    case 72:
      result = 61;
      break;
    case 76:
      result = 62;
      break;
    case 79:
      result = 63;
      break;
    case 82:
      result = 64;
      break;
    case 83:
      result = 65;
      break;
    case 84:
      result = 66;
      break;
    case 92:
      result = 67;
      break;
    case 93:
      result = 68;
      break;
    case 99:
      result = 69;
      break;
    case 103:
      result = 70;
      break;
    case 104:
      result = 71;
      break;
    case 110:
      result = 72;
      break;
    case 112:
      result = 73;
      break;
    case 125:
      result = 74;
      break;
    case 126:
LABEL_14:
      result = 37;
      break;
    case 202:
      return 21;
    case 215:
    case 216:
LABEL_7:
      result = 22;
      break;
    default:
      switch(a1)
      {
        case 1000:
          result = 25;
          break;
        case 1001:
          result = 26;
          break;
        case 1002:
          result = 27;
          break;
        case 1003:
          result = 28;
          break;
        case 1004:
          result = 29;
          break;
        case 1005:
          result = 30;
          break;
        case 1006:
          result = 31;
          break;
        case 1007:
          result = 32;
          break;
        case 1008:
          result = 33;
          break;
        case 1009:
          result = 34;
          break;
        case 1010:
          result = 35;
          break;
        case 1011:
          result = 36;
          break;
        case 1012:
          goto LABEL_14;
        case 1013:
          result = 38;
          break;
        case 1014:
          goto LABEL_7;
        case 1015:
          result = 39;
          break;
        case 1016:
          result = 40;
          break;
        default:
          if (a1 != 0xFFFF)
          {
            goto LABEL_17;
          }

          result = 0;
          break;
      }

      break;
  }

  return result;
}

const char *apple80211_apmodetoStr(unsigned int a1)
{
  if (a1 > 3)
  {
    return "unknown";
  }

  else
  {
    return off_2797923D8[a1];
  }
}

const char *apple80211_roam_profile_typetoStr(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return "unknown";
  }

  else
  {
    return off_2797923F8[a1];
  }
}

const char *apple80211_authtype_uppertoStr(int a1)
{
  if (a1 > 511)
  {
    if (a1 >= 0x4000)
    {
      if (a1 <= 65534)
      {
        if (a1 == 0x4000)
        {
          return "SHA384_8021X";
        }

        if (a1 == 0x8000)
        {
          return "SHA384_FT_8021X";
        }
      }

      else
      {
        switch(a1)
        {
          case 0xFFFF:
            return "UNKNOWN";
          case 0x10000:
            return "AKM_24";
          case 0x20000:
            return "AKM_25";
        }
      }
    }

    else if (a1 <= 2047)
    {
      if (a1 == 512)
      {
        return "WAPI";
      }

      if (a1 == 1024)
      {
        return "SHA256_PSK";
      }
    }

    else
    {
      switch(a1)
      {
        case 0x800:
          return "SHA256_8021X";
        case 0x1000:
          return "WPA3_SAE";
        case 0x2000:
          return "FT_SAE";
      }
    }
  }

  else if (a1 > 15)
  {
    if (a1 <= 63)
    {
      if (a1 == 16)
      {
        return "FT_PSK";
      }

      if (a1 == 32)
      {
        return "LEAP";
      }
    }

    else
    {
      switch(a1)
      {
        case 64:
          return "8021X";
        case 128:
          return "FT_8021X";
        case 256:
          return "WPS";
      }
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      return "NONE";
    }

    if (a1 == 1)
    {
      return "WPA";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return "WPA_PSK";
      case 4:
        return "WPA2";
      case 8:
        return "WPA2_PSK";
    }
  }

  return "unknown";
}

const char *apple80211_roam_status_bss_flagstoStr(int a1)
{
  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        return "WNM_SCORE_STATUS";
      }

      if (a1 == 128)
      {
        return "ROAM_TO_COLOCATED_AP";
      }
    }

    else
    {
      if (a1 == 16)
      {
        return "FASTLANE_SUPPORTED";
      }

      if (a1 == 32)
      {
        return "NETWORK_ASSURANCE_SUPPORTED";
      }
    }
  }

  else if (a1 > 3)
  {
    if (a1 == 4)
    {
      return "BSS_TRANSITION_MGMT_SUPPORTED";
    }

    if (a1 == 8)
    {
      return "ADAPTIVE_FBT_SUPPORTED";
    }
  }

  else
  {
    if (a1 == 1)
    {
      return "NEIGHBOR_REPORT_SUPPORTED";
    }

    if (a1 == 2)
    {
      return "FAST_BSS_TRANSITION_SUPPORTED";
    }
  }

  return "unknown";
}

void IEEE80211iPasswordHashLegacy(uint64_t a1, unint64_t a2, void *a3, size_t a4, _OWORD *a5)
{
  v5 = a2;
  v16 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x40)
  {
    printf("%s[%u] Error: Assert failure\n", "IEEE80211iPasswordHashLegacy", 776);
  }

  else
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15[2] = v9;
    v15[3] = v9;
    v15[0] = v9;
    v15[1] = v9;
    v12 = v9;
    v13 = v9;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    __memcpy_chk();
    F(v15, v5, a3, a4, 1, &v12);
    F(v15, v5, a3, a4, 2, &v13 + 4);
    v10 = v13;
    *a5 = v12;
    a5[1] = v10;
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t IEEE80211iPasswordHashCoreCrypto()
{
  ccsha1_di();

  return ccpbkdf2_hmac();
}

void F(int a1, int a2, void *__src, size_t __n, char a5, uint64_t a6)
{
  v8 = __n;
  v18 = *MEMORY[0x277D85DE8];
  v17 = -1431655766;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __dst = v9;
  v16 = v9;
  memset(v14, 170, 20);
  if (__n)
  {
    v10 = __n;
    memcpy(&__dst, __src, __n);
  }

  else
  {
    v10 = 0;
  }

  *(&__dst + v10) = 0;
  *(&__dst + (v8 + 1)) = 0;
  *(&__dst + (v8 + 2)) = 0;
  *(&__dst + (v8 + 3)) = a5;
  hmac_sha1();
  v11 = 0;
  *a6 = v14[0];
  *(a6 + 16) = v14[1];
  do
  {
    hmac_sha1();
    v12 = 0;
    v14[0] = __dst;
    LODWORD(v14[1]) = v16;
    do
    {
      *(a6 + v12) ^= *(&__dst + v12);
      ++v12;
    }

    while (v12 != 20);
    ++v11;
  }

  while (v11 != 4095);
  v13 = *MEMORY[0x277D85DE8];
}

void hmac_sha1()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v34 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  if (v1)
  {
    memcpy(__dst, v0, v1);
  }

  v8 = 0;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v9;
  v32 = v9;
  v29 = v9;
  v30 = v9;
  v10.i64[0] = 0x3636363636363636;
  v10.i64[1] = 0x3636363636363636;
  do
  {
    *(&v29 + v8 * 16) = veorq_s8(__dst[v8], v10);
    ++v8;
  }

  while (v8 != 4);
  memset(&v24[4], 170, 0x1040uLL);
  v24[0] = v29;
  v24[1] = v30;
  v24[2] = v31;
  v24[3] = v32;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      *(v24 + (i + 64)) = *(v7 + i);
    }
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v12;
  v28 = v12;
  v25 = v12;
  v26 = v12;
  sha1(v24, v5 + 64, v3);
  v13 = 0;
  v14.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v14.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  do
  {
    *(&v25 + v13 * 16) = veorq_s8(__dst[v13], v14);
    ++v13;
  }

  while (v13 != 4);
  v23 = -86;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v15;
  v21 = v15;
  v20 = v15;
  v19 = v15;
  v17[0] = v25;
  v17[1] = v26;
  v17[2] = v27;
  v17[3] = v28;
  v17[4] = *v3;
  v18 = *(v3 + 16);
  sha1(v17, 0x54u, v3);
  v16 = *MEMORY[0x277D85DE8];
}

void sha1(uint64_t a1, unsigned int a2, uint64_t a3)
{
  __b[80] = *MEMORY[0x277D85DE8];
  memset(__b, 170, 0x280uLL);
  v6 = 8 * a2;
  v7 = (a2 + 9) >> 6;
  if (((a2 + 9) & 0x3F) != 0)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = (v8 << 6);
  if (v9 > a2)
  {
    bzero((a1 + a2), v9 - a2);
  }

  v10 = 4023233417;
  *(a1 + a2) = 0x80;
  *(a1 + (v9 - 1)) = v6;
  *(a1 + (v9 - 2)) = BYTE1(v6);
  v11 = 3285377520;
  v12 = 2562383102;
  v13 = 1732584193;
  v14 = 271733878;
  *(a1 + (v9 - 3)) = BYTE2(v6);
  *(a1 + (v9 - 4)) = HIBYTE(v6);
  if (v8)
  {
    v15 = 0;
    v16 = a1 + 3;
    do
    {
      v17 = 0;
      v18 = __b;
      v19 = v16;
      do
      {
        if (v17 > 0xF)
        {
          v21 = *(v18 - 8) ^ *(v18 - 3) ^ *(v18 - 14) ^ *(v18 - 16);
          v20 = (v21 >> 31) | (2 * v21);
        }

        else
        {
          v20 = bswap32(*(v19 - 3));
        }

        *v18++ = v20;
        ++v17;
        v19 += 4;
      }

      while (v17 != 80);
      v22 = 0;
      v23 = v11;
      v24 = v14;
      v25 = v12;
      v26 = v10;
      v27 = v13;
      do
      {
        v28 = v27;
        v29 = v25;
        v30 = v24;
        v31 = (32 * v27) | (v27 >> 27);
        v32 = v24 & ~v26 | v26 & v29;
        v33 = v29 ^ v24;
        v34 = v29 ^ v24 ^ v26;
        v35 = v33 & v26 ^ v29 & v30;
        if (v22 < 0x3C)
        {
          v36 = 2400959708;
        }

        else
        {
          v35 = v34;
          v36 = 3395469782;
        }

        if (v22 >= 0x28)
        {
          v37 = v36;
        }

        else
        {
          v35 = v34;
          v37 = 1859775393;
        }

        if (v22 < 0x14)
        {
          v38 = 1518500249;
        }

        else
        {
          v32 = v35;
          v38 = v37;
        }

        v39 = v31 + v23 + v32 + v38 + __b[v22];
        v27 = v39;
        v25 = (v26 << 30) | (v26 >> 2);
        ++v22;
        v23 = v30;
        v24 = v29;
        v26 = v28;
      }

      while (v22 != 80);
      v13 = (v39 + v13);
      v10 = (v28 + v10);
      v12 += v25;
      v14 += v29;
      v11 += v30;
      ++v15;
      v16 += 64;
    }

    while (v15 != v8);
  }

  *(a3 + 2) = bswap32(v13) >> 16;
  *(a3 + 1) = BYTE2(v13);
  *a3 = BYTE3(v13);
  *(a3 + 7) = v10;
  *(a3 + 6) = BYTE1(v10);
  *(a3 + 5) = BYTE2(v10);
  *(a3 + 4) = BYTE3(v10);
  *(a3 + 11) = v12;
  *(a3 + 10) = BYTE1(v12);
  *(a3 + 9) = BYTE2(v12);
  *(a3 + 8) = BYTE3(v12);
  *(a3 + 15) = v14;
  *(a3 + 14) = BYTE1(v14);
  *(a3 + 13) = BYTE2(v14);
  *(a3 + 12) = BYTE3(v14);
  *(a3 + 19) = v11;
  *(a3 + 18) = BYTE1(v11);
  *(a3 + 17) = BYTE2(v11);
  *(a3 + 16) = BYTE3(v11);
  v40 = *MEMORY[0x277D85DE8];
}

uint64_t nan_crc32(uint64_t result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    result = crc32_tab[(v3 ^ result)] ^ (result >> 8);
  }

  return result;
}

uint64_t _Apple80211AWDLCompatibilityCall(uint64_t a1, uint64_t a2, int a3)
{
  v106 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 16);
  if (v6 <= 133)
  {
    if (v6 <= 117)
    {
      if (v6 <= 95)
      {
        if (v6 <= 0x1B && ((1 << v6) & 0x8089000) != 0)
        {
          if ((a3 & 1) == 0)
          {
            *v97 = 0xAAAAAAAAAAAAAAAALL;
            v8 = Apple80211Open(v97);
            if (!v8)
            {
              theArray = 0xAAAAAAAAAAAAAAAALL;
              LODWORD(v8) = Apple80211GetIfListCopy(*v97, &theArray);
              v9 = theArray;
              if (!v8 && theArray && (Count = CFArrayGetCount(theArray), v9 = theArray, Count))
              {
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
                v8 = Apple80211BindToInterface(*v97, ValueAtIndex);
                if (theArray)
                {
                  CFRelease(theArray);
                }

                if (!v8)
                {
                  CFStringGetCString(ValueAtIndex, a2, 16, 0x8000100u);
                  v8 = Apple80211RawGet(*v97, a2);
                }

                Apple80211Close(*v97);
              }

              else
              {
                if (v9)
                {
                  CFRelease(v9);
                }

                Apple80211Close(*v97);
                if (v8)
                {
                  v8 = v8;
                }

                else
                {
                  v8 = 4294963396;
                }
              }
            }

            goto LABEL_201;
          }

          goto LABEL_99;
        }

        goto LABEL_154;
      }

      if (v6 <= 115)
      {
        if (v6 != 96)
        {
          if (v6 == 97)
          {
            if ((a3 & 1) == 0)
            {
              if (*(a2 + 32))
              {
                *v97 = 0xAAAAAAAAAAAAAAAALL;
                Apple80211GetIfListCopy(a1, v97);
                if (*v97)
                {
                  if (CFArrayGetCount(*v97) && (v15 = CFArrayGetValueAtIndex(*v97, 0), (v16 = v15) != 0) && (v17 = CFGetTypeID(v15), v17 == CFStringGetTypeID()))
                  {
                    if (CFStringGetCString(v16, *(a2 + 32), *(a2 + 24), 0x8000100u))
                    {
                      v8 = 0;
                    }

                    else
                    {
                      v8 = 4294963395;
                    }
                  }

                  else
                  {
                    v8 = 4294963396;
                  }

                  if (*v97)
                  {
                    CFRelease(*v97);
                  }
                }

                else
                {
                  v8 = 4294963396;
                }

                goto LABEL_201;
              }

LABEL_168:
              v8 = 4294963396;
              goto LABEL_202;
            }

LABEL_99:
            v8 = 4294963393;
LABEL_202:
            *__error() = v8;
            goto LABEL_203;
          }

LABEL_154:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            v73 = "get";
            if (a3)
            {
              v73 = "set";
            }

            if (v6 > 584)
            {
              v74 = "Error Invalid ioctl";
            }

            else if (v6 == -1)
            {
              v74 = "APPLE80211_IOC_CARD_SPECIFIC";
            }

            else if (v6 < 0 || (v74 = gAppleIoucIndexToString[v6]) == 0)
            {
              v74 = "unknown Apple80211_IOC_";
            }

            *v97 = 136315906;
            *&v97[4] = "_Apple80211AWDLCompatibilityInternal";
            *&v97[12] = 2080;
            *&v97[14] = v73;
            *&v97[22] = 2080;
            v98 = v74;
            v99 = 1024;
            v100 = v6;
            _os_log_fault_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s: unsupported %s ioctl on awdl0 for %s[%d]", v97, 0x26u);
          }

          goto LABEL_99;
        }

        if (a3)
        {
          goto LABEL_99;
        }

        *(a2 + 20) = 6;
LABEL_101:
        v8 = 0;
        goto LABEL_203;
      }

      if (v6 != 116)
      {
        if (a3)
        {
          goto LABEL_99;
        }

        v12 = *(a2 + 32);
        if (!v12 || *(a2 + 24) != 12)
        {
          goto LABEL_168;
        }

        v13 = [(objc_class *)off_280C4DC18() currentState];
        v14 = [v13 isEnabled];
LABEL_78:
        *(v12 + 8) = v14;
LABEL_108:

        goto LABEL_101;
      }

      goto LABEL_98;
    }

    if (v6 <= 125)
    {
      if ((v6 - 121) >= 2 && v6 != 118 && v6 != 124)
      {
        goto LABEL_154;
      }

      goto LABEL_98;
    }

    if ((v6 - 126) >= 2)
    {
      if (v6 == 129)
      {
        if (a3)
        {
          goto LABEL_99;
        }

        v55 = *(a2 + 32);
        if (!v55 || *(a2 + 24) != 400)
        {
          goto LABEL_168;
        }

        *(v55 + 368) = 0u;
        *(v55 + 384) = 0u;
        *(v55 + 336) = 0u;
        *(v55 + 352) = 0u;
        *(v55 + 304) = 0u;
        *(v55 + 320) = 0u;
        *(v55 + 272) = 0u;
        *(v55 + 288) = 0u;
        *(v55 + 240) = 0u;
        *(v55 + 256) = 0u;
        *(v55 + 208) = 0u;
        *(v55 + 224) = 0u;
        *(v55 + 176) = 0u;
        *(v55 + 192) = 0u;
        *(v55 + 144) = 0u;
        *(v55 + 160) = 0u;
        *(v55 + 112) = 0u;
        *(v55 + 128) = 0u;
        *(v55 + 80) = 0u;
        *(v55 + 96) = 0u;
        *(v55 + 48) = 0u;
        *(v55 + 64) = 0u;
        *(v55 + 16) = 0u;
        *(v55 + 32) = 0u;
        *v55 = 0u;
        v56 = [(objc_class *)off_280C4DC18() currentState];
        v57 = [v56 channelSequence];

        *(v55 + 5) = [v57 count];
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v58 = v57;
        v59 = [v58 countByEnumeratingWithState:&v102 objects:v101 count:16];
        if (v59)
        {
          v60 = 0;
          v61 = *v103;
          v62 = v55 + 12;
          do
          {
            for (i = 0; i != v59; ++i)
            {
              if (*v103 != v61)
              {
                objc_enumerationMutation(v58);
              }

              v64 = *(*(&v102 + 1) + 8 * i);
              if ([v64 is2_4GHz])
              {
                v65 = 8;
              }

              else
              {
                v65 = 0;
              }

              if ([v64 is5GHz])
              {
                v65 |= 0x10u;
              }

              if ([v64 isDFS])
              {
                v65 |= 0x100u;
              }

              v66 = [v64 bandwidth];
              v67 = v65 | 4;
              v68 = v65 | 0x400;
              v69 = v65 | 0x800;
              if (v66 != 4)
              {
                v69 = v65;
              }

              if (v66 != 3)
              {
                v68 = v69;
              }

              if (v66 != 2)
              {
                v67 = v68;
              }

              v70 = v65 | 1;
              v71 = v65 | 2;
              if (v66 != 1)
              {
                v71 = v65;
              }

              if (v66)
              {
                v70 = v71;
              }

              if (v66 <= 1)
              {
                v67 = v70;
              }

              v72 = v62 + 12 * v60;
              *(v72 + 8) = v67;
              *(v72 + 4) = [v64 channelNumber];
              ++v60;
            }

            v59 = [v58 countByEnumeratingWithState:&v102 objects:v101 count:16];
          }

          while (v59);
        }

        goto LABEL_101;
      }

      if (v6 != 132)
      {
        goto LABEL_154;
      }

      if (a3)
      {
        goto LABEL_99;
      }

      v22 = *(a2 + 32);
      if (!v22 || *(a2 + 24) != 8)
      {
        goto LABEL_168;
      }

      v13 = [(objc_class *)off_280C4DC18() currentState];
      v23 = [v13 peerMasterChannel];
      goto LABEL_106;
    }

    goto LABEL_98;
  }

  if (v6 > 204)
  {
    if (v6 > 222)
    {
      if (v6 > 350)
      {
        if (v6 != 351 && v6 != 558)
        {
          goto LABEL_154;
        }

        goto LABEL_98;
      }

      if (v6 == 223)
      {
        if (a3)
        {
          goto LABEL_99;
        }

        v48 = *(a2 + 32);
        if (!v48 || *(a2 + 24) != 3720)
        {
          goto LABEL_168;
        }

        v49 = objc_alloc_init(_MergedGlobals());
        v50 = [v49 copyStatistics];

        _copyAWDLStatistics(v50, v48);
        goto LABEL_101;
      }

      if (v6 != 244)
      {
        goto LABEL_154;
      }

      if (a3)
      {
        goto LABEL_99;
      }

      v24 = *(a2 + 32);
      if (!v24 || *(a2 + 24) != 12)
      {
        goto LABEL_168;
      }

      v13 = [(objc_class *)off_280C4DC18() currentState];
      v25 = [v13 peerMasterChannel];
      v24[3] = [v25 channelNumber];

      v26 = [v13 peerPrimaryPreferredChannel];
      v24[2] = [v26 channelNumber];

      v27 = [v13 peerSecondaryPreferredChannel];
      v24[4] = [v27 channelNumber];
LABEL_107:

      goto LABEL_108;
    }

    if (v6 > 216)
    {
      if (v6 == 217)
      {
        if (a3)
        {
          goto LABEL_99;
        }

        v51 = *(a2 + 32);
        if (!v51 || *(a2 + 24) != 8)
        {
          goto LABEL_168;
        }

        *(v51 + 4) = 0;
        goto LABEL_101;
      }

      if (v6 != 220)
      {
        goto LABEL_154;
      }

      goto LABEL_98;
    }

    if (v6 == 205)
    {
      if (a3)
      {
        goto LABEL_99;
      }

      v22 = *(a2 + 32);
      if (!v22 || *(a2 + 24) != 8)
      {
        goto LABEL_168;
      }

      v13 = [(objc_class *)off_280C4DC18() currentState];
      v23 = [v13 peerSecondaryPreferredChannel];
LABEL_106:
      v27 = v23;
      *(v22 + 4) = [v23 channelNumber];
      goto LABEL_107;
    }

    if (v6 != 208)
    {
      goto LABEL_154;
    }

LABEL_98:
    if (a3)
    {
      goto LABEL_99;
    }

    bzero(*(a2 + 32), *(a2 + 24));
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_101;
    }

    v77 = *(a2 + 16);
    if (v77 > 584)
    {
      v78 = "Error Invalid ioctl";
    }

    else if (v77 == -1)
    {
      v78 = "APPLE80211_IOC_CARD_SPECIFIC";
    }

    else if ((v77 & 0x80000000) != 0 || (v78 = gAppleIoucIndexToString[v77]) == 0)
    {
      v78 = "unknown Apple80211_IOC_";
    }

    goto LABEL_184;
  }

  if (v6 <= 154)
  {
    if ((v6 - 134) >= 3)
    {
      if (v6 != 148)
      {
        goto LABEL_154;
      }

      if (a3)
      {
        goto LABEL_99;
      }

      v12 = *(a2 + 32);
      if (!v12 || *(a2 + 24) != 24)
      {
        goto LABEL_168;
      }

      v13 = [(objc_class *)off_280C4DC18() currentState];
      v14 = [v13 substate];
      goto LABEL_78;
    }

    goto LABEL_98;
  }

  if (v6 <= 163)
  {
    if (v6 != 155)
    {
      if (v6 != 163)
      {
        goto LABEL_154;
      }

      v18 = *(a2 + 32);
      if (!v18 || *(a2 + 24) != 8)
      {
        goto LABEL_168;
      }

      if (a3)
      {
        *v97 = 0;
        *&v97[8] = v97;
        *&v97[16] = 0x2020000000;
        LODWORD(v98) = 0;
        v19 = dispatch_semaphore_create(0);
        if (*(v18 + 4))
        {
          v20 = [(objc_class *)off_280C4DC20() shared];
          v21 = v94;
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = ___Apple80211AWDLCompatibilityInternal_block_invoke;
          v94[3] = &unk_279792468;
          v94[5] = v97;
          v94[4] = v19;
          [v20 beginTransaction:9 completionHandler:v94];
        }

        else
        {
          v20 = [(objc_class *)off_280C4DC20() shared];
          v21 = v93;
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = ___Apple80211AWDLCompatibilityInternal_block_invoke_2;
          v93[3] = &unk_279792468;
          v93[5] = v97;
          v93[4] = v19;
          [v20 endTransaction:9 completionHandler:v93];
        }

        dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
        v8 = *(*&v97[8] + 24);

        _Block_object_dispose(v97, 8);
        goto LABEL_201;
      }

      *v18 = 0;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_101;
      }

      v79 = *(a2 + 16);
      if (v79 > 584)
      {
        v78 = "Error Invalid ioctl";
      }

      else if (v79 == -1)
      {
        v78 = "APPLE80211_IOC_CARD_SPECIFIC";
      }

      else if ((v79 & 0x80000000) != 0 || (v78 = gAppleIoucIndexToString[v79]) == 0)
      {
        v78 = "unknown Apple80211_IOC_";
      }

LABEL_184:
      *v97 = 136315394;
      *&v97[4] = "_Apple80211AWDLCompatibilityInternal";
      *&v97[12] = 2080;
      *&v97[14] = v78;
      _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: unsupported get for %s on awdl0", v97, 0x16u);
      goto LABEL_101;
    }

    goto LABEL_98;
  }

  if (v6 != 164)
  {
    if (v6 != 203)
    {
      goto LABEL_154;
    }

    if (a3)
    {
      goto LABEL_99;
    }

    v28 = *(a2 + 32);
    if (!v28 || *(a2 + 24) != 208480)
    {
      goto LABEL_168;
    }

    v29 = objc_alloc_init(_MergedGlobals());
    v91 = [v29 queryPeerDatabase];

    v30 = [v91 count];
    v31 = 100;
    if (v30 < 0x64)
    {
      v31 = v30;
    }

    *(v28 + 4) = v31;
    if (v30)
    {
      v32 = 0;
      v33 = (v28 + 1413);
      do
      {
        v34 = [v91 objectAtIndexedSubscript:v32];
        v35 = v28 + 8 + 2064 * v32;
        _copyMACAddress((v35 + 32), v34);
        v36 = [v34 valueForKey:@"STATION_RSSI"];
        *(v35 + 92) = [v36 intValue];

        v37 = [v34 valueForKey:@"STATION_AWDL_ELECTION_METRIC"];
        *(v35 + 80) = [v37 unsignedIntValue];

        v38 = [v34 valueForKey:@"STATION_HOSTNAME"];
        [v38 cStringUsingEncoding:4];
        [v38 length];
        __strncpy_chk();
        _copyMACAddress((v35 + 44), v34);
        _copyMACAddress((v35 + 38), v34);
        v39 = [v34 valueForKey:@"STATION_AWDL_DISTANCE_TOP"];
        *(v35 + 88) = [v39 unsignedCharValue];

        v40 = [v34 valueForKey:@"STATION_AWDL_PLATFORM"];
        *(v35 + 497) = [v40 unsignedCharValue];

        v41 = [v34 valueForKey:@"STATION_AWDL_VERSION"];
        *(v35 + 498) = [v41 unsignedCharValue];

        v42 = [v34 valueForKey:@"STATION_AWDL_SERVICES"];
        if ([v42 count])
        {
          v43 = 0;
          v44 = v33;
          do
          {
            v45 = [v42 objectAtIndexedSubscript:v43];
            strncpy(v44, [v45 cStringUsingEncoding:4], 0x3FuLL);

            ++v43;
            v46 = [v42 count];
            if (v46 >= 0xA)
            {
              v47 = 10;
            }

            else
            {
              v47 = v46;
            }

            v44 += 64;
          }

          while (v43 < v47);
        }

        ++v32;
        v33 += 2064;
      }

      while (v32 < *(v28 + 4));
    }

    goto LABEL_101;
  }

  v52 = *(a2 + 32);
  if ((a3 & 1) == 0)
  {
    if (!v52 || *(a2 + 24) != 184)
    {
      goto LABEL_168;
    }

    v75 = objc_alloc_init(_MergedGlobals());
    v76 = [v75 copyActiveServiceUniqueIdentifiers];
    *(*(a2 + 32) + 168) = [v76 count];

    goto LABEL_101;
  }

  if (!v52 || *(a2 + 24) != 184)
  {
    goto LABEL_168;
  }

  v53 = *(a1 + 112);
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = objc_alloc_init(off_280C4DC00());
    *(a1 + 112) = v54;
  }

  v80 = *(v52 + 12);
  if (v80 >= 0x7F)
  {
    v80 = 127;
  }

  *(v52 + 16 + v80) = 0;
  v81 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (v52 + 16), 0x8000100u);
  v82 = objc_alloc(off_280C4DC08());
  v83 = [objc_alloc(off_280C4DC10()) initWithAddress:*(v52 + 4) | (*(v52 + 8) << 32)];
  v84 = [v82 initWithUniqueIdentifier:v81 peerAddress:v83];

  CFRelease(v81);
  v85 = *(v52 + 172);
  if ((v85 & 2) != 0)
  {
    [v84 setOptions:{objc_msgSend(v84, "options") | 1}];
    v85 = *(v52 + 172);
  }

  if ((v85 & 8) != 0)
  {
    [v84 setOptions:{objc_msgSend(v84, "options") | 2}];
  }

  if (*(v52 + 168))
  {
    v96 = 0;
    [v54 setTrafficRegistration:v84 error:&v96];
    v86 = &v96;
  }

  else
  {
    v95 = 0;
    [v54 clearTrafficRegistration:v84 error:&v95];
    v86 = &v95;
  }

  v87 = *v86;
  v88 = v87;
  if (v87)
  {
    v8 = [v87 code];
  }

  else
  {
    v8 = 0;
  }

LABEL_201:
  if (v8)
  {
    goto LABEL_202;
  }

LABEL_203:
  v89 = *MEMORY[0x277D85DE8];
  return v8;
}

void _copyAWDLStatistics(void *a1, uint64_t a2)
{
  v102 = a1;
  v3 = [v102 valueForKey:@"AWDL_STATS_FLAGS"];
  *(a2 + 4) = [v3 unsignedIntValue];

  v4 = [v102 valueForKey:@"AWDL_STATS_RXBYTES"];
  *(a2 + 8) = [v4 unsignedIntValue];

  v5 = [v102 valueForKey:@"AWDL_STATS_TXBYTES"];
  *(a2 + 12) = [v5 unsignedIntValue];

  v6 = [v102 valueForKey:@"AWDL_STATS_PACKET_FAILURES"];
  *(a2 + 16) = [v6 unsignedIntValue];

  v7 = [v102 valueForKey:@"AWDL_STATS_SELF_INFRA_CHANNEL"];
  *(a2 + 20) = [v7 unsignedIntValue];

  v8 = [v102 valueForKey:@"AWDL_STATS_SELF_INFRA_CHANNEL_FLAGS"];
  *(a2 + 3616) = [v8 unsignedIntValue];

  v9 = [v102 valueForKey:@"AWDL_STATS_PEER_INFRA_CHANNEL"];
  *(a2 + 24) = [v9 unsignedCharValue];

  v10 = [v102 valueForKey:@"AWDL_STATS_PEER_INFRA_CHANNEL_FLAGS"];
  *(a2 + 3620) = [v10 unsignedIntValue];

  v11 = [v102 valueForKey:@"AWDL_STATS_NUM_PEERS"];
  *(a2 + 25) = [v11 unsignedCharValue];

  v12 = [v102 valueForKey:@"AWDL_STATS_NUM_CACHED_PEERS"];
  *(a2 + 26) = [v12 unsignedCharValue];

  v13 = [v102 valueForKey:@"AWDL_STATS_NUM_CACHED_PEERS_2GHZ"];
  *(a2 + 27) = [v13 unsignedCharValue];

  v14 = [v102 valueForKey:@"AWDL_STATS_NUM_CACHED_PEERS_5GHZ"];
  *(a2 + 28) = [v14 unsignedCharValue];

  v15 = [v102 valueForKey:@"AWDL_STATS_NUM_CACHED_PEERS_DFS"];
  *(a2 + 29) = [v15 unsignedCharValue];

  v16 = [v102 valueForKey:@"AWDL_STATS_NUM_CACHED_PEERS_UNASSOC"];
  *(a2 + 30) = [v16 unsignedCharValue];

  v17 = [v102 valueForKey:@"AWDL_STATS_NUM_SYNC_CHANGES"];
  v101 = a2;
  *(a2 + 88) = [v17 unsignedIntegerValue];

  v18 = [v102 valueForKey:@"AWDL_STATS_HOPCOUNT"];
  if ([v18 count])
  {
    v19 = 0;
    v20 = (v101 + 112);
    do
    {
      v21 = [v18 objectAtIndexedSubscript:v19];
      v22 = [v21 valueForKey:@"AWDL_STATS_HISTOGRAM_BIN_START"];
      *(v20 - 2) = [v22 unsignedIntegerValue];

      v23 = [v18 objectAtIndexedSubscript:v19];
      v24 = [v23 valueForKey:@"AWDL_STATS_HISTOGRAM_BIN_END"];
      *(v20 - 1) = [v24 unsignedIntegerValue];

      v25 = [v18 objectAtIndexedSubscript:v19];
      v26 = [v25 valueForKey:@"AWDL_STATS_HISTOGRAM_BIN_VALUE"];
      *v20 = [v26 unsignedIntegerValue];
      v20 += 3;

      ++v19;
      v27 = [v18 count];
      if (v27 >= 6)
      {
        v28 = 6;
      }

      else
      {
        v28 = v27;
      }
    }

    while (v19 < v28);
  }

  v29 = [v102 valueForKey:@"AWDL_STATS_PARENTRSSI"];
  if ([v29 count])
  {
    v30 = 0;
    v31 = (v101 + 256);
    do
    {
      v32 = [v29 objectAtIndexedSubscript:v30];
      v33 = [v32 valueForKey:@"AWDL_STATS_HISTOGRAM_BIN_START"];
      *(v31 - 2) = [v33 unsignedIntegerValue];

      v34 = [v29 objectAtIndexedSubscript:v30];
      v35 = [v34 valueForKey:@"AWDL_STATS_HISTOGRAM_BIN_END"];
      *(v31 - 1) = [v35 unsignedIntegerValue];

      v36 = [v29 objectAtIndexedSubscript:v30];
      v37 = [v36 valueForKey:@"AWDL_STATS_HISTOGRAM_BIN_VALUE"];
      *v31 = [v37 unsignedIntegerValue];
      v31 += 3;

      ++v30;
      v38 = [v29 count];
      if (v38 >= 3)
      {
        v39 = 3;
      }

      else
      {
        v39 = v38;
      }
    }

    while (v30 < v39);
  }

  v40 = [v102 valueForKey:@"AWDL_STATS_SESSION_DURATION"];
  *(v101 + 48) = [v40 unsignedIntegerValue];

  v41 = [v102 valueForKey:@"AWDL_STATS_SUSPEND_DURATION"];
  *(v101 + 56) = [v41 unsignedIntegerValue];

  v42 = [v102 valueForKey:@"AWDL_STATS_SUSPEND_COUNT"];
  *(v101 + 64) = [v42 unsignedIntValue];

  v43 = [v102 valueForKey:@"AWDL_STATS_PEER_VERSION_BITMAP"];
  *(v101 + 68) = [v43 unsignedShortValue];

  v44 = [v102 valueForKey:@"AWDL_STATS_MCAST_RXBYTES"];
  *(v101 + 72) = [v44 unsignedIntValue];

  v45 = [v102 valueForKey:@"AWDL_STATS_MCAST_TXBYTES"];
  *(v101 + 76) = [v45 unsignedIntValue];

  v46 = [v102 valueForKey:@"AWDL_STATS_AF_RXBYTES"];
  *(v101 + 80) = [v46 unsignedIntValue];

  v47 = [v102 valueForKey:@"AWDL_STATS_DFSPAIRPLAY_CONNECTED"];
  *(v101 + 336) = [v47 unsignedIntValue];

  v48 = [v102 valueForKey:@"AWDL_STATS_DFSPAIRPLAY_FAILED"];
  *(v101 + 340) = [v48 unsignedIntValue];

  v49 = [v102 valueForKey:@"AWDL_STATS_DFSP_CSA_PEER"];
  *(v101 + 344) = [v49 unsignedIntValue];

  v50 = [v102 valueForKey:@"AWDL_STATS_DFSP_CSA_AP"];
  *(v101 + 348) = [v50 unsignedIntValue];

  v51 = [v102 valueForKey:@"AWDL_STATS_DFSP_CSA_SUSPECT"];
  *(v101 + 352) = [v51 unsignedIntValue];

  v52 = [v102 valueForKey:@"AWDL_STATS_DFSP_CSA_RESUME"];
  *(v101 + 356) = [v52 unsignedIntValue];

  v53 = [v102 valueForKey:@"AWDL_STATS_NUM_RT_SESSION"];
  *(v101 + 3562) = [v53 unsignedShortValue];

  v54 = [v102 valueForKey:@"AWDL_STATS_DYNSDB_ALLOWED"];
  *(v101 + 3564) = [v54 unsignedShortValue];

  v55 = [v102 valueForKey:@"AWDL_STATS_DYNSDB_ENTRY_OK"];
  *(v101 + 3566) = [v55 unsignedShortValue];

  v56 = [v102 valueForKey:@"AWDL_STATS_DYNSDB_RATE_EXIT"];
  *(v101 + 3568) = [v56 unsignedShortValue];

  v57 = [v102 valueForKey:@"AWDL_STATS_DYNSDB_ALLOWED"];
  *(v101 + 3570) = [v57 unsignedShortValue];

  v58 = [v102 valueForKey:@"AWDL_STATS_PEER_CHANNEL_STEER_COUNT_2G"];
  *(v101 + 3652) = [v58 unsignedIntValue];

  v59 = [v102 valueForKey:@"AWDL_STATS_PEER_CHANNEL_STEER_COUNT_5G"];
  *(v101 + 3656) = [v59 unsignedIntValue];

  v60 = [v102 valueForKey:@"AWDL_STATS_PEER_CHANNEL_STEER_BEFORE"];
  *(v101 + 3660) = [v60 unsignedIntValue];

  v61 = [v102 valueForKey:@"AWDL_STATS_PEER_CHANNEL_STEER_AFTER"];
  *(v101 + 3664) = [v61 unsignedIntValue];

  v62 = [v102 valueForKey:@"AWDL_STATS_STATS_DWELL_SESSION_COUNT"];
  *(v101 + 3668) = [v62 unsignedIntValue];

  v63 = [v102 valueForKey:@"AWDL_STATS_TOTAL_DURATION"];
  *(v101 + 3676) = [v63 unsignedIntValue];

  v64 = [v102 valueForKey:@"AWDL_STATS_STATS_INACTIVITY_DURATION"];
  *(v101 + 3680) = [v64 unsignedIntValue];

  v65 = [v102 valueForKey:@"AWDL_STATS_STATS_ACTIVITY_DURATION"];
  *(v101 + 3684) = [v65 unsignedIntValue];

  v66 = [v102 valueForKey:@"AWDL_STATS_PERCENTAGE_INACTIVITY"];
  *(v101 + 3688) = [v66 unsignedIntValue];

  v67 = [v102 valueForKey:@"AWDL_STATS_TIME_TO_SERVICE"];
  *(v101 + 3692) = [v67 unsignedIntValue];

  v68 = [v102 valueForKey:@"AWDL_STATS_PERCENTAGE_INFRA_IDLE"];
  *(v101 + 3696) = [v68 unsignedIntValue];

  v69 = [v102 valueForKey:@"AWDL_STATS_PERCENTAGE_INFRA_REAL"];
  *(v101 + 3700) = [v69 unsignedIntValue];

  v70 = [v102 valueForKey:@"AWDL_STATS_PERCENTAGE_INFRA_NONREAL"];
  *(v101 + 3704) = [v70 unsignedIntValue];

  v71 = [v102 valueForKey:@"AWDL_TIME_SINCE_LAST_POST"];
  *(v101 + 3708) = [v71 unsignedIntValue];

  v72 = [v102 objectForKey:@"AWDL_STATS_OUI"];
  v73 = [v72 bytes];
  v74 = [v72 length];
  if (v74 >= 3)
  {
    v75 = 3;
  }

  else
  {
    v75 = v74;
  }

  memcpy((v101 + 3712), v73, v75);
  v76 = [v102 valueForKey:@"AWDL_STATS_STATES"];
  if ([v76 count])
  {
    v77 = 0;
    v78 = (v101 + 368);
    do
    {
      v79 = [v76 objectAtIndexedSubscript:v77];
      v80 = [v79 valueForKey:@"AWDL_STATS_STATE_COUNT"];
      *(v78 - 2) = [v80 unsignedIntValue];

      v81 = [v76 objectAtIndexedSubscript:v77];
      v82 = [v81 valueForKey:@"AWDL_STATS_STATE_DURATION"];
      *v78 = [v82 unsignedIntegerValue];
      v78 += 2;

      ++v77;
      v83 = [v76 count];
      if (v83 >= 0x36)
      {
        v84 = 54;
      }

      else
      {
        v84 = v83;
      }
    }

    while (v77 < v84);
  }

  v85 = [v102 valueForKey:@"AWDL_STATS_SERVICES"];
  if ([v85 count])
  {
    v86 = 0;
    v87 = (v101 + 2808);
    do
    {
      v88 = [v85 objectAtIndexedSubscript:v86];
      v89 = [v88 valueForKey:@"AWDL_STATS_SERVICE_DURATION"];
      *(v87 - 1) = [v89 unsignedLongValue];

      v90 = [v85 objectAtIndexedSubscript:v86];
      v91 = [v90 valueForKey:@"AWDL_STATS_SERVICE_ID"];
      *(v87 - 3) = [v91 unsignedIntValue];

      v92 = [v85 objectAtIndexedSubscript:v86];
      v93 = [v92 valueForKey:@"AWDL_STATS_SERVICE_TYPE"];
      *(v87 - 15) = [v93 unsignedCharValue];

      v94 = [v85 objectAtIndexedSubscript:v86];
      v95 = [v94 valueForKey:@"AWDL_STATS_SERVICE_KEY"];

      strncpy(v87, [v95 cStringUsingEncoding:4], 0x1FuLL);
      ++v86;
      v96 = [v85 count];
      if (v96 >= 0x10)
      {
        v97 = 16;
      }

      else
      {
        v97 = v96;
      }

      v87 += 48;
    }

    while (v86 < v97);
  }

  v98 = [v102 valueForKey:@"AWDL_STATS_NUM_CACHED_PEERS_6GHZ"];
  *(v101 + 3624) = [v98 unsignedCharValue];

  v99 = [v102 valueForKey:@"APPLE80211KEY_AWDL_STATS_SELF_6E_CAPABLE"];
  *(v101 + 3625) = [v99 unsignedCharValue];

  v100 = [v102 valueForKey:@"APPLE80211KEY_AWDL_STATS_PEER_6E_CAP_COUNT"];
  *(v101 + 3626) = [v100 unsignedCharValue];
}

Class initWiFiP2PAWDLStateMonitor()
{
  if (qword_27F611CF8 != -1)
  {
    dispatch_once(&qword_27F611CF8, &__block_literal_global_0);
  }

  result = objc_getClass("WiFiP2PAWDLStateMonitor");
  _MergedGlobals_7 = result;
  _MergedGlobals = WiFiP2PAWDLStateMonitorFunction;
  return result;
}

void *__WiFiPeerToPeerLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WiFiPeerToPeer.framework/WiFiPeerToPeer", 2);
  WiFiPeerToPeerLibrary_sLib = result;
  return result;
}

Class initAWDLServiceDiscoveryManager()
{
  if (qword_27F611CF8 != -1)
  {
    dispatch_once(&qword_27F611CF8, &__block_literal_global_0);
  }

  result = objc_getClass("AWDLServiceDiscoveryManager");
  qword_27F611D00 = result;
  off_280C4DC00 = AWDLServiceDiscoveryManagerFunction;
  return result;
}

Class initAWDLTrafficRegistrationConfiguration()
{
  if (qword_27F611CF8 != -1)
  {
    dispatch_once(&qword_27F611CF8, &__block_literal_global_0);
  }

  result = objc_getClass("AWDLTrafficRegistrationConfiguration");
  qword_27F611D08 = result;
  off_280C4DC08 = AWDLTrafficRegistrationConfigurationFunction;
  return result;
}

Class initWiFiMACAddress()
{
  if (qword_27F611CF8 != -1)
  {
    dispatch_once(&qword_27F611CF8, &__block_literal_global_0);
  }

  result = objc_getClass("WiFiMACAddress");
  qword_27F611D10 = result;
  off_280C4DC10 = WiFiMACAddressFunction;
  return result;
}

Class initWiFiP2PAWDLState()
{
  if (qword_27F611CF8 != -1)
  {
    dispatch_once(&qword_27F611CF8, &__block_literal_global_0);
  }

  result = objc_getClass("WiFiP2PAWDLState");
  qword_27F611D18 = result;
  off_280C4DC18 = WiFiP2PAWDLStateFunction;
  return result;
}

Class initWiFiP2PSPITransactionRequestor()
{
  if (qword_27F611CF8 != -1)
  {
    dispatch_once(&qword_27F611CF8, &__block_literal_global_0);
  }

  result = objc_getClass("WiFiP2PSPITransactionRequestor");
  qword_27F611D20 = result;
  off_280C4DC20 = WiFiP2PSPITransactionRequestorFunction;
  return result;
}

void _copyMACAddress(void *a1, void *a2)
{
  v7 = [a2 objectForKey:?];
  v3 = v7;
  v4 = [v7 bytes];
  v5 = [v7 length];
  if (v5 >= 6)
  {
    v6 = 6;
  }

  else
  {
    v6 = v5;
  }

  memcpy(a1, v4, v6);
}

void *funcAddr(char *__symbol)
{
  v9 = *MEMORY[0x277D85DE8];
  result = image;
  if (image)
  {
    goto LABEL_8;
  }

  v3 = getenv("DYLD_IMAGE_SUFFIX");
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v8.st_blksize = v4;
  *v8.st_qspare = v4;
  v8.st_birthtimespec = v4;
  *&v8.st_size = v4;
  v8.st_mtimespec = v4;
  v8.st_ctimespec = v4;
  *&v8.st_uid = v4;
  v8.st_atimespec = v4;
  *&v8.st_dev = v4;
  memset(v7, 170, sizeof(v7));
  __strlcpy_chk();
  if (v3)
  {
    __strlcat_chk();
  }

  v5 = stat(v7, &v8) < 0 ? "/usr/lib/libWAPI.dylib" : v7;
  result = dlopen(v5, 6);
  image = result;
  if (result)
  {
LABEL_8:
    result = dlsym(result, __symbol);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _WAPIStop(uint64_t a1)
{
  if (!image)
  {
    return 0;
  }

  v2 = _WAPIStop_wapistop;
  if (!_WAPIStop_wapistop)
  {
    v2 = funcAddr("WAPIStop");
    _WAPIStop_wapistop = v2;
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return (v2)(a1);
}