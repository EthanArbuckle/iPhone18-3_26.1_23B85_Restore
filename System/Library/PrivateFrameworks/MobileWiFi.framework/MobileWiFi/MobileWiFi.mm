uint64_t __WiFiManagerClientMIGDemuxCallback(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2[5];
  if (v3 >= dword_286BCCE08 && v3 < unk_286BCCE0C)
  {
    LOBYTE(result) = wifi_manager_client_server(a2, a3);
  }

  else
  {
    LOBYTE(result) = 0;
  }

  return result;
}

uint64_t _wifi_manager_client_dispatch_event(unsigned int a1, UInt8 *a2, unsigned int a3, uint64_t a4, UInt8 *a5, unsigned int a6)
{
  v11 = WiFiPortCacheCopy(a1);
  if (v11)
  {
    v12 = v11;
    v13 = _WiFiCopyUnserialized(a2, a3);
    if (v13)
    {
      Device = WiFiManagerClientGetDevice(v12, v13);
    }

    else
    {
      Device = 0;
    }

    v15 = _WiFiCopyUnserialized(a5, a6);
    switch(a4)
    {
      case 0:
        if (Device)
        {
          _WiFiDeviceClientDispatchPowerEvent(Device);
        }

        goto LABEL_67;
      case 1:
        if (Device)
        {
          _WiFiDeviceClientDispatchLinkEvent(Device, v15);
        }

        goto LABEL_67;
      case 2:
        v23 = v12;
        v24 = v13;
        v25 = 0;
        goto LABEL_38;
      case 3:
        if (Device)
        {
          _WiFiDeviceClientDispatchRemovalEvent(Device);
        }

        goto LABEL_67;
      case 4:
        goto LABEL_67;
      case 6:
        if (Device)
        {
          _WiFiDeviceClientDispatchScanCacheUpdateEvent(Device, v15);
        }

        goto LABEL_67;
      case 7:
      case 8:
        if (Device)
        {
          _WiFiDeviceClientDispatchScanUpdateEvent(Device, v15);
        }

        goto LABEL_67;
      case 9:
        v19 = WiFiManagerClientGetDevice(v12, v13);
        v20 = v12[20];
        if (!v20)
        {
          goto LABEL_67;
        }

        v21 = v19;
        if (v15)
        {
          NetworksFromRecords = _WiFiCreateNetworksFromRecords(v15);
          (v12[20])(v12, v21, NetworksFromRecords, v12[21]);
          goto LABEL_35;
        }

        v28 = v12[21];
        goto LABEL_75;
      case 10:
        _wifi_manager_client_dispatch_event_cold_2(Device, v15);
        goto LABEL_67;
      case 11:
        if (Device)
        {
          _WiFiDeviceClientDispatchResumeScanEvent(Device);
        }

        goto LABEL_67;
      case 12:
        _wifi_manager_client_dispatch_event_cold_3(Device, v15);
        goto LABEL_67;
      case 14:
        if (Device)
        {
          _WiFiDeviceClientDispatchLQMEvent(Device, v15);
        }

        goto LABEL_67;
      case 15:
        if (Device)
        {
          _WiFiDeviceClientDispatchDiagnosticsStartEvent(Device, v15);
        }

        goto LABEL_67;
      case 17:
        v23 = v12;
        v24 = v15;
        v25 = 1;
LABEL_38:
        WiFiManagerClientDispatchAttachmentEvent(v23, v24, v25);
        goto LABEL_67;
      case 18:
        v16 = v12;
        v17 = v15;
        v18 = 0;
        goto LABEL_56;
      case 19:
        if (Device)
        {
          _WiFiDeviceClientDispatchHostApStateChangedEvent(Device, v15);
        }

        goto LABEL_67;
      case 20:
        if (Device)
        {
          _WiFiDeviceClientDispatchDeviceAvailableEvent(Device, v15);
        }

        goto LABEL_67;
      case 21:
        v26 = WiFiManagerClientGetDevice(v12, v13);
        v20 = v12[22];
        if (!v20)
        {
          goto LABEL_67;
        }

        v21 = v26;
        if (v15)
        {
          NetworksFromRecords = _WiFiCreateNetworksFromRecords(v15);
          (v12[22])(v12, v21, NetworksFromRecords, v12[23]);
LABEL_35:
          if (NetworksFromRecords)
          {
            CFRelease(NetworksFromRecords);
          }

LABEL_68:
          CFRelease(v15);
LABEL_69:
          if (v13)
          {
LABEL_70:
            CFRelease(v13);
          }
        }

        else
        {
          v28 = v12[23];
LABEL_75:
          v20(v12, v21, 0, v28);
          if (v13)
          {
            goto LABEL_70;
          }
        }

        CFRelease(v12);
        break;
      case 22:
        if (Device)
        {
          _WiFiDeviceClientDispatchVirtInterfaceStateChangeEvent(Device, v15);
        }

        goto LABEL_67;
      case 23:
        if (Device)
        {
          _WiFiDeviceClientDispatchAutoJoinNotification(Device, v15);
        }

        goto LABEL_67;
      case 24:
        if (Device)
        {
          _WiFiDeviceClientDispatchRangingReportEvent(Device, v15);
        }

        goto LABEL_67;
      case 25:
        _wifi_manager_client_dispatch_event_cold_1(v12, v13, v15);
        goto LABEL_67;
      case 30:
        if (Device)
        {
          _WiFiDeviceClientDispatchRoamStatusEvent(Device, v15);
        }

        goto LABEL_67;
      case 31:
        if (Device)
        {
          _WiFiDeviceClientDispatchWeightAvgLQMEvent(Device, v15);
        }

        goto LABEL_67;
      case 34:
        if (Device)
        {
          _WiFiDeviceClientDispatchUserJoinNotification(Device, v15);
        }

        goto LABEL_67;
      case 35:
        if (Device)
        {
          _WiFiDeviceClientDispatchBTScanIntervalRelaxEvent(Device, v15);
        }

        goto LABEL_67;
      case 37:
        _wifi_manager_client_dispatch_event_cold_6(Device, v15);
        goto LABEL_67;
      case 38:
        _wifi_manager_client_dispatch_event_cold_4(Device, v15);
        goto LABEL_67;
      case 39:
        _wifi_manager_client_dispatch_event_cold_5(Device, v15);
        goto LABEL_67;
      case 40:
        if (Device)
        {
          _WiFiDeviceClientDispatchCatsUpdateEvent(Device, v15);
        }

        goto LABEL_67;
      case 41:
        if (Device)
        {
          _WiFiDeviceClientDispatchP2pThreadCoexEvent(Device, v15);
        }

        goto LABEL_67;
      case 42:
        if (Device)
        {
          _WiFiDeviceClientDispatchBTCoexStatsEvent(Device, v15);
        }

        goto LABEL_67;
      case 43:
        if (Device)
        {
          _WiFiDeviceClientDispatchBSPEvent(Device, v15);
        }

        goto LABEL_67;
      case 44:
        v16 = v12;
        v17 = v15;
        v18 = 1;
LABEL_56:
        WiFiManagerClientRemoveDevice(v16, v17, 1, v18);
        goto LABEL_67;
      case 45:
        if (Device)
        {
          _WiFiDeviceClientDispatchUCMEvent(Device, v15);
        }

        goto LABEL_67;
      case 46:
        if (Device)
        {
          _WiFiDeviceClientDispatchTdConfirmedEvent(Device, v15);
        }

        goto LABEL_67;
      default:
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
LABEL_67:
        if (v15)
        {
          goto LABEL_68;
        }

        goto LABEL_69;
    }
  }

  _WiFiVMDealloc(a2, a3);
  _WiFiVMDealloc(a5, a6);
  return 0;
}

void __WiFiMIGMachPortCFPortCallback(int a1, mach_msg_header_t *a2, int a3, CFTypeRef cf)
{
  if (!cf)
  {
    return;
  }

  CFRetain(cf);
  v6 = MEMORY[0x25F84D2B0](0, *(cf + 3), 3918280936, 0);
  if (v6)
  {
    v7 = v6;
    msgh_remote_port = a2->msgh_remote_port;
    *v6 = a2->msgh_bits & 0x1F;
    *(v6 + 4) = 36;
    *(v6 + 8) = msgh_remote_port;
    *(v6 + 20) = a2->msgh_id + 100;
    if (a2->msgh_id == 70)
    {
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 32) = 0;
      v9 = (v6 + 32);
      v10 = *(cf + 12);
      if (v10)
      {
        v10(cf, *(cf + 13));
      }
    }

    else
    {
      v11 = *MEMORY[0x277D85EF8];
      *(v6 + 32) = -303;
      v9 = (v6 + 32);
      *(v6 + 24) = v11;
      v12 = *(cf + 10);
      if (v12)
      {
        v12(cf, a2, v6, *(cf + 11));
      }
    }

    if ((v7->msgh_bits & 0x80000000) == 0 && *v9)
    {
      if (*v9 == -305)
      {
        goto LABEL_18;
      }

      a2->msgh_remote_port = 0;
      mach_msg_destroy(a2);
    }

    if (v7->msgh_remote_port)
    {
      if ((v7->msgh_bits & 0x1F) == 0x12)
      {
        v13 = 1;
      }

      else
      {
        v13 = 17;
      }

      if ((mach_msg(v7, v13, v7->msgh_size, 0, 0, 0, 0) - 268435459) > 1)
      {
        goto LABEL_18;
      }
    }

    else if ((v7->msgh_bits & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    mach_msg_destroy(v7);
LABEL_18:
    CFAllocatorDeallocate(0, v7);
  }

  CFRelease(cf);
}

uint64_t wifi_manager_client_server(_DWORD *a1, uint64_t a2)
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
  if ((v4 - 96974) >= 0xFFFFFFF2 && (v5 = *(&_wifi_manager_client_subsystem + 5 * (v4 - 96960) + 5)) != 0)
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

uint64_t _Xwifi_manager_client_dispatch_event(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 2 && *(result + 4) == 84)
  {
    if (*(result + 39) == 1 && *(result + 55) == 1)
    {
      v3 = *(result + 40);
      if (v3 == *(result + 68))
      {
        v4 = *(result + 56);
        if (v4 == *(result + 80))
        {
          result = _wifi_manager_client_dispatch_event(*(result + 12), *(result + 28), v3, *(result + 72), *(result + 44), v4);
          *(a2 + 32) = result;
          return result;
        }
      }
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

const void *WiFiPortCacheCopy(unsigned int a1)
{
  pthread_mutex_lock(&__wifiPortCacheLock);
  if (__wifiPortCache)
  {
    Value = CFDictionaryGetValue(__wifiPortCache, a1);
    v3 = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock(&__wifiPortCacheLock);
  return v3;
}

CFPropertyListRef _WiFiCopyUnserialized(UInt8 *bytes, CFIndex length)
{
  if (!bytes || !length)
  {
    if ((bytes == 0) != (length == 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _WiFiCopyUnserialized_cold_1();
    }

    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytes, length, *MEMORY[0x277CBED00]);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  error = 0;
  v5 = CFPropertyListCreateWithData(v2, v3, 1uLL, 0, &error);
  if (error)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _WiFiCopyUnserialized_cold_2(&error);
    }

    CFRelease(error);
  }

  CFRelease(v4);
  return v5;
}

const void *WiFiManagerClientGetDevice(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  if (!Value && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    WiFiManagerClientGetDevice_cold_1();
  }

  os_unfair_recursive_lock_unlock();
  return Value;
}

uint64_t _WiFiVMDealloc(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v2 = *MEMORY[0x277D85F48];
    JUMPOUT(0x25F84DFD0);
  }

  return result;
}

_WORD *WiFiDeviceClientCopyCurrentNetwork(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_0();
  v2 = getprogname();
  if (!strncmp("SpringBoard", v2, 0xBuLL) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    if (a1)
    {
      v32 = *(a1 + 16);
    }

    else
    {
      v32 = -1;
    }

    *buf = 136315394;
    v36 = "__WiFiDeviceClientCopyCurrentNetworkLegacy";
    v37 = 1024;
    v38 = v32;
    _os_log_error_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: server port [%d]", buf, 0x12u);
  }

  IsServerPortValid = _WiFiDeviceClientIsServerPortValid(a1);
  if (IsServerPortValid && (OUTLINED_FUNCTION_9_0(), OUTLINED_FUNCTION_10_0(), v11 = OUTLINED_FUNCTION_0_1(), v16 = wifi_device_copy_current_network(v11, v12, v13, v14, v15), v24 = OUTLINED_FUNCTION_2(v16, v17, v18, v19, v20, v21, v22, v23, v33, v34), (IsServerPortValid = _WiFiCopyUnserialized(v24, v25)) != 0))
  {
    v26 = IsServerPortValid;
    v27 = WiFiNetworkCreate(*MEMORY[0x277CBECE8], IsServerPortValid);
    CFRelease(v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = OUTLINED_FUNCTION_2(IsServerPortValid, v4, v5, v6, v7, v8, v9, v10, v33, v34);
  _WiFiVMDealloc(v28, v29);
  v30 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t wifi_device_copy_current_network(int a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v16[16] = 0x1AAAAAAAALL;
  *v20 = -1431655766;
  *&v20[4] = v8;
  *v16 = v8;
  v17 = a2;
  v18 = 27918592;
  v19 = a3;
  *v20 = *MEMORY[0x277D85EF8];
  *&v20[8] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v16[4] = a1;
  *&v16[8] = special_reply_port;
  v15 = -2147478253;
  *&v16[12] = 0x1107100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    v10 = *&v16[8];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(&v15, 3162115, 0x38u, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (*&v16[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&v16[16] == 69845)
      {
        if ((v15 & 0x80000000) == 0)
        {
          if (*v16 == 36)
          {
            v12 = 4294966996;
            if (HIDWORD(v17))
            {
              if (*&v16[4])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = HIDWORD(v17);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_24;
        }

        v12 = 4294966996;
        if (*&v16[20] == 1 && *v16 == 56 && HIBYTE(v18) == 1)
        {
          v13 = v19;
          if (v19 == *&v20[8])
          {
            v12 = 0;
            *a4 = v17;
            *a5 = v13;
            return v12;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v15);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  return v12;
}

uint64_t OUTLINED_FUNCTION_2_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15)
{
  a15 = 0xAAAAAAAAAAAAAAAALL;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  a13 = v16;
  a14 = v16;
  a11 = v16;
  a12 = v16;
  a9 = v16;
  a10 = v16;

  return CC_SHA256_Init(&a9);
}

_WORD *__WiFiNetworkCreate(int a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 != CFDictionaryGetTypeID())
    {
      goto LABEL_27;
    }

    Value = CFDictionaryGetValue(cf, @"SSID_STR");
    if (Value)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(Value))
      {
        return 0;
      }
    }

    if (!WiFiNetworkIsSSIDLengthValid(Value) && !CFDictionaryGetValue(cf, @"DomainName"))
    {
LABEL_27:
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      return 0;
    }

    v8 = CFDictionaryGetValue(cf, @"SSID");
    if (v8)
    {
      v9 = v8;
      v10 = CFDataGetTypeID();
      if (v10 != CFGetTypeID(v9))
      {
        return 0;
      }
    }
  }

  if (!__kWiFiNetworkTypeID)
  {
    OUTLINED_FUNCTION_0_2();
    pthread_once(v11, v12);
  }

  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v15 = (Instance + 16);
    v16 = *MEMORY[0x277CBECE8];
    if (cf)
    {
      if (a3)
      {
        DeepCopy = CFPropertyListCreateDeepCopy(v16, cf, 2uLL);
      }

      else
      {
        DeepCopy = CFDictionaryCreateMutableCopy(v16, 0, cf);
      }
    }

    else
    {
      DeepCopy = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    *v15 = DeepCopy;
    if (DeepCopy)
    {
      v18 = CFDictionaryGetValue(DeepCopy, @"HIDDEN_NETWORK");
      v19 = *MEMORY[0x277CBED28];
      if (v18)
      {
        v20 = v18 == v19;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        CFDictionaryRemoveValue(*v15, @"HIDDEN_NETWORK");
        CFDictionarySetValue(*v15, @"UserDirected", v19);
      }

      v14[12] = -1;
      return v14;
    }

    CFRelease(v14);
    return 0;
  }

  return v14;
}

void _WiFiDeviceClientDispatchCatsUpdateEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 352);
  if (v3)
  {
    v4 = *(a1 + 360);

    v3(a1, a2, v4);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

const __CFNumber *WiFiNetworkGetCIntProperty(uint64_t a1, void *a2)
{
  result = WiFiNetworkGetProperty(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID())
    {
      valuePtr = -1431655766;
      if (CFNumberGetValue(v3, kCFNumberIntType, &valuePtr))
      {
        return valuePtr;
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    }

    else if (v4 == CFBooleanGetTypeID())
    {
      return (v3 == *MEMORY[0x277CBED28]);
    }

    return 0;
  }

  return result;
}

const void *WiFiNetworkGetProperty(uint64_t a1, void *key)
{
  if (!a1 || (v3 = *(a1 + 16)) == 0)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  v5 = __eapKeys;
  if (__eapKeys)
  {
    v10.length = CFArrayGetCount(__eapKeys);
    v10.location = 0;
    v6 = CFArrayContainsValue(v5, v10, key);
    v3 = *(a1 + 16);
    if (v6)
    {
      Value = CFDictionaryGetValue(v3, @"EnterpriseProfile");
      if (!Value)
      {
        return 0;
      }

      v3 = CFDictionaryGetValue(Value, @"EAPClientConfiguration");
      if (!v3)
      {
        return 0;
      }
    }
  }

  return CFDictionaryGetValue(v3, key);
}

uint64_t WiFiDeviceClientSetCoexParameters(uint64_t a1, uint64_t a2, const void *a3)
{
  OUTLINED_FUNCTION_11();
  if (_WiFiDeviceClientIsServerPortValid(v6))
  {
    v7 = *MEMORY[0x277CBECE8];
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v3);
    v9 = BinaryData;
    if (BinaryData)
    {
      CFDataGetBytePtr(BinaryData);
      OUTLINED_FUNCTION_16_0();
    }

    v10 = _CFPropertyListCreateBinaryData(v7, a3);
    v11 = v10;
    if (v10)
    {
      CFDataGetBytePtr(v10);
      CFDataGetLength(v11);
    }

    v12 = *(v4 + 16);
    CFDataGetBytePtr(*(v4 + 48));
    CFDataGetLength(*(v4 + 48));
    v13 = OUTLINED_FUNCTION_8_0();
    wifi_device_set_coex_parameters(v13, v14, v15, v16, v17, v18, v19, v20);
    if (v9)
    {
      CFRelease(v9);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  return 4294963394;
}

uint64_t _WiFiDeviceClientDispatchWeightAvgLQMEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 320);
  if (v2)
  {
    return v2(result, a2, *(result + 328));
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchBTCoexStatsEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 336);
  if (v2)
  {
    return v2(result, a2, *(result + 344));
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchLQMEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 304);
  if (v2)
  {
    return v2(result, a2, *(result + 312));
  }

  return result;
}

BOOL WiFiNetworkIsSSIDLengthValid(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (CFEqual(a1, @"_AppleWi-FiInternetTetheringSSID_"))
  {
    return 1;
  }

  return CFStringGetLength(a1) < 33;
}

void __WiFiNetworkRelease(void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    v3 = __kWiFiNetworkTypeID;
    if (!__kWiFiNetworkTypeID)
    {
      pthread_once(&__wifiNetworkTypeInit, __WiFiNetworkRegister);
      v3 = __kWiFiNetworkTypeID;
    }

    if (v2 == v3)
    {
      v4 = a1[2];
      if (v4)
      {
        CFRelease(v4);
        a1[2] = 0;
      }
    }
  }
}

CFTypeRef _CFPropertyListCreateBinaryData(CFAllocatorRef bufferAllocator, const void *a2)
{
  v3 = CFWriteStreamCreateWithAllocatedBuffers(bufferAllocator, bufferAllocator);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFWriteStreamOpen(v3))
  {
    error = 0;
    CFPropertyListWrite(a2, v4, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    CFWriteStreamClose(v4);
    if (error)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        _CFPropertyListCreateBinaryData_cold_1(&error);
      }

      CFRelease(error);
    }

    v5 = CFWriteStreamCopyProperty(v4, *MEMORY[0x277CBF068]);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v4);
  return v5;
}

uint64_t wifi_device_copy_property(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7)
{
  v17 = 2;
  v18 = a2;
  v19 = 27918592;
  v20 = a3;
  v21 = a4;
  v22 = 27918592;
  v23 = a5;
  v24 = *MEMORY[0x277D85EF8];
  v25 = a3;
  v26 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&v16.msgh_bits = 0xAAAAAAAA80001513;
  v16.msgh_remote_port = a1;
  v16.msgh_local_port = special_reply_port;
  *&v16.msgh_voucher_port = 0x1106C00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v16);
    msgh_local_port = v16.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&v16, 3162115, 0x4Cu, 0x40u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (v16.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (v16.msgh_id == 69840)
      {
        if ((v16.msgh_bits & 0x80000000) == 0)
        {
          if (v16.msgh_size == 36)
          {
            v13 = 4294966996;
            if (HIDWORD(v18))
            {
              if (v16.msgh_remote_port)
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

          goto LABEL_24;
        }

        v13 = 4294966996;
        if (v17 == 1 && *&v16.msgh_size == 56 && HIBYTE(v19) == 1)
        {
          v14 = v20;
          if (v20 == v22)
          {
            v13 = 0;
            *a6 = v18;
            *a7 = v14;
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v16);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  return v13;
}

uint64_t wifi_device_set_coex_parameters(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int *a8)
{
  v32 = *MEMORY[0x277D85DE8];
  v18 = 3;
  v19 = a2;
  v20 = 27918592;
  v21 = a3;
  v22 = a4;
  v23 = 27918592;
  v24 = a5;
  v25 = a6;
  v26 = 27918592;
  v27 = a7;
  v28 = *MEMORY[0x277D85EF8];
  v29 = a3;
  v30 = a5;
  v31 = a7;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1106E00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162115, 0x60u, 0x30u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 69842)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v13 = HIDWORD(v19);
              if (!HIDWORD(v19))
              {
                *a8 = v20;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v14 = 1;
            }

            else
            {
              v14 = HIDWORD(v19) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = HIDWORD(v19);
            }

            goto LABEL_23;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

const void *WiFiNetworkGetSSID(const void *result)
{
  if (result)
  {
    v1 = result;
    result = WiFiNetworkGetProperty(result, @"SSID_STR");
    if (!result)
    {
      Property = WiFiNetworkGetProperty(v1, @"SSID");
      v3 = *MEMORY[0x277CBECE8];
      if (Property && ((v4 = Property, (v5 = CFStringCreateFromExternalRepresentation(*MEMORY[0x277CBECE8], Property, 0x8000100u)) != 0) || (v5 = CFStringCreateFromExternalRepresentation(v3, v4, 0)) != 0) || (v5 = CFStringCreateWithCString(v3, "", 0x8000100u)) != 0)
      {
        v6 = v5;
        WiFiNetworkSetProperty(v1, @"SSID_STR", v5);
        CFRelease(v6);
      }

      return WiFiNetworkGetProperty(v1, @"SSID_STR");
    }
  }

  return result;
}

const void *WiFiNetworkGetChannel(uint64_t a1)
{
  if (a1)
  {

    return WiFiNetworkGetProperty(a1, @"CHANNEL");
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

uint64_t WiFiNetworkGetOperatingBand(uint64_t result)
{
  v11 = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    v3 = __kWiFiNetworkTypeID;
    if (!__kWiFiNetworkTypeID)
    {
      OUTLINED_FUNCTION_0_2();
      pthread_once(v4, v5);
      v3 = __kWiFiNetworkTypeID;
    }

    if (v2 == v3)
    {
      Property = WiFiNetworkGetProperty(v1, @"CHANNEL");
      v7 = WiFiNetworkGetProperty(v1, @"CHANNEL_FLAGS");
      if (v7)
      {
        valuePtr = 0;
        CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
        if ((valuePtr & 8) != 0)
        {
          return 1;
        }

        if ((valuePtr & 0x10) != 0)
        {
          return 2;
        }

        if ((valuePtr & 0x2000) != 0)
        {
          return 3;
        }
      }

      v1 = Property;
      if (!Property)
      {
        return 0;
      }
    }

    else
    {
      v8 = CFGetTypeID(v1);
      if (v8 != CFNumberGetTypeID())
      {
        return 0;
      }
    }

    CFNumberGetValue(v1, kCFNumberIntType, &v11);
    if (v11)
    {
      if (v11 < 15)
      {
        return 1;
      }

      v9 = 0;
      while (v11 != channels5Ghz[v9])
      {
        if (++v9 == 33)
        {
          return 0;
        }
      }

      return 2;
    }

    return 0;
  }

  return result;
}

uint64_t WiFiManagerClientGetWoWCapability(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_get_wow_capability(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

atomic_uint *__WiFiManagerClientGetOrReconnectServerPort(uint64_t a1, int a2)
{
  error[3] = *MEMORY[0x277D85DE8];
  v35 = 0;
  sp = 0;
  previous = -1431655766;
  v34 = -1431655766;
  v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  os_unfair_recursive_lock_lock_with_options();
  v5 = *(a1 + 32);
  if (a2)
  {
    WiFiSendRightRelease(*(a1 + 32));
    *(a1 + 32) = 0;
  }

  else if (v5)
  {
    atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
    os_unfair_recursive_lock_unlock();
    goto LABEL_38;
  }

  error[0] = 0;
  v6 = *MEMORY[0x277CBECE8];
  v7 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (!v7)
  {
    goto LABEL_41;
  }

  v8 = v7;
  v9 = SecTaskCopyValueForEntitlement(v7, @"com.apple.wifi.manager-access", error);
  v11 = 1;
  if (v9)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v9))
    {
      if (CFEqual(v9, *MEMORY[0x277CBED28]))
      {
        v11 = 0;
      }
    }
  }

  if (error[0])
  {
    CFRelease(error[0]);
    error[0] = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(v8);
  if (v11)
  {
LABEL_41:
    __WiFiManagerClientGetOrReconnectServerPort_cold_8();
LABEL_47:
    os_unfair_recursive_lock_unlock();
    v5 = 0;
    goto LABEL_38;
  }

  if (bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.wifi.manager", &sp))
  {
    __WiFiManagerClientGetOrReconnectServerPort_cold_1();
    goto LABEL_47;
  }

  if (!sp)
  {
    __WiFiManagerClientGetOrReconnectServerPort_cold_7();
    goto LABEL_47;
  }

  Port = WiFiMIGMachPortGetPort(*(a1 + 40));
  v13 = MEMORY[0x277D85F48];
  mach_port_insert_right(*MEMORY[0x277D85F48], Port, Port, 0x14u);
  if (mach_port_request_notification(*v13, Port, 70, 0, Port, 0x15u, &previous))
  {
    __WiFiManagerClientGetOrReconnectServerPort_cold_2();
    goto LABEL_47;
  }

  v14 = sp;
  v15 = *(a1 + 16);
  v16 = getpid();
  wifi_manager_open(v14, v15, v16, Port, &v35, &v34);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __WiFiManagerClientGetOrReconnectServerPort_cold_3(v4);
  }

  mach_port_deallocate(*v13, sp);
  if (v34 == 1)
  {
    __WiFiManagerClientGetOrReconnectServerPort_cold_6();
    goto LABEL_47;
  }

  v17 = v35;
  if (!v35)
  {
    __WiFiManagerClientGetOrReconnectServerPort_cold_5();
    goto LABEL_47;
  }

  v5 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *v5 = 1;
  v5[1] = v17;
  *(a1 + 32) = v5;
  wifi_manager_set_event_mask(v35, *(a1 + 72));
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
  memset(length, 0, sizeof(length));
  wifi_manager_copy_devices(v35, &length[1], length);
  if (*&length[1])
  {
    if (length[0])
    {
      v19 = _WiFiCopyUnserialized(*&length[1], length[0]);
      if (v19)
      {
        v20 = v19;
        error[0] = 0;
        Count = CFArrayGetCount(v19);
        if (Count >= 1)
        {
          v22 = Count;
          for (i = 0; i != v22; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
            if (ValueAtIndex)
            {
              v25 = ValueAtIndex;
              Value = CFDictionaryGetValue(ValueAtIndex, @"VIRT_IF_NAME");
              v27 = CFDictionaryGetValue(v25, @"VIRT_IF_ROLE");
              CFNumberGetValue(v27, kCFNumberLongType, error);
              if (Value)
              {
                __WiFiManagerClientAddDevice(a1, Value, error[0], Mutable);
              }
            }
          }
        }

        CFRelease(v20);
      }
    }
  }

  _WiFiVMDealloc(*&length[1], length[0]);
  atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
  os_unfair_recursive_lock_unlock();
  if (Mutable)
  {
    if (CFArrayGetCount(Mutable) >= 1)
    {
      v28 = 0;
      v29 = MEMORY[0x277D86220];
      do
      {
        v30 = CFArrayGetValueAtIndex(Mutable, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          __WiFiManagerClientGetOrReconnectServerPort_cold_4(error, (error + 4));
        }

        (*(a1 + 128))(a1, v30, *(a1 + 136));
        ++v28;
      }

      while (CFArrayGetCount(Mutable) > v28);
    }

    CFRelease(Mutable);
  }

LABEL_38:
  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t wifi_manager_get_wow_capability(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x1105800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69820)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

void WiFiSendRightRelease(mach_port_name_t *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], a1[1]);

    free(a1);
  }
}

BOOL WiFiManagerClientGetWoWState(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  v9 = v1;
  if (!v1)
  {
    goto LABEL_7;
  }

  v10 = OUTLINED_FUNCTION_1();
  wifi_manager_copy_wow_state(v10, v11, v12);
  v13 = 0;
  v1 = length_4;
  if (length_4)
  {
    v2 = HIDWORD(v18);
    if (HIDWORD(v18))
    {
      v1 = _WiFiCopyUnserialized(length_4, HIDWORD(v18));
      if (v1)
      {
        v14 = v1;
        v13 = CFDictionaryGetValue(v1, @"WoWEnabled") == *MEMORY[0x277CBED28];
        CFRelease(v14);
        goto LABEL_6;
      }

LABEL_7:
      v13 = 0;
    }
  }

LABEL_6:
  v15 = OUTLINED_FUNCTION_2(v1, v2, v3, v4, v5, v6, v7, v8, v18, length_4);
  _WiFiVMDealloc(v15, v16);
  WiFiSendRightRelease(v9);
  return v13;
}

atomic_uint *OUTLINED_FUNCTION_3(uint64_t a1)
{

  return __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
}

uint64_t wifi_manager_copy_wow_state(int a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v6;
  *v15 = v6;
  *&msg[20] = v6;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x1105500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 69817)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v10 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg[32];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_25;
        }

        v10 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v15[3] == 1)
        {
          v11 = *&v15[4];
          if (*&v15[4] == *&v15[16])
          {
            v10 = 0;
            *a2 = *&msg[28];
            *a3 = v11;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL WiFiDeviceClientGetPower(uint64_t a1)
{
  result = _WiFiDeviceClientIsServerPortValid(a1);
  if (result)
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    v2 = OUTLINED_FUNCTION_2_0();
    wifi_device_get_power(v2, v3, v4, v5);
    return 0;
  }

  return result;
}

uint64_t wifi_device_get_power(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 1;
  v15 = a2;
  v16 = 27918592;
  v17 = a3;
  v18 = *MEMORY[0x277D85EF8];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 0xAAAAAAAA80001513;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x1106F00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 69843)
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
                goto LABEL_24;
              }

              goto LABEL_23;
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

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v13);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void WiFiManagerClientSetType(uint64_t a1, int a2)
{
  *(a1 + 16) = a2;
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_client_type(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

uint64_t wifi_manager_set_client_type(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69731;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t WiFiDeviceClientScanAsync(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  if (!a2)
  {
    return 4294963396;
  }

  if (_WiFiDeviceClientIsServerPortValid(a1))
  {
    if (!WiFiManagerClientIsUserInteractive(*(a1 + 56)))
    {
      v8 = vabdd_f64(CFAbsoluteTimeGetCurrent(), *&WiFiDeviceClientScanAsync_timeBetweenCalls);
      if (v8 < 0.02)
      {
        NSLog(&cfstr_SCalled02fsAgo.isa, "WiFiDeviceClientScanAsync", *&v8, 0x3F947AE147AE147BLL);
        return 4294963366;
      }

      WiFiDeviceClientScanAsync_timeBetweenCalls = CFAbsoluteTimeGetCurrent();
    }

    *(a1 + 160) = a3;
    *(a1 + 168) = a4;
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
    if (BinaryData)
    {
      v10 = BinaryData;
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v10);
      v13 = *(a1 + 16);
      v14 = CFDataGetBytePtr(*(a1 + 48));
      v15 = CFDataGetLength(*(a1 + 48));
      wifi_device_scan_async(v13, v14, v15, BytePtr, Length, &v20);
      CFRelease(v10);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = CFDataGetBytePtr(*(a1 + 48));
      v19 = CFDataGetLength(*(a1 + 48));
      wifi_device_scan_async(v17, v18, v19, 0, 0, &v20);
    }
  }

  else
  {
    return -3902;
  }

  return v20;
}

BOOL WiFiManagerClientIsUserInteractive(_BOOL8 result)
{
  if (result)
  {
    return *(result + 81) != 0;
  }

  return result;
}

uint64_t wifi_device_scan_async(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v16 = 2;
  v17 = a2;
  v18 = 27918592;
  v19 = a3;
  v20 = a4;
  v21 = 27918592;
  v22 = a5;
  v23 = *MEMORY[0x277D85EF8];
  v24 = a3;
  v25 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1107400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v10 = mach_msg(&msg, 3162115, 0x4Cu, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (msg.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (msg.msgh_id == 69848)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v11 = HIDWORD(v17);
              if (!HIDWORD(v17))
              {
                *a6 = v18;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v12 = 1;
            }

            else
            {
              v12 = HIDWORD(v17) == 0;
            }

            if (v12)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = HIDWORD(v17);
            }

            goto LABEL_23;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

void _wifi_manager_client_dispatch_scan_results()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = OUTLINED_FUNCTION_13(v2);
  if (v3)
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_8();
    v7 = _WiFiCopyUnserialized(v5, v6);
    if (v7)
    {
      v8 = v7;
      Device = WiFiManagerClientGetDevice(v4, v7);
      if (Device)
      {
        v10 = Device;
        v11 = OUTLINED_FUNCTION_10();
        v13 = _WiFiCopyUnserialized(v11, v12);
        if (v13)
        {
          v14 = v13;
          v15 = CFGetTypeID(v13);
          if (v15 == CFArrayGetTypeID())
          {
            NetworksFromRecords = _WiFiCreateNetworksFromRecords(v14);
            _WiFiDeviceClientDispatchScanResults(v10, NetworksFromRecords, v1);
            if (NetworksFromRecords)
            {
              CFRelease(NetworksFromRecords);
            }
          }

          else
          {
            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
            v23 = OUTLINED_FUNCTION_21();
            _WiFiDeviceClientDispatchScanResults(v23, v24, v1);
          }

          CFRelease(v14);
        }

        else
        {
          v21 = OUTLINED_FUNCTION_21();
          _WiFiDeviceClientDispatchScanResults(v21, v22, v1);
        }
      }

      CFRelease(v8);
    }

    CFRelease(v4);
  }

  v17 = OUTLINED_FUNCTION_8();
  _WiFiVMDealloc(v17, v18);
  v19 = OUTLINED_FUNCTION_10();
  _WiFiVMDealloc(v19, v20);
  OUTLINED_FUNCTION_26();
}

const void *OUTLINED_FUNCTION_13(unsigned int a1)
{

  return WiFiPortCacheCopy(a1);
}

BOOL OUTLINED_FUNCTION_13_0(uint64_t a1)
{

  return _WiFiDeviceClientIsServerPortValid(a1);
}

void _Xwifi_manager_client_dispatch_scan_results(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 80)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 40) == *(a1 + 68) && *(a1 + 56) == *(a1 + 72))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 44);
      v6 = *(a1 + 76);
      _wifi_manager_client_dispatch_scan_results();
      *(a2 + 32) = v7;
      return;
    }

    v8 = -300;
  }

  else
  {
    v8 = -304;
  }

  *(a2 + 32) = v8;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t a1, ...)
{
  va_start(va, a1);

  return bcmp((v1 + 2), va, 7uLL);
}

const UInt8 *OUTLINED_FUNCTION_9_0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);

  return CFDataGetBytePtr(v3);
}

const UInt8 *OUTLINED_FUNCTION_21_0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);

  return CFDataGetBytePtr(v3);
}

uint64_t _WiFiDeviceClientDispatchScanResults(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 160);
  if (v3)
  {
    return v3(result, a2, a3, *(result + 168));
  }

  return result;
}

CFDataRef OUTLINED_FUNCTION_26_0(const __CFAllocator *a1, const __CFString *a2)
{

  return CFStringCreateExternalRepresentation(a1, a2, 0x8000100u, 0);
}

__CFArray *WiFiManagerClientCopyDevices(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 64);
  if (v2 && (Count = CFDictionaryGetCount(v2)) != 0)
  {
    v4 = Count;
    MEMORY[0x28223BE20]();
    v6 = (v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    memset(v6, 170, v5);
    CFDictionaryGetKeysAndValues(*(a1 + 64), 0, v6);
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (v4 >= 1)
    {
      do
      {
        if (!WiFiDeviceClientGetInterfaceRoleIndex(*v6))
        {
          CFArrayAppendValue(Mutable, *v6);
        }

        ++v6;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    Mutable = 0;
  }

  os_unfair_recursive_lock_unlock();
  v8 = *MEMORY[0x277D85DE8];
  return Mutable;
}

const __CFNumber *WiFiNetworkGetIntProperty(uint64_t a1, void *a2)
{
  Property = WiFiNetworkGetProperty(a1, a2);

  return _CFTypeGetIntValue(Property);
}

uint64_t _WiFiDeviceClientSendEventMaskToServer(uint64_t a1)
{
  v2 = *(a1 + 16);
  BytePtr = CFDataGetBytePtr(*(a1 + 48));
  Length = CFDataGetLength(*(a1 + 48));
  v5 = *(a1 + 64);

  return wifi_device_set_event_mask(v2, BytePtr, Length, v5);
}

uint64_t WiFiDeviceClientRegisterScanUpdateCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(a1 + 256) = a2;
  *(a1 + 264) = a4;
  v4 = 128;
  if (a3 == 1)
  {
    v4 = 256;
  }

  if (a2)
  {
    v5 = *(a1 + 64) | v4;
  }

  else
  {
    v5 = *(a1 + 64) & ~v4;
  }

  *(a1 + 64) = v5;
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t wifi_device_set_event_mask(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = a2;
  v9 = 27918592;
  v10 = a3;
  v11 = *MEMORY[0x277D85EF8];
  v12 = a3;
  v13 = a4;
  v5 = 0xAAAAAAAA80000013;
  v6 = a1;
  v7 = xmmword_25A14BDC0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v5);
  }

  return mach_msg(&v5, 2097153, 0x40u, 0, 0, 0, 0);
}

const __CFNumber *_CFTypeGetIntValue(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
      return valuePtr;
    }

    else
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFBooleanGetTypeID())
      {
        return (*MEMORY[0x277CBED28] == v1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

__CFArray *_WiFiCreateNetworksFromRecordsWithRSSIBounds(const __CFArray *a1, int a2, int a3)
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v8 = Mutable;
  if (a1)
  {
    if (Mutable)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (ValueAtIndex)
          {
            v13 = WiFiNetworkCreate(v6, ValueAtIndex);
            if (v13)
            {
              v14 = v13;
              if (a2 != a3)
              {
                v15 = WiFiNetworkGetIntProperty(v13, @"RSSI") + 77.5;
                v16 = fabsf(sqrtf((v15 * v15) + 450.0));
                v17 = ((v15 / (v16 + v16)) + 0.5);
                WiFiNetworkSetFloatProperty(v14, @"ScaledRSSI", v17);
                WiFiNetworkSetFloatProperty(v14, @"ScaledRate", 1.0);
                WiFiNetworkSetFloatProperty(v14, @"Strength", v17);
              }

              CFArrayAppendValue(v8, v14);
              CFRelease(v14);
            }
          }
        }
      }
    }
  }

  return v8;
}

uint64_t WiFiNetworkGetTypeID()
{
  result = __kWiFiNetworkTypeID;
  if (!__kWiFiNetworkTypeID)
  {
    pthread_once(&__wifiNetworkTypeInit, __WiFiNetworkRegister);
    return __kWiFiNetworkTypeID;
  }

  return result;
}

uint64_t WiFiNetworkIsApplePersonalHotspot(uint64_t a1)
{
  if (a1 && (v2 = (a1 + 16), (v1 = *(a1 + 16)) != 0) && (v3 = CFGetTypeID(v1), v3 == CFDictionaryGetTypeID()))
  {
    Value = CFDictionaryGetValue(*v2, @"IsPersonalHotspot");
    if (Value && CFEqual(Value, *MEMORY[0x277CBED28]))
    {
      return 1;
    }

    else
    {
      WiFiNetworkIsApplePersonalHotspot_cold_1(v2, &v6);
      return v6;
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

void WiFiNetworkIsApplePersonalHotspot_cold_1(CFDictionaryRef *a1, char *a2)
{
  CFDictionaryGetValue(*a1, @"IE");
  OUTLINED_FUNCTION_18_1();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDataGetTypeID())
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (!CFDataGetBytePtr(v4))
  {
    goto LABEL_12;
  }

  v6 = OUTLINED_FUNCTION_11_1();
  if (CFDataGetLength(v6) < 1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    OUTLINED_FUNCTION_17_1();
    if (v8)
    {
      if (*(v5 + 1) == 10 && !OUTLINED_FUNCTION_25_0(v7))
      {
        break;
      }
    }

    OUTLINED_FUNCTION_3_0();
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  v11 = 1;
LABEL_13:
  *a2 = v11;
}

const UInt8 *OUTLINED_FUNCTION_18(CFDataRef theData)
{
  v3 = *(v1 + 4);

  return CFDataGetBytePtr(theData);
}

atomic_uint *OUTLINED_FUNCTION_17(uint64_t a1)
{

  return __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
}

uint64_t WiFiPolicyGetTypeID()
{
  result = __kWiFiPolicyTypeID;
  if (!__kWiFiPolicyTypeID)
  {
    pthread_once(&__gWiFiPolicyTypeInit, __WiFiPolicyRegister);
    return __kWiFiPolicyTypeID;
  }

  return result;
}

uint64_t __WiFiPolicyRegister()
{
  result = _CFRuntimeRegisterClass();
  __kWiFiPolicyTypeID = result;
  return result;
}

void WiFiPolicySetUUID(uint64_t a1, void *value)
{
  if (a1)
  {
    if (value)
    {
      CFDictionarySetValue(*(a1 + 16), @"PolicyUUID", value);
    }
  }
}

void WiFiPolicySetType(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (v3)
  {
    v4 = v3;
    CFDictionarySetValue(*(a1 + 16), @"PolicyType", v3);
    CFRelease(v4);
  }
}

uint64_t WiFiPolicyGetType(uint64_t a1)
{
  v1 = 0xFFFFFFFFLL;
  valuePtr = -1;
  Value = CFDictionaryGetValue(*(a1 + 16), @"PolicyType");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  return v1;
}

void __WiFiPolicyRelease(void *a1)
{
  if (!a1)
  {
    __WiFiPolicyRelease_cold_2();
  }

  v2 = CFGetTypeID(a1);
  v3 = __kWiFiPolicyTypeID;
  if (!__kWiFiPolicyTypeID)
  {
    pthread_once(&__gWiFiPolicyTypeInit, __WiFiPolicyRegister);
    v3 = __kWiFiPolicyTypeID;
  }

  if (v2 != v3)
  {
    __WiFiPolicyRelease_cold_1();
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }
}

BOOL __WiFiPolicyEqual(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"PolicyUUID");
  v4 = CFDictionaryGetValue(*(a2 + 16), @"PolicyUUID");
  if (Value)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5 && CFStringCompare(Value, v4, 0) == kCFCompareEqualTo;
}

CFStringRef __WiFiPolicyCopyFormattingDesc(uint64_t a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Type = WiFiPolicyGetType(a1);
  Value = CFDictionaryGetValue(*(a1 + 16), @"PolicyUUID");
  return CFStringCreateWithFormat(v4, a2, @"%d %@", Type, Value);
}

CFStringRef __WiFiPolicyCopyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Type = WiFiPolicyGetType(a1);
  Value = CFDictionaryGetValue(*(a1 + 16), @"PolicyUUID");
  return CFStringCreateWithFormat(v2, 0, @"%d %@", Type, Value);
}

uint64_t _WiFiPreferencesUnlock(SCPreferencesRef prefs, int a2)
{
  if (_queue)
  {
    dispatch_assert_queue_V2(_queue);
  }

  if (a2 && (!SCPreferencesCommitChanges(prefs) || !SCPreferencesApplyChanges(prefs)))
  {
    v4 = SCError();
    SCErrorString(v4);
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  v5 = SCPreferencesUnlock(prefs);
  if (!v5)
  {
    v6 = SCError();
    SCErrorString(v6);
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v5;
}

float _WiFiScaleRSSI(float a1)
{
  v1 = a1 + 77.5;
  v2 = fabsf(sqrtf((v1 * v1) + 450.0));
  return (v1 / (v2 + v2)) + 0.5;
}

__CFArray *_WiFiCopySelectedNetworks(const __CFArray *a1, unsigned int (*a2)(void))
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        if (ValueAtIndex)
        {
          v9 = ValueAtIndex;
          if (a2())
          {
            CFArrayAppendValue(Mutable, v9);
          }
        }
      }
    }

    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

void _WiFiSerialize(const void *a1, vm_offset_t *a2, mach_msg_type_number_t *a3)
{
  BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a1);
  if (BinaryData)
  {
    v6 = BinaryData;
    dataCnt = -1431655766;
    *a3 = CFDataGetLength(BinaryData);
    v7 = *MEMORY[0x277D85F48];
    BytePtr = CFDataGetBytePtr(v6);
    v9 = vm_read(v7, BytePtr, *a3, a2, &dataCnt);
    CFRelease(v6);
    if (v9)
    {
      *a2 = 0;
    }

    *a3 = dataCnt;
  }
}

float _WiFiScale(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (a1 - a2) / (a3 - a2);
  if (result > 1.0)
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double _CFTypeGetFloatValue(const void *a1)
{
  valuePtr = 0.0;
  v1 = 0.0;
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
      return valuePtr;
    }
  }

  return v1;
}

void _CFDictionarySetIntValue(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void _CFDictinoarySetFloatValue(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

const char *powerStateToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_279919F70[a1];
  }
}

double getEpochTimeInMicroseconds()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v1.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v1, 0);
  return v1.tv_usec + v1.tv_sec * 1000000.0;
}

uint64_t isAppleOUI(unsigned __int16 *a1)
{
  v1 = 0;
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = xmmword_25A14B860;
  v5[1] = xmmword_25A14B870;
  v6 = -13;
  while (*(v5 + v1) != *a1 || *(v5 + v1 + 2) != *(a1 + 2))
  {
    v1 += 3;
    if (v1 == 33)
    {
      result = 0;
      goto LABEL_9;
    }
  }

  result = 1;
LABEL_9:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *_WiFiReallocArray(void *a1, unint64_t a2, unint64_t a3)
{
  if (is_mul_ok(a2, a3))
  {
    v5 = a2 * a3;

    return malloc_type_realloc(a1, v5, 0xB5A6ADBEuLL);
  }

  else
  {
    *__error() = 12;
    return 0;
  }
}

uint64_t WiFiCreateOSTransactionWithFunctionName(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.wifid.%s", a1), "UTF8String"];
  v3 = os_transaction_create();
  objc_autoreleasePoolPop(v2);
  return v3;
}

__CFString *WiFiGetLinkChangeReasonString(int a1)
{
  if (a1 <= 8)
  {
    if (a1 > 4)
    {
      if (a1 > 6)
      {
        if (a1 == 7)
        {
          return @"Colocated scope transition";
        }

        else
        {
          return @"Disassociate";
        }
      }

      else if (a1 == 5)
      {
        return @"Powered Off";
      }

      else
      {
        return @"Join Failure";
      }
    }

    else if (a1 > 2)
    {
      if (a1 == 3)
      {
        return @"Internal Error";
      }

      else
      {
        return @"System Sleep";
      }
    }

    else if (a1 == 1)
    {
      return @"Deauth";
    }

    else if (a1 == 2)
    {
      return @"Beacon Lost";
    }

    else
    {
LABEL_23:
      if (a1 > 0x3E7)
      {
        return @"Unknown";
      }

      else
      {
        v3 = MEMORY[0x277CCACA8];
        v4 = convertLinkChangeReasonToString();

        return [v3 stringWithCString:v4 encoding:4];
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 1000:
        return @"Trigger Disconnect";
      case 1001:
        return @"Client Disconnect";
      case 1002:
        return @"Temporarily Disabled";
      case 1003:
        return @"Network Changed";
      case 1004:
        return @"Decryption Failure";
      case 1005:
        return @"Not Primary Interface";
      case 1006:
        return @"CLTM";
      case 1007:
        return @"Internet Sharing";
      case 1008:
        return @"User Preference";
      case 1009:
        return @"Misc.";
      case 1010:
        return @"EAP Restart";
      case 1011:
        return @"Control Center/3rd Party Client";
      case 1012:
        return @"802.1X Failure";
      case 1013:
        return @"Network Transition";
      case 1014:
        return @"Auto Unlock";
      case 1015:
        return @"Captive";
      case 1016:
        return @"Banner Association";
      case 1017:
        return @"BSS Steering";
      case 1018:
        return @"Auto Hotspot Association";
      case 1019:
        return @"Auto Hotspot Transition";
      case 1020:
        return @"Perf Roam";
      case 1021:
        return @"CarPlay Disabled";
      case 1022:
        return @"Battery Save Mode Enabled";
      case 1023:
        return @"AirPlay Started";
      case 1024:
        return @"Prefer 6E Off";
      case 1025:
        return @"Prefer 6E On";
      case 1026:
      case 1027:
      case 1028:
      case 1029:
      case 1030:
      case 1031:
      case 1032:
      case 1033:
        goto LABEL_23;
      case 1034:
        return @"Personal Hotspot Connection Inactive";
      case 1035:
        return @"Sharing Silent Repair";
      default:
        if (a1 == 9)
        {
          result = @"Invalid SSID";
        }

        else
        {
          if (a1 != 10)
          {
            goto LABEL_23;
          }

          result = @"Invalid AKMS (EAPOL Key timeout?)";
        }

        break;
    }
  }

  return result;
}

__CFString *WiFiGetConcurrencyStateString(unsigned int a1)
{
  if (a1 < 9 && ((0x117u >> a1) & 1) != 0)
  {
    return off_279919F98[a1];
  }

  v2 = @"Unknown";
  if ((~a1 & 3) == 0)
  {
    v2 = @"STA + AWDL";
  }

  if ((~a1 & 5) == 0)
  {
    v2 = @"STA + SoftAP";
  }

  if ((~a1 & 6) == 0)
  {
    v2 = @"AWDL + SoftAP";
  }

  if ((~a1 & 7) == 0)
  {
    v2 = @"STA + AWDL + SoftAP";
  }

  if ((~a1 & 0xC) == 0)
  {
    v2 = @"SoftAp + NanPh";
  }

  if ((~a1 & 0xE) != 0)
  {
    return v2;
  }

  else
  {
    return @"AWDL + SoftAp + NanPh";
  }
}

__CFString *WiFiGetRoamEnvironmentTypeString(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_279919FE0[a1];
  }
}

__CFString *WiFiGetRoamEnvironmentTypeStringWithBssCount(int a1, int a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return @"Unspecified";
      case 1:
        return @"Learning";
      case 2:
        return @"Single Band AP";
    }

    return @"Unknown";
  }

  if (a1 <= 4)
  {
    if (a1 == 3)
    {
      return @"Dual Band AP";
    }

    v2 = @"Multi AP";
    v3 = @"Multi AP Large";
    goto LABEL_12;
  }

  if (a1 == 5)
  {
    return @"Tri Band AP";
  }

  if (a1 != 6)
  {
    return @"Unknown";
  }

  v2 = @"Tri Band Multi AP";
  v3 = @"Tri Band Multi AP Large";
LABEL_12:
  if (a2 <= 9)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

__CFString *WiFiGetRoamProfileOffsetString(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_27991A018[a1];
  }
}

__CFString *WiFiGetNOIHomeStateString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_27991A038[a1 - 1];
  }
}

__CFString *WiFiGetNOIWorkStateString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 2)
  {
    v1 = @"Not Work";
  }

  if (a1 == 1)
  {
    return @"Work";
  }

  else
  {
    return v1;
  }
}

__CFString *WiFiGetLowDataModeString(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_27991A050[a1];
  }
}

__CFString *WiFiGetLOITypeString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_27991A068[a1 - 1];
  }
}

__CFString *WiFiGetAutoInstantHotspotModeString(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_27991A090[a1];
  }
}

__CFString *WiFiGetClientDisconnectReasonString(int a1)
{
  v1 = @"Unknown";
  if (a1 == 2)
  {
    v1 = @"Captive";
  }

  if (a1 == 1)
  {
    return @"Control Center";
  }

  else
  {
    return v1;
  }
}

__CFString *WiFiGetUINotificationTypeString(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return @"Unknown";
  }

  else
  {
    return off_27991A0A8[a1];
  }
}

__CFString *WiFiGetAssocTypeString(int a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"User";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"AutoJoin";
  }
}

BOOL WiFiIsSystemWokenByWiFi()
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *__big = 0u;
  v4 = 0u;
  v2 = 255;
  sysctlbyname("kern.wakereason", __big, &v2, 0, 0);
  if (__big[0])
  {
    if (strcasestr(__big, "wlan"))
    {
      result = 1;
    }

    else
    {
      result = strcasestr(__big, "wifibt") != 0;
    }
  }

  else
  {
    result = 0;
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiExtractPerCoreValues(const __CFArray *a1, void *a2, void *a3)
{
  if (a1 && CFArrayGetCount(a1) == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    v7 = CFArrayGetValueAtIndex(a1, 1);
    if (ValueAtIndex)
    {
      CFNumberGetValue(ValueAtIndex, kCFNumberNSIntegerType, a2);
    }

    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberNSIntegerType, a3);
      v8 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    ValueAtIndex = 0;
  }

  v8 = 0;
LABEL_9:
  if (ValueAtIndex)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t WiFiMIGMachPortGetTypeID()
{
  result = __WiFiMIGMachPortTypeID;
  if (!__WiFiMIGMachPortTypeID)
  {
    pthread_once(&__WiFiMIGMachPortTypeInit, __WiFiMIGMachPortRegister);
    return __WiFiMIGMachPortTypeID;
  }

  return result;
}

CFMutableDictionaryRef __WiFiMIGMachPortRegister()
{
  __WiFiMIGMachPortTypeID = _CFRuntimeRegisterClass();
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  __wifiPortCache = result;
  return result;
}

uint64_t WiFiMIGMachPortScheduleWithQueue(uint64_t a1)
{
  result = dispatch_mach_create_f();
  *(a1 + 72) = result;
  if (result)
  {
    v3 = *(a1 + 16);

    return MEMORY[0x282201D00]();
  }

  return result;
}

void __WiFiMIGMachPortDispatchPortCallback(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 8:
      dispatch_release(*(a1 + 72));

      CFRelease(a1);
      break;
    case 7:
      v5 = *(dispatch_mach_msg_get_msg() + 12);
      v6 = *MEMORY[0x277D85F48];

      mach_port_mod_refs(v6, v5, 1u, -1);
      break;
    case 2:
      if (*(dispatch_mach_msg_get_msg() + 20) == 70)
      {
        v3 = *(a1 + 96);
        if (v3)
        {
          v4 = *(a1 + 104);

          v3(a1, v4);
        }
      }

      else if ((dispatch_mach_mig_demux() & 1) == 0)
      {
        msg = dispatch_mach_msg_get_msg();

        mach_msg_destroy(msg);
      }

      break;
  }
}

uint64_t WiFiMIGMachPortUnscheduleFromQueue(uint64_t result)
{
  if (result)
  {
    result = *(result + 72);
    if (result)
    {
      return MEMORY[0x282201CF8]();
    }
  }

  return result;
}

void WiFiMIGMachPortUnscheduleFromRunLoop(uint64_t a1, __CFRunLoop *cf1, const __CFString *a3)
{
  if (cf1)
  {
    if (a3)
    {
      v7 = (a1 + 32);
      v6 = *(a1 + 32);
      if (v6)
      {
        if (*(a1 + 40))
        {
          if (CFEqual(cf1, v6))
          {
            if (CFEqual(a3, *(a1 + 40)))
            {
              *v7 = 0;
              v7[1] = 0;
              v8 = *(a1 + 48);
              if (v8)
              {
                CFRunLoopRemoveSource(cf1, v8, a3);
                v9 = *(a1 + 48);
                if (v9)
                {
                  CFRelease(v9);
                  *(a1 + 48) = 0;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t WiFiMIGMachPortRegisterDemuxCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3;
  return result;
}

uint64_t WiFiMIGMachPortRegisterTerminationCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 96) = a2;
  *(result + 104) = a3;
  return result;
}

uint64_t WiFiPortCacheAdd(unsigned int a1, const void *a2)
{
  pthread_mutex_lock(&__wifiPortCacheLock);
  if (__wifiPortCache)
  {
    CFDictionarySetValue(__wifiPortCache, a1, a2);
  }

  return pthread_mutex_unlock(&__wifiPortCacheLock);
}

uint64_t WiFiPortCacheRemove(unsigned int a1)
{
  pthread_mutex_lock(&__wifiPortCacheLock);
  if (__wifiPortCache)
  {
    CFDictionaryRemoveValue(__wifiPortCache, a1);
  }

  return pthread_mutex_unlock(&__wifiPortCacheLock);
}

const void *WiFiPortCacheCopyWithType(unsigned int a1, uint64_t a2)
{
  v3 = WiFiPortCacheCopy(a1);
  v4 = v3;
  if (v3 && CFGetTypeID(v3) != a2)
  {
    CFRelease(v4);
    return 0;
  }

  return v4;
}

void __WiFiMIGMachPortRelease(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFMachPortInvalidate(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 56) = 0;
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }
}

uint64_t WiFiManagerClientGetTypeID()
{
  result = __wiFiManagerTypeID;
  if (!__wiFiManagerTypeID)
  {
    pthread_once(&__wiFiManagerTypeInit, __WiFiManagerClientRegister);
    return __wiFiManagerTypeID;
  }

  return result;
}

uint64_t __WiFiManagerClientRegister()
{
  result = _CFRuntimeRegisterClass();
  __wiFiManagerTypeID = result;
  return result;
}

void __WiFiManagerClientServerTerminationCallback(uint64_t a1, uint64_t a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a2, 0);
  *(a2 + 336) = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __WiFiManagerClientServerTerminationCallback_cold_1(v3);
  }

  WiFiSendRightRelease(v3);
  __WiFiManagerClientClearDevicePorts(a2);
  v4 = *(a2 + 96);
  if (v4)
  {
    CFMachPortInvalidate(v4);
    CFRelease(*(a2 + 96));
    *(a2 + 96) = 0;
  }

  v5 = *(a2 + 104);
  if (v5)
  {
    CFRunLoopRemoveSource(*(a2 + 48), v5, *(a2 + 56));
    CFRelease(*(a2 + 104));
    *(a2 + 104) = 0;
  }

  v6 = *(a2 + 88);
  if (v6)
  {
    notify_cancel(v6);
    *(a2 + 88) = 0;
  }

  v7 = __WiFiManagerClientGetOrReconnectServerPort(a2, 1);
  v10 = v7;
  if (v7)
  {
    __WiFiManagerClientAvailableCallback(v7, v8, v9, a2);
LABEL_12:
    WiFiSendRightRelease(v10);
    return;
  }

  if (*(a2 + 104) || !*(a2 + 48) || !*(a2 + 56))
  {
    goto LABEL_12;
  }

  notify_port = -1431655766;
  if (!notify_register_mach_port("com.apple.wifi.manager.available", &notify_port, 0, (a2 + 88)))
  {
    v11 = *MEMORY[0x277CBECE8];
    v12 = _CFMachPortCreateWithPort();
    *(a2 + 96) = v12;
    if (v12)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(v11, v12, 0);
      *(a2 + 104) = RunLoopSource;
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*(a2 + 48), RunLoopSource, *(a2 + 56));
        goto LABEL_12;
      }
    }
  }
}

void WiFiManagerClientDispatchNotificationResponse(uint64_t a1, int a2, int a3, const void *a4)
{
  v7 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v7)
  {
    v8 = v7;
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a4);
    if (BinaryData)
    {
      v10 = BinaryData;
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v10);
      wifi_manager_dispatch_notification_response(v8[1], a2, a3, BytePtr, Length);
      WiFiSendRightRelease(v8);

      CFRelease(v10);
    }

    else
    {
      wifi_manager_dispatch_notification_response(v8[1], a2, a3, 0, 0);

      WiFiSendRightRelease(v8);
    }
  }
}

uint64_t WiFiManagerClientIndicateCarPlayHIDEventReceived(uint64_t a1, int a2, int a3, const void *a4)
{
  v7 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v7)
  {
    v8 = v7;
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a4);
    if (BinaryData)
    {
      v10 = BinaryData;
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v10);
      wifi_manager_indicate_carplay_hid_event_received(v8[1], a2, a3, BytePtr, Length);
      WiFiSendRightRelease(v8);
      CFRelease(v10);
    }

    else
    {
      wifi_manager_indicate_carplay_hid_event_received(v8[1], a2, a3, 0, 0);
      WiFiSendRightRelease(v8);
    }
  }

  return 0;
}

atomic_uint *WiFiManagerClientSetProperty(uint64_t a1, const void *a2, const __CFData *a3)
{
  v15 = -3902;
  result = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = *MEMORY[0x277CBECE8];
  BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
  v9 = BinaryData;
  if (BinaryData)
  {
    BytePtr = CFDataGetBytePtr(BinaryData);
    Length = CFDataGetLength(v9);
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    BytePtr = 0;
    Length = 0;
    if (!a3)
    {
LABEL_8:
      v13 = 0;
      v14 = 0;
      goto LABEL_9;
    }
  }

  v12 = _CFPropertyListCreateBinaryData(v7, a3);
  a3 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = CFDataGetBytePtr(v12);
  v14 = CFDataGetLength(a3);
LABEL_9:
  wifi_manager_set_property(v6[1], BytePtr, Length, v13, v14, &v15);
  WiFiSendRightRelease(v6);
  if (a3)
  {
    CFRelease(a3);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return (v15 == 0);
}

uint64_t __WiFiManagerClientGetRootDevice(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 64);
  if (v2 && CFDictionaryGetCount(v2))
  {
    MEMORY[0x28223BE20]();
    v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    memset(v4, 170, v3);
    CFDictionaryGetKeysAndValues(*(a1 + 64), 0, v4);
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_recursive_lock_unlock();
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void WiFiManagerClientRegisterDeviceAttachmentCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
  if (a2)
  {
    __WiFiManagerClientOrEventMask(a1, 4);
  }

  else
  {
    __WiFiManagerClientAndEventMask(a1, -5);
  }
}

void __WiFiManagerClientOrEventMask(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) |= a2;
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v4 = v3;
  if (v3)
  {
    wifi_manager_set_event_mask(v3[1], *(a1 + 72));
  }

  WiFiSendRightRelease(v4);
}

void __WiFiManagerClientAndEventMask(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) &= a2;
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v4 = v3;
  if (v3)
  {
    wifi_manager_set_event_mask(v3[1], *(a1 + 72));
  }

  WiFiSendRightRelease(v4);
}

uint64_t WiFiManagerClientRegisterVirtInterfaceChangeCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 144) = a2;
  *(result + 152) = a3;
  return result;
}

void WiFiManagerClientRegisterWowStateChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 208) = a2;
  *(a1 + 216) = a3;
  if (a2)
  {
    __WiFiManagerClientOrEventMask(a1, 0x2000);
  }

  else
  {
    __WiFiManagerClientAndEventMask(a1, -8193);
  }
}

void WiFiManagerClientRegisterBackgroundScanCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 160) = a2;
  *(a1 + 168) = a3;
  if (a2)
  {
    __WiFiManagerClientOrEventMask(a1, 512);
  }

  else
  {
    __WiFiManagerClientAndEventMask(a1, -513);
  }
}

void WiFiManagerClientRegisterBackgroundScanCacheCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  if (a2)
  {
    __WiFiManagerClientOrEventMask(a1, 0x200000);
  }

  else
  {
    __WiFiManagerClientAndEventMask(a1, -2097153);
  }
}

void WiFiManagerClientRegisterScanBackoffReportCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 192) = a2;
  *(a1 + 200) = a3;
  v5 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      __WiFiManagerClientOrEventMask(a1, 0x2000000);
      v7 = 1;
    }

    else
    {
      __WiFiManagerClientAndEventMask(a1, -33554433);
      v7 = 0;
    }

    wifi_manager_set_scan_backoff_report(v6[1], v7);

    WiFiSendRightRelease(v6);
  }
}

void WiFiManagerClientSetAssociationMode(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_association_mode(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

uint64_t WiFiManagerClientGetAssociationMode(uint64_t a1)
{
  v4 = 1;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_get_association_mode(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

void WiFiManagerClientSetAskToJoinPreference(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_asktojoin_preference(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

uint64_t WiFiManagerClientGetAskToJoinPreference(uint64_t a1)
{
  v4 = 1;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_get_asktojoin_preference(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

void WiFiManagerClientEnable(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v1)
  {
    v2 = v1;
    wifi_manager_set_enable_state(v1[1], 1);

    WiFiSendRightRelease(v2);
  }
}

void WiFiManagerClientDisable(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v1)
  {
    v2 = v1;
    wifi_manager_set_enable_state(v1[1], 0);

    WiFiSendRightRelease(v2);
  }
}

void WiFiManagerClientSetPower(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_power(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

atomic_uint *WiFiManagerClientGetPowerExt(uint64_t a1)
{
  v3 = 0;
  result = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (result)
  {
    v2 = result;
    wifi_manager_get_power(result[1], &v3);
    WiFiSendRightRelease(v2);
    if (v3 == 4)
    {
      return 1;
    }

    else
    {
      return (2 * (v3 == 1));
    }
  }

  return result;
}

void WiFiManagerClientSetPowerExt(uint64_t a1, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = dword_25A14B8A4[a2];
  }

  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_power_ext(v3[1], v2);

    WiFiSendRightRelease(v4);
  }
}

void WiFiManagerClientSetMISState(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_mis_state(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

atomic_uint *WiFiManagerClientGetMISState(uint64_t a1)
{
  v3 = 0;
  result = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (result)
  {
    v2 = result;
    wifi_manager_get_mis_state(result[1], &v3);
    WiFiSendRightRelease(v2);
    return (v3 != 0);
  }

  return result;
}

void WiFiManagerClientSetMISDiscoveryState(uint64_t a1, int a2, int a3)
{
  v5 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v5)
  {
    v6 = v5;
    v7 = getprogname();
    v8 = strncmp("sharingd", v7, 8uLL) == 0;
    wifi_manager_set_mis_discovery_state(v6[1], a2, a3, v8, 0, 0, 0, 0, 0, 0);

    WiFiSendRightRelease(v6);
  }
}

void WiFiManagerClientSetMISDiscoveryStateExt(uint64_t a1, const __CFDictionary *a2)
{
  valuePtr = 0;
  if (!a2)
  {
    return;
  }

  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(a2, @"SOFTAP_ENABLE");
  v6 = MEMORY[0x277CBED28];
  if (Value)
  {
    v27 = CFEqual(Value, *MEMORY[0x277CBED28]) != 0;
  }

  else
  {
    v27 = 0;
  }

  v7 = CFDictionaryGetValue(a2, @"SOFTAP_IMMEDIATE_DISABLE");
  if (v7)
  {
    v26 = CFEqual(v7, *v6) != 0;
  }

  else
  {
    v26 = 0;
  }

  v8 = CFDictionaryGetValue(a2, @"SOFTAP_FORCE_2_4G_CHANNEL");
  if (v8)
  {
    v9 = CFEqual(v8, *v6) != 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = CFDictionaryGetValue(a2, @"SOFTAP_SOFTAP_HIDDEN_NETWORK");
  if (v10)
  {
    v11 = CFEqual(v10, *v6) != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = CFDictionaryGetValue(a2, @"SOFTAP_SOFTAP_CAP_MODEL");
  v13 = MEMORY[0x277CBECE8];
  if (v12)
  {
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v12);
    v15 = BinaryData;
    if (BinaryData)
    {
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v15);
      goto LABEL_20;
    }
  }

  else
  {
    v15 = 0;
  }

  BytePtr = 0;
  Length = 0;
LABEL_20:
  v18 = CFDictionaryGetValue(a2, @"SOFTAP_SOFTAP_OS_VER");
  if (!v18)
  {
    v20 = 0;
    goto LABEL_24;
  }

  v19 = _CFPropertyListCreateBinaryData(*v13, v18);
  v20 = v19;
  if (!v19)
  {
LABEL_24:
    v21 = 0;
    v22 = 0;
    goto LABEL_25;
  }

  v21 = CFDataGetBytePtr(v19);
  v22 = CFDataGetLength(v20);
LABEL_25:
  v23 = CFDictionaryGetValue(a2, @"SOFTAP_BRINGUP_METHOD");
  if (v23)
  {
    CFNumberGetValue(v23, kCFNumberSInt16Type, &valuePtr);
  }

  v24 = getprogname();
  v25 = !strncmp("sharingd", v24, 8uLL) || v11;
  wifi_manager_set_mis_discovery_state(v4[1], v27, v26, v25, v9, BytePtr, Length, v21, v22, valuePtr);
  WiFiSendRightRelease(v4);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v20)
  {
    CFRelease(v20);
  }
}

atomic_uint *WiFiManagerClientGetMISDiscoveryState(uint64_t a1)
{
  v3 = 0;
  result = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (result)
  {
    v2 = result;
    wifi_manager_get_mis_discovery_state(result[1], &v3);
    WiFiSendRightRelease(v2);
    return (v3 != 0);
  }

  return result;
}

void WiFiManagerClientSetWoWState(uint64_t a1, int a2)
{
  v4 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v4)
  {
    v5 = v4;
    *(a1 + 80) = a2;
    wifi_manager_set_wow_state(v4[1], a2);

    WiFiSendRightRelease(v5);
  }
}

uint64_t WiFiManagerClienSetQuiesceState(uint64_t a1, int a2)
{
  v6 = 0;
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v3)
  {
    return 4294963394;
  }

  v4 = v3;
  wifi_manager_set_quiesce_state(v3[1], a2, &v6);
  WiFiSendRightRelease(v4);
  return v6;
}

BOOL WiFiManagerClientGetQuiesceState(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_get_quiesce_state(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4 != 0;
}

BOOL WiFiManagerClientIsTetheringSupported(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_tethering_supported(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4 != 0;
}

atomic_uint *WiFiManagerClientIsNanPhsNetworkAssociated(uint64_t a1)
{
  v3 = 0;
  result = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (result)
  {
    v2 = result;
    wifi_manager_get_nanclient_assoc_status(result[1], &v3);
    WiFiSendRightRelease(v2);
    return (v3 != 0);
  }

  return result;
}

void WiFiManagerClientSetNANOffHeadConnectionExpiry(uint64_t a1, double a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_nan_off_head_connection_expiry(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

double WiFiManagerClientGetNANOffHeadConnectionExpiry(uint64_t a1)
{
  v4 = 0.0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  wifi_manager_get_nan_off_head_connection_expiry(v1[1], &v4);
  WiFiSendRightRelease(v2);
  return v4;
}

uint64_t WiFiManagerClientIsAlwaysOnWiFiSupported(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_always_on_wifi_supported(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

uint64_t WiFiManagerClientIsWiFiAlwaysOnSupported()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = MGGetProductType();
  v1 = 0;
  v5 = v0 != 1302273958 && v0 != 761631964 && v0 != 262180327 && v0 != 2445473385;
  if (v0 > 1302273957)
  {
    if (v0 == 1302273958)
    {
      goto LABEL_20;
    }

    v6 = 2445473385;
  }

  else
  {
    if (v0 == 262180327)
    {
      goto LABEL_20;
    }

    v6 = 761631964;
  }

  if (v0 != v6)
  {
    v1 = 1;
  }

LABEL_20:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = "not supported";
    if (v5)
    {
      v7 = "supported";
    }

    v10 = 136315394;
    v11 = "WiFiManagerClientIsWiFiAlwaysOnSupported";
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: always on wifi %s", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v1;
}

CFPropertyListRef WiFiManagerClientCopyLocaleStats(uint64_t a1)
{
  memset(length, 0, sizeof(length));
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  wifi_manager_copy_locale_stats(v1[1], &length[1], length);
  if (*&length[1])
  {
    v3 = length[0] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || (v4 = _WiFiCopyUnserialized(*&length[1], length[0])) == 0)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v4 = 0;
  }

  _WiFiVMDealloc(*&length[1], length[0]);
  WiFiSendRightRelease(v2);
  return v4;
}

atomic_uint *WiFiManagerClientMergeKnownNetworks(uint64_t a1, const void *a2)
{
  v9 = 0;
  result = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (result)
  {
    v4 = result;
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
    if (BinaryData)
    {
      v6 = BinaryData;
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v6);
      wifi_manager_merge_known_networks(v4[1], BytePtr, Length, &v9);
      CFRelease(v6);
    }

    else
    {
      wifi_manager_merge_known_networks(v4[1], 0, 0, &v9);
    }

    WiFiSendRightRelease(v4);
    return (v9 != 0);
  }

  return result;
}

atomic_uint *WiFiManagerClientSetMisPassword(uint64_t a1, const void *a2)
{
  v9 = -3902;
  result = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (result)
  {
    v4 = result;
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
    if (BinaryData)
    {
      v6 = BinaryData;
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v6);
      wifi_manager_mis_set_password(v4[1], BytePtr, Length, &v9);
      CFRelease(v6);
    }

    else
    {
      wifi_manager_mis_set_password(v4[1], 0, 0, &v9);
    }

    WiFiSendRightRelease(v4);
    return (v9 == 0);
  }

  return result;
}

uint64_t WiFiManagerClientCopyMisPassword(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = 0;
  if (v1)
  {
    WiFiManagerClientCopyMisPassword_cold_1(v1);
    return v4;
  }

  return v2;
}

void WiFiManagerClientSetRetryIntervalCap(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_retry_cap(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

uint64_t WiFiManagerClientGetRetryIntervalCap(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_get_retry_cap(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

void WiFiManagerClientSetBGScanCacheState(uint64_t a1, const void *a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    if (a2 && (BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2)) != 0)
    {
      v6 = BinaryData;
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v6);
      wifi_manager_set_bgscan_cache_state(v4[1], BytePtr, Length);
      CFRelease(v6);
    }

    else
    {
      wifi_manager_set_bgscan_cache_state(v4[1], 0, 0);
    }

    WiFiSendRightRelease(v4);
  }
}

void WiFiManagerClientSetNetworkAddReason(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  WiFiNetworkSetProperty(a1, @"ClientAddNetworkReason", v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void WiFiManagerClientAddNetwork(uint64_t a1, uint64_t a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3 && (v4 = WiFiNetworkCopyRecord(a2)) != 0)
  {
    v5 = v4;
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v4);
    if (BinaryData)
    {
      v7 = BinaryData;
      v8 = v3[1];
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v7);
      wifi_manager_add_network(v8, BytePtr, Length);
      CFRelease(v7);
    }

    WiFiSendRightRelease(v3);

    CFRelease(v5);
  }

  else
  {

    WiFiSendRightRelease(v3);
  }
}

void WiFiManagerClientRemoveNetwork(uint64_t a1, const void *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = getprogname();
  SystemEncoding = CFStringGetSystemEncoding();
  v7 = CFStringCreateWithCString(v4, v5, SystemEncoding);
  if (v7)
  {
    v8 = v7;
    if (CFEqual(v7, @"mobilewifitool"))
    {
      v9 = a1;
      v10 = a2;
      v11 = 24;
    }

    else
    {
      if (*(a1 + 81))
      {
        v11 = 2;
      }

      else
      {
        v11 = 22;
      }

      v9 = a1;
      v10 = a2;
    }

    WiFiManagerClientRemoveNetworkWithReason(v9, v10, v11);

    CFRelease(v8);
  }

  else
  {
    if (*(a1 + 81))
    {
      v12 = 2;
    }

    else
    {
      v12 = 22;
    }

    WiFiManagerClientRemoveNetworkWithReason(a1, a2, v12);
  }
}

void WiFiManagerClientRemoveNetworkWithReason(uint64_t a1, const void *a2, int a3)
{
  if (a2)
  {
    v5 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
    if (v5)
    {
      v6 = WiFiNetworkCopyRecord(a2);
      if (v6)
      {
        WiFiManagerClientRemoveNetworkWithReason_cold_1(v6, a2, a3, v5);
      }
    }

    WiFiSendRightRelease(v5);
  }
}

atomic_uint *WiFiManagerClientIsNetworkEnabled(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  result = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (result)
  {
    v4 = result;
    v5 = WiFiNetworkCopyRecord(a2);
    if (v5)
    {
      v6 = v5;
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v5);
      if (BinaryData)
      {
        v8 = BinaryData;
        v9 = v4[1];
        BytePtr = CFDataGetBytePtr(BinaryData);
        Length = CFDataGetLength(v8);
        wifi_manager_get_network_state(v9, BytePtr, Length, &v12);
        CFRelease(v8);
      }

      CFRelease(v6);
    }

    WiFiSendRightRelease(v4);
    return (v12 != 0);
  }

  return result;
}

uint64_t WiFiManagerClientCopyVersionInfo(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = 0;
  if (v1)
  {
    WiFiManagerClientCopyVersionInfo_cold_1(v1);
    return v4;
  }

  return v2;
}

uint64_t WiFiManagerClientCopyClientNames(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = 0;
  if (v1)
  {
    WiFiManagerClientCopyClientNames_cold_1(v1);
    return v4;
  }

  return v2;
}

CFIndex WiFiManagerClientCopyInterfaces(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 64);
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    if (Count)
    {
      MEMORY[0x28223BE20]();
      v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      memset(v5, 170, v4);
      CFDictionaryGetKeysAndValues(*(a1 + 64), 0, v5);
      Count = CFArrayCreate(*MEMORY[0x277CBECE8], v5, Count, MEMORY[0x277CBF128]);
    }
  }

  else
  {
    Count = 0;
  }

  os_unfair_recursive_lock_unlock();
  v6 = *MEMORY[0x277D85DE8];
  return Count;
}

uint64_t __WiFiManagerClientAddDevice(uint64_t a1, const void *a2, uint64_t a3, __CFArray *a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = (a1 + 64);
  if (!*(a1 + 64))
  {
    return 0;
  }

  os_unfair_recursive_lock_lock_with_options();
  v9 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v9)
  {
LABEL_19:
    WiFiSendRightRelease(v9);
    os_unfair_recursive_lock_unlock();
    return 0;
  }

  if (CFDictionaryContainsKey(*v5, a2))
  {
    __WiFiManagerClientAddDevice_cold_3(v5, a2, v9);
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __WiFiManagerClientAddDevice_cold_1(a2, v9);
  }

  v10 = _WiFiDeviceClientCreate(*MEMORY[0x277CBECE8], a1, v9[1], a2, a3);
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  CFDictionarySetValue(*(a1 + 64), a2, v10);
  if ((*(a1 + 72) & 4) != 0)
  {
    v13 = *(a1 + 128);
    WiFiSendRightRelease(v9);
    os_unfair_recursive_lock_unlock();
    if (!a3 && v13)
    {
      if (a4)
      {
        CFArrayAppendValue(a4, v11);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          __WiFiManagerClientAddDevice_cold_2();
        }
      }

      else
      {
        (*(a1 + 128))(a1, v11, *(a1 + 136));
      }
    }
  }

  else
  {
    WiFiSendRightRelease(v9);
    os_unfair_recursive_lock_unlock();
  }

  CFRelease(v11);
  return 1;
}

void WiFiManagerClientRemoveDevice(uint64_t a1, const void *a2, int a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "WiFiManagerClientRemoveDevice";
    v14 = 2112;
    v15 = a2;
    v16 = 2112;
    v17 = a1;
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: removed %@ (manager %@)", &v12, 0x20u);
  }

  if (a2)
  {
    os_unfair_recursive_lock_lock_with_options();
    if (a3)
    {
      if (*(a1 + 144))
      {
        Device = WiFiManagerClientGetDevice(a1, a2);
        v9 = Device;
        if (Device)
        {
          CFRetain(Device);
        }

        if (!a4)
        {
          CFDictionaryRemoveValue(*(a1 + 64), a2);
        }
      }

      else
      {
        v9 = 0;
      }

      os_unfair_recursive_lock_unlock();
      if (!a4)
      {
        v10 = *(a1 + 144);
        if (v10)
        {
          v10(a1, v9, a2, 0, *(a1 + 152));
        }
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    else
    {
      os_unfair_recursive_lock_unlock();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void WiFiManagerClientDispatchAttachmentEvent(void *a1, CFStringRef theString, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = 6;
  }

  else
  {
    v6 = 0;
  }

  if (theString && a3)
  {
    if (CFStringHasPrefix(theString, @"ap"))
    {
      v6 = 7;
    }

    else
    {
      v6 = 6;
    }
  }

  if (__WiFiManagerClientAddDevice(a1, theString, v6, 0))
  {
    Device = WiFiManagerClientGetDevice(a1, theString);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = 136316162;
      v12 = "WiFiManagerClientDispatchAttachmentEvent";
      v13 = 2112;
      v14 = theString;
      v15 = 1024;
      v16 = a3;
      v17 = 2112;
      v18 = a1;
      v19 = 2112;
      v20 = Device;
      _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: attached %@ (isVirtual %d manager %@ deviceClient %@)", &v11, 0x30u);
    }

    if (a3)
    {
      v8 = a1[18];
      if (v8)
      {
        v8(a1, Device, theString, 1, a1[19]);
      }
    }

    else
    {
      v9 = a1[16];
      if (v9)
      {
        v9(a1, Device, a1[17]);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    WiFiManagerClientDispatchAttachmentEvent_cold_1();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void *WiFiManagerClientRegisterServerRestartCallback(void *result, uint64_t a2, uint64_t a3)
{
  result[28] = a2;
  result[29] = a3;
  result[9] = result[9] & 0xFFFFFFFFFFFEFFFFLL | ((a2 != 0) << 16);
  return result;
}

void WiFiManagerClientDumpLogs(uint64_t a1, const void *a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    if (a2 && (BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2)) != 0)
    {
      v6 = BinaryData;
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v6);
      wifi_manager_dump_logs(v4[1], BytePtr, Length);
      CFRelease(v6);
    }

    else
    {
      wifi_manager_dump_logs(v4[1], 0, 0);
    }

    WiFiSendRightRelease(v4);
  }
}

void WiFiManagerClientSetTestParams(uint64_t a1, const void *a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    if (a2 && (BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2)) != 0)
    {
      v6 = BinaryData;
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v6);
      wifi_manager_set_test_params(v4[1], BytePtr, Length);
      CFRelease(v6);
    }

    else
    {
      wifi_manager_set_test_params(v4[1], 0, 0);
    }

    WiFiSendRightRelease(v4);
  }
}

void __WiFiManagerClientAvailableCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __WiFiManagerClientAvailableCallback_cold_1();
  }

  v5 = __WiFiManagerClientGetOrReconnectServerPort(a4, 0);
  if (*(a4 + 336) >= 2u)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __WiFiManagerClientAvailableCallback_cold_2(v5);
    }

    WiFiSendRightRelease(v5);
    v5 = __WiFiManagerClientGetOrReconnectServerPort(a4, 1);
  }

  *(a4 + 336) = 2;
  v6 = *(a4 + 256);
  if (v6)
  {
    v6(a4, 0, 74, *(a4 + 264));
    *(a4 + 256) = 0;
    *(a4 + 264) = 0;
  }

  if (v5)
  {
    wifi_manager_set_wow_state(v5[1], *(a4 + 80));
    wifi_manager_set_client_type(v5[1], *(a4 + 16));
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __WiFiManagerClientAvailableCallback_cold_3();
  }

  if (*(a4 + 74))
  {
    v7 = *(a4 + 224);
    if (v7)
    {
      v7(a4, *(a4 + 232));
    }
  }

  WiFiSendRightRelease(v5);
}

void WiFiManagerClientUnscheduleFromRunLoop(uint64_t a1)
{
  v2 = (a1 + 48);
  v1 = *(a1 + 48);
  if (v1 && (v4 = *(a1 + 56)) != 0)
  {
    WiFiMIGMachPortUnscheduleFromRunLoop(*(a1 + 40), v1, v4);
    v5 = *(a1 + 104);
    if (v5)
    {
      if (*(a1 + 96))
      {
        CFRunLoopRemoveSource(*(a1 + 48), v5, *(a1 + 56));
      }
    }

    *v2 = 0;
    v2[1] = 0;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    WiFiManagerClientUnscheduleFromRunLoop_cold_1();
  }
}

void WiFiManagerClientRegisterNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  if (a2)
  {
    __WiFiManagerClientOrEventMask(a1, 32);
  }

  else
  {
    __WiFiManagerClientAndEventMask(a1, -33);
  }
}

uint64_t WiFiManagerClientIsRestrictionPolicyActive(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_restriction_policy_active(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

void WiFiManagerClientSetInCarState(uint64_t a1, int a2, const __CFData *a3)
{
  kdebug_trace();
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  v6 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v6)
  {
    v7 = v6;
    if (a3 && (BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a3), (a3 = BinaryData) != 0))
    {
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(a3);
    }

    else
    {
      BytePtr = 0;
      Length = 0;
    }

    wifi_manager_set_incar_state(v7[1], a2, BytePtr, Length);
    if (a3)
    {
      CFRelease(a3);
    }

    WiFiSendRightRelease(v7);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v11);
  }
}

void WiFiManagerClientSetThermalIndex(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_thermal_index(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

uint64_t WiFiManagerClientGetThermalIndex(uint64_t a1)
{
  v4 = 100;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_get_thermal_index(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

CFPropertyListRef WiFiManagerClientCopyGeoTagsForNetwork(uint64_t a1, uint64_t a2)
{
  memset(length, 0, sizeof(length));
  if (!a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v13 = 0;
    v12 = 0;
    v3 = 0;
    goto LABEL_14;
  }

  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v3 || (v4 = WiFiNetworkCopyRecord(a2)) == 0)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v13 = 0;
    v12 = 0;
LABEL_14:
    v11 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v4);
  if (BinaryData)
  {
    v7 = BinaryData;
    v8 = v3[1];
    BytePtr = CFDataGetBytePtr(BinaryData);
    v10 = CFDataGetLength(v7);
    wifi_manager_copy_geotags_for_network(v8, BytePtr, v10, &length[1], length);
    if (!*&length[1] || !length[0] || (v11 = _WiFiCopyUnserialized(*&length[1], length[0])) == 0)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v11 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v11 = 0;
  }

  CFRelease(v5);
  v12 = *&length[1];
  v13 = length[0];
LABEL_10:
  _WiFiVMDealloc(v12, v13);
  WiFiSendRightRelease(v3);
  return v11;
}

uint64_t WiFiManagerClientSetGeoTagForNetwork(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (!a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v7 = 0;
    goto LABEL_10;
  }

  v7 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v7 || (v8 = WiFiNetworkCopyRecord(a2)) == 0)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
LABEL_10:
    v15 = 74;
    goto LABEL_7;
  }

  v9 = v8;
  BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v8);
  if (BinaryData)
  {
    v11 = BinaryData;
    v12 = v7[1];
    BytePtr = CFDataGetBytePtr(BinaryData);
    Length = CFDataGetLength(v11);
    wifi_manager_set_geotag_for_network(v12, BytePtr, Length, a3, a4);
    CFRelease(v11);
    v15 = 0;
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v15 = 74;
  }

  CFRelease(v9);
LABEL_7:
  WiFiSendRightRelease(v7);
  return v15;
}

__CFArray *WiFiManagerClientCopyKnownNetworksNearLocation(uint64_t a1, double a2, double a3)
{
  memset(length, 0, sizeof(length));
  if (a1)
  {
    v5 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
    v6 = v5;
    if (v5 && (wifi_manager_copy_networks_at_location(v5[1], 0, &length[1], length, a2, a3), *&length[1]) && length[0] && (v7 = _WiFiCopyUnserialized(*&length[1], length[0])) != 0)
    {
      v8 = v7;
      NetworksFromRecords = _WiFiCreateNetworksFromRecords(v7);
      if (!NetworksFromRecords)
      {
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      }

      CFRelease(v8);
    }

    else
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      NetworksFromRecords = 0;
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    NetworksFromRecords = 0;
    v6 = 0;
  }

  _WiFiVMDealloc(*&length[1], length[0]);
  WiFiSendRightRelease(v6);
  return NetworksFromRecords;
}

__CFArray *WiFiManagerClientCopyScoreSortedKnownNetworksNearLocation(uint64_t a1, double a2, double a3)
{
  memset(length, 0, sizeof(length));
  if (a1)
  {
    v5 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
    v6 = v5;
    if (v5 && (wifi_manager_copy_networks_at_location(v5[1], 1, &length[1], length, a2, a3), *&length[1]) && length[0] && (v7 = _WiFiCopyUnserialized(*&length[1], length[0])) != 0)
    {
      v8 = v7;
      NetworksFromRecords = _WiFiCreateNetworksFromRecords(v7);
      if (!NetworksFromRecords)
      {
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      }

      CFRelease(v8);
    }

    else
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      NetworksFromRecords = 0;
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    NetworksFromRecords = 0;
    v6 = 0;
  }

  _WiFiVMDealloc(*&length[1], length[0]);
  WiFiSendRightRelease(v6);
  return NetworksFromRecords;
}

CFPropertyListRef WiFiManagerClientCopyScoreForNetwork(uint64_t a1, uint64_t a2)
{
  memset(length, 0, sizeof(length));
  if (!a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v13 = 0;
    v12 = 0;
    v3 = 0;
    goto LABEL_14;
  }

  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v3 || (v4 = WiFiNetworkCopyRecord(a2)) == 0)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v13 = 0;
    v12 = 0;
LABEL_14:
    v11 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v4);
  if (BinaryData)
  {
    v7 = BinaryData;
    v8 = v3[1];
    BytePtr = CFDataGetBytePtr(BinaryData);
    v10 = CFDataGetLength(v7);
    wifi_manager_copy_score_for_network(v8, BytePtr, v10, &length[1], length);
    if (!*&length[1] || !length[0] || (v11 = _WiFiCopyUnserialized(*&length[1], length[0])) == 0)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v11 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v11 = 0;
  }

  CFRelease(v5);
  v12 = *&length[1];
  v13 = length[0];
LABEL_10:
  _WiFiVMDealloc(v12, v13);
  WiFiSendRightRelease(v3);
  return v11;
}

BOOL WiFiManagerClientGetAirplaneModePowerPreference(uint64_t a1)
{
  if (!a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  v1 = WiFiManagerClientCopyProperty(a1, @"KeepWiFiPoweredAirplaneMode");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  TypeID = CFBooleanGetTypeID();
  v4 = TypeID == CFGetTypeID(v2) && CFBooleanGetValue(v2) != 0;
  CFRelease(v2);
  return v4;
}

void WiFiManagerClientSetAirplaneModePowerPreference(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CBED28];
    if (!a2)
    {
      v3 = MEMORY[0x277CBED10];
    }

    v4 = *v3;

    WiFiManagerClientSetProperty(a1, @"KeepWiFiPoweredAirplaneMode", v4);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

uint64_t WiFiManagerClientGetUserAutoJoinState(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_get_user_auto_join_state(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

void WiFiManagerClientEnableUserAutoJoin(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v1)
  {
    v2 = v1;
    wifi_manager_set_user_auto_join_state(v1[1], 1);

    WiFiSendRightRelease(v2);
  }
}

void WiFiManagerClientDisableUserAutoJoin(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v1)
  {
    v2 = v1;
    wifi_manager_set_user_auto_join_state(v1[1], 0);

    WiFiSendRightRelease(v2);
  }
}

void WiFiManagerClientRegisterUserAutoJoinStateChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 272) = a2;
  *(a1 + 280) = a3;
  if (a2)
  {
    __WiFiManagerClientOrEventMask(a1, 0x4000000);
  }

  else
  {
    __WiFiManagerClientAndEventMask(a1, -67108865);
  }
}

void WiFiManagerClientRegisterManagedAppleIDStateChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 304) = a2;
  *(a1 + 312) = a3;
  if (a2)
  {
    __WiFiManagerClientOrEventMask(a1, 0x100000000);
  }

  else
  {
    __WiFiManagerClientAndEventMask(a1, 0xFFFFFFFEFFFFFFFFLL);
  }
}

void WiFiManagerClientRemoveOrphanedSCNetworkSets(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v1)
  {
    v2 = v1;
    wifi_manager_remove_orphaned_sc_network_sets(v1[1]);

    WiFiSendRightRelease(v2);
  }
}

void WiFiManagerClientMigrateList(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v1)
  {
    v2 = v1;
    wifi_manager_migrate_list(v1[1]);

    WiFiSendRightRelease(v2);
  }
}

void WiFiManagerClientResetPrivateMAC(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v1)
  {
    v2 = v1;
    wifi_manager_reset_private_mac(v1[1]);

    WiFiSendRightRelease(v2);
  }
}

void WiFiManagerClientRemoveUnusedNetworkGeotags(uint64_t a1, double a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_remove_unused_network_geotags(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

void WiFiManagerClientScheduleUnusedNetworkGeotagsRemovalTest(uint64_t a1, int a2, double a3)
{
  v5 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v5)
  {
    v6 = v5;
    wifi_manager_schedule_unused_network_geotags_removal_test(v5[1], a2, a3);

    WiFiSendRightRelease(v6);
  }
}

void WiFiManagerClientUnScheduleUnusedNetworkGeotagsRemovalTest(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v1)
  {
    v2 = v1;
    wifi_manager_unschedule_unused_network_geotags_removal_test(v1[1]);

    WiFiSendRightRelease(v2);
  }
}

void WiFiManagerClientRegisterPreferredNetworksChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 288) = a2;
  *(a1 + 296) = a3;
  if (a2)
  {
    __WiFiManagerClientOrEventMask(a1, 0x20000000);
  }

  else
  {
    __WiFiManagerClientAndEventMask(a1, -536870913);
  }
}

uint64_t WiFiManagerClientSimulateNotification(uint64_t a1, CFDictionaryRef a2, int a3, const __CFData *a4)
{
  if (!a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v7 = 0;
    goto LABEL_20;
  }

  v7 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = MEMORY[0x277CBECE8];
  if (!a2)
  {
    v11 = 0;
    BytePtr = 0;
    Length = 0;
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v15 = 0;
    v16 = 0;
LABEL_11:
    wifi_manager_simulate_notification(v7[1], BytePtr, Length, a3, v15, v16);
    v17 = 0;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = WiFiNetworkCopyRecord(a2);
  if (!v9)
  {
LABEL_18:
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
LABEL_20:
    v17 = 74;
    goto LABEL_17;
  }

  a2 = v9;
  BinaryData = _CFPropertyListCreateBinaryData(*v8, v9);
  if (!BinaryData)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v17 = 74;
LABEL_16:
    CFRelease(a2);
    goto LABEL_17;
  }

  v11 = BinaryData;
  BytePtr = CFDataGetBytePtr(BinaryData);
  Length = CFDataGetLength(v11);
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_7:
  v14 = _CFPropertyListCreateBinaryData(*v8, a4);
  a4 = v14;
  if (v14)
  {
    v15 = CFDataGetBytePtr(v14);
    v16 = CFDataGetLength(a4);
    goto LABEL_11;
  }

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  v17 = 74;
  if (v11)
  {
LABEL_12:
    CFRelease(v11);
  }

LABEL_13:
  if (a4)
  {
    CFRelease(a4);
  }

  if (a2)
  {
    goto LABEL_16;
  }

LABEL_17:
  WiFiSendRightRelease(v7);
  return v17;
}

void WiFiManagerClientSetAutoInstantHotspotMode(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_auto_instant_hotspot_mode(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

uint64_t WiFiManagerClientGetAutoInstantHotspotMode(uint64_t a1)
{
  v4 = 1;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_get_auto_instant_hotspot_mode(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

void WiFiManagerClientSetShareMyPersonalHotspotMode(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_share_personal_hotspot_mode(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

uint64_t WiFiManagerClientGetShareMyPersonalHotspotMode(uint64_t a1)
{
  v4 = 1;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_get_share_personal_hotspot_mode(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

void WiFiManagerClientSetAutoInstantHotspotTestMode(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_auto_instant_hotspot_test_mode(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

void WiFiManagerClientSetAutoInstantHotspotTriggerInterval(uint64_t a1, double a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_auto_instant_hotspot_trigger_interval(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

uint64_t WiFiManagerClientTriggerGizmoSyncPasswordCheck(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  wifi_manager_tigger_gizmo_sync_password_check(v1[1]);
  WiFiSendRightRelease(v2);
  return 0;
}

uint64_t WiFiManagerClientCopySSIDRepresentingMostUsedNetworkGeoTaggedToCurrentDeviceLocation(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = 0;
  if (v1)
  {
    WiFiManagerClientCopySSIDRepresentingMostUsedNetworkGeoTaggedToCurrentDeviceLocation_cold_1(v1);
    return v4;
  }

  return v2;
}

uint64_t WiFiManagerClientIsWPA3PersonalSupported(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_wpa3_personal_supported(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

uint64_t WiFiManagerClientIsHotspotWPA3PersonalSupported(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_hotspot_wpa3_personal_supported(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

uint64_t WiFiManagerClientIsWPA3EnterpriseSupported(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_wpa3_enterprise_supported(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

uint64_t WiFiManagerClientIsMfpCapableDevice(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_mfp_capable_device(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

BOOL WiFiManagerClientIsInfraAllowed(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_infra_allowed(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4 != 0;
}

BOOL WiFiManagerClientIsP2PAllowed(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_p2p_allowed(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4 != 0;
}

atomic_uint *WiFiManagerClientSetFamilyHotspotPreferences(uint64_t a1, const void *a2)
{
  v14 = -3902;
  result = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (result)
  {
    v4 = result;
    v5 = *MEMORY[0x277CBECE8];
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], @"FamilyHotspotPreferences");
    v7 = BinaryData;
    if (BinaryData)
    {
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v7);
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      BytePtr = 0;
      Length = 0;
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    v10 = _CFPropertyListCreateBinaryData(v5, a2);
    if (v10)
    {
      v11 = v10;
      v12 = CFDataGetBytePtr(v10);
      v13 = CFDataGetLength(v11);
      wifi_manager_set_property(v4[1], BytePtr, Length, v12, v13, &v14);
      CFRelease(v11);
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_9:
    wifi_manager_set_property(v4[1], BytePtr, Length, 0, 0, &v14);
    if (!v7)
    {
LABEL_11:
      WiFiSendRightRelease(v4);
      return (v14 == 0);
    }

LABEL_10:
    CFRelease(v7);
    goto LABEL_11;
  }

  return result;
}

uint64_t WiFiManagerClientCopyFamilyHotspotPreferences(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = 0;
  if (v1)
  {
    WiFiManagerClientCopyFamilyHotspotPreferences_cold_1(v1);
    return v4;
  }

  return v2;
}

uint64_t WiFiManagerClientIsPowerModificationDisabled(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_power_modification_disabled(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

uint64_t WiFiManagerClientIsManagedAppleID(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_managed_apple_id(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

void WiFiManagerClientSetBuiltInReceiver(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_built_in_receiver(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

uint64_t WiFiManagerClientIsPersonalHotspotModificationDisabled(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_personal_hotspot_modification_disabled(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

void WiFiManagerClientRegisterUIEventCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 320) = a2;
  *(a1 + 328) = a3;
  if (a2)
  {
    __WiFiManagerClientOrEventMask(a1, 0x200000000);
  }

  else
  {
    __WiFiManagerClientAndEventMask(a1, 0xFFFFFFFDFFFFFFFFLL);
  }
}

void WiFiManagerClientSetAdaptiveRoamingParams(uint64_t a1, const void *a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    if (a2 && (BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2)) != 0)
    {
      v6 = BinaryData;
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v6);
      wifi_manager_set_adaptive_roam_params(v4[1], BytePtr, Length);
      CFRelease(v6);
    }

    else
    {
      wifi_manager_set_adaptive_roam_params(v4[1], 0, 0);
    }

    WiFiSendRightRelease(v4);
  }
}

const __CFData *WiFiManagerClientGetPrivateMacNetworkSwitchState(uint64_t a1, const void *a2)
{
  v9 = 0;
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!a2)
  {
    return 0;
  }

  v4 = v3;
  result = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
  if (result)
  {
    v6 = result;
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(v6);
    if (v4)
    {
      wifi_manager_get_privatemac_network_switch_state(v4[1], BytePtr, Length, &v9);
      WiFiSendRightRelease(v4);
    }

    CFRelease(v6);
    return v9;
  }

  return result;
}

void WiFiManagerClientSetUserInteractionOverride(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
    v4 = v3;
    if (v3)
    {
      if (!a2)
      {
        wifi_manager_set_user_interaction_override(v3[1], 0, 0);
        goto LABEL_7;
      }

      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
      if (BinaryData)
      {
        v6 = BinaryData;
        BytePtr = CFDataGetBytePtr(BinaryData);
        Length = CFDataGetLength(v6);
        wifi_manager_set_user_interaction_override(v4[1], BytePtr, Length);
        CFRelease(v6);
        goto LABEL_7;
      }
    }

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v4 = 0;
  }

LABEL_7:

  WiFiSendRightRelease(v4);
}

void WiFiManagerClientSetUserInteractionNwOverride(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
    v4 = v3;
    if (v3)
    {
      if (!a2)
      {
        wifi_manager_set_user_interaction_nw_override(v3[1], 0, 0);
        goto LABEL_7;
      }

      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
      if (BinaryData)
      {
        v6 = BinaryData;
        BytePtr = CFDataGetBytePtr(BinaryData);
        Length = CFDataGetLength(v6);
        wifi_manager_set_user_interaction_nw_override(v4[1], BytePtr, Length);
        CFRelease(v6);
        goto LABEL_7;
      }
    }

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v4 = 0;
  }

LABEL_7:

  WiFiSendRightRelease(v4);
}

BOOL WiFiManagerClientSetPrivateMacPrefForScanRecord(uint64_t a1, const void *a2, const void *a3, int a4)
{
  v19 = 0;
  v7 = *MEMORY[0x277CBECE8];
  BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
  v9 = BinaryData;
  if (BinaryData)
  {
    BytePtr = CFDataGetBytePtr(BinaryData);
    Length = CFDataGetLength(v9);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v12 = _CFPropertyListCreateBinaryData(v7, a3);
  v13 = v12;
  if (v12)
  {
    v14 = CFDataGetBytePtr(v12);
    v15 = CFDataGetLength(v13);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v16)
  {
    v17 = v16;
    wifi_manager_set_private_mac_pref(v16[1], BytePtr, Length, a4, v14, v15, &v19);
    WiFiSendRightRelease(v17);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v19 == 0;
}

void WiFiManagerClientSetMacRandomisationParams(uint64_t a1, const void *a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    if (a2 && (BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2)) != 0)
    {
      v6 = BinaryData;
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v6);
      wifi_manager_set_mac_randomisation_params(v4[1], BytePtr, Length);
      CFRelease(v6);
    }

    else
    {
      wifi_manager_set_mac_randomisation_params(v4[1], 0, 0);
    }

    WiFiSendRightRelease(v4);
  }
}

uint64_t WiFiManagerClientIsMultiBand(uint64_t a1)
{
  v4 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_is_multi_band(v1[1], &v4);
  }

  WiFiSendRightRelease(v2);
  return v4;
}

uint64_t WiFiManagerClientGetHardwareFailure(uint64_t a1)
{
  v5 = -1;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_get_hardware_failure(v1[1], &v5);
    if (v5 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * (v5 == 2);
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v3 = 0;
  }

  WiFiSendRightRelease(v2);
  return v3;
}

void WiFiManagerClientResetNetworkSettings(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_reset_network_settings(v1[1]);
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  WiFiSendRightRelease(v2);
}

void WiFiManagerClientPurgeExpiredKnownNetworks(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_purge_expired_known_networks(v1[1]);
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  WiFiSendRightRelease(v2);
}

void WiFiManagerClientCleanupLogBufferFiles(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v1)
  {
    v2 = v1;
    wifi_manager_cleanup_log_buffer_files(v1[1]);

    WiFiSendRightRelease(v2);
  }
}

void WiFiManagerClientWiFiCallHandoverNotification(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v4 = v3;
  if (v3)
  {
    wifi_manager_wificall_handover_notification(v3[1], a2);
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  WiFiSendRightRelease(v4);
}

uint64_t WiFiManagerClientSetAWDLMacAddressInUse(uint64_t a1, int a2)
{
  v3 = [MEMORY[0x277D7BB30] shared];
  if (a2)
  {

    return [v3 beginTransaction:15 completionHandler:0];
  }

  else
  {

    return [v3 endTransaction:15];
  }
}

CFPropertyListRef WiFiManagerClientCopyMovementStates(uint64_t a1)
{
  memset(length, 0, sizeof(length));
  if (!a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v2 = 0;
    goto LABEL_10;
  }

  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (!v1 || (wifi_manager_copy_movement_states(v1[1], &length[1], length), !*&length[1]) || !length[0])
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
LABEL_10:
    v3 = 0;
    goto LABEL_7;
  }

  v3 = _WiFiCopyUnserialized(*&length[1], length[0]);
  if (!v3)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

LABEL_7:
  _WiFiVMDealloc(*&length[1], length[0]);
  WiFiSendRightRelease(v2);
  return v3;
}

void WiFiManagerClientSetSimulatedMovementStates(uint64_t a1, const void *a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
    if (BinaryData)
    {
      v5 = BinaryData;
      v6 = v3[1];
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v5);
      wifi_manager_set_simulated_movement_states(v6, BytePtr, Length);
      CFRelease(v5);
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  WiFiSendRightRelease(v3);
}

void WiFiManagerClientSetBatterySaveMode(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_set_battery_save_mode(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

uint64_t WiFiManagerClientGetBatterySaveMode(uint64_t a1)
{
  v5 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v1)
  {
    v2 = v1;
    wifi_manager_get_battery_save_mode(v1[1], &v5);
    WiFiSendRightRelease(v2);
    return v5;
  }

  else
  {
    return 0;
  }
}

void WiFiManagerClientInitiateColocatedNetworkTransition(uint64_t a1, const void *a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    if (a2 && (BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2)) != 0)
    {
      v6 = BinaryData;
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(v6);
      wifi_manager_initiate_network_transition(v4[1], BytePtr, Length);
      CFRelease(v6);
    }

    else
    {
      wifi_manager_initiate_network_transition(v4[1], 0, 0);
    }

    WiFiSendRightRelease(v4);
  }
}

uint64_t _WiFiManagerClientGetCoreWiFiInterface(uint64_t a1)
{
  if (!*(a1 + 344))
  {
    v2 = [objc_alloc(MEMORY[0x277D02B10]) initWithServiceType:7];
    *(a1 + 344) = v2;
    if (v2)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = ___WiFiManagerClientGetCoreWiFiInterface_block_invoke;
      v4[3] = &__block_descriptor_40_e5_v8__0l;
      v4[4] = a1;
      [v2 setInvalidationHandler:v4];
      [*(a1 + 344) activate];
    }

    else
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    }
  }

  return *(a1 + 344);
}

void WiFiManagerClientConfigureMISIdleLinkTest(uint64_t a1, int a2)
{
  v3 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v3)
  {
    v4 = v3;
    wifi_manager_configure_mis_idle_link_test(v3[1], a2);

    WiFiSendRightRelease(v4);
  }
}

void __WiFiManagerClientRelease(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFMachPortInvalidate(v2);
    v3 = *(a1 + 96);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 96) = 0;
    }
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    notify_cancel(v5);
    *(a1 + 88) = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    wifi_manager_close(*(v6 + 4));
    WiFiSendRightRelease(*(a1 + 32));
    *(a1 + 32) = 0;
  }

  Port = WiFiMIGMachPortGetPort(*(a1 + 40));
  WiFiPortCacheRemove(Port);
  v8 = WiFiMIGMachPortGetPort(*(a1 + 40));
  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 40) = 0;
  }

  mach_port_mod_refs(*MEMORY[0x277D85F48], v8, 1u, -1);
  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 64) = 0;
  }

  [*(a1 + 344) invalidate];

  *(a1 + 344) = 0;
}

uint64_t __WiFiManagerClientClearDevicePorts(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 64);
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    if (Count)
    {
      v4 = Count;
      MEMORY[0x28223BE20]();
      v6 = (v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      memset(v6, 170, v5);
      CFDictionaryGetKeysAndValues(*(a1 + 64), 0, v6);
      if (v4 >= 1)
      {
        do
        {
          v7 = *v6++;
          _WiFiDeviceClientSetServerPort(v7, 0);
          --v4;
        }

        while (v4);
      }
    }
  }

  result = os_unfair_recursive_lock_unlock();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_7()
{
  result = *v1;
  v3 = *v0;
  return result;
}

const void *OUTLINED_FUNCTION_16(const void *a1)
{

  return WiFiManagerClientGetDevice(v1, a1);
}

uint64_t OUTLINED_FUNCTION_19@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *v3 = a3;

  return _WiFiVMDealloc(a1, a2);
}

uint64_t WiFiDeviceClientGetTypeID()
{
  result = __wiFiDeviceTypeID;
  if (!__wiFiDeviceTypeID)
  {
    pthread_once(&__wiFiDeviceTypeInit, __WiFiDeviceClientRegister);
    return __wiFiDeviceTypeID;
  }

  return result;
}

uint64_t __WiFiDeviceClientRegister()
{
  result = _CFRuntimeRegisterClass();
  __wiFiDeviceTypeID = result;
  return result;
}

uint64_t _WiFiDeviceClientSetServerPort(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

BOOL _WiFiDeviceClientIsServerPortValid(uint64_t a1)
{
  if (!a1)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _WiFiDeviceClientIsServerPortValid_cold_2(result, v9, v10, v11, v12, v13, v14, v15);
    return 0;
  }

  if ((*(a1 + 16) + 1) <= 1)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _WiFiDeviceClientIsServerPortValid_cold_1(result, v2, v3, v4, v5, v6, v7, v8);
    return 0;
  }

  return 1;
}

uint64_t WiFiDeviceClientRegisterRemovalCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFFFFFF7 | (8 * (a2 != 0));
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterPowerCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  v3 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (a2)
  {
    ++v3;
  }

  *(a1 + 64) = v3;
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterBssidChangeCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 272) = a2;
  *(a1 + 280) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFFFFBFFLL | ((a2 != 0) << 10);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterScanCacheUpdateCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 224) = a2;
  *(a1 + 232) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFFFFFBFLL | ((a2 != 0) << 6);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterScanCacheUpdateCallback2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 240) = a2;
  *(a1 + 248) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFFFFFBFLL | ((a2 != 0) << 6);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterLinkCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFFFFFFDLL | (2 * (a2 != 0));
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterExtendedLinkCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 448) = a2;
  *(a1 + 456) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFFFFFFDLL | (2 * (a2 != 0));
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterAutoJoinNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 464) = a2;
  *(a1 + 472) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFF7FFFFFLL | ((a2 != 0) << 23);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterUserJoinNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 480) = a2;
  *(a1 + 488) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFBFFFFFFFFLL | ((a2 != 0) << 34);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterDecryptionCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 112) = a2;
  *(result + 120) = a3;
  return result;
}

uint64_t WiFiDeviceClientRegisterResumeScanCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFFFF7FFLL | ((a2 != 0) << 11);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterBgScanSuspendResumeCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 288) = a2;
  *(a1 + 296) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFFFEFFFLL | ((a2 != 0) << 12);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterLQMCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 304) = a2;
  *(a1 + 312) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFFFBFFFLL | ((a2 != 0) << 14);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterWeightAvgLQMCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 320) = a2;
  *(a1 + 328) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFF7FFFFFFFLL | ((a2 != 0) << 31);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterBTCoexStatsCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 336) = a2;
  *(a1 + 344) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFBFFFFFFFFFFLL | ((a2 != 0) << 42);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterBSPEventCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 624) = a2;
  *(a1 + 632) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFF7FFFFFFFFFFLL | ((a2 != 0) << 43);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterUCMEventCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 640) = a2;
  *(a1 + 648) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFDFFFFFFFFFFFLL | ((a2 != 0) << 45);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterCatsUpdateCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 352) = a2;
  *(a1 + 360) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFEFFFFFFFFFFLL | ((a2 != 0) << 40);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterBTScanIntervalRelaxCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 368) = a2;
  *(a1 + 376) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFF7FFFFFFFFLL | ((a2 != 0) << 35);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegister24GHzNetworkInCriticalStateCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 384) = a2;
  *(a1 + 392) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFBFFFFFFFFFLL | ((a2 != 0) << 38);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterM1M4Handshake24GHzCountCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 400) = a2;
  *(a1 + 408) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFF7FFFFFFFFFLL | ((a2 != 0) << 39);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterCarPlayNetworkTypeChangeCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 416) = a2;
  *(a1 + 424) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFDFFFFFFFFFLL | ((a2 != 0) << 37);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterDiagnosticsCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 432) = a2;
  *(a1 + 440) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFFF7FFFLL | ((a2 != 0) << 15);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterHostApStateChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 496) = a2;
  *(a1 + 504) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFF7FFFFLL | ((a2 != 0) << 19);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterDeviceAvailableCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 528) = a2;
  *(a1 + 536) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFFEFFFFFLL | ((a2 != 0) << 20);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientRegisterTdConfirmedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 656) = a2;
  *(a1 + 664) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFBFFFFFFFFFFFLL | ((a2 != 0) << 46);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientScanCancel(uint64_t result)
{
  *(result + 160) = 0;
  *(result + 168) = 0;
  return result;
}

uint64_t WiFiDeviceClientAssociateCancel(uint64_t result)
{
  *(result + 176) = 0;
  *(result + 184) = 0;
  return result;
}

uint64_t WiFiDeviceClientStartNetwork(uint64_t a1, int a2, CFTypeRef BinaryData, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  if (!_WiFiDeviceClientIsServerPortValid(a1))
  {
    v15 = 4294963394;
    goto LABEL_11;
  }

  if ((a2 - 1) >= 4 || a2 != 4 && !BinaryData || !a4 || BinaryData && (BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], BinaryData)) == 0)
  {
    v15 = 22;
LABEL_11:
    v17 = v15;
    goto LABEL_14;
  }

  *(a1 + 192) = a4;
  *(a1 + 200) = a5;
  NSLog(&cfstr_SStartingNetwo.isa, "WiFiDeviceClientStartNetwork");
  v10 = *(a1 + 16);
  BytePtr = CFDataGetBytePtr(*(a1 + 48));
  Length = CFDataGetLength(*(a1 + 48));
  if (BinaryData)
  {
    v13 = CFDataGetBytePtr(BinaryData);
    v14 = CFDataGetLength(BinaryData);
    wifi_device_start_network(v10, BytePtr, Length, a2, v13, v14, &v17);
    CFRelease(BinaryData);
  }

  else
  {
    wifi_device_start_network(v10, BytePtr, Length, a2, 0, 0, &v17);
  }

  v15 = v17;
  if (!v17)
  {
    return 0;
  }

LABEL_14:
  NSLog(&cfstr_SStartNetworkF.isa, "WiFiDeviceClientStartNetwork", v15);
  return v17;
}

uint64_t WiFiDeviceClientRegisterRangingReportCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 576) = a2;
  *(a1 + 584) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFFEFFFFFFLL | ((a2 != 0) << 24);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

void WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  a1[68] = a2;
  a1[69] = a3;
  v4 = a1[8];
  if (a2)
  {
    a1[8] = v4 | 0x400000;
    _WiFiDeviceClientSendEventMaskToServer(a1);
    RunLoop = _WiFiManagerClientGetRunLoop(a1[7]);
    RunLoopMode = _WiFiManagerClientGetRunLoopMode(a1[7]);
    if (RunLoop)
    {
      v7 = RunLoopMode == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      CFRunLoopPerformBlock(RunLoop, RunLoopMode, block);
      CFRunLoopWakeUp(RunLoop);
    }
  }

  else
  {
    a1[8] = v4 & 0xFFFFFFFFFFBFFFFFLL;

    _WiFiDeviceClientSendEventMaskToServer(a1);
  }
}

void __WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback_block_invoke(uint64_t a1)
{
  cf = 0;
  v2 = WiFiDeviceClientCopyInterfaceStateInfo(*(a1 + 32), &cf);
  v3 = cf;
  if (cf)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    _WiFiDeviceClientDispatchVirtInterfaceStateChangeEvent(*(a1 + 32), cf);
  }

  else if (!cf)
  {
    return;
  }

  CFRelease(v3);
}

uint64_t WiFiDeviceClientRegisterRoamStatusEventCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 592) = a2;
  *(a1 + 600) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFFFFBFFFFFFFLL | ((a2 != 0) << 30);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

uint64_t WiFiDeviceClientSetWiFiDirect(uint64_t a1, unsigned __int8 a2)
{
  v3 = 0;
  if (!a1)
  {
    WiFiDeviceClientSetWiFiDirect_cold_2();
  }

  WiFiDeviceClientSetWiFiDirect_cold_1(a1, a2, &v3, &v4);
  return v4;
}

uint64_t _WiFiDeviceClientDispatchAssociationResult(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (result + 176);
  v4 = *(result + 176);
  if (v4)
  {
    result = v4(result, a2, a3, a4, *(result + 184));
    *v5 = 0;
    v5[1] = 0;
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchStartNetworkResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = 136315906;
      v20 = "_WiFiDeviceClientDispatchStartNetworkResult";
      v21 = 1024;
      v22 = a2;
      v23 = 2112;
      v24 = a4;
      v25 = 2112;
      v26 = a3;
      _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: dispatching callback (error=%d) with response %@ and network %@", &v19, 0x26u);
      v4 = *(a1 + 192);
    }

    v4(a1, a2, a3, a4, *(a1 + 200));
    result = 0;
    *(a1 + 192) = 0;
  }

  else
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      _WiFiDeviceClientDispatchStartNetworkResult_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    result = 2;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _WiFiDeviceClientDispatchStopNetworkResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 208);
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = 136315650;
      v18 = "_WiFiDeviceClientDispatchStopNetworkResult";
      v19 = 1024;
      v20 = a2;
      v21 = 2112;
      v22 = a3;
      _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: dispatching callback (error=%d) with response %@", &v17, 0x1Cu);
      v3 = *(a1 + 208);
    }

    v3(a1, a2, a3, *(a1 + 216));
    result = 0;
    *(a1 + 208) = 0;
  }

  else
  {
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      _WiFiDeviceClientDispatchStopNetworkResult_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    result = 2;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _WiFiDeviceClientDispatchPowerEvent(uint64_t result)
{
  v1 = *(result + 144);
  if (v1)
  {
    return v1(result, *(result + 152));
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchBssidEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 272);
  if (v2)
  {
    return v2(result, a2, *(result + 280));
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchLinkEvent(uint64_t result, CFDictionaryRef theDict)
{
  v3 = result;
  v4 = *(result + 96);
  if (v4)
  {
    result = v4(result, *(result + 104));
  }

  if (*(v3 + 448))
  {
    Value = CFDictionaryGetValue(theDict, @"LINK_CHANGED_NETWORK");
    if (Value)
    {
      v6 = WiFiNetworkCreate(*MEMORY[0x277CBECE8], Value);
      if (v6)
      {
        v7 = v6;
        CFDictionaryReplaceValue(theDict, @"LINK_CHANGED_NETWORK", v6);
        CFRelease(v7);
      }
    }

    v9 = *(v3 + 448);
    v8 = *(v3 + 456);

    return v9(v3, theDict, v8);
  }

  return result;
}

void _WiFiDeviceClientDispatchAutoJoinNotification(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"autoJoinNetwork");
    if (Value)
    {
      v5 = WiFiNetworkCreate(*MEMORY[0x277CBECE8], Value);
      CFDictionaryReplaceValue(theDict, @"autoJoinNetwork", v5);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    v6 = *(a1 + 464);
    if (v6)
    {
      v7 = *(a1 + 472);

      v6(a1, theDict, v7);
    }
  }

  else
  {
    _WiFiDeviceClientDispatchAutoJoinNotification_cold_1();
  }
}

void _WiFiDeviceClientDispatchUserJoinNotification(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"userJoinNetwork");
    if (Value)
    {
      v5 = WiFiNetworkCreate(*MEMORY[0x277CBECE8], Value);
      CFDictionaryReplaceValue(theDict, @"userJoinNetwork", v5);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    v6 = CFDictionaryGetValue(theDict, @"userJoinStatus");
    if (v6)
    {
      v7 = v6;
      v8 = CFEqual(v6, @"userJoinStarted") || CFEqual(v7, @"userJoinScanning") || CFEqual(v7, @"userJoinAssociating") || CFEqual(v7, @"userJoinWaiting") != 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 480);
    if (v9)
    {
      v10 = *(a1 + 488);

      v9(a1, v8, theDict, v10);
    }
  }

  else
  {
    _WiFiDeviceClientDispatchUserJoinNotification_cold_1();
  }
}

uint64_t _WiFiDeviceClientDispatchResumeScanEvent(uint64_t result)
{
  v1 = *(result + 128);
  if (v1)
  {
    return v1(result, *(result + 136));
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchBgScanSuspendResumeEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 288);
  if (v2)
  {
    return v2(result, a2, *(result + 296));
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchBSPEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 624);
  if (v2)
  {
    return v2(result, a2, *(result + 632));
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchUCMEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 640);
  if (v2)
  {
    return v2(result, a2, *(result + 648));
  }

  return result;
}

void _WiFiDeviceClientDispatchBTScanIntervalRelaxEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 368);
  if (v3)
  {
    v4 = *(a1 + 376);

    v3(a1, a2, v4);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

void _WiFiDeviceClientDispatch24GHzNetworkInCriticalStateEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 384);
  if (v3)
  {
    v4 = *(a1 + 392);

    v3(a1, a2, v4);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

void _WiFiDeviceClientDispatchM1M4Handshake24GHzCountEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 400);
  if (v3)
  {
    v4 = *(a1 + 408);

    v3(a1, a2, v4);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

void _WiFiDeviceClientDispatchCarPlayNetworkTypeChangeEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 416);
  if (v3)
  {
    v4 = *(a1 + 424);

    v3(a1, a2, v4);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

uint64_t _WiFiDeviceClientDispatchDiagnosticsStartEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 432);
  if (v2)
  {
    return v2(result, a2, *(result + 440));
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchHostApStateChangedEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 496);
  if (v2)
  {
    return v2(result, a2, *(result + 504));
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchGasResults(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 512);
  if (v3)
  {
    return v3(result, a2, a3, *(result + 520));
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchRangingResult(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 560);
  if (v3)
  {
    return v3(result, a2, a3, *(result + 568));
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchDeviceAvailableEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 528);
  if (v2)
  {
    return v2(result, a2, *(result + 536));
  }

  return result;
}

uint64_t WiFiDeviceClientSetRangeable(uint64_t a1, int a2, const __CFData *a3)
{
  v13 = 0;
  if (_WiFiDeviceClientIsServerPortValid(a1))
  {
    if (a3 && (BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a3), (a3 = BinaryData) != 0))
    {
      BytePtr = CFDataGetBytePtr(BinaryData);
      Length = CFDataGetLength(a3);
    }

    else
    {
      BytePtr = 0;
      Length = 0;
    }

    v9 = *(a1 + 16);
    v10 = CFDataGetBytePtr(*(a1 + 48));
    v11 = CFDataGetLength(*(a1 + 48));
    wifi_device_set_rangeable(v9, v10, v11, a2, BytePtr, Length, &v13);
    if (a3)
    {
      CFRelease(a3);
    }
  }

  else
  {
    v13 = -3902;
  }

  if (v13)
  {
    return 4294963394;
  }

  else
  {
    return 0;
  }
}

uint64_t WiFiDeviceClientSetRangingIdentifier(uint64_t a1, const __CFData *a2)
{
  v12 = 0;
  if (_WiFiDeviceClientIsServerPortValid(a1))
  {
    if (a2)
    {
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
      a2 = BinaryData;
      if (BinaryData)
      {
        BytePtr = CFDataGetBytePtr(BinaryData);
        Length = CFDataGetLength(a2);
      }

      else
      {
        BytePtr = 0;
        Length = 0;
      }

      v7 = 1;
    }

    else
    {
      BytePtr = 0;
      Length = 0;
      v7 = 0;
    }

    v8 = *(a1 + 16);
    v9 = CFDataGetBytePtr(*(a1 + 48));
    v10 = CFDataGetLength(*(a1 + 48));
    wifi_device_set_ranging_identifier(v8, v9, v10, v7, BytePtr, Length, &v12);
    if (a2)
    {
      CFRelease(a2);
    }
  }

  else
  {
    v12 = -3902;
  }

  if (v12)
  {
    return 4294963394;
  }

  else
  {
    return 0;
  }
}

uint64_t WiFiDeviceClientDebugCommand(uint64_t a1, const void *a2, CFPropertyListRef *a3)
{
  length = 0;
  bytes = 0;
  if (!a2)
  {
    v14 = -3900;
LABEL_13:
    LODWORD(length) = v14;
    goto LABEL_10;
  }

  if (!_WiFiDeviceClientIsServerPortValid(a1))
  {
    v14 = -3902;
    goto LABEL_13;
  }

  BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
  v7 = BinaryData;
  if (BinaryData)
  {
    BytePtr = CFDataGetBytePtr(BinaryData);
    v9 = CFDataGetLength(v7);
  }

  else
  {
    BytePtr = 0;
    v9 = 0;
  }

  v10 = *(a1 + 16);
  v11 = CFDataGetBytePtr(*(a1 + 48));
  v12 = CFDataGetLength(*(a1 + 48));
  wifi_device_debug_command(v10, v11, v12, BytePtr, v9, &bytes, &length + 1, &length);
  if (a3)
  {
    *a3 = _WiFiCopyUnserialized(bytes, HIDWORD(length));
  }

  if (v7)
  {
    CFRelease(v7);
  }

LABEL_10:
  _WiFiVMDealloc(bytes, HIDWORD(length));
  return length;
}

uint64_t WiFiDeviceClientTrafficRegistration(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294963396;
  }

  v8 = 0;
  v7 = 0;
  v3 = [objc_alloc(MEMORY[0x277D7BA70]) initWithDictionary:a2 isActive:&v8];
  if (!v3)
  {
    return 4294963396;
  }

  v4 = v3;
  v5 = *(a1 + 72);
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277D7BA58]);
    *(a1 + 72) = v5;
  }

  if (v8 == 1)
  {
    [v5 setTrafficRegistration:v4 error:&v7];
  }

  else
  {
    [v5 clearTrafficRegistration:v4 error:&v7];
  }

  result = v7;
  if (v7)
  {
    return [v7 code];
  }

  return result;
}

uint64_t WiFiDeviceClientNotifySoftError(uint64_t a1, const void *a2)
{
  v15 = -3900;
  if (a2)
  {
    if (_WiFiDeviceClientIsServerPortValid(a1))
    {
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
      if (BinaryData)
      {
        v5 = BinaryData;
        BytePtr = CFDataGetBytePtr(BinaryData);
        Length = CFDataGetLength(v5);
        v8 = *(a1 + 16);
        v9 = CFDataGetBytePtr(*(a1 + 48));
        v10 = CFDataGetLength(*(a1 + 48));
        wifi_device_soft_error_notification(v8, v9, v10, BytePtr, Length, &v15);
        CFRelease(v5);
      }

      else
      {
        v11 = *(a1 + 16);
        v12 = CFDataGetBytePtr(*(a1 + 48));
        v13 = CFDataGetLength(*(a1 + 48));
        wifi_device_soft_error_notification(v11, v12, v13, 0, 0, &v15);
      }
    }

    else
    {
      v15 = -3902;
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  if (v15)
  {
    return 4294963394;
  }

  else
  {
    return 0;
  }
}

const __CFDictionary *WiFiDeviceClientAutoJoinBlacklistCommand(uint64_t a1, const void *a2, _DWORD *a3)
{
  memset(length, 0, sizeof(length));
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  if (_WiFiDeviceClientIsServerPortValid(a1))
  {
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
    v7 = BinaryData;
    if (BinaryData)
    {
      BytePtr = CFDataGetBytePtr(BinaryData);
      v9 = CFDataGetLength(v7);
    }

    else
    {
      v9 = 0;
      BytePtr = 0;
    }

    v10 = *(a1 + 16);
    v11 = CFDataGetBytePtr(*(a1 + 48));
    v12 = CFDataGetLength(*(a1 + 48));
    wifi_device_autojoinblacklist_command(v10, v11, v12, BytePtr, v9, &length[1], length);
    v13 = 0;
    if (*&length[1] && length[0])
    {
      v13 = _WiFiCopyUnserialized(*&length[1], length[0]);
      Value = CFDictionaryGetValue(v13, @"networks");
      NetworksFromRecords = _WiFiCreateNetworksFromRecords(Value);
      if (NetworksFromRecords)
      {
        v16 = NetworksFromRecords;
        CFDictionarySetValue(v13, @"networks", NetworksFromRecords);
        CFRelease(v16);
      }

      else
      {
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      }
    }

    *a3 = 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    v13 = 0;
    *a3 = 0;
  }

  _WiFiVMDealloc(*&length[1], length[0]);
  return v13;
}

const __CFDictionary *WiFiDeviceClientBssBlacklistCommandAndCopyResponse(uint64_t a1, const void *a2, _DWORD *a3)
{
  memset(length, 0, sizeof(length));
  if (_WiFiDeviceClientIsServerPortValid(a1))
  {
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
    v7 = BinaryData;
    if (BinaryData)
    {
      BytePtr = CFDataGetBytePtr(BinaryData);
      v9 = CFDataGetLength(v7);
    }

    else
    {
      v9 = 0;
      BytePtr = 0;
    }

    v10 = *(a1 + 16);
    v11 = CFDataGetBytePtr(*(a1 + 48));
    v12 = CFDataGetLength(*(a1 + 48));
    wifi_device_bssblacklist_command(v10, v11, v12, BytePtr, v9, &length[1], length);
    v13 = 0;
    if (*&length[1] && length[0])
    {
      v13 = _WiFiCopyUnserialized(*&length[1], length[0]);
      Value = CFDictionaryGetValue(v13, @"networks");
      NetworksFromRecords = _WiFiCreateNetworksFromRecords(Value);
      if (NetworksFromRecords)
      {
        v16 = NetworksFromRecords;
        CFDictionarySetValue(v13, @"networks", NetworksFromRecords);
        CFRelease(v16);
      }

      else
      {
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      }
    }

    *a3 = 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    v13 = 0;
    *a3 = 0;
  }

  _WiFiVMDealloc(*&length[1], length[0]);
  return v13;
}

uint64_t WiFiDeviceClientRegisterP2pThreadCoexCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 608) = a2;
  *(a1 + 616) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFFFFFDFFFFFFFFFFLL | ((a2 != 0) << 41);
  return _WiFiDeviceClientSendEventMaskToServer(a1);
}

void _WiFiDeviceClientDispatchP2pThreadCoexEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 608);
  if (v3)
  {
    v4 = *(a1 + 616);

    v3(a1, a2, v4);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

void _WiFiDeviceClientDispatchTdConfirmedEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 656);
  if (v3)
  {
    v4 = *(a1 + 664);

    v3(a1, a2, v4);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

void __WiFiDeviceClientRelease(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
    a1[9] = 0;
  }
}

void ___dispatchCopyCurrentNetwork_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(*(*(a1 + 32) + 8), *(a1 + 40), **(a1 + 32));
  dispatch_release(*(*(a1 + 32) + 24));
  v2 = *(a1 + 32);

  free(v2);
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

CFIndex OUTLINED_FUNCTION_10_0()
{
  v2 = *(v0 + 48);

  return CFDataGetLength(v2);
}

const UInt8 *OUTLINED_FUNCTION_14_0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);

  return CFDataGetBytePtr(v3);
}

CFIndex OUTLINED_FUNCTION_15_0()
{
  v2 = *(v0 + 48);

  return CFDataGetLength(v2);
}

CFIndex OUTLINED_FUNCTION_16_0()
{

  return CFDataGetLength(v0);
}

CFIndex OUTLINED_FUNCTION_22_0()
{
  v2 = *(v0 + 48);

  return CFDataGetLength(v2);
}

CFSetRef __WiFiNetworkRegister()
{
  values[5] = *MEMORY[0x277D85DE8];
  __kWiFiNetworkTypeID = _CFRuntimeRegisterClass();
  values[0] = @"UserName";
  values[1] = @"UserPassword";
  values[2] = @"UserPasswordKeychainItemID";
  values[3] = @"OneTimeUserPassword";
  values[4] = @"AcceptEAPTypes";
  v0 = *MEMORY[0x277CBECE8];
  __eapKeys = CFArrayCreate(*MEMORY[0x277CBECE8], values, 5, MEMORY[0x277CBF128]);
  v3[0] = @"AppleWiFi";
  v3[1] = @"AppleWifi";
  v3[2] = @"AppleWiFiSecure";
  v3[3] = @"AppleWatch";
  result = CFSetCreate(v0, v3, 4, MEMORY[0x277CBF158]);
  __internalSSIDs = result;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

_WORD *WiFiNetworkCreateWithSsid(const __CFString *a1)
{
  if (a1 && (v2 = *MEMORY[0x277CBECE8], (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) != 0))
  {
    v4 = Mutable;
    CFDictionarySetValue(Mutable, @"SSID_STR", a1);
    ExternalRepresentation = CFStringCreateExternalRepresentation(v2, a1, 0x8000100u, 0);
    if (ExternalRepresentation)
    {
      v6 = ExternalRepresentation;
      CFDictionarySetValue(v4, @"SSID", ExternalRepresentation);
      CFRelease(v6);
    }

    valuePtr = 2;
    v7 = CFNumberCreate(v2, kCFNumberSInt16Type, &valuePtr);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(v4, @"AP_MODE", v7);
      CFRelease(v8);
    }

    v9 = __WiFiNetworkCreate(v2, v4, 0);
    CFRelease(v4);
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return v9;
}

const __CFDictionary *WiFiNetworkCopyFilteredRecord(uint64_t a1)
{
  v1 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(a1 + 16));
  v3 = MutableCopy;
  if (MutableCopy)
  {
    if (!CFDictionaryGetValue(MutableCopy, @"SSID_STR"))
    {
      v6 = v3;
      v3 = 0;
LABEL_10:
      CFRelease(v6);
      return v3;
    }

    Value = CFDictionaryGetValue(v3, @"EnterpriseProfile");
    if (Value)
    {
      v5 = CFDictionaryCreateMutableCopy(v1, 0, Value);
      if (v5)
      {
        v6 = v5;
        v7 = CFDictionaryGetValue(v5, @"EAPClientConfiguration");
        if (v7)
        {
          v8 = CFDictionaryCreateMutableCopy(v1, 0, v7);
          if (v8)
          {
            v9 = v8;
            CFDictionaryRemoveValue(v8, @"UserPassword");
            CFDictionaryRemoveValue(v9, @"TLSSaveTrustExceptions");
            CFDictionaryRemoveValue(v9, @"TLSUserTrustProceedCertificateChain");
            CFDictionarySetValue(v6, @"EAPClientConfiguration", v9);
            CFRelease(v9);
          }
        }

        CFDictionarySetValue(v3, @"EnterpriseProfile", v6);
        goto LABEL_10;
      }
    }
  }

  return v3;
}

const __CFDictionary *WiFiNetworkCopyPreparedEAPProfile(CFDictionaryRef *a1, const void *a2)
{
  Property = WiFiNetworkGetProperty(a1, @"EnterpriseProfile");
  if (!Property)
  {
    return 0;
  }

  v5 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, Property);
  v7 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"EnableUserInterface", *MEMORY[0x277CBED10]);
    Value = CFDictionaryGetValue(v7, @"EAPClientConfiguration");
    if (Value)
    {
      v9 = CFDictionaryCreateMutableCopy(v5, 0, Value);
      if (v9)
      {
        v10 = v9;
        if (a2)
        {
          CFDictionarySetValue(v9, @"UserPassword", a2);
LABEL_16:
          CFDictionarySetValue(v7, @"EAPClientConfiguration", v10);
          CFRelease(v10);
          return v7;
        }

        if (WiFiNetworkIsHotspot20(a1))
        {
          v11 = __WiFiNetworkCopyPasswordForAccount(a1);
          objc_autoreleasePoolPop(objc_autoreleasePoolPush());
          if (v11)
          {
LABEL_15:
            CFDictionarySetValue(v10, @"UserPassword", v11);
            CFRelease(v11);
            goto LABEL_16;
          }

          v12 = WiFiNetworkCopyPassword(a1);
          if (!v12)
          {
            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
            v12 = __WiFiNetworkCopyPasswordByDomainName(a1);
            if (!v12)
            {
              objc_autoreleasePoolPop(objc_autoreleasePoolPush());
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = WiFiNetworkCopyPassword(a1);
          if (!v12)
          {
            goto LABEL_16;
          }
        }

        v11 = v12;
        goto LABEL_15;
      }
    }
  }

  return v7;
}

BOOL WiFiNetworkIsHotspot20(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    return CFDictionaryGetValue(*(result + 16), @"HOTSPOT20_IE") || CFDictionaryGetValue(*(v1 + 16), @"DomainName") != 0;
  }

  return result;
}

CFStringRef __WiFiNetworkCopyPasswordForAccount(uint64_t a1)
{
  Property = WiFiNetworkGetProperty(a1, @"HS20AccountName");
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  if (!Property || CFStringGetLength(Property) < 1)
  {
    return 0;
  }

  return WiFiSecurityCopyPassword(Property);
}

CFStringRef WiFiNetworkCopyPassword(CFDictionaryRef *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "WiFiNetworkCopyPassword";
    v8 = 2112;
    AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Copy password for Network %@", &v6, 0x16u);
  }

  if (!a1 || !CFDictionaryContainsKey(a1[2], @"PayloadUUID") || (v2 = WiFiNetworkGetAccountForNetwork(a1), (result = WiFiSecurityCopyNonSyncablePassword(v2)) == 0))
  {
    v4 = WiFiNetworkGetAccountForNetwork(a1);
    result = WiFiSecurityCopyPassword(v4);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFString *__WiFiNetworkCopyPasswordByDomainName(uint64_t a1)
{
  result = WiFiNetworkGetProperty(a1, @"DomainName");
  if (result)
  {

    return WiFiSecurityCopyPassword(result);
  }

  return result;
}

void WiFiNetworkMergeForAssociation(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (CFDictionaryGetValue(*(a1 + 16), @"WEP") == *MEMORY[0x277CBED28])
    {
      Property = WiFiNetworkGetProperty(a2, @"WEP_AUTH_Flags");
      if (Property)
      {
        WiFiNetworkSetProperty(a1, @"WEP_AUTH_Flags", Property);
      }
    }
  }

  if (WiFiNetworkIsEAP(a2))
  {
    v5 = WiFiNetworkGetProperty(a2, @"EnterpriseProfile");
    if (v5)
    {
      WiFiNetworkSetProperty(a1, @"EnterpriseProfile", v5);
    }
  }

  if (a2 && CFDictionaryGetValue(*(a2 + 16), @"DomainName") && WiFiNetworkIsHotspot20(a1))
  {
    v6 = WiFiNetworkGetProperty(a2, @"DisplayedOperatorName");
    if (v6)
    {
      WiFiNetworkSetProperty(a1, @"HS2NetworkBadge", v6);
    }

    SSID = WiFiNetworkGetProperty(a2, @"HS20AccountName");
    if (SSID || (SSID = WiFiNetworkGetSSID(a2)) != 0)
    {
      WiFiNetworkSetProperty(a1, @"HS20AccountName", SSID);
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    }
  }

  v8 = WiFiNetworkGetProperty(a2, @"TransitionDisabledFlags");
  if (v8)
  {
    WiFiNetworkSetProperty(a1, @"TransitionDisabledFlags", v8);
  }

  v9 = *MEMORY[0x277D02A80];
  v10 = WiFiNetworkGetProperty(a2, *MEMORY[0x277D02A80]);
  if (v10)
  {
    WiFiNetworkSetProperty(a1, v9, v10);
  }

  v11 = WiFiNetworkGetProperty(a2, @"PolicyUUID");
  if (v11)
  {
    WiFiNetworkSetProperty(a1, @"PolicyUUID", v11);
  }

  v12 = WiFiNetworkGetProperty(a2, @"PayloadUUID");
  if (v12)
  {
    WiFiNetworkSetProperty(a1, @"PayloadUUID", v12);
  }

  v13 = WiFiNetworkGetProperty(a2, @"PayloadIdentifier");
  if (v13)
  {
    WiFiNetworkSetProperty(a1, @"PayloadIdentifier", v13);
  }

  v14 = WiFiNetworkGetProperty(a2, @"CarrierPayloadIdentifierTelemetryApproved");
  if (v14)
  {
    WiFiNetworkSetProperty(a1, @"CarrierPayloadIdentifierTelemetryApproved", v14);
  }

  WiFiNetworkMergeAutoJoinProperties(a1, a2);
  if (MEMORY[0x282215548])
  {
    v15 = *MEMORY[0x277CF7F28];
    v16 = WiFiNetworkGetProperty(a2, *MEMORY[0x277CF7F28]);
    WiFiNetworkSetProperty(a1, v15, v16);
  }

  v17 = WiFiNetworkGetProperty(a2, @"WiFiNetworkUserAcceptedRecommendationAt");
  WiFiNetworkSetProperty(a1, @"WiFiNetworkUserAcceptedRecommendationAt", v17);
  if (*(a1 + 24) == -1)
  {
    v18 = *(a2 + 24);
    if (v18 != 0xFFFF)
    {
      *(a1 + 24) = v18;
    }
  }
}

BOOL WiFiNetworkIsWEP(_BOOL8 result)
{
  if (result)
  {
    return CFDictionaryGetValue(*(result + 16), @"WEP") == *MEMORY[0x277CBED28];
  }

  return result;
}

void WiFiNetworkSetProperty(uint64_t a1, void *key, const void *a3)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v7 = __eapKeys;
      if (__eapKeys && (v31.length = CFArrayGetCount(__eapKeys), v31.location = 0, v8 = CFArrayContainsValue(v7, v31, key), v4 = *(a1 + 16), v8))
      {
        Value = CFDictionaryGetValue(v4, @"EnterpriseProfile");
        if (!Value || (v10 = Value, v11 = *MEMORY[0x277CBECE8], (MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, Value)) == 0))
        {
          v21 = 0;
          v18 = 0;
LABEL_28:
          if (a3 && !v18)
          {
LABEL_30:
            v24 = *MEMORY[0x277CBECE8];
            Current = CFAbsoluteTimeGetCurrent();
            v26 = CFDateCreate(v24, Current);
            if (v26)
            {
              v27 = v26;
              CFDictionarySetValue(*(a1 + 16), @"lastUpdated", v26);
              CFRelease(v27);
              if (!v21)
              {
                return;
              }

              goto LABEL_39;
            }

LABEL_38:
            if (!v21)
            {
              return;
            }

            goto LABEL_39;
          }

          v28 = !v21;
          if (!a3)
          {
            v28 = 1;
          }

          if (v28)
          {
            goto LABEL_38;
          }

          if (CFEqual(a3, v18))
          {
LABEL_39:

            CFRelease(v18);
            return;
          }

LABEL_27:
          v21 = 1;
          goto LABEL_30;
        }

        v13 = MutableCopy;
        v14 = CFDictionaryGetValue(v10, @"EAPClientConfiguration");
        if (v14 && (v15 = CFDictionaryCreateMutableCopy(v11, 0, v14)) != 0)
        {
          v16 = v15;
          v17 = CFDictionaryGetValue(v15, key);
          v18 = v17;
          if (v17)
          {
            CFRetain(v17);
          }

          CFDictionarySetValue(v16, key, a3);
          CFDictionarySetValue(v13, @"EAPClientConfiguration", v16);
          CFRelease(v16);
        }

        else
        {
          v18 = 0;
        }

        CFDictionarySetValue(*(a1 + 16), @"EnterpriseProfile", v13);
        CFRelease(v13);
      }

      else
      {
        v19 = CFDictionaryGetValue(v4, key);
        v18 = v19;
        if (v19)
        {
          CFRetain(v19);
        }

        v20 = *(a1 + 16);
        if (a3)
        {
          CFDictionarySetValue(v20, key, a3);
        }

        else
        {
          CFDictionaryRemoveValue(v20, key);
        }

        if (CFEqual(key, @"EnterpriseProfile") && !__WiFiNetworkIsWPAEAP(*(a1 + 16)))
        {
          v22 = __WiFiNetworkIsSAE(*(a1 + 16));
          IsWPAWPA2PSK = WiFiNetworkIsWPAWPA2PSK(a1);
          if (v22)
          {
            WiFiNetworkSetSAE(a1, 1, IsWPAWPA2PSK);
          }

          else
          {
            WiFiNetworkSetWPA(a1, IsWPAWPA2PSK);
          }
        }
      }

      v21 = v18 != 0;
      if (!a3 && v18)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }
  }

  v29 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v29);
}

BOOL WiFiNetworkIsEAP(uint64_t a1)
{
  if (!a1 || WiFiNetworkIsWAPI(a1))
  {
    return 0;
  }

  v3 = *(a1 + 16);

  return __WiFiNetworkIsEAP(v3);
}

BOOL WiFiNetworkIsHS20Account(_BOOL8 result)
{
  if (result)
  {
    return CFDictionaryGetValue(*(result + 16), @"DomainName") != 0;
  }

  return result;
}

const __CFString *WiFiNetworkGetAccountForNetwork(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  SSID = WiFiNetworkGetSSID(a1);
  v3 = SSID;
  if ((!SSID || !CFStringGetLength(SSID)) && WiFiNetworkIsHotspot20(a1))
  {
    Property = WiFiNetworkGetProperty(a1, @"DomainName");
    if (Property)
    {
      return Property;
    }
  }

  return v3;
}

void WiFiNetworkMergeAutoJoinProperties(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    WiFiNetworkRemoveAutoJoinProperties(a1);
    IsEnabled = WiFiNetworkIsEnabled(a2);
    WiFiNetworkSetState(a1, IsEnabled);
    if (IsEnabled)
    {
      return;
    }

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    Property = WiFiNetworkGetProperty(a2, @"networkDisabledClientName");
    WiFiNetworkSetProperty(a1, @"networkDisabledClientName", Property);
    v6 = WiFiNetworkGetProperty(a2, @"networkDisabledReason");
    WiFiNetworkSetProperty(a1, @"networkDisabledReason", v6);
    v7 = WiFiNetworkGetProperty(a2, @"networkDisabledTimestamp");
    WiFiNetworkSetProperty(a1, @"networkDisabledTimestamp", v7);
    v8 = WiFiNetworkGetProperty(a2, @"WiFiNetworkDisabledUntilDate");
    if (!v8)
    {
      return;
    }

    WiFiNetworkSetProperty(a1, @"WiFiNetworkDisabledUntilDate", v8);
  }

  v9 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v9);
}

void WiFiNetworkMerge(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WiFiNetworkMergeProperties(a1, *(a2 + 16));
    if (*(a1 + 24) == -1)
    {
      v4 = *(a2 + 24);
      if (v4 != 0xFFFF)
      {
        *(a1 + 24) = v4;
      }
    }
  }
}

void WiFiNetworkMergeProperties(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (theDict)
    {
      v3 = a1;
      Count = CFDictionaryGetCount(theDict);
      if (Count)
      {
        v5 = Count;
        v6 = 8 * Count;
        v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
        v8 = malloc_type_malloc(v6, 0xC0040B8AA526DuLL);
        CFDictionaryGetKeysAndValues(theDict, v7, v8);
        if (v5 < 1)
        {
          goto LABEL_71;
        }

        v9 = 0;
        v10 = 0;
        v11 = 0;
        allocator = *MEMORY[0x277CBECE8];
        do
        {
          if (CFStringCompare(@"LEAKY_AP_LEARNED_DATA", v7[v9], 0) == kCFCompareEqualTo)
          {
            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
            v10 = 1;
          }

          if (!WiFiNetworkIsHotspot20(v3) || CFStringCompare(@"SSID_STR", v7[v9], 0) && CFStringCompare(@"SSID", v7[v9], 0))
          {
            if (CFStringCompare(@"PRIVATE_MAC_ADDRESS", v7[v9], 0))
            {
              if (CFStringCompare(@"EnterpriseProfile", v7[v9], 0))
              {
                if (CFStringCompare(@"HomePropertyFromMobilewifitool", v7[v9], 0) && CFStringCompare(@"COLOCATED_NETWORK_SCOPE_ID", v7[v9], 0))
                {
                  if (CFStringCompare(@"NetworkOfInterestHomeState", v7[v9], 0) == kCFCompareEqualTo)
                  {
                    v12 = v8[v9];
                    LODWORD(valuePtr) = 0;
                    if (WiFiNetworkGetNetworkOfInterestHomeType(v3))
                    {
                      if (v12)
                      {
                        CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
                      }
                    }
                  }

                  if (CFStringCompare(@"networkKnownBSSListKey", v7[v9], 0) == kCFCompareEqualTo && (Property = WiFiNetworkGetProperty(v3, @"networkKnownBSSListKey"), (theArray = v8[v9]) != 0) && (v15 = Property) != 0)
                  {
                    v36 = v10;
                    v37 = v5;
                    v38 = v8;
                    v39 = v3;
                    v16 = CFArrayGetCount(theArray);
                    v17 = CFArrayGetCount(v15);
                    MutableCopy = CFArrayCreateMutableCopy(allocator, 0, v15);
                    v41 = v16;
                    if (v16 >= 1)
                    {
                      v19 = 0;
                      do
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
                        if (ValueAtIndex)
                        {
                          v21 = ValueAtIndex;
                          v22 = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
                          if (v17 < 1)
                          {
LABEL_38:
                            CFArrayAppendValue(MutableCopy, v21);
                          }

                          else
                          {
                            v23 = v22;
                            v24 = 0;
                            v25 = 0;
                            while (1)
                            {
                              v26 = CFArrayGetValueAtIndex(v15, v25);
                              if (v26)
                              {
                                v24 = CFDictionaryGetValue(v26, @"BSSID");
                              }

                              if (v24 && v23 && CFStringCompare(v24, v23, 1uLL) == kCFCompareEqualTo)
                              {
                                break;
                              }

                              if (v17 == ++v25)
                              {
                                goto LABEL_38;
                              }
                            }

                            CFArraySetValueAtIndex(MutableCopy, v25, v21);
                          }
                        }

                        ++v19;
                      }

                      while (v19 != v41);
                    }

                    v3 = v39;
                    WiFiNetworkSetProperty(v39, @"networkKnownBSSListKey", MutableCopy);
                    if (MutableCopy)
                    {
                      CFRelease(MutableCopy);
                    }

                    v11 = 1;
                    v5 = v37;
                    v8 = v38;
                    v10 = v36;
                  }

                  else if (CFStringCompare(@"lastUpdated", v7[v9], 0) || v11 != 1)
                  {
                    v13 = v8[v9];
                    if (v13)
                    {
                      CFRetain(v13);
                      CFDictionarySetValue(*(v3 + 16), v7[v9], v8[v9]);
                      CFRelease(v8[v9]);
                    }
                  }
                }
              }

              else
              {
                v27 = WiFiNetworkGetProperty(v3, @"EnterpriseProfile");
                Mutable = v27;
                if (!v27)
                {
                  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                }

                v29 = v8[v9];
                v30 = _copyDictionaryAddingMissingValuesFromSource(Mutable, v29);
                value = 0;
                valuePtr = 0;
                CFDictionaryGetValueIfPresent(v29, @"EAPClientConfiguration", &valuePtr);
                CFDictionaryGetValueIfPresent(Mutable, @"EAPClientConfiguration", &value);
                v31 = valuePtr;
                if (valuePtr)
                {
                  v32 = value;
                  v42 = value;
                  theArraya = v27;
                  if (!value)
                  {
                    v32 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    value = v32;
                    v31 = valuePtr;
                  }

                  v33 = _copyDictionaryAddingMissingValuesFromSource(v32, v31);
                  Default = CFAllocatorGetDefault();
                  v35 = CFDictionaryCreateMutableCopy(Default, 0, v30);
                  CFDictionarySetValue(v35, @"EAPClientConfiguration", v33);
                  WiFiNetworkSetProperty(v3, @"EnterpriseProfile", v35);
                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  v27 = theArraya;
                  if (v33)
                  {
                    CFRelease(v33);
                  }

                  if (!v42 && value)
                  {
                    CFRelease(value);
                    value = 0;
                  }
                }

                else
                {
                  WiFiNetworkSetProperty(v3, @"EnterpriseProfile", v30);
                }

                if (v30)
                {
                  CFRelease(v30);
                }

                if (!v27 && Mutable)
                {
                  CFRelease(Mutable);
                }

                v11 = 1;
              }
            }
          }

          else
          {
            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
          }

          ++v9;
        }

        while (v9 != v5);
        if ((v10 & 1) == 0)
        {
LABEL_71:
          if (WiFiNetworkGetProperty(v3, @"LEAKY_AP_LEARNED_DATA"))
          {
            CFDictionaryRemoveValue(*(v3 + 16), @"LEAKY_AP_LEARNED_DATA");
            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
          }
        }

        free(v8);
        free(v7);
      }
    }
  }
}

const __CFNumber *WiFiNetworkGetNetworkOfInterestHomeType(uint64_t a1)
{
  valuePtr = 0;
  if (a1)
  {
    result = WiFiNetworkGetProperty(a1, @"NetworkOfInterestHomeState");
    if (result)
    {
      Value = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr - 3 >= 0xFFFFFFFE || Value == 0)
      {
        return valuePtr;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return result;
}

const __CFDictionary *WiFiNetworkRecordGetSSID(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetValue(result, @"SSID_STR");
    if (!result)
    {
      Value = CFDictionaryGetValue(v1, @"SSID");
      v3 = *MEMORY[0x277CBECE8];
      if (Value && ((v4 = Value, (v5 = CFStringCreateFromExternalRepresentation(*MEMORY[0x277CBECE8], Value, 0x8000100u)) != 0) || (v5 = CFStringCreateFromExternalRepresentation(v3, v4, 0)) != 0) || (v5 = CFStringCreateWithCString(v3, "", 0x8000100u)) != 0)
      {
        v6 = v5;
        CFDictionarySetValue(v1, @"SSID_STR", v5);
        CFRelease(v6);
      }

      return CFDictionaryGetValue(v1, @"SSID_STR");
    }
  }

  return result;
}

const __CFString *WiFiNetworkGetSSIDData(const void *a1)
{
  result = WiFiNetworkGetProperty(a1, @"SSID");
  if (!result)
  {
    result = WiFiNetworkGetSSID(a1);
    if (result)
    {
      result = CFStringCreateExternalRepresentation(*MEMORY[0x277CBECE8], result, 0x8000100u, 0);
      if (result)
      {
        v3 = result;
        WiFiNetworkSetProperty(a1, @"SSID", result);
        CFRelease(v3);

        return WiFiNetworkGetProperty(a1, @"SSID");
      }
    }
  }

  return result;
}

const __CFString *WiFiNetworkCopyBSSIDData(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  result = WiFiNetworkGetProperty(a1, @"BSSID");
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFStringGetTypeID() && (v5 = 0, v6[0] = 0, *(v6 + 7) = 0, CFStringGetCString(v2, &v5, 19, 0x8000100u)))
    {
      result = ether_aton(&v5);
      if (result)
      {
        result = CFDataCreate(*MEMORY[0x277CBECE8], result, 6);
      }
    }

    else
    {
      result = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFArray *WiFiNetworkGetLastBSSID(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    result = WiFiNetworkGetProperty(result, @"BSSID");
    if (!result)
    {
      result = WiFiNetworkGetProperty(v1, @"networkKnownBSSListKey");
      if (result)
      {
        v2 = result;
        result = CFArrayGetCount(result);
        if (result)
        {
          Count = CFArrayGetCount(v2);
          result = CFArrayGetValueAtIndex(v2, Count - 1);
          if (result)
          {

            return CFDictionaryGetValue(result, @"BSSID");
          }
        }
      }
    }
  }

  return result;
}

const void *WiFiNetworkGetBSSIDList(const void *result)
{
  if (result)
  {
    return WiFiNetworkGetProperty(result, @"SCAN_BSSID_LIST");
  }

  return result;
}

const __CFArray *WiFiNetworkGetLastChannel(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    result = WiFiNetworkGetProperty(result, @"CHANNEL");
    if (!result)
    {
      result = WiFiNetworkGetProperty(v1, @"networkKnownBSSListKey");
      if (result)
      {
        v2 = result;
        result = CFArrayGetCount(result);
        if (result)
        {
          Count = CFArrayGetCount(v2);
          result = CFArrayGetValueAtIndex(v2, Count - 1);
          if (result)
          {

            return CFDictionaryGetValue(result, @"CHANNEL");
          }
        }
      }
    }
  }

  return result;
}

const __CFArray *WiFiNetworkGetBandHistory(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    result = WiFiNetworkGetProperty(result, @"CHANNEL");
    if (!result)
    {
      result = WiFiNetworkGetProperty(v1, @"networkKnownBSSListKey");
      if (result)
      {
        v2 = result;
        result = CFArrayGetCount(result);
        if (result)
        {
          Count = CFArrayGetCount(v2);
          result = CFArrayGetValueAtIndex(v2, Count - 1);
          if (result)
          {

            return CFDictionaryGetValue(result, @"CHANNEL");
          }
        }
      }
    }
  }

  return result;
}

uint64_t WiFiNetworkGetRateBounds(uint64_t a1, void *a2, void *a3)
{
  *a3 = 0xFFFFFFFF80000000;
  *a2 = 37;
  result = WiFiNetworkGetProperty(a1, @"RATES");
  if (result)
  {
    v6 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v7 = result;
      for (i = 0; i != v7; ++i)
      {
        result = CFArrayGetValueAtIndex(v6, i);
        valuePtr = -1431655766;
        if (result)
        {
          v9 = result;
          TypeID = CFNumberGetTypeID();
          result = CFGetTypeID(v9);
          if (TypeID == result)
          {
            result = CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
            v11 = valuePtr;
            if (*a3 < valuePtr)
            {
              *a3 = valuePtr;
            }

            if (*a2 > v11)
            {
              *a2 = v11;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL __WiFiNetworkIsWPAEAP(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"WPA_IE");
  v3 = CFDictionaryGetValue(a1, @"RSN_IE");
  if (Value && (TypeID = CFDictionaryGetTypeID(), _CFValidateType(TypeID, Value)))
  {
    v5 = 1;
    if (!__WiFiNetworkContainsAuthSelector(Value, 1))
    {
      v5 = __WiFiNetworkContainsAuthSelector(Value, 0) != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    if (v3)
    {
      v5 = 1;
      if (!__WiFiNetworkContainsAuthSelector(v3, 1) && !__WiFiNetworkContainsAuthSelector(v3, 0) && !__WiFiNetworkContainsAuthSelector(v3, 3) && !__WiFiNetworkContainsAuthSelector(v3, 5) && !__WiFiNetworkContainsAuthSelector(v3, 12))
      {
        return __WiFiNetworkContainsAuthSelector(v3, 13) != 0;
      }
    }
  }

  return v5;
}

const __CFDictionary *WiFiNetworkIsSAE(const __CFDictionary *result)
{
  if (result)
  {
    return __WiFiNetworkIsSAE(*(result + 2));
  }

  return result;
}

void WiFiNetworkSetSAE(int a1, int a2, int a3)
{
  if (a2)
  {
    v5 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    values = Mutable;
    if (Mutable)
    {
      v7 = Mutable;
      valuePtr = 8;
      v8 = CFNumberCreate(v5, kCFNumberCFIndexType, &valuePtr);
      if (v8)
      {
        v9 = v8;
        CFArrayAppendValue(v7, v8);
        CFRelease(v9);
      }

      if (a3)
      {
        valuePtr = 2;
        v10 = CFNumberCreate(v5, kCFNumberCFIndexType, &valuePtr);
        if (v10)
        {
          v11 = v10;
          CFArrayAppendValue(v7, v10);
          CFRelease(v11);
        }
      }

      else
      {
        v12 = *MEMORY[0x277CBED10];
        WiFiNetworkSetProperty(a1, @"ALLOW_WPA2_PSK");
      }

      keys = @"IE_KEY_RSN_AUTHSELS";
      v13 = CFDictionaryCreate(v5, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v13)
      {
        v14 = v13;
        WiFiNetworkSetProperty(a1, @"RSN_IE");
        CFRelease(v14);
      }

      CFRelease(values);
    }
  }

  else
  {

    WiFiNetworkSetProperty(a1, @"RSN_IE");
  }
}

uint64_t WiFiNetworkIsWPAWPA2PSK(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (__WiFiNetworkSupportsWPA(v1))
    {
      return 1;
    }

    else
    {

      return __WiFiNetworkSupportsWPA2(v1);
    }
  }

  return result;
}

void WiFiNetworkSetWPA(uint64_t a1, int a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = 2 * (WiFiNetworkGetProperty(a1, @"EnterpriseProfile") == 0);
    valuePtr = v3;
    v4 = *MEMORY[0x277CBECE8];
    values = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &valuePtr);
    if (values)
    {
      cf = CFArrayCreate(v4, &values, 1, MEMORY[0x277CBF128]);
      if (cf)
      {
        v9 = @"IE_KEY_RSN_AUTHSELS";
        v5 = CFDictionaryCreate(v4, &v9, &cf, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v5)
        {
          v6 = v5;
          WiFiNetworkSetProperty(v2, @"RSN_IE");
          CFRelease(v6);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      if (values)
      {
        CFRelease(values);
        values = 0;
      }
    }

    valuePtr = v3;
    values = CFNumberCreate(v4, kCFNumberCFIndexType, &valuePtr);
    if (values)
    {
      cf = CFArrayCreate(v4, &values, 1, MEMORY[0x277CBF128]);
      if (cf)
      {
        v9 = @"IE_KEY_WPA_AUTHSELS";
        v7 = CFDictionaryCreate(v4, &v9, &cf, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v7)
        {
          v8 = v7;
          WiFiNetworkSetProperty(v2, @"WPA_IE");
          CFRelease(v8);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      if (values)
      {
        CFRelease(values);
      }
    }
  }

  else
  {
    WiFiNetworkSetProperty(a1, @"RSN_IE");

    WiFiNetworkSetProperty(v2, @"WPA_IE");
  }
}

const __CFNumber *WiFiNetworkGetInt32Property(uint64_t a1, void *a2)
{
  result = WiFiNetworkGetProperty(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID())
    {
      valuePtr = -1431655766;
      if (CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr))
      {
        return valuePtr;
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    }

    return 0;
  }

  return result;
}

uint64_t WiFiNetworkGetInt16Property(uint64_t a1, void *a2)
{
  Property = WiFiNetworkGetProperty(a1, a2);
  if (!Property)
  {
    return 0;
  }

  v3 = Property;
  v4 = CFGetTypeID(Property);
  if (v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = -21846;
  if (!CFNumberGetValue(v3, kCFNumberSInt16Type, &valuePtr))
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return valuePtr;
}

void WiFiNetworkSetIntProperty(uint64_t a1, void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    WiFiNetworkSetProperty(a1, a2, v5);
    CFRelease(v6);
  }
}

double WiFiNetworkGetFloatProperty(uint64_t a1, void *a2)
{
  Property = WiFiNetworkGetProperty(a1, a2);

  return _CFTypeGetFloatValue(Property);
}

void WiFiNetworkSetFloatProperty(uint64_t a1, void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    WiFiNetworkSetProperty(a1, a2, v5);
    CFRelease(v6);
  }
}

const __CFNumber *WiFiNetworkIsAdHoc(uint64_t a1)
{
  result = WiFiNetworkGetProperty(a1, @"AP_MODE");
  if (result)
  {
    valuePtr = -21846;
    result = CFNumberGetValue(result, kCFNumberSInt16Type, &valuePtr);
    if (result)
    {
      return (valuePtr == 1);
    }
  }

  return result;
}

BOOL WiFiNetworkIsHidden(const void *a1)
{
  Property = WiFiNetworkGetProperty(a1, @"HIDDEN_NETWORK");
  if (_CFTypeGetIntValue(Property))
  {
    return 1;
  }

  v3 = WiFiNetworkGetProperty(a1, @"scanWasDirected");
  return _CFTypeGetIntValue(v3) || WiFiNetworkIsHiddenSSID(a1);
}

BOOL WiFiNetworkIsHiddenSSID(const void *a1)
{
  SSID = WiFiNetworkGetSSID(a1);
  if (SSID && (v2 = SSID, !CFEqual(SSID, &stru_286BCE3F0)))
  {
    return CFEqual(v2, @" ") != 0;
  }

  else
  {
    return 1;
  }
}

uint64_t WiFiNetworkGetDirectedState(const void *a1)
{
  Property = WiFiNetworkGetProperty(a1, @"UserDirected");
  IntValue = _CFTypeGetIntValue(Property);
  if (IntValue || !WiFiNetworkIsHidden(a1))
  {
    v4 = 0;
  }

  else
  {
    WiFiNetworkSetProperty(a1, @"UserDirected", *MEMORY[0x277CBED28]);
    v4 = 1;
  }

  if (IntValue)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void WiFiNetworkSetDirectedState(uint64_t a1, int a2)
{
  v2 = MEMORY[0x277CBED28];
  if (!a2)
  {
    v2 = MEMORY[0x277CBED10];
  }

  WiFiNetworkSetProperty(a1, @"UserDirected", *v2);
}

uint64_t WiFiNetworkGetCaptiveStatus(uint64_t a1)
{
  if (!MEMORY[0x282215548])
  {
    return 0;
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(*(a1 + 16), *MEMORY[0x277CF7F28], &value);
  if (value == *MEMORY[0x277CBED28])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (ValueIfPresent)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t WiFiNetworkIsWoWAllowed(uint64_t a1)
{
  if (a1 && (v2 = (a1 + 16), (v1 = *(a1 + 16)) != 0) && (v3 = CFGetTypeID(v1), v3 == CFDictionaryGetTypeID()))
  {
    WiFiNetworkIsWoWAllowed_cold_1(v2, &v5);
    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 1;
  }
}

uint64_t WiFiNetworkFoundNanIe(uint64_t a1)
{
  if (a1 && (v2 = (a1 + 16), (v1 = *(a1 + 16)) != 0) && (v3 = CFGetTypeID(v1), v3 == CFDictionaryGetTypeID()))
  {
    WiFiNetworkFoundNanIe_cold_1(v2, &v5);
    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

uint64_t WiFiNetworkIsNanPH(uint64_t a1)
{
  if (a1)
  {
    result = WiFiNetworkIsApplePersonalHotspot(a1);
    if (result)
    {
      result = WiFiNetworkFoundNanIe(a1);
      if (result)
      {
        return WiFiNetworkGetProperty(a1, @"WiFiNetworkNANServiceID") != 0;
      }
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return result;
}

BOOL WiFiNetworkIsWPA(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    return __WiFiNetworkSupportsWPA(v2) || __WiFiNetworkSupportsWPA2(v2) || __WiFiNetworkIsSAE(*(v1 + 16)) != 0;
  }

  return result;
}

const __CFDictionary *__WiFiNetworkIsSAE(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"RSN_IE");
  if (result)
  {
    v2 = result;
    v3 = __WiFiNetworkContainsAuthSelector(result, 8);
    v4 = __WiFiNetworkContainsAuthSelector(v2, 9) | v3;
    v5 = __WiFiNetworkContainsAuthSelector(v2, 24);
    return (v4 | v5 | __WiFiNetworkContainsAuthSelector(v2, 25));
  }

  return result;
}

const __CFArray *WiFiNetworkSupportsWPA(const __CFArray *result)
{
  if (result)
  {
    return __WiFiNetworkSupportsWPA(*(result + 2));
  }

  return result;
}

const __CFArray *__WiFiNetworkSupportsWPA(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"WPA_IE");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  TypeID = CFDictionaryGetTypeID();
  if (!_CFValidateType(TypeID, v2))
  {
    return 0;
  }

  return __WiFiNetworkContainsAuthSelector(v2, 2);
}

uint64_t WiFiNetworkSupportsWPA2(uint64_t result)
{
  if (result)
  {
    return __WiFiNetworkSupportsWPA2(*(result + 16));
  }

  return result;
}

uint64_t __WiFiNetworkSupportsWPA2(const __CFDictionary *a1)
{
  if (__WiFiNetworkContainsWPA2Auth(a1))
  {
    LOBYTE(result) = 1;
  }

  else
  {
    Value = CFDictionaryGetValue(a1, @"ALLOW_WPA2_PSK");
    LOBYTE(result) = _CFTypeGetIntValue(Value);
  }

  return result;
}

const __CFDictionary *WiFiNetworkContainsWPA2Auth(const __CFDictionary *result)
{
  if (result)
  {
    return __WiFiNetworkContainsWPA2Auth(*(result + 2));
  }

  return result;
}

const __CFDictionary *__WiFiNetworkContainsWPA2Auth(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"RSN_IE");
    if (result)
    {
      v1 = result;
      if (__WiFiNetworkContainsAuthSelector(result, 2) || __WiFiNetworkContainsAuthSelector(v1, 4))
      {
        return 1;
      }

      else
      {
        return (__WiFiNetworkContainsAuthSelector(v1, 6) != 0);
      }
    }
  }

  return result;
}

const __CFDictionary *WiFiNetworkSupportsWPA3(const __CFDictionary *result)
{
  if (result)
  {
    return __WiFiNetworkIsSAE(*(result + 2));
  }

  return result;
}

uint64_t WiFiNetworkIsBcnProtCapable(uint64_t result)
{
  if (result)
  {
    v4 = v1;
    v5 = v2;
    WiFiNetworkIsBcnProtCapable_cold_1(result, &v3);
    return v3;
  }

  return result;
}

const __CFDictionary *WiFiNetworkIsSAEPK(const __CFDictionary *result)
{
  if (result)
  {
    return __WiFiNetworkIsSAEPK(*(result + 2));
  }

  return result;
}

const __CFDictionary *WiFiNetworkIsSAEPKPasswordUsed(const __CFDictionary *result)
{
  if (result)
  {
    v1 = *(result + 2);
    value = 0;
    result = __WiFiNetworkIsSAE(v1);
    if (result)
    {
      result = __WiFiNetworkIsSAEPK(v1);
      if (result)
      {
        result = CFDictionaryGetValue(v1, @"EXT_CAPS");
        if (result)
        {
          valuePtr = -1431655766;
          result = CFDictionaryGetValueIfPresent(result, @"SAE_PK_PASSWD_USED", &value);
          if (result)
          {
            return (CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr) && valuePtr == 1);
          }
        }
      }
    }
  }

  return result;
}

BOOL WiFiNetworkIsWAPIPSK(_BOOL8 result)
{
  if (result)
  {
    return (~__WiFiNetworkGetWAPIPolicy(*(result + 16)) & 7) == 0;
  }

  return result;
}

const __CFNumber *__WiFiNetworkGetWAPIPolicy(const __CFDictionary *a1)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(a1, @"WAPI");
  if (result)
  {
    CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  return result;
}

BOOL WiFiNetworkIsWAPICERT(_BOOL8 result)
{
  if (result)
  {
    return (~__WiFiNetworkGetWAPIPolicy(*(result + 16)) & 0xB) == 0;
  }

  return result;
}

BOOL WiFiNetworkIsWAPI(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    return (~__WiFiNetworkGetWAPIPolicy(*(result + 16)) & 0xB) == 0 || (~__WiFiNetworkGetWAPIPolicy(*(v1 + 16)) & 7) == 0;
  }

  return result;
}

uint64_t WiFiNetworkIsOWETransition(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    Value = CFDictionaryGetValue(v1, @"SCAN_RESULT_OWE_MULTI_SSID");
    LOBYTE(result) = _CFTypeGetIntValue(Value);
    if (!result)
    {
      v3 = CFDictionaryGetValue(v1, @"ALLOW_OWE_TSN");
      LOBYTE(result) = _CFTypeGetIntValue(v3);
    }
  }

  return result;
}