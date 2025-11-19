void _WiFiDeviceClientDispatchStartNetworkResult_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0(&dword_25A116000, MEMORY[0x277D86220], a3, "%s: null callback.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void _WiFiDeviceClientDispatchStopNetworkResult_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0(&dword_25A116000, MEMORY[0x277D86220], a3, "%s: null callback.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void _WiFiDeviceClientDispatchAutoJoinNotification_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_5_0(&dword_25A116000, MEMORY[0x277D86220], v0, "%s: null notification dictionary.", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void _WiFiDeviceClientDispatchUserJoinNotification_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_5_0(&dword_25A116000, MEMORY[0x277D86220], v0, "%s: null notification dictionary.", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

_WORD *WiFiNetworkCreateCopy(uint64_t a1, uint64_t a2)
{
  result = __WiFiNetworkCreate(*MEMORY[0x277CBECE8], *(a2 + 16), 0);
  result[12] = *(a2 + 24);
  return result;
}

_WORD *WiFiNetworkCreateDeepCopy(uint64_t a1, uint64_t a2)
{
  result = __WiFiNetworkCreate(*MEMORY[0x277CBECE8], *(a2 + 16), 1);
  result[12] = *(a2 + 24);
  return result;
}

CFDictionaryRef _copyDictionaryAddingMissingValuesFromSource(CFDictionaryRef result, CFDictionaryRef theDict)
{
  if (result)
  {
    v3 = result;
    if (theDict && (Count = CFDictionaryGetCount(theDict), (v5 = Count) != 0))
    {
      v6 = 8 * Count;
      v7 = malloc_type_malloc(v6, 0x6004044C4A2DFuLL);
      v8 = malloc_type_malloc(v6, 0xC0040B8AA526DuLL);
      Default = CFAllocatorGetDefault();
      MutableCopy = CFDictionaryCreateMutableCopy(Default, 0, v3);
      CFDictionaryGetKeysAndValues(theDict, v7, v8);
      v11 = 0;
      v12 = 8 * v5;
      do
      {
        CFDictionaryGetValueIfPresent(MutableCopy, v7[v11 / 8], 0);
        CFDictionaryAddValue(MutableCopy, v7[v11 / 8], v8[v11 / 8]);
        v11 += 8;
      }

      while (v12 != v11);
      free(v8);
      free(v7);
      v13 = CFAllocatorGetDefault();
      Copy = CFDictionaryCreateCopy(v13, MutableCopy);
      CFRelease(MutableCopy);
      return Copy;
    }

    else
    {
      v15 = CFAllocatorGetDefault();

      return CFDictionaryCreateCopy(v15, v3);
    }
  }

  return result;
}

const __CFNumber *WiFiNetworkGetRSSI(const __CFNumber *result)
{
  if (result)
  {
    Property = WiFiNetworkGetProperty(result, @"RSSI");
    return _CFTypeGetIntValue(Property);
  }

  return result;
}

const void *WiFiNetworkGetAPEnv(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return CFDictionaryGetValue(v1, @"DiagnosticsBssEnv");
  }

  else
  {
    return 0;
  }
}

const __CFData *WiFiNetworkGetBtMacFromIe(uint64_t a1, uint64_t a2)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"IE");
  if (result)
  {
    result = CFDataGetBytePtr(result);
    if (result)
    {
      v5 = OUTLINED_FUNCTION_11_1();
      if (CFDataGetLength(v5) < 1)
      {
        return 0;
      }

      else
      {
        while (1)
        {
          OUTLINED_FUNCTION_17_1();
          if (v7)
          {
            if (*(v2 + 1) == 13 && !OUTLINED_FUNCTION_25_0(v6))
            {
              break;
            }
          }

          OUTLINED_FUNCTION_3_0();
          if (v8 == v9)
          {
            return 0;
          }
        }

        v10 = *(v2 + 9);
        *(a2 + 4) = *(v2 + 13);
        *a2 = v10;
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
        return 1;
      }
    }
  }

  return result;
}

const UInt8 *WiFiNetworkCopyNanPHSServiceNameFromIe(uint64_t a1)
{
  v2 = malloc_type_malloc(0x11uLL, 0x2C82D9B8uLL);
  Value = CFDictionaryGetValue(*(a1 + 16), @"IE");
  v20 = 116528896;
  v18 = 260;
  v19 = 18;
  if (!Value)
  {
LABEL_18:
    BytePtr = 0;
    goto LABEL_20;
  }

  v4 = Value;
  BytePtr = CFDataGetBytePtr(Value);
  if (BytePtr)
  {
    Length = CFDataGetLength(v4);
    if (Length >= 1)
    {
      v7 = &BytePtr[Length];
      do
      {
        OUTLINED_FUNCTION_17_1();
        v8 = BytePtr + 6;
        if (v9)
        {
          v10 = v8 > v7;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && !bcmp(BytePtr + 2, &v20, 4uLL))
        {
          for (i = BytePtr + 9; i <= v7; i = v15 + 6)
          {
            v14 = v8[2];
            if (!bcmp(v8, &v18, 3uLL) && (v8 + 21) <= v7)
            {
              v16 = *(v8 + 4);
              v2[16] = v8[20];
              *v2 = v16;
              BytePtr = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", v2];
              goto LABEL_20;
            }

            v15 = &v8[v14];
            v8 += v14 + 3;
          }
        }

        OUTLINED_FUNCTION_16_1();
      }

      while (v11 != v12);
    }

    goto LABEL_18;
  }

LABEL_20:
  free(v2);
  return BytePtr;
}

const UInt8 *WiFiNetworkGet11dCountryCodeFromIe(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"IE");
  if (*a3 < 3u || Value == 0)
  {
    return 0;
  }

  v7 = Value;
  result = CFDataGetBytePtr(Value);
  if (!result)
  {
    return result;
  }

  v9 = result;
  Length = CFDataGetLength(v7);
  if (Length < 1)
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = v9[1];
    if (*v9 == 7 && v12 >= 3)
    {
      break;
    }

    v14 = v12 + 2;
    v11 += v14;
    v9 += v14;
    if (v11 >= Length)
    {
      return 0;
    }
  }

  v15 = *(v9 + 1);
  *(a2 + 2) = v9[4];
  *a2 = v15;
  *a3 = 3;
  return 1;
}

CFDictionaryRef *WiFiNetworkIsOCVCapable(CFDictionaryRef *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result[2], @"RSN_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IE_KEY_RSN_CAPS");
      if (result)
      {
        result = CFDictionaryGetValue(result, @"OCV");
        if (result)
        {
          return (CFBooleanGetValue(result) == 1);
        }
      }
    }
  }

  return result;
}

const __CFDictionary *__WiFiNetworkIsSAEPK(const __CFDictionary *a1)
{
  result = __WiFiNetworkIsSAE(a1);
  if (result)
  {
    result = CFDictionaryGetValue(a1, @"RSN_XE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IE_KEY_RSNXE_CAPS");
      if (result)
      {
        Value = CFDictionaryGetValue(result, @"RSNXE_SAE_PK");
        return (CFBooleanGetValue(Value) == 1);
      }
    }
  }

  return result;
}

const __CFArray *__WiFiNetworkIsEAPWithType(uint64_t a1, int a2)
{
  valuePtr = a2;
  result = WiFiNetworkIsEAP(a1);
  if (result)
  {
    result = WiFiNetworkGetProperty(a1, @"AcceptEAPTypes");
    if (result)
    {
      v5 = result;
      result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
      if (result)
      {
        v6 = OUTLINED_FUNCTION_10_1();
        v9.length = CFArrayGetCount(v6);
        v9.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v9, v2);
        CFRelease(v2);
        return (FirstIndexOfValue != -1);
      }
    }
  }

  return result;
}

BOOL WiFiNetworkIsShareble(uint64_t a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), @"IsWiFiNetworkShareble");
  if (!Value)
  {
    return 1;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  return valuePtr != 0;
}

double WiFiNetworkGetExpireDate(uint64_t a1)
{
  valuePtr = 0.0;
  if (!a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0.0;
  }

  Property = WiFiNetworkGetProperty(a1, @"WiFiNetworkExpirationDate");
  if (!Property)
  {
    return 0.0;
  }

  CFNumberGetValue(Property, kCFNumberDoubleType, &valuePtr);
  return valuePtr;
}

uint64_t WiFiNetworkRequiresUsername(uint64_t a1)
{
  v18 = 18;
  valuePtr = 13;
  IsEAP = WiFiNetworkIsEAP(a1);
  if (IsEAP && (Property = WiFiNetworkGetProperty(a1, @"AcceptEAPTypes")) != 0 && (v4 = Property, v5 = *MEMORY[0x277CBECE8], (v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr)) != 0))
  {
    v7 = v6;
    CFArrayGetCount(v4);
    v8 = OUTLINED_FUNCTION_4_1();
    v20.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v20, v7);
    CFRelease(v7);
    v10 = CFNumberCreate(v5, kCFNumberIntType, &v18);
    if (v10)
    {
      v11 = v10;
      CFArrayGetCount(v4);
      v12 = OUTLINED_FUNCTION_4_1();
      v21.location = 0;
      v13 = CFArrayGetFirstIndexOfValue(v12, v21, v11);
      CFRelease(v11);
      v14 = v13 == -1;
      goto LABEL_6;
    }
  }

  else
  {
    FirstIndexOfValue = -1;
  }

  v14 = 1;
LABEL_6:
  v16 = IsEAP && FirstIndexOfValue == -1;
  return v16 & v14;
}

const void *WiFiNetworkRequiresOneTimePassword(const void *result)
{
  if (result)
  {
    result = WiFiNetworkGetProperty(result, @"OneTimeUserPassword");
    if (result)
    {
      return (CFEqual(result, *MEMORY[0x277CBED28]) != 0);
    }
  }

  return result;
}

uint64_t __WiFiNetworkGetAuthFlags(const __CFDictionary *a1)
{
  if (__WiFiNetworkSupportsWPA(a1))
  {
    v2 = 2;
  }

  else
  {
    v2 = 2 * (__WiFiNetworkSupportsWPA2(a1) != 0);
  }

  if (__WiFiNetworkIsEAP(a1))
  {
    v2 |= 8u;
  }

  v3 = v2 | (CFDictionaryGetValue(a1, @"WEP") == *MEMORY[0x277CBED28]);
  if (__WiFiNetworkIsSAE(a1))
  {
    v3 |= 4u;
  }

  v4 = __WiFiNetworkIsSAEPK(a1);
  v5 = v3 | 0x10;
  if (!v4)
  {
    return v3;
  }

  return v5;
}

uint64_t __WiFiCompareDictionaryValues(CFTypeRef cf, const void *a2, const void *a3)
{
  result = 0;
  if (!cf || !a2)
  {
    return result;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFGetTypeID(a2))
  {
    return 0;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v9 = cf;
  if (!a3)
  {
    v14 = a2;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(cf, a3);
  v11 = OUTLINED_FUNCTION_12();
  v13 = CFDictionaryGetValue(v11, v12);
  if (Value == v13)
  {
    return 1;
  }

  v14 = v13;
  if ((Value != 0) == (v13 == 0))
  {
    return 0;
  }

  v9 = Value;
LABEL_12:

  return CFEqual(v9, v14);
}

uint64_t WiFiNetworkGetChannelFreqBand(int a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  if (a1 < 0xF)
  {
    return 1;
  }

  v2 = 0;
  while (channels5Ghz[v2] != a1)
  {
    if (++v2 == 33)
    {
      return 0;
    }
  }

  return 2;
}

void WiFiNetworkRemoveBssFromKnownList(uint64_t a1, CFArrayRef theArray)
{
  if (a1)
  {
    if (theArray)
    {
      if (CFArrayGetCount(theArray) >= 1)
      {
        Property = WiFiNetworkGetProperty(a1, @"networkKnownBSSListKey");
        if (Property)
        {
          v5 = Property;
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
          if (Mutable)
          {
            v7 = Mutable;
            if (CFArrayGetCount(v5) >= 1)
            {
              v8 = 0;
              do
              {
                v9 = OUTLINED_FUNCTION_31();
                ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
                if (ValueAtIndex)
                {
                  v12 = ValueAtIndex;
                  Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
                  if (Value)
                  {
                    v14 = Value;
                    CFArrayGetCount(theArray);
                    v15 = OUTLINED_FUNCTION_19_0();
                    if (CFArrayGetFirstIndexOfValue(v15, v20, v14) == -1)
                    {
                      CFArrayAppendValue(v7, v12);
                    }

                    else
                    {
                      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
                    }
                  }
                }

                ++v8;
              }

              while (v8 < CFArrayGetCount(v5));
            }

            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
            v16 = OUTLINED_FUNCTION_32();
            WiFiNetworkSetProperty(v16, v17, v18);

            CFRelease(v7);
          }
        }
      }
    }
  }
}

void WiFiNetworkSetKnownBssUsageData()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v4 = *MEMORY[0x277CBECE8];
  Current = CFAbsoluteTimeGetCurrent();
  v6 = CFDateCreate(v4, Current);
  if (v3 && v1)
  {
    Property = WiFiNetworkGetProperty(v1, @"CHANNEL");
    v8 = WiFiNetworkGetProperty(v1, @"CHANNEL_FLAGS");
    v9 = WiFiNetworkGetProperty(v1, @"BSSID");
    if (!v9)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      if (v6)
      {
        goto LABEL_25;
      }

LABEL_29:
      OUTLINED_FUNCTION_23();
      return;
    }

    v10 = v9;
    v11 = OUTLINED_FUNCTION_28();
    Mutable = CFArrayCreateMutable(v11, v12, v13);
    if (Mutable)
    {
      v15 = Mutable;
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v16 = WiFiNetworkGetProperty(v3, @"networkKnownBSSListKey");
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = v16;
      v37 = v8;
      v38 = v6;
      if (CFArrayGetCount(v16) < 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v17, v19);
          if (ValueAtIndex)
          {
            v21 = ValueAtIndex;
            Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
            if (Value)
            {
              if (CFEqual(Value, v10))
              {
                v18 = v21;
              }

              else
              {
                CFArrayAppendValue(v15, v21);
              }
            }
          }

          ++v19;
        }

        while (v19 < CFArrayGetCount(v17));
      }

      v6 = v38;
      v8 = v37;
      if (v18)
      {
        v23 = OUTLINED_FUNCTION_28();
        MutableCopy = CFDictionaryCreateMutableCopy(v23, v24, v18);
      }

      else
      {
LABEL_18:
        v26 = OUTLINED_FUNCTION_28();
        MutableCopy = CFDictionaryCreateMutable(v26, v27, v28, v29);
      }

      v30 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionarySetValue(MutableCopy, @"BSSID", v10);
        CFDictionarySetValue(v30, @"CHANNEL", Property);
        CFDictionarySetValue(v30, @"CHANNEL_FLAGS", v8);
        CFDictionarySetValue(v30, @"lastRoamed", v6);
        CFArrayAppendValue(v15, v30);
        if (CFArrayGetCount(v15) >= 21)
        {
          objc_autoreleasePoolPop(objc_autoreleasePoolPush());
          v31 = OUTLINED_FUNCTION_7_1();
          CFArrayRemoveValueAtIndex(v31, v32);
        }

        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
        WiFiNetworkSetProperty(v1, @"networkKnownBSSListKey", v15);
        v33 = OUTLINED_FUNCTION_29();
        WiFiNetworkSetProperty(v33, v34, v15);
        CFRelease(v30);
      }

      CFRelease(v15);
    }
  }

  if (!v6)
  {
    goto LABEL_29;
  }

LABEL_25:
  OUTLINED_FUNCTION_23();

  CFRelease(v35);
}

void WiFiNetworkSetBSSLocation(uint64_t a1, const void *a2, double a3, double a4, double a5)
{
  if (!a1 || !a2)
  {
    goto LABEL_22;
  }

  Property = WiFiNetworkGetProperty(a1, @"BSSID");
  if (Property)
  {
    v11 = Property;
    v12 = *MEMORY[0x277CBECE8];
    v13 = OUTLINED_FUNCTION_7_1();
    Mutable = CFArrayCreateMutable(v13, v14, v15);
    if (Mutable)
    {
      v17 = Mutable;
      v18 = WiFiNetworkGetProperty(a1, @"networkKnownBSSListKey");
      if (v18)
      {
        v19 = v18;
        if (CFArrayGetCount(v18) >= 1)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v19, v21);
            if (ValueAtIndex)
            {
              v23 = ValueAtIndex;
              Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
              if (Value)
              {
                if (CFEqual(Value, v11))
                {
                  v20 = v23;
                }

                else
                {
                  CFArrayAppendValue(v17, v23);
                }
              }
            }

            ++v21;
          }

          while (v21 < CFArrayGetCount(v19));
          if (v20)
          {
            v25 = OUTLINED_FUNCTION_7_1();
            MutableCopy = CFDictionaryCreateMutableCopy(v25, v26, v20);
            if (MutableCopy)
            {
              v28 = MutableCopy;
              CFDictionarySetValue(MutableCopy, @"networkLocnLat", [MEMORY[0x277CCABB0] numberWithDouble:a3]);
              CFDictionarySetValue(v28, @"networkLocnLong", [MEMORY[0x277CCABB0] numberWithDouble:a4]);
              CFDictionarySetValue(v28, @"networkLocnAccuracy", [MEMORY[0x277CCABB0] numberWithDouble:a5]);
              CFDictionarySetValue(v28, @"networkLocnTimestamp", a2);
              v29 = OUTLINED_FUNCTION_8();
              CFArrayAppendValue(v29, v30);
              v31 = OUTLINED_FUNCTION_32();
              WiFiNetworkSetProperty(v31, v32, v33);
              CFRelease(v28);
            }
          }
        }
      }

      OUTLINED_FUNCTION_24_1();

      CFRelease(v34);
      return;
    }

LABEL_22:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v36 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_24_1();

  objc_autoreleasePoolPop(v37);
}

void WiFiNetworkSetBSSProperty(const void *a1, const __CFString *a2, uint64_t a3)
{
  if (!a1 || !a3)
  {
    goto LABEL_18;
  }

  WiFiNetworkGetSSID(a1);
  if (a2)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = OUTLINED_FUNCTION_7_1();
    Mutable = CFArrayCreateMutable(v7, v8, v9);
    if (Mutable)
    {
      v11 = Mutable;
      Property = WiFiNetworkGetProperty(a1, @"networkKnownBSSListKey");
      if (Property)
      {
        v13 = Property;
        if (CFArrayGetCount(Property) >= 1)
        {
          v14 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v14);
            if (ValueAtIndex)
            {
              v16 = ValueAtIndex;
              Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
              if (Value)
              {
                if (CFStringCompare(Value, a2, 1uLL))
                {
                  CFArrayAppendValue(v11, v16);
                }

                else
                {
                  v18 = OUTLINED_FUNCTION_7_1();
                  MutableCopy = CFDictionaryCreateMutableCopy(v18, v19, v16);
                  if (MutableCopy)
                  {
                    v21 = MutableCopy;
                    (*(a3 + 16))(a3, MutableCopy);
                    CFArrayAppendValue(v11, v21);
                    CFRelease(v21);
                  }
                }
              }
            }

            ++v14;
          }

          while (v14 < CFArrayGetCount(v13));
        }
      }

      WiFiNetworkSetProperty(a1, @"networkKnownBSSListKey", v11);
      OUTLINED_FUNCTION_26();

      CFRelease(v22);
      return;
    }

LABEL_18:
    OUTLINED_FUNCTION_26();
    return;
  }

  v24 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_26();

  objc_autoreleasePoolPop(v25);
}

void WiFiNetworkSetBSSAWDLRealTimeModeTimestamp(uint64_t a1, const void *a2)
{
  if (!a1 || !a2)
  {
    goto LABEL_22;
  }

  Property = WiFiNetworkGetProperty(a1, @"BSSID");
  if (Property)
  {
    v5 = Property;
    v6 = *MEMORY[0x277CBECE8];
    v7 = OUTLINED_FUNCTION_7_1();
    Mutable = CFArrayCreateMutable(v7, v8, v9);
    if (Mutable)
    {
      v11 = Mutable;
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v12 = WiFiNetworkGetProperty(a1, @"networkKnownBSSListKey");
      if (v12)
      {
        v13 = v12;
        if (CFArrayGetCount(v12) >= 1)
        {
          v14 = 0;
          v15 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v15);
            if (ValueAtIndex)
            {
              v17 = ValueAtIndex;
              Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
              if (Value)
              {
                if (CFEqual(Value, v5))
                {
                  v14 = v17;
                }

                else
                {
                  CFArrayAppendValue(v11, v17);
                }
              }
            }

            ++v15;
          }

          while (v15 < CFArrayGetCount(v13));
          if (v14)
          {
            v19 = OUTLINED_FUNCTION_7_1();
            MutableCopy = CFDictionaryCreateMutableCopy(v19, v20, v14);
            if (MutableCopy)
            {
              v22 = MutableCopy;
              CFDictionarySetValue(MutableCopy, @"AWDLRealTimeModeTimestamp", a2);
              v23 = OUTLINED_FUNCTION_8();
              CFArrayAppendValue(v23, v24);
              v25 = OUTLINED_FUNCTION_32();
              WiFiNetworkSetProperty(v25, v26, v27);
              CFRelease(v22);
            }
          }
        }
      }

      OUTLINED_FUNCTION_26();

      CFRelease(v28);
      return;
    }

LABEL_22:
    OUTLINED_FUNCTION_26();
    return;
  }

  v30 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_26();

  objc_autoreleasePoolPop(v31);
}

void WiFiNetworkSetBssLateRoamInfo(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int valuePtr, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_24();
  a26 = v27;
  a27 = v31;
  a12 = v32;
  a14 = v30;
  a15 = v32;
  if (!v28 || !v29)
  {
    goto LABEL_39;
  }

  v33 = v30;
  v34 = v28;
  Property = WiFiNetworkGetProperty(v29, @"BSSID");
  if (Property)
  {
    v36 = Property;
    v37 = *MEMORY[0x277CBECE8];
    v38 = OUTLINED_FUNCTION_12_1();
    Mutable = CFArrayCreateMutable(v38, v39, v40);
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    if (!Mutable)
    {
LABEL_39:
      OUTLINED_FUNCTION_23();
      return;
    }

    v77 = v33;
    v42 = WiFiNetworkGetProperty(v34, @"networkKnownBSSListKey");
    if (!v42)
    {
      goto LABEL_38;
    }

    v43 = v42;
    if (CFArrayGetCount(v42) < 1)
    {
      goto LABEL_38;
    }

    v44 = 0;
    v45 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v43, v45);
      if (ValueAtIndex)
      {
        v47 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
        if (Value)
        {
          if (CFEqual(Value, v36))
          {
            v44 = v47;
          }

          else
          {
            CFArrayAppendValue(Mutable, v47);
          }
        }
      }

      ++v45;
    }

    while (v45 < CFArrayGetCount(v43));
    if (!v44)
    {
LABEL_38:
      CFRelease(Mutable);
      goto LABEL_39;
    }

    v49 = OUTLINED_FUNCTION_12_1();
    MutableCopy = CFDictionaryCreateMutableCopy(v49, v50, v44);
    if (!MutableCopy)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      goto LABEL_38;
    }

    v52 = MutableCopy;
    v53 = CFDictionaryGetValue(v44, @"lateRoamInfo");
    if (v53)
    {
      v54 = v53;
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v55 = OUTLINED_FUNCTION_12_1();
      v57 = CFDictionaryCreateMutableCopy(v55, v56, v54);
    }

    else
    {
      v58 = OUTLINED_FUNCTION_12_1();
      v57 = CFDictionaryCreateMutable(v58, v59, v60, v61);
    }

    v62 = v57;
    if (!v57)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      goto LABEL_37;
    }

    v63 = CFDictionaryGetValue(v57, @"lateRoamMinDelta");
    if (v63 && (valuePtr = 0, v63 = CFNumberGetValue(v63, kCFNumberIntType, &valuePtr), v63) && valuePtr <= a12)
    {
      v66 = 0;
    }

    else
    {
      v65 = OUTLINED_FUNCTION_35(v63, v64, &a15);
      if (!v65)
      {
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
LABEL_36:
        CFRelease(v62);
LABEL_37:
        CFRelease(v52);
        goto LABEL_38;
      }

      v66 = v65;
      CFDictionarySetValue(v62, @"lateRoamMinDelta", v65);
    }

    v67 = CFDictionaryGetValue(v62, @"lateRoamMaxDelta");
    if (v67 && (valuePtr = 0, v67 = CFNumberGetValue(v67, kCFNumberIntType, &valuePtr), v67) && valuePtr >= v77)
    {
      v69 = 0;
    }

    else
    {
      v69 = OUTLINED_FUNCTION_35(v67, v68, &a14);
      if (!v69)
      {
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
        if (!v66)
        {
LABEL_34:
          if (v69)
          {
            CFRelease(v69);
          }

          goto LABEL_36;
        }

LABEL_33:
        CFRelease(v66);
        goto LABEL_34;
      }

      CFDictionarySetValue(v62, @"lateRoamMaxDelta", v69);
    }

    CFDictionarySetValue(v52, @"lateRoamInfo", v62);
    v70 = OUTLINED_FUNCTION_23_1();
    CFArrayAppendValue(v70, v71);
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v72 = OUTLINED_FUNCTION_22_1();
    WiFiNetworkSetProperty(v72, v73, Mutable);
    WiFiNetworkSetProperty(v34, @"networkKnownBSSListKey", Mutable);
    if (!v66)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v74 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_23();

  objc_autoreleasePoolPop(v75);
}

void WiFiNetworkSetBssDisconnectReason(uint64_t a1, const __CFString *a2, int a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v47 = 0;
  valuePtr = 0;
  if (!a1 || !a2)
  {
    return;
  }

  v7 = a3 - 3;
  if ((a3 - 3) >= 3)
  {
    v13 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v13);
    return;
  }

  v8 = Current;
  LODWORD(v43) = dword_25A14B95C[v7];
  HIDWORD(v43) = dword_25A14B950[v7];
  Property = WiFiNetworkGetProperty(a1, @"knownBSSUpdatedDate");
  v10 = CFDateCreate(*MEMORY[0x277CBECE8], v8);
  if (!Property)
  {
    v12 = 1;
    goto LABEL_12;
  }

  v11 = v8 - MEMORY[0x25F84D480](Property);
  if (v11 > 2592000.0)
  {
    v12 = 0;
    LOBYTE(Property) = 1;
LABEL_12:
    WiFiNetworkSetProperty(a1, @"knownBSSUpdatedDate", v10);
    v14 = v12;
    v15 = Property;
    goto LABEL_13;
  }

  LOBYTE(Property) = 0;
  v14 = 0;
  v12 = 1;
  v15 = 1;
  if (v11 > 1296000.0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v44 = v12;
  v16 = WiFiNetworkGetProperty(a1, @"networkKnownBSSListKey");
  v17 = OUTLINED_FUNCTION_12_1();
  Mutable = CFArrayCreateMutable(v17, v18, v19);
  if (Mutable)
  {
    v21 = Mutable;
    v42 = v10;
    if (v16 && CFArrayGetCount(v16) >= 1)
    {
      v22 = 0;
      v45 = v14 | Property;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v22);
        if (!ValueAtIndex)
        {
          goto LABEL_44;
        }

        v24 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
        if (!Value)
        {
          goto LABEL_44;
        }

        v26 = Value;
        if (CFStringCompare(Value, a2, 0))
        {
          v47 = 0;
          if ((v45 & 1) == 0)
          {
            CFArrayAppendValue(v21, v24);
            goto LABEL_44;
          }
        }

        else
        {
          v47 = v43;
        }

        v27 = CFDictionaryGetValue(v24, @"beaconLossCount");
        if (v27)
        {
          CFNumberGetValue(v27, kCFNumberIntType, &valuePtr);
          if (v15)
          {
            if (!v44)
            {
              goto LABEL_29;
            }

            v28 = valuePtr & 0xFF00 | (BYTE4(v47) + valuePtr);
          }

          else
          {
            v28 = BYTE4(v47) | (valuePtr << 8);
          }

          HIDWORD(v47) = v28;
        }

LABEL_29:
        v29 = CFDictionaryGetValue(v24, @"trigDisconnectCount");
        if (!v29)
        {
          goto LABEL_35;
        }

        CFNumberGetValue(v29, kCFNumberIntType, &valuePtr);
        if (v15)
        {
          if (!v44)
          {
            goto LABEL_35;
          }

          v30 = valuePtr & 0xFF00 | (v47 + valuePtr);
        }

        else
        {
          v30 = v47 | (valuePtr << 8);
        }

        LODWORD(v47) = v30;
LABEL_35:
        v31 = CFEqual(v26, a2);
        if (a3 == 5 && v31)
        {
          v47 = 0;
        }

        v32 = OUTLINED_FUNCTION_12_1();
        MutableCopy = CFDictionaryCreateMutableCopy(v32, v33, v24);
        if (!MutableCopy)
        {
          goto LABEL_46;
        }

        v36 = MutableCopy;
        v37 = OUTLINED_FUNCTION_35(MutableCopy, v35, &v47 + 4);
        if (v37)
        {
          v39 = v37;
          CFDictionarySetValue(v36, @"beaconLossCount", v37);
          CFRelease(v39);
        }

        v40 = OUTLINED_FUNCTION_35(v37, v38, &v47);
        if (v40)
        {
          v41 = v40;
          CFDictionarySetValue(v36, @"trigDisconnectCount", v40);
          CFRelease(v41);
        }

        CFArrayInsertValueAtIndex(v21, v22, v36);
        CFRelease(v36);
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
LABEL_44:
        ++v22;
      }

      while (v22 < CFArrayGetCount(v16));
    }

    WiFiNetworkSetProperty(a1, @"networkKnownBSSListKey", v21);
LABEL_46:
    CFRelease(v21);
    v10 = v42;
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

__CFDictionary *WiFiNetworkCopyNetworkChannelList(uint64_t a1)
{
  Property = WiFiNetworkGetProperty(a1, @"networkKnownBSSListKey");
  if (!Property)
  {
    return 0;
  }

  v2 = Property;
  v3 = *MEMORY[0x277CBECE8];
  v4 = OUTLINED_FUNCTION_19_0();
  Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7);
  if (Mutable && CFArrayGetCount(v2) >= 1)
  {
    v9 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v9);
      if (ValueAtIndex)
      {
        v11 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"CHANNEL");
        if (Value)
        {
          v13 = Value;
          v14 = OUTLINED_FUNCTION_19_0();
          v16 = CFStringCreateMutable(v14, v15);
          if (v16)
          {
            v17 = v16;
            CFStringAppendFormat(v16, 0, @"%@", v13);
            CFDictionarySetValue(Mutable, v17, v11);
            CFRelease(v17);
          }
        }
      }

      ++v9;
    }

    while (v9 < CFArrayGetCount(v2));
  }

  return Mutable;
}

const __CFArray *WiFiNetworkIsMultiAPEnvironment(uint64_t a1)
{
  valuePtr = 0;
  result = WiFiNetworkGetProperty(a1, @"networkKnownBSSListKey");
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count >= 2)
    {
      v3 = Count;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v18 = -1431655766;
      do
      {
        v8 = OUTLINED_FUNCTION_8_1();
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex;
          Value = CFDictionaryGetValue(ValueAtIndex, @"CHANNEL");
          v13 = CFDictionaryGetValue(v11, @"CHANNEL_FLAGS");
          if (Value)
          {
            v14 = v13;
            if (v13)
            {
              CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
              CFNumberGetValue(v14, kCFNumberSInt32Type, &v18);
              if (valuePtr)
              {
                if (v18)
                {
                  if ((v18 & 8) != 0)
                  {
                    ++v6;
                  }

                  else if ((v18 & 0x10) != 0)
                  {
                    ++v5;
                  }

                  else
                  {
                    v4 += (v18 >> 13) & 1;
                  }
                }
              }
            }
          }
        }

        ++v7;
      }

      while (v3 != v7);
      return (v5 > 1 || v6 > 1 || v4 > 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WiFiNetworkGetForcedHomeFix(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  Property = WiFiNetworkGetProperty(a1, @"NetworkForcedHomeFix");
  if (!Property)
  {
    return 0;
  }

  v2 = Property;
  v3 = CFGetTypeID(Property);
  if (v3 != CFBooleanGetTypeID())
  {
LABEL_7:
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return CFBooleanGetValue(v2);
}

const __CFDictionary *WiFiNetworkIsPublicHotspot(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"11U_INTERWORKING_IE");
  if (result)
  {
    result = CFDictionaryGetValue(result, @"INTERWORKING_ACCESS_NETWORK_TYPE");
    if (result)
    {
      OUTLINED_FUNCTION_27(result);
      return 0;
    }
  }

  return result;
}

void WiFiNetworkDumpHS20AccountInfo(uint64_t a1, __CFString *a2)
{
  value = *MEMORY[0x277CBED10];
  if (a2)
  {
    if (CFDictionaryGetValue(*(a1 + 16), @"DomainName"))
    {
      CFStringAppend(a2, @"\nDomain name ");
      v4 = OUTLINED_FUNCTION_8_1();
      CFStringAppend(v4, v5);
    }

    v6 = CFDictionaryGetValue(*(a1 + 16), @"RoamingConsortiumOIs");
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count)
      {
        v8 = Count;
        CFStringAppend(a2, @"\nRoaming Consortium OI ");
        if (v8 >= 1)
        {
          for (i = 0; i != v8; ++i)
          {
            v10 = OUTLINED_FUNCTION_22_1();
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
            CFStringAppend(a2, ValueAtIndex);
            v13 = OUTLINED_FUNCTION_23_1();
            CFStringAppend(v13, v14);
          }
        }
      }
    }

    v15 = CFDictionaryGetValue(*(a1 + 16), @"NaiRealmName");
    if (v15)
    {
      v16 = CFArrayGetCount(v15);
      if (v16)
      {
        v17 = v16;
        CFStringAppend(a2, @"\nNAI Realm Name ");
        if (v17 >= 1)
        {
          for (j = 0; j != v17; ++j)
          {
            v19 = OUTLINED_FUNCTION_22_1();
            v21 = CFArrayGetValueAtIndex(v19, v20);
            CFStringAppend(a2, v21);
            v22 = OUTLINED_FUNCTION_23_1();
            CFStringAppend(v22, v23);
          }
        }
      }
    }

    v24 = CFDictionaryGetValue(*(a1 + 16), @"MCCandMNC");
    if (v24)
    {
      v25 = CFArrayGetCount(v24);
      if (v25)
      {
        v26 = v25;
        CFStringAppend(a2, @"\n3GPP MCC&MNC ");
        if (v26 >= 1)
        {
          for (k = 0; k != v26; ++k)
          {
            v28 = OUTLINED_FUNCTION_22_1();
            v30 = CFArrayGetValueAtIndex(v28, v29);
            CFStringAppend(a2, v30);
            v31 = OUTLINED_FUNCTION_23_1();
            CFStringAppend(v31, v32);
          }
        }
      }
    }

    if (CFDictionaryGetValue(*(a1 + 16), @"DisplayedOperatorName"))
    {
      CFStringAppend(a2, @"\nFriendly Operator Name ");
      v33 = OUTLINED_FUNCTION_8_1();
      CFStringAppend(v33, v34);
    }

    if (CFDictionaryGetValueIfPresent(*(a1 + 16), @"SPRoaming", &value))
    {
      CFStringAppend(a2, @"\nRoaming set to: ");
      if (value)
      {
        v35 = @"true";
      }

      else
      {
        v35 = @"false";
      }

      CFStringAppend(a2, v35);
    }
  }
}

CFMutableDictionaryRef WiFiNetworkCopyHS20Account(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    if (CFDictionaryGetValue(*(a1 + 16), @"DomainName"))
    {
      v3 = OUTLINED_FUNCTION_8_1();
      CFDictionaryAddValue(v3, v4, v5);
    }

    if (CFDictionaryGetValue(*(a1 + 16), @"DisplayedOperatorName"))
    {
      v6 = OUTLINED_FUNCTION_8_1();
      CFDictionaryAddValue(v6, v7, v8);
    }

    if (CFDictionaryGetValue(*(a1 + 16), @"RoamingConsortiumOIs"))
    {
      v9 = OUTLINED_FUNCTION_8_1();
      CFDictionaryAddValue(v9, v10, v11);
    }

    if (CFDictionaryGetValue(*(a1 + 16), @"NaiRealmName"))
    {
      v12 = OUTLINED_FUNCTION_8_1();
      CFDictionaryAddValue(v12, v13, v14);
    }

    if (CFDictionaryGetValue(*(a1 + 16), @"MCCandMNC"))
    {
      v15 = OUTLINED_FUNCTION_12();
      CFDictionaryAddValue(v15, v16, v17);
    }
  }

  return Mutable;
}

const void *WiFiNetworkGetHS20OperatorFriendlyName(uint64_t a1)
{
  Property = WiFiNetworkGetProperty(a1, @"HS20GasResponse");
  if (!Property)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(Property, @"ANQP_OPERATOR_NAMES_LIST");
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  if (CFArrayGetCount(Value) < 1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
  if (!ValueAtIndex)
  {
    return 0;
  }

  return CFDictionaryGetValue(ValueAtIndex, @"ANQP_OPERATOR_NAME");
}

const void *WiFiNetworkGetHS20DomainName(uint64_t a1)
{
  Property = WiFiNetworkGetProperty(a1, @"HS20GasResponse");
  if (Property)
  {
    Value = CFDictionaryGetValue(Property, @"ANQP_DOMAIN_NAME_LIST");
    if (Value && (v4 = Value, CFArrayGetCount(Value) >= 1))
    {

      return CFArrayGetValueAtIndex(v4, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return WiFiNetworkGetProperty(a1, @"DomainName");
  }
}

uint64_t WiFiNetworkGetCarrierPayloadIdentifierTelemetryApproved(uint64_t a1)
{
  Property = WiFiNetworkGetProperty(a1, @"CarrierPayloadIdentifierTelemetryApproved");
  if (!Property)
  {
    return 0;
  }

  v2 = Property;
  v3 = CFGetTypeID(Property);
  if (v3 != CFBooleanGetTypeID())
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return CFBooleanGetValue(v2);
}

void WiFiNetworkIsScannedNetworkMatchingHS20Account(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      Property = WiFiNetworkGetProperty(a1, @"HS20GasResponse");
      if (Property)
      {
        v4 = Property;
        v5 = WiFiNetworkGetProperty(a2, @"DomainName");
        Value = CFDictionaryGetValue(v4, @"ANQP_DOMAIN_NAME_LIST");
        if (Value && (v7 = Value, CFArrayGetCount(Value) >= 1))
        {
          v8 = 0;
          while (1)
          {
            v9 = OUTLINED_FUNCTION_31();
            ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
            if (ValueAtIndex)
            {
              if (v5 && CFEqual(ValueAtIndex, v5))
              {
                break;
              }
            }

            if (++v8 >= CFArrayGetCount(v7))
            {
              goto LABEL_11;
            }
          }

          objc_autoreleasePoolPop(objc_autoreleasePoolPush());
          v13 = 0;
          LODWORD(v12) = 1;
        }

        else
        {
LABEL_11:
          LODWORD(v12) = 0;
          v13 = 1;
        }

        WiFiNetworkGetProperty(a2, @"SPRoaming");
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
        v14 = WiFiNetworkGetProperty(a2, @"MCCandMNC");
        if (v14)
        {
          v15 = v14;
          Count = CFArrayGetCount(v14);
          v17 = v13 ^ 1;
          if (Count < 1)
          {
            v17 = 1;
          }

          if ((v17 & 1) == 0)
          {
            v18 = 0;
            while (1)
            {
              v19 = CFArrayGetValueAtIndex(v15, v18);
              if (v19)
              {
                v20 = v19;
                objc_autoreleasePoolPop(objc_autoreleasePoolPush());
                v21 = CFDictionaryGetValue(v4, @"ANQP_CELL_NETWORK_INFO");
                if (v21)
                {
                  v22 = v21;
                  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
                  CFArrayGetCount(v22);
                  v23 = OUTLINED_FUNCTION_28();
                  if (CFArrayContainsValue(v23, v50, v20))
                  {
                    break;
                  }
                }
              }

              if (++v18 >= CFArrayGetCount(v15))
              {
                LODWORD(v12) = 0;
                goto LABEL_24;
              }
            }

            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
            LODWORD(v12) = 1;
          }
        }

LABEL_24:
        v24 = WiFiNetworkGetProperty(a2, @"NaiRealmName");
        if (v24)
        {
          v25 = v24;
          v26 = CFArrayGetCount(v24);
          if (!v12 && v26 >= 1)
          {
            v27 = 0;
            while (1)
            {
              v28 = OUTLINED_FUNCTION_31();
              v12 = CFArrayGetValueAtIndex(v28, v29);
              if (v12)
              {
                objc_autoreleasePoolPop(objc_autoreleasePoolPush());
                v30 = OUTLINED_FUNCTION_23_1();
                v32 = CFDictionaryGetValue(v30, v31);
                if (v32)
                {
                  v33 = v32;
                  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
                  if (CFArrayGetCount(v33) >= 1)
                  {
                    v34 = 0;
                    while (1)
                    {
                      v35 = CFArrayGetValueAtIndex(v33, v34);
                      if (v35)
                      {
                        v36 = CFDictionaryGetValue(v35, @"ANQP_NAI_REALM_NAME");
                        if (v36)
                        {
                          if (CFEqual(v36, v12))
                          {
                            break;
                          }
                        }
                      }

                      if (++v34 >= CFArrayGetCount(v33))
                      {
                        goto LABEL_36;
                      }
                    }

                    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
                    v37 = 0;
                    LODWORD(v12) = 1;
                    goto LABEL_38;
                  }
                }

LABEL_36:
                LODWORD(v12) = 0;
              }

              v37 = 1;
LABEL_38:
              v38 = CFArrayGetCount(v25);
              if (v37)
              {
                if (++v27 < v38)
                {
                  continue;
                }
              }

              break;
            }
          }
        }

        v39 = WiFiNetworkGetProperty(a2, @"RoamingConsortiumOIs");
        if (v39)
        {
          v40 = v39;
          v41 = CFArrayGetCount(v39);
          if (!v12 && v41 >= 1)
          {
            for (i = 0; i < v49; ++i)
            {
              v43 = CFArrayGetValueAtIndex(v40, i);
              if (v43 && (objc_autoreleasePoolPop(objc_autoreleasePoolPush()), (v44 = CFDictionaryGetValue(v4, @"ANQP_ROAMING_CONSORTIUM_OI_LIST")) != 0) && (v45 = v44, objc_autoreleasePoolPop(objc_autoreleasePoolPush()), CFArrayGetCount(v45) >= 1))
              {
                v46 = 0;
                while (1)
                {
                  v47 = CFArrayGetValueAtIndex(v45, v46);
                  if (v47)
                  {
                    if (CFStringCompare(v47, v43, 1uLL) == kCFCompareEqualTo)
                    {
                      break;
                    }
                  }

                  if (++v46 >= CFArrayGetCount(v45))
                  {
                    goto LABEL_53;
                  }
                }

                objc_autoreleasePoolPop(objc_autoreleasePoolPush());
                v48 = 0;
              }

              else
              {
LABEL_53:
                v48 = 1;
              }

              v49 = CFArrayGetCount(v40);
              if (!v48)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_26();
}

const __CFDictionary *WiFiNetworkIsFullyLoaded(const __CFDictionary *result)
{
  valuePtr = 0;
  v4 = 0;
  if (result)
  {
    v2 = OUTLINED_FUNCTION_30(result);
    result = CFDictionaryGetValue(v2, @"EXT_CAPS");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"BSS_TRANS_MGMT");
      if (result)
      {
        CFNumberGetValue(result, kCFNumberSInt8Type, &valuePtr);
        if (valuePtr)
        {
          result = CFDictionaryGetValue(*(v1 + 16), @"QBSS_LOAD_IE");
          if (result)
          {
            v3 = result;
            result = CFDictionaryGetValue(result, @"QBSS_CHAN_UTIL");
            if (result)
            {
              CFNumberGetValue(result, kCFNumberSInt8Type, &valuePtr + 1);
              result = CFDictionaryGetValue(v3, @"QBSS_STA_COUNT");
              if (result)
              {
                CFNumberGetValue(result, kCFNumberSInt16Type, &v4);
                return (v4 == -1);
              }
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void WiFiNetworkSetPasswordModificationDate(const void *a1, const void *a2)
{
  if (a1 && a2)
  {
    SSID = WiFiNetworkGetSSID(a1);
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    if (SSID)
    {

      WiFiNetworkSetProperty(a1, @"WiFiNetworkPasswordModificationDate", a2);
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

CFIndex WiFiNetworkDumpRecords(CFIndex result)
{
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      for (i = 0; i < result; ++i)
      {
        v3 = OUTLINED_FUNCTION_12();
        if (CFArrayGetValueAtIndex(v3, v4))
        {
          objc_autoreleasePoolPop(objc_autoreleasePoolPush());
        }

        result = CFArrayGetCount(v1);
      }
    }
  }

  return result;
}

const __CFDictionary *WiFiNetworkIsChargeablePublicNetwork(uint64_t a1)
{
  result = WiFiNetworkGetProperty(a1, @"11U_INTERWORKING_IE");
  if (result)
  {
    result = CFDictionaryGetValue(result, @"INTERWORKING_ACCESS_NETWORK_TYPE");
    if (result)
    {
      OUTLINED_FUNCTION_27(result);
      return 0;
    }
  }

  return result;
}

void WiFiNetworkDisableAutoJoinUntilFirstUserJoin(uint64_t a1, int a2)
{
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  if (a1)
  {
    v4 = MEMORY[0x277CBED28];
    if (!a2)
    {
      v4 = MEMORY[0x277CBED10];
    }

    v5 = *v4;

    WiFiNetworkSetProperty(a1, @"DisableWiFiAutoJoinUntilFirstUserJoin", v5);
  }
}

uint64_t WiFiNetworkIsAutoJoinDisabledUntilFirstUserJoin(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  Property = WiFiNetworkGetProperty(a1, @"DisableWiFiAutoJoinUntilFirstUserJoin");
  if (!Property)
  {
    return 0;
  }

  v2 = Property;
  v3 = CFGetTypeID(Property);
  if (v3 != CFBooleanGetTypeID())
  {
LABEL_7:
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return CFBooleanGetValue(v2);
}

const __CFBoolean *WiFiNetworkIsInfrequentlyJoinedPublicNetwork(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v2 = OUTLINED_FUNCTION_30(a1);
  if (__WiFiNetworkGetAuthFlags(v2))
  {
    return 0;
  }

  result = WiFiNetworkGetProperty(v1, @"WiFiNetworkAttributeIsPublic");
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = CFGetTypeID(result);
  if (v5 != CFBooleanGetTypeID())
  {
LABEL_8:
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  result = CFBooleanGetValue(v4);
  if (result)
  {
    return (WiFiNetworkGetTimeIntervalSinceLastAssociation(v1) > 1209600.0);
  }

  return result;
}

uint64_t WiFiNetworkGetFirstIndexMatchingSSIDNetwork(const __CFArray *a1, uint64_t a2)
{
  v2 = -1;
  if (a1 && a2 && CFArrayGetCount(a1) >= 1)
  {
    v2 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v2);
      if (ValueAtIndex)
      {
        v6 = ValueAtIndex;
        v7 = CFGetTypeID(ValueAtIndex);
        v8 = __kWiFiNetworkTypeID;
        if (!__kWiFiNetworkTypeID)
        {
          OUTLINED_FUNCTION_0_2();
          pthread_once(&__wifiNetworkTypeInit, v9);
          v8 = __kWiFiNetworkTypeID;
        }

        if (v7 == v8 && __WiFiCompareDictionaryValues(v6[2], *(a2 + 16), @"SSID_STR"))
        {
          break;
        }
      }

      if (++v2 >= CFArrayGetCount(a1))
      {
        return -1;
      }
    }
  }

  return v2;
}

CFDictionaryRef *WiFiNetworkInterworkingIsOutdoorNetwork(CFDictionaryRef *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result[2], @"11U_INTERWORKING_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"INTERWORKING_ACCESS_VENTURE_GRP");
      if (result)
      {
        OUTLINED_FUNCTION_27(result);
        return 0;
      }
    }
  }

  return result;
}

CFDictionaryRef *WiFiNetworkInterworkingIsVehicularNetwork(CFDictionaryRef *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result[2], @"11U_INTERWORKING_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"INTERWORKING_ACCESS_VENTURE_GRP");
      if (result)
      {
        OUTLINED_FUNCTION_27(result);
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *WiFiNetworkGetAdvertisedNetworkType(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"11U_INTERWORKING_IE");
  if (result)
  {
    result = CFDictionaryGetValue(result, @"INTERWORKING_ACCESS_NETWORK_TYPE");
    if (result)
    {
      OUTLINED_FUNCTION_27(result);
      return 0;
    }
  }

  return result;
}

void WiFiNetworkSetForcedHomeFix(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CBED10];
    if (a2)
    {
      v3 = MEMORY[0x277CBED28];
    }

    WiFiNetworkSetProperty(a1, @"NetworkForcedHomeFix", *v3);
    if (a2)
    {
      v4 = *MEMORY[0x277CBECE8];
      Current = CFAbsoluteTimeGetCurrent();
      CFDateCreate(v4, Current);
      v6 = OUTLINED_FUNCTION_10_1();
      WiFiNetworkSetLastHomeForceFixDate(v6, v4);
      if (v4)
      {

        CFRelease(v4);
      }
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v7);
  }
}

void WiFiNetworkSetLastHomeForceFixDate(const void *a1, const void *a2)
{
  if (a1 && a2)
  {
    SSID = WiFiNetworkGetSSID(a1);
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    if (SSID)
    {

      WiFiNetworkSetProperty(a1, @"kWiFiNetworkLastHomeForceFixDateKey", a2);
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

const __CFNumber *WiFiNetworkGetShareableStatus(uint64_t a1)
{
  if (a1 && *(a1 + 16))
  {
    return WiFiNetworkGetCIntProperty(a1, @"ShareableStatus");
  }

  else
  {
    return 0;
  }
}

void WiFiNetworkSetWalletIdentifier(uint64_t a1, const void *a2)
{
  if (a1)
  {
    WiFiNetworkSetProperty(a1, @"WalletIdentifier", a2);
  }
}

const void *WiFiNetworkGetWalletIdentifier(const void *result)
{
  if (result)
  {
    return WiFiNetworkGetProperty(result, @"WalletIdentifier");
  }

  return result;
}

BOOL WiFiNetworkGetPrivacyProxyEnabled(uint64_t a1)
{
  if (a1)
  {
    v1 = OUTLINED_FUNCTION_30(a1);
    if (CFDictionaryContainsKey(v1, @"PrivacyProxyEnabled"))
    {
      v2 = OUTLINED_FUNCTION_12();
      return WiFiNetworkGetProperty(v2, v3) == *MEMORY[0x277CBED28];
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return 1;
}

uint64_t WiFiNetworkIsPublicAirPlayNetwork(uint64_t a1)
{
  if (a1)
  {
    v1 = OUTLINED_FUNCTION_30(a1);
    result = CFDictionaryContainsKey(v1, @"PublicAirPlayNetwork");
    if (result)
    {
      v3 = OUTLINED_FUNCTION_12();
      return WiFiNetworkGetProperty(v3, v4) == *MEMORY[0x277CBED28];
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return result;
}

_WORD *WiFiNetworkCreateFromCoreWiFiNetworkProfile(void *a1, void *a2)
{
  v89[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  CWFNetworkProfileClass = getCWFNetworkProfileClass();
  v5 = 0;
  if (!a1 || !CWFNetworkProfileClass)
  {
    goto LABEL_272;
  }

  getCWFNetworkProfileClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_272;
  }

  v6 = [MEMORY[0x277CBEB38] dictionary];
  if (!a2 || [a2 containsObject:&unk_286BD2D68])
  {
    [v6 addEntriesFromDictionary:{objc_msgSend(a1, "OSSpecificAttributes")}];
    if (![v6 objectForKey:@"AP_MODE"])
    {
      [v6 setObject:&unk_286BD2D20 forKeyedSubscript:@"AP_MODE"];
    }
  }

  v7 = [a1 coreWiFiSpecificAttributes];
  v82 = *MEMORY[0x277D02A80];
  [v6 setObject:v7 forKeyedSubscript:?];
  if (!a2)
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"SSID"), @"SSID"}];
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"networkName"), @"SSID_STR"}];
    v8 = [a1 supportedSecurityTypes];
    v9 = v8;
    if ((v8 & 2) == 0)
    {
      if ((v8 & 1) == 0)
      {
        goto LABEL_31;
      }

      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"WEP"];
      goto LABEL_12;
    }

LABEL_22:
    v13 = [a1 WAPISubtype];
    v14 = &unk_286BD2DE0;
    if (v13 != 1)
    {
      v14 = 0;
    }

    if (v13 == 2)
    {
      v15 = &unk_286BD2DC8;
    }

    else
    {
      v15 = v14;
    }

    v16 = @"WAPI";
    goto LABEL_30;
  }

  if ([a2 containsObject:&unk_286BD2D80])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"SSID"), @"SSID"}];
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"networkName"), @"SSID_STR"}];
  }

  if (([a2 containsObject:&unk_286BD2D98] & 1) == 0)
  {
LABEL_61:
    if (![a2 containsObject:&unk_286BD2E10])
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  v12 = [a1 supportedSecurityTypes];
  v9 = v12;
  if ((v12 & 2) != 0)
  {
    if (![a2 containsObject:&unk_286BD2DB0])
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  if (v12)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"WEP"];
    if ([a2 containsObject:&unk_286BD2DF8])
    {
LABEL_12:
      v10 = [a1 WEPSubtype];
      if ((v10 - 1) > 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = dword_25A14B9C0[v10 - 1];
      }

      v15 = [MEMORY[0x277CCABB0] numberWithInt:v11];
      v16 = @"WEP_AUTH_Flags";
LABEL_30:
      [v6 setObject:v15 forKeyedSubscript:v16];
    }
  }

LABEL_31:
  v17 = a2;
  v18 = a1;
  if ((v9 & 0xC) != 0)
  {
    v19 = [MEMORY[0x277CBEB38] dictionary];
    [v19 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", 1), @"IE_KEY_WPA_VERSION"}];
    [v19 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", 2), @"IE_KEY_WPA_MCIPHER"}];
    [MEMORY[0x277CBEB18] array];
    [MEMORY[0x277CCABB0] numberWithInt:2];
    [OUTLINED_FUNCTION_4_1() addObject:?];
    OUTLINED_FUNCTION_34();
    [MEMORY[0x277CBEB18] array];
    if ((v9 & 8) != 0)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    [MEMORY[0x277CCABB0] numberWithInt:v20];
    [OUTLINED_FUNCTION_4_1() addObject:?];
    OUTLINED_FUNCTION_34();
    [OUTLINED_FUNCTION_15_1() setObject:? forKeyedSubscript:?];
  }

  v21 = v9 & 0x300;
  if ((v9 & 0xF0) != 0 || v21 == 256)
  {
    v22 = [MEMORY[0x277CBEB38] dictionary];
    [v22 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", 1), @"IE_KEY_RSN_VERSION"}];
    [v22 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", 4), @"IE_KEY_RSN_MCIPHER"}];
    [MEMORY[0x277CBEB18] array];
    [MEMORY[0x277CCABB0] numberWithInt:4];
    [OUTLINED_FUNCTION_4_1() addObject:?];
    OUTLINED_FUNCTION_34();
    [MEMORY[0x277CBEB18] array];
    if ((v9 & 0x80) != 0)
    {
      [MEMORY[0x277CCABB0] numberWithInt:12];
      [OUTLINED_FUNCTION_4_1() addObject:?];
      if ((v9 & 0x20) == 0)
      {
LABEL_40:
        if ((v9 & 0x40) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }
    }

    else if ((v9 & 0x20) == 0)
    {
      goto LABEL_40;
    }

    [MEMORY[0x277CCABB0] numberWithInt:1];
    [OUTLINED_FUNCTION_4_1() addObject:?];
    if ((v9 & 0x40) == 0)
    {
LABEL_47:
      if (v21 == 256)
      {
        [MEMORY[0x277CCABB0] numberWithInt:18];
        [OUTLINED_FUNCTION_4_1() addObject:?];
      }

      if ((v9 & 0x10) != 0)
      {
        [MEMORY[0x277CCABB0] numberWithInt:2];
        [OUTLINED_FUNCTION_4_1() addObject:?];
      }

      OUTLINED_FUNCTION_34();
      [OUTLINED_FUNCTION_15_1() setObject:? forKeyedSubscript:?];
      goto LABEL_52;
    }

LABEL_44:
    [MEMORY[0x277CCABB0] numberWithInt:8];
    [OUTLINED_FUNCTION_4_1() addObject:?];
    v23 = [MEMORY[0x277CBEB38] dictionary];
    [v23 setObject:MEMORY[0x277CBEC38] forKey:@"MFP_CAPABLE"];
    if ((v9 & 0x10) == 0)
    {
      [v23 setObject:MEMORY[0x277CBEC38] forKey:@"MFP_REQUIRED"];
    }

    [v22 setObject:v23 forKey:@"IE_KEY_RSN_CAPS"];
    goto LABEL_47;
  }

LABEL_52:
  if (v21 == 768)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SCAN_RESULT_OWE_MULTI_SSID"];
  }

  a1 = v18;
  v24 = [v18 isWPA2];
  v25 = MEMORY[0x277CBEC38];
  v26 = MEMORY[0x277CBEC28];
  if (v24)
  {
    v27 = MEMORY[0x277CBEC38];
  }

  else
  {
    v27 = MEMORY[0x277CBEC28];
  }

  [v6 setObject:v27 forKeyedSubscript:@"ALLOW_WPA2_PSK"];
  if ([v18 isOpen])
  {
    v28 = v25;
  }

  else
  {
    v28 = v26;
  }

  [v6 setObject:v28 forKeyedSubscript:@"ALLOW_OWE_TSN"];
  a2 = v17;
  if (v17)
  {
    goto LABEL_61;
  }

LABEL_62:
  v29 = [a1 captiveProfile];
  if (v29)
  {
    [v6 addEntriesFromDictionary:v29];
  }

  if (!a2)
  {
LABEL_66:
    if ([a1 hiddenState] == 1)
    {
      v30 = MEMORY[0x277CBEC38];
    }

    else
    {
      if ([a1 hiddenState] != 2)
      {
        goto LABEL_71;
      }

      v30 = MEMORY[0x277CBEC28];
    }

    [v6 setObject:v30 forKeyedSubscript:@"UserDirected"];
LABEL_71:
    if (!a2)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_65:
  if ([a2 containsObject:&unk_286BD2E28])
  {
    goto LABEL_66;
  }

LABEL_72:
  if (![a2 containsObject:&unk_286BD2E40])
  {
    goto LABEL_76;
  }

LABEL_73:
  if ([a1 wasHiddenBefore])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"wasHiddenBefore"), @"WasHiddenBefore"}];
  }

  if (a2)
  {
LABEL_76:
    if (![a2 containsObject:&unk_286BD2E58])
    {
      goto LABEL_81;
    }
  }

  if ([a1 isPasswordSharingDisabled])
  {
    [v6 setObject:&unk_286BD2D20 forKeyedSubscript:@"ShareMode"];
  }

  if (!a2)
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"payloadUUID"), @"PayloadUUID"}];
    goto LABEL_84;
  }

LABEL_81:
  if ([a2 containsObject:&unk_286BD2E70])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"payloadUUID"), @"PayloadUUID"}];
  }

  if (([a2 containsObject:&unk_286BD2E88] & 1) == 0)
  {
LABEL_86:
    if ([a2 containsObject:&unk_286BD2EA0])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"bundleID"), @"BundleIdentifier"}];
    }

    if (([a2 containsObject:&unk_286BD2EB8] & 1) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_89;
  }

LABEL_84:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"payloadIdentifier"), @"PayloadIdentifier"}];
  if (a2)
  {
    goto LABEL_86;
  }

  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"bundleID"), @"BundleIdentifier"}];
LABEL_89:
  if ([a1 isAutoJoinDisabled])
  {
    v31 = MEMORY[0x277CBEC28];
  }

  else
  {
    v31 = MEMORY[0x277CBEC38];
  }

  [v6 setObject:v31 forKeyedSubscript:@"enabled"];
  if (!a2)
  {
    v32 = [a1 lowDataMode];
    if (v32 == 2)
    {
      v33 = &unk_286BD2D20;
    }

    else
    {
      v33 = &unk_286BD2C60;
    }

    if (v32 == 1)
    {
      v34 = &unk_286BD2C78;
    }

    else
    {
      v34 = v33;
    }

    [v6 setObject:v34 forKeyedSubscript:@"SaveDataMode"];
    goto LABEL_108;
  }

LABEL_100:
  if (![a2 containsObject:&unk_286BD2ED0] || ((v35 = objc_msgSend(a1, "lowDataMode"), v35 != 2) ? (v36 = &unk_286BD2C60) : (v36 = &unk_286BD2D20), v35 != 1 ? (v37 = v36) : (v37 = &unk_286BD2C78), objc_msgSend(v6, "setObject:forKeyedSubscript:", v37, @"SaveDataMode"), a2))
  {
    if ([a2 containsObject:&unk_286BD2EE8])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"lastJoinedByUserAt"), @"lastJoined"}];
    }

    if (([a2 containsObject:&unk_286BD2F00] & 1) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_108:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"lastJoinedByUserAt"), @"lastJoined"}];
LABEL_112:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"lastJoinedBySystemAt"), @"lastAutoJoined"}];
  if (!a2)
  {
    goto LABEL_114;
  }

LABEL_113:
  if ([a2 containsObject:&unk_286BD2F18])
  {
LABEL_114:
    v38 = [a1 addReason];
    v39 = &unk_286BD2CC0;
    v40 = 1;
    v41 = &unk_286BD2C78;
    switch(v38)
    {
      case 2:
      case 3:
      case 4:
      case 5:
        goto LABEL_115;
      case 6:
        v41 = &unk_286BD2D50;
        goto LABEL_115;
      case 7:
        v41 = &unk_286BD2D38;
        goto LABEL_127;
      case 8:
        v41 = &unk_286BD2C90;
        goto LABEL_115;
      case 9:
        v41 = &unk_286BD2F48;
        goto LABEL_115;
      case 10:
        v41 = &unk_286BD2D20;
        goto LABEL_129;
      case 11:
        v41 = &unk_286BD2DC8;
        goto LABEL_115;
      case 12:
        v41 = &unk_286BD2CA8;
LABEL_127:
        v39 = &unk_286BD2C78;
        goto LABEL_129;
      case 13:
        v41 = &unk_286BD2CA8;
        goto LABEL_115;
      case 14:
        v41 = &unk_286BD2C60;
        goto LABEL_129;
      case 15:
        goto LABEL_129;
      case 16:
        [v6 setObject:&unk_286BD2F30 forKeyedSubscript:@"WiFiManagerKnownNetworksEventType"];
        goto LABEL_130;
      case 17:
        v40 = 0;
        v41 = &unk_286BD2C90;
        v39 = &unk_286BD2F30;
        goto LABEL_129;
      case 19:
        v41 = &unk_286BD2F78;
        goto LABEL_115;
      case 21:
        v40 = 0;
        v41 = &unk_286BD2DE0;
        v39 = &unk_286BD2F30;
LABEL_129:
        [v6 setObject:v39 forKeyedSubscript:@"WiFiManagerKnownNetworksEventType"];
        [v6 setObject:v41 forKeyedSubscript:@"NetworkOriginator"];
        if (v40)
        {
          goto LABEL_132;
        }

LABEL_130:
        v43 = OUTLINED_FUNCTION_15_1();
LABEL_131:
        [v43 setObject:v44 forKeyedSubscript:v42];
LABEL_132:
        if (a2)
        {
          goto LABEL_134;
        }

        [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"addedAt", v39), @"addedAt"}];
        break;
      case 22:
        v41 = &unk_286BD2F60;
LABEL_115:
        v42 = @"WiFiManagerKnownNetworksEventType";
        v43 = v6;
        v44 = v41;
        goto LABEL_131;
      default:
        goto LABEL_132;
    }

    goto LABEL_137;
  }

LABEL_134:
  if ([a2 containsObject:&unk_286BD2F90])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"addedAt"), @"addedAt"}];
  }

  if (([a2 containsObject:&unk_286BD2FA8] & 1) == 0)
  {
LABEL_142:
    if ([a2 containsObject:&unk_286BD2FC0])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"domainName"), @"DomainName"}];
    }

    if (([a2 containsObject:&unk_286BD2FD8] & 1) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_145;
  }

LABEL_137:
  v45 = [a1 EAPProfile];
  if (v45)
  {
    v88 = @"EAPClientConfiguration";
    v89[0] = v45;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:&v88 count:1];
  }

  else
  {
    v46 = 0;
  }

  [v6 setObject:v46 forKeyedSubscript:@"EnterpriseProfile"];
  if (a2)
  {
    goto LABEL_142;
  }

  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"domainName"), @"DomainName"}];
LABEL_145:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"displayedOperatorName"), @"DisplayedOperatorName"}];
  if (!a2)
  {
    [a1 isServiceProviderRoamingEnabled];
    [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_5_1() forKeyedSubscript:{"numberWithBool:"), @"SPRoaming"}];
    goto LABEL_150;
  }

LABEL_147:
  if ([a2 containsObject:&unk_286BD2FF0])
  {
    [a1 isServiceProviderRoamingEnabled];
    [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_5_1() forKeyedSubscript:{"numberWithBool:"), @"SPRoaming"}];
  }

  if (([a2 containsObject:&unk_286BD3008] & 1) == 0)
  {
LABEL_152:
    if ([a2 containsObject:&unk_286BD3020])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"NAIRealmNameList"), @"NaiRealmName"}];
    }

    if (([a2 containsObject:&unk_286BD3038] & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_155;
  }

LABEL_150:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"cellularNetworkInfo"), @"MCCandMNC"}];
  if (a2)
  {
    goto LABEL_152;
  }

  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"NAIRealmNameList"), @"NaiRealmName"}];
LABEL_155:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"roamingConsortiumList"), @"RoamingConsortiumOIs"}];
  if (!a2)
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"userPreferredNetworkNames"), @"userPreferredNetworkNames"}];
    goto LABEL_160;
  }

LABEL_157:
  if ([a2 containsObject:&unk_286BD3050])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"userPreferredNetworkNames"), @"userPreferredNetworkNames"}];
  }

  if (([a2 containsObject:&unk_286BD3068] & 1) == 0)
  {
LABEL_162:
    if ([a2 containsObject:&unk_286BD3080])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"networkGroupID"), @"networkGroupID"}];
    }

    if (([a2 containsObject:&unk_286BD3098] & 1) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_165;
  }

LABEL_160:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"userPreferredPasspointDomains"), @"userPreferredPasspointDomains"}];
  if (a2)
  {
    goto LABEL_162;
  }

  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"networkGroupID"), @"networkGroupID"}];
LABEL_165:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"networkGroupPriority"), @"networkGroupPriority"}];
  if (!a2)
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"lastDiscoveredAt"), @"discoveredAt"}];
    goto LABEL_170;
  }

LABEL_167:
  if ([a2 containsObject:&unk_286BD30B0])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"lastDiscoveredAt"), @"discoveredAt"}];
  }

  if (([a2 containsObject:&unk_286BD30C8] & 1) == 0)
  {
LABEL_199:
    if ([a2 containsObject:&unk_286BD30E0])
    {
      [a1 isPrivacyProxyEnabled];
      [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_5_1() forKeyedSubscript:{"numberWithBool:"), @"PrivacyProxyEnabled"}];
    }

    if (([a2 containsObject:&unk_286BD30F8] & 1) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_202;
  }

LABEL_170:
  [MEMORY[0x277CBEB58] set];
  v47 = [a1 BSSList];
  if (v47)
  {
    v48 = v47;
    v78 = a2;
    v79 = a1;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v49 = [v47 countByEnumeratingWithState:&v83 objects:v87 count:16];
    if (v49)
    {
      v51 = v49;
      v50 = 0;
      v52 = 0x277CCA000uLL;
      v53 = *v84;
      v81 = v48;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v84 != v53)
          {
            objc_enumerationMutation(v48);
          }

          v55 = *(*(&v83 + 1) + 8 * i);
          v56 = [v55 BSSID];
          if (v56)
          {
            v57 = [v56 UTF8String];
            if (v57)
            {
              v58 = ether_aton(v57);
              if (v58)
              {
                v59 = ether_ntoa(v58);
                if (v59)
                {
                  v60 = [*(v52 + 3240) stringWithUTF8String:v59];
                  if (v60)
                  {
                    v61 = v60;
                    if (([OUTLINED_FUNCTION_15_1() containsObject:?] & 1) == 0)
                    {
                      [OUTLINED_FUNCTION_15_1() addObject:?];
                      v62 = [MEMORY[0x277CBEB38] dictionary];
                      [v55 OSSpecificAttributes];
                      [OUTLINED_FUNCTION_1_1() addEntriesFromDictionary:?];
                      [v62 setObject:v61 forKeyedSubscript:@"BSSID"];
                      if ([v55 channel])
                      {
                        OUTLINED_FUNCTION_6_1();
                        [v63 channel];
                        [OUTLINED_FUNCTION_4_1() numberWithUnsignedInteger:?];
                        [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                        [v48 numberWithUnsignedInt:{objc_msgSend(OUTLINED_FUNCTION_20_1(), "flags")}];
                        [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                      }

                      if ([v55 location])
                      {
                        OUTLINED_FUNCTION_6_1();
                        [v64 coordinate];
                        [v48 numberWithDouble:?];
                        [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                        [OUTLINED_FUNCTION_20_1() coordinate];
                        [v48 numberWithDouble:v65];
                        [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                        [OUTLINED_FUNCTION_20_1() horizontalAccuracy];
                        [v48 numberWithDouble:?];
                        [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                        [v61 timestamp];
                        [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                      }

                      [v55 lastAssociatedAt];
                      [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                      if ([v55 colocated2GHzRNRChannel])
                      {
                        OUTLINED_FUNCTION_6_1();
                        [v66 channel];
                        [OUTLINED_FUNCTION_4_1() numberWithUnsignedInteger:?];
                        [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                        [v48 numberWithUnsignedInt:{objc_msgSend(OUTLINED_FUNCTION_20_1(), "flags")}];
                        [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                      }

                      if ([v55 colocated5GHzRNRChannel])
                      {
                        OUTLINED_FUNCTION_6_1();
                        [v67 channel];
                        [OUTLINED_FUNCTION_4_1() numberWithUnsignedInteger:?];
                        [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                        [v48 numberWithUnsignedInt:{objc_msgSend(OUTLINED_FUNCTION_20_1(), "flags")}];
                        [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                      }

                      [v55 AWDLRealTimeModeTimestamp];
                      [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                      [v55 IPv4NetworkSignature];
                      [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                      [v55 IPv6NetworkSignature];
                      [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                      [v55 DHCPServerID];
                      [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                      [v55 DHCPv6ServerID];
                      [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                      [v55 coreWiFiSpecificAttributes];
                      [OUTLINED_FUNCTION_1_1() setObject:? forKeyedSubscript:?];
                      if (!v50)
                      {
                        v50 = [MEMORY[0x277CBEB18] array];
                      }

                      [v50 addObject:v62];
                      v48 = v81;
                      v52 = 0x277CCA000;
                    }
                  }
                }
              }
            }
          }
        }

        v51 = [v48 countByEnumeratingWithState:&v83 objects:v87 count:16];
      }

      while (v51);
    }

    else
    {
      v50 = 0;
    }

    [v6 setObject:v50 forKeyedSubscript:@"networkKnownBSSListKey"];
    a2 = v78;
    a1 = v79;
  }

  if (a2)
  {
    goto LABEL_199;
  }

  [a1 isPrivacyProxyEnabled];
  [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_5_1() forKeyedSubscript:{"numberWithBool:"), @"PrivacyProxyEnabled"}];
LABEL_202:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"privacyProxyBlockedReason"), @"PrivacyProxyBlockedReason"}];
  if (!a2)
  {
    goto LABEL_204;
  }

LABEL_203:
  if ([a2 containsObject:&unk_286BD3110])
  {
LABEL_204:
    v68 = [a1 movingAttribute];
    if (v68 == 1)
    {
      v69 = MEMORY[0x277CBEC38];
    }

    else
    {
      if (v68 != 2)
      {
        goto LABEL_209;
      }

      v69 = MEMORY[0x277CBEC28];
    }

    [v6 setObject:v69 forKeyedSubscript:@"WiFiNetworkAttributeIsMoving"];
LABEL_209:
    if (!a2)
    {
      goto LABEL_211;
    }
  }

  if (![a2 containsObject:&unk_286BD3128])
  {
    goto LABEL_218;
  }

LABEL_211:
  v70 = [a1 publicAttribute];
  if (v70 == 1)
  {
    v71 = MEMORY[0x277CBEC38];
  }

  else
  {
    if (v70 != 2)
    {
      goto LABEL_216;
    }

    v71 = MEMORY[0x277CBEC28];
  }

  [v6 setObject:v71 forKeyedSubscript:@"WiFiNetworkAttributeIsPublic"];
LABEL_216:
  if (!a2)
  {
    [a1 transitionDisabledFlags];
    [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_5_1() forKeyedSubscript:{"numberWithUnsignedInt:"), @"TransitionDisabledFlags"}];
    goto LABEL_221;
  }

LABEL_218:
  if ([a2 containsObject:&unk_286BD3140])
  {
    [a1 transitionDisabledFlags];
    [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_5_1() forKeyedSubscript:{"numberWithUnsignedInt:"), @"TransitionDisabledFlags"}];
  }

  if (([a2 containsObject:&unk_286BD3158] & 1) == 0)
  {
LABEL_223:
    if ([a2 containsObject:&unk_286BD3170])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"carplayUUID"), @"CARPLAY_UUID"}];
    }

    if (([a2 containsObject:&unk_286BD3188] & 1) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_226;
  }

LABEL_221:
  [a1 isStandalone6G];
  [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_5_1() forKeyedSubscript:{"numberWithBool:"), @"Standalone"}];
  if (a2)
  {
    goto LABEL_223;
  }

  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"carplayUUID"), @"CARPLAY_UUID"}];
LABEL_226:
  [a1 isPersonalHotspot];
  [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_5_1() forKeyedSubscript:{"numberWithBool:"), @"IsPersonalHotspot"}];
  if (!a2)
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"NANServiceID"), @"WiFiNetworkNANServiceID"}];
    goto LABEL_231;
  }

LABEL_228:
  if ([a2 containsObject:&unk_286BD31A0])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"NANServiceID"), @"WiFiNetworkNANServiceID"}];
  }

  if (([a2 containsObject:&unk_286BD31B8] & 1) == 0)
  {
LABEL_233:
    if ([a2 containsObject:&unk_286BD31D0])
    {
      [a1 isDNSHeuristicsFilteredNetwork];
      [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_5_1() forKeyedSubscript:{"numberWithBool:"), @"FilteredNetwork"}];
    }

    if (([a2 containsObject:&unk_286BD31E8] & 1) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_236;
  }

LABEL_231:
  [a1 isPublicAirPlayNetwork];
  [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_5_1() forKeyedSubscript:{"numberWithBool:"), @"PublicAirPlayNetwork"}];
  if (a2)
  {
    goto LABEL_233;
  }

  [a1 isDNSHeuristicsFilteredNetwork];
  [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_5_1() forKeyedSubscript:{"numberWithBool:"), @"FilteredNetwork"}];
LABEL_236:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"DNSHeuristicsFailureStateInfo"), @"DNSFailures"}];
  if (!a2)
  {
    goto LABEL_238;
  }

LABEL_237:
  if ([a2 containsObject:&unk_286BD3200])
  {
LABEL_238:
    if ([a1 expirationDate])
    {
      v72 = MEMORY[0x277CCABB0];
      [objc_msgSend(a1 "expirationDate")];
      [v6 setObject:objc_msgSend(v72 forKeyedSubscript:{"numberWithDouble:"), @"WiFiNetworkExpirationDate"}];
    }

    if (!a2)
    {
      goto LABEL_242;
    }
  }

  if (![a2 containsObject:&unk_286BD3218])
  {
    goto LABEL_246;
  }

LABEL_242:
  if (![a1 allowedBeforeFirstUnlock])
  {
    goto LABEL_245;
  }

  if ([a1 isProfileBased])
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"networkIsAllowedBeforeFirstUnlock"];
LABEL_245:
    if (!a2)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  if (!a2)
  {
LABEL_247:
    if ([a1 payloadIdentifier])
    {
      if ([a1 isPayloadIdentifierTelemetryApproved])
      {
        v73 = MEMORY[0x277CBEC38];
      }

      else
      {
        v73 = MEMORY[0x277CBEC28];
      }

      [v6 setObject:v73 forKeyedSubscript:@"CarrierPayloadIdentifierTelemetryApproved"];
    }

    v5 = __WiFiNetworkCreate(*MEMORY[0x277CBECE8], v6, 0);
    if (!a2)
    {
      goto LABEL_256;
    }

    goto LABEL_255;
  }

LABEL_246:
  if ([a2 containsObject:&unk_286BD3230])
  {
    goto LABEL_247;
  }

  v5 = __WiFiNetworkCreate(*MEMORY[0x277CBECE8], v6, 0);
LABEL_255:
  if (![a2 containsObject:&unk_286BD3248])
  {
    goto LABEL_262;
  }

LABEL_256:
  if ([a1 networkOfInterestWorkState] == 1)
  {
    v74 = 1;
  }

  else
  {
    if ([a1 networkOfInterestWorkState] != 2)
    {
      goto LABEL_261;
    }

    v74 = 2;
  }

  WiFiNetworkSetNetworkOfInterestWorkType(v5, v74);
LABEL_261:
  if (a2)
  {
LABEL_262:
    if (![a2 containsObject:&unk_286BD3260])
    {
      goto LABEL_272;
    }
  }

  if ([a1 networkOfInterestHomeState] == 1)
  {
    v75 = 1;
LABEL_271:
    WiFiNetworkSetNetworkOfInterestHomeType(v5, v75);
    goto LABEL_272;
  }

  if ([a1 networkOfInterestHomeState] == 2)
  {
    v75 = 2;
    goto LABEL_271;
  }

  if ([a1 networkOfInterestHomeState] == 3)
  {
    v75 = 3;
    goto LABEL_271;
  }

LABEL_272:
  objc_autoreleasePoolPop(context);
  v76 = *MEMORY[0x277D85DE8];
  return v5;
}

const __CFDictionary *WiFiNetworkGetApManufacturerName(const __CFDictionary *result)
{
  if (result)
  {
    result = WiFiNetworkGetProperty(result, @"WPS_PROB_RESP_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IE_KEY_WPS_MANUFACTURER");
      if (result)
      {
        v2 = result;
        CFStringGetTypeID();
        v3 = OUTLINED_FUNCTION_10_1();
        if (v1 == CFGetTypeID(v3))
        {
          return v2;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

const __CFDictionary *WiFiNetworkGetApModelName(const __CFDictionary *result)
{
  if (result)
  {
    result = WiFiNetworkGetProperty(result, @"WPS_PROB_RESP_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IE_KEY_WPS_MODEL_NAME");
      if (result)
      {
        v2 = result;
        CFStringGetTypeID();
        v3 = OUTLINED_FUNCTION_10_1();
        if (v1 == CFGetTypeID(v3))
        {
          return v2;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

const __CFDictionary *WiFiNetworkGetApModelNumber(const __CFDictionary *result)
{
  if (result)
  {
    result = WiFiNetworkGetProperty(result, @"WPS_PROB_RESP_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IE_KEY_WPS_MODEL_NUM");
      if (result)
      {
        v2 = result;
        CFStringGetTypeID();
        v3 = OUTLINED_FUNCTION_10_1();
        if (v1 == CFGetTypeID(v3))
        {
          return v2;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t WiFiNetworkGetApDeviceVersion(uint64_t a1)
{
  if (a1)
  {
    WiFiNetworkGetProperty(a1, @"WPS_PROB_RESP_IE");
  }

  return 0;
}

CFDataRef WiFiNetworkCreatePrivateMacAddress(const __CFData *a1, const __CFData *a2, const __CFData *a3, const __CFString *a4)
{
  v5 = 0;
  v39 = *MEMORY[0x277D85DE8];
  *md = 0u;
  v38 = 0u;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  bytes[0] = v6;
  bytes[1] = v6;
  if (a1 && a3)
  {
    if (a4)
    {
      v10 = *MEMORY[0x277CBECE8];
      OUTLINED_FUNCTION_26_0(*MEMORY[0x277CBECE8], a4);
    }

    else
    {
      if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, bytes))
      {
        v5 = 0;
        goto LABEL_21;
      }

      v10 = *MEMORY[0x277CBECE8];
      CFDataCreate(*MEMORY[0x277CBECE8], bytes, 32);
    }

    v11 = OUTLINED_FUNCTION_10_1();
    Mutable = CFDataCreateMutable(v11, 0);
    if (Mutable)
    {
      BytePtr = CFDataGetBytePtr(v4);
      v14 = CFDataGetBytePtr(a1);
      v15 = CFDataGetBytePtr(a3);
      if (a2)
      {
        v16 = CFDataGetBytePtr(a2);
      }

      else
      {
        v16 = 0;
      }

      CFDataGetLength(a1);
      v17 = OUTLINED_FUNCTION_1_1();
      CFDataAppendBytes(v17, v14, v18);
      CFDataAppendBytes(Mutable, v15, 6);
      CFDataGetLength(v4);
      v19 = OUTLINED_FUNCTION_1_1();
      CFDataAppendBytes(v19, BytePtr, v20);
      if (a2 && v16)
      {
        CFDataGetLength(a2);
        v21 = OUTLINED_FUNCTION_1_1();
        CFDataAppendBytes(v21, v16, v22);
      }

      Length = CFDataGetLength(a1);
      v24 = Length + CFDataGetLength(v4) + 6;
      if (a2)
      {
        LODWORD(v24) = CFDataGetLength(a2) + v24;
      }

      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      OUTLINED_FUNCTION_2_1(MutableBytePtr, v26, v27, v28, v29, v30, v31, v32, *v35.count, *&v35.hash[2], *&v35.hash[6], *&v35.wbuf[2], *&v35.wbuf[6], *&v35.wbuf[10], *&v35.wbuf[14]);
      CC_SHA256_Update(&v35, MutableBytePtr, v24);
      CC_SHA256_Final(md, &v35);
    }

    v35.count[0] = *md;
    LOWORD(v35.count[1]) = *&md[4];
    LOBYTE(v35.count[0]) = md[0] & 0xFC | 2;
    v5 = CFDataCreate(v10, &v35, 6);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

LABEL_21:
  v33 = *MEMORY[0x277D85DE8];
  return v5;
}

CFDataRef WiFiNetworkCreateForceNewPrivateMacAddress(const __CFData *a1, const __CFData *a2, const __CFString *a3)
{
  v3 = 0;
  v41 = *MEMORY[0x277D85DE8];
  v35 = 0;
  *v34 = 0;
  *md = 0u;
  v40 = 0u;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  bytes[0] = v4;
  bytes[1] = v4;
  *v36 = v4;
  v37 = v4;
  if (a1 && a2)
  {
    if (a3)
    {
      v7 = *MEMORY[0x277CBECE8];
      v8 = OUTLINED_FUNCTION_26_0(*MEMORY[0x277CBECE8], a3);
      v9 = *MEMORY[0x277CDC540];
    }

    else
    {
      v9 = *MEMORY[0x277CDC540];
      if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, v36))
      {
        v3 = 0;
        goto LABEL_15;
      }

      v7 = *MEMORY[0x277CBECE8];
      v8 = CFDataCreate(*MEMORY[0x277CBECE8], v36, 32);
    }

    if (SecRandomCopyBytes(v9, 0x20uLL, bytes))
    {
      v3 = 0;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_19_0();
      Mutable = CFDataCreateMutable(v10, v11);
      if (Mutable)
      {
        BytePtr = CFDataGetBytePtr(v8);
        v14 = CFDataGetBytePtr(a1);
        CFDataGetBytePtr(a2);
        CFDataGetLength(a1);
        v15 = OUTLINED_FUNCTION_1_1();
        CFDataAppendBytes(v15, v14, v16);
        v17 = OUTLINED_FUNCTION_31();
        CFDataAppendBytes(v17, v18, 6);
        CFDataGetLength(v8);
        v19 = OUTLINED_FUNCTION_1_1();
        CFDataAppendBytes(v19, BytePtr, v20);
        CFDataAppendBytes(Mutable, bytes, 32);
        Length = CFDataGetLength(a1);
        v22 = Length + CFDataGetLength(v8);
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        OUTLINED_FUNCTION_2_1(MutableBytePtr, v24, v25, v26, v27, v28, v29, v30, *v33.count, *&v33.hash[2], *&v33.hash[6], *&v33.wbuf[2], *&v33.wbuf[6], *&v33.wbuf[10], *&v33.wbuf[14]);
        CC_SHA256_Update(&v33, MutableBytePtr, v22 + 38);
        CC_SHA256_Final(md, &v33);
      }

      *v34 = *md;
      v35 = *&md[4];
      v34[0] = md[0] & 0xFC | 2;
      v3 = CFDataCreate(v7, v34, 6);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

LABEL_15:
  v31 = *MEMORY[0x277D85DE8];
  return v3;
}

const __CFAllocator *WiFiNetworkCreateNetworkID(const __CFData *a1, const __CFString *a2)
{
  v2 = 0;
  v31 = *MEMORY[0x277D85DE8];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *bytes = v3;
  v30 = v3;
  *md = 0u;
  v28 = 0u;
  if (a1 && a2)
  {
    v2 = *MEMORY[0x277CBECE8];
    v5 = OUTLINED_FUNCTION_26_0(*MEMORY[0x277CBECE8], a2);
    v6 = OUTLINED_FUNCTION_19_0();
    Mutable = CFDataCreateMutable(v6, v7);
    if (!Mutable)
    {
      *bytes = 0u;
      v30 = 0u;
      v2 = CFDataCreate(v2, bytes, 32);
      if (!v5)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v9 = Mutable;
    BytePtr = CFDataGetBytePtr(v5);
    v11 = CFDataGetBytePtr(a1);
    CFDataAppendBytes(v9, v11, 6);
    CFDataGetLength(v5);
    v12 = OUTLINED_FUNCTION_4_1();
    CFDataAppendBytes(v12, BytePtr, v13);
    Length = CFDataGetLength(v5);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    OUTLINED_FUNCTION_2_1(MutableBytePtr, v16, v17, v18, v19, v20, v21, v22, *v26.count, *&v26.hash[2], *&v26.hash[6], *&v26.wbuf[2], *&v26.wbuf[6], *&v26.wbuf[10], *&v26.wbuf[14]);
    CC_SHA256_Update(&v26, MutableBytePtr, Length + 6);
    CC_SHA256_Final(md, &v26);
    *bytes = *md;
    v30 = v28;
    CFDataCreate(v2, bytes, 32);
    v23 = OUTLINED_FUNCTION_11_1();
    CFRelease(v23);
    if (v5)
    {
LABEL_5:
      CFRelease(v5);
    }
  }

LABEL_6:
  v24 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t WiFiNetworkIsOpen(uint64_t result)
{
  if (result)
  {
    v1 = result;
    return !WiFiNetworkIsEAP(result) && CFDictionaryGetValue(*(v1 + 16), @"WEP") != *MEMORY[0x277CBED28] && !WiFiNetworkIsWPAWPA2PSK(v1) && !WiFiNetworkIsWAPI(v1) && !__WiFiNetworkIsSAE(*(v1 + 16)) && __WiFiNetworkIsOWEOnly(*(v1 + 16)) == 0;
  }

  return result;
}

const void *WiFiPrivateMacNetworkGetMatchingNetwork(const __CFArray *a1, const void **a2)
{
  result = 0;
  v4 = 0;
  idx = -1;
  if (a1 && a2)
  {
    WiFiGetPrivateMacNetworkIndices(a1, a2, &idx, &v4);
    if (idx == -1)
    {
      return 0;
    }

    else
    {
      return CFArrayGetValueAtIndex(a1, idx);
    }
  }

  return result;
}

void WiFiGetPrivateMacNetworkIndices(const __CFArray *a1, const void **a2, CFIndex *a3, void *a4)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v9 = Count;
  v10 = CFGetTypeID(a2);
  v11 = __kWiFiNetworkTypeID;
  if (!__kWiFiNetworkTypeID)
  {
    OUTLINED_FUNCTION_0_2();
    pthread_once(v12, v13);
    v11 = __kWiFiNetworkTypeID;
  }

  if (v10 != v11)
  {
LABEL_14:
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    goto LABEL_15;
  }

  if (v9 < 1)
  {
LABEL_15:
    v14 = -1;
    goto LABEL_16;
  }

  v14 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v14);
    if (ValueAtIndex)
    {
      if (__WiFiCompareDictionaryValues(ValueAtIndex[2], a2[2], @"SSID_STR"))
      {
        break;
      }
    }

    if (v9 == ++v14)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if (a4)
  {
    *a4 = 0;
  }

  if (a3)
  {
    *a3 = v14;
  }
}

uint64_t WiFiNetworkPrivateMacIsNetworkTrustworthy(uint64_t a1)
{
  if (a1)
  {
    return WiFiNetworkIsPublicAirPlayNetwork(a1) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t WiFiNetworkIsProblematicForEncryptedDNS(const void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0x8FE4AC15BC6D3674;
  v19 = 52;
  if (a1)
  {
    v2 = 0;
    v3 = &v18 + 2;
    v4 = MEMORY[0x277D86220];
    do
    {
      v5 = WiFiNetworkCopyBSSIDData(a1);
      if (v5)
      {
        v6 = v5;
        memset(buffer, 170, 6);
        v21.location = 0;
        v21.length = 6;
        CFDataGetBytes(v5, v21, buffer);
        if (buffer[0] == *(v3 - 2) && buffer[1] == *(v3 - 1) && buffer[2] == *v3)
        {
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            SSID = WiFiNetworkGetSSID(a1);
            *buf = 136315650;
            v13 = "WiFiNetworkIsProblematicForEncryptedDNS";
            v14 = 2112;
            v15 = SSID;
            v16 = 2112;
            v17 = v6;
            _os_log_impl(&dword_25A116000, v4, OS_LOG_TYPE_DEFAULT, "%s: network %@ (%@) is known to be problematic for DoT/DoH", buf, 0x20u);
          }

          v8 = 1;
        }

        else
        {
          v8 = 0;
        }

        CFRelease(v6);
      }

      else
      {
        v8 = 0;
      }

      if (v2 > 1)
      {
        break;
      }

      ++v2;
      v3 += 3;
    }

    while (!v8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void WiFiNetworkSetUserPreferredNetwork(uint64_t a1, CFDictionaryRef *a2, const void *a3)
{
  if (!a1 || !a2)
  {
    return;
  }

  if (CFDictionaryGetValue(a2[2], @"DomainName"))
  {
    if (WiFiNetworkGetHS20DomainName(a2))
    {
      Property = WiFiNetworkGetProperty(a1, @"userPreferredPasspointDomains");
      v17 = *MEMORY[0x277CBECE8];
      v18 = Property ? CFDictionaryCreateMutableCopy(v17, 0, Property) : CFDictionaryCreateMutable(v17, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v9 = v18;
      if (v18)
      {
        v19 = OUTLINED_FUNCTION_8();
        if (a3)
        {
          CFDictionaryAddValue(v19, v20, a3);
        }

        else
        {
          CFDictionaryRemoveValue(v19, v20);
        }

        Count = CFDictionaryGetCount(v9);
        v13 = @"userPreferredPasspointDomains";
        if (Count)
        {
          goto LABEL_13;
        }

        goto LABEL_24;
      }
    }
  }

  else if (WiFiNetworkGetSSID(a2))
  {
    v6 = WiFiNetworkGetProperty(a1, @"userPreferredNetworkNames");
    v7 = *MEMORY[0x277CBECE8];
    v8 = v6 ? CFDictionaryCreateMutableCopy(v7, 0, v6) : CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v9 = v8;
    if (v8)
    {
      v10 = OUTLINED_FUNCTION_8();
      if (a3)
      {
        CFDictionarySetValue(v10, v11, a3);
      }

      else
      {
        CFDictionaryRemoveValue(v10, v11);
      }

      v12 = CFDictionaryGetCount(v9);
      v13 = @"userPreferredNetworkNames";
      if (v12)
      {
LABEL_13:
        v14 = OUTLINED_FUNCTION_32();
LABEL_25:
        WiFiNetworkSetProperty(v14, v13, v15);

        CFRelease(v9);
        return;
      }

LABEL_24:
      v14 = a1;
      v15 = 0;
      goto LABEL_25;
    }
  }
}

const void *WiFiNetworkGetUserPreferredTimestamp(uint64_t a1, CFDictionaryRef *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  if (CFDictionaryGetValue(a2[2], @"DomainName"))
  {
    HS20DomainName = WiFiNetworkGetHS20DomainName(a2);
    if (!HS20DomainName)
    {
      return 0;
    }

    v5 = HS20DomainName;
    v6 = @"userPreferredPasspointDomains";
  }

  else
  {
    SSID = WiFiNetworkGetSSID(a2);
    if (!SSID)
    {
      return 0;
    }

    v5 = SSID;
    v6 = @"userPreferredNetworkNames";
  }

  Property = WiFiNetworkGetProperty(a1, v6);
  if (!Property)
  {
    return 0;
  }

  return CFDictionaryGetValue(Property, v5);
}

__CFString *WiFiNetworkGetRedactedSSID(__CFString *result)
{
  if (result)
  {
    v1 = result;
    if ([MEMORY[0x277D02B10] logRedactionDisabled])
    {

      return WiFiNetworkGetSSID(v1);
    }

    else
    {
      return @"<redacted>";
    }
  }

  return result;
}

const __CFArray *WiFiNetworkGetRedactedBSSID(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    if ([MEMORY[0x277D02B10] logRedactionDisabled])
    {

      return WiFiNetworkGetLastBSSID(v1);
    }

    else
    {
      return @"<redacted>";
    }
  }

  return result;
}

uint64_t __WiFiCompareBGScanParams(const __CFDictionary *a1, const __CFDictionary *a2)
{
  if (CFDictionaryGetValue(a1, @"forceBGScanParamsCompare") != *MEMORY[0x277CBED28])
  {
    v3 = *MEMORY[0x277CBED28];
    if (CFDictionaryGetValue(a2, @"forceBGScanParamsCompare") != v3)
    {
      return 1;
    }
  }

  v5 = OUTLINED_FUNCTION_29();
  result = __WiFiCompareDictionaryValues(v5, v6, v7);
  if (result)
  {
    v8 = OUTLINED_FUNCTION_29();
    result = __WiFiCompareDictionaryValues(v8, v9, v10);
    if (result)
    {
      v11 = OUTLINED_FUNCTION_29();

      return __WiFiCompareDictionaryValues(v11, v12, v13);
    }
  }

  return result;
}

void WiFiNetworkIsWoWAllowed_cold_1(CFDictionaryRef *a1, BOOL *a2)
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
    v11 = 1;
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

  v11 = (*(v5 + 9) & 3) != 1;
LABEL_13:
  *a2 = v11;
}

void WiFiNetworkFoundNanIe_cold_1(CFDictionaryRef *a1, char *a2)
{
  Value = CFDictionaryGetValue(*a1, @"IE");
  v17 = 116528896;
  v18 = 260;
  v19 = 18;
  if (Value)
  {
    if (CFDataGetBytePtr(Value))
    {
      v5 = OUTLINED_FUNCTION_11_1();
      Length = CFDataGetLength(v5);
      if (Length >= 1)
      {
        v7 = &v2[Length];
        do
        {
          OUTLINED_FUNCTION_17_1();
          v8 = v2 + 6;
          if (v9)
          {
            v10 = v8 > v7;
          }

          else
          {
            v10 = 1;
          }

          if (!v10 && !bcmp(v2 + 2, &v17, 4uLL))
          {
            for (i = v2 + 9; i <= v7; i = v15 + 6)
            {
              v14 = v8[2];
              if (!bcmp(v8, &v18, 3uLL))
              {
                v16 = 1;
                goto LABEL_19;
              }

              v15 = &v8[v14];
              v8 += v14 + 3;
            }
          }

          OUTLINED_FUNCTION_16_1();
        }

        while (v11 != v12);
      }
    }
  }

  v16 = 0;
LABEL_19:
  *a2 = v16;
}

const __CFDictionary *WiFiNetworkIsBcnProtCapable_cold_1(uint64_t a1, BOOL *a2)
{
  v3 = *(a1 + 16);
  number = 0;
  valuePtr = 0;
  result = CFDictionaryGetValue(v3, @"EXT_CAPS");
  if (result && (result = CFDictionaryGetValueIfPresent(result, @"BEACON_PROTECTION", &number), result) && (result = number) != 0)
  {
    result = CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
    v5 = valuePtr == 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void WiFiNetworkIsSameSecurity_cold_1()
{
  OUTLINED_FUNCTION_24();
  v47 = v0;
  v2 = v1;
  v4 = v3;
  AuthFlags = __WiFiNetworkGetAuthFlags(*(v3 + 16));
  v45 = __WiFiNetworkGetAuthFlags(*(v2 + 16));
  v6 = __WiFiNetworkIsSAE(*(v4 + 16)) && (v5 = *(v4 + 16), !__WiFiNetworkSupportsWPA(v5)) && __WiFiNetworkSupportsWPA2(v5) == 0;
  v48 = __WiFiNetworkIsSAE(*(v2 + 16)) && (v7 = *(v2 + 16), !__WiFiNetworkSupportsWPA(v7)) && __WiFiNetworkSupportsWPA2(v7) == 0;
  v8 = __WiFiNetworkIsOWEOnly(*(v4 + 16));
  v9 = __WiFiNetworkIsOWEOnly(*(v2 + 16));
  Value = CFDictionaryGetValue(*(v4 + 16), @"ALLOW_WPA2_PSK");
  v11 = CFDictionaryGetValue(*(v2 + 16), @"ALLOW_WPA2_PSK");
  v12 = CFDictionaryGetValue(*(v4 + 16), @"ALLOW_OWE_TSN");
  v13 = CFDictionaryGetValue(*(v2 + 16), @"ALLOW_OWE_TSN");
  v14 = v12;
  v15 = (Value | v12) == 0;
  v16 = (v11 | v13) == 0;
  if (v15 == v16)
  {
    v28 = v6 == v48 && v8 == v9;
    v25 = v47;
    if (!v28)
    {
      v21 = 0;
      goto LABEL_34;
    }

LABEL_29:
    if (!AuthFlags || !v45 || (v21 = AuthFlags & v45, (AuthFlags & v45) != 0))
    {
      v21 = (v45 != 0) ^ (AuthFlags == 0);
    }

    goto LABEL_34;
  }

  v17 = v13;
  v43 = v9;
  v18 = v48;
  if (v6)
  {
    v29 = v14;
    OperatingBand = WiFiNetworkGetOperatingBand(v4);
    v18 = v48;
    v14 = v29;
    v19 = OperatingBand != 3;
  }

  else
  {
    v19 = 0;
  }

  v44 = v6;
  if (v18)
  {
    v31 = v14;
    v32 = WiFiNetworkGetOperatingBand(v2);
    v18 = v48;
    v14 = v31;
    v20 = v32 != 3;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  v22 = *MEMORY[0x277CBED28];
  v23 = Value == *MEMORY[0x277CBED28] && v20;
  v24 = v11 == *MEMORY[0x277CBED28];
  if (v23)
  {
    v25 = v47;
    goto LABEL_34;
  }

  v25 = v47;
  if (!v24 || !v19)
  {
    if ((v15 & v44) == 1)
    {
      v33 = v14;
      v34 = WiFiNetworkGetOperatingBand(v4);
      v18 = v48;
      v35 = AuthFlags;
      v14 = v33;
      if (v34 == 3)
      {
        v35 = AuthFlags | 2;
      }

      AuthFlags = v35;
    }

    if ((v16 & v18) == 1)
    {
      v36 = v14;
      v37 = WiFiNetworkGetOperatingBand(v2);
      v38 = v45;
      v14 = v36;
      if (v37 == 3)
      {
        v38 = v45 | 2;
      }

      v45 = v38;
    }

    if (v8)
    {
      v39 = v14;
      v40 = WiFiNetworkGetOperatingBand(v4);
      v14 = v39;
      v26 = v40 != 3;
      if (!v43)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v26 = 0;
      if (!v43)
      {
LABEL_20:
        v27 = 0;
LABEL_21:
        v21 = 0;
        if (v14 == v22 && v27 || v17 == v22 && v26)
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      }
    }

    v41 = v14;
    v42 = WiFiNetworkGetOperatingBand(v2);
    v14 = v41;
    v27 = v42 != 3;
    goto LABEL_21;
  }

LABEL_34:
  *v25 = v21;
  OUTLINED_FUNCTION_23();
}

void WiFiNetworkSetStateWithReason_cold_1(const void *a1, char a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  SSID = WiFiNetworkGetSSID(a1);
  v6 = "enabled";
  v8 = 136315906;
  v9 = "WiFiNetworkSetStateWithReason";
  v11 = SSID;
  v10 = 2112;
  v12 = 2080;
  if (!a2)
  {
    v6 = "disabled";
  }

  v13 = v6;
  v14 = 2112;
  v15 = a3;
  _os_log_error_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Network '%@' %s for auto-join due to %@", &v8, 0x2Au);
  v7 = *MEMORY[0x277D85DE8];
}

void WiFiNetworkCanExposeIMSI_cold_1(uint64_t a1, BOOL *a2)
{
  if (!__WiFiNetworkIsEAPWithType(a1, 18) && !__WiFiNetworkIsEAPWithType(a1, 23) && !__WiFiNetworkIsEAPWithType(a1, 50))
  {
    goto LABEL_11;
  }

  Property = WiFiNetworkGetProperty(a1, @"EnterpriseProfile");
  if (!Property || (Value = CFDictionaryGetValue(Property, @"EAPClientConfiguration"), v6 = CFGetTypeID(Value), v6 != CFDictionaryGetTypeID()))
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
LABEL_11:
    v8 = 0;
    goto LABEL_6;
  }

  if (CFDictionaryContainsKey(Value, @"EAPSIMAKAEncryptedIdentityEnabled"))
  {
    v7 = CFDictionaryGetValue(Value, @"EAPSIMAKAEncryptedIdentityEnabled");
    v8 = _CFTypeGetIntValue(v7) == 0;
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v8 = 1;
  }

LABEL_6:
  *a2 = v8;
}

BOOL WiFiNetworkCreateFromPath_cold_1(uint64_t a1, void *a2)
{
  v3 = __WiFiNetworkCreate(0, [MEMORY[0x277CCAC58] propertyListWithData:a1 options:0 format:0 error:0], 0);
  *a2 = v3;
  return v3 == 0;
}

void WiFiNetworkCreateCoreWiFiNetworkProfile_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CLLocationCoordinate2D soft_CLLocationCoordinate2DMake(CLLocationDegrees description:{CLLocationDegrees)"), @"WiFiNetwork.c", 51, @"%s", dlerror()}];
  __break(1u);
}

void getCWFScanResultPropertyOSSpecificAttributesKey_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getCWFScanResultPropertyOSSpecificAttributesKey(void)") description:{@"WiFiNetwork.c", 39, @"%s", dlerror()}];
  __break(1u);
}

uint64_t WiFiNetworkCreateFromCoreWiFiScanResult_cold_1(void *a1, void *a2, void *a3, void *a4)
{
  [a2 addEntriesFromDictionary:{objc_msgSend(a1, "OSSpecificAttributes")}];
  v8 = *MEMORY[0x277CBECE8];
  if (!__WiFiNetworkCreate(*MEMORY[0x277CBECE8], a2, 0))
  {
    return 1;
  }

  v9 = [OUTLINED_FUNCTION_11_1() matchingKnownNetworkProfile];
  if (v9)
  {
    v19 = WiFiNetworkCreateFromCoreWiFiNetworkProfile(v9, 0);
    v11 = v19;
    if (v19 && (Copy = CFDictionaryCreateCopy(v8, v19[2])) != 0)
    {
      v21 = Copy;
      v22 = [a2 copy];
      [a2 setDictionary:v21];
      [a2 addEntriesFromDictionary:v22];
      v10 = __WiFiNetworkCreate(v8, a2, 0);
      CFRelease(v21);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = CFRetain(v4);
    v11 = 0;
  }

  *a4 = v10;
  v12 = OUTLINED_FUNCTION_8();
  Property = WiFiNetworkGetProperty(v12, v13);
  v15 = WiFiNetworkGetProperty(v4, @"WPA_IE");
  v16 = WiFiNetworkGetProperty(v11, @"RSN_IE");
  v17 = WiFiNetworkGetProperty(v4, @"RSN_IE");
  if (v16 && Property && v17 && !v15)
  {
    WiFiNetworkSetProperty(v10, @"WPA_IE", 0);
  }

  if (!WiFiNetworkGetProperty(v4, @"BSSID"))
  {
    WiFiNetworkSetProperty(v10, @"BSSID", 0);
  }

  objc_autoreleasePoolPop(a3);
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(v4);
  return 0;
}

uint64_t WiFiNetworkPrivateMacNetworkType_cold_1(uint64_t a1, char a2, BOOL *a3)
{
  result = WiFiNetworkIsPublicHotspot(a1);
  if (result)
  {
    goto LABEL_2;
  }

  if (a1)
  {
    result = CFDictionaryGetValue(*(a1 + 16), @"DomainName");
    if (result)
    {
      goto LABEL_2;
    }

    result = CFDictionaryContainsKey(*(a1 + 16), @"BundleIdentifier");
    if (result)
    {
      goto LABEL_2;
    }

    result = WiFiNetworkIsCarrierBundleBased(a1);
    if (result)
    {
      goto LABEL_2;
    }

    result = WiFiNetworkGetProperty(a1, @"WalletIdentifier");
    if (result)
    {
      goto LABEL_2;
    }
  }

  else
  {
    result = WiFiNetworkIsCarrierBundleBased(0);
    if (result)
    {
      goto LABEL_2;
    }
  }

  result = WiFiNetworkIsPublicAirPlayNetwork(a1);
  if (!result)
  {
    result = WiFiNetworkIsApplePersonalHotspot(a1);
    if (!result)
    {
      result = WiFiNetworkGetAccessoryIdentifier(a1);
      v7 = (result | a2 & 0xC) != 0;
      goto LABEL_3;
    }
  }

LABEL_2:
  v7 = 1;
LABEL_3:
  *a3 = v7;
  return result;
}

CFStringRef __WiFiNetworkCopyDesc_cold_1(const __CFDictionary **a1, unsigned int *a2, CFStringRef *a3)
{
  Channel = WiFiNetworkGetChannel(a1);
  if (Channel)
  {
    CFNumberGetValue(Channel, kCFNumberSInt32Type, a2);
  }

  Property = WiFiNetworkGetProperty(a1, @"networkIsAllowedBeforeFirstUnlock");
  v36 = *MEMORY[0x277CBECE8];
  SSID = WiFiNetworkGetSSID(a1);
  DirectedState = WiFiNetworkGetDirectedState(a1);
  IsEAP = WiFiNetworkIsEAP(a1);
  v32 = __WiFiNetworkIsSAE(a1[2]);
  v31 = WiFiNetworkIsWPAWPA2PSK(a1) != 0;
  Value = CFDictionaryGetValue(a1[2], @"WEP");
  v7 = *MEMORY[0x277CBED28];
  v29 = Value == *MEMORY[0x277CBED28];
  WAPIPolicy = __WiFiNetworkGetWAPIPolicy(a1[2]);
  Type = WiFiNetworkGetType(a1);
  v26 = WiFiNetworkGetProperty(a1, @"enabled");
  v25 = WiFiNetworkGetProperty(a1, @"SaveDataMode");
  v24 = WiFiNetworkGetProperty(a1, @"NetworkQualityResponsiveness");
  v23 = WiFiNetworkGetProperty(a1, @"NetworkQualityDate");
  NetworkOfInterestHomeType = WiFiNetworkGetNetworkOfInterestHomeType(a1);
  if (NetworkOfInterestHomeType >= 4)
  {
    v9 = @"?";
  }

  else
  {
    v9 = off_27991A180[NetworkOfInterestHomeType];
  }

  v22 = v9;
  ForcedHomeFix = WiFiNetworkGetForcedHomeFix(a1);
  v10 = WiFiNetworkGetProperty(a1, @"TransitionDisabledFlags");
  found = WiFiNetworkFoundNanIe(a1);
  IsApplePersonalHotspot = WiFiNetworkIsApplePersonalHotspot(a1);
  IsPublicAirPlayNetwork = WiFiNetworkIsPublicAirPlayNetwork(a1);
  v14 = WiFiNetworkIs6EModeOff(a1);
  IsHotspot20 = WiFiNetworkIsHotspot20(a1);
  v16 = *a2;
  v17 = CFDictionaryContainsKey(a1[2], @"BundleIdentifier") != 0;
  if (Property)
  {
    v18 = Property == v7;
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  v19 = WiFiNetworkGetProperty(a1, @"PolicyUUID");
  result = CFStringCreateWithFormat(v36, 0, @"%@: isHidden=%d, isEAP=%d, isSAE=%d, isWPA=%d, isWEP=%d, WAPI=%d, type=%d, enabled=%@, saveData=%@, responsiveness=%@ (%@) isHome=%@, isForceFixed=%d, transitionDisabledFlags=%@, foundNanIe=%d, isPH=%d, isPublicAirPlayNetwork=%d, is6EDisabled=%d, hs20=%d, Channel=%d, isBundleIdentifierPresent=%d, allowedBeforeFirstUnlock=%d, PolicyUUID=%@", SSID, DirectedState, IsEAP, v32, v31, v29, WAPIPolicy, Type, v26, v25, v24, v23, v22, ForcedHomeFix, v10, found, IsApplePersonalHotspot, IsPublicAirPlayNetwork, v14, IsHotspot20, v16, v17, v18, v19);
  *a3 = result;
  return result;
}

void __getCWFNetworkProfileClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCWFNetworkProfileClass(void)_block_invoke") description:{@"WiFiNetwork.c", 35, @"Unable to find class %s", "CWFNetworkProfile"}];
  __break(1u);
}

void CoreWiFiLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CoreWiFiLibrary(void)") description:{@"WiFiNetwork.c", 34, @"%s", *a1}];
  __break(1u);
}

void __getCWFBSSClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCWFBSSClass(void)_block_invoke") description:{@"WiFiNetwork.c", 43, @"Unable to find class %s", "CWFBSS"}];
  __break(1u);
}

void __getCWFChannelClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCWFChannelClass(void)_block_invoke") description:{@"WiFiNetwork.c", 41, @"Unable to find class %s", "CWFChannel"}];
  __break(1u);
}

void __getCLLocationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCLLocationClass(void)_block_invoke") description:{@"WiFiNetwork.c", 47, @"Unable to find class %s", "CLLocation"}];
  __break(1u);
}

void CoreLocationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CoreLocationLibrary(void)") description:{@"WiFiNetwork.c", 46, @"%s", *a1}];
  __break(1u);
}

void __getCWFScanResultClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCWFScanResultClass(void)_block_invoke") description:{@"WiFiNetwork.c", 37, @"Unable to find class %s", "CWFScanResult"}];
  __break(1u);
}

__CFString *WiFiSecurityCopyHashedWPAPassword(const __CFString *a1, const __CFData *a2)
{
  Mutable = 0;
  v13 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    *bytes = 0u;
    v12 = 0u;
    CFStringGetCStringPtr(a1, 0x8000100u);
    CFDataGetBytePtr(a2);
    CFDataGetLength(a2);
    if (Apple80211ParseWPAPassword() || (v4 = *MEMORY[0x277CBECE8], (v5 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 32)) == 0))
    {
      Mutable = 0;
    }

    else
    {
      v6 = v5;
      BytePtr = CFDataGetBytePtr(v5);
      if (CFDataGetLength(v6) == 32)
      {
        Mutable = CFStringCreateMutable(v4, 64);
        for (i = 0; i != 32; ++i)
        {
          CFStringAppendFormat(Mutable, 0, @"%02x", BytePtr[i]);
        }
      }

      else
      {
        Mutable = 0;
      }

      CFRelease(v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return Mutable;
}

void __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_3(&dword_25A116000, MEMORY[0x277D86220], v2, "%s: error: empty ssid hash", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
  v7 = *MEMORY[0x277D85DE8];
}

void __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = *v0;
    v3 = 136315394;
    v4 = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
    v5 = 2112;
    v6 = v1;
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: error: empty password for ssid %@", &v3, 0x16u);
  }

  OUTLINED_FUNCTION_1_2();
  v2 = *MEMORY[0x277D85DE8];
}

void __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_3(&dword_25A116000, MEMORY[0x277D86220], v0, "%s: error: empty ssid", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_2();
  v5 = *MEMORY[0x277D85DE8];
}

void __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_3(&dword_25A116000, MEMORY[0x277D86220], v0, "%s: null password", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_2();
  v5 = *MEMORY[0x277D85DE8];
}

void __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_3(&dword_25A116000, MEMORY[0x277D86220], v0, "%s: null ssid", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_2();
  v5 = *MEMORY[0x277D85DE8];
}

void __WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_3(&dword_25A116000, MEMORY[0x277D86220], v2, "%s: error: empty ssid hash", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
  v7 = *MEMORY[0x277D85DE8];
}

void __WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_3(&dword_25A116000, MEMORY[0x277D86220], v0, "%s: error: empty ssid", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_2();
  v5 = *MEMORY[0x277D85DE8];
}

void __WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_3(&dword_25A116000, MEMORY[0x277D86220], v0, "%s: null ssid", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_1_2();
  v5 = *MEMORY[0x277D85DE8];
}

void __getSFPasswordSharingServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getSFPasswordSharingServiceClass(void)_block_invoke") description:{@"WiFiPasswordSharingSimulator.m", 14, @"Unable to find class %s", "SFPasswordSharingService"}];
  __break(1u);
}

void __getSFPasswordSharingServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *SharingLibrary(void)") description:{@"WiFiPasswordSharingSimulator.m", 13, @"%s", *a1}];
  __break(1u);
  Apple80211CopyLeakyAPStatus();
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}