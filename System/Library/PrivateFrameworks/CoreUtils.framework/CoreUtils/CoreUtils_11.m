uint64_t IncrementNumericSuffix(char *__s, unint64_t a2, uint64_t a3, int a4, void *a5)
{
  v8 = a2;
  if (a4)
  {
    if (a2 < 4 || __s[a2 - 1] != 41 || __s[a2 - 2] - 48 > 9)
    {
      goto LABEL_47;
    }

    v10 = a2 - 2;
    if (a2 - 2 < 3)
    {
LABEL_9:
      v10 = 2;
    }

    else
    {
      v11 = &__s[a2 - 3];
      while (1)
      {
        v12 = *v11--;
        if ((v12 - 48) > 9)
        {
          break;
        }

        if (--v10 <= 2)
        {
          goto LABEL_9;
        }
      }
    }

    if (__s[v10 - 1] != 40)
    {
      goto LABEL_47;
    }

    v13 = 32;
    v14 = -1;
  }

  else
  {
    if (a2 < 2 || (v15 = __s[a2 - 1], (v15 - 48) > 9))
    {
      v24 = 0;
      v25 = 2;
      v26 = 2;
      goto LABEL_55;
    }

    v10 = 2;
    v16 = a2;
    while (1)
    {
      v17 = v16 - 1;
      if (v16 - 1 < 2)
      {
        break;
      }

      v18 = __s[v16-- - 2] - 48;
      if (v18 >= 0xA)
      {
        v10 = v17 + 1;
        break;
      }
    }

    if (v15 == 41)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v13 = 45;
  }

  if (__s[v10 - 2] != v13)
  {
LABEL_47:
    v26 = 2;
LABEL_48:
    v24 = a4 != 0;
    v25 = 2;
    if (a4)
    {
      v25 = 4;
    }

    if (v8 && a4)
    {
      do
      {
        if (__s[v8 - 1] != 32)
        {
          break;
        }

        --v8;
      }

      while (v8);
      v24 = 1;
    }

    goto LABEL_55;
  }

  if (a4)
  {
    v19 = a2 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v14;
  }

  v8 = v20 + a2;
  if (v20 + a2)
  {
    v21 = 0;
    v22 = 1;
    while (1)
    {
      v23 = __s[v8 - 1];
      if ((v23 - 48) > 9)
      {
        break;
      }

      v21 += (v23 - 48) * v22;
      v22 *= 10;
      if (!--v8)
      {
        goto LABEL_44;
      }
    }

    if (a4)
    {
      if (v8 != 1 && v23 == 40 && __s[v8 - 2] == 32)
      {
        v8 -= 2;
      }
    }

    else
    {
      v8 -= v23 == 45;
    }

LABEL_44:
    if (v21)
    {
      if (v21 > 9)
      {
        v26 = v21 + (arc4random() & 0x7F) + 1;
      }

      else
      {
        v26 = v21 + 1;
      }

      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v24 = a4 != 0;
  v26 = 2;
  v25 = 4;
  if (!a4)
  {
    v25 = 2;
  }

LABEL_55:
  v27 = v26;
  v28 = v25 - 1;
  v29 = 1;
  do
  {
    v30 = v29;
    v29 *= 10;
    ++v28;
  }

  while (v29 <= v27);
  result = TruncatedUTF8Length(__s, v8, a3 - v28);
  if (v24)
  {
    *&__s[result] = 10272;
    v32 = result + 2;
    if (v30)
    {
      goto LABEL_59;
    }

LABEL_64:
    v33 = v32;
    if (!v24)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v32 = result + 1;
  __s[result] = 45;
  if (!v30)
  {
    goto LABEL_64;
  }

  do
  {
LABEL_59:
    v33 = v32 + 1;
    __s[v32] = v27 / v30 + 48;
    v27 %= v30;
    ++v32;
    v34 = v30 > 9;
    v30 /= 0xAuLL;
  }

  while (v34);
  if (v24)
  {
LABEL_61:
    __s[v33++] = 41;
  }

LABEL_62:
  *a5 = v33;
  return result;
}

char *GetDeviceInternalModelString(char *a1, size_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v11 = 63;
  if (sysctlbyname("hw.target", v12, &v11, 0, 0))
  {
    v11 = 63;
    if (sysctlbyname("hw.model", v12, &v11, 0, 0))
    {
      v11 = 0;
    }
  }

  v12[v11] = 0;
  v4 = &v11 + 6;
  v5 = MEMORY[0x1E69E9830];
  do
  {
    v6 = v4[2];
    if (v6 < 0)
    {
      v7 = __maskrune(v4[2], 0x100uLL);
    }

    else
    {
      v7 = *(v5 + 4 * v6 + 60) & 0x100;
    }

    ++v4;
  }

  while (v7);
  do
  {
    v8 = *++v4;
  }

  while ((v8 - 48) < 0xA);
  *v4 = 0;
  if (v12[0])
  {
    v9 = v12;
  }

  else
  {
    v9 = "N88";
  }

  strlcpy(a1, v9, a2);
  return a1;
}

uint64_t GestaltSetDomain(const void *a1)
{
  pthread_mutex_lock(&gGestaltLock);
  v2 = gGestaltDomain;
  if (a1)
  {
    CFRetain(a1);
  }

  gGestaltDomain = a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return pthread_mutex_unlock(&gGestaltLock);
}

void *GestaltSetHook(void *result, uint64_t a2)
{
  gGestaltHook_f = result;
  gGestaltHook_ctx = a2;
  return result;
}

char *GestaltGetCString(const void *a1, uint64_t a2, char *a3, size_t a4, int *a5)
{
  v8 = GestaltCopyAnswer(a1, a2, a5);
  if (v8)
  {
    v9 = v8;
    a3 = CFGetCString(v8, a3, a4);
    CFRelease(v9);
    if (a5)
    {
      *a5 = 0;
    }
  }

  return a3;
}

const char *GestaltGetData(const void *a1, uint64_t a2, const char *a3, unint64_t a4, void *a5, int *a6)
{
  v10 = GestaltCopyAnswer(a1, a2, a6);
  if (v10)
  {
    v11 = v10;
    v12 = CFGetData(v10, a3, a4, a5, a6);
    CFRelease(v11);
    return v12;
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    return 0;
  }
}

uint64_t __GestaltGetDeviceClass_block_invoke()
{
  result = MGGetSInt32Answer();
  GestaltGetDeviceClass_deviceClass = result;
  return result;
}

__CFString *CUGestaltDeviceClassToString(int a1)
{
  if (a1 > 5)
  {
    if (a1 > 10)
    {
      if (a1 == 11)
      {
        return @"RealityDevice";
      }

      if (a1 == 100)
      {
        return @"Mac";
      }
    }

    else
    {
      if (a1 == 6)
      {
        return @"Watch";
      }

      if (a1 == 7)
      {
        return @"HomePod";
      }
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      return @"iPad";
    }

    if (a1 == 4)
    {
      return @"AppleTV";
    }
  }

  else
  {
    if (a1 == 1)
    {
      return @"iPhone";
    }

    if (a1 == 2)
    {
      return @"iPod";
    }
  }

  return @"?";
}

char *GetDeviceModelString(char *a1, size_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  __source[0] = 0;
  __n = 63;
  if (sysctlbyname("hw.machine", __source, &__n, 0, 0) || (v6 = __n, !memchr(__source, 44, __n)) || strnstr(__source, "iProd", v6))
  {
    v4 = 0;
    __n = 0;
  }

  else
  {
    v4 = __n;
  }

  __source[v4] = 0;
  strlcpy(a1, __source, a2);
  return a1;
}

const char *GetDeviceName(char *a1, CFIndex a2)
{
  v4 = MGCopyAnswer();
  if (!v4)
  {
LABEL_4:
    v5 = MGCopyAnswer();
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 != CFStringGetTypeID())
  {
    CFRelease(v5);
    goto LABEL_4;
  }

LABEL_5:
  v7 = CFGetTypeID(v5);
  if (v7 == CFStringGetTypeID())
  {
    goto LABEL_8;
  }

  CFRelease(v5);
LABEL_7:
  v5 = &stru_1F068B090;
  CFRetain(&stru_1F068B090);
LABEL_8:
  if (a2)
  {
    *a1 = 0;
    v8 = a1;
  }

  else
  {
    v8 = "";
  }

  CFStringGetCString(v5, a1, a2, 0x8000100u);
  CFRelease(v5);
  return v8;
}

char *GetDeviceUniqueID(char *a1, CFIndex a2)
{
  v4 = MGCopyAnswer();
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      CFStringGetCString(v5, a1, a2, 0x8000100u);
    }

    CFRelease(v5);
  }

  return a1;
}

char *GetSystemBuildVersionString(char *a1, CFIndex a2)
{
  v4 = MGCopyAnswer();
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      CFStringGetCString(v5, a1, a2, 0x8000100u);
    }

    CFRelease(v5);
  }

  return a1;
}

uint64_t __CUIsGreenTeaDevice_block_invoke()
{
  if (MGGetBoolAnswer())
  {
    result = 1;
  }

  else
  {
    result = MGGetBoolAnswer();
  }

  CUIsGreenTeaDevice_sResult = result;
  return result;
}

uint64_t CUSetSystemName(const __CFString *a1, const __CFString *a2, char a3)
{
  v6 = SCPreferencesCreateWithAuthorization(0, @"com.apple.CoreUtils", 0, 0);
  if (v6)
  {
    v7 = v6;
    if (SCPreferencesSetComputerName(v6, a1, 0x8000100u))
    {
      v12 = 0;
      if (a2)
      {
LABEL_4:
        v13 = 0;
LABEL_5:
        if ((a3 & 2) != 0)
        {
          MutableCopy = CFStringCreateMutableCopy(0, 0, a2);
          if (MutableCopy)
          {
            memset(bytes, 0, 6);
            InterfaceMACAddress = GetInterfaceMACAddress("en0", bytes);
            if (InterfaceMACAddress && gLogCategory_CUMisc <= 60 && (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x3Cu)))
            {
              LogPrintF(&gLogCategory_CUMisc, "OSStatus CUSetSystemName(CFStringRef, CFStringRef _Nullable, CUSystemNameFlags)", 0x3Cu, "### Set computer name, get en0 failed: %#m", v23, v24, v25, v26, InterfaceMACAddress);
            }

            v28.i32[0] = *(bytes + 1);
            v29 = vmovl_u8(v28).u64[0];
            if (!(InterfaceMACAddress | vuzp1_s8(v29, v29).u32[0]) && LOBYTE(bytes[0]) == 2 && !BYTE1(bytes[1]))
            {
              Int64 = CFPrefs_GetInt64(0, @"CUSystemNameAddress", 0);
              if (Int64)
              {
                v35 = Int64;
                if (gLogCategory_CUMisc <= 50 && (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x32u)))
                {
                  LogPrintF(&gLogCategory_CUMisc, "OSStatus CUSetSystemName(CFStringRef, CFStringRef _Nullable, CUSystemNameFlags)", 0x32u, "Computer name address: existing=0x%012lX", v31, v32, v33, v34, v35);
                }

                LOBYTE(bytes[0]) = BYTE5(v35);
                BYTE1(bytes[0]) = BYTE4(v35);
                BYTE2(bytes[0]) = BYTE3(v35);
                HIBYTE(bytes[0]) = BYTE2(v35);
                LOBYTE(bytes[1]) = BYTE1(v35);
                BYTE1(bytes[1]) = v35;
              }

              else
              {
                RandomBytes(bytes, 6uLL);
                v36 = (LOBYTE(bytes[0]) << 40) | (BYTE1(bytes[0]) << 32) | (BYTE2(bytes[0]) << 24) | (HIBYTE(bytes[0]) << 16) | (LOBYTE(bytes[1]) << 8) | BYTE1(bytes[1]);
                CFPrefs_SetInt64(0, @"CUSystemNameAddress", v36);
                if (gLogCategory_CUMisc <= 50 && (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x32u)))
                {
                  LogPrintF(&gLogCategory_CUMisc, "OSStatus CUSetSystemName(CFStringRef, CFStringRef _Nullable, CUSystemNameFlags)", 0x32u, "Computer name address: generated=0x%012lX", v37, v38, v39, v40, v36);
                }
              }
            }

            if (!InterfaceMACAddress)
            {
              CFStringAppendFormat(MutableCopy, 0, @"-%02X%02X%02X%02X%02X%02X", LOBYTE(bytes[0]), BYTE1(bytes[0]), BYTE2(bytes[0]), HIBYTE(bytes[0]), LOBYTE(bytes[1]), BYTE1(bytes[1]));
              a2 = MutableCopy;
            }
          }
        }

        else
        {
          MutableCopy = 0;
        }

        if (!SCPreferencesSetHostName())
        {
          if (gLogCategory_CUMisc <= 60 && (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x3Cu)))
          {
            SCError();
            LogPrintF(&gLogCategory_CUMisc, "OSStatus CUSetSystemName(CFStringRef, CFStringRef _Nullable, CUSystemNameFlags)", 0x3Cu, "### Set hostname %@' failed: %#m\n", v41, v42, v43, v44, a2);
          }

          if (!v12)
          {
            v12 = SCError();
          }
        }

        if (!SCPreferencesSetLocalHostName(v7, a2))
        {
          if (gLogCategory_CUMisc <= 60 && (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x3Cu)))
          {
            SCError();
            LogPrintF(&gLogCategory_CUMisc, "OSStatus CUSetSystemName(CFStringRef, CFStringRef _Nullable, CUSystemNameFlags)", 0x3Cu, "### Set locale hostname %@' failed: %#m\n", v45, v46, v47, v48, a2);
          }

          if (!v12)
          {
            v12 = SCError();
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (gLogCategory_CUMisc <= 60 && (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x3Cu)))
      {
        SCError();
        LogPrintF(&gLogCategory_CUMisc, "OSStatus CUSetSystemName(CFStringRef, CFStringRef _Nullable, CUSystemNameFlags)", 0x3Cu, "### Set computer name %@' failed: %#m\n", v19, v20, v21, v22, a1);
      }

      v12 = SCError();
      if (a2)
      {
        goto LABEL_4;
      }
    }

    if (a3)
    {
      v13 = softLink_CSCopyLocalHostnameForComputerName(0, a1);
      a2 = v13;
      if (v13)
      {
        goto LABEL_5;
      }

      if (gLogCategory_CUMisc > 60)
      {
        MutableCopy = 0;
        v13 = 0;
LABEL_65:
        if (!SCPreferencesCommitChanges(v7))
        {
          if (gLogCategory_CUMisc <= 60 && (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x3Cu)))
          {
            v49 = SCError();
            LogPrintF(&gLogCategory_CUMisc, "OSStatus CUSetSystemName(CFStringRef, CFStringRef _Nullable, CUSystemNameFlags)", 0x3Cu, "### Commit name changes failed: %#m\n", v50, v51, v52, v53, v49);
          }

          if (!v12)
          {
            v12 = SCError();
          }
        }

        if (!SCPreferencesApplyChanges(v7))
        {
          if (gLogCategory_CUMisc <= 60 && (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x3Cu)))
          {
            v54 = SCError();
            LogPrintF(&gLogCategory_CUMisc, "OSStatus CUSetSystemName(CFStringRef, CFStringRef _Nullable, CUSystemNameFlags)", 0x3Cu, "### Apply name changes failed: %#m\n", v55, v56, v57, v58, v54);
          }

          if (!v12)
          {
            v12 = SCError();
          }
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        CFRelease(v7);
        return v12;
      }

      if (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x3Cu))
      {
        LogPrintF(&gLogCategory_CUMisc, "OSStatus CUSetSystemName(CFStringRef, CFStringRef _Nullable, CUSystemNameFlags)", 0x3Cu, "### Convert name to local hostname failed %@'\n", v8, v9, v10, v11, a1);
      }
    }

    v13 = 0;
    MutableCopy = 0;
LABEL_61:
    if (gLogCategory_CUMisc <= 30 && (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUMisc, "OSStatus CUSetSystemName(CFStringRef, CFStringRef _Nullable, CUSystemNameFlags)", 0x1Eu, "Setting system name '%@', hostname '%@', flags %#{flags}", v8, v9, v10, v11, a1);
    }

    goto LABEL_65;
  }

  if (SCError())
  {
    v12 = SCError();
  }

  else
  {
    v12 = 4294960596;
  }

  if (gLogCategory_CUMisc <= 30 && (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUMisc, "OSStatus CUSetSystemName(CFStringRef, CFStringRef _Nullable, CUSystemNameFlags)", 0x1Eu, "### Create prefs to set name failed: %#m\n", v15, v16, v17, v18, v12);
  }

  return v12;
}

uint64_t init_CSCopyLocalHostnameForComputerName(uint64_t a1, uint64_t a2)
{
  if (MobileCoreServicesLibrary_sOnce_13651 != -1)
  {
    dispatch_once(&MobileCoreServicesLibrary_sOnce_13651, &__block_literal_global_132);
  }

  v4 = dlsym(MobileCoreServicesLibrary_sLib_13652, "_CSCopyLocalHostnameForComputerName");
  softLink_CSCopyLocalHostnameForComputerName = v4;

  return (v4)(a1, a2);
}

void *__MobileCoreServicesLibrary_block_invoke_13655()
{
  result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
  MobileCoreServicesLibrary_sLib_13652 = result;
  return result;
}

uint64_t IsAppleTV()
{
  if (IsAppleTV_sOnce != -1)
  {
    dispatch_once(&IsAppleTV_sOnce, &__block_literal_global_119);
  }

  return IsAppleTV_sIsAppleTV;
}

void __IsAppleTV_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    IsAppleTV_sIsAppleTV = CFEqual(v0, @"AppleTV");

    CFRelease(v1);
  }
}

uint64_t BigIntegerFromInt()
{
  v0 = CCCreateBigNum();
  if (v0)
  {
    CCBigNumSetI();
  }

  return v0;
}

uint64_t BigIntegerToCstr(uint64_t a1, uint64_t a2)
{
  v3 = CCBigNumBitCount();
  v4 = v3 + 7;
  if (v3 < -7)
  {
    v4 = v3 + 14;
  }

  result = cstr_set_length(a2, v4 >> 3);
  if ((result & 0x80000000) == 0)
  {
    v6 = CCBigNumToData();
    return cstr_set_length(a2, v6);
  }

  return result;
}

void BigIntegerToCstrEx(uint64_t a1, const void **a2, int a3)
{
  if ((cstr_set_length(a2, a3) & 0x80000000) == 0)
  {
    v5 = CCBigNumToData();
    v6 = a3 - v5;
    if (a3 > v5)
    {
      v7 = v6;
      memmove(*a2 + v6, *a2, v5);
      bzero(*a2, v7);
    }
  }
}

uint64_t TUInitialize(int a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1E69E9858];
  if (a1 >= 1)
  {
    v11 = *a2;
    v12 = strrchr(*a2, 47);
    v13 = (v12 ? v12 + 1 : v11);
    gTUProgramName = v13;
    if (a1 != 1)
    {
      v24 = 1;
      do
      {
        v25 = v24 + 1;
        v26 = a2[v24];
        if (!strcasecmp(v26, "--BATS"))
        {
          if (v25 >= a1)
          {
            goto LABEL_133;
          }

          v24 += 2;
          v33 = a2[v25];
          if (strnicmpx(v33, -1, "true") && strnicmpx(v33, -1, "yes") && strnicmpx(v33, -1, "y") && strnicmpx(v33, -1, "on") && strnicmpx(v33, -1, "1"))
          {
            if (strnicmpx(v33, -1, "false") && strnicmpx(v33, -1, "no") && strnicmpx(v33, -1, "n") && strnicmpx(v33, -1, "off") && strnicmpx(v33, -1, "0"))
            {
              goto LABEL_132;
            }

            gTUBATSMode = 0;
          }

          else
          {
            gTUBATSMode = 1;
          }
        }

        else if (!strcasecmp(v26, "--BreakOnFail"))
        {
          if (v25 >= a1)
          {
            goto LABEL_133;
          }

          v24 += 2;
          v34 = a2[v25];
          if (strnicmpx(v34, -1, "true") && strnicmpx(v34, -1, "yes") && strnicmpx(v34, -1, "y") && strnicmpx(v34, -1, "on") && strnicmpx(v34, -1, "1"))
          {
            if (strnicmpx(v34, -1, "false") && strnicmpx(v34, -1, "no") && strnicmpx(v34, -1, "n") && strnicmpx(v34, -1, "off") && strnicmpx(v34, -1, "0"))
            {
              goto LABEL_132;
            }

            gTUBreakOnFail = 1;
          }

          else
          {
            gTUBreakOnFail = 0;
          }
        }

        else
        {
          if (!strcasecmp(v26, "--ConvertTURtoJUnit"))
          {
            if (v25 >= a1)
            {
              FPrintF(*v8, "#=error: '%s' option requires an input path argument\n", v27, v28, v29, v30, v31, v32, v26);
            }

            else
            {
              if (v24 + 2 < a1)
              {
                v43 = TUConvertToJUnit(a2[v25], a2[v24 + 2]) != 0;
                exit(v43);
              }

              FPrintF(*v8, "#=error: '%s' option requires an output path argument\n", v27, v28, v29, v30, v31, v32, v26);
            }

            exit(1);
          }

          if (!strcasecmp(v26, "--DontRunLeaks"))
          {
            if (v25 >= a1)
            {
              goto LABEL_133;
            }

            v24 += 2;
            v35 = a2[v25];
            if (strnicmpx(v35, -1, "true") && strnicmpx(v35, -1, "yes") && strnicmpx(v35, -1, "y") && strnicmpx(v35, -1, "on") && strnicmpx(v35, -1, "1"))
            {
              if (strnicmpx(v35, -1, "false") && strnicmpx(v35, -1, "no") && strnicmpx(v35, -1, "n") && strnicmpx(v35, -1, "off") && strnicmpx(v35, -1, "0"))
              {
                goto LABEL_132;
              }

              gTUDontRunLeaks = 0;
            }

            else
            {
              gTUDontRunLeaks = 1;
            }
          }

          else if (!strcasecmp(v26, "--ExcludeNonTestUtilsTests"))
          {
            if (v25 >= a1)
            {
              goto LABEL_133;
            }

            v24 += 2;
            v36 = a2[v25];
            if (!strnicmpx(v36, -1, "true") || !strnicmpx(v36, -1, "yes") || !strnicmpx(v36, -1, "y") || !strnicmpx(v36, -1, "on") || !strnicmpx(v36, -1, "1"))
            {
              goto LABEL_91;
            }

            if (strnicmpx(v36, -1, "false") && strnicmpx(v36, -1, "no") && strnicmpx(v36, -1, "n") && strnicmpx(v36, -1, "off") && strnicmpx(v36, -1, "0"))
            {
              goto LABEL_132;
            }

            gTUExcludeNonTestUtilsTests = 0;
          }

          else
          {
            if (!strcasecmp(v26, "--ExcludedTests"))
            {
              if (v25 >= a1)
              {
                goto LABEL_133;
              }

              v24 += 2;
              gTUExcludedTests = a2[v25];
LABEL_91:
              gTUExcludeNonTestUtilsTests = 1;
              continue;
            }

            if (!strcasecmp(v26, "--Filter"))
            {
              if (v25 >= a1)
              {
                goto LABEL_133;
              }

              v24 += 2;
              gTUFilter = a2[v25];
              goto LABEL_91;
            }

            if (!strcasecmp(v26, "--JUnitXMLOutputPath"))
            {
              if (v25 >= a1)
              {
                goto LABEL_133;
              }

              v24 += 2;
              gTUJUnitXMLOutputPath = a2[v25];
            }

            else if (!strcasecmp(v26, "--Level"))
            {
              if (v25 >= a1)
              {
                goto LABEL_133;
              }

              v24 += 2;
              v37 = LUStringToLevel(a2[v25]);
              if (v37 == -1)
              {
                goto LABEL_132;
              }

              gTULogLevel = v37;
            }

            else
            {
              if (!strcasecmp(v26, "--LogControl"))
              {
                if (v25 < a1)
                {
                  v24 += 2;
                  v38 = a2[v25];
                  if (LogControl(v38))
                  {
                    FPrintF(*v8, "#=error: LogControl( %s) failed: %#m\n", a3, a4, a5, a6, a7, a8, v38);
                  }

                  continue;
                }

LABEL_133:
                FPrintF(*v8, "#=error: '%s' option requires an argument\n", a3, a4, a5, a6, a7, a8, v26);
                goto LABEL_134;
              }

              if (!strcasecmp(v26, "--OutputPath"))
              {
                if (v25 < a1)
                {
                  v24 += 2;
                  v39 = a2[v25];
                  v40 = fopen(v39, "w");
                  if (v40 || *__error() && !*__error())
                  {
                    if (gTUOutputFile && fclose(gTUOutputFile) && *__error())
                    {
                      __error();
                    }

                    gTUOutputFile = v40;
                    gTUOutputFilePtr = v40;
                    gTUOutputPath = v39;
                  }

                  else
                  {
                    FPrintF(*v8, "#=error: Open output path '%s' failed: %#m\n", a3, a4, a5, a6, a7, a8, v39);
                  }

                  continue;
                }

                goto LABEL_133;
              }

              if (!strcasecmp(v26, "--Qualifier"))
              {
                if (v25 >= a1)
                {
                  goto LABEL_133;
                }

                v24 += 2;
                gTUQualifier = a2[v25];
              }

              else
              {
                if (strcasecmp(v26, "--StopOnFirstFail"))
                {
                  if (strcasecmp(v26, "--UserMode"))
                  {
                    FPrintF(*v8, "#=error: unknown option '%s'\n", a3, a4, a5, a6, a7, a8, v26);
LABEL_134:
                    ++v24;
                    continue;
                  }

                  if (v25 >= a1)
                  {
                    goto LABEL_133;
                  }

                  v24 += 2;
                  v42 = a2[v25];
                  if (!strnicmpx(v42, -1, "true") || !strnicmpx(v42, -1, "yes") || !strnicmpx(v42, -1, "y") || !strnicmpx(v42, -1, "on") || !strnicmpx(v42, -1, "1"))
                  {
                    gTUUserMode = 1;
                    continue;
                  }

                  if (!strnicmpx(v42, -1, "false") || !strnicmpx(v42, -1, "no") || !strnicmpx(v42, -1, "n") || !strnicmpx(v42, -1, "off") || !strnicmpx(v42, -1, "0"))
                  {
                    gTUUserMode = 0;
                    continue;
                  }

LABEL_132:
                  FPrintF(*v8, "#=error: '%s' option bad argument '%s'\n", a3, a4, a5, a6, a7, a8, v26);
                  continue;
                }

                if (v25 >= a1)
                {
                  goto LABEL_133;
                }

                v24 += 2;
                v41 = a2[v25];
                if (!strnicmpx(v41, -1, "true") || !strnicmpx(v41, -1, "yes") || !strnicmpx(v41, -1, "y") || !strnicmpx(v41, -1, "on") || !strnicmpx(v41, -1, "1"))
                {
                  gTUStopOnFirstFail = 0;
                  continue;
                }

                if (strnicmpx(v41, -1, "false") && strnicmpx(v41, -1, "no") && strnicmpx(v41, -1, "n") && strnicmpx(v41, -1, "off") && strnicmpx(v41, -1, "0"))
                {
                  goto LABEL_132;
                }

                gTUStopOnFirstFail = 1;
              }
            }
          }
        }
      }

      while (v24 < a1);
    }
  }

  if (gTUUserMode)
  {
    LogControl("?.*:level=error");
  }

  if (gTUOutputPath)
  {
    v14 = 1;
  }

  else
  {
    v14 = gTUJUnitXMLOutputPath == 0;
  }

  if (!v14)
  {
    FPrintF(*v8, "#=error: --JUnitXMLOutputPath specified when not using a TU file\n", a3, a4, a5, a6, a7, a8, v44);
  }

  v15 = gTUOutputFilePtr;
  if (!gTUOutputFilePtr)
  {
    v15 = *v8;
    gTUOutputFilePtr = *v8;
  }

  setvbuf(v15, 0, 1, 0x400uLL);
  setvbuf(*MEMORY[0x1E69E9848], 0, 1, 0x400uLL);
  setvbuf(*v8, 0, 1, 0x400uLL);
  if (gTUBATSMode == 1)
  {
    _TUPrintF("[TOOL] %s\n\n", v16, v17, v18, v19, v20, v21, v22, gTUProgramName);
  }

  else if (!gTUUserMode)
  {
    _TUPrintF("T=\n", v16, v17, v18, v19, v20, v21, v22, v44);
  }

  gTUTotalPasses = 0;
  gTUTotalFailures = 0;
  gTUTotalExpectedTests = 0;
  gTUStartTicks = mach_absolute_time();
  return 0;
}

uint64_t TUConvertToJUnit(uint64_t a1, uint64_t a2)
{
  v123 = 0;
  if (*a1 == 45 && !*(a1 + 1))
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69E9850];
  }

  else
  {
    v2 = fopen(a1, "r");
    v3 = v2;
    if (!v2)
    {
      if (!*__error())
      {
        v10 = 4294960596;
        goto LABEL_188;
      }

      v10 = *__error();
      if (v10)
      {
        goto LABEL_188;
      }

      v2 = 0;
      v3 = 0;
    }
  }

  v116 = v2;
  cf = 0;
  v121 = 0;
  theArray = 0;
  LODWORD(Mutable) = 0;
  theDict = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x1E695E9C0];
  while (1)
  {
    v15 = fcopyline(v3, &v123, 0);
    if (v15)
    {
      break;
    }

    if (Mutable)
    {
      v10 = 4294960560;
      LODWORD(Mutable) = 1;
      goto LABEL_71;
    }

    v16 = v123;
    v17 = *v123;
    if (!*v123 || *(v123 + 1) != 61)
    {
      LODWORD(Mutable) = 0;
LABEL_76:
      v10 = 4294960554;
      goto LABEL_71;
    }

    LODWORD(Mutable) = 0;
    v129 = 0;
    v130 = 0;
    v131[0] = 0;
    v127 = 0;
    v128 = 0;
    v126 = 0;
    v124 = 0;
    v125 = 0;
    HIDWORD(v19) = v17 - 84;
    LODWORD(v19) = v17 - 84;
    v18 = v19 >> 1;
    if (v18 > 13)
    {
      if (v18 > 15)
      {
        if (v18 == 16)
        {
          if (!theArray)
          {
LABEL_78:
            theArray = 0;
            LODWORD(Mutable) = 0;
LABEL_95:
            v10 = 4294960551;
            goto LABEL_71;
          }

          if (theDict)
          {
LABEL_79:
            LODWORD(Mutable) = 0;
            v10 = 4294960575;
            goto LABEL_71;
          }

          theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!theDict)
          {
            goto LABEL_98;
          }

          if (!*(v16 + 2))
          {
            LODWORD(Mutable) = 0;
            v10 = 4294960552;
            goto LABEL_71;
          }

          CFDictionarySetCString(theDict, @"name", v16 + 2, -1);
          CFArrayAppendValue(theArray, theDict);
          LODWORD(Mutable) = 0;
        }

        else if (v18 == 19)
        {
          if (!theArray)
          {
            goto LABEL_78;
          }

          LODWORD(Mutable) = cf;
          if (!theDict)
          {
            LODWORD(Mutable) = 0;
            theDict = 0;
            goto LABEL_95;
          }

          CFRelease(theDict);
          if (cf)
          {
            CFRelease(cf);
            LODWORD(Mutable) = 0;
          }

          theDict = 0;
          cf = 0;
          v12 = 0;
          v13 = 0;
        }

        goto LABEL_70;
      }

      if (v18 == 14)
      {
        if (theDict && v12)
        {
LABEL_80:
          LODWORD(Mutable) = 0;
          v10 = 4294960560;
LABEL_83:
          v12 = 1;
          goto LABEL_71;
        }

        appended = _TUConvertToJUnitParseAssertion(v123 + 2, &v130, &v128, &v127, &v126, &v125, &v124);
LABEL_64:
        LODWORD(Mutable) = 0;
        if (!appended)
        {
          goto LABEL_70;
        }

        v10 = appended;
        goto LABEL_71;
      }

      if (v12)
      {
        LODWORD(Mutable) = 0;
        v10 = 4294960566;
        goto LABEL_83;
      }

      if (sscanf(v123 + 2, "%u/%u", &v129 + 4, &v129) != 2)
      {
        LODWORD(Mutable) = 0;
        v12 = 0;
        goto LABEL_76;
      }

      v4 = HIDWORD(v129);
      if (HIDWORD(v129) > v129)
      {
        LODWORD(Mutable) = 0;
        v12 = 0;
LABEL_92:
        v10 = 4294960586;
        goto LABEL_71;
      }

      LODWORD(Mutable) = theDict;
      if (!theDict)
      {
        theDict = 0;
        v12 = 0;
        goto LABEL_95;
      }

      v20 = CFDictionarySetInt64(theDict, @"passes", HIDWORD(v129));
      if (v20)
      {
        v10 = v20;
        LODWORD(Mutable) = 0;
        v12 = 0;
      }

      else
      {
        v25 = CFDictionarySetInt64(theDict, @"total", v129);
        LODWORD(Mutable) = 0;
        if (!v25)
        {
          v12 = 1;
          goto LABEL_70;
        }

        v10 = v25;
        v12 = 0;
      }
    }

    else
    {
      if (v18 <= 7)
      {
        if (v18)
        {
          if (v18 == 3)
          {
            if (!theArray)
            {
              goto LABEL_78;
            }

            if (theDict)
            {
              LODWORD(Mutable) = 0;
              v10 = 4294960560;
              goto LABEL_71;
            }

            theDict = 0;
            LODWORD(Mutable) = 1;
          }
        }

        else
        {
          if (theArray)
          {
            goto LABEL_79;
          }

          LODWORD(Mutable) = 0;
          theArray = CFArrayCreateMutable(0, 0, v14);
          if (!theArray)
          {
            theArray = 0;
            goto LABEL_99;
          }
        }

        goto LABEL_70;
      }

      if (v18 != 8)
      {
        if (v18 != 9)
        {
          goto LABEL_70;
        }

        Mutable = v121;
        if (theDict)
        {
          if (v12)
          {
            goto LABEL_80;
          }

          Mutable = cf;
          if (!cf)
          {
            Mutable = CFArrayCreateMutable(0, 0, v14);
            if (!Mutable)
            {
              cf = 0;
              v12 = 0;
              goto LABEL_99;
            }

            CFDictionarySetValue(theDict, @"failures", Mutable);
            cf = Mutable;
          }
        }

        else if (!v121)
        {
          v23 = CFArrayCreateMutable(0, 0, v14);
          if (!v23)
          {
            v121 = 0;
LABEL_98:
            LODWORD(Mutable) = 0;
            theDict = 0;
LABEL_99:
            v10 = 4294960568;
            goto LABEL_71;
          }

          v121 = v23;
          Mutable = v23;
        }

        v24 = _TUConvertToJUnitParseAssertion(v16 + 2, &v130, &v128, &v127, &v126, &v125, &v124);
        if (v24)
        {
          v10 = v24;
          LODWORD(Mutable) = 0;
          goto LABEL_71;
        }

        appended = CFPropertyListAppendFormatted(0, Mutable, "{%kO=%.*s%kO=%.*s%kO=%.*s}", v5, v6, v7, v8, v9, @"type");
        goto LABEL_64;
      }

      if (v13)
      {
        LODWORD(Mutable) = 0;
        v10 = 4294960566;
        v13 = 1;
        goto LABEL_71;
      }

      if (!theDict)
      {
        LODWORD(Mutable) = 0;
        theDict = 0;
        v13 = 0;
        goto LABEL_95;
      }

      if (sscanf(v123 + 2, "%lfs", v131) != 1)
      {
        LODWORD(Mutable) = 0;
        v13 = 0;
        goto LABEL_76;
      }

      if (*v131 < 0.0)
      {
        LODWORD(Mutable) = 0;
        v13 = 0;
        goto LABEL_92;
      }

      v22 = CFDictionarySetDouble(theDict, @"duration", *v131);
      LODWORD(Mutable) = 0;
      if (!v22)
      {
        v13 = 1;
LABEL_70:
        v10 = 0;
        goto LABEL_71;
      }

      v10 = v22;
      v13 = 0;
    }

LABEL_71:
    if (v123)
    {
      free(v123);
      v123 = 0;
    }

    if (v10)
    {
      goto LABEL_175;
    }
  }

  if (v15 != -6752)
  {
    v10 = 4294960550;
    goto LABEL_175;
  }

  if (!Mutable)
  {
    v10 = 4294960560;
    goto LABEL_175;
  }

  LODWORD(v128) = 0;
  v130 = 0;
  v131[0] = 0;
  if (*a2 == 45 && !*(a2 + 1))
  {
    v29 = 0;
    v28 = *MEMORY[0x1E69E9858];
    v27 = theArray;
    goto LABEL_110;
  }

  v26 = fopen(a2, "w");
  v27 = theArray;
  if (v26)
  {
    v28 = v26;
    LODWORD(v128) = 0;
    v29 = v26;
    goto LABEL_110;
  }

  if (!*__error())
  {
    v29 = 0;
    LODWORD(v128) = -6700;
    goto LABEL_166;
  }

  v28 = 0;
  v29 = 0;
  LODWORD(v128) = *__error();
  if (!v128)
  {
LABEL_110:
    FPrintF(v28, "<?xml version=1.0 encoding=UTF-8 ?>\n", v4, v5, v6, v7, v8, v9, v109);
    FPrintF(v28, "<testsuites>\n", v30, v31, v32, v33, v34, v35, v110);
    v36 = 0.0;
    v114 = v29;
    if (v27)
    {
      Count = CFArrayGetCount(v27);
      if (Count >= 1)
      {
        v37 = 0;
        LODWORD(v38) = 0;
        v39 = 0;
        while (1)
        {
          TypeID = CFDictionaryGetTypeID();
          TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v27, v37, TypeID, &v128);
          if (v128)
          {
            break;
          }

          v42 = TypedValueAtIndex;
          Int64Ranged = CFDictionaryGetInt64Ranged(TypedValueAtIndex, @"total", 0, 0xFFFFFFFFLL, &v128);
          if (v128)
          {
            break;
          }

          v44 = Int64Ranged;
          v38 = Int64Ranged ? (v38 + 1) : v38;
          v45 = CFDictionaryGetInt64Ranged(v42, @"passes", 0, 0xFFFFFFFFLL, &v128);
          if (v128)
          {
            break;
          }

          v46 = v45;
          Double = CFDictionaryGetDouble(v42, @"duration", &v128);
          if (v128)
          {
            break;
          }

          if (v44 != v46)
          {
            ++v39;
          }

          v36 = v36 + Double;
          ++v37;
          v27 = theArray;
          if (Count == v37)
          {
            v48 = 1;
            goto LABEL_127;
          }
        }

LABEL_165:
        v29 = v114;
        goto LABEL_166;
      }

      v48 = 0;
    }

    else
    {
      v48 = 0;
      Count = 0;
    }

    v38 = 0;
LABEL_127:
    if (v121)
    {
      CFArrayGetCount(v121);
    }

    FPrintF(v28, "\t<testsuite name=AllTests tests=%u failures=%u time=%f>\n", v4, v5, v6, v7, v8, v9, v38);
    if (v48)
    {
      v49 = 0;
      while (1)
      {
        v50 = CFDictionaryGetTypeID();
        v51 = CFArrayGetTypedValueAtIndex(v27, v49, v50, &v128);
        if (v128)
        {
          break;
        }

        v52 = v51;
        v53 = CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue(v52, @"name", v53, &v128);
        if (v128)
        {
          break;
        }

        v55 = TypedValue;
        v56 = CFDictionaryGetInt64Ranged(v52, @"total", 0, 0xFFFFFFFFLL, &v128);
        if (v128)
        {
          break;
        }

        v57 = v56;
        v58 = CFDictionaryGetInt64Ranged(v52, @"passes", 0, 0xFFFFFFFFLL, &v128);
        if (v128)
        {
          break;
        }

        v59 = v58;
        CFDictionaryGetDouble(v52, @"duration", &v128);
        if (v128)
        {
          break;
        }

        FPrintF(v28, "\t\t<testcase name=%@ classname=%@ time=%f%s>\n", v4, v5, v6, v7, v8, v9, v55);
        v60 = CFArrayGetTypeID();
        v61 = CFDictionaryGetTypedValue(v52, @"failures", v60, 0);
        if ((v57 != v59) != (v61 != 0))
        {
          LODWORD(v128) = -6762;
          goto LABEL_165;
        }

        v62 = v61;
        if (v61)
        {
          v63 = CFArrayGetCount(v61);
          if (v63 >= 1)
          {
            v64 = v63;
            v65 = 0;
            do
            {
              v66 = CFDictionaryGetTypeID();
              v67 = CFArrayGetTypedValueAtIndex(v62, v65, v66, &v128);
              if (v128)
              {
                goto LABEL_165;
              }

              v68 = v67;
              v69 = CFStringGetTypeID();
              v70 = CFDictionaryGetTypedValue(v68, @"type", v69, &v128);
              if (v128)
              {
                goto LABEL_165;
              }

              v71 = v70;
              v72 = CFDictionaryCopyCString(v68, @"message", &v128);
              if (v128)
              {
                goto LABEL_165;
              }

              v73 = v72;
              LODWORD(v128) = XMLEscapeCopy(v72, v131);
              free(v73);
              if (v128)
              {
                goto LABEL_165;
              }

              v74 = CFDictionaryCopyCString(v68, @"detail", &v128);
              if (v128)
              {
                goto LABEL_165;
              }

              v75 = v74;
              LODWORD(v128) = XMLEscapeCopy(v74, &v130);
              free(v75);
              if (v128)
              {
                goto LABEL_165;
              }

              v76 = v130;
              v77 = v131[0];
              FPrintF(v28, "\t\t\t<failure type=%@ message=%s>%s</failure>\n", v4, v5, v6, v7, v8, v9, v71);
              if (v77)
              {
                free(v77);
                v131[0] = 0;
              }

              if (v76)
              {
                free(v76);
                v130 = 0;
              }
            }

            while (v64 != ++v65);
          }
        }

        v27 = theArray;
        if (v57 != v59)
        {
          FPrintF(v28, "\t\t</testcase>\n", v4, v5, v6, v7, v8, v9, v111);
        }

        if (++v49 == Count)
        {
          goto LABEL_154;
        }
      }
    }

    else
    {
LABEL_154:
      if (v121 && (v78 = CFArrayGetCount(v121), v78 >= 1))
      {
        v79 = v78;
        v80 = 0;
        while (1)
        {
          v81 = CFDictionaryGetTypeID();
          v82 = CFArrayGetTypedValueAtIndex(v121, v80, v81, &v128);
          if (v128)
          {
            break;
          }

          v83 = v82;
          v84 = CFStringGetTypeID();
          v85 = CFDictionaryGetTypedValue(v83, @"type", v84, &v128);
          if (v128)
          {
            break;
          }

          v86 = v85;
          v87 = CFDictionaryCopyCString(v83, @"message", &v128);
          if (v128)
          {
            break;
          }

          v88 = v87;
          LODWORD(v128) = XMLEscapeCopy(v87, v131);
          free(v88);
          if (v128)
          {
            break;
          }

          FPrintF(v28, "\t\t<testcase name=global.%@ classname=global.%@>\n", v4, v5, v6, v7, v8, v9, v86);
          v89 = v131[0];
          FPrintF(v28, "\t\t\t<failure type=%@ message=%s/>\n", v90, v91, v92, v93, v94, v95, v86);
          FPrintF(v28, "\t\t</testcase>\n", v96, v97, v98, v99, v100, v101, v112);
          if (v89)
          {
            free(v89);
            v131[0] = 0;
          }

          if (v79 == ++v80)
          {
            goto LABEL_164;
          }
        }
      }

      else
      {
LABEL_164:
        FPrintF(v28, "\t</testsuite>\n", v4, v5, v6, v7, v8, v9, v111);
        FPrintF(v28, "</testsuites>\n", v102, v103, v104, v105, v106, v107, v113);
        LODWORD(v128) = 0;
      }
    }

    goto LABEL_165;
  }

LABEL_166:
  if (v131[0])
  {
    free(v131[0]);
  }

  if (v130)
  {
    free(v130);
  }

  if (v29 && fclose(v29) && *__error())
  {
    __error();
  }

  v10 = v128;
LABEL_175:
  if (v116 && fclose(v116) && *__error())
  {
    __error();
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
LABEL_188:
    FPrintF(*MEMORY[0x1E69E9858], "#=error: Convert TestUtils '%s' to JUnit '%s' failed: %#m\n", v4, v5, v6, v7, v8, v9, a1);
  }

  return v10;
}

uint64_t _TUPrintFCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (gTUOutputFilePtr)
    {
      FPrintF(gTUOutputFilePtr, "%.*s", a3, a4, a5, a6, a7, a8, a2);
    }

    if (!gTUUserMode && (gTUBATSMode & 1) == 0)
    {
      FPrintF(*MEMORY[0x1E69E9848], "%.*s", a3, a4, a5, a6, a7, a8, a2);
    }
  }

  return a2;
}

uint64_t _TUConvertToJUnitParseAssertion(unsigned __int8 *a1, unsigned __int8 **a2, int64_t *a3, const char **a4, size_t *a5, const char **a6, int64_t *a7)
{
  for (i = a1; ; ++i)
  {
    v15 = *i;
    if (!*i || v15 == 58)
    {
      break;
    }
  }

  if (v15 != 58)
  {
    return 4294960554;
  }

  v16 = i - a1;
  v17 = (i + 1);
  if (strnicmpx(a1, i - a1, "leaks") && strnicmpx(a1, i - a1, "total"))
  {
    for (j = (i + 2); *(j - 1); ++j)
    {
      if (*(j - 1) == 44)
      {
        v32 = a5;
        do
        {
          v22 = j;
          v24 = *j++;
          v23 = v24;
        }

        while (v24 != 44 && v23 != 0);
        v31 = a7;
        if (v23 == 44)
        {
          v19 = a6;
          v20 = v22 - v17;
          v26 = MEMORY[0x1E69E9830];
          do
          {
            v21 = j;
            v27 = *j;
            if (!*j)
            {
              break;
            }

            v28 = (v27 & 0x80) != 0 ? __maskrune(v27, 0x4000uLL) : *(v26 + 4 * v27 + 60) & 0x4000;
            j = v21 + 1;
          }

          while (v28);
          a7 = v31;
          goto LABEL_27;
        }

        return 4294960554;
      }
    }

    return 4294960554;
  }

  v32 = a5;
  v19 = a6;
  v20 = 0;
  v21 = v17;
  v17 = 0;
LABEL_27:
  v29 = strlen(v21);
  result = 0;
  *a2 = a1;
  *a3 = v16;
  *a4 = v21;
  *v32 = v29;
  *v19 = v17;
  *a7 = v20;
  return result;
}

void TUFinalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = *MEMORY[0x1E69E9840];
  if (gTUDontRunLeaks)
  {
    goto LABEL_64;
  }

  v8 = gTUBreakOnFail;
  v66 = 0;
  if (gTUBATSMode == 1)
  {
    _TUPrintF("[BEGIN] Leaks\n", a2, a3, a4, a5, a6, a7, a8, v64);
  }

  v9 = mach_absolute_time();
  v10 = getpid();
  snprintf(__str, 0x40uLL, "/usr/bin/leaks %d", v10);
  v11 = popen(__str, "r");
  if (!v11)
  {
    if (*__error())
    {
      v12 = *__error();
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12 = 4294960596;
    }

LABEL_31:
    v26 = mach_absolute_time() - v9;
LABEL_37:
    atomic_fetch_add(&gTUTotalFailures, 1u);
    if ((gTUUserMode != 0) | gTUBATSMode & 1)
    {
      v28 = "### Leaks: FAILED: ";
    }

    else
    {
      v28 = "f=leaks:";
    }

    _TUPrintF(v28, a2, a3, a4, a5, a6, a7, a8, v64);
    v27 = 0;
    goto LABEL_41;
  }

LABEL_7:
  v13 = getpid();
  snprintf(__filename, 0x40uLL, "/tmp/leaks-%d-output", v13);
  v14 = fopen(__filename, "w");
  if (v14)
  {
    goto LABEL_10;
  }

  if (!*__error())
  {
    v14 = 0;
    v17 = 1;
    v12 = 4294960596;
    if (!v11)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v12 = *__error();
  if (v12)
  {
    v14 = 0;
    v17 = 1;
    if (v11)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (v14)
    {
      fclose(v14);
      if (v17)
      {
        goto LABEL_31;
      }
    }

    else if (v17)
    {
      goto LABEL_31;
    }

LABEL_120:
    v25 = 0;
    goto LABEL_34;
  }

LABEL_10:
  while (1)
  {
    v16 = fread(__ptr, 1uLL, 0x80uLL, v11);
    if (!v16)
    {
      break;
    }

    if (fwrite(__ptr, 1uLL, v16, v14) != v16)
    {
      v17 = 0;
      v12 = 4294960549;
      if (!v11)
      {
        goto LABEL_29;
      }

LABEL_28:
      pclose(v11);
      goto LABEL_29;
    }
  }

  fclose(v14);
  v18 = pclose(v11);
  v12 = v18;
  if (!v18)
  {
    goto LABEL_33;
  }

  if (v18 == -1)
  {
    __error();
    goto LABEL_18;
  }

  if ((v18 & 0xFF00) == 0)
  {
    v12 = 0;
LABEL_33:
    v25 = 1;
    goto LABEL_34;
  }

LABEL_18:
  if (gTULogLevel > 50)
  {
LABEL_25:
    v25 = 0;
    v12 = 0;
    goto LABEL_34;
  }

  v19 = fopen(__filename, "r");
  if (v19)
  {
LABEL_22:
    while (1)
    {
      v20 = fcopyline(v19, &v66, 0);
      if (v20)
      {
        break;
      }

      TULogF(v20, 50, "Leaks: ", "%s", v21, v22, v23, v24, v66);
      free(v66);
    }

    fclose(v19);
    goto LABEL_25;
  }

  if (*__error())
  {
    v12 = *__error();
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_120;
  }

  v25 = 0;
  v12 = 4294960596;
LABEL_34:
  remove(__filename, v15);
  v26 = mach_absolute_time() - v9;
  if ((v25 & 1) == 0)
  {
    goto LABEL_37;
  }

  if (gTULogLevel <= 50)
  {
    if ((gTUUserMode != 0) | gTUBATSMode & 1)
    {
      v50 = "Leaks: passed";
    }

    else
    {
      v50 = "p=leaks:";
    }

    _TUPrintF(v50, a2, a3, a4, a5, a6, a7, a8, v64);
    v27 = 1;
    if (gTUUserMode)
    {
LABEL_47:
      if (v12)
      {
        _TUPrintF(", %#m", v29, v30, v31, v32, v33, v34, v35, v12);
      }

      _TUPrintF("\n", v29, v30, v31, v32, v33, v34, v35, v65);
      goto LABEL_50;
    }

LABEL_41:
    v36 = "/Library/Caches/com.apple.xbs/Sources/CoreUtils/CoreUtils/TestUtils.c";
    for (i = "Library/Caches/com.apple.xbs/Sources/CoreUtils/CoreUtils/TestUtils.c"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v36 = i;
      }

      else if (!*(i - 1))
      {
        _TUPrintF("%s:%ld, %###s()", v29, v30, v31, v32, v33, v34, v35, v36);
        goto LABEL_47;
      }
    }
  }

  v27 = 1;
LABEL_50:
  if (gTUBATSMode == 1)
  {
    if (sUpTicksToSecondsOnce != -1)
    {
      dispatch_once_f(&sUpTicksToSecondsOnce, &sUpTicksToSecondsMultiplier, _UpTicksToSecondsInit);
    }

    _TUPrintF("# %.6f seconds\n", a2, a3, a4, a5, a6, a7, a8, COERCE__INT64(*&sUpTicksToSecondsMultiplier * v26));
    v45 = "[FAIL]";
    if (v27)
    {
      v45 = "[PASS]";
    }

    _TUPrintF("%s Leaks\n\n", v38, v39, v40, v41, v42, v43, v44, v45);
  }

  if (gTUXCTestFailer)
  {
    v46 = v27;
  }

  else
  {
    v46 = 1;
  }

  if ((v46 & 1) == 0)
  {
    (*(gTUXCTestFailer + 16))();
  }

  if (((v27 | v8) & 1) == 0 && DebugIsDebuggerPresent())
  {
    __debugbreak();
  }

LABEL_64:
  if (gTUBATSMode == 1)
  {
    _TUPrintF("[SUMMARY]\n", a2, a3, a4, a5, a6, a7, a8, v64);
    v47 = gTUBATSMode;
  }

  else
  {
    v47 = 0;
  }

  if (gTUUserMode)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47 == 0;
  }

  if (!v48)
  {
    if (gTUTotalFailures)
    {
      v49 = gTUTotalExpectedTests;
      goto LABEL_74;
    }

    v49 = gTUTotalExpectedTests;
    if (gTUTotalPasses < gTUTotalExpectedTests)
    {
LABEL_74:
      if (v49 < 1)
      {
        _TUPrintF("### %d tests failed, %d tests passed\n", a2, a3, a4, a5, a6, a7, a8, gTUTotalFailures);
      }

      else
      {
        _TUPrintF("### %d tests failed, %d of %d tests passed\n", a2, a3, a4, a5, a6, a7, a8, gTUTotalFailures);
      }

      goto LABEL_87;
    }

    if (gTUUserMode)
    {
      _TUPrintF("\n", a2, a3, a4, a5, a6, a7, a8, v64);
    }

    v51 = gTUSuitePasses;
    mach_absolute_time();
    if (sUpTicksToSecondsOnce != -1)
    {
      dispatch_once_f(&sUpTicksToSecondsOnce, &sUpTicksToSecondsMultiplier, _UpTicksToSecondsInit);
    }

    _TUPrintF("All %d suites, %d tests passed (%.6f seconds)\n", v52, v53, v54, v55, v56, v57, v58, v51);
  }

LABEL_87:
  v59 = (gTUTotalFailures + gTUTotalPasses);
  if (gTUTotalFailures + gTUTotalPasses && (!gTUTotalExpectedTests || v59 == gTUTotalExpectedTests))
  {
    if (gTULogLevel <= 30)
    {
      if (gTUUserMode || gTUBATSMode)
      {
        _TUPrintF("Total tests matched expected: %d total tests\n", a2, a3, a4, a5, a6, a7, a8, v59);
      }

      _TUPrintF("p=total:%d/%d\n", a2, a3, a4, a5, a6, a7, a8, v59);
    }
  }

  else
  {
    if ((gTUUserMode != 0) | gTUBATSMode & 1)
    {
      v60 = "### Total tests mismatch: %d actual vs %d expected\n";
    }

    else
    {
      v60 = "f=total:%d/%d\n";
    }

    _TUPrintF(v60, a2, a3, a4, a5, a6, a7, a8, v59);
    atomic_fetch_add(&gTUTotalFailures, 1u);
  }

  if (!gTUUserMode && (gTUBATSMode & 1) == 0)
  {
    _TUPrintF("Z=\n", a2, a3, a4, a5, a6, a7, a8, v64);
  }

  if (gTUOutputFilePtr)
  {
    fflush(gTUOutputFilePtr);
  }

  fflush(*MEMORY[0x1E69E9848]);
  fflush(*MEMORY[0x1E69E9858]);
  if (gTUOutputFile)
  {
    if (fclose(gTUOutputFile) && *__error())
    {
      __error();
    }

    gTUOutputFile = 0;
  }

  gTUOutputFilePtr = 0;
  if (gTUOutputPath && gTUJUnitXMLOutputPath)
  {
    TUConvertToJUnit(gTUOutputPath, gTUJUnitXMLOutputPath);
  }

  v61 = gTUXCTestFailer;
  gTUXCTestFailer = 0;

  v63 = gTUTotalPasses < 1 || gTUTotalFailures != 0;
  gTUExitCode = v63;
}

uint64_t TULogF(uint64_t a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (gTULogLevel <= a2)
  {
    v13[2] = v9;
    v13[3] = v10;
    v11 = "";
    if (a3)
    {
      v11 = a3;
    }

    v13[0] = v11;
    v13[1] = 0;
    return VCPrintF(_TULogPrintFCallback, v13, a4, &a9);
  }

  return result;
}

uint64_t _TULogPrintFCallback(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 1)
  {
    v9 = a1;
    v10 = &a1[a2];
    do
    {
      if (!*(a3 + 8))
      {
        v11 = "";
        if (!gTUUserMode)
        {
          v11 = "#=";
        }

        FPrintF(gTUOutputFilePtr, "%s%s", a3, a4, a5, a6, a7, a8, v11);
        *(a3 + 8) = 1;
      }

      v12 = v9;
      v13 = v9;
      if (v9 >= v10)
      {
LABEL_12:
        FPrintF(gTUOutputFilePtr, "%.*s", a3, a4, a5, a6, a7, a8, v12 - v9);
        v9 = v13;
      }

      else
      {
        v14 = v10 - v9;
        v15 = v9;
        while (*v15 != 10)
        {
          ++v15;
          if (!--v14)
          {
            v12 = v10;
            v13 = v10;
            goto LABEL_12;
          }
        }

        FPrintF(gTUOutputFilePtr, "%.*s", a3, a4, a5, a6, a7, a8, v15 - v9);
        v9 = v15 + 1;
        FPrintF(gTUOutputFilePtr, "\n", v16, v17, v18, v19, v20, v21, v24);
        *(a3 + 8) = 0;
      }
    }

    while (v9 < v10);
  }

  if (!a2 && *(a3 + 8))
  {
    FPrintF(gTUOutputFilePtr, "\n", a3, a4, a5, a6, a7, a8, v23);
    *(a3 + 8) = 0;
  }

  return a2;
}

void _TUXCTestSetup(void *a1)
{
  v3 = [a1 copy];
  v1 = _Block_copy(v3);
  v2 = gTUXCTestFailer;
  gTUXCTestFailer = v1;
}

size_t _TUPerformTest(_BYTE *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = xmmword_1E73A4F40;
  v58 = *algn_1E73A4F50;
  v10 = gTUExcludedTests;
  if (!gTUExcludedTests)
  {
LABEL_12:
    v17 = gTUFilter;
    if (gTUFilter)
    {
      result = strlen(gTUFilter);
      v18 = (gTUFilter + result);
      do
      {
        if (v17 >= v18)
        {
LABEL_18:
          v19 = v18;
          v22 = v18;
          if (v17 == v18)
          {
            return result;
          }
        }

        else
        {
          v19 = v17;
          v20 = v17;
          while (1)
          {
            v21 = *v20++;
            if (v21 == 44)
            {
              break;
            }

            v19 = v20;
            if (v20 == v18)
            {
              goto LABEL_18;
            }
          }

          v22 = v19 + 1;
        }

        result = strnicmpx(v17, v19 - v17, a1);
        v17 = v22;
      }

      while (result);
    }

    v23 = MEMORY[0x1E69E9858];
    if (!gTUOutputFilePtr)
    {
      gTUOutputFilePtr = *MEMORY[0x1E69E9858];
    }

    *&v57 = a1;
    v24 = gTUQualifier;
    if (gTUQualifier)
    {
      if (gTUBATSMode)
      {
        if (*gTUQualifier)
        {
          _TUPrintF("[BEGIN] %s.%s\n", a2, a3, a4, a5, a6, a7, a8, a1);
          goto LABEL_41;
        }

        goto LABEL_29;
      }

      if (*gTUQualifier)
      {
        v25 = gTUQualifier;
      }

      else
      {
        v25 = 0;
      }

      if (gTUUserMode)
      {
        v24 = v25;
        goto LABEL_41;
      }

      if (*gTUQualifier)
      {
        _TUPrintF("t=%s.%s\n", a2, a3, a4, a5, a6, a7, a8, a1);
        goto LABEL_41;
      }
    }

    else
    {
      if (gTUBATSMode)
      {
LABEL_29:
        _TUPrintF("[BEGIN] %s\n", a2, a3, a4, a5, a6, a7, a8, a1);
LABEL_40:
        v24 = 0;
LABEL_41:
        v26 = objc_autoreleasePoolPush();
        v27 = mach_absolute_time();
        a2(&v57);
        v28 = mach_absolute_time() - v27;
        objc_autoreleasePoolPop(v26);
        if (v58)
        {
          v36 = DWORD1(v58) == 0;
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;
        if (gTUUserMode)
        {
          if (v37)
          {
            v38 = "";
          }

          else
          {
            v38 = "### ";
          }

          if (sUpTicksToSecondsOnce != -1)
          {
            dispatch_once_f(&sUpTicksToSecondsOnce, &sUpTicksToSecondsMultiplier, _UpTicksToSecondsInit);
          }

          _TUPrintF("%s%s: %s (%.6f seconds)\n", v29, v30, v31, v32, v33, v34, v35, v38);
          goto LABEL_66;
        }

        if (gTUBATSMode == 1)
        {
          if (sUpTicksToSecondsOnce != -1)
          {
            dispatch_once_f(&sUpTicksToSecondsOnce, &sUpTicksToSecondsMultiplier, _UpTicksToSecondsInit);
          }

          _TUPrintF("# %.6f seconds\n", v29, v30, v31, v32, v33, v34, v35, COERCE__INT64(*&sUpTicksToSecondsMultiplier * v28));
          v46 = "[FAIL]";
          if (v37)
          {
            v46 = "[PASS]";
          }

          if (v24)
          {
            _TUPrintF("%s %s.%s\n\n", v39, v40, v41, v42, v43, v44, v45, v46);
LABEL_66:
            v55 = &gTUSuiteFailures;
            if (v37)
            {
              v55 = &gTUSuitePasses;
            }

            ++*v55;
            if (gTUOutputFilePtr)
            {
              fflush(gTUOutputFilePtr);
            }

            fflush(*MEMORY[0x1E69E9848]);
            return fflush(*v23);
          }

          v56 = v46;
          v54 = "%s %s\n\n";
        }

        else
        {
          _TUPrintF("r=%u/%u\n", v29, v30, v31, v32, v33, v34, v35, v58);
          if (sUpTicksToSecondsOnce != -1)
          {
            dispatch_once_f(&sUpTicksToSecondsOnce, &sUpTicksToSecondsMultiplier, _UpTicksToSecondsInit);
          }

          _TUPrintF("d=%fs\n", v47, v48, v49, v50, v51, v52, v53, COERCE__INT64(*&sUpTicksToSecondsMultiplier * v28));
          v54 = "z=\n";
        }

        _TUPrintF(v54, v39, v40, v41, v42, v43, v44, v45, v56);
        goto LABEL_66;
      }

      if (gTUUserMode)
      {
        goto LABEL_40;
      }
    }

    _TUPrintF("t=%s\n", a2, a3, a4, a5, a6, a7, a8, a1);
    goto LABEL_40;
  }

  v11 = gTUExcludedTests + strlen(gTUExcludedTests);
  do
  {
    if (v10 >= v11)
    {
LABEL_7:
      v12 = v11;
      v15 = v11;
      if (v10 == v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = v10;
      v13 = v10;
      while (1)
      {
        v14 = *v13++;
        if (v14 == 44)
        {
          break;
        }

        v12 = v13;
        if (v13 == v11)
        {
          goto LABEL_7;
        }
      }

      v15 = v12 + 1;
    }

    result = strnicmpx(v10, v12 - v10, a1);
    v10 = v15;
  }

  while (result);
  return result;
}

uint64_t TUTestRequire(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  if ((*(a1 + 28) & 8) == 0)
  {
    v11 = &gTUTotalFailures;
    if (a3)
    {
      v11 = &gTUTotalPasses;
    }

    atomic_fetch_add(v11, 1u);
    v12 = *(a1 + 16);
    v13 = *(a1 + 20);
    if (a3)
    {
      ++v12;
    }

    else
    {
      ++v13;
    }

    *(a1 + 16) = v12;
    *(a1 + 20) = v13;
  }

  if (a3)
  {
    v14 = 0;
    if (gTULogLevel > 30)
    {
      return v14;
    }
  }

  else if ((a2 & 1) == 0 && ((gTUStopOnFirstFail & 1) != 0 || (*(a1 + 28) & 4) != 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = 4294960544;
  }

  if ((*(a1 + 28) & 8) != 0)
  {
    goto LABEL_37;
  }

  if (gTUUserMode || gTUBATSMode)
  {
    if (a3)
    {
      v23 = "";
    }

    else
    {
      v23 = "### ";
    }

    _TUPrintF(v23, a2, a3, a4, a5, a6, a7, a8, v26);
  }

  else
  {
    v15 = 102;
    if (a3)
    {
      v15 = 112;
    }

    _TUPrintF("%c=BOOL:", a2, a3, a4, a5, a6, a7, a8, v15);
  }

  for (i = v8 + 1; *(i - 1) == 47; ++i)
  {
    v8 = i;
LABEL_31:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_31;
  }

  _TUPrintF("%s:%ld, %###s(), %''s\n", v16, v17, v18, v19, v20, v21, v22, v8);
  if (v9 || (gTUBreakOnFail & 1) != 0)
  {
LABEL_37:
    if (!v9)
    {
      goto LABEL_38;
    }

    return v14;
  }

  if ((*(a1 + 28) & 2) == 0 && DebugIsDebuggerPresent())
  {
    __debugbreak();
    JUMPOUT(0x191FC232CLL);
  }

LABEL_38:
  if (!*(a1 + 24))
  {
    *(a1 + 24) = -6737;
  }

  if ((*(a1 + 28) & 8) == 0 && gTUXCTestFailer)
  {
    (*(gTUXCTestFailer + 16))();
  }

  return v14;
}

uint64_t TUTestRequireNoErr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  if ((*(a1 + 28) & 8) == 0)
  {
    v11 = &gTUTotalFailures;
    if (!a3)
    {
      v11 = &gTUTotalPasses;
    }

    atomic_fetch_add(v11, 1u);
    v12 = *(a1 + 16);
    v13 = *(a1 + 20);
    if (a3)
    {
      ++v13;
    }

    else
    {
      ++v12;
    }

    *(a1 + 16) = v12;
    *(a1 + 20) = v13;
  }

  if (a3)
  {
    v14 = a3;
    if ((a2 & 1) == 0)
    {
      if (gTUStopOnFirstFail)
      {
        v14 = 0;
      }

      else if ((*(a1 + 28) & 4) != 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = a3;
      }
    }
  }

  else
  {
    v14 = 0;
    if (gTULogLevel > 30)
    {
      return v14;
    }
  }

  if ((*(a1 + 28) & 8) != 0)
  {
    goto LABEL_38;
  }

  if (gTUUserMode || gTUBATSMode)
  {
    if (a3)
    {
      v23 = "### ";
    }

    else
    {
      v23 = "";
    }

    _TUPrintF(v23, a2, a3, a4, a5, a6, a7, a8, v26);
  }

  else
  {
    v15 = 102;
    if (!a3)
    {
      v15 = 112;
    }

    _TUPrintF("%c=err:", a2, a3, a4, a5, a6, a7, a8, v15);
  }

  for (i = v8 + 1; *(i - 1) == 47; ++i)
  {
    v8 = i;
LABEL_32:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_32;
  }

  _TUPrintF("%s:%ld, %###s(), %#m\n", v16, v17, v18, v19, v20, v21, v22, v8);
  if (!v9 || (gTUBreakOnFail & 1) != 0)
  {
LABEL_38:
    if (v9)
    {
      goto LABEL_39;
    }

    return v14;
  }

  if ((*(a1 + 28) & 2) == 0 && DebugIsDebuggerPresent())
  {
    __debugbreak();
    JUMPOUT(0x191FC24E8);
  }

LABEL_39:
  if (!*(a1 + 24))
  {
    *(a1 + 24) = v9;
  }

  if ((*(a1 + 28) & 8) == 0 && gTUXCTestFailer)
  {
    (*(gTUXCTestFailer + 16))();
  }

  return v14;
}

BOOL TUTestRequireNoNSError(uint64_t a1, char a2, int a3, void *a4, uint64_t a5)
{
  v16 = a4;
  if ((*(a1 + 28) & 8) == 0)
  {
    v17 = &gTUTotalFailures;
    if (a3)
    {
      v17 = &gTUTotalPasses;
    }

    atomic_fetch_add(v17, 1u);
    v18 = *(a1 + 20) + (a3 ^ 1);
    *(a1 + 16) += a3;
    *(a1 + 20) = v18;
  }

  if (a3)
  {
    v19 = 0;
    if (gTULogLevel > 30)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v19 = (a2 & 1) != 0 || (gTUStopOnFirstFail & 1) == 0 && (*(a1 + 28) & 4) == 0;
  }

  if ((*(a1 + 28) & 8) == 0)
  {
    if (gTUUserMode || gTUBATSMode)
    {
      if (a3)
      {
        v28 = "";
      }

      else
      {
        v28 = "### ";
      }

      _TUPrintF(v28, v9, v10, v11, v12, v13, v14, v15, v31);
    }

    else
    {
      v20 = 102;
      if (a3)
      {
        v20 = 112;
      }

      _TUPrintF("%c=err:", v9, v10, v11, v12, v13, v14, v15, v20);
    }

    for (i = a5 + 1; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        a5 = i;
      }

      else if (!*(i - 1))
      {
        _TUPrintF("%s:%ld, %###s(), %{error}\n", v21, v22, v23, v24, v25, v26, v27, a5);
        if ((a3 & 1) == 0 && (gTUBreakOnFail & 1) == 0 && (*(a1 + 28) & 2) == 0 && DebugIsDebuggerPresent())
        {
          __debugbreak();
        }

        break;
      }
    }
  }

LABEL_34:
  if (v16 && !*(a1 + 24))
  {
    *(a1 + 24) = NSErrorToOSStatusEx(v16, 0);
    if (a3)
    {
      goto LABEL_41;
    }
  }

  else if (a3)
  {
    goto LABEL_41;
  }

  if ((*(a1 + 28) & 8) == 0 && gTUXCTestFailer)
  {
    (*(gTUXCTestFailer + 16))();
  }

LABEL_41:

  return v19;
}

uint64_t TULogV(uint64_t a1, int a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v5 = "";
  if (a3)
  {
    v5 = a3;
  }

  v7[0] = v5;
  if (gTULogLevel <= a2)
  {
    v7[1] = 0;
    return VCPrintF(_TULogPrintFCallback, v7, a4, a5);
  }

  return result;
}

uint64_t TUFaultEnable(char *a1, uint64_t a2)
{
  v10 = 0;
  pthread_mutex_lock(&gTUFaultLock);
  if (!_TUFaultLookup(a1, &v10))
  {
    v7 = 0;
    *(*v10 + 2) = a2;
    goto LABEL_6;
  }

  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x103004013764637uLL);
  if (!v4)
  {
LABEL_8:
    v7 = 4294960568;
    goto LABEL_6;
  }

  v5 = v4;
  v6 = strdup(a1);
  v5[1] = v6;
  if (!v6)
  {
    free(v5);
    goto LABEL_8;
  }

  v7 = 0;
  v5[2] = a2;
  v8 = v10;
  *v5 = *v10;
  *v8 = v5;
LABEL_6:
  pthread_mutex_unlock(&gTUFaultLock);
  return v7;
}

uint64_t _TUFaultLookup(char *a1, const char ***a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1 + 1;
    v6 = -2128831035;
    do
    {
      v6 = 16777619 * (v6 ^ v4);
      v7 = *v5++;
      v4 = v7;
    }

    while (v7);
    v8 = v6 % 0x1F;
  }

  else
  {
    v8 = 8;
  }

  v9 = (&gTUFaultHashTable + 8 * v8);
  do
  {
    v10 = v9;
    v9 = *v9;
  }

  while (v9 && strcasecmp(v9[1], a1));
  if (a2)
  {
    *a2 = v10;
  }

  if (v9)
  {
    return 0;
  }

  else
  {
    return 4294960569;
  }
}

uint64_t TUFaultDisable(char *a1)
{
  v5 = 0;
  pthread_mutex_lock(&gTUFaultLock);
  v2 = _TUFaultLookup(a1, &v5);
  if (!v2)
  {
    v3 = *v5;
    *v5 = **v5;
    free(v3[1]);
    free(v3);
  }

  pthread_mutex_unlock(&gTUFaultLock);
  return v2;
}

uint64_t TUFaultInject(char *a1, int a2, _BYTE *a3)
{
  v11 = 0;
  pthread_mutex_lock(&gTUFaultLock);
  v6 = _TUFaultLookup(a1, &v11);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 4294960564;
    v8 = *v11;
    switch(a2)
    {
      case 1:
      case 2:
      case 3:
        v7 = 0;
        *a3 = *(v8 + 16);
        break;
      case 4:
      case 5:
        v7 = 0;
        *a3 = *(v8 + 16);
        break;
      case 6:
      case 7:
      case 10:
        v7 = 0;
        *a3 = *(v8 + 16);
        break;
      case 8:
      case 9:
      case 11:
        v7 = 0;
        *a3 = *(v8 + 16);
        break;
      case 20:
      case 22:
        v7 = 0;
        v9 = *(v8 + 16);
        *a3 = v9;
        break;
      case 21:
      case 23:
        v7 = 0;
        *a3 = *(v8 + 16);
        break;
      default:
        break;
    }
  }

  pthread_mutex_unlock(&gTUFaultLock);
  return v7;
}

_OWORD *TUTestStateCreate(int *a1)
{
  if (TUTestStateGetTypeID_sOnce != -1)
  {
    dispatch_once_f(&TUTestStateGetTypeID_sOnce, &TUTestStateGetTypeID_sTypeID, _TUTestStateGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    Instance[8] = 0u;
    Instance[9] = 0u;
    Instance[6] = 0u;
    Instance[7] = 0u;
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v3 + 2) = Mutable;
    if (!Mutable)
    {
      v6 = -6728;
      goto LABEL_8;
    }

    v5 = pthread_mutex_init((v3 + 24), 0);
    if (v5)
    {
      v6 = v5;
LABEL_8:
      CFRelease(v3);
      v3 = 0;
      goto LABEL_9;
    }

    *(v3 + 11) = v3 + 24;
    v6 = pthread_cond_init(v3 + 2, 0);
    if (v6)
    {
      goto LABEL_8;
    }

    *(v3 + 18) = v3 + 6;
  }

  else
  {
    v6 = -6728;
  }

LABEL_9:
  if (a1)
  {
    *a1 = v6;
  }

  return v3;
}

uint64_t _TUTestStateGetTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

CFMutableStringRef _TUTestStateCopyDescription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  CFAppendPrintF(&v9, "TUTestState: Signals %d, Objects:\n%@", a3, a4, a5, a6, a7, a8, *(a1 + 152));
  return v9;
}

pthread_mutex_t *_TUTestStateFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[18];
  if (v3)
  {
    pthread_cond_destroy(v3);
    a1[18] = 0;
  }

  result = a1[11];
  if (result)
  {
    result = pthread_mutex_destroy(result);
    a1[11] = 0;
  }

  return result;
}

const void *TUTestStateGetObject(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 88);
  if (!v4)
  {
    return 0;
  }

  pthread_mutex_lock(v4);
  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  pthread_mutex_unlock(*(a1 + 88));
  return Value;
}

uint64_t TUTestStateSetObject(uint64_t result, const void *a2, const void *a3)
{
  if (result)
  {
    if (a2)
    {
      v4 = result;
      if (*(result + 16))
      {
        result = *(result + 88);
        if (result)
        {
          pthread_mutex_lock(result);
          v6 = *(v4 + 16);
          if (a3)
          {
            CFDictionarySetValue(v6, a2, a3);
          }

          else
          {
            CFDictionaryRemoveValue(v6, a2);
          }

          v7 = *(v4 + 88);

          return pthread_mutex_unlock(v7);
        }
      }
    }
  }

  return result;
}

int64_t TUTestStateGetSInt32(uint64_t a1, const void *a2, _DWORD *a3)
{
  v9 = 0;
  if (!a1 || !a2 || !*(a1 + 16) || (v6 = *(a1 + 88)) == 0)
  {
    Int64Ranged = 0;
    v9 = -6745;
    if (!a3)
    {
      return Int64Ranged;
    }

    goto LABEL_6;
  }

  pthread_mutex_lock(v6);
  Int64Ranged = CFDictionaryGetInt64Ranged(*(a1 + 16), a2, 0xFFFFFFFF80000000, 0x7FFFFFFFLL, &v9);
  pthread_mutex_unlock(*(a1 + 88));
  if (a3)
  {
LABEL_6:
    *a3 = v9;
  }

  return Int64Ranged;
}

uint64_t TUTestStateSetSInt32(uint64_t result, const void *a2, int a3)
{
  if (result)
  {
    if (a2)
    {
      v4 = result;
      if (*(result + 16))
      {
        result = *(result + 88);
        if (result)
        {
          pthread_mutex_lock(result);
          CFDictionarySetInt64(*(v4 + 16), a2, a3);
          v6 = *(v4 + 88);

          return pthread_mutex_unlock(v6);
        }
      }
    }
  }

  return result;
}

uint64_t TUTestStateUpdateSInt32(uint64_t a1, const void *a2, int a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 16) && (v6 = *(a1 + 88)) != 0)
    {
      pthread_mutex_lock(v6);
      v3 = CFDictionaryGetInt64Ranged(*(a1 + 16), a2, 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0) + a3;
      CFDictionarySetInt64(*(a1 + 16), a2, v3);
      pthread_mutex_unlock(*(a1 + 88));
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t TUTestStateSignal(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 88);
    if (result)
    {
      if (*(v1 + 144))
      {
        pthread_mutex_lock(result);
        ++*(v1 + 152);
        pthread_cond_signal(*(v1 + 144));
        v2 = *(v1 + 88);

        return pthread_mutex_unlock(v2);
      }
    }
  }

  return result;
}

uint64_t TUTestStateSignalCount(uint64_t a1)
{
  pthread_mutex_lock(*(a1 + 88));
  v2 = *(a1 + 152);
  pthread_mutex_unlock(*(a1 + 88));
  return v2;
}

uint64_t TUTestStateWait(uint64_t a1, double a2)
{
  if (!a1 || !*(a1 + 88) || !*(a1 + 144))
  {
    return 4294960551;
  }

  v12.tv_sec = 0;
  v12.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v12);
  v4 = v12.tv_sec + a2;
  v12.tv_sec = v4;
  v5 = v12.tv_nsec + ((a2 - a2) * 1000000000.0);
  if (v5 > 999999999)
  {
    v6 = v5 - 1999999999;
    if (v5 < 0x773593FF)
    {
      v6 = 0;
    }

    v7 = (v6 + 999999999) / 0x3B9ACA00uLL;
    v5 = v5 - 1000000000 * v7 - 1000000000;
    v12.tv_sec = v4 + v7 + 1;
  }

  v12.tv_nsec = v5;
  pthread_mutex_lock(*(a1 + 88));
  while (1)
  {
    v8 = *(a1 + 152);
    if (v8)
    {
      break;
    }

    v9 = pthread_cond_timedwait(*(a1 + 144), *(a1 + 88), &v12);
    if (v9)
    {
      v10 = v9;
      goto LABEL_14;
    }
  }

  v10 = 0;
  *(a1 + 152) = v8 - 1;
LABEL_14:
  pthread_mutex_unlock(*(a1 + 88));
  return v10;
}

uint64_t GetMachThreadPriority(_DWORD *a1, kern_return_t *a2)
{
  v16 = 0;
  *thread_info_out = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v4 = pthread_self();
  v5 = pthread_mach_thread_np(v4);
  thread_info_outCnt = 10;
  v6 = thread_info(v5, 3u, thread_info_out, &thread_info_outCnt);
  if (v6)
  {
    goto LABEL_2;
  }

  v9 = DWORD1(v15);
  if (a1)
  {
    *a1 = DWORD1(v15);
  }

  switch(v9)
  {
    case 4:
      thread_info_outCnt = 4;
      v6 = thread_info(v5, 0xCu, &v12 + 2, &thread_info_outCnt);
      if (v6)
      {
        goto LABEL_2;
      }

      v7 = HIDWORD(v12);
      break;
    case 2:
      thread_info_outCnt = 5;
      v6 = thread_info(v5, 0xBu, &v11 + 1, &thread_info_outCnt);
      if (v6)
      {
        goto LABEL_2;
      }

      v7 = DWORD2(v11);
      break;
    case 1:
      thread_info_outCnt = 5;
      v6 = thread_info(v5, 0xAu, &v10, &thread_info_outCnt);
      if (!v6)
      {
        v7 = DWORD1(v10);
        break;
      }

LABEL_2:
      v7 = 0;
      break;
    default:
      v7 = 0;
      v6 = -6735;
      break;
  }

  if (a2)
  {
    *a2 = v6;
  }

  return v7;
}

uint64_t _UpTicksPerSecondInit(unint64_t *a1)
{
  v2 = 1000000000;
  info = 0;
  result = mach_timebase_info(&info);
  if (!result)
  {
    if (info.numer)
    {
      v4 = info.denom == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v2 = 1000000000 * info.denom / info.numer;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t SleepForUpTicks(uint64_t a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  v2 = UpTicksPerSecond_sTicksPerSecond;
  result = mach_absolute_time();
  for (i = result + a1; result < i; result = mach_absolute_time())
  {
    v5.tv_sec = ((i - result) / v2);
    v5.tv_nsec = (1000000000 * ((i - result) % v2) / v2);
    if (nanosleep(&v5, 0))
    {
      if (*__error())
      {
        __error();
      }
    }
  }

  return result;
}

uint64_t SleepUntilUpTicks(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = mach_absolute_time();
    v3 = v1 >= v2;
    result = v1 - v2;
    if (result != 0 && v3)
    {

      return SleepForUpTicks(result);
    }
  }

  return result;
}

double _UpTicksToSecondsInit(double *a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  result = 1.0 / UpTicksPerSecond_sTicksPerSecond;
  *a1 = result;
  return result;
}

double UpTicksToSecondsF(unint64_t a1)
{
  if (sUpTicksToSecondsOnce != -1)
  {
    dispatch_once_f(&sUpTicksToSecondsOnce, &sUpTicksToSecondsMultiplier, _UpTicksToSecondsInit);
  }

  return *&sUpTicksToSecondsMultiplier * a1;
}

double _UpTicksToMillisecondsInit(double *a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  result = 1000.0 / UpTicksPerSecond_sTicksPerSecond;
  *a1 = result;
  return result;
}

double _UpTicksToMicrosecondsInit(double *a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  result = 1000000.0 / UpTicksPerSecond_sTicksPerSecond;
  *a1 = result;
  return result;
}

double _UpTicksToNanosecondsInit(double *a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  result = 1000000000.0 / UpTicksPerSecond_sTicksPerSecond;
  *a1 = result;
  return result;
}

void _SecondsToUpTicksInit(void *a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  *a1 = UpTicksPerSecond_sTicksPerSecond;
}

unint64_t SecondsToUpTicksF(double a1)
{
  if (SecondsToUpTicksF_sOnce != -1)
  {
    dispatch_once_f(&SecondsToUpTicksF_sOnce, &SecondsToUpTicksF_sMultiplier, _SecondsToUpTicksFInit);
  }

  return (*&SecondsToUpTicksF_sMultiplier * a1);
}

double _SecondsToUpTicksFInit(double *a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  result = UpTicksPerSecond_sTicksPerSecond;
  *a1 = UpTicksPerSecond_sTicksPerSecond;
  return result;
}

unint64_t MillisecondsToUpTicks(unint64_t a1)
{
  if (MillisecondsToUpTicks_sOnce != -1)
  {
    dispatch_once_f(&MillisecondsToUpTicks_sOnce, &MillisecondsToUpTicks_sMultiplier, _MillisecondsToUpTicksInit);
  }

  return (*&MillisecondsToUpTicks_sMultiplier * a1);
}

double _MillisecondsToUpTicksInit(double *a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  result = UpTicksPerSecond_sTicksPerSecond / 1000.0;
  *a1 = result;
  return result;
}

unint64_t MicrosecondsToUpTicks(unint64_t a1)
{
  if (MicrosecondsToUpTicks_sOnce != -1)
  {
    dispatch_once_f(&MicrosecondsToUpTicks_sOnce, &MicrosecondsToUpTicks_sMultiplier, _MicrosecondsToUpTicksInit);
  }

  return (*&MicrosecondsToUpTicks_sMultiplier * a1);
}

double _MicrosecondsToUpTicksInit(double *a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  result = UpTicksPerSecond_sTicksPerSecond / 1000000.0;
  *a1 = result;
  return result;
}

unint64_t NanosecondsToUpTicks(unint64_t a1)
{
  if (NanosecondsToUpTicks_sOnce != -1)
  {
    dispatch_once_f(&NanosecondsToUpTicks_sOnce, &NanosecondsToUpTicks_sMultiplier, _NanosecondsToUpTicksInit);
  }

  return (*&NanosecondsToUpTicks_sMultiplier * a1);
}

double _NanosecondsToUpTicksInit(double *a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  result = UpTicksPerSecond_sTicksPerSecond / 1000000000.0;
  *a1 = result;
  return result;
}

unint64_t NTPtoUpTicks(unint64_t a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  return UpTicksPerSecond_sTicksPerSecond * HIDWORD(a1) + ((UpTicksPerSecond_sTicksPerSecond * a1) >> 32);
}

__darwin_time_t NanoTimeGetCurrent()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return (1000 * v1.tv_usec) + 1000000000 * v1.tv_sec;
}

uint64_t YMD_HMStoSeconds(int a1, int a2, int a3, int a4, int a5, unsigned int a6, int a7)
{
  v7 = a1 + 2;
  if (a1 >= 1)
  {
    v7 = a1 - 1;
  }

  v8 = 365 * (a1 - 1) + (v7 >> 2) + (a1 - 1) / -100 + (a1 - 1) / 400 + (3057 * a2 - 3007) / 100;
  HIDWORD(v10) = -1030792151 * a1 + 85899344;
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 2;
  LODWORD(v10) = HIDWORD(v10);
  if ((v10 >> 4) >= 0xA3D70B)
  {
    v11 = -2;
  }

  else
  {
    v11 = -1;
  }

  if (v9 <= 0x28F5C28)
  {
    v12 = v11;
  }

  else
  {
    v12 = -1;
  }

  if ((a1 & 3) != 0)
  {
    v12 = -2;
  }

  v13 = v12 + v8;
  if (a2 >= 3)
  {
    v8 = v13;
  }

  return 60 * a5 + (3600 * a4) + a6 + 86400 * (a3 - a7 + v8);
}

unint64_t SecondsToYMD_HMS(uint64_t a1, int *a2, _DWORD *a3, _DWORD *a4, int *a5, unsigned int *a6, _DWORD *a7)
{
  v7 = a1 / 86400;
  v8 = 963315389 * (400 * (a1 / 86400));
  v9 = (v8 >> 47) + (v8 >> 63);
  v10 = 365 * v9 - 365;
  do
  {
    v11 = v9;
    if (v9 >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v9 + 3;
    }

    v13 = v9 / -100;
    v14 = v9 / 400;
    ++v9;
    v10 += 365;
  }

  while (v10 + v14 + v13 + (v12 >> 2) < v7);
  v15 = a1 % 86400;
  v16 = v11 - 1;
  if (v11 >= 1)
  {
    v17 = v11 - 1;
  }

  else
  {
    v17 = v11 + 2;
  }

  result = (-1374389535 * v16) >> 63;
  v19 = v7 - (v17 >> 2) - 365 * v16 + v16 / 100 + v16 / -400;
  v20 = v19;
  if (v19 >= 60)
  {
    v20 = v19 + 2;
    if ((v11 & 3) == 0)
    {
      HIDWORD(v21) = -1030792151 * v11 + 85899344;
      LODWORD(v21) = HIDWORD(v21);
      if ((v21 >> 2) > 0x28F5C28 || -400 * v14 == -v11)
      {
        if (v19 <= 0x3E)
        {
          v22 = -2;
        }

        else
        {
          v22 = -1;
        }

        v20 += v22;
      }
    }
  }

  v23 = 1438680573 * (100 * v20 + 3007);
  v24 = HIDWORD(v23);
  v25 = v23 >> 63;
  v26 = v15 / 3600;
  v27 = v15 + 61936 * (v15 / 3600);
  if (a2)
  {
    *a2 = v11;
  }

  v28 = v25 + (v24 >> 10);
  if (a3)
  {
    *a3 = v28;
  }

  if (a4)
  {
    *a4 = (3057 * v28 - 3007) / -100 + v20;
  }

  if (a5)
  {
    *a5 = v26;
  }

  v29 = (((34953 * v27) >> 16) >> 5) + (((v27 + ((-30583 * v27) >> 16)) & 0x8000) >> 15);
  if (a6)
  {
    *a6 = v29;
  }

  if (a7)
  {
    *a7 = (v27 - 60 * v29);
  }

  return result;
}

const char *MakeFractionalDateString(timeval *a1, char *a2, size_t a3)
{
  v5 = a1;
  v10.tv_sec = 0;
  *&v10.tv_usec = 0;
  if (!a1)
  {
    v5 = &v10;
    gettimeofday(&v10, 0);
  }

  tv_sec = v5->tv_sec;
  v6 = gmtime(&tv_sec);
  if (!v6)
  {
    return "";
  }

  v7 = strftime(a2, a3, "%Y-%m-%dT%H:%M:%S", v6);
  snprintf(&a2[v7], a3 - v7, ".%06uZ", v5->tv_usec);
  return a2;
}

uint64_t ParseFractionalDateString(char *__s, int64_t a2, uint64_t a3, char **a4, double a5, int32x2_t a6)
{
  v8 = a2;
  if (a2 == -1)
  {
    v8 = strlen(__s);
  }

  v10 = &__s[v8];
  if (v8 < 1)
  {
    v11 = 0;
    v13 = 0;
    v12 = __s;
  }

  else
  {
    v11 = 0;
    v12 = __s;
    do
    {
      v13 = *v12;
      if ((v13 - 48) > 9)
      {
        break;
      }

      v11 = *v12++ + 10 * v11 - 48;
    }

    while (v12 < v10);
  }

  if (v12 - __s != 4)
  {
    return 4294960554;
  }

  if (v12 == v10)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = 0;
    v15 = 1;
LABEL_29:
    v23 = 1;
    goto LABEL_30;
  }

  if (v13 != 90 && v13 != 45)
  {
    return 4294960554;
  }

  v14 = v12 + 1;
  if (v12 + 1 >= v10)
  {
    v15 = 0;
    v17 = v12 + 1;
  }

  else
  {
    v15 = 0;
    v16 = (&__s[v8] - v12 - 1);
    v17 = v12 + 1;
    while (1)
    {
      v13 = *v17;
      if ((v13 - 48) > 9)
      {
        break;
      }

      v15 = *v17++ + 10 * v15 - 48;
      if (!--v16)
      {
        v17 = &__s[v8];
        break;
      }
    }
  }

  if (v17 - v14 != 2)
  {
    return 4294960554;
  }

  if ((v15 - 13) < 0xFFFFFFF4)
  {
    return 4294960586;
  }

  if (v17 == v10)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = 0;
    goto LABEL_29;
  }

  if (v13 != 90 && v13 != 45)
  {
    return 4294960554;
  }

  v22 = v17 + 1;
  if (v13 != 90)
  {
    if (v22 >= v10)
    {
      return 4294960554;
    }

    v23 = 0;
    v25 = &__s[v8];
    v26 = &__s[v8 + ~v17];
    v27 = (v17 + 1);
    while (1)
    {
      v28 = *v27;
      v29 = *v27;
      if ((v28 - 48) > 9)
      {
        break;
      }

      v23 = v28 + 10 * v23 - 48;
      ++v27;
      if (!--v26)
      {
        v27 = &__s[v8];
        break;
      }
    }

    if (v27 - v22 != 2)
    {
      return 4294960554;
    }

    if (v23 > 0x1F)
    {
      return 4294960586;
    }

    if (v27 == v10)
    {
      v18 = 0;
    }

    else
    {
      if (v28 != 90 && v29 != 84)
      {
        return 4294960554;
      }

      v22 = (v27 + 1);
      if (v28 == 90)
      {
        v18 = 0;
LABEL_46:
        v19 = 0;
        v20 = 0;
LABEL_47:
        LODWORD(v21) = 0;
        goto LABEL_27;
      }

      if (v22 >= v10)
      {
        return 4294960554;
      }

      v18 = 0;
      v30 = &__s[v8 + ~v27++];
      while (1)
      {
        v31 = *v27;
        v32 = *v27;
        if ((v31 - 48) > 9)
        {
          break;
        }

        v18 = v31 + 10 * v18 - 48;
        ++v27;
        if (!--v30)
        {
          v27 = &__s[v8];
          break;
        }
      }

      if (v27 - v22 != 2)
      {
        return 4294960554;
      }

      if (v18 > 0x17)
      {
        return 4294960586;
      }

      if (v27 != v10)
      {
        if (v31 != 90 && v32 != 58)
        {
          return 4294960554;
        }

        v22 = (v27 + 1);
        if (v31 == 90)
        {
          goto LABEL_46;
        }

        if (v22 >= v10)
        {
          return 4294960554;
        }

        v19 = 0;
        v33 = &__s[v8 + ~v27++];
        while (1)
        {
          v34 = *v27;
          v35 = *v27;
          if ((v34 - 48) > 9)
          {
            break;
          }

          v19 = v34 + 10 * v19 - 48;
          ++v27;
          if (!--v33)
          {
            v27 = &__s[v8];
            break;
          }
        }

        if (v27 - v22 != 2)
        {
          return 4294960554;
        }

        if (v19 > 0x3B)
        {
          return 4294960586;
        }

        if (v27 != v10)
        {
          if (v34 == 90 || v35 == 58)
          {
            v36 = (v27 + 1);
            if (v34 == 90)
            {
              v20 = 0;
              LODWORD(v21) = 0;
              v10 = (v27 + 1);
              goto LABEL_30;
            }

            if (v36 < v10)
            {
              v20 = 0;
              v37 = &__s[v8 + ~v27];
              v22 = v36;
              while (1)
              {
                v38 = *v22;
                v39 = *v22;
                if ((v38 - 48) > 9)
                {
                  break;
                }

                v20 = v38 + 10 * v20 - 48;
                ++v22;
                if (!--v37)
                {
                  v22 = &__s[v8];
                  break;
                }
              }

              if (v22 - v36 == 2)
              {
                if (v20 > 0x3D)
                {
                  return 4294960586;
                }

                if (v22 == v10)
                {
                  goto LABEL_47;
                }

                if (v38 == 90 || v39 == 46)
                {
                  v27 = (v22 + 1);
                  if (v38 != 90)
                  {
                    if (v27 >= v10)
                    {
                      v44 = 0;
                      v45 = 0;
                      v42 = v27;
                    }

                    else
                    {
                      v40 = 0;
                      v41 = &__s[v8 + ~v22];
                      v42 = v27;
                      while (1)
                      {
                        v43 = *v42;
                        if ((v43 - 48) > 9)
                        {
                          break;
                        }

                        v40 = v43 + 10 * v40 - 48;
                        ++v42;
                        if (!--v41)
                        {
                          v42 = v25;
                          break;
                        }
                      }

                      v44 = 1000000 * v40;
                      v45 = v43 == 90;
                    }

                    v46 = v42 - v27;
                    if (v46 <= 9)
                    {
                      v47 = v46 - 1;
                      if (v46 < 1)
                      {
                        v54 = 1;
                      }

                      else
                      {
                        v48 = (v46 + 3) & 0x7FFFFFFC;
                        a6.i32[0] = v47;
                        v49 = v47 & 0xFFFFFFFC;
                        v50.i64[0] = 0x100000001;
                        v50.i64[1] = 0x100000001;
                        v51.i64[0] = 0xA0000000ALL;
                        v51.i64[1] = 0xA0000000ALL;
                        do
                        {
                          v52 = v50;
                          v50 = vmulq_s32(v50, v51);
                          v48 -= 4;
                        }

                        while (v48);
                        v53 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(v49), xmmword_191FF9610), vdupq_lane_s32(a6, 0)), v52, v50);
                        *v53.i8 = vmul_s32(*v53.i8, *&vextq_s8(v53, v53, 8uLL));
                        v54 = (v53.i32[0] * v53.i32[1]);
                      }

                      v21 = v44 / v54;
                      if (v42 == v10)
                      {
                        v10 = v42;
                        goto LABEL_30;
                      }

                      if (v45)
                      {
                        v10 = v42 + 1;
                        goto LABEL_30;
                      }

                      return 4294960554;
                    }

                    return 4294960586;
                  }

LABEL_51:
                  LODWORD(v21) = 0;
                  v10 = v27;
                  goto LABEL_30;
                }
              }
            }
          }

          return 4294960554;
        }

LABEL_50:
        v20 = 0;
        goto LABEL_51;
      }
    }

    v19 = 0;
    goto LABEL_50;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  LODWORD(v21) = 0;
  v23 = 1;
LABEL_27:
  v10 = v22;
LABEL_30:
  if (a3)
  {
    *a3 = YMD_HMStoSeconds(v11, v15, v23, v18, v19, v20, 719163);
    *(a3 + 8) = v21;
  }

  result = 0;
  if (a4)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t TLV8Get(unsigned __int8 *a1, unsigned __int8 *a2, int a3, unsigned __int8 **a4, void *a5, unsigned __int8 **a6)
{
  do
  {
    if (a1 == a2)
    {
      return 4294960569;
    }

    if (a1 >= a2)
    {
      return 4294960591;
    }

    if ((a2 - a1) < 2)
    {
      return 4294960569;
    }

    v6 = a1 + 2;
    v7 = a1[1];
    v8 = &a1[v7 + 2];
    if (v8 > a2)
    {
      return 4294960546;
    }

    v9 = *a1;
    a1 += v7 + 2;
  }

  while (v9 != a3);
  if (a4)
  {
    *a4 = v6;
  }

  if (a5)
  {
    *a5 = v7;
  }

  result = 0;
  if (a6)
  {
    *a6 = v8;
  }

  return result;
}

uint64_t TLV8GetNext(_BYTE *a1, _BYTE *a2, _BYTE *a3, void *a4, void *a5, void *a6)
{
  if (a1 == a2)
  {
    return 4294960569;
  }

  if (a1 >= a2)
  {
    return 4294960591;
  }

  if ((a2 - a1) < 2)
  {
    return 4294960569;
  }

  v6 = a1[1];
  v7 = &a1[v6 + 2];
  if (v7 > a2)
  {
    return 4294960546;
  }

  *a3 = *a1;
  *a4 = a1 + 2;
  *a5 = v6;
  result = 0;
  if (a6)
  {
    *a6 = v7;
  }

  return result;
}

uint64_t TLV8GetBytes(unsigned __int8 *a1, unsigned __int8 *a2, int a3, unint64_t a4, size_t a5, char *__dst, void *a7, unsigned __int8 **a8)
{
  do
  {
    if (a1 == a2)
    {
      return 4294960569;
    }

    if (a1 >= a2)
    {
      return 4294960591;
    }

    if ((a2 - a1) < 2)
    {
      return 4294960569;
    }

    v14 = a1 + 2;
    v15 = a1[1];
    v16 = &a1[v15 + 2];
    if (v16 > a2)
    {
      return 4294960546;
    }

    v17 = *a1;
    a1 += v15 + 2;
  }

  while (v17 != a3);
  if (v15 > a5)
  {
    return 4294960545;
  }

  v18 = &__dst[a5];
  memcpy(__dst, v14, v15);
  v19 = &__dst[v15];
LABEL_8:
  v20 = v16;
  while (a2 > v20)
  {
    if ((a2 - v20) < 2)
    {
      break;
    }

    v21 = v20 + 2;
    v22 = v20[1];
    v16 = &v20[v22 + 2];
    if (v16 > a2 || *v20 != a3)
    {
      break;
    }

    v20 += v22 + 2;
    if (v22)
    {
      if (v18 - v19 < v22)
      {
        return 4294960545;
      }

      memcpy(v19, v21, v22);
      v19 += v22;
      goto LABEL_8;
    }
  }

  if (v19 - __dst < a4)
  {
    return 4294960546;
  }

  if (a7)
  {
    *a7 = v19 - __dst;
  }

  result = 0;
  if (a8)
  {
    *a8 = v20;
  }

  return result;
}

unint64_t TLVParseSInt64(int *a1, uint64_t a2, char a3, int *a4)
{
  result = 0;
  v6 = -6743;
  if ((a3 & 1) == 0)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v6 = 0;
        result = *a1;
      }

      else if (a2 == 8)
      {
        v6 = 0;
        result = *a1;
        if (!a4)
        {
          return result;
        }

        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v6 = 0;
        result = (*(a1 + 1) << 8) | *a1;
        if (!a4)
        {
          return result;
        }

        goto LABEL_23;
      }

LABEL_22:
      if (!a4)
      {
        return result;
      }

      goto LABEL_23;
    }

LABEL_19:
    v6 = 0;
    result = *a1;
    if (!a4)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 == 8)
      {
        v6 = 0;
        result = bswap64(*a1);
        if (!a4)
        {
          return result;
        }

        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v6 = 0;
    v8 = (*a1 << 24) | (*(a1 + 1) << 16) | (*(a1 + 2) << 8);
    v7 = *(a1 + 3);
  }

  else
  {
    if (a2 == 1)
    {
      goto LABEL_19;
    }

    if (a2 != 2)
    {
      goto LABEL_22;
    }

    v6 = 0;
    LOWORD(v8) = *a1 << 8;
    v7 = *(a1 + 1);
    v8 = v8;
  }

  result = v8 | v7;
  if (!a4)
  {
    return result;
  }

LABEL_23:
  *a4 = v6;
  return result;
}

uint64_t TLV8GetUInt64(unsigned __int8 *a1, unsigned __int8 *a2, int a3, int *a4, unsigned __int8 **a5)
{
  do
  {
    if (a1 == a2)
    {
LABEL_20:
      result = 0;
      v9 = -6727;
      goto LABEL_17;
    }

    v5 = a1;
    if (a1 >= a2)
    {
      result = 0;
      v9 = -6705;
      goto LABEL_17;
    }

    if ((a2 - a1) < 2)
    {
      goto LABEL_20;
    }

    v6 = (a1 + 2);
    v7 = a1[1];
    a1 += v7 + 2;
    if (a1 > a2)
    {
      result = 0;
      v9 = -6750;
      goto LABEL_17;
    }
  }

  while (*v5 != a3);
  if (a5)
  {
    *a5 = a1;
  }

  result = 0;
  v9 = -6743;
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      v9 = 0;
      result = *v6;
    }

    else if (v7 == 8)
    {
      v9 = 0;
      result = *v6;
    }
  }

  else if (v7 == 1)
  {
    v9 = 0;
    result = *v6;
  }

  else if (v7 == 2)
  {
    v9 = 0;
    result = *(v5 + 1);
  }

LABEL_17:
  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

unint64_t TLVParseUInt64(unint64_t *a1, uint64_t a2, char a3, int *a4)
{
  result = 0;
  v6 = -6743;
  if ((a3 & 1) == 0)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v6 = 0;
        result = *a1;
      }

      else if (a2 == 8)
      {
        v6 = 0;
        result = *a1;
        if (!a4)
        {
          return result;
        }

        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v6 = 0;
        result = *a1;
        if (!a4)
        {
          return result;
        }

        goto LABEL_24;
      }

LABEL_23:
      if (!a4)
      {
        return result;
      }

      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v6 = 0;
        result = __rev16(*a1);
        if (!a4)
        {
          return result;
        }

        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_20:
    v6 = 0;
    result = *a1;
    if (!a4)
    {
      return result;
    }

    goto LABEL_24;
  }

  if (a2 != 4)
  {
    if (a2 == 8)
    {
      v6 = 0;
      result = bswap64(*a1);
      if (!a4)
      {
        return result;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v6 = 0;
  result = bswap32(*a1);
  if (!a4)
  {
    return result;
  }

LABEL_24:
  *a4 = v6;
  return result;
}

void *TLV8CopyCoalesced(unsigned __int8 *a1, unsigned __int8 *a2, int a3, size_t *a4, int *a5)
{
  v15 = 0;
  __src = 0;
  v13 = 0;
  v14 = 0;
  v7 = TLV8GetOrCopyCoalesced(a1, a2, a3, &__src, &v15, &v14, &v13);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v14;
    v9 = v15;
    if (v14)
    {
LABEL_8:
      v7 = 0;
      *a4 = v9;
      goto LABEL_9;
    }

    if (v15 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v15;
    }

    v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
    v8 = v11;
    if (v11)
    {
      memcpy(v11, __src, v9);
      goto LABEL_8;
    }

    v7 = -6728;
  }

LABEL_9:
  if (a5)
  {
    *a5 = v7;
  }

  return v8;
}

uint64_t TLV8GetOrCopyCoalesced(unsigned __int8 *a1, unsigned __int8 *a2, int a3, void *a4, size_t *a5, void *a6, unsigned __int8 **a7)
{
  do
  {
    if (a1 == a2)
    {
      return 4294960569;
    }

    if (a1 >= a2)
    {
      return 4294960591;
    }

    if ((a2 - a1) < 2)
    {
      return 4294960569;
    }

    v9 = a1 + 2;
    v10 = a1[1];
    v11 = &a1[v10 + 2];
    if (v11 > a2)
    {
      return 4294960546;
    }

    v12 = *a1;
    a1 += v10 + 2;
  }

  while (v12 != a3);
  v13 = 0;
  while (2)
  {
    v14 = v13;
    v15 = v10;
    while (2)
    {
      v16 = v15;
      v17 = v9;
      v18 = v11;
      do
      {
        if (a2 <= v18 || (a2 - v18) < 2 || (v9 = v18 + 2, v15 = v18[1], v11 = &v18[v15 + 2], v11 > a2) || *v18 != a3)
        {
          *a4 = v17;
          *a5 = v16;
          *a6 = v13;
          result = 0;
          if (a7)
          {
            *a7 = v18;
          }

          return result;
        }

        v18 += v15 + 2;
      }

      while (!v15);
      if (!v16)
      {
        continue;
      }

      break;
    }

    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v10 = v16 + v15;
    v19 = malloc_type_malloc(v16 + v15, 0x100004077774924uLL);
    if (v19)
    {
      v13 = v19;
      memcpy(v19, v17, v16);
      memcpy(&v13[v16], v9, v15);
      v9 = v13;
      a6 = v23;
      a7 = v24;
      a4 = v21;
      a5 = v22;
      if (v14)
      {
        free(v14);
        a4 = v21;
        a5 = v22;
        a6 = v23;
        a7 = v24;
        v9 = v13;
      }

      continue;
    }

    break;
  }

  if (v13)
  {
    free(v13);
  }

  return 4294960568;
}

void *TLV8BufferInit(void *result, uint64_t a2)
{
  *result = result + 4;
  result[1] = 0;
  result[2] = a2;
  result[3] = 0;
  return result;
}

void TLV8BufferFree(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t TLV8BufferAppend(uint64_t a1, char a2, char *__s, size_t a4)
{
  v4 = a4;
  v5 = __s;
  if (a4 == -1)
  {
    v4 = strlen(__s);
  }

  v8 = v4 / 0xFF;
  if (v4 % 0xFF)
  {
    ++v8;
  }

  v9 = v4 + 2 * v8;
  v10 = v4 + 2;
  if (v4 > 0xFF)
  {
    v10 = v9;
  }

  v11 = *(a1 + 8);
  v12 = v11 + v10;
  if (v11 + v10 > *(a1 + 16))
  {
    return 4294960553;
  }

  if (v12 < v11)
  {
    return 4294960545;
  }

  if (v12 > 0x12C)
  {
    v14 = malloc_type_malloc(v12, 0x100004077774924uLL);
    if (!v14)
    {
      return 4294960568;
    }

    v15 = v14;
    v16 = *(a1 + 24);
    v17 = *(a1 + 8);
    if (v16)
    {
      memcpy(v14, v16, v17);
      free(*(a1 + 24));
    }

    else if (v17)
    {
      memcpy(v14, (a1 + 32), v17);
    }

    *a1 = v15;
    *(a1 + 24) = v15;
    v13 = &v15[*(a1 + 8)];
  }

  else
  {
    v13 = (a1 + v11 + 32);
  }

  v18 = &v5[v4];
  do
  {
    if ((v18 - v5) >= 0xFF)
    {
      v19 = 255;
    }

    else
    {
      v19 = v18 - v5;
    }

    *v13 = a2;
    v13[1] = v19;
    if (v18 != v5)
    {
      memcpy(v13 + 2, v5, v19);
    }

    v5 += v19;
    v13 += v19 + 2;
  }

  while (v5 != v18);
  result = 0;
  *(a1 + 8) = &v13[-*a1];
  return result;
}

uint64_t TLV8BufferAppendSInt64(uint64_t a1, char a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a3 == a3)
  {
    LOBYTE(v5[0]) = a3;
    v3 = 1;
  }

  else
  {
    v5[0] = a3;
    v3 = 8;
  }

  return TLV8BufferAppend(a1, a2, v5, v3);
}

uint64_t TLV8BufferAppendUInt64(uint64_t a1, char a2, unint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 > 0xFF)
  {
    if (a3 >> 16)
    {
      v5 = a3;
      if (HIDWORD(a3))
      {
        v6 = BYTE4(a3);
        v7 = BYTE5(a3);
        v8 = BYTE6(a3);
        v9 = HIBYTE(a3);
        v3 = 8;
      }

      else
      {
        v3 = 4;
      }
    }

    else
    {
      LOWORD(v5) = a3;
      v3 = 2;
    }
  }

  else
  {
    LOBYTE(v5) = a3;
    v3 = 1;
  }

  return TLV8BufferAppend(a1, a2, &v5, v3);
}

uint64_t TLV8BufferDetach(uint64_t a1, void *a2, size_t *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  if (v7)
  {
    goto LABEL_8;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (v9)
  {
    v7 = v9;
    if (v6)
    {
      memcpy(v9, *a1, v6);
    }

LABEL_8:
    result = 0;
    *a1 = a1 + 32;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *a2 = v7;
    *a3 = v6;
    return result;
  }

  return 4294960568;
}

uint64_t URLDecodeEx(char *__s, int64_t a2, _BYTE *a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v10 = __s;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  if (a2 < 1)
  {
    result = 0;
    v11 = 0;
    v13 = a3;
    goto LABEL_27;
  }

  v11 = 0;
  v12 = &v10[a2];
  v13 = a3;
  while (1)
  {
    v14 = *v10;
    if (v14 != 43)
    {
      break;
    }

    ++v11;
    LOBYTE(v14) = 32;
LABEL_12:
    ++v10;
    if (!a3)
    {
      goto LABEL_24;
    }

LABEL_22:
    if (v13 >= &a3[a4])
    {
      result = 4294960545;
      goto LABEL_27;
    }

    *v13 = v14;
LABEL_24:
    ++v13;
    if (v10 >= v12)
    {
      result = 0;
      goto LABEL_27;
    }
  }

  if (v14 != 37)
  {
    goto LABEL_12;
  }

  if (v12 - (v10 + 1) >= 2)
  {
    v15 = v10[1];
    v16 = v15 - 48;
    if ((v15 - 48) >= 0xA)
    {
      if ((v15 - 97) > 5)
      {
        if ((v15 - 65) > 5)
        {
          goto LABEL_32;
        }

        v16 = v15 - 55;
      }

      else
      {
        v16 = v15 - 87;
      }
    }

    v17 = v10[2];
    v18 = v17 - 48;
    if ((v17 - 48) >= 0xA)
    {
      if ((v17 - 97) > 5)
      {
        if ((v17 - 65) > 5)
        {
LABEL_32:
          result = 4294960554;
          goto LABEL_27;
        }

        v18 = v17 - 55;
      }

      else
      {
        v18 = v17 - 87;
      }
    }

    v10 += 3;
    LOBYTE(v14) = v18 | (16 * v16);
    ++v11;
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  result = 4294960546;
LABEL_27:
  if (a5)
  {
    *a5 = v13 - a3;
  }

  if (a6)
  {
    *a6 = v11;
  }

  return result;
}

uint64_t URLDecodeCopy(char *__s, size_t a2, void *a3, void *a4)
{
  v6 = a2;
  if (a2 == -1)
  {
    v6 = strlen(__s);
  }

  v14 = 0;
  v8 = URLDecodeEx(__s, v6, 0, 0, &v14, 0);
  if (v8)
  {
    return v8;
  }

  v9 = malloc_type_malloc(v14 + 1, 0x100004077774924uLL);
  if (!v9)
  {
    return 4294960568;
  }

  v10 = v9;
  v11 = URLDecodeEx(__s, v6, v9, v14, &v14, 0);
  if (v11)
  {
    v12 = v11;
    free(v10);
  }

  else
  {
    *(v10 + v14) = 0;
    *a3 = v10;
    v12 = 0;
    if (a4)
    {
      *a4 = v14;
    }
  }

  return v12;
}

uint64_t URLGetNextPathSegment(uint64_t a1, unsigned __int8 **a2, void *a3)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  if (v3 >= v4 || *v3 == 47)
  {
    return 4294960569;
  }

  v6 = v3 + 1;
  while (v6 != v4)
  {
    v7 = v6;
    v8 = *v6++;
    if (v8 == 47)
    {
      v9 = v7 < v4;
      v4 = v7;
      goto LABEL_10;
    }
  }

  if (v4 == v3)
  {
    return 4294960569;
  }

  v9 = 0;
LABEL_10:
  v5 = 0;
  *a2 = v3;
  *a3 = v4 - v3;
  *(a1 + 112) = &v4[v9];
  return v5;
}

uint64_t URLGetOrCopyNextVariable(unsigned __int8 *a1, unsigned __int8 *a2, char **a3, size_t *a4, void *a5, void *a6, size_t *a7, void *a8, unsigned __int8 **a9)
{
  v31 = 0;
  v32 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v30 = 0;
  v27 = 0;
  v15 = URLGetNextVariable(a1, a2, &v32, &v31, &v29, &v28, a9);
  if (v15)
  {
    return v15;
  }

  v17 = v31;
  v16 = v32;
  v18 = URLDecodeEx(v32, v31, 0, 0, 0, &v26);
  if (v18)
  {
    goto LABEL_17;
  }

  if (v26 < 1)
  {
    v20 = 0;
    if (!a8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = URLDecodeCopy(v16, v17, &v30, &v31);
    v20 = v30;
    if (v19)
    {
      goto LABEL_15;
    }

    v32 = v30;
    v16 = v30;
    if (!a8)
    {
LABEL_6:
      v21 = 0;
      goto LABEL_7;
    }
  }

  v25 = a7;
  v23 = v28;
  v22 = v29;
  v19 = URLDecodeEx(v29, v28, 0, 0, 0, &v26);
  if (v19)
  {
LABEL_15:
    v18 = v19;
    if (v20)
    {
      free(v20);
    }

    goto LABEL_17;
  }

  if (v26 < 1)
  {
    v21 = 0;
    a7 = v25;
  }

  else
  {
    v19 = URLDecodeCopy(v22, v23, &v27, &v28);
    a7 = v25;
    if (v19)
    {
      goto LABEL_15;
    }

    v21 = v27;
    v29 = v27;
  }

LABEL_7:
  *a3 = v16;
  *a4 = v31;
  *a5 = v20;
  if (a6)
  {
    *a6 = v29;
  }

  if (a7)
  {
    *a7 = v28;
  }

  v18 = 0;
  if (a8)
  {
    *a8 = v21;
    return v18;
  }

LABEL_17:
  if (v27)
  {
    free(v27);
  }

  return v18;
}

uint64_t URLGetNextVariable(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4, void *a5, void *a6, unsigned __int8 **a7)
{
  if (a1 >= a2)
  {
    return 4294960569;
  }

  v7 = 1;
  v8 = a1;
  while (1)
  {
    v9 = *v8;
    if (v9 == 38 || v9 == 61)
    {
      break;
    }

    v7 = ++v8 < a2;
    if (v8 == a2)
    {
      v8 = a2;
      break;
    }
  }

  v10 = &v8[v7];
  if (v9 == 61)
  {
    if (v10 >= a2)
    {
      v13 = 0;
      v11 = v10;
    }

    else
    {
      v11 = &v8[v7];
      while (1)
      {
        v12 = *v11;
        if (v12 == 38)
        {
          break;
        }

        if (++v11 >= a2)
        {
          v11 = a2;
          break;
        }
      }

      v13 = v12 == 38;
    }

    v14 = &v11[v13];
  }

  else
  {
    v11 = 0;
    v14 = &v8[v7];
    v10 = 0;
  }

  v15 = 0;
  *a3 = a1;
  *a4 = v8 - a1;
  *a5 = v10;
  *a6 = v11 - v10;
  *a7 = v14;
  return v15;
}

uint64_t URLGetOrCopyVariable(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4, void *a5, char **a6, void *a7)
{
  v26 = 0;
  v27 = a1;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  while (1)
  {
    result = URLGetOrCopyNextVariable(v27, a2, &v26, &v25, &v24, &v23, &v22, 0, &v27);
    if (result)
    {
      return result;
    }

    v14 = v26;
    v15 = v25;
    v16 = a3;
    while (1)
    {
      if (!v15)
      {
        v18 = a3[v25] == 0;
        goto LABEL_10;
      }

      v17 = *v16;
      if (*v14 != v17)
      {
        break;
      }

      ++v16;
      ++v14;
      --v15;
      if (!v17)
      {
        v18 = 1;
        goto LABEL_10;
      }
    }

    v18 = 0;
LABEL_10:
    if (v24)
    {
      free(v24);
    }

    if (v18)
    {
      v21 = 0;
      if (!a6)
      {
        goto LABEL_18;
      }

      result = URLDecodeEx(v23, v22, 0, 0, 0, &v20);
      if (result)
      {
        return result;
      }

      if (v20 >= 1)
      {
        result = URLDecodeCopy(v23, v22, &v21, &v22);
        if (result)
        {
          return result;
        }

        v19 = v21;
        v23 = v21;
      }

      else
      {
LABEL_18:
        v19 = 0;
      }

      if (a4)
      {
        *a4 = v23;
      }

      if (a5)
      {
        *a5 = v22;
      }

      if (a6)
      {
        *a6 = v19;
      }

      result = 0;
      if (a7)
      {
        *a7 = v27;
      }

      return result;
    }
  }
}

uint64_t URLGetVariable(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4, void *a5, void *a6)
{
  v19 = 0;
  v20 = a1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  while (2)
  {
    result = URLGetNextVariable(a1, a2, &v19, &v18, &v17, &v16, &v20);
    if (!result)
    {
      v12 = v19;
      v13 = v18;
      v14 = a3;
      while (v13)
      {
        v15 = *v14;
        if (*v12 != v15)
        {
          goto LABEL_9;
        }

        ++v14;
        ++v12;
        --v13;
        if (!v15)
        {
          goto LABEL_10;
        }
      }

      if (a3[v18])
      {
LABEL_9:
        a1 = v20;
        continue;
      }

LABEL_10:
      if (a4)
      {
        *a4 = v17;
      }

      if (a5)
      {
        *a5 = v16;
      }

      result = 0;
      if (a6)
      {
        *a6 = v20;
      }
    }

    return result;
  }
}

uint64_t UUIDGetPerSystemHost(const char *a1, uint64_t a2, uuid_t a3)
{
  v13.tv_sec = 0;
  v13.tv_nsec = 0;
  v6 = gethostuuid(a3, &v13);
  if (v6)
  {
    if (gLogCategory_CUMisc <= 90)
    {
      v11 = v6;
      if (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x5Au))
      {
        LogPrintF(&gLogCategory_CUMisc, "void UUIDGetPerSystemHost(const void *, size_t, void *)", 0x5Au, "### gethostuuid failed for per-system host UUID: %#m\n", v7, v8, v9, v10, v11);
      }
    }

    RandomBytes(a3, 0x10uLL);
    a3[6] = a3[6] & 0xF | 0x40;
    a3[8] = a3[8] & 0x3F | 0x80;
  }

  if (a2 == -1)
  {
    strlen(a1);
  }

  ccsha512_di();
  result = cchkdf();
  a3[6] = a3[6] & 0xF | 0x40;
  a3[8] = a3[8] & 0x3F | 0x80;
  return result;
}

uint64_t UUIDGetPerUserHost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(bytes, 0, sizeof(bytes));
  v12.tv_sec = 0;
  v12.tv_nsec = 0;
  v4 = gethostuuid(bytes, &v12);
  if (v4)
  {
    if (gLogCategory_CUMisc <= 90)
    {
      v9 = v4;
      if (gLogCategory_CUMisc != -1 || _LogCategory_Initialize(&gLogCategory_CUMisc, 0x5Au))
      {
        LogPrintF(&gLogCategory_CUMisc, "void UUIDGetPerUserHost(const void *, size_t, void *)", 0x5Au, "### gethostuuid failed for per-user host UUID: %#m\n", v5, v6, v7, v8, v9);
      }
    }

    RandomBytes(bytes, 0x10uLL);
    bytes[6] = bytes[6] & 0xF | 0x40;
    bytes[8] = bytes[8] & 0x3F | 0x80;
  }

  v10 = getuid();
  v14 = 0;
  v15 = HIBYTE(v10);
  v16 = BYTE2(v10);
  v17 = BYTE1(v10);
  v18 = v10;
  ccsha512_di();
  result = cchkdf();
  *(a3 + 6) = *(a3 + 6) & 0xF | 0x40;
  *(a3 + 8) = *(a3 + 8) & 0x3F | 0x80;
  return result;
}

uint64_t _WiFiManagerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gWiFiManagerTypeID = result;
  return result;
}

pthread_mutex_t *_WiFiManagerFinalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 104);
  if ((v3 & 0x80000000) == 0)
  {
    if (close(v3) && *__error())
    {
      __error();
    }

    *(a1 + 104) = -1;
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 176) = 0;
  }

  v5 = *(a1 + 184);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 184) = 0;
  }

  if (*(a1 + 152))
  {
    Apple80211Close();
    *(a1 + 152) = 0;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 168) = 0;
  }

  result = *(a1 + 80);
  if (result)
  {
    result = pthread_mutex_destroy(result);
    *(a1 + 80) = 0;
  }

  return result;
}

uint64_t WiFiManagerCreate(void *a1)
{
  if (gWiFiManagerInitOnce != -1)
  {
    dispatch_once_f(&gWiFiManagerInitOnce, 0, _WiFiManagerGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v3 = Instance;
  *(Instance + 16) = 0u;
  v4 = Instance + 16;
  *(Instance + 160) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 104) = -1;
  v5 = pthread_mutex_init((Instance + 16), 0);
  if (v5)
  {
    CFRelease(v3);
  }

  else
  {
    v3[10] = v4;
    *a1 = v3;
  }

  return v5;
}

uint64_t WiFiManagerDoApple80211(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v25 = 0;
  if (gLogCategory_WiFiManagerCore <= 30 && (gLogCategory_WiFiManagerCore != -1 || _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x1Eu)))
  {
    v13 = "get";
    if (!a2)
    {
      v13 = "set";
    }

    LogPrintF(&gLogCategory_WiFiManagerCore, "OSStatus WiFiManagerDoApple80211(CUWiFiManagerRef, int, int, void *, size_t)", 0x1Eu, "WiFiManagerDoApple80211: %s, ioc 0x%X, len %zu", a5, a6, a7, a8, v13);
  }

  if (a1)
  {
    v14 = 0;
  }

  else
  {
    v15 = WiFiManagerCreate(&v25);
    v14 = v25;
    if (v15)
    {
      goto LABEL_21;
    }

    a1 = v25;
  }

  v15 = _WiFiManagerEnsureInitialized(a1);
  if (v15)
  {
LABEL_21:
    v22 = v15;
    goto LABEL_39;
  }

  if (!*(a1 + 152) && (v20 = Apple80211Open(), v20))
  {
    v22 = v20;
    if (gLogCategory_WiFiManagerCore <= 60 && (gLogCategory_WiFiManagerCore != -1 || _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_WiFiManagerCore, "OSStatus WiFiManagerDoApple80211(CUWiFiManagerRef, int, int, void *, size_t)", 0x3Cu, "### Open failed: %#m", v16, v17, v18, v19, v22);
    }
  }

  else
  {
    if (*(a1 + 160))
    {
      goto LABEL_16;
    }

    if (!*(a1 + 168))
    {
      if (gLogCategory_WiFiManagerCore <= 60 && (gLogCategory_WiFiManagerCore != -1 || _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x3Cu)))
      {
        v22 = 4294960596;
        LogPrintF(&gLogCategory_WiFiManagerCore, "OSStatus WiFiManagerDoApple80211(CUWiFiManagerRef, int, int, void *, size_t)", 0x3Cu, "### No ifname: %#m", v16, v17, v18, v19, 4294960596);
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v21 = Apple80211BindToInterface();
    if (!v21)
    {
      *(a1 + 160) = 1;
LABEL_16:
      *(a1 + 128) = a3;
      *(a1 + 136) = v8;
      *(a1 + 144) = a4;
      if (a2)
      {
        if (Apple80211RawGet())
        {
          goto LABEL_18;
        }
      }

      else if (Apple80211RawSet())
      {
LABEL_18:
        if (*__error())
        {
          v22 = *__error();
          goto LABEL_39;
        }

LABEL_38:
        v22 = 4294960596;
        goto LABEL_39;
      }

      v22 = 0;
      goto LABEL_39;
    }

    v22 = v21;
    if (gLogCategory_WiFiManagerCore <= 60 && (gLogCategory_WiFiManagerCore != -1 || _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_WiFiManagerCore, "OSStatus WiFiManagerDoApple80211(CUWiFiManagerRef, int, int, void *, size_t)", 0x3Cu, "### Bind failed: '%@', %#m", v16, v17, v18, v19, *(a1 + 168));
    }
  }

LABEL_39:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v22 && gLogCategory_WiFiManagerCore <= 90 && (gLogCategory_WiFiManagerCore != -1 || _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x5Au)))
  {
    v23 = "get";
    if (!a2)
    {
      v23 = "set";
    }

    LogPrintF(&gLogCategory_WiFiManagerCore, "OSStatus WiFiManagerDoApple80211(CUWiFiManagerRef, int, int, void *, size_t)", 0x5Au, "### WiFiManagerDoApple80211 failed: %s, ioc 0x%X, len %zu, error %#m", v16, v17, v18, v19, v23);
  }

  return v22;
}

uint64_t _WiFiManagerEnsureInitialized(uint64_t a1)
{
  pthread_mutex_lock(*(a1 + 80));
  if (*(a1 + 184))
  {
    v2 = 0;
    goto LABEL_32;
  }

  v3 = WiFiManagerClientCreate();
  if (!v3)
  {
    v2 = 4294960596;
    goto LABEL_32;
  }

  v4 = v3;
  v5 = WiFiManagerClientCopyInterfaces();
  v10 = v5;
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; v12 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        if (*(a1 + 88))
        {
          InterfaceName = WiFiDeviceClientGetInterfaceName();
          if (InterfaceName && CFEqual(InterfaceName, *(a1 + 88)))
          {
LABEL_14:
            CFRetain(ValueAtIndex);
            *(a1 + 184) = ValueAtIndex;
            *(a1 + 96) = WiFiDeviceClientIsInterfaceAWDL();
            break;
          }
        }

        else if (!WiFiDeviceClientGetInterfaceRoleIndex())
        {
          goto LABEL_14;
        }
      }
    }
  }

  if (!*(a1 + 184))
  {
    if (gLogCategory_WiFiManagerCore <= 30 && (gLogCategory_WiFiManagerCore != -1 || _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x1Eu)))
    {
      v23 = *(a1 + 88);
      if (!v23)
      {
        v23 = @"*";
      }

      LogPrintF(&gLogCategory_WiFiManagerCore, "OSStatus _WiFiManagerEnsureInitialized(CUWiFiManagerRef)", 0x1Eu, "### Init interface not found (%@)\n", v6, v7, v8, v9, v23);
    }

    v2 = 4294960569;
    goto LABEL_28;
  }

  *(a1 + 176) = v4;
  v16 = socket(2, 2, 0);
  *(a1 + 104) = v16;
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  if (*__error())
  {
    v2 = *__error();
    if (v2)
    {
LABEL_27:
      v4 = 0;
      goto LABEL_28;
    }

LABEL_17:
    v17 = WiFiDeviceClientGetInterfaceName();
    v4 = v17;
    if (!v17)
    {
      v2 = 4294960552;
      goto LABEL_28;
    }

    CFStringGetCString(v17, (a1 + 112), 16, 0x8000100u);
    *(a1 + 168) = CFRetain(v4);
    if (gLogCategory_WiFiManagerCore <= 30 && (gLogCategory_WiFiManagerCore != -1 || _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_WiFiManagerCore, "OSStatus _WiFiManagerEnsureInitialized(CUWiFiManagerRef)", 0x1Eu, "Initialized for %@ (%.6a)\n", v18, v19, v20, v21, v4);
    }

    v2 = 0;
    goto LABEL_27;
  }

  v4 = 0;
  v2 = 4294960596;
LABEL_28:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_32:
  pthread_mutex_unlock(*(a1 + 80));
  return v2;
}

unint64_t WiFiManagerGetInt64(uint64_t a1, const void *a2, uint64_t a3, int *a4)
{
  v6 = a1;
  v7 = 0;
  v41 = 0;
  if (!a1)
  {
    v42 = WiFiManagerCreate(&v41);
    v7 = v41;
    if (v42)
    {
      goto LABEL_14;
    }

    v6 = v41;
  }

  v42 = _WiFiManagerEnsureInitialized(v6);
  if (!v42)
  {
    if (CFEqual(a2, @"channel"))
    {
      if (*(v6 + 96))
      {
        v8 = 132;
      }

      else
      {
        v8 = 4;
      }

      Int64 = CFNumberCreateInt64(v8);
      if (Int64)
      {
        v10 = Int64;
        v11 = WiFiDeviceClientCopyProperty();
        CFRelease(v10);
        if (v11)
        {
          Value = CFDictionaryGetValue(v11, @"CHANNEL");
          if (Value)
          {
LABEL_10:
            CFRetain(Value);
            v42 = 0;
            goto LABEL_11;
          }

          v29 = -6727;
LABEL_63:
          v42 = v29;
LABEL_11:
          CFRelease(v11);
          if (!v7)
          {
            goto LABEL_40;
          }

LABEL_39:
          CFRelease(v7);
          goto LABEL_40;
        }

        goto LABEL_56;
      }

      goto LABEL_60;
    }

    if (CFEqual(a2, @"features"))
    {
      LOBYTE(valuePtr[0]) = 12;
      v13 = CFNumberCreate(0, kCFNumberSInt8Type, valuePtr);
      if (!v13)
      {
LABEL_60:
        Value = 0;
        goto LABEL_61;
      }

      v14 = v13;
      Value = WiFiDeviceClientCopyProperty();
      CFRelease(v14);
      if (!Value)
      {
LABEL_57:
        v25 = -6735;
        goto LABEL_58;
      }

      Count = CFArrayGetCount(Value);
      if (Count < 1)
      {
        v17 = 0;
      }

      else
      {
        v16 = Count;
        v17 = 0;
        for (i = 0; i != v16; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
          if (CFGetInt64(ValueAtIndex, &v42) == 51 && v42 == 0)
          {
            v17 = 1;
          }
        }
      }

      CFRelease(Value);
      Value = CFNumberCreateInt64(v17);
      if (!Value)
      {
LABEL_61:
        v25 = -6728;
LABEL_58:
        v42 = v25;
        if (v7)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      }

LABEL_38:
      v42 = 0;
      if (!v7)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (!CFEqual(a2, @"rssiAggregate"))
    {
      if (!CFEqual(a2, @"powered"))
      {
        if (gLogCategory_WiFiManagerCore <= 60 && (gLogCategory_WiFiManagerCore != -1 || _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x3Cu)))
        {
          LogPrintF(&gLogCategory_WiFiManagerCore, "CFTypeRef WiFiManagerCopyProperty(CUWiFiManagerRef, CFStringRef, CFTypeRef, OSStatus *)", 0x3Cu, "### Get of unknown property '%@'\n", v30, v31, v32, v33, a2);
        }

LABEL_56:
        Value = 0;
        goto LABEL_57;
      }

      Power = WiFiDeviceClientGetPower();
      v35 = MEMORY[0x1E695E4D0];
      if (!Power)
      {
        v35 = MEMORY[0x1E695E4C0];
      }

      Value = *v35;
      CFRetain(*v35);
      goto LABEL_38;
    }

    if (!*(v6 + 96) || !*(v6 + 103))
    {
      v28 = WiFiDeviceClientCopyProperty();
      if (v28)
      {
        v11 = v28;
        Value = CFDictionaryGetValue(v28, @"RSSI_CTL_AGR");
        if (Value)
        {
          goto LABEL_10;
        }

        v29 = -6735;
        goto LABEL_63;
      }

      goto LABEL_56;
    }

    v37 = 0;
    v38 = 0;
    v40 = 0;
    v39 = 0;
    LOWORD(v37) = *(v6 + 101);
    v24 = *(v6 + 97);
    valuePtr[0] = 1;
    valuePtr[1] = v24;
    v42 = WiFiManagerDoApple80211(v6, 1, 153, valuePtr, 36, v21, v22, v23);
    if (!v42)
    {
      Value = CFNumberCreateInt64(v38);
      if (!Value)
      {
        v25 = -6727;
        goto LABEL_58;
      }

      goto LABEL_38;
    }
  }

LABEL_14:
  Value = 0;
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (a4)
  {
    *a4 = v42;
  }

  if (!Value)
  {
    return 0;
  }

  v26 = CFGetInt64(Value, a4);
  CFRelease(Value);
  return v26;
}

uint64_t WiFiManagerSetProperty(uint64_t a1, CFTypeRef cf1, const __CFString *a3, const __CFString *a4)
{
  if (CFEqual(cf1, @"interfaceName"))
  {
    if (a4 && (v8 = CFGetTypeID(a4), v8 == CFStringGetTypeID()))
    {
      v12 = 0;
      if (!a3)
      {
        v10 = 0;
        *(a1 + 101) = 0;
        *(a1 + 97) = 0;
LABEL_11:
        *(a1 + 103) = v10;
        v11 = *(a1 + 88);
        CFRetain(a4);
        *(a1 + 88) = a4;
        if (v11)
        {
          CFRelease(v11);
        }

        return 0;
      }

      CFGetHardwareAddress(a3, (a1 + 97), 6uLL, &v12);
      result = v12;
      if (!v12)
      {
        v10 = 1;
        goto LABEL_11;
      }
    }

    else
    {
      return 4294960540;
    }
  }

  else if (CFEqual(cf1, @"powered"))
  {
    CFGetInt64(a4, 0);
    result = WiFiDeviceClientSetPower();
    if (!result)
    {
      return 0;
    }
  }

  else
  {
    return 4294960561;
  }

  return result;
}

uint64_t AWDLTrafficRegister(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  cf = 0;
  memset(v9, 0, sizeof(v9));
  v2 = WiFiManagerCreate(&cf);
  v3 = cf;
  if (!v2)
  {
    WiFiManagerSetProperty(cf, @"interfaceName", 0, @"awdl0");
    memset(&v9[4], 0, 180);
    *v9 = 1;
    if (a1)
    {
      *&v9[4] = *a1;
      *&v9[8] = *(a1 + 4);
    }

    *&v9[12] = 26;
    qmemcpy(&v9[16], "airplay-connectivity-check", 26);
    *&v9[168] = 0x200000001;
    v2 = WiFiManagerDoApple80211(v3, 0, 164, v9, 184, v4, v5, v6);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v2;
}

uint64_t WiFiJoinNetworkEx(const __CFDictionary *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
  v8 = _Block_copy(v5);

  v9 = v8;
  CFDictionarySetValue(MutableCopy, @"joinExCompletion", v9);
  CFRelease(v9);
  CFDictionarySetValue(MutableCopy, @"queue", v6);
  v10 = WiFiJoinNetwork(MutableCopy, v6, 0, 0);

  CFRelease(MutableCopy);
  return v10;
}

uint64_t WiFiJoinNetwork(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  *v26 = a4;
  *bytes = a3;
  v25 = 0;
  v8 = logger_14418();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_191EAF000, v8, OS_LOG_TYPE_DEFAULT, "WiFiJoinNetwork start", v24, 2u);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v25 = -6728;
    goto LABEL_34;
  }

  v10 = Mutable;
  CFDictionarySetValue(Mutable, @"options", a1);
  if (!CFDictionaryGetValue(a1, @"platformNetwork"))
  {
    v23 = -6705;
LABEL_39:
    v25 = v23;
LABEL_40:
    v20 = v10;
    goto LABEL_33;
  }

  if (CFDictionaryGetInt64(a1, @"directed", 0))
  {
    WiFiNetworkSetDirectedState();
  }

  CFDictionaryGetInt64(a1, @"networkEventType", &v25);
  if (!v25)
  {
    WiFiManagerClientSetNetworkAddReason();
  }

  if (getkWiFiNetworkShareableEAPConfig() && CFDictionaryGetValue(a1, @"eapConfig"))
  {
    getkWiFiNetworkShareableEAPConfig();
    WiFiNetworkSetProperty();
  }

  if (CFDictionaryGetValue(a1, @"eapTrustExceptions"))
  {
    getkWiFiNetworkShareableEAPTrustExceptions();
    WiFiNetworkSetProperty();
  }

  TypeID = CFStringGetTypeID();
  if (CFDictionaryGetTypedValue(a1, @"password", TypeID, 0))
  {
    v12 = WiFiNetworkSetPassword();
    v13 = v12 ? 0 : -6700;
    v25 = v13;
    if (!v12)
    {
      goto LABEL_40;
    }
  }

  Value = CFDictionaryGetValue(a1, @"persistent");
  if (Value)
  {
    CFDictionarySetValue(v10, @"persistent", Value);
  }

  v15 = WiFiManagerClientCreate();
  if (!v15)
  {
    v23 = -6700;
    goto LABEL_39;
  }

  v16 = v15;
  CFRunLoopGetMain();
  WiFiManagerClientScheduleWithRunLoop();
  CFDictionarySetValue(v10, @"platformManager", v16);
  v17 = WiFiManagerClientCopyDevices();
  v18 = v17;
  if (!v17 || CFArrayGetCount(v17) <= 0)
  {
    v25 = -6727;
    goto LABEL_29;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v18, 0);
  CFDictionarySetValue(v10, @"platformDevice", ValueAtIndex);
  if (v7)
  {
    CFDictionarySetValue(v10, @"queue", v7);
  }

  if (a3)
  {
    CFDictionarySetData(v10, @"callback", bytes, 8);
    CFDictionarySetData(v10, @"context", v26, 8);
  }

  v25 = WiFiDeviceClientAssociateAsync();
  if (v25)
  {
LABEL_29:
    CFRelease(v10);
    CFRunLoopGetMain();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(v16);
    if (!v18)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  CFRelease(v16);
LABEL_32:
  v20 = v18;
LABEL_33:
  CFRelease(v20);
LABEL_34:
  v21 = v25;

  return v21;
}

id logger_14418()
{
  if (sCUOSLogCreateOnce_logger_14496 != -1)
  {
    dispatch_once(&sCUOSLogCreateOnce_logger_14496, &__block_literal_global_14497);
  }

  v1 = sCUOSLogHandle_logger_14498;

  return v1;
}

void _WiFiJoinNetworkCB(int a1, uint64_t a2, int a3, uint64_t a4, CFDictionaryRef theDict)
{
  v57 = *MEMORY[0x1E69E9840];
  CFDictionaryGetValue(theDict, @"platformManager");
  TypeID = CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue(theDict, @"options", TypeID, 0);
  if (a2 && !a4 && CFDictionaryGetInt64(theDict, @"persistent", 0))
  {
    if (CFDictionaryGetInt64(TypedValue, @"directed", 0))
    {
      WiFiNetworkSetDirectedState();
    }

    if (CFDictionaryGetInt64(TypedValue, @"homeNetwork", 0))
    {
      WiFiNetworkSetIntProperty();
      WiFiNetworkSetProperty();
    }

    if (CFDictionaryGetInt64(TypedValue, @"forceFix", 0))
    {
      WiFiNetworkSetProperty();
    }

    WiFiManagerClientAddNetwork();
  }

  v51 = 0;
  v52 = 0;
  v10 = CFDictionaryGetValue(theDict, @"queue");
  v11 = v10;
  if (TypedValue)
  {
    TypedValue = CFDictionaryGetValue(TypedValue, @"joinExCompletion");
    v12 = v11 != 0;
    if (TypedValue && v11)
    {
      if (a2)
      {
        Property = WiFiNetworkGetProperty();
        if (Property && (v14 = Property, v15 = CFGetTypeID(Property), v15 == CFDictionaryGetTypeID()))
        {
          Mutable = 0;
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          _WiFiDictionaryAddNetworkAdditionalInfo(Mutable);
          v14 = Mutable;
        }
      }

      else
      {
        Mutable = 0;
        v14 = 0;
      }

      v27 = logger_14418();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v35 = NSPrintF("%##@", v28, v29, v30, v31, v32, v33, v34, v14);
        v43 = NSPrintF("%#m", v36, v37, v38, v39, v40, v41, v42, a4);
        *buf = 138412546;
        v54 = v35;
        v55 = 2112;
        v56 = v43;
        _os_log_impl(&dword_191EAF000, v27, OS_LOG_TYPE_DEFAULT, "WiFiJoinNetwork completed: info=%@, error=%@", buf, 0x16u);
      }

      if (v14)
      {
        CFRetain(v14);
      }

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = ___WiFiJoinNetworkCB_block_invoke;
      v46[3] = &unk_1E73A5018;
      TypedValue = TypedValue;
      v47 = TypedValue;
      v48 = v14;
      v50 = a4;
      v49 = Mutable;
      dispatch_async(v11, v46);

      goto LABEL_33;
    }
  }

  else
  {
    v12 = v10 != 0;
  }

  v17 = logger_14418();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v25 = NSPrintF("%#m", v18, v19, v20, v21, v22, v23, v24, a4);
    *buf = 138412290;
    v54 = v25;
    _os_log_impl(&dword_191EAF000, v17, OS_LOG_TYPE_DEFAULT, "WiFiJoinNetwork completed: error=%@", buf, 0xCu);
  }

  v52 = 0;
  CFDictionaryGetData(theDict, @"callback", &v52, 8uLL, 0, 0);
  v51 = 0;
  CFDictionaryGetData(theDict, @"context", &v51, 8uLL, 0, 0);
  if (v52)
  {
    v26 = v12;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___WiFiJoinNetworkCB_block_invoke_185;
    block[3] = &__block_descriptor_52_e5_v8__0l;
    v45 = a4;
    block[4] = v52;
    block[5] = v51;
    dispatch_async(v11, block);
  }

LABEL_33:
  CFRunLoopGetMain();
  WiFiManagerClientUnscheduleFromRunLoop();
  CFRelease(theDict);
}

void _WiFiDictionaryAddNetworkAdditionalInfo(__CFDictionary *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  Property = WiFiNetworkGetProperty();
  if (Property)
  {
    CFDictionarySetValue(a1, @"cca", Property);
  }

  v3 = WiFiNetworkGetProperty();
  if (v3)
  {
    v8 = 0;
    v7 = 0;
    CFGetHardwareAddress(v3, &v7, 6uLL, 0);
    v10 = 0;
    *__str = 0;
    snprintf(__str, 0xAuLL, "%02X:%02X:%02X", v7, BYTE1(v7), BYTE2(v7));
    CFDictionarySetCString(a1, @"oui", __str, -1);
  }

  v4 = WiFiNetworkGetProperty();
  if (v4)
  {
    CFDictionarySetValue(a1, @"channel", v4);
  }

  if (WiFiNetworkIsEAP() && WiFiNetworkIsSAE())
  {
    v5 = "SAE-EAP";
  }

  else if (WiFiNetworkIsSAE())
  {
    v5 = "SAE";
  }

  else if (WiFiNetworkIsEAP() && WiFiNetworkIsWPA())
  {
    v5 = "WPA-EAP";
  }

  else if (WiFiNetworkIsWPA())
  {
    v5 = "WPA";
  }

  else if (WiFiNetworkIsEAP())
  {
    v5 = "EAP";
  }

  else if (WiFiNetworkIsWEP())
  {
    v5 = "WEP";
  }

  else if (WiFiNetworkIsOpen())
  {
    v5 = "Open";
  }

  else
  {
    v5 = "Unknown";
  }

  CFDictionarySetCString(a1, @"securityStr", v5, -1);
  v6 = WiFiNetworkGetProperty();
  if (v6)
  {
    CFDictionarySetValue(a1, @"rssi", v6);
  }
}

uint64_t initValkWiFiNetworkShareableEAPTrustExceptions()
{
  if (MobileWiFiLibrary_sOnce != -1)
  {
    dispatch_once(&MobileWiFiLibrary_sOnce, &__block_literal_global_173);
  }

  v0 = dlsym(MobileWiFiLibrary_sLib, "kWiFiNetworkShareableEAPTrustExceptions");
  if (v0)
  {
    result = *v0;
    constantValkWiFiNetworkShareableEAPTrustExceptions = result;
  }

  else
  {
    result = constantValkWiFiNetworkShareableEAPTrustExceptions;
  }

  getkWiFiNetworkShareableEAPTrustExceptions = kWiFiNetworkShareableEAPTrustExceptionsFunction;
  return result;
}

void *__MobileWiFiLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileWiFi.framework/MobileWiFi", 2);
  MobileWiFiLibrary_sLib = result;
  return result;
}

uint64_t initValkWiFiNetworkShareableEAPConfig()
{
  if (MobileWiFiLibrary_sOnce != -1)
  {
    dispatch_once(&MobileWiFiLibrary_sOnce, &__block_literal_global_173);
  }

  v0 = dlsym(MobileWiFiLibrary_sLib, "kWiFiNetworkShareableEAPConfig");
  if (v0)
  {
    result = *v0;
    constantValkWiFiNetworkShareableEAPConfig = result;
  }

  else
  {
    result = constantValkWiFiNetworkShareableEAPConfig;
  }

  getkWiFiNetworkShareableEAPConfig = kWiFiNetworkShareableEAPConfigFunction;
  return result;
}

uint64_t __logger_block_invoke_14501()
{
  v0 = os_log_create("com.apple.CoreUtils", "WiFiUtils");
  v1 = sCUOSLogHandle_logger_14498;
  sCUOSLogHandle_logger_14498 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t WiFiJoinNetwork_b(const void *a1, void *a2, const void *a3)
{
  v5 = a2;
  v6 = _Block_copy(a3);

  v7 = WiFiJoinNetwork(a1, v5, _WiFiJoinNetwork_bCallBack, v6);
  if (v7)
  {
  }

  return v7;
}

void _WiFiJoinNetwork_bCallBack(uint64_t a1, void (**a2)(void, void))
{
  a2[2](a2, a1);
}

__CFDictionary *WiFiCopyCurrentNetworkInfoEx(char a1, int *a2)
{
  v4 = WiFiManagerClientCreate();
  if (!v4)
  {
    Mutable = 0;
    v11 = -6700;
    if (!a2)
    {
      return Mutable;
    }

    goto LABEL_10;
  }

  v5 = v4;
  v6 = WiFiManagerClientCopyDevices();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6) < 1)
    {
      Mutable = 0;
      v11 = -6727;
    }

    else
    {
      CFArrayGetValueAtIndex(v7, 0);
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v9 = WiFiDeviceClientCopyCurrentNetwork();
        if (v9)
        {
          v10 = v9;
          _WiFiDictionaryAddNetworkInfo(Mutable, a1, v9);
          CFRelease(v10);
        }

        v11 = 0;
      }

      else
      {
        v11 = -6728;
      }
    }

    CFRelease(v5);
  }

  else
  {
    Mutable = 0;
    v11 = -6727;
    v7 = v5;
  }

  CFRelease(v7);
  if (a2)
  {
LABEL_10:
    *a2 = v11;
  }

  return Mutable;
}

void _WiFiDictionaryAddNetworkInfo(__CFDictionary *a1, char a2, const void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  Channel = WiFiNetworkGetChannel();
  if (Channel)
  {
    CFDictionarySetValue(a1, @"channel", Channel);
  }

  DirectedState = WiFiNetworkGetDirectedState();
  v8 = MEMORY[0x1E695E4D0];
  if (DirectedState)
  {
    CFDictionarySetValue(a1, @"directed", *MEMORY[0x1E695E4D0]);
  }

  IsCaptive = WiFiNetworkIsCaptive();
  if (IsCaptive)
  {
    CFDictionarySetValue(a1, @"captive", *v8);
  }

  v10 = WiFiNetworkWasCaptive();
  if (v10)
  {
    CFDictionarySetValue(a1, @"wasCaptive", *v8);
  }

  Property = WiFiNetworkGetProperty();
  if (Property && CFGetInt64(Property, 0) == 1)
  {
    CFDictionarySetValue(a1, @"homeNetwork", *v8);
  }

  IsEAP = WiFiNetworkIsEAP();
  if (IsEAP)
  {
    CFDictionarySetValue(a1, @"enterprise", *v8);
  }

  if (WiFiNetworkIsHidden())
  {
    CFDictionarySetValue(a1, @"hidden", *v8);
  }

  if (WiFiNetworkIsProfileBased())
  {
    CFDictionarySetValue(a1, @"profileBased", *v8);
  }

  IsOpen = WiFiNetworkIsOpen();
  if (IsOpen)
  {
    CFDictionarySetValue(a1, @"open", *v8);
  }

  if (IsCaptive || v10 && IsOpen)
  {
    CFDictionarySetValue(a1, @"likelyCaptive", *v8);
  }

  SSID = WiFiNetworkGetSSID();
  if (SSID)
  {
    CFDictionarySetValue(a1, @"ssid", SSID);
  }

  SSIDData = WiFiNetworkGetSSIDData();
  if (SSIDData)
  {
    CFDictionarySetValue(a1, @"ssidData", SSIDData);
  }

  ShareMode = WiFiNetworkGetShareMode();
  CFDictionarySetInt64(a1, @"shareMode", ShareMode);
  if (WiFiNetworkGetProperty() == *v8)
  {
    v17 = *v8;
  }

  else
  {
    v17 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"standalone6G", v17);
  if (MobileWiFiLibrary_sOnce != -1)
  {
    dispatch_once(&MobileWiFiLibrary_sOnce, &__block_literal_global_173);
  }

  if (MobileWiFiLibrary_sLib && dlsym(MobileWiFiLibrary_sLib, "WiFiNetworkGetShareableStatus"))
  {
    v18 = (softLinkWiFiNetworkGetShareableStatus[0])(a3);
    CFDictionarySetInt64(a1, @"shareableStatus", v18);
  }

  if ((a2 & 3) != 0)
  {
    v19 = WiFiNetworkCopyPassword();
    if (v19)
    {
      v20 = v19;
      CFDictionarySetValue(a1, @"password", v19);
      if ((a2 & 2) != 0 && !WPAHashPSK(SSIDData, v20, bytes, v25))
      {
        CFDictionarySetData(a1, @"psk", bytes, 32);
        CFDictionarySetCString(a1, @"pskStr", v25, -1);
      }

      CFRelease(v20);
    }
  }

  if ((a2 & 4) != 0)
  {
    v21 = WiFiNetworkCopyRecord();
    if (v21)
    {
      v22 = v21;
      CFDictionarySetValue(a1, @"rawRecord", v21);
      CFRelease(v22);
    }
  }

  CFDictionarySetValue(a1, @"platformNetwork", a3);
  if (IsEAP)
  {
    if (getkWiFiNetworkShareableEAPConfig())
    {
      getkWiFiNetworkShareableEAPConfig();
      v23 = WiFiNetworkGetProperty();
      if (v23)
      {
        CFDictionarySetValue(a1, @"eapConfig", v23);
      }
    }

    if (getkWiFiNetworkShareableEAPTrustExceptions())
    {
      getkWiFiNetworkShareableEAPTrustExceptions();
      v24 = WiFiNetworkGetProperty();
      if (v24)
      {
        CFDictionarySetValue(a1, @"eapTrustExceptions", v24);
      }
    }
  }

  _WiFiDictionaryAddNetworkAdditionalInfo(a1);
}

uint64_t WPAHashPSK(const __CFString *a1, CFStringRef theString, _OWORD *a3, _BYTE *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  buffer[0] = 0;
  if (!CFStringGetCString(theString, buffer, 128, 0x8000100u))
  {
    return 4294960579;
  }

  v7 = strlen(buffer);
  v18 = v7;
  if (v7 - 8 > 0x37)
  {
    result = HexToData(buffer, v7, 30, v20, 0x20uLL, 0, &v18, 0);
    if (result)
    {
      return result;
    }

    if (v18 != 32)
    {
      return 4294960553;
    }

    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = CFGetTypeID(a1);
  if (v8 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    v11 = v7;
    v12 = BytePtr;
  }

  else
  {
    if (v8 != CFStringGetTypeID())
    {
      return 4294960540;
    }

    v23.length = CFStringGetLength(a1);
    usedBufLen = 0;
    v23.location = 0;
    CFStringGetBytes(a1, v23, 0x8000100u, 0, 0, v19, 64, &usedBufLen);
    Length = usedBufLen;
    v12 = v19;
    v11 = v7;
  }

  PBKDF2_HMAC_SHA1(buffer, v11, v12, Length, v20);
  if (a3)
  {
LABEL_8:
    v14 = v20[1];
    *a3 = v20[0];
    a3[1] = v14;
  }

LABEL_9:
  if (!a4)
  {
    return 0;
  }

  for (i = 0; i != 32; ++i)
  {
    v16 = *(v20 + i);
    *a4 = a0123456789abcd_0[v16 >> 4];
    a4[1] = a0123456789abcd_0[v16 & 0xF];
    a4 += 2;
  }

  result = 0;
  *a4 = 0;
  return result;
}

uint64_t initWiFiNetworkGetShareableStatus(uint64_t a1)
{
  if (MobileWiFiLibrary_sOnce != -1)
  {
    dispatch_once(&MobileWiFiLibrary_sOnce, &__block_literal_global_173);
  }

  v2 = dlsym(MobileWiFiLibrary_sLib, "WiFiNetworkGetShareableStatus");
  softLinkWiFiNetworkGetShareableStatus[0] = v2;

  return (v2)(a1);
}

__CFDictionary *WiFiCopyNetworkInfo(const __CFDictionary *a1, char a2, int *a3)
{
  v6 = WiFiManagerClientCreate();
  if (v6)
  {
    v11 = v6;
    v12 = WiFiManagerClientCopyNetworks();
    if (v12)
    {
      v13 = v12;
      Count = CFArrayGetCount(v12);
      if (Count < 1)
      {
        goto LABEL_9;
      }

      v15 = Count;
      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
        TypeID = CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue(a1, @"ssid", TypeID, 0);
        if (!TypedValue)
        {
          break;
        }

        v20 = TypedValue;
        SSID = WiFiNetworkGetSSID();
        if (SSID)
        {
          if (CFEqual(SSID, v20))
          {
            break;
          }
        }

        if (v15 == ++v16)
        {
          goto LABEL_9;
        }
      }

      if (ValueAtIndex)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v22 = Mutable;
        if (Mutable)
        {
          _WiFiDictionaryAddNetworkInfo(Mutable, a2, ValueAtIndex);
          v23 = 0;
        }

        else
        {
          v23 = -6728;
        }
      }

      else
      {
LABEL_9:
        v22 = 0;
        v23 = -6727;
      }

      CFRelease(v13);
    }

    else
    {
      v22 = 0;
      v23 = -6727;
    }

    CFRelease(v11);
    if (a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (gLogCategory_WiFiManagerCore <= 60 && (gLogCategory_WiFiManagerCore != -1 || _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_WiFiManagerCore, "CFDictionaryRef WiFiCopyNetworkInfo(CFDictionaryRef, WiFiNetworkInfoFlags, OSStatus *)", 0x3Cu, "### WiFiManagerClientCreate failed\n", v7, v8, v9, v10, v26);
    }

    v22 = 0;
    v23 = -6700;
    if (a3)
    {
LABEL_16:
      *a3 = v23;
    }
  }

  return v22;
}

uint64_t WiFiRestoreNetwork(const __CFDictionary *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Value = CFDictionaryGetValue(a1, @"platformNetwork");
  if (Value)
  {
    v8 = WiFiManagerClientCreate();
    if (!v8)
    {
      v16 = 0;
      v13 = 0;
      Value = 4294960596;
      goto LABEL_13;
    }

    v9 = v8;
    CFRunLoopGetMain();
    WiFiManagerClientScheduleWithRunLoop();
    v10 = WiFiManagerClientCopyDevices();
    v11 = v10;
    if (v10 && CFArrayGetCount(v10) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
      v13 = [v6 copy];
      if (v6)
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v15 = _Block_copy(v13);
        [v14 setObject:v15 forKeyedSubscript:@"block"];

        [v14 setObject:ValueAtIndex forKeyedSubscript:@"platformDevice"];
        [v14 setObject:v9 forKeyedSubscript:@"platformManager"];
        [v14 setObject:v5 forKeyedSubscript:@"queue"];
        v16 = v14;
        Value = WiFiDeviceClientAssociateAsync();
        if (!Value)
        {
          CFRelease(v9);

          v16 = 0;
LABEL_12:
          CFRelease(v11);
          goto LABEL_13;
        }

        CFRelease(v16);
      }

      else
      {
        v16 = 0;
        Value = 4294960568;
      }
    }

    else
    {
      v16 = 0;
      v13 = 0;
      Value = 4294960569;
    }

    CFRunLoopGetMain();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(v9);
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __WiFiRestoreNetwork_block_invoke;
  block[3] = &unk_1E73A4FD0;
  v19 = v6;
  dispatch_async(v5, block);

  v16 = 0;
  v13 = 0;
LABEL_13:

  return Value;
}

void _WiFiRestoreNetworkCB(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v7 = [a5 objectForKeyedSubscript:@"platformManager"];
  v8 = [a5 objectForKeyedSubscript:@"block"];
  v9 = [a5 objectForKeyedSubscript:@"queue"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___WiFiRestoreNetworkCB_block_invoke;
  v11[3] = &unk_1E73A5060;
  v12 = v8;
  v13 = a4;
  v10 = v8;
  dispatch_async(v9, v11);
  CFRunLoopGetMain();
  WiFiManagerClientUnscheduleFromRunLoop();
  CFRelease(v7);
}

uint64_t WiFiScan(const __CFDictionary *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  *v72 = a4;
  *bytes = a3;
  v71 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
  if (Mutable)
  {
    v14 = Mutable;
    v15 = mach_absolute_time();
    CFDictionarySetInt64(v14, @"startTime", v15);
    v16 = WiFiManagerClientCreate();
    if (!v16)
    {
      v71 = -6700;
      goto LABEL_56;
    }

    v17 = v16;
    CFRunLoopGetMain();
    WiFiManagerClientScheduleWithRunLoop();
    CFDictionarySetValue(v14, @"platformManager", v17);
    v18 = WiFiManagerClientCopyDevices();
    v19 = v18;
    if (v18 && CFArrayGetCount(v18) > 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
      CFDictionarySetValue(v14, @"platformDevice", ValueAtIndex);
      CFRelease(v19);
      CFDictionarySetData(v14, @"callback", bytes, 8);
      CFDictionarySetData(v14, @"context", v72, 8);
      CFDictionarySetValue(v14, @"queue", v7);
      v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v19 = v20;
      if (!v20)
      {
        v62 = 0;
        theDict = 0;
LABEL_79:
        v63 = -6728;
        goto LABEL_80;
      }

      v21 = *MEMORY[0x1E695E4D0];
      CFDictionarySetValue(v20, @"SCAN_MERGE", *MEMORY[0x1E695E4D0]);
      Value = CFDictionaryGetValue(a1, @"scanDwellTime");
      if (Value)
      {
        CFDictionarySetValue(v19, @"SCAN_DWELL_TIME", Value);
      }

      TypeID = CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue(a1, @"ssid", TypeID, 0);
      if (TypedValue)
      {
        v25 = TypedValue;
        CFDictionarySetValue(v19, @"HIDDEN_NETWORK", v21);
        CFDictionarySetValue(v19, @"SCAN_DIRECTED", v21);
        CFDictionarySetValue(v19, @"SSID_STR", v25);
      }

      Int64Ranged = CFDictionaryGetInt64Ranged(a1, @"channel", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
      Int64 = CFDictionaryGetInt64(a1, @"channel_2pt4GHz", &v71);
      if (v71)
      {
        v28 = 0;
      }

      else
      {
        v28 = Int64 == 0;
      }

      v29 = a1;
      v30 = !v28;
      v69 = v29;
      v31 = CFDictionaryGetInt64(v29, @"channel_5GHz", &v71);
      if (v71)
      {
        v32 = 0;
      }

      else
      {
        v32 = v31 == 0;
      }

      v33 = !v32;
      if (v30 & 1) != 0 || (v33)
      {
        if (((Int64Ranged < 1) & v30 & v33) != 0)
        {
          goto LABEL_45;
        }

        v34 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        theDict = v19;
        if (v34)
        {
          theArray = v34;
          valuePtr = 27;
          v35 = CFNumberCreate(0, kCFNumberSInt8Type, &valuePtr);
          if (v35)
          {
            v36 = v35;
            v19 = WiFiDeviceClientCopyProperty();
            CFRelease(v36);
            if (v19)
            {
              v65 = v17;
              v66 = v7;
              Count = CFArrayGetCount(v19);
              if (Count >= 1)
              {
                v38 = Count;
                v39 = 0;
                while (1)
                {
                  v40 = CFDictionaryGetTypeID();
                  TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v19, v39, v40, &v71);
                  if (v71)
                  {
                    break;
                  }

                  v42 = TypedValueAtIndex;
                  v43 = CFDictionaryGetInt64Ranged(TypedValueAtIndex, @"SUP_CHANNEL", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
                  v44 = v43;
                  if (Int64Ranged < 1 || v43 == Int64Ranged)
                  {
                    v45 = CFDictionaryGetInt64(v42, @"SUP_CHANNEL_FLAGS", 0);
                    v46 = v45;
                    v47 = (v45 & 8) != 0 ? v30 : 1;
                    if (v47 == 1)
                    {
                      v48 = (v45 & 0x10) != 0 ? v33 : 1;
                      if (v48 == 1)
                      {
                        v49 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (!v49)
                        {
                          v71 = -6728;
                          break;
                        }

                        v50 = v49;
                        CFDictionarySetInt64(v49, @"CHANNEL", v44);
                        CFDictionarySetInt64(v50, @"CHANNEL_FLAGS", v46);
                        CFArrayAppendValue(theArray, v50);
                        CFRelease(v50);
                      }
                    }
                  }

                  if (v38 == ++v39)
                  {
                    goto LABEL_44;
                  }
                }

                v7 = v66;
                v13 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
                v17 = v65;
                goto LABEL_70;
              }

LABEL_44:
              CFRelease(v19);
              v19 = theDict;
              CFDictionarySetValue(theDict, @"SCAN_CHANNELS", theArray);
              CFRelease(theArray);
              v7 = v66;
              v13 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
              v17 = v65;
LABEL_45:
              v51 = CFDictionaryGetInt64Ranged(v69, @"scanRSSIThreshold", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, &v71);
              if (v71)
              {
                v56 = -80;
              }

              else
              {
                v56 = v51;
              }

              if (v56 < 0)
              {
                CFDictionarySetInt64(v19, @"SCAN_RSSI_THRESHOLD", v56);
              }

              v57 = v13[706];
              if (v57 <= 30 && (v57 != -1 || _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x1Eu)))
              {
                LogPrintF(&gLogCategory_WiFiManagerCore, "OSStatus WiFiScan(CFDictionaryRef, __strong dispatch_queue_t, WiFiScanCompletion_f, void *)", 0x1Eu, "WiFi scan starting\n", v52, v53, v54, v55, v64);
              }

              v71 = WiFiDeviceClientScanAsync();
              if (!v71)
              {
                CFRelease(v17);
                v14 = v19;
                goto LABEL_56;
              }

              theDict = v19;
              v62 = 0;
              v19 = 0;
              goto LABEL_71;
            }
          }

          else
          {
            v19 = 0;
          }

          v71 = -6700;
LABEL_70:
          v62 = theArray;
LABEL_71:
          CFRunLoopGetMain();
          WiFiManagerClientUnscheduleFromRunLoop();
          if (v62)
          {
            CFRelease(v62);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          if (theDict)
          {
            CFRelease(theDict);
          }

          CFRelease(v17);
LABEL_56:
          CFRelease(v14);
          v58 = v71;
          if (!v71)
          {
            goto LABEL_61;
          }

          goto LABEL_57;
        }

        v62 = 0;
        v19 = 0;
        goto LABEL_79;
      }

      theDict = v19;
      v62 = 0;
      v19 = 0;
      v63 = -6705;
    }

    else
    {
      v62 = 0;
      theDict = 0;
      v63 = -6727;
    }

LABEL_80:
    v71 = v63;
    goto LABEL_71;
  }

  v58 = 4294960568;
  v71 = -6728;
LABEL_57:
  v59 = v13[706];
  if (v59 <= 60)
  {
    if (v59 != -1 || (v60 = _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x3Cu), v58 = v71, v60))
    {
      LogPrintF(&gLogCategory_WiFiManagerCore, "OSStatus WiFiScan(CFDictionaryRef, __strong dispatch_queue_t, WiFiScanCompletion_f, void *)", 0x3Cu, "### WiFi scan failed: %#m\n", v9, v10, v11, v12, v58);
      v58 = v71;
    }
  }

LABEL_61:

  return v58;
}

void _WiFiScanCallback(int a1, const __CFArray *a2, int a3, CFDictionaryRef theDict)
{
  CFDictionaryGetValue(theDict, @"platformManager");
  mach_absolute_time();
  CFDictionaryGetInt64(theDict, @"startTime", 0);
  if (sUpTicksToSecondsOnce != -1)
  {
    dispatch_once_f(&sUpTicksToSecondsOnce, &sUpTicksToSecondsMultiplier, _UpTicksToSecondsInit);
  }

  if (gLogCategory_WiFiManagerCore <= 30 && (gLogCategory_WiFiManagerCore != -1 || _LogCategory_Initialize(&gLogCategory_WiFiManagerCore, 0x1Eu)))
  {
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = 0;
    }

    LogPrintF(&gLogCategory_WiFiManagerCore, "void _WiFiScanCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError, void *)", 0x1Eu, "WiFi scan completed: %ld results, %.3f seconds, %#m\n", v7, v8, v9, v10, Count);
  }

  v15 = 0;
  v16 = 0;
  CFDictionaryGetData(theDict, @"callback", &v16, 8uLL, 0, 0);
  CFDictionaryGetData(theDict, @"context", &v15, 8uLL, 0, 0);
  v12 = CFDictionaryGetValue(theDict, @"queue");
  if (a2)
  {
    CFRetain(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___WiFiScanCallback_block_invoke;
  block[3] = &__block_descriptor_60_e5_v8__0l;
  v14 = a3;
  block[4] = a2;
  block[5] = v16;
  block[6] = v15;
  dispatch_async(v12, block);
  CFRunLoopGetMain();
  WiFiManagerClientUnscheduleFromRunLoop();
  CFRelease(theDict);
}

uint64_t WiFiScan_b(const __CFDictionary *a1, void *a2, const void *a3)
{
  v5 = a2;
  v6 = _Block_copy(a3);

  v7 = WiFiScan(a1, v5, _WiFiScan_bCallBack, v6);
  if (v7)
  {
  }

  return v7;
}

void _WiFiScan_bCallBack(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  a3[2](a3, a1, a2);
}

uint64_t WiFiSWAPStart(__CFDictionary **a1, const __CFDictionary *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v27 = a5;
  *bytes = a4;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    started = 4294960568;
    goto LABEL_21;
  }

  v11 = Mutable;
  v12 = WiFiManagerClientCreate();
  if (!v12)
  {
    started = 4294960596;
    goto LABEL_20;
  }

  v13 = v12;
  CFDictionarySetValue(v11, @"platformManager", v12);
  CFRunLoopGetMain();
  WiFiManagerClientScheduleWithRunLoop();
  v14 = WiFiManagerClientCopyDevices();
  if (!v14)
  {
    CFRelease(v13);
    started = 4294960569;
    goto LABEL_20;
  }

  v15 = v14;
  if (CFArrayGetCount(v14) < 1)
  {
    started = 4294960569;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
    CFDictionarySetValue(v11, @"platformDevice", ValueAtIndex);
    if (a4)
    {
      CFDictionarySetData(v11, @"startedCallback", bytes, 8);
    }

    if (a5)
    {
      CFDictionarySetData(v11, @"startedContext", &v27, 8);
    }

    if (v9)
    {
      CFDictionarySetValue(v11, @"startedQueue", v9);
    }

    v32 = 0;
    v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v17)
    {
      v18 = v17;
      v30 = 0;
      v31 = 0;
      length = 0;
      CFDictionarySetInt64(v17, @"AP_MODE_AUTH_LOWER", 1);
      CFDictionarySetInt64(v18, @"AP_MODE_AUTH_UPPER", 0);
      CFDictionarySetInt64(v18, @"AP_MODE_CYPHER_TYPE", 0);
      Int64 = CFDictionaryGetInt64(a2, @"channel_2pt4GHz", &v32);
      if (v32 && (Int64 = CFDictionaryGetInt64(a2, @"channel_5GHz", &v32), v32))
      {
        v20 = 6;
      }

      else
      {
        v20 = Int64;
        if (Int64 <= 0)
        {
          v32 = -6705;
LABEL_18:
          CFRelease(v18);
          started = v32;
          goto LABEL_19;
        }
      }

      CFDictionarySetInt64(v18, @"CHANNEL", v20);
      TypeID = CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue(a2, @"ssid", TypeID, &v32);
      if (v32)
      {
        goto LABEL_18;
      }

      v32 = CFStringGetOrCopyCStringUTF8(TypedValue, &v31, &v30, &length);
      if (v32)
      {
        goto LABEL_18;
      }

      CFDictionarySetData(v18, @"AP_MODE_SSID_BYTES", v31, length);
      if (v30)
      {
        free(v30);
      }

      v25 = CFDataGetTypeID();
      v26 = CFDictionaryGetTypedValue(a2, @"ie", v25, 0);
      if (v26)
      {
        CFDictionarySetValue(v18, @"AP_MODE_IE_LIST", v26);
      }

      CFRetain(v11);
      started = WiFiDeviceClientStartNetwork();
      CFRelease(v18);
      if (started)
      {
        CFRelease(v11);
      }

      else
      {
        *a1 = v11;
        v11 = 0;
      }
    }

    else
    {
      started = 4294960568;
    }
  }

LABEL_19:
  CFRelease(v13);
  CFRelease(v15);
  if (v11)
  {
LABEL_20:
    CFRelease(v11);
  }

LABEL_21:

  return started;
}

void _WiFiSWAPStartCallBack(int a1, int a2, void *value, int a4, CFMutableDictionaryRef theDict)
{
  v14 = 0;
  v13 = 0;
  if (value)
  {
    CFDictionarySetValue(theDict, @"platformNetwork", value);
  }

  CFDictionarySetInt64(theDict, @"startedStatus", a2);
  v8 = CFDictionaryGetValue(theDict, @"startedQueue");
  CFDictionaryGetData(theDict, @"startedCallback", &v14, 8uLL, 0, 0);
  CFDictionaryGetData(theDict, @"startedContext", &v13, 8uLL, 0, 0);
  if (v8 && v14)
  {
    CFRetain(theDict);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___WiFiSWAPStartCallBack_block_invoke;
    v11[3] = &__block_descriptor_60_e5_v8__0l;
    v11[4] = v14;
    v11[5] = theDict;
    v12 = a2;
    v11[6] = v13;
    dispatch_async(v8, v11);
  }

  if (CFDictionaryGetInt64(theDict, @"stopPending", 0))
  {
    v9 = CFRetain(theDict);
    if (value)
    {
      if (WiFiDeviceClientStopNetwork())
      {
        CFRelease(theDict);
      }
    }

    else
    {
      _WiFiSWAPStopCallBack(v9, 0, v10, theDict);
    }
  }

  CFRelease(theDict);
}

void _WiFiSWAPStopCallBack(int a1, int a2, int a3, CFDictionaryRef theDict)
{
  v9 = 0;
  v10 = 0;
  v6 = CFDictionaryGetValue(theDict, @"stoppedQueue");
  CFDictionaryGetData(theDict, @"stoppedCallback", &v10, 8uLL, 0, 0);
  CFDictionaryGetData(theDict, @"stoppedContext", &v9, 8uLL, 0, 0);
  if (v6 && v10)
  {
    CFRetain(theDict);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___WiFiSWAPStopCallBack_block_invoke;
    v7[3] = &__block_descriptor_60_e5_v8__0l;
    v7[4] = v10;
    v7[5] = theDict;
    v8 = a2;
    v7[6] = v9;
    dispatch_async(v6, v7);
  }

  if (CFDictionaryGetValue(theDict, @"platformManager"))
  {
    CFRunLoopGetMain();
    WiFiManagerClientUnscheduleFromRunLoop();
  }

  CFRelease(theDict);
}

uint64_t WiFiSWAPStop(__CFDictionary *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v12 = a4;
  *bytes = a3;
  if (CFDictionaryGetValue(a1, @"platformDevice"))
  {
    if (a3)
    {
      CFDictionarySetData(a1, @"stoppedCallback", bytes, 8);
    }

    if (a4)
    {
      CFDictionarySetData(a1, @"stoppedContext", &v12, 8);
    }

    if (v7)
    {
      CFDictionarySetValue(a1, @"stoppedQueue", v7);
    }

    if (CFDictionaryGetValue(a1, @"platformNetwork"))
    {
      CFRetain(a1);
      v8 = WiFiDeviceClientStopNetwork();
      if (v8)
      {
        CFRelease(a1);
      }
    }

    else
    {
      if (CFDictionaryGetInt64(a1, @"startedStatus", 0))
      {
        v9 = CFRetain(a1);
        _WiFiSWAPStopCallBack(v9, 0, v10, a1);
      }

      else
      {
        CFDictionarySetValue(a1, @"stopPending", *MEMORY[0x1E695E4D0]);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 4294960576;
  }

  CFRelease(a1);

  return v8;
}

BOOL xpc_connection_has_entitlement()
{
  v0 = xpc_connection_copy_entitlement_value();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = MEMORY[0x193B07A70]() == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v1);
  xpc_release(v1);
  return v2;
}

void xpc_connection_set_event_handler_f(_xpc_connection_s *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __xpc_connection_set_event_handler_f_block_invoke;
  v3[3] = &__block_descriptor_tmp_14638;
  v3[4] = a2;
  v3[5] = a3;
  xpc_connection_set_event_handler(a1, v3);
}

void xpc_connection_send_message_with_reply_f(_xpc_connection_s *a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __xpc_connection_send_message_with_reply_f_block_invoke;
  v5[3] = &__block_descriptor_tmp_1;
  v5[4] = a4;
  v5[5] = a5;
  xpc_connection_send_message_with_reply(a1, a2, a3, v5);
}

uint64_t xpc_dictionary_copy_cf_object(void *a1, const char *a2, int *a3)
{
  result = xpc_dictionary_get_value(a1, a2);
  if (!result)
  {
    v5 = -6727;
    if (!a3)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = _CFXPCCreateCFObjectFromXPCObject();
  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = -6756;
  }

  if (a3)
  {
LABEL_6:
    *a3 = v5;
  }

  return result;
}

uint64_t xpc_dictionary_set_cf_object(void *a1, const char *a2)
{
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v4)
  {
    return 4294960540;
  }

  v5 = v4;
  xpc_dictionary_set_value(a1, a2, v4);
  xpc_release(v5);
  return 0;
}

uint64_t xpc_send_message_sync(const char *a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  label = 0;
  asprintf(&label, "xpc_send_message_sync:%s", a1);
  if (!label)
  {
    return 4294960568;
  }

  v10 = dispatch_queue_create(label, 0);
  free(label);
  if (!v10)
  {
    return 4294960568;
  }

  mach_service = xpc_connection_create_mach_service(a1, v10, a2);
  if (mach_service)
  {
    v12 = mach_service;
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_14641);
    if (a3)
    {
      xpc_connection_set_target_uid();
    }

    xpc_connection_resume(v12);
    if (sCUOSLogCreateOnce_logger_14642 != -1)
    {
      dispatch_once(&sCUOSLogCreateOnce_logger_14642, &__block_literal_global_7_14643);
    }

    v13 = sCUOSLogHandle_logger_14644;
    if (os_log_type_enabled(sCUOSLogHandle_logger_14644, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = a1;
      _os_log_impl(&dword_191EAF000, v13, OS_LOG_TYPE_INFO, "xpc_send_message_sync start: service=%s", buf, 0xCu);
    }

    v14 = xpc_connection_send_message_with_reply_sync(v12, a4);
    if (sCUOSLogCreateOnce_logger_14642 != -1)
    {
      dispatch_once(&sCUOSLogCreateOnce_logger_14642, &__block_literal_global_7_14643);
    }

    v15 = sCUOSLogHandle_logger_14644;
    if (os_log_type_enabled(sCUOSLogHandle_logger_14644, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = a1;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_191EAF000, v15, OS_LOG_TYPE_INFO, "xpc_send_message_sync completed: service=%s, reply=%@", buf, 0x16u);
    }

    if (a5)
    {
      if (!v14 || MEMORY[0x193B07A70](v14) == MEMORY[0x1E69E9E98])
      {
        v16 = 4294960543;
      }

      else
      {
        v16 = 0;
        *a5 = v14;
        v14 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    xpc_connection_cancel(v12);
    xpc_release(v12);
    dispatch_release(v10);
    if (v14)
    {
      xpc_release(v14);
    }
  }

  else
  {
    dispatch_release(v10);
    return 4294960596;
  }

  return v16;
}

os_log_t __logger_block_invoke_14650()
{
  result = os_log_create("com.apple.CoreUtils", "XPCUtils");
  sCUOSLogHandle_logger_14644 = result;
  return result;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}