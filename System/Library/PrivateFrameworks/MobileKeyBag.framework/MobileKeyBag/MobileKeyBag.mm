uint64_t convertAKSErrorToMKB(uint64_t a1)
{
  v1 = a1;
  v6 = *MEMORY[0x1E69E9840];
  if (a1 <= -536363001)
  {
    v2 = 4294967294;
    if (a1 <= -536870195)
    {
      if (a1 != -536870207)
      {
        if (a1 == -536870206)
        {
          v2 = 4294967279;
          goto LABEL_34;
        }

        if (a1 != -536870199)
        {
          goto LABEL_25;
        }

        v2 = 4294967287;
      }
    }

    else
    {
      if (a1 <= -536870175)
      {
        if (a1 == -536870194)
        {
          v2 = 4294967293;
          goto LABEL_34;
        }

        if (a1 != -536870184)
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }

      if (a1 != -536870174)
      {
        if (a1 == -536870160)
        {
          v2 = 4294967288;
          goto LABEL_34;
        }

LABEL_25:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v5[0] = 67109120;
          v5[1] = v1;
          _os_log_impl(&dword_1C8660000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unexpected AppleKeyStore error: %d\n", v5, 8u);
        }

        v2 = 0xFFFFFFFFLL;
      }
    }

LABEL_34:
    v1 = v2;
    goto LABEL_35;
  }

  if (a1 <= -536362989)
  {
    if (a1 != -536363000)
    {
      if (a1 == -536362994)
      {
LABEL_29:
        v2 = 4294967283;
        goto LABEL_34;
      }

      if (a1 != -536362989)
      {
        goto LABEL_25;
      }

      v2 = 4294967276;
      goto LABEL_34;
    }

LABEL_28:
    v2 = 4294967282;
    goto LABEL_34;
  }

  if (a1 <= -536362985)
  {
    if (a1 == -536362988)
    {
      v2 = 0;
      goto LABEL_34;
    }

    if (a1 != -536362987)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  if (a1 == -536362984)
  {
    v2 = 4294967277;
    goto LABEL_34;
  }

  if (a1)
  {
    goto LABEL_25;
  }

LABEL_35:
  v3 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t MKBGetDeviceLockState(const __CFDictionary *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  LODWORD(result) = _get_device_lock_state(a1, v3);
  if (result)
  {
    result = result;
  }

  else
  {
    result = DWORD1(v3[0]);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _get_device_lock_state(const __CFDictionary *a1, uint64_t a2)
{
  valuePtr = handleToUse(a1);
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
LABEL_13:
    device_state = aks_get_device_state();
    return convertAKSErrorToMKB(device_state);
  }

  Value = CFDictionaryGetValue(a1, @"ExtendedDeviceLockState");
  v7 = Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()) && CFBooleanGetValue(v5) != 0;
  v8 = CFDictionaryGetValue(a1, kMKBUserSessionIDKey);
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v9, kCFNumberIntType, &valuePtr))
      {
        valuePtr = -valuePtr;
        goto LABEL_11;
      }

      return 0xFFFFFFFFLL;
    }
  }

LABEL_11:
  if (!v7)
  {
    goto LABEL_13;
  }

  device_state = aks_get_extended_device_state();
  return convertAKSErrorToMKB(device_state);
}

uint64_t handleToUse(const __CFDictionary *a1)
{
  v2 = 0;
  if (_get_userid_from_options(a1, &v2))
  {
    return -v2;
  }

  if (handleToUse_handleOnce != -1)
  {
    handleToUse_cold_1();
  }

  return handleToUse_handle;
}

uint64_t _get_userid_from_options(CFDictionaryRef theDict, _DWORD *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, @"DeviceHandle");
      if (result)
      {
        v5 = result;
        v6 = CFGetTypeID(result);
        if (v6 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          result = CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
          if (result)
          {
            *a2 = valuePtr;
            return 1;
          }
        }

        else
        {
          debuglog("_get_userid_from_options", @"handle is of wrong type", v7, v8, v9, v10, v11, v12, v13);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t MKBDeviceUnlockedSinceBoot()
{
  if (gUserUnlockedSinceBoot)
  {
    return 1;
  }

  handleToUse(0);
  lock_state = aks_get_lock_state();
  v2 = convertAKSErrorToMKB(lock_state);
  if (v2)
  {
    v0 = v2;
    debuglog("MKBDeviceUnlockedSinceBoot", @"MKBDeviceUnlockedSinceBoot fails with error(%d) for handle(%d) with AKS error(%d)", v3, v4, v5, v6, v7, v8, v2);
  }

  else
  {
    v0 = 0;
    gUserUnlockedSinceBoot = 0;
  }

  return v0;
}

void __handleToUse_block_invoke()
{
  v8 = 0;
  hostmultiuserconfig = get_hostmultiuserconfig(&v8);
  if (hostmultiuserconfig)
  {
    debuglog("handleToUse_block_invoke", @"failed to determine whether we are multi-user: 0x%x", v1, v2, v3, v4, v5, v6, hostmultiuserconfig);
  }

  else if ((v8 & 0x80000000) != 0)
  {
    handleToUse_handle = -3;
    v7 = v8 & 0x3FFFFFFF;
    if (v7 != voucher_get_current_persona())
    {
      handleToUse_handle = 0;
    }
  }

  else
  {
    handleToUse_handle = 0;
  }
}

uint64_t get_hostmultiuserconfig(uint32_t *a1)
{
  multiuser_flags = 0;
  v2 = MEMORY[0x1CCA7A830]();
  result = host_get_multiuser_config_flags(v2, &multiuser_flags);
  if (a1)
  {
    if (!result)
    {
      *a1 = multiuser_flags;
    }
  }

  return result;
}

__CFDictionary *MKBUserTypeDeviceMode(uint64_t a1, CFErrorRef *a2)
{
  v22 = 0;
  dict = create_dict();
  hostmultiuserconfig = get_hostmultiuserconfig(&v22);
  v11 = hostmultiuserconfig;
  if (hostmultiuserconfig)
  {
    debuglog("MKBUserTypeDeviceMode", @"Failed to get multiuser_config flags from kernel with error:%d", v5, v6, v7, v8, v9, v10, hostmultiuserconfig);
    if (v11 == 2)
    {
      v18 = @"FAILED to MKBUserTypeDeviceMode, EPERM";
    }

    else
    {
      v18 = @"FAILED to MKBUserTypeDeviceMode, EINVAL";
    }

    if (v11 == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = 22;
    }

    debuglog("MKBUserTypeDeviceMode", v18, v12, v13, v14, v15, v16, v17, v21);
  }

  else
  {
    if ((v22 & 0x80000000) != 0)
    {
      CFDictionarySetValue(dict, kMKBDeviceModeKey, kMKBDeviceModeSharedIPad);
      CFDictionarySetValue(dict, kMKBUserTypeKey, kMKBUserTypeEphemeral);
      return dict;
    }

    v19 = 0;
  }

  CFDictionarySetValue(dict, kMKBDeviceModeKey, kMKBDeviceModeSingleUser);
  CFDictionarySetValue(dict, kMKBUserTypeKey, kMKBUserTypePermanent);
  if (a2 && v11)
  {
    *a2 = CFErrorCreate(0, *MEMORY[0x1E695E640], v19, 0);
  }

  return dict;
}

void aksNotificationCB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = 0;
LABEL_8:
    debuglog("aksNotificationCB", @"invalid context %d %d", a3, a4, a5, a6, a7, a8, v10);
    return;
  }

  if (*(a1 + 20) != 1918985081)
  {
    v10 = 1;
    goto LABEL_8;
  }

  if (a3 == -469774321)
  {
    v9 = *(*(a1 + 8) + 16);
  }

  else
  {
    if (a3 != -469774323)
    {
      return;
    }

    v9 = *(*(a1 + 8) + 16);
  }

  v9();
}

uint64_t MKBDeviceFormattedForContentProtection()
{
  v3 = *MEMORY[0x1E69E9840];
  memset(&v2, 0, 512);
  if (statfs("/var", &v2) >= 0)
  {
    result = (v2.f_flags >> 7) & 1;
  }

  else
  {
    result = 4294967290;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *MKBGetDeviceLockStateInfo(const __CFDictionary *a1)
{
  Int = a1;
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (_get_device_lock_state(a1, v15))
  {
    v4 = 0;
  }

  else
  {
    v2 = is_device_in_device_recovery_environment();
    dict = create_dict();
    v4 = dict;
    if (dict)
    {
      set_longlongvalue_for_key(dict, @"ls", DWORD1(v15[0]));
      set_longlongvalue_for_key(v4, @"state", LODWORD(v15[0]));
      if ((handleToUse(Int) == 0) | v2 & 1)
      {
        set_longlongvalue_for_key(v4, @"boff", *(&v15[0] + 1));
        set_longlongvalue_for_key(v4, @"fa", LODWORD(v15[1]));
        set_longlongvalue_for_key(v4, @"countdown", *(&v15[1] + 10));
      }

      else
      {
        if (Int)
        {
          if (CFDictionaryContainsKey(Int, kMKBUserSessionIDKey))
          {
            Int = _getInt(Int, kMKBUserSessionIDKey);
          }

          else
          {
            Int = 0;
          }
        }

        v5 = +[MKBKeyStoreDevice sharedService];
        v6 = [v5 getLockStateForUser:Int];

        if (v6)
        {
          v7 = CFGetTypeID(v6);
          if (v7 == CFDictionaryGetTypeID())
          {
            v8 = 0;
            v14[0] = @"IsWipePending";
            v14[1] = @"sw";
            v14[2] = @"IsPermanentlyBlocked";
            v14[3] = @"pb";
            v14[4] = @"FailedPasscodeAttempts";
            v14[5] = @"fa";
            v14[6] = @"TimeUntilUnblockedSinceReferenceDate";
            v14[7] = @"boff";
            do
            {
              v9 = v14[v8];
              if (CFDictionaryContainsKey(v6, v9))
              {
                v10 = v14[v8 + 1];
                Value = CFDictionaryGetValue(v6, v9);
                CFDictionarySetValue(v4, v10, Value);
              }

              v8 += 2;
            }

            while (v8 != 8);
            CFRelease(v6);
          }
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

CFMutableDictionaryRef create_dict()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!result)
  {
    debuglog("create_dict", @"Out of Memory!!! Dying!...so...cold....", v1, v2, v3, v4, v5, v6, vars0);
    exit(-1);
  }

  return result;
}

void set_longlongvalue_for_key(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(a1, a2, v5);
      CFRelease(v6);
    }
  }
}

uint64_t MKBGetDeviceConfigurations(const __CFDictionary *a1)
{
  handleToUse(a1);
  configuration = aks_get_configuration();
  v2 = convertAKSErrorToMKB(configuration);
  debuglog("MKBGetDeviceConfigurations", @"aks_get_configuration result: %d\n", v3, v4, v5, v6, v7, v8, v2);
  return 0;
}

uint64_t MKBUserUnlockedSinceBoot(int a1)
{
  if (!a1 && (gSystemUnlockedSinceBoot & 1) != 0)
  {
    return 1;
  }

  lock_state = aks_get_lock_state();
  if (convertAKSErrorToMKB(lock_state))
  {
    debuglog("MKBUserUnlockedSinceBoot", @"MKBUserUnlockedSinceBoot for user(%d) fails with error(%d), returning 0", v4, v5, v6, v7, v8, v9, a1);
    return 0;
  }

  else
  {
    result = 0;
    if (!a1)
    {
      gSystemUnlockedSinceBoot = 0;
    }
  }

  return result;
}

void *MKBEventsRegister(NSObject *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  notification = 0;
  if (!a1 || !a2)
  {
    v44 = @"bad arguments";
LABEL_13:
    debuglog("MKBEventsRegister", v44, a3, a4, a5, a6, a7, a8, v48);
    return 0;
  }

  v10 = *MEMORY[0x1E696CD60];
  v11 = IOServiceMatching("AppleKeyStore");
  MatchingService = IOServiceGetMatchingService(v10, v11);
  if (!MatchingService)
  {
    debuglog("MKBEventsRegister", @"failed to find %s service", v13, v14, v15, v16, v17, v18, "AppleKeyStore");
    return 0;
  }

  v19 = MatchingService;
  v20 = IONotificationPortCreate(v10);
  if (!v20)
  {
    v44 = @"failed to create notification port for AKS";
    goto LABEL_13;
  }

  v21 = v20;
  v22 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040648D5F1CuLL);
  v29 = v22;
  if (!v22)
  {
    debuglog("MKBEventsRegister", @"failed to allocate memory for event callback", v23, v24, v25, v26, v27, v28, v48);
    IONotificationPortDestroy(v21);
    return v29;
  }

  *v22 = v21;
  v30 = _Block_copy(a2);
  v29[1] = v30;
  if (v30)
  {
    v37 = dispatch_queue_create_with_target_V2("mkb events", 0, a1);
    v29[3] = v37;
    IONotificationPortSetDispatchQueue(v21, v37);
    if (!IOServiceAddInterestNotification(v21, v19, "IOGeneralInterest", aksNotificationCB, v29, &notification))
    {
      *(v29 + 4) = notification;
      *(v29 + 5) = 1918985081;
      return v29;
    }

    debuglog("MKBEventsRegister", @"failed to add interest notification", v38, v39, v40, v41, v42, v43, v48);
    if (notification)
    {
      IOObjectRelease(notification);
    }
  }

  else
  {
    debuglog("MKBEventsRegister", @"failed to copy block", v31, v32, v33, v34, v35, v36, v48);
  }

  IONotificationPortDestroy(v21);
  v46 = v29[3];
  if (v46)
  {
    dispatch_release(v46);
  }

  v47 = v29[1];
  if (v47)
  {
    _Block_release(v47);
  }

  free(v29);
  return 0;
}

void debuglog(const char *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18 = *MEMORY[0x1E69E9840];
  memcpy(__dst, "Error creating CFString", sizeof(__dst));
  if (!a1)
  {
    a1 = &unk_1C867A067;
  }

  v11 = CFStringCreateWithFormatAndArguments(0, 0, a2, &a9);
  if (v11)
  {
    v12 = v11;
    CFStringGetCString(v11, __dst, 1024, 0x8000100u);
    CFRelease(v12);
  }

  snprintf(__str, 0x400uLL, "%s: %s", a1, __dst);
  if (_log_func)
  {
    _log_func(__str);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = __str;
    _os_log_impl(&dword_1C8660000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

_DWORD *MKBDeviceLockAssertion(const __CFDictionary *a1, CFErrorRef *a2)
{
  valuePtr = 0;
  v4 = *MEMORY[0x1E695E480];
  pthread_once(&MKBAssertionGetTypeID_typeIDInit, __MKBAssertionnRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v12 = Instance;
  if (!Instance || (*(Instance + 16) = 0, *(Instance + 24) = 0, v13 = (Instance + 16), *(Instance + 16) = 0, *(Instance + 24) = handleToUse(a1), Value = CFDictionaryGetValue(a1, @"MKBAssertionKey"), (v15 = Value) == 0))
  {
    v38 = 12;
    if (!a2)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (CFEqual(Value, @"Other"))
  {
    v16 = 0;
    v17 = 0;
  }

  else if (CFEqual(v15, @"RemoteProfile"))
  {
    v16 = 1;
    v17 = 1;
  }

  else if (CFEqual(v15, @"SBTransient"))
  {
    v16 = 0;
    v17 = 2;
  }

  else if (CFEqual(v15, @"RestoreFromBackup"))
  {
    v16 = 0;
    v17 = 3;
  }

  else
  {
    v18 = CFEqual(v15, @"TimeMachine");
    if (!v18)
    {
      MKBDeviceLockAssertion_cold_2(v18, v19, v20, v21, v22, v23, v24, v25, v41);
      goto LABEL_32;
    }

    v16 = 0;
    v12[6] = -1;
    v17 = 4;
  }

  *v13 = v17;
  TypeID = CFDictionaryGetValue(a1, @"MKBAssertionTimeout");
  if (TypeID && (v34 = TypeID, v35 = CFGetTypeID(TypeID), TypeID = CFNumberGetTypeID(), v35 == TypeID))
  {
    CFNumberGetValue(v34, kCFNumberLongLongType, &valuePtr);
  }

  else if (v16)
  {
    MKBDeviceLockAssertion_cold_1(TypeID, v27, v28, v29, v30, v31, v32, v33, v41);
    goto LABEL_32;
  }

  v36 = v12[6];
  v37 = aks_assert_hold();
  v38 = 1;
  if (v37 > -536870175)
  {
    if (v37 <= -536362995)
    {
      if (v37 == -536870174)
      {
        goto LABEL_33;
      }

      if (v37 == -536363000)
      {
        v38 = 103;
        if (!a2)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (v37 != -536362994)
    {
      if (!v37)
      {
        v12[5] = 1;
        v39 = v12[6];
        goto LABEL_38;
      }

      goto LABEL_32;
    }

LABEL_29:
    v38 = 16;
    if (!a2)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v37 == -536870207)
  {
    goto LABEL_33;
  }

  if (v37 == -536870187)
  {
    goto LABEL_29;
  }

LABEL_32:
  v38 = 22;
LABEL_33:
  if (a2)
  {
LABEL_34:
    *a2 = CFErrorCreate(0, *MEMORY[0x1E695E640], v38, 0);
  }

LABEL_35:
  if (v12)
  {
    CFRelease(v12);
    v12 = 0;
  }

  LOBYTE(v39) = -1;
LABEL_38:
  debuglog("MKBDeviceLockAssertion", @"handle:%d, asserttype:%d, timeout:%llu, result:%d, ioret: 0x%x, ret:%d", v6, v7, v8, v9, v10, v11, v39);
  return v12;
}

void __MKBAssertionFinalize(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = a1[5];
    v9 = a1[6];
    v11 = a1[4];
  }

  else
  {
    LOBYTE(v9) = -1;
  }

  debuglog("__MKBAssertionFinalize", @"dropping lock assertion for: handle:%d, type:%d, status:%d", a3, a4, a5, a6, a7, a8, v9);
  if (a1[5])
  {
    v12 = a1[6];
    v13 = a1[4];
    if (!aks_assert_drop())
    {
      a1[5] = 0;
    }
  }
}

uint64_t MKBUnlockDeviceForACMRef(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, const __CFData *a4)
{
  v8 = handleToUse(a3);
  v9 = should_use_memento(a3);
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"VerifyOnly");
    v11 = Value;
    if (!Value)
    {
      goto LABEL_5;
    }

    v12 = CFGetTypeID(Value);
    if (v12 == CFBooleanGetTypeID())
    {
      v11 = CFBooleanGetValue(v11) != 0;
      goto LABEL_5;
    }

    debuglog("verify_only_opt", @"key is of wrong type", v13, v14, v15, v16, v17, v18, v37);
  }

  v11 = 0;
LABEL_5:
  v19 = ShouldSkipSE(a3);
  v20 = 0x1ED452000uLL;
  if (v8)
  {
    v21 = +[MKBKeyStoreDevice sharedService];
    [v21 passcodeUnlockStart];
  }

  if (!(v11 | v9))
  {
    if (a2)
    {
      CFDataGetBytePtr(a2);
      CFDataGetLength(a2);
    }

    v22 = aks_unlock_device_with_opts();
    if (!v8)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (a2)
  {
    CFDataGetBytePtr(a2);
    CFDataGetLength(a2);
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (a4)
  {
LABEL_10:
    CFDataGetBytePtr(a4);
    CFDataGetLength(a4);
  }

LABEL_14:
  v22 = aks_verify_password_with_opts();
  v20 = 0x1ED452000;
  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_17:
  if (!v22 || (OUTLINED_FUNCTION_2_0(), v23))
  {
    v24 = [v20 + 3096 sharedService];
    [v24 passcodeUnlockSuccess];

    OUTLINED_FUNCTION_2_0();
    if (v23)
    {
LABEL_28:
      v22 = 3758604308;
      if (v19)
      {
        debuglog("MKBUnlockDeviceForACMRef", @"Skipping enrollment", v25, v26, v27, v28, v29, v30, v37);
      }

      else
      {
        debuglog("MKBUnlockDeviceForACMRef", @"Prompted to SE enroll", v25, v26, v27, v28, v29, v30, v37);
        v34 = [v20 + 3096 sharedService];
        [v34 SeshatEnroll:a2 secretIsACM:a1];
      }

      v33 = 0;
      goto LABEL_36;
    }

    if (v22 != -536362987)
    {
      goto LABEL_32;
    }

LABEL_30:
    v32 = [v20 + 3096 sharedService];
    v22 = [v32 SeshatUnlock:a2 secretIsACM:a1 withMemento:v9 verifyOnly:v11 withACMRef:a4 forHandle:v8];

    v33 = 2;
    if (!v22)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  v31 = [v20 + 3096 sharedService];
  [v31 passcodeUnlockFailed];

LABEL_23:
  if (v22 == -536362987)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_2_0();
  if (v23)
  {
    goto LABEL_28;
  }

  if (v22 == -536870184)
  {
    if (a1)
    {
      MKBKeyBagChangeSystemGenerationWithACM(a2, 3);
    }

    else
    {
      MKBKeyBagChangeSystemGeneration(a2, 3);
    }

    v33 = 1;
LABEL_41:
    v22 = 0;
    if (!a2)
    {
      return convertAKSErrorToMKB(v22);
    }

    goto LABEL_37;
  }

LABEL_32:
  v33 = 0;
  if (!v22)
  {
LABEL_33:
    v33 |= 1u;
    goto LABEL_41;
  }

LABEL_36:
  if (a2)
  {
LABEL_37:
    v35 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MKBUnlockDeviceForACMRef_block_invoke;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v39 = v33;
    dispatch_async(v35, block);
  }

  return convertAKSErrorToMKB(v22);
}

const __CFDictionary *should_use_memento(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"UseMementoBlob");
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 == CFBooleanGetTypeID())
      {
        return (CFBooleanGetValue(v1) != 0);
      }

      else
      {
        debuglog("should_use_memento", @"key is of wrong type", v3, v4, v5, v6, v7, v8, v9);
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *ShouldSkipSE(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"SkipSE");
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 == CFBooleanGetTypeID())
      {
        return (CFBooleanGetValue(v1) != 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void __MKBUnlockDeviceForACMRef_block_invoke(uint64_t a1)
{
  v2 = +[MKBKeyStoreDevice sharedService];
  [v2 Event:*(a1 + 32)];
}

uint64_t storeBlastableBytes(unsigned int a1, const void *a2, size_t a3)
{
  connect = 0;
  input = a1;
  v5 = *MEMORY[0x1E696CD60];
  v6 = IOServiceMatching("AppleEffaceableStorage");
  MatchingService = IOServiceGetMatchingService(v5, v6);
  v15 = MatchingService;
  if (MatchingService)
  {
    v16 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect);
    if (v16)
    {
      v30 = v16;
      debuglog("storeBlastableBytes", @"Unable to open service: 0x%08x", v17, v18, v19, v20, v21, v22, v16);
    }

    else
    {
      v23 = IOConnectCallMethod(connect, 6u, &input, 1u, a2, a3, 0, 0, 0, 0);
      v30 = v23;
      if (v23)
      {
        debuglog("storeBlastableBytes", @"Can't store blastable bytes: %08x", v24, v25, v26, v27, v28, v29, v23);
      }
    }
  }

  else
  {
    storeBlastableBytes_cold_1(MatchingService, v8, v9, v10, v11, v12, v13, v14, outputStruct);
    v30 = 3758097084;
  }

  if (connect)
  {
    IOServiceClose(connect);
  }

  if (v15)
  {
    IOObjectRelease(v15);
  }

  return v30;
}

uint64_t loadBlastableBytes(unsigned int a1, void *a2, size_t *a3)
{
  connect = 0;
  input = a1;
  output = 0;
  outputCnt = 1;
  v5 = *MEMORY[0x1E696CD60];
  v6 = IOServiceMatching("AppleEffaceableStorage");
  MatchingService = IOServiceGetMatchingService(v5, v6);
  v15 = MatchingService;
  if (MatchingService)
  {
    v16 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect);
    if (v16)
    {
      v30 = v16;
      debuglog("loadBlastableBytes", @"Unable to open service: 0x%08x", v17, v18, v19, v20, v21, v22, v16);
    }

    else
    {
      v23 = IOConnectCallMethod(connect, 5u, &input, 1u, 0, 0, &output, &outputCnt, a2, a3);
      v30 = v23;
      if (v23)
      {
        debuglog("loadBlastableBytes", @"Can't load blastable bytes: %08x", v24, v25, v26, v27, v28, v29, v23);
      }
    }
  }

  else
  {
    loadBlastableBytes_cold_1(MatchingService, v8, v9, v10, v11, v12, v13, v14, outputStruct);
    v30 = 3758097084;
  }

  if (connect)
  {
    IOServiceClose(connect);
  }

  if (v15)
  {
    IOObjectRelease(v15);
  }

  return v30;
}

uint64_t effaceBlastableBytes(unsigned int a1)
{
  v37 = *MEMORY[0x1E69E9840];
  bzero(v36, 0x400uLL);
  v35 = 1024;
  connect = 0;
  input = a1;
  output = 0;
  outputCnt = 1;
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("AppleEffaceableStorage");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v12 = MatchingService;
  if (MatchingService)
  {
    v13 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect);
    if (v13)
    {
      v20 = v13;
      debuglog("effaceBlastableBytes", @"Unable to open service: 0x%08x", v14, v15, v16, v17, v18, v19, v13);
    }

    else
    {
      v20 = IOConnectCallMethod(connect, 5u, &input, 1u, 0, 0, &output, &outputCnt, v36, &v35);
      if (!v20)
      {
        v21 = IOConnectCallMethod(connect, 7u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
        v20 = v21;
        if (v21)
        {
          debuglog("effaceBlastableBytes", @"efface failed: 0x%x", v22, v23, v24, v25, v26, v27, v21);
        }
      }
    }
  }

  else
  {
    effaceBlastableBytes_cold_1(MatchingService, v5, v6, v7, v8, v9, v10, v11, outputStruct);
    v20 = 3758097084;
  }

  if (connect)
  {
    IOServiceClose(connect);
  }

  if (v12)
  {
    IOObjectRelease(v12);
  }

  v28 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t libkeybaglog(uint64_t result, uint64_t a2)
{
  if (_logFunction)
  {
    return _logFunction(result, a2);
  }

  return result;
}

uint64_t _libkeybaglog(uint64_t result, uint64_t a2)
{
  v2 = _logFunction;
  if (_logFunction)
  {
    if (_logFunction_v)
    {
      v2 = _logFunction_v;
    }

    return v2(result, a2);
  }

  return result;
}

const __CFDictionary *HealthPlistCopyOrCreateNew()
{
  binary_dict = load_binary_dict("/var/root/.mkb_seshat_health");
  if (binary_dict)
  {
    Mutable = binary_dict;
    valuePtr = 0;
    Value = CFDictionaryGetValue(binary_dict, @"_DVERS");
    if (!Value)
    {
      HealthPlistCopyOrCreateNew_cold_14(0, v9, v10, v11, v12, v13, v14, v15, v167);
      goto LABEL_34;
    }

    v16 = Value;
    v17 = CFGetTypeID(Value);
    TypeID = CFNumberGetTypeID();
    if (v17 == TypeID)
    {
      v169 = 0;
      v26 = CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
      if (v26)
      {
        if (valuePtr == 7)
        {
          v34 = CFDictionaryGetValue(Mutable, @"_DTIME");
          if (v34)
          {
            v35 = v34;
            v36 = CFGetTypeID(v34);
            v37 = CFNumberGetTypeID();
            if (v36 != v37)
            {
              HealthPlistCopyOrCreateNew_cold_2(v37, v38, v39, v40, v41, v42, v43, v44);
              goto LABEL_34;
            }

            v45 = CFNumberGetValue(v35, kCFNumberLongType, &v169);
            if (!v45)
            {
              HealthPlistCopyOrCreateNew_cold_3(v45, v46, v47, v48, v49, v50, v51, v52);
              goto LABEL_34;
            }
          }

          v53 = CFDictionaryGetValue(Mutable, @"_DDATA");
          MutableCopy = v53;
          if (!v53)
          {
            goto LABEL_17;
          }

          v55 = CFGetTypeID(v53);
          v56 = CFArrayGetTypeID();
          if (v55 == v56)
          {
            if (CFArrayGetCount(MutableCopy) >= 1)
            {
              v64 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v64);
                if (!ValueAtIndex)
                {
                  break;
                }

                v73 = CFGetTypeID(ValueAtIndex);
                ValueAtIndex = CFNumberGetTypeID();
                if (v73 != ValueAtIndex)
                {
                  break;
                }

                if (CFArrayGetCount(MutableCopy) <= ++v64)
                {
                  goto LABEL_16;
                }
              }

              HealthPlistCopyOrCreateNew_cold_5(ValueAtIndex, v66, v67, v68, v69, v70, v71, v72);
              goto LABEL_34;
            }

LABEL_16:
            MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, MutableCopy);
            CFDictionarySetValue(Mutable, @"_DDATA", MutableCopy);
LABEL_17:
            v74 = CFDictionaryGetValue(Mutable, @"_DFAIL");
            if (!v74)
            {
              goto LABEL_20;
            }

            v75 = v74;
            v168 = 0;
            v76 = CFGetTypeID(v74);
            if (v76 == CFNumberGetTypeID())
            {
              if (CFNumberGetValue(v75, kCFNumberLongType, &v168))
              {
LABEL_20:
                v83 = CFDictionaryGetValue(Mutable, @"_DSEUN");
                if (v83)
                {
                  v84 = CFGetTypeID(v83);
                  v85 = CFStringGetTypeID();
                  if (v84 != v85)
                  {
                    HealthPlistCopyOrCreateNew_cold_6(v85, v86, v87, v88, v89, v90, v91, v92);
                    goto LABEL_57;
                  }
                }

                v93 = CFDictionaryGetValue(Mutable, @"_DTTR");
                if (!v93)
                {
                  goto LABEL_25;
                }

                v94 = v93;
                v95 = CFGetTypeID(v93);
                v96 = CFNumberGetTypeID();
                if (v95 != v96)
                {
                  HealthPlistCopyOrCreateNew_cold_7(v96, v97, v98, v99, v100, v101, v102, v103);
                  goto LABEL_57;
                }

                v104 = CFNumberGetValue(v94, kCFNumberSInt64Type, &v169);
                if (!v104)
                {
                  HealthPlistCopyOrCreateNew_cold_8(v104, v105, v106, v107, v108, v109, v110, v111);
                }

                else
                {
LABEL_25:
                  v112 = CFDictionaryGetValue(Mutable, @"_DLD");
                  if (!v112)
                  {
                    goto LABEL_28;
                  }

                  v113 = v112;
                  v114 = CFGetTypeID(v112);
                  v115 = CFNumberGetTypeID();
                  if (v114 != v115)
                  {
                    HealthPlistCopyOrCreateNew_cold_9(v115, v116, v117, v118, v119, v120, v121, v122);
                    goto LABEL_57;
                  }

                  v123 = CFNumberGetValue(v113, kCFNumberSInt64Type, &v169);
                  if (!v123)
                  {
                    HealthPlistCopyOrCreateNew_cold_10(v123, v124, v125, v126, v127, v128, v129, v130);
                  }

                  else
                  {
LABEL_28:
                    v131 = CFDictionaryGetValue(Mutable, @"_DLD");
                    if (!v131)
                    {
                      goto LABEL_31;
                    }

                    v132 = v131;
                    v133 = CFGetTypeID(v131);
                    v134 = CFNumberGetTypeID();
                    if (v133 == v134)
                    {
                      v142 = CFNumberGetValue(v132, kCFNumberSInt64Type, &v169);
                      if (v142)
                      {
LABEL_31:
                        v150 = 1;
                        if (!MutableCopy)
                        {
                          goto LABEL_33;
                        }

                        goto LABEL_32;
                      }

                      HealthPlistCopyOrCreateNew_cold_12(v142, v143, v144, v145, v146, v147, v148, v149);
                    }

                    else
                    {
                      HealthPlistCopyOrCreateNew_cold_11(v134, v135, v136, v137, v138, v139, v140, v141);
                    }
                  }
                }

LABEL_57:
                v150 = 0;
                if (!MutableCopy)
                {
LABEL_33:
                  if (v150)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_34;
                }

LABEL_32:
                CFRelease(MutableCopy);
                goto LABEL_33;
              }

              v166 = @"invalid fail indicator";
            }

            else
            {
              v166 = @"fail indicator is of wrong type";
            }

            debuglog("validate_health_plist", v166, v77, v78, v79, v80, v81, v82, v167);
            goto LABEL_57;
          }

          HealthPlistCopyOrCreateNew_cold_4(v56, v57, v58, v59, v60, v61, v62, v63);
        }

        else
        {
          debuglog("validate_health_plist", @"non-current version %d", v28, v29, v30, v31, v32, v33, valuePtr);
        }
      }

      else
      {
        HealthPlistCopyOrCreateNew_cold_13(v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }

    else
    {
      HealthPlistCopyOrCreateNew_cold_1(TypeID, v19, v20, v21, v22, v23, v24, v25, v167);
    }

LABEL_34:
    CFRelease(Mutable);
  }

  debuglog("HealthPlistCopyOrCreateNew", @"health plist doesnt exist or wrong version, creating new one", v1, v2, v3, v4, v5, v6, v167);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    HealthPlistCopyOrCreateNew_cold_16(0, v151, v152, v153, v154, v155, v156, v157);
    return Mutable;
  }

LABEL_36:
  if (HealthPlistSetVersion(Mutable, 7))
  {
    HealthPlistCopyOrCreateNew_cold_15(Mutable, v158, v159, v160, v161, v162, v163, v164);
    return 0;
  }

  return Mutable;
}

uint64_t HealthPlistSerialize(const void *a1)
{
  if (store_binary_dict(a1, "/var/root/.mkb_seshat_health"))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t HealthPlistTest()
{
  unlink("/var/root/.mkb_seshat_health");
  New = HealthPlistCopyOrCreateNew();
  if (!New)
  {
    goto LABEL_142;
  }

  v8 = New;
  Count = CFDictionaryGetCount(New);
  if (Count != 1)
  {
    goto LABEL_144;
  }

  if (store_binary_dict(v8, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_145;
  }

  CFRelease(v8);
  v17 = HealthPlistCopyOrCreateNew();
  if (!v17)
  {
    goto LABEL_142;
  }

  v8 = v17;
  Count = CFDictionaryGetCount(v17);
  if (Count != 1)
  {
    goto LABEL_144;
  }

  CFRelease(v8);
  puts("plist version tests");
  plist_with_version = _create_plist_with_version(8);
  if (!plist_with_version)
  {
LABEL_141:
    HealthPlistTest_cold_31(0, v19, v20, v21, v22, v23, v24, v25, v168);
    return 0xFFFFFFFFLL;
  }

  v8 = plist_with_version;
  if (store_binary_dict(plist_with_version, "/var/root/.mkb_seshat_health"))
  {
LABEL_145:
    v39 = 0;
    goto LABEL_56;
  }

  CFRelease(v8);
  v26 = HealthPlistCopyOrCreateNew();
  if (!v26)
  {
    goto LABEL_142;
  }

  v8 = v26;
  Count = CFDictionaryGetCount(v26);
  if (Count != 1)
  {
    goto LABEL_144;
  }

  CFRelease(v8);
  v27 = _create_plist_with_version(6);
  if (!v27)
  {
    goto LABEL_141;
  }

  v8 = v27;
  if (store_binary_dict(v27, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_145;
  }

  CFRelease(v8);
  v28 = HealthPlistCopyOrCreateNew();
  if (!v28)
  {
    goto LABEL_142;
  }

  v8 = v28;
  Count = CFDictionaryGetCount(v28);
  if (Count != 1)
  {
    goto LABEL_144;
  }

  CFRelease(v8);
  v29 = _create_plist_with_version(7);
  if (!v29)
  {
    goto LABEL_141;
  }

  v8 = v29;
  if (store_binary_dict(v29, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_145;
  }

  CFRelease(v8);
  v30 = HealthPlistCopyOrCreateNew();
  if (!v30)
  {
LABEL_142:
    HealthPlistTest_cold_30(0, v1, v2, v3, v4, v5, v6, v7, v168);
    return 0xFFFFFFFFLL;
  }

  v8 = v30;
  Count = CFDictionaryGetCount(v30);
  if (Count != 1)
  {
LABEL_144:
    HealthPlistTest_cold_1(Count, v10, v11, v12, v13, v14, v15, v16, v168);
    goto LABEL_145;
  }

  Value = CFDictionaryGetValue(v8, @"_DVERS");
  v39 = Value;
  if (!Value)
  {
    HealthPlistTest_cold_27(0, v32, v33, v34, v35, v36, v37, v38, v168);
    goto LABEL_56;
  }

  LODWORD(valuePtr) = 0;
  if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    v167 = @"cant get version";
LABEL_149:
    debuglog("HealthPlistTest", v167, v40, v41, v42, v43, v44, v45, v168);
    goto LABEL_56;
  }

  if (valuePtr != 7)
  {
    v167 = @"version is invalid";
    goto LABEL_149;
  }

  CFRelease(v8);
  v46 = _create_plist_with_version(7);
  if (!v46)
  {
    goto LABEL_119;
  }

  v8 = v46;
  CFDictionarySetValue(v46, @"_DSEUN", @"15A123");
  if (store_binary_dict(v8, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_56;
  }

  CFRelease(v8);
  v54 = HealthPlistCopyOrCreateNew();
  if (!v54)
  {
LABEL_124:
    v166 = @"failed to copy health plist";
    goto LABEL_125;
  }

  v8 = v54;
  v55 = CFDictionaryGetCount(v54);
  if (v55 != 2)
  {
    HealthPlistTest_cold_6(v55, v56, v57, v58, v59, v60, v61, v62);
    goto LABEL_56;
  }

  CFRelease(v8);
  puts("plist data tests");
  v63 = _create_plist_with_version(7);
  if (!v63)
  {
LABEL_119:
    v166 = @"cant create dict";
LABEL_125:
    HealthPlistTest_cold_26(v166, v47, v48, v49, v50, v51, v52, v53);
    v139 = 0xFFFFFFFFLL;
    goto LABEL_116;
  }

  v8 = v63;
  v64 = HealthPlistAddToData(v63, 1);
  if (v64 || (v64 = HealthPlistAddToData(v8, 2), v64))
  {
LABEL_158:
    HealthPlistTest_cold_7(v64, v65, v66, v67, v68, v69, v70, v71);
    goto LABEL_56;
  }

  if (store_binary_dict(v8, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_56;
  }

  CFRelease(v8);
  v72 = HealthPlistCopyOrCreateNew();
  if (!v72)
  {
    goto LABEL_124;
  }

  v8 = v72;
  v73 = CFDictionaryGetValue(v72, @"_DDATA");
  if (!v73)
  {
LABEL_127:
    HealthPlistTest_cold_23(0, v74, v75, v76, v77, v78, v79, v80);
    goto LABEL_56;
  }

  v81 = CFArrayGetCount(v73);
  if (v81 != 2)
  {
    goto LABEL_159;
  }

  CFRelease(v8);
  v89 = _create_plist_with_version(7);
  if (!v89)
  {
    goto LABEL_119;
  }

  v8 = v89;
  for (i = 0; i != 28; ++i)
  {
    v91 = HealthPlistAddToData(v8, i);
    if (v91)
    {
      HealthPlistTest_cold_7(v91, v92, v93, v94, v95, v96, v97, v98);
      goto LABEL_178;
    }
  }

  if (store_binary_dict(v8, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_178;
  }

  CFRelease(v8);
  v99 = HealthPlistCopyOrCreateNew();
  if (!v99)
  {
    goto LABEL_175;
  }

  v8 = v99;
  v107 = CFDictionaryGetValue(v99, @"_DDATA");
  if (!v107)
  {
    goto LABEL_127;
  }

  v108 = v107;
  v81 = CFArrayGetCount(v107);
  if (v81 != 14)
  {
    goto LABEL_159;
  }

  v64 = HealthPlistAddToData(v8, 10);
  if (v64)
  {
    goto LABEL_158;
  }

  v81 = CFArrayGetCount(v108);
  if (v81 != 14)
  {
LABEL_159:
    HealthPlistTest_cold_9(v81, v82, v83, v84, v85, v86, v87, v88);
    goto LABEL_56;
  }

  CFRelease(v8);
  puts("plist timestamp tests");
  v109 = _create_plist_with_version(7);
  if (!v109)
  {
    goto LABEL_174;
  }

  v8 = v109;
  Time = HealthPlistGetTime(v109);
  if (Time)
  {
    HealthPlistTest_cold_14(Time, v118, v119, v120, v121, v122, v123, v124);
    goto LABEL_56;
  }

  v125 = HealthPlistSetTime(v8);
  if (v125)
  {
LABEL_162:
    HealthPlistTest_cold_15(v125, v126, v127, v128, v129, v130, v131, v132);
    goto LABEL_56;
  }

  if (store_binary_dict(v8, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_56;
  }

  CFRelease(v8);
  v133 = HealthPlistCopyOrCreateNew();
  if (!v133)
  {
LABEL_175:
    HealthPlistTest_cold_17(0, v100, v101, v102, v103, v104, v105, v106);
    goto LABEL_57;
  }

  v8 = v133;
  v134 = HealthPlistGetTime(v133);
  if (v134 != 123)
  {
    if (v134)
    {
      goto LABEL_56;
    }

    goto LABEL_127;
  }

  v125 = HealthPlistSetTime(v8);
  if (v125)
  {
    goto LABEL_162;
  }

  v135 = HealthPlistGetTime(v8);
  if (v135 != 1123)
  {
    if (v135)
    {
      goto LABEL_56;
    }

    goto LABEL_127;
  }

  CFRelease(v8);
  puts("plist build tests");
  v136 = _create_plist_with_version(7);
  if (!v136)
  {
    goto LABEL_174;
  }

  v8 = v136;
  if (CFDictionaryGetValue(v136, @"_DSEUN") || (CFDictionarySetValue(v8, @"_DSEUN", @"12A123"), CFDictionarySetValue(v8, @"_DSEUN", @"12A124"), store_binary_dict(v8, "/var/root/.mkb_seshat_health")))
  {
LABEL_56:
    CFRelease(v8);
    goto LABEL_57;
  }

  CFRelease(v8);
  v137 = HealthPlistCopyOrCreateNew();
  if (!v137)
  {
    goto LABEL_175;
  }

  v8 = v137;
  v138 = CFDictionaryGetValue(v137, @"_DSEUN");
  if (!v138 || CFStringCompare(v138, @"12A124", 0))
  {
    goto LABEL_56;
  }

  CFRelease(v8);
  puts("plist failure tests");
  v140 = _create_plist_with_version(7);
  if (!v140)
  {
LABEL_174:
    HealthPlistTest_cold_18(0, v110, v111, v112, v113, v114, v115, v116);
    goto LABEL_57;
  }

  v8 = v140;
  if (HealthPlistGetFailed(v140) || HealthPlistSetFailed(v8) || HealthPlistGetFailed(v8) != -1 || store_binary_dict(v8, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_56;
  }

  CFRelease(v8);
  v141 = HealthPlistCopyOrCreateNew();
  if (!v141)
  {
    goto LABEL_175;
  }

  v8 = v141;
  if (HealthPlistGetFailed(v141) != -1)
  {
    goto LABEL_56;
  }

  CFRelease(v8);
  puts("plist ttr tests");
  valuePtr = 0;
  v142 = _create_plist_with_version(7);
  v8 = v142;
  if (!v142)
  {
    goto LABEL_118;
  }

  if (CFDictionaryGetValue(v142, @"_DTTR"))
  {
    goto LABEL_123;
  }

  CFDictionaryRemoveValue(v8, @"_DTTR");
  if (CFDictionaryGetValue(v8, @"_DTTR"))
  {
    goto LABEL_123;
  }

  v149 = time(0);
  if (HealthPlistSetTTR(v8, v149))
  {
LABEL_167:
    v165 = @"addition of TTR failed";
    goto LABEL_177;
  }

  if (!CFDictionaryGetValue(v8, @"_DTTR"))
  {
    goto LABEL_123;
  }

  if (HealthPlistConsumeTTR(v8, &valuePtr))
  {
    goto LABEL_168;
  }

  if (valuePtr < 1)
  {
LABEL_169:
    v165 = @"empty time";
    goto LABEL_177;
  }

  if (CFDictionaryGetValue(v8, @"_DTTR"))
  {
LABEL_123:
    v165 = @"unexpected TTR entry";
    goto LABEL_177;
  }

  v150 = time(0);
  if (HealthPlistSetTTR(v8, v150))
  {
    goto LABEL_167;
  }

  if (store_binary_dict(v8, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_178;
  }

  CFRelease(v8);
  v151 = HealthPlistCopyOrCreateNew();
  v8 = v151;
  if (!v151)
  {
    goto LABEL_118;
  }

  if (!CFDictionaryGetValue(v151, @"_DTTR"))
  {
    v165 = @"no TTR entry";
    goto LABEL_177;
  }

  if (HealthPlistConsumeTTR(v8, &valuePtr))
  {
LABEL_168:
    v165 = @"failed to consume TTR entry";
    goto LABEL_177;
  }

  if (valuePtr < 1)
  {
    goto LABEL_169;
  }

  if (CFDictionaryGetValue(v8, @"_DTTR"))
  {
    goto LABEL_123;
  }

  CFRelease(v8);
  puts("plist lockdate tests");
  v152 = time(0);
  valuePtr = 0;
  v153 = _create_plist_with_version(7);
  v8 = v153;
  if (!v153)
  {
    goto LABEL_118;
  }

  if (CFDictionaryGetValue(v153, @"_DLD"))
  {
    goto LABEL_121;
  }

  CFDictionaryRemoveValue(v8, @"_DLD");
  if (CFDictionaryGetValue(v8, @"_DLD"))
  {
    goto LABEL_121;
  }

  if (HealthPlistSetLockDate(v8, v152))
  {
LABEL_171:
    v165 = @"addition of ld failed";
    goto LABEL_177;
  }

  if (HealthPlistSetUnlockDate(v8, v152 - 1))
  {
LABEL_172:
    v165 = @"addition of uld failed";
    goto LABEL_177;
  }

  v154 = CFDictionaryGetValue(v8, @"_DLD");
  if (!v154)
  {
    goto LABEL_121;
  }

  if (!CFNumberGetValue(v154, kCFNumberSInt64Type, &valuePtr))
  {
LABEL_170:
    v165 = @"invalid ld timestamp";
    goto LABEL_177;
  }

  if (valuePtr != v152)
  {
    goto LABEL_130;
  }

  if (store_binary_dict(v8, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_178;
  }

  CFRelease(v8);
  v155 = HealthPlistCopyOrCreateNew();
  v8 = v155;
  if (!v155)
  {
LABEL_118:
    v165 = @"cant create dict";
LABEL_177:
    debuglog("HealthPlistTest", v165, v143, v144, v145, v146, v147, v148, v168);
LABEL_178:
    if (v8)
    {
      goto LABEL_56;
    }

LABEL_57:
    v139 = 0xFFFFFFFFLL;
    if (v39)
    {
      goto LABEL_116;
    }

    return v139;
  }

  v156 = CFDictionaryGetValue(v155, @"_DLD");
  if (!v156)
  {
    goto LABEL_121;
  }

  if (!CFNumberGetValue(v156, kCFNumberSInt64Type, &valuePtr))
  {
    goto LABEL_170;
  }

  if (valuePtr != v152)
  {
    goto LABEL_130;
  }

  CFDictionaryRemoveValue(v8, @"_DLD");
  if (CFDictionaryGetValue(v8, @"_DLD"))
  {
    goto LABEL_121;
  }

  if (store_binary_dict(v8, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_178;
  }

  CFRelease(v8);
  v157 = HealthPlistCopyOrCreateNew();
  v8 = v157;
  if (!v157)
  {
    goto LABEL_118;
  }

  if (CFDictionaryGetValue(v157, @"_DLD"))
  {
LABEL_121:
    v165 = @"unexpected ld entry";
    goto LABEL_177;
  }

  CFRelease(v8);
  puts("plist unlock date tests");
  v158 = time(0);
  valuePtr = 0;
  v159 = _create_plist_with_version(7);
  v8 = v159;
  if (!v159)
  {
    goto LABEL_118;
  }

  if (CFDictionaryGetValue(v159, @"_DULD"))
  {
    goto LABEL_122;
  }

  CFDictionaryRemoveValue(v8, @"_DULD");
  if (CFDictionaryGetValue(v8, @"_DULD"))
  {
    goto LABEL_122;
  }

  if (HealthPlistSetUnlockDate(v8, v158))
  {
    goto LABEL_172;
  }

  if (HealthPlistSetLockDate(v8, v158 - 1))
  {
    goto LABEL_171;
  }

  v160 = CFDictionaryGetValue(v8, @"_DULD");
  if (!v160)
  {
LABEL_122:
    v165 = @"unexpected uld entry";
    goto LABEL_177;
  }

  if (!CFNumberGetValue(v160, kCFNumberSInt64Type, &valuePtr))
  {
LABEL_173:
    v165 = @"invalid uld timestamp";
    goto LABEL_177;
  }

  if (valuePtr != v158)
  {
LABEL_130:
    v165 = @"mismatch";
    goto LABEL_177;
  }

  if (store_binary_dict(v8, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_178;
  }

  CFRelease(v8);
  v161 = HealthPlistCopyOrCreateNew();
  v8 = v161;
  if (!v161)
  {
    goto LABEL_118;
  }

  v162 = CFDictionaryGetValue(v161, @"_DULD");
  if (!v162)
  {
    goto LABEL_122;
  }

  if (!CFNumberGetValue(v162, kCFNumberSInt64Type, &valuePtr))
  {
    goto LABEL_173;
  }

  if (valuePtr != v158)
  {
    goto LABEL_130;
  }

  CFDictionaryRemoveValue(v8, @"_DULD");
  if (CFDictionaryGetValue(v8, @"_DULD"))
  {
    goto LABEL_122;
  }

  if (store_binary_dict(v8, "/var/root/.mkb_seshat_health"))
  {
    goto LABEL_178;
  }

  CFRelease(v8);
  v163 = HealthPlistCopyOrCreateNew();
  v8 = v163;
  if (!v163)
  {
    goto LABEL_118;
  }

  if (CFDictionaryGetValue(v163, @"_DULD"))
  {
    goto LABEL_122;
  }

  CFRelease(v8);
  v139 = 0;
  if (!v39)
  {
    return v139;
  }

LABEL_116:
  CFRelease(v39);
  return v139;
}

__CFDictionary *_create_plist_with_version(int a1)
{
  unlink("/var/root/.mkb_seshat_health");
  New = HealthPlistCopyOrCreateNew();
  v10 = New;
  if (New)
  {
    if (HealthPlistSetVersion(New, a1))
    {
      CFRelease(v10);
      return 0;
    }
  }

  else
  {
    _create_plist_with_version_cold_1(0, v3, v4, v5, v6, v7, v8, v9, v12);
  }

  return v10;
}

const __CFDictionary *KBLoadSystemKeyBag()
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  snprintf(__str, 0x401uLL, "%s%s", "/private/var/", "keybags");
  v6 = 0;
  if (!KBLoadLoadKeyBagFile(__str, "systembag", &v16))
  {
    v6 = v16;
    if (v16)
    {
      if (!_getData(v16, @"KeyBagKeys"))
      {
        debuglog("KBLoadSystemKeyBag", @"Keybag %s doesn't actually contain keys", v9, v10, v11, v12, v13, v14, __str);
        CFRelease(v6);
        v6 = 0;
      }
    }

    else
    {
      debuglog("KBLoadSystemKeyBag", @" Empty Keybag returned from KBLoadLoadKeyBagFile", v0, v1, v2, v3, v4, v5, v15);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t KBLoadLoadKeyBagFile(const char *a1, const char *a2, CFPropertyListRef *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x401uLL, "%s/%s.kb", a1, a2);
  binary_dict = load_binary_dict(__str);
  v5 = binary_dict;
  if (binary_dict)
  {
    v6 = CFDictionaryGetValue(binary_dict, @"KeybagxART") != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = MKBDeviceTreeContainsKey(":/defaults", @"no-effaceable-storage");
  if (v6 || v7)
  {
    *a3 = 0;
    v16 = load_binary_dict(__str);
    *a3 = v16;
    if (!v16)
    {
      snprintf(v27, 0x401uLL, "%s.writing", __str);
      v17 = load_binary_dict(v27);
      *a3 = v17;
      if (!v17)
      {
        v15 = 4294967289;
        debuglog("KBLoadLoadKeyBagFile", @"Unable to load keybag with No Crypto: %d", v18, v19, v20, v21, v22, v23, -7);
        if (!v5)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    v15 = 0;
  }

  else
  {
    ObjectWithCrypto = KBSecureLoadObjectWithCrypto(__str, a3);
    v15 = ObjectWithCrypto;
    if (ObjectWithCrypto)
    {
      debuglog("KBLoadLoadKeyBagFile", @"Unable to load keybag with Crypto: %d", v9, v10, v11, v12, v13, v14, ObjectWithCrypto);
      if (!v5)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  if (v5)
  {
LABEL_13:
    CFRelease(v5);
  }

LABEL_14:
  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

void KBCleanupSystemKeyBag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v26 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x401uLL, "%s%s/%s.kb", "/private/var/", "keybags", "systembag");
  if (unlink(__str))
  {
    if (*__error() != 2)
    {
      v15 = __error();
      v16 = strerror(*v15);
      debuglog("KBCleanupSystemKeyBag", @"Failed to delete System KeyBag plist: %s", v17, v18, v19, v20, v21, v22, v16);
    }

    v23 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v24 = *MEMORY[0x1E69E9840];

    debuglog("KBCleanupSystemKeyBag", @"Deleted System KeyBag plist", v9, v10, v11, v12, v13, v14, a9);
  }
}

CFMutableDictionaryRef KBLoadUserKeybag(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  snprintf(__str, 0x401uLL, "%s%s", "/private/var/", "keybags");
  KeyBagFile = KBLoadLoadKeyBagFile(__str, "userbag", &v18);
  v3 = v18;
  if (KeyBagFile || !v18)
  {
    MutableCopy = 0;
    result = 0;
    if (!v18)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a1);
  if (!v5)
  {
    MutableCopy = 0;
    goto LABEL_10;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(v3, v5);
  if (!Value)
  {
    goto LABEL_8;
  }

  v8 = Value;
  if (!_getData(Value, @"KeyBagKeys"))
  {
    debuglog("KBLoadUserKeybag", @"Keybag %s doesn't actually contain keys", v9, v10, v11, v12, v13, v14, __str);
LABEL_8:
    MutableCopy = 0;
    goto LABEL_9;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, v8);
LABEL_9:
  CFRelease(v3);
  v3 = v6;
LABEL_10:
  CFRelease(v3);
  result = MutableCopy;
LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t KBSavePublicBackupBag(const void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x401uLL, "%s/%s", "/private/var/", "keybags");
  v2 = KBLoadSystemKeyBag();
  if (v2)
  {
    v6 = v2;
    if (a1)
    {
      CFDictionarySetValue(v2, @"BackupKeyBagKeys", a1);
    }

    else
    {
      CFDictionaryRemoveValue(v2, @"BackupKeyBagKeys");
    }

    if (KBSaveKeyBag(v6, __str, 1111574321, "systembag", 0, v7, v8, v9))
    {
      v3 = 0xFFFFFFFFLL;
    }

    else
    {
      v3 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t MKBDeviceSupportsEnhancedAPFS()
{
  v12 = *MEMORY[0x1E69E9840];
  if ((MKBDeviceSupportsEnhancedAPFS_once & 1) == 0)
  {
    v2 = MKBDeviceTreeContainsKey(":/filesystems", @"e-apfs");
    __len = 1023;
    bzero(__big, 0x400uLL);
    if ((check_apfs_shared_datavolume_bootarg_init & 1) == 0)
    {
      if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
      {
        check_apfs_shared_datavolume_bootarg_value = 1;
      }

      check_apfs_shared_datavolume_bootarg_init = 1;
    }

    if (v2 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = check_apfs_shared_datavolume_bootarg_value;
    }

    MKBDeviceSupportsEnhancedAPFS_answer = v9;
    debuglog("MKBDeviceSupportsEnhancedAPFS", @"dt = %d, bootarg = %d", v3, v4, v5, v6, v7, v8, v2);
    MKBDeviceSupportsEnhancedAPFS_once = 1;
  }

  result = MKBDeviceSupportsEnhancedAPFS_answer;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getNVRam(char *cStr, _DWORD *a2, char **a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v6 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/options");
  if (v6)
  {
    v13 = v6;
    CFProperty = IORegistryEntryCreateCFProperty(v6, v5, 0, 0);
    if (CFProperty)
    {
      v21 = CFProperty;
      if (a2)
      {
        *a2 = 1;
      }

      if (a3)
      {
        v22 = CFGetTypeID(CFProperty);
        if (v22 == CFStringGetTypeID())
        {
          if (CFStringGetCString(v21, buffer, 1024, 0x8000100u))
          {
            *a3 = strdup(buffer);
          }
        }

        else
        {
          v24 = CFGetTypeID(v21);
          if (v24 == CFDataGetTypeID())
          {
            Length = CFDataGetLength(v21);
            v26 = malloc_type_calloc(1uLL, Length + 1, 0xB4CFF7A4uLL);
            *a3 = v26;
            if (v26)
            {
              v27 = v26;
              BytePtr = CFDataGetBytePtr(v21);
              memcpy(v27, BytePtr, Length);
            }
          }

          else
          {
            *a3 = 0;
          }
        }
      }

      CFRelease(v21);
    }

    else
    {
      debuglog("getNVRam", @"Could not create string for value", v15, v16, v17, v18, v19, v20, v31);
      if (a2)
      {
        *a2 = 0;
      }
    }

    IOObjectRelease(v13);
    v23 = 0;
  }

  else
  {
    debuglog("getNVRam", @"Could not get options entry from the device tree", v7, v8, v9, v10, v11, v12, v31);
    v23 = 0xFFFFFFFFLL;
  }

  CFRelease(v5);
  v29 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t setNVRam(char *cStr, const char *a2)
{
  v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v4 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/options");
  if (v4)
  {
    v11 = v4;
    v12 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (v12)
    {
      v19 = v12;
      v20 = IORegistryEntrySetCFProperty(v11, v3, v12);
      if (v20)
      {
        debuglog("setNVRam", @"Could not save value:%08x", v21, v22, v23, v24, v25, v26, v20);
        v27 = 0xFFFFFFFFLL;
      }

      else
      {
        v27 = 0;
      }

      CFRelease(v19);
    }

    else
    {
      debuglog("setNVRam", @"Could not create string for value", v13, v14, v15, v16, v17, v18, v29);
      v27 = 0xFFFFFFFFLL;
    }

    IOObjectRelease(v11);
  }

  else
  {
    debuglog("setNVRam", @"Could not get options entry from the device tree", v5, v6, v7, v8, v9, v10, v29);
    v27 = 0xFFFFFFFFLL;
  }

  CFRelease(v3);
  return v27;
}

uint64_t KBUpdateKeyBag(int a1, uint64_t a2)
{
  if (a1)
  {
    v4 = KBLoadUserKeybag(-a1);
  }

  else
  {
    v4 = KBLoadSystemKeyBag();
  }

  v11 = v4;
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"OpaqueStuff");
    v13 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFRelease(v11);
    debuglog("KBUpdateKeyBag", @"Got opaqueStuff from ondisk keybag", v14, v15, v16, v17, v18, v19, v29);
    if (aks_get_system())
    {
      v27 = 0xFFFFFFFFLL;
      if (!v13)
      {
        return v27;
      }

      goto LABEL_13;
    }

    if (a1)
    {
      v20 = KBSaveUserBagHandle(0, -a1, v13, a2);
    }

    else
    {
      v20 = KBSaveSystemBagHandle(0, "/private/var/", v13, 1, a2);
    }

    v27 = v20;
    debuglog("KBUpdateKeyBag", @"Saved new keybag for handle %d with result %d", v21, v22, v23, v24, v25, v26, a1);
    if (v13)
    {
LABEL_13:
      CFRelease(v13);
    }
  }

  else
  {
    debuglog("KBUpdateKeyBag", @"failed to open ondisk keybag, failing UpdateKeyBag", v5, v6, v7, v8, v9, v10, v29);
    return 0xFFFFFFFFLL;
  }

  return v27;
}

void KBSetCookie(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v9 = dlopen("/System/Library/PrivateFrameworks/APFS.framework/APFS", 2);
  if (!v9)
  {
    v24 = @"Failed to open APFS framework";
    goto LABEL_8;
  }

  v16 = dlsym(v9, "APFSVolumePayloadSet");
  if (!v16)
  {
    v24 = @"Failed to resolve gAPFSVolumePayloadSet";
LABEL_8:
    debuglog("KBSetCookie", v24, v10, v11, v12, v13, v14, v15, v34);
    v16 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (a5)
  {
LABEL_4:
    v17 = aks_copy_volume_cookie_persona();
    if (v17)
    {
      debuglog("KBSetCookie", @"Failed to get keybag persona Cookiefrom AKS:0x%x", v18, v19, v20, v21, v22, v23, v17);
      goto LABEL_17;
    }

    v26 = @"Retrieved keybag persona Cookie from AKS, setting in APFS volume";
    goto LABEL_13;
  }

LABEL_9:
  v25 = aks_copy_volume_cookie();
  if (v25)
  {
    debuglog("KBSetCookie", @"Failed to get keybag Cookie from AKS:0x%x", v18, v19, v20, v21, v22, v23, v25);
    goto LABEL_17;
  }

  v26 = @"Retrieved keybag Cookie from AKS, setting in APFS volume";
LABEL_13:
  debuglog("KBSetCookie", v26, v18, v19, v20, v21, v22, v23, v34);
  if (v16)
  {
    v27 = (v16)(a2, 0, 0, 0);
    if (v27)
    {
      debuglog("KBSetCookie", @"APFSVolumePayloadSet failed with %d", v28, v29, v30, v31, v32, v33, v27);
    }

    else
    {
      debuglog("KBSetCookie", @"APFSVolumePayloadSet succeeded", v28, v29, v30, v31, v32, v33, v35);
    }
  }

LABEL_17:
  if (a3)
  {
    if (a4)
    {
      *a3 = 0;
      *a4 = 0;
    }
  }
}

uint64_t KBMapVolume(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  size = 0;
  v65 = 0;
  v8 = dlopen("/System/Library/PrivateFrameworks/APFS.framework/APFS", 2);
  if (!v8)
  {
    v43 = @"Failed to open APFS framework";
    goto LABEL_11;
  }

  v15 = v8;
  v22 = dlsym(v8, "APFSVolumePayloadGet");
  if (!v22)
  {
    debuglog("KBMapVolume", @"Failed to resolve gAPFSVolumePayloadGet", v16, v17, v18, v19, v20, v21, v63);
  }

  if (!dlsym(v15, "APFSVolumePayloadSet"))
  {
    debuglog("KBMapVolume", @"Failed to resolve gAPFSVolumePayloadSet", v23, v24, v25, v26, v27, v28, v63);
  }

  if (v22)
  {
    v29 = (v22)(a3, 0, 0, &size);
    if (v29)
    {
      v36 = v29;
      debuglog("KBMapVolume", @"APFSVolumePayloadGet failed with %d", v30, v31, v32, v33, v34, v35, v29);
      if (v36 == 49154)
      {
        debuglog("KBMapVolume", @"Not cookie in this volume, attempting to write it", v37, v38, v39, v40, v41, v42, v63);
        KBSetCookie(a1, a3, &v65, &size, a5);
      }

      goto LABEL_12;
    }

    debuglog("KBMapVolume", @"APFSVolumePayloadGet len reveived to be %zd", v30, v31, v32, v33, v34, v35, size);
    v55 = malloc_type_malloc(size, 0x8FC181C0uLL);
    v65 = v55;
    if (v55)
    {
      v56 = (v22)(a3, 0, v55, &size);
      if (v56)
      {
        debuglog("KBMapVolume", @"Failed to  obtain cookie from the volume with error %d", v57, v58, v59, v60, v61, v62, v56);
      }

      else
      {
        debuglog("KBMapVolume", @"Successfully obtained the cookie for the volume with length:%zd", v57, v58, v59, v60, v61, v62, size);
      }

      goto LABEL_12;
    }

    v43 = @"Failed to allocate Cookie malloc space";
LABEL_11:
    debuglog("KBMapVolume", v43, v9, v10, v11, v12, v13, v14, v63);
  }

LABEL_12:
  if (a5)
  {
    v44 = aks_set_keybag_for_volume_with_cookie_persona();
    v51 = v44;
    if (v44)
    {
      debuglog("KBMapVolume", @"aks_set_keybag_for_volume_with_cookie_persona FAIL with 0x%x", v45, v46, v47, v48, v49, v50, v44);
      goto LABEL_20;
    }

    v53 = @"aks_set_keybag_for_volume_with_cookie_persona SUCCESS";
  }

  else
  {
    v52 = aks_set_keybag_for_volume_with_cookie();
    v51 = v52;
    if (v52)
    {
      debuglog("KBMapVolume", @"aks_set_keybag_for_volume_with_cookie FAIL with 0x%x", v45, v46, v47, v48, v49, v50, v52);
      goto LABEL_20;
    }

    v53 = @"aks_set_keybag_for_volume_with_cookie SUCCESS";
  }

  debuglog("KBMapVolume", v53, v45, v46, v47, v48, v49, v50, v63);
LABEL_20:
  if (v65)
  {
    free(v65);
  }

  return v51;
}

uint64_t KBMapDeviceBag(const char *a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0;
  v49 = 0;
  memset(v50, 0, 512);
  memset(&v52, 0, 512);
  if (statfs(a1, &v52))
  {
    v10 = __error();
    v45 = strerror(*v10);
    debuglog("has_data_protection", @"Statfs failed due to:%s on  (%s)", v11, v12, v13, v14, v15, v16, v45);
LABEL_5:
    debuglog("has_data_protection", @"mount point (%s) does not support Data Protection", v17, v18, v19, v20, v21, v22, a1);
    v23 = 0;
    goto LABEL_6;
  }

  if ((v52.f_flags & 0x80) == 0)
  {
    debuglog("has_data_protection", @"mount is with NO CPROTECT:0x%x on  (%s)", v4, v5, v6, v7, v8, v9, v52.f_flags);
    goto LABEL_5;
  }

  LOWORD(v47) = 5;
  LODWORD(v48) = -2147188736;
  if (getattrlist(a1, &v47, v50, 0x41CuLL, 0))
  {
    v46 = *__error();
    debuglog("KBMapDeviceBag", @"Could not get %s volume attributes (errno=%d)", v32, v33, v34, v35, v36, v37, a1);
LABEL_14:
    v23 = 4294967290;
    goto LABEL_6;
  }

  if (SDWORD1(v50[0]) > 1047 || (v26 = v50 + SDWORD1(v50[0]) + 4, &v26[DWORD2(v50[0])] >= &v51))
  {
    debuglog("KBMapDeviceBag", @"Attribute buffer too small. offset=%d, lenght=%u", v26, v27, v28, v29, v30, v31, SBYTE4(v50[0]));
    goto LABEL_14;
  }

  v38 = KBMapVolume(0, 0, v26, v50 | 0xC, a2);
  v23 = convertAKSErrorToMKB(v38);
  if (v23)
  {
    debuglog("KBMapDeviceBag", @"Could not map %s volume (ret=%d)", v39, v40, v41, v42, v43, v44, a1);
  }

LABEL_6:
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t KBSecureLoadObjectWithCrypto(const std::__fs::filesystem::path *a1, CFPropertyListRef *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  theData = 0;
  v74 = 0;
  v71 = 0;
  cryptorRef = 0;
  dataOutMoved = 0;
  *a2 = 0;
  bzero(__str, 0x401uLL);
  v75 = 0;
  v4 = validateSecureFile(a1, &v75, &v74, &theData);
  if (v4)
  {
    debuglog("KBSecureLoadObject", @"Failed to validate keybag file: %d, %d", v5, v6, v7, v8, v9, v10, v4);
    snprintf(__str, 0x401uLL, "%s.writing", a1);
    v11 = validateSecureFile(__str, &v75, &v74, &theData);
    if (v11 || !v75)
    {
      debuglog("KBSecureLoadObject", @"Failed to validate keybag file: %d", v12, v13, v14, v15, v16, v17, v11);
    }

    else
    {
      rename(__str, a1, v12);
      if (!v18)
      {
        goto LABEL_5;
      }

      KBSecureLoadObjectWithCrypto_cold_1(__str);
    }

    v61 = 4294967288;
    debuglog("KBSecureLoadObjectWithCrypto", @"Can't load secure keybag Object: %d", v64, v65, v66, v67, v68, v69, -8);
    v19 = 0;
    goto LABEL_12;
  }

LABEL_5:
  v19 = v75;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v22 = CFDataGetBytePtr(v74);
  v23 = CCCryptorCreate(1u, 0, 1u, BytePtr, Length, v22, &cryptorRef);
  if (v23)
  {
    debuglog("KBSecureLoadObjectWithCrypto", @"Can't create decryptor: %d", v24, v25, v26, v27, v28, v29, v23);
    v61 = 4294967289;
    goto LABEL_12;
  }

  v30 = CFDataGetBytePtr(v19);
  v31 = CFDataGetLength(v19);
  v32 = malloc_type_malloc(v31, 0xBD7A87D1uLL);
  if (!v32)
  {
    KBSecureLoadObjectWithCrypto_cold_2(0, v33, v34, v35, v36, v37, v38, v39);
    v61 = 4294967291;
    goto LABEL_12;
  }

  v40 = v32;
  v41 = cryptorRef;
  v42 = CFDataGetLength(v19);
  v43 = CFDataGetLength(v19);
  v44 = CCCryptorUpdate(v41, v30, v42, v40, v43, &dataOutMoved);
  if (v44)
  {
    debuglog("KBSecureLoadObjectWithCrypto", @"Unable to decrypt: %d", v45, v46, v47, v48, v49, v50, v44);
  }

  else
  {
    v51 = cryptorRef;
    v52 = dataOutMoved;
    v53 = CFDataGetLength(v19);
    v54 = CCCryptorFinal(v51, &v40[v52], v53 - dataOutMoved, &v71);
    if (!v54)
    {
      v61 = 0;
      *a2 = convertBinaryToObject(v40, (v71 + dataOutMoved));
      goto LABEL_10;
    }

    debuglog("KBSecureLoadObjectWithCrypto", @"Unable to finalize: %d", v55, v56, v57, v58, v59, v60, v54);
  }

  v61 = 4294967289;
LABEL_10:
  if (v40 != v30)
  {
    free(v40);
  }

LABEL_12:
  if (v74)
  {
    CFRelease(v74);
    v74 = 0;
  }

  if (theData)
  {
    CFRelease(theData);
    theData = 0;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  CCCryptorRelease(cryptorRef);
  v62 = *MEMORY[0x1E69E9840];
  return v61;
}

uint64_t validateSecureFile(const char *a1, void *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v7 = a1;
  v90 = *MEMORY[0x1E69E9840];
  binary_dict = load_binary_dict(a1);
  if (!binary_dict)
  {
    debuglog("validateSecureFile", @"Unable to load %s", v9, v10, v11, v12, v13, v14, v7);
LABEL_36:
    v76 = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v15 = binary_dict;
  valuePtr = 0;
  Value = CFDictionaryGetValue(binary_dict, @"_MKBWIPEID");
  if (!Value || (v23 = Value, v24 = CFGetTypeID(Value), v24 != CFNumberGetTypeID()))
  {
    debuglog("validateSecureFile", @"%s missing wipeID", v17, v18, v19, v20, v21, v22, v7);
LABEL_35:
    CFRelease(v15);
    goto LABEL_36;
  }

  v25 = CFDictionaryGetValue(v15, @"_MKBIV");
  if (!v25 || (v32 = v25, v33 = CFGetTypeID(v25), v33 != CFDataGetTypeID()))
  {
    debuglog("validateSecureFile", @"%s missing IV", v26, v27, v28, v29, v30, v31, v7);
    goto LABEL_35;
  }

  v34 = CFDictionaryGetValue(v15, @"_MKBPAYLOAD");
  if (!v34 || (v41 = v34, v42 = CFGetTypeID(v34), v42 != CFDataGetTypeID()))
  {
    debuglog("validateSecureFile", @"%s missing payload", v35, v36, v37, v38, v39, v40, v7);
    goto LABEL_35;
  }

  CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
  v43 = valuePtr;
  v89 = 0;
  memset(v88, 0, sizeof(v88));
  v87 = 52;
  v44 = loadBlastableBytes(valuePtr, v88, &v87);
  if (v44)
  {
    debuglog("loadWipeIDInfo", @"Unable to load wipe info: %08x", v45, v46, v47, v48, v49, v50, v44);
LABEL_34:
    debuglog("validateSecureFile", @"Can't load wipe info for ID:%08x", v79, v80, v81, v82, v83, v84, valuePtr);
    goto LABEL_35;
  }

  if (LODWORD(v88[0]) != v43)
  {
    debuglog("loadWipeIDInfo", @"Wipe Info ID is wrong: %d", v45, v46, v47, v48, v49, v50, v88[0]);
    goto LABEL_34;
  }

  v51 = CFDataCreate(0, v88 + 4, 16);
  if (!v51)
  {
    validateSecureFile_cold_2(0, v52, v53, v54, v55, v56, v57, v58);
    goto LABEL_34;
  }

  v59 = v51;
  v60 = CFDataCreate(0, &v88[1] + 4, 32);
  if (!v60)
  {
    validateSecureFile_cold_1(v59, v61, v62, v63, v64, v65, v66, v67);
    goto LABEL_34;
  }

  v68 = v60;
  if (CFEqual(v32, v59))
  {
    if (a3)
    {
      *a3 = CFRetain(v59);
    }

    if (a4)
    {
      *a4 = CFRetain(v68);
    }

    if (!a2)
    {
      v76 = 0;
      goto LABEL_23;
    }

    v75 = CFRetain(v41);
    v76 = 0;
    goto LABEL_21;
  }

  debuglog("validateSecureFile", @"fileIV to wipeIV mismatch, no payload returned", v69, v70, v71, v72, v73, v74, v85);
  CFShow(v32);
  CFShow(v59);
  v76 = 4294967287;
  if (a2)
  {
    v75 = 0;
LABEL_21:
    *a2 = v75;
  }

LABEL_23:
  CFRelease(v15);
  CFRelease(v59);
  CFRelease(v68);
LABEL_24:
  v77 = *MEMORY[0x1E69E9840];
  return v76;
}

uint64_t MKBLockDevice(CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"LockDeviceNow");
    if (Value)
    {
      v3 = Value;
      v4 = CFGetTypeID(Value);
      if (v4 == CFBooleanGetTypeID())
      {
        CFBooleanGetValue(v3);
      }
    }
  }

  handleToUse(theDict);
  v5 = aks_lock_device();
  v6 = convertAKSErrorToMKB(v5);
  if (!v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    dispatch_async(v7, &__block_literal_global);
  }

  return v6;
}

void __MKBLockDevice_block_invoke()
{
  v0 = +[MKBKeyStoreDevice sharedService];
  [v0 Event:8];
}

uint64_t MKBLockDeviceNow(const __CFDictionary *a1)
{
  handleToUse(a1);
  v1 = aks_lock_device();
  v2 = convertAKSErrorToMKB(v1);
  if (!v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    dispatch_async(v3, &__block_literal_global_5);
  }

  return v2;
}

void __MKBLockDeviceNow_block_invoke()
{
  v0 = +[MKBKeyStoreDevice sharedService];
  [v0 Event:8];
}

uint64_t MKBSeshatDebug(uint64_t a1)
{
  v2 = +[MKBKeyStoreDevice sharedService];
  [v2 SeshatDebug:a1];

  return 0;
}

uint64_t _MKBVerifyPasswordWithContext(uint64_t a1, const __CFDictionary *a2, const __CFData *a3, const __CFData *a4)
{
  v8 = should_use_memento(a2);
  if (a4 && v8)
  {
    debuglog("_MKBVerifyPasswordWithContext", @"memento verifiers and acm context are unsupported", v9, v10, v11, v12, v13, v14, v21);
    return 4294967279;
  }

  handleToUse(a2);
  if (a3)
  {
    CFDataGetBytePtr(a3);
    CFDataGetLength(a3);
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a4)
  {
LABEL_6:
    CFDataGetBytePtr(a4);
    CFDataGetLength(a4);
  }

LABEL_8:
  v16 = aks_verify_password_with_opts();
  if (v16 == -536362987)
  {
    v17 = *MEMORY[0x1E695E480];
    if (a2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v17, 0, a2);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v19 = MutableCopy;
    CFDictionaryAddValue(MutableCopy, @"VerifyOnly", *MEMORY[0x1E695E4D0]);
    v20 = MKBUnlockDeviceForACMRef(a1, a3, v19, a4);
    CFRelease(v19);
    return v20;
  }

  else
  {

    return convertAKSErrorToMKB(v16);
  }
}

uint64_t MKBGetDeviceLockStateIndirect(const __CFDictionary *a1)
{
  Int = 0xFFFFFFFFLL;
  v7 = -1;
  if (a1)
  {
    if (CFDictionaryContainsKey(a1, @"ExtendedDeviceLockState"))
    {
      v3 = _getBool(a1, @"ExtendedDeviceLockState") != 0;
    }

    else
    {
      v3 = 0;
    }

    if (CFDictionaryContainsKey(a1, @"DeviceHandle"))
    {
      Int = _getInt(a1, @"DeviceHandle");
    }

    if (CFDictionaryContainsKey(a1, kMKBUserSessionIDKey))
    {
      Int = _getInt(a1, kMKBUserSessionIDKey);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = +[MKBKeyStoreDevice sharedService];
  v5 = [v4 getDeviceLockStateForUser:Int extendedState:v3 withLockStateInfo:&v7];

  if (v5)
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t MKBSetSpacedRepetitionMode(uint64_t a1)
{
  v2 = +[MKBKeyStoreDevice sharedService];
  v3 = [v2 setSpacedRepetitionMode:a1];

  return v3;
}

uint64_t _MKBDeviceSetGracePeriod(const __CFData *a1, int a2, const __CFDictionary *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294967291;
  }

  v7 = Mutable;
  Value = CFDictionaryGetValue(a3, @"GracePeriod");
  if (Value)
  {
    v9 = Value;
    v10 = CFGetTypeID(Value);
    if (v10 == CFNumberGetTypeID())
    {
      CFDictionarySetValue(v7, @"GracePeriod", v9);
    }
  }

  v11 = CFDictionaryGetValue(a3, @"DeviceHandle");
  if (v11)
  {
    v12 = v11;
    v13 = CFGetTypeID(v11);
    if (v13 == CFNumberGetTypeID())
    {
      CFDictionarySetValue(v7, @"DeviceHandle", v12);
    }
  }

  if (a2)
  {
    v14 = MKBSetDeviceConfigurationsWithACM(a1, v7);
  }

  else
  {
    v14 = MKBSetDeviceConfigurations(a1, v7);
  }

  v15 = v14;
  CFRelease(v7);
  _getLongLongInt(a3, @"GracePeriod");
  debuglog("_MKBDeviceSetGracePeriod", @"MKBDeviceSetGracePeriod(acm:%d): To (%lld)AKS return Value is %d\n", v16, v17, v18, v19, v20, v21, a2);
  return v15;
}

__CFDictionary *MKBDeviceGetGracePeriod(const __CFDictionary *a1)
{
  v1 = MKBGetDeviceConfigurations(a1);
  if (v1)
  {
    v9 = v1;
    dict = create_dict();
    Value = CFDictionaryGetValue(v9, @"GracePeriod");
    if (Value)
    {
      v12 = Value;
      v13 = CFGetTypeID(Value);
      if (v13 == CFNumberGetTypeID())
      {
        CFDictionarySetValue(dict, @"GracePeriod", v12);
      }
    }

    CFRelease(v9);
  }

  else
  {
    MKBDeviceGetGracePeriod_cold_1(0, v2, v3, v4, v5, v6, v7, v8, v15);
    return 0;
  }

  return dict;
}

uint64_t MKBSetDeviceConfigurations(const __CFData *a1, const __CFDictionary *a2)
{
  handleToUse(a2);
  if (a1)
  {
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
  }

  v3 = aks_set_configuration();

  return convertAKSErrorToMKB(v3);
}

uint64_t MKBSetDeviceConfigurationsWithACM(const __CFData *a1, const __CFDictionary *a2)
{
  handleToUse(a2);
  if (a1)
  {
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
  }

  v3 = aks_set_configuration_with_acm();

  return convertAKSErrorToMKB(v3);
}

void log_blob(char a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  debuglog("log_blob", @"%s (%d):\n", a3, a4, a5, a6, a7, a8, a1);
  if (v8 >= 1)
  {
    do
    {
      if (v8 >= 0x40)
      {
        v10 = 64;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10;
      v12 = a2;
      v13 = &log_blob_buf;
      do
      {
        v14 = *v12++;
        snprintf(v13, 3uLL, "%02x", v14);
        v13 += 2;
        --v11;
      }

      while (v11);
      debuglog("log_blob", @"%d: %s\n", v15, v16, v17, v18, v19, v20, v10);
      a2 += v10;
      v21 = __OFSUB__(v8, v10);
      v8 -= v10;
    }

    while (!((v8 < 0) ^ v21 | (v8 == 0)));
  }
}

BOOL quick_der_check(uint64_t a1, uint64_t a2)
{
  v2 = a1 + a2;
  ccder_decode_tag();
  v3 = ccder_decode_len();
  if (v3)
  {
    v4 = v2 > v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 && v2 == v3;
}

uint64_t MKBKeyBagKeyStashDestroy()
{
  v0 = +[MKBKeyStoreDevice sharedService];
  v1 = [v0 stashDestroy];

  debuglog("MKBKeyBagKeyStashDestroy", @"result = %d", v2, v3, v4, v5, v6, v7, v1);
  return v1;
}

uint64_t MKBKeyBagKeyStashPersistWithOpts(const __CFDictionary *a1)
{
  handleToUse(a1);
  v1 = aks_stash_persist();
  v2 = convertAKSErrorToMKB(v1);
  debuglog("MKBKeyBagKeyStashPersistWithOpts", @"result = %d, (handle:%d)", v3, v4, v5, v6, v7, v8, v2);
  return v2;
}

uint64_t MKBKeyBagKeyStashLoadWithOpts(const __CFDictionary *a1)
{
  handleToUse(a1);
  if (aks_get_current_sep_measurement())
  {
    debuglog("MKBKeyBagKeyStashLoadWithOpts", @"failed to fetch measurement\n", v1, v2, v3, v4, v5, v6, v17);
  }

  else
  {
    log_blob("sep measurement", 0, 0, v2, v3, v4, v5, v6);
    free(0);
  }

  v7 = aks_stash_load();
  if (v7)
  {
    v14 = 4294967287;
  }

  else
  {
    v14 = 0;
  }

  v15 = -9;
  if (!v7)
  {
    v15 = 0;
  }

  debuglog("MKBKeyBagKeyStashLoadWithOpts", @"result = %d, (handle: %d)", v8, v9, v10, v11, v12, v13, v15);
  return v14;
}

uint64_t MKBKeyBagChangeSystemSecret(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[MKBKeyStoreDevice sharedService];
  v7 = [v6 changeSystemSecretFromOldPasscode:a1 ToNew:a2 withOpaqueData:a3 withParams:0];

  return v7;
}

uint64_t MKBKeyBagEffaceMementoBlob(const __CFDictionary *a1)
{
  handleToUse(a1);
  v1 = aks_memento_efface_blob();

  return convertAKSErrorToMKB(v1);
}

uint64_t MKBKeyBagCopySytemSecretBlob(uint64_t *a1)
{
  v2 = +[MKBKeyStoreDevice sharedService];
  v3 = [v2 copySytemSecretBlob];

  if (a1)
  {
    *a1 = v3;
  }

  return 0;
}

uint64_t MKBKeyBagCopySystemOpaqueBlob(void *a1)
{
  v2 = KBSystemKeyBagCopyOpaqueStuff();
  if (a1)
  {
    *a1 = v2;
  }

  return 0;
}

uint64_t MKBKeyBagCleanupAfterMigration()
{
  Value = KBLoadSystemKeyBag();
  if (Value && (Value = CFDictionaryGetValue(Value, @"KeybagxART")) == 0)
  {
    debuglog("MKBKeyBagCleanupAfterMigration", @"System KeyBag plist still contains keys! Not xART based! Do not delete!", v2, v3, v4, v5, v6, v7, vars0);
    return 0xFFFFFFFFLL;
  }

  else
  {
    KBCleanupSystemKeyBag(Value, v1, v2, v3, v4, v5, v6, v7, vars0);
    return 0;
  }
}

uint64_t MKBKeyBagSetSystemSecretBlob(uint64_t a1)
{
  v2 = +[MKBKeyStoreDevice sharedService];
  v3 = [v2 SetSystemSecretBlob:a1];

  return v3;
}

uint64_t __MKBAssertionnRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gMKBAssertionTypeID = result;
  return result;
}

uint64_t MKBDeviceLockAssertionPromote(uint64_t a1)
{
  if (!a1)
  {
    return 4294967279;
  }

  v1 = *(a1 + 24);
  v2 = *(a1 + 16);
  result = aks_assert_promote();
  if (result > -536870188)
  {
    switch(result)
    {
      case 0xE00002D5:
        return 4294967278;
      case 0:
        return result;
      case 0xE00002E2:
        return 4294967284;
    }

    return 0xFFFFFFFFLL;
  }

  if (result == -536870207)
  {
    return 4294967280;
  }

  if (result == -536870206)
  {
    return 4294967279;
  }

  return 0xFFFFFFFFLL;
}

const void *MKBDeviceLockAssertionConsume(const __CFDictionary *a1, CFErrorRef *a2)
{
  v4 = *MEMORY[0x1E695E480];
  pthread_once(&MKBAssertionGetTypeID_typeIDInit, __MKBAssertionnRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v7 = (Instance + 16);
    *(Instance + 24) = handleToUse(a1);
    v8 = aks_assert_consume();
    v9 = 1;
    if (v8 <= -536870188)
    {
      if (v8 == -536870207)
      {
        goto LABEL_11;
      }
    }

    else
    {
      switch(v8)
      {
        case 0:
          *v7 = 0x100000000;
          return v6;
        case -536870174:
LABEL_11:
          CFRelease(v6);
          if (a2)
          {
            goto LABEL_12;
          }

          return 0;
        case -536870187:
          v9 = 16;
          goto LABEL_11;
      }
    }

    v9 = 22;
    goto LABEL_11;
  }

  v9 = 12;
  if (a2)
  {
LABEL_12:
    v6 = 0;
    *a2 = CFErrorCreate(0, *MEMORY[0x1E695E640], v9, 0);
    return v6;
  }

  return 0;
}

uint64_t MKBKeyBagGetAKSHandle(uint64_t a1, _DWORD *a2)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t MKBKeyBagHandleGetTypeID()
{
  if (MKBKeyBagHandleGetTypeID_onlyOnce != -1)
  {
    MKBKeyBagHandleGetTypeID_cold_1();
  }

  return MKBKeyBagHandleGetTypeID___MKBKeyBagHandleTypeID;
}

uint64_t __MKBKeyBagHandleGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  MKBKeyBagHandleGetTypeID___MKBKeyBagHandleTypeID = result;
  return result;
}

uint64_t MKBKeyBagCreateEscrow(const __CFData *a1, uint64_t *a2)
{
  if (a1)
  {
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
  }

  escrow_bag = aks_create_escrow_bag();
  if (escrow_bag)
  {
    return convertAKSErrorToMKB(escrow_bag);
  }

  v6 = __kbHandleWithKernelHandle(0, 0);
  *a2 = v6;
  if (v6)
  {
    return 0;
  }

  else
  {
    return 4294967291;
  }
}

uint64_t __kbHandleWithKernelHandle(int a1, char a2)
{
  if (MKBKeyBagHandleGetTypeID_onlyOnce != -1)
  {
    MKBKeyBagHandleGetTypeID_cold_1();
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = a1;
    *(result + 20) = a2;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t MKBKeyBagCreateEscrowWithAuth(const __CFData *a1, CFDataRef theData, uint64_t *a3)
{
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    if (!a1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
  }

LABEL_5:
  escrow_bag_with_auth = aks_create_escrow_bag_with_auth();
  if (escrow_bag_with_auth)
  {
    return convertAKSErrorToMKB(escrow_bag_with_auth);
  }

  v8 = __kbHandleWithKernelHandle(0, 0);
  *a3 = v8;
  if (v8)
  {
    return 0;
  }

  else
  {
    return 4294967291;
  }
}

uint64_t MKBKeyBagCreateEscrowWithACM(const __CFData *a1, CFDataRef theData, uint64_t *a3)
{
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    if (!a1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
  }

LABEL_5:
  escrow_bag_with_acm = aks_create_escrow_bag_with_acm();
  if (escrow_bag_with_acm)
  {
    return convertAKSErrorToMKB(escrow_bag_with_acm);
  }

  v8 = __kbHandleWithKernelHandle(0, 0);
  *a3 = v8;
  if (v8)
  {
    return 0;
  }

  else
  {
    return 4294967291;
  }
}

uint64_t MKBKeyBagCreateBackup(CFDataRef theData, uint64_t *a2)
{
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
  }

  result = aks_create_bag();
  if (result)
  {
    return convertAKSErrorToMKB(result);
  }

  v5 = __kbHandleWithKernelHandle(0, 0);
  *a2 = v5;
  result = v5 ? 0 : 4294967291;
  if (theData && v5)
  {
    if (CFDataGetLength(theData) < 1)
    {
      return 0;
    }

    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    v6 = *a2;
    result = aks_prederived_create();
    if (result)
    {
      return convertAKSErrorToMKB(result);
    }
  }

  return result;
}

uint64_t _MKBKeyBagCreateOTABackup(CFDataRef theData, int a2, uint64_t *a3)
{
  if (a2)
  {
    if (theData)
    {
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
    }

    bag_with_acm = aks_create_bag_with_acm();
    if (bag_with_acm)
    {
      return convertAKSErrorToMKB(bag_with_acm);
    }
  }

  else
  {
    if (theData)
    {
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
    }

    bag_with_acm = aks_create_bag();
    if (bag_with_acm)
    {
      return convertAKSErrorToMKB(bag_with_acm);
    }
  }

  v7 = __kbHandleWithKernelHandle(-1, 1);
  *a3 = v7;
  if (v7)
  {
    return 0;
  }

  else
  {
    return 4294967291;
  }
}

uint64_t _MKBKeyBagRegisterOTABackup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[MKBKeyStoreDevice sharedService];
  v7 = [v6 registerOTABackup:a1 withSecret:a2 secretIsACM:a3];

  return v7;
}

uint64_t _MKBBackupEnableForVolume(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, CFDataRef *a5)
{
  v10 = +[MKBKeyStoreDevice sharedService];
  v14 = 0;
  v11 = [v10 enableBackupForVolume:a1 withSecret:a2 secretIsACM:a3 bagData:&v14];
  v12 = v14;

  if (a5 && v12)
  {
    v11 = MKBBackupCopyBackupBagUUIDForBag(v12, a5);
  }

  if (!v11)
  {
    *a4 = v12;
  }

  return v11;
}

uint64_t MKBBackupDisableForVolume(uint64_t a1)
{
  v2 = +[MKBKeyStoreDevice sharedService];
  v3 = [v2 disableBackupForVolume:a1];

  return v3;
}

uint64_t MKBBackupCopyBackupBagUUIDForVolume(const __CFData *a1, CFDataRef *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(dst, 0, sizeof(dst));
  *bytes = 0;
  v15 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  uuid_copy(dst, BytePtr);
  v4 = aks_backup_copy_current_bag_uuid();
  v11 = v4;
  if (v4)
  {
    debuglog("MKBBackupCopyBackupBagUUIDForVolume", @"Failed to get backup bag uuid for volume: %x", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *a2 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
  }

  result = convertAKSErrorToMKB(v11);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MKBBackupCopyBackupBagUUIDForBag(const __CFData *a1, CFDataRef *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *bytes = 0;
  v15 = 0;
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  v4 = aks_backup_copy_bag_uuid();
  v11 = v4;
  if (v4)
  {
    debuglog("MKBBackupCopyBackupBagUUIDForBag", @"Failed to get backup bag uuid from data: %x", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *a2 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
  }

  result = convertAKSErrorToMKB(v11);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MKBKeyBagUnlock(uint64_t a1, CFDataRef theData)
{
  v4 = *(a1 + 16);
  if (*(a1 + 24))
  {
    if (theData)
    {
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
      v5 = *(a1 + 24);
    }

    v6 = aks_prederived_unlock_keybag();
    if (v6)
    {
      v13 = v6;
      debuglog("MKBKeyBagUnlock", @"aks_prederived_unlock_keybag() returned %d", v7, v8, v9, v10, v11, v12, v6);
      goto LABEL_11;
    }
  }

  else
  {
    if (theData)
    {
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
    }

    v14 = aks_unlock_bag();
    if (v14)
    {
      v13 = v14;
      debuglog("MKBKeyBagUnlock", @"aks_unlock_bag() returned %d", v7, v8, v9, v10, v11, v12, v14);
      goto LABEL_11;
    }
  }

  debuglog("MKBKeyBagUnlock", @"unlocked bag %d", v7, v8, v9, v10, v11, v12, *(a1 + 16));
  v13 = 0;
LABEL_11:

  return convertAKSErrorToMKB(v13);
}

uint64_t MKBKeyBagUnlockWithACM(uint64_t a1, CFDataRef theData)
{
  if (*(a1 + 24))
  {
    v3 = 4294967274;
  }

  else
  {
    v6 = *(a1 + 16);
    if (theData)
    {
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
    }

    v3 = aks_unlock_bag_with_acm();
  }

  return convertAKSErrorToMKB(v3);
}

uint64_t MKBKeyBagCopyData(uint64_t a1, CFDataRef *a2)
{
  v3 = *(a1 + 16);
  if (aks_save_bag())
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v5 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], 0, 0, *MEMORY[0x1E695E480]);
    *a2 = v5;
    if (!v5)
    {
      return 4294967291;
    }
  }

  return 0;
}

uint64_t MKBKeyBagCreateWithData(const __CFData *a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  if (aks_load_bag())
  {
    return 0xFFFFFFFFLL;
  }

  v5 = __kbHandleWithKernelHandle(0, 0);
  *a2 = v5;
  if (!v5)
  {
    return 4294967291;
  }

  aks_prederived_is_enabled();
  return 0;
}

uint64_t MKBKeyBagChangeSecret(uint64_t a1, CFDataRef theData, const __CFData *a3)
{
  v5 = *(a1 + 16);
  if (*(a1 + 24))
  {
    if (theData)
    {
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
      if (!a3)
      {
LABEL_9:
        v6 = aks_prederived_change_secret();
        goto LABEL_12;
      }
    }

    else if (!a3)
    {
      goto LABEL_9;
    }

    CFDataGetBytePtr(a3);
    CFDataGetLength(a3);
    goto LABEL_9;
  }

  if (!theData)
  {
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  if (a3)
  {
LABEL_7:
    CFDataGetBytePtr(a3);
    CFDataGetLength(a3);
  }

LABEL_11:
  v6 = aks_change_secret();
LABEL_12:

  return convertAKSErrorToMKB(v6);
}

uint64_t MKBKeyBagChangeSecretWithACM(uint64_t a1, CFDataRef theData, const __CFData *a3)
{
  if (*(a1 + 24))
  {
    return 4294967274;
  }

  v7 = *(a1 + 16);
  if (!theData)
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  if (a3)
  {
LABEL_5:
    CFDataGetBytePtr(a3);
    CFDataGetLength(a3);
  }

LABEL_7:
  v8 = aks_change_secret_opts();

  return convertAKSErrorToMKB(v8);
}

uint64_t MKBDeviceObliterateClassDKey()
{
  v0 = aks_obliterate_class_d();

  return convertAKSErrorToMKB(v0);
}

uint64_t _MKBKeyBagCreateSystem(const __CFData *a1, const char *a2, uint64_t a3, int a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!MKBDeviceSupportsEnhancedAPFS())
  {
    v47 = 0;
    memset(&v46, 0, sizeof(v46));
    snprintf(__str, 0x401uLL, "%s/%s/%s.kb", a2, "keybags", "systembag");
    if (!stat(__str, &v46))
    {
      debuglog("_MKBKeyBagCreateSystem", @"%s already exists", v14, v15, v16, v17, v18, v19, __str);
      v13 = 4294967292;
      goto LABEL_20;
    }

    if (a4)
    {
      if (a1)
      {
        CFDataGetBytePtr(a1);
        CFDataGetLength(a1);
      }

      bag_with_acm = aks_create_bag_with_acm();
      if (bag_with_acm)
      {
LABEL_11:
        v27 = bag_with_acm;
        debuglog("_MKBKeyBagCreateSystem", @"AKS can't create bag: %08x", v21, v22, v23, v24, v25, v26, bag_with_acm);
        goto LABEL_22;
      }
    }

    else
    {
      if (a1)
      {
        CFDataGetBytePtr(a1);
        CFDataGetLength(a1);
      }

      bag_with_acm = aks_create_bag();
      if (bag_with_acm)
      {
        goto LABEL_11;
      }
    }

    v28 = aks_set_system();
    if (!v28)
    {
      v35 = KBSaveSystemBagHandle(0, a2, 0, 0, 0);
      if (v35)
      {
        v13 = v35;
        debuglog("_MKBKeyBagCreateSystem", @"Can't save the bag: %d", v36, v37, v38, v39, v40, v41, v35);
        goto LABEL_19;
      }

      if (MKBDeviceSupportsEnhancedAPFS())
      {
        v13 = 0;
LABEL_19:
        aks_unload_bag();
        goto LABEL_20;
      }

      v42 = KBMapDeviceBag(a2, 0);
LABEL_18:
      v13 = v42;
      goto LABEL_19;
    }

    v27 = v28;
    debuglog("_MKBKeyBagCreateSystem", @"Can't set the system bag: %08x", v29, v30, v31, v32, v33, v34, v28);
LABEL_22:
    v42 = convertAKSErrorToMKB(v27);
    goto LABEL_18;
  }

  debuglog("_MKBKeyBagCreateSystem", @"_MKBKeyBagCreateSystem does nothing, returning success", v7, v8, v9, v10, v11, v12, v45);
  v13 = 0;
LABEL_20:
  v43 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t _MKBKeyBagPerformRecovery(const __CFData *a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = +[MKBKeyStoreDevice sharedService];
  [v6 Event:4];

  handleToUse(a3);
  if (a1)
  {
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
  }

  if (a2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  BYTE4(v11) = 0;
  LODWORD(v11) = 0;
  LODWORD(v12) = 0;
  HIDWORD(v12) = v7;
  v8 = aks_change_secret_opts();
  if (v8 == -536362987)
  {
    v9 = [MKBKeyStoreDevice sharedService:v11];
    v8 = [v9 SeshatRecover:a1 secretIsACM:a2];
  }

  return convertAKSErrorToMKB(v8);
}

uint64_t MKBFileClose(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[257];
  if (v9 != -1)
  {
    close(v9);
  }

  v10 = *(a1 + 134);
  if (v10)
  {
    CCCryptorRelease(v10);
  }

  v11 = *(a1 + 170);
  if (v11)
  {
    deallocate_page_aligned_buffer(v11, 4096, a3, a4, a5, a6, a7, a8, v13);
  }

  bzero(a1, 0x558uLL);
  free(a1);
  return 0;
}

uint64_t init_ota(uint64_t a1, int a2)
{
  CC_SHA1_Init((a1 + 1236));
  if (!a2)
  {
    return 0;
  }

  if ((*(a1 + 1080) & 1) != 0 || (*(a1 + 1232) - 1) > 1)
  {
    goto LABEL_6;
  }

  v4 = open_dprotected_np(a1, 256, 0, 1);
  if (v4 != -1)
  {
    v5 = v4;
    close(*(a1 + 1028));
    *(a1 + 1028) = v5;
    *(a1 + 1080) = 1;
LABEL_6:
    result = 0;
    *(a1 + 1084) = 4096;
    return result;
  }

  return 4294967290;
}

uint64_t MKBFileEncryptedBlockSize(uint64_t a1)
{
  if (*(a1 + 1080) == 1)
  {
    return *(a1 + 1084);
  }

  else
  {
    return 4096;
  }
}

uint64_t MKBFileReadEncrypted(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1032))
  {
    return 0;
  }

  if (*(a1 + 1080) != 1)
  {
    return -1;
  }

  v10 = a3;
  if (!*(a1 + 1360))
  {
    *(a1 + 1360) = allocate_page_aligned_buffer(0x1000uLL);
  }

  if ((v10 & 0xFFF) != 0)
  {
    debuglog("MKBFileReadEncrypted", @"Buffer size %zu not multiple of %zu\n", a3, a4, a5, a6, a7, a8, v10);
    return -1;
  }

  memset(&v32, 0, sizeof(v32));
  if (fstat(*(a1 + 1028), &v32) < 0)
  {
    v16 = __error();
    v30 = strerror(*v16);
    debuglog("MKBFileReadEncrypted", @"fstat() failed:%s\n", v17, v18, v19, v20, v21, v22, v30);
    return -1;
  }

  if (v10 < 1)
  {
    return 0;
  }

  v8 = 0;
  while (!*(a1 + 1032))
  {
    v13 = readn(*(a1 + 1028), *(a1 + 1360), 0x1000uLL);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v23 = __error();
      v31 = strerror(*v23);
      debuglog("MKBFileReadEncrypted", @"read() failed:%s\n", v24, v25, v26, v27, v28, v29, v31);
      return -1;
    }

    if (!v13 || (v14 = (v13 + 4095) & 0x7FFFFFFFFFFFF000, memcpy(a2, *(a1 + 1360), v14), CC_SHA1_Update((a1 + 1236), *(a1 + 1360), v14), (*(a1 + 1336) += v14) == 0))
    {
      *(a1 + 1032) = 1;
      *a2 = bswap64(*(a1 + 1184));
      CC_SHA1_Final(a2 + 8, (a1 + 1236));
      v14 = 28;
    }

    a2 += v14;
    v8 += v14;
    v15 = v10 > v14;
    if (v10 >= v14)
    {
      v10 -= v14;
    }

    else
    {
      v10 = 0;
    }

    if (!v15)
    {
      return v8;
    }
  }

  return v8;
}

vm_address_t allocate_page_aligned_buffer(vm_size_t size)
{
  address = 0;
  if (vm_allocate(*MEMORY[0x1E69E9A60], &address, size, -268435455))
  {
    debuglog("allocate_page_aligned_buffer", @"Failed to allocate page aligned buffer", v1, v2, v3, v4, v5, v6, v8);
  }

  return address;
}

size_t readn(int a1, char *a2, size_t a3)
{
  if (a3)
  {
    v6 = a3;
    while (1)
    {
      v7 = read(a1, a2, v6);
      if (v7 == -1)
      {
        if (*__error() != 4)
        {
          return -1;
        }

        v7 = 0;
      }

      else if (!v7)
      {
        return a3 - v6;
      }

      a2 += v7;
      v6 -= v7;
      if (!v6)
      {
        return a3 - v6;
      }
    }
  }

  v6 = 0;
  return a3 - v6;
}

uint64_t MKBFileRead(uint64_t a1, char *a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1080) != 1)
  {
    v44 = 0;
    dataOutMoved = 0;
    if (!make_random_key(a1))
    {
      if ((a3 & 0xF) == 0)
      {
        if (*(a1 + 1032))
        {
          return 0;
        }

        v18 = readn(*(a1 + 1028), a2, a3);
        if ((v18 & 0x8000000000000000) != 0)
        {
          v27 = __error();
          v43 = strerror(*v27);
          debuglog("MKBFileReadTranscrypt", @"read() failed:%s\n", v28, v29, v30, v31, v32, v33, v43);
          return -1;
        }

        v19 = v18;
        if (v18)
        {
          v20 = CCCryptorUpdate(*(a1 + 1072), a2, v18, a2, a3, &dataOutMoved);
          if (v20)
          {
            debuglog("MKBFileReadTranscrypt", @"CCCryptorUpdate() failed:%d\n", v21, v22, v23, v24, v25, v26, v20);
            return -1;
          }

          v34 = dataOutMoved;
        }

        else
        {
          v34 = 0;
        }

        if (v19 >= a3)
        {
          v42 = 0;
        }

        else
        {
          *(a1 + 1032) = 1;
          v35 = CCCryptorFinal(*(a1 + 1072), &a2[v34], a3 - v34, &v44);
          if (v35)
          {
            debuglog("MKBFileReadTranscrypt", @"CCCCryptorFinal() failed:%d\n", v36, v37, v38, v39, v40, v41, v35);
            return -1;
          }

          v42 = v44;
          v34 = dataOutMoved;
        }

        return v34 + v42;
      }

      debuglog("MKBFileReadTranscrypt", @"Buffer size %zu not multiple of %d\n", v12, v13, v14, v15, v16, v17, a3);
    }

    return -1;
  }

  return MKBFileReadEncrypted(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t MKBFileValidateWrappedKey(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  if (!theData || *(a2 + 20) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((CFDataGetLength(theData) & 0xFFFFFFFFFFFFFF7FLL) == 0x2C)
  {
    if (!*(a1 + 1072) || CFDataGetLength(theData) < 4)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = *CFDataGetBytePtr(theData);
  }

  else
  {
    if (CFDataGetLength(theData) < 0x1C)
    {
      return 0xFFFFFFFFLL;
    }

    BytePtr = CFDataGetBytePtr(theData);
    if (*(BytePtr + 3) != *(a1 + 1096) || *BytePtr != *(a1 + 1168) || *(BytePtr + 1) != *(a1 + 1176))
    {
      return 0xFFFFFFFFLL;
    }

    v5 = bswap32(*(CFDataGetBytePtr(theData) + 6));
  }

  if (!init_ota(a1, 1) && *(a1 + 1232) == v5)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t MKBFileCopyWrappedKey_OTA(int64x2_t *a1, __CFData **a2)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  *bytes = vmovn_s64(a1[73]);
  v24 = a1[68].i32[0];
  v25 = a1[68].i64[1];
  CFDataAppendBytes(Mutable, bytes, 20);
  *v22 = bswap32(a1[67].u32[3]);
  CFDataAppendBytes(Mutable, v22, 4);
  if (a1[67].i8[8] != 1 || (v5 = open(a1->i8, 256), v5 < 0))
  {
    v7 = a1[64].i32[1];
    v6 = v7;
  }

  else
  {
    v6 = v5;
    v7 = a1[64].i32[1];
  }

  v8 = MKBCopyCryptoIDKeysForFileDescriptor(v7, 0, 0);
  if (v8)
  {
    v9 = v8;
    if (CFDataGetLength(v8) >= 8)
    {
      BytePtr = CFDataGetBytePtr(v9);
      v17 = bswap32(*(BytePtr + 6));
      if (v17 == a1[77].i32[0])
      {
        v18 = BytePtr;
        CFDataAppendBytes(Mutable, BytePtr + 24, 4);
        Length = CFDataGetLength(v9);
        CFDataAppendBytes(Mutable, v18 + 36, Length - 36);
        *a2 = Mutable;
        CFRelease(v9);
        return 0;
      }

      v21 = a1[77].u32[0];
      debuglog("MKBFileCopyWrappedKey_OTA", @"Protection class changed from %d to %d", v11, v12, v13, v14, v15, v16, v17);
      CFRelease(v9);
    }
  }

  if (v6 != -1)
  {
    close(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  *a2 = 0;
  return 0xFFFFFFFFLL;
}

CFMutableDataRef MKBCopyCryptoIDKeysForFileDescriptor(int a1, const __CFData *a2, void *a3)
{
  v5 = a1;
  v182[2] = *MEMORY[0x1E69E9840];
  v182[0] = 0;
  v182[1] = 0;
  *uu2 = 0;
  v181 = 0;
  if (ffsctl(a1, 0x40104A60uLL, v182, 0))
  {
    v6 = __error();
    strerror(*v6);
    debuglog("MKBCopyCryptoIDKeysForFileDescriptor", @"Can't get volume uuid for fd %d: %s", v7, v8, v9, v10, v11, v12, v5);
LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v13 = aks_backup_copy_current_bag_uuid();
  if (v13)
  {
    debuglog("MKBCopyCryptoIDKeysForFileDescriptor", @"Error from aks_backup_copy_current_bag_uuid: %d", v14, v15, v16, v17, v18, v19, v13);
    goto LABEL_5;
  }

  all_crypto_ids = _apfs_get_all_crypto_ids(v5);
  if (!all_crypto_ids)
  {
    memset(&dst, 0, sizeof(dst));
    if (!fstat(v5, &dst))
    {
      debuglog("MKBCopyCryptoIDKeysForFileDescriptor", @"file size %lld bytes", v142, v143, v144, v145, v146, v147, dst.st_size);
    }

    goto LABEL_5;
  }

  v30 = all_crypto_ids;
  all_crypto_ids[4];
  debuglog("MKBCopyCryptoIDKeysForFileDescriptor", @"found %d extent%s", v24, v25, v26, v27, v28, v29, all_crypto_ids[4]);
  v31 = v30[4];
  KBPostAggdDistribution(@"com.apple.mobile.keybagd.db.file.extents.number", 0, 0xAu);
  Mutable = CFDataCreateMutable(0, 0);
  v20 = Mutable;
  if (v30[4])
  {
    v157 = a3;
    v39 = 0;
    v167 = 0;
    v40 = v30 + 8;
    v156 = *MEMORY[0x1E696A768];
    v41 = "MKBCopyCryptoIDKeysForFileDescriptor";
    v165 = v30 + 8;
    cf = Mutable;
    v163 = a2;
    v164 = v5;
    v162 = v30;
    while (1)
    {
      memset(&dst.st_atimespec, 0, 76);
      *&dst.st_dev = 0u;
      *&dst.st_uid = 0xFFFFFFFFFFFFFFFFLL;
      v42 = &v40[12 * v39];
      v43 = *(v42 + 2);
      *bytes = bswap64(*(v42 + 1));
      if (v43 == -1)
      {
        break;
      }

      v44 = v30[4];
      if ((v43 & 0x8000000000000000) == 0)
      {
        v152 = v30[4];
        debuglog(v41, @"looking for backup key for crypto_id 0x%016qx (%d of %u)", v33, v34, v35, v36, v37, v38, v43);
        v169 = &v40[12 * v39];
        if (a2)
        {
          BytePtr = CFDataGetBytePtr(a2);
          Length = CFDataGetLength(a2);
          if (_MKBBackupCheckKey(BytePtr, Length, v47, v48, v49, v50, v51, v52))
          {
            v69 = -19;
          }

          else
          {
            if (Length)
            {
              v59 = 0;
              v60 = BytePtr;
              while (1)
              {
                v61 = bswap32(*(v60 + 8));
                v62 = bswap64(*(v60 + 2));
                v150 = bswap64(*&v60[v61 + 36]);
                v153 = bswap32(*(v60 + 6));
                debuglog("copy_rewrapped_key_from_existing_key", @"crypto_id = 0x%016llx, extent_size = %llu, key class = %u", v53, v54, v55, v56, v57, v58, v62);
                if (v62 == v43)
                {
                  debuglog("copy_rewrapped_key_from_existing_key", @"Found target crypto_id", v53, v54, v55, v56, v57, v58, v148);
                  if (!uuid_compare(v60, uu2))
                  {
                    __memcpy_chk();
                    v168 = 0;
                    v84 = 0;
                    a2 = v163;
                    v5 = v164;
                    v30 = v162;
                    goto LABEL_33;
                  }

                  debuglog("copy_rewrapped_key_from_existing_key", @"Bag uuid mismatch, ignore", v63, v64, v65, v66, v67, v68, v148);
                }

                v59 += v61 + 44;
                v60 = &BytePtr[v59];
                if (v59 >= Length)
                {
                  v69 = -8;
                  a2 = v163;
                  v5 = v164;
                  v30 = v162;
                  goto LABEL_26;
                }
              }
            }

            v69 = -8;
          }

LABEL_26:
          MKBCopyCryptoIDKeysForFileDescriptor_cold_1(v69, &p_dst);
          v168 = p_dst;
        }

        else
        {
          v168 = 0;
        }

        v170 = 0;
        v85 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v182 length:16 freeWhenDone:0];
        v86 = +[MKBKeyStoreDevice sharedService];
        v87 = [v86 getBackupkeyForVolume:v85 andCryptoID:v43 withError:&v170];

        if (v87)
        {
          debuglog("copy_rewrapped_key_from_db", @"found rewrapped key in MKB backup db", v88, v89, v90, v91, v92, v93, v148);
          [v87 getBytes:&dst length:{objc_msgSend(v87, "length")}];
          v100 = 0x1E696A000;
          if (uuid_compare(&dst, uu2))
          {
            debuglog("copy_rewrapped_key_from_db", @"key found in db doesn't match current backup bag!!", v94, v95, v96, v97, v98, v99, v148);
            v101 = 0;
          }

          else
          {
            v101 = 1;
          }
        }

        else
        {
          v101 = 0;
          v100 = 0x1E696A000;
        }

        v84 = v170;
        if (v101)
        {
LABEL_33:
          v40 = v165;
          v20 = cf;
          goto LABEL_34;
        }

        v161 = v84;
        v172 = 0;
        p_dst = &dst;
        debuglog("copy_rewrapped_key_from_file", @"getting wrapped key from aks", v78, v79, v80, v81, v82, v83, v148);
        v105 = _apfs_copy_wrapped_key_from_file(v5, v43, &v172);
        if (!v105)
        {
          v112 = v172;
          v113 = v172;
          goto LABEL_46;
        }

        v106 = v105;
        if (v167)
        {
          v107 = v167[5];
          v108 = *(v105 + 5);
          v109 = *v167;
          v110 = *(v105 + 4);
          v148 = &dst;
          v111 = aks_backup_rewrap_ek();
        }

        else
        {
          v114 = *(v105 + 5);
          v115 = *v105;
          v116 = *(v105 + 4);
          v111 = aks_backup_rewrap_key();
        }

        v117 = v111;
        free(v106);
        if (v117)
        {
          v112 = [MEMORY[0x1E696ABC0] errorWithDomain:v156 code:v117 userInfo:0];
          v118 = v112;
          v149 = v117;
          v100 = 0x1E696A000;
          debuglog("copy_rewrapped_key_from_file", @"aks_backup_rewrap_key() failed: %d", v119, v120, v121, v122, v123, v124, v149);
          goto LABEL_46;
        }

        if (uuid_compare(&dst, uu2))
        {
          debuglog("copy_rewrapped_key_from_file", @"backup key doesn't match current bag uuid!!", v78, v79, v80, v81, v82, v83, v148);
          v112 = 0;
          v100 = 0x1E696A000uLL;
LABEL_46:
          v125 = v112;
          v155 = v30[4];
          debuglog("MKBCopyCryptoIDKeysForFileDescriptor", @"Could not get the backup key for crypto ID 0x%016qx (%d of %u, existing keys: %s, found1:%d, found2:%d, found3:%d)", v126, v127, v128, v129, v130, v131, v43);
          v158 = *(v100 + 3008);
          v174 = @"cryptoId";
          v159 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v43];
          v178[0] = v159;
          v175 = @"existingKeyError";
          v132 = ObjectOrNull(v168);
          v178[1] = v132;
          v176 = @"dbError";
          v133 = ObjectOrNull(v161);
          v178[2] = v133;
          v177 = @"fileError";
          v160 = v125;
          v134 = ObjectOrNull(v125);
          v178[3] = v134;
          v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v178 forKeys:&v174 count:4];
          v102 = [v158 errorWithDomain:@"MobileKeyBagError" code:-8 userInfo:v135];

          debuglog("MKBCopyCryptoIDKeysForFileDescriptor", @"Error: %@", v136, v137, v138, v139, v140, v141, v102);
          if (v157)
          {
            *v157 = v102;
          }

          free(v167);
          free(v30);
          v20 = cf;
          CFRelease(cf);

          v103 = 0;
          v76 = 0;
          v40 = v165;
          v84 = v161;
        }

        else
        {
          if (bswap64(*&dst.st_uid) != v43)
          {
            debuglog("copy_rewrapped_key_from_file", @"whoa, cryptoID does not match backup_key.inode: %llu vs %llu", v78, v79, v80, v81, v82, v83, bswap64(v175));
            *&p_dst->st_uid = bswap64(v43);
          }

          v40 = v165;
          v20 = cf;
          v84 = v161;
LABEL_34:
          if (LODWORD(dst.st_atimespec.tv_sec))
          {
            v102 = 0;
            v76 = bswap32(dst.st_atimespec.tv_sec);
            v103 = 1;
          }

          else
          {
            v104 = v84;
            debuglog("MKBCopyCryptoIDKeysForFileDescriptor", @"got zero-length key for non-sparse crypto id", v78, v79, v80, v81, v82, v83, v148);
            free(v30);
            CFRelease(v20);
            v84 = v104;
            v103 = 0;
            v76 = 0;
            v102 = 0;
          }
        }

        v77 = "MKBCopyCryptoIDKeysForFileDescriptor";
        if ((v103 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_50:
        debuglog(v77, @"got extent size %llu, keysize %d", v70, v71, v72, v73, v74, v75, *(v169 + 1));
        CFDataAppendBytes(v20, &dst, v76 + 36);
        CFDataAppendBytes(v20, bytes, 8);
        v41 = v77;
        goto LABEL_51;
      }

      v154 = v30[4];
      debuglog(v41, @"looking for ekwk, crypto_id 0x%016qx (%d of %u)", v33, v34, v35, v36, v37, v38, v43);
      v167 = _apfs_copy_wrapped_key_from_file(v5, v43, 0);
LABEL_51:
      if (++v39 >= v30[4])
      {
        goto LABEL_60;
      }
    }

    v169 = &v40[12 * v39];
    v151 = v30[4];
    debuglog(v41, @"found sparse extent (%d of %u)", v33, v34, v35, v36, v37, v38, v39);
    uuid_copy(&dst, uu2);
    v76 = 0;
    v77 = v41;
    goto LABEL_50;
  }

  v167 = 0;
LABEL_60:
  free(v167);
  free(v30);
LABEL_6:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t MKBFileCopyWrappedKey()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v26 = *MEMORY[0x1E69E9840];
  length = 0x8000;
  if (*(v3 + 20) == 1 && init_ota(v0, 1))
  {
    goto LABEL_3;
  }

  if (v5[67].i8[8] != 1)
  {
    if (!make_random_key(v5))
    {
      if (v5[77].i32[0] == 7)
      {
        v10 = 17;
      }

      else
      {
        v10 = v5[77].i32[0];
      }

      *bytes = v10;
      v11 = *(v4 + 16);
      v12 = aks_wrap_key();
      v13 = convertAKSErrorToMKB(v12);
      if (v13)
      {
        v6 = v13;
        v22 = v5[77].u32[0];
        debuglog("MKBFileCopyWrappedKey", @"aks_wrap_key error class: %d (%d) result: %d", v14, v15, v16, v17, v18, v19, v10);
      }

      else
      {
        Mutable = CFDataCreateMutable(0, 172);
        if (Mutable)
        {
          v21 = Mutable;
          CFDataAppendBytes(Mutable, bytes, 4);
          CFDataAppendBytes(v21, &length_4, length);
          v6 = 0;
          *v2 = v21;
        }

        else
        {
          v6 = 4294967291;
        }
      }

      goto LABEL_4;
    }

LABEL_3:
    v6 = 0xFFFFFFFFLL;
LABEL_4:
    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MKBFileCopyWrappedKey_OTA(v5, v2);
}

void deallocate_page_aligned_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (MEMORY[0x1CCA7ACA0](*MEMORY[0x1E69E9A60], a1, a2))
  {

    debuglog("deallocate_page_aligned_buffer", @"Failed to deallocate page aligned buffer", v9, v10, v11, v12, v13, v14, a9);
  }
}

uint64_t MKBBackupOpen(const char *a1, void *a2)
{
  memset(&v33, 0, sizeof(v33));
  v4 = open_dprotected_np(a1, 256, 0, 1);
  v5 = __error();
  if (v4 == -1)
  {
    v8 = *v5;
    strerror(*v5);
    debuglog("MKBBackupOpen", @"failed to open_dprotected_np(%s): %s", v21, v22, v23, v24, v25, v26, a1);
LABEL_10:
    *__error() = v8;
    return 0xFFFFFFFFLL;
  }

  v6 = fstat(v4, &v33);
  v7 = __error();
  v8 = *v7;
  if (v6 == -1)
  {
    strerror(*v7);
    debuglog("MKBBackupOpen", @"failed to stat(%s): %s", v27, v28, v29, v30, v31, v32, a1);
LABEL_9:
    close(v4);
    goto LABEL_10;
  }

  v9 = malloc_type_calloc(1uLL, 0x28uLL, 0x1080040265FDEEEuLL);
  if (!v9)
  {
    MKBBackupOpen_cold_1(0, v10, v11, v12, v13, v14, v15, v16);
    goto LABEL_9;
  }

  v17 = v9;
  *v9 = v4;
  v18 = open(a1, 256);
  result = 0;
  v17[1] = v18;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  st_size = v33.st_size;
  *(v17 + 3) = v33.st_ino;
  *(v17 + 4) = st_size;
  *a2 = v17;
  return result;
}

uint64_t MKBBackupGetFileDescriptors(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a2 = a1[1];
      *a3 = *a1;
    }
  }

  return result;
}

uint64_t MKBBackupCreateFromFileDescriptors(int a1, int a2, int **a3)
{
  memset(&v17, 0, sizeof(v17));
  if (fstat(a2, &v17) == -1)
  {
    MKBBackupCreateFromFileDescriptors_cold_2(a2);
    return 0xFFFFFFFFLL;
  }

  v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x1080040265FDEEEuLL);
  if (!v6)
  {
    MKBBackupCreateFromFileDescriptors_cold_1(0, v7, v8, v9, v10, v11, v12, v13);
    return 0xFFFFFFFFLL;
  }

  v14 = v6;
  result = 0;
  *v14 = a2;
  v14[1] = a1;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  st_size = v17.st_size;
  *(v14 + 3) = v17.st_ino;
  *(v14 + 4) = st_size;
  *a3 = v14;
  return result;
}

uint64_t MKBBackupPread(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a3 && ((*(a1 + 32) + 15) & 0xFFFFFFFFFFFFFFF0) >= a4)
  {
    v12 = a4 + a3;
    v13 = (a4 + a3 + 4095) & 0xFFFFFFFFFFFFF000;
    v14 = v13 - (a4 & 0xFFFFFFFFFFFFF000);
    if (v13 <= (a4 & 0xFFFFFFFFFFFFF000))
    {
      return -1;
    }

    page_aligned_buffer = *(a1 + 8);
    v17 = *(a1 + 16);
    if (v14 > v17)
    {
      if (v17 && page_aligned_buffer)
      {
        deallocate_page_aligned_buffer(*(a1 + 8), *(a1 + 16), a3, a4, a5, a6, a7, a8, v35);
      }

      *(a1 + 16) = v14;
      page_aligned_buffer = allocate_page_aligned_buffer(v13 - (a4 & 0xFFFFFFFFFFFFF000));
      *(a1 + 8) = page_aligned_buffer;
    }

    v18 = pread(*a1, page_aligned_buffer, v13 - (a4 & 0xFFFFFFFFFFFFF000), a4 & 0xFFFFFFFFFFFFF000);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v26 = __error();
      v36 = strerror(*v26);
      debuglog("MKBBackupPread", @"pread() failed: %s\n", v27, v28, v29, v30, v31, v32, v36);
      return -1;
    }

    v25 = *(a1 + 32);
    if (v18 < v14 && v13 <= v25)
    {
      v37 = *(a1 + 32);
      debuglog("MKBBackupPread", @"bytes_read(%ld) < read_size(%ld), but effective_start(%lld) + read_size(%ld) <= file_size(%lld)\n", v19, v20, v21, v22, v23, v24, v18);
      return -1;
    }

    v34 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v12 <= v34)
    {
      v8 = a3;
    }

    else
    {
      v8 = v34 - a4;
    }

    memcpy(a2, (*(a1 + 8) + (a4 & 0xFFF)), v8);
  }

  return v8;
}

uint64_t MKBBackupClose(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = *(*a1 + 2);
  if (v10)
  {
    v11 = *(v9 + 1);
    if (v11)
    {
      deallocate_page_aligned_buffer(v11, v10, a3, a4, a5, a6, a7, a8, v14);
    }
  }

  if (*v9 != -1)
  {
    close(*v9);
  }

  v12 = *(v9 + 1);
  if (v12 != -1)
  {
    close(v12);
  }

  free(*a1);
  *a1 = 0;
  return 0;
}

uint64_t _MKBBackupCheckKey(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0x23)
  {
    debuglog("_MKBBackupCheckKey", @"corrupt blob size %zu, expected at least %zu", a3, a4, a5, a6, a7, a8, a2);
    return 0xFFFFFFFFLL;
  }

  v10 = bswap32(*(a1 + 32));
  if (v10 + 36 != a2)
  {
    if (v10 + 44 <= a2)
    {
      debuglog("_MKBBackupCheckKey", @"found extent-based key_blob, size %zu", a3, a4, a5, a6, a7, a8, a2);
      v18 = 0;
      v19 = a1;
      do
      {
        if (a2 - v18 <= 0x23)
        {
          debuglog("_MKBBackupCheckKey", @"remaining blob size too short offset=%zu blob_size=%zu", v12, v13, v14, v15, v16, v17, v18);
          return 0xFFFFFFFFLL;
        }

        v20 = bswap32(*(v19 + 32));
        if (v20 >= 0xA9)
        {
          debuglog("_MKBBackupCheckKey", @"wrapped key size too big (%lu>%u)", v12, v13, v14, v15, v16, v17, a2);
          return 0xFFFFFFFFLL;
        }

        v21 = v20 + 36;
        v22 = bswap64(*(v20 + 36 + v19));
        debuglog("_MKBBackupCheckKey", @"offset = %zu, keysize = %u, extent size = %llu", v12, v13, v14, v15, v16, v17, v18);
        v18 += v21 + 8;
        v19 = v18 + a1;
      }

      while (v18 < a2);
      if (v18 == a2)
      {
        return 0;
      }

      debuglog("_MKBBackupCheckKey", @"odd blob size %zu, offset = %zu", v12, v13, v14, v15, v16, v17, a2);
    }

    else
    {
      debuglog("_MKBBackupCheckKey", @"odd blob size %zu", a3, a4, a5, a6, a7, a8, a2);
    }

    return 0xFFFFFFFFLL;
  }

  debuglog("_MKBBackupCheckKey", @"found single-extent key_blob, size %zu", a3, a4, a5, a6, a7, a8, a2);
  return 0;
}

uint64_t MKBKeyBagCopyUUID(uint64_t a1, CFDataRef *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  *bytes = 0;
  v16 = 0;
  v4 = *(a1 + 16);
  bag_uuid = aks_get_bag_uuid();
  v12 = convertAKSErrorToMKB(bag_uuid);
  if (v12)
  {
    debuglog("MKBKeyBagCopyUUID", @"failed to get uuid for handle %d", v6, v7, v8, v9, v10, v11, *(a1 + 16));
  }

  else
  {
    *a2 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t MKBBackupUpdateKeyWithError(int *a1, const __CFData *a2, CFTypeRef *a3, void *a4)
{
  if (!a3)
  {
    return 4294967279;
  }

  v6 = MKBCopyCryptoIDKeysForFileDescriptor(*a1, a2, a4);
  *a3 = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0;
  }

  result = CFEqual(v6, a2);
  if (result)
  {
    CFRelease(*a3);
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t MKBBackupCopyKeyWithError(int *a1, CFMutableDataRef *a2, void *a3)
{
  v4 = MKBCopyCryptoIDKeysForFileDescriptor(*a1, 0, a3);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t MKBBackupCopyKey(int *a1, CFMutableDataRef *a2)
{
  v3 = MKBCopyCryptoIDKeysForFileDescriptor(*a1, 0, 0);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t MKBBackupCopyBackupKeyUUID(const __CFData *a1, CFDataRef *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (_MKBBackupCheckKey(BytePtr, Length, v6, v7, v8, v9, v10, v11))
  {
    debuglog("MKBBackupCopyBackupKeyUUID", @"Bad key passed in, does not validate", v12, v13, v14, v15, v16, v17, v21);
    v18 = 0;
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    v18 = CFDataCreate(*MEMORY[0x1E695E480], BytePtr, 16);
    v19 = 0;
  }

  *a2 = v18;
  return v19;
}

uint64_t MKBBackupSetKeyEncryptionModeToXTS(const __CFData *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  result = _MKBBackupCheckKey(BytePtr, Length, v4, v5, v6, v7, v8, v9);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(BytePtr + 29) = 1;
  return result;
}

uint64_t __MKBBackupDecryptInPlace(uint64_t a1, uint64_t a2, const char *a3, off_t a4, CFDataRef theData)
{
  v164 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  data = 0u;
  v163 = 0u;
  v149 = 32;
  v161 = 0u;
  v159 = 0u;
  v160 = 0u;
  v158 = 0u;
  v148 = ccaes_xts_decrypt_mode();
  v12 = (*v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v148);
  v15 = &v128[-v14];
  v16 = (*(v13 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v128[-v17];
  v156 = 0;
  v157 = 0;
  v25 = _MKBBackupCheckKey(BytePtr, Length, v19, v20, v21, v22, v23, v24);
  v32 = bswap32(*(BytePtr + 8));
  if (v25)
  {
    debuglog("__MKBBackupDecryptInPlace", @"corrupt key; blob size %lu, key size %u", v26, v27, v28, v29, v30, v31, Length);
    v33 = 0xFFFFFFFFLL;
    goto LABEL_86;
  }

  v138 = a1;
  v140 = a4;
  v34 = v32 + 36;
  v35 = "false";
  v139 = v34;
  if (Length > v34)
  {
    v35 = "true";
  }

  debuglog("__MKBBackupDecryptInPlace", @"extents = %s", v26, v27, v28, v29, v30, v31, v35);
  v36 = open(a3, 2);
  if (v36 == -1)
  {
    __MKBBackupDecryptInPlace_cold_4(a3);
    v45 = 0;
LABEL_96:
    v33 = 0xFFFFFFFFLL;
    goto LABEL_82;
  }

  v134 = a2;
  page_aligned_buffer = allocate_page_aligned_buffer(0x8000uLL);
  v45 = page_aligned_buffer;
  if (!page_aligned_buffer)
  {
    __MKBBackupDecryptInPlace_cold_3(0, v38, v39, v40, v41, v42, v43, v44, v128[0]);
    goto LABEL_96;
  }

  v147 = v18;
  if (&BytePtr[Length] <= BytePtr)
  {
    goto LABEL_78;
  }

  v46 = 0;
  v135 = 0;
  v133 = 1;
  v129 = @"Failed to construct tweak key fixed data";
  v132 = v128;
  v146 = v15;
  v136 = page_aligned_buffer;
  v143 = v36;
  v131 = a3;
  v141 = Length;
  v130 = &BytePtr[Length];
  while (2)
  {
    v47 = *(BytePtr + 8);
    v137 = bswap32(v47);
    v144 = v47;
    if (!v47)
    {
      v51 = 0;
      goto LABEL_33;
    }

    v48 = *(BytePtr + 6);
    v49 = bswap32(v48);
    debuglog("__MKBBackupDecryptInPlace", @"key class %d", v39, v40, v41, v42, v43, v44, v49);
    if (*(BytePtr + 7) == 0x1000000)
    {
      v50 = 0;
    }

    else if (BytePtr[28] == 1)
    {
      v50 = BytePtr[29];
    }

    else
    {
      v50 = BytePtr[28];
    }

    if (v133)
    {
      v52 = v48 == 285212672 ? 7 : v49;
      v53 = v52 == 1 ? 2 : v52;
      if (fcntl(v36, 64, v53))
      {
        __MKBBackupDecryptInPlace_cold_1(v53);
        v33 = 0xFFFFFFFFLL;
LABEL_81:
        v45 = v136;
        goto LABEL_82;
      }
    }

    if (v134 == -1)
    {
      v62 = aks_backup_unwrap_key();
      v61 = v146;
      if (v62)
      {
        debuglog("__MKBBackupDecryptInPlace", @"Failed to unwrap key (%p,%d) in class %d with keypair: 0x%08x", v55, v56, v57, v58, v59, v60, BytePtr + 36);
        goto LABEL_101;
      }
    }

    else
    {
      LODWORD(md) = v149;
      v54 = aks_unwrap_key();
      v149 = md;
      v61 = v146;
      if (v54)
      {
        debuglog("__MKBBackupDecryptInPlace", @"Failed to unwrap key (%p,%d) in class %d with handle %d: 0x%08x", v55, v56, v57, v58, v59, v60, BytePtr + 36);
LABEL_101:
        v33 = 0xFFFFFFFFLL;
        goto LABEL_81;
      }
    }

    if (!v50)
    {
      debuglog("__MKBBackupDecryptInPlace", @"cbc mode", v55, v56, v57, v58, v59, v60, v128[0]);
      v135 = 0;
      v133 = 0;
      v51 = v136;
      goto LABEL_32;
    }

    v45 = v136;
    if (v50 == 1)
    {
      debuglog("__MKBBackupDecryptInPlace", @"xts mode", v55, v56, v57, v58, v59, v60, v128[0]);
      (*(v148 + 24))(v148, v61, 16, &data, &v163);
      v133 = 0;
      v135 = 1;
      v51 = v45;
LABEL_32:
      v47 = v144;
      goto LABEL_33;
    }

    if (v50 != 2)
    {
      debuglog("__MKBBackupDecryptInPlace", @"error: unexpected encryption mode : %d", v55, v56, v57, v58, v59, v60, v50);
LABEL_88:
      v33 = 0xFFFFFFFFLL;
      goto LABEL_82;
    }

    dataIn = 0;
    iv[0] = 0x100000000000000;
    *(&md + 7) = 0;
    *&md = 0;
    debuglog("__MKBBackupDecryptInPlace", @"xts ans kdf2 mode", v55, v56, v57, v58, v59, v60, v128[0]);
    if (ANS_AKDF2_construct_fixed_data(&dataIn, 8, &md, 15))
    {
LABEL_106:
      debuglog("__MKBBackupDecryptInPlace", v129, v89, v90, v91, v92, v93, v94, v128[0]);
LABEL_93:
      v33 = 0xFFFFFFFFLL;
      goto LABEL_81;
    }

    v95 = ANS_AKDF2(&data, v149, &md, 15, &v158, 0x20uLL);
    v47 = v144;
    if (v95)
    {
      v127 = @"Failed to construct tweak key";
LABEL_105:
      v129 = v127;
      goto LABEL_106;
    }

    if (ANS_AKDF2_construct_fixed_data(iv, 8, &md, 15))
    {
      v127 = @"Failed to construct data key fixed data";
      goto LABEL_105;
    }

    if (ANS_AKDF2(&data, v149, &md, 15, &v160, 0x20uLL))
    {
      v127 = @"Failed to construct data key";
      goto LABEL_105;
    }

    (*(v148 + 24))(v148, v61, 32, &v160, &v158);
    v133 = 0;
    v135 = 2;
    v51 = v45;
LABEL_33:
    if (Length <= v139)
    {
      v64 = -1;
      if (!v47)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v63 = bswap64(*&BytePtr[v137 + 36]);
      debuglog("__MKBBackupDecryptInPlace", @"extent = %llu bytes", v39, v40, v41, v42, v43, v44, v63);
      v64 = v63;
      if (!v47)
      {
LABEL_37:
        if ((v64 + v46) <= v140)
        {
          *&md = 0;
          *(&md + 1) = v46;
          v67 = v64;
          v155 = v64;
          if (fcntl(v36, 99, &md))
          {
            v120 = __error();
            strerror(*v120);
            debuglog("__MKBBackupDecryptInPlace", @"F_PUNCHHOLE failed on %s for range (%lld:%llu): %s", v121, v122, v123, v124, v125, v126, v131);
            goto LABEL_101;
          }

          v64 = v67;
        }

        else
        {
          v65 = v64;
          v66 = ftruncate(v36, v46);
          v64 = v65;
          if (v66)
          {
            __MKBBackupDecryptInPlace_cold_2(v131);
            goto LABEL_101;
          }
        }
      }
    }

    v68 = v135 - 1;
    v142 = BytePtr;
    do
    {
      if (v64 >= 0x8000)
      {
        v69 = 0x8000;
      }

      else
      {
        v69 = v64;
      }

      if (v47)
      {
        v145 = v64;
        v70 = pread(v36, v51, v69, v46);
        debuglog("__MKBBackupDecryptInPlace", @"nbytes = %zd, bytes_read = %zd", v71, v72, v73, v74, v75, v76, v69);
        if (!v70)
        {
          break;
        }

        if (v70 <= 0)
        {
          v113 = __error();
          strerror(*v113);
          debuglog("__MKBBackupDecryptInPlace", @"Failed to pread(%zu, %llu) from %s (%s)", v114, v115, v116, v117, v118, v119, v69);
          goto LABEL_93;
        }

        if ((v70 & 0xF) != 0)
        {
          debuglog("__MKBBackupDecryptInPlace", @"bytes_read(%zd) not multiple of encryption block size", v39, v40, v41, v42, v43, v44, v70);
          goto LABEL_93;
        }

        if (((v70 + 4095) & 0xFFFFFFFF000) != 0)
        {
          v77 = 0;
          v78 = v46 >> 12;
          for (i = ((v70 + 4095) >> 12); i; --i)
          {
            if (v68 > 1)
            {
              CC_SHA1(&data, v149, &md);
              v85 = ((v46 + v77) >> 1) ^ 0x80000061;
              if ((v46 & 1) == 0)
              {
                v85 = (v46 + v77) >> 1;
              }

              v86 = v85 >> 1;
              if (v85)
              {
                v86 = (v85 >> 1) ^ 0x80000061;
              }

              dataIn = __PAIR64__(v86, v85);
              v87 = v86 >> 1;
              if (v86)
              {
                v87 = (v86 >> 1) ^ 0x80000061;
              }

              v88 = v87 >> 1;
              if (v87)
              {
                v88 = (v87 >> 1) ^ 0x80000061;
              }

              v152 = v87;
              v153 = v88;
              if (CCCrypt(0, 0, 0, &md, 0x10uLL, 0, &dataIn, 0x10uLL, iv, 0x10uLL, 0) || CCCrypt(1u, 0, 0, &data, v149, iv, &v51[v77], 0x1000uLL, &v51[v77], 0x1000uLL, 0))
              {
                v33 = 0xFFFFFFFFLL;
                v36 = v143;
                goto LABEL_81;
              }
            }

            else
            {
              v156 = v78;
              v157 = v78;
              v80 = v148;
              v81 = v146;
              v82 = v46;
              v83 = v147;
              (*(v148 + 40))(v146, v147, &v156);
              v84 = v83;
              v46 = v82;
              (*(v80 + 48))(v81, v84, 256, &v51[v77 & 0xFFFFF000], &v51[v77 & 0xFFFFF000]);
            }

            v77 += 4096;
            ++v78;
          }
        }

        v36 = v143;
        v69 = pwrite(v143, v51, v70, v46);
        Length = v141;
        BytePtr = v142;
        v47 = v144;
        v64 = v145;
      }

      else
      {
        v70 = v69;
      }

      if (v69 <= 0)
      {
        debuglog("__MKBBackupDecryptInPlace", @"Failed to pwrite(%lu, %llu) from %s", v39, v40, v41, v42, v43, v44, 0);
        goto LABEL_93;
      }

      if (v70 != v69)
      {
        debuglog("__MKBBackupDecryptInPlace", @"bytes_read(%lu) != bytes_written(%lu)", v39, v40, v41, v42, v43, v44, v70);
        goto LABEL_93;
      }

      v46 += v70;
      v64 -= v70;
    }

    while (v64);
    BytePtr += v137 + 44;
    v45 = v136;
    LOBYTE(a3) = v131;
    if (v130 > BytePtr)
    {
      continue;
    }

    break;
  }

LABEL_78:
  if (ftruncate(v36, v140))
  {
    debuglog("__MKBBackupDecryptInPlace", @"Failed to truncate %s to %lld", v96, v97, v98, v99, v100, v101, a3);
    goto LABEL_88;
  }

  v33 = 0;
LABEL_82:
  __memset_chk();
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v102 = v148;
  v103 = *v148;
  cc_clear();
  v104 = *(v102 + 8);
  cc_clear();
  cc_clear();
  if (v45)
  {
    deallocate_page_aligned_buffer(v45, 0x8000, v105, v106, v107, v108, v109, v110, v128[0]);
  }

  if (v36 != -1)
  {
    close(v36);
  }

LABEL_86:
  v111 = *MEMORY[0x1E69E9840];
  return v33;
}

uint64_t MKBOTABackupBagOpen(const __CFData *a1, const __CFData *a2, void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x44uLL, 0x100004069DB8102uLL);
  if (v6)
  {
    v14 = v6;
    *v6 = -1;
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    if (a2)
    {
      CFDataGetBytePtr(a2);
      CFDataGetLength(a2);
    }

    if (!aks_backup_unwrap_bag())
    {
      debuglog("MKBOTABackupBagOpen", @"Unwrapped userland backup bag", v15, v16, v17, v18, v19, v20, v37);
LABEL_10:
      result = 0;
      *a3 = v14;
      return result;
    }

    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    bag = aks_load_bag();
    if (bag)
    {
      debuglog("MKBOTABackupBagOpen", @"Failed to load in-kernel backup bag: 0x%08x", v22, v23, v24, v25, v26, v27, bag);
    }

    else
    {
      v28 = *v14;
      if (a2)
      {
        CFDataGetBytePtr(a2);
        CFDataGetLength(a2);
      }

      v29 = aks_unlock_bag();
      if (!v29)
      {
        goto LABEL_10;
      }

      debuglog("MKBOTABackupBagOpen", @"Failed to unlock in-kernel backup bag: 0x%08x", v30, v31, v32, v33, v34, v35, v29);
    }

    if (*v14 != -1)
    {
      aks_unload_bag();
    }

    free(v14);
  }

  else
  {
    MKBOTABackupBagOpen_cold_1(0, v7, v8, v9, v10, v11, v12, v13, v37);
  }

  return 0xFFFFFFFFLL;
}

uint64_t MKBOTABackupBagClose(char *a1)
{
  if (*a1 != -1)
  {
    aks_unload_bag();
  }

  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  free(a1);
  return 0;
}

uint64_t MKBOTABackupBagCopyUUID(uint64_t a1, CFDataRef *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 == -1)
  {
    v12 = CFDataCreate(*MEMORY[0x1E695E480], (a1 + 36), 16);
    v11 = 0;
LABEL_6:
    *a2 = v12;
    goto LABEL_7;
  }

  *bytes = 0;
  v16 = 0;
  bag_uuid = aks_get_bag_uuid();
  v11 = convertAKSErrorToMKB(bag_uuid);
  if (!v11)
  {
    v12 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
    goto LABEL_6;
  }

  debuglog("MKBOTABackupBagCopyUUID", @"failed to get uuid for handle %d", v5, v6, v7, v8, v9, v10, *a1);
LABEL_7:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t MKBKeyBagChangeSystemSecretWithEscrow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = +[MKBKeyStoreDevice sharedService];
  v11 = [v10 ChangeSystemSecretWithEscrow:a1 FromOldPasscode:a2 ToNew:a3 withOpaqueDats:a5 withKeepState:a4 withACM:0];

  return v11;
}

uint64_t MKBKeyBagChangeSystemSecretWithEscrowWithACM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = +[MKBKeyStoreDevice sharedService];
  v11 = [v10 ChangeSystemSecretWithEscrow:a1 FromOldPasscode:a2 ToNew:a3 withOpaqueDats:a5 withKeepState:a4 withACM:1];

  return v11;
}

uint64_t MKBOTABackupStart()
{
  v0 = +[MKBKeyStoreDevice sharedService];
  v1 = [v0 startBackupSessionForVolume:0];

  return v1;
}

uint64_t MKBOTABackupStop()
{
  v0 = +[MKBKeyStoreDevice sharedService];
  v1 = [v0 stopBackupSessionForVolume:0];

  return v1;
}

uint64_t MKBOTABackupStartForVolume(uint64_t a1)
{
  v2 = +[MKBKeyStoreDevice sharedService];
  v3 = [v2 startBackupSessionForVolume:a1];

  return v3;
}

uint64_t MKBOTABackupStopForVolume(uint64_t a1)
{
  v2 = +[MKBKeyStoreDevice sharedService];
  v3 = [v2 stopBackupSessionForVolume:a1];

  return v3;
}

uint64_t MKBKeyBagChangeSystemGeneration(uint64_t a1, uint64_t a2)
{
  v4 = +[MKBKeyStoreDevice sharedService];
  v5 = [v4 changeClassKeysGenerationWithSecret:a1 withGenerationOption:a2 secretIsACM:0];

  return v5;
}

uint64_t MKBKeyBagChangeSystemGenerationWithACM(uint64_t a1, uint64_t a2)
{
  v4 = +[MKBKeyStoreDevice sharedService];
  v5 = [v4 changeClassKeysGenerationWithSecret:a1 withGenerationOption:a2 secretIsACM:1];

  return v5;
}

uint64_t MKBKeyBagGetSystemGeneration()
{
  if (aks_generation())
  {
    return 4294966296;
  }

  else
  {
    return 0;
  }
}

uint64_t MKBKeyBagIsKeyRolling(_DWORD *a1)
{
  v5 = 0;
  v2 = +[MKBKeyStoreDevice sharedService];
  v3 = [v2 isKeyRollingWithKeyStatus:&v5];

  if (a1 && !v3)
  {
    *a1 = v5;
  }

  return v3;
}

uint64_t MKBKeyBagMigrateFS()
{
  v0 = +[MKBKeyStoreDevice sharedService];
  v1 = [v0 migrateFS];

  return v1;
}

uint64_t MKBPrewarmSPS(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  debuglog("MKBPrewarmSPS", @"Prewarming SPSs with %@", a3, a4, a5, a6, a7, a8, a1);
  result = aks_prewarm_sps();
  if (result)
  {
    debuglog("MKBPrewarmSPS", @"Error prewarming SPSs: %d", v9, v10, v11, v12, v13, v14, result);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t MKBForgottenPasscodeEvent()
{
  v0 = +[MKBKeyStoreDevice sharedService];
  v1 = [v0 forgottenPasscodeEvent];

  return v1;
}

__CFString *__MKBAssertionCopyDescription(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = v2;
  v4 = a1[4];
  if (v4 <= 4)
  {
    v5 = *(&__AssertionTypes + v4);
  }

  else
  {
    v5 = @"Other";
  }

  Mutable = CFStringCreateMutable(v2, 0);
  v7 = a1[4];
  v8 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<MKBAssertion %p [%p]> { AssertionType '%@' (%d), Assertion Retain: (%d)", a1, v3, v5, v7, v8);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

uint64_t __MKBKeyBagHandleFinalize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    aks_prederived_free();
  }

  result = *(a1 + 16);
  if ((result & 0x80000000) == 0)
  {
    result = aks_unload_bag();
    *(a1 + 16) = -1;
  }

  return result;
}

id ObjectOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;

  return v4;
}

void *OUTLINED_FUNCTION_3()
{

  return malloc_type_malloc(0x558uLL, 0x10A004079D672F0uLL);
}

void OUTLINED_FUNCTION_4(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t MKBUserSessionLoadWithPasscode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  if (!v6)
  {
    v15 = @"Failed to dlopen UserManagement.framework";
LABEL_8:
    debuglog("MKBUserSessionLoadWithPasscode", v15, v7, v8, v9, v10, v11, v12, v16);
    return 0;
  }

  v13 = dlsym(v6, "UMUserSessionLoadWithPasscode");
  if (!v13)
  {
    v15 = @"Failed to find UMUserSessionLoadWithPasscode in UM";
    goto LABEL_8;
  }

  return v13(a1, a2, a3);
}

uint64_t MKBUserSessionSetSecureBackupBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  if (!v6)
  {
    v15 = @"Failed to dlopen UserManagement.framework";
LABEL_8:
    debuglog("MKBUserSessionSetSecureBackupBlob", v15, v7, v8, v9, v10, v11, v12, v16);
    return 0;
  }

  v13 = dlsym(v6, "UMUserSessionSetSecureBackupBlob");
  if (!v13)
  {
    v15 = @"Failed to find UMUserSessionSetSecureBackupBlob in UM";
    goto LABEL_8;
  }

  return v13(a1, a2, a3);
}

uint64_t MKBUserSessionRetrieveSecureBackupBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  if (!v6)
  {
    v15 = @"Failed to dlopen UserManagement.framework";
LABEL_8:
    debuglog("MKBUserSessionRetrieveSecureBackupBlob", v15, v7, v8, v9, v10, v11, v12, v16);
    return 0;
  }

  v13 = dlsym(v6, "UMUserSessionRetrieveSecureBackupBlob");
  if (!v13)
  {
    v15 = @"Failed to find UMUserSessionRetrieveSecureBackupBlob in UM";
    goto LABEL_8;
  }

  return v13(a1, a2, a3);
}

uint64_t MKBUserSessionDeleteSecureBackupBlob(uint64_t a1, uint64_t a2)
{
  v4 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  if (!v4)
  {
    v13 = @"Failed to dlopen UserManagement.framework";
LABEL_8:
    debuglog("MKBUserSessionDeleteSecureBackupBlob", v13, v5, v6, v7, v8, v9, v10, v14);
    return 0;
  }

  v11 = dlsym(v4, "UMUserSessionDeleteSecureBackupBlob");
  if (!v11)
  {
    v13 = @"Failed to find UMUserSessionDeleteSecureBackupBlob in UM";
    goto LABEL_8;
  }

  return v11(a1, a2);
}

uint64_t MKBForegroundUserSessionID(CFErrorRef *a1)
{
  v20 = 0;
  hostmultiuserconfig = get_hostmultiuserconfig(&v20);
  if (hostmultiuserconfig)
  {
    v9 = hostmultiuserconfig;
    debuglog("MKBForegroundUserSessionID", @"Failed to get multiuser_config flags from kernel with error:%d", v3, v4, v5, v6, v7, v8, hostmultiuserconfig);
    if (v9 == 2)
    {
      v16 = @"FAILED to MKBUserTypeDeviceMode, EPERM";
    }

    else
    {
      v16 = @"FAILED to MKBUserTypeDeviceMode, EINVAL";
    }

    if (v9 == 2)
    {
      v17 = 1;
    }

    else
    {
      v17 = 22;
    }

    debuglog("MKBForegroundUserSessionID", v16, v10, v11, v12, v13, v14, v15, v19);
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_9:
    *a1 = CFErrorCreate(0, *MEMORY[0x1E695E640], v17, 0);
    return 0xFFFFFFFFLL;
  }

  if ((v20 & 0x80000000) == 0)
  {
    v17 = 2;
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_9;
  }

  return v20 & 0x3FFFFFFF;
}

uint64_t MKBUserSessionIsLoginSession(uint64_t a1, uint64_t a2)
{
  v4 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  if (!v4)
  {
    v13 = @"Failed to dlopen UserManagement.framework";
LABEL_8:
    debuglog("MKBUserSessionIsLoginSession", v13, v5, v6, v7, v8, v9, v10, v14);
    return 0;
  }

  v11 = dlsym(v4, "UMUserSessionIsLoginSession");
  if (!v11)
  {
    v13 = @"Failed to find UMUserSessionIsLoginSession in UM";
    goto LABEL_8;
  }

  return v11(a1, a2);
}

uint64_t MKBUserSessionConfigureLoginWindow(uint64_t a1, uint64_t a2)
{
  v4 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  if (!v4)
  {
    v13 = @"Failed to dlopen UserManagement.framework";
LABEL_8:
    debuglog("MKBUserSessionConfigureLoginWindow", v13, v5, v6, v7, v8, v9, v10, v14);
    return 0;
  }

  v11 = dlsym(v4, "UMUserSessionConfigureLoginWindow");
  if (!v11)
  {
    v13 = @"Failed to find UMUserSessionConfigureLoginWindow in UM";
    goto LABEL_8;
  }

  return v11(a1, a2);
}

uint64_t MKBUserSessionSwitchToLoginWindow(uint64_t a1, uint64_t a2)
{
  v4 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  if (!v4)
  {
    v13 = @"Failed to dlopen UserManagement.framework";
LABEL_8:
    debuglog("MKBUserSessionSwitchToLoginWindow", v13, v5, v6, v7, v8, v9, v10, v14);
    return 0;
  }

  v11 = dlsym(v4, "UMUserSessionSwitchToLoginWindow");
  if (!v11)
  {
    v13 = @"Failed to find UMUserSessionSwitchToLoginWindow in UM";
    goto LABEL_8;
  }

  return v11(a1, a2);
}

uint64_t MKBForegroundUserSession(uint64_t a1, uint64_t a2)
{
  v4 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  if (!v4)
  {
    v13 = @"Failed to dlopen UserManagement.framework";
LABEL_8:
    debuglog("MKBForegroundUserSession", v13, v5, v6, v7, v8, v9, v10, v14);
    return 0;
  }

  v11 = dlsym(v4, "UMUserSessionForegroundSession");
  if (!v11)
  {
    v13 = @"Failed to find UMUserSessionForegroundSession in UM";
    goto LABEL_8;
  }

  return v11(a1, a2);
}

uint64_t MKBUserSessionListSyncMachServices(uint64_t a1, uint64_t a2)
{
  v4 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  if (!v4)
  {
    v13 = @"Failed to dlopen UserManagement.framework";
LABEL_8:
    debuglog("MKBUserSessionListSyncMachServices", v13, v5, v6, v7, v8, v9, v10, v14);
    return 0;
  }

  v11 = dlsym(v4, "UMUserSessionListSyncMachServices");
  if (!v11)
  {
    v13 = @"Failed to find UMUserSessionListSyncMachServices in UM";
    goto LABEL_8;
  }

  return v11(a1, a2);
}

uint64_t MKBCurrentSyncBubbleSessionID(uint64_t a1)
{
  v2 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  if (!v2)
  {
    v11 = @"Failed to dlopen UserManagement.framework";
LABEL_8:
    debuglog("MKBCurrentSyncBubbleSessionID", v11, v3, v4, v5, v6, v7, v8, v12);
    return 0xFFFFFFFFLL;
  }

  v9 = dlsym(v2, "UMCurrentSyncBubbleSessionID");
  if (!v9)
  {
    v11 = @"Failed to find UMCurrentSyncBubbleSessionID in UM";
    goto LABEL_8;
  }

  return v9(a1);
}

uint64_t MKBUserSessionLoadKeybagForUser(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    v19 = +[MKBKeyStoreDevice sharedService];
    v20 = [v19 loadKeybagForUserSession:a1 withSessionID:a2 withSecret:a3 shouldSetGracePeriod:a4 withGracePeriod:a5 isInEarlyStar:0];

    return v20;
  }

  system = aks_get_system();
  if (system != -536870160)
  {
    v15 = system;
    if (system)
    {
      return convertAKSErrorToMKB(system);
    }

    return v15;
  }

  debuglog("MKBUserSessionLoadKeybagForUser", @"From EARLYSTART skip check switch between users", v9, v10, v11, v12, v13, v14, v60);
  v22 = KBLoadUserKeybag(a2);
  if (v22)
  {
    v29 = v22;
    Value = CFDictionaryGetValue(v22, @"KeyBagKeys");
    if (Value)
    {
      v37 = Value;
      CFDataGetBytePtr(Value);
      CFDataGetLength(v37);
      bag = aks_load_bag();
      if (bag)
      {
        v45 = bag;
        debuglog("MKBUserSessionLoadKeybagForUser", @"failed to load bag for user %d: 0x%x", v39, v40, v41, v42, v43, v44, a2);
      }

      else
      {
        v46 = aks_set_system();
        if (v46)
        {
          v45 = v46;
          debuglog("MKBUserSessionLoadKeybagForUser", @"failed to set bag handle %d as session bag for UID %d: 0x%x", v47, v48, v49, v50, v51, v52, -1);
        }

        else
        {
          v53 = aks_get_system();
          if (!v53)
          {
            if (a2 != 502)
            {
              debuglog("MKBUserSessionLoadKeybagForUser", @"seting APFSVolumeID For KeyBag ", v54, v55, v56, v57, v58, v59, v61);
              setAPFSVolumeIDForKeyBag(0xFFFFFFFFLL, a2, a1);
            }

            v15 = 0;
            goto LABEL_17;
          }

          v45 = v53;
          debuglog("MKBUserSessionLoadKeybagForUser", @"loaded bag handle %ld as session bag for %d, but got no session handle back: 0x%x", v54, v55, v56, v57, v58, v59, -1);
        }
      }

      v15 = convertAKSErrorToMKB(v45);
    }

    else
    {
      debuglog("MKBUserSessionLoadKeybagForUser", @"no keybag in user bag plist", v31, v32, v33, v34, v35, v36, v61);
      v15 = 4294966296;
    }

LABEL_17:
    CFRelease(v29);
    return v15;
  }

  debuglog("MKBUserSessionLoadKeybagForUser", @"no user bag found for UID %d", v23, v24, v25, v26, v27, v28, a2);
  return 4294967288;
}

void setAPFSVolumeIDForKeyBag(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  bzero(v24, 0x3FBuLL);
  qmemcpy(v23, "/dev/", sizeof(v23));
  memset(v25, 0, sizeof(v25));
  _getCString(a3, kMKBUserSessionVolumeDeviceNodeKey, v25, 256);
  if (LODWORD(v25[0]) == 1802725732)
  {
    __strlcat_chk();
  }

  if (a3)
  {
    if (CFDictionaryContainsKey(a3, kMKBUserSessionVolumeUUIDKey))
    {
      String = _getString(a3, kMKBUserSessionVolumeUUIDKey);
      if (String)
      {
        memset(uu, 0, sizeof(uu));
        debuglog("setAPFSVolumeIDForKeyBag", @"Updating VolumeUUID %@", v7, v8, v9, v10, v11, v12, String);
        bzero(in, 0x400uLL);
        _getCString(a3, kMKBUserSessionVolumeUUIDKey, in, 1024);
        if (uuid_parse(in, uu))
        {
          debuglog("setAPFSVolumeIDForKeyBag", @"uuid_parse failed", v13, v14, v15, v16, v17, v18, v20);
        }

        else
        {
          debuglog("setAPFSVolumeIDForKeyBag", @"uuid_parse SUCCESS", v13, v14, v15, v16, v17, v18, v20);
          KBMapVolume(a1, a2, v23, uu, 0);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t MKBUserSessionCreateKeybagForUser(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = +[MKBKeyStoreDevice sharedService];
  v11 = [v10 createKeybagForUserSession:a1 withSessionUID:a2 WithSecret:a3 withGracePeriod:a4 withOpaqeStuff:a5];

  return v11;
}

uint64_t MKBUserSessionUnloadKeybagForUser(uint64_t a1)
{
  v2 = +[MKBKeyStoreDevice sharedService];
  v3 = [v2 unloadKeybagForUserSession:a1];

  return v3;
}

uint64_t MKBUserSessionDeleteKeybagForUser(uint64_t a1)
{
  v2 = +[MKBKeyStoreDevice sharedService];
  v3 = [v2 deleteKeybagForUserSession:a1];

  return v3;
}

uint64_t MKBUserSessionSetVolumeToPersona(const __CFString *a1, const __CFString *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  bzero(buffer, 0x400uLL);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
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
  *in = 0u;
  v24 = 0u;
  if (!CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    v10 = @"Failed to get cstring from volumePath";
    goto LABEL_7;
  }

  if (!CFStringGetCString(a2, in, 256, 0x8000100u))
  {
    v10 = @"Failed to get cstring from uuidString";
    goto LABEL_7;
  }

  if (uuid_parse(in, uu))
  {
    v10 = @"Failed to parse to uuid_t";
LABEL_7:
    debuglog("MKBUserSessionSetVolumeToPersona", v10, v4, v5, v6, v7, v8, v9, v21);
    v11 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  v14 = KBMapDeviceBag(buffer, 1);
  v11 = v14;
  if (v14)
  {
    debuglog("MKBUserSessionSetVolumeToPersona", @"KBMapDeviceBag failed with error %d", v15, v16, v17, v18, v19, v20, v14);
  }

  else
  {
    debuglog("MKBUserSessionSetVolumeToPersona", @"KBMapDeviceBag Success", v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_8:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t MKBUserSessionCreateSyncBagForUser(uint64_t a1, uint64_t a2)
{
  v4 = +[MKBKeyStoreDevice sharedService];
  v5 = [v4 createSyncBagForUserSession:a1 withSessionUID:a2];

  return v5;
}

uint64_t MKBUserSessionLoadSyncBagForUser(uint64_t a1, uint64_t a2)
{
  v4 = +[MKBKeyStoreDevice sharedService];
  v5 = [v4 loadSyncBagForUserSession:a1 withSessionUID:a2];

  return v5;
}

uint64_t MKBUserSessionVerifySyncBagForUser(uint64_t a1, uint64_t a2)
{
  v4 = +[MKBKeyStoreDevice sharedService];
  v5 = [v4 verifySyncBagForUserSession:a1 withSessionUID:a2];

  return v5;
}

uint64_t MKBUserSessionUnLoadSyncBagForUser(uint64_t a1, uint64_t a2)
{
  v4 = +[MKBKeyStoreDevice sharedService];
  v5 = [v4 unloadSyncBagForUserSession:a1 withSessionUID:a2];

  return v5;
}

uint64_t MKBUserSessionRemoveSyncBagForUser(uint64_t a1, uint64_t a2)
{
  v4 = +[MKBKeyStoreDevice sharedService];
  v5 = [v4 removeSyncBagForUserSession:a1 withSessionUID:a2];

  return v5;
}

uint64_t MKBUserSessionUnloadSessionBags()
{
  result = aks_unload_session_bags();
  if (result)
  {
    debuglog("MKBUserSessionUnloadSessionBags", @"Failed to unload session keybags: 0x%x", v1, v2, v3, v4, v5, v6, result);
    return 0xFFFFFFFFLL;
  }

  return result;
}

CFDataRef MKBUserSessionWrapSession(int a1, CFDataRef theData, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&length[19] = *MEMORY[0x1E69E9840];
  if (!theData)
  {
    debuglog("MKBUserSessionWrapSession", @"Data to Wrap is NULL", a3, a4, a5, a6, a7, a8, v31);
    goto LABEL_6;
  }

  v9 = CFDataGetLength(theData);
  debuglog("MKBUserSessionWrapSession", @"Data to Wrap with length:%d", v10, v11, v12, v13, v14, v15, v9);
  if (CFDataGetLength(theData) < 1)
  {
LABEL_6:
    debuglog("MKBUserSessionWrapSession", @"Invalid Blob entry for wrap", v16, v17, v18, v19, v20, v21, v32);
    goto LABEL_7;
  }

  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  v22 = aks_wrap_key();
  if (!v22)
  {
    debuglog("MKBUserSessionWrapSession", @"key_class_f wrap Completed with size %d", v23, v24, v25, v26, v27, v28, 72);
    result = CFDataCreate(*MEMORY[0x1E695E480], &length[1], 72);
    goto LABEL_8;
  }

  debuglog("MKBUserSessionWrapSession", @"failed to key_class_f wrap by aks_wrap_key: 0x%x", v23, v24, v25, v26, v27, v28, v22);
LABEL_7:
  result = 0;
LABEL_8:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef MKBUserSessionUnWrapSession(int a1, CFDataRef theData, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&length[44] = *MEMORY[0x1E69E9840];
  memset(&length[4], 0, 32);
  if (theData && CFDataGetLength(theData) >= 1)
  {
    v9 = CFDataGetLength(theData);
    debuglog("MKBUserSessionUnWrapSession", @"sessionblob length:%ld", v10, v11, v12, v13, v14, v15, v9);
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    if (!aks_unwrap_key())
    {
      debuglog("MKBUserSessionUnWrapSession", @"deCryptnextsession: session decrypt length:%d(expected: 32)", a3, a4, a5, a6, a7, a8, 32);
      result = CFDataCreate(*MEMORY[0x1E695E480], &length[4], 32);
      goto LABEL_7;
    }

    v16 = @"Failed to unwrap dict blob with classF";
  }

  else
  {
    v16 = @"Invalid Blob entry for unwrap";
  }

  debuglog("MKBUserSessionUnWrapSession", v16, a3, a4, a5, a6, a7, a8, v19);
  result = 0;
LABEL_7:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MKBUserSessionCreatePersonaKeyForUser(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = +[MKBKeyStoreDevice sharedService];
  v10 = [v9 addPersonaKeyForUserSession:a2 withSecret:a3 secretIsACM:0 withPersonaUUIDString:a4 forPath:a5];

  return v10;
}

uint64_t MKBUserSessionCreatePersonaKeyForUserWithACM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = +[MKBKeyStoreDevice sharedService];
  v10 = [v9 addPersonaKeyForUserSession:a2 withSecret:a3 secretIsACM:1 withPersonaUUIDString:a4 forPath:a5];

  return v10;
}

uint64_t MKBUserSessionRemovePersonaKeyForUser(CFDictionaryRef theDict, uint64_t a2, uint64_t a3)
{
  String = theDict;
  if (!theDict || CFDictionaryContainsKey(theDict, kMKBUserSessionVolumeUUIDKey) && (String = _getString(String, kMKBUserSessionVolumeUUIDKey)) != 0)
  {
    v12 = +[MKBKeyStoreDevice sharedService];
    v13 = [v12 removePersonaKeyForUserSession:a2 withPersonaUUIDString:a3 withVolumeUUIDString:String];

    return v13;
  }

  else
  {
    debuglog("MKBUserSessionRemovePersonaKeyForUser", @"Cannot find proper VolumeUUID String to remove personakey with volume unmap", v6, v7, v8, v9, v10, v11, v15);
    return 22;
  }
}

const void *_getData(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFDataGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *_getArray(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFArrayGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _getInt(const __CFDictionary *a1, const void *a2)
{
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t _getLongLongInt(const __CFDictionary *a1, const void *a2)
{
  v2 = -1;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberLongLongType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return -1;
    }
  }

  return v2;
}

uint64_t _getSInt64(const __CFDictionary *a1, const void *a2)
{
  v2 = -1;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return -1;
    }
  }

  return v2;
}

const __CFBoolean *_getBool(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(v3) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *_getString(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    return 0;
  }

  return v3;
}

CFTypeRef _getRetainedDict(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v3);
}

CFTypeRef convertObjectToBinary(const void *a1)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    if (CFPropertyListWrite(a1, v3, kCFPropertyListBinaryFormat_v1_0, 0, 0) < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = CFWriteStreamCopyProperty(v3, *MEMORY[0x1E695E900]);
    }

    CFWriteStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

CFPropertyListRef convertBinaryToObject(UInt8 *bytes, CFIndex length)
{
  format = kCFPropertyListBinaryFormat_v1_0;
  v2 = *MEMORY[0x1E695E480];
  v3 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, length, *MEMORY[0x1E695E498]);
  if (v3)
  {
    v10 = v3;
    if (CFReadStreamOpen(v3))
    {
      v23 = CFPropertyListCreateWithStream(v2, v10, 0, 2uLL, &format, 0);
      if (!v23)
      {
        debuglog("convertBinaryToObject", @"Could not create object from stream", v17, v18, v19, v20, v21, v22, v25);
      }

      CFReadStreamClose(v10);
    }

    else
    {
      debuglog("convertBinaryToObject", @"Could not open the stream", v11, v12, v13, v14, v15, v16, v25);
      v23 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    debuglog("convertBinaryToObject", @"Could not create stream for serialized data", v4, v5, v6, v7, v8, v9, v25);
    return 0;
  }

  return v23;
}

size_t writen(int __fd, char *__buf, size_t __nbyte)
{
  v3 = __nbyte;
  if (__nbyte)
  {
    v6 = __nbyte;
    do
    {
      v7 = write(__fd, __buf, v6);
      if (v7 == -1)
      {
        if (*__error() != 4)
        {
          return -1;
        }

        v7 = 0;
      }

      __buf += v7;
      v6 -= v7;
    }

    while (v6);
  }

  return v3;
}

uint64_t store_binary_dict_fd(const void *a1, const char *a2, int *a3)
{
  v5 = convertObjectToBinary(a1);
  if (!v5)
  {
    store_binary_dict_fd_cold_3(0, v6, v7, v8, v9, v10, v11, v12, v21);
    return 0xFFFFFFFFLL;
  }

  v13 = v5;
  v14 = open_dprotected_np(a2, 1537, 4, 0, 420);
  if (v14 == -1)
  {
    store_binary_dict_fd_cold_2(a2);
    v18 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  v15 = v14;
  BytePtr = CFDataGetBytePtr(v13);
  Length = CFDataGetLength(v13);
  if (writen(v15, BytePtr, Length) == -1)
  {
    v19 = @"Could not write to %s: %s";
LABEL_12:
    store_binary_dict_fd_cold_1(v19, a2);
    v18 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  if (fcntl(v15, 51))
  {
    v19 = @"Unable to fsync %s: %s";
    goto LABEL_12;
  }

  v18 = 0;
  if (!a3)
  {
LABEL_13:
    CFRelease(v13);
    close(v15);
    return v18;
  }

  *a3 = v15;
LABEL_7:
  CFRelease(v13);
  return v18;
}

const void *load_binary_dict(const char *a1)
{
  v1 = a1;
  memset(&v15.st_size, 0, 48);
  v2 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v2 == -1)
  {
    load_binary_dict_cold_4(v1);
    v11 = 0;
    binary_dict_from_buffer = 0;
    goto LABEL_7;
  }

  v3 = v2;
  if (fstat(v2, &v15))
  {
    load_binary_dict_cold_1(v1);
    binary_dict_from_buffer = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v11 = malloc_type_malloc(LODWORD(v15.st_size), 0x13CE63AEuLL);
  if (!v11)
  {
    load_binary_dict_cold_3(0, v4, v5, v6, v7, v8, v9, v10);
LABEL_12:
    binary_dict_from_buffer = 0;
    goto LABEL_6;
  }

  v12 = read(v3, v11, v15.st_size);
  if (v12 != v15.st_size)
  {
    load_binary_dict_cold_2(v1);
    goto LABEL_12;
  }

  binary_dict_from_buffer = load_binary_dict_from_buffer(v11, v12);
LABEL_6:
  close(v3);
LABEL_7:
  free(v11);
  return binary_dict_from_buffer;
}

CFMutableDictionaryRef create_mutable_dict(CFDictionaryRef theDict)
{
  result = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  if (!result)
  {
    debuglog("create_mutable_dict", @"Out of Memory!!! Dying!...so...cold....", v2, v3, v4, v5, v6, v7, vars0);
    exit(-1);
  }

  return result;
}

CFMutableArrayRef create_array()
{
  result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    debuglog("create_array", @"Out of Memory!!! Dying!...so...cold....", v1, v2, v3, v4, v5, v6, vars0);
    exit(-1);
  }

  return result;
}

CFStringRef create_string(char *cStr)
{
  result = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (!result)
  {
    debuglog("create_string", @"Out of Memory!!! Dying!...so...cold....", v2, v3, v4, v5, v6, v7, vars0);
    exit(-1);
  }

  return result;
}

uint64_t set_hostmultiuserconfig(uint32_t a1)
{
  v2 = MEMORY[0x1CCA7A830]();

  return host_set_multiuser_config_flags(v2, a1);
}

uint64_t GetConfiguredForegroundUserID()
{
  v3 = 0;
  hostmultiuserconfig = get_hostmultiuserconfig(&v3);
  if (v3 >= 0)
  {
    v1 = -1;
  }

  else
  {
    v1 = v3 & 0x3FFFFFFF;
  }

  if (hostmultiuserconfig)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v1;
  }
}

uint64_t get_port_type(mach_port_name_t name)
{
  ptype = 0;
  if (mach_port_type(*MEMORY[0x1E69E9A60], name, &ptype))
  {
    return 0;
  }

  else
  {
    return ptype;
  }
}

unint64_t twoSigFigsWithRoundUp(unint64_t result)
{
  for (i = 0x8AC7230489E80000; i >= result; i /= 0xAuLL)
  {
    if (i <= 0x3E7)
    {
      return result;
    }
  }

  return (5 * (i / 0x64) + result) / (i / 0xA) * (i / 0xA);
}

void log_port_type(mach_port_name_t name)
{
  v1 = name;
  ptype = 0;
  v2 = mach_port_type(*MEMORY[0x1E69E9A60], name, &ptype);
  v9 = ptype;
  if (v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = ptype == 0;
  }

  if (v10)
  {
    v11 = @"Port:%d has NORIGHTS";
LABEL_16:
    debuglog("log_port_type", v11, v3, v4, v5, v6, v7, v8, v1);
    return;
  }

  if ((ptype & 0x10000) != 0)
  {
    debuglog("log_port_type", @"Port:%d has SENDRIGHT", v3, v4, v5, v6, v7, v8, v1);
    if ((v9 & 0x20000) == 0)
    {
LABEL_9:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      debuglog("log_port_type", @"Port:%d has SENDONCERIGHT", v3, v4, v5, v6, v7, v8, v1);
      if ((v9 & 0x100000) == 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((ptype & 0x20000) == 0)
  {
    goto LABEL_9;
  }

  debuglog("log_port_type", @"Port:%d has RECEIVERIGHT", v3, v4, v5, v6, v7, v8, v1);
  if ((v9 & 0x40000) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v9 & 0x100000) != 0)
  {
LABEL_15:
    v11 = @"Port:%d has DEADNAME";
    goto LABEL_16;
  }
}

unsigned __int16 *_apfs_get_all_crypto_ids(int a1)
{
  v26[96] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1C867ED40;
  v23 = &v24;
  v9 = 0;
  if (ffsctl(a1, 0x80184A07uLL, &v22, 0))
  {
LABEL_12:
    _apfs_get_all_crypto_ids_cold_1(v9, v2, v3, v4, v5, v6, v7, v8);
    v9 = 0;
  }

  else
  {
    while (1)
    {
      v10 = v25;
      if (!v25)
      {
        break;
      }

      if (v9)
      {
        v11 = v9[4];
      }

      else
      {
        v11 = 0;
      }

      v12 = reallocf(v9, 24 * (v11 + v25) + 16);
      v9 = v12;
      if (!v12)
      {
        _apfs_get_all_crypto_ids_cold_2(0, v13, v14, v15, v16, v17, v18, v19);
        break;
      }

      if (v22 == -1)
      {
        memset_s(v12, 0x10uLL, 0, 0x10uLL);
        v10 = v25;
      }

      memcpy(&v9[12 * v9[4] + 8], v26, 24 * v10);
      v9[4] += v10;
      if (v10)
      {
        *&v22 = v26[3 * (v10 - 1) + 1] + v26[3 * (v10 - 1)];
      }

      if (ffsctl(a1, 0x80184A07uLL, &v22, 0))
      {
        goto LABEL_12;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v9;
}

void *_apfs_copy_wrapped_key_from_file(int a1, uint64_t a2, CFTypeRef *a3)
{
  v6 = malloc_type_malloc(0x400uLL, 0x42DDACE7uLL);
  v18[0] = a2;
  v18[1] = 1024;
  v18[2] = v6;
  if (ffsctl(a1, 0x80184A08uLL, v18, 0) < 0)
  {
    v7 = __error();
    strerror(*v7);
    debuglog("_apfs_copy_wrapped_key_from_file", @"Could not get wrapped crypto key for inode %llu right now: %s", v8, v9, v10, v11, v12, v13, a2);
    if (a3)
    {
      if (*a3)
      {
        CFRelease(*a3);
        *a3 = 0;
      }

      v14 = *MEMORY[0x1E695E480];
      v15 = *MEMORY[0x1E695E640];
      v16 = __error();
      *a3 = CFErrorCreate(v14, v15, *v16, 0);
    }

    free(v6);
    return 0;
  }

  return v6;
}

uint64_t is_device_in_device_recovery_environment()
{
  if (is_device_in_device_recovery_environment_once != -1)
  {
    is_device_in_device_recovery_environment_cold_1();
  }

  return is_device_in_device_recovery_environment_answer;
}

uint64_t mkb_time_start(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = mach_absolute_time();
    *v1 = result;
  }

  return result;
}

double mkb_time_stop(uint64_t a1, void *a2)
{
  v4 = mach_absolute_time();
  if (!mkb_time_stop_time_overhead_measured)
  {
    v6 = mach_absolute_time();
    mkb_time_stop_time_overhead_measured = mach_absolute_time() - v6;
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v8) = info.denom;
    LODWORD(v7) = info.numer;
    result = v7 / v8;
    mkb_time_stop_timebase_factor = *&result;
  }

  if (a2)
  {
    result = *&mkb_time_stop_timebase_factor * (v4 - a1 - mkb_time_stop_time_overhead_measured) / 1000.0;
    *a2 = result;
  }

  return result;
}

void sub_1C866CE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C866D078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C866D25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_1C866D524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C866DD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C866E58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C866F390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C866F5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C866F888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C866FFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C8670240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C86708CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8670AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8670E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1C8671124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C8671670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C867195C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8671FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8672D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8672F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MKBEventsUnregister(uint64_t a1)
{
  if (a1)
  {
    IOObjectRelease(*(a1 + 16));
    IONotificationPortDestroy(*a1);
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __MKBEventsUnregister_block_invoke;
    block[3] = &__block_descriptor_tmp_0;
    block[4] = a1;
    dispatch_barrier_async(v2, block);
  }
}

void __MKBEventsUnregister_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 20) = 0;
  _Block_release(*(v2 + 8));
  dispatch_release(*(*(a1 + 32) + 24));
  v3 = *(a1 + 32);

  free(v3);
}

const __CFDictionary *HealthPlistGetBuild(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"_DSEUN");
  }

  return result;
}

uint64_t HealthPlistSetBuild(CFMutableDictionaryRef theDict, void *value)
{
  result = 0xFFFFFFFFLL;
  if (theDict)
  {
    if (value)
    {
      CFDictionarySetValue(theDict, @"_DSEUN", value);
      return 0;
    }
  }

  return result;
}

const __CFDictionary *HealthPlistGetUnlockDate(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"_DULD");
  }

  return result;
}

uint64_t HealthPlistSetUnlockDate(CFMutableDictionaryRef theDict, uint64_t a2)
{
  if (theDict)
  {
    if (a2 < 1)
    {
      CFDictionaryRemoveValue(theDict, @"_DULD");
      return 0;
    }

    v3 = *MEMORY[0x1E695E480];
    OUTLINED_FUNCTION_0();
    v7 = CFNumberCreate(v4, v5, v6);
    if (v7)
    {
      v14 = v7;
      CFDictionarySetValue(theDict, @"_DULD", v7);
      CFRelease(v14);
      return 0;
    }

    debuglog("HealthPlistSetUnlockDate", @"unable to allocate", v8, v9, v10, v11, v12, v13, v16);
  }

  return 0xFFFFFFFFLL;
}

const __CFDictionary *HealthPlistGetLockDate(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"_DLD");
  }

  return result;
}

uint64_t HealthPlistSetLockDate(CFMutableDictionaryRef theDict, uint64_t a2)
{
  if (theDict)
  {
    if (a2 < 1)
    {
      CFDictionaryRemoveValue(theDict, @"_DLD");
      return 0;
    }

    v3 = *MEMORY[0x1E695E480];
    OUTLINED_FUNCTION_0();
    v7 = CFNumberCreate(v4, v5, v6);
    if (v7)
    {
      v14 = v7;
      CFDictionarySetValue(theDict, @"_DLD", v7);
      CFRelease(v14);
      return 0;
    }

    debuglog("HealthPlistSetLockDate", @"unable to allocate", v8, v9, v10, v11, v12, v13, v16);
  }

  return 0xFFFFFFFFLL;
}

const __CFDictionary *HealthPlistGetFailed(const __CFDictionary *result)
{
  valuePtr = 0;
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_DFAIL");
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
        return valuePtr;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t HealthPlistSetFailed(__CFDictionary *a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x1E695E480];
    OUTLINED_FUNCTION_0();
    v6 = CFNumberCreate(v3, v4, v5);
    if (v6)
    {
      CFDictionarySetValue(a1, @"_DFAIL", v6);
      return 0;
    }

    debuglog("HealthPlistSetFailed", @"unable to allocate", v7, v8, v9, v10, v11, v12, v14);
  }

  return 0xFFFFFFFFLL;
}

uint64_t HealthPlistSetTTR(CFMutableDictionaryRef theDict, uint64_t a2)
{
  if (theDict)
  {
    if (a2 < 1)
    {
      CFDictionaryRemoveValue(theDict, @"_DTTR");
      return 0;
    }

    v3 = *MEMORY[0x1E695E480];
    OUTLINED_FUNCTION_0();
    v7 = CFNumberCreate(v4, v5, v6);
    if (v7)
    {
      v14 = v7;
      CFDictionarySetValue(theDict, @"_DTTR", v7);
      CFRelease(v14);
      return 0;
    }

    debuglog("HealthPlistSetTTR", @"unable to allocate", v8, v9, v10, v11, v12, v13, v16);
  }

  return 0xFFFFFFFFLL;
}

const __CFDictionary *HealthPlistGetTTR(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"_DTTR");
  }

  return result;
}

uint64_t HealthPlistConsumeTTR(CFDictionaryRef theDict, void *a2)
{
  result = 0xFFFFFFFFLL;
  if (theDict && a2)
  {
    if (CFDictionaryGetValue(theDict, @"_DTTR"))
    {
      OUTLINED_FUNCTION_0();
      if (CFNumberGetValue(v5, v6, v7))
      {
        CFDictionaryRemoveValue(theDict, @"_DTTR");
        result = 0;
        *a2 = 0;
        return result;
      }

      debuglog("HealthPlistConsumeTTR", @"invalid ttr format", v8, v9, v10, v11, v12, v13, v14);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

const __CFDictionary *HealthPlistGetVersion(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"_DVERS");
  }

  return result;
}

uint64_t HealthPlistSetVersion(__CFDictionary *a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v3)
  {
    CFDictionarySetValue(a1, @"_DVERS", v3);
    return 0;
  }

  else
  {
    debuglog("HealthPlistSetVersion", @"cant allocate mem", v4, v5, v6, v7, v8, v9, v11);
    return 0xFFFFFFFFLL;
  }
}

const __CFDictionary *HealthPlistGetTime(const __CFDictionary *result)
{
  valuePtr = 0;
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_DTIME");
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
        return valuePtr;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t HealthPlistSetTime(__CFDictionary *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_0();
  v6 = CFNumberCreate(v3, v4, v5);
  if (v6)
  {
    CFDictionarySetValue(a1, @"_DTIME", v6);
    return 0;
  }

  else
  {
    debuglog("HealthPlistSetTime", @"cant allocate mem", v7, v8, v9, v10, v11, v12, v14);
    return 0xFFFFFFFFLL;
  }
}

const __CFDictionary *HealthPlistGetData(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"_DDATA");
  }

  return result;
}

uint64_t HealthPlistSetData(__CFDictionary *a1, void *value)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  CFDictionarySetValue(a1, @"_DDATA", value);
  return 0;
}

uint64_t HealthPlistAddToData(const __CFDictionary *a1, uint64_t a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v4)
  {
    debuglog("HealthPlistAddToData", @"unable to allocate", v5, v6, v7, v8, v9, v10, v21);
    return 0xFFFFFFFFLL;
  }

  v11 = v4;
  Value = CFDictionaryGetValue(a1, @"_DDATA");
  if (Value)
  {
    Mutable = Value;
    CFRetain(Value);
  }

  else
  {
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  }

  CFArrayAppendValue(Mutable, v11);
  if (CFArrayGetCount(Mutable) >= 15)
  {
    debuglog("HealthPlistAddToData", @"at capacity, forgetting oldest data entry", v14, v15, v16, v17, v18, v19, v21);
    CFArrayRemoveValueAtIndex(Mutable, 0);
  }

  CFDictionarySetValue(a1, @"_DDATA", Mutable);
  CFRelease(v11);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

const __CFData *KBisxARTBasedKeyBag(int a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != -1)
  {
    lock_state = aks_get_lock_state();
    if (!lock_state)
    {
      v9 = 0;
      goto LABEL_7;
    }

    debuglog("KBisxARTBasedKeyBag", @"get_lock_state() -> 0x%x", a3, a4, a5, a6, a7, a8, lock_state);
LABEL_9:
    v9 = 0;
    goto LABEL_7;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  Data = _getData(a2, @"KeyBagKeys");
  v9 = Data;
  if (Data)
  {
    CFDataGetBytePtr(Data);
    CFDataGetLength(v9);
    v9 = aks_bag_in_xart();
  }

LABEL_7:
  debuglog("KBisxARTBasedKeyBag", @"Result = %d", a3, a4, a5, a6, a7, a8, v9);
  return v9;
}

uint64_t KBSaveKeyBag(const __CFDictionary *a1, const char *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v10 = a3;
  v207 = *MEMORY[0x1E69E9840];
  v13 = KBisxARTBasedKeyBag(-1, a1, a3, a4, a5, a6, a7, a8);
  CFDictionarySetValue(a1, @"KeyBagVersion", @"1");
  if (v13)
  {
    CFDictionarySetValue(a1, @"KeybagxART", @"1");
  }

  if (mkdir(a2, 0x1C0u) && *__error() != 17)
  {
    v14 = __error();
    strerror(*v14);
    debuglog("KBSaveKeyBag", @"Can't create %s: %s", v15, v16, v17, v18, v19, v20, a2);
    v21 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  snprintf(__str, 0x401uLL, "%s/%s.kb", a2, a4);
  if ((MKBDeviceTreeContainsKey(":/defaults", @"no-effaceable-storage") != 0) | v13 & 1)
  {
    if (v13 && !MKBDeviceTreeContainsKey(":/defaults", @"no-effaceable-storage"))
    {
      effaceBlastableBytes(0x42414731u);
    }

    bzero(v206, 0x401uLL);
    v21 = 0xFFFFFFFFLL;
    v203 = -1;
    snprintf(v206, 0x401uLL, "%s.writing", __str);
    if (!store_binary_dict_fd(a1, v206, &v203))
    {
      v24 = OUTLINED_FUNCTION_2();
      if (renamex_np(v24, v25, 2u) && (v26 = *__error(), v27 = OUTLINED_FUNCTION_2(), rename(v27, v28, v29), v30))
      {
        v182 = __error();
        strerror(*v182);
        debuglog("KBSecureSaveObjectNoCrypto", @"could not rename %s to %s: %s (%d)", v183, v184, v185, v186, v187, v188, v206);
      }

      else if (fcntl(v203, 51))
      {
        v165 = __error();
        strerror(*v165);
        debuglog("KBSecureSaveObjectNoCrypto", @"Unable to fsync %s: %s", v166, v167, v168, v169, v170, v171, v206);
      }

      else
      {
        if (unlink(v206))
        {
          v31 = __error();
          v32 = strerror(*v31);
          debuglog("KBSecureSaveObjectNoCrypto", @"unlink failed: %s", v33, v34, v35, v36, v37, v38, v32);
        }

        v21 = 0;
      }
    }

    if (v203 != -1 && close(v203))
    {
      v39 = v203;
      v40 = __error();
      strerror(*v40);
      debuglog("KBSecureSaveObjectNoCrypto", @"failed to close(%d): %s", v41, v42, v43, v44, v45, v46, v39);
    }

    goto LABEL_6;
  }

  dataOutMoved = 0;
  cryptorRef = 0;
  v194 = 52;
  memset(v201, 0, sizeof(v201));
  v202 = 0;
  if (!v8)
  {
    v53 = *MEMORY[0x1E697B308];
    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, &v201[1] + 4))
    {
      v190 = @"Can't create key";
    }

    else
    {
      if (!SecRandomCopyBytes(v53, 0x10uLL, v201 + 4))
      {
LABEL_24:
        v60 = CFDataCreate(0, &v201[1] + 4, 32);
        if (v60)
        {
          v67 = v60;
          v68 = CFDataCreate(0, v201 + 4, 16);
          if (v68)
          {
            v75 = v68;
            v76 = convertObjectToBinary(a1);
            if (!v76)
            {
              debuglog("KBSecureSaveObjectWithCrypto", @"Can't serialize object", v77, v78, v79, v80, v81, v82, v191);
              v100 = 0;
              v21 = 4294967291;
LABEL_55:
              CFRelease(v67);
              CFRelease(v75);
              if (v100)
              {
                CFRelease(v100);
              }

              goto LABEL_57;
            }

            v83 = v76;
            v84 = CCCryptorCreate(0, 0, 1u, &v201[1] + 4, 0x20uLL, v201 + 4, &cryptorRef);
            if (v84)
            {
              debuglog("KBSecureSaveObjectWithCrypto", @"Can't create cryptor: %d", v85, v86, v87, v88, v89, v90, v84);
              v100 = 0;
            }

            else
            {
              Length = CFDataGetLength(v83);
              OutputLength = CCCryptorGetOutputLength(cryptorRef, Length, 1);
              Mutable = CFDataCreateMutable(0, OutputLength);
              v100 = Mutable;
              if (!Mutable)
              {
                v172 = "KBSecureSaveObjectWithCrypto";
                v173 = @"Can't create crypt buffer";
LABEL_71:
                debuglog(v172, v173, v94, v95, v96, v97, v98, v99, v191);
                v21 = 4294967291;
                goto LABEL_54;
              }

              CFDataSetLength(Mutable, OutputLength);
              v101 = cryptorRef;
              BytePtr = CFDataGetBytePtr(v83);
              MutableBytePtr = CFDataGetMutableBytePtr(v100);
              v104 = CCCryptorUpdate(v101, BytePtr, Length, MutableBytePtr, OutputLength, &dataOutMoved);
              if (!v104)
              {
                v111 = cryptorRef;
                v112 = CFDataGetMutableBytePtr(v100);
                CCCryptorFinal(v111, &v112[dataOutMoved], OutputLength - dataOutMoved, &dataOutMoved);
                valuePtr = v10;
                cf = 0;
                v197 = -1;
                v113 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v113)
                {
                  v114 = v113;
                  v115 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                  if (!v115)
                  {
                    goto LABEL_78;
                  }

                  CFDictionaryAddValue(v114, @"_MKBIV", v75);
                  CFDictionaryAddValue(v114, @"_MKBWIPEID", v115);
                  CFDictionaryAddValue(v114, @"_MKBPAYLOAD", v100);
                  snprintf(v206, 0x401uLL, "%s.writing", __str);
                  if (store_binary_dict_fd(v114, v206, &v197))
                  {
                    goto LABEL_78;
                  }

                  v116 = OUTLINED_FUNCTION_2();
                  if (renamex_np(v116, v117, 2u))
                  {
                    v118 = *__error();
                    v119 = OUTLINED_FUNCTION_2();
                    rename(v119, v120, v121);
                    if (v122)
                    {
                      v189 = __error();
                      strerror(*v189);
                      v192 = v206;
                      v181 = @"could not rename %s to %s: %s (%d)";
LABEL_77:
                      debuglog("KBSecureSaveObject", v181, v143, v144, v145, v146, v147, v148, v192);
                      goto LABEL_78;
                    }
                  }

                  if (fcntl(v197, 51))
                  {
                    v174 = __error();
                    strerror(*v174);
                    debuglog("KBSecureSaveObject", @"Unable to fsync %s: %s", v175, v176, v177, v178, v179, v180, v206);
LABEL_78:
                    v21 = 0xFFFFFFFFLL;
LABEL_47:
                    if (v197 != -1 && close(v197))
                    {
                      v157 = v197;
                      v158 = __error();
                      strerror(*v158);
                      debuglog("KBSecureSaveObject", @"failed to close(%d): %s", v159, v160, v161, v162, v163, v164, v157);
                    }

                    CFRelease(v114);
                    if (cf)
                    {
                      CFRelease(cf);
                    }

                    if (v115)
                    {
                      CFRelease(v115);
                    }

                    goto LABEL_54;
                  }

                  if ((v8 & 1) == 0)
                  {
                    v123 = valuePtr;
                    if (CFDataGetLength(v75) != 16 || CFDataGetLength(v67) != 32)
                    {
                      debuglog("storeWipeIDInfo", @"trying to store invalid iv or secret", v124, v125, v126, v127, v128, v129, v192);
                      goto LABEL_42;
                    }

                    memset(v205, 0, 32);
                    v204 = 0u;
                    v203 = v123;
                    v208.location = 0;
                    v208.length = 16;
                    CFDataGetBytes(v75, v208, &v204);
                    v209.location = 0;
                    v209.length = 32;
                    CFDataGetBytes(v67, v209, v205);
                    v130 = storeBlastableBytes(v123, &v203, 0x34uLL);
                    if (v130)
                    {
                      debuglog("storeWipeIDInfo", @"Unable to save wipe info: %08x", v131, v132, v133, v134, v135, v136, v130);
LABEL_42:
                      debuglog("KBSecureSaveObject", @"Oh no! Can't save wipe ID", v137, v138, v139, v140, v141, v142, v193);
                    }
                  }

                  if (!KBSecureLoadObjectWithCrypto(__str, &cf))
                  {
                    if (unlink(v206))
                    {
                      v149 = __error();
                      v150 = strerror(*v149);
                      debuglog("KBSecureSaveObject", @"unlink failed: %s", v151, v152, v153, v154, v155, v156, v150);
                    }

                    v21 = 0;
                    goto LABEL_47;
                  }

                  v181 = @"failed to validate newly created bag -- should never happen";
                  goto LABEL_77;
                }

                v172 = "KBSecureSaveObject";
                v173 = @"Can't create dict";
                goto LABEL_71;
              }

              debuglog("KBSecureSaveObjectWithCrypto", @"Can't encrypt: %d", v105, v106, v107, v108, v109, v110, v104);
            }

            v21 = 4294967289;
LABEL_54:
            CFRelease(v83);
            goto LABEL_55;
          }

          debuglog("KBSecureSaveObjectWithCrypto", @"Can't create iv data", v69, v70, v71, v72, v73, v74, v191);
          CFRelease(v67);
        }

        else
        {
          debuglog("KBSecureSaveObjectWithCrypto", @"Can't create key data", v61, v62, v63, v64, v65, v66, v191);
        }

        v21 = 4294967291;
        goto LABEL_57;
      }

      v190 = @"Can't create IV";
    }

    debuglog("KBSecureSaveObjectWithCrypto", v190, v54, v55, v56, v57, v58, v59, v191);
    goto LABEL_82;
  }

  if (!loadBlastableBytes(v10, v201, &v194))
  {
    goto LABEL_24;
  }

  debuglog("KBSecureSaveObjectWithCrypto", @"Unable to load wipe info:%08x", v47, v48, v49, v50, v51, v52, v10);
LABEL_82:
  v21 = 0xFFFFFFFFLL;
LABEL_57:
  if (cryptorRef)
  {
    CCCryptorRelease(cryptorRef);
  }

LABEL_6:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t KBSaveSystemBagHandle(int a1, const char *a2, const void *a3, int a4, uint64_t a5)
{
  v42[129] = *MEMORY[0x1E69E9840];
  if (MKBDeviceSupportsEnhancedAPFS() && a1)
  {
    v36 = 0;
    goto LABEL_27;
  }

  if (a5)
  {
    v16 = @"Saving SystemBag with NO EFFACEABLE ROLL";
  }

  else
  {
    v16 = @"Saving SystemBag with EFFACEABLE ROLL";
  }

  debuglog("KBSaveSystemBagHandle", v16, v10, v11, v12, v13, v14, v15, v39);
  v17 = MKBDeviceSupportsEnhancedAPFS();
  if (a1 || !v17)
  {
    v42[0] = 0;
    *bytes = 0;
    if (!aks_save_bag())
    {
      v26 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v42[0], *bytes, *MEMORY[0x1E695E480]);
      if (v26)
      {
        v25 = v26;
        goto LABEL_14;
      }
    }

LABEL_28:
    v36 = 0xFFFFFFFFLL;
    goto LABEL_27;
  }

  *bytes = 1752065072;
  LODWORD(v42[0]) = -1;
  if (aks_load_bag())
  {
    goto LABEL_28;
  }

  aks_unload_bag();
  v18 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 4);
  if (!v18)
  {
    goto LABEL_28;
  }

  v25 = v18;
  debuglog("KBSaveSystemBagHandle", @"Saving handle 0 with the magic handle", v19, v20, v21, v22, v23, v24, v40);
LABEL_14:
  dict = create_dict();
  if (dict)
  {
    v28 = dict;
    CFDictionaryAddValue(dict, @"KeyBagKeys", v25);
    if (a3)
    {
      CFDictionaryAddValue(v28, @"OpaqueStuff", a3);
    }

    if (a4)
    {
      v29 = KBLoadSystemKeyBag();
      if (v29)
      {
        v30 = v29;
        Value = CFDictionaryGetValue(v29, @"BackupKeyBagKeys");
        if (Value)
        {
          v32 = Value;
          CFRetain(Value);
          CFRelease(v30);
          CFDictionarySetValue(v28, @"BackupKeyBagKeys", v32);
          v30 = v32;
        }

        CFRelease(v30);
      }
    }

    snprintf(v42, 0x401uLL, "%s/%s", a2, "keybags");
    if (KBSaveKeyBag(v28, v42, 1111574321, "systembag", a5, v33, v34, v35))
    {
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      v36 = 0;
    }

    CFRelease(v28);
  }

  else
  {
    v36 = 0xFFFFFFFFLL;
  }

  CFRelease(v25);
LABEL_27:
  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t KBSaveUserBagHandle(int a1, uint64_t a2, const void *a3, int a4)
{
  v36 = *MEMORY[0x1E69E9840];
  memset(&theDict[1] + 4, 0, 12);
  theDict[0] = 0;
  if (MKBDeviceSupportsEnhancedAPFS())
  {
    KeyBagFile = 0;
    goto LABEL_40;
  }

  if (a4)
  {
    v14 = @"Saving UserBag for uid %d with NO EFFACEABLE ROLL";
  }

  else
  {
    v14 = @"Saving UserBag for uid %d with EFFACEABLE ROLL";
  }

  debuglog("KBSaveUserBagHandle", v14, v8, v9, v10, v11, v12, v13, a2);
  snprintf(__str, 0x401uLL, "%s%s", "/private/var/", "keybags");
  KeyBagFile = KBLoadLoadKeyBagFile(__str, "userbag", theDict);
  v16 = *MEMORY[0x1E695E480];
  if (!KeyBagFile || (theDict[0] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
  {
    v17 = CFStringCreateWithFormat(v16, 0, @"%d", a2);
    if (v17)
    {
      if (a1 == -1)
      {
        v22 = theDict[0];
        CFDictionaryRemoveValue(theDict[0], v17);
        v19 = 0;
        v21 = 0;
        goto LABEL_15;
      }

      if (!aks_save_bag())
      {
        v18 = CFDataCreateWithBytesNoCopy(v16, theDict[2], SHIDWORD(theDict[1]), v16);
        if (v18)
        {
          v19 = v18;
          Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Mutable)
          {
            v24 = 0;
            v28 = 0;
LABEL_31:
            CFRelease(v19);
LABEL_32:
            if (theDict[0])
            {
              CFRelease(theDict[0]);
              theDict[0] = 0;
            }

            if (v17)
            {
              CFRelease(v17);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            if (v28)
            {
              CFRelease(v28);
            }

            goto LABEL_40;
          }

          v21 = Mutable;
          CFDictionarySetValue(Mutable, @"KeyBagKeys", v19);
          if (a3)
          {
            CFDictionarySetValue(v21, @"OpaqueStuff", a3);
          }

          v22 = theDict[0];
          CFDictionarySetValue(theDict[0], v17, v21);
LABEL_15:
          Current = CFAbsoluteTimeGetCurrent();
          v24 = CFDateCreate(v16, Current);
          if (!CFDictionaryGetValue(v22, @"LastWipeKeyUpdateTimeStamp"))
          {
            CFDictionarySetValue(v22, @"WipeKeyUpdatePending", *MEMORY[0x1E695E4C0]);
            CFDictionarySetValue(v22, @"LastWipeKeyUpdateTimeStamp", v24);
            v28 = 0;
LABEL_17:
            v29 = 0;
            goto LABEL_25;
          }

          v30 = MEMORY[0x1CCA79E80]();
          v28 = CFDateCreate(v16, v30 + 86400.0);
          if (CFDateCompare(v28, v24, 0) == kCFCompareLessThan)
          {
            Value = CFDictionaryGetValue(v22, @"WipeKeyUpdatePending");
            if (CFEqual(Value, *MEMORY[0x1E695E4D0]) || (a4 & 1) == 0)
            {
              CFDictionarySetValue(v22, @"LastWipeKeyUpdateTimeStamp", v24);
              CFDictionarySetValue(v22, @"WipeKeyUpdatePending", *MEMORY[0x1E695E4C0]);
              goto LABEL_17;
            }
          }

          else if ((a4 & 1) == 0)
          {
            CFDictionarySetValue(v22, @"WipeKeyUpdatePending", *MEMORY[0x1E695E4D0]);
          }

          v29 = 1;
LABEL_25:
          if (KBSaveKeyBag(v22, __str, 1111574322, "userbag", v29, v25, v26, v27))
          {
            KeyBagFile = KeyBagFile;
          }

          else
          {
            KeyBagFile = 0;
          }

          if (v21)
          {
            CFRelease(v21);
          }

          if (!v19)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }
      }
    }

    v24 = 0;
    v28 = 0;
    goto LABEL_32;
  }

LABEL_40:
  v32 = *MEMORY[0x1E69E9840];
  return KeyBagFile;
}

const void *KBSystemKeyBagCopyOpaqueStuff()
{
  v0 = KBLoadSystemKeyBag();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"OpaqueStuff");
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v1);
  return v3;
}

uint64_t KBChangeSystemNonSeSecret(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v70 = -1;
  v17 = KBisxARTBasedKeyBag(a1, 0, a3, a4, a5, a6, a7, a8);
  v18 = "two";
  if (v17)
  {
    v18 = "single";
  }

  debuglog("KBChangeSystemNonSeSecret", @"changing non-SE passcode %s phase, (params:%d)", v11, v12, v13, v14, v15, v16, v18);
  v69 = 0;
  v19 = aks_change_secret_opts();
  if (v19)
  {
    debuglog("KBChangeSystemNonSeSecret", @"change-secret failed %x", v20, v21, v22, v23, v24, v25, v19);
    goto LABEL_28;
  }

  if (v17)
  {
    v70 = a1;
    if (a1)
    {
      v30 = KBSaveUserBagHandle(a1, a2, a7, 0);
      if (!v30)
      {
LABEL_10:
        if ((v17 & 1) == 0)
        {
          v38 = aks_set_system_with_opts();
          if (v38)
          {
            debuglog("KBChangeSystemNonSeSecret", @"set-system failed %d", v39, v40, v41, v42, v43, v44, v38);
            v52 = 1;
            goto LABEL_30;
          }
        }

        v45 = aks_change_secret_epilogue_with_opts();
        v37 = v45;
        if (v45)
        {
          debuglog("KBChangeSystemNonSeSecret", @"aks_change_secret_epilogue() failed %x", v46, v47, v48, v49, v50, v51, v45);
        }

LABEL_14:
        v52 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1();
      v30 = KBSaveSystemBagHandle(v26, v27, v28, v29, 0);
      if (!v30)
      {
        goto LABEL_10;
      }
    }

    v37 = v30;
    debuglog("KBChangeSystemNonSeSecret", @"unable to save bag %d", v31, v32, v33, v34, v35, v36, a1);
    goto LABEL_14;
  }

  debuglog("KBChangeSystemNonSeSecret", @"temp handle is invalid: %d", v20, v21, v22, v23, v24, v25, -1);
LABEL_28:
  v52 = 0;
LABEL_30:
  v37 = 0xFFFFFFFFLL;
LABEL_15:
  if (v70 == -1)
  {
    v53 = 1;
  }

  else
  {
    v53 = v17;
  }

  if ((v53 & 1) == 0)
  {
    aks_unload_bag();
  }

  if (v52)
  {
    if (a1)
    {
      OUTLINED_FUNCTION_1();
      if (!KBSaveUserBagHandle(v65, v66, v67, v68))
      {
        return v37;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1();
      if (!KBSaveSystemBagHandle(v55, v56, v57, v58, 1))
      {
        return v37;
      }
    }

    debuglog("KBChangeSystemNonSeSecret", @"welp, unable to persist old bag", v59, v60, v61, v62, v63, v64, v69);
  }

  return v37;
}

uint64_t KBChangeSystemSecretWithEscrow(CFDataRef theData, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7)
  {
    if (theData)
    {
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
    }

    OUTLINED_FUNCTION_0_0();
    if (aks_recover_with_escrow_bag_with_acm())
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (theData)
    {
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
    }

    OUTLINED_FUNCTION_0_0();
    if (aks_recover_with_escrow_bag())
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (MKBDeviceSupportsEnhancedAPFS())
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();

  return KBSaveSystemBagHandle(v9, v10, v11, v12, 0);
}

uint64_t MKBDeviceTreeContainsKey(const char *a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = strlen(a1);
  v5 = malloc_type_malloc(v4 + 13, 0x2DB0D7C0uLL);
  if (!v5)
  {
    return 4294967291;
  }

  v6 = v5;
  snprintf(v5, v4 + 13, "%s%s", "IODeviceTree", a1);
  v7 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], v6);
  if (v7)
  {
    v8 = v7;
    CFProperty = IORegistryEntryCreateCFProperty(v7, a2, *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    IOObjectRelease(v8);
  }

  else
  {
    v10 = 4294967288;
  }

  free(v6);
  return v10;
}

void KBSecureLoadObjectWithCrypto_cold_1(char a1)
{
  v2 = __error();
  strerror(*v2);
  debuglog("KBSecureLoadObject", @"could not rename %s to %s: %s", v3, v4, v5, v6, v7, v8, a1);
}

uint64_t MKBKeyBagKeyStashCreateWithOpts(const __CFDictionary *a1, uint64_t a2, const __CFData *a3, const __CFData *a4)
{
  handleToUse(0);
  v14 = ShouldSkipSE(a1);
  v54 = 0;
  if (a2 && (a3 != 0) != (a4 == 0))
  {
    debuglog("MKBKeyBagKeyStashCreateWithOpts", @"passcode and acm are mutually exclusive", v8, v9, v10, v11, v12, v13, v53);
    v44 = 4294967279;
  }

  else
  {
    if (_get_userid_from_options(a1, &v54))
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    v16 = a3 != 0;
    if (a3)
    {
      ++v15;
    }

    else
    {
      a3 = a4;
    }

    if (v14)
    {
      v17 = v15 | 4;
    }

    else
    {
      v17 = v15;
    }

    if (a1)
    {
      Value = CFDictionaryGetValue(a1, @"Manifest");
      if (Value)
      {
        v19 = Value;
        v20 = CFGetTypeID(Value);
        if (v20 != CFDataGetTypeID())
        {
          v46 = CFGetTypeID(v19);
          debuglog("MKBKeyBagKeyStashCreateWithOpts", @"manifest is of wrong type %lu", v47, v48, v49, v50, v51, v52, v46);
          v44 = 0xFFFFFFFFLL;
          goto LABEL_20;
        }

        BytePtr = CFDataGetBytePtr(v19);
        Length = CFDataGetLength(v19);
        log_blob("first manifest", BytePtr, Length, v23, v24, v25, v26, v27);
        v28 = CFDataGetLength(v19);
        v29 = CFDataGetBytePtr(v19);
        if (!quick_der_check(v29, v28))
        {
          v44 = 4294967277;
          goto LABEL_20;
        }

        if (a3)
        {
          CFDataGetBytePtr(a3);
          CFDataGetLength(a3);
        }

        CFDataGetBytePtr(v19);
        CFDataGetLength(v19);
        v36 = aks_migrate_s_key();
        if (v36)
        {
          v44 = v36;
          debuglog("MKBKeyBagKeyStashCreateWithOpts", @"failed to migrate skey, opts: %u", v37, v38, v39, v40, v41, v42, v16);
          goto LABEL_20;
        }
      }
    }

    v43 = +[MKBKeyStoreDevice sharedService];
    v44 = [v43 stashCreateWithSecret:a3 withMode:a2 withUID:v54 WithFlags:v17];
  }

LABEL_20:
  debuglog("MKBKeyBagKeyStashCreateWithOpts", @"result = %d (stash_mode:%d, uid:%d, flags:0x%x)", v30, v31, v32, v33, v34, v35, v44);
  return v44;
}

uint64_t MKBKeyBagKeyStashCreateWithManifest(uint64_t a1, const __CFData *a2, const void *a3)
{
  if (!a3)
  {
    return 4294966296;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294966296;
  }

  v7 = Mutable;
  CFDictionaryAddValue(Mutable, @"Manifest", a3);
  v8 = MKBKeyBagKeyStashCreateWithOpts(v7, a1, 0, a2);
  CFRelease(v7);
  return v8;
}

uint64_t _MKBKeyBagKeyStashSetManifest(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v9 = CFGetTypeID(a1);
  if (v9 != CFDataGetTypeID())
  {
    v14 = CFGetTypeID(a1);
    debuglog("_MKBKeyBagKeyStashSetManifest", @"manifest is of wrong type %lu", v15, v16, v17, v18, v19, v20, v14);
LABEL_7:
    v12 = 4294966296;
    goto LABEL_5;
  }

  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  if (quick_der_check(BytePtr, Length))
  {
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    v12 = aks_migrate_s_key();
  }

  else
  {
    v12 = 4294967277;
  }

LABEL_5:
  debuglog("_MKBKeyBagKeyStashSetManifest", @"result = %d", a3, a4, a5, a6, a7, a8, v12);
  return v12;
}

uint64_t MKBKeyBagKeyStashSetManifest(const void *a1)
{
  v2 = handleToUse(0);

  return _MKBKeyBagKeyStashSetManifest(a1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t MKBKeyBagKeyStashEnableWithManifest(const void *a1)
{
  if (!a1)
  {
    return 4294966296;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294966296;
  }

  v3 = Mutable;
  CFDictionaryAddValue(Mutable, @"Manifest", a1);
  v4 = MKBKeyBagKeyStashEnableWithOpts(v3);
  CFRelease(v3);
  return v4;
}

uint64_t MKBKeyBagKeyStashEnableWithOpts(const __CFDictionary *a1)
{
  v2 = handleToUse(a1);
  if (!a1 || (Value = CFDictionaryGetValue(a1, @"Manifest")) == 0 || (v11 = _MKBKeyBagKeyStashSetManifest(Value, v2, v4, v5, v6, v7, v8, v9), !v11))
  {
    v10 = aks_stash_enable();
    v11 = convertAKSErrorToMKB(v10);
  }

  v18 = v11;
  debuglog("MKBKeyBagKeyStashEnableWithOpts", @"result = %d, (handle:%d)", v12, v13, v14, v15, v16, v17, v11);
  return v18;
}

uint64_t MKBKeyBagKeyStashCommitWithOpts(const __CFDictionary *a1)
{
  v13 = 0;
  userid_from_options = _get_userid_from_options(a1, &v13);
  v2 = +[MKBKeyStoreDevice sharedService];
  v3 = v2;
  if (userid_from_options)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 stashCommit:v13 WithFlags:v4];

  debuglog("MKBKeyBagKeyStashCommitWithOpts", @"result = %d, (uid:%u, flags:0x%x)", v6, v7, v8, v9, v10, v11, v5);
  return v5;
}

__CFDictionary *MKBKeyBagKeyStashVerifyWithOpts(const __CFDictionary *a1)
{
  v12 = 0;
  valuePtr = 2;
  v1 = MEMORY[0x1E695E4C0];
  v11 = 0;
  if (_get_userid_from_options(a1, &v11))
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  dict = create_dict();
  if (dict)
  {
    valuePtr = 2;
  }

  v4 = *v1;
  v5 = +[MKBKeyStoreDevice sharedService];
  v6 = [v5 stashVerifywithValidity:&valuePtr WithUID:v11 WithFlags:v2];

  if (v6)
  {
    valuePtr = 2;
  }

  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  OUTLINED_FUNCTION_4(v7, @"StashBagValidOnDisk");
  CFRelease(v7);
  lock_state = aks_get_lock_state();
  if (!convertAKSErrorToMKB(lock_state))
  {
    v9 = *MEMORY[0x1E695E4D0];
    if ((v12 & 0x400) != 0)
    {
      v4 = *MEMORY[0x1E695E4D0];
    }
  }

  CFDictionarySetValue(dict, @"StashStagedManifest", v4);
  CFRelease(v4);
  return dict;
}

uint64_t _MKBKeyBagChangeSystemSecretOpts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFDictionaryRef theDict, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (!theDict)
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(theDict, @"OverrideMemento");
  if (Value)
  {
    v14 = Value;
    v15 = CFGetTypeID(Value);
    if (v15 == CFBooleanGetTypeID())
    {
      v22 = 2 * (CFBooleanGetValue(v14) != 0);
      goto LABEL_6;
    }

    debuglog("__options_to_change_secret_params", @"key is of wrong type", v16, v17, v18, v19, v20, v21, v36);
LABEL_15:
    v22 = 0;
    goto LABEL_10;
  }

  v22 = 0;
LABEL_6:
  v23 = CFDictionaryGetValue(theDict, @"UseMementoBlob");
  if (v23)
  {
    v24 = v23;
    v25 = CFGetTypeID(v23);
    if (v25 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v24))
      {
        ++v22;
      }
    }

    else
    {
      debuglog("__options_to_change_secret_params", @"key is of wrong type", v26, v27, v28, v29, v30, v31, v36);
    }
  }

LABEL_10:
  if (v9)
  {
    v32 = v22 | 4;
  }

  else
  {
    v32 = v22;
  }

  debuglog("_MKBKeyBagChangeSystemSecretOpts", @"params = %d", a3, a4, theDict, a6, a7, a8, v32);
  v33 = +[MKBKeyStoreDevice sharedService];
  v34 = [v33 changeSystemSecretFromOldPasscode:a1 ToNew:a2 withOpaqueData:a4 withParams:v32];

  return v34;
}

unint64_t MKBKeyBagMementoIsSupported(const __CFDictionary *a1)
{
  v1 = MKBGetDeviceConfigurations(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, @"MementoSupported");
  v4 = Value;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    v4 = v5 == CFBooleanGetTypeID() && v4 == *MEMORY[0x1E695E4D0];
  }

  CFRelease(v2);
  return v4;
}

uint64_t MKBKeyBagMementoGetBlobState(const __CFDictionary *a1, CFMutableDictionaryRef *a2)
{
  v14 = 0;
  v15 = 0;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = Mutable;
  handleToUse(a1);
  state = aks_memento_get_state();
  if (state)
  {
    v12 = convertAKSErrorToMKB(state);
LABEL_15:
    CFRelease(v6);
    return v12;
  }

  v8 = CFNumberCreate(v4, kCFNumberSInt8Type, &v14);
  OUTLINED_FUNCTION_4(v8, @"MementoBlobSeSlot");
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = CFNumberCreate(v4, kCFNumberSInt32Type, &v14 + 4);
  OUTLINED_FUNCTION_4(v9, @"MementoBlobFailedAttempts");
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = CFNumberCreate(v4, kCFNumberSInt32Type, &v15);
  OUTLINED_FUNCTION_4(v10, @"MementoBlobMaxUnlockAttempts");
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = CFNumberCreate(v4, kCFNumberSInt32Type, &v15 + 4);
  CFDictionarySetValue(v6, @"MementoBlobState", v11);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = 0;
  if (!a2)
  {
    goto LABEL_15;
  }

  *a2 = v6;
  return v12;
}

uint64_t make_random_key(uint64_t a1)
{
  if (*(a1 + 1072))
  {
    return 0;
  }

  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, (a1 + 1036)))
  {
    return 0xFFFFFFFFLL;
  }

  if (CCCryptorCreate(0, 0, 1u, (a1 + 1036), 0x20uLL, 0, (a1 + 1072)))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t MKBFileOpenForBackup(const __CFString *a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_3();
  if (!v4)
  {
    return 4294967291;
  }

  v5 = v4;
  bzero(v4, 0x558uLL);
  v6 = 0xFFFFFFFFLL;
  *(v5 + 257) = -1;
  if (!CFStringGetCString(a1, v5, 1025, 0x8000100u))
  {
    goto LABEL_17;
  }

  if (stat(v5, (v5 + 1088)))
  {
    goto LABEL_16;
  }

  v14 = open(v5, 256);
  *(v5 + 257) = v14;
  if (v14 == -1)
  {
    if (*__error() == 1)
    {
      v14 = open_dprotected_np(v5, 256, 0, 1);
      *(v5 + 257) = v14;
      if (v14 != -1)
      {
        v5[1080] = 1;
        goto LABEL_9;
      }

LABEL_16:
      v6 = 4294967290;
LABEL_17:
      MKBFileClose(v5, v7, v8, v9, v10, v11, v12, v13);
      return v6;
    }

    v14 = *(v5 + 257);
    if (v14 == -1)
    {
      goto LABEL_16;
    }
  }

LABEL_9:
  v15 = fcntl(v14, 63);
  *(v5 + 308) = v15;
  if (v15 == -1)
  {
    goto LABEL_16;
  }

  if ((v15 - 8) < 0xFFFFFFF9)
  {
    v6 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  if (v15 - 3) <= 0xFFFFFFFD && (v5[1080])
  {
    close(*(v5 + 257));
    return 4294967294;
  }

  else
  {
    v6 = 0;
    *a2 = v5;
  }

  return v6;
}

uint64_t MKBFileCreateForRestore(const __CFString *a1, uint64_t a2, CFDataRef theData, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!theData || (BytePtr = CFDataGetBytePtr(theData), !CFStringGetCString(a1, buffer, 1025, 0x8000100u)))
  {
    v20 = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  v9 = OUTLINED_FUNCTION_3();
  if (!v9)
  {
    v20 = 4294967291;
    goto LABEL_21;
  }

  v10 = v9;
  bzero(v9, 0x558uLL);
  *(v10 + 257) = -1;
  if ((CFDataGetLength(theData) & 0xFFFFFFFFFFFFFF7FLL) != 0x2C)
  {
    CC_SHA1_Init((v10 + 1236));
    v10[1080] = 1;
    *(v10 + 271) = bswap32(*(BytePtr + 5));
    v11 = bswap32(*(BytePtr + 6));
    CFDataGetLength(theData);
    v21 = *(a2 + 16);
    if (!aks_unwrap_key())
    {
      goto LABEL_13;
    }

LABEL_9:
    v20 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v11 = *BytePtr;
  CFDataGetLength(theData);
  v12 = *(a2 + 16);
  if (aks_unwrap_key())
  {
    goto LABEL_9;
  }

  if (CCCryptorCreate(1u, 0, 1u, v10 + 1036, 0x20uLL, 0, v10 + 134))
  {
    v20 = 4294967289;
    goto LABEL_10;
  }

LABEL_13:
  if (v11 == 1)
  {
    v22 = 2;
  }

  else
  {
    v22 = v11;
  }

  if (v22 == 17)
  {
    v23 = 7;
  }

  else
  {
    v23 = v22;
  }

  v24 = open_dprotected_np(buffer, 2817, v23, 0, 420);
  *(v10 + 257) = v24;
  if (v24 != -1)
  {
    v20 = 0;
    *a4 = v10;
    goto LABEL_21;
  }

  v27 = __error();
  strerror(*v27);
  debuglog("MKBFileCreateForRestore", @"Can't create file to restore to (class: %d): %s", v28, v29, v30, v31, v32, v33, v22);
  v20 = 4294967290;
LABEL_10:
  if (*(v10 + 257) != -1)
  {
    unlink(buffer);
  }

  MKBFileClose(v10, v13, v14, v15, v16, v17, v18, v19);
LABEL_21:
  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

size_t MKBFileWrite(uint64_t a1, char *data, size_t size, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = size;
  v73 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1080) != 1)
  {
    v22 = 0;
    dataOutMoved = 0;
    dataIn = 0;
    if (*(a1 + 1032))
    {
LABEL_41:
      v8 = v22;
      goto LABEL_42;
    }

    if ((size & 0xF) != 0)
    {
      debuglog("MKBFileWriteTranscrypt", @"buffer size %zu not a multiple of %d\n", size, a4, a5, a6, a7, a8, size);
    }

    else if (size)
    {
      v23 = malloc_type_malloc(size, 0x9260009DuLL);
      if (v23)
      {
        v30 = v23;
        v31 = CCCryptorUpdate(*(a1 + 1072), data, v8, v23, v8, &dataOutMoved);
        if (v31)
        {
          debuglog("MKBFileWriteTranscrypt", @"CCCryptorUpdate() failed: %d\n", v32, v33, v34, v35, v36, v37, v31);
        }

        else
        {
          v22 = writen(*(a1 + 1028), v30, dataOutMoved);
          if (v22 == dataOutMoved)
          {
LABEL_28:
            free(v30);
            goto LABEL_41;
          }

          v51 = __error();
          dataOuta = strerror(*v51);
          debuglog("MKBFileWriteTranscrypt", @"write failed: %s\n", v52, v53, v54, v55, v56, v57, dataOuta);
        }

        v22 = -1;
        goto LABEL_28;
      }

      debuglog("MKBFileWriteTranscrypt", @"Couldn't allocate work buffer of %zu bytes\n", v24, v25, v26, v27, v28, v29, v8);
    }

    else
    {
      *(a1 + 1032) = 1;
      v38 = CCCryptorFinal(*(a1 + 1072), md, 0x10uLL, &dataIn);
      if (v38)
      {
        debuglog("MKBFileWriteTranscrypt", @"CCCryptorFinal() failed: %d\n", v39, v40, v41, v42, v43, v44, v38);
      }

      else
      {
        v47 = writen(*(a1 + 1028), md, dataIn);
        if (v47 == dataIn)
        {
          v22 = v47;
          goto LABEL_41;
        }

        v58 = __error();
        dataOutb = strerror(*v58);
        debuglog("MKBFileWriteTranscrypt", @"write failed: %s\n", v59, v60, v61, v62, v63, v64, dataOutb);
      }
    }

    v22 = -1;
    goto LABEL_41;
  }

  if (!*(a1 + 1360))
  {
    *(a1 + 1360) = allocate_page_aligned_buffer(0x1000uLL);
  }

  if (!v8)
  {
    goto LABEL_42;
  }

  v11 = v8;
  while (v11 >= 0x1000)
  {
    v12 = *(a1 + 1336);
    if (v11 >= ((v12 / 4096) << 12) - v12 + 4096)
    {
      dataOutAvailable = ((v12 / 4096) << 12) - v12 + 4096;
    }

    else
    {
      dataOutAvailable = v11;
    }

    if (!(v12 % *(a1 + 1084)))
    {
      CC_SHA1((a1 + 1036), 0x20u, md);
      v14 = *(a1 + 1336);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
      if (!v18)
      {
        v16 = v17;
      }

      dataIn = __PAIR64__(v16, v15);
      OUTLINED_FUNCTION_1_0();
      if (!v18)
      {
        v20 = v21;
      }

      v70 = v19;
      v71 = v20;
      if (CCCrypt(0, 0, 0, md, 0x10uLL, 0, &dataIn, 0x10uLL, (a1 + 1344), 0x10uLL, 0))
      {
        goto LABEL_32;
      }
    }

    CC_SHA1_Update((a1 + 1236), data, dataOutAvailable);
    if (CCCrypt(1u, 0, 0, (a1 + 1036), 0x20uLL, (a1 + 1344), data, dataOutAvailable, *(a1 + 1360), dataOutAvailable, 0))
    {
      goto LABEL_32;
    }

    if ((*(a1 + 1336) + dataOutAvailable) % *(a1 + 1084))
    {
      *(a1 + 1344) = *&data[dataOutAvailable - 16];
    }

    if (writen(*(a1 + 1028), *(a1 + 1360), dataOutAvailable) != dataOutAvailable)
    {
      v50 = __error();
      dataOut = strerror(*v50);
      v46 = @"write failed: %s\n";
      goto LABEL_44;
    }

    data += dataOutAvailable;
    *(a1 + 1336) += dataOutAvailable;
    v11 -= dataOutAvailable;
    if (!v11)
    {
      goto LABEL_42;
    }
  }

  if (v11 != 28)
  {
    v46 = @"Unknown trailer blob";
LABEL_44:
    debuglog("MKBFileWriteEncrypted", v46, size, a4, a5, a6, a7, a8, dataOut);
    goto LABEL_32;
  }

  CC_SHA1_Final(md, (a1 + 1236));
  if (memcmp(data + 8, md, 0x14uLL))
  {
    ftruncate(*(a1 + 1028), 0);
LABEL_32:
    v8 = -1;
    goto LABEL_42;
  }

  v45 = bswap64(*data);
  if (v45 > *(a1 + 1336))
  {
    v46 = @"file cannot be larger than backup";
    goto LABEL_44;
  }

  if (ftruncate(*(a1 + 1028), v45))
  {
    v46 = @"ftruncate() failed";
    goto LABEL_44;
  }

LABEL_42:
  v48 = *MEMORY[0x1E69E9840];
  return v8;
}