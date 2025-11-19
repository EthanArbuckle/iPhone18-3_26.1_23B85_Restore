CFStringRef MKTypeToHuman(int a1, const __CFString *a2, const __CFDictionary *a3)
{
  v4 = 0;
  MKTypeClassify(a1, a2, &v4, 0, 0, a3);
  return v4;
}

uint64_t MKTypeClassify(int a1, const __CFString *a2, CFStringRef *a3, int *a4, __int16 *a5, const __CFDictionary *a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  if (!a2)
  {
    v15 = 0;
    v14 = 0;
    result = 22;
    if (!a5)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a5 = v14;
    goto LABEL_24;
  }

  v18 = 0;
  v19 = 0;
  v11 = MKCFOptionBit(a6, @"Remap Partition Types", 1);
  if (a1 > 15)
  {
    if (a1 == 16)
    {
      CFStringGetCString(a2, buffer, 256, 0x8000100u);
      GPTuuidType2HumanExtended(cStr, buffer, 256, v11, &v19);
      if (a3)
      {
        *a3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
      }

      v16 = v19;
      if (!v19)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    if (a1 != 32)
    {
      goto LABEL_7;
    }
  }

  else if (a1 != 1 && a1 != 8)
  {
LABEL_7:
    if (a3)
    {
      v12 = CFRetain(a2);
      result = 0;
      v14 = 0;
      *a3 = v12;
      goto LABEL_22;
    }

LABEL_21:
    result = 0;
    v14 = 0;
LABEL_22:
    v15 = 2;
    if (!a5)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  CFStringGetCString(a2, buffer, 256, 0x8000100u);
  PMTypeToHumanExtended(cStr, buffer, 256, a1, v11, &v18);
  if (a3)
  {
    *a3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  }

  v16 = v18;
  if (!v18)
  {
    goto LABEL_21;
  }

LABEL_16:
  result = 0;
  v14 = *v16;
  v15 = v16[1];
  if (a5)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (a4)
  {
    *a4 = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MKCFOptionBit(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 == CFNumberGetTypeID())
  {
    v7 = CFBooleanGetValue(v5) == 1;
    goto LABEL_5;
  }

  if (v6 == CFBooleanGetTypeID())
  {
    if (CFEqual(v5, *MEMORY[0x277CBED28]))
    {
      return a3;
    }

    return 0;
  }

  if (v6 != CFStringGetTypeID())
  {
    return 0;
  }

  v7 = CFStringCompare(v5, @"YES", 1uLL) == kCFCompareEqualTo;
LABEL_5:
  if (!v7)
  {
    return 0;
  }

  return a3;
}

__int16 *GPTuuidType2HumanExtended(__int16 *result, const char *a2, int a3, int a4, __int16 **a5)
{
  v8 = a2;
  v9 = result;
  if (result != a2)
  {
    *result = 0;
  }

  if (!a2)
  {
    v13 = 0;
    goto LABEL_19;
  }

  result = lookupDESC(a2);
  v10 = result;
  if (result)
  {
    if (a4)
    {
      if (result == &GPTDescriptors)
      {
        v10 = &GPTDescriptors;
      }

      else
      {
        v11 = &word_2798A1498;
        while (strcasecmp(v10 + 4, v11 - 52))
        {
          if (v11 != v10)
          {
            v12 = *(v11 + 6);
            v11 += 28;
            if (v12)
            {
              continue;
            }
          }

          goto LABEL_17;
        }

        v10 = v11 - 28;
      }
    }

LABEL_17:
    v8 = *(v10 + 6);
    goto LABEL_18;
  }

  v13 = 0;
  if (v9 != v8)
  {
LABEL_18:
    result = strlcpy(v9, v8, a3);
    v13 = v10;
  }

LABEL_19:
  if (a5)
  {
    *a5 = v13;
  }

  return result;
}

__int16 *lookupDESC(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    memset(uu, 0, sizeof(uu));
    v2 = uuid_parse(a1, uu);
    v3 = &GPTDescriptors;
    v4 = "Reserved";
    while (1)
    {
      if (!v2)
      {
        v4 = (v3 + 2);
      }

      if (!strcasecmp(v4, a1))
      {
        break;
      }

      v4 = *(v3 + 13);
      v3 += 28;
      if (!v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t MKMediaCreateWithPath(uint64_t a1, char *a2, const __CFDictionary *a3, _DWORD *a4)
{
  v33 = 0;
  if (!a2)
  {
    v8 = 0;
    v9 = 22;
    goto LABEL_5;
  }

  memset(&v32, 0, sizeof(v32));
  if (stat(a2, &v32))
  {
    v8 = 0;
    v9 = *__error();
LABEL_5:
    v34 = v9;
    goto LABEL_6;
  }

  if ((v32.st_mode & 0xF000) == 0x8000)
  {
    v11 = &kMKMediaFileVector;
  }

  else if (devname(v32.st_rdev, 0x6000u))
  {
    v11 = &kMKMediaBlockDeviceVector;
  }

  else
  {
    v11 = &kMKMediaCharDeviceVector;
  }

  v34 = MKCreateMediaDeviceRefcon(&v33, -1, a2);
  if (v34)
  {
    v8 = 0;
  }

  else
  {
    v12 = *MEMORY[0x277CBECE8];
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v14 = MutableCopy;
    valuePtr = 0;
    v15 = strnstr(a2, "disk", 0x40uLL);
    if (v15)
    {
      v16 = *MEMORY[0x277CD2898];
      v17 = IOBSDNameMatching(*MEMORY[0x277CD2898], 0, v15);
      MatchingService = IOServiceGetMatchingService(v16, v17);
      if (MatchingService)
      {
        v19 = MatchingService;
        v20 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"Physical Interconnect Location", v12, 3u);
        if (v20)
        {
          v21 = 1;
          HIDWORD(valuePtr) = 1;
          if (CFEqual(@"Internal", v20))
          {
            LODWORD(valuePtr) = 1;
          }

          else
          {
            v21 = 0;
          }

          CFRelease(v20);
          LODWORD(v20) = 1;
        }

        else
        {
          v21 = 0;
        }

        CFProperty = IORegistryEntryCreateCFProperty(v19, @"Writable", v12, 0);
        if (CFProperty)
        {
          LODWORD(v20) = v20 | 2;
          HIDWORD(valuePtr) = v20;
          if (!CFBooleanGetValue(CFProperty))
          {
            v21 |= 2u;
            LODWORD(valuePtr) = v21;
          }
        }

        v23 = IORegistryEntryCreateCFProperty(v19, @"Removable", v12, 0);
        if (v23)
        {
          LODWORD(v20) = v20 | 4;
          HIDWORD(valuePtr) = v20;
          if (CFBooleanGetValue(v23))
          {
            v21 |= 4u;
            LODWORD(valuePtr) = v21;
          }
        }

        v24 = IORegistryEntryCreateCFProperty(v19, @"Ejectable", v12, 0);
        if (v24)
        {
          v25 = v24;
          HIDWORD(valuePtr) = v20 | 8;
          if (CFBooleanGetValue(v24))
          {
            LODWORD(valuePtr) = v21 | 8;
          }

          CFRelease(v25);
        }

        Mutable = CFDictionaryCreateMutable(v12, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v27 = Mutable;
          v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
          if (v28)
          {
            v29 = v28;
            CFDictionarySetValue(v27, @"valid", v28);
            CFRelease(v29);
            v30 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            if (v30)
            {
              v31 = v30;
              CFDictionarySetValue(v27, @"attributes", v30);
              CFRelease(v31);
            }
          }

          CFDictionarySetValue(v14, @"Characteristics", v27);
          CFRelease(v27);
        }
      }
    }

    v8 = MKMediaCreate(a1, v33, v11, v14, &v34);
    if (v14)
    {
      CFRelease(v14);
    }
  }

LABEL_6:
  if (a4)
  {
    *a4 = v34;
  }

  return v8;
}

uint64_t MKCreateMediaDeviceRefcon(void *a1, int a2, const char *a3)
{
  *a1 = 0;
  v6 = malloc_type_malloc(0x18uLL, 0x10300406712BA52uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  *v6 = 1296786550;
  v6[1] = a2;
  if (a3)
  {
    v8 = strdup(a3);
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *(v7 + 1) = v8;
  *(v7 + 2) = 0;
  *a1 = v7;
  return result;
}

uint64_t MKMediaCreate(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, int *a5)
{
  if (!a3 || *a3 || !*(a3 + 8) || !*(a3 + 16) || !*(a3 + 24) || !*(a3 + 32) || !*(a3 + 40) || !*(a3 + 48) || !*(a3 + 56) || !*(a3 + 64))
  {
    v6 = 0;
    v7 = 22;
    goto LABEL_4;
  }

  v18 = 0;
  v10 = _MKMediaCreate(a1, a2, a3, a4, &v18);
  v6 = v10;
  v7 = v18;
  if (v18)
  {
LABEL_26:
    if (!v6)
    {
      goto LABEL_4;
    }

LABEL_27:
    v16 = *(v6 + 136);
    if (v16)
    {
      _MKMediaBufferPoolDestroy(v16);
    }

    pthread_rwlock_destroy((v6 + 144));
    CFRelease(v6);
    v6 = 0;
    goto LABEL_4;
  }

  *(v10 + 136) = 0;
  updated = pthread_rwlock_init((v10 + 144), 0);
  if (updated)
  {
    goto LABEL_25;
  }

  updated = (*(v6 + 24))(*(v6 + 88), a4);
  if (updated)
  {
    goto LABEL_25;
  }

  if (a4)
  {
    Value = CFDictionaryGetValue(a4, @"Characteristics");
    if (Value)
    {
      v13 = Value;
      v14 = CFDictionaryGetValue(Value, @"attributes");
      if (v14)
      {
        CFNumberGetValue(v14, kCFNumberSInt32Type, (v6 + 124));
      }

      v15 = CFDictionaryGetValue(v13, @"valid");
      if (v15)
      {
        CFNumberGetValue(v15, kCFNumberSInt32Type, (v6 + 128));
      }
    }
  }

  updated = _MKMediaUpdateGeometryFromDict(v6);
  if (updated)
  {
LABEL_25:
    v7 = updated;
    goto LABEL_26;
  }

  v17 = _MKMediaBufferPoolCreate(4, *(v6 + 104));
  *(v6 + 136) = v17;
  if (v17)
  {
    v7 = 0;
    goto LABEL_4;
  }

  v7 = 12;
  if (v6)
  {
    goto LABEL_27;
  }

LABEL_4:
  if (a5)
  {
    *a5 = v7;
  }

  return v6;
}

uint64_t _MKMediaCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (!_kMKMediaID)
  {
    _kMKMediaClass = 0;
    unk_27F957190 = "MKMedia";
    qword_27F957198 = 0;
    unk_27F9571A0 = 0;
    qword_27F9571B0 = 0;
    unk_27F9571B8 = 0;
    qword_27F9571A8 = _MKMediaCFRuntimeFinalize;
    qword_27F9571C0 = _MKMediaCFRuntimeCopyFormattingDesc;
    qword_27F9571C8 = _MKMediaCFRuntimeCopyDebugDesc;
    _kMKMediaID = _CFRuntimeRegisterClass();
  }

  if (*a3)
  {
    result = 0;
    v9 = 22;
  }

  else
  {
    result = _CFRuntimeCreateInstance();
    if (result)
    {
      v9 = 0;
      *(result + 88) = a2;
      *(result + 16) = *a3;
      *(result + 24) = *(a3 + 8);
      *(result + 40) = *(a3 + 24);
      *(result + 56) = *(a3 + 40);
      *(result + 72) = *(a3 + 56);
    }

    else
    {
      v9 = 12;
    }
  }

  *a5 = v9;
  return result;
}

uint64_t _MKMediaClassInitialize()
{
  _kMKMediaClass = 0;
  unk_27F957190 = "MKMedia";
  qword_27F957198 = 0;
  unk_27F9571A0 = 0;
  qword_27F9571B0 = 0;
  unk_27F9571B8 = 0;
  qword_27F9571A8 = _MKMediaCFRuntimeFinalize;
  qword_27F9571C0 = _MKMediaCFRuntimeCopyFormattingDesc;
  qword_27F9571C8 = _MKMediaCFRuntimeCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  _kMKMediaID = result;
  return result;
}

uint64_t _MKMediaBlockDeviceInitialize(uint64_t a1, CFDictionaryRef theDict)
{
  v21 = 0;
  strcpy(__source, "/dev/");
  if (!a1 || *a1 != 1296786550)
  {
    return 22;
  }

  memset(&v20, 0, sizeof(v20));
  if (*(a1 + 4) == -1)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      if (stat(v13, &v20))
      {
        return *__error();
      }

      v14 = devname(v20.st_rdev, 0x2000u);
      if (!v14)
      {
        return 2;
      }

      v15 = v14;
      v16 = strlen(v14);
      v17 = malloc_type_malloc(v16 + 6, 0x1000040274DC3F3uLL);
      strlcpy(v17, __source, v16 + 6);
      strlcat(v17, v15, v16 + 6);
      free(*(a1 + 8));
      *(a1 + 8) = v17;
      v18 = _MKMediaOpenFile(v17, theDict, &v21 + 1, &v21);
      if (v18 < 0)
      {
        return *__error();
      }

      *(a1 + 4) = v18;
      goto LABEL_8;
    }

    return 22;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Writable");
    if (Value)
    {
      HIDWORD(v21) = CFEqual(Value, *MEMORY[0x277CBED28]);
    }
  }

  *(a1 + 8) = strdup("<unknown device>");
LABEL_8:
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 16) = Mutable;
  if (!Mutable)
  {
    return 12;
  }

  v7 = *MEMORY[0x277CBED28];
  v8 = *MEMORY[0x277CBED10];
  if (HIDWORD(v21))
  {
    v9 = *MEMORY[0x277CBED28];
  }

  else
  {
    v9 = *MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"Writable", v9);
  if (v21)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  CFDictionaryAddValue(*(a1 + 16), @"Shared Writer", v10);
  v11 = CFStringCreateWithCString(v5, *(a1 + 8), 0x8000100u);
  CFDictionaryAddValue(*(a1 + 16), @"Path", v11);
  CFRelease(v11);
  return 0;
}

uint64_t _MKMediaOpenFile(const char *a1, CFDictionaryRef theDict, int *a3, int *a4)
{
  v7 = MEMORY[0x277CBED28];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Writable");
    v10 = CFDictionaryGetValue(theDict, @"Shared Writer");
    if (Value && CFEqual(Value, *v7))
    {
      v11 = 2;
      v12 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = 0;
  v11 = 0;
LABEL_7:
  *a3 = v12;
  if (v10)
  {
    if (CFEqual(v10, *v7))
    {
      v13 = 1;
      v14 = 16;
LABEL_12:
      v11 |= v14;
      *a4 = v13;
      return open(a1, v11, 438);
    }

    if (CFEqual(v10, *MEMORY[0x277CBED10]))
    {
      v13 = 0;
      v14 = 32;
      goto LABEL_12;
    }
  }

  return open(a1, v11, 438);
}

uint64_t _MKMediaUpdateGeometryFromDict(uint64_t a1)
{
  if (a1)
  {
    v2 = (*(a1 + 40))(*(a1 + 88), @"Geometry");
    if (v2)
    {
      v3 = v2;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID != CFGetTypeID(v3))
      {
        goto LABEL_16;
      }

      Value = CFDictionaryGetValue(v3, @"Sector Count");
      if (!Value)
      {
        goto LABEL_16;
      }

      v6 = Value;
      v7 = CFNumberGetTypeID();
      if (v7 != CFGetTypeID(v6))
      {
        goto LABEL_16;
      }

      CFNumberGetValue(v6, kCFNumberSInt64Type, (a1 + 96));
      v8 = CFDictionaryGetValue(v3, @"Block Size");
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = v8;
      v10 = CFNumberGetTypeID();
      if (v10 != CFGetTypeID(v9))
      {
        goto LABEL_16;
      }

      CFNumberGetValue(v9, kCFNumberSInt32Type, (a1 + 104));
      v11 = CFDictionaryGetValue(v3, @"Maximum Transfer Sector Count");
      if (v11)
      {
        v12 = v11;
        v13 = CFNumberGetTypeID();
        if (v13 != CFGetTypeID(v12))
        {
          goto LABEL_16;
        }

        CFNumberGetValue(v12, kCFNumberSInt64Type, (a1 + 112));
      }

      if (!*(a1 + 112))
      {
        *(a1 + 112) = (*(a1 + 104) >> 4) & 0x7FFFFF;
      }

      v14 = (*(a1 + 40))(*(a1 + 88), @"Writable");
      if (v14)
      {
        v15 = v14;
        *(a1 + 120) = CFEqual(v14, *MEMORY[0x277CBED28]) != 0;
        CFRelease(v15);
        v16 = 0;
LABEL_17:
        CFRelease(v3);
        return v16;
      }

LABEL_16:
      v16 = 22;
      goto LABEL_17;
    }
  }

  return 22;
}

uint64_t MKMediaCopyProperty(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(a1 + 40))(*(a1 + 88));
  }

  else
  {
    return 0;
  }
}

const void *_MKMediaBlockDeviceCopyProperty(uint64_t a1, void *key)
{
  if (!key)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (v4 && (v5 = CFDictionaryGetValue(v4, key)) != 0)
  {
    Value = v5;
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    _MKMediaBlockDeviceGetGeoProperties(a1, Mutable);
    Value = CFDictionaryGetValue(Mutable, key);
    if (!Value)
    {
      goto LABEL_7;
    }
  }

  CFRetain(Value);
LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Value;
}

uint64_t _MKMediaBlockDeviceGetGeoProperties(_DWORD *a1, __CFDictionary *a2)
{
  if (!a1)
  {
    return 22;
  }

  if (*a1 != 1296786550)
  {
    return 22;
  }

  v3 = a1[1];
  if (v3 < 0)
  {
    return 22;
  }

  v10 = 0;
  v8 = 0;
  v9 = 0;
  if (ioctl(v3, 0x40046418uLL, &v10))
  {
    return *__error();
  }

  v5 = v10;
  if (ioctl(a1[1], 0x40086419uLL, &v9))
  {
    return *__error();
  }

  v6 = v5 >> 9;
  v9 *= v6;
  if (ioctl(a1[1], 0x40086441uLL, &v8))
  {
    return *__error();
  }

  else
  {
    return _MKMediaSetupGeometry(a2, v10, v9, v8 * v6);
  }
}

uint64_t _MKMediaSetupGeometry(__CFDictionary *a1, int a2, uint64_t a3, uint64_t a4)
{
  values[3] = *MEMORY[0x277D85DE8];
  valuePtr = a2;
  v9 = a4;
  v10 = a3;
  *keys = xmmword_2798A28F8;
  v13 = @"Maximum Transfer Sector Count";
  if (a1)
  {
    values[0] = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    values[1] = CFNumberCreate(0, kCFNumberSInt64Type, &v10);
    values[2] = CFNumberCreate(0, kCFNumberSInt64Type, &v9);
    v5 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(a1, @"Geometry", v5);
      CFRelease(v6);
      result = 0;
    }

    else
    {
      result = 12;
    }
  }

  else
  {
    result = 22;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

char *_MKMediaBufferPoolCreate(int a1, unsigned int a2)
{
  v4 = malloc_type_malloc(0x90uLL, 0x101004053EA5042uLL);
  *(v4 + 28) = a1;
  *(v4 + 29) = a1;
  *(v4 + 30) = a2;
  if (!pthread_cond_init(v4, 0))
  {
    if (!pthread_mutex_init((v4 + 48), 0))
    {
      *(v4 + 17) = malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
      *(v4 + 16) = malloc_type_calloc(a1, a2, 0x45038DE1uLL);
      return v4;
    }

    pthread_cond_destroy(v4);
  }

  free(v4);
  return 0;
}

CFBundleRef MKAccessLibrary(__CFString *a1)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.MediaKit");
  if (BundleWithIdentifier)
  {
    v3 = a1 ? a1 : @"MKDrivers";
    v4 = CFBundleCopyBundleURL(BundleWithIdentifier);
    if (v4)
    {
      v5 = v4;
      v6 = CFStringCreateWithFormat(0, 0, @"Loaders/%@.bundle", v3);
      if (v6)
      {
        v7 = v6;
        v8 = CFURLCreateCopyAppendingPathComponent(0, v5, v6, 1u);
        CFRelease(v7);
        if (v8)
        {
LABEL_10:
          v10 = CFBundleCreate(0, v8);
          CFRelease(v8);
LABEL_13:
          CFRelease(v5);
          return v10;
        }

        v9 = CFURLCreateWithFileSystemPath(0, v3, kCFURLPOSIXPathStyle, 1u);
        if (v9)
        {
          v8 = v9;
          goto LABEL_10;
        }
      }

      v10 = 0;
      goto LABEL_13;
    }
  }

  return 0;
}

const __CFURL *MKLoadDB(__CFBundle *a1, const __CFString *a2, int *a3)
{
  if (a1)
  {
    v4 = CFBundleCopyResourceURL(a1, a2, @"plist", 0);
    if (v4)
    {
      v5 = CFReadStreamCreateWithFile(0, v4);
      CFRelease(v4);
      if (v5)
      {
        if (CFReadStreamOpen(v5))
        {
          v4 = CFPropertyListCreateWithStream(0, v5, 0, 0, 0, 0);
          if (v4)
          {
            v6 = 0;
          }

          else
          {
            v6 = -19;
          }
        }

        else
        {
          v4 = 0;
          v6 = -23;
        }

        CFReadStreamClose(v5);
        CFRelease(v5);
      }

      else
      {
        v4 = 0;
        v6 = -23;
      }
    }

    else
    {
      v6 = -43;
    }
  }

  else
  {
    v4 = 0;
    v6 = -50;
  }

  if (a3)
  {
    *a3 = v6;
  }

  return v4;
}

__CFDictionary *MKCFBuildPartition(int a1, int a2, const __CFString *a3, const void *a4, uint64_t a5, uint64_t a6, int *a7, const void *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  valuePtr = a2;
  v25 = a6;
  v26 = a5;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v22 = -1;
    goto LABEL_24;
  }

  if (a2 && (v15 = PMCodeSearch(a2, a1)) != 0)
  {
    a3 = CFStringCreateWithCString(0, v15, 0);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  *&uu.byte0 = 0;
  *&uu.byte8 = 0;
  if (!a3 || !CFStringGetLength(a3))
  {
    v17 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
LABEL_11:
    a3 = v17;
    if (!v17)
    {
      v22 = -5307;
      if (!a7)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_12;
  }

  if ((v16 & 1) == 0)
  {
    v17 = CFRetain(a3);
    goto LABEL_11;
  }

LABEL_12:
  CFDictionarySetValue(Mutable, @"Type", a3);
  CFRelease(a3);
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"Name", a4);
  }

  if (v26)
  {
    v18 = CFNumberCreate(0, kCFNumberSInt64Type, &v26);
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(Mutable, @"Size", v18);
      CFRelease(v19);
    }
  }

  if (v25)
  {
    v20 = CFNumberCreate(0, kCFNumberSInt64Type, &v25);
    if (v20)
    {
      v21 = v20;
      CFDictionarySetValue(Mutable, @"Offset", v20);
      CFRelease(v21);
    }
  }

  MEMORY[0x259C86EE0](&uu);
  v22 = CFDictionarySetUUID(Mutable, @"GUID", &uu);
  if (a8)
  {
    CFDictionarySetValue(Mutable, @"Options", a8);
    if (!a7)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (a7)
  {
LABEL_25:
    *a7 = v22;
  }

LABEL_26:
  v23 = *MEMORY[0x277D85DE8];
  return Mutable;
}

const char *PMCodeSearch(int a1, int a2)
{
  if (a2 <= 7)
  {
    if (a2 < 4)
    {
      return APMCodeSearch(a1);
    }

    return 0;
  }

  if (a2 > 31)
  {
    if (a2 != 32)
    {
      if (a2 == 128)
      {
        return APMCodeSearch(a1);
      }

      return 0;
    }

    return ISOCodeSearch(a1);
  }

  else
  {
    if (a2 != 8)
    {
      if (a2 == 16)
      {
        return GPTCodeSearch(a1);
      }

      return 0;
    }

    return MBRCodeSearch(a1);
  }
}

const char *GPTCodeSearch(int a1)
{
  if (!a1)
  {
    return "Reserved";
  }

  v2 = &word_2798A1498;
  do
  {
    result = *(v2 + 6);
    if (!result)
    {
      break;
    }

    v4 = *v2;
    v2 += 28;
  }

  while (v4 != a1);
  return result;
}

uint64_t CFDictionarySetUUID(__CFDictionary *a1, const void *a2, CFUUIDBytes *uu)
{
  if (uuid_is_null(&uu->byte0))
  {
    CFDictionaryRemoveValue(a1, a2);
    return 0;
  }

  v6 = uuid2cfstr(uu);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a1, a2, v6);
    CFRelease(v7);
    return 0;
  }

  return 22;
}

const __CFUUID *uuid2cfstr(CFUUIDBytes *a1)
{
  result = CFUUIDCreateFromUUIDBytes(0, *a1);
  if (result)
  {
    v2 = result;
    v3 = CFUUIDCreateString(0, result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

uint64_t MKCFPartitionAttributes(const __CFDictionary *a1, int a2, CFDictionaryRef theDict, _OWORD *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a4 && (*a4 = 0, (Value = CFDictionaryGetValue(theDict, @"Type")) != 0))
  {
    v11 = 0;
    v8 = PMCFSetupPartitionType(a2, Value, &v11, v12);
    if (!v8)
    {
      LOWORD(v8) = MKGetPartitionRequisites(a1, a2, v12, v11, a4);
    }
  }

  else
  {
    LOWORD(v8) = 22;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t PMCFSetupPartitionType(int a1, const __CFString *cf, unsigned __int16 *a3, char *a4)
{
  *a3 = 0;
  *a4 = 0;
  v8 = CFGetTypeID(cf);
  if (v8 == CFStringGetTypeID())
  {
    CFStringGetCString(cf, a4, 32, 0);
    v9 = PMDescriptorSearch(a4, a1);
    result = 0;
    *a3 = v9;
  }

  else if (v8 == CFNumberGetTypeID())
  {
    CFNumberGetValue(cf, kCFNumberSInt16Type, a3);
    v11 = PMCodeSearch(*a3, a1);
    strncpypad(a4, v11, 0x20uLL, 0);
    return 0;
  }

  else
  {
    return 22;
  }

  return result;
}

unsigned __int16 *PMDescriptorSearch(char *a1, int a2)
{
  if (a2 <= 7)
  {
    if (a2 < 4)
    {
      return APMDescriptorSearch(a1);
    }

    return 0;
  }

  if (a2 > 31)
  {
    if (a2 != 32)
    {
      if (a2 == 128)
      {
        return APMDescriptorSearch(a1);
      }

      return 0;
    }

    return ISODescriptorSearch(a1);
  }

  else
  {
    if (a2 != 8)
    {
      if (a2 == 16)
      {
        return GPTDescriptorSearch(a1);
      }

      return 0;
    }

    return MBRDescriptorSearch(a1);
  }
}

__int16 *GPTDescriptorSearch(__int16 *result)
{
  if (result)
  {
    result = lookupDESC(result);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t MKGetPartitionRequisites(const __CFDictionary *a1, int a2, const char *a3, int a4, _OWORD *a5)
{
  if (!a5)
  {
    return 22;
  }

  *a5 = 0;
  v10 = PMSchemeSearch(a2, 0);
  if (!v10)
  {
    return 22;
  }

  v11 = v10;
  if (!a3 || !*a3)
  {
    a3 = PMCodeSearch(a4, a2);
    if (!a3)
    {
      return 0;
    }
  }

  v12 = CFStringCreateWithCString(0, v11, 0);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = CFStringCreateWithCString(0, a3, 0);
  if (v14)
  {
    v15 = v14;
    v16 = MKLookupSchemeFormat(a1, v13, v14, 1, a5);
    CFRelease(v13);
    v13 = v15;
  }

  else
  {
    v16 = 0;
  }

  CFRelease(v13);
  return v16;
}

uint64_t PMSchemeSearch(unsigned __int16 a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v2 = 1;
  v3 = &word_2798A2970;
  while (v2 != a1)
  {
    v4 = *v3;
    v3 += 12;
    v2 = v4;
    if (v4 == 0xFFFF)
    {
      return 0;
    }
  }

  if (a2)
  {
    *a2 = *(v3 - 1);
  }

  return *(v3 - 2);
}

uint64_t MKLookupSchemeFormat(CFDictionaryRef theDict, const void *a2, const __CFString *a3, char a4, _OWORD *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  result = 22;
  if (a2 && a3)
  {
    *(a5 + 138) = 0u;
    a5[7] = 0u;
    a5[8] = 0u;
    a5[5] = 0u;
    a5[6] = 0u;
    a5[3] = 0u;
    a5[4] = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
    if (!theDict)
    {
      goto LABEL_24;
    }

    result = CFDictionaryGetValue(theDict, a2);
    if (result)
    {
      v10 = result;
      Value = CFDictionaryGetValue(result, a3);
      v12 = Value;
      if (Value)
      {
        goto LABEL_6;
      }

      if ((a4 & 1) == 0)
      {
LABEL_24:
        result = 0;
        goto LABEL_25;
      }

      result = CFDictionaryGetValue(v10, @"Media");
      if (result)
      {
        if (!CFArrayDictionarySearchWithIndexOptions(result, @"LoaderID", a3, 0, 1uLL))
        {
          result = CFDictionaryGetValue(v10, @"Default");
          v12 = result;
          if (!result)
          {
            goto LABEL_25;
          }

LABEL_6:
          Count = CFArrayGetCount(v12);
          if (Count)
          {
            v14 = 0;
            v15 = a5 + 2;
            v16 = Count;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v12, v14);
              v18 = ValueAtIndex;
              if (Value || (v23 = CFDictionaryGetValue(ValueAtIndex, @"Exceptions")) == 0 || (v24 = v23, CFStringGetCString(a3, buffer, 33, 0), CFStrMatchlist(buffer, v24) <= 0))
              {
                *(v15 + 30) = 0;
                *v15 = 0u;
                *(v15 + 1) = 0u;
                v19 = CFDictionaryGetValue(v18, @"LoaderID");
                if (!v19)
                {
                  result = 4294966879;
                  goto LABEL_25;
                }

                CFStringGetCString(v19, v15, 33, 0);
                v20 = CFDictionaryGetValue(v18, @"Loader Type");
                if (v20)
                {
                  CFNumberGetValue(v20, kCFNumberSInt16Type, v15 + 34);
                }

                v21 = CFDictionaryGetValue(v18, @"Options");
                if (v21)
                {
                  CFNumberGetValue(v21, kCFNumberSInt16Type, v15 + 36);
                }

                v22 = ++*a5;
                if (v22 > 3)
                {
                  result = 7;
                  goto LABEL_25;
                }

                v15 += 38;
              }

              result = 0;
              if (++v14 >= v16)
              {
                goto LABEL_25;
              }
            }
          }

          goto LABEL_24;
        }

        goto LABEL_24;
      }
    }
  }

LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFDictionary *CFArrayDictionarySearchWithIndexOptions(const __CFArray *a1, const void *a2, const __CFString *a3, CFIndex *a4, CFStringCompareFlags a5)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    v11 = 0;
LABEL_13:
    v14 = 0;
    if (a4)
    {
      goto LABEL_14;
    }

    return v14;
  }

  v11 = Count;
  v12 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
    if (!ValueAtIndex)
    {
      goto LABEL_10;
    }

    v14 = ValueAtIndex;
    Value = CFDictionaryGetValue(ValueAtIndex, a2);
    if (!Value)
    {
      goto LABEL_10;
    }

    v16 = Value;
    if (!a5)
    {
      break;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(v16))
    {
      break;
    }

    if (CFStringCompare(a3, v16, a5) == kCFCompareEqualTo)
    {
      goto LABEL_16;
    }

LABEL_10:
    if (v11 == ++v12)
    {
      goto LABEL_13;
    }
  }

  if (!CFEqual(a3, v16))
  {
    goto LABEL_10;
  }

LABEL_16:
  v11 = v12;
  if (!a4)
  {
    return v14;
  }

LABEL_14:
  *a4 = v11;
  return v14;
}

CFIndex CFStrMatchlist(const char *a1, CFArrayRef theArray)
{
  v11 = *MEMORY[0x277D85DE8];
  if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
  {
    v5 = 0;
    v6 = Count & 0x7FFFFFFF;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
      if (ValueAtIndex)
      {
        if (CFStringGetCString(ValueAtIndex, buffer, 33, 0) && !strncasecmp(a1, buffer, 0x21uLL))
        {
          break;
        }
      }

      if (v6 == ++v5)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v5 = 0xFFFFFFFFLL;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

__CFDictionary *MKCFCreateMedia(CFMutableArrayRef *a1, int *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (v5)
    {
      CFDictionarySetValue(Mutable, @"Schemes", v5);
      CFRelease(v5);
      v6 = 0;
      if (!a1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = -1;
  if (a1)
  {
LABEL_7:
    *a1 = v5;
  }

LABEL_8:
  *a2 = v6;
  return Mutable;
}

__CFDictionary *MKCFCreateMap(int a1, __CFArray *a2, const __CFDictionary *a3, __CFBundle *a4, unsigned int a5, unsigned int a6, unint64_t a7, const __CFDictionary *a8, uint64_t a9, int *a10)
{
  v13 = a5;
  valuePtr = a5;
  v34 = a6;
  cStr = 0;
  v18 = PMSchemeSearch(a1, &cStr);
  if (!v18 || (v19 = CFStringCreateWithCString(0, v18, 0)) == 0)
  {
    v22 = 0;
    v30 = -5307;
    goto LABEL_21;
  }

  v20 = v19;
  v32 = a8;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v22 = Mutable;
  if (!Mutable)
  {
    goto LABEL_20;
  }

  CFDictionarySetValue(Mutable, @"ID", v20);
  CFRelease(v20);
  v23 = CFStringCreateWithCString(0, cStr, 0);
  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = v23;
  CFDictionarySetValue(v22, @"Name", v23);
  CFRelease(v24);
  v25 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = v25;
  CFDictionarySetValue(v22, @"Sections", v25);
  CFRelease(v26);
  CFArrayAppendValue(a2, v22);
  CFRelease(v22);
  if (!v13)
  {
    Value = CFDictionaryGetValue(a3, @"Alignment");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
    }

    v13 = valuePtr;
  }

  if (v13 >= 2)
  {
    v28 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(v22, @"Alignment", v28);
    CFRelease(v28);
  }

  if (!a6)
  {
    v29 = CFDictionaryGetValue(a3, @"Blocksize");
    if (v29)
    {
      CFNumberGetValue(v29, kCFNumberSInt32Type, &v34);
    }
  }

  switch(a1)
  {
    case 16:
      v30 = GPTCFCreateMap(v26, a3, a4, valuePtr, v34, a7, v32, a9);
      break;
    case 8:
      v30 = MBRCFCreateMap(v26, a3, v34, a7, v32, a9, MKMediaDeviceIO);
      break;
    case 1:
      v30 = APMCFCreateMap(v26, a3, a4, valuePtr, v34, a7, v32, a9, MKMediaDeviceIO);
      break;
    default:
LABEL_20:
      v30 = -1;
      break;
  }

LABEL_21:
  if (a10)
  {
    if (v30 == -1)
    {
      v30 = *__error();
    }

    *a10 = v30;
  }

  return v22;
}

uint64_t GPTCFCreateMap(__CFArray *a1, const __CFDictionary *a2, __CFBundle *a3, unsigned int a4, unsigned int a5, unint64_t a6, const __CFDictionary *a7, uint64_t a8)
{
  v88 = *MEMORY[0x277D85DE8];
  v73 = 22;
  if (!a2)
  {
    goto LABEL_83;
  }

  v12 = a3;
  memset(v72, 0, sizeof(v72));
  v73 = -43;
  if (a3 || (v12 = MKAccessLibrary(0)) != 0)
  {
    v13 = MKLoadDB(v12, @"inventory", &v73);
    v14 = MKLoadDB(v12, @"database", &v73);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  MKMediaGetGeometry(a8, v72);
  if (a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = LODWORD(v72[0]);
  }

  if (!a6)
  {
    a6 = *(&v72[0] + 1) / (v15 >> 9);
  }

  v69 = a8;
  LODWORD(v74[0]) = 0;
  v16 = gptinit(v74);
  if (v16)
  {
    v17 = v16;
    v18 = v14;
    v19 = v13;
    v20 = a7;
    v21 = *v16;
    v22 = *(*v16 + 1);
    *(*v16 + 8) = v15;
    v23 = malloc_type_calloc(1uLL, v15, 0xE0414376uLL);
    *v22 = v23;
    if (v23)
    {
      v24 = v23;
      v79[0] = 0;
      v79[1] = 0;
      v23[2] = 0u;
      v23[3] = 0u;
      v23[4] = 0u;
      v23[5] = 0u;
      *v23 = 0u;
      v23[1] = 0u;
      MEMORY[0x259C86EE0](v79);
      uuid_LtoB((v24 + 7), v79);
      *v24 = 0x5452415020494645;
      v24[1] = 0x5C00010000;
      v24[10] = 0x8000000080;
      LODWORD(v25) = 0x4000 / v15;
      if (0x4000 / v15 * v15 == 0x4000)
      {
        v25 = v25;
      }

      else
      {
        v25 = (v25 + 1);
      }

      v24[3] = 1;
      v24[4] = a6 - 1;
      v24[9] = 2;
      v26 = v25 + 2;
      v27 = a6 - v25 - 2;
      v24[5] = v26;
      v24[6] = v27;
      if (v27 < v26)
      {
        v28 = -5341;
LABEL_19:
        disposegpm(v17);
        a7 = v20;
        v13 = v19;
        v14 = v18;
        goto LABEL_20;
      }

      v29 = *v22;
      uuid_LtoB((v21 + 16), v29 + 56);
      v30 = *(v29 + 40);
      *(v21 + 5) = v30;
      v31 = *(v29 + 48);
      *(v21 + 6) = *(v29 + 32) + v30 - v31;
      *(v21 + 7) = v31 - v30 + 1;
      *(v21 + 22) = *(v29 + 8);
      *(v21 + 8) = a6;
    }

    else
    {
      v28 = v74[0];
      if (LODWORD(v74[0]))
      {
        goto LABEL_19;
      }
    }

    v73 = 0;
    a7 = v20;
    v13 = v19;
    v14 = v18;
    goto LABEL_26;
  }

  v28 = v74[0];
LABEL_20:
  if (v28 == -1)
  {
    v28 = *__error();
  }

  v73 = v28;
  if (v28)
  {
    goto LABEL_79;
  }

  v17 = 0;
LABEL_26:
  if ((GPTConvertCreateOptions(a7, 0) & 0x20000000) != 0)
  {
    goto LABEL_72;
  }

  memset(v74, 0, 154);
  v32 = MKLookupSchemeFormat(v14, @"GPT", @"Media", 0, v74);
  if (!v32)
  {
    v33 = BootAttrSearch(v74, 5);
    if (!v33)
    {
      goto LABEL_72;
    }

    v67 = a7;
    v34 = CFStringCreateWithCString(0, v33, 0);
    v35 = *v17;
    v36 = *(*v17 + 8);
    v37 = a4;
    if (v36 >= 0x400)
    {
      v37 = a4 / (v36 >> 9);
    }

    v38 = -1;
    v77 = -1;
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
    memset(v83, 0, sizeof(v83));
    v81 = 0u;
    v82 = 0u;
    *__s = 0u;
    v75 = 0;
    v76 = 0;
    if (v37 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v37;
    }

    v78 = 22;
    LoaderRecord = fetchLoaderRecord(v12, v34, (v36 >> 9), __s, &v75, &v78);
    if (v78)
    {
      v41 = 0;
    }

    else
    {
      v42 = LoaderRecord;
      v43 = gpmrtypesearch(v17, v83, 0);
      v38 = v43;
      v77 = v43;
      if (v43 < 0)
      {
        v41 = 0;
      }

      else
      {
        v44 = &v35[152 * v43];
        v41 = (comparePartitions((v44 + 96), __s) & 2) != 0 && *(v44 + 27) >= v76;
      }

      LoaderRecord = v42;
    }

    v45 = v78;
    if (v41 || v78)
    {
LABEL_69:
      if (!LoaderRecord)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    v46 = *v17;
    v47 = *(*v17 + 5);
    v48 = v47 / v39;
    if (v47 % v39)
    {
      ++v48;
    }

    v49 = *(&v85 + 1) / v39;
    v50 = v48 * v39;
    if (*(&v85 + 1) % v39)
    {
      ++v49;
    }

    *&v85 = v50;
    *(&v85 + 1) = v49 * v39;
    if (HIDWORD(v75) && *(v46 + 7) < HIDWORD(v75))
    {
      v45 = 28;
      v78 = 28;
      if (!LoaderRecord)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    theDict = LoaderRecord;
    MEMORY[0x259C86EE0](&v84);
    if (v38 != 0xFFFF || (v51 = gpmrtypesearch(v17, "Microsoft Reserved", 0), v38 = v51, v77 = v51, v51 != -1))
    {
      v78 = delentry(v17, 96, 0x5Eu, v38, 152);
    }

    v52 = addPartitionRecord(v17, __s, v39, &v77);
    v78 = v52;
    if (v52)
    {
      v45 = v52;
    }

    else
    {
      v53 = *v17;
      v54 = &(*v17)[152 * v77];
      v56 = *(v54 + 232);
      v55 = (v54 + 232);
      if ((v56 & 8) != 0)
      {
        Value = CFDictionaryGetValue(theDict, @"Loader Name");
        if (Value)
        {
          v58 = Value;
        }

        else
        {
          v58 = v34;
        }

        v59 = ResolveLoaderPath(v12, theDict, v58, v79);
        v78 = v59;
        if (!v59)
        {
          v45 = GPMPartitionWrite(v17, v77, v79, v69);
          v78 = v45;
          a7 = v67;
          if (!v45)
          {
            *v55 &= ~8uLL;
          }

          goto LABEL_68;
        }

        v45 = v59;
        if (v59 == -43)
        {
          LoaderRecord = theDict;
          if (*(v53 + 8) == 512)
          {
            v45 = -43;
          }

          else
          {
            v45 = 0;
            v78 = 0;
          }

          a7 = v67;
          if (!theDict)
          {
LABEL_71:
            CFRelease(v34);
            if (v45 != 28)
            {
              v73 = v45;
              if (v45)
              {
                goto LABEL_79;
              }

              goto LABEL_73;
            }

LABEL_72:
            v73 = 0;
LABEL_73:
            v60 = GPTRecordMapSection(v17, 0xFFFFFFFF, &v73);
            if (v73)
            {
              goto LABEL_79;
            }

            v61 = v60;
            if (v60)
            {
              CFArrayAppendValue(a1, v60);
              CFRelease(v61);
            }

            v62 = CFDictionaryGetValue(a2, @"Partitions");
            if (!v62)
            {
              goto LABEL_79;
            }

            v32 = GPTCFCreatePartitions(v61, v62, v12, v63, v14, a4, a7, v69);
            goto LABEL_78;
          }

LABEL_70:
          CFRelease(LoaderRecord);
          v45 = v78;
          goto LABEL_71;
        }
      }

      else
      {
        v45 = 0;
      }

      a7 = v67;
    }

LABEL_68:
    LoaderRecord = theDict;
    goto LABEL_69;
  }

LABEL_78:
  v73 = v32;
LABEL_79:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_83:
  result = v73;
  v65 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t filexml(const void *a1, const __CFString *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v3 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  if (!v3)
  {
    return 4294967246;
  }

  v4 = v3;
  v5 = CFWriteStreamCreateWithFile(0, v3);
  CFRelease(v4);
  if (!v5)
  {
    return 4294967246;
  }

  if (CFWriteStreamOpen(v5))
  {
    if (CFPropertyListWrite(a1, v5, kCFPropertyListXMLFormat_v1_0, 0, 0))
    {
      v6 = 0;
    }

    else
    {
      v6 = 4294967246;
    }
  }

  else
  {
    v6 = 4294967273;
  }

  CFWriteStreamClose(v5);
  CFRelease(v5);
  return v6;
}

double MKMediaGetGeometry(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *a2 = *(a1 + 104);
      v3 = *(a1 + 112);
      *(a2 + 8) = *(a1 + 96);
      *(a2 + 16) = v3;
      *(a2 + 24) = *(a1 + 120);
    }
  }

  return result;
}

Handle gptinit(int *a1)
{
  v2 = NewHandleClear(96);
  v3 = MemError();
  if (v2)
  {
    v4 = *v2;
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
    *(v4 + 1) = v5;
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      disposegpm(v2);
      v2 = 0;
      v3 = 12;
    }
  }

  *a1 = v3;
  return v2;
}

Ptr *InternalNewHandle(size_t a1, int a2)
{
  MemErr = -108;
  v4 = malloc_type_malloc(0x18uLL, 0x1080040BEB90DD3uLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = a1;
    *(v4 + 16) = 0;
    v6 = malloc_type_malloc(a1, 0x9BFE710CuLL);
    *v5 = v6;
    if (v6)
    {
      if (a2)
      {
        bzero(v6, v5[1]);
      }

      MemErr = 0;
    }

    else
    {
      DisposeHandle(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t uuid_LtoB(uint64_t result, uint64_t a2)
{
  *result = bswap32(*a2);
  *(result + 4) = bswap32(*(a2 + 4)) >> 16;
  *(result + 6) = bswap32(*(a2 + 6)) >> 16;
  if (a2 != result)
  {
    *(result + 8) = *(a2 + 8);
    v2 = *(a2 + 10);
    *(result + 14) = *(a2 + 14);
    *(result + 10) = v2;
  }

  return result;
}

uint64_t GPTConvertCreateOptions(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    if (a1)
    {
      v7 = MKCFOptionBit(a1, @"Content Ephermeral", 0x2000);
      v8 = MKCFOptionBit(a1, @"Retain existing content", 4);
      v9 = MKCFOptionBit(a1, @"Write Protect", 0x80000000);
      v10 = MKCFOptionBit(a1, @"Flexible Allocation", 0x10000000);
      v11 = MKCFOptionBit(a1, @"Direct Mode", 0x20000000);
      v12 = MKCFOptionBit(a1, @"No Minimum Size For Loader", 0x800000);
      v4 = v7 | v8 | v9 | v10 | v11 | v12 | MKCFOptionBit(a1, @"Allocate Remaining Space", 0x400000) | v4;
    }

    v5 = 0;
    a1 = a2;
  }

  while ((v6 & 1) != 0);
  return v4;
}

unsigned __int16 *BootAttrSearch(unsigned __int16 *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (*result)
    {
      for (i = result + 18; *i != a2; i += 19)
      {
        if (!--v2)
        {
          return 0;
        }
      }

      return i - 17;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *fetchLoaderRecord(__CFBundle *a1, const void *a2, unsigned int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v30 = 22;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  v12 = a1;
  *(a4 + 144) = 0;
  if (!a1)
  {
    v12 = MKAccessLibrary(0);
    if (!v12)
    {
      v19 = 0;
      if (!a6)
      {
        return v19;
      }

      goto LABEL_29;
    }
  }

  v13 = MKLoadDB(v12, @"inventory", &v30);
  if (!v13)
  {
    v19 = 0;
    if (a1)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = v13;
  v30 = -417;
  Value = CFDictionaryGetValue(v13, @"Loaders");
  if (Value)
  {
    v16 = Value;
    v30 = -415;
    if (a3 >= 2)
    {
      v29 = a5;
      v17 = a3;
      Mutable = CFStringCreateMutable(0, 0);
      CFStringAppendFormat(Mutable, 0, @"%@-%u", a2, v17 << 9);
      v19 = CFDictionaryGetValue(v16, Mutable);
      v20 = Mutable;
      a3 = v17;
      a5 = v29;
      CFRelease(v20);
      if (v19)
      {
        goto LABEL_8;
      }
    }

    v19 = CFDictionaryGetValue(v16, a2);
    if (v19)
    {
LABEL_8:
      v21 = GPTUpdateLoaderRecord(v19, a4);
      v30 = v21;
      if (a5 && !v21)
      {
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 8) = *(a4 + 120);
        v22 = CFDictionaryGetValue(v19, @"Loader Present");
        if (v22)
        {
          *a5 = CFBooleanGetValue(v22);
        }

        v23 = CFDictionaryGetValue(v19, @"Reserve Space");
        if (v23)
        {
          *(a5 + 1) = CFBooleanGetValue(v23);
        }

        v24 = CFDictionaryGetValue(v19, @"Foreign Payloads");
        if (v24)
        {
          *(a5 + 2) = CFBooleanGetValue(v24);
        }

        v25 = CFDictionaryGetValue(v19, @"Minimum Host Size");
        if (v25)
        {
          CFNumberGetValue(v25, kCFNumberSInt32Type, (a5 + 4));
        }

        v26 = CFDictionaryGetValue(v19, @"Minimum Partition Size");
        if (v26)
        {
          CFNumberGetValue(v26, kCFNumberSInt64Type, (a5 + 8));
        }

        if (a3)
        {
          *(a5 + 4) /= a3;
          *(a5 + 8) /= a3;
          v27 = *(a4 + 120) / a3;
          *(a4 + 112) /= a3;
          *(a4 + 120) = v27;
        }
      }

      CFRetain(v19);
    }
  }

  else
  {
    v19 = 0;
  }

  CFRelease(v14);
  if (!a1)
  {
LABEL_27:
    CFRelease(v12);
  }

LABEL_28:
  if (a6)
  {
LABEL_29:
    *a6 = v30;
  }

  return v19;
}

uint64_t GPTUpdateLoaderRecord(const __CFDictionary *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, @"Partition Type");
  if (Value && CFStringGetCString(Value, buffer, 80, 0x8000100u))
  {
    GPTuuidType2HumanExtended((a2 + 48), buffer, 48, 0, 0);
    v5 = CFDictionaryGetValue(a1, @"Partition Name");
    if (v5)
    {
      CFStringGetCString(v5, a2, 48, 0x8000100u);
    }

    result = CFDictionaryGetValue(a1, @"Partition Size");
    if (result)
    {
      CFNumberGetValue(result, kCFNumberSInt64Type, (a2 + 120));
      result = 0;
    }
  }

  else
  {
    result = 22;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gpmrtypesearch(uint64_t a1, char *a2, int a3)
{
  if (!a1)
  {
    return -1;
  }

  v3 = a3;
  if (a3 < 0)
  {
    return -1;
  }

  v4 = *(*a1 + 94);
  if (v4 <= a3)
  {
    return -1;
  }

  else
  {
    for (i = (*a1 + 152 * a3 + 144); strcasecmp(i, a2); i += 152)
    {
      if (v4 <= ++v3)
      {
        return -1;
      }
    }
  }

  return v3;
}

uint64_t addPartitionRecord(uint64_t *a1, uint64_t a2, unsigned int a3, __int16 *a4)
{
  v7 = *(a2 + 112);
  if (a3)
  {
    v8 = v7 / a3;
    if (v7 % a3)
    {
      ++v8;
    }

    v7 = v8 * a3;
    *(a2 + 112) = v7;
  }

  v9 = *(a2 + 120);
  v19[0] = v7;
  v19[1] = v9;
  v10 = srequest(a1, v19, a3, 0, a2, 0, 0);
  v11 = *(a2 + 112);
  if (v11 == -1 || (v12 = v10, v7) && v11 != v7)
  {
    v13 = -1;
    result = 4294961952;
    if (!a4)
    {
      return result;
    }

    goto LABEL_9;
  }

  *(a2 + 136) |= 9uLL;
  *(a2 + 144) = v10;
  v15 = *(*a1 + 94);
  if (*(*a1 + 94))
  {
    v16 = 0;
    v17 = *a1 + 96;
    v18 = v10;
    do
    {
      if (*(v17 + 152 * v16 + 144) == v18)
      {
        v16 = 0;
        *(a2 + 144) = ++v18;
      }

      else
      {
        ++v16;
      }
    }

    while (v16 < v15);
  }

  result = addentry(a1, a2, 0x60uLL, 0x5Eu, v10, 0x98u);
  if (result)
  {
    v13 = -1;
  }

  else
  {
    v13 = v12;
  }

  if (a4)
  {
LABEL_9:
    *a4 = v13;
  }

  return result;
}

uint64_t srequest(uint64_t *a1, uint64_t *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, void, uint64_t), uint64_t a7)
{
  *(a5 + 112) = xmmword_2586A07E0;
  v10 = *a1;
  if (a3 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3;
  }

  v46 = *(v10 + 32);
  v12 = *a2;
  if (*a2)
  {
    v13 = *(v10 + 40);
    if (v12 < v13 || (v14 = *(v10 + 56) + v13, v12 > v14))
    {
      LOWORD(v15) = 0;
      return v15;
    }

    v17 = (a2 + 1);
    v16 = a2[1];
    if (v16)
    {
      goto LABEL_24;
    }

    if (v12 >= 1)
    {
      v45 = a5;
      v16 = 0;
      goto LABEL_25;
    }

LABEL_10:
    v15 = *(v10 + 94);
    if (*(v10 + 94))
    {
      v18 = v10 + 152 * (v15 - 1);
      v13 = *(v18 + 216) + *(v18 + 208);
      if ((a4 & 0x20000000) == 0)
      {
        if (a6)
        {
          v13 += a6(v18 + 96, (v46 >> 9), v11, a4, a7);
        }
      }
    }

    v19 = v13 / v11;
    if (v13 % v11)
    {
      ++v19;
    }

    v20 = v19 * v11;
    if ((a4 & 0x1000000) != 0)
    {
      v21 = v11;
    }

    else
    {
      v21 = 0;
    }

    v22 = v20 - v13;
    if (!v22)
    {
      v22 = v21;
    }

    v23 = v22 + v13;
    v24 = v14 / v11 * v11;
    v25 = v24 <= v23;
    v26 = v24 - v23;
    if (!v25)
    {
      *(a5 + 112) = v23;
      *(a5 + 120) = v26;
    }

    return v15;
  }

  v17 = (a2 + 1);
  v16 = a2[1];
  v13 = *(v10 + 40);
  if (!v16)
  {
    v14 = *(v10 + 56) + v13;
    goto LABEL_10;
  }

LABEL_24:
  v45 = a5;
LABEL_25:
  v15 = 0;
  v27 = v16 / v11;
  if (v16 % v11)
  {
    ++v27;
  }

  v28 = v27 * v11;
  if ((a4 & 0x1000000) != 0)
  {
    v29 = v11;
  }

  else
  {
    v29 = 0;
  }

  v30 = v28 - v16;
  if (!v30)
  {
    v30 = v29;
  }

  *v17 = v30 + v16;
  v32 = (a4 & 0x20000000) == 0 && a6 != 0;
  for (i = (v10 + 216); ; i += 19)
  {
    v34 = *(v10 + 94);
    if (v15 >= v34)
    {
      v35 = *(v10 + 56) + *(v10 + 40);
    }

    else
    {
      v35 = *(i - 1);
    }

    v36 = v13 / v11;
    if (v13 % v11)
    {
      ++v36;
    }

    v37 = v36 * v11 - v13;
    if (!v37)
    {
      v37 = v29;
    }

    v38 = v37 + v13;
    if (v35 <= v38)
    {
      goto LABEL_58;
    }

    v39 = *a2;
    if (*a2)
    {
      if (v39 > v35)
      {
        goto LABEL_58;
      }

      if (v39 < v38)
      {
        if ((a4 & 0x10000000) == 0)
        {
          goto LABEL_58;
        }

        *a2 = v38;
        v39 = v38;
      }

      v40 = v39 / v11;
      if (v39 % v11)
      {
        ++v40;
      }

      v38 = v40 * v11;
    }

    v41 = v35 - v38;
    v42 = *v17;
    if (*v17 - 1 < v35 - v38)
    {
      break;
    }

    if (!v42 || v41 / v42 >= 0.85)
    {
      v43 = v41 / v11;
      goto LABEL_64;
    }

LABEL_58:
    if (v15 >= v34)
    {
      return v15;
    }

    v13 = *i + v35;
    if (v32)
    {
      v13 += a6((i - 15), (v46 >> 9), v11, a4, a7);
    }

    ++v15;
  }

  v43 = v42 / v11;
LABEL_64:
  *(v45 + 112) = v38;
  *(v45 + 120) = v43 * v11;
  return v15;
}

uint64_t addentry(const void **a1, const void *a2, size_t size, unsigned int a4, unsigned int a5, unsigned __int16 a6)
{
  if (a1)
  {
    v9 = size;
    v12 = *a1;
    if (!v12)
    {
      v12 = malloc_type_calloc(1uLL, size, 0xF95A9D9FuLL);
      *a1 = v12;
      if (!v12)
      {
        return *__error();
      }
    }

    v13 = a6 & 0xFFFE;
    v14 = *&v12[a4];
    if (v14 >= a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = *&v12[a4];
    }

    v16 = v9 + v15 * v13;
    v17 = moveblockextended(a1, v16, v13, 0, v9 + v14 * v13);
    if (v17)
    {
      v18 = v17 << 16;
      if (v17 << 16 == -65536)
      {
        return *__error();
      }
    }

    else
    {
      memmove(*a1 + v16, a2, v13);
      v18 = 0;
      *(*a1 + a4) = v14 + 1;
    }
  }

  else
  {
    v18 = 1441792;
  }

  return (v18 >> 16);
}

uint64_t moveblockextended(const void **a1, unsigned int a2, int a3, int a4, unsigned int a5)
{
  if (!a1)
  {
    return 22;
  }

  if (!a3)
  {
    return 0;
  }

  v10 = malloc_size(*a1);
  if (v10 >= a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = v10;
  }

  if (a5)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (a3 < 0)
  {
    if (v12 - a2 + a3)
    {
      memmove(*a1 + a2, *a1 + a2 - a3, v12 - a2 + a3);
    }

    v17 = reallocf(*a1, v12 + a3);
    if (v17)
    {
      v18 = v17;
      result = 0;
      *a1 = v18;
      return result;
    }
  }

  else
  {
    v13 = reallocf(*a1, v12 + a3);
    if (v13)
    {
      *a1 = v13;
      v14 = v12 - a2;
      if (v12 != a2)
      {
        v15 = &v13[a2];
        memmove(&v15[a3], v15, v14);
        if (a4)
        {
          bzero(v15, v14);
        }
      }

      return 0;
    }
  }

  return *__error();
}

uint64_t ResolveLoaderPath(__CFBundle *a1, CFDictionaryRef theDict, const __CFString *a3, char *a4)
{
  Value = CFDictionaryGetValue(theDict, @"Loader Path");
  if (Value)
  {
    if (CFStringGetCString(Value, a4, 1024, 0))
    {
      return 4294967253;
    }

    else
    {
      return 22;
    }
  }

  else
  {
    v9 = CFBundleCopyResourceURL(a1, a3, @"loader", 0);
    v8 = 4294967253;
    if (v9)
    {
      v10 = v9;
      v11 = CFURLGetFileSystemRepresentation(v9, 1u, a4, 1024);
      CFRelease(v10);
      if (v11)
      {
        return 0;
      }

      else
      {
        return 4294967253;
      }
    }
  }

  return v8;
}

uint64_t GPMPartitionWrite(uint64_t *a1, int a2, const char *a3, uint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v5 = *(*a1 + 32);
  if (!v5)
  {
    return 22;
  }

  v6 = (32 * v5);
  if (!v6)
  {
    return 22;
  }

  v10 = malloc_type_malloc((32 * v5), 0xBDEE0A5AuLL);
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  v26 = 0;
  if (a2 < 0 || (v12 = *a1, a2 > *(v12 + 94)))
  {
    free(v10);
    return 22;
  }

  v13 = gzopen(a3, "rb");
  if (!v13)
  {
    free(v11);
    return *__error();
  }

  v14 = v13;
  v15 = v12 + 152 * a2;
  v16 = *(v15 + 208);
  v17 = *(v15 + 216);
  v18 = gzread(v13, v11, 32 * v5);
  if (v18)
  {
    v19 = 0;
    v20 = v17 + v16;
    while (1)
    {
      v21 = v18;
      if (v6 > v18)
      {
        bzero(&v11[v18], v6 - v18);
      }

      if (v21 % v5)
      {
        v22 = v21 / v5 + 1;
      }

      else
      {
        v22 = v21 / v5;
      }

      if (v22 + v19 > v20)
      {
        gzclose(v14);
        free(v11);
        return 1;
      }

      v23 = MKMediaWriteBlocks(a4, *(v15 + 208) + v19, v22, v5, v11, &v26);
      if (v23)
      {
        break;
      }

      v19 += v26;
      v18 = gzread(v14, v11, 32 * v5);
      if (!v18)
      {
        goto LABEL_18;
      }
    }

    v24 = v23;
    gzclose(v14);
    free(v11);
    if (v24 == -1)
    {
      return *__error();
    }
  }

  else
  {
LABEL_18:
    v24 = gzclose(v14);
    free(v11);
  }

  return v24;
}

uint64_t MKMediaWriteBlocks(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, unint64_t *a6)
{
  v7 = a4 >> 9;
  v9 = 0;
  result = MKMediaWriteSectors(a1, v7 * a2, v7 * a3, a5, &v9);
  if (a6)
  {
    *a6 = v9 / v7;
  }

  return result;
}

uint64_t MKMediaWriteSectors(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, void *a5)
{
  v10 = 0;
  if (!a1)
  {
    return 22;
  }

  if (a5)
  {
    *a5 = 0;
  }

  result = 22;
  if (a4)
  {
    v8 = *(a1 + 96);
    if (v8 > a2 && a3 + a2 <= v8)
    {
      if (*(a1 + 120))
      {
        if (a3)
        {
          result = _MKMediaCommonReadWriteSectors(a1, a2, a3, a4, &v10, 1);
          if (a5)
          {
            *a5 = v10;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 19;
      }
    }
  }

  return result;
}

uint64_t _MKMediaCommonReadWriteSectors(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, void *a5, int a6)
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v10 = *(a1 + 136);
  v11 = *(a1 + 104);
  _MKMediaAlignmentAnalysis(a2, a3, v11, &v30);
  if (v31 | v33 || v32 > *(a1 + 112))
  {
    result = pthread_rwlock_wrlock((a1 + 144));
    if (result)
    {
LABEL_4:
      v13 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    result = pthread_rwlock_rdlock((a1 + 144));
    if (result)
    {
      goto LABEL_4;
    }
  }

  v14 = v11 >> 9;
  if (!v31)
  {
    v28 = v14;
    v13 = 0;
    goto LABEL_15;
  }

  v29 = 0;
  Buffer = _MKMediaBufferPoolGetBuffer(v10);
  v16 = (*(a1 + 72))(*(a1 + 88), *(&v30 + 1), v14, Buffer, &v29);
  if (!v16)
  {
    v13 = v31;
    v18 = v31 << 9;
    if (a6)
    {
      memcpy((Buffer + ((v30 - *(&v30 + 1)) << 9)), a4, v31 << 9);
      v16 = (*(a1 + 80))(*(a1 + 88), *(&v30 + 1), v14, Buffer, &v29);
      if (v16)
      {
        goto LABEL_8;
      }

      v13 = v31;
    }

    else
    {
      memcpy(a4, (Buffer + ((v30 - *(&v30 + 1)) << 9)), v31 << 9);
    }

    v28 = v14;
    a4 += v18;
    _MKMediaBufferPoolReturnBuffer(*(a1 + 136), Buffer);
LABEL_15:
    v19 = v32;
    if (v32)
    {
      v20 = *(&v31 + 1);
      v29 = 0;
      v27 = a6;
      if (a6)
      {
        v21 = 80;
      }

      else
      {
        v21 = 72;
      }

      do
      {
        if (v19 >= *(a1 + 112))
        {
          v22 = *(a1 + 112);
        }

        else
        {
          v22 = v19;
        }

        v17 = (*(a1 + v21))(*(a1 + 88), v20, v22, a4, &v29);
        if (v17)
        {
          break;
        }

        v13 += v22;
        v20 += v22;
        a4 += 512 * v22;
        v19 -= v22;
      }

      while (v19);
      a6 = v27;
    }

    else
    {
      v17 = 0;
    }

    if (!v33)
    {
      goto LABEL_35;
    }

    v29 = 0;
    v23 = _MKMediaBufferPoolGetBuffer(v10);
    v24 = (*(a1 + 72))(*(a1 + 88), *(&v32 + 1), v28, v23, &v29);
    if (v24)
    {
      goto LABEL_28;
    }

    v25 = v33 << 9;
    if (a6)
    {
      memcpy(v23, a4, v25);
      v24 = (*(a1 + 80))(*(a1 + 88), *(&v32 + 1), v28, v23, &v29);
      if (v24)
      {
LABEL_28:
        v17 = v24;
LABEL_34:
        _MKMediaBufferPoolReturnBuffer(v10, v23);
        goto LABEL_35;
      }
    }

    else
    {
      memcpy(a4, v23, v25);
    }

    v17 = 0;
    v13 += v33;
    v10 = *(a1 + 136);
    goto LABEL_34;
  }

LABEL_8:
  v17 = v16;
  _MKMediaBufferPoolReturnBuffer(v10, Buffer);
  v13 = 0;
LABEL_35:
  LODWORD(result) = pthread_rwlock_unlock((a1 + 144));
  if (result)
  {
    v26 = v17 == 0;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    result = result;
  }

  else
  {
    result = v17;
  }

LABEL_41:
  *a5 = v13;
  return result;
}

unint64_t _MKMediaAlignmentAnalysis(unint64_t result, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a3 >> 9;
  *(a4 + 48) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v5 = (v4 - result % v4) % v4;
  *a4 = result;
  *(a4 + 8) = result / v4 * v4;
  v6 = a2 - v5;
  if (a2 > v5)
  {
    v7 = v6 / v4 * v4;
    *(a4 + 24) = v5 + result;
    *(a4 + 32) = v7;
    *(a4 + 40) = v7 + v5 + result;
    *(a4 + 48) = v6 - v7;
    a2 = v5;
  }

  *(a4 + 16) = a2;
  return result;
}

uint64_t _MKMediaDeviceWriteSectors(uint64_t a1, uint64_t a2, uint64_t a3, void *__buf, void *a5)
{
  v6 = a3;
  if ((pwrite(*(a1 + 4), __buf, a3 << 9, a2 << 9) & 0x80000000) != 0)
  {
    v6 = 0;
    result = *__error();
  }

  else
  {
    result = 0;
  }

  *a5 = v6;
  return result;
}

__CFDictionary *GPTRecordMapSection(const UInt8 *a1, unsigned int a2, int *a3)
{
  v4 = *a1;
  if (!*a1)
  {
    v8 = 0;
    goto LABEL_6;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = Mutable;
  if (!Mutable)
  {
LABEL_6:
    v10 = -1;
    goto LABEL_7;
  }

  CFDictionarySetValue(Mutable, @"ID", @"MAP");
  v9 = CFDictionarySetUUID(v8, @"GUID", (v4 + 16));
  if (v9)
  {
    v10 = v9;
    goto LABEL_7;
  }

  v12 = CFNumberCreate(0, kCFNumberSInt32Type, (v4 + 88));
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = v12;
  CFDictionarySetValue(v8, @"Revision", v12);
  CFRelease(v13);
  v14 = *(v4 + 32) >> 9;
  valuePtr = *(v4 + 40) * v14;
  v15 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = v15;
  CFDictionarySetValue(v8, @"Offset", v15);
  CFRelease(v16);
  MKCFRecordSectionSize(v8, *(v4 + 40) * v14, *(v4 + 48) * v14, *(v4 + 56) * v14, *(v4 + 64) * v14, *(v4 + 32));
  v17 = *(v4 + 80);
  v18 = MEMORY[0x277CBED28];
  if (v17)
  {
    CFDictionarySetValue(v8, @"Legacy", *MEMORY[0x277CBED28]);
    v17 = *(v4 + 80);
    if ((v17 & 8) == 0)
    {
LABEL_14:
      if ((v17 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_32;
    }
  }

  else if ((v17 & 8) == 0)
  {
    goto LABEL_14;
  }

  CFDictionarySetValue(v8, @"MBR Extension Detect", *v18);
  v17 = *(v4 + 80);
  if ((v17 & 4) == 0)
  {
LABEL_15:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_32:
  CFDictionarySetValue(v8, @"MBR Mutation Detect", *v18);
  if ((*(v4 + 80) & 0x10) != 0)
  {
LABEL_16:
    CFDictionarySetValue(v8, @"MBR NTFS Prioritized", *v18);
  }

LABEL_17:
  v19 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v19)
  {
LABEL_29:
    v10 = 0;
    goto LABEL_7;
  }

  v20 = v19;
  CFDictionarySetValue(v8, @"Partitions", v19);
  CFRelease(v20);
  if (!*(v4 + 94) || (v21 = *a1, !*(*a1 + 94)))
  {
LABEL_28:
    mkcfstoreref(v8, a1);
    goto LABEL_29;
  }

  v22 = 0;
  v28 = *(v4 + 32);
  v23 = v21 + 96;
  while (1)
  {
    v24 = lookupDESC((v23 + 48));
    if (v24)
    {
      v25 = v24[1];
    }

    else
    {
      LOBYTE(v25) = 7;
    }

    if ((a2 >> v25))
    {
      break;
    }

LABEL_27:
    ++v22;
    v23 += 152;
    if (v22 >= *(v21 + 94))
    {
      goto LABEL_28;
    }
  }

  v26 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v26)
  {
    v27 = v26;
    v10 = GPTUpdatePartitionDictionary(v26, v23, v28);
    CFArrayAppendValue(v20, v27);
    CFRelease(v27);
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v10 = 22;
LABEL_7:
  if (a3)
  {
    *a3 = v10;
  }

  return v8;
}

void MKCFRecordSectionSize(__CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v22 = a3;
  valuePtr = a2;
  v20 = a5;
  v21 = a4;
  v19 = a6;
  if (a1)
  {
    v9 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v9)
    {
      v10 = v9;
      CFDictionarySetValue(a1, @"Media Offset", v9);
      CFRelease(v10);
    }

    v11 = CFNumberCreate(0, kCFNumberSInt64Type, &v21);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(a1, @"Media Block Count", v11);
      CFRelease(v12);
    }

    v13 = CFNumberCreate(0, kCFNumberSInt64Type, &v20);
    if (v13)
    {
      v14 = v13;
      CFDictionarySetValue(a1, @"Section Block Count", v13);
      CFRelease(v14);
    }

    if (a3)
    {
      v15 = CFNumberCreate(0, kCFNumberSInt64Type, &v22);
      if (v15)
      {
        v16 = v15;
        CFDictionarySetValue(a1, @"Overhead", v15);
        CFRelease(v16);
      }
    }

    if (a6 >= 0x200)
    {
      v17 = CFNumberCreate(0, kCFNumberSInt32Type, &v19);
      if (v17)
      {
        v18 = v17;
        CFDictionarySetValue(a1, @"Media Block Size", v17);
        CFRelease(v18);
      }
    }
  }
}

uint64_t GPTUpdatePartitionDictionary(__CFDictionary *a1, uint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 22;
  }

  result = CFDictionarySetUUID(a1, @"GUID", (a2 + 96));
  if (!result)
  {
    valuePtr = 0;
    v7 = (a2 + 136);
    if ((*(a2 + 136) & 1) == 0)
    {
      valuePtr = *(a2 + 144) + 1;
      v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(a1, @"Partition ID", v8);
        CFRelease(v9);
      }
    }

    v10 = strlen((a2 + 48));
    if (v10)
    {
      v11 = CFStringCreateWithBytes(0, (a2 + 48), v10, 0x8000100u, 1u);
      if (v11)
      {
        v12 = v11;
        CFDictionarySetValue(a1, @"Type", v11);
        CFRelease(v12);
      }
    }

    v13 = strlen(a2);
    if (v13)
    {
      v14 = CFStringCreateWithBytes(0, a2, v13, 0x8000100u, 1u);
      if (v14)
      {
        v15 = v14;
        CFDictionarySetValue(a1, @"Name", v14);
        CFRelease(v15);
      }
    }

    v16 = *(a2 + 112);
    v17 = *(a2 + 120);
    v29 = v17;
    v30 = v16;
    if (a3 >= 0x400)
    {
      v18 = a3 >> 9;
      v16 *= v18;
      v17 *= v18;
      v29 = v17;
      v30 = v16;
    }

    if (v16)
    {
      v19 = CFNumberCreate(0, kCFNumberSInt64Type, &v30);
      if (v19)
      {
        v20 = v19;
        CFDictionarySetValue(a1, @"Offset", v19);
        CFRelease(v20);
      }
    }

    if (v17)
    {
      v21 = CFNumberCreate(0, kCFNumberSInt64Type, &v29);
      if (v21)
      {
        v22 = v21;
        CFDictionarySetValue(a1, @"Size", v21);
        CFRelease(v22);
      }
    }

    v24 = *(a2 + 128);
    v23 = (a2 + 128);
    if (v24)
    {
      v25 = CFNumberCreate(0, kCFNumberSInt64Type, v23);
      if (v25)
      {
        v26 = v25;
        CFDictionarySetValue(a1, @"Status", v25);
        CFRelease(v26);
      }
    }

    if (*v7)
    {
      result = CFNumberCreate(0, kCFNumberSInt64Type, v7);
      if (!result)
      {
        return result;
      }

      v27 = result;
      CFDictionarySetValue(a1, @"Flags", result);
      CFRelease(v27);
    }

    return 0;
  }

  return result;
}

void mkcfstoreref(__CFDictionary *a1, const UInt8 *a2)
{
  v3 = CFDataCreateWithBytesNoCopy(0, a2, 8, *MEMORY[0x277CBED00]);
  if (v3)
  {
    v4 = v3;
    CFDictionarySetValue(a1, @"_Reference", v3);

    CFRelease(v4);
  }
}

uint64_t GPTCFCreatePartitions(const __CFDictionary *a1, CFArrayRef theArray, __CFBundle *a3, uint64_t a4, const __CFDictionary *a5, unsigned int a6, const __CFDictionary *a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294967246;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 0;
  }

  v16 = 0;
  v17 = Count;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
    if (!ValueAtIndex)
    {
      break;
    }

    result = GPTCFCreatePartition(a1, ValueAtIndex, a3, v19, a5, a6, a7, a8);
    if (result)
    {
      return result;
    }

    if (++v16 >= v17)
    {
      return 0;
    }
  }

  return 4294966881;
}

uint64_t GPTCFCreatePartition(const __CFDictionary *a1, const __CFDictionary *a2, __CFBundle *a3, uint64_t a4, const __CFDictionary *a5, unsigned int a6, const __CFDictionary *a7, uint64_t a8)
{
  v51 = *MEMORY[0x277D85DE8];
  valuePtr = a6;
  result = 22;
  if (a1 && a2)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    memset(v46, 0, sizeof(v46));
    memset(v45, 0, sizeof(v45));
    v15 = mkcfrecoverref(a1);
    if (!v15)
    {
      goto LABEL_51;
    }

    v16 = v15;
    v17 = *v15;
    if (CFDictionaryGetUUID(a2, @"GUID", &v47) || uuid_is_null(&v47))
    {
      MEMORY[0x259C86EE0](&v47);
    }

    result = GPTUpdatePartitionRecord(a2, v45, *(v17 + 32));
    if (!result)
    {
      result = strcasecmp(v46, "Apple_Free");
      if (result)
      {
        Value = CFDictionaryGetValue(a2, @"Options");
        Options = GPTConvertCreateOptions(a7, Value);
        if ((Options & 0x20000000) == 0 && (!strcasecmp(v46, "Microsoft Basic Data") || !strcasecmp(v46, "MS-DOS") || !strcasecmp(v46, "Windows_NTFS") || !strcasecmp(v46, "DOS_FAT_32") || !strcasecmp(v46, "Windows_FAT_32")))
        {
          valuePtr = 2048;
        }

        v20 = CFDictionaryGetValue(a2, @"Alignment");
        if (v20)
        {
          CFNumberGetValue(v20, kCFNumberSInt32Type, &valuePtr);
        }

        v21 = CFDictionaryGetValue(a1, @"Partitions");
        v22 = valuePtr;
        v42[0] = a3;
        v42[1] = a5;
        v23 = *(*v16 + 32);
        if ((Options & 4) == 0)
        {
          Options |= 0x202000u;
        }

        if (v23 >= 0x400)
        {
          v22 = valuePtr / (v23 >> 9);
        }

        v24 = v48;
        if (v22 <= 1)
        {
          v27 = *(&v48 + 1);
        }

        else
        {
          if (v48)
          {
            v25 = v48 % v22 ? v48 / v22 + 1 : v48 / v22;
            v26 = v25 * v22 - v48;
            v24 = v26 + v48;
            *&v48 = v26 + v48;
          }

          else
          {
            v26 = 0;
          }

          if (*(&v48 + 1))
          {
            v28 = *(&v48 + 1) >= v26;
            v29 = *(&v48 + 1) - v26;
            if (v29 == 0 || !v28)
            {
              result = 4294961955;
              goto LABEL_52;
            }

            v27 = v29 / v22 * v22;
            *(&v48 + 1) = v27;
          }

          else
          {
            v27 = 0;
          }
        }

        v43[0] = v24;
        v43[1] = v27;
        v30 = srequest(v16, v43, v22, Options, v45, loaderReserve, v42);
        v44 = v30;
        if (v48 == -1)
        {
          result = 4294961952;
          goto LABEL_52;
        }

        v31 = v30;
        v32 = 9;
        if ((Options & 4) != 0)
        {
          v32 = 1;
        }

        *(&v49 + 1) |= v32;
        v33 = *v16;
        LOWORD(v50) = v30;
        v34 = *(v33 + 94);
        if (*(v33 + 94))
        {
          v35 = 0;
          v36 = v33 + 96;
          v37 = v30;
          do
          {
            if (*(v36 + 152 * v35 + 144) == v37)
            {
              v35 = 0;
              LOWORD(v50) = ++v37;
            }

            else
            {
              ++v35;
            }
          }

          while (v35 < v34);
        }

        result = addentry(v16, v45, 0x60uLL, 0x5Eu, v30, 0x98u);
        if (!result)
        {
          if ((Options & 0x20000000) != 0 || (result = setupPostloader(v16, &v44, a3, a5, v22, 0, 1u, Options, 0, a8), v31 = v44, result == 28) || !result)
          {
            v38 = uuid2cfstr(&v47);
            Mutable = CFArrayDictionarySearchWithIndexOptions(v21, @"GUID", v38, 0, 0);
            CFRelease(v38);
            if (Mutable || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), CFArrayAppendValue(v21, Mutable), CFRelease(Mutable), Mutable))
            {
              result = GPTUpdatePartitionDictionary(Mutable, *v16 + 152 * v31 + 96, *(*v16 + 32));
              goto LABEL_52;
            }

LABEL_51:
            result = 22;
          }
        }
      }
    }
  }

LABEL_52:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

const UInt8 *mkcfrecoverref(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"_Reference");
  if (result)
  {

    return CFDataGetBytePtr(result);
  }

  return result;
}

uint64_t CFDictionaryGetUUID(const __CFDictionary *a1, const void *a2, unsigned __int8 *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 2;
  }

  return cfstr2uuid(a3, Value);
}

uint64_t cfstr2uuid(unsigned __int8 *a1, const __CFString *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    uuid_copy(a1, NaNuuid);
    goto LABEL_5;
  }

  if (CFStringGetCString(a2, buffer, 38, 0))
  {
LABEL_5:
    result = uuid_parse(buffer, a1);
    goto LABEL_6;
  }

  result = 22;
LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GPTUpdatePartitionRecord(const __CFDictionary *a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, @"Type");
  if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFStringGetTypeID()) && (v21 = 0, CFStringGetCString(v7, buffer, 80, 0x8000100u)))
  {
    GPTuuidType2HumanExtended((a2 + 48), buffer, 48, 0, 0);
    v9 = CFDictionaryGetValue(a1, @"Name");
    if (v9)
    {
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      CFStringGetCString(v9, a2, 48, 0x8000100u);
    }

    v10 = CFDictionaryGetValue(a1, @"Offset");
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberSInt64Type, (a2 + 112));
      if ((a3 & 0x1FFFC00) != 0)
      {
        v11 = *(a2 + 112);
        v12 = (a3 >> 9);
        if (v11 % v12)
        {
          v13 = v11 / v12 + 1;
        }

        else
        {
          v13 = v11 / v12;
        }

        *(a2 + 112) = v13;
      }
    }

    v14 = CFDictionaryGetValue(a1, @"Size");
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberSInt64Type, (a2 + 120));
      if ((a3 & 0x1FFFC00) != 0)
      {
        v15 = *(a2 + 120);
        v16 = (a3 >> 9);
        if (v15 % v16)
        {
          v17 = v15 / v16 + 1;
        }

        else
        {
          v17 = v15 / v16;
        }

        *(a2 + 120) = v17;
      }
    }

    v18 = CFDictionaryGetValue(a1, @"Status");
    if (v18)
    {
      CFNumberGetValue(v18, kCFNumberSInt64Type, &v21);
      *(a2 + 134) = HIWORD(v21);
    }

    result = CFDictionaryGetValue(a1, @"Flags");
    if (result)
    {
      CFNumberGetValue(result, kCFNumberSInt64Type, (a2 + 136));
      result = 0;
    }
  }

  else
  {
    result = 22;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t loaderReserve(uint64_t a1, unsigned int a2, unsigned int a3, int a4, __CFBundle **a5)
{
  v5 = 0;
  v29 = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  v23[1] = 0;
  if (a1 && a5)
  {
    if (*a5 && a5[1])
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      memset(v25, 0, sizeof(v25));
      memset(v22, 0, 154);
      v11 = CFStringCreateWithCString(0, (a1 + 48), 0);
      v12 = MKLookupSchemeFormat(a5[1], @"GPT", v11, 1, v22);
      v24 = v12;
      CFRelease(v11);
      v5 = 0;
      if (!v12 && LOWORD(v22[0]))
      {
        v13 = 0;
        v5 = 0;
        v14 = &v22[2] + 4;
        do
        {
          if (*v14 == 6)
          {
            v15 = CFStringCreateWithCString(0, v14 - 34, 0);
            if (v15)
            {
              v16 = v15;
              LoaderRecord = fetchLoaderRecord(*a5, v15, a2, v25, v23, &v24);
              CFRelease(v16);
              if (!v24)
              {
                if (LoaderRecord)
                {
                  CFRelease(LoaderRecord);
                }

                if ((a4 & 0x800000) == 0 && *(a1 + 120) >= HIDWORD(v23[0]) && BYTE1(v23[0]))
                {
                  v18 = *(&v26 + 1);
                  if (a3)
                  {
                    if (*(&v26 + 1) % a3)
                    {
                      v19 = *(&v26 + 1) / a3 + 1;
                    }

                    else
                    {
                      v19 = *(&v26 + 1) / a3;
                    }

                    v18 = v19 * a3;
                    *(&v26 + 1) = v18;
                  }

                  v5 += v18;
                }
              }
            }
          }

          ++v13;
          v14 += 38;
        }

        while (v13 < LOWORD(v22[0]));
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t setupPostloader(uint64_t *a1, __int16 *a2, __CFBundle *a3, const __CFDictionary *a4, unsigned int a5, int64_t a6, unsigned __int8 a7, int a8, uint64_t a9, uint64_t a10)
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v33 = *a2;
  if (a3)
  {
    v16 = *a1 + 152 * v11;
    v17 = CFStringCreateWithCString(0, (v16 + 144), 0);
    if (v17)
    {
      v18 = v17;
      memset(v32, 0, sizeof(v32));
      v19 = MKLookupSchemeFormat(a4, @"GPT", v17, 1, v32);
      CFRelease(v18);
      if (v19)
      {
        v20 = 1;
      }

      else
      {
        v20 = *v32 == 0;
      }

      if (!v20)
      {
        v21 = 0;
        *uu1 = *(v16 + 192);
        v22 = &v32[2];
        while (1)
        {
          v23 = CFStringCreateWithCString(0, v22, 0);
          if (!v23)
          {
            goto LABEL_15;
          }

          v24 = v23;
          v25 = gpmrsearch(a1, uu1, &v33);
          v26 = *(v22 + 17);
          if (v26 == 6)
          {
            goto LABEL_12;
          }

          v19 = v25;
          if (v26 != 5)
          {
            break;
          }

LABEL_13:
          CFRelease(v24);
          if (v19)
          {
            goto LABEL_17;
          }

          ++v21;
          v22 += 38;
          if (v21 >= *v32)
          {
            goto LABEL_15;
          }
        }

        if (v26 != 1)
        {
          CFRelease(v24);
          v19 = 4294967292;
          goto LABEL_17;
        }

LABEL_12:
        v19 = mediaLoaderSupport(a3, v24, a1, uu1, a10, v26, a5, a8, a6, a7, a9, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v19 = 22;
    }
  }

  else
  {
LABEL_15:
    v19 = 0;
  }

LABEL_17:
  *a2 = v33;
  v27 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t gpmrsearch(uint64_t *a1, unsigned __int8 *uu1, _WORD *a3)
{
  *a3 = 0x8000;
  if (!a1)
  {
    return 22;
  }

  v3 = *a1;
  if (!*(*a1 + 94))
  {
    return 4294961953;
  }

  v6 = 0;
  for (i = (v3 + 192); ; i += 152)
  {
    result = uuid_compare(uu1, i);
    if (!result)
    {
      break;
    }

    if (++v6 >= *(v3 + 94))
    {
      return 4294961953;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t comparePartitions(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = strncasecmp(a1, __s, v4) == 0;
  v6 = v5 | (2 * (strcasecmp((a1 + 48), __s + 48) == 0));
  v7 = *(a1 + 120);
  v8 = *(__s + 15);
  v9 = v7 == v8;
  v10 = v7 >= v8;
  v11 = v9;
  return v6 | (4 * v11) | (32 * v10);
}

uint64_t mediaLoaderSupport(__CFBundle *a1, const __CFString *a2, uint64_t *a3, unsigned __int8 *a4, uint64_t a5, int a6, unsigned int a7, int a8, int64_t a9, unsigned __int8 a10, uint64_t a11, _DWORD *a12)
{
  v12 = a10;
  v104 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v94 = 0;
  v91[1] = 0;
  v92 = 0;
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v100 = 0u;
  memset(v99, 0, sizeof(v99));
  memset(__s, 0, sizeof(__s));
  v91[0] = 0;
  v95 = 22;
  if (!a3)
  {
    LoaderRecord = 0;
    v29 = 0;
    LOWORD(v22) = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    LOBYTE(v27) = 0;
    v28 = 0;
    goto LABEL_12;
  }

  v17 = a1;
  v18 = *a3;
  v90 = *(*a3 + 32) >> 9;
  LoaderRecord = fetchLoaderRecord(a1, a2, v90, __s, v91, &v95);
  if (v95)
  {
    goto LABEL_9;
  }

  v83 = a2;
  if ((a8 & 0x800000) != 0)
  {
    HIDWORD(v91[0]) = 0;
  }

  v21 = a7 <= 1 ? 1 : a7;
  v95 = gpmrsearch(a3, a4, &v94 + 1);
  if (v95)
  {
LABEL_9:
    LOWORD(v22) = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    LOBYTE(v27) = 0;
    v28 = 0;
LABEL_10:
    v29 = v90;
    goto LABEL_12;
  }

  v79 = v21;
  v32 = a6;
  if (a6 == 6)
  {
    v33 = HIWORD(v94) + 1;
  }

  else
  {
    if (a6 != 1)
    {
      LOWORD(v22) = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      v95 = -4;
      goto LABEL_10;
    }

    v33 = HIWORD(v94) - 1;
  }

  v80 = v33;
  v76 = a5;
  if (v33 < 1 || *(v18 + 94) <= v33)
  {
    v26 = 0;
  }

  else
  {
    v34 = v18 + 152 * v33 + 96;
    v35 = comparePartitions(v34, __s);
    v84 = v34;
    if ((~v35 & 7) == 0)
    {
      v37 = v21;
      v36 = v80;
      v23 = *(v34 + 120);
      goto LABEL_34;
    }

    v32 = a6;
    if ((v35 & 2) != 0)
    {
      v37 = v21;
      v23 = *(v34 + 120);
      if (BYTE2(v91[0]))
      {
        v25 = 1;
        v36 = v80;
      }

      else
      {
        v36 = v80;
        if (v23 == *(&v101 + 1))
        {
LABEL_34:
          if (BYTE1(v91[0]))
          {
            v25 = 4;
          }

          else
          {
            v25 = 1;
          }

          goto LABEL_99;
        }

        v25 = 0;
      }

LABEL_99:
      sreqbefore(a3, 0, &v92, v37, (v36 + 1));
      LOWORD(v22) = v80;
      LOBYTE(v27) = 0;
      v28 = 1;
      v24 = v92;
      goto LABEL_100;
    }

    v26 = v34;
  }

  v38 = *a3;
  if (v32 != 6)
  {
    *v77 = v17;
    v39 = (HIWORD(v94) - 1);
    LOWORD(v94) = HIWORD(v94) - 1;
    if (v39 >= 1)
    {
      v27 = 0;
      while (1)
      {
        v40 = v27;
        v41 = v38;
        v42 = v38 + 152 * v39;
        v27 = v42 + 96;
        v43 = lookupDESC((v42 + 144));
        if (utf8strcompare(1uLL, (v42 + 144), v99))
        {
          v12 = a10;
          if (!v43)
          {
            goto LABEL_65;
          }

          v26 = v27;
          v38 = v41;
          if (v43[1] == 2)
          {
            goto LABEL_66;
          }

          v44 = v94;
        }

        else
        {
          v44 = v94;
          v95 = delentry(a3, 96, 0x5Eu, v94, 152);
          v12 = a10;
          if (v95)
          {
            goto LABEL_96;
          }

          v38 = *a3;
          v40 = (v40 + 1);
          v26 = v27;
        }

        v27 = v40;
        v39 = (v44 - 1);
        LOWORD(v94) = v44 - 1;
        if (v39 <= 0)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_60;
  }

  *v77 = v17;
  v45 = HIWORD(v94) + 1;
  LOWORD(v94) = HIWORD(v94) + 1;
  if (*(v38 + 94) <= (HIWORD(v94) + 1))
  {
LABEL_60:
    LOBYTE(v27) = 0;
LABEL_67:
    if (v95)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v28 = 0;
      LOWORD(v22) = v80;
      goto LABEL_69;
    }

    v48 = v38;
    v84 = v26;
    v17 = *v77;
    v95 = gpmrsearch(a3, a4, &v94 + 1);
    if (v95)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v28 = 0;
      LOWORD(v22) = v80;
LABEL_100:
      v26 = v84;
      goto LABEL_101;
    }

    v49 = HIWORD(v94);
    if (a6 != 1)
    {
      v49 = HIWORD(v94) + 1;
    }

    v22 = sreqbefore(a3, 0, &v92, v79, v49);
    v24 = v92;
    v26 = v48 + 152 * SHIWORD(v94) + 96;
    if (HIDWORD(v91[0]) && *(v48 + 152 * SHIWORD(v94) + 216) < HIDWORD(v91[0]))
    {
      v23 = 0;
      v25 = 0;
      v28 = 0;
      *(&v101 + 1) = 0;
      v95 = 28;
      goto LABEL_101;
    }

    v50 = v92;
    if ((~a8 & 0x202000) == 0)
    {
      v51 = *(v48 + 152 * SHIWORD(v94) + 216);
      v52 = *(&v101 + 1) < v51 && v51 > 0x200000 / v90;
      v50 = v92;
      if (v52)
      {
        v50 = 0;
        v92 = 0;
      }
    }

    if (*(&v101 + 1) % v79)
    {
      v53 = *(&v101 + 1) / v79 + 1;
    }

    else
    {
      v53 = *(&v101 + 1) / v79;
    }

    v54 = v53 * v79;
    v55 = v53 * v79 >= v50;
    v56 = v53 * v79 - v50;
    v81 = v22;
    if (v56 != 0 && v55)
    {
      v92 = v54;
      if (a9)
      {
        v57 = a6;
        v58 = v56 <= a9 && a6 == 6;
        v59 = a8;
        if (v58)
        {
          v59 = a8 | 0x2004;
        }

        a8 = v59;
      }

      else
      {
        v57 = a6;
      }

      if (v12)
      {
        v25 = 1;
        if ((a8 & 0x2000) == 0)
        {
          v23 = 0;
          v28 = 0;
          v95 = 1;
          v25 = 0;
          goto LABEL_101;
        }
      }

      else
      {
        v25 = 8;
      }

      if (a7 >= 2)
      {
        if (v57 == 1 && v12)
        {
          v65 = *(v26 + 112);
          v66 = *(v26 + 120);
          v67 = v79;
          v68 = v65 / v79;
          if (v65 % v79)
          {
            ++v68;
          }

          v69 = v68 * v79;
          *(v26 + 112) = v69;
          v70 = v66 + v65 - v69;
          v57 = a6;
        }

        else
        {
          v70 = *(v26 + 120);
          v67 = v79;
        }

        *(v26 + 120) = v70 / v67 * v67;
      }

      if (v57 == 1)
      {
        *(v26 + 112) += v56;
      }

      v87 = v27;
      *(v26 + 120) -= v56;
      if ((a8 & 4) == 0)
      {
        *(v26 + 136) |= 8uLL;
      }

      v60 = v26;
      v85 = v87 + 1;
    }

    else
    {
      v85 = v27;
      v60 = v48 + 152 * SHIWORD(v94) + 96;
      v25 = 0;
    }

    v71 = strcasecmp(v99, "Apple_Free");
    if (BYTE1(v91[0]))
    {
      v72 = 1;
    }

    else
    {
      v72 = v71 == 0;
    }

    v73 = v72;
    if (v12)
    {
      LOWORD(v22) = v81;
      v26 = v60;
      if (v73)
      {
        v23 = 0;
        v28 = 0;
        v95 = 0;
        v25 = 4;
LABEL_163:
        LOBYTE(v27) = v85;
        goto LABEL_101;
      }

      if (a6 == 6)
      {
        v74 = *(v60 + 120) + *(v60 + 112);
      }

      else
      {
        v74 = *(v60 + 112) - *(&v101 + 1);
      }

      *&v101 = v74;
      MEMORY[0x259C86EE0](&v100);
      v95 = addPartitionRecord(a3, __s, v79, &v94);
      if (!v95)
      {
        LOWORD(v22) = v81;
        v75 = *a3 + 152 * v81;
        v26 = v75 + 96;
        v23 = *(v75 + 216);
        LOBYTE(v27) = v85 + 1;
        v25 = 1;
        v28 = 1;
        goto LABEL_101;
      }

      v23 = 0;
      v28 = 0;
    }

    else
    {
      v23 = 0;
      v28 = 0;
      if (((*(&v101 + 1) <= v92) & v73) != 0)
      {
        v25 = 4;
      }

      else
      {
        v25 = 2;
      }
    }

    LOWORD(v22) = v81;
    v26 = v60;
    goto LABEL_163;
  }

  v27 = 0;
  while (1)
  {
    v40 = v27;
    v41 = v38;
    v46 = v38 + 152 * v45;
    v27 = v46 + 96;
    v47 = lookupDESC((v46 + 144));
    if (!utf8strcompare(1uLL, (v46 + 144), v99))
    {
      break;
    }

    v12 = a10;
    if (!v47)
    {
LABEL_65:
      v26 = v27;
      LOBYTE(v27) = v40;
      v38 = v41;
      goto LABEL_67;
    }

    v26 = v27;
    v38 = v41;
    if (v47[1] == 2)
    {
LABEL_66:
      LOBYTE(v27) = v40;
      goto LABEL_67;
    }

    v45 = v94 + 1;
    LOWORD(v94) = v94 + 1;
LABEL_58:
    v27 = v40;
    if (*(v38 + 94) <= v45)
    {
      goto LABEL_67;
    }
  }

  v45 = v94;
  v95 = delentry(a3, 96, 0x5Eu, v94, 152);
  v12 = a10;
  if (!v95)
  {
    v38 = *a3;
    v40 = (v40 + 1);
    v26 = v27;
    goto LABEL_58;
  }

LABEL_96:
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v28 = 0;
  LOWORD(v22) = v80;
  v26 = v27;
  LOBYTE(v27) = v40;
LABEL_69:
  v17 = *v77;
LABEL_101:
  if (v95 || (v25 & 1) == 0 || !LOBYTE(v91[0]) || !v12 && BYTE2(v91[0]))
  {
    goto LABEL_10;
  }

  v78 = v17;
  v86 = v26;
  v82 = v22;
  Value = CFDictionaryGetValue(LoaderRecord, @"Loader Name");
  if (Value)
  {
    v62 = Value;
  }

  else
  {
    v62 = v83;
  }

  if (BYTE2(v91[0]))
  {
    __sprintf_chk(v96, 0, 0x40uLL, "%s");
  }

  else
  {
    v63 = CFDictionaryGetValue(LoaderRecord, @"Checksum");
    if (v63)
    {
      CFNumberGetValue(v63, kCFNumberSInt32Type, &valuePtr);
    }

    __sprintf_chk(v96, 0, 0x40uLL, "%s %#x");
  }

  v64 = strcasecmp(v96, v86);
  if (!v12 || a8 < 0)
  {
    v58 = v64 == 0;
    v29 = v90;
    LOWORD(v22) = v82;
    v26 = v86;
    if (v58)
    {
      goto LABEL_122;
    }
  }

  else
  {
    v26 = v86;
    if ((v86[136] & 9) == 0 && !v64)
    {
      v29 = v90;
      goto LABEL_119;
    }

    v95 = ResolveLoaderPath(v78, LoaderRecord, v62, v97);
    if (v95 || (v95 = GPMPartitionWrite(a3, v82, v97, v76)) != 0)
    {
      v29 = v90;
      goto LABEL_126;
    }

    v29 = v90;
    v95 = GPMUpdateVolumeUUID(a3, v82, v90, v76);
    if (v95)
    {
LABEL_126:
      LOWORD(v22) = v82;
      v26 = v86;
    }

    else
    {
      *(v86 + 17) &= ~8uLL;
      __strlcpy_chk();
      v26 = v86;
      LOBYTE(v27) = v27 + 1;
LABEL_119:
      LOWORD(v22) = v82;
LABEL_122:
      v25 = v25 & 0xFFFFFFFA | 4;
    }
  }

LABEL_12:
  if ((v25 & (BYTE2(v91[0]) != 0)) != 0)
  {
    v25 = v25 & 0xFFFFFFFA | 4;
  }

  if (a11)
  {
    *a11 = 259;
    *(a11 + 4) = v25;
    *(a11 + 8) = v22 - HIWORD(v94);
    *(a11 + 16) = *(&v101 + 1) * v29;
    *(a11 + 24) = v23 * v29;
    *(a11 + 32) = v24 + v23;
    if (v28)
    {
      *(a11 + 4) = v25 | 0x80;
      uuid_unparse_upper((v26 + 96), (a11 + 40));
    }
  }

  result = v95;
  if (v12 && !v95 && (v25 & 4) == 0)
  {
    result = 1;
    v95 = 1;
  }

  if (a12)
  {
    *a12 = v27 != 0;
  }

  if (LoaderRecord)
  {
    CFRelease(LoaderRecord);
    result = v95;
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sreqbefore(uint64_t *a1, uint64_t *a2, unint64_t *a3, unsigned int a4, int a5)
{
  if (a5 < 0)
  {
    v7 = 0;
    v8 = 0;
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v5 = *a1;
  if (a5)
  {
    v6 = *(v5 + 94);
    if (a5 >= v6)
    {
      LOWORD(a5) = *(v5 + 94);
    }

    v7 = *(v5 + 152 * a5 + 64) + *(v5 + 152 * a5 + 56);
  }

  else
  {
    v7 = *(v5 + 40);
    v6 = *(v5 + 94);
  }

  if (v6 <= a5)
  {
    v9 = *(v5 + 56) + *(v5 + 40);
  }

  else
  {
    v9 = *(v5 + 152 * a5 + 208);
  }

  v10 = v9 >= v7;
  v8 = v9 - v7;
  if (!v10)
  {
    v8 = 0;
  }

  if (a4)
  {
LABEL_15:
    if (v7 % a4)
    {
      v11 = v7 / a4 + 1;
    }

    else
    {
      v11 = v7 / a4;
    }

    v7 = v11 * a4;
    v8 = v8 / a4 * a4;
  }

LABEL_19:
  if (a2)
  {
    *a2 = v7;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return a5;
}

uint64_t MKCFWriteMedia(const __CFDictionary *a1, const __CFDictionary *a2, __CFBundle *a3, const __CFDictionary *a4, uint64_t a5)
{
  if (!a1)
  {
    return 22;
  }

  Value = CFDictionaryGetValue(a1, @"Schemes");
  if (!Value)
  {
    return 22;
  }

  v10 = Value;
  Count = CFArrayGetCount(Value);
  if (!Count)
  {
    return 22;
  }

  v12 = 0;
  v13 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, v12);
    if (ValueAtIndex)
    {
      v15 = MKCFWriteScheme(ValueAtIndex, a2, a3, a4, a5);
      if (v15)
      {
        v16 = v13 == 0;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15;
      }

      if (v16)
      {
        v13 = v15;
      }

      else
      {
        v13 = v13;
      }
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
    }

    ++v12;
  }

  while (Count != v12);
  if (!v13)
  {
    v13 = v17;
    if (v17 == -1)
    {
      return *__error();
    }
  }

  return v13;
}

uint64_t MKCFWriteScheme(const __CFDictionary *a1, const __CFDictionary *a2, __CFBundle *a3, const __CFDictionary *a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1 && (Value = CFDictionaryGetValue(a1, @"ID")) != 0 && CFStringGetCString(Value, buffer, 32, 0))
  {
    v11 = PMSchemeSearchByDescriptor(buffer, 0);
    if (v11 == 16)
    {
      result = GPTCFWriteScheme(a1, a3, a4, a5);
    }

    else if (v11 == 8)
    {
      result = MBRCFWriteScheme(a1, a2, a3, a4, a5, MKMediaDeviceIO);
    }

    else if (v11 == 1)
    {
      result = APMCFWriteScheme(a1, a2, a3, a4, a5, MKMediaDeviceIO);
    }

    else
    {
      result = 4294961989;
    }
  }

  else
  {
    result = 22;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PMSchemeSearchByDescriptor(char *a1, void *a2)
{
  v4 = &PMSDescriptors;
  v5 = "APM";
  while (strcasecmp(a1, v5))
  {
    v5 = *(v4 + 4);
    v4 += 12;
    if (!v5)
    {
      v4 = &word_2798A2A18;
      break;
    }
  }

  if (a2)
  {
    *a2 = *(v4 + 2);
  }

  return *v4;
}

uint64_t GPTCFWriteScheme(const __CFDictionary *a1, __CFBundle *a2, const __CFDictionary *a3, uint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  Value = CFDictionaryGetValue(a1, @"Sections");
  if (!Value)
  {
    return 22;
  }

  v9 = CFArrayDictionarySearchWithIndexOptions(Value, @"ID", @"MAP", 0, 0);
  if (!v9)
  {
    return 22;
  }

  v10 = v9;
  v11 = mkcfrecoverref(v9);
  if (!v11)
  {
    return 22;
  }

  v12 = v11;
  valuePtr = 0;
  v13 = CFDictionaryGetValue(a1, @"Alignment");
  if (v13)
  {
    CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
    v14 = valuePtr;
  }

  else
  {
    v14 = *(*v12 + 32) >> 9;
    valuePtr = v14;
  }

  result = GPTCFUpdateSection(v10, a2, v14, a3, a4);
  if (!result)
  {
    result = GPTWriteMedia(v12, a3, a4);
    if (!result)
    {
      v16 = CFDictionaryGetValue(v10, @"Partitions");
      return GPTUpdatePartitionDictionaries(v12, v16);
    }
  }

  return result;
}

uint64_t GPTCFUpdateSection(const __CFDictionary *a1, __CFBundle *a2, unsigned int a3, const __CFDictionary *a4, uint64_t a5)
{
  v145 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_14;
  }

  v8 = a2;
  if (!a2)
  {
    v8 = MKAccessLibrary(0);
  }

  v10 = mkcfrecoverref(a1);
  if (!v10)
  {
LABEL_14:
    result = 22;
    goto LABEL_15;
  }

  v11 = v10;
  *&valuePtr[0] = 0;
  v12 = *v10;
  v13 = *(*v10 + 32);
  result = CFDictionaryGetUUID(a1, @"GUID", (*v10 + 16));
  if (!result)
  {
    v15 = v13 >> 9;
    if (a4 && (v16 = MKCFOptionBit(a4, @"Fit Map to Media", 1), v17 = MKCFOptionBit(a4, @"Fit Map to Container", 1), v16 | v17))
    {
      *&valuePtr[0] = 0;
      if (!v17)
      {
        goto LABEL_23;
      }

      result = MKMediaUpdateProperties(a5);
      if (result)
      {
        goto LABEL_15;
      }

      v18 = MKMediaCopyProperty(a5, @"Geometry");
      if (v18)
      {
        v19 = v18;
        v20 = CFDictionaryGetValue(v18, @"Sector Count");
        if (v20)
        {
          CFNumberGetValue(v20, kCFNumberSInt64Type, valuePtr);
        }

        CFRelease(v19);
        v21 = *&valuePtr[0] / v15;
        *&valuePtr[0] /= v15;
      }

      else
      {
LABEL_23:
        v21 = 0;
      }

      result = setMediaBlockcount(v11, v21);
      if (result)
      {
        goto LABEL_15;
      }

      MKCFRecordSectionSize(a1, *(v12 + 40) * v15, *(v12 + 48) * v15, *(v12 + 56) * v15, *(v12 + 56) * v15, *(v12 + 32));
    }

    else
    {
      v23 = CFDictionaryGetValue(a1, @"Media Block Count");
      if (v23)
      {
        CFNumberGetValue(v23, kCFNumberSInt64Type, valuePtr);
        v24 = *&valuePtr[0];
      }

      else
      {
        v24 = 0;
      }

      v25 = v24 / v15;
      *&valuePtr[0] = v25;
      if (v24 >= v15 && v25 != *(v12 + 56))
      {
        result = setMediaBlockcount(v11, v25);
        if (result)
        {
          goto LABEL_15;
        }
      }
    }

    UUID = 0;
    v124 = 0;
    v123 = 0;
    v142 = 0;
    *uu1 = 0;
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v131 = 0u;
    memset(v130, 0, sizeof(v130));
    v26 = CFDictionaryGetValue(a1, @"Partitions");
    v114 = a4;
    theArray = v26;
    if (!v8)
    {
      v117 = 0;
      v27 = 0;
      goto LABEL_94;
    }

    v117 = MKLoadDB(v8, @"inventory", &UUID);
    v27 = MKLoadDB(v8, @"database", &UUID);
    if (!a4 || (MKCFOptionBit(a4, @"Direct Mode", 0x20000000) & 0x20000000) == 0)
    {
      v144 = 0;
      memset(__s, 0, sizeof(__s));
      v128[0] = 0;
      v128[1] = 0;
      memset(valuePtr, 0, 154);
      idx = 0;
      v129 = 22;
      v28 = MKLoadDB(v8, @"database", &v129);
      if (!v28)
      {
        goto LABEL_91;
      }

      v29 = v28;
      v30 = MKLoadDB(v8, @"inventory", &v129);
      if (!v30)
      {
        v59 = v29;
        goto LABEL_90;
      }

      theDict = v30;
      cf = v29;
      v118 = v27;
      v110 = a5;
      v31 = *v11;
      if (!*(*v11 + 94))
      {
        goto LABEL_87;
      }

      v32 = 0;
      v120 = v31 + 96;
      v102 = (*(v31 + 32) >> 9);
      allocator = a3;
      while (1)
      {
        v33 = (v120 + 152 * v32);
        v34 = lookupDESC(&v33[3]);
        if (v34)
        {
          if (v34[1] == 2)
          {
            v35 = uuid2cfstr(v33 + 6);
            v36 = CFArrayDictionarySearchWithIndexOptions(theArray, @"GUID", v35, 0, 0);
            CFRelease(v35);
            if (v36)
            {
              v37 = CFDictionaryGetValue(v36, @"Options");
              if (!v37 || !MKCFOptionBit(v37, @"Direct Mode", 0x20000000))
              {
                v38 = CFStringCreateWithCString(0, &v33[3], 0);
                v129 = MKLookupSchemeFormat(cf, @"GPT", v38, 1, valuePtr);
                CFRelease(v38);
                if (!CFDictionaryGetValue(theDict, @"Loaders"))
                {
                  v129 = -417;
LABEL_87:
                  CFRelease(cf);
                  a5 = v110;
                  v26 = theArray;
                  v27 = v118;
                  v59 = theDict;
LABEL_90:
                  CFRelease(v59);
LABEL_91:
                  v60 = v129;
                  if (v129 == -1)
                  {
                    v60 = *__error();
                  }

                  UUID = v60;
                  if (!v60)
                  {
                    break;
                  }

LABEL_166:
                  result = UUID;
                  goto LABEL_15;
                }

                if (LOWORD(valuePtr[0]))
                {
                  v112 = 0;
                  v39 = valuePtr + 2;
                  value = v31;
                  while (1)
                  {
                    v40 = CFStringCreateWithCString(0, v39, 0);
                    LoaderRecord = fetchLoaderRecord(v8, v40, v102, __s, v128, &v129);
                    CFRelease(v40);
                    if (LoaderRecord)
                    {
                      CFRelease(LoaderRecord);
                    }

                    v31 = value;
                    if (v129)
                    {
                      goto LABEL_87;
                    }

                    v42 = *(v39 + 17);
                    if (v42 == 1)
                    {
                      break;
                    }

                    if (v42 == 6)
                    {
                      v43 = v32 + 1;
                      if (v32 + 1 < value[47])
                      {
                        v107 = 0;
                        v44 = v32;
                        while (1)
                        {
                          v45 = (v120 + 152 * v43);
                          v46 = lookupDESC(&v45[3]);
                          if (!v46)
                          {
                            goto LABEL_62;
                          }

                          v47 = v46[1];
                          if (v47 != 4)
                          {
                            v44 = v43;
                            if (v47 == 2)
                            {
                              goto LABEL_82;
                            }

                            goto LABEL_63;
                          }

                          v48 = comparePartitions(v45, __s);
                          if ((~v48 & 6) == 0 || (v48 & 2) != 0 && BYTE2(v128[0]))
                          {
                            if (!v107)
                            {
                              v107 = 1;
LABEL_62:
                              v44 = v43;
                              goto LABEL_63;
                            }

                            ++v107;
                          }

                          v49 = uuid2cfstr(v45 + 6);
                          v50 = CFArrayDictionarySearchWithIndexOptions(theArray, @"GUID", v49, &idx, 0);
                          CFRelease(v49);
                          if (v50)
                          {
                            CFArrayRemoveValueAtIndex(theArray, idx);
                          }

                          v129 = delentry(v11, 96, 0x5Eu, v43, 152);
                          a3 = allocator;
                          v31 = value;
                          if (v129)
                          {
                            goto LABEL_87;
                          }

LABEL_63:
                          v43 = v44 + 1;
                          if (v44 + 1 >= *(v31 + 94))
                          {
                            goto LABEL_82;
                          }
                        }
                      }

                      goto LABEL_82;
                    }

LABEL_83:
                    v39 += 38;
                    if (++v112 >= LOWORD(valuePtr[0]))
                    {
                      goto LABEL_86;
                    }
                  }

                  if (v32 < 2)
                  {
LABEL_82:
                    if (v129)
                    {
                      goto LABEL_87;
                    }

                    goto LABEL_83;
                  }

                  v108 = 0;
                  v51 = v32;
                  while (2)
                  {
                    v52 = (v51 - 1);
                    v53 = (v120 + 152 * v52);
                    v54 = lookupDESC(&v53[3]);
                    if (v54)
                    {
                      v55 = v54[1];
                      if (v55 == 4)
                      {
                        v56 = comparePartitions(v53, __s);
                        if ((~v56 & 6) == 0 || (v56 & 2) != 0 && BYTE2(v128[0]))
                        {
                          if (!v108)
                          {
                            v108 = 1;
                            goto LABEL_81;
                          }

                          ++v108;
                        }

                        v57 = uuid2cfstr(v53 + 6);
                        v58 = CFArrayDictionarySearchWithIndexOptions(theArray, @"GUID", v57, &idx, 0);
                        CFRelease(v57);
                        if (v58)
                        {
                          CFArrayRemoveValueAtIndex(theArray, idx);
                        }

                        v129 = delentry(v11, 96, 0x5Eu, (v51 - 1), 152);
                        a3 = allocator;
                        v31 = value;
                        if (v129)
                        {
                          goto LABEL_87;
                        }

                        v32 = (v32 - 1);
                        v52 = v51;
                        goto LABEL_81;
                      }

                      if (v55 == 2)
                      {
                        goto LABEL_82;
                      }
                    }

LABEL_81:
                    v51 = v52;
                    if (v52 <= 1)
                    {
                      goto LABEL_82;
                    }

                    continue;
                  }
                }

                if (v129)
                {
                  goto LABEL_87;
                }
              }
            }
          }
        }

LABEL_86:
        v32 = (v32 + 1);
        if (v32 >= *(v31 + 94))
        {
          goto LABEL_87;
        }
      }
    }

LABEL_94:
    v119 = v27;
    v111 = a5;
    Count = CFArrayGetCount(v26);
    if (Count < 1)
    {
LABEL_162:
      if (v117)
      {
        CFRelease(v117);
      }

      if (v119)
      {
        CFRelease(v119);
      }

      goto LABEL_166;
    }

    v62 = Count;
    LODWORD(v63) = 0;
    v121 = a3 / (*(*v11 + 32) >> 9);
    valuea = *MEMORY[0x277CBED28];
    while (2)
    {
      v63 = v63;
      while (1)
      {
        UUID = 22;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v63);
        if (!ValueAtIndex)
        {
          goto LABEL_162;
        }

        v65 = ValueAtIndex;
        UUID = CFDictionaryGetUUID(ValueAtIndex, @"GUID", uu1);
        if (UUID != 2)
        {
          break;
        }

        ++v63;
        UUID = 0;
        if (v63 >= v62)
        {
          goto LABEL_162;
        }
      }

      v66 = CFDictionaryGetValue(v65, @"Options");
      allocatora = v66;
      if (v114 | v66)
      {
        Options = GPTConvertCreateOptions(v114, v66);
      }

      else
      {
        Options = 0;
      }

      UUID = gpmrsearch(v11, uu1, &v124);
      v67 = *v11;
      if (UUID)
      {
        v109 = 0;
        v140 = 0;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v131 = 0u;
      }

      else
      {
        v68 = v67 + 152 * v124;
        v109 = (v68 + 96);
        v69 = *(v68 + 192);
        v70 = *(v68 + 208);
        v71 = *(v68 + 224);
        v140 = *(v68 + 240);
        v138 = v70;
        v139 = v71;
        v72 = *(v68 + 112);
        v131 = *(v68 + 96);
        v132 = v72;
        v73 = *(v68 + 128);
        v74 = *(v68 + 144);
        v75 = *(v68 + 176);
        v135 = *(v68 + 160);
        v136 = v75;
        v133 = v73;
        v134 = v74;
        v137 = v69;
        v138 = 0uLL;
      }

      GPTUpdatePartitionRecord(v65, &v131, *(v67 + 32));
      if (UUID)
      {
        if (UUID != -5343)
        {
          goto LABEL_162;
        }

        if ((Options & 0x400000) != 0)
        {
          *(&v138 + 1) = 0;
          v77 = CFNumberCreate(0, kCFNumberSInt64Type, &v138 + 8);
          CFDictionarySetValue(v65, @"Size", v77);
          CFRelease(v77);
        }
      }

      else
      {
        if (!(v138 + *(&v138 + 1)))
        {
          if ((Options & 0x20000000) == 0)
          {
            UUID = purgeLoader(v119, v117, v11, v124, &v123 + 1, theArray, v63, &v123);
            if (UUID)
            {
              goto LABEL_162;
            }

            LODWORD(v63) = v63 + (v123 >> 31);
            v62 -= v123 != 0;
            if (v123 < 0)
            {
              UUID = gpmrsearch(v11, uu1, &v124);
              if (UUID)
              {
                goto LABEL_162;
              }
            }
          }

          UUID = delentry(v11, 96, 0x5Eu, v124, 152);
          if (UUID)
          {
            goto LABEL_162;
          }

          CFArrayRemoveValueAtIndex(theArray, v63);
          --v62;
          goto LABEL_135;
        }

        cfa = v138;
        if (!strcasecmp(&v134, v109 + 48))
        {
          v78 = *(&cfa + 1);
          if (*(&cfa + 1) == *(v109 + 15))
          {
            v79 = 0;
            v80 = *(&cfa + 1);
            v81 = cfa;
          }

          else
          {
            if (*(&cfa + 1))
            {
              v79 = 0;
              v81 = cfa;
            }

            else
            {
              v84 = v124 + 1;
              if (v84 >= *(v67 + 94))
              {
                v85 = *(v67 + 40) + *(v67 + 56);
              }

              else
              {
                v85 = *(v67 + 152 * v84 + 208);
              }

              v81 = cfa;
              v78 = v85 - *(v109 + 14);
              v79 = 1;
            }

            v80 = v78 / v121 * v121;
            *(&v138 + 1) = v80;
            v78 = *(v109 + 15);
          }

          v103 = v80 - v78;
          if (v80 == v78)
          {
            v86 = v79;
          }

          else
          {
            v86 = v79 | 0x3E8;
          }

          if (v81 != *(v109 + 14))
          {
            MEMORY[0x259C86EE0](v109 + 96);
            ++v86;
            v80 = *(&v138 + 1);
            v81 = v138;
          }

          UUID = svalidate(v11, v81, v80, v121, v124);
          if (UUID)
          {
            goto LABEL_162;
          }

          v87 = v86;
          if (v139 != *(v109 + 16))
          {
            v87 = v86 + 1;
          }

          allocatorb = v87;
          v88 = strcasecmp(&v131, v109);
          v89 = allocatorb;
          if (v88)
          {
            v89 = allocatorb + 1;
          }

          if (v89)
          {
            v90 = v132;
            *v109 = v131;
            *(v109 + 1) = v90;
            v91 = v133;
            v92 = v134;
            v93 = v136;
            *(v109 + 4) = v135;
            *(v109 + 5) = v93;
            *(v109 + 2) = v91;
            *(v109 + 3) = v92;
            v94 = v137;
            v95 = v138;
            v96 = v139;
            *(v109 + 18) = v140;
            *(v109 + 7) = v95;
            *(v109 + 8) = v96;
            *(v109 + 6) = v94;
            if ((Options & 0x20000000) == 0 && v89 >= 0x3E8)
            {
              v97 = setupPostloader(v11, &v124, v8, v119, v121, v103, 0, Options, v130, v111);
              if (v97 == 28)
              {
                v98 = 0;
              }

              else
              {
                v98 = v97;
              }

              UUID = v98;
            }
          }

          UUID = GPTUpdatePartitionDictionary(v65, *v11 + 152 * v124 + 96, *(*v11 + 32));
          if (UUID)
          {
            goto LABEL_162;
          }

          goto LABEL_134;
        }

        if ((Options & 0x20000000) == 0)
        {
          UUID = purgeLoader(v119, v117, v11, v124, &v123 + 1, theArray, v63, &v123);
          if (UUID)
          {
            goto LABEL_162;
          }

          LODWORD(v63) = v63 + (v123 >> 31);
          if (v123 < 0)
          {
            UUID = gpmrsearch(v11, uu1, &v124);
            if (UUID)
            {
              goto LABEL_162;
            }
          }
        }

        UUID = delentry(v11, 96, 0x5Eu, v124, 152);
        if (UUID)
        {
          goto LABEL_162;
        }

        if ((Options & 0x2000) == 0)
        {
          v82 = allocatora;
          if (!allocatora)
          {
            Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionaryAddValue(v65, @"Options", Mutable);
            CFRelease(Mutable);
            v82 = Mutable;
          }

          CFDictionarySetValue(v82, @"Retain existing content", valuea);
        }
      }

      UUID = GPTCFCreatePartition(a1, v65, v8, v76, v119, v121, v114, v111);
      if (UUID)
      {
        goto LABEL_162;
      }

      v62 = CFArrayGetCount(theArray);
      if (UUID)
      {
        goto LABEL_162;
      }

LABEL_134:
      LODWORD(v63) = v63 + 1;
LABEL_135:
      if (v63 < v62)
      {
        continue;
      }

      goto LABEL_162;
    }
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t svalidate(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a1)
  {
    return 22;
  }

  v5 = *a1;
  v6 = *a1 + 96;
  v7 = v6 + 152 * a5;
  v8 = *(v7 + 112);
  if (a5 >= 1 && ((a2 - v8) & 0x8000000000000000) != 0)
  {
    v9 = v6 + 152 * (a5 - 1);
    if (*(v9 + 120) + *(v9 + 112) > a2)
    {
      return 4294961955;
    }
  }

  if ((a3 + a2 - (v8 + *(v7 + 120))) < 1)
  {
    return 0;
  }

  if (a5 + 1 >= *(v5 + 94))
  {
    v11 = *(v5 + 40) + *(v5 + 56);
  }

  else
  {
    v11 = *(v6 + 152 * (a5 + 1) + 112);
  }

  if (a3 + a2 <= v11)
  {
    return 0;
  }

  else
  {
    return 4294961955;
  }
}

uint64_t GPTWriteMedia(uint64_t *a1, const __CFDictionary *a2, uint64_t a3)
{
  h[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v30 = 22;
    goto LABEL_103;
  }

  v69 = MKCFOptionBit(a2, @"Legacy Mode", 1);
  v68 = MKCFOptionBit(a2, @"UEFI Mode", 2);
  v70 = a1;
  v6 = *a1;
  v7 = *(*a1 + 8);
  v73 = 0;
  v8 = *(v6 + 32);
  v67 = v7;
  v9 = *v7;
  v10 = (*(*v7 + 84) * *(*v7 + 80));
  v11 = v10 / v8;
  if (v10 % v8)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64) - 1;
  v14 = v13 - v12;
  v74 = 0;
  v15 = malloc_type_calloc(1uLL, v12 * v8, 0xB178B941uLL);
  if (!v15)
  {
    v27 = 0;
LABEL_32:
    v30 = *__error();
LABEL_33:
    if (v30)
    {
      goto LABEL_103;
    }

    *(v9 + 24) = 1;
    *(v9 + 32) = v13;
    *(v9 + 72) = 2;
    *(v9 + 88) = v27;
    *(v9 + 16) = 0;
    *(v9 + 16) = mk_crc32(v9, *(v9 + 12));
    v30 = MKMediaWriteBlocks(a3, 1, 1, v8, v9, &v73);
    if (v30)
    {
      goto LABEL_103;
    }

    *(v9 + 24) = v13;
    *(v9 + 32) = 1;
    *(v9 + 72) = v14;
    *(v9 + 16) = 0;
    *(v9 + 16) = mk_crc32(v9, *(v9 + 12));
    v30 = MKMediaWriteBlocks(a3, v13, 1, v8, v9, &v73);
    if (v30)
    {
      goto LABEL_103;
    }

    h[0] = 0;
    LOWORD(v74) = 0;
    v31 = *v70;
    v32 = *(*v70 + 64);
    if (v32 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    else
    {
      v33 = *(*v70 + 64);
    }

    v34 = PMNewPartitionListInternal(h, 0, v33, *(v31 + 32), 0, 8, 0);
    if (v34)
    {
      goto LABEL_99;
    }

    v72 = a3;
    if (*(v31 + 94))
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = v31 + 144;
      do
      {
        v39 = *(v38 + 64);
        if (!HIDWORD(v39) && !((*(v38 + 72) + v39) >> 32))
        {
          v40 = MBRInfoSearch(v38);
          if (v40)
          {
            v41 = *v40;
            v42 = v41 > 0xC || ((1 << v41) & 0x1880) == 0;
            if (!v42 || v41 == 131)
            {
              ++v37;
            }

            else if (v41 == 239)
            {
              ++v35;
            }
          }
        }

        if (v36 > 2)
        {
          break;
        }

        ++v36;
        v38 += 152;
      }

      while (v36 < *(v31 + 94));
      v43 = v37 != 0;
      v44 = v35 != 0;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    v45 = v68 | v69;
    v46 = *h[0];
    *(v46 + 616) = *(*h[0] + 154) & 0xFFEFFFFF;
    if (!*(v46 + 968) && v67[1])
    {
      v47 = malloc_type_calloc(1uLL, 0x200uLL, 0x7A034D0EuLL);
      *(v46 + 968) = v47;
      memcpy(v47, v67[1], 0x1BEuLL);
    }

    if ((v45 & 2) != 0 || !v43 || !v44)
    {
      goto LABEL_67;
    }

    if (((v68 | v69) & 1) == 0 && (*(v31 + 80) & 2) != 0)
    {
      v45 = *(v31 + 80);
    }

    if ((v45 & 1) == 0)
    {
LABEL_67:
      if (v32 - 1 >= 0xFFFFFFFF)
      {
        v48 = -1;
      }

      else
      {
        v48 = v32 - 1;
      }

      v34 = PMNewPartitionExtended(h[0], 238, 0, 1u, v48, 0, 0, &v74, 0x100000004);
      if (v34)
      {
        goto LABEL_99;
      }

      goto LABEL_98;
    }

    v49 = *(v31 + 94);
    if (!*(v31 + 94))
    {
LABEL_98:
      v34 = MBRWriteMedia(h[0], 0x8000000, v72, MKMediaDeviceIO);
LABEL_99:
      v30 = v34;
      if (h[0])
      {
        PMDisposePartitionRecord(h[0]);
      }

      if (v30 == -1)
      {
        v30 = *__error();
      }

      goto LABEL_103;
    }

    v50 = 0;
    v51 = 0;
    v52 = v31 + 144;
    while (1)
    {
      v54 = *(v52 + 64);
      v53 = *(v52 + 72);
      if (HIDWORD(v54))
      {
        v55 = 0;
      }

      else
      {
        v55 = (v53 + v54) >> 32 == 0;
      }

      if (!v55)
      {
        goto LABEL_78;
      }

      v57 = MBRInfoSearch(v52);
      if (!v57)
      {
        v57 = MBRInfoSearch("UNKNOWN");
        if (!v57)
        {
          break;
        }
      }

      v58 = *v57;
      v59 = v58 == 239;
      if (v58 == 239)
      {
        v60 = 238;
      }

      else
      {
        v60 = *v57;
      }

      if (v58 == 239)
      {
        v61 = v54 - 1;
      }

      else
      {
        v61 = 0;
      }

      if (v59)
      {
        v62 = 1;
      }

      else
      {
        v62 = v54;
      }

      v34 = PMNewPartitionExtended(h[0], v60, 0, v62, v61 + v53, 0, 0, &v74, 0x100000004);
      if (v34)
      {
        goto LABEL_99;
      }

      if ((*(v52 + 88) & 0x80) != 0)
      {
        *&(*h[0])[1072 * v74 + 616] |= 0x80000000;
      }

      v56 = (v51 + 1);
      v49 = *(v31 + 94);
      if (v51 >= 3 && v49 > 4)
      {
        goto LABEL_98;
      }

LABEL_95:
      ++v50;
      v52 += 152;
      v51 = v56;
      if (v50 >= v49)
      {
        goto LABEL_98;
      }
    }

    v49 = *(v31 + 94);
LABEL_78:
    v56 = v51;
    goto LABEL_95;
  }

  v65 = v10;
  v66 = v12;
  v71 = v15;
  if (!*(v6 + 94))
  {
LABEL_21:
    v26 = v71;
    v27 = mk_crc32(v71, v65);
    v28 = MKMediaWriteBlocks(a3, 2, v66, v8, v71, &v74);
    if (v13 != v66 && v28 == 0)
    {
      v30 = MKMediaWriteBlocks(a3, v14, v66, v8, v71, &v74);
    }

    else
    {
      v30 = v28;
    }

LABEL_31:
    free(v26);
    if (v30 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v16 = 0;
  v17 = (v6 + 240);
  v18 = v15;
  while (1)
  {
    h[0] = 0;
    h[1] = 0;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0u;
    *(v18 + 80) = 0u;
    *(v18 + 96) = 0u;
    *(v18 + 112) = 0u;
    *v18 = 0u;
    *(v18 + 16) = 0u;
    uuid_LtoB(v18 + 16, (v17 - 48));
    GPTTypestr2Uuid(h, v17 - 96);
    uuid_LtoB(v18, h);
    v19 = *(v17 - 4);
    *(v18 + 32) = v19;
    *(v18 + 40) = v19 + *(v17 - 3) - 1;
    *(v18 + 48) = *(v17 - 2);
    v20 = strlen(v17 - 144);
    v21 = uniconvert((v18 + 56), 72, 0x14000100u, 0, v17 - 144, v20, 0x8000100u, 0);
    if (v20 >= 1 && v21 == -1)
    {
      break;
    }

    if ((*(v17 - 8) & 8) != 0)
    {
      v22 = *(v17 - 3) >= 0xC8uLL ? 200 : *(v17 - 3);
      v23 = MKMediaEraseBlocks(a3, *(v17 - 4), v22, v8, &v74);
      if (v23 || (v24 = *(v17 - 3), v24 >= 0xC9) && (v24 - 200 >= 0xC8 ? (v25 = 200) : (v25 = v24 - 200), v23 = MKMediaEraseBlocks(a3, v24 - v25 + *(v17 - 4), v25, v8, &v74), v23))
      {
        v30 = v23;
        v27 = 0;
        v26 = v71;
        goto LABEL_31;
      }
    }

    *(v17 - 1) &= 0xFFFFFFFFFFFFFFF6;
    *v17 = v16;
    v17 += 152;
    ++v16;
    v18 += 128;
    if (v16 >= *(v6 + 94))
    {
      goto LABEL_21;
    }
  }

  free(v71);
  v30 = 92;
LABEL_103:
  v63 = *MEMORY[0x277D85DE8];
  return v30;
}

void GPTTypestr2Uuid(unsigned __int8 *a1, char *__s)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = strlen(__s);
  uniconvert(v8, 80, 0x600u, 1u, __s, v4, 0x8000100u, 0);
  v5 = lookupDESC(v8);
  if (v5)
  {
    v6 = (v5 + 2);
  }

  else
  {
    v6 = v8;
  }

  if (uuid_parse(v6, a1))
  {
    uuid_copy(a1, NaNuuid);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t uniconvert(void *a1, int a2, CFStringEncoding a3, Boolean a4, const UInt8 *a5, int a6, CFStringEncoding a7, Boolean a8)
{
  v15 = a2;
  bzero(a1, a2);
  v16 = CFStringCreateWithBytes(0, a5, a6, a7, a8);
  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v16;
  usedBufLen = 0;
  v21.length = CFStringGetLength(v16);
  v21.location = 0;
  Bytes = CFStringGetBytes(v17, v21, a3, 0x2Du, a4, a1, v15, &usedBufLen);
  CFRelease(v17);
  return Bytes;
}

uint64_t MKMediaEraseBlocks(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unint64_t *a5)
{
  v6 = a4 >> 9;
  v8 = 0;
  result = MKMediaEraseSectors(a1, v6 * a2, v6 * a3, &v8);
  if (a5)
  {
    *a5 = v8 / v6;
  }

  return result;
}

uint64_t MKMediaEraseSectors(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v13 = 0;
  if (*(a1 + 112) >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = *(a1 + 112);
  }

  v9 = malloc_type_calloc(v8, 0x200uLL, 0x5851F96DuLL);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  v11 = MKMediaWriteMultipleSectors(a1, a2, a3, v9, v8, &v13);
  if (a4)
  {
    *a4 = v13;
  }

  free(v10);
  return v11;
}

uint64_t MKMediaWriteMultipleSectors(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, unint64_t a5, void *a6)
{
  if (a3)
  {
    v9 = a3;
    v12 = 0;
    while (1)
    {
      v13 = v9 >= a5 ? a5 : v9;
      v15 = 0;
      result = MKMediaWriteSectors(a1, a2, v13, a4, &v15);
      if (result)
      {
        break;
      }

      v12 += v15;
      a2 += v13;
      v9 -= v13;
      if (!v9)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = 0;
LABEL_10:
    result = 0;
  }

  if (a6)
  {
    *a6 = v12;
  }

  return result;
}

uint64_t mk_crc32(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = -1;
  do
  {
    v3 = *a1++;
    v2 = crc32table[(v3 ^ v2)] ^ (v2 >> 8);
    --a2;
  }

  while (a2);
  return ~v2;
}

uint64_t mk_crc32calc(char *a1, uint64_t a2, uint64_t a3)
{
  for (; a2; --a2)
  {
    v3 = *a1++;
    a3 = crc32table[(v3 ^ a3)] ^ (a3 >> 8);
  }

  return a3;
}

uint64_t PMNewPartitionListInternal(const void ***a1, int a2, unsigned int a3, unsigned int a4, int a5, int a6, char a7)
{
  v7 = a1;
  v8 = 0;
  LOWORD(a1) = 22;
  if (!a3)
  {
    goto LABEL_17;
  }

  if (!a4)
  {
    goto LABEL_17;
  }

  v8 = NewHandleClear(528);
  LOWORD(a1) = MemError();
  if (!v8)
  {
    goto LABEL_17;
  }

  v15 = *v8;
  v15[256] = 516;
  v15[257] = a6;
  v15[259] = a4;
  if ((a6 - 1) < 3)
  {
    LODWORD(a1) = APMSetupNewPartitionList(v8, a2, a3, a4, a5, a7);
    if (a1)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a6 == 8)
  {
    LODWORD(a1) = MBRSetupNewPartitionList(v8, a3, a4);
    if ((a1 & 0xFFFFFFFD) != 0)
    {
      goto LABEL_17;
    }

    *(*v8 + 154) |= 0x100000u;
    LODWORD(a1) = PMAccountFreespace(v8, 0, 0);
    if (a1)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a6 != 32)
  {
    LOWORD(a1) = -50;
    goto LABEL_17;
  }

  LODWORD(a1) = ISOSetupNewPartitionList(v8, a3, a4);
  if (!a1)
  {
LABEL_13:
    if (*(*v8 + 261))
    {
      MEMORY[0x259C86EE0](*v8 + 976);
    }

    LOWORD(a1) = 0;
  }

LABEL_17:
  *v7 = v8;
  return a1;
}

uint64_t MBRSetupNewPartitionList(const void **a1, unsigned int a2, unsigned __int16 a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_11;
  }

  PMSynthHeader(a1, a3, a2, 8);
  v6 = *a1;
  *(v6 + 259) = a3;
  *(v6 + 260) = 0x7FFF;
  *(v6 + 127) = 131135;
  v7 = a2 / 0x7E;
  if (a2 < 0x1F87E)
  {
    goto LABEL_10;
  }

  v8 = 2;
  while (v8 <= 0xFF)
  {
    v8 *= 2;
    *(v6 + 255) = v8;
    v9 = v7 >> 1;
    v10 = v7 > 0x801;
    v7 >>= 1;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v9 = v7;
LABEL_8:
  *(v6 + 126) = v9;
  if (v8 == 256)
  {
    *(v6 + 255) = 255;
    v7 = a2 / 0x3EC1;
LABEL_10:
    *(v6 + 126) = v7;
  }

LABEL_11:
  bzero(v15, 0x430uLL);
  v16 = 1;
  v18 = -1;
  v19 = 0x8000;
  strncpypad(v17, "MBR", 0x20uLL, 0);
  v11 = addentry(a1, v15, 0x210uLL, 0x20Au, 0xFFFFu, 0x430u) << 16;
  if (v11 == -65536)
  {
    v12 = *__error();
  }

  else
  {
    v12 = v11 >> 16;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

double PMSynthHeader(_OWORD **a1, unsigned int a2, int a3, __int16 a4)
{
  if (a1)
  {
    v4 = *a1;
    result = 0.0;
    v4[30] = 0u;
    v4[31] = 0u;
    v4[28] = 0u;
    v4[29] = 0u;
    v4[26] = 0u;
    v4[27] = 0u;
    v4[24] = 0u;
    v4[25] = 0u;
    v4[22] = 0u;
    v4[23] = 0u;
    v4[20] = 0u;
    v4[21] = 0u;
    v4[18] = 0u;
    v4[19] = 0u;
    v4[16] = 0u;
    v4[17] = 0u;
    v4[14] = 0u;
    v4[15] = 0u;
    v4[12] = 0u;
    v4[13] = 0u;
    v4[10] = 0u;
    v4[11] = 0u;
    v4[8] = 0u;
    v4[9] = 0u;
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    v6 = *a1;
    *(v6 + 256) = 516;
    *(v6 + 257) = a4;
    *(v6 + 1) = a2;
    *(v6 + 1) = a3;
    *(v6 + 250) = a2 >> 9;
  }

  return result;
}

_BYTE *strncpypad(_BYTE *a1, char *a2, unint64_t a3, int __c)
{
  v4 = a1;
  if (!a2 || ((v5 = *a2) != 0 ? (v6 = a3 == 0) : (v6 = 1), v6))
  {
    v7 = 0;
  }

  else
  {
    v8 = 1;
    do
    {
      *a1++ = v5;
      v5 = a2[v8];
      v9 = v8 + 1;
      if (v5)
      {
        v10 = v8 >= a3;
      }

      else
      {
        v10 = 1;
      }

      ++v8;
    }

    while (!v10);
    v7 = v9 - 1;
  }

  v11 = a3 > v7;
  v12 = a3 - v7;
  if (v11)
  {
    memset(a1, __c, v12);
  }

  return v4;
}

uint64_t PMAccountFreespace(const void **a1, int a2, unsigned int a3)
{
  v45 = *MEMORY[0x277D85DE8];
  bzero(&v41, 0x430uLL);
  if (!a1)
  {
    v12 = -50;
    goto LABEL_55;
  }

  v6 = *a1;
  v7 = *(*a1 + 257);
  v8 = v7 < 4;
  PMInitPartitionRecord(v7, 0, 0, 24320, 0, 0, &v41);
  v44 = (a2 << 24) | 0x200000;
  v9 = *(v6 + 261);
  if (v9 == 1)
  {
    v10 = v6[134];
    v11 = v6[135] + v10;
    LOWORD(v9) = 1;
  }

  else
  {
    LOWORD(v16) = 0;
    v11 = 0;
    v17 = v7;
    v18 = (v7 == 8) & (a3 >> 15);
    v10 = -1;
LABEL_13:
    v19 = v16;
    if (v16 <= v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = v16;
    }

    v20 = v19 - 1;
    v21 = -v16;
    v22 = &v6[268 * v19 - 134];
    while (v21 + v20 != -1)
    {
      v23 = *(v22 + 1076);
      ++v20;
      v22 += 1072;
      if (v23)
      {
        LOWORD(v16) = v20 + 1;
        v24 = *v22;
        if (v17 <= 7 && !v24)
        {
          goto LABEL_13;
        }

        if (v24 < v10)
        {
          v10 = *v22;
        }

        if ((*(v22 + 460) & 3) != 0)
        {
          goto LABEL_13;
        }

        v25 = v23 + v24;
        v26 = v20 + 1;
LABEL_25:
        v27 = v26;
        if (v26 <= v9)
        {
          v28 = v9;
        }

        else
        {
          v28 = v26;
        }

        v29 = &v6[268 * v26 - 134];
        while (v28 != v27)
        {
          ++v27;
          v30 = *(v29 + 1076);
          v29 += 1072;
          if (v30)
          {
            v31 = *v29;
            v32 = v30 + *v29;
            if (v32 > v11)
            {
              v11 = v30 + *v29;
            }

            v33 = *(v29 + 460);
            v26 = v27;
            if ((v33 & 3) != 0)
            {
              goto LABEL_25;
            }

            v34 = v31 - v25;
            if (v31 == v25)
            {
              goto LABEL_13;
            }

            if ((v34 & 0x80000000) != 0)
            {
              if (v17 != 8 || (v35 = *(v22 + 546), v35 != 5) && v35 != 15 && v35 != 133)
              {
                if (v23 >= v25 - v31)
                {
                  if (v25 == v11)
                  {
                    v11 = v32;
                  }

                  *(v22 + 4) = v34 + v23;
                  *(v22 + 76) += v34;
                }
              }
            }

            else if (!v18 || v34 >= *(v6 + 254))
            {
              if ((a3 & 0x80000) != 0 && v34 <= 0x7F && *(v22 + 546) != 4097)
              {
                *(v22 + 4) = v34 + v23;
                goto LABEL_13;
              }

              if ((a3 & 0x8000) == 0 || v34 >= 0x20)
              {
                v38 = v20;
                v39 = v17;
                v40 = v18;
                v42 = v25;
                v43 = v31 - v25;
                v12 = addentry(a1, &v41, 0x210uLL, 0x20Au, (v20 + 1), 0x430u);
                if (v12)
                {
                  goto LABEL_55;
                }

                v6 = *a1;
                LOWORD(v16) = v38 + 2;
                LOWORD(v9) = *(*a1 + 261);
                v17 = v39;
                v18 = v40;
              }
            }

            goto LABEL_13;
          }
        }

        break;
      }
    }
  }

  if (v9 && v10 > v8)
  {
    v42 = 1;
    v43 = v10 - 1;
    v12 = addentry(a1, &v41, 0x210uLL, 0x20Au, 0, 0x430u);
    if (v12)
    {
      goto LABEL_55;
    }

    v6 = *a1;
  }

  v13 = v6[1];
  v14 = v13 >= v11;
  v15 = v13 - v11;
  if (v15 != 0 && v14)
  {
    v42 = v11;
    v43 = v15;
    v12 = addentry(a1, &v41, 0x210uLL, 0x20Au, 0xFFFFu, 0x430u);
  }

  else
  {
    v12 = 0;
  }

LABEL_55:
  v36 = *MEMORY[0x277D85DE8];
  return v12;
}

void PMInitPartitionRecord(int a1, int a2, int a3, int a4, char *a5, char *a6, _WORD *a7)
{
  bzero(a7, 0x430uLL);
  *a7 = 20557;
  *(a7 + 126) = -1;
  *(a7 + 2) = a2;
  *(a7 + 3) = a3;
  *(a7 + 21) = a3;
  if (!a4)
  {
    if (!a5)
    {
      a7[277] = 0;
      if (!a6)
      {
        return;
      }

      goto LABEL_8;
    }

    a7[277] = PMDescriptorSearch(a5, a1);
    goto LABEL_6;
  }

  a5 = PMCodeSearch(a4, a1);
  a7[277] = a4;
  if (a5)
  {
LABEL_6:
    strncpypad(a7 + 48, a5, 0x20uLL, 0);
  }

  if (!a6)
  {
    return;
  }

LABEL_8:

  strncpypad(a7 + 16, a6, 0x20uLL, 0);
}

uint64_t MBRCodeSearch(int a1)
{
  for (i = &MBRDescriptors; *i != a1; i += 8)
  {
    v2 = i + 8;
    if (!*(i + 3))
    {
      return *(v2 + 1);
    }
  }

  v2 = i;
  return *(v2 + 1);
}

__int16 *MBRInfoSearchByType(int a1)
{
  for (i = &MBRDescriptors; *i != a1; i += 8)
  {
    v2 = i + 8;
    if (!*(i + 3))
    {
      return v2;
    }
  }

  return i;
}

unsigned __int16 *PMLookupDESC(char *a1, int a2, unsigned __int16 *a3)
{
  v3 = 0;
  if (a1)
  {
    v4 = a3;
    if (a3)
    {
      v6 = *(a3 + 1);
      if (v6)
      {
        v3 = a3;
        while (strcasecmp(a1, v6))
        {
          v6 = *(v3 + 3);
          v3 += 8;
          if (!v6)
          {
            return 0;
          }
        }

        if (a2)
        {
          while (*v4 != *v3)
          {
            v9 = *(v4 + 3);
            v4 += 8;
            if (!v9)
            {
              return v3;
            }
          }

          return v4;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t PMNewPartitionExtended(const void **a1, int a2, char *a3, unsigned int a4, unsigned int a5, char *a6, unsigned int a7, unsigned __int16 *a8, uint64_t a9)
{
  v55[134] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v13 = 0x8000;
    v14 = -50;
    goto LABEL_84;
  }

  v11 = *a1;
  v12 = *(*a1 + 1);
  if (v12 < 0x200)
  {
    v13 = 0x8000;
    v14 = -5323;
    goto LABEL_84;
  }

  v15 = *(v11 + 261);
  v16 = *(v11 + 260);
  if (v15 >= v16)
  {
    v13 = 0x8000;
    v14 = -5341;
    goto LABEL_84;
  }

  if (v16 <= a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = 0;
  }

  if (v16 == 0x7FFF)
  {
    v21 = a4;
  }

  else
  {
    v21 = v20;
  }

  v22 = v12 >> 9;
  if (a7)
  {
    v23 = a7;
  }

  else
  {
    v23 = v12 >> 9;
  }

  v24 = *(v11 + 257);
  if (v24 >= 4)
  {
    if (v24 == 8 && (a9 & 0x100000000) == 0 && v22 == *(v11 + 250))
    {
      v26 = v11[1];
      if ((a9 & 0x2000000) != 0 && v26 <= 0xFC000)
      {
        v25 = 0;
        v23 = *(v11 + 254);
      }

      else
      {
        v25 = 0;
        if (v26 > 0x200000)
        {
          v23 = 2048;
        }
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 1;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v13 = 0;
  v32 = 0;
  v33 = v11;
  v34 = v23 / v22;
  while (1)
  {
    if (v15 <= v13)
    {
      v35 = v11[1];
    }

    else
    {
      v35 = v33[134];
      if (*(v33 + 541) == 24320 && (v33[249] & 0x20) == 0)
      {
        if (v21 == v35)
        {
          v32 = v13;
        }

        v28 = 24320;
        goto LABEL_60;
      }
    }

    v36 = v35 / v34 * v34;
    if (v21)
    {
      if (v21 <= v25)
      {
        v37 = v25;
      }

      else
      {
        v37 = v21;
      }

      if ((a9 & 0x10000000) == 0)
      {
        v37 = v21;
      }

      if (v37 < v25)
      {
        goto LABEL_57;
      }

      v38 = v37;
      if (v37 >= v36)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v37 = 0;
      v38 = v25;
    }

    v39 = v38 / v34;
    if (v38 % v34)
    {
      ++v39;
    }

    v40 = v39 * v34 - v38;
    if (((v28 != 24320) & BYTE3(a9) & (v40 == 0)) != 0)
    {
      v40 = v34;
    }

    v25 = v40 + v38;
    if (a2 == 24320)
    {
      v25 = v38;
    }

    v41 = v36 >= v25;
    v42 = v36 - v25;
    if (v42 == 0 || !v41)
    {
      goto LABEL_57;
    }

    if (a5)
    {
      break;
    }

    if (v21)
    {
      LODWORD(v31) = v42;
LABEL_65:
      v29 = v25;
      if (v42)
      {
        goto LABEL_66;
      }

LABEL_74:
      v14 = -5344;
      goto LABEL_84;
    }

    if (v42 <= v31)
    {
      goto LABEL_57;
    }

    v29 = v25;
LABEL_58:
    if (v15 <= v13)
    {
      v43 = 0;
      LODWORD(v31) = v42;
      LOWORD(v30) = v27;
      goto LABEL_63;
    }

    v25 = v33[135] + v33[134];
    v28 = *(v33 + 541);
    v21 = v37;
    v31 = v42;
    v30 = v27;
LABEL_60:
    v27 = ++v13;
    v33 += 268;
    if (v13 > v15)
    {
      v43 = 0;
      v37 = v21;
      goto LABEL_63;
    }
  }

  if (v42 / a5 < 0.99)
  {
LABEL_57:
    v42 = v31;
    v27 = v30;
    goto LABEL_58;
  }

  if (v42 < a5)
  {
    a5 = v42;
  }

  v43 = v42;
LABEL_63:
  if (v37 | a5)
  {
    LODWORD(v31) = a5;
    LODWORD(v42) = v43;
    goto LABEL_65;
  }

  v13 = v30;
  if (!v31)
  {
    goto LABEL_74;
  }

LABEL_66:
  if (v32)
  {
    v13 = v32 + 1;
  }

  if (v13)
  {
    v44 = &v11[268 * v13 - 136];
    if (*(v44 + 554) != 24320)
    {
      goto LABEL_76;
    }

    if ((*(v44 + 468) & 0x20) != 0)
    {
      goto LABEL_76;
    }

    v14 = delentry(a1, 528, 0x20Au, --v13, 1072);
    if (!v14)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v13 = 0;
LABEL_76:
    bzero(v55, 0x430uLL);
    v14 = addentry(a1, v55, 0x210uLL, 0x20Au, v13, 0x430u);
    if (!v14)
    {
      v45 = v29;
      v46 = *a1;
      v47 = *a1 + 1072 * v13;
      v48 = v47 + 528;
      v49 = a6;
      v50 = v47;
      PMInitPartitionRecord(v46[257], v45, v31, a2, a3, v49, (v47 + 528));
      v51 = PMDefaultPartitionStatus(v46[257], v48);
      v52 = *(v50 + 996);
      *(v50 + 996) = v52 | 0x10;
      if ((a9 & 4) == 0)
      {
        *(v48 + 88) |= 0x100000u;
      }

      v14 = v51;
      if (a2 == 24320)
      {
        *(v48 + 468) = v52 | 0x30;
      }

      if (PMCategorize(v46[257], *(v48 + 554)) == 2 || *(v48 + 554) == 4097)
      {
        MEMORY[0x259C86EE0](v50 + 976);
      }
    }
  }

LABEL_84:
  if (a8)
  {
    *a8 = v13;
  }

  v53 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t delentry(const void **a1, int a2, unsigned int a3, unsigned int a4, __int16 a5)
{
  if (a1)
  {
    v7 = *(*a1 + a3);
    if (v7 <= a4)
    {
      return -110;
    }

    else
    {
      v8 = moveblockextended(a1, a2 + (a5 & 0xFFFE) * a4, -(a5 & 0xFFFE), 0, a2 + v7 * (a5 & 0xFFFE));
      if (!v8)
      {
        v8 = 0;
        *(*a1 + a3) = v7 - 1;
      }
    }
  }

  else
  {
    return 22;
  }

  return v8;
}

uint64_t PMDefaultPartitionStatus(unsigned int a1, uint64_t a2)
{
  if (a1 > 0x20)
  {
    goto LABEL_6;
  }

  if (((1 << a1) & 0xF) != 0)
  {
    return APMSetDefaultStatus(a2);
  }

  if (((1 << a1) & 0x100010100) != 0)
  {
    return 0;
  }

LABEL_6:
  if (a1 == 128)
  {
    return APMSetDefaultStatus(a2);
  }

  return 4294967292;
}

uint64_t PMCategorize(int a1, int a2)
{
  if (a1 <= 7)
  {
    if (a1 < 4)
    {
      return APMCategorize(a2);
    }

    return 0;
  }

  if (a1 == 8)
  {
    return MBRCategorize(a2);
  }

  if (a1 != 16)
  {
    if (a1 == 32)
    {
      return ISOCategorize(a2);
    }

    return 0;
  }

  return GPTCategorize(a2);
}

uint64_t MBRCategorize(int a1)
{
  for (i = &MBRDescriptors; *i != a1; i += 8)
  {
    v2 = i + 8;
    if (!*(i + 3))
    {
      return v2[1];
    }
  }

  v2 = i;
  return v2[1];
}

uint64_t MBRWriteMedia(Handle h, int a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  v39 = 0;
  v40[0] = 0;
  v40[1] = 0;
  if (!h)
  {
    v8 = 0;
    LOWORD(v11) = -109;
    goto LABEL_10;
  }

  v8 = HGetState(h);
  HLock(h);
  v9 = *h;
  if (*(*h + 257) != 8)
  {
    goto LABEL_8;
  }

  if (a2 == 0xFFFF)
  {
    a2 = 0;
  }

  if ((a2 & 0x100) != 0)
  {
LABEL_8:
    LOWORD(v11) = -50;
    goto LABEL_10;
  }

  v10 = (a4)(a3, 15, 0, 0, 0, &v39);
  if (v10)
  {
    LOWORD(v11) = v10;
    goto LABEL_10;
  }

  MKScaleGeometry(v40, &v39 + 1);
  if (!HIDWORD(v39))
  {
    LOWORD(v11) = 22;
    goto LABEL_10;
  }

  PMSortMapII(h, 0);
  v13 = *(v9 + 1);
  v14 = malloc_type_calloc(1uLL, v13, 0x4D188F6FuLL);
  if (!v14)
  {
    LOWORD(v11) = 12;
    goto LABEL_10;
  }

  v15 = v14;
  if ((a2 & 0x8000000) == 0)
  {
    (a4)(a3, 4, WORD2(v39), (LODWORD(v40[0]) - 1), 1, 0);
  }

  v41 = -1;
  v42 = 0;
  v44 = -1;
  v15[255] = -21931;
  v16 = *h;
  v43 = 0;
  LOWORD(v17) = *(v16 + 261);
  if (!v17)
  {
LABEL_55:
    LOWORD(v32) = (a4)(a3, 3, v13, 0, 1, v15);
    goto LABEL_56;
  }

  v33 = v13;
  v18 = 0;
  v36 = 0;
  LODWORD(v19) = 0;
  v34 = 0;
  v11 = 0;
  v20 = 0;
  v37 = 0;
  v38 = (v15 + 223);
  v35 = v15;
  while (1)
  {
    v21 = &v16[v18];
    v22 = *&v16[v18 + 1082];
    if (v22 == 0x8000)
    {
      LODWORD(v37) = *(v21 + 134);
      v23 = *(v21 + 154);
      if ((v23 & 0x100000) != 0)
      {
        *(v21 + 154) = v23 & 0xFFEFFFFF;
        if (v20 + 1 >= v17)
        {
          v24 = *(v16 + 1);
        }

        else
        {
          v24 = *&v16[v18 + 1608] - v37;
        }

        if (v24 >= 0xC8)
        {
          v24 = 200;
        }
      }

      else
      {
        v24 = 1;
      }

      v36 = v24;
      v31 = *&v16[v18 + 968];
      if (v31)
      {
        memcpy(v15, v31, 0x1BEuLL);
      }

      goto LABEL_42;
    }

    *(v21 + 249) &= ~0x10u;
    if (v22 >> 12 <= 4)
    {
      break;
    }

LABEL_42:
    v43 = ++v20;
    v17 = *(v16 + 261);
    v18 += 1072;
    if (v17 <= v20)
    {
      goto LABEL_52;
    }
  }

  if (HIDWORD(v37) > 3)
  {
    LOWORD(v11) = -5323;
    goto LABEL_57;
  }

  if (v22 == 5 || (v22 != 133 ? (v25 = v22 == 15) : (v25 = 1), v25))
  {
    v26 = v42;
    *(v38 + 8) = v42;
    v27 = (v38 + 8);
    *(v38 + 4) = 5;
    v42 = v26 + 1;
    *(v38 + 12) = 1;
    v28 = (v38 + 12);
    v29 = *&v16[v18 + 536];
  }

  else
  {
    if ((v16[v18 + 619] & 2) == 0)
    {
      v11 = WriteGutz(v16, &v43, &v44, v38, &v42, &v41, a3, a4);
      *&v16[v18 + 1034] = *(v16 + 250) * ++v34 - 1;
LABEL_34:
      Setupdpp(v16, v38);
      ++HIDWORD(v37);
      v38 += 16;
      v20 = v43;
      goto LABEL_42;
    }

    v26 = v42;
    *(v38 + 8) = v42;
    v27 = (v38 + 8);
    *(v38 + 4) = 5;
    v42 = v26 + 1;
    *(v38 + 12) = 1;
    v28 = (v38 + 12);
    v29 = *&v16[v18 + 536];
    if (v26 == v29)
    {
LABEL_47:
      LOWORD(v11) = -5323;
      v15 = v35;
      goto LABEL_57;
    }
  }

  if (v26 > v29)
  {
    goto LABEL_47;
  }

  v19 = (v19 + 4);
  v11 = WriteDOSExtendedChain(v16, &v43, v38, v26, v19, a3, a4);
  if (!v11)
  {
    v30 = *v28 + *v27;
    if (v42 > v30)
    {
      v30 = v42;
    }

    v42 = v30;
    v15 = v35;
    goto LABEL_34;
  }

  v15 = v35;
LABEL_52:
  if (!v11)
  {
    v13 = v33;
    if (!v36)
    {
      goto LABEL_55;
    }

    v32 = (a4)(a3, 4, v33, v37);
    if (!v32)
    {
      goto LABEL_55;
    }

LABEL_56:
    LOWORD(v11) = v32;
  }

LABEL_57:
  free(v15);
LABEL_10:
  HSetState(h, v8);
  return v11;
}

SInt8 HGetState(Handle h)
{
  if (h)
  {
    v1 = 0;
    v2 = *(h + 16);
  }

  else
  {
    v2 = 0;
    v1 = -109;
  }

  MemErr = v1;
  return v2;
}

void HLock(Handle h)
{
  if (h)
  {
    v1 = 0;
    *(h + 16) |= 0x80u;
  }

  else
  {
    v1 = -109;
  }

  MemErr = v1;
}

uint64_t MKMediaDeviceIO(const void *a1, char a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  if (a1 && (v12 = CFGetTypeID(a1), v12 == MKMediaGetTypeID()))
  {
    if (a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = 512;
    }

    if ((v13 & 0x1FF) != 0)
    {
      return -5308;
    }

    else
    {
      v16 = a5;
      v33 = 0u;
      *count = 0u;
      v17 = v13 >> 9;
      v18 = a4 * v17;
      v19 = v16 * v17;
      v20 = a2 & 0xF;
      updated = -4;
      if (v20 <= 3)
      {
        if (v20 == 2)
        {
          return MKMediaReadSectors(a1, v18, v19, a6, 0);
        }

        else
        {
          if (v20 != 3)
          {
            return updated;
          }

          return MKMediaWriteSectors(a1, v18, v19, a6, 0);
        }
      }

      if (v20 == 4)
      {
        MKMediaGetGeometry(a1, &v33);
        v22 = malloc_type_calloc(count[0], 0x200uLL, 0xCA658170uLL);
        if (v22)
        {
          v23 = v22;
          updated = MKMediaWriteMultipleSectors(a1, v18, v19, v22, count[0], 0);
          free(v23);
        }

        else
        {
          return 12;
        }
      }

      else
      {
        if (v20 == 14)
        {
          updated = MKMediaUpdateProperties(a1);
          if (updated)
          {
            return updated;
          }
        }

        else if (v20 != 15)
        {
          return updated;
        }

        *a6 = 2;
        v24 = MKMediaCopyProperty(a1, @"Geometry");
        if (v24)
        {
          v25 = v24;
          Value = CFDictionaryGetValue(v24, @"Block Size");
          CFNumberGetValue(Value, kCFNumberSInt32Type, &v33);
          v27 = CFDictionaryGetValue(v25, @"Sector Count");
          CFNumberGetValue(v27, kCFNumberSInt64Type, &v33 + 8);
          v28 = CFDictionaryGetValue(v25, @"Maximum Transfer Sector Count");
          CFNumberGetValue(v28, kCFNumberSInt64Type, count);
          v29 = v33;
          if (a3)
          {
            v29 = a3;
          }

          *(a6 + 4) = v29;
          v30 = v29 >> 9;
          v31 = count[0];
          *(a6 + 8) = *(&v33 + 1) / v30;
          v32 = v31 / v30;
          if (v32 >> 16)
          {
            LOWORD(v32) = 0x8000;
          }

          *(a6 + 16) = v32;
          CFRelease(v25);
          return 0;
        }

        else
        {
          return 22;
        }
      }
    }
  }

  else
  {
    return -50;
  }

  return updated;
}

uint64_t MKMediaGetTypeID()
{
  result = _kMKMediaID;
  if (!_kMKMediaID)
  {
    _kMKMediaClass = 0;
    unk_27F957190 = "MKMedia";
    qword_27F957198 = 0;
    unk_27F9571A0 = 0;
    qword_27F9571B0 = 0;
    unk_27F9571B8 = 0;
    qword_27F9571A8 = _MKMediaCFRuntimeFinalize;
    qword_27F9571C0 = _MKMediaCFRuntimeCopyFormattingDesc;
    qword_27F9571C8 = _MKMediaCFRuntimeCopyDebugDesc;
    result = _CFRuntimeRegisterClass();
    _kMKMediaID = result;
  }

  return result;
}

unint64_t *MKScaleGeometry(unint64_t *result, int *a2)
{
  v2 = *result;
  if (HIDWORD(*result))
  {
    v3 = *a2;
    while ((v3 & 0x80000000) == 0)
    {
      v3 *= 2;
      *a2 = v3;
      v4 = v2 >> 33;
      v2 >>= 1;
      *result = v2;
      if (!v4)
      {
        return result;
      }
    }

    *a2 = 0;
    *result = 0;
  }

  return result;
}

void PMSortMapII(Ptr *a1, int a2)
{
  v4 = HGetState(a1);
  HLock(a1);
  if (a2 == 1)
  {
    v5 = PMIndexCompare;
  }

  else
  {
    v5 = PMBlockCompare;
  }

  qsort(*a1 + 528, *(*a1 + 261), 0x430uLL, v5);

  HSetState(a1, v4);
}

uint64_t PMBlockCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  if (v2 > v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

void HSetState(Handle h, SInt8 flags)
{
  if (h)
  {
    v2 = 0;
    *(h + 16) = flags;
  }

  else
  {
    v2 = -109;
  }

  MemErr = v2;
}

uint64_t WriteGutz(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4, int *a5, unsigned int *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, void))
{
  v13 = a1 + 1072 * *a2;
  v14 = v13 + 528;
  *(a4 + 4) = *(v13 + 1082);
  v15 = *(v13 + 536);
  v16 = *(v13 + 540);
  *(a4 + 8) = v15;
  *(a4 + 12) = v16;
  if ((*(v13 + 618) & 0x10) != 0)
  {
    result = a8(a7, 4, *(a1 + 2));
    if (result)
    {
      return result;
    }

    v21 = *(a4 + 12);
    if (v21 >= 0xC9)
    {
      v22 = v21 - 200 >= 0xC8 ? 200 : v21 - 200;
      result = (a8)(a7, 4, *(a1 + 2), v21 - v22 + *(a4 + 8));
      if (result)
      {
        return result;
      }
    }

    *(v14 + 88) &= ~0x100000u;
    v15 = *(a4 + 8);
  }

  v23 = *a6;
  if (*a6 >= v15)
  {
    v23 = v15;
  }

  *a6 = v23;
  v24 = *a5;
  if (*a5 <= (*(a4 + 12) + *(a4 + 8)))
  {
    v24 = *(a4 + 12) + *(a4 + 8);
  }

  *a5 = v24;
  *a4 = 0;
  if ((*a3 & 0x80000000) == 0 || (*(v14 + 88) & 0x80000000) == 0)
  {
    return 0;
  }

  result = 0;
  *a3 = *a2;
  *a4 = 0x80;
  return result;
}

uint64_t Setupdpp(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(result + 508);
    v4 = v2 / (*(result + 510) * v3);
    v5 = (a2 + 3);
    v6 = (a2 + 1);
    if (!v4)
    {
      *(result + 510);
      if ((v2 / v3) == 1 && (v2 % v3) == 0)
      {
        *v5 = 0;
        v8 = 1;
        *v6 = 1;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v5 = (a2 + 3);
    v6 = (a2 + 1);
  }

  v8 = -1;
  *v5 = -1;
  *v6 = -2;
LABEL_11:
  *(a2 + 2) = v8;
  v9 = v2 + *(a2 + 12);
  v10 = v9 - 1;
  if (v9 == 1)
  {
    v13 = (a2 + 7);
    v14 = (a2 + 5);
    v15 = (a2 + 6);
LABEL_17:
    v16 = -1;
    *v13 = -1;
    *v14 = -2;
    goto LABEL_18;
  }

  v11 = *(result + 508);
  v12 = v10 / (*(result + 510) * v11);
  v13 = (a2 + 7);
  v14 = (a2 + 5);
  v15 = (a2 + 6);
  if (v12)
  {
    goto LABEL_17;
  }

  *(result + 510);
  if ((v10 / v11) != 1 || (v10 % v11))
  {
    goto LABEL_17;
  }

  *v13 = 0;
  v16 = 1;
  *v14 = 1;
LABEL_18:
  *v15 = v16;
  return result;
}

uint64_t PMDisposePartitionRecord(Handle h)
{
  if (h)
  {
    v2 = *h;
    if (*(*h + 256) == 516)
    {
      v3 = *(v2 + 261);
      v4 = v3 - 1;
      *(v2 + 261) = v3 - 1;
      if (v3)
      {
        v5 = (v2 + 968);
        do
        {
          if (*v5)
          {
            free(*v5);
            v4 = *(v2 + 261);
          }

          v5 += 134;
          v6 = v4--;
          *(v2 + 261) = v4;
        }

        while (v6);
      }

      DisposeHandle(h);
      return 0;
    }

    else
    {
      return -5351;
    }
  }

  else
  {
    return -109;
  }
}

void DisposeHandle(Handle h)
{
  MemErr = -109;
  if (h)
  {
    v2 = *h;
    if (v2)
    {
      free(v2);
    }

    free(h);
    MemErr = 0;
  }
}

uint64_t GPTUpdatePartitionDictionaries(uint64_t *a1, CFArrayRef theArray)
{
  v3 = *a1;
  if (*(*a1 + 94))
  {
    v4 = 0;
    v5 = (v3 + 96);
    v6 = MEMORY[0x277CBF150];
    do
    {
      v7 = uuid2cfstr(v5 + 6);
      Mutable = CFArrayDictionarySearchWithIndexOptions(theArray, @"GUID", v7, 0, 0);
      CFRelease(v7);
      if (!Mutable)
      {
        v9 = lookupDESC(&v5[3]);
        if (v9)
        {
          v10 = v9[1];
        }

        else
        {
          LOBYTE(v10) = 7;
        }

        if (((1 << v10) & 0x96) == 0)
        {
          goto LABEL_10;
        }

        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], v6);
        CFArrayAppendValue(theArray, Mutable);
        CFRelease(Mutable);
        if (!Mutable)
        {
          v12 = 0xFFFFFFFFLL;
          goto LABEL_14;
        }
      }

      v11 = GPTUpdatePartitionDictionary(Mutable, v5, *(v3 + 32));
      if (v11)
      {
        v12 = v11;
        goto LABEL_14;
      }

LABEL_10:
      ++v4;
      v5 = (v5 + 152);
    }

    while (v4 < *(v3 + 94));
  }

  v12 = 0;
LABEL_14:
  v14.length = CFArrayGetCount(theArray);
  v14.location = 0;
  CFArraySortValues(theArray, v14, CFRankPartition, 0);
  return v12;
}

CFComparisonResult CFRankPartition(const __CFDictionary *a1, const __CFDictionary *a2, void *a3)
{
  Value = CFDictionaryGetValue(a1, @"Offset");
  if (!Value)
  {
    return 1;
  }

  v6 = Value;
  v7 = CFDictionaryGetValue(a2, @"Offset");
  if (!v7)
  {
    return -1;
  }

  return CFNumberCompare(v6, v7, a3);
}

uint64_t MKCFDisposeMedia(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 22;
  }

  Value = CFDictionaryGetValue(a1, @"Schemes");
  if (!Value)
  {
    return 22;
  }

  v3 = Value;
  Count = CFArrayGetCount(Value);
  if (Count)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v5);
      if (ValueAtIndex)
      {
        v8 = CFDictionaryGetValue(ValueAtIndex, @"Sections");
        if (v8)
        {
          v9 = CFArrayDictionarySearchWithIndexOptions(v8, @"ID", @"MAP", 0, 0);
          if (v9)
          {
            v10 = MKCFDisposeMediaMap(v9);
            if (v6)
            {
              v11 = 1;
            }

            else
            {
              v11 = v10 == 0;
            }

            if (v11)
            {
              v6 = v6;
            }

            else
            {
              v6 = v10;
            }
          }
        }
      }

      ++v5;
    }

    while (Count != v5);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(a1);
  return v6;
}

uint64_t MKCFDisposeMediaMap(const __CFDictionary *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 22;
  }

  Value = CFDictionaryGetValue(a1, @"Revision");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  v3 = mkcfrecoverref(a1);
  if (valuePtr == 0x10000)
  {
    return disposegpm(v3);
  }

  else
  {
    return PMDisposePartitionRecord(v3);
  }
}

uint64_t disposegpm(Ptr *a1)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v2 = gptdispose(a1);
  DisposeHandle(a1);
  return v2;
}

uint64_t gptdispose(uint64_t a1)
{
  if (a1)
  {
    v1 = *(*a1 + 8);
    if (v1)
    {
      if (*v1)
      {
        free(*v1);
      }

      v2 = *(v1 + 8);
      if (v2)
      {
        free(v2);
      }

      free(v1);
    }
  }

  return 0;
}

uint64_t _MKMediaCFRuntimeFinalize(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 88));
  v2 = *(a1 + 136);
  if (v2)
  {
    _MKMediaBufferPoolDestroy(v2);
    *(a1 + 136) = 0;
  }

  result = pthread_rwlock_destroy((a1 + 144));
  *(a1 + 88) = 0;
  return result;
}

void _MKMediaCommonDeinitialize(void *a1)
{
  if (a1 && *a1 == 1296786550)
  {
    v2 = *(a1 + 1);
    if ((v2 & 0x80000000) == 0)
    {
      Value = CFDictionaryGetValue(*(a1 + 2), @"Writable");
      if (Value && CFEqual(Value, *MEMORY[0x277CBED28]))
      {
        ioctl(v2, 0x20006416uLL);
      }

      close(v2);
    }

    v4 = *(a1 + 1);
    if (v4)
    {
      free(v4);
      *(a1 + 1) = 0;
    }

    v5 = *(a1 + 2);
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

void _MKMediaBufferPoolDestroy(uint64_t a1)
{
  free(*(a1 + 128));
  free(*(a1 + 136));
  pthread_cond_destroy(a1);
  pthread_mutex_destroy((a1 + 48));

  free(a1);
}

uint64_t MKCFCheckBootDevice(char *a1, _OWORD *a2)
{
  v35[2] = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v30 = 0;
  v29 = 0;
  v35[0] = 0;
  v35[1] = 0;
  cf = 0;
  UUID = -43;
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  if (MKBSDSlice(a1, &valuePtr, &v30, 0) >= 2)
  {
    __sprintf_chk(v34, 0, 0x21uLL, "/dev/rdisk%i", valuePtr);
    __sprintf_chk(bsdName, 0, 0x20uLL, "disk%is%i", valuePtr, v30);
    if (v30)
    {
      UUID = DevEntryCopyRegistryProperties(bsdName, &cf);
      if (!UUID)
      {
        v3 = MKAccessLibrary(0);
        if (v3)
        {
          v4 = v3;
          v5 = MKLoadDB(v3, @"database", &UUID);
          if (!v5)
          {
LABEL_13:
            CFRelease(v4);
            goto LABEL_14;
          }

          v6 = v5;
          v7 = MKLoadDB(v4, @"inventory", &UUID);
          if (!v7)
          {
            v8 = v6;
LABEL_12:
            CFRelease(v8);
            goto LABEL_13;
          }

          v8 = v7;
          v9 = MKMediaCreateWithPath(0, v34, 0, &UUID);
          if (UUID || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0 || (v13 = Mutable, CFDictionarySetValue(Mutable, @"Include most", *MEMORY[0x277CBED28]), v14 = MKCFReadMedia(v13, v9, &UUID), CFRelease(v13), !v14))
          {
LABEL_8:
            if (v9)
            {
              CFRelease(v9);
            }

            CFRelease(v6);
            goto LABEL_12;
          }

          Value = CFDictionaryGetValue(v14, @"Schemes");
          if (Value)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
            if (ValueAtIndex)
            {
              v17 = CFDictionaryGetValue(ValueAtIndex, @"Sections");
              if (v17)
              {
                v18 = CFArrayDictionarySearchWithIndexOptions(v17, @"ID", @"MAP", 0, 0);
                if (v18)
                {
                  v19 = v18;
                  v20 = CFDictionaryGetValue(v18, @"Partitions");
                  if (v20)
                  {
                    v21 = v20;
                    v22 = CFDictionaryGetValue(cf, @"Partition ID");
                    if (v22)
                    {
                      v23 = CFArrayDictionarySearchWithIndexOptions(v21, @"Partition ID", v22, 0, 0);
                      if (v23)
                      {
                        UUID = CFDictionaryGetUUID(v23, @"GUID", v35);
                        if (!UUID)
                        {
                          v24 = CFDictionaryGetValue(v19, @"Revision");
                          if (v24)
                          {
                            CFNumberGetValue(v24, kCFNumberSInt32Type, &valuePtr + 4);
                          }

                          v25 = mkcfrecoverref(v19);
                          if (HIDWORD(valuePtr) == 0x10000)
                          {
                            v27 = GPTCheckPartBootable(v4, v25, v35, a2, v9);
                            goto LABEL_36;
                          }

                          if (HIDWORD(valuePtr))
                          {
                            UUID = 22;
                            goto LABEL_38;
                          }

                          v26 = *v25;
                          UUID = PMSlice2Index(*v25, v30, &v29);
                          if (!UUID)
                          {
                            v27 = MKBootDisposition(v6, v8, v26, v29, a2);
LABEL_36:
                            UUID = v27;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_38:
          MKCFDisposeMedia(v14);
          goto LABEL_8;
        }
      }
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  result = UUID;
  if (UUID == -1)
  {
    result = *__error();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

char *MKBSDSlice(char *result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (result)
  {
    v7 = result;
    result = strstr(result, "disk");
    if (result)
    {
      v8 = result;
      result = sscanf(result, "disk%is", a2);
      if (result)
      {
        v9 = result;
        v10 = strrchr(v8, 115);
        v11 = v10;
        result = (sscanf(v10, "s%i", a3) + v9);
        if (a4)
        {
          v12 = v11 - v7;
          if (result < 2)
          {
            v12 = 0;
          }

          *a4 = v12;
        }
      }
    }
  }

  return result;
}

uint64_t DevEntryCopyRegistryProperties(char *bsdName, CFMutableDictionaryRef *a2)
{
  properties = 0;
  v3 = *MEMORY[0x277CD2898];
  v4 = IOBSDNameMatching(*MEMORY[0x277CD2898], 0, bsdName);
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = IORegistryEntryCreateCFProperties(MatchingService, &properties, *MEMORY[0x277CBECE8], 0);
    IOObjectRelease(v6);
  }

  else
  {
    v7 = 2;
  }

  *a2 = properties;
  return v7;
}

uint64_t DevEntryToIOMediaObject(char *bsdName, io_service_t *a2)
{
  v3 = *MEMORY[0x277CD2898];
  v4 = IOBSDNameMatching(*MEMORY[0x277CD2898], 0, bsdName);
  MatchingService = IOServiceGetMatchingService(v3, v4);
  *a2 = MatchingService;
  return 2 * (MatchingService == 0);
}

__CFDictionary *MKCFReadMedia(const __CFDictionary *a1, const void *a2, int *a3)
{
  MutableCopy = a1;
  h = 0;
  theArray = 0;
  if (a1)
  {
    v6 = MKCFOptionBit(a1, @"Diagnostics mode", 1);
    if (v6)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, MutableCopy);
      CFDictionaryRemoveValue(MutableCopy, @"Prefer GPT Map Entry");
      v7 = MutableCopy;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_6:
  v48 = 0;
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
  *__nel = 0u;
  v37 = 0u;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  v49[0] = MKMediaSchemesDetect(__nel, a2, v6, a2);
  if (v49[0])
  {
    goto LABEL_50;
  }

  if (!v6)
  {
    qsort(__nel + 4, LOWORD(__nel[0]), 0x30uLL, RankScheme);
  }

  MKMediaGetGeometry(a2, v35);
  v49[0] = 5;
  if ((v35[0] & 0x1FF) != 0)
  {
LABEL_50:
    v18 = 0;
    goto LABEL_51;
  }

  v49[0] = -5324;
  v8 = *(&v35[0] + 1);
  if (MutableCopy)
  {
    v30 = *(&v35[0] + 1);
    v29 = MKCFOptionBit(MutableCopy, @"Raw Read Mode", 256);
    v28 = MKCFOptionBit(MutableCopy, @"Extended Mode", 512);
    v27 = MKCFOptionBit(MutableCopy, @"Generate Freespace Records", 16);
    v9 = MKCFOptionBit(MutableCopy, @"Merge Adjacent Freespace Records", 128);
    v10 = MKCFOptionBit(MutableCopy, @"Fit Map to Media", 8);
    v11 = MKCFOptionBit(MutableCopy, @"synthesize Volumes", 64);
    v12 = MKCFOptionBit(MutableCopy, @"Skip Zero Length Entries", 32);
    v13 = MKCFOptionBit(MutableCopy, @"Skip Free & Vold Entries", 0x40000);
    v14 = MKCFOptionBit(MutableCopy, @"Merge Trailing Freespace Record", 0x80000);
    v15 = (v28 | v29 | v27 | v9 | v10 | v11 | v12 | v13 | v14 | MKCFOptionBit(MutableCopy, @"Ignore Shims", 0x8000)) & 0xFFFFF1FF | 0xA00;
    v8 = v30;
  }

  else
  {
    v15 = 2560;
  }

  v32 = 0;
  v16 = HIDWORD(v8) == 0;
  v17 = __nel + 4;
  if (!LOWORD(__nel[0]))
  {
    v23 = 0;
    v18 = 0;
    goto LABEL_42;
  }

  v18 = 0;
  v19 = 0;
  v20 = v15 | (v16 << 10);
  while (1)
  {
    v21 = PMSchemeSearch(*(v17 + 2), &v34);
    v22 = *(v17 + 1);
    if (v22 <= 15)
    {
      if (v22 == 1)
      {
        v49[0] = APMReadMedia(&h, v20 | 0x100000, a2, MKMediaDeviceIO);
        if (v49[0])
        {
          goto LABEL_27;
        }

        v23 = MKCFCreateScheme(v21, v34, &v32);
        if (v23)
        {
          v24 = APMCFRecordSections(h, MutableCopy, v32);
LABEL_34:
          v49[0] = v24;
          if (v24)
          {
            goto LABEL_42;
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v22 != 8)
        {
          goto LABEL_56;
        }

        v49[0] = MBRReadMedia(&h, v20, a2, MKMediaDeviceIO);
        if (v49[0])
        {
LABEL_27:
          v23 = 0;
          goto LABEL_42;
        }

        v23 = MKCFCreateScheme(v21, v34, &v32);
        if (v23)
        {
          v24 = MBRCFRecordSections(h, MutableCopy, v32);
          goto LABEL_34;
        }
      }

      goto LABEL_35;
    }

    if (v22 != 16)
    {
      if (v22 != 32)
      {
LABEL_56:
        v23 = 0;
        v49[0] = -5307;
        goto LABEL_42;
      }

      v49[0] = ISOReadMedia(&h, v20, a2, MKMediaDeviceIO);
      if (v49[0])
      {
        goto LABEL_27;
      }

      v23 = MKCFCreateScheme(v21, v34, &v32);
      if (v23)
      {
        v24 = ISOCFRecordSections(h, v32);
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v49[0] = GPTReadMedia(&h, MutableCopy, a2);
    if (v49[0])
    {
      break;
    }

    v23 = MKCFCreateScheme(v21, v34, &v32);
    if (v23)
    {
      v24 = GPTCFRecordSections(h, MutableCopy, v32);
      goto LABEL_34;
    }

LABEL_35:
    if (!v18)
    {
      v18 = MKCFCreateMedia(&theArray, v49);
      if (v49[0])
      {
        goto LABEL_42;
      }
    }

    CFArrayAppendValue(theArray, v23);
    if (v23)
    {
      CFRelease(v23);
    }

    h = 0;
    ++v19;
    v17 += 48;
    if (v19 >= LOWORD(__nel[0]))
    {
      goto LABEL_51;
    }
  }

  v23 = 0;
LABEL_42:
  if (h)
  {
    if (*(v17 + 1) == 16)
    {
      disposegpm(h);
    }

    else
    {
      DisposeHandle(h);
    }
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v18)
  {
    MKCFDisposeMedia(v18);
    goto LABEL_50;
  }

LABEL_51:
  if (v7)
  {
    CFRelease(v7);
  }

  v25 = v49[0];
  if (v49[0] == -1)
  {
    v25 = *__error();
  }

  *a3 = v25;
  return v18;
}

uint64_t MKMediaSchemesDetect(_WORD *a1, uint64_t a2, int a3, const void *a4)
{
  v15 = 0;
  memset(size, 0, sizeof(size));
  *a1 = 0;
  v7 = MKMediaDeviceIO(a4, 15, 0, 0, 0, size);
  v8 = v7;
  if (!v7)
  {
    if ((size[0] & 0x1FF00000000) != 0)
    {
      return 5;
    }

    v9 = malloc_type_malloc(HIDWORD(size[0]), 0x100004077774924uLL);
    if (!v9)
    {
      return -1;
    }

    v10 = v9;
    v11 = MKMediaReadBlocks(a4, 0, 1, HIDWORD(size[0]), v9, &v15);
    if (v11)
    {
      v8 = v11;
LABEL_23:
      free(v10);
      return v8;
    }

    v16 = 0;
    MKAPMSchemeDetect(v10, size, a4, MKMediaDeviceIO, &v16);
    if (v16 < 5000)
    {
      v12 = -1;
    }

    else
    {
      AddDetectedScheme(a1, v16, 1);
      if (a3)
      {
        v12 = -1;
      }

      else
      {
        v12 = -7;
      }

      if ((v12 & 4) == 0)
      {
LABEL_21:
        v16 = 0;
        v8 = MKISOSchemeDetect(a4, &v16);
        if (v16 >= 5000)
        {
          AddDetectedScheme(a1, v16, 32);
        }

        goto LABEL_23;
      }
    }

    v16 = 0;
    GPTSchemeDetect(v10, size, a4, &v16);
    if (v16 >= 5000)
    {
      AddDetectedScheme(a1, v16, 16);
      if (!a3)
      {
        v12 = -3;
      }
    }

    if ((v12 & 2) != 0)
    {
      v16 = 0;
      MKMBRSchemeDetect(v10, size, a4, MKMediaDeviceIO, &v16);
      if (v16 >= 5000)
      {
        AddDetectedScheme(a1, v16, 8);
      }
    }

    goto LABEL_21;
  }

  return v8;
}

uint64_t MKMediaReadBlocks(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, unint64_t *a6)
{
  v7 = a4 >> 9;
  v9 = 0;
  result = MKMediaReadSectors(a1, v7 * a2, v7 * a3, a5, &v9);
  if (a6)
  {
    *a6 = v9 / v7;
  }

  return result;
}

uint64_t MKMediaReadSectors(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, void *a5)
{
  v10 = 0;
  if (!a1)
  {
    return 22;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v6 = 22;
  if (a4)
  {
    v7 = *(a1 + 96);
    if (v7 > a2 && a3 + a2 <= v7)
    {
      if (a3)
      {
        v6 = _MKMediaCommonReadWriteSectors(a1, a2, a3, a4, &v10, 0);
        if (a5)
        {
          *a5 = v10;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v6;
}

uint64_t _MKMediaDeviceReadSectors(uint64_t a1, uint64_t a2, uint64_t a3, void *__buf, void *a5)
{
  v6 = a3;
  if ((pread(*(a1 + 4), __buf, a3 << 9, a2 << 9) & 0x80000000) != 0)
  {
    v6 = 0;
    result = *__error();
  }

  else
  {
    result = 0;
  }

  *a5 = v6;
  return result;
}

uint64_t MKAPMSchemeDetect(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, _WORD *), int *a5)
{
  result = 0;
  v22 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  if (*(a2 + 8) < 0x40uLL)
  {
    goto LABEL_26;
  }

  if (*a1 != 21061)
  {
    v12 = 8;
LABEL_6:
    v13 = 2;
    v14 = v12;
    do
    {
      result = a4(a3, 2, 512, v14, 1, v21);
      if (result)
      {
        break;
      }

      if (v21[0] == 19792)
      {
        result = 0;
        v18 = 5250;
        goto LABEL_25;
      }

      v14 = (v14 + v12);
      --v13;
    }

    while (v13);
    if (*a5 > 4999)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  v11 = a1[1];
  v12 = v11 >> 1;
  if (v11 >> 1)
  {
    goto LABEL_6;
  }

  result = 0;
LABEL_11:
  v15 = *(a2 + 4);
  if (v15 < 0x400)
  {
    v17 = 1;
LABEL_18:
    v19 = v17;
    if (v17 <= 7u)
    {
      do
      {
        result = a4(a3, 2, 512, v19, 1, v21);
        if (result)
        {
          break;
        }

        if (v21[0] == 19792)
        {
          result = 0;
          goto LABEL_24;
        }

        result = 0;
        v19 = (v19 + 1);
      }

      while (v19 != 8);
    }
  }

  else
  {
    v16 = v15 >> 9;
    v17 = 1;
    while (*a1 != 19792)
    {
      a1 += 256;
      if (v16 <= ++v17)
      {
        goto LABEL_18;
      }
    }

LABEL_24:
    v18 = 5000;
LABEL_25:
    *a5 = v18;
  }

LABEL_26:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GPTSchemeDetect(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = *(a2 + 4);
  if (v5 > 0x20000 || (v5 & 0x1FF) != 0)
  {
    return 22;
  }

  v10 = malloc_type_calloc(1uLL, v5, 0x8D46846AuLL);
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  v14 = 0u;
  v15 = 0u;
  LODWORD(v14) = *(a2 + 4);
  v12 = *(a2 + 16);
  *(&v14 + 1) = *(a2 + 8);
  *&v15 = v12;
  DWORD2(v15) = 0;
  v7 = GPTReadHeader(&v14, a3, a4, v10);
  free(v11);
  return v7;
}

uint64_t GPTReadHeader(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v8 = *a1;
  v11 = 0;
  GPTReadHeaderBlock(1, v8, a2, &v11, a4);
  v9 = v11;
  if (v11)
  {
    if (v11 < 0x9C5)
    {
      v11 = 0;
      result = GPTReadHeaderBlock(*(a1 + 8) - 1, v8, a2, &v11, a4);
      v9 = v11;
    }

    else
    {
      result = 0;
      v9 = v11 + 1000;
    }
  }

  else
  {
    result = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t GPTReadHeaderBlock(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (!a4)
  {
    return 22;
  }

  v11 = 0;
  result = MKMediaReadBlocks(a3, a1, 1, a2, a5, &v11);
  if (!result)
  {
    if (*a5 != 0x5452415020494645)
    {
      return 0;
    }

    result = 0;
    v9 = *(a5 + 12);
    if (v9 >= 0x5C && v9 <= a2)
    {
      *a4 += 2500;
      v10 = *(a5 + 16);
      *(a5 + 16) = 0;
      if (v10 == mk_crc32(a5, v9))
      {
        result = 0;
        *a4 += 2500;
        return result;
      }

      return 0;
    }
  }

  return result;
}

size_t AddDetectedScheme(_WORD *a1, int a2, int a3)
{
  __source = 0;
  v3 = *a1;
  *a1 = v3 + 1;
  v4 = &a1[24 * v3];
  *(v4 + 1) = a2;
  *(v4 + 2) = a3;
  PMSchemeSearch(a3, &__source);
  __strlcpy_chk();
  return strlcpy(v4 + 20, __source, 0x20uLL);
}

uint64_t MKDetectISO(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  *a2 = 0;
  if (a4)
  {
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  v8 = malloc_type_malloc(0x800uLL, 0x911BB2A0uLL);
  if (!v8)
  {
    return *__error();
  }

  v9 = v8;
  if (MKMediaReadBlocks(a1, 16, 1, 0x800u, v8, 0))
  {
    goto LABEL_7;
  }

  LODWORD(v11) = 16;
  while (1)
  {
    if (!strncmp(v9 + 1, "CD001", 5uLL))
    {
      v12 = *v9;
      if (v12 == 255)
      {
        goto LABEL_7;
      }

      if (v12 == 1)
      {
        if (!a4)
        {
          goto LABEL_26;
        }

        *(a4 + 44) = bswap32(*(v9 + 21));
        *(a4 + 40) = bswap32(*(v9 + 65)) >> 16;
        *(a4 + 36) = 1;
        v13 = v9 + 40;
        goto LABEL_25;
      }

LABEL_18:
      if (v11 > 0x17)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (strncmp(v9 + 5, "CDROM", 5uLL))
    {
      goto LABEL_18;
    }

    if (v9[4] == 1)
    {
      break;
    }

    if (*v9 == 255 || v11 >= 0x18)
    {
      goto LABEL_7;
    }

LABEL_19:
    v11 = (v11 + 1);
    if (MKMediaReadBlocks(a1, v11, 1, 0x800u, v9, 0))
    {
      goto LABEL_7;
    }
  }

  if (!a4)
  {
    goto LABEL_26;
  }

  *(a4 + 44) = bswap32(*(v9 + 43));
  *(a4 + 40) = 2048;
  *(a4 + 36) = 5;
  v13 = v9 + 44;
LABEL_25:
  strncpy(a4, v13, 0x20uLL);
LABEL_26:
  if (a3)
  {
    *a3 = 7;
  }

  *a2 = 5000;
LABEL_7:
  free(v9);
  return 0;
}

uint64_t GPTReadMedia(uint64_t **a1, const __CFDictionary *a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  *size = 0u;
  v41 = 0u;
  v43 = 22;
  v5 = MKCFOptionBit(a2, @"Prefer GPT Map Entry", 4);
  MKMediaGetGeometry(a3, size);
  v6 = LODWORD(size[0]);
  v7 = gptinit(&v43);
  if (!v7)
  {
    MBR = v43;
    goto LABEL_9;
  }

  v8 = v7;
  v9 = *v7;
  v10 = *(*v7 + 1);
  v11 = LODWORD(size[0]);
  *(*v7 + 8) = size[0];
  v12 = malloc_type_calloc(1uLL, v11, 0xC48329FFuLL);
  *v10 = v12;
  if (!v12)
  {
    MBR = v43;
    if (!v43)
    {
LABEL_33:
      *a1 = v8;
      goto LABEL_34;
    }

    goto LABEL_8;
  }

  v42 = 0;
  MBR = GPTReadHeader(size, a3, &v42, v12);
  v43 = MBR;
  if (!MBR)
  {
    if (v42 < 2000)
    {
      MBR = 4294961953;
      goto LABEL_8;
    }

    if (v42 >> 3 < 0x271)
    {
      MBR = 4294961972;
      goto LABEL_8;
    }

    v14 = *v10;
    uuid_LtoB((v9 + 16), *v10 + 56);
    v15 = *(v14 + 40);
    v16 = *(v14 + 48);
    v17 = *(v14 + 32) + v15 - v16;
    *(v9 + 5) = v15;
    *(v9 + 6) = v17;
    *(v9 + 22) = *(v14 + 8);
    v18 = size[1] / (v6 >> 9);
    *(v9 + 7) = v16 - v15 + 1;
    *(v9 + 8) = v18;
    v19 = *v10;
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v20 = *(v19 + 80);
    if ((v20 - 1025) < 0xFFFFFC07 || (v21 = *(v19 + 84), (v21 - 4097) < 0xFFFFF07F))
    {
      MBR = 22;
      goto LABEL_8;
    }

    v22 = *(*v8 + 32);
    v23 = (v21 * v20);
    v24 = v23 / v22;
    v38 = v23;
    if (v23 % v22)
    {
      ++v24;
    }

    v25 = v24 * v22;
    v26 = malloc_type_calloc(1uLL, v24 * v22, 0xC6E16B71uLL);
    if (!v26)
    {
      MBR = 0xFFFFFFFFLL;
      goto LABEL_8;
    }

    v27 = v26;
    v45 = 0;
    v44 = 0uLL;
    v28 = MKMediaReadBlocks(a3, *(v19 + 72), v25 / v22, v22, v26, &v45);
    v39 = v27;
    if (!v28)
    {
      v29 = *(v19 + 88);
      if (mk_crc32(v27, v38) != v29)
      {
        MBR = 4294961947;
        goto LABEL_36;
      }

      v30 = 0;
      v31 = (v27 + 56);
      while (1)
      {
        if (!uuid_is_null(v31 - 56))
        {
          *uu = 0;
          v58 = 0;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0;
          uniconvert(&v47, 48, 0x8000100u, 0, v31, 72, 0x14000100u, 1u);
          uuid_LtoB(&v53, (v31 - 40));
          uuid_LtoB(uu, (v31 - 56));
          GPTUuid2Typestr(&v50, 48, uu);
          v32 = *(v31 - 3);
          v33 = *(v31 - 2);
          *&v54 = v32;
          if (v32 >= v33)
          {
            syslog(4, "MediaKit detected BAD GPT map entry at index: %d start offset: %llu greater than end offset: %llu\n", v30, v32, v33);
            v32 = v54;
          }

          v34 = *(v31 - 1);
          *(&v54 + 1) = v33 + 1 - v32;
          *&v55 = v34;
          if (v33 + 1 != v32)
          {
            *&v44 = v32;
            *(&v44 + 1) = v33 + 1 - v32;
            v35 = srequest(v8, &v44, 1u, 0, &v47, 0, 0);
            if (v54 == -1)
            {
              uuid_unparse_upper(&v53, out);
              syslog(4, "Overlapping Partition %s at %llu:%llu\n", out, v54, *(&v54 + 1));
              v54 = v44;
            }

            LOWORD(v56) = v30;
            v28 = addentry(v8, &v47, 0x60uLL, 0x5Eu, v35, 0x98u);
            if (v28)
            {
              break;
            }
          }
        }

        ++v30;
        v31 += 128;
        if (v20 == v30)
        {
          free(v39);
          MBR = GPTSubReadMBR(v8, v10, v5, a3);
          if (MBR)
          {
            goto LABEL_8;
          }

          goto LABEL_33;
        }
      }
    }

    MBR = v28;
LABEL_36:
    free(v39);
  }

LABEL_8:
  disposegpm(v8);
LABEL_9:
  *a1 = 0;
  if (MBR == -1)
  {
    MBR = *__error();
  }

LABEL_34:
  v36 = *MEMORY[0x277D85DE8];
  return MBR;
}