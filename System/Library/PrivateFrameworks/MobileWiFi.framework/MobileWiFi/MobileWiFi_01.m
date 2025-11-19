const __CFDictionary *WiFiNetworkIsOWEOnly(const __CFDictionary *result)
{
  if (result)
  {
    return __WiFiNetworkIsOWEOnly(*(result + 2));
  }

  return result;
}

const __CFDictionary *__WiFiNetworkIsOWEOnly(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"RSN_IE");
  if (result)
  {
    result = __WiFiNetworkContainsAuthSelector(result, 18);
    if (result)
    {
      Value = CFDictionaryGetValue(a1, @"SCAN_RESULT_OWE_MULTI_SSID");
      if (_CFTypeGetIntValue(Value))
      {
        return 0;
      }

      else
      {
        v4 = CFDictionaryGetValue(a1, @"ALLOW_OWE_TSN");
        return (_CFTypeGetIntValue(v4) == 0);
      }
    }
  }

  return result;
}

BOOL WiFiNetworkAllowsPasswordBasedEAPType(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    result = WiFiNetworkIsEAP(result);
    if (result)
    {
      return __WiFiNetworkIsEAPWithType(v1, 17) || __WiFiNetworkIsEAPWithType(v1, 21) || __WiFiNetworkIsEAPWithType(v1, 25) || __WiFiNetworkIsEAPWithType(v1, 26) || __WiFiNetworkIsEAPWithType(v1, 43) != 0;
    }
  }

  return result;
}

void WiFiNetworkGetTimeToExpire(uint64_t a1)
{
  if (WiFiNetworkGetExpireDate(a1) != 0.0)
  {
    CFAbsoluteTimeGetCurrent();
  }
}

void WiFiNetworkSetExpireDate(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      MEMORY[0x25F84D480](a2);

      WiFiNetworkSetFloatProperty(a1, @"WiFiNetworkExpirationDate", v3);
    }

    else
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());

      WiFiNetworkSetProperty(a1, @"WiFiNetworkExpirationDate", 0);
    }
  }
}

BOOL WiFiNetworkIsExpirable(uint64_t a1)
{
  if (a1)
  {
    return WiFiNetworkGetProperty(a1, @"WiFiNetworkExpirationDate") != 0;
  }

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  return 0;
}

void WiFiNetworkSetWEP(uint64_t a1, int a2)
{
  v2 = MEMORY[0x277CBED28];
  if (!a2)
  {
    v2 = MEMORY[0x277CBED10];
  }

  WiFiNetworkSetProperty(a1, @"WEP", *v2);
}

void WiFiNetworkSetOWE(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    values = Mutable;
    if (Mutable)
    {
      v5 = Mutable;
      valuePtr = 18;
      v6 = CFNumberCreate(v3, kCFNumberCFIndexType, &valuePtr);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(v5, v6);
        CFRelease(v7);
      }

      keys = @"IE_KEY_RSN_AUTHSELS";
      v8 = CFDictionaryCreate(v3, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v8)
      {
        v9 = v8;
        WiFiNetworkSetProperty(a1, @"RSN_IE", v8);
        CFRelease(v9);
      }

      CFRelease(values);
    }
  }

  else
  {

    WiFiNetworkSetProperty(a1, @"RSN_IE", 0);
  }
}

void WiFiNetworkSetEAP(uint64_t a1, int a2)
{
  if (a2)
  {
    valuePtr = 1;
    v3 = *MEMORY[0x277CBECE8];
    values = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &valuePtr);
    if (values)
    {
      cf = CFArrayCreate(v3, &values, 1, MEMORY[0x277CBF128]);
      if (cf)
      {
        v8 = @"IE_KEY_RSN_AUTHSELS";
        v4 = CFDictionaryCreate(v3, &v8, &cf, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v4)
        {
          v5 = v4;
          WiFiNetworkSetProperty(a1, @"RSN_IE", v4);
          CFRelease(v5);
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

    valuePtr = 1;
    values = CFNumberCreate(v3, kCFNumberCFIndexType, &valuePtr);
    if (values)
    {
      cf = CFArrayCreate(v3, &values, 1, MEMORY[0x277CBF128]);
      if (cf)
      {
        v8 = @"IE_KEY_WPA_AUTHSELS";
        v6 = CFDictionaryCreate(v3, &v8, &cf, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v6)
        {
          v7 = v6;
          WiFiNetworkSetProperty(a1, @"WPA_IE", v6);
          CFRelease(v7);
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
    WiFiNetworkSetProperty(a1, @"RSN_IE", 0);
    WiFiNetworkSetProperty(a1, @"WPA_IE", 0);

    WiFiNetworkSetProperty(a1, @"EnterpriseProfile", 0);
  }
}

BOOL WiFiNetworkRequiresPassword(uint64_t a1)
{
  if (!WiFiNetworkIsEAP(a1))
  {
    if (!WiFiNetworkIsWPAWPA2PSK(a1))
    {
      if (a1)
      {
        if (CFDictionaryGetValue(*(a1 + 16), @"WEP") != *MEMORY[0x277CBED28] && !WiFiNetworkIsWAPI(a1))
        {
          return __WiFiNetworkIsSAE(*(a1 + 16)) != 0;
        }
      }

      else
      {
        result = WiFiNetworkIsWAPI(0);
        if (!result)
        {
          return result;
        }
      }
    }

    return 1;
  }

  return !WiFiNetworkRequiresIdentity(a1) && !__WiFiNetworkIsEAPWithType(a1, 18) && __WiFiNetworkIsEAPWithType(a1, 23) == 0;
}

const __CFArray *WiFiNetworkRequiresIdentity(uint64_t a1)
{
  if (!WiFiNetworkIsEAP(a1))
  {
    return 0;
  }

  Property = WiFiNetworkGetProperty(a1, @"AcceptEAPTypes");
  if (Property)
  {
    valuePtr = 13;
    v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      v7.length = CFArrayGetCount(Property);
      v7.location = 0;
      Property = (CFArrayGetFirstIndexOfValue(Property, v7, v4) != -1);
      CFRelease(v4);
      return Property;
    }

    return 0;
  }

  return Property;
}

uint64_t WiFiNetworkCompareAuthFlags(unsigned int a1, unsigned int a2)
{
  if ((a1 & a2 & 4) == 0 || ((a2 ^ a1) & 8) != 0)
  {
    if (a1 >= a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

    if (a1 <= a2)
    {
      return v8;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v2 = a1 & 0xFFFFFFFB;
    v3 = a2 & 0xFFFFFFFB;
    if ((a1 & 0xFFFFFFFB) > (a2 & 0xFFFFFFFB))
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }

    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = -1;
    }

    if (v2)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }

    if (v2 == v3)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t WiFiNetworkIsSameSecurity(CFTypeRef cf, const void *a2)
{
  result = 0;
  if (cf && a2)
  {
    v5 = CFGetTypeID(cf);
    v6 = __kWiFiNetworkTypeID;
    if (!__kWiFiNetworkTypeID)
    {
      pthread_once(&__wifiNetworkTypeInit, __WiFiNetworkRegister);
      v6 = __kWiFiNetworkTypeID;
    }

    if (v5 != v6)
    {
      return 0;
    }

    v7 = CFGetTypeID(a2);
    v8 = __kWiFiNetworkTypeID;
    if (!__kWiFiNetworkTypeID)
    {
      pthread_once(&__wifiNetworkTypeInit, __WiFiNetworkRegister);
      v8 = __kWiFiNetworkTypeID;
    }

    if (v7 == v8)
    {
      WiFiNetworkIsSameSecurity_cold_1();
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WiFiNetworkCompareNoSecurity(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = __WiFiCompareSSIDorBSSID(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      return __WiFiCompareDictionaryValues(*(a1 + 16), *(a1 + 16), @"AP_MODE") != 0;
    }
  }

  return result;
}

uint64_t __WiFiCompareSSIDorBSSID(const void *a1, const void *a2)
{
  v3 = __WiFiCompareDictionaryValues(a1, a2, @"SSID_STR");
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      Value = CFDictionaryGetValue(a1, @"SSID_STR");
      if (Value)
      {
        if (!CFStringGetLength(Value))
        {
          return 0;
        }
      }
    }
  }

  return v4;
}

uint64_t WiFiNetworkCompareNetworksForHS20Equivalency(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return __WiFiHS20NetworksHaveSameDomain(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t __WiFiHS20NetworksHaveSameDomain(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2 || !WiFiNetworkIsHotspot20(a1) || !WiFiNetworkIsHotspot20(a2))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);

  return __WiFiCompareDictionaryValues(v5, v6, @"DomainName");
}

BOOL WiFiNetworkCompareSSIDOnly(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return __WiFiCompareDictionaryValues(*(a1 + 16), *(a2 + 16), @"SSID_STR") != 0;
    }
  }

  return result;
}

uint64_t WiFiNetworkComparePriority(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    result = 1;
  }

  else
  {
    result = v3;
  }

  if (a1 && a2)
  {
    IsLegacyHotspot = WiFiNetworkIsLegacyHotspot(a1);
    v7 = WiFiNetworkIsLegacyHotspot(a2);
    IsHotspot20 = WiFiNetworkIsHotspot20(a1);
    v9 = WiFiNetworkIsHotspot20(a2);
    if (IsLegacyHotspot || IsHotspot20 || v7 || v9)
    {
      if ((IsLegacyHotspot || IsHotspot20) && !v7 && !v9)
      {
        return 1;
      }

      if (!IsLegacyHotspot && !IsHotspot20 && (v7 || v9))
      {
        return -1;
      }

      if (IsLegacyHotspot && v9)
      {
        return 1;
      }

      if (IsHotspot20 && v7)
      {
        return -1;
      }

      if (IsHotspot20 && v9)
      {
        Property = WiFiNetworkGetProperty(a1, @"HS20HomeOperatorNetwork");
        v11 = *MEMORY[0x277CBED28];
        v12 = WiFiNetworkGetProperty(a2, @"HS20HomeOperatorNetwork");
        if (Property == v11 && v12 != v11)
        {
          return -1;
        }

        if (Property != v11 && v12 == v11)
        {
          return 1;
        }
      }
    }

    AuthFlags = __WiFiNetworkGetAuthFlags(*(a1 + 16));
    v14 = __WiFiNetworkGetAuthFlags(*(a2 + 16));
    v15 = WiFiNetworkCompareAuthFlags(AuthFlags, v14);
    if (v15 == 1)
    {
      return -1;
    }

    if (v15 == -1)
    {
      return 1;
    }

    else
    {
      valuePtr = 0;
      v16 = WiFiNetworkGetProperty(a1, @"Strength");
      if (v16)
      {
        CFNumberGetValue(v16, kCFNumberFloatType, &valuePtr + 4);
      }

      v17 = WiFiNetworkGetProperty(a2, @"Strength");
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberFloatType, &valuePtr);
        v18 = *&valuePtr;
      }

      else
      {
        v18 = 0.0;
      }

      if (*(&valuePtr + 1) > v18)
      {
        return -1;
      }

      return *(&valuePtr + 1) < v18;
    }
  }

  return result;
}

BOOL WiFiNetworkIsLegacyHotspot(uint64_t a1)
{
  if (WiFiNetworkGetProperty(a1, @"DomainName"))
  {
    return 0;
  }

  if (WiFiNetworkGetProperty(a1, @"IsHotspot") == *MEMORY[0x277CBED28])
  {
    return 1;
  }

  if (MEMORY[0x282215548])
  {
    v3 = *MEMORY[0x277CBED28];
    if (CFDictionaryGetValue(*(a1 + 16), *MEMORY[0x277CF7F28]) == v3)
    {
      return 1;
    }
  }

  if (__WiFiNetworkIsEAPWithType(a1, 18) || __WiFiNetworkIsEAPWithType(a1, 23))
  {
    return 1;
  }

  return WiFiNetworkIsPublicHotspot(a1) != 0;
}

__CFString *WiFiNetworkCopyShareablePassword(CFDictionaryRef *a1)
{
  if (WiFiNetworkGetShareMode(a1) < 2)
  {
    return 0;
  }

  v2 = WiFiNetworkCopyPassword(a1);
  if (v2 && !WiFiNetworkGetProperty(a1, @"RSN_IE"))
  {
    SSIDData = WiFiNetworkGetSSIDData(a1);
    v4 = WiFiSecurityCopyHashedWPAPassword(v2, SSIDData);
    CFRelease(v2);
    return v4;
  }

  return v2;
}

uint64_t WiFiNetworkGetShareMode(uint64_t a1)
{
  valuePtr = 3;
  Property = WiFiNetworkGetProperty(a1, @"ShareMode");
  if (Property)
  {
    CFNumberGetValue(Property, kCFNumberIntType, &valuePtr);
  }

  v3 = a1 && CFDictionaryContainsKey(*(a1 + 16), @"PayloadUUID");
  IsEAP = WiFiNetworkIsEAP(a1);
  IsWPAWPA2PSK = WiFiNetworkIsWPAWPA2PSK(a1);
  if (a1)
  {
    v6 = CFDictionaryGetValue(*(a1 + 16), @"WEP") == *MEMORY[0x277CBED28];
    v7 = __WiFiNetworkIsSAE(*(a1 + 16)) == 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  v8 = IsWPAWPA2PSK == 0 && v7;
  if (IsEAP)
  {
    v8 = 1;
  }

  if (((v3 || v6) | v8))
  {
    return 1;
  }

  else
  {
    return valuePtr;
  }
}

__CFString *WiFiNetworkCopyHashedWPAPassword(const void *a1, const __CFString *a2)
{
  SSIDData = WiFiNetworkGetSSIDData(a1);

  return WiFiSecurityCopyHashedWPAPassword(a2, SSIDData);
}

uint64_t WiFiNetworkCopyPasswordWithTimeout(CFDictionaryRef *a1, BOOL *a2, double a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "WiFiNetworkCopyPasswordWithTimeout";
    v14 = 2112;
    AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Copy password for Network/account %@", &v12, 0x16u);
  }

  if (!a1 || !CFDictionaryContainsKey(a1[2], @"PayloadUUID"))
  {
    goto LABEL_8;
  }

  v6 = WiFiNetworkGetAccountForNetwork(a1);
  Unlock = WiFiNetworkIsAllowedBeforeFirstUnlock(a1);
  result = WiFiSecurityCopyNonSyncablePasswordWithTimeout(v6, a2, Unlock, a3);
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = WiFiNetworkGetAccountForNetwork(a1);
      v12 = 136315394;
      v13 = "WiFiNetworkCopyPasswordWithTimeout";
      v14 = 2112;
      AccountForNetwork = v9;
      _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: No password is copied for profiled based network %@", &v12, 0x16u);
    }

LABEL_8:
    v10 = WiFiNetworkGetAccountForNetwork(a1);
    result = WiFiSecurityCopyPasswordWithTimeout(v10, a2, a3);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

const void *WiFiNetworkIsAllowedBeforeFirstUnlock(uint64_t a1)
{
  if (a1)
  {
    result = WiFiNetworkGetProperty(a1, @"networkIsAllowedBeforeFirstUnlock");
    if (result)
    {
      v3 = result;
      return (CFDictionaryContainsKey(*(a1 + 16), @"PayloadUUID") && v3 == *MEMORY[0x277CBED28]);
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return result;
}

BOOL WiFiNetworkSetPasswordWithTimeout(const void *a1, const __CFString *a2, BOOL *a3, double a4)
{
  AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);

  return WiFiSecuritySetPasswordWithTimeout(AccountForNetwork, a2, a3, a4);
}

CFStringRef WiFiNetworkCopyLegacyPassword(const void *a1)
{
  AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);

  return WiFiSecurityCopyLegacyPassword(AccountForNetwork);
}

CFStringRef WiFiNetworkCopyNonSyncablePassword(const void *a1)
{
  AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);

  return WiFiSecurityCopyNonSyncablePassword(AccountForNetwork);
}

uint64_t WiFiNetworkCopyNonSyncablePasswordWithTimeout(const void *a1, BOOL *a2, double a3)
{
  AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);
  Unlock = WiFiNetworkIsAllowedBeforeFirstUnlock(a1);

  return WiFiSecurityCopyNonSyncablePasswordWithTimeout(AccountForNetwork, a2, Unlock, a3);
}

BOOL WiFiNetworkSetPassword(const void *a1, const __CFString *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "WiFiNetworkSetPassword";
    v8 = 2112;
    v9 = AccountForNetwork;
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Set password for Network/account %@", &v6, 0x16u);
  }

  result = WiFiSecuritySetPassword(AccountForNetwork, a2);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL WiFiNetworkSetLegacyPassword(const void *a1, const __CFString *a2)
{
  AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);

  return WiFiSecuritySetLegacyPassword(AccountForNetwork, a2);
}

uint64_t WiFiNetworkRemovePassword(const void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "WiFiNetworkRemovePassword";
    v7 = 2112;
    AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Remove password for Network/account %@", &v5, 0x16u);
  }

  v2 = WiFiNetworkGetAccountForNetwork(a1);
  result = WiFiSecurityRemovePassword(v2);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiNetworkRemoveLegacyPassword(const void *a1)
{
  AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);

  return WiFiSecurityRemoveLegacyPassword(AccountForNetwork);
}

CFStringRef WiFiNetworkIsPasswordAvailable(CFDictionaryRef *a1)
{
  result = WiFiNetworkCopyPassword(a1);
  if (result)
  {
    CFRelease(result);
    return 1;
  }

  return result;
}

uint64_t WiFiNetworkIsPasswordAvailableForHS20Account(void *a1)
{
  if (!WiFiNetworkRequiresPassword(a1))
  {
    return 1;
  }

  result = __WiFiNetworkCopyPasswordForAccount(a1);
  if (result)
  {
LABEL_3:
    CFRelease(result);
    return 1;
  }

  SSID = WiFiNetworkGetSSID(a1);
  Property = WiFiNetworkGetProperty(a1, @"HS20AccountName");
  if (!SSID || Property && CFEqual(SSID, Property))
  {
    return 0;
  }

  result = WiFiNetworkCopyPassword(a1);
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t WiFiNetworkIsPasswordSyncing(const void *a1)
{
  AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);

  return WiFiSecurityIsPasswordSyncing(AccountForNetwork);
}

void WiFiNetworkSetState(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = MEMORY[0x277CBED28];
    v5 = *(a1 + 16);
    if (!a2)
    {
      v4 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v5, @"enabled", *v4);
    if (a2)
    {
      WiFiNetworkSetDisabledUntilDate(a1, 0);
      CFDictionaryRemoveValue(*(a1 + 16), @"networkDisabledTimestamp");
      CFDictionaryRemoveValue(*(a1 + 16), @"networkDisabledReason");
      CFDictionaryRemoveValue(*(a1 + 16), @"networkDisabledClientName");
      v6 = *(a1 + 16);
      v7 = @"prevJoined";
    }

    else
    {
      v6 = *(a1 + 16);
      v7 = @"WiFiNetworkUserAcceptedRecommendationAt";
    }

    CFDictionaryRemoveValue(v6, v7);
  }
}

void WiFiNetworkSetDisabledUntilDate(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    if (!a2)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      a1 = v3;
      v2 = 0;
    }

    WiFiNetworkSetProperty(a1, @"WiFiNetworkDisabledUntilDate", v2);
  }
}

void WiFiNetworkSetStateWithReason(CFMutableDictionaryRef *a1, int a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          WiFiNetworkSetStateWithReason_cold_1(a1, a2, a3);
        }

        IsEnabled = WiFiNetworkIsEnabled(a1);
        if (!a2 && IsEnabled)
        {
          WiFiNetworkSetProperty(a1, @"networkDisabledReason", a3);
          v8 = *MEMORY[0x277CBECE8];
          Current = CFAbsoluteTimeGetCurrent();
          v10 = CFDateCreate(v8, Current);
          if (v10)
          {
            v11 = v10;
            CFDictionarySetValue(a1[2], @"networkDisabledTimestamp", v10);
            CFRelease(v11);
          }
        }
      }
    }
  }

  WiFiNetworkSetState(a1, a2);
}

void WiFiNetworkSetAssociationDate(uint64_t a1, int a2, const void *a3)
{
  LastAssociationDate = WiFiNetworkGetLastAssociationDate(a1);
  if (LastAssociationDate)
  {
    WiFiNetworkSetProperty(a1, @"prevJoined", LastAssociationDate);
  }

  if (a2)
  {
    v7 = @"lastJoined";
  }

  else
  {
    v7 = @"lastAutoJoined";
  }

  WiFiNetworkSetProperty(a1, v7, a3);
}

unint64_t WiFiNetworkGetLastAssociationDate(uint64_t a1)
{
  Property = WiFiNetworkGetProperty(a1, @"lastJoined");
  result = WiFiNetworkGetProperty(a1, @"lastAutoJoined");
  if (Property | result)
  {
    v4 = result;
    if (!result)
    {
      result = Property;
    }

    if (Property && v4)
    {
      if (CFDateCompare(Property, v4, 0) == kCFCompareGreaterThan)
      {
        return Property;
      }

      else
      {
        return v4;
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

const void *WiFiNetworkGetAssociationDate(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = @"lastJoined";
  }

  else
  {
    v2 = @"lastAutoJoined";
  }

  return WiFiNetworkGetProperty(a1, v2);
}

double WiFiNetworkGetTimeIntervalSinceLastAssociation(uint64_t a1)
{
  LastAssociationDate = WiFiNetworkGetLastAssociationDate(a1);
  Property = WiFiNetworkGetProperty(a1, @"prevJoined");
  if (LastAssociationDate && Property)
  {

    return CFDateGetTimeIntervalSinceDate(LastAssociationDate, Property);
  }

  else
  {
    result = -1.0;
    if (LastAssociationDate)
    {
      return 0.0;
    }
  }

  return result;
}

double WiFiNetworkGetNetworkUsage(uint64_t a1)
{
  Property = WiFiNetworkGetProperty(a1, @"networkUsage");

  return _CFTypeGetFloatValue(Property);
}

const void *WiFiNetworkGetChannelFlags(uint64_t a1)
{
  if (a1)
  {

    return WiFiNetworkGetProperty(a1, @"CHANNEL_FLAGS");
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

uint64_t WiFiNetworkGetChannelWidthInMHz(uint64_t a1)
{
  valuePtr = 0;
  if (a1 && (Property = WiFiNetworkGetProperty(a1, @"CHANNEL_WIDTH")) != 0)
  {
    CFNumberGetValue(Property, kCFNumberSInt16Type, &valuePtr);
    return valuePtr;
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

void WiFiNetworkPrepareKnownBssList(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Current = CFAbsoluteTimeGetCurrent();
  v4 = CFDateCreate(v2, Current);
  v5 = v4;
  if (!a1 || !v4)
  {
    goto LABEL_45;
  }

  Property = WiFiNetworkGetProperty(a1, @"CHANNEL");
  if (Property)
  {
    v7 = Property;
    v8 = WiFiNetworkGetProperty(a1, @"CHANNEL_FLAGS");
    if (v8)
    {
      v9 = v8;
      v10 = WiFiNetworkGetProperty(a1, @"BSSID");
      if (v10)
      {
        v11 = v10;
        theArray = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
        if (theArray)
        {
          v12 = WiFiNetworkGetProperty(a1, @"networkKnownBSSListKey");
          v36 = a1;
          if (!v12)
          {
            goto LABEL_20;
          }

          v13 = v12;
          if (CFArrayGetCount(v12) < 1)
          {
            v14 = 0;
          }

          else
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
                  if (CFEqual(Value, v11))
                  {
                    v14 = v17;
                  }

                  else
                  {
                    CFArrayAppendValue(theArray, v17);
                  }
                }
              }

              ++v15;
            }

            while (v15 < CFArrayGetCount(v13));
          }

          a1 = v36;
          if (v14)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, v14);
          }

          else
          {
LABEL_20:
            MutableCopy = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          }

          v20 = MutableCopy;
          if (MutableCopy)
          {
            CFDictionarySetValue(MutableCopy, @"BSSID", v11);
            CFDictionarySetValue(v20, @"CHANNEL", v7);
            CFDictionarySetValue(v20, @"CHANNEL_FLAGS", v9);
            CFDictionarySetValue(v20, @"lastRoamed", v5);
            v21 = WiFiNetworkGetProperty(a1, @"CHANNEL_FLAGS");
            if (v21)
            {
              valuePtr = 0;
              CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
              if ((valuePtr & 0x2000) != 0)
              {
                v22 = WiFiNetworkGetProperty(a1, @"ORIG_RNR_CHANNEL_LIST");
                if (v22)
                {
                  v23 = v22;
                  if (CFArrayGetCount(v22) >= 1)
                  {
                    v35 = v5;
                    v24 = 0;
                    v25 = 0;
                    v26 = 0;
                    v27 = 0;
                    v28 = 0;
                    while (!v25 || !v27)
                    {
                      v29 = CFArrayGetValueAtIndex(v23, v24);
                      if (v29)
                      {
                        v30 = v29;
                        v31 = CFDictionaryGetValue(v29, @"CHANNEL");
                        v32 = CFDictionaryGetValue(v30, @"CHANNEL_FLAGS");
                        if (v31)
                        {
                          v33 = v32;
                          if (v32)
                          {
                            v38 = 0;
                            CFNumberGetValue(v32, kCFNumberSInt32Type, &v38);
                            if ((v38 & 8) != 0)
                            {
                              v26 = v33;
                              v25 = v31;
                            }

                            else if ((v38 & 0x10) != 0)
                            {
                              v28 = v33;
                              v27 = v31;
                            }
                          }
                        }
                      }

                      if (CFArrayGetCount(v23) <= ++v24)
                      {
                        if (!v27)
                        {
                          goto LABEL_39;
                        }

                        break;
                      }
                    }

                    CFDictionarySetValue(v20, @"colocated5GHzRNRChannel", v27);
                    CFDictionarySetValue(v20, @"colocated5GHzRNRChannelFlags", v28);
LABEL_39:
                    v5 = v35;
                    a1 = v36;
                    if (v25)
                    {
                      CFDictionarySetValue(v20, @"colocated2GHzRNRChannel", v25);
                      CFDictionarySetValue(v20, @"colocated2GHzRNRChannelFlags", v26);
                    }
                  }
                }
              }
            }

            v34 = WiFiNetworkGetProperty(a1, @"LEAKY_AP_LEARNED_DATA");
            if (v34)
            {
              CFDictionarySetValue(v20, @"LEAKY_AP_LEARNED_DATA", v34);
              WiFiNetworkSetProperty(a1, @"LEAKY_AP_LEARNED_DATA", 0);
              objc_autoreleasePoolPop(objc_autoreleasePoolPush());
            }

            CFArrayAppendValue(theArray, v20);
            WiFiNetworkSetProperty(a1, @"networkKnownBSSListKey", theArray);
            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
            CFRelease(theArray);
          }

          else
          {
            v20 = theArray;
          }

          CFRelease(v20);
LABEL_45:
          if (!v5)
          {
            return;
          }
        }
      }
    }
  }

  CFRelease(v5);
}

uint64_t WiFiNetworkSortNetworksByUsageTime(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    result = 1;
  }

  else
  {
    result = v3;
  }

  if (a1 && a2)
  {
    Property = WiFiNetworkGetProperty(a1, @"networkUsage");
    FloatValue = _CFTypeGetFloatValue(Property);
    v8 = WiFiNetworkGetProperty(a2, @"networkUsage");
    v9 = _CFTypeGetFloatValue(v8);
    if (FloatValue >= v9)
    {
      if (FloatValue <= v9)
      {

        return WiFiNetworkSortNetworksByLastUsedDate(a1, a2);
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t WiFiNetworkSortNetworksByLastUsedDate(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    result = 1;
  }

  else
  {
    result = v3;
  }

  if (a1 && a2)
  {
    Property = WiFiNetworkGetProperty(a1, @"lastAutoJoined");
    v7 = WiFiNetworkGetProperty(a1, @"lastJoined");
    v8 = v7;
    if (Property && v7)
    {
      v9 = CFDateCompare(Property, v7, 0);
      if (v9 == kCFCompareGreaterThan)
      {
        v10 = Property;
      }

      else
      {
        v10 = 0;
      }

      if (v9 == kCFCompareEqualTo)
      {
        v10 = v8;
      }

      if (v9 == kCFCompareLessThan)
      {
        Property = v8;
      }

      else
      {
        Property = v10;
      }
    }

    else if (!Property)
    {
      Property = v7;
    }

    v11 = WiFiNetworkGetProperty(a2, @"lastAutoJoined");
    v12 = WiFiNetworkGetProperty(a2, @"lastJoined");
    v13 = v12;
    if (v11 && v12)
    {
      v14 = CFDateCompare(v11, v12, 0);
      if (v14 != kCFCompareLessThan)
      {
        if (v14)
        {
          v13 = v11;
          if (v14 != kCFCompareGreaterThan)
          {
            v15 = 0;
            v16 = Property != 0;
LABEL_34:
            if (v16)
            {
              return -1;
            }

            else
            {
              return v15;
            }
          }
        }
      }
    }

    else if (v11)
    {
      v13 = v11;
    }

    v16 = Property != 0;
    v15 = v13 != 0;
    if (!Property || !v13)
    {
      goto LABEL_34;
    }

    v17 = CFDateCompare(Property, v13, 0);
    if (v17 == kCFCompareGreaterThan)
    {
      return -1;
    }

    else
    {
      return v17 == kCFCompareLessThan;
    }
  }

  return result;
}

BOOL WiFiNetworkSortNetworksBySignalStrength(uint64_t a1, uint64_t a2)
{
  valuePtr = 0;
  if (a1 | a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v2 = 1;
  }

  if (a1 && a2)
  {
    Property = WiFiNetworkGetProperty(a1, @"Strength");
    if (Property)
    {
      CFNumberGetValue(Property, kCFNumberFloatType, &valuePtr + 4);
    }

    v5 = WiFiNetworkGetProperty(a2, @"Strength");
    if (v5)
    {
      CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr);
      v6 = *&valuePtr;
    }

    else
    {
      v6 = 0.0;
    }

    v2 = -1;
    if (*(&valuePtr + 1) <= v6)
    {
      return *(&valuePtr + 1) < v6;
    }
  }

  return v2;
}

uint64_t WiFiNetworkCompareHomeState(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  if (a1)
  {
    ForcedHomeFix = WiFiNetworkGetForcedHomeFix(a1);
    if (ForcedHomeFix == 1)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    NetworkOfInterestHomeType = WiFiNetworkGetNetworkOfInterestHomeType(a1);
    if (NetworkOfInterestHomeType == 1)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = CFDictionaryContainsKey(*(a1 + 16), @"PayloadUUID") != 0;
    Property = WiFiNetworkGetProperty(a1, @"addedAt");
    if (!a2)
    {
      result = -1;
      if (ForcedHomeFix != 1 && NetworkOfInterestHomeType != 1)
      {
        return 0;
      }

      return result;
    }

    v11 = Property;
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v9 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
  }

  v12 = WiFiNetworkGetForcedHomeFix(a2);
  if (v12 == 1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  v30 = v9;
  v13 = WiFiNetworkGetNetworkOfInterestHomeType(a2);
  if (v13 == 1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  v14 = CFDictionaryContainsKey(*(a2 + 16), @"PayloadUUID");
  v15 = WiFiNetworkGetProperty(a2, @"addedAt");
  if (a1 && a2)
  {
    v16 = v15;
    if (v8 && v12 == 1)
    {
      v17 = WiFiNetworkGetProperty(a1, @"kWiFiNetworkLastHomeForceFixDateKey");
      v16 = WiFiNetworkGetProperty(a2, @"kWiFiNetworkLastHomeForceFixDateKey");
      v18 = v17;
LABEL_19:
      v19 = CFDateCompare(v18, v16, 0);
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v20 = v19 == kCFCompareLessThan;
      goto LABEL_51;
    }

    if (v8 && v14 || v10 && v12 == 1)
    {
      if (v8)
      {
        v23 = a1;
      }

      else
      {
        v23 = a2;
      }

      v24 = WiFiNetworkGetProperty(v23, @"kWiFiNetworkLastHomeForceFixDateKey");
      if (v10)
      {
        v25 = a1;
      }

      else
      {
        v25 = a2;
      }

      v26 = WiFiNetworkGetProperty(v25, @"addedAt");
      v27 = CFDateCompare(v24, v26, 0);
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      if (v27 == kCFCompareLessThan)
      {
        v20 = v8 == 0;
        v28 = -1;
LABEL_52:
        if (v20)
        {
          return v28;
        }

        else
        {
          return -v28;
        }
      }

      v20 = v8 == 0;
LABEL_51:
      v28 = 1;
      goto LABEL_52;
    }

    v29 = v12 == 1;
    if (!v8)
    {
      v29 = 1;
    }

    if (!v29)
    {
LABEL_59:
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      return -1;
    }

    if (v8 == 1 || v12 != 1)
    {
      if (v10 && !v14)
      {
        goto LABEL_59;
      }

      if (v10 || !v14)
      {
        if (v10 && v14)
        {
          if (v11)
          {
            if (v15)
            {
              v18 = v11;
              goto LABEL_19;
            }

            goto LABEL_59;
          }
        }

        else
        {
          if (v30 && v13 != 1)
          {
            goto LABEL_59;
          }

          if (v30 == 1 || v13 != 1)
          {
            if (a3)
            {
              *a3 = v30;
            }

            return 0;
          }
        }
      }
    }

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 1;
  }

  if (v8 == 1)
  {
    result = -1;
  }

  else
  {
    result = 1;
  }

  if (v8 != 1 && v12 != 1)
  {
    result = v30 ? -1 : 1;
    if (v30 != 1 && v13 != 1)
    {
      return 0;
    }
  }

  return result;
}

const void *WiFiNetworkGetLastHomeForceFixDate(uint64_t a1)
{
  if (a1)
  {

    return WiFiNetworkGetProperty(a1, @"kWiFiNetworkLastHomeForceFixDateKey");
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

void WiFiNetworkSetProvisionedHS20Network(uint64_t a1, int a2)
{
  v2 = MEMORY[0x277CBED28];
  if (!a2)
  {
    v2 = MEMORY[0x277CBED10];
  }

  WiFiNetworkSetProperty(a1, @"HS20ProvisionedNetwork", *v2);
}

void WiFiNetworkSetHS20HomeOperatorNetwork(uint64_t a1, int a2)
{
  v2 = MEMORY[0x277CBED28];
  if (!a2)
  {
    v2 = MEMORY[0x277CBED10];
  }

  WiFiNetworkSetProperty(a1, @"HS20HomeOperatorNetwork", *v2);
}

const void *WiFiNetworkGetHS2NetworkBadge(uint64_t a1)
{
  result = WiFiNetworkGetProperty(a1, @"HS2NetworkBadge");
  if (!result)
  {

    return WiFiNetworkGetHS20OperatorFriendlyName(a1);
  }

  return result;
}

void WiFiNetworkSetGasResponse(uint64_t a1, const void *a2)
{
  if (WiFiNetworkGetProperty(a1, @"HS20GasResponse"))
  {
    WiFiNetworkSetProperty(a1, @"HS20GasResponse", 0);
  }

  WiFiNetworkSetProperty(a1, @"HS20GasResponse", a2);
}

const void *WiFiNetworkGetPasswordModificationDate(uint64_t a1)
{
  if (a1)
  {

    return WiFiNetworkGetProperty(a1, @"WiFiNetworkPasswordModificationDate");
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

CFTypeRef WiFiNetworkCopyKeychainModDate(const void *a1)
{
  if (a1)
  {
    AccountForNetwork = WiFiNetworkGetAccountForNetwork(a1);

    return WiFiSecurityCopyPasswordModificationDate(AccountForNetwork);
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

const __CFDictionary *WiFiNetworkIsFullyQualifiedCarPlayNetwork(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"APPLE_DEVICE_IE");
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_CARPLAY");
    return (Value && Value == *MEMORY[0x277CBED28]);
  }

  return result;
}

uint64_t WiFiNetworkIsCarPlay(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 16)) != 0)
  {
    Value = CFDictionaryGetValue(v2, @"APPLE_DEVICE_IE");
    v4 = MEMORY[0x277CBED28];
    if (Value)
    {
      v5 = CFDictionaryGetValue(Value, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_CARPLAY");
      if (v5)
      {
        v6 = v5 == *v4;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = CFDictionaryGetValue(*(a1 + 16), @"CARPLAY_NETWORK");
    if (v8)
    {
      if (CFEqual(v8, *v4))
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return v7;
}

BOOL WiFiNetworkIs24GHzNetwork(uint64_t a1)
{
  Property = WiFiNetworkGetProperty(a1, @"CHANNEL");
  v6 = -1431655766;
  v3 = WiFiNetworkGetProperty(a1, @"CHANNEL_FLAGS");
  if (v3)
  {
    valuePtr = 0;
    CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
    return (valuePtr >> 3) & 1;
  }

  else
  {
    CFNumberGetValue(Property, kCFNumberSInt32Type, &v6);
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return (v6 - 1) < 0xE;
  }
}

uint64_t WiFiNetworkGetType(uint64_t a1)
{
  Property = WiFiNetworkGetProperty(a1, @"CARPLAY_NETWORK");
  if (Property && CFEqual(Property, *MEMORY[0x277CBED28]))
  {
    if (WiFiNetworkGetProperty(a1, @"lastJoined") || a1 && CFDictionaryContainsKey(*(a1 + 16), @"PayloadUUID"))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  if (WiFiNetworkIsHotspot20(a1))
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void WiFiNetworkRemoveCarPlaySettings(uint64_t a1)
{
  WiFiNetworkSetProperty(a1, @"CARPLAY_NETWORK", 0);

  WiFiNetworkSetProperty(a1, @"CARPLAY_UUID", 0);
}

const void *WiFiNetworkCopyLeakyStatus(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    goto LABEL_18;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  Property = WiFiNetworkGetProperty(a1, @"BSSID");
  if (!Property)
  {
    goto LABEL_18;
  }

  if (CFStringCompare(a2, Property, 0) == kCFCompareEqualTo)
  {
    result = WiFiNetworkGetProperty(a1, @"LEAKY_AP_LEARNED_DATA");
    if (!result)
    {
      return result;
    }

    goto LABEL_14;
  }

  v5 = WiFiNetworkGetProperty(a1, @"networkKnownBSSListKey");
  if (!v5 || (v6 = v5, (Count = CFArrayGetCount(v5)) == 0))
  {
LABEL_18:
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  v8 = Count;
  if (Count < 1)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    if (ValueAtIndex)
    {
      v11 = ValueAtIndex;
      Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
      if (CFStringCompare(a2, Value, 0) == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  result = CFDictionaryGetValue(v11, @"LEAKY_AP_LEARNED_DATA");
  if (result)
  {
LABEL_14:
    Apple80211CopyLeakyAPStatus();
    return 0;
  }

  return result;
}

BOOL WiFiNetworkIsAPLeaky(uint64_t a1, const __CFString *a2)
{
  v2 = WiFiNetworkCopyLeakyStatus(a1, a2);
  if (v2)
  {
    v3 = v2;
    valuePtr = -86;
    CFNumberGetValue(v2, kCFNumberSInt8Type, &valuePtr);
    v4 = valuePtr == 2;
    CFRelease(v3);
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return v4;
}

uint64_t WiFiNetworkIsInSaveDataMode(uint64_t a1)
{
  valuePtr = 0;
  Property = WiFiNetworkGetProperty(a1, @"SaveDataMode");
  if (Property)
  {
    CFNumberGetValue(Property, kCFNumberSInt32Type, &valuePtr);
    v3 = valuePtr == 1;
    if (valuePtr)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  if (WiFiNetworkIsApplePersonalHotspot(a1) || WiFiNetworkFoundNanIe(a1) || WiFiNetworkIsCarPlay(a1))
  {
    return 1;
  }

  return v3;
}

const __CFNumber *WiFiNetworkGetSaveDataMode(uint64_t a1)
{
  valuePtr = 0;
  result = WiFiNetworkGetProperty(a1, @"SaveDataMode");
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

double WiFiNetworkGetNetworkQualityResponsiveness(uint64_t a1)
{
  valuePtr = 0.0;
  Property = WiFiNetworkGetProperty(a1, @"NetworkQualityResponsiveness");
  if (Property)
  {
    CFNumberGetValue(Property, kCFNumberDoubleType, &valuePtr);
  }

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  return valuePtr;
}

const void *WiFiNetworkGetNetworkQualityDate(uint64_t a1)
{
  Property = WiFiNetworkGetProperty(a1, @"NetworkQualityDate");
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  return Property;
}

void WiFiNetworkSetNetworkQuality(uint64_t a1, const void *a2, double a3)
{
  valuePtr = a3;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    WiFiNetworkSetProperty(a1, @"NetworkQualityResponsiveness", v5);
    WiFiNetworkSetProperty(a1, @"NetworkQualityDate", a2);
    CFRelease(v6);
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }
}

void WiFiNetworkAddBundleIdentifier(uint64_t a1, const void *a2)
{
  if (a1)
  {

    WiFiNetworkSetProperty(a1, @"BundleIdentifier", a2);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v3);
  }
}

const void *WiFiNetworkGetBundleIdentifier(uint64_t a1)
{
  if (a1)
  {

    return WiFiNetworkGetProperty(a1, @"BundleIdentifier");
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

void WiFiNetworkAddOriginator(uint64_t a1, unsigned int a2)
{
  if (a1)
  {

    WiFiNetworkSetIntProperty(a1, @"NetworkOriginator", a2);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v3);
  }
}

void WiFiNetworkSetOriginatorName(uint64_t a1, const void *a2)
{
  if (a1)
  {

    WiFiNetworkSetProperty(a1, @"NetworkOriginatorName", a2);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v3);
  }
}

const __CFNumber *WiFiNetworkGetOriginator(uint64_t a1)
{
  if (a1)
  {

    return WiFiNetworkGetCIntProperty(a1, @"NetworkOriginator");
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

uint64_t WiFiNetworkGetUserRole(uint64_t a1)
{
  v1 = 1;
  valuePtr = 1;
  Property = WiFiNetworkGetProperty(a1, @"UserRole");
  if (Property)
  {
    CFNumberGetValue(Property, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  return v1;
}

BOOL WiFiNetworkIsCarrierBundleBased(uint64_t a1)
{
  if (a1)
  {
    return WiFiNetworkGetCIntProperty(a1, @"NetworkOriginator") == 2;
  }

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  return 0;
}

const void *WiFiNetworkGetDisabledUntilDate(uint64_t a1)
{
  if (a1)
  {

    return WiFiNetworkGetProperty(a1, @"WiFiNetworkDisabledUntilDate");
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

BOOL WiFiNetworkCanExposeIMSI(uint64_t a1)
{
  if (a1)
  {
    WiFiNetworkCanExposeIMSI_cold_1(a1, &v2);
    return v2;
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

void WiFiNetworkRemoveInternalProperties(uint64_t a1)
{
  if (a1)
  {
    if (CFDictionaryContainsKey(*(a1 + 16), @"enabled"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"enabled");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"lastAutoJoined"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"lastAutoJoined");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"lastJoined"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"lastJoined");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"prevJoined"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"prevJoined");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"lastRoamed"))
    {
      v2 = *(a1 + 16);

      CFDictionaryRemoveValue(v2, @"lastRoamed");
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t WiFiNetworkArchiveToPath(uint64_t a1, void *a2)
{
  v9 = 0;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  v4 = [a2 stringByDeletingLastPathComponent];
  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0 && !objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v4, 0, 0, &v9))
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 16));
  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:Copy format:200 options:0 error:0];
  if (v6 && ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) != 0)
  {
    v7 = 1;
    if (!Copy)
    {
      return v7;
    }

    goto LABEL_8;
  }

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  v7 = 0;
  if (Copy)
  {
LABEL_8:
    CFRelease(Copy);
  }

  return v7;
}

uint64_t WiFiNetworkCreateFromPath(uint64_t a1)
{
  if (a1)
  {
    v1 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v1)
    {
      if (!WiFiNetworkCreateFromPath_cold_1(v1, &v3))
      {
        return v3;
      }
    }
  }

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  return 0;
}

void WiFiNetworkSetNetworkOfInterestWorkType(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    if ((a2 - 1) >= 2)
    {
      valuePtr = 0;
    }

    v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    WiFiNetworkSetProperty(a1, @"NetworkOfInterestWorkState", v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

const __CFNumber *WiFiNetworkGetNetworkOfInterestWorkType(uint64_t a1)
{
  valuePtr = 0;
  if (a1)
  {
    result = WiFiNetworkGetProperty(a1, @"NetworkOfInterestWorkState");
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

void WiFiNetworkSetNetworkOfInterestHomeType(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    if ((a2 - 1) >= 3)
    {
      valuePtr = 0;
    }

    v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    WiFiNetworkSetProperty(a1, @"NetworkOfInterestHomeState", v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

uint64_t WiFiNetworkGetLOIType(uint64_t a1)
{
  valuePtr = 0;
  if (!a1 || (Property = WiFiNetworkGetProperty(a1, @"NetworkAtLocationOfInterestType")) == 0 || !CFNumberGetValue(Property, kCFNumberSInt32Type, &valuePtr))
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return valuePtr;
}

void WiFiNetworkSetLOIType(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  if (v3)
  {
    WiFiNetworkSetProperty(a1, @"NetworkAtLocationOfInterestType", v3);
    CFRelease(v3);
  }
}

BOOL WiFiNetworkIsInternalNetwork(const void *a1)
{
  SSID = WiFiNetworkGetSSID(a1);
  if (__internalSSIDs)
  {
    v2 = SSID == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2 && CFSetContainsValue(__internalSSIDs, SSID);
}

void WiFiNetworkUpdateWPARSNAuthType(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = *MEMORY[0x277CBECE8];
  cf = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &valuePtr);
  if (!cf)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return;
  }

  v4 = CFArrayCreate(v3, &cf, 1, MEMORY[0x277CBF128]);
  if (!v4)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    goto LABEL_30;
  }

  v5 = v4;
  if ((valuePtr - 1) >= 2)
  {
    if (valuePtr != 8 && valuePtr != 12)
    {
      goto LABEL_29;
    }

    Property = WiFiNetworkGetProperty(a1, @"RSN_IE");
    if (Property)
    {
      v7 = Property;
      MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, Property);
      if (MutableCopy)
      {
        v9 = MutableCopy;
        Value = CFDictionaryGetValue(v7, @"IE_KEY_RSN_AUTHSELS");
        if (Value && CFArrayGetCount(Value) < 2)
        {
          goto LABEL_27;
        }

        CFDictionaryReplaceValue(v9, @"IE_KEY_RSN_AUTHSELS", v5);
        v11 = @"RSN_IE";
LABEL_26:
        WiFiNetworkSetProperty(a1, v11, v9);
LABEL_27:
        CFRelease(v9);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

LABEL_28:
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    goto LABEL_29;
  }

  v12 = WiFiNetworkGetProperty(a1, @"RSN_IE");
  if (v12)
  {
    v13 = CFDictionaryCreateMutableCopy(v3, 0, v12);
    if (v13)
    {
      v14 = v13;
      v15 = CFDictionaryGetValue(v12, @"IE_KEY_RSN_AUTHSELS");
      if (!v15 || CFArrayGetCount(v15) >= 2)
      {
        CFDictionaryReplaceValue(v14, @"IE_KEY_RSN_AUTHSELS", v5);
        WiFiNetworkSetProperty(a1, @"RSN_IE", v14);
      }

      CFRelease(v14);
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  v16 = WiFiNetworkGetProperty(a1, @"WPA_IE");
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = v16;
  TypeID = CFDictionaryGetTypeID();
  if (!_CFValidateType(TypeID, v17))
  {
    goto LABEL_28;
  }

  v19 = CFDictionaryCreateMutableCopy(v3, 0, v17);
  if (v19)
  {
    v9 = v19;
    v20 = CFDictionaryGetValue(v12, @"IE_KEY_WPA_AUTHSELS");
    if (v20 && CFArrayGetCount(v20) < 2)
    {
      goto LABEL_27;
    }

    CFDictionaryReplaceValue(v9, @"IE_KEY_WPA_AUTHSELS", v5);
    v11 = @"WPA_IE";
    goto LABEL_26;
  }

LABEL_29:
  CFRelease(v5);
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t WiFiNetworkGetHarvestSSIDStatus(uint64_t a1)
{
  if (a1)
  {
    result = WiFiNetworkGetCIntProperty(a1, @"kWiFiNetworkSSIDHarvestStatusKey");
    if (!result)
    {
      Property = WiFiNetworkGetProperty(a1, @"WiFiNetworkAttributeHighPopularity");
      if (Property == *MEMORY[0x277CBED28])
      {
        if (WiFiNetworkGetProperty(a1, @"WiFiNetworkAttributeIsPublic") == Property)
        {
          return 3;
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
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 1;
  }

  return result;
}

void WiFiNetworkRemoveAutoJoinProperties(uint64_t a1)
{
  if (a1)
  {
    if (CFDictionaryContainsKey(*(a1 + 16), @"enabled"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"enabled");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"WiFiNetworkDisabledUntilDate"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"WiFiNetworkDisabledUntilDate");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"networkDisabledClientName"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"networkDisabledClientName");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"networkDisabledReason"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"networkDisabledReason");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"networkDisabledTimestamp"))
    {
      v2 = *(a1 + 16);

      CFDictionaryRemoveValue(v2, @"networkDisabledTimestamp");
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v3);
  }
}

void *WiFiNetworkCreateCoreWiFiNetworkProfile(CFDictionaryRef *a1)
{
  v126 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  if (!a1 || !getCWFNetworkProfileClass())
  {
    v94 = 0;
    goto LABEL_163;
  }

  v2 = objc_alloc_init(getCWFNetworkProfileClass());
  [v2 setSSID:WiFiNetworkGetSSIDData(a1)];
  WiFiNetworkIsHotspot20(a1);
  [v2 setSupportedSecurityTypes:0];
  IsWAPI = WiFiNetworkIsWAPI(a1);
  v4 = MEMORY[0x277CBED28];
  v94 = v2;
  if (!IsWAPI)
  {
    if (WiFiNetworkIsOWETransition(a1))
    {
      v8 = v2;
      v9 = 768;
    }

    else
    {
      if (!__WiFiNetworkIsOWEOnly(a1[2]))
      {
        if (CFDictionaryGetValue(a1[2], @"WEP") != *v4)
        {
          goto LABEL_14;
        }

        [v2 setSupportedSecurityTypes:{objc_msgSend(v2, "supportedSecurityTypes") | 1}];
        if (WiFiNetworkIsEAP(a1))
        {
          v86 = v2;
          v87 = 5;
        }

        else
        {
          Property = WiFiNetworkGetProperty(a1, @"WEP_AUTH_Flags");
          if (!Property)
          {
            goto LABEL_14;
          }

          v89 = Property;
          v90 = [Property intValue];
          [v89 intValue];
          v91 = [v89 intValue];
          if (v90)
          {
            if ((v91 & 4) == 0)
            {
              goto LABEL_14;
            }

            v86 = v94;
            v87 = 3;
          }

          else
          {
            if ((v91 & 4) == 0)
            {
              goto LABEL_14;
            }

            v86 = v94;
            v87 = 4;
          }
        }

        [v86 setWEPSubtype:v87];
        goto LABEL_14;
      }

      v9 = [v2 supportedSecurityTypes] | 0x100;
      v8 = v2;
    }

    [v8 setSupportedSecurityTypes:v9];
    goto LABEL_14;
  }

  [v2 setSupportedSecurityTypes:{objc_msgSend(v2, "supportedSecurityTypes") | 2}];
  v5 = [WiFiNetworkGetProperty(a1 @"WAPI")];
  if ((~v5 & 0xB) != 0)
  {
    if ((~v5 & 7) != 0)
    {
      goto LABEL_14;
    }

    v6 = v2;
    v7 = 1;
  }

  else
  {
    v6 = v2;
    v7 = 2;
  }

  [v6 setWAPISubtype:v7];
LABEL_14:
  v10 = WiFiNetworkGetProperty(a1, @"RSN_IE");
  if (v10)
  {
    v11 = [v10 objectForKey:@"IE_KEY_RSN_AUTHSELS"];
    if (([v11 containsObject:&unk_286BD2C30] & 1) != 0 || objc_msgSend(v11, "containsObject:", &unk_286BD2C48))
    {
      [v94 setSupportedSecurityTypes:{objc_msgSend(v94, "supportedSecurityTypes") | 0x80}];
    }

    if (([v11 containsObject:&unk_286BD2C60] & 1) != 0 || (objc_msgSend(v11, "containsObject:", &unk_286BD2C78) & 1) != 0 || (objc_msgSend(v11, "containsObject:", &unk_286BD2C90) & 1) != 0 || objc_msgSend(v11, "containsObject:", &unk_286BD2CA8))
    {
      [v94 setSupportedSecurityTypes:{objc_msgSend(v94, "supportedSecurityTypes") | 0x20}];
    }

    if (([v11 containsObject:&unk_286BD2CC0] & 1) != 0 || (objc_msgSend(v11, "containsObject:", &unk_286BD2CD8) & 1) != 0 || (objc_msgSend(v11, "containsObject:", &unk_286BD2CF0) & 1) != 0 || objc_msgSend(v11, "containsObject:", &unk_286BD2D08))
    {
      [v94 setSupportedSecurityTypes:{objc_msgSend(v94, "supportedSecurityTypes") | 0x40}];
      if (__WiFiNetworkSupportsWPA2(a1[2]))
      {
        [v94 setSupportedSecurityTypes:{objc_msgSend(v94, "supportedSecurityTypes") | 0x10}];
      }
    }

    if (([v11 containsObject:&unk_286BD2D20] & 1) != 0 || (objc_msgSend(v11, "containsObject:", &unk_286BD2D38) & 1) != 0 || objc_msgSend(v11, "containsObject:", &unk_286BD2D50))
    {
      [v94 setSupportedSecurityTypes:{objc_msgSend(v94, "supportedSecurityTypes") | 0x10}];
    }
  }

  v12 = WiFiNetworkGetProperty(a1, @"WPA_IE");
  if (v12)
  {
    v13 = [v12 objectForKey:@"IE_KEY_WPA_AUTHSELS"];
    if (([v13 containsObject:&unk_286BD2C60] & 1) != 0 || objc_msgSend(v13, "containsObject:", &unk_286BD2C78))
    {
      [v94 setSupportedSecurityTypes:{objc_msgSend(v94, "supportedSecurityTypes") | 8}];
    }

    if ([v13 containsObject:&unk_286BD2D20])
    {
      [v94 setSupportedSecurityTypes:{objc_msgSend(v94, "supportedSecurityTypes") | 4}];
    }
  }

  if (![v94 supportedSecurityTypes])
  {
    [v94 setSupportedSecurityTypes:512];
  }

  if (MEMORY[0x282215548])
  {
    v14 = [MEMORY[0x277CBEB38] dictionary];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7F28]), *MEMORY[0x277CF7F28]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7F50]), *MEMORY[0x277CF7F50]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7F80]), *MEMORY[0x277CF7F80]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7F90]), *MEMORY[0x277CF7F90]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7F60]), *MEMORY[0x277CF7F60]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7F78]), *MEMORY[0x277CF7F78]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7FC8]), *MEMORY[0x277CF7FC8]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7FA0]), *MEMORY[0x277CF7FA0]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7F18]), *MEMORY[0x277CF7F18]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7FC0]), *MEMORY[0x277CF7FC0]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF8010]), *MEMORY[0x277CF8010]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7F00]), *MEMORY[0x277CF7F00]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7F08]), *MEMORY[0x277CF7F08]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*MEMORY[0x277CF7F40]), *MEMORY[0x277CF7F40]}];
    [v14 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{@"DisabledByCaptiveReason", @"DisabledByCaptiveReason"}];
    if ([v14 count])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    [v94 setCaptiveProfile:v15];
  }

  if (WiFiNetworkGetDirectedState(a1))
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  [v94 setHiddenState:v16];
  v17 = WiFiNetworkGetProperty(a1, @"WasHiddenBefore");
  if (v17)
  {
    [v94 setWasHiddenBefore:v17];
  }

  if (WiFiNetworkGetShareMode(a1) == 2)
  {
    [v94 setPasswordSharingDisabled:1];
  }

  if (WiFiNetworkGetProperty(a1, @"PayloadUUID"))
  {
    [v94 setPayloadUUID:{WiFiNetworkGetProperty(a1, @"PayloadUUID"}];
  }

  if (WiFiNetworkGetProperty(a1, @"PayloadIdentifier"))
  {
    [v94 setPayloadIdentifier:{WiFiNetworkGetProperty(a1, @"PayloadIdentifier"}];
  }

  [v94 setAutoJoinDisabled:!WiFiNetworkIsEnabled(a1)];
  SaveDataMode = WiFiNetworkGetSaveDataMode(a1);
  if (SaveDataMode == 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2 * (SaveDataMode == 2);
  }

  [v94 setLowDataMode:v19];
  [v94 setBundleID:{WiFiNetworkGetProperty(a1, @"BundleIdentifier"}];
  [v94 setLastJoinedBySystemAt:{WiFiNetworkGetProperty(a1, @"lastAutoJoined"}];
  [v94 setLastJoinedByUserAt:{WiFiNetworkGetProperty(a1, @"lastJoined"}];
  v20 = [WiFiNetworkGetProperty(a1 @"WiFiManagerKnownNetworksEventType")];
  v21 = [WiFiNetworkGetProperty(a1 @"WiFiNetworkAttributeSource")];
  v22 = [WiFiNetworkGetProperty(a1 @"NetworkOriginator")];
  v23 = v22;
  if (v22 <= 1)
  {
    if (v22)
    {
      if (v22 != 1)
      {
        goto LABEL_69;
      }

      goto LABEL_66;
    }

    if ([v94 bundleID])
    {
      v24 = 14;
      goto LABEL_76;
    }

LABEL_69:
    v24 = 17;
    if (v23 == 3)
    {
      goto LABEL_76;
    }

    if (v21 == 1)
    {
      goto LABEL_76;
    }

    v24 = 21;
    if (v23 == 7 || v21 == 3)
    {
      goto LABEL_76;
    }

    if (v23 == 4)
    {
      v24 = 7;
      goto LABEL_76;
    }

    if (v20 == 30)
    {
      v24 = 22;
      goto LABEL_76;
    }

    if (v23 == 5)
    {
      v24 = 12;
      goto LABEL_76;
    }

    if ([v94 payloadUUID])
    {
LABEL_174:
      v24 = 9;
      goto LABEL_76;
    }

    v24 = 16;
    if (v20 == 14 || v21 == 2)
    {
      goto LABEL_76;
    }

    if (v20 <= 5)
    {
      switch(v20)
      {
        case 1:
          v24 = 5;
          goto LABEL_76;
        case 3:
          v24 = 8;
          goto LABEL_76;
        case 5:
          v24 = 13;
          goto LABEL_76;
      }
    }

    else if (v20 > 16)
    {
      if (v20 == 17)
      {
        goto LABEL_174;
      }

      if (v20 == 28)
      {
        v24 = 19;
        goto LABEL_76;
      }
    }

    else
    {
      if (v20 == 6)
      {
        v24 = 6;
        goto LABEL_76;
      }

      if (v20 == 11)
      {
        v24 = 11;
        goto LABEL_76;
      }
    }

    v24 = 0;
    goto LABEL_76;
  }

  if (v22 == 2)
  {
    v24 = 10;
    goto LABEL_76;
  }

  if (v22 != 6)
  {
    goto LABEL_69;
  }

LABEL_66:
  v24 = 15;
LABEL_76:
  [v94 setAddReason:v24];
  [v94 setAddedAt:{WiFiNetworkGetProperty(a1, @"addedAt"}];
  [v94 setUpdatedAt:{WiFiNetworkGetProperty(a1, @"lastUpdated"}];
  [v94 setEAPProfile:{objc_msgSend(WiFiNetworkGetProperty(a1, @"EnterpriseProfile", "objectForKeyedSubscript:", @"EAPClientConfiguration"}];
  [v94 setDomainName:{WiFiNetworkGetProperty(a1, @"DomainName"}];
  [v94 setDisplayedOperatorName:{WiFiNetworkGetProperty(a1, @"DisplayedOperatorName"}];
  [v94 setServiceProviderRoamingEnabled:{WiFiNetworkGetProperty(a1, @"SPRoaming"}];
  [v94 setCellularNetworkInfo:{WiFiNetworkGetProperty(a1, @"MCCandMNC"}];
  [v94 setNAIRealmNameList:{WiFiNetworkGetProperty(a1, @"NaiRealmName"}];
  [v94 setRoamingConsortiumList:{WiFiNetworkGetProperty(a1, @"RoamingConsortiumOIs"}];
  [v94 setUserPreferredNetworkNames:{WiFiNetworkGetProperty(a1, @"userPreferredNetworkNames"}];
  [v94 setUserPreferredPasspointDomains:{WiFiNetworkGetProperty(a1, @"userPreferredPasspointDomains"}];
  [v94 setNetworkGroupID:{WiFiNetworkGetProperty(a1, @"networkGroupID"}];
  [v94 setNetworkGroupPriority:{objc_msgSend(WiFiNetworkGetProperty(a1, @"networkGroupPriority", "unsignedIntegerValue")}];
  [v94 setLastDiscoveredAt:{WiFiNetworkGetProperty(a1, @"discoveredAt"}];
  v25 = WiFiNetworkGetProperty(a1, @"TransitionDisabledFlags");
  if (v25)
  {
    [v94 setTransitionDisabledFlags:{objc_msgSend(v25, "unsignedIntValue")}];
  }

  v26 = WiFiNetworkGetProperty(a1, @"Standalone");
  cf2 = *v4;
  [v94 setStandalone6G:v26 == *v4];
  v27 = WiFiNetworkGetProperty(a1, @"networkKnownBSSListKey");
  if (v27)
  {
    v28 = v27;
    if (CFArrayGetCount(v27))
    {
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      obj = v28;
      v98 = [(__CFArray *)v28 countByEnumeratingWithState:&v108 objects:v125 count:16];
      if (v98)
      {
        v99 = 0;
        v97 = *v109;
        v96 = *MEMORY[0x277D02A80];
        do
        {
          for (i = 0; i != v98; ++i)
          {
            if (*v109 != v97)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v108 + 1) + 8 * i);
            valuePtr = 0.0;
            p_valuePtr = &valuePtr;
            v119 = 0x3052000000;
            v120 = __Block_byref_object_copy_;
            v31 = getCWFBSSClass_softClass;
            v121 = __Block_byref_object_dispose_;
            v122 = getCWFBSSClass_softClass;
            if (!getCWFBSSClass_softClass)
            {
              v112 = MEMORY[0x277D85DD0];
              v113 = 3221225472;
              v114 = __getCWFBSSClass_block_invoke;
              v115 = &unk_27991A160;
              v116 = &valuePtr;
              __getCWFBSSClass_block_invoke(&v112);
              v31 = *(p_valuePtr + 40);
            }

            _Block_object_dispose(&valuePtr, 8);
            v32 = objc_alloc_init(v31);
            [v30 objectForKeyedSubscript:@"BSSID"];
            [v32 setBSSID:CWFCorrectEthernetAddressString()];
            v33 = [v30 objectForKeyedSubscript:@"CHANNEL"];
            v34 = [v30 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
            if (v33)
            {
              v35 = v34;
              if (v34)
              {
                v36 = objc_alloc_init(getCWFChannelClass());
                [v36 setChannel:{objc_msgSend(v33, "integerValue")}];
                [v36 setFlags:{objc_msgSend(v35, "unsignedIntValue")}];
                [v32 setChannel:v36];
              }
            }

            if ([v32 BSSID] && objc_msgSend(v32, "channel"))
            {
              [v32 setLastAssociatedAt:{objc_msgSend(v30, "objectForKeyedSubscript:", @"lastRoamed"}];
              v37 = [v30 objectForKeyedSubscript:@"networkLocnLat"];
              v38 = [v30 objectForKeyedSubscript:@"networkLocnLong"];
              v39 = [v30 objectForKeyedSubscript:@"networkLocnAccuracy"];
              v40 = [v30 objectForKeyedSubscript:@"networkLocnTimestamp"];
              if (v37)
              {
                if (v38)
                {
                  if (v39)
                  {
                    v41 = v40;
                    if (v40)
                    {
                      valuePtr = 0.0;
                      p_valuePtr = &valuePtr;
                      v119 = 0x3052000000;
                      v120 = __Block_byref_object_copy_;
                      v42 = getCLLocationClass_softClass;
                      v121 = __Block_byref_object_dispose_;
                      v122 = getCLLocationClass_softClass;
                      if (!getCLLocationClass_softClass)
                      {
                        v112 = MEMORY[0x277D85DD0];
                        v113 = 3221225472;
                        v114 = __getCLLocationClass_block_invoke;
                        v115 = &unk_27991A160;
                        v116 = &valuePtr;
                        __getCLLocationClass_block_invoke(&v112);
                        v42 = *(p_valuePtr + 40);
                      }

                      _Block_object_dispose(&valuePtr, 8);
                      v43 = [v42 alloc];
                      [v37 doubleValue];
                      v45 = v44;
                      [v38 doubleValue];
                      v47 = v46;
                      v112 = 0;
                      v113 = &v112;
                      v114 = 0x2020000000;
                      v48 = getCLLocationCoordinate2DMakeSymbolLoc_ptr;
                      v115 = getCLLocationCoordinate2DMakeSymbolLoc_ptr;
                      if (!getCLLocationCoordinate2DMakeSymbolLoc_ptr)
                      {
                        valuePtr = MEMORY[0x277D85DD0];
                        p_valuePtr = 3221225472;
                        v119 = __getCLLocationCoordinate2DMakeSymbolLoc_block_invoke;
                        v120 = &unk_27991A160;
                        v121 = &v112;
                        v49 = CoreLocationLibrary();
                        v50 = dlsym(v49, "CLLocationCoordinate2DMake");
                        *(*(v121 + 1) + 24) = v50;
                        getCLLocationCoordinate2DMakeSymbolLoc_ptr = *(*(v121 + 1) + 24);
                        v48 = *(v113 + 24);
                      }

                      _Block_object_dispose(&v112, 8);
                      if (!v48)
                      {
                        WiFiNetworkCreateCoreWiFiNetworkProfile_cold_1();
                      }

                      v51 = v48(v45, v47);
                      v53 = v52;
                      [v39 doubleValue];
                      [v32 setLocation:{objc_msgSend(v43, "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:timestamp:", v41, v51, v53, 0.0, v54, 0.0)}];
                    }
                  }
                }
              }

              v55 = [v30 objectForKeyedSubscript:@"colocated2GHzRNRChannel"];
              v56 = [v30 objectForKeyedSubscript:@"colocated2GHzRNRChannelFlags"];
              if (v55)
              {
                v57 = v56;
                if (v56)
                {
                  v58 = objc_alloc_init(getCWFChannelClass());
                  [v58 setChannel:{objc_msgSend(v55, "integerValue")}];
                  [v58 setFlags:{objc_msgSend(v57, "unsignedIntValue")}];
                  [v32 setColocated2GHzRNRChannel:v58];
                }
              }

              v59 = [v30 objectForKeyedSubscript:@"colocated5GHzRNRChannel"];
              v60 = [v30 objectForKeyedSubscript:@"colocated5GHzRNRChannelFlags"];
              if (v59)
              {
                v61 = v60;
                if (v60)
                {
                  v62 = objc_alloc_init(getCWFChannelClass());
                  [v62 setChannel:{objc_msgSend(v59, "integerValue")}];
                  [v62 setFlags:{objc_msgSend(v61, "unsignedIntValue")}];
                  [v32 setColocated5GHzRNRChannel:v62];
                }
              }

              [v32 setAWDLRealTimeModeTimestamp:{objc_msgSend(v30, "objectForKeyedSubscript:", @"AWDLRealTimeModeTimestamp"}];
              [v32 setIPv4NetworkSignature:{objc_msgSend(v30, "objectForKeyedSubscript:", @"IPv4NetworkSignature"}];
              [v32 setIPv6NetworkSignature:{objc_msgSend(v30, "objectForKeyedSubscript:", @"IPv6NetworkSignature"}];
              [v32 setDHCPServerID:{objc_msgSend(v30, "objectForKeyedSubscript:", @"DHCPServerID"}];
              [v32 setDHCPv6ServerID:{objc_msgSend(v30, "objectForKeyedSubscript:", @"DHCPv6ServerID"}];
              v63 = [MEMORY[0x277CBEB38] dictionary];
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              v64 = [MEMORY[0x277D02AF0] supportedOSSpecificKeys];
              v65 = [v64 countByEnumeratingWithState:&v104 objects:v124 count:16];
              if (v65)
              {
                v66 = *v105;
                do
                {
                  for (j = 0; j != v65; ++j)
                  {
                    if (*v105 != v66)
                    {
                      objc_enumerationMutation(v64);
                    }

                    [v63 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*(*(&v104 + 1) + 8 * j)), *(*(&v104 + 1) + 8 * j)}];
                  }

                  v65 = [v64 countByEnumeratingWithState:&v104 objects:v124 count:16];
                }

                while (v65);
              }

              if ([v63 count])
              {
                v68 = v63;
              }

              else
              {
                v68 = 0;
              }

              [v32 setOSSpecificAttributes:v68];
              [v32 setCoreWiFiSpecificAttributes:{objc_msgSend(v30, "objectForKeyedSubscript:", v96)}];
              v69 = v99;
              if (!v99)
              {
                v69 = [MEMORY[0x277CBEB58] set];
              }

              v99 = v69;
              [v69 addObject:v32];
            }
          }

          v98 = [(__CFArray *)obj countByEnumeratingWithState:&v108 objects:v125 count:16];
        }

        while (v98);
      }

      else
      {
        v99 = 0;
      }

      [v94 setBSSList:v99];
    }
  }

  [v94 setPrivacyProxyEnabled:WiFiNetworkGetPrivacyProxyEnabled(a1)];
  [v94 setPrivacyProxyBlockedReason:{WiFiNetworkGetProperty(a1, @"PrivacyProxyBlockedReason"}];
  if (WiFiNetworkGetProperty(a1, @"WiFiNetworkAttributeIsMoving"))
  {
    v70 = WiFiNetworkGetProperty(a1, @"WiFiNetworkAttributeIsMoving");
    if (CFEqual(v70, cf2))
    {
      v71 = 1;
    }

    else
    {
      v71 = 2;
    }
  }

  else
  {
    v71 = 0;
  }

  [v94 setMovingAttribute:v71];
  if (WiFiNetworkGetProperty(a1, @"WiFiNetworkAttributeIsPublic"))
  {
    v72 = WiFiNetworkGetProperty(a1, @"WiFiNetworkAttributeIsPublic");
    if (CFEqual(v72, cf2))
    {
      v73 = 1;
    }

    else
    {
      v73 = 2;
    }
  }

  else
  {
    v73 = 0;
  }

  [v94 setPublicAttribute:v73];
  [v94 setCarplayUUID:{WiFiNetworkGetProperty(a1, @"CARPLAY_UUID"}];
  [v94 setCarplayNetwork:WiFiNetworkIsCarPlay(a1) != 0];
  [v94 setPersonalHotspot:WiFiNetworkIsApplePersonalHotspot(a1) != 0];
  [v94 setNANServiceID:{WiFiNetworkGetProperty(a1, @"WiFiNetworkNANServiceID"}];
  [v94 setPublicAirPlayNetwork:WiFiNetworkIsPublicAirPlayNetwork(a1) != 0];
  [v94 setDNSHeuristicsFilteredNetwork:{WiFiNetworkGetProperty(a1, @"FilteredNetwork"}];
  [v94 setDNSHeuristicsFailureStateInfo:{WiFiNetworkGetProperty(a1, @"DNSFailures"}];
  if (WiFiNetworkGetNetworkOfInterestWorkType(a1) == 1)
  {
    v74 = 1;
  }

  else
  {
    v74 = 2 * (WiFiNetworkGetNetworkOfInterestWorkType(a1) == 2);
  }

  [v94 setNetworkOfInterestWorkState:v74];
  if (WiFiNetworkGetNetworkOfInterestHomeType(a1) == 1)
  {
    v75 = 1;
  }

  else if (WiFiNetworkGetNetworkOfInterestHomeType(a1) == 2)
  {
    v75 = 2;
  }

  else if (WiFiNetworkGetNetworkOfInterestHomeType(a1) == 3)
  {
    v75 = 3;
  }

  else
  {
    v75 = 0;
  }

  [v94 setNetworkOfInterestHomeState:v75];
  v76 = WiFiNetworkGetProperty(a1, @"WiFiNetworkExpirationDate");
  if (v76)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v76, kCFNumberDoubleType, &valuePtr);
    v77 = CFDateCreate(*MEMORY[0x277CBECE8], valuePtr);
    if (v77)
    {
      [v94 setExpirationDate:v77];
      CFRelease(v77);
    }
  }

  v78 = [MEMORY[0x277CBEB38] dictionary];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v79 = [MEMORY[0x277D02B30] supportedOSSpecificKeys];
  v80 = [v79 countByEnumeratingWithState:&v100 objects:v123 count:16];
  if (v80)
  {
    v81 = *v101;
    do
    {
      for (k = 0; k != v80; ++k)
      {
        if (*v101 != v81)
        {
          objc_enumerationMutation(v79);
        }

        [v78 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*(*(&v100 + 1) + 8 * k)), *(*(&v100 + 1) + 8 * k)}];
      }

      v80 = [v79 countByEnumeratingWithState:&v100 objects:v123 count:16];
    }

    while (v80);
  }

  if ([v78 count])
  {
    v83 = v78;
  }

  else
  {
    v83 = 0;
  }

  [v94 setOSSpecificAttributes:v83];
  [v94 setCoreWiFiSpecificAttributes:{WiFiNetworkGetProperty(a1, *MEMORY[0x277D02A80])}];
  if (WiFiNetworkIsAllowedBeforeFirstUnlock(a1))
  {
    if (CFDictionaryContainsKey(a1[2], @"PayloadUUID"))
    {
      [v94 setAllowedBeforeFirstUnlock:1];
    }

    else
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    }
  }

LABEL_163:
  objc_autoreleasePoolPop(context);
  v84 = *MEMORY[0x277D85DE8];
  return v94;
}

uint64_t getCWFNetworkProfileClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getCWFNetworkProfileClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getCWFNetworkProfileClass_softClass;
  if (!getCWFNetworkProfileClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getCWFNetworkProfileClass_block_invoke;
    v2[3] = &unk_27991A160;
    v2[4] = &v3;
    __getCWFNetworkProfileClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_25A129910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getCWFChannelClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getCWFChannelClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getCWFChannelClass_softClass;
  if (!getCWFChannelClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getCWFChannelClass_block_invoke;
    v2[3] = &unk_27991A160;
    v2[4] = &v3;
    __getCWFChannelClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_25A1299FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *WiFiNetworkGetPrivacyProxyBlockedReason(uint64_t a1)
{
  if (a1)
  {

    return WiFiNetworkGetProperty(a1, @"PrivacyProxyBlockedReason");
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

uint64_t WiFiNetworkCreateCoreWiFiScanResult(uint64_t a1)
{
  v36[82] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (getCWFScanResultClass() && (CWFScanResultPropertyOSSpecificAttributesKey = getCWFScanResultPropertyOSSpecificAttributesKey(), a1) && CWFScanResultPropertyOSSpecificAttributesKey && (Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 16))) != 0)
  {
    v5 = Copy;
    context = v2;
    v6 = [WiFiNetworkGetProperty(a1 @"HS20GasResponse")];
    [v6 setObject:0 forKeyedSubscript:@"ANQP_STATUS"];
    [v6 setObject:0 forKeyedSubscript:@"BSSID"];
    [v6 setObject:0 forKeyedSubscript:@"CHANNEL"];
    [v6 setObject:0 forKeyedSubscript:@"CHANNEL_FLAGS"];
    v7 = [(__CFDictionary *)v5 mutableCopy];
    [v7 setObject:v6 forKeyedSubscript:@"ANQP_PARSED"];
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [MEMORY[0x277D02B50] supportedOSSpecificKeys];
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        v13 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 setObject:WiFiNetworkGetProperty(a1 forKeyedSubscript:{*(*(&v29 + 1) + 8 * v13)), *(*(&v29 + 1) + 8 * v13)}];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    [v7 setObject:v14 forKeyedSubscript:getCWFScanResultPropertyOSSpecificAttributesKey()];
    v36[0] = @"IsWiFiNetworkShareble";
    v36[1] = @"NetworkOriginator";
    v36[2] = @"CaptiveBypass";
    v36[3] = @"DiagnosticsBssEnv";
    v36[4] = @"DisableWiFiAutoJoinUntilFirstUserJoin";
    v36[5] = @"DisplayedOperatorName";
    v36[6] = @"DomainName";
    v36[7] = @"HS20GasResponse";
    v36[8] = @"HS20HomeOperatorNetwork";
    v36[9] = @"HS20ProvisionedNetwork";
    v36[10] = @"HS2NetworkBadge";
    v36[11] = @"HS20AccountName";
    v36[12] = @"MCCandMNC";
    v36[13] = @"NaiRealmName";
    v36[14] = @"NetworkAtLocationOfInterestType";
    v36[15] = @"WiFiNetworkAttributeHighPopularity";
    v36[16] = @"WiFiNetworkAttributeHighQuality";
    v36[17] = @"WiFiNetworkAttributeIsMoving";
    v36[18] = @"WiFiNetworkAttributeIsPotentiallyCaptive";
    v36[19] = @"WiFiNetworkAttributeIsPotentiallyMoving";
    v36[20] = @"WiFiNetworkAttributeIsSuspicious";
    v36[21] = @"WiFiNetworkAttributeIsTCPGood";
    v36[22] = @"WiFiNetworkAttributeLowPopularity";
    v36[23] = @"WiFiNetworkAttributeLowQuality";
    v36[24] = @"WiFiNetworkAttributePopularityScore";
    v36[25] = @"WiFiNetworkAttributeProminentDisplay";
    v36[26] = @"WiFiNetworkAttributeQualityScore";
    v36[27] = @"WiFiNetworkAttributeSource";
    v36[28] = @"BundleIdentifier";
    v36[29] = @"SIMIdentifiers";
    v36[30] = @"WiFiNetworkDisabledUntilDate";
    v36[31] = @"EnterpriseProfile";
    v36[32] = @"WiFiNetworkExpirationDate";
    v36[33] = @"NetworkForcedHomeFix";
    v36[34] = @"kWiFiNetworkLastHomeForceFixDateKey";
    v36[35] = @"NetworkOfInterestHomeState";
    v36[36] = @"NetworkOfInterestWorkState";
    v36[37] = @"WiFiNetworkPasswordModificationDate";
    v36[38] = @"PayloadIdentifier";
    v36[39] = @"CarrierPayloadIdentifierTelemetryApproved";
    v36[40] = @"PayloadUUID";
    v36[41] = @"SaveDataMode";
    v36[42] = @"NetworkQualityResponsiveness";
    v36[43] = @"NetworkQualityDate";
    v36[44] = @"ShareableEAPConfig";
    v36[45] = @"ShareableEAPTrustExceptions";
    v36[46] = @"ShareableStatus";
    v36[47] = @"ShareMode";
    v36[48] = @"kWiFiNetworkSSIDHarvestStatusKey";
    v36[49] = @"UserRole";
    v36[50] = @"WalletIdentifier";
    v36[51] = @"addedAt";
    v36[52] = @"knownBSSUpdatedDate";
    v36[53] = @"lastAutoJoined";
    v36[54] = @"lastJoined";
    v36[55] = @"lastRoamed";
    v36[56] = @"lastUpdated";
    v36[57] = @"WiFiManagerKnownNetworksEventType";
    v36[58] = @"networkDisabledClientName";
    v36[59] = @"networkDisabledReason";
    v36[60] = @"networkDisabledTimestamp";
    v36[61] = @"enabled";
    v36[62] = @"networkKnownBSSListKey";
    v36[63] = @"scanWasDirected";
    v36[64] = @"prevJoined";
    v36[65] = @"UserDirected";
    v36[66] = @"WasHiddenBefore";
    v36[67] = @"networkUsage";
    v36[68] = @"RoamingConsortiumOIs";
    v36[69] = @"SPRoaming";
    v36[70] = @"PolicyUUID";
    v36[71] = @"PrivacyProxyEnabled";
    v36[72] = @"TransitionDisabledFlags";
    v36[73] = @"Standalone";
    v36[74] = @"PublicAirPlayNetwork";
    v36[75] = @"PrivacyProxyBlockedReason";
    v36[76] = @"FilteredNetwork";
    v36[77] = @"DNSFailures";
    v36[78] = @"lastTputMeasurementDate";
    v36[79] = @"lastTputMeasurementResults";
    v36[80] = @"WiFiNetworkTDOverrideCount";
    v36[81] = @"WiFiNetworkTDOverrideTimestamp";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:82];
    if (MEMORY[0x282215548])
    {
      v16 = *MEMORY[0x277CF7FC8];
      v35[0] = *MEMORY[0x277CF7F28];
      v35[1] = v16;
      v15 = [v15 arrayByAddingObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v35, 2)}];
    }

    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        v20 = 0;
        do
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v15);
          }

          [v7 setObject:0 forKeyedSubscript:*(*(&v25 + 1) + 8 * v20++)];
        }

        while (v18 != v20);
        v18 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }

    v21 = [objc_alloc(getCWFScanResultClass()) initWithScanRecord:v7 includeProperties:0];
    objc_autoreleasePoolPop(context);
    CFRelease(v5);
  }

  else
  {
    objc_autoreleasePoolPop(v2);
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t getCWFScanResultClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getCWFScanResultClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getCWFScanResultClass_softClass;
  if (!getCWFScanResultClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getCWFScanResultClass_block_invoke;
    v2[3] = &unk_27991A160;
    v2[4] = &v3;
    __getCWFScanResultClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_25A12A2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getCWFScanResultPropertyOSSpecificAttributesKey()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCWFScanResultPropertyOSSpecificAttributesKeySymbolLoc_ptr;
  v6 = getCWFScanResultPropertyOSSpecificAttributesKeySymbolLoc_ptr;
  if (!getCWFScanResultPropertyOSSpecificAttributesKeySymbolLoc_ptr)
  {
    v1 = CoreWiFiLibrary();
    v4[3] = dlsym(v1, "CWFScanResultPropertyOSSpecificAttributesKey");
    getCWFScanResultPropertyOSSpecificAttributesKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getCWFScanResultPropertyOSSpecificAttributesKey_cold_1();
  }

  return *v0;
}

void sub_25A12A3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WiFiNetworkCompareWithKnownNetwork(const void **a1, const void **a2)
{
  Property = WiFiNetworkGetProperty(a1, @"WiFiNetworkNANServiceID");
  v5 = WiFiNetworkGetProperty(a2, @"WiFiNetworkNANServiceID");
  if (Property)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && CFEqual(Property, v5))
  {
    return 1;
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  if (!__WiFiCompareSSIDorBSSID(a1[2], a2[2]))
  {
    if (!__WiFiIsSameHS20Account(a1, a2, 0))
    {
      HaveSameDomain = __WiFiHS20NetworksHaveSameDomain(a1, a2);
      return HaveSameDomain != 0;
    }

    return 1;
  }

  if (WiFiNetworkIsHotspot20(a1) && !WiFiNetworkIsHotspot20(a2) || !WiFiNetworkIsHotspot20(a1) && WiFiNetworkIsHotspot20(a2))
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  result = __WiFiCompareBGScanParams(a1[2], a2[2]);
  if (result)
  {
    HaveSameDomain = __WiFiCompareDictionaryValues(a1[2], a2[2], @"AP_MODE");
    return HaveSameDomain != 0;
  }

  return result;
}

uint64_t WiFiNetworkCreateFromCoreWiFiScanResult(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  CWFScanResultClass = getCWFScanResultClass();
  if (a1)
  {
    if (CWFScanResultClass)
    {
      getCWFScanResultClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [objc_msgSend(a1 "scanRecord")];
        if (v4)
        {
          if ((WiFiNetworkCreateFromCoreWiFiScanResult_cold_1(a1, v4, v2, &v6) & 1) == 0)
          {
            return v6;
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  return 0;
}

uint64_t WiFiNetworkPrivateMacNetworkType(CFDictionaryRef *a1)
{
  CoreWiFiNetworkProfile = WiFiNetworkCreateCoreWiFiNetworkProfile(a1);
  CoreWiFiScanResult = WiFiNetworkCreateCoreWiFiScanResult(a1);
  if ([CoreWiFiNetworkProfile isAllowedInLockdownMode])
  {
    v4 = [CoreWiFiScanResult isAllowedInLockdownMode] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [CoreWiFiNetworkProfile supportedSecurityTypes];
  if (CoreWiFiNetworkProfile)
  {
    CFRelease(CoreWiFiNetworkProfile);
  }

  if (CoreWiFiScanResult)
  {
    CFRelease(CoreWiFiScanResult);
  }

  v6 = WiFiNetworkIsCarPlay(a1) == 0;
  result = v6;
  v8 = !v6;
  if (((v8 | v4) & 1) == 0)
  {
    if (WiFiNetworkIsLegacyHotspot(a1) || WiFiNetworkIsHotspot20(a1) || WiFiNetworkIsHotspot(a1))
    {
      return 1;
    }

    else
    {
      WiFiNetworkPrivateMacNetworkType_cold_1(a1, v5, &v9);
      return v9;
    }
  }

  return result;
}

uint64_t WiFiNetworkGetAuthTypes(uint64_t a1, __int32 *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"RSN_IE");
    v6 = CFDictionaryGetValue(*(a1 + 16), @"WPA_IE");
    if (Value)
    {
      v7 = __WiFiNetworkContainsAuthSelector(Value, 2) != 0;
      v8 = __WiFiNetworkContainsAuthSelector(Value, 1);
      v9 = (8 * v7) | 4;
      if (!v8)
      {
        v9 = 8 * v7;
      }

      v35 = __PAIR64__(v9, v8 | (2 * v7));
      v34 = __WiFiNetworkContainsAuthSelector(Value, 3) == 0;
      v10 = __WiFiNetworkContainsAuthSelector(Value, 4) == 0;
      v11 = __WiFiNetworkContainsAuthSelector(Value, 5) == 0;
      v12 = __WiFiNetworkContainsAuthSelector(Value, 6) == 0;
      v13 = __WiFiNetworkContainsAuthSelector(Value, 8) == 0;
      v14 = __WiFiNetworkContainsAuthSelector(Value, 9) == 0;
      v15 = __WiFiNetworkContainsAuthSelector(Value, 24) == 0;
      v16 = __WiFiNetworkContainsAuthSelector(Value, 25) == 0;
      v17 = __WiFiNetworkContainsAuthSelector(Value, 12) == 0;
      v18 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v34), 0x1FuLL)), v35, vorr_s8(v35, 0x8000000004));
      v19 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v10), 0x1FuLL)), v18, vorr_s8(v18, 0x1000000008));
      v20 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v11), 0x1FuLL)), v19, vorr_s8(v19, 0x80000000010));
      v21 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v12), 0x1FuLL)), v20, vorr_s8(v20, 0x40000000020));
      v22 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v13), 0x1FuLL)), v21, vorr_s8(v21, 0x100000000080));
      v23 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v14), 0x1FuLL)), v22, vorr_s8(v22, 0x200000000100));
      v24 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v15), 0x1FuLL)), v23, vorr_s8(v23, 0x1000000800000));
      v25 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v16), 0x1FuLL)), v24, vorr_s8(v24, 0x2000001000000));
      v26 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v17), 0x1FuLL)), v25, vorr_s8(v25, 0x400000000800));
      v27 = __WiFiNetworkContainsAuthSelector(Value, 13);
      v28.i32[0] = 0;
      v29.i32[0] = v27;
      v30 = vbsl_s8(vdup_lane_s8(vceq_s8(v29, v28), 0), v26, vorr_s8(v26, 0x800000001000));
    }

    else
    {
      v30 = 0;
    }

    v31 = v30.i32[0];
    v32 = v30.u32[1];
    if (v6)
    {
      if (__WiFiNetworkContainsAuthSelector(v6, 2))
      {
        LODWORD(v32) = v32 | 2;
      }

      v32 = v32 | __WiFiNetworkContainsAuthSelector(v6, 1);
    }
  }

  else
  {
    v31 = 0;
    v32 = 0xFFFFLL;
  }

  if (a2)
  {
    *a2 = v31;
  }

  return v32;
}

const __CFArray *__WiFiNetworkContainsAuthSelector(const __CFDictionary *a1, int a2)
{
  result = CFDictionaryGetValue(a1, @"IE_KEY_RSN_AUTHSELS");
  if (result || (result = CFDictionaryGetValue(a1, @"IE_KEY_WPA_AUTHSELS")) != 0)
  {
    v5 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        valuePtr = -1431655766;
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr))
        {
          if (valuePtr == a2)
          {
            break;
          }
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

void WiFiNetworkAddSIMIdentifier(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    Property = WiFiNetworkGetProperty(a1, @"SIMIdentifiers");
    v5 = *MEMORY[0x277CBECE8];
    if (Property)
    {
      MutableCopy = CFArrayCreateMutableCopy(v5, 0, Property);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    }

    v8 = MutableCopy;
    v10.length = CFArrayGetCount(MutableCopy);
    v10.location = 0;
    if (CFArrayGetFirstIndexOfValue(v8, v10, a2) == -1)
    {
      CFArrayAppendValue(v8, a2);
    }

    WiFiNetworkSetProperty(a1, @"SIMIdentifiers", v8);
    if (v8)
    {

      CFRelease(v8);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v7);
  }
}

void WiFiNetworkRemoveSIMIdentifier(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    Property = WiFiNetworkGetProperty(a1, @"SIMIdentifiers");
    v5 = *MEMORY[0x277CBECE8];
    if (Property)
    {
      MutableCopy = CFArrayCreateMutableCopy(v5, 0, Property);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    }

    v8 = MutableCopy;
    v12.length = CFArrayGetCount(MutableCopy);
    v12.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v12, a2);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(v8, FirstIndexOfValue);
    }

    if (CFArrayGetCount(v8))
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    WiFiNetworkSetProperty(a1, @"SIMIdentifiers", v10);
    if (v8)
    {

      CFRelease(v8);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v7);
  }
}

void WiFiNetworkSetPrivacyProxyEnabled(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CBED28];
    if (!a2)
    {
      v3 = MEMORY[0x277CBED10];
    }

    v4 = *v3;

    WiFiNetworkSetProperty(a1, @"PrivacyProxyEnabled", v4);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

void WiFiNetworkSetPrivacyProxyBlockedReason(uint64_t a1, const void *a2)
{
  if (a1)
  {

    WiFiNetworkSetProperty(a1, @"PrivacyProxyBlockedReason", a2);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v3);
  }
}

BOOL WiFiNetworkIsPriorityNetwork(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Current = CFAbsoluteTimeGetCurrent();
  v4 = CFDateCreate(v2, Current);
  Property = WiFiNetworkGetProperty(a1, @"lastJoined");
  TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(v4, Property);
  if (WiFiNetworkGetNetworkOfInterestWorkType(a1) == 1 || WiFiNetworkGetNetworkOfInterestHomeType(a1) == 1 || (!MEMORY[0x282215548] || CFDictionaryGetValue(*(a1 + 16), *MEMORY[0x277CF7F28]) != *MEMORY[0x277CBED28]) && !WiFiNetworkGetProperty(a1, @"WiFiNetworkAttributeIsPublic") && !WiFiNetworkIsCarrierBundleBased(a1))
  {
    v7 = 1;
    if (!v4)
    {
      return v7;
    }

LABEL_4:
    CFRelease(v4);
    return v7;
  }

  v7 = TimeIntervalSinceDate < 86400.0 && TimeIntervalSinceDate > -1.0;
  if (v4)
  {
    goto LABEL_4;
  }

  return v7;
}

BOOL WiFiNetworkIsPriorityNetworkWrapper(uint64_t a1)
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  return WiFiNetworkIsPriorityNetwork(a1);
}

uint64_t WiFiNetworkIsPublicNetwork(CFDictionaryRef *a1)
{
  if (WiFiNetworkGetProperty(a1, @"WiFiNetworkAttributeIsPublic"))
  {
    return 1;
  }

  result = WiFiNetworkInterworkingIsOutdoorNetwork(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

void WiFiNetworkSetPublicAirPlayNetwork(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CBED28];
    if (!a2)
    {
      v3 = MEMORY[0x277CBED10];
    }

    v4 = *v3;

    WiFiNetworkSetProperty(a1, @"PublicAirPlayNetwork", v4);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v5);
  }
}

void *WiFiNetworkIs6EModeOff(uint64_t a1)
{
  if (a1)
  {
    result = WiFiNetworkGetProperty(a1, *MEMORY[0x277D02A80]);
    if (result)
    {
      return ([objc_msgSend(result objectForKey:{*MEMORY[0x277D02AA8]), "integerValue"}] == 2);
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return result;
}

void WiFiNetworkSetDisplayFriendlyName(uint64_t a1, const void *a2)
{
  if (a1)
  {

    WiFiNetworkSetProperty(a1, @"DisplayFriendlyName", a2);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v3);
  }
}

const void *WiFiNetworkGetDisplayFriendlyName(uint64_t a1)
{
  if (a1)
  {

    return WiFiNetworkGetProperty(a1, @"DisplayFriendlyName");
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

void WiFiNetworkSetAccessoryIdentifier(uint64_t a1, const void *a2)
{
  if (a1)
  {

    WiFiNetworkSetProperty(a1, @"AccessoryIdentifier", a2);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v3);
  }
}

const void *WiFiNetworkGetAccessoryIdentifier(uint64_t a1)
{
  if (a1)
  {

    return WiFiNetworkGetProperty(a1, @"AccessoryIdentifier");
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

BOOL __WiFiNetworkEqual(void *a1, void *a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1;
      v5 = CFGetTypeID(a1);
      v6 = __kWiFiNetworkTypeID;
      if (!__kWiFiNetworkTypeID)
      {
        pthread_once(&__wifiNetworkTypeInit, __WiFiNetworkRegister);
        v6 = __kWiFiNetworkTypeID;
      }

      if (v5 == v6)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      v8 = CFGetTypeID(v3);
      v9 = __kWiFiNetworkTypeID;
      if (!__kWiFiNetworkTypeID)
      {
        pthread_once(&__wifiNetworkTypeInit, __WiFiNetworkRegister);
        v9 = __kWiFiNetworkTypeID;
      }

      if (v8 == v9)
      {
        v10 = v3;
      }

      else
      {
        v10 = 0;
      }

      TypeID = CFDictionaryGetTypeID();
      if (TypeID != CFGetTypeID(v4))
      {
        v12 = __kWiFiNetworkTypeID;
        if (!__kWiFiNetworkTypeID)
        {
          pthread_once(&__wifiNetworkTypeInit, __WiFiNetworkRegister);
          v12 = __kWiFiNetworkTypeID;
        }

        if (v12 == CFGetTypeID(v4))
        {
          v4 = v4[2];
        }

        else
        {
          v4 = 0;
        }
      }

      v13 = CFDictionaryGetTypeID();
      if (v13 != CFGetTypeID(v3))
      {
        v14 = __kWiFiNetworkTypeID;
        if (!__kWiFiNetworkTypeID)
        {
          pthread_once(&__wifiNetworkTypeInit, __WiFiNetworkRegister);
          v14 = __kWiFiNetworkTypeID;
        }

        if (v14 != CFGetTypeID(v3))
        {
          return 0;
        }

        v3 = v3[2];
      }

      v2 = 0;
      if (v4)
      {
        if (v3)
        {
          if (__WiFiCompareSSIDorBSSID(v4, v3))
          {
            if (WiFiNetworkIsHotspot20(v7) && !WiFiNetworkIsHotspot20(v10) || !WiFiNetworkIsHotspot20(v7) && WiFiNetworkIsHotspot20(v10))
            {
              objc_autoreleasePoolPop(objc_autoreleasePoolPush());
              return 0;
            }

            if (!__WiFiCompareBGScanParams(v4, v3) || !__WiFiCompareDictionaryValues(v4, v3, @"AP_MODE"))
            {
              return 0;
            }

            AuthFlags = __WiFiNetworkGetAuthFlags(v4);
            v39 = __WiFiNetworkGetAuthFlags(v3);
            v41 = __WiFiNetworkIsSAE(v4) && !__WiFiNetworkSupportsWPA(v4) && __WiFiNetworkSupportsWPA2(v4) == 0;
            v20 = __WiFiNetworkIsSAE(v3) && !__WiFiNetworkSupportsWPA(v3) && __WiFiNetworkSupportsWPA2(v3) == 0;
            v37 = __WiFiNetworkIsOWEOnly(v4);
            v38 = __WiFiNetworkIsOWEOnly(v3);
            Value = CFDictionaryGetValue(v4, @"ALLOW_WPA2_PSK");
            v22 = CFDictionaryGetValue(v3, @"ALLOW_WPA2_PSK");
            v23 = CFDictionaryGetValue(v4, @"ALLOW_OWE_TSN");
            v35 = CFDictionaryGetValue(v3, @"ALLOW_OWE_TSN");
            v36 = v23;
            v24 = (Value | v23) == 0;
            v25 = (v22 | v35) == 0;
            if (v24 == v25)
            {
              v2 = 0;
              if (v41 != v20 || v37 != v38)
              {
                return v2;
              }

              goto LABEL_70;
            }

            if (v41)
            {
              v26 = WiFiNetworkGetOperatingBand(v7) != 3;
              if (!v20)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v26 = 0;
              if (!v20)
              {
LABEL_56:
                v27 = 0;
                goto LABEL_57;
              }
            }

            v27 = WiFiNetworkGetOperatingBand(v10) != 3;
LABEL_57:
            v2 = 0;
            v28 = *MEMORY[0x277CBED28];
            if (Value == *MEMORY[0x277CBED28] && v27 || v22 == *MEMORY[0x277CBED28] && v26)
            {
              return v2;
            }

            if ((v24 & v41) == 1)
            {
              OperatingBand = WiFiNetworkGetOperatingBand(v7);
              v32 = AuthFlags;
              if (OperatingBand == 3)
              {
                v32 = AuthFlags | 2;
              }

              AuthFlags = v32;
            }

            if ((v25 & v20) == 1)
            {
              v33 = WiFiNetworkGetOperatingBand(v10);
              v34 = v39;
              if (v33 == 3)
              {
                v34 = v39 | 2;
              }

              v39 = v34;
            }

            v29 = v37 && WiFiNetworkGetOperatingBand(v7) != 3;
            v30 = v38;
            if (v38)
            {
              v30 = WiFiNetworkGetOperatingBand(v10) != 3;
            }

            v2 = 0;
            if (v36 == v28 && v30 || v35 == v28 && v29)
            {
              return v2;
            }

LABEL_70:
            if (!AuthFlags || !v39 || (AuthFlags & v39) != 0)
            {
              return (v39 != 0) ^ (AuthFlags == 0);
            }

            return 0;
          }

          CIntProperty = WiFiNetworkGetCIntProperty(v7, @"networkRole");
          v17 = WiFiNetworkGetCIntProperty(v10, @"networkRole");
          if (CIntProperty == 4 || (CIntProperty & 0xFFFFFFFE) == 2 || v17 == 4 || (v17 & 0xFFFFFFFE) == 2)
          {
            return CIntProperty == v17;
          }

          v2 = 1;
          if (!__WiFiIsSameHS20Account(v7, v10, 1))
          {
            SSID = WiFiNetworkGetSSID(v7);
            if (!CFStringGetLength(SSID))
            {
              v19 = WiFiNetworkGetSSID(v10);
              if (!CFStringGetLength(v19))
              {
                return __WiFiHS20NetworksHaveSameDomain(v7, v10) != 0;
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return v2;
}

CFHashCode __WiFiNetworkHash(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  SSID = WiFiNetworkGetSSID(a1);
  if (!SSID)
  {
    return 0;
  }

  return CFHash(SSID);
}

CFStringRef __WiFiNetworkCopyDesc(void *cf)
{
  v4 = 0;
  if (!cf)
  {
    return @"Invalid network ref";
  }

  v2 = __kWiFiNetworkTypeID;
  if (!__kWiFiNetworkTypeID)
  {
    pthread_once(&__wifiNetworkTypeInit, __WiFiNetworkRegister);
    v2 = __kWiFiNetworkTypeID;
  }

  if (v2 != CFGetTypeID(cf))
  {
    return @"Invalid network ref";
  }

  __WiFiNetworkCopyDesc_cold_1(cf, &v4, &v5);
  return v5;
}

uint64_t __WiFiIsSameHS20Account(const void *a1, const void *a2, int a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    if (!WiFiNetworkIsHotspot20(a1) || !WiFiNetworkIsHotspot20(a2))
    {
      return 0;
    }

    SSID = WiFiNetworkGetSSID(a1);
    v9 = WiFiNetworkGetSSID(a2);
    Property = WiFiNetworkGetProperty(a1, @"HS20AccountName");
    v11 = WiFiNetworkGetProperty(a2, @"HS20AccountName");
    HS20DomainName = WiFiNetworkGetHS20DomainName(a1);
    v13 = WiFiNetworkGetHS20DomainName(a2);
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    if (SSID && v11 && CFStringCompare(SSID, v11, 0) == kCFCompareEqualTo || v9 && Property && CFStringCompare(v9, Property, 0) == kCFCompareEqualTo)
    {
      return 1;
    }

    if (!Property || !v11 || !HS20DomainName || !v13 || CFStringCompare(HS20DomainName, v13, 0))
    {
      if (!a3)
      {
        v3 = 0;
LABEL_20:
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
        return v3;
      }

      WiFiNetworkIsScannedNetworkMatchingHS20Account(a1, a2);
      if (!v14)
      {
        WiFiNetworkIsScannedNetworkMatchingHS20Account(a2, a1);
        if (!v15)
        {
          return 0;
        }
      }
    }

    v3 = 1;
    goto LABEL_20;
  }

  return v3;
}

Class __getCWFNetworkProfileClass_block_invoke(uint64_t a1)
{
  CoreWiFiLibrary();
  result = objc_getClass("CWFNetworkProfile");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCWFNetworkProfileClass_block_invoke_cold_1();
  }

  getCWFNetworkProfileClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t CoreWiFiLibrary()
{
  v3[9] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreWiFiLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreWiFiLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/CoreWiFi.framework/CoreWiFi";
    CoreWiFiLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreWiFiLibraryCore_frameworkLibrary;
  if (!CoreWiFiLibraryCore_frameworkLibrary)
  {
    CoreWiFiLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CoreWiFiLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreWiFiLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCWFBSSClass_block_invoke(uint64_t a1)
{
  CoreWiFiLibrary();
  result = objc_getClass("CWFBSS");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCWFBSSClass_block_invoke_cold_1();
  }

  getCWFBSSClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getCWFChannelClass_block_invoke(uint64_t a1)
{
  CoreWiFiLibrary();
  result = objc_getClass("CWFChannel");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCWFChannelClass_block_invoke_cold_1();
  }

  getCWFChannelClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getCLLocationClass_block_invoke(uint64_t a1)
{
  CoreLocationLibrary();
  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCLLocationClass_block_invoke_cold_1();
  }

  getCLLocationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t CoreLocationLibrary()
{
  v3[9] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreLocationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/Frameworks/CoreLocation.framework/CoreLocation";
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    CoreLocationLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getCLLocationCoordinate2DMakeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "CLLocationCoordinate2DMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLLocationCoordinate2DMakeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCWFScanResultClass_block_invoke(uint64_t a1)
{
  CoreWiFiLibrary();
  result = objc_getClass("CWFScanResult");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCWFScanResultClass_block_invoke_cold_1();
  }

  getCWFScanResultClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getCWFScanResultPropertyOSSpecificAttributesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreWiFiLibrary();
  result = dlsym(v2, "CWFScanResultPropertyOSSpecificAttributesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCWFScanResultPropertyOSSpecificAttributesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_27(const __CFNumber *a1)
{

  return CFNumberGetValue(a1, kCFNumberSInt8Type, (v1 - 1));
}

uint64_t OUTLINED_FUNCTION_34()
{

  return [v0 setObject:v1 forKey:?];
}

CFNumberRef OUTLINED_FUNCTION_35(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberIntType, a3);
}

uint64_t WiFiSecurityCopyPasswordWithTimeout(const void *a1, BOOL *a2, double a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (a1)
  {
    if (MKBGetDeviceLockState() == 1 && !MKBUserUnlockedSinceBoot())
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    }

    else
    {
      v6 = dispatch_semaphore_create(0);
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      CFRetain(a1);
      global_queue = dispatch_get_global_queue(0, 0);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __WiFiSecurityCopyPasswordWithTimeout_block_invoke;
      v13[3] = &unk_27991A1A8;
      v13[6] = &v14;
      v13[7] = a1;
      v13[4] = v6;
      v13[5] = &v18;
      dispatch_async(global_queue, v13);
      v8 = dispatch_time(0, (a3 * 1000000000.0));
      v9 = dispatch_semaphore_wait(v6, v8) != 0;
      v10 = v15;
      *(v15 + 24) = v9;
      *a2 = v9;
      if (*(v10 + 24) == 1)
      {
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      }

      dispatch_release(v6);
      _Block_object_dispose(&v14, 8);
    }
  }

  v11 = v19[3];
  _Block_object_dispose(&v18, 8);
  return v11;
}

void sub_25A12C0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

intptr_t __WiFiSecurityCopyPasswordWithTimeout_block_invoke(uint64_t a1)
{
  result = 0;
  Query = __WiFiSecurityCreateQuery(*(a1 + 56), 0, 0, 0, 0, 1);
  v3 = Query;
  if (!Query || (!SecItemCopyMatching(Query, &result) ? (v4 = result == 0) : (v4 = 1), v4))
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = CFStringCreateFromExternalRepresentation(*MEMORY[0x277CBECE8], result, 0x8000100u);
  }

  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    if (v5)
    {
      CFRelease(v5);
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  CFRelease(*(a1 + 56));
  return dispatch_semaphore_signal(*(a1 + 32));
}

__CFDictionary *__WiFiSecurityCreateQuery(const void *a1, const void *a2, const void *a3, int a4, int a5, int a6)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    v13 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
      CFDictionarySetValue(v13, *MEMORY[0x277CDBF20], a1);
      CFDictionarySetValue(v13, *MEMORY[0x277CDC120], @"AirPort");
      CFDictionarySetValue(v13, *MEMORY[0x277CDC140], *MEMORY[0x277CDC148]);
      if (a2)
      {
        CFDictionarySetValue(v13, *MEMORY[0x277CDC080], a2);
      }

      if (a3)
      {
        CFDictionarySetValue(v13, *MEMORY[0x277CDBFA0], a3);
      }

      v14 = MEMORY[0x277CBED28];
      if (a6)
      {
        CFDictionarySetValue(v13, *MEMORY[0x277CDC5D0], *MEMORY[0x277CBED28]);
      }

      if (!a4)
      {
        CFDictionarySetValue(v13, *MEMORY[0x277CDC558], *v14);
      }

      if (a5)
      {
        CFDictionarySetValue(v13, *MEMORY[0x277CDC550], *v14);
      }
    }

    else
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return v13;
}

CFStringRef WiFiSecurityCopyPassword(const __CFString *a1)
{
  result = __WiFiSecurityCopyPassword(a1, 1);
  if (!result)
  {
    v3 = getprogname();
    if (!strncmp("sharingd", v3, 8uLL) || (v4 = getprogname(), !strncmp("HPSetup", v4, 7uLL)) || (v5 = getprogname(), !strncmp("Setup", v5, 5uLL)) || (v6 = getprogname(), !strncmp("HDSViewService", v6, 0xEuLL)))
    {

      return WiFiSecurityCopyPasswordFromPasswordBackup(a1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFStringRef __WiFiSecurityCopyPassword(const __CFString *a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    if (MKBGetDeviceLockState() == 1 && !MKBUserUnlockedSinceBoot())
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      return 0;
    }

    else
    {
      Query = __WiFiSecurityCreateQuery(v2, 0, 0, 0, 0, a2);
      v5 = Query;
      result = 0;
      if (Query && !SecItemCopyMatching(Query, &result) && result)
      {
        v2 = CFStringCreateFromExternalRepresentation(*MEMORY[0x277CBECE8], result, 0x8000100u);
      }

      else
      {
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
        v2 = 0;
      }

      if (result)
      {
        CFRelease(result);
        result = 0;
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  return v2;
}

uint64_t WiFiSecurityCopyPasswordFromPasswordBackup(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  if (WiFiSecurityPasswordBackupQueue_onceToken != -1)
  {
    WiFiSecurityCopyPasswordFromPasswordBackup_cold_1();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke;
  v4[3] = &unk_27991A220;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(WiFiSecurityPasswordBackupQueue_queue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFTypeRef WiFiSecurityCopyPasswordModificationDate(const void *a1)
{
  result = 0;
  if (a1)
  {
    if (MKBGetDeviceLockState() == 1 && !MKBUserUnlockedSinceBoot())
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v5 = 0;
      v3 = 0;
    }

    else
    {
      Query = __WiFiSecurityCreateQuery(a1, 0, 0, 0, 1, 1);
      v3 = Query;
      if (Query && !SecItemCopyMatching(Query, &result) && result)
      {
        Value = CFDictionaryGetValue(result, *MEMORY[0x277CDC088]);
        v5 = CFRetain(Value);
      }

      else
      {
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
        v5 = 0;
      }
    }

    if (result)
    {
      CFRelease(result);
      result = 0;
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  return v5;
}

BOOL WiFiSecuritySetPasswordWithTimeout(const void *a1, const __CFString *a2, BOOL *a3, double a4)
{
  v21 = 0;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  if (!a1 || !a2 || !CFStringGetLength(a2))
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  v8 = *MEMORY[0x277CBECE8];
  ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x277CBECE8], a2, 0x8000100u, 0);
  v10 = WiFiSecurityCopyPasswordWithTimeout(a1, &v21, a4);
  v11 = v10;
  v12 = v21;
  if (v21)
  {
    *a3 = 1;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v13 = 0;
    if (!v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    CFRelease(v11);
    goto LABEL_21;
  }

  if (v10)
  {
    if (CFStringCompare(a2, v10, 0) == kCFCompareEqualTo)
    {
      *a3 = v12;
      v13 = 1;
      goto LABEL_20;
    }

    Query = __WiFiSecurityCreateQuery(a1, 0, 0, 1, 0, 1);
    if (!Query)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v13 = 0;
      goto LABEL_20;
    }

    v15 = Query;
    Mutable = CFDictionaryCreateMutable(v8, 0, 0, 0);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC5E8], ExternalRepresentation);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC080], a1);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDBFA0], @"AirPort network password");
    v17 = SecItemUpdate(v15, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v18 = __WiFiSecurityCreateQuery(a1, a1, @"AirPort network password", 1, 0, 1);
    if (!v18)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v13 = 0;
      if (!ExternalRepresentation)
      {
        return v13;
      }

      goto LABEL_22;
    }

    v15 = v18;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    CFDictionarySetValue(v18, *MEMORY[0x277CDC5E8], ExternalRepresentation);
    CFDictionarySetValue(v15, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBEE0]);
    CFDictionarySetValue(v15, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
    v17 = SecItemAdd(v15, &v20);
  }

  *a3 = v12;
  v13 = v17 == 0;
  if (v17)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  else
  {
    notify_post("com.apple.wifid.WiFiPasswordChanged");
  }

  CFRelease(v15);
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (ExternalRepresentation)
  {
LABEL_22:
    CFRelease(ExternalRepresentation);
  }

  return v13;
}

BOOL __WiFiSecuritySetPassword(_BOOL8 a1, CFStringRef theString, int a3)
{
  v3 = a1;
  if (!a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return v3;
  }

  if (!theString || !CFStringGetLength(theString))
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  v6 = *MEMORY[0x277CBECE8];
  ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x277CBECE8], theString, 0x8000100u, 0);
  v8 = __WiFiSecurityCopyPassword(v3, a3);
  if (v8)
  {
    if (CFStringCompare(theString, v8, 0))
    {
      Query = __WiFiSecurityCreateQuery(v3, 0, 0, 1, 0, a3);
      if (Query)
      {
        v10 = Query;
        Mutable = CFDictionaryCreateMutable(v6, 0, 0, 0);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CDC5E8], ExternalRepresentation);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CDC080], v3);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CDBFA0], @"AirPort network password");
        v12 = SecItemUpdate(v10, Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        goto LABEL_11;
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

LABEL_17:
    CFRelease(v8);
    goto LABEL_18;
  }

  v13 = __WiFiSecurityCreateQuery(v3, v3, @"AirPort network password", 1, 0, a3);
  if (!v13)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v3 = 0;
    if (!ExternalRepresentation)
    {
      return v3;
    }

    goto LABEL_19;
  }

  v10 = v13;
  result = 0xAAAAAAAAAAAAAAAALL;
  CFDictionarySetValue(v13, *MEMORY[0x277CDC5E8], ExternalRepresentation);
  CFDictionarySetValue(v10, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBEE0]);
  CFDictionarySetValue(v10, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
  v12 = SecItemAdd(v10, &result);
LABEL_11:
  v3 = v12 == 0;
  if (v12)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  else
  {
    notify_post("com.apple.wifid.WiFiPasswordChanged");
  }

  CFRelease(v10);
  if (v8)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (ExternalRepresentation)
  {
LABEL_19:
    CFRelease(ExternalRepresentation);
  }

  return v3;
}

uint64_t WiFiSecurityRemovePassword(const void *a1)
{
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());

  return __WiFiSecurityRemovePassword(a1, 1);
}

uint64_t __WiFiSecurityRemovePassword(const void *a1, int a2)
{
  if (a1 && (Query = __WiFiSecurityCreateQuery(a1, 0, 0, 0, 0, a2)) != 0 && (v3 = Query, v4 = SecItemDelete(Query), CFRelease(v3), !v4))
  {
    notify_post("com.apple.wifid.WiFiPasswordChanged");
    return 1;
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

uint64_t WiFiSecurityIsPasswordSyncing(const void *a1)
{
  result = 0;
  if (!a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  if (MKBGetDeviceLockState() == 1 && !MKBUserUnlockedSinceBoot())
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v5 = 0;
    v3 = 0;
    goto LABEL_11;
  }

  Query = __WiFiSecurityCreateQuery(a1, 0, 0, 0, 1, 1);
  v3 = Query;
  if (!Query || SecItemCopyMatching(Query, &result) || !result)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(result, *MEMORY[0x277CDC140]);
  if (!Value)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = CFBooleanGetValue(Value);
LABEL_11:
  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

CFTypeRef WiFiSecurityCopyAttributesForAllAirPortEntries()
{
  result = 0;
  if ((MKBGetDeviceLockState() != 1 || MKBUserUnlockedSinceBoot()) && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0)) != 0)
  {
    v1 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
    CFDictionarySetValue(v1, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
    CFDictionarySetValue(v1, *MEMORY[0x277CDC120], @"AirPort");
    CFDictionarySetValue(v1, *MEMORY[0x277CDC140], *MEMORY[0x277CDC148]);
    v2 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v1, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
    CFDictionarySetValue(v1, *MEMORY[0x277CDC5D0], v2);
    if (SecItemCopyMatching(v1, &result))
    {
      if (result)
      {
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      }
    }

    CFRelease(v1);
    return result;
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }
}

CFStringRef WiFiSecurityCopyNonSyncablePassword(const void *a1)
{
  result = 0;
  if (!a1)
  {
    return 0;
  }

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  if (MKBGetDeviceLockState() == 1 && !MKBUserUnlockedSinceBoot())
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v4 = 0;
    goto LABEL_13;
  }

  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  v4 = Mutable;
  if (!Mutable)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionarySetValue(v4, *MEMORY[0x277CDBF20], a1);
  CFDictionarySetValue(v4, *MEMORY[0x277CDC120], @"AirPort");
  v5 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v4, *MEMORY[0x277CDC5D0], *MEMORY[0x277CBED28]);
  CFDictionarySetValue(v4, *MEMORY[0x277CDC558], v5);
  if (SecItemCopyMatching(v4, &result))
  {
    v6 = 1;
  }

  else
  {
    v6 = result == 0;
  }

  if (v6)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    goto LABEL_13;
  }

  v7 = CFStringCreateFromExternalRepresentation(v2, result, 0x8000100u);
LABEL_14:
  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v7;
}

uint64_t WiFiSecurityCopyNonSyncablePasswordWithTimeout(const void *a1, BOOL *a2, int a3, double a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (a1)
  {
    v8 = _os_feature_enabled_impl();
    if (a3)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if ((v9 & 1) != 0 || MKBGetDeviceLockState() != 1 || MKBUserUnlockedSinceBoot())
    {
      v10 = dispatch_semaphore_create(0);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      CFRetain(a1);
      global_queue = dispatch_get_global_queue(0, 0);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __WiFiSecurityCopyNonSyncablePasswordWithTimeout_block_invoke;
      v17[3] = &unk_27991A1A8;
      v17[6] = &v18;
      v17[7] = a1;
      v17[4] = v10;
      v17[5] = &v22;
      dispatch_async(global_queue, v17);
      v12 = dispatch_time(0, (a4 * 1000000000.0));
      v13 = dispatch_semaphore_wait(v10, v12) != 0;
      v14 = v19;
      *(v19 + 24) = v13;
      *a2 = v13;
      if (*(v14 + 24) == 1)
      {
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      }

      dispatch_release(v10);
      _Block_object_dispose(&v18, 8);
    }

    else
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    }
  }

  v15 = v23[3];
  _Block_object_dispose(&v22, 8);
  return v15;
}

void sub_25A12D2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

intptr_t __WiFiSecurityCopyNonSyncablePasswordWithTimeout_block_invoke(uint64_t a1)
{
  result = 0;
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  v4 = Mutable;
  if (!Mutable || ((CFDictionarySetValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]), CFDictionarySetValue(v4, *MEMORY[0x277CDBF20], *(a1 + 56)), CFDictionarySetValue(v4, *MEMORY[0x277CDC120], @"AirPort"), v5 = *MEMORY[0x277CBED28], CFDictionarySetValue(v4, *MEMORY[0x277CDC5D0], *MEMORY[0x277CBED28]), CFDictionarySetValue(v4, *MEMORY[0x277CDC558], v5), !SecItemCopyMatching(v4, &result)) ? (v6 = result == 0) : (v6 = 1), v6))
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = CFStringCreateFromExternalRepresentation(v2, result, 0x8000100u);
  }

  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    if (v7)
    {
      CFRelease(v7);
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  CFRelease(*(a1 + 56));
  return dispatch_semaphore_signal(*(a1 + 32));
}

void *WiFiSecurityCopySSIDHashForPasswordBackup(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  macOut[0] = v3;
  macOut[1] = v3;
  v4 = [a1 cStringUsingEncoding:4];
  v5 = strlen(v4);
  CCHmac(2u, "CURRENT_NETWORK", 0xFuLL, v4, v5, macOut);
  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v6 appendFormat:@"%02x", *(macOut + i)];
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void WiFiSecuritySavePasswordForPasswordBackup(uint64_t a1, uint64_t a2)
{
  if (WiFiSecurityPasswordBackupQueue_onceToken != -1)
  {
    WiFiSecuritySavePasswordForPasswordBackup_cold_1();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __WiFiSecuritySavePasswordForPasswordBackup_block_invoke;
  v4[3] = &unk_27991A1F8;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_async(WiFiSecurityPasswordBackupQueue_queue, v4);
}

void __WiFiSecuritySavePasswordForPasswordBackup_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (!v3)
  {
    __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_cold_5();
    goto LABEL_22;
  }

  if (!*(a1 + 40))
  {
    __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_cold_4();
    goto LABEL_22;
  }

  if (![v3 length])
  {
    __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_cold_3();
    goto LABEL_22;
  }

  if (![*(a1 + 40) length])
  {
    __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_cold_2();
    goto LABEL_22;
  }

  v5 = WiFiSecurityCopySSIDHashForPasswordBackup(*v4);
  v6 = v5;
  if (!v5 || ![v5 length])
  {
    __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_cold_1();
LABEL_22:
    v6 = *buf;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v4;
    *buf = 136315650;
    *&buf[4] = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: ssid %@ (hash: %@)", buf, 0x20u);
  }

  v8 = [*(a1 + 40) dataUsingEncoding:4];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  [v9 setObject:*MEMORY[0x277CDC238] forKeyedSubscript:*MEMORY[0x277CDC228]];
  [v9 setObject:v6 forKeyedSubscript:*MEMORY[0x277CDBF20]];
  [v9 setObject:@"AirPort" forKeyedSubscript:*MEMORY[0x277CDC120]];
  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDC5E8]];
  [v9 setObject:*MEMORY[0x277CDBEE0] forKeyedSubscript:*MEMORY[0x277CDBED8]];
  v10 = SecItemAdd(v9, v21 + 3);
  v11 = v10;
  *(v17 + 6) = v10;
  if (v10)
  {
    if (v10 == -25299)
    {
      v12 = *v4;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_31;
      v15[3] = &unk_27991A1D0;
      v15[4] = v9;
      v15[5] = &v16;
      v15[6] = &v20;
      __WiFiSecurityRemovePasswordFromPasswordBackup(v12, v15);

      goto LABEL_16;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
      v25 = 2112;
      v26 = v6;
      v27 = 1024;
      LODWORD(v28) = v11;
      _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: [%@] error result %d", buf, 0x1Cu);
    }
  }

LABEL_14:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *v4;
    *buf = 136315394;
    *&buf[4] = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: [%@] save attempt complete", buf, 0x16u);
  }

LABEL_16:
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  objc_autoreleasePoolPop(v2);
  v14 = *MEMORY[0x277D85DE8];
}

void __WiFiSecurityRemovePasswordFromPasswordBackup(uint64_t a1, uint64_t a2)
{
  if (WiFiSecurityPasswordBackupQueue_onceToken != -1)
  {
    WiFiSecuritySavePasswordForPasswordBackup_cold_1();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ____WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke;
  v4[3] = &unk_27991A268;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_async(WiFiSecurityPasswordBackupQueue_queue, v4);
}

void __WiFiSecuritySavePasswordForPasswordBackup_block_invoke_31(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: retrying add after removal", &v4, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = SecItemAdd(*(a1 + 32), (*(*(a1 + 48) + 8) + 24));
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
    v6 = 1024;
    v7 = v2;
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: retry add error result %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  result = 0;
  v3 = *(a1 + 32);
  if (!v3)
  {
    __WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke_cold_3();
    goto LABEL_18;
  }

  if (![v3 length])
  {
    __WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke_cold_2();
    goto LABEL_18;
  }

  v4 = WiFiSecurityCopySSIDHashForPasswordBackup(*(a1 + 32));
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    __WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke_cold_1();
LABEL_18:
    v5 = *buf;
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: ssid %@ (%@)", buf, 0x20u);
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:*MEMORY[0x277CDC238] forKeyedSubscript:*MEMORY[0x277CDC228]];
  [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x277CDBF20]];
  [v7 setObject:@"AirPort" forKeyedSubscript:*MEMORY[0x277CDC120]];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDC558]];
  v8 = SecItemCopyMatching(v7, &result);
  if (v8 || !result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke";
      v12 = 2112;
      v13 = v5;
      v14 = 1024;
      LODWORD(v15) = v8;
      _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:[%@] error result %d", buf, 0x1Cu);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = CFStringCreateFromExternalRepresentation(*MEMORY[0x277CBECE8], result, 0x8000100u);
  }

LABEL_12:

  if (result)
  {
    CFRelease(result);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

dispatch_queue_t __WiFiSecurityPasswordBackupQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.wifid.security", v0);
  WiFiSecurityPasswordBackupQueue_queue = result;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

BOOL MobileWiFiContainsRadio()
{
  v0 = *MEMORY[0x277CD28A0];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    v4 = *MEMORY[0x277CBECE8];
    v5 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"software-behavior", *MEMORY[0x277CBECE8], 1u);
    if (v5)
    {
      v6 = v5;
      *buffer = -1431655766;
      v14.location = 0;
      v14.length = 4;
      CFDataGetBytes(v5, v14, buffer);
      v7 = buffer[0];
      CFRelease(v6);
      if ((v7 & 0x20) != 0)
      {
        v8 = 0;
LABEL_10:
        IOObjectRelease(v3);
        goto LABEL_11;
      }
    }

    else
    {
      SCLog();
    }

    SCLog();
    v9 = IORegistryEntrySearchCFProperty(v3, "IODeviceTree", @"no-sdio-devices", v4, 1u);
    if (v9)
    {
      v10 = v9;
      *v12 = -1431655766;
      v15.location = 0;
      v15.length = 4;
      CFDataGetBytes(v9, v15, v12);
      v8 = *v12 == 0;
      CFRelease(v10);
    }

    else
    {
      v8 = 1;
      SCLog();
    }

    goto LABEL_10;
  }

  v8 = 1;
  SCLog();
LABEL_11:
  SCLog();
  return v8;
}

uint64_t MobileWiFiContainsDriver()
{
  v0 = MobileWiFiContainsDriver_masterPort;
  if (!MobileWiFiContainsDriver_masterPort)
  {
    if (IOMasterPort(0, &MobileWiFiContainsDriver_masterPort))
    {
      return 0;
    }

    v0 = MobileWiFiContainsDriver_masterPort;
  }

  v1 = IOServiceMatching("IO80211Controller");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    IOObjectRelease(result);
    return 1;
  }

  return result;
}

void sub_25A12E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SharingLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!SharingLibraryCore_frameworkLibrary)
  {
    SharingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = SharingLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SharingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SharingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSFPasswordSharingServiceClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!SharingLibraryCore())
  {
    __getSFPasswordSharingServiceClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("SFPasswordSharingService");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSFPasswordSharingServiceClass_block_invoke_cold_1();
  }

  getSFPasswordSharingServiceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t wifi_manager_client_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 96974) >= 0xFFFFFFF2)
  {
    return *(&_wifi_manager_client_subsystem + 5 * (v1 - 96960) + 5);
  }

  else
  {
    return 0;
  }
}

void _Xwifi_manager_client_dispatch_association_result(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 3 && *(a1 + 4) == 100)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 71) == 1 && *(a1 + 40) == *(a1 + 84) && *(a1 + 56) == *(a1 + 88) && *(a1 + 72) == *(a1 + 92))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 44);
      v6 = *(a1 + 60);
      v7 = *(a1 + 96);
      _wifi_manager_client_dispatch_association_result();
      *(a2 + 32) = v8;
      return;
    }

    v9 = -300;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void _Xwifi_manager_client_dispatch_stop_network_result(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 80)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 40) == *(a1 + 68) && *(a1 + 56) == *(a1 + 76))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 72);
      v6 = *(a1 + 44);
      _wifi_manager_client_dispatch_stop_network_result();
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

_DWORD *_Xwifi_manager_client_dispatch_wow_state_change(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    result = _wifi_manager_client_dispatch_wow_state_change(result[3], result[8]);
    *(a2 + 32) = result;
  }

  return result;
}

void _Xwifi_manager_client_dispatch_gas_results(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 80)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 40) == *(a1 + 68) && *(a1 + 56) == *(a1 + 72))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 44);
      v6 = *(a1 + 76);
      _wifi_manager_client_dispatch_gas_results();
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

void _Xwifi_manager_client_dispatch_ranging_result(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 80)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 40) == *(a1 + 68) && *(a1 + 56) == *(a1 + 72))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 44);
      v6 = *(a1 + 76);
      _wifi_manager_client_dispatch_ranging_result();
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

uint64_t _Xwifi_manager_client_dispatch_add_network_async(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 60)
  {
    if (*(result + 39) == 1)
    {
      v3 = *(result + 40);
      if (v3 == *(result + 52))
      {
        result = _wifi_manager_client_dispatch_add_network_async(*(result + 12), *(result + 28), v3, *(result + 56));
        *(a2 + 32) = result;
        return result;
      }
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _Xwifi_manager_client_dispatch_auto_join_state_change(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 60)
  {
    if (*(result + 39) == 1 && *(result + 40) == *(result + 56))
    {
      v3 = *(result + 28);
      result = _wifi_manager_client_dispatch_auto_join_state_change(*(result + 12), *(result + 52));
      *(a2 + 32) = result;
      return result;
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _Xwifi_manager_client_dispatch_preferred_networks_change(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 56)
  {
    if (*(result + 39) == 1 && *(result + 40) == *(result + 52))
    {
      v3 = *(result + 28);
      result = _wifi_manager_client_dispatch_preferred_networks_change(*(result + 12));
      *(a2 + 32) = result;
      return result;
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

_DWORD *_Xwifi_manager_client_dispatch_managed_apple_id_state_change(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    result = _wifi_manager_client_dispatch_managed_apple_id_state_change(result[3], result[8]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xwifi_manager_client_dispatch_ui_event(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 56)
  {
    if (*(result + 39) == 1 && *(result + 40) == *(result + 52))
    {
      v3 = *(result + 28);
      result = _wifi_manager_client_dispatch_ui_event(*(result + 12));
      *(a2 + 32) = result;
      return result;
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t wifi_manager_open(int a1, int a2, int a3, int a4, _DWORD *a5, _DWORD *a6)
{
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&msg[20] = v9;
  v17 = v9;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&msg[4] = v9;
  *&msg[24] = 1;
  *&msg[28] = a4;
  LODWORD(v17) = 1157802;
  *(&v17 + 4) = *MEMORY[0x277D85EF8];
  HIDWORD(v17) = a2;
  LODWORD(v18) = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x1103A00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v11 = *&msg[12];
  }

  else
  {
    v11 = special_reply_port;
  }

  v12 = mach_msg(msg, 3162115, 0x38u, 0x3Cu, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (*&msg[20] == 71)
      {
        v13 = 4294966988;
      }

      else if (*&msg[20] == 69790)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
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

          goto LABEL_24;
        }

        v13 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 52 && !*&msg[8] && WORD1(v17) << 16 == 1114112)
        {
          v13 = 0;
          v14 = HIDWORD(v17);
          *a5 = *&msg[28];
          *a6 = v14;
          return v13;
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(msg);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  return v13;
}

uint64_t wifi_manager_close(mach_port_t a1)
{
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69691;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
}

uint64_t wifi_manager_copy_devices(int a1, void *a2, _DWORD *a3)
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
  *&msg[16] = 0x1103C00000000;
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

      else if (*&msg[20] == 69792)
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

uint64_t wifi_manager_copy_networks(int a1, int a2, void *a3, _DWORD *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&msg[20] = v7;
  *&v16[12] = v7;
  *v16 = v7;
  *&msg[4] = v7;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x1103D00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162115, 0x24u, 0x40u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 69793)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
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

          goto LABEL_25;
        }

        v11 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v16[3] == 1)
        {
          v12 = *&v16[4];
          if (*&v16[4] == *&v16[16])
          {
            v11 = 0;
            *a3 = *&msg[28];
            *a4 = v12;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t wifi_manager_copy_property(int a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
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
  *&v16[12] = 0x1103E00000000;
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

      else if (*&v16[16] == 69794)
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

uint64_t wifi_manager_set_property(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
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
  *&msg.msgh_voucher_port = 0x1103F00000000;
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

      else if (msg.msgh_id == 69795)
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

uint64_t wifi_manager_add_network(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BCF0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_add_network_async(int a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v9 = a2;
  v10 = 27918592;
  v11 = a3;
  v12 = a4;
  v13 = 27918592;
  v14 = a5;
  v15 = *MEMORY[0x277D85EF8];
  v16 = a3;
  v17 = a5;
  v6 = 0xAAAAAAAA80000013;
  v7 = a1;
  v8 = xmmword_25A14BD00;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v6);
  }

  return mach_msg(&v6, 2097153, 0x4Cu, 0, 0, 0, 0);
}

uint64_t wifi_manager_update_network(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BD10;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_remove_network(int a1, uint64_t a2, int a3, int a4)
{
  v8 = a2;
  v9 = 27918592;
  v10 = a3;
  v11 = *MEMORY[0x277D85EF8];
  v12 = a3;
  v13 = a4;
  v5 = 0xAAAAAAAA80000013;
  v6 = a1;
  v7 = xmmword_25A14BD20;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v5);
  }

  return mach_msg(&v5, 2097153, 0x3Cu, 0, 0, 0, 0);
}

uint64_t wifi_manager_remove_network_configuration(int a1, uint64_t a2, int a3, int a4)
{
  v8 = a2;
  v9 = 27918592;
  v10 = a3;
  v11 = *MEMORY[0x277D85EF8];
  v12 = a3;
  v13 = a4;
  v5 = 0xAAAAAAAA80000013;
  v6 = a1;
  v7 = xmmword_25A14BD30;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v5);
  }

  return mach_msg(&v5, 2097153, 0x3Cu, 0, 0, 0, 0);
}

uint64_t wifi_manager_remove_networks_with_bundle_identifier(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BD40;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_networks_state_with_bundle_identifier(int a1, uint64_t a2, int a3, int a4)
{
  v8 = a2;
  v9 = 27918592;
  v10 = a3;
  v11 = *MEMORY[0x277D85EF8];
  v12 = a3;
  v13 = a4;
  v5 = 0xAAAAAAAA80000013;
  v6 = a1;
  v7 = xmmword_25A14BD50;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v5);
  }

  return mach_msg(&v5, 2097153, 0x3Cu, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_network_state(int a1, uint64_t a2, int a3, int a4, int a5)
{
  v9 = a2;
  v10 = 27918592;
  v11 = a3;
  v12 = *MEMORY[0x277D85EF8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v6 = 0xAAAAAAAA80000013;
  v7 = a1;
  v8 = xmmword_25A14BD60;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v6);
  }

  return mach_msg(&v6, 2097153, 0x40u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_network_state(mach_port_t a1, uint64_t a2, int a3, int *a4)
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
  *&v13.msgh_voucher_port = 0x1104800000000;
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

      else if (v13.msgh_id == 69804)
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

uint64_t wifi_manager_dispatch_notification_response(int a1, int a2, int a3, uint64_t a4, int a5)
{
  v9 = a4;
  v10 = 27918592;
  v11 = a5;
  v12 = *MEMORY[0x277D85EF8];
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v6 = 0xAAAAAAAA80000013;
  v7 = a1;
  v8 = xmmword_25A14BD70;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v6);
  }

  return mach_msg(&v6, 2097153, 0x40u, 0, 0, 0, 0);
}

uint64_t wifi_manager_indicate_carplay_hid_event_received(int a1, int a2, int a3, uint64_t a4, int a5)
{
  v9 = a4;
  v10 = 27918592;
  v11 = a5;
  v12 = *MEMORY[0x277D85EF8];
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v6 = 0xAAAAAAAA80000013;
  v7 = a1;
  v8 = xmmword_25A14BD80;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v6);
  }

  return mach_msg(&v6, 2097153, 0x40u, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_enable_state(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69707;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_power(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69708;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_power(int a1, _DWORD *a2)
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
  *v15 = 0x1104D00000000;
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

      else if (*&v15[4] == 69809)
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

uint64_t wifi_manager_set_power_ext(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69710;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_ask_to_join_state(int a1, _DWORD *a2)
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
  *v15 = 0x1104F00000000;
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

      else if (*&v15[4] == 69811)
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

uint64_t wifi_manager_set_mis_state(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69712;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_mis_state(int a1, _DWORD *a2)
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
  *v15 = 0x1105100000000;
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

      else if (*&v15[4] == 69813)
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

uint64_t wifi_manager_set_mis_discovery_state(mach_port_t a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, int a10)
{
  v33 = *MEMORY[0x277D85DE8];
  v18 = 2;
  v19 = a6;
  v20 = 27918592;
  v21 = a7;
  v22 = a8;
  v23 = 27918592;
  v24 = a9;
  v25 = *MEMORY[0x277D85EF8];
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a7;
  v31 = a9;
  v32 = a10;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1105200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v13 = mach_msg(&msg, 3162115, 0x60u, 0x2Cu, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (v13)
    {
      mig_dealloc_special_reply_port();
      goto LABEL_18;
    }

    if (msg.msgh_id == 71)
    {
      v14 = 4294966988;
    }

    else if (msg.msgh_id == 69814)
    {
      v14 = 4294966996;
      if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
      {
        v14 = HIDWORD(v19);
        if (!HIDWORD(v19))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v14 = 4294966995;
    }

    mach_msg_destroy(&msg);
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t wifi_manager_get_mis_discovery_state(int a1, _DWORD *a2)
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
  *v15 = 0x1105300000000;
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

      else if (*&v15[4] == 69815)
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

uint64_t wifi_manager_set_wow_state(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69716;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_quiesce_state(int a1, int a2, _DWORD *a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13[16] = v5;
  *&v13[28] = v5;
  *v13 = v5;
  *&v13[20] = *MEMORY[0x277D85EF8];
  *&v13[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&v13[4] = a1;
  *&v13[8] = special_reply_port;
  v12 = 5395;
  *&v13[12] = 0x1105600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v12);
    v7 = *&v13[8];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x24u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&v13[16] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&v13[16] == 69818)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (*v13 == 40)
          {
            if (!*&v13[4])
            {
              v9 = *&v13[28];
              if (!*&v13[28])
              {
                *a3 = *&v13[32];
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (*v13 == 36)
          {
            if (*&v13[4])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&v13[28] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&v13[28];
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
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t wifi_manager_get_quiesce_state(int a1, _DWORD *a2)
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
  *v15 = 0x1105700000000;
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

      else if (*&v15[4] == 69819)
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

uint64_t wifi_manager_get_bgscancache_state(int a1, _DWORD *a2)
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
  *v15 = 0x1105900000000;
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

      else if (*&v15[4] == 69821)
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

uint64_t wifi_manager_set_retry_cap(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69722;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_retry_cap(int a1, _DWORD *a2)
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
  *v15 = 0x1105B00000000;
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

      else if (*&v15[4] == 69823)
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

uint64_t wifi_manager_set_association_mode(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69724;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_association_mode(int a1, _DWORD *a2)
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
  *v15 = 0x1105D00000000;
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

      else if (*&v15[4] == 69825)
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

uint64_t wifi_manager_get_nanclient_assoc_status(int a1, _DWORD *a2)
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
  *v15 = 0x1105E00000000;
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

      else if (*&v15[4] == 69826)
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

uint64_t wifi_manager_set_nan_off_head_connection_expiry(mach_port_t a1, double a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69727;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x28u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_nan_off_head_connection_expiry(int a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v4;
  *&msg[20] = v4;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x1106000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(msg, 3162115, 0x18u, 0x34u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&msg[20] == 69828)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v8 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v13;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&msg[32] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&msg[32];
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
      mach_msg_destroy(msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t wifi_manager_set_asktojoin_preference(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69729;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_asktojoin_preference(int a1, _DWORD *a2)
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
  *v15 = 0x1106200000000;
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

      else if (*&v15[4] == 69830)
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

uint64_t wifi_manager_set_event_mask(mach_port_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69732;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x28u, 0, 0, 0, 0);
}

uint64_t wifi_manager_is_tethering_supported(int a1, _DWORD *a2)
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
  *v15 = 0x1106500000000;
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

      else if (*&v15[4] == 69833)
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

uint64_t wifi_manager_copy_mis_stats(int a1, void *a2, _DWORD *a3)
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
  *&msg[16] = 0x1106600000000;
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

      else if (*&msg[20] == 69834)
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

uint64_t wifi_manager_reset_mis_stats(int a1)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&msg[20] = v2;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x1106700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = special_reply_port;
  }

  v5 = mach_msg(msg, 3162115, 0x18u, 0x2Cu, v4, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (v5)
    {
      mig_dealloc_special_reply_port();
      return v6;
    }

    if (*&msg[20] == 71)
    {
      v6 = 4294966988;
    }

    else if (*&msg[20] == 69835)
    {
      v6 = 4294966996;
      if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
      {
        v6 = *&msg[32];
        if (!*&msg[32])
        {
          return v6;
        }
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(msg);
  }

  return v6;
}

uint64_t wifi_manager_is_always_on_wifi_supported(int a1, _DWORD *a2)
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
  *v15 = 0x1106800000000;
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

      else if (*&v15[4] == 69836)
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

uint64_t wifi_manager_copy_locale_stats(int a1, void *a2, _DWORD *a3)
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
  *&msg[16] = 0x1106900000000;
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

      else if (*&msg[20] == 69837)
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

uint64_t wifi_manager_mis_set_password(mach_port_t a1, uint64_t a2, int a3, int *a4)
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
  *&v13.msgh_voucher_port = 0x1106A00000000;
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

      else if (v13.msgh_id == 69838)
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

uint64_t wifi_manager_mis_copy_password(int a1, void *a2, _DWORD *a3)
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
  *&msg[16] = 0x1106B00000000;
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

      else if (*&msg[20] == 69839)
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

uint64_t wifi_device_set_property(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v11 = a2;
  v12 = 27918592;
  v13 = a3;
  v14 = a4;
  v15 = 27918592;
  v16 = a5;
  v17 = a6;
  v18 = 27918592;
  v19 = a7;
  v20 = *MEMORY[0x277D85EF8];
  v21 = a3;
  v22 = a5;
  v23 = a7;
  v8 = 0xAAAAAAAA80000013;
  v9 = a1;
  v10 = xmmword_25A14BD90;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v8);
  }

  return mach_msg(&v8, 2097153, 0x60u, 0, 0, 0, 0);
}

uint64_t wifi_device_set_power(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 1;
  v16 = a2;
  v17 = 27918592;
  v18 = a3;
  v19 = *MEMORY[0x277D85EF8];
  v20 = a3;
  v21 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1107000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 69844)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v16);
              if (!HIDWORD(v16))
              {
                *a5 = v17;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v16) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v16);
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_device_disassociate(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BDA0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_device_disassociate_with_reason(int a1, uint64_t a2, int a3, int a4)
{
  v8 = a2;
  v9 = 27918592;
  v10 = a3;
  v11 = *MEMORY[0x277D85EF8];
  v12 = a3;
  v13 = a4;
  v5 = 0xAAAAAAAA80000013;
  v6 = a1;
  v7 = xmmword_25A14BDB0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v5);
  }

  return mach_msg(&v5, 2097153, 0x3Cu, 0, 0, 0, 0);
}

uint64_t wifi_device_assoc_async(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
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
  *&msg.msgh_voucher_port = 0x1107500000000;
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

      else if (msg.msgh_id == 69849)
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

uint64_t wifi_device_start_network(mach_port_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 2;
  v18 = a2;
  v19 = 27918592;
  v20 = a3;
  v21 = a5;
  v22 = 27918592;
  v23 = a6;
  v24 = *MEMORY[0x277D85EF8];
  v25 = a3;
  v26 = a4;
  v27 = a6;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1107600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(&msg, 3162115, 0x50u, 0x30u, msgh_local_port, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (msg.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (msg.msgh_id == 69850)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v12 = HIDWORD(v18);
              if (!HIDWORD(v18))
              {
                *a7 = v19;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v13 = 1;
            }

            else
            {
              v13 = HIDWORD(v18) == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = HIDWORD(v18);
            }

            goto LABEL_23;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t wifi_device_stop_network(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
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
  *&msg.msgh_voucher_port = 0x1107700000000;
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

      else if (msg.msgh_id == 69851)
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

uint64_t wifi_device_copy_networks(mach_port_t a1, uint64_t a2, unsigned int a3, unsigned int a4, void *a5, unsigned int *a6, _DWORD *a7)
{
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  msg.msgh_id = -1431655766;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = v11;
  *&msg.msgh_size = v11;
  v19 = 1;
  v20 = a2;
  v21 = 27918592;
  v22 = a3;
  v23 = *MEMORY[0x277D85EF8];
  *&v24 = __PAIR64__(a4, a3);
  special_reply_port = mig_get_special_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x1107800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v14 = mach_msg(&msg, 3162115, 0x3Cu, 0x44u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 69852)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v15 = 4294966996;
            if (HIDWORD(v20))
            {
              if (msg.msgh_remote_port)
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = HIDWORD(v20);
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_25;
        }

        v15 = 4294966996;
        if (v19 == 1 && msg.msgh_size == 60 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
        {
          v16 = v22;
          if (v22 == v24)
          {
            v15 = 0;
            *a5 = v20;
            *a6 = v16;
            *a7 = DWORD1(v24);
            return v15;
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  return v15;
}

uint64_t wifi_device_set_wifi_direct_state(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 1;
  v16 = a2;
  v17 = 27918592;
  v18 = a3;
  v19 = *MEMORY[0x277D85EF8];
  v20 = a3;
  v21 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1107900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 69853)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v16);
              if (!HIDWORD(v16))
              {
                *a5 = v17;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v16) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v16);
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}