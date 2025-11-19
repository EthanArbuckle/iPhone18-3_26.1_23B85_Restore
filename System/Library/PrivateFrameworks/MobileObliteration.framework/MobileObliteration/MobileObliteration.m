uint64_t setOblitNVRAMKeyDirect()
{
  v56 = *MEMORY[0x277D85DE8];
  mainPort = 0;
  v54 = 0u;
  v55 = 0u;
  *__str = 0u;
  v53 = 0u;
  snprintf(__str, 0x40uLL, "%d", 0);
  if (MEMORY[0x259CAEB90](*MEMORY[0x277D85F18], &mainPort))
  {
    v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v0)
    {
      setOblitNVRAMKeyDirect_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
    }
  }

  v8 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
  if (!v8)
  {
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      setOblitNVRAMKeyDirect_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = CFStringCreateWithCString(0, "oblit-inprogress", 0x8000100u);
  v18 = CFStringCreateWithCString(0, __str, 0x8000100u);
  v19 = v18;
  if (v17 && v18)
  {
    v20 = IORegistryEntrySetCFProperty(v8, v17, v18);
    if (v20)
    {
      v21 = v20;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        setOblitNVRAMKeyDirect_cold_4(v21);
      }
    }

    else
    {
      v33 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "IONVRAM-FORCESYNCNOW-PROPERTY", 0x8000100u);
      if (v33)
      {
        v34 = v33;
        if (!IORegistryEntrySetCFProperty(v8, v33, v19))
        {
          v22 = 0;
          goto LABEL_16;
        }

        v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v35)
        {
          setOblitNVRAMKeyDirect_cold_5(v35, v36, v37, v38, v39, v40, v41, v42);
        }

        CFRelease(v34);
      }

      else
      {
        v43 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v43)
        {
          setOblitNVRAMKeyDirect_cold_6(v43, v44, v45, v46, v47, v48, v49, v50);
        }
      }
    }

    v22 = 0xFFFFFFFFLL;
LABEL_16:
    CFRelease(v17);
    goto LABEL_17;
  }

  v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v23)
  {
    setOblitNVRAMKeyDirect_cold_3(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  v22 = 0xFFFFFFFFLL;
  if (v17)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v19)
  {
    CFRelease(v19);
  }

  IOObjectRelease(v8);
  v31 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t Mobile_Obliterate(const __CFDictionary *a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = 0xFFFFFFFFLL;
  v3 = dispatch_queue_create("com.apple.obliteration.timeout_block", 0);
  if (v3 && (v4 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global)) != 0)
  {
    v5 = v4;
    dispatch_async(v3, v4);
    v6 = dispatch_time(0, 180000000000);
    v7 = dispatch_block_wait(v5, v6);

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v8)
  {
    Mobile_Obliterate_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (!a1)
    {
      goto LABEL_62;
    }

    goto LABEL_8;
  }

LABEL_7:
  if (!a1)
  {
    goto LABEL_62;
  }

LABEL_8:
  value = 0;
  if (CFDictionaryContainsKey(a1, @"ObliterationCallingProcessName"))
  {
    v16 = CFDictionaryGetValue(a1, @"ObliterationCallingProcessName");
    if (v16 && CFStringCompare(v16, @"__Ignore__", 0) == kCFCompareEqualTo)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a1);
      v18 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, @"ObliterationCallingProcessName");
        v19 = v18;
        goto LABEL_20;
      }

LABEL_19:
      v19 = a1;
      goto LABEL_20;
    }

LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v20 = getpid();
  v64 = 0u;
  v65 = 0u;
  buffer = 0u;
  v63 = 0u;
  if (proc_pidinfo(v20, 13, 1uLL, &buffer, 64) != 64)
  {
    goto LABEL_18;
  }

  *cStr = v63;
  v61 = 0;
  v21 = *MEMORY[0x277CBECE8];
  v22 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  v24 = CFDictionaryCreateMutableCopy(v21, 0, a1);
  v18 = v24;
  v19 = a1;
  if (v24)
  {
    CFDictionaryAddValue(v24, @"ObliterationCallingProcessName", v23);
    v19 = v18;
  }

  CFRelease(v23);
LABEL_20:
  if (CFDictionaryGetValueIfPresent(v19, @"returnDictionary", &value))
  {
    if (v18 || (v18 = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v19)) != 0)
    {
      CFDictionaryRemoveValue(v18, @"returnDictionary");
    }
  }

  v25 = CFDictionaryGetValue(a1, @"ObliterationType");
  if (!v25 || (v26 = v25, v27 = CFGetTypeID(v25), v27 != CFStringGetTypeID()) || !CFEqual(v26, @"ObliterationTypeMarkDirect"))
  {
    if (!MOXPCTransportOpen())
    {
      v34 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v34)
      {
        Mobile_Obliterate_cold_7(v34, v35, v36, v37, v38, v39, v40, v41);
      }

      goto LABEL_52;
    }

    MOXPCTransportResume();
    if (!MOXPCTransportSendMessage())
    {
      v42 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v42)
      {
        Mobile_Obliterate_cold_2(v42, v43, v44, v45, v46, v47, v48, v49);
      }

      LODWORD(v2) = -1000;
      goto LABEL_51;
    }

    v29 = MOXPCTransportReceiveMessage();
    if (!v29)
    {
      LODWORD(v2) = -1000;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        Mobile_Obliterate_cold_6(&buffer, &buffer + 1);
      }

      goto LABEL_51;
    }

    v30 = v29;
    v31 = CFDictionaryGetValue(v29, @"IPCStatus");
    if (v31)
    {
      v32 = v31;
      if (CFEqual(v31, @"Complete"))
      {
        v33 = &kMobileObliterationSuccess;
LABEL_50:
        LODWORD(v2) = *v33;
        CFRelease(v30);
LABEL_51:
        MOXPCTransportClose();
LABEL_52:
        v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v2 userInfo:0];
        v2 = [v28 code];
        v52 = [v28 userInfo];
        v53 = value;

        if (v52 && v53)
        {
          v54 = [v28 userInfo];
          v55 = [v54 objectForKeyedSubscript:@"ObliterationResultString"];

          if (v55)
          {
            CFDictionarySetValue(value, @"ObliterationResultString", v55);
          }

          v56 = [v54 objectForKeyedSubscript:@"ObliterationResultState"];

          if (v56)
          {
            CFDictionarySetValue(value, @"ObliterationResultState", v56);
          }
        }

        goto LABEL_59;
      }

      v50 = CFEqual(v32, @"Error");
      v51 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v50)
      {
        if (v51)
        {
          Mobile_Obliterate_cold_3(&buffer, &buffer + 1);
        }

        v33 = &kMobileObliterationError;
        goto LABEL_50;
      }

      if (v51)
      {
        Mobile_Obliterate_cold_4(&buffer, &buffer + 1);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      Mobile_Obliterate_cold_5(&buffer, &buffer + 1);
    }

    v33 = &kMobileObliterationInternalError;
    goto LABEL_50;
  }

  setOblitNVRAMKeyDirect();
  v28 = 0;
  v2 = 0;
LABEL_59:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_62:
  v57 = *MEMORY[0x277D85DE8];
  return v2;
}

void *__delete_all_applets_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NearField.framework/NearField", 1);
  if (result)
  {
    result = dlsym(result, "ObliterationDeleteAllApplets");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

_BYTE *OUTLINED_FUNCTION_1(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void setOblitNVRAMKeyDirect_cold_4(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_259B47000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not save value:%08x", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}