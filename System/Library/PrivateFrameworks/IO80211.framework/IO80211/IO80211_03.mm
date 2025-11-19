uint64_t Apple80211GetIOReportingService(io_registry_entry_t *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  existing = 0;
  mainPort = -1431655766;
  if (MEMORY[0x259C1D0D0](0, &mainPort))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    *buf = 0;
    v32 = MEMORY[0x277D86220];
    v33 = "IOMainPort failed";
LABEL_73:
    _os_log_impl(&dword_254882000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
    goto LABEL_74;
  }

  v1 = IOServiceMatching("IO80211Controller");
  if (IOServiceGetMatchingServices(mainPort, v1, &existing))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    *buf = 0;
    v32 = MEMORY[0x277D86220];
    v33 = "IOServiceGetMatchingServices failed";
    goto LABEL_73;
  }

  if (existing)
  {
    v2 = IOIteratorNext(existing);
    if (v2)
    {
      v3 = v2;
      v4 = *MEMORY[0x277CBECE8];
      do
      {
        v5 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOClass", v4, 3u);
        if (v5)
        {
          v6 = v5;
          v7 = CFGetTypeID(v5);
          if (v7 == CFStringGetTypeID())
          {
            if (CFStringCompare(v6, @"ACIWiFiDriver", 0) == kCFCompareEqualTo)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v27 = MEMORY[0x277D86220];
                v28 = "Found wlan driver ACIWiFiDriver";
                goto LABEL_47;
              }

              goto LABEL_48;
            }

            if (CFStringCompare(v6, @"AirPort_BrcmNIC", 0) == kCFCompareEqualTo)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_48;
              }

              *buf = 0;
              v27 = MEMORY[0x277D86220];
              v28 = "Found wlan driver AirPort_BrcmNIC";
LABEL_47:
              _os_log_impl(&dword_254882000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
              goto LABEL_48;
            }

            if (CFStringCompare(v6, @"AppleBCMWLANCore", 0) == kCFCompareEqualTo)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_48;
              }

              *buf = 0;
              v27 = MEMORY[0x277D86220];
              v28 = "Found wlan driver AppleBCMWLANCore (iokit)";
              goto LABEL_47;
            }
          }

          CFRelease(v6);
        }

        v8 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOUserClass", v4, 3u);
        if (v8)
        {
          v6 = v8;
          v9 = CFGetTypeID(v8);
          if (v9 == CFStringGetTypeID() && CFStringCompare(v6, @"AppleBCMWLANCore", 0) == kCFCompareEqualTo)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v27 = MEMORY[0x277D86220];
              v28 = "Found wlan driver AppleBCMWLANCore";
              goto LABEL_47;
            }

LABEL_48:
            CFRelease(v6);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Found WLAN", buf, 2u);
            }

            goto LABEL_57;
          }

          CFRelease(v6);
        }

        v3 = IOIteratorNext(existing);
      }

      while (v3);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = MEMORY[0x277D86220];
      v11 = "Zero driver match with nonzero IO80211Controller match";
LABEL_19:
      _os_log_impl(&dword_254882000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "No Matches for IO80211Controller, trying dk matching";
    goto LABEL_19;
  }

  v12 = IOServiceMatching("IOUserService");
  CFDictionaryAddValue(v12, @"IOUserClass", @"AppleBCMWLANCore");
  if (IOServiceGetMatchingServices(mainPort, v12, &existing))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    *buf = 0;
    v32 = MEMORY[0x277D86220];
    v33 = "IOServiceGetMatchingServices failed";
    goto LABEL_73;
  }

  v13 = IOIteratorNext(existing);
  if (v13)
  {
    v3 = v13;
    v14 = *MEMORY[0x277CBECE8];
    v15 = MEMORY[0x277D86220];
    do
    {
      v16 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOUserClass", v14, 3u);
      v17 = CFGetTypeID(v16);
      if (v17 == CFStringGetTypeID() && CFStringCompare(v16, @"AppleBCMWLANCore", 0) == kCFCompareEqualTo)
      {
        v18 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOReportLegend", v14, 0);
        v19 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          if (v19)
          {
            *buf = 0;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Found wlan driver dk AppleBCMWLANCore", buf, 2u);
          }

          CFRelease(v18);
          v29 = v16;
LABEL_56:
          CFRelease(v29);
          goto LABEL_57;
        }

        if (v19)
        {
          *buf = 0;
          _os_log_impl(&dword_254882000, v15, OS_LOG_TYPE_DEFAULT, "Property IOReportLegend not found in AppleBCMWLANCore", buf, 2u);
        }
      }

      CFRelease(v16);
      v3 = IOIteratorNext(existing);
    }

    while (v3);
  }

  v20 = IOServiceMatching("IOUserService");
  CFDictionaryAddValue(v20, @"IOUserClass", @"IO80211ReporterProxy");
  if (IOServiceGetMatchingServices(mainPort, v20, &existing))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v32 = MEMORY[0x277D86220];
      v33 = "IOServiceGetMatchingServices failed";
      goto LABEL_73;
    }

LABEL_74:
    v3 = 0;
    goto LABEL_57;
  }

  v3 = IOIteratorNext(existing);
  if (v3)
  {
    v21 = *MEMORY[0x277CBECE8];
    v22 = MEMORY[0x277D86220];
    do
    {
      v23 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOUserClass", v21, 3u);
      v24 = CFGetTypeID(v23);
      if (v24 == CFStringGetTypeID() && CFStringCompare(v23, @"IO80211ReporterProxy", 0) == kCFCompareEqualTo)
      {
        v25 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOReportLegend", v21, 0);
        v26 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v25)
        {
          if (v26)
          {
            *buf = 0;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Found wlan driver IO80211ReporterProxy", buf, 2u);
          }

          CFRelease(v25);
          v29 = v23;
          goto LABEL_56;
        }

        if (v26)
        {
          *buf = 0;
          _os_log_impl(&dword_254882000, v22, OS_LOG_TYPE_DEFAULT, "Property IOReportLegend not found in IO80211ReporterProxy", buf, 2u);
        }
      }

      CFRelease(v23);
      v3 = IOIteratorNext(existing);
    }

    while (v3);
  }

LABEL_57:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  if (v3)
  {
    result = 0;
    *a1 = v3;
  }

  else
  {
    result = 4294963396;
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211BindToInterfaceWithRecoveryOption(uint64_t a1, __CFString *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  result = 4294963396;
  if (a1 && a2)
  {
    Service = _Apple80211FindService(a2);
    if (Service)
    {
      v6 = Service;
      v7 = _copyStringRegistryPropertyFor(Service, @"IO80211VirtualInterfaceRole");
      if (!v7 || (v8 = v7, v9 = CFStringCompare(v7, @"AirLink", 0), CFRelease(v8), v9))
      {
        v10 = Apple80211BindToInterfaceWithService();
        IOObjectRelease(v6);
        v11 = *MEMORY[0x277D85DE8];
        return v10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315394;
        v14 = "Apple80211BindToInterfaceWithRecoveryOption";
        v15 = 2112;
        v16 = a2;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@ using compatibility mode\n", &v13, 0x16u);
      }

      if (CFStringGetCString(a2, (a1 + 4), 16, 0x8000100u))
      {
        result = 0;
        *(a1 + 109) = 1;
      }

      else
      {
        result = 4294963396;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315394;
        v14 = "Apple80211BindToInterfaceWithRecoveryOption";
        v15 = 2112;
        v16 = a2;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@ Failed to find matching service in IORegistry\n", &v13, 0x16u);
      }

      result = 4294963393;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void _serviceMatchingDelayedCallback(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "_serviceMatchingDelayedCallback";
    v5 = 2048;
    v6 = a1;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Enter opaque:%p \n", &v3, 0x16u);
  }

  _Apple80211IOUCResume();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "_serviceMatchingDelayedCallback";
    v5 = 2048;
    v6 = a1;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Exit opaque:%p \n", &v3, 0x16u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t Apple80211DisassociateExt(uint64_t a1, const __CFDictionary *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  syslog(3, "%s: disassocReason:%p", "Apple80211DisassociateExt", a2);
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"DISASSOC_REASON");
    valuePtr = 0;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      syslog(3, "%s: disassocReason:%u", "Apple80211DisassociateExt", valuePtr);
    }
  }

  result = Apple80211SetWithIOCTL();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

char *Apple80211ErrToStr(int __errnum)
{
  result = "Unknown error";
  if (__errnum <= 0xFFFFF0C4 && __errnum >= -3931 && *MEMORY[0x277D85EB0] > __errnum)
  {
    if (__errnum)
    {
      if (__errnum < 1)
      {
        return _apple80211ErrList[-3900 - __errnum];
      }

      else
      {
        return strerror(__errnum);
      }
    }

    else
    {
      return "No Error";
    }
  }

  return result;
}

uint64_t Apple80211ReturnToString(uint64_t a1, unsigned int a2, char *__dst, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v19 = 0u;
  v18 = 0u;
  if (a2 == -3900)
  {
    v6 = &_kApple80211ErrList;
LABEL_6:
    v12 = *(v6 + 1);
    v13 = a4;
LABEL_7:
    strlcpy(__dst, v12, v13);
    v14 = 0;
    goto LABEL_8;
  }

  v9 = &_kApple80211ErrList;
  v10 = 76;
  while (--v10)
  {
    v6 = v9 + 4;
    v11 = v9[4];
    v9 += 4;
    if (v11 == a2)
    {
      goto LABEL_6;
    }
  }

  if (!a1)
  {
    v14 = 2;
    goto LABEL_8;
  }

  v14 = 1;
  if (a2 >> 26 == 56)
  {
    __strlcpy_chk();
    LODWORD(v19) = 209;
    DWORD2(v19) = 216;
    v20 = v17;
    memset(&v17[2], 0, 208);
    v17[0] = 1;
    v17[1] = a2;
    if (Apple80211RawGet(a1, &v18))
    {
      v14 = 3;
      goto LABEL_8;
    }

    v13 = a4;
    v12 = &v17[3];
    goto LABEL_7;
  }

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t convertToApple80211Error(uint64_t a1)
{
  if (a1 > -528342010)
  {
    if (a1 <= 15)
    {
      if (a1 == -528342009)
      {
        return 4294963351;
      }

      if (a1 == -528342007)
      {
        return 4294963397;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x10:
          return 4294963345;
        case 0x16:
          return 4294963347;
        case 0x25:
          return 4294963344;
      }
    }

    return a1;
  }

  result = 4294963349;
  if (a1 <= -528350143)
  {
    if (a1 == -536870211)
    {
      return 4294963395;
    }

    v3 = -536870160;
  }

  else
  {
    if (a1 == -528350142)
    {
      return 4294963346;
    }

    if (a1 == -528342015)
    {
      return 4294963348;
    }

    v3 = -528342014;
  }

  if (a1 != v3)
  {
    return a1;
  }

  return result;
}

uint64_t Apple80211ParseWPAPassword(char *__s, _BYTE *a2, uint64_t a3, _BYTE *a4, void *a5, size_t a6)
{
  LOBYTE(v8) = 0;
  v18 = *MEMORY[0x277D85DE8];
  result = 4294967196;
  if (!__s || !a2 || !a5)
  {
    goto LABEL_20;
  }

  v17[0] = 0xAAAAAAAAAAAAAAAALL;
  v13 = strlen(__s);
  v14 = v13;
  if (v13 - 8 > 0x37)
  {
    if (v13 == 64 && strspn(__s, "0123456789abcdefABCDEF") == 64)
    {
      v8 = _ParseHexEncodedData(__s, 64, 32, a2, v17);
      result = 4294967196;
      if (v8)
      {
        LOBYTE(v8) = 0;
        if (v17[0] == 32)
        {
          result = 0;
        }

        else
        {
          result = 4294967196;
        }

        if (!a4)
        {
          goto LABEL_22;
        }

LABEL_21:
        *a4 = v8;
        goto LABEL_22;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
      result = 4294967196;
    }

LABEL_20:
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (a6 >= 0x20)
  {
    a6 = 32;
  }

  memset(&v17[2], 170, 32);
  if ((byte_280C4DC3B & 1) == 0)
  {
    v17[1] = 0;
    os_parse_boot_arg_int();
    byte_280C4DC3A = 0;
    byte_280C4DC3B = 1;
  }

  gettimeofday(&v17[4], 0);
  if (byte_280C4DC3A)
  {
    IEEE80211iPasswordHashLegacy(__s, v14, a5, a6, a2);
  }

  else
  {
    ccsha1_di();
    ccpbkdf2_hmac();
  }

  gettimeofday(&v17[2], 0);
  v16 = LODWORD(v17[3]) - LODWORD(v17[5]) + 1000000;
  if (SLODWORD(v17[3]) >= SLODWORD(v17[5]))
  {
    v16 = LODWORD(v17[3]) - LODWORD(v17[5]);
  }

  syslog(3, "%s: legacy=<%d> wait took %u ms", "Apple80211PasswordHash", byte_280C4DC3A, v16 / 1000 + 1000 * (LODWORD(v17[2]) - LODWORD(v17[4]) + ((LODWORD(v17[3]) - LODWORD(v17[5])) >> 31)));
  result = 0;
  LOBYTE(v8) = 1;
  if (a4)
  {
    goto LABEL_21;
  }

LABEL_22:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ParseHexEncodedData(char *a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v10 = MEMORY[0x277D85DE0];
  while (1)
  {
    v11 = *a1;
    if ((v11 & 0x80000000) == 0)
    {
      if ((*(v10 + 4 * v11 + 60) & 0x4000) == 0)
      {
        break;
      }

      goto LABEL_6;
    }

    if (!__maskrune(v11, 0x4000uLL))
    {
      break;
    }

LABEL_6:
    ++a1;
    if (!--a2)
    {
      result = 1;
      v13 = a4;
      if (!a5)
      {
        return result;
      }

      goto LABEL_29;
    }
  }

  v20 = a5;
  v14 = 0;
  v13 = a4;
  while (1)
  {
    v15 = __tolower(a1[v14]);
    if (v15 > 0xFF)
    {
      break;
    }

    v16 = v15;
    if ((*(v10 + 4 * v15 + 60) & 0x10000) == 0)
    {
      break;
    }

    v17 = v15 <= 0x60 ? -48 : -87;
    if (a2 - 1 == v14)
    {
      break;
    }

    v18 = __tolower(a1[v14 + 1]);
    if (v18 > 0xFF || (*(v10 + 4 * v18 + 60) & 0x10000) == 0)
    {
      break;
    }

    if (v18 <= 0x60)
    {
      v19 = -48;
    }

    else
    {
      v19 = -87;
    }

    if (a3)
    {
      if (v13)
      {
        *v13++ = (v19 + v18) | (16 * (v17 + v16));
      }

      --a3;
    }

    v14 += 2;
    if (a2 == v14)
    {
      result = 1;
      goto LABEL_28;
    }
  }

  result = 0;
LABEL_28:
  a5 = v20;
  if (v20)
  {
LABEL_29:
    *a5 = v13 - a4;
  }

  return result;
}

uint64_t _openEventSocket()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = socket(32, 3, 1);
  v1 = v0;
  if ((v0 & 0x80000000) != 0)
  {
    __error();
  }

  else
  {
    v4 = 0x600000001;
    v5 = 1;
    if (ioctl(v0, 0x800C6502uLL, &v4) && *__error())
    {
      close(v1);
      v1 = 0xFFFFFFFFLL;
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t __getNetworkSecurityParams(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, @"WPA_IE");
  result = CFDictionaryGetValue(a1, @"RSN_IE");
  if (Value | result)
  {
    v8 = result;
    *(a2 + 44) = 6;
    valuePtr = -1431655766;
    if (result)
    {
      v26 = 0;
      v9 = CFDictionaryGetValue(a1, @"AUTH_SEL_OVERRIDE");
      if (v9)
      {
        result = CFNumberGetValue(v9, kCFNumberSInt32Type, &v26);
        if (!result)
        {
          goto LABEL_61;
        }

        v10 = v26 - 1;
        if (v26 - 1 >= 0x19 || ((0x18019BFu >> v10) & 1) == 0)
        {
          goto LABEL_61;
        }

        v11 = dword_2548C5C00[v10];
      }

      else
      {
        result = CFDictionaryGetValue(v8, @"IE_KEY_RSN_AUTHSELS");
        if (!result)
        {
          goto LABEL_61;
        }

        v17 = result;
        result = CFArrayGetCount(result);
        if (result < 1)
        {
          goto LABEL_61;
        }

        v18 = result;
        for (i = 0; i != v18; ++i)
        {
          result = CFArrayGetValueAtIndex(v17, i);
          if (result)
          {
            result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
            if (result)
            {
              if (v26 < valuePtr)
              {
                v26 = valuePtr;
              }
            }
          }
        }

        v11 = v26;
        if (!v26)
        {
          goto LABEL_61;
        }
      }

      if (v11 > 7)
      {
        if (v11 > 12)
        {
          switch(v11)
          {
            case 13:
              v15 = 0x8000;
              goto LABEL_74;
            case 24:
              v24 = 0xA00010000;
              goto LABEL_62;
            case 25:
              v24 = 0xA00020000;
LABEL_62:
              *(a2 + 40) = v24;
              goto LABEL_63;
          }
        }

        else
        {
          switch(v11)
          {
            case 8:
              v24 = 0xA00001000;
              goto LABEL_62;
            case 9:
              v24 = 0xA00002000;
              goto LABEL_62;
            case 12:
              v15 = 0x4000;
              goto LABEL_74;
          }
        }
      }

      else
      {
        if (v11 <= 3)
        {
          if (v11 == 1)
          {
            v15 = 4;
            goto LABEL_74;
          }

          if (v11 != 2)
          {
            if (v11 == 3)
            {
              v15 = 128;
LABEL_74:
              *(a2 + 40) = v15;
              goto LABEL_9;
            }

            goto LABEL_61;
          }

          v23 = 8;
          goto LABEL_69;
        }

        switch(v11)
        {
          case 4:
            v23 = 16;
LABEL_69:
            *(a2 + 40) = v23;
            if ((*(a3 + 9) & 8) != 0)
            {
              v16 = 10;
            }

            else
            {
              v16 = 6;
            }

LABEL_35:
            *(a2 + 44) = v16;
            goto LABEL_63;
          case 5:
            v15 = 2048;
            goto LABEL_74;
          case 6:
            v23 = 1024;
            goto LABEL_69;
        }
      }
    }

    else if (Value)
    {
      v26 = 0;
      v14 = CFDictionaryGetValue(a1, @"AUTH_SEL_OVERRIDE");
      if (v14)
      {
        result = CFNumberGetValue(v14, kCFNumberSInt32Type, &v26);
        if (!result)
        {
          goto LABEL_61;
        }

        v15 = v26;
        if (v26 - 1 >= 2)
        {
          goto LABEL_61;
        }
      }

      else
      {
        result = CFDictionaryGetValue(Value, @"IE_KEY_WPA_AUTHSELS");
        if (!result)
        {
          goto LABEL_61;
        }

        v20 = result;
        result = CFArrayGetCount(result);
        if (result < 1)
        {
          goto LABEL_61;
        }

        v21 = result;
        for (j = 0; j != v21; ++j)
        {
          result = CFArrayGetValueAtIndex(v20, j);
          if (result)
          {
            result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
            if (result)
            {
              if (v26 < valuePtr)
              {
                v26 = valuePtr;
              }
            }
          }
        }

        v15 = v26;
        if (!v26)
        {
          goto LABEL_61;
        }
      }

      if (v15 == 1)
      {
        goto LABEL_74;
      }

      if (v15 == 2)
      {
        *(a2 + 40) = 2;
        goto LABEL_63;
      }
    }

LABEL_61:
    v24 = 0xFFFFFFFF0000FFFFLL;
    goto LABEL_62;
  }

  v12 = CFDictionaryGetValue(a1, @"WEP");
  result = makeBoolRef(v12);
  v13 = *MEMORY[0x277CBED28];
  *(a2 + 40) = 0;
  if (result == v13)
  {
    result = CFDictionaryGetValue(a1, @"WEP_AUTH_Flags");
    if (result)
    {
      valuePtr = 0;
      result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }

    else
    {
      v16 = 1;
    }

    goto LABEL_35;
  }

LABEL_9:
  *(a2 + 44) = 0;
LABEL_63:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFDictionary *_getMFPCaps(const __CFDictionary *a1, _BYTE *a2, _BYTE *a3)
{
  result = CFDictionaryGetValue(a1, @"RSN_IE");
  v7 = result;
  if (result)
  {
    result = CFDictionaryGetValue(a1, @"80211W_ENABLED");
    if (result && (result = CFEqual(result, *MEMORY[0x277CBED28]), result) && (result = CFDictionaryGetValue(v7, @"IE_KEY_RSN_CAPS")) != 0)
    {
      v8 = result;
      Value = CFDictionaryGetValue(result, @"MFP_REQUIRED");
      if (Value)
      {
        LOBYTE(v7) = CFBooleanGetValue(Value);
      }

      else
      {
        LOBYTE(v7) = 0;
      }

      result = CFDictionaryGetValue(v8, @"MFP_CAPABLE");
      if (result)
      {
        result = CFBooleanGetValue(result);
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  if (a2)
  {
    *a2 = result;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

const __CFDictionary *_getPhyMode(const __CFDictionary *result, void *a2)
{
  if (a2)
  {
    result = CFDictionaryGetValue(result, @"PHY_MODE");
    if (result)
    {

      return CFNumberGetValue(result, kCFNumberSInt32Type, a2);
    }
  }

  return result;
}

uint64_t _buildWPAIEForAssocation(CFDictionaryRef theDict, uint64_t a2, __int16 *a3, _BYTE *a4, int a5, int a6)
{
  v49 = *MEMORY[0x277D85DE8];
  result = 4294963396;
  if (!a2 || !a3)
  {
    goto LABEL_72;
  }

  if (CFDictionaryGetValue(theDict, @"RSN_IE") && (a4[1] & 0x40) != 0)
  {
    valuePtr = 0;
    v46 = 0;
    Value = CFDictionaryGetValue(theDict, @"RSN_IE");
    if (!Value)
    {
      goto LABEL_7;
    }

    v14 = Value;
    _getMFPCaps(theDict, &v46 + 1, &v46);
    *a2 = 48;
    *(a2 + 2) = 1;
    v15 = CFDictionaryGetValue(v14, @"IE_KEY_RSN_MCIPHER");
    if (!v15 || !CFNumberGetValue(v15, kCFNumberSInt32Type, &valuePtr))
    {
      goto LABEL_7;
    }

    result = 4294963396;
    if (valuePtr > 4)
    {
      switch(valuePtr)
      {
        case 5:
          if ((*a4 & 1) == 0)
          {
            goto LABEL_71;
          }

          v16 = &_rsnSuitWEP104;
          break;
        case 8:
          result = 4294963393;
          if (a6 || (a4[9] & 0x10) == 0)
          {
            goto LABEL_72;
          }

          v16 = &_rsnSuitGCMP;
          break;
        case 9:
          result = 4294963393;
          if (a6 || (a4[9] & 0x10) == 0)
          {
            goto LABEL_72;
          }

          v16 = &_rsnSuitGCMP256;
          break;
        default:
          goto LABEL_72;
      }
    }

    else
    {
      switch(valuePtr)
      {
        case 1:
          if ((*a4 & 1) == 0)
          {
            goto LABEL_71;
          }

          v16 = &_rsnSuitWEP40;
          break;
        case 2:
          if ((*a4 & 2) == 0)
          {
            goto LABEL_71;
          }

          v16 = &_rsnSuitTKIP;
          break;
        case 4:
          if ((*a4 & 8) == 0)
          {
            goto LABEL_71;
          }

          v16 = &_rsnSuitCCMP;
          break;
        default:
          goto LABEL_72;
      }
    }

    *(a2 + 4) = *v16;
    *(a2 + 8) = 1;
    v21 = CFDictionaryGetValue(v14, @"IE_KEY_RSN_UCIPHERS");
    if (!v21)
    {
      goto LABEL_7;
    }

    v22 = v21;
    Count = CFArrayGetCount(v21);
    v47 = -1431655766;
    if (Count < 1)
    {
      goto LABEL_7;
    }

    v24 = Count;
    v25 = 0;
    v26 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v22, v25);
      if (!ValueAtIndex || !CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &v47) || v47 <= v26)
      {
        goto LABEL_58;
      }

      if (v47 - 8 < 2)
      {
        if (a6 || (a4[9] & 0x10) == 0)
        {
          goto LABEL_58;
        }
      }

      else if (v47 == 4)
      {
        if ((*a4 & 8) == 0)
        {
          goto LABEL_58;
        }
      }

      else if (v47 != 2 || (*a4 & 2) == 0)
      {
        goto LABEL_58;
      }

      v26 = v47;
LABEL_58:
      if (v24 == ++v25)
      {
        v28 = v26 - 2;
        if (v26 - 2 > 7)
        {
          goto LABEL_7;
        }

        if (((0xC5u >> v28) & 1) == 0)
        {
          goto LABEL_7;
        }

        *(a2 + 10) = *off_27978F158[v28];
        *(a2 + 14) = 1;
        v29 = a5 - 1;
        if ((a5 - 1) > 0x18 || ((0x18219BFu >> v29) & 1) == 0)
        {
          goto LABEL_7;
        }

        *(a2 + 16) = **(&off_27978F198 + v29);
        if ((a4[6] & 0x10) != 0)
        {
          if (HIBYTE(v46))
          {
            if (v46)
            {
              v30 = 192;
            }

            else
            {
              v30 = 128;
            }
          }

          else
          {
            v30 = (16 * a4[9]) & 0x80;
          }
        }

        else
        {
          v30 = 0;
        }

        *(a2 + 20) = v30;
        v42 = a2 + 22;
        v43 = CFDictionaryGetValue(v14, @"IE_KEY_RSN_BCIPHER");
        if (!v43)
        {
          goto LABEL_117;
        }

        if (!CFNumberGetValue(v43, kCFNumberSInt32Type, &v47))
        {
          goto LABEL_7;
        }

        v44 = v47;
        if (!v47)
        {
          goto LABEL_117;
        }

        *(a2 + 22) = 0;
        if (v44 > 11)
        {
          if (v44 == 12)
          {
            v45 = 212602624;
          }

          else
          {
            if (v44 != 13)
            {
              goto LABEL_113;
            }

            v45 = 229379840;
          }
        }

        else
        {
          if (v44 != 6)
          {
            if (v44 == 11)
            {
              v45 = 195825408;
              goto LABEL_116;
            }

LABEL_113:
            v42 = a2 + 24;
            syslog(3, "%s: unknown BIP type %d\n", "_buildRSNIE", v44);
LABEL_117:
            if (v42 - a2 > 258)
            {
              result = 4294963395;
              goto LABEL_72;
            }

            result = 0;
            *(a2 + 1) = v42 - a2 - 2;
            v41 = (v42 - a2 - 2) + 2;
LABEL_97:
            *a3 = v41;
            goto LABEL_72;
          }

          v45 = 111939328;
        }

LABEL_116:
        *(a2 + 24) = v45;
        v42 = a2 + 28;
        goto LABEL_117;
      }
    }
  }

  if (!CFDictionaryGetValue(theDict, @"WPA_IE"))
  {
    goto LABEL_7;
  }

  if ((a4[1] & 0x20) == 0)
  {
    goto LABEL_7;
  }

  valuePtr = 0;
  v17 = CFDictionaryGetValue(theDict, @"WPA_IE");
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = v17;
  *a2 = -35;
  *(a2 + 2) = 20480;
  *(a2 + 4) = 66034;
  v19 = CFDictionaryGetValue(v17, @"IE_KEY_WPA_MCIPHER");
  if (!v19 || !CFNumberGetValue(v19, kCFNumberSInt32Type, &valuePtr))
  {
    goto LABEL_7;
  }

  result = 4294963396;
  if (valuePtr > 3)
  {
    if (valuePtr == 4)
    {
      if ((*a4 & 8) == 0)
      {
        goto LABEL_71;
      }

      v20 = &_wpaSuitCCMP;
    }

    else
    {
      if (valuePtr != 5)
      {
        goto LABEL_72;
      }

      if ((*a4 & 1) == 0)
      {
        goto LABEL_71;
      }

      v20 = &_wpaSuitWEP104;
    }
  }

  else
  {
    if (valuePtr != 1)
    {
      if (valuePtr != 2)
      {
        goto LABEL_72;
      }

      if ((*a4 & 2) != 0)
      {
        v20 = &_wpaSuitTKIP;
        goto LABEL_74;
      }

LABEL_71:
      result = 4294963393;
      goto LABEL_72;
    }

    if ((*a4 & 1) == 0)
    {
      goto LABEL_71;
    }

    v20 = &_wpaSuitWEP40;
  }

LABEL_74:
  *(a2 + 8) = *v20;
  *(a2 + 12) = 1;
  v32 = CFDictionaryGetValue(v18, @"IE_KEY_WPA_UCIPHERS");
  if (!v32)
  {
    goto LABEL_7;
  }

  v33 = v32;
  v34 = CFArrayGetCount(v32);
  v47 = -1431655766;
  if (v34 < 1)
  {
    goto LABEL_7;
  }

  v35 = v34;
  v36 = 0;
  v37 = 0;
  do
  {
    v38 = CFArrayGetValueAtIndex(v33, v36);
    if (v38 && CFNumberGetValue(v38, kCFNumberSInt32Type, &v47) && v47 > v37)
    {
      if (v47 == 4)
      {
        if ((*a4 & 8) != 0)
        {
          goto LABEL_83;
        }
      }

      else if (v47 == 2 && (*a4 & 2) != 0)
      {
LABEL_83:
        v37 = v47;
      }
    }

    ++v36;
  }

  while (v35 != v36);
  if (v37 == 2)
  {
    v39 = &_wpaSuitTKIP;
LABEL_92:
    *(a2 + 14) = *v39;
    *(a2 + 18) = 1;
    if (a5 == 1)
    {
      v40 = &_wpaAuth8021xUnspec;
    }

    else
    {
      if (a5 != 2)
      {
        goto LABEL_7;
      }

      v40 = &_wpaAuthPSK;
    }

    result = 0;
    *(a2 + 20) = *v40;
    *(a2 + 1) = 22;
    v41 = 24;
    goto LABEL_97;
  }

  if (v37 == 4)
  {
    v39 = &_wpaSuitCCMP;
    goto LABEL_92;
  }

LABEL_7:
  result = 4294963396;
LABEL_72:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _waitForJoinResult(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    __strlcpy_chk();
    LODWORD(v6) = 21;
    v2 = 400;
    while (1)
    {
      usleep(0x4E20u);
      if (Apple80211RawGet(a1, &v5))
      {
        break;
      }

      if (DWORD1(v6))
      {
        result = _errorForAssociateResult(SDWORD1(v6));
        goto LABEL_8;
      }

      *(&v6 + 4) = 0;
      if (!--v2)
      {
        result = 4294963391;
        goto LABEL_8;
      }
    }

    result = *__error();
  }

  else
  {
    result = 4294963396;
  }

LABEL_8:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _joinWEPNetwork(uint64_t a1, uint64_t a2, char *__s, char a4, int a5)
{
  v8 = *(a2 + 32);
  if (a4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  result = _parsePassword(__s, v9, (v8 + 76), 0, (a4 & 2) == 0);
  if (!result)
  {
    if ((a4 & 4) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    *(v8 + 8) = v11;
    if (a4)
    {
      v12 = 5;
    }

    else
    {
      v12 = 13;
    }

    *(v8 + 64) = v12;
    *(v8 + 68) = v9;
    *(v8 + 72) = 15;
    if (Apple80211RawSet())
    {
      return 4294963394;
    }

    if (a5)
    {
      return 0;
    }

    if (*(a1 + 56) && (*(a1 + 21) & 1) != 0 && (*(a1 + 93) & 0x40) != 0)
    {
      CFRunLoopRunInMode(*MEMORY[0x277CBF058], 10.0, 0);
      return 0;
    }

    return _waitForJoinResult(a1);
  }

  return result;
}

uint64_t _initiateAutoWEPSequence(uint64_t a1, uint64_t a2, char *a3, int *a4, int *a5, int a6)
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v21 = 136315394;
    v22 = "_initiateAutoWEPSequence";
    v23 = 1024;
    v24 = v12;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: assocPhase %u\n", &v21, 0x12u);
  }

  v13 = *a4;
  v14 = 4294967196;
  if (*a4 <= 2)
  {
    if (v13 >= 2)
    {
      if (v13 != 2)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (_wepPasswordIs104BitHex(a3))
      {
        *a5 = 0;
        v14 = _joinWEPNetwork(a1, a2, a3, 0, a6);
        if ((v14 + 3912) > 7)
        {
          goto LABEL_37;
        }

        v15 = 1 << (v14 + 72);
        goto LABEL_18;
      }

      if (_wepPasswordIs40BitHex(a3))
      {
        *a5 = 1;
        v14 = _joinWEPNetwork(a1, a2, a3, 1, a6);
        if ((v14 + 3912) > 7)
        {
          goto LABEL_37;
        }

        v15 = 1 << (v14 + 72);
LABEL_18:
        if ((v15 & 0x85) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_19;
      }

      *a4 = 2;
    }

LABEL_19:
    *a5 = 2;
    v17 = _joinWEPNetwork(a1, a2, a3, 2, a6);
    v16 = v17;
    if (a6 || (v17 + 3912) > 7 || ((1 << (v17 + 72)) & 0x85) == 0)
    {
      v14 = v17;
      goto LABEL_37;
    }

    *a5 = 3;
    v14 = _joinWEPNetwork(a1, a2, a3, 3, 0);
    goto LABEL_24;
  }

  if (v13 != 3)
  {
    if (v13 != 4)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  *a5 = 3;
  v14 = _joinWEPNetwork(a1, a2, a3, 3, a6);
  if (a6)
  {
    goto LABEL_37;
  }

  v16 = -100;
LABEL_24:
  if ((v14 + 3912) > 7 || ((1 << (v14 + 72)) & 0x85) == 0)
  {
    goto LABEL_37;
  }

  if (v14 == -3910 && v16 == -3910)
  {
    v14 = 4294963386;
  }

  else
  {
    if (v14 != -3905 || v16 != -3905)
    {
      goto LABEL_37;
    }

    v14 = 4294963391;
  }

LABEL_32:
  if (_wepPasswordIs104BitHex(a3))
  {
    v18 = 4;
LABEL_36:
    *a5 = v18;
    v14 = _joinWEPNetwork(a1, a2, a3, v18, a6);
    goto LABEL_37;
  }

  if (_wepPasswordIs40BitHex(a3))
  {
    v18 = 5;
    goto LABEL_36;
  }

LABEL_37:
  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t _startAPMode(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v108 = *MEMORY[0x277D85DE8];
  bzero(&v72, 0x6E4uLL);
  v71 = 1;
  Value = CFDictionaryGetValue(a2, @"AP_MODE_AUTH_LOWER");
  if (!Value)
  {
    goto LABEL_93;
  }

  v97 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v95 = v7;
  v96 = v7;
  *__s = v7;
  v64 = v7;
  v65 = v7;
  v66 = v7;
  v67 = v7;
  v68 = v7;
  v69 = v7;
  v70 = v7;
  if (!CFNumberGetValue(Value, kCFNumberSInt16Type, v74))
  {
    goto LABEL_93;
  }

  v8 = CFDictionaryGetValue(a2, @"AP_MODE_AUTH_UPPER");
  if (v8)
  {
    if (!CFNumberGetValue(v8, kCFNumberSInt16Type, &v74[4]))
    {
      goto LABEL_93;
    }
  }

  v9 = CFDictionaryGetValue(a2, @"AP_MODE_MOVETOIOS_MIGRATION");
  v10 = *MEMORY[0x277CBED28];
  if (v9 && v9 == v10)
  {
    v73 = 1;
  }

  *&v74[8] = 1;
  v11 = CFDictionaryGetValue(a2, @"CHANNEL");
  if (!v11 || !CFNumberGetValue(v11, kCFNumberSInt32Type, &v75))
  {
    goto LABEL_93;
  }

  v12 = CFDictionaryGetValue(a2, @"CHANNEL_FLAGS");
  if (!v12 || !CFNumberGetValue(v12, kCFNumberSInt32Type, &v76))
  {
    if (v75 >= 0xF)
    {
      v13 = 1040;
    }

    else
    {
      v13 = 10;
    }

    v76 |= v13;
  }

  v14 = CFDictionaryGetValue(a2, @"AP_MODE_CYPHER_TYPE");
  if (!v14 || !CFNumberGetValue(v14, kCFNumberSInt32Type, &v79 + 4))
  {
    goto LABEL_93;
  }

  v15 = CFDictionaryGetValue(a2, @"AP_MODE_SSID_BYTES");
  if (v15)
  {
    v16 = v15;
    Length = CFDataGetLength(v15);
    if ((Length - 33) < 0xFFFFFFFFFFFFFFE0)
    {
      goto LABEL_93;
    }

    v77 = Length;
    CFDataGetBytePtr(v16);
  }

  else
  {
    v18 = CFDictionaryGetValue(a2, @"SSID");
    if (!v18)
    {
      goto LABEL_93;
    }

    buffer[32] = -86;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buffer = v19;
    *&buffer[16] = v19;
    if (!CFStringGetCString(v18, buffer, 33, 0x8000100u))
    {
      goto LABEL_93;
    }

    v77 = strlen(buffer);
  }

  __memcpy_chk();
  if (HIDWORD(v79))
  {
    v21 = CFDictionaryGetValue(a2, @"AP_MODE_KEY");
    if (!v21)
    {
      goto LABEL_93;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    *__s = 0u;
    v64 = 0u;
    if (!CFStringGetCString(v21, __s, 128, 0x8000100u))
    {
      goto LABEL_93;
    }

    v22 = *&v74[4];
    if ((*&v74[4] & 0x1000) != 0)
    {
      if ((*(a1 + 97) & 8) != 0)
      {
        HIDWORD(v79) = 10;
        v23 = CFDictionaryGetValue(a2, @"AP_MODE_TRANS_DISABLED_FLAGS");
        if (v23)
        {
          if (!CFNumberGetValue(v23, kCFNumberSInt16Type, &v94))
          {
            goto LABEL_93;
          }

          syslog(3, "%s: SAE transition disable mode set to %d", "_startAPMode", v94);
        }
      }

      else
      {
        *&v74[4] &= ~0x1000u;
        if ((v22 & 0xFFFFEFFF) == 0)
        {
          syslog(3, "%s: SAE-only mode but device not supporting SAE", "_startAPMode");
LABEL_91:
          v24 = 4294963393;
          goto LABEL_137;
        }
      }
    }
  }

  if (v77)
  {
    v24 = 4294963393;
    if (SHIDWORD(v79) <= 4)
    {
      if ((HIDWORD(v79) - 1) < 2)
      {
        v25 = _parsePassword(__s, SHIDWORD(v79), v81, 0, 0);
        if (v25)
        {
          goto LABEL_138;
        }

        if (HIDWORD(v79) == 2)
        {
          v26 = 13;
        }

        else
        {
          v26 = 5;
        }

        LODWORD(v79) = v26;
        v80 = 15;
      }

      else if (HIDWORD(v79))
      {
        if (HIDWORD(v79) != 3)
        {
          goto LABEL_137;
        }

        goto LABEL_49;
      }

LABEL_59:
      if (a3 != 24)
      {
        v72 = 2;
        v29 = CFDictionaryGetValue(a2, @"AP_MODE_FORCE_BI_100");
        if (v29 && v29 == v10)
        {
          v72 |= 0x100u;
        }

        v30 = CFDictionaryGetValue(a2, @"SOFTAP_SOFTAP_HIDDEN_NETWORK");
        if (v30 && v30 == v10)
        {
          v72 |= 0x200u;
        }

LABEL_69:
        v31 = CFDictionaryGetValue(a2, @"AP_MODE_IE_LIST");
        if (v31)
        {
          v32 = v31;
          v33 = CFDataGetLength(v31);
          v89 = v33;
          if (v33 > 0x400)
          {
            goto LABEL_93;
          }

          v109.length = v33 & 0x7FF;
          v109.location = 0;
          CFDataGetBytes(v32, v109, &v90);
        }

        v34 = CFDictionaryGetValue(a2, @"AP_MODE_CARPLAY");
        if (v34 && v34 == v10)
        {
          if (v89)
          {
            goto LABEL_93;
          }

          v91 = 0x2000;
          v90 = 0x2000040A00008DDLL;
          v89 = 10;
        }

        v35 = CFDictionaryGetValue(a2, @"AP_MODE_PHY_MODE");
        if (!v35 || !CFNumberGetValue(v35, kCFNumberSInt32Type, &v82))
        {
          v82 = 1;
        }

        v36 = CFDictionaryGetValue(a2, @"AP_MODE_MFPC");
        if (v36)
        {
          CFNumberGetValue(v36, kCFNumberSInt16Type, &v92);
        }

        else if ((*&v74[4] & 0x1000) != 0)
        {
          if (*&v74[4] == 4096)
          {
            v37 = 192;
          }

          else
          {
            v37 = 128;
          }

          v92 = v37;
        }

        v38 = CFDictionaryGetValue(a2, @"AP_MODE_H2E");
        if (v38)
        {
          CFNumberGetValue(v38, kCFNumberSInt16Type, &v93);
        }

        else
        {
          v93 = (*(a1 + 100) & 8) != 0;
        }

        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        __strlcpy_chk();
        LODWORD(v96) = a3;
        *(&v96 + 4) = 0x6E800000001;
        v97 = &v71;
        if (Apple80211RawSet())
        {
          if (*__error() == 6)
          {
            goto LABEL_91;
          }

          if (*__error() == 22)
          {
            goto LABEL_93;
          }

          v24 = *__error();
          if (v24)
          {
            goto LABEL_137;
          }
        }

        if ((*&v74[4] & 0x140A) != 0 && (*(a1 + 95) & 0x20) == 0)
        {
          v106 = -86;
          *&v39 = 0xAAAAAAAAAAAAAAAALL;
          *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v105[0] = v39;
          v105[1] = v39;
          valuePtr = 0;
          v104[14] = v39;
          v104[15] = v39;
          v104[12] = v39;
          v104[13] = v39;
          v104[10] = v39;
          v104[11] = v39;
          v104[8] = v39;
          v104[9] = v39;
          v104[6] = v39;
          v104[7] = v39;
          v104[4] = v39;
          v104[5] = v39;
          v104[2] = v39;
          v104[3] = v39;
          v104[0] = v39;
          v104[1] = v39;
          v103 = 0;
          v101 = 0u;
          v102 = 0u;
          memset(v100, 0, 21);
          v40 = v77;
          __memcpy_chk();
          *(v105 + v40) = 0;
          if (v75 >= 0xF)
          {
            v41 = "a";
          }

          else
          {
            v41 = "g";
          }

          __strlcpy_chk();
          v103 = v100;
          LODWORD(v102) = 12;
          DWORD2(v102) = 21;
          if (Apple80211RawGet(a1, &v101))
          {
            v24 = *__error();
            if (!v24)
            {
              goto LABEL_137;
            }

            goto LABEL_136;
          }

          v42 = *&v74[4];
          if ((v74[4] & 0xA) != 0)
          {
            v43 = "WPA-PSK";
          }

          else
          {
            v43 = " ";
          }

          v44 = v92 != 0;
          if ((*&v74[4] & 0x1000) != 0)
          {
            if ((v74[4] & 8) != 0)
            {
              v44 = 1;
            }

            else
            {
              v44 = 2;
            }

            if ((v74[4] & 8) != 0)
            {
              v43 = "WPA-PSK WPA3-SAE";
            }

            else
            {
              v43 = "WPA3-SAE";
            }

            v61 = (v100[12] >> 3) & 1;
            v45 = 2;
          }

          else
          {
            v61 = 0;
            v45 = (v74[4] & 8) >> 2;
          }

          v46 = v100[2];
          v47 = CFDictionaryGetValue(a2, @"AP_MODE_KEY");
          if (!v47)
          {
            v24 = 4294963396;
LABEL_136:
            v97 = 0;
            v95 = 0u;
            v96 = 0u;
            __strlcpy_chk();
            *&v96 = 0x200000019;
            Apple80211RawSet();
            goto LABEL_137;
          }

          v48 = v47;
          v60 = v43;
          v49 = CFStringGetLength(v47);
          v24 = 4294963396;
          if (!v49 || v49 > 255 || !CFStringGetCString(v48, v104, 256, 0x8000100u))
          {
            goto LABEL_136;
          }

          v50 = v45 | (v42 >> 1) & 1;
          v51 = "CCMP";
          if ((*&v74[4] & 0x1008) == 0)
          {
            v51 = "TKIP";
          }

          if ((~*&v74[4] & 0xA) != 0)
          {
            v52 = v51;
          }

          else
          {
            v52 = "TKIP CCMP";
          }

          v53 = CFDictionaryGetValue(a2, @"AP_MODE_TRANS_DISABLED_FLAGS");
          if (v53)
          {
            CFNumberGetValue(v53, kCFNumberSInt32Type, &valuePtr);
            v54 = valuePtr;
          }

          else
          {
            v54 = 0;
          }

          memset(buffer, 170, 0x400uLL);
          if (snprintf(buffer, 0x400uLL, "interface=%s\nssid=%s\nhw_mode=%s\nchannel=%u\nmacaddr_acl=0\nauth_algs=1\nwme_enabled=%u\neapol_key_index_workaround=0\nown_ip_addr=127.0.0.1\nwpa=%u\nwpa_passphrase=%s\nwpa_key_mgmt=%s\nwpa_pairwise=%s\nwpa_group_rekey=3600\nieee80211w=%u\nh2e=%u\ntsn_disabled_flags=%u\n", "ap1", v105, v41, v75, (v46 >> 1) & 1, v50, v104, v60, v52, v44, v61, v54) > 0x3FF)
          {
            v24 = 4294963394;
            goto LABEL_136;
          }

          v55 = fopen("/var/run/hostapd.conf", "w");
          fputs(buffer, v55);
          fclose(v55);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v99 = "_startHostAPD";
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Trying to launch hostapd process\n", buf, 0xCu);
          }

          mach_service = xpc_connection_create_mach_service("com.apple.wifi.hostapd", 0, 2uLL);
          *(a1 + 2088) = mach_service;
          if (!mach_service)
          {
            syslog(3, "%s: failed to start hostapd\n", "_startHostAPD");
            v24 = 4294963367;
            goto LABEL_136;
          }

          xpc_connection_set_event_handler(mach_service, &__block_literal_global_453);
          xpc_connection_activate(*(a1 + 2088));
          v57 = xpc_dictionary_create(0, 0, 0);
          xpc_connection_send_message_with_reply(*(a1 + 2088), v57, 0, &__block_literal_global_456);
          xpc_release(v57);
        }

        v24 = 0;
        goto LABEL_137;
      }

      v72 = 1;
      if ((v74[4] & 8) == 0)
      {
        goto LABEL_69;
      }

      v25 = Apple80211ParseWPAPassword(__s, v81, v20, 0, v78, v77);
      if (!v25)
      {
        v79 = 0x600000020;
        v83 = 0x4AC0F0000011430;
        v84 = 1;
        v85 = 78384896;
        v86 = 1;
        v87 = 44830464;
        v88 = 8;
        goto LABEL_69;
      }

LABEL_138:
      v24 = v25;
      goto LABEL_137;
    }

    switch(HIDWORD(v79))
    {
      case 5:
LABEL_49:
        v25 = _parsePassword(__s, SHIDWORD(v79), v81, v78, 0);
        if (v25)
        {
          goto LABEL_138;
        }

        LODWORD(v79) = 32;
        goto LABEL_59;
      case 0xA:
        HIDWORD(v79) = 10;
        v27 = strlen(__s);
        v28 = v27;
        if (v27 - 64 <= 0xFFFFFFFFFFFFFFC7)
        {
          syslog(3, "%s: invalid key length %zd\n", "_startAPMode", v27);
          goto LABEL_93;
        }

        __strlcpy_chk();
        LODWORD(v79) = v28;
        goto LABEL_59;
      case 6:
        v25 = Apple80211ParseWPAPassword(__s, v81, v20, 0, v78, v77);
        if (v25)
        {
          goto LABEL_138;
        }

        v79 = 0x600000020;
        goto LABEL_59;
    }
  }

  else
  {
    v97 = 0;
    v95 = 0u;
    v96 = 0u;
    __strlcpy_chk();
    *&v96 = 0x200000019;
    if (!Apple80211RawSet())
    {
      goto LABEL_93;
    }

    if (*__error() == 6)
    {
      goto LABEL_91;
    }

    if (*__error() == 22)
    {
LABEL_93:
      v24 = 4294963396;
      goto LABEL_137;
    }

    v24 = *__error();
  }

LABEL_137:
  v58 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t _parsePassword(char *__s, int a2, _OWORD *a3, char *a4, int a5)
{
  v42 = *MEMORY[0x277D85DE8];
  result = 4294963396;
  if (!__s || !a3)
  {
    goto LABEL_59;
  }

  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  if ((a2 - 1) <= 1)
  {
    v10 = strlen(__s);
    if (v10)
    {
      v11 = v10;
      if (a2 == 2)
      {
        v12 = 13;
      }

      else
      {
        v12 = 5;
      }

      if (a5 && v10 == v12)
      {
        v13 = a3;
        v14 = __s;
        v15 = v11;
LABEL_11:
        memcpy(v13, v14, v15);
LABEL_12:
        result = 0;
        goto LABEL_59;
      }

      v37 = 0xAAAAAAAAAAAAAAAALL;
      v20 = 10;
      if (a2 == 2)
      {
        v20 = 26;
      }

      if (v10 == v20 && strspn(__s, "0123456789abcdefABCDEF") == v10)
      {
        if (v11 == 10)
        {
          v21 = 5;
        }

        else
        {
          v21 = 13;
        }

        v22 = _ParseHexEncodedData(__s, v11, v21, a3, &v37);
        result = 4294967196;
        if (!v22 || v37 != v21)
        {
          goto LABEL_59;
        }

        goto LABEL_12;
      }

      v23 = 7;
      if (a2 == 2)
      {
        v23 = 15;
      }

      if (v11 == v23 && *__s == 34 && __s[v11 - 1] == 34)
      {
        v15 = v11 - 2;
        v14 = __s + 1;
        v13 = a3;
        goto LABEL_11;
      }

      v24 = 11;
      if (a2 == 2)
      {
        v24 = 27;
      }

      if (v11 == v24 && *__s == 36)
      {
        v25 = strspn(__s + 1, "0123456789abcdefABCDEF");
        if (v25 == v11 - 1)
        {
          v26 = v25;
          if (v11 == 11)
          {
            v27 = 5;
          }

          else
          {
            v27 = 13;
          }

          v28 = __s + 1;
          goto LABEL_54;
        }
      }

      v29 = 12;
      if (a2 == 2)
      {
        v29 = 28;
      }

      if (v11 == v29 && *__s == 48 && (__s[1] | 0x20) == 0x78)
      {
        v30 = strspn(__s + 2, "0123456789abcdefABCDEF");
        if (v30 == v11 - 2)
        {
          v26 = v30;
          if (v11 == 12)
          {
            v27 = 5;
          }

          else
          {
            v27 = 13;
          }

          v28 = __s + 2;
LABEL_54:
          v31 = _ParseHexEncodedData(v28, v26, v27, a3, &v37);
          result = 4294967196;
          if (!v31 || v37 != v27)
          {
            goto LABEL_59;
          }

          goto LABEL_12;
        }
      }

      if (!a5)
      {
        *__source = xmmword_2548C5050;
        v41 = 0;
        memset(md, 170, sizeof(md));
        if (v11 <= 0x3A)
        {
          v33 = malloc_type_malloc(v11 + 17, 0x100004077774924uLL);
          if (v33)
          {
            v34 = v33;
            *&v35 = 0xAAAAAAAAAAAAAAAALL;
            *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&c.data[13] = v35;
            *&c.data[6] = v35;
            *&c.data[10] = v35;
            *&c.Nl = v35;
            *&c.data[2] = v35;
            *&c.A = v35;
            strlcpy(v33, __s, v11 + 17);
            strlcat(v34, __source, v11 + 17);
            CC_MD5_Init(&c);
            v36 = strlen(v34);
            CC_MD5_Update(&c, v34, v36);
            CC_MD5_Final(md, &c);
            memset(&c, 0, sizeof(c));
            CC_MD5_Update(&c, md, 0x10u);
            CC_MD5_Final(md, &c);
            memset(&c, 0, sizeof(c));
            CC_MD5_Update(&c, md, 0x10u);
            CC_MD5_Final(md, &c);
            memcpy(a3, md, v12);
            bzero(v34, v11 + 17);
            free(v34);
            goto LABEL_12;
          }
        }
      }
    }

    result = 4294967196;
    goto LABEL_59;
  }

  if (a2 != 3)
  {
    result = 4294963393;
    goto LABEL_59;
  }

  if (!a4)
  {
LABEL_59:
    v32 = *MEMORY[0x277D85DE8];
    return result;
  }

  v17 = strlen(a4);
  v19 = *MEMORY[0x277D85DE8];

  return Apple80211ParseWPAPassword(__s, a3, v18, 0, a4, v17);
}

uint64_t _errorForAssociateResult(int a1)
{
  if ((a1 - 1) > 0x49)
  {
    return 4294963394;
  }

  else
  {
    return dword_2548C5C64[a1 - 1];
  }
}

uint64_t _wepPasswordIs104BitHex(uint64_t a1)
{
  v2 = strlen(a1);
  if (v2 <= 25)
  {
    if (v2 == 13 || v2 == 15 && *a1 == 34 && *(a1 + 14) == 34)
    {
      return 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 28:
        if (*a1 != 48 || (*(a1 + 1) | 0x20) != 0x78)
        {
          return 0;
        }

        v3 = (a1 + 2);
        break;
      case 27:
        if (*a1 != 36)
        {
          return 0;
        }

        v3 = (a1 + 1);
        break;
      case 26:
        v3 = a1;
        break;
      default:
        return 0;
    }

    if (strspn(v3, "0123456789abcdefABCDEF") == 26)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _wepPasswordIs40BitHex(uint64_t a1)
{
  v2 = strlen(a1);
  if (v2 <= 9)
  {
    if (v2 == 5 || v2 == 7 && *a1 == 34 && *(a1 + 6) == 34)
    {
      return 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 12:
        if (*a1 != 48 || (*(a1 + 1) | 0x20) != 0x78)
        {
          return 0;
        }

        v3 = (a1 + 2);
        break;
      case 11:
        if (*a1 != 36)
        {
          return 0;
        }

        v3 = (a1 + 1);
        break;
      case 10:
        v3 = a1;
        break;
      default:
        return 0;
    }

    if (strspn(v3, "0123456789abcdefABCDEF") == 10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _compareQueries(const __CFNumber *a1, const __CFNumber *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  valuePtr = -21846;
  v5 = -21846;
  if (CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr))
  {
    if (CFNumberGetValue(a2, kCFNumberSInt16Type, &v5))
    {
      if (valuePtr <= v5)
      {
        result = 0;
      }

      else
      {
        result = -1;
      }
    }

    else
    {
      result = -1;
    }
  }

  else
  {
    result = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _dispatchLeakyStatsEvent(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 4294963396;
  }

  v4 = 4294963396;
  if (a2 && a3 == 120)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = *MEMORY[0x277CBECE8];
      v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
      if (!v9)
      {
        v4 = 4294963395;
LABEL_20:
        CFRelease(v7);
        return v4;
      }

      v10 = v9;
      CFDictionaryAddValue(v7, @"LEAKY_AP_STATS_VER", v9);
      v11 = CFStringCreateWithBytes(v8, (a2 + 8), *(a2 + 4), 0x8000100u, 0);
      if (!v11)
      {
        v4 = 4294963395;
        v15 = v10;
LABEL_19:
        CFRelease(v15);
        goto LABEL_20;
      }

      v12 = v11;
      CFDictionaryAddValue(v7, @"LEAKY_AP_SSID", v11);
      v13 = ether_ntoa((a2 + 40));
      if (v13)
      {
        v14 = CFStringCreateWithCString(v8, v13, 0x8000100u);
        if (v14)
        {
          CFDictionaryAddValue(v7, @"LEAKY_AP_BSSID", v14);
          v15 = CFDataCreate(v8, (a2 + 48), 72);
          if (v15)
          {
            CFDictionaryAddValue(v7, @"LEAKY_AP_LEARNED_DATA", v15);
            (*(a1 + 72))(0, a1, 81, v7, 8, *(a1 + 80));
            v4 = 0;
            goto LABEL_16;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v4 = 4294963395;
LABEL_16:
      CFRelease(v10);
      CFRelease(v12);
      if (v14)
      {
        CFRelease(v14);
      }

      if (!v15)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    return 4294963395;
  }

  return v4;
}

void _dispatchBGScanNetworkDiscoveredEvent(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 < 8)
    {
      return;
    }

    if (56 * *(a2 + 4) + 8 != a3)
    {
      return;
    }

    v5 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      return;
    }

    v7 = Mutable;
    if (*(a2 + 4) >= 1)
    {
      v22 = a1;
      v8 = 0;
      v9 = (a2 + 48);
      while (1)
      {
        v10 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v10)
        {
          goto LABEL_35;
        }

        v11 = v10;
        v12 = *v9[-6].octet;
        if (v12 && v9[-6].octet[4])
        {
          v13 = CFStringCreateWithBytes(v5, &v9[-6].octet[4], v12, 0x8000100u, 0);
          v14 = CFDataCreate(v5, &v9[-6].octet[4], *v9[-6].octet);
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        v15 = ether_ntoa(v9);
        if (v15)
        {
          v16 = CFStringCreateWithCString(v5, v15, 0x8000100u);
          if (v16)
          {
            v17 = CFNumberCreate(v5, kCFNumberSInt16Type, &v9[1].octet[2]);
            if (v17)
            {
              v18 = v17;
              CFDictionarySetValue(v11, @"RSSI", v17);
              CFRelease(v18);
              v19 = CFNumberCreate(v5, kCFNumberSInt32Type, &v9[2]);
              if (v19)
              {
                v20 = v19;
                CFDictionarySetValue(v11, @"AGE", v19);
                CFRelease(v20);
                CFDictionarySetValue(v11, @"BSSID", v16);
                if (v14)
                {
                  CFDictionarySetValue(v11, @"SSID", v14);
                }

                if (v13)
                {
                  CFDictionarySetValue(v11, @"SSID_STR", v13);
                }

                CFArrayAppendValue(v7, v11);
              }
            }

            v21 = 1;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
          v16 = 0;
        }

        CFRelease(v11);
        if (v14)
        {
          CFRelease(v14);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if ((v21 & 1) == 0)
        {
          goto LABEL_35;
        }

        ++v8;
        v9 = (v9 + 56);
        if (v8 >= *(a2 + 4))
        {
          a1 = v22;
          break;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  (*(a1 + 72))(0, a1, 31, v7, 8, *(a1 + 80));
LABEL_35:
  if (v7)
  {

    CFRelease(v7);
  }
}

void _dispatchSIBEvent(uint64_t a1, _DWORD *a2, int a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v90 = 0;
  if (a2)
  {
    if (a3 == 176)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v7)
        {
LABEL_72:
          CFRelease(v6);
          goto LABEL_73;
        }

        v8 = v7;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v86 = *a2;
          *valuePtr = 136315394;
          *&valuePtr[4] = "_dispatchSIBEvent";
          v92 = 1024;
          v93 = v86;
          _os_log_debug_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s: processing SIB event of type: %d\n", valuePtr, 0x12u);
        }

        v9 = *a2;
        if (*a2 > 4)
        {
          if (v9 > 6)
          {
            if (v9 == 7)
            {
              *valuePtr = 18;
              v80 = *MEMORY[0x277CBECE8];
              v81 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, valuePtr);
              if (v81)
              {
                v12 = v81;
                v90 = a2[1];
                v82 = CFNumberCreate(v80, kCFNumberLongLongType, &v90);
                if (!v82)
                {
                  goto LABEL_70;
                }

                v83 = v82;
                CFDictionarySetValue(v8, @"BSP_CoexMode", v82);
                CFRelease(v83);
                v90 = a2[2];
                v23 = v80;
                goto LABEL_66;
              }

LABEL_71:
              CFRelease(v8);
              goto LABEL_72;
            }

            if (v9 == 8)
            {
              *valuePtr = 19;
              v43 = *MEMORY[0x277CBECE8];
              v44 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, valuePtr);
              if (v44)
              {
                v12 = v44;
                v90 = *(a2 + 4);
                v45 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                if (v45)
                {
                  v46 = v45;
                  CFDictionarySetValue(v8, @"BSP_LQM_Overflowed", v45);
                  CFRelease(v46);
                  v90 = a2[2];
                  v47 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                  if (v47)
                  {
                    v48 = v47;
                    CFDictionarySetValue(v8, @"BSP_LQM_TimeToTST", v47);
                    CFRelease(v48);
                    v90 = a2[3];
                    v49 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                    if (v49)
                    {
                      v50 = v49;
                      CFDictionarySetValue(v8, @"BSP_LQM_SampleDurationMS", v49);
                      CFRelease(v50);
                      v90 = a2[4];
                      v51 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                      if (v51)
                      {
                        v52 = v51;
                        CFDictionarySetValue(v8, @"BSP_LQM_IsScanActive", v51);
                        CFRelease(v52);
                        v90 = a2[5];
                        v53 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                        if (v53)
                        {
                          v54 = v53;
                          CFDictionarySetValue(v8, @"BSP_LQM_IsP2PActive", v53);
                          CFRelease(v54);
                          v90 = a2[6];
                          v55 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                          if (v55)
                          {
                            v56 = v55;
                            CFDictionarySetValue(v8, @"BSP_LQM_TriggerCount", v55);
                            CFRelease(v56);
                            v90 = a2[7];
                            v57 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                            if (v57)
                            {
                              v58 = v57;
                              CFDictionarySetValue(v8, @"BSP_LQM_MutePercentage", v57);
                              CFRelease(v58);
                              v90 = a2[8];
                              v59 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                              if (v59)
                              {
                                v60 = v59;
                                CFDictionarySetValue(v8, @"BSP_LQM_MaxMuteMS", v59);
                                CFRelease(v60);
                                v90 = a2[9];
                                v61 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                                if (v61)
                                {
                                  v62 = v61;
                                  CFDictionarySetValue(v8, @"BSP_LQM_AvgMuteMS", v61);
                                  CFRelease(v62);
                                  v90 = a2[10];
                                  v63 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                                  if (v63)
                                  {
                                    v64 = v63;
                                    CFDictionarySetValue(v8, @"BSP_LQM_ErrorPercentage", v63);
                                    CFRelease(v64);
                                    v90 = a2[11];
                                    v65 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                                    if (v65)
                                    {
                                      v66 = v65;
                                      CFDictionarySetValue(v8, @"BSP_LQM_TimeoutPercentageOfTriggers", v65);
                                      CFRelease(v66);
                                      v90 = a2[12];
                                      v67 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                                      if (v67)
                                      {
                                        v68 = v67;
                                        CFDictionarySetValue(v8, @"BSP_LQM_RejectOrFailPercentageOfTriggers", v67);
                                        CFRelease(v68);
                                        v90 = a2[13];
                                        v69 = CFNumberCreate(v43, kCFNumberLongLongType, &v90);
                                        if (v69)
                                        {
                                          v29 = v69;
                                          v30 = @"BSP_LQM_MaxConsecutiveFails";
                                          goto LABEL_68;
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

                goto LABEL_70;
              }

              goto LABEL_71;
            }
          }

          else
          {
            if (v9 == 5)
            {
              *valuePtr = 15;
              v71 = *MEMORY[0x277CBECE8];
              v72 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, valuePtr);
              if (v72)
              {
                v12 = v72;
                v90 = a2[2];
                v73 = CFNumberCreate(v71, kCFNumberLongLongType, &v90);
                if (v73)
                {
                  v74 = v73;
                  CFDictionarySetValue(v8, @"BSP_ReasonCode", v73);
                  CFRelease(v74);
                  v90 = a2[1];
                  v75 = CFNumberCreate(v71, kCFNumberLongLongType, &v90);
                  if (v75)
                  {
                    v29 = v75;
                    v30 = @"BSP_BTSubband";
                    goto LABEL_68;
                  }
                }

                goto LABEL_70;
              }

              goto LABEL_71;
            }

            if (v9 == 6)
            {
              *valuePtr = 16;
              v24 = *MEMORY[0x277CBECE8];
              v25 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, valuePtr);
              if (v25)
              {
                v12 = v25;
                v90 = a2[2];
                v26 = CFNumberCreate(v24, kCFNumberLongLongType, &v90);
                if (v26)
                {
                  v27 = v26;
                  CFDictionarySetValue(v8, @"BSP_ReasonCode", v26);
                  CFRelease(v27);
                  v90 = a2[1];
                  v28 = CFNumberCreate(v24, kCFNumberLongLongType, &v90);
                  if (v28)
                  {
                    v29 = v28;
                    v30 = @"BSP_TargetBand";
                    goto LABEL_68;
                  }
                }

                goto LABEL_70;
              }

              goto LABEL_71;
            }
          }

LABEL_74:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *valuePtr = 136315394;
            *&valuePtr[4] = "_dispatchSIBEvent";
            v92 = 1024;
            v93 = v9;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - : Unhandled apple80211_bsp_event_type event from WiFi Driver. Event type: %d", valuePtr, 0x12u);
          }

          goto LABEL_71;
        }

        if (v9 > 2)
        {
          if (v9 != 3)
          {
            if (v9 != 4)
            {
              goto LABEL_74;
            }

            *valuePtr = 14;
            v31 = *MEMORY[0x277CBECE8];
            v32 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, valuePtr);
            if (!v32)
            {
              goto LABEL_71;
            }

            v12 = v32;
            if (a2[1])
            {
              v87 = a1;
              v88 = v32;
              v89 = v6;
              v33 = 0;
              v34 = a2 + 4;
              while (1)
              {
                v35 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (!v35)
                {
                  break;
                }

                v36 = v35;
                v37 = CFStringCreateWithFormat(v31, 0, @"%u", *(v34 - 2));
                if (!v37)
                {
                  goto LABEL_78;
                }

                v38 = v37;
                v90 = *(v34 - 1);
                v39 = CFNumberCreate(v31, kCFNumberLongLongType, &v90);
                if (!v39 || (v40 = v39, CFDictionarySetValue(v36, @"BSP_ChqHealth", v39), CFRelease(v40), v90 = *v34, (v41 = CFNumberCreate(v31, kCFNumberLongLongType, &v90)) == 0))
                {
                  CFRelease(v38);
LABEL_78:
                  CFRelease(v36);
                  break;
                }

                v42 = v41;
                CFDictionarySetValue(v36, @"BSP_ChqAgeMs", v41);
                CFRelease(v42);
                CFDictionarySetValue(v8, v38, v36);
                CFRelease(v38);
                CFRelease(v36);
                ++v33;
                v34 += 3;
                if (v33 >= a2[1])
                {
                  v12 = v88;
                  v6 = v89;
                  a1 = v87;
                  goto LABEL_69;
                }
              }

              v12 = v88;
              v6 = v89;
              goto LABEL_70;
            }

            v90 = 0;
            v78 = v31;
LABEL_61:
            v79 = CFNumberCreate(v78, kCFNumberLongLongType, &v90);
            if (v79)
            {
              v29 = v79;
              v30 = @"dummy";
              goto LABEL_68;
            }

LABEL_70:
            CFRelease(v12);
            goto LABEL_71;
          }

          v70 = 13;
        }

        else
        {
          if (v9 != 1)
          {
            if (v9 == 2)
            {
              *valuePtr = 12;
              v10 = *MEMORY[0x277CBECE8];
              v11 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, valuePtr);
              if (v11)
              {
                v12 = v11;
                v90 = a2[1];
                v13 = CFNumberCreate(v10, kCFNumberLongLongType, &v90);
                if (!v13)
                {
                  goto LABEL_70;
                }

                v14 = v13;
                CFDictionarySetValue(v8, @"BSP_CoexMode", v13);
                CFRelease(v14);
                v90 = a2[3];
                v15 = CFNumberCreate(v10, kCFNumberLongLongType, &v90);
                if (!v15)
                {
                  goto LABEL_70;
                }

                v16 = v15;
                CFDictionarySetValue(v8, @"BSP_BTSubband", v15);
                CFRelease(v16);
                v90 = a2[4];
                v17 = CFNumberCreate(v10, kCFNumberLongLongType, &v90);
                if (!v17)
                {
                  goto LABEL_70;
                }

                v18 = v17;
                CFDictionarySetValue(v8, @"BSP_SuccessCount", v17);
                CFRelease(v18);
                v90 = a2[6];
                v19 = CFNumberCreate(v10, kCFNumberLongLongType, &v90);
                if (!v19)
                {
                  goto LABEL_70;
                }

                v20 = v19;
                CFDictionarySetValue(v8, @"BSP_RejectCount", v19);
                CFRelease(v20);
                v90 = a2[5];
                v21 = CFNumberCreate(v10, kCFNumberLongLongType, &v90);
                if (!v21)
                {
                  goto LABEL_70;
                }

                v22 = v21;
                CFDictionarySetValue(v8, @"BSP_FailCount", v21);
                CFRelease(v22);
                v90 = a2[2];
                v23 = v10;
LABEL_66:
                v84 = CFNumberCreate(v23, kCFNumberLongLongType, &v90);
                if (v84)
                {
                  v29 = v84;
                  v30 = @"BSP_SIB_TimeToTST";
LABEL_68:
                  CFDictionarySetValue(v8, v30, v29);
                  CFRelease(v29);
LABEL_69:
                  CFDictionarySetValue(v6, @"BSP_EventType", v12);
                  CFDictionarySetValue(v6, @"BSP_EventParams", v8);
                  (*(a1 + 72))(0, a1, 192, v6, 8, *(a1 + 80));
                  goto LABEL_70;
                }

                goto LABEL_70;
              }

              goto LABEL_71;
            }

            goto LABEL_74;
          }

          v70 = 11;
        }

        *valuePtr = v70;
        v76 = *MEMORY[0x277CBECE8];
        v77 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, valuePtr);
        if (!v77)
        {
          goto LABEL_71;
        }

        v12 = v77;
        v90 = 0;
        v78 = v76;
        goto LABEL_61;
      }
    }
  }

LABEL_73:
  v85 = *MEMORY[0x277D85DE8];
}

void _dispatchLinkChangedEvent(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 0x20)
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, a2);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"LINK_CHANGED_IS_LINKDOWN", v8);
    v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
    if (!v10)
    {
      v15 = v9;
LABEL_28:
      CFRelease(v15);
      goto LABEL_29;
    }

    v11 = v10;
    CFDictionaryAddValue(v6, @"RSSI", v10);
    if (*a2)
    {
      v12 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 16));
      if (v12)
      {
        CFDictionaryAddValue(v6, @"LINKDOWN_IS_INVOL", v12);
        v13 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 20));
        if (v13)
        {
          CFDictionaryAddValue(v6, @"LINKDOWN_REASON_CODE", v13);
          v14 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 24));
          if (v14)
          {
            CFDictionaryAddValue(v6, @"LINKDOWN_SUBREASON_CODE", v14);
            goto LABEL_38;
          }

LABEL_17:
          v16 = 0;
          goto LABEL_18;
        }

LABEL_16:
        v14 = 0;
        goto LABEL_17;
      }

LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }

    if (*(a2 + 8))
    {
      v12 = CFNumberCreate(v7, kCFNumberSInt16Type, (a2 + 8));
      if (!v12)
      {
        goto LABEL_15;
      }

      CFDictionaryAddValue(v6, @"SNR", v12);
    }

    else
    {
      v12 = 0;
    }

    if (*(a2 + 10))
    {
      v13 = CFNumberCreate(v7, kCFNumberSInt16Type, (a2 + 10));
      if (!v13)
      {
        goto LABEL_16;
      }

      CFDictionaryAddValue(v6, @"NOISE", v13);
    }

    else
    {
      v13 = 0;
    }

    v14 = 0;
LABEL_38:
    v16 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 28));
    if (v16)
    {
      CFDictionaryAddValue(v6, @"LINK_DEBOUNCE_STATE", v16);
      v15 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 29));
      if (v15)
      {
        CFDictionaryAddValue(v6, @"LINK_DEBOUNCE_RESULT", v15);
        (*(a1 + 72))(0, a1, 4, v6, 8, *(a1 + 80));
      }

LABEL_19:
      CFRelease(v9);
      CFRelease(v11);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (!v15)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

LABEL_29:

  CFRelease(v6);
}

void _dispatchTxFailureHistoryEvent(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if (a3 <= 0x3B)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 136315394;
      v39 = "_dispatchTxFailureHistoryEvent";
      v40 = 1024;
      v41 = a3;
      v31 = MEMORY[0x277D86220];
      v32 = "%s:TxFailEvent with Insufficient DataLen:%u\n";
      v33 = 18;
    }

    else
    {
      v5 = a3 - 8;
      v36 = (a3 - 8) / 0x34;
      if ((a3 - 8) % 0x34)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        *buf = 67109120;
        LODWORD(v39) = v5;
        v31 = MEMORY[0x277D86220];
        v32 = "Invalid phyRateSeriesLen:%u \n";
      }

      else
      {
        v7 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_36;
          }

          *buf = 136315138;
          v39 = "_dispatchTxFailureHistoryEvent";
          v31 = MEMORY[0x277D86220];
          v32 = "%s:Failed to Allocate Memory for TxFail Dictionary\n";
LABEL_54:
          v33 = 12;
          goto LABEL_55;
        }

        if (v36 == *a2)
        {
          v9 = Mutable;
          v10 = CFNumberCreate(v7, kCFNumberSInt32Type, a2);
          if (v10)
          {
            v11 = v10;
            CFDictionarySetValue(v9, @"TX_FAILURE_PHYRATE_SERIES_COUNT", v10);
            CFRelease(v11);
            v12 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 1);
            if (v12)
            {
              v13 = v12;
              v34 = a1;
              CFDictionarySetValue(v9, @"TX_FAILURE_EVENT_SEQUENCE_NUMBER", v12);
              CFRelease(v13);
              v14 = 0;
              v15 = a2 + 2;
              v16 = (a2 + 3);
              theDict = v9;
              while (2)
              {
                v17 = *v15;
                valuePtr = BYTE1(*v15);
                v18 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
                if (v18)
                {
                  v19 = v18;
                  v20 = v16;
                  v21 = 12;
                  do
                  {
                    v22 = CFNumberCreate(v7, kCFNumberSInt32Type, v20);
                    if (!v22)
                    {
                      v9 = theDict;
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_35;
                      }

                      *buf = 136315138;
                      v39 = "_dispatchTxFailureHistoryEvent";
                      v28 = MEMORY[0x277D86220];
                      v29 = "%s:failCount allocation Failed!\n";
                      goto LABEL_34;
                    }

                    v23 = v22;
                    CFArrayAppendValue(v19, v22);
                    CFRelease(v23);
                    v20 += 4;
                    --v21;
                  }

                  while (v21);
                  switch(v17)
                  {
                    case 4u:
                      v9 = theDict;
                      v24 = theDict;
                      if (BYTE2(v17) == 1)
                      {
                        v25 = @"TX_FAILURE_PHYRATE_SERIES_11AC_1SS";
                      }

                      else
                      {
                        v25 = @"TX_FAILURE_PHYRATE_SERIES_11AC_2SS";
                      }

                      break;
                    case 2u:
                      v9 = theDict;
                      v24 = theDict;
                      if (BYTE2(v17) == 1)
                      {
                        v25 = @"TX_FAILURE_PHYRATE_SERIES_11N_1SS";
                      }

                      else
                      {
                        v25 = @"TX_FAILURE_PHYRATE_SERIES_11N_2SS";
                      }

                      break;
                    case 1u:
                      v9 = theDict;
                      v24 = theDict;
                      v25 = @"TX_FAILURE_PHYRATE_SERIES_LEGACY_RATES";
                      break;
                    default:
                      v9 = theDict;
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        LODWORD(v39) = v17;
                        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid RateIndexType:%u", buf, 8u);
                      }

LABEL_27:
                      CFRelease(v19);
                      if (!valuePtr)
                      {
LABEL_30:
                        v15 += 13;
                        ++v14;
                        v16 += 52;
                        if (v14 != v36)
                        {
                          continue;
                        }

                        goto LABEL_35;
                      }

                      v26 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
                      if (v26)
                      {
                        v27 = v26;
                        CFDictionarySetValue(v9, @"TX_FAILURE_PHYRATE_AMPDU_FRAMES", v26);
                        CFRelease(v27);
                        goto LABEL_30;
                      }

                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_35;
                      }

                      *buf = 136315138;
                      v39 = "_dispatchTxFailureHistoryEvent";
                      v28 = MEMORY[0x277D86220];
                      v29 = "%s:ampduNumRef allocation Failed!\n";
LABEL_34:
                      _os_log_impl(&dword_254882000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
                      goto LABEL_35;
                  }

                  CFDictionarySetValue(v24, v25, v19);
                  goto LABEL_27;
                }

                break;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v39 = "_dispatchTxFailureHistoryEvent";
                v28 = MEMORY[0x277D86220];
                v29 = "%s:array allocation Failed!\n";
                goto LABEL_34;
              }

LABEL_35:
              (*(v34 + 72))(0, v34, 89, v9, 8, *(v34 + 80));
              CFRelease(v9);
              goto LABEL_36;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_36;
            }

            *buf = 136315138;
            v39 = "_dispatchTxFailureHistoryEvent";
            v31 = MEMORY[0x277D86220];
            v32 = "%s:numRef allocation Failed!\n";
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_36;
            }

            *buf = 136315138;
            v39 = "_dispatchTxFailureHistoryEvent";
            v31 = MEMORY[0x277D86220];
            v32 = "%s:numRef allocation Failed!\n";
          }

          goto LABEL_54;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        *buf = 67109120;
        LODWORD(v39) = v5;
        v31 = MEMORY[0x277D86220];
        v32 = "Invalid phyRateSeriesLen:%u \n";
      }

      v33 = 8;
    }

LABEL_55:
    _os_log_impl(&dword_254882000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, v33);
  }

LABEL_36:
  v30 = *MEMORY[0x277D85DE8];
}

void _dispatchAsyncAssocEvent(uint64_t a1, _DWORD *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v83 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v3;
  v82 = v3;
  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v72 = "_dispatchAsyncAssocEvent";
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:join status is nil!\n", buf, 0xCu);
    }

    v42 = 1;
    v41 = -1;
LABEL_23:
    if (!*(a1 + 4) || (*a1 & 0x80000000) != 0 || !*(a1 + 344))
    {
      goto LABEL_101;
    }

    pthread_mutex_lock((a1 + 272));
    if (!v42)
    {
      goto LABEL_36;
    }

    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    __strlcpy_chk();
    LODWORD(v82) = 21;
    v43 = Apple80211RawGet(a1, &v81);
    if (v43)
    {
LABEL_72:
      v49 = v43;
      goto LABEL_73;
    }

    v41 = DWORD1(v82);
    if (DWORD1(v82) == 0xFFFF)
    {
      v44 = *(a1 + 1600);
      if (v44 <= 0x27)
      {
        if (!v44)
        {
          v45 = *(a1 + 1584);
          if (v45)
          {
            Current = CFAbsoluteTimeGetCurrent();
            CFRunLoopTimerSetNextFireDate(v45, Current + 0.2);
          }

          v47 = *(a1 + 1592);
          if (v47)
          {
            v48 = dispatch_time(0, 200000000);
            dispatch_source_set_timer(v47, v48, 0xBEBC200uLL, 0);
          }
        }

        ++*(a1 + 1600);
        goto LABEL_75;
      }

      v49 = 4294963391;
    }

    else
    {
LABEL_36:
      v49 = _errorForAssociateResult(v41);
    }

    v50 = *(a1 + 1584);
    if (v50)
    {
      v51 = CFAbsoluteTimeGetCurrent();
      CFRunLoopTimerSetNextFireDate(v50, v51 + 315360000.0);
    }

    v52 = *(a1 + 1592);
    if (v52)
    {
      v53 = dispatch_time(0, 315360000000000000);
      dispatch_source_set_timer(v52, v53, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    if (!*(a1 + 624))
    {
      goto LABEL_73;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v54 = *(a1 + 356);
      *buf = 136315906;
      v72 = "_dispatchAsyncAssocEvent";
      v73 = 1024;
      v74 = DWORD1(v82);
      v75 = 1024;
      v76 = v49;
      v77 = 1024;
      v78 = v54;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:asyncWEPAssoc: result/error [%d/%d], AssocPhase %u\n", buf, 0x1Eu);
    }

    if (!v49)
    {
      v49 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (a1 + 620));
      if (v49)
      {
        CFDictionarySetValue(*(a1 + 344), @"WEP_AUTH_Flags", v49);
        CFRelease(v49);
        v49 = 0;
      }

      goto LABEL_73;
    }

    if ((v49 + 3912) <= 7 && ((1 << (v49 + 72)) & 0x85) != 0)
    {
      v55 = *(a1 + 356);
      if (v55 == 2)
      {
        *(a1 + 616) = v49;
        goto LABEL_65;
      }

      if (v55 != 3 || ((v56 = *(a1 + 616), v49 == -3905) ? (v57 = v56 == -3905) : (v57 = 0), !v57 ? (v58 = 0) : (v58 = 1), v56 == -3910 ? (v59 = v49 == -3910) : (v59 = 0), v59 || (v58 & 1) != 0))
      {
LABEL_65:
        if ((v55 + 1) > 4)
        {
          v60 = v55 + 1;
        }

        else
        {
          v60 = 4;
        }

        if (v49 == -3910)
        {
          v61 = v60;
        }

        else
        {
          v61 = v55 + 1;
        }

        *(a1 + 356) = v61;
        v43 = _initiateAutoWEPSequence(a1, a1 + 632, (a1 + 360), (a1 + 356), (a1 + 620), 1);
        if (!v43)
        {
LABEL_75:
          pthread_mutex_unlock((a1 + 272));
          goto LABEL_101;
        }

        goto LABEL_72;
      }
    }

LABEL_73:
    v62 = *(a1 + 344);
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 624) = 0;
    *(a1 + 620) = 0;
    *(a1 + 356) = 0;
    pthread_mutex_unlock((a1 + 272));
    (*(a1 + 72))(v49, a1, 9, v62, 8, *(a1 + 80));
    if (v62)
    {
      CFRelease(v62);
    }

    goto LABEL_101;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v7 = Mutable;
    v69 = a1;
    v8 = 0;
    v9 = 0;
    v10 = a2[114];
    v67 = a2[114];
    v68 = a2[113];
    do
    {
      v11 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v11)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        *buf = 136315138;
        v72 = "_dispatchAsyncAssocEvent";
        v63 = MEMORY[0x277D86220];
        v64 = "%s:innerDict allocation Failed!\n";
        goto LABEL_78;
      }

      v12 = v11;
      v13 = CFDataCreate(v5, &a2[v8], 6);
      if (!v13)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        *buf = 136315394;
        v72 = "_dispatchAsyncAssocEvent";
        v73 = 1024;
        v74 = v9;
        v63 = MEMORY[0x277D86220];
        v64 = "%s:bssid at idx %d allocation Failed!\n";
        goto LABEL_99;
      }

      v14 = v13;
      CFDictionaryAddValue(v12, @"BSSID", v13);
      CFRelease(v14);
      v15 = CFNumberCreate(v5, kCFNumberSInt32Type, &a2[v8 + 3]);
      if (!v15)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        *buf = 136315394;
        v72 = "_dispatchAsyncAssocEvent";
        v73 = 1024;
        v74 = v9;
        v63 = MEMORY[0x277D86220];
        v64 = "%s:authStatus at idx %d allocation Failed!\n";
        goto LABEL_99;
      }

      v16 = v15;
      CFDictionaryAddValue(v12, @"AUTHEVENT_STATUS", v15);
      CFRelease(v16);
      v17 = CFNumberCreate(v5, kCFNumberSInt32Type, &a2[v8 + 4]);
      if (!v17)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        *buf = 136315394;
        v72 = "_dispatchAsyncAssocEvent";
        v73 = 1024;
        v74 = v9;
        v63 = MEMORY[0x277D86220];
        v64 = "%s:authReason at idx %d allocation Failed!\n";
        goto LABEL_99;
      }

      v18 = v17;
      CFDictionaryAddValue(v12, @"AUTHEVENT_REASON", v17);
      CFRelease(v18);
      v19 = CFNumberCreate(v5, kCFNumberSInt32Type, &a2[v8 + 5]);
      if (!v19)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        *buf = 136315394;
        v72 = "_dispatchAsyncAssocEvent";
        v73 = 1024;
        v74 = v9;
        v63 = MEMORY[0x277D86220];
        v64 = "%s:assocStatus at idx %d allocation Failed!\n";
        goto LABEL_99;
      }

      v20 = v19;
      CFDictionaryAddValue(v12, @"ASSOCEVENT_STATUS", v19);
      CFRelease(v20);
      v21 = CFNumberCreate(v5, kCFNumberSInt32Type, &a2[v8 + 6]);
      if (!v21)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        *buf = 136315394;
        v72 = "_dispatchAsyncAssocEvent";
        v73 = 1024;
        v74 = v9;
        v63 = MEMORY[0x277D86220];
        v64 = "%s:assocReason at idx %d allocation Failed!\n";
        goto LABEL_99;
      }

      v22 = v21;
      CFDictionaryAddValue(v12, @"ASSOCEVENT_REASON", v21);
      CFRelease(v22);
      v23 = CFNumberCreate(v5, kCFNumberSInt32Type, &a2[v8 + 7]);
      if (!v23)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        *buf = 136315394;
        v72 = "_dispatchAsyncAssocEvent";
        v73 = 1024;
        v74 = v9;
        v63 = MEMORY[0x277D86220];
        v64 = "%s:setSsidStatus at idx %d allocation Failed!\n";
        goto LABEL_99;
      }

      v24 = v23;
      CFDictionaryAddValue(v12, @"SETSSID_STATUS", v23);
      CFRelease(v24);
      v25 = CFNumberCreate(v5, kCFNumberSInt32Type, &a2[v8 + 8]);
      if (!v25)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        *buf = 136315394;
        v72 = "_dispatchAsyncAssocEvent";
        v73 = 1024;
        v74 = v9;
        v63 = MEMORY[0x277D86220];
        v64 = "%s:setSsidReason at idx %d allocation Failed!\n";
        goto LABEL_99;
      }

      v26 = v25;
      CFDictionaryAddValue(v12, @"SETSSID_REASON", v25);
      CFRelease(v26);
      v27 = CFNumberCreate(v5, kCFNumberSInt32Type, &a2[v8 + 9]);
      if (!v27)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        *buf = 136315394;
        v72 = "_dispatchAsyncAssocEvent";
        v73 = 1024;
        v74 = v9;
        v63 = MEMORY[0x277D86220];
        v64 = "%s:supplEvStatus at idx %d allocation Failed!\n";
        goto LABEL_99;
      }

      v28 = v27;
      CFDictionaryAddValue(v12, @"SUPPLICANTEVENT_STATUS", v27);
      CFRelease(v28);
      v29 = CFNumberCreate(v5, kCFNumberSInt32Type, &a2[v8 + 10]);
      if (!v29)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        *buf = 136315394;
        v72 = "_dispatchAsyncAssocEvent";
        v73 = 1024;
        v74 = v9;
        v63 = MEMORY[0x277D86220];
        v64 = "%s:supplEvReason at idx %d allocation Failed!\n";
        goto LABEL_99;
      }

      v30 = v29;
      CFDictionaryAddValue(v12, @"SUPPLICANTEVENT_REASON", v29);
      CFRelease(v30);
      v31 = CFNumberCreate(v5, kCFNumberSInt32Type, &a2[v8 + 2]);
      if (!v31)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        *buf = 136315394;
        v72 = "_dispatchAsyncAssocEvent";
        v73 = 1024;
        v74 = v9;
        v63 = MEMORY[0x277D86220];
        v64 = "%s:flags at idx %d allocation Failed!\n";
        goto LABEL_99;
      }

      v32 = v31;
      CFDictionaryAddValue(v12, @"JOIN_STATUS_SUBSTATE_FLAGS", v31);
      CFRelease(v32);
      CFArrayAppendValue(v7, v12);
      CFRelease(v12);
      ++v9;
      v8 += 11;
    }

    while (v8 != 110);
    a1 = v69;
    CFDictionarySetValue(*(v69 + 344), @"JOIN_STATUS_SUBSTATE_INFO", v7);
    CFRelease(v7);
    v33 = a2[112];
    v34 = v33 - 1000;
    v35 = v33 - 975;
    if (v34 >= 0xB)
    {
      v36 = 0xFFFF;
    }

    else
    {
      v36 = v35;
    }

    valuePtr = _errorForAssociateResult(v36);
    v37 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
    if (v37)
    {
      v38 = v37;
      CFDictionarySetValue(*(v69 + 344), @"JOIN_EXTENDED_STATUS", v37);
      CFRelease(v38);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v39 = a2[110];
        v40 = a2[112];
        *buf = 136316162;
        v72 = "_dispatchAsyncAssocEvent";
        v73 = 1024;
        v74 = 6531;
        v75 = 1024;
        v76 = valuePtr;
        v77 = 1024;
        v78 = v39;
        v79 = 1024;
        v80 = v40;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TRACER:%s@%d:%d join_status:%d/%d\n", buf, 0x24u);
      }

      v41 = v68;
      v42 = v67 == 0;
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v72 = "_dispatchAsyncAssocEvent";
      v73 = 1024;
      v74 = 6526;
      v63 = MEMORY[0x277D86220];
      v64 = "%s@%d:nRef allocation Failed!\n";
LABEL_99:
      v65 = 18;
      goto LABEL_100;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v72 = "_dispatchAsyncAssocEvent";
    v63 = MEMORY[0x277D86220];
    v64 = "%s:array allocation Failed!\n";
LABEL_78:
    v65 = 12;
LABEL_100:
    _os_log_impl(&dword_254882000, v63, OS_LOG_TYPE_DEFAULT, v64, buf, v65);
  }

LABEL_101:
  v66 = *MEMORY[0x277D85DE8];
}

void _dispatchGasResults()
{
  v0 = MEMORY[0x28223BE20]();
  v125 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
LABEL_180:
    v105 = *MEMORY[0x277D85DE8];
    return;
  }

  v2 = v1;
  v3 = v0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v6 = Mutable;
    pthread_mutex_lock((v3 + 1608));
    v7 = v2[2];
    if (v7 > 1)
    {
      switch(v7)
      {
        case 2:
          v8 = 4294963391;
          goto LABEL_179;
        case 4:
          v8 = 82;
          goto LABEL_179;
        case 5:
          v8 = 4294963304;
          goto LABEL_179;
      }

      goto LABEL_177;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        v8 = 4294963390;
        goto LABEL_179;
      }

LABEL_177:
      v8 = 4294963394;
      goto LABEL_179;
    }

    if ((*v2 - 6145) >= 0xFFFFE800)
    {
      v113 = v2[1];
      if (!v113)
      {
        goto LABEL_178;
      }

      memset(__b, 170, sizeof(__b));
      v9 = 0;
      theArray = v6;
      v112 = v3;
      while (1)
      {
        v123 = 0;
        v121 = 0u;
        v122 = 0u;
        __strlcpy_chk();
        LODWORD(v122) = 200;
        DWORD2(v122) = 6176;
        v123 = __b;
        if (Apple80211RawGet(v3, &v121))
        {
          goto LABEL_177;
        }

        valuePtr = 0;
        if (*&__b[16] < 4u)
        {
          goto LABEL_172;
        }

        v10 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v10)
        {
          goto LABEL_172;
        }

        v11 = v10;
        v12 = CFNumberCreate(v4, kCFNumberSInt16Type, &__b[14]);
        if (!v12)
        {
          goto LABEL_171;
        }

        v13 = v12;
        CFDictionaryAddValue(v11, @"ANQP_STATUS", v12);
        CFRelease(v13);
        LODWORD(valuePtr) = *&__b[4];
        v14 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
        if (!v14)
        {
          goto LABEL_171;
        }

        v15 = v14;
        CFDictionarySetValue(v11, @"CHANNEL", v14);
        CFRelease(v15);
        HIDWORD(valuePtr) = *&__b[8];
        v16 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr + 4);
        if (!v16)
        {
          goto LABEL_171;
        }

        v17 = v16;
        CFDictionarySetValue(v11, @"CHANNEL_FLAGS", v16);
        CFRelease(v17);
        v18 = ether_ntoa(&__b[18]);
        if (!v18)
        {
          goto LABEL_171;
        }

        v19 = CFStringCreateWithCString(v4, v18, 0x8000100u);
        if (!v19)
        {
          goto LABEL_171;
        }

        v20 = v19;
        CFDictionarySetValue(v11, @"BSSID", v19);
        CFRelease(v20);
        v21 = CFNumberCreate(v4, kCFNumberSInt64Type, &__b[6168]);
        if (!v21)
        {
          goto LABEL_171;
        }

        v22 = v21;
        v114 = v9;
        v117 = v11;
        CFDictionarySetValue(v11, @"TIMESTAMP", v21);
        CFRelease(v22);
        if (*&__b[14] || !*&__b[16])
        {
LABEL_170:
          v6 = theArray;
          v11 = v117;
          CFArrayAppendValue(theArray, v117);
          v3 = v112;
          v9 = v114;
          goto LABEL_171;
        }

        v23 = 0;
        v24 = &__b[24];
        while (1)
        {
          v25 = *v24;
          v118 = v23;
          if (v25 <= 0x106)
          {
            if (*v24 > 0x103u)
            {
              if (v25 == 260)
              {
                v70 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
                if (!v70)
                {
                  goto LABEL_148;
                }

                v71 = v70;
                if (*(v24 + 1))
                {
                  LOWORD(v72) = 0;
                  v73 = v24 + 4;
                  while (1)
                  {
                    v74 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (!v74)
                    {
                      break;
                    }

                    v75 = v74;
                    v76 = CFNumberCreate(v4, kCFNumberSInt8Type, v73);
                    if (!v76)
                    {
                      break;
                    }

                    v77 = v76;
                    CFDictionaryAddValue(v75, @"ANQP_NET_AUTH_TYPE_INDICATOR", v76);
                    CFRelease(v77);
                    if (*(v73 + 1))
                    {
                      v78 = CFStringCreateWithBytes(v4, v73 + 3, *(v73 + 1), 0x8000100u, 1u);
                      if (!v78)
                      {
                        break;
                      }

                      v79 = v78;
                      CFDictionaryAddValue(v75, @"ANQP_NET_AUTH_TYPE_REDIRECT_URL", v78);
                      CFRelease(v79);
                    }

                    CFArrayAppendValue(v71, v75);
                    CFRelease(v75);
                    if (v72 >= 0xFFFDu)
                    {
                      v110 = 3;
                      syslog(3, "parsedLen %hu increment by value %lu os_add_overflow FAILED\n");
                      break;
                    }

                    v72 = *(v73 + 1) + (v72 + 3);
                    if ((v72 & 0x10000) != 0)
                    {
                      v110 = *(v73 + 1);
                      syslog(3, "parsedLen %hu increment by value %hu os_add_overflow FAILED\n");
                      break;
                    }

                    v73 += *(v73 + 1) + 3;
                    if (*(v24 + 1) <= v72)
                    {
                      goto LABEL_108;
                    }
                  }
                }

                else
                {
LABEL_108:
                  CFDictionaryAddValue(v117, @"ANQP_NET_AUTH_TYPE", v71);
                }

LABEL_128:
                CFRelease(v71);
                goto LABEL_148;
              }

              if (v25 == 261)
              {
                v45 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
                if (v45)
                {
                  theDicta = v45;
                  if (*(v24 + 1))
                  {
                    LOWORD(v46) = 0;
                    v47 = v24 + 4;
                    while (1)
                    {
                      memset(cStr, 0, 11);
                      v48 = *v47;
                      if (v48 - 1 > 4)
                      {
                        LOWORD(v54) = v46 + 1;
                      }

                      else
                      {
                        v49 = 0;
                        v50 = 0;
                        do
                        {
                          if (v50 >= 0xBu)
                          {
                            v51 = 0;
                          }

                          else
                          {
                            v51 = 11 - v50;
                          }

                          v50 += snprintf(&cStr[v50], v51, "%02X", v47[++v49]);
                        }

                        while (v49 < *v47);
                        if (v50)
                        {
                          v52 = CFStringCreateWithCString(v4, cStr, 0x8000100u);
                          if (v52)
                          {
                            v53 = v52;
                            CFArrayAppendValue(theDicta, v52);
                            CFRelease(v53);
                          }
                        }

                        v54 = v46 + 1;
                        if ((v54 & 0x10000) != 0)
                        {
                          syslog(3, "parsedLen %hu increment by value %lu os_add_overflow FAILED\n");
                          goto LABEL_156;
                        }

                        v48 = *v47;
                      }

                      v46 = v48 + v54;
                      if ((v46 & 0x10000) != 0)
                      {
                        break;
                      }

                      v47 += v48 + 1;
                      if (*(v24 + 1) <= v46)
                      {
                        goto LABEL_77;
                      }
                    }

                    syslog(3, "parsedLen %hu increment by value %hhu os_add_overflow FAILED\n");
LABEL_156:
                    v56 = theDicta;
                    goto LABEL_89;
                  }

LABEL_77:
                  v56 = theDicta;
                  v55 = v117;
                  v57 = @"ANQP_ROAMING_CONSORTIUM_OI_LIST";
LABEL_88:
                  CFDictionaryAddValue(v55, v57, v56);
LABEL_89:
                  v63 = v56;
LABEL_147:
                  CFRelease(v63);
                }
              }
            }

            else
            {
              if (v25 == 257)
              {
                v64 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
                if (!v64)
                {
                  goto LABEL_148;
                }

                v65 = v64;
                if (*(v24 + 1))
                {
                  v66 = 0;
                  v67 = v24 + 4;
                  while (1)
                  {
                    v68 = CFNumberCreate(v4, kCFNumberSInt16Type, v67);
                    if (!v68)
                    {
                      break;
                    }

                    v69 = v68;
                    CFArrayAppendValue(v65, v68);
                    CFRelease(v69);
                    ++v66;
                    v67 += 2;
                    if (v66 >= *(v24 + 1))
                    {
                      goto LABEL_95;
                    }
                  }
                }

                else
                {
LABEL_95:
                  CFDictionaryAddValue(v117, @"ANQP_CAPABILITY_LIST", v65);
                }

                goto LABEL_96;
              }

              if (v25 == 258)
              {
                v26 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v26)
                {
                  v27 = v26;
                  v28 = CFNumberCreate(v4, kCFNumberSInt8Type, v24 + 4);
                  if (!v28)
                  {
                    goto LABEL_146;
                  }

                  v29 = v28;
                  CFDictionaryAddValue(v27, @"ANQP_VENUE_GROUP", v28);
                  CFRelease(v29);
                  v30 = CFNumberCreate(v4, kCFNumberSInt8Type, v24 + 5);
                  if (!v30)
                  {
                    goto LABEL_146;
                  }

                  v31 = v30;
                  theDict = v27;
                  CFDictionaryAddValue(v27, @"ANQP_VENUE_TYPE", v30);
                  CFRelease(v31);
                  v32 = *(v24 + 1);
                  v33 = v32 - 2;
                  if (v32 < 2)
                  {
                    goto LABEL_146;
                  }

                  if (v32 == 2)
                  {
                    v35 = 0;
                    v44 = v27;
LABEL_140:
                    CFDictionaryAddValue(v117, @"ANQP_VENUE_NAME_INFO", v44);
                    v27 = 0;
                    v39 = 0;
                  }

                  else
                  {
                    v34 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
                    if (!v34)
                    {
                      goto LABEL_146;
                    }

                    v35 = v34;
                    v36 = 0;
                    v37 = v24 + 6;
                    while (1)
                    {
                      v27 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      if (!v27)
                      {
                        break;
                      }

                      v38 = *v37;
                      if (v38 < 3)
                      {
                        break;
                      }

                      v39 = CFStringCreateWithBytes(v4, v37 + 4, v38 - 3, 0x8000100u, 1u);
                      if (!v39)
                      {
                        goto LABEL_168;
                      }

                      v40 = CFStringCreateWithBytes(v4, v37 + 1, 3, 0x8000100u, 1u);
                      if (!v40)
                      {
                        goto LABEL_168;
                      }

                      v41 = v40;
                      CFDictionaryAddValue(v27, @"ANQP_LANG_CODE", v40);
                      CFDictionaryAddValue(v27, @"ANQP_VENUE_OPERATOR_NAME", v39);
                      CFArrayAppendValue(v35, v27);
                      CFRelease(v39);
                      CFRelease(v41);
                      CFRelease(v27);
                      v42 = *v37;
                      v43 = v42 + v36;
                      if ((v43 & 0x10000) != 0)
                      {
                        syslog(3, "parsedLen %hu increment by value %d os_add_overflow FAILED\n", (v42 + v36), v42);
LABEL_166:
                        v27 = 0;
                        break;
                      }

                      if (v43 == 0xFFFF)
                      {
                        syslog(3, "parsedLen %hu increment by value %d os_add_overflow FAILED\n", 0, 1);
                        goto LABEL_166;
                      }

                      v36 = v43 + 1;
                      v37 += *v37 + 1;
                      if ((v43 + 1) >= v33)
                      {
                        v44 = theDict;
                        CFDictionaryAddValue(theDict, @"ANQP_VENUE_NAMES", v35);
                        goto LABEL_140;
                      }
                    }

                    v39 = 0;
LABEL_168:
                    v44 = theDict;
                  }

                  CFRelease(v44);
                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  if (v39)
                  {
                    CFRelease(v39);
                  }

                  if (v27)
                  {
LABEL_146:
                    v63 = v27;
                    goto LABEL_147;
                  }
                }
              }
            }
          }

          else if (*v24 <= 0x10Bu)
          {
            if (v25 == 263)
            {
              v87 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
              if (!v87)
              {
                goto LABEL_148;
              }

              v71 = v87;
              if (*(v24 + 2))
              {
                v88 = 0;
                v89 = 0;
                while (1)
                {
                  v90 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (!v90)
                  {
                    break;
                  }

                  v91 = v90;
                  v92 = &v24[v88 + 6];
                  v93 = CFNumberCreate(v4, kCFNumberSInt8Type, v92 + 2);
                  if (!v93)
                  {
                    break;
                  }

                  v94 = v93;
                  CFDictionaryAddValue(v91, @"ANQP_NAI_REALM_ENCODING_TYPE", v93);
                  CFRelease(v94);
                  v95 = CFStringCreateWithBytes(v4, v92 + 4, v92[3], 0x8000100u, 1u);
                  if (!v95)
                  {
                    syslog(3, "%s: error creating domainNameStr");
                    goto LABEL_128;
                  }

                  v96 = v95;
                  CFDictionaryAddValue(v91, @"ANQP_NAI_REALM_NAME", v95);
                  CFRelease(v96);
                  CFArrayAppendValue(v71, v91);
                  CFRelease(v91);
                  v97 = *v92;
                  v98 = v97 + v88;
                  if ((v98 & 0x10000) != 0)
                  {
                    goto LABEL_163;
                  }

                  if (v98 == 65534 || v98 == 0xFFFF)
                  {
                    v97 = 2;
LABEL_163:
                    v110 = v97;
                    syslog(3, "parsedLen %hu increment by value %d os_add_overflow FAILED\n");
                    goto LABEL_128;
                  }

                  v88 = v98 + 2;
                  if (++v89 >= *(v24 + 2))
                  {
                    goto LABEL_127;
                  }
                }
              }

              else
              {
LABEL_127:
                CFDictionaryAddValue(v117, @"ANQP_NAI_REALM_LIST", v71);
              }

              goto LABEL_128;
            }

            if (v25 == 264)
            {
              v58 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
              if (v58)
              {
                v56 = v58;
                if (v24[8])
                {
                  v59 = 0;
                  v60 = v24 + 11;
                  do
                  {
                    memset(cStr, 170, 7);
                    v61 = *(v60 - 1);
                    if (v61 >> 4 == 15)
                    {
                      snprintf(cStr, 7uLL, "%01X%01X%01X%01X%01X%01X", *(v60 - 2) & 0xF, *(v60 - 2) >> 4, v61 & 0xF, 15, *v60 & 0xF, *v60 >> 4);
                    }

                    else
                    {
                      snprintf(cStr, 7uLL, "%01X%01X%01X%01X%01X%01X", *(v60 - 2) & 0xF, *(v60 - 2) >> 4, v61 & 0xF, *v60 & 0xF, *v60 >> 4, v61 >> 4);
                    }

                    v62 = CFStringCreateWithCString(v4, cStr, 0x8000100u);
                    CFArrayAppendValue(v56, v62);
                    CFRelease(v62);
                    ++v59;
                    v60 += 3;
                  }

                  while (v59 < v24[8]);
                  v55 = v117;
                  v57 = @"ANQP_CELL_NETWORK_INFO";
                  goto LABEL_88;
                }

                goto LABEL_89;
              }
            }
          }

          else if (v25 == 268)
          {
            v80 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
            if (v80)
            {
              v65 = v80;
              if (*(v24 + 1))
              {
                LOWORD(v81) = 0;
                v82 = v24 + 4;
                while (1)
                {
                  v83 = CFStringCreateWithBytes(v4, v82 + 1, *v82, 0x8000100u, 1u);
                  if (!v83)
                  {
                    syslog(3, "%s: error creating domainNameStr");
                    goto LABEL_96;
                  }

                  v84 = v83;
                  CFArrayAppendValue(v65, v83);
                  CFRelease(v84);
                  v81 = *v82 + (v81 + 1);
                  if ((v81 & 0x10000) != 0)
                  {
                    break;
                  }

                  v82 += *v82 + 1;
                  if (*(v24 + 1) <= v81)
                  {
                    goto LABEL_116;
                  }
                }

                syslog(3, "parsedLen %hu increment by value %hhu os_add_overflow FAILED\n");
                goto LABEL_96;
              }

LABEL_116:
              v85 = v117;
              v86 = @"ANQP_DOMAIN_NAME_LIST";
              goto LABEL_138;
            }
          }

          else if (v25 == 277)
          {
            v99 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
            if (v99)
            {
              v65 = v99;
              if (*(v24 + 1))
              {
                LOWORD(v100) = 0;
                v101 = v24 + 4;
                while (1)
                {
                  v102 = CFStringCreateWithBytes(v4, v101 + 2, *v101, 0x8000100u, 1u);
                  if (!v102)
                  {
                    syslog(3, "failed to create venueURL string\n", v109, v110);
                    goto LABEL_96;
                  }

                  v103 = v102;
                  CFArrayAppendValue(v65, v102);
                  CFRelease(v103);
                  if (v100 == 65534 || v100 == 0xFFFF)
                  {
                    syslog(3, "parsedLen %u increment by value %lu os_add_overflow FAILED\n");
                    goto LABEL_96;
                  }

                  v100 = *v101 + (v100 + 2);
                  if ((v100 & 0x10000) != 0)
                  {
                    break;
                  }

                  v101 += *v101 + 2;
                  if (*(v24 + 1) <= v100)
                  {
                    goto LABEL_137;
                  }
                }

                syslog(3, "parsedLen %u increment by value %d os_add_overflow FAILED\n");
                goto LABEL_96;
              }

LABEL_137:
              v85 = v117;
              v86 = @"ANQP_VENUE_URL";
LABEL_138:
              CFDictionaryAddValue(v85, v86, v65);
LABEL_96:
              CFRelease(v65);
            }
          }

          else if (v25 == 56797 && *(v24 + 1) >= 0xAu && v24[4] == 80 && v24[5] == 111 && v24[6] == 154 && v24[7] == 17)
          {
            if (v24[8] == 3)
            {
              _parseHs20OperatorName(v24, v117);
            }

            else
            {
              syslog(3, "%s: HS20 subtype %d is not implemented yet", "_parseVendorSpecific", v24[8]);
            }
          }

LABEL_148:
          v104 = *(v24 + 1) + v118;
          if ((v104 & 0x10000) != 0)
          {
            syslog(3, "parsedLen %hu increment by value %hu os_add_overflow FAILED\n");
            goto LABEL_176;
          }

          v23 = v104 + 4;
          if (v104 >= 0xFFFCu)
          {
            break;
          }

          v24 = &__b[v23 + 24];
          if (*&__b[16] <= v23)
          {
            goto LABEL_170;
          }
        }

        syslog(3, "parsedLen %hu increment by value %lu os_add_overflow FAILED\n");
LABEL_176:
        v6 = theArray;
        v3 = v112;
        v9 = v114;
        v11 = v117;
LABEL_171:
        CFRelease(v11);
LABEL_172:
        if (++v9 == v113)
        {
LABEL_178:
          v8 = 0;
          goto LABEL_179;
        }
      }
    }

    v8 = 4294963396;
LABEL_179:
    *(v3 + 1672) = 0;
    pthread_mutex_unlock((v3 + 1608));
    (*(v3 + 72))(v8, v3, 57, v6, 8, *(v3 + 80));
    CFRelease(v6);
    goto LABEL_180;
  }

  v107 = *(v3 + 72);
  v106 = *(v3 + 80);
  v108 = *MEMORY[0x277D85DE8];

  v107(4294963395, v3, 57, 0, 8, v106);
}

void _dispatchRangingResults(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_79;
  }

  v3 = a1;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v6 = Mutable;
    pthread_mutex_lock((v3 + 1680));
    v7 = *(a2 + 8);
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v8 = 4294963371;
        goto LABEL_78;
      }

      if (v7 == 5)
      {
        v8 = 4294963364;
        goto LABEL_78;
      }

      if (v7 != 4)
      {
LABEL_73:
        syslog(3, "%s:%d: [kA11UnknownErr] unexpected rangingEventData->status: %d\n", "_dispatchRangingResults", 1211, v7);
        v8 = 4294963394;
        goto LABEL_78;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        syslog(3, "%s:%d: [kA11UnspecifiedFailureErr] rangingEventData->status: APPLE80211_RANGING_STATUS_FAILED\n", "_dispatchRangingResults", 1197);
        v8 = 4294963390;
        goto LABEL_78;
      }

      if (v7 == 2)
      {
        syslog(3, "%s:%d: [kA11TimeoutErr] rangingEventData->status: APPLE80211_RANGING_STATUS_ABORTED\n", "_dispatchRangingResults", 1201);
        v8 = 4294963391;
LABEL_78:
        *(v3 + 1744) = 0;
        pthread_mutex_unlock((v3 + 1680));
        (*(v3 + 72))(v8, v3, 83, v6, 8, *(v3 + 80));
        CFRelease(v6);
LABEL_79:
        v77 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_73;
    }

    v9 = *(a2 + 4);
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v88 = v3;
    if (v9)
    {
      memcpy(__dst, &unk_2548C54F8, sizeof(__dst));
      v94 = 0u;
      v95 = 0u;
      v96 = 0;
      __strlcpy_chk();
      DWORD1(v95) = v7 == 4;
      DWORD2(v95) = 1800;
      v96 = __dst;
      LODWORD(v95) = 242;
      if (v9 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v9;
      }

      LODWORD(__dst[0]) = 1;
      HIDWORD(__dst[0]) = v10;
      v11 = Apple80211RawGet(v3, &v94);
      if (v11)
      {
        v81 = v11;
        v82 = __error();
        syslog(3, "%s:%d: [kA11UnknownErr] APPLE80211_IOC_RANGING_START returned %d (errno:%d)\n", "_getAsyncRangingResults", 901, v81, *v82);
        v8 = 4294963394;
      }

      else
      {
        if (HIDWORD(__dst[0]))
        {
          v12 = 0;
          v13 = &__dst[11];
          v8 = 4294963390;
          v14 = MEMORY[0x277CBF138];
          value = *MEMORY[0x277CBED28];
          while (1)
          {
            v15 = CFDictionaryCreateMutable(v4, 0, v14, MEMORY[0x277CBF150]);
            if (v15)
            {
              break;
            }

LABEL_70:
            ++v12;
            v13 += 448;
            if (v12 >= HIDWORD(__dst[0]))
            {
              goto LABEL_77;
            }
          }

          v16 = v15;
          v17 = &__dst[56 * v12 + 1];
          v18 = ether_ntoa((v17 + 26));
          if (!v18)
          {
            goto LABEL_69;
          }

          v19 = v14;
          v20 = CFStringCreateWithCString(v4, v18, 0x8000100u);
          if (v20)
          {
            v21 = v20;
            CFDictionarySetValue(v16, @"STATION_MAC", v20);
            CFRelease(v21);
            if (*(v17 + 5) == v91 && *(v17 + 12) == v92)
            {
              goto LABEL_27;
            }

            v23 = CFDataCreate(v4, v17 + 20, 6);
            if (v23)
            {
              v24 = v23;
              CFDictionarySetValue(v16, @"RANGING_TOKEN_ID", v23);
              CFRelease(v24);
LABEL_27:
              v25 = CFNumberCreate(v4, kCFNumberSInt16Type, v17 + 53);
              if (!v25)
              {
                goto LABEL_68;
              }

              v26 = v25;
              CFDictionarySetValue(v16, @"RANGING_FLAGS", v25);
              CFRelease(v26);
              v27 = *(v17 + 212);
              if ((v27 & 0x10) != 0)
              {
                CFDictionarySetValue(v16, @"RANGING_INITIATOR", value);
                v27 = *(v17 + 212);
              }

              if ((v27 & 0x40) != 0)
              {
                v8 = v8;
              }

              else
              {
                v8 = 4294963363;
              }

              if (v7 == 4 && !*(v17 + 213))
              {
                *(v17 + 213) = 4;
              }

              v28 = CFNumberCreate(v4, kCFNumberSInt16Type, v17 + 426);
              if (!v28)
              {
                goto LABEL_68;
              }

              v29 = v28;
              CFDictionarySetValue(v16, @"RANGING_STATUS", v28);
              CFRelease(v29);
              valuePtr = *(v17 + 107) / 1000.0;
              v30 = CFNumberCreate(v4, kCFNumberFloatType, &valuePtr);
              if (!v30)
              {
                goto LABEL_68;
              }

              v31 = v30;
              CFDictionarySetValue(v16, @"RANGING_DISTANCE", v30);
              CFRelease(v31);
              v32 = CFNumberCreate(v4, kCFNumberSInt16Type, v17 + 54);
              if (!v32)
              {
                goto LABEL_68;
              }

              v33 = v32;
              CFDictionarySetValue(v16, @"RANGING_SD", v32);
              CFRelease(v33);
              v34 = CFNumberCreate(v4, kCFNumberSInt8Type, v17 + 434);
              if (!v34)
              {
                goto LABEL_68;
              }

              v35 = v34;
              CFDictionarySetValue(v16, @"RANGING_VALID_COUNT", v34);
              CFRelease(v35);
              v36 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
              v14 = v19;
              if (v36)
              {
                v85 = v6;
                theArray = v36;
                v83 = v8;
                v84 = v7;
                if (*(v17 + 435))
                {
                  v37 = 0;
                  v38 = v13;
                  do
                  {
                    v39 = CFDictionaryCreateMutable(v4, 0, v19, MEMORY[0x277CBF150]);
                    if (v39)
                    {
                      v40 = v39;
                      v41 = CFNumberCreate(v4, kCFNumberSInt32Type, v38 - 16);
                      if (v41)
                      {
                        v42 = v41;
                        CFDictionarySetValue(v40, @"RANGING_RTT", v41);
                        CFRelease(v42);
                        v43 = CFNumberCreate(v4, kCFNumberSInt16Type, v38 - 34);
                        if (v43)
                        {
                          v44 = v43;
                          CFDictionarySetValue(v40, @"RANGING_RSSI", v43);
                          CFRelease(v44);
                          v45 = CFNumberCreate(v4, kCFNumberSInt16Type, v38 - 20);
                          if (v45)
                          {
                            v46 = v45;
                            CFDictionarySetValue(v40, @"RANGING_RTT_FLAGS", v45);
                            CFRelease(v46);
                            v47 = CFNumberCreate(v4, kCFNumberSInt16Type, v38 - 18);
                            if (v47)
                            {
                              v48 = v47;
                              CFDictionarySetValue(v40, @"RANGING_RTT_STATUS", v47);
                              CFRelease(v48);
                              v49 = CFNumberCreate(v4, kCFNumberSInt16Type, v38 - 32);
                              if (v49)
                              {
                                v50 = v49;
                                CFDictionarySetValue(v40, @"RANGING_SNR", v49);
                                CFRelease(v50);
                                v51 = CFNumberCreate(v4, kCFNumberSInt16Type, v38 - 30);
                                if (v51)
                                {
                                  v52 = v51;
                                  CFDictionarySetValue(v40, @"RANGING_PEER_SNR", v51);
                                  CFRelease(v52);
                                  v53 = CFNumberCreate(v4, kCFNumberSInt8Type, v38 - 40);
                                  if (v53)
                                  {
                                    v54 = v53;
                                    CFDictionarySetValue(v40, @"RANGING_BER", v53);
                                    CFRelease(v54);
                                    v55 = CFNumberCreate(v4, kCFNumberSInt8Type, v38 - 39);
                                    if (v55)
                                    {
                                      v56 = v55;
                                      CFDictionarySetValue(v40, @"RANGING_PEER_BER", v55);
                                      CFRelease(v56);
                                      LOBYTE(v57) = *(v38 - 36);
                                      *&v57 = v57 / 100.0;
                                      v90 = v57;
                                      v58 = CFNumberCreate(v4, kCFNumberFloatType, &v90);
                                      if (v58)
                                      {
                                        v59 = v58;
                                        CFDictionarySetValue(v40, @"RANGING_PEAK_RATIO", v58);
                                        CFRelease(v59);
                                        LOBYTE(v60) = *(v38 - 35);
                                        *&v60 = v60 / 100.0;
                                        v90 = v60;
                                        v61 = CFNumberCreate(v4, kCFNumberFloatType, &v90);
                                        if (v61)
                                        {
                                          v62 = v61;
                                          CFDictionarySetValue(v40, @"RANGING_PEER_PEAK_RATIO", v61);
                                          CFRelease(v62);
                                          v63 = CFNumberCreate(v4, kCFNumberSInt8Type, v38 - 38);
                                          if (v63)
                                          {
                                            v64 = v63;
                                            CFDictionarySetValue(v40, @"RANGING_CORE_ID", v63);
                                            CFRelease(v64);
                                            v65 = CFNumberCreate(v4, kCFNumberSInt8Type, v38 - 37);
                                            if (v65)
                                            {
                                              v66 = v65;
                                              CFDictionarySetValue(v40, @"RANGING_PEER_CORE_ID", v65);
                                              CFRelease(v66);
                                              v67 = CFNumberCreate(v4, kCFNumberSInt32Type, v38 - 28);
                                              if (v67)
                                              {
                                                v68 = v67;
                                                CFDictionarySetValue(v40, @"RANGING_PHY_ERROR", v67);
                                                CFRelease(v68);
                                                v69 = CFNumberCreate(v4, kCFNumberSInt32Type, v38 - 24);
                                                if (v69)
                                                {
                                                  v70 = v69;
                                                  CFDictionarySetValue(v40, @"RANGING_PEER_PHY_ERROR", v69);
                                                  CFRelease(v70);
                                                  v71 = CFNumberCreate(v4, kCFNumberSInt16Type, v38 - 12);
                                                  if (v71)
                                                  {
                                                    v72 = v71;
                                                    CFDictionarySetValue(v40, @"RANGING_CHANNEL", v71);
                                                    CFRelease(v72);
                                                    v73 = CFNumberCreate(v4, kCFNumberSInt64Type, v38 - 8);
                                                    if (v73)
                                                    {
                                                      v74 = v73;
                                                      CFDictionaryAddValue(v40, @"RANGING_RESULT_TIMESTAMP", v73);
                                                      CFRelease(v74);
                                                      v75 = CFNumberCreate(v4, kCFNumberSInt32Type, v38);
                                                      if (v75)
                                                      {
                                                        v76 = v75;
                                                        CFDictionarySetValue(v40, @"RANGING_GROUPDELAY_VARIANCE", v75);
                                                        CFRelease(v76);
                                                        CFArrayAppendValue(theArray, v40);
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
                      }

                      CFRelease(v40);
                    }

                    ++v37;
                    v38 += 48;
                  }

                  while (v37 < *(v17 + 435));
                }

                if (*(v17 + 434))
                {
                  v8 = 0;
                }

                else
                {
                  v8 = v83;
                }

                CFDictionarySetValue(v16, @"RANGING_RESULTS", theArray);
                CFRelease(theArray);
                v6 = v85;
                CFArrayAppendValue(v85, v16);
                v7 = v84;
                goto LABEL_68;
              }

LABEL_69:
              CFRelease(v16);
              goto LABEL_70;
            }
          }

LABEL_68:
          v14 = v19;
          goto LABEL_69;
        }

        v8 = 4294963390;
      }
    }

    else
    {
      v8 = 4294963396;
    }

LABEL_77:
    v3 = v88;
    goto LABEL_78;
  }

  v79 = *(v3 + 72);
  v78 = *(v3 + 80);
  v80 = *MEMORY[0x277D85DE8];

  v79(4294963395, v3, 83, 0, 8, v78);
}

void _dispatchDriverAvailable(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  syslog(3, "%s: available %d, reason %d, subreason %d\n", "_dispatchDriverAvailable", *(a2 + 8), *(a2 + 16), *(a2 + 20));
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = MEMORY[0x277CBED28];
    if (!*(a2 + 8))
    {
      v7 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"DRIVER_AVAILABLE", *v7);
    v8 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 16));
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v8;
    CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_REASON", v8);
    CFRelease(v9);
    v8 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 20));
    if (!v8)
    {
      goto LABEL_20;
    }

    v10 = v8;
    CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_SUBREASON", v8);
    CFRelease(v10);
    v8 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 24));
    if (!v8)
    {
      goto LABEL_20;
    }

    v11 = v8;
    CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_MINORREASON", v8);
    CFRelease(v11);
    v8 = CFNumberCreate(v4, kCFNumberSInt32Type, a2);
    if (!v8)
    {
      goto LABEL_20;
    }

    v12 = v8;
    CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_VERSION", v8);
    CFRelease(v12);
    v8 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 4));
    if (!v8)
    {
      goto LABEL_20;
    }

    v13 = v8;
    CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_FLAGS", v8);
    CFRelease(v13);
    v8 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 12));
    if (!v8)
    {
      goto LABEL_20;
    }

    v14 = v8;
    CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_EVENTID", v8);
    CFRelease(v14);
    v15 = CFStringCreateWithCString(v4, (a2 + 28), 0x8000100u);
    if (v15)
    {
      v16 = v15;
      CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_REASON_STRING", v15);
      CFRelease(v16);
      v8 = CFNumberCreate(v4, kCFNumberSInt64Type, (a2 + 160));
      if (!v8)
      {
        goto LABEL_20;
      }

      v17 = v8;
      CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_PROGRAM_COUNTER", v8);
      CFRelease(v17);
      v8 = CFNumberCreate(v4, kCFNumberSInt64Type, (a2 + 168));
      if (!v8)
      {
        goto LABEL_20;
      }

      v18 = v8;
      CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_LINK_REGISTER", v8);
      CFRelease(v18);
      v19 = CFStringCreateWithCString(v4, (a2 + 176), 0x8000100u);
      if (v19)
      {
        v20 = v19;
        CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_FILENAME", v19);
        CFRelease(v20);
        v8 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 208));
        if (v8)
        {
          v21 = v8;
          CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_LINENUMBER", v8);
          CFRelease(v21);
          v22 = CFStringCreateWithCString(v4, (a2 + 212), 0x8000100u);
          if (v22)
          {
            v23 = v22;
            CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_FUNCTION ", v22);
            CFRelease(v23);
            v8 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 244));
            if (v8)
            {
              v24 = v8;
              CFDictionarySetValue(v6, @"DRIVER_AVAILABLE_TRAP_SEQUENCE", v8);
              CFRelease(v24);
              v8 = 0;
            }

            goto LABEL_20;
          }

          goto LABEL_23;
        }

LABEL_20:
        (*(a1 + 72))(v8, a1, 55, v6, 8, *(a1 + 80));

        CFRelease(v6);
        return;
      }
    }

LABEL_23:
    v8 = 4294963395;
    goto LABEL_20;
  }

  v26 = *(a1 + 72);
  v25 = *(a1 + 80);

  v26(4294963395, a1, 55, 0, 8, v25);
}

void _dispatchPowerStatsUpdateEvent(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = CFNumberCreate(v4, kCFNumberSInt32Type, a2);
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(v6, @"POWER_STATS_TYPE", v7);
        CFRelease(v8);
        v9 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 4));
        if (v9)
        {
          v10 = v9;
          CFDictionarySetValue(v6, @"POWER_STATS_UNASSOCIATED_SLEEP_DURATION", v9);
          CFRelease(v10);
          v11 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 8));
          if (v11)
          {
            v12 = v11;
            CFDictionarySetValue(v6, @"POWER_STATS_ASSOCIATED_SLEEP_DURATION", v11);
            CFRelease(v12);
            v13 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 16));
            if (v13)
            {
              v14 = v13;
              CFDictionarySetValue(v6, @"POWER_STATS_TOTAL_DURATION", v13);
              CFRelease(v14);
              v15 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 12));
              if (v15)
              {
                v16 = v15;
                CFDictionarySetValue(v6, @"POWER_STATS_ROAM_DURATION", v15);
                CFRelease(v16);
                v17 = CFNumberCreate(v4, kCFNumberFloat32Type, (a2 + 20));
                if (v17)
                {
                  v18 = v17;
                  CFDictionarySetValue(v6, @"POWER_STATS_DUTY_CYCLE", v17);
                  CFRelease(v18);
                }
              }
            }
          }
        }
      }

      (*(a1 + 72))(0, a1, 61, v6, 8, *(a1 + 80));

      CFRelease(v6);
    }

    else
    {
      v20 = *(a1 + 72);
      v19 = *(a1 + 80);

      v20(4294963395, a1, 61, 0, 8, v19);
    }
  }
}

void _dispatchBGScanCachedNetworks(uint64_t a1, int a2)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    v2 = a2;
    v4 = malloc_type_malloc(0x1910uLL, 0x1000040378CD1B4uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = v2;
      v40 = 0u;
      v41 = 0u;
      __strlcpy_chk();
      LODWORD(v41) = 215;
      DWORD2(v41) = 6416;
      v42 = v5;
      Apple80211IOCTLGetWrapper(a1, &v40);
      v6 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v8 = Mutable;
        v36 = a1;
        v9 = (v5 + 4);
        v37 = v5;
        v10 = v5[801];
        v11 = *MEMORY[0x277CBED28];
        v12 = *MEMORY[0x277CBED10];
        v35 = v2;
        while (1)
        {
          v13 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v13)
          {
            break;
          }

          v14 = v13;
          v15 = ether_ntoa(v9);
          if (!v15)
          {
            break;
          }

          v16 = CFStringCreateWithCString(v6, v15, 0x8000100u);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFDictionarySetValue(v14, @"BSSID", v16);
          CFRelease(v17);
          v18 = v9 + 2;
          v19 = CFNumberCreate(v6, kCFNumberSInt32Type, &v9[2]);
          if (v19)
          {
            v20 = v19;
            CFDictionaryAddValue(v14, @"CHANNEL", v19);
            CFRelease(v20);
            v21 = &v18->octet[4];
            v22 = CFNumberCreate(v6, kCFNumberSInt32Type, v21);
            if (v22)
            {
              v23 = v22;
              CFDictionarySetValue(v14, @"RSSI", v22);
              CFRelease(v23);
              v24 = (*(v21 - 10) & 1) != 0 ? v11 : v12;
              CFDictionaryAddValue(v14, @"CONNECTED_BSSID", v24);
              v25 = (v21 - 8);
              v26 = CFNumberCreate(v6, kCFNumberSInt32Type, v21 - 8);
              if (v26)
              {
                v27 = v26;
                CFDictionarySetValue(v14, @"AGE", v26);
                CFRelease(v27);
                valuePtr = v10 + 1000000000 * *v25->octet;
                v28 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
                if (v28)
                {
                  v29 = v28;
                  CFDictionarySetValue(v14, @"TIMESTAMP", v28);
                  CFRelease(v29);
                  v30 = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
                  if (v30)
                  {
                    v31 = v30;
                    v38 = 5;
                    v32 = CFNumberCreate(v6, kCFNumberSInt32Type, &v38);
                    if (v32)
                    {
                      v33 = v32;
                      CFArrayAppendValue(v31, v32);
                      CFRelease(v33);
                      CFDictionarySetValue(v14, @"SCAN_RESULT_NET_FLAGS", v31);
                      CFRelease(v31);
                      CFDictionarySetValue(v14, @"SCAN_RESULT_FROM_BG_SCAN", v11);
                      CFArrayAppendValue(v8, v14);
                      CFRelease(v14);
                      v9 = v25 + 2;
                      if (--v2)
                      {
                        continue;
                      }
                    }
                  }
                }
              }
            }
          }

          (*(v36 + 72))(0, v36, 63, v8, (20 * v35), *(v36 + 80));
          break;
        }

        CFRelease(v8);
        v5 = v37;
      }

      free(v5);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void _dispatchScanBackoffReport(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3 == 16)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v6 = Mutable;
          v7 = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
          if (v7)
          {
            v8 = v7;
            v9 = *(a2 + 8);
            if (v9)
            {
              CFStringAppend(v7, @"SSID_GROUP");
              v9 = *(a2 + 8);
            }

            if ((v9 & 2) != 0)
            {
              CFStringAppend(v8, @"BSSID_GROUP");
            }

            CFDictionaryAddValue(v6, @"SCAN_BACKOFF_REPORT_SCANGROUP", v8);
            v10 = *(a2 + 12);
            v11 = @"BACKOFF_RESET";
            if (v10 != 1)
            {
              v11 = 0;
            }

            if (v10)
            {
              v12 = v11;
            }

            else
            {
              v12 = @"BACKOFF_APPLIED";
            }

            CFDictionaryAddValue(v6, @"SCAN_BACKOFF_REPORT_REASON", v12);
            (*(a1 + 72))(0, a1, 90, v6, 8, *(a1 + 80));
            CFRelease(v8);
          }

          CFRelease(v6);
        }
      }
    }
  }
}

void _dispatchSSIDChanged(uint64_t a1, uint64_t a2, int a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (!a2 || a3 != 8)
  {
    goto LABEL_7;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return;
  }

  v4 = Mutable;
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
  if (v10)
  {
    v5 = v10;
    CFDictionaryAddValue(v4, @"SETSSID_STATUS", v10);
    v11 = CFNumberCreate(v9, kCFNumberSInt32Type, (a2 + 4));
    if (!v11)
    {
      goto LABEL_10;
    }

    v6 = v11;
    CFDictionaryAddValue(v4, @"SETSSID_REASON", v11);
LABEL_7:
    (*(a1 + 72))(0, a1, 2, v4, 8 * (v4 != 0), *(a1 + 80));
    if (v6)
    {
      CFRelease(v6);
    }

    if (!v5)
    {
LABEL_11:
      if (!v4)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_10:
    CFRelease(v5);
    goto LABEL_11;
  }

LABEL_12:

  CFRelease(v4);
}

void _dispatchDeauthReceived(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a3 == 8)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"DEAUTHRX_STATUS", v8);
          v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"DEAUTHRX_REASON", v10);
            (*(a1 + 72))(0, a1, 34, v6, 8, *(a1 + 80));
            CFRelease(v11);
          }

          CFRelease(v9);
        }

        CFRelease(v6);
      }
    }
  }
}

void _dispatchDissasocReceived(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a3 == 8)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"DISASSOCRX_STATUS", v8);
          v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"DISASSOCRX_REASON", v10);
            (*(a1 + 72))(0, a1, 72, v6, 8, *(a1 + 80));
            CFRelease(v11);
          }

          CFRelease(v9);
        }

        CFRelease(v6);
      }
    }
  }
}

void _dispatchDecryptionFailure(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a3 == 8)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"DECRYPTIONFAILURE_STATUS", v8);
          v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"DECRPYTIONFAILURE_REASON", v10);
            (*(a1 + 72))(0, a1, 14, v6, 8, *(a1 + 80));
            CFRelease(v11);
          }

          CFRelease(v9);
        }

        CFRelease(v6);
      }
    }
  }
}

void _dispatchTxInhibitEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (v6)
      {
        v8 = 136315394;
        v9 = "_dispatchTxInhibitEvent";
        v10 = 1024;
        v11 = a3;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Processing TX Inhibit event with DataLen: %u\n", &v8, 0x12u);
      }

      (*(a1 + 72))(0, a1, 92, a2, a3, *(a1 + 80));
    }

    else if (v6)
    {
      v8 = 136315394;
      v9 = "_dispatchTxInhibitEvent";
      v10 = 1024;
      v11 = 0;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: TX Inhibit event with Insufficient DataLen: %u\n", &v8, 0x12u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void _dispatchLocalMitigationEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (a3 <= 0xF)
    {
      if (v6)
      {
        v8 = 136315394;
        v9 = "_dispatchLocalMitigationEvent";
        v10 = 1024;
        v11 = a3;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Local thermal mitigation event with insufficient DataLen: %u\n", &v8, 0x12u);
      }
    }

    else
    {
      if (v6)
      {
        v8 = 136315394;
        v9 = "_dispatchLocalMitigationEvent";
        v10 = 1024;
        v11 = a3;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Processing local thermal mitigation event with DataLen: %u\n", &v8, 0x12u);
      }

      (*(a1 + 72))(0, a1, 93, a2, a3, *(a1 + 80));
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void _dispatchPrune(uint64_t a1, const UInt8 *a2, int a3)
{
  if (a2)
  {
    if (a3 == 16)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"PRUNEEVENT_STATUS", v8);
          v10 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 4);
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"PRUNEEVENT_REASON", v10);
            v12 = CFDataCreate(v7, a2 + 8, 6);
            if (v12)
            {
              v13 = v12;
              CFDictionaryAddValue(v6, @"BSSID", v12);
              (*(a1 + 72))(0, a1, 75, v6, 8, *(a1 + 80));
              CFRelease(v11);
              v11 = v9;
              v9 = v13;
            }

            CFRelease(v11);
          }

          CFRelease(v9);
        }

        CFRelease(v6);
      }
    }
  }
}

void _dispatchSupplicant(uint64_t a1, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  memset(valuePtr, 170, sizeof(valuePtr));
  if (a2)
  {
    if (a3 == 40)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"SUPPLICANTEVENT_STATUS", v8);
          v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"SUPPLICANTEVENT_REASON", v10);
            v12 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 12));
            if (v12)
            {
              CFDictionaryAddValue(v6, @"APPLE80211KEY_SUPPLICANTEVENT_TSN_DISABLED_FLAGS", v12);
              *valuePtr = *(a2 + 16);
              *&valuePtr[16] = *(a2 + 32);
              v13 = CFNumberCreate(v7, kCFNumberSInt32Type, valuePtr);
              v23 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr[4]);
              v14 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr[8]);
              v15 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr[12]);
              v16 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr[16]);
              v17 = MEMORY[0x277CBED28];
              if (!*(a2 + 36))
              {
                v17 = MEMORY[0x277CBED10];
              }

              v18 = *v17;
              cf = v13;
              v19 = v13;
              v20 = v23;
              CFDictionaryAddValue(v6, @"APPLE80211KEY_SUPPLICANTEVENT_EAPOL_START_M1_DURATION", v19);
              CFDictionaryAddValue(v6, @"APPLE80211KEY_SUPPLICANTEVENT_M1_M2_DURATION", v23);
              CFDictionaryAddValue(v6, @"APPLE80211KEY_SUPPLICANTEVENT_M2_M3_DURATION", v14);
              CFDictionaryAddValue(v6, @"APPLE80211KEY_SUPPLICANTEVENT_M3_M4_DURATION", v15);
              CFDictionaryAddValue(v6, @"APPLE80211KEY_SUPPLICANTEVENT_TOTAL_4WAY_DURATION", v16);
              CFDictionaryAddValue(v6, @"APPLE80211KEY_SUPPLICANTEVENT_JOINING_NEW_NETWORK", v18);
              (*(a1 + 72))(0, a1, 76, v6, 8, *(a1 + 80));
            }

            else
            {
              cf = 0;
              v20 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
            }

            CFRelease(v11);
            CFRelease(v9);
            if (v12)
            {
              CFRelease(v12);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            if (v15)
            {
              CFRelease(v15);
            }

            if (!v16)
            {
              goto LABEL_25;
            }

            v21 = v16;
          }

          else
          {
            v21 = v9;
          }

          CFRelease(v21);
        }

LABEL_25:
        CFRelease(v6);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void _dispatchReassoc(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a3 == 8)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"REASSOCEVENT_STATUS", v8);
          v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"REASSOCEVENT_REASON", v10);
            (*(a1 + 72))(0, a1, 73, v6, 8, *(a1 + 80));
            CFRelease(v11);
          }

          CFRelease(v9);
        }

        CFRelease(v6);
      }
    }
  }
}

void _dispatchAuth(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a3 == 104)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"AUTHEVENT_STATUS", v8);
          v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"AUTHEVENT_REASON", v10);
            (*(a1 + 72))(0, a1, 74, v6, 8, *(a1 + 80));
            CFRelease(v11);
          }

          CFRelease(v9);
        }

        CFRelease(v6);
      }
    }
  }
}

void _dispatchRoamStatus(uint64_t a1, const UInt8 *a2, int a3)
{
  v96 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a3 == 168)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
        if (!v8)
        {
LABEL_91:
          CFRelease(v6);
          goto LABEL_92;
        }

        v9 = v8;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_STATUS", v8);
        v10 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 4);
        if (!v10)
        {
          v50 = v9;
LABEL_90:
          CFRelease(v50);
          goto LABEL_91;
        }

        v11 = v10;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_REASON", v10);
        v12 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 24);
        if (!v12)
        {
          value = 0;
          cf = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v15 = 0;
          v14 = 0;
          v13 = 0;
          goto LABEL_63;
        }

        CFDictionaryAddValue(v6, @"ROAMEDEVENT_FLAGS", v12);
        v13 = CFNumberCreate(v7, kCFNumberSInt64Type, a2 + 8);
        if (!v13)
        {
          value = 0;
          cf = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v15 = 0;
          v14 = 0;
          goto LABEL_63;
        }

        CFDictionaryAddValue(v6, @"ROAMEDEVENT_TIME_STARTED", v13);
        v14 = CFNumberCreate(v7, kCFNumberSInt64Type, a2 + 16);
        if (!v14)
        {
          value = 0;
          cf = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v15 = 0;
          goto LABEL_63;
        }

        CFDictionaryAddValue(v6, @"ROAMEDEVENT_TIME_ENDED", v14);
        v15 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 28);
        if (!v15 || (CFDictionaryAddValue(v6, @"ROAMEDEVENT_PROFILE_TYPE", v15), (v16 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 32)) == 0))
        {
          value = 0;
          cf = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          goto LABEL_63;
        }

        v80 = v16;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_ORIGIN_RSSI", v16);
        v17 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 36);
        if (!v17)
        {
          value = 0;
          cf = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v51 = 0;
          v52 = 0;
          v53 = v80;
          goto LABEL_63;
        }

        v79 = v17;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_TARGET_RSSI", v17);
        v18 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 40);
        if (!v18)
        {
          value = 0;
          cf = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v51 = 0;
          v52 = v79;
          v53 = v80;
          goto LABEL_63;
        }

        v78 = v18;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_ORIGIN_CHANNEL", v18);
        v19 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 44);
        if (!v19)
        {
          value = 0;
          cf = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          goto LABEL_62;
        }

        v85 = v19;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_TARGET_CHANNEL", v19);
        v20 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 48);
        if (!v20)
        {
          value = 0;
          cf = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          goto LABEL_62;
        }

        v84 = v20;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_ORIGIN_CHANNEL_FLAGS", v20);
        v21 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 52);
        if (!v21)
        {
          value = 0;
          cf = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          goto LABEL_62;
        }

        v83 = v21;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_TARGET_CHANNEL_FLAGS", v21);
        v22 = CFDataCreate(v7, a2 + 56, 3);
        if (!v22)
        {
          value = 0;
          cf = 0;
          v81 = 0;
          v82 = 0;
          goto LABEL_62;
        }

        v82 = v22;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_ORIGIN_OUI", v22);
        v23 = CFDataCreate(v7, a2 + 59, 3);
        if (!v23)
        {
          value = 0;
          cf = 0;
          v81 = 0;
          goto LABEL_62;
        }

        v81 = v23;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_TARGET_OUI", v23);
        v24 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 64);
        if (!v24)
        {
          goto LABEL_59;
        }

        cfa = v24;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_ORIGIN_AUTHTYPE", v24);
        CFRelease(cfa);
        v25 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 68);
        if (!v25)
        {
          goto LABEL_59;
        }

        cfb = v25;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_TARGET_AUTHTYPE", v25);
        CFRelease(cfb);
        v26 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 72);
        if (!v26)
        {
          goto LABEL_59;
        }

        cfc = v26;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_ORIGIN_AKMS", v26);
        CFRelease(cfc);
        v27 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 76);
        if (!v27)
        {
          goto LABEL_59;
        }

        cfd = v27;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_TARGET_AKMS", v27);
        CFRelease(cfd);
        v28 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 80);
        if (!v28)
        {
          goto LABEL_59;
        }

        cfe = v28;
        CFDictionaryAddValue(v6, @"ROAMEDEVENT_ORIGIN_PHYMODE", v28);
        CFRelease(cfe);
        v29 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 84);
        if (!v29 || (cff = v29, CFDictionaryAddValue(v6, @"ROAMEDEVENT_TARGET_PHYMODE", v29), CFRelease(cff), (cf = CFDataCreate(v7, a2 + 88, 6)) == 0))
        {
LABEL_59:
          value = 0;
          cf = 0;
          goto LABEL_62;
        }

        CFDictionaryAddValue(v6, @"ROAMEDEVENT_ORIGIN_ADDR", cf);
        value = CFDataCreate(v7, a2 + 94, 6);
        if (!value)
        {
          value = 0;
          goto LABEL_62;
        }

        CFDictionaryAddValue(v6, @"ROAMEDEVENT_TARGET_ADDR", value);
        v30 = CFNumberCreate(v7, kCFNumberSInt16Type, a2 + 106);
        if (v30)
        {
          v74 = v30;
          CFDictionaryAddValue(v6, @"ROAMEDEVENT_CHANNELS_SCANNED_COUNT", v30);
          CFRelease(v74);
          v75 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v75)
          {
            v31 = CFDataCreate(v7, a2 + 108, 6);
            if (v31)
            {
              v57 = v31;
              CFDictionaryAddValue(v75, @"BSSID", v31);
              CFRelease(v57);
              v32 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 120);
              if (v32)
              {
                v58 = v32;
                CFDictionaryAddValue(v75, @"AUTHEVENT_STATUS", v32);
                CFRelease(v58);
                v33 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 124);
                if (v33)
                {
                  v59 = v33;
                  CFDictionaryAddValue(v75, @"AUTHEVENT_REASON", v33);
                  CFRelease(v59);
                  v34 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 128);
                  if (v34)
                  {
                    v60 = v34;
                    CFDictionaryAddValue(v75, @"REASSOCEVENT_STATUS", v34);
                    CFRelease(v60);
                    v35 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 132);
                    if (v35)
                    {
                      v61 = v35;
                      CFDictionaryAddValue(v75, @"REASSOCEVENT_REASON", v35);
                      CFRelease(v61);
                      v36 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 136);
                      if (v36)
                      {
                        v62 = v36;
                        CFDictionaryAddValue(v75, @"SUPPLICANTEVENT_STATUS", v36);
                        CFRelease(v62);
                        v37 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 140);
                        if (v37)
                        {
                          v63 = v37;
                          CFDictionaryAddValue(v75, @"SUPPLICANTEVENT_REASON", v37);
                          CFRelease(v63);
                          v38 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 116);
                          if (v38)
                          {
                            v64 = v38;
                            CFDictionaryAddValue(v75, @"ROAM_STATUS_SUBSTATE_FLAGS", v38);
                            CFRelease(v64);
                            CFDictionarySetValue(v6, @"ROAM_STATUS_SUBSTATE_INFO", v75);
                            CFRelease(v75);
                            v76 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                            if (v76)
                            {
                              v39 = CFNumberCreate(v7, kCFNumberSInt64Type, a2 + 144);
                              if (v39)
                              {
                                v65 = v39;
                                CFDictionaryAddValue(v76, @"ROAM_SCAN_DURATION", v39);
                                CFRelease(v65);
                                v40 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 152);
                                if (v40)
                                {
                                  v66 = v40;
                                  CFDictionaryAddValue(v76, @"ROAM_FAILED_SCAN_COUNT", v40);
                                  CFRelease(v66);
                                  v41 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 153);
                                  if (v41)
                                  {
                                    v67 = v41;
                                    CFDictionaryAddValue(v76, @"ROAM_NUM_FULL_BAND_SCANS", v41);
                                    CFRelease(v67);
                                    v42 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 155);
                                    if (v42)
                                    {
                                      v68 = v42;
                                      CFDictionaryAddValue(v76, @"ROAM_NUM_PARTIAL_SCANS", v42);
                                      CFRelease(v68);
                                      v43 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 154);
                                      if (v43)
                                      {
                                        v69 = v43;
                                        CFDictionaryAddValue(v76, @"ROAM_NUM_ROAM_ATTEMPTS", v43);
                                        CFRelease(v69);
                                        v44 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 156);
                                        if (v44)
                                        {
                                          v70 = v44;
                                          CFDictionaryAddValue(v76, @"ROAM_NUM_ROAM_ABORTS", v44);
                                          CFRelease(v70);
                                          v45 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 157);
                                          if (v45)
                                          {
                                            v71 = v45;
                                            CFDictionaryAddValue(v76, @"ROAM_NUM_ROAM_OP_TIMEOUTS", v45);
                                            CFRelease(v71);
                                            v46 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 158);
                                            if (v46)
                                            {
                                              v72 = v46;
                                              CFDictionaryAddValue(v76, @"ROAM_NUM_ROAM_OP_FAILURES", v46);
                                              CFRelease(v72);
                                              CFDictionarySetValue(v6, @"ROAM_SCAN_SUMMARY", v76);
                                              CFRelease(v76);
                                              v77 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                              if (v77)
                                              {
                                                v47 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 160);
                                                if (v47)
                                                {
                                                  v73 = v47;
                                                  CFDictionaryAddValue(v77, @"ROAM_PKTS_PENDING_AQM", v47);
                                                  CFRelease(v73);
                                                  v48 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 161);
                                                  if (v48)
                                                  {
                                                    v49 = v48;
                                                    CFDictionaryAddValue(v77, @"ROAM_PKTS_PENDING_TXSUBQ", v48);
                                                    CFRelease(v49);
                                                    CFDictionarySetValue(v6, @"ROAM_PKT_LOSS_INFO", v77);
                                                    CFRelease(v77);
                                                    (*(a1 + 72))(0, a1, 80, v6, 8, *(a1 + 80));
                                                    goto LABEL_62;
                                                  }

                                                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    goto LABEL_62;
                                                  }

                                                  *buf = 136315138;
                                                  v95 = "_dispatchRoamStatus";
                                                  v55 = MEMORY[0x277D86220];
                                                  v56 = "%s:Pkt Loss PendingInTxSubQ allocation Failed!\n";
                                                }

                                                else
                                                {
                                                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    goto LABEL_62;
                                                  }

                                                  *buf = 136315138;
                                                  v95 = "_dispatchRoamStatus";
                                                  v55 = MEMORY[0x277D86220];
                                                  v56 = "%s:Pkt Loss PendingInAQM allocation Failed!\n";
                                                }
                                              }

                                              else
                                              {
                                                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                {
                                                  goto LABEL_62;
                                                }

                                                *buf = 136315138;
                                                v95 = "_dispatchRoamStatus";
                                                v55 = MEMORY[0x277D86220];
                                                v56 = "%s:array allocation Failed!\n";
                                              }
                                            }

                                            else
                                            {
                                              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                              {
                                                goto LABEL_62;
                                              }

                                              *buf = 136315138;
                                              v95 = "_dispatchRoamStatus";
                                              v55 = MEMORY[0x277D86220];
                                              v56 = "%s:Roam OP Failure Duration allocation Failed!\n";
                                            }
                                          }

                                          else
                                          {
                                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                            {
                                              goto LABEL_62;
                                            }

                                            *buf = 136315138;
                                            v95 = "_dispatchRoamStatus";
                                            v55 = MEMORY[0x277D86220];
                                            v56 = "%s:Roam Scan Op Timeout allocation Failed!\n";
                                          }
                                        }

                                        else
                                        {
                                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                          {
                                            goto LABEL_62;
                                          }

                                          *buf = 136315138;
                                          v95 = "_dispatchRoamStatus";
                                          v55 = MEMORY[0x277D86220];
                                          v56 = "%s:Num Roam aborts allocation Failed!\n";
                                        }
                                      }

                                      else
                                      {
                                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                        {
                                          goto LABEL_62;
                                        }

                                        *buf = 136315138;
                                        v95 = "_dispatchRoamStatus";
                                        v55 = MEMORY[0x277D86220];
                                        v56 = "%s:Roam Attempts allocation Failed!\n";
                                      }
                                    }

                                    else
                                    {
                                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                      {
                                        goto LABEL_62;
                                      }

                                      *buf = 136315138;
                                      v95 = "_dispatchRoamStatus";
                                      v55 = MEMORY[0x277D86220];
                                      v56 = "%s:Partial Scan Num allocation Failed!\n";
                                    }
                                  }

                                  else
                                  {
                                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_62;
                                    }

                                    *buf = 136315138;
                                    v95 = "_dispatchRoamStatus";
                                    v55 = MEMORY[0x277D86220];
                                    v56 = "%s:Full band scan count allocation Failed!\n";
                                  }
                                }

                                else
                                {
                                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_62;
                                  }

                                  *buf = 136315138;
                                  v95 = "_dispatchRoamStatus";
                                  v55 = MEMORY[0x277D86220];
                                  v56 = "%s:Failed Scan Count allocation Failed!\n";
                                }
                              }

                              else
                              {
                                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_62;
                                }

                                *buf = 136315138;
                                v95 = "_dispatchRoamStatus";
                                v55 = MEMORY[0x277D86220];
                                v56 = "%s:Roam Scan Duration allocation Failed!\n";
                              }
                            }

                            else
                            {
                              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_62;
                              }

                              *buf = 136315138;
                              v95 = "_dispatchRoamStatus";
                              v55 = MEMORY[0x277D86220];
                              v56 = "%s:array allocation Failed!\n";
                            }
                          }

                          else
                          {
                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_62;
                            }

                            *buf = 136315138;
                            v95 = "_dispatchRoamStatus";
                            v55 = MEMORY[0x277D86220];
                            v56 = "%s:flags allocation Failed!\n";
                          }
                        }

                        else
                        {
                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_62;
                          }

                          *buf = 136315138;
                          v95 = "_dispatchRoamStatus";
                          v55 = MEMORY[0x277D86220];
                          v56 = "%s:supplEvReason allocation Failed!\n";
                        }
                      }

                      else
                      {
                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_62;
                        }

                        *buf = 136315138;
                        v95 = "_dispatchRoamStatus";
                        v55 = MEMORY[0x277D86220];
                        v56 = "%s:supplEvStatus allocation Failed!\n";
                      }
                    }

                    else
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_62;
                      }

                      *buf = 136315138;
                      v95 = "_dispatchRoamStatus";
                      v55 = MEMORY[0x277D86220];
                      v56 = "%s:assocReason allocation Failed!\n";
                    }
                  }

                  else
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_62;
                    }

                    *buf = 136315138;
                    v95 = "_dispatchRoamStatus";
                    v55 = MEMORY[0x277D86220];
                    v56 = "%s:assocStatus allocation Failed!\n";
                  }
                }

                else
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_62;
                  }

                  *buf = 136315138;
                  v95 = "_dispatchRoamStatus";
                  v55 = MEMORY[0x277D86220];
                  v56 = "%s:authReason allocation Failed!\n";
                }
              }

              else
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_62;
                }

                *buf = 136315138;
                v95 = "_dispatchRoamStatus";
                v55 = MEMORY[0x277D86220];
                v56 = "%s:authStatus allocation Failed!\n";
              }
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_62;
              }

              *buf = 136315138;
              v95 = "_dispatchRoamStatus";
              v55 = MEMORY[0x277D86220];
              v56 = "%s:bssid allocation Failed!\n";
            }
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_62;
            }

            *buf = 136315138;
            v95 = "_dispatchRoamStatus";
            v55 = MEMORY[0x277D86220];
            v56 = "%s:array allocation Failed!\n";
          }

          _os_log_impl(&dword_254882000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 0xCu);
        }

LABEL_62:
        v52 = v79;
        v53 = v80;
        v51 = v78;
LABEL_63:
        CFRelease(v11);
        CFRelease(v9);
        if (v12)
        {
          CFRelease(v12);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        if (v53)
        {
          CFRelease(v53);
        }

        if (v52)
        {
          CFRelease(v52);
        }

        if (v82)
        {
          CFRelease(v82);
        }

        if (v81)
        {
          CFRelease(v81);
        }

        if (v51)
        {
          CFRelease(v51);
        }

        if (v85)
        {
          CFRelease(v85);
        }

        if (v83)
        {
          CFRelease(v83);
        }

        if (v84)
        {
          CFRelease(v84);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v50 = value;
        if (!value)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }
    }
  }

LABEL_92:
  v54 = *MEMORY[0x277D85DE8];
}

void _dispatchAssoc(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a3 == 8)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"ASSOCEVENT_STATUS", v8);
          v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"ASSOCEVENT_REASON", v10);
            (*(a1 + 72))(0, a1, 78, v6, 8, *(a1 + 80));
            CFRelease(v11);
          }

          CFRelease(v9);
        }

        CFRelease(v6);
      }
    }
  }
}

void _dispatchRoamScanEnd(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a2)
  {
    if (a3 == 216)
    {
      DictFromRoamState = _createDictFromRoamState(a2);
      if (DictFromRoamState)
      {
        v5 = DictFromRoamState;
        (*(a1 + 72))(0, a1, 138, DictFromRoamState, 8, *(a1 + 80));

        CFRelease(v5);
      }
    }
  }
}

void _dispatchRoamPrep(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a3 == 12)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"ROAM_SCAN_REASON", v8);
          CFRelease(v9);
          v10 = ether_ntoa((a2 + 4));
          if (v10)
          {
            v11 = CFStringCreateWithCString(v7, v10, 0x8000100u);
            if (v11)
            {
              v12 = v11;
              CFDictionaryAddValue(v6, @"BSSID", v11);
              CFRelease(v12);
              (*(a1 + 72))(0, a1, 139, v6, 8, *(a1 + 80));
            }
          }
        }

        CFRelease(v6);
      }
    }
  }
}

void _dispatchBeaconCacheUpdate(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a3 == 12)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"BEACON_CACHE_UPDATED_EVENT_STATUS", v8);
          CFRelease(v9);
          v10 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 4));
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"BEACON_CACHE_UPDATED_EVENT_REASON", v10);
            CFRelease(v11);
            v12 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 8));
            if (v12)
            {
              v13 = v12;
              CFDictionaryAddValue(v6, @"BEACON_CACHE_UPDATED_EVENT_NUM_CHAN", v12);
              CFRelease(v13);
              (*(a1 + 72))(0, a1, 180, v6, 8, *(a1 + 80));
            }
          }
        }

        CFRelease(v6);
      }
    }
  }
}

void _dispatchBssSteeringRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v43 = "_dispatchBssSteeringRequest";
    v44 = 1024;
    LODWORD(v45) = 7798;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d Processing _dispatchBssSteeringRequest\n", buf, 0x12u);
  }

  if (a2 && a3 > 0x4B)
  {
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      v9 = CFNumberCreate(v6, kCFNumberIntType, a2);
      if (!v9)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *buf = 136315138;
        v43 = "_dispatchBssSteeringRequest";
        v37 = MEMORY[0x277D86220];
        v38 = "%s: Failed to allocate memory for Steering Request Type \n";
        goto LABEL_63;
      }

      v10 = v9;
      CFDictionaryAddValue(v8, @"P2P_BSS_STEERING_REQUEST_TYPE", v9);
      CFRelease(v10);
      valuePtr = *(a2 + 16);
      v11 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
      if (!v11)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *buf = 136315138;
        v43 = "_dispatchBssSteeringRequest";
        v37 = MEMORY[0x277D86220];
        v38 = "%s: Failed to allocate memory for requestedChannel\n";
        goto LABEL_63;
      }

      v12 = v11;
      CFDictionaryAddValue(v8, @"CHANNEL", v11);
      CFRelease(v12);
      v13 = CFNumberCreate(v6, kCFNumberIntType, (a2 + 20));
      if (!v13)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *buf = 136315138;
        v43 = "_dispatchBssSteeringRequest";
        v37 = MEMORY[0x277D86220];
        v38 = "%s: Failed to allocate memory for requestedChannel flags\n";
        goto LABEL_63;
      }

      v14 = v13;
      CFDictionaryAddValue(v8, @"CHANNEL_FLAGS", v13);
      CFRelease(v14);
      if (*(a2 + 64) == 1)
      {
        v40 = 4;
        v15 = CFNumberCreate(v6, kCFNumberCharType, &v40);
        if (!v15)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_39;
          }

          *buf = 136315138;
          v43 = "_dispatchBssSteeringRequest";
          v37 = MEMORY[0x277D86220];
          v38 = "%s: Failed to allocate memory for steering band\n";
          goto LABEL_63;
        }

        v16 = v15;
        CFDictionaryAddValue(v8, @"BAND_PREFERENCE", v15);
        CFRelease(v16);
      }

      v17 = CFNumberCreate(v6, kCFNumberIntType, (a2 + 60));
      if (v17)
      {
        v18 = v17;
        CFDictionaryAddValue(v8, @"P2P_BSS_STEERING_JOIN_TIMEOUT_IN_MS", v17);
        CFRelease(v18);
        v19 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 68));
        if (v19)
        {
          v20 = v19;
          CFDictionaryAddValue(v8, @"ROAM_FLAGS", v19);
          CFRelease(v20);
          v21 = *(a2 + 24);
          if (v21 >= 0x20)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_39;
            }

            *buf = 136315394;
            v43 = "_dispatchBssSteeringRequest";
            v44 = 1024;
            LODWORD(v45) = v21;
            v37 = MEMORY[0x277D86220];
            v38 = "%s: ssid length is invalid:%u\n";
            v39 = 18;
LABEL_64:
            _os_log_impl(&dword_254882000, v37, OS_LOG_TYPE_DEFAULT, v38, buf, v39);
            goto LABEL_39;
          }

          if (!v21)
          {
            goto LABEL_36;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v43 = "_dispatchBssSteeringRequest";
            v44 = 1024;
            LODWORD(v45) = v21;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: ssid length is :%u\n", buf, 0x12u);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v43 = "_dispatchBssSteeringRequest";
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: ssid buffer = ", buf, 0xCu);
          }

          v22 = *(a2 + 24);
          if (v22)
          {
            v23 = 0;
            v24 = MEMORY[0x277D86220];
            do
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = *(a2 + 28 + v23);
                *buf = 67109120;
                LODWORD(v43) = v25;
                _os_log_impl(&dword_254882000, v24, OS_LOG_TYPE_DEFAULT, "0x%0x ", buf, 8u);
                v22 = *(a2 + 24);
              }

              ++v23;
            }

            while (v22 > v23);
            v26 = v22;
          }

          else
          {
            v26 = 0;
          }

          v30 = CFStringCreateWithBytes(v6, (a2 + 28), v26, 0x8000100u, 0);
          v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v30)
          {
            if (v31)
            {
              v32 = *(a2 + 24);
              *buf = 136315394;
              v43 = "_dispatchBssSteeringRequest";
              v44 = 1024;
              LODWORD(v45) = v32;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: SSID is of length :%u\n", buf, 0x12u);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v43 = "_dispatchBssSteeringRequest";
              v44 = 2080;
              v45 = a2 + 28;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: SSID is :%s \n", buf, 0x16u);
            }

            CFDictionaryAddValue(v8, @"SSID_STR", v30);
            CFRelease(v30);
LABEL_36:
            v33 = ether_ntoa((a2 + 4));
            if (v33)
            {
              v34 = CFStringCreateWithCString(v6, v33, 0x8000100u);
              if (v34)
              {
                v35 = v34;
                CFDictionaryAddValue(v8, @"BSSID", v34);
                CFRelease(v35);
                (*(a1 + 72))(0, a1, 140, v8, 8, *(a1 + 80));
LABEL_39:
                CFRelease(v8);
                goto LABEL_40;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_39;
              }

              *buf = 136315138;
              v43 = "_dispatchBssSteeringRequest";
              v37 = MEMORY[0x277D86220];
              v38 = "%s: Failed to create bssid string \n";
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_39;
              }

              *buf = 136315138;
              v43 = "_dispatchBssSteeringRequest";
              v37 = MEMORY[0x277D86220];
              v38 = "%s: Failed to convert BSSID to Ascii format\n";
            }

            goto LABEL_63;
          }

          if (!v31)
          {
            goto LABEL_39;
          }

          *buf = 136315138;
          v43 = "_dispatchBssSteeringRequest";
          v37 = MEMORY[0x277D86220];
          v38 = "%s: Failed to create SSID string[kCFStringEncodingUTF8]\n";
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_39;
          }

          *buf = 136315138;
          v43 = "_dispatchBssSteeringRequest";
          v37 = MEMORY[0x277D86220];
          v38 = "%s: Failed to allocate memory for steering flag\n";
        }
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *buf = 136315138;
        v43 = "_dispatchBssSteeringRequest";
        v37 = MEMORY[0x277D86220];
        v38 = "%s: Failed to allocate memory for join timeout\n";
      }

LABEL_63:
      v39 = 12;
      goto LABEL_64;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *buf = 136315138;
    v43 = "_dispatchBssSteeringRequest";
    v27 = MEMORY[0x277D86220];
    v28 = "%s: Failed to allocate memory for BSS-Steering Dictionary\n";
    v29 = 12;
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v43 = "_dispatchBssSteeringRequest";
    v44 = 1024;
    LODWORD(v45) = 7801;
    v27 = MEMORY[0x277D86220];
    v28 = "%s:%d Invalid event data args !\n";
    v29 = 18;
LABEL_28:
    _os_log_impl(&dword_254882000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v29);
  }

LABEL_40:
  v36 = *MEMORY[0x277D85DE8];
}

void _dispatchSoftAPLPMEvent(uint64_t a1, _DWORD *a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2)
  {
    goto LABEL_15;
  }

  if (a3 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "_dispatchSoftAPLPMEvent";
      v17 = 1024;
      v18 = a3;
      v11 = MEMORY[0x277D86220];
      v12 = "%s:SoftAP LPM event with insufficient DataLen:%u\n";
      v13 = 18;
LABEL_14:
      _os_log_impl(&dword_254882000, v11, OS_LOG_TYPE_DEFAULT, v12, &v15, v13);
    }

LABEL_15:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "_dispatchSoftAPLPMEvent";
      v11 = MEMORY[0x277D86220];
      v12 = "%s: SoftAP LPM Dictionary has NULL Data, Bail out\n";
      v13 = 12;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v7 = Mutable;
  v8 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v8 = MEMORY[0x277CBED10];
  }

  v9 = *v8;
  CFDictionaryAddValue(Mutable, @"SOFTAP_LPM", *v8);
  CFRelease(v9);
  (*(a1 + 72))(0, a1, 141, v7, 8, *(a1 + 80));
  v10 = *MEMORY[0x277D85DE8];

  CFRelease(v7);
}

void _dispatchActionFrameEvent(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if (a3 <= 2)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      valuePtr = 136315394;
      v33 = "_dispatchActionFrameEvent";
      v34 = 1024;
      v35 = a3;
      v25 = MEMORY[0x277D86220];
      v26 = "%s:Action Frame Event data is insuffcient :%u\n";
      v27 = 18;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v7 = Mutable;
        if (*a2 != 10)
        {
LABEL_13:
          (*(a1 + 72))(0, a1, 143, v7, 8, *(a1 + 80));
LABEL_14:
          CFRelease(v7);
          goto LABEL_15;
        }

        v8 = *MEMORY[0x277CBECE8];
        v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, a2);
        CFDictionaryAddValue(v7, @"CATEGORY_CODE", v9);
        CFRelease(v9);
        v10 = CFNumberCreate(v8, kCFNumberSInt8Type, a2 + 1);
        CFDictionaryAddValue(v7, @"ACTION_CODE", v10);
        CFRelease(v10);
        v11 = CFNumberCreate(v8, kCFNumberSInt8Type, a2 + 2);
        CFDictionaryAddValue(v7, @"DIALOG_TOKEN", v11);
        CFRelease(v11);
        v12 = a2[1];
        if (v12 == 8)
        {
          if (a3 != 3)
          {
            v21 = CFNumberCreate(v8, kCFNumberSInt8Type, a2 + 3);
            CFDictionaryAddValue(v7, @"BTM_RSP_STATUS", v21);
            CFRelease(v21);
            v19 = CFNumberCreate(v8, kCFNumberSInt8Type, a2 + 4);
            v20 = @"BSS_TERM_DELAY";
            goto LABEL_12;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          valuePtr = 136315394;
          v33 = "_dispatchActionFrameEvent";
          v34 = 1024;
          v35 = 3;
          v23 = MEMORY[0x277D86220];
          v24 = "%s:BTM Response Frame Event data is insuffcient :%u\n";
        }

        else if (v12 == 7)
        {
          if (a3 > 5)
          {
            LOBYTE(valuePtr) = a2[3] & 1;
            v13 = CFNumberCreate(v8, kCFNumberSInt8Type, &valuePtr);
            CFDictionaryAddValue(v7, @"PREF_CANDIDATE_INCLUDED", v13);
            CFRelease(v13);
            v31 = (a2[3] & 2) != 0;
            v14 = CFNumberCreate(v8, kCFNumberSInt8Type, &v31);
            CFDictionaryAddValue(v7, @"ABRIDGED", v14);
            CFRelease(v14);
            v30 = (a2[3] & 4) != 0;
            v15 = CFNumberCreate(v8, kCFNumberSInt8Type, &v30);
            CFDictionaryAddValue(v7, @"DISASSOC_IMMINENT", v15);
            CFRelease(v15);
            v29 = (a2[3] & 8) != 0;
            v16 = CFNumberCreate(v8, kCFNumberSInt8Type, &v29);
            CFDictionaryAddValue(v7, @"BSS_TERM_INCLUDED", v16);
            CFRelease(v16);
            v28 = (a2[3] & 0x10) != 0;
            v17 = CFNumberCreate(v8, kCFNumberSInt8Type, &v28);
            CFDictionaryAddValue(v7, @"ESS_TERM_INCLUDED", v17);
            CFRelease(v17);
            v18 = CFNumberCreate(v8, kCFNumberSInt16Type, a2 + 4);
            CFDictionaryAddValue(v7, @"DISASSOC_TIMEOUT", v18);
            CFRelease(v18);
            v19 = CFNumberCreate(v8, kCFNumberSInt8Type, a2 + 6);
            v20 = @"VALIDITY_INTERVAL";
LABEL_12:
            CFDictionaryAddValue(v7, v20, v19);
            CFRelease(v19);
            goto LABEL_13;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          valuePtr = 136315394;
          v33 = "_dispatchActionFrameEvent";
          v34 = 1024;
          v35 = a3;
          v23 = MEMORY[0x277D86220];
          v24 = "%s:BTM Req Frame Event data is insuffcient :%u\n";
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          valuePtr = 136315394;
          v33 = "_dispatchActionFrameEvent";
          v34 = 1024;
          v35 = v12;
          v23 = MEMORY[0x277D86220];
          v24 = "%s:Invalid Action Frame Event:%u\n";
        }

        _os_log_impl(&dword_254882000, v23, OS_LOG_TYPE_DEFAULT, v24, &valuePtr, 0x12u);
        goto LABEL_14;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      valuePtr = 136315138;
      v33 = "_dispatchActionFrameEvent";
      v25 = MEMORY[0x277D86220];
      v26 = "%s: Could not create Action Frame Event Dictionary, Bail out\n";
      v27 = 12;
    }

    _os_log_impl(&dword_254882000, v25, OS_LOG_TYPE_DEFAULT, v26, &valuePtr, v27);
  }

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

void _dispatchDPS(uint64_t a1, uint64_t a2, int a3)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v28[0] = @"DPS_BE_TRID";
  v28[1] = @"DPS_BK_TRID";
  v28[2] = @"DPS_VI_TRID";
  v28[3] = @"DPS_VO_TRID";
  if (a1 && a2)
  {
    if (a3 == 40)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136315138;
        v25 = "_dispatchDPS";
        v20 = MEMORY[0x277D86220];
        v21 = "%s: DPS Notification Dictionary has NULL Data, Bail out\n";
        v22 = 12;
        goto LABEL_19;
      }

      v7 = Mutable;
      v8 = *MEMORY[0x277CBECE8];
      v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
      CFDictionaryAddValue(v7, @"DPS_AC", v9);
      CFRelease(v9);
      v10 = CFNumberCreate(v8, kCFNumberSInt32Type, (a2 + 8));
      CFDictionaryAddValue(v7, @"DPS_CCA", v10);
      CFRelease(v10);
      v11 = CFNumberCreate(v8, kCFNumberLongLongType, (a2 + 16));
      CFDictionaryAddValue(v7, @"DPS_TIMESTAMP", v11);
      CFRelease(v11);
      v12 = *MEMORY[0x277CBED28];
      v13 = *MEMORY[0x277CBED10];
      if (*(a2 + 4))
      {
        v14 = *MEMORY[0x277CBED28];
      }

      else
      {
        v14 = *MEMORY[0x277CBED10];
      }

      CFDictionaryAddValue(v7, @"DPS_SYMPTOMS_TRIGGER", v14);
      v15 = 0;
      while (1)
      {
        valuePtr = *(a2 + 24 + 2 * v15);
        v16 = CFNumberCreate(v8, kCFNumberSInt16Type, &valuePtr);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        CFDictionaryAddValue(v7, v28[v15], v16);
        CFRelease(v17);
        if (++v15 == 4)
        {
          if (*(a2 + 32))
          {
            v18 = v12;
          }

          else
          {
            v18 = v13;
          }

          CFDictionaryAddValue(v7, @"DPS_ISNAN_ENABLED", v18);
          (*(a1 + 72))(0, a1, 150, v7, 8, *(a1 + 80));
          CFRelease(v7);
          goto LABEL_15;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 136315394;
      v25 = "_dispatchDPS";
      v26 = 1024;
      v27 = v15;
      v20 = MEMORY[0x277D86220];
      v21 = "%s: DPS Notification TrInfo is NULL for id:%d\n";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 136315394;
      v25 = "_dispatchDPS";
      v26 = 1024;
      v27 = a3;
      v20 = MEMORY[0x277D86220];
      v21 = "%s:DPS notification with insufficient DataLen:%u\n";
    }

    v22 = 18;
LABEL_19:
    _os_log_impl(&dword_254882000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
  }

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

void _dispatchP2PCountryCodeChange(uint64_t a1, const char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "_dispatchP2PCountryCodeChange";
      v15 = 2080;
      v16 = a2 + 4;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: CountryCode : %s \n", &v13, 0x16u);
    }

    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = CFNumberCreate(v4, kCFNumberSInt32Type, a2);
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(v6, @"P2P_CC_VERSION", v7);
        CFRelease(v8);
        v9 = CFStringCreateWithCString(v4, a2 + 4, 0x8000100u);
        if (v9)
        {
          v10 = v9;
          CFDictionarySetValue(v6, @"P2P_CC_COUNTRY", v9);
          CFRelease(v10);
          v7 = CFNumberCreate(v4, kCFNumberSInt32Type, a2 + 8);
          if (v7)
          {
            v11 = v7;
            CFDictionarySetValue(v6, @"P2P_CC_FLAGS", v7);
            CFRelease(v11);
            v7 = 0;
          }
        }

        else
        {
          v7 = 4294963395;
        }
      }

      (*(a1 + 72))(v7, a1, 210, v6, 8, *(a1 + 80));
      CFRelease(v6);
    }

    else
    {
      (*(a1 + 72))(4294963395, a1, 210, 0, 8, *(a1 + 80));
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void _dispatchSlowWiFi(uint64_t a1, uint64_t a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if (a3 == 24)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v7 = Mutable;
        v8 = *MEMORY[0x277CBECE8];
        v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (a2 + 8));
        if (v9)
        {
          v10 = v9;
          CFDictionaryAddValue(v7, @"SLOWWIFI_ACTION_STAGE", v9);
          CFRelease(v10);
          v11 = CFNumberCreate(v8, kCFNumberSInt32Type, (a2 + 12));
          if (v11)
          {
            v12 = v11;
            CFDictionaryAddValue(v7, @"SLOWWIFI_ACTION_TYPE", v11);
            CFRelease(v12);
            v13 = CFNumberCreate(v8, kCFNumberSInt32Type, (a2 + 16));
            if (v13)
            {
              v14 = v13;
              CFDictionaryAddValue(v7, @"SLOWWIFI_ACTION_REASON", v13);
              CFRelease(v14);
              v15 = *MEMORY[0x277CBED28];
              v16 = *MEMORY[0x277CBED10];
              if ((*a2 & 2) != 0)
              {
                v17 = *MEMORY[0x277CBED28];
              }

              else
              {
                v17 = *MEMORY[0x277CBED10];
              }

              CFDictionaryAddValue(v7, @"SLOWWIFI_IS_BAP_AP", v17);
              if (*a2)
              {
                v18 = v15;
              }

              else
              {
                v18 = v16;
              }

              CFDictionaryAddValue(v7, @"SLOWWIFI_RECOVERY_ENABLED", v18);
              v19 = CFNumberCreate(v8, kCFNumberSInt32Type, (a2 + 20));
              if (v19)
              {
                v20 = v19;
                CFDictionaryAddValue(v7, @"SLOWWIFI_USER_INPUT", v19);
                CFRelease(v20);
                v21 = ether_ntoa((a2 + 1));
                if (v21)
                {
                  v22 = CFStringCreateWithCString(v8, v21, 0x8000100u);
                  if (v22)
                  {
                    v23 = v22;
                    CFDictionaryAddValue(v7, @"SLOWWIFI_BSSID", v22);
                    CFRelease(v23);
                    (*(a1 + 72))(0, a1, 151, v7, 8, *(a1 + 80));
LABEL_18:
                    CFRelease(v7);
                    goto LABEL_19;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_18;
                  }

                  LOWORD(v30) = 0;
                  v28 = MEMORY[0x277D86220];
                  v29 = "Failed to get bssid ref";
                }

                else
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_18;
                  }

                  LOWORD(v30) = 0;
                  v28 = MEMORY[0x277D86220];
                  v29 = "Failed to get bssid string";
                }
              }

              else
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_18;
                }

                LOWORD(v30) = 0;
                v28 = MEMORY[0x277D86220];
                v29 = "Failed to allocation userInput ref";
              }
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_18;
              }

              LOWORD(v30) = 0;
              v28 = MEMORY[0x277D86220];
              v29 = "Failed to allocate actionReason ref";
            }
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_18;
            }

            LOWORD(v30) = 0;
            v28 = MEMORY[0x277D86220];
            v29 = "Failed to allocate actionType ref";
          }
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          LOWORD(v30) = 0;
          v28 = MEMORY[0x277D86220];
          v29 = "Failed to allocate actionStage ref";
        }

        _os_log_impl(&dword_254882000, v28, OS_LOG_TYPE_DEFAULT, v29, &v30, 2u);
        goto LABEL_18;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v30 = 136315138;
      v31 = "_dispatchSlowWiFi";
      v25 = MEMORY[0x277D86220];
      v26 = "%s: SlowWiFi Notification Dictionary has NULL Data, Bail out\n";
      v27 = 12;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v30 = 136315394;
      v31 = "_dispatchSlowWiFi";
      v32 = 1024;
      v33 = a3;
      v25 = MEMORY[0x277D86220];
      v26 = "%s:SlowWiFi notification with insufficient DataLen:%u\n";
      v27 = 18;
    }

    _os_log_impl(&dword_254882000, v25, OS_LOG_TYPE_DEFAULT, v26, &v30, v27);
  }

LABEL_19:
  v24 = *MEMORY[0x277D85DE8];
}

void _dispatchSlowWiFiLinkProbeTrigger(uint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_8;
  }

  v3 = a2;
  if (!a2)
  {
    goto LABEL_8;
  }

  if (a3 != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    v16 = "_dispatchSlowWiFiLinkProbeTrigger";
    v17 = 1024;
    v18 = a3;
    v11 = MEMORY[0x277D86220];
    v12 = "%s:SlowWiFi probe trigger with insufficient DataLen:%u\n";
    v13 = 18;
LABEL_13:
    _os_log_impl(&dword_254882000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *buf = 136315138;
    v16 = "_dispatchSlowWiFiLinkProbeTrigger";
    v11 = MEMORY[0x277D86220];
    v12 = "%s: SlowWiFi probe trigger Dictionary has NULL Data, Bail out\n";
    v13 = 12;
    goto LABEL_13;
  }

  v7 = Mutable;
  valuePtr = v3;
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v7, @"SLOWWIFI_DOWNLOAD_SIZE", v8);
    CFRelease(v9);
    (*(a1 + 72))(0, a1, 164, v7, 8, *(a1 + 80));
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to allocate downloadSizeRef", buf, 2u);
  }

  CFRelease(v7);
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

void _dispatchSlowWiFiUserInputTrigger(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2)
  {
    goto LABEL_13;
  }

  if (a3 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "_dispatchSlowWiFiUserInputTrigger";
      v14 = 1024;
      v15 = a3;
      v8 = MEMORY[0x277D86220];
      v9 = "%s:SlowWiFi user input trigger with insufficient DataLen:%u\n";
      v10 = 18;
LABEL_12:
      _os_log_impl(&dword_254882000, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, v10);
    }

LABEL_13:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "_dispatchSlowWiFiUserInputTrigger";
      v8 = MEMORY[0x277D86220];
      v9 = "%s: SlowWiFi user input trigger Dictionary has NULL Data, Bail out\n";
      v10 = 12;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v6 = Mutable;
  (*(a1 + 72))(0, a1, 165, Mutable, 8, *(a1 + 80));
  v7 = *MEMORY[0x277D85DE8];

  CFRelease(v6);
}

void _dispatchLqmCrashTracer(uint64_t a1, const void *a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2)
  {
    goto LABEL_8;
  }

  if (a3 != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v14 = 136315394;
    v15 = "_dispatchLqmCrashTracer";
    v16 = 1024;
    v17 = a3;
    v11 = MEMORY[0x277D86220];
    v12 = "%s:LQM CrashTracer Event with insufficient DataLen:%u\n";
    v13 = 18;
LABEL_13:
    _os_log_impl(&dword_254882000, v11, OS_LOG_TYPE_DEFAULT, v12, &v14, v13);
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v14 = 136315138;
    v15 = "_dispatchLqmCrashTracer";
    v11 = MEMORY[0x277D86220];
    v12 = "%s: LQM CrashTracer Dictionary has NULL Data, Bail out\n";
    v13 = 12;
    goto LABEL_13;
  }

  v7 = Mutable;
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v7, @"LQM_CRASHTRACER_CAPTURE_REASON", v8);
    CFRelease(v9);
    (*(a1 + 72))(0, a1, 176, v7, 8, *(a1 + 80));
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to allocate captureReasonRef\n", &v14, 2u);
  }

  CFRelease(v7);
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

void _dispatchTrafficInfoEvent(uint64_t a1, _BYTE *a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2)
  {
    goto LABEL_19;
  }

  if (a3 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "_dispatchTrafficInfoEvent";
      v19 = 1024;
      v20 = a3;
      v13 = MEMORY[0x277D86220];
      v14 = "%s:Traffic Info event with insufficient DataLen:%u\n";
      v15 = 18;
LABEL_18:
      _os_log_impl(&dword_254882000, v13, OS_LOG_TYPE_DEFAULT, v14, &v17, v15);
    }

LABEL_19:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "_dispatchTrafficInfoEvent";
      v13 = MEMORY[0x277D86220];
      v14 = "%s: Traffic InfoDictionary has NULL Data, Bail out\n";
      v15 = 12;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v7 = Mutable;
  v8 = *MEMORY[0x277CBED28];
  v9 = *MEMORY[0x277CBED10];
  if (*a2)
  {
    v10 = *MEMORY[0x277CBED28];
  }

  else
  {
    v10 = *MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"CRITICAL_TRAFFIC_STATE", v10);
  CFRelease(v10);
  if (a2[1])
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  CFDictionaryAddValue(v7, @"NON_CRITICAL_TRAFFIC_STATE", v11);
  CFRelease(v11);
  (*(a1 + 72))(0, a1, 189, v7, 8, *(a1 + 80));
  v12 = *MEMORY[0x277D85DE8];

  CFRelease(v7);
}

void _dispatchSensingResults(uint64_t a1, _BYTE *a2, int a3)
{
  v4 = 0;
  v60 = *MEMORY[0x277D85DE8];
  v5 = 4294963396;
  Mutable = 0;
  if (a2 && a3 == 4)
  {
    v5 = *a2;
    if (*a2)
    {
      v4 = 0;
LABEL_7:
      Mutable = 0;
      goto LABEL_8;
    }

    v4 = malloc_type_malloc(0x1054uLL, 0x1000040727A5468uLL);
    bzero(v4, 0x1054uLL);
    v57 = 0u;
    v58 = 0u;
    __strlcpy_chk();
    LODWORD(v58) = 410;
    DWORD2(v58) = 4180;
    v59 = v4;
    v7 = Apple80211RawGet(a1, &v57);
    if (v7)
    {
      v5 = v7;
      goto LABEL_7;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v9 = ether_ntoa((v4 + 4));
      if (v9)
      {
        v10 = *MEMORY[0x277CBECE8];
        v11 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v9, 0x8000100u);
        if (v11)
        {
          v12 = v11;
          CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_TA", v11);
          CFRelease(v12);
          v13 = ether_ntoa((v4 + 10));
          if (v13)
          {
            v14 = CFStringCreateWithCString(v10, v13, 0x8000100u);
            if (v14)
            {
              v15 = v14;
              CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_RA", v14);
              CFRelease(v15);
              v16 = ether_ntoa((v4 + 16));
              if (v16)
              {
                v17 = CFStringCreateWithCString(v10, v16, 0x8000100u);
                if (v17)
                {
                  v18 = v17;
                  CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_BSSID", v17);
                  CFRelease(v18);
                  v19 = CFNumberCreate(v10, kCFNumberIntType, v4 + 24);
                  if (v19)
                  {
                    v20 = v19;
                    CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_NUM_TONES", v19);
                    CFRelease(v20);
                    v21 = CFNumberCreate(v10, kCFNumberIntType, v4 + 28);
                    if (v21)
                    {
                      v22 = v21;
                      CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_CHANNEL", v21);
                      CFRelease(v22);
                      v23 = CFNumberCreate(v10, kCFNumberIntType, v4 + 32);
                      if (v23)
                      {
                        v24 = v23;
                        CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_BW", v23);
                        CFRelease(v24);
                        v25 = CFNumberCreate(v10, kCFNumberIntType, v4 + 36);
                        if (v25)
                        {
                          v26 = v25;
                          CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_FRAME_TYPE", v25);
                          CFRelease(v26);
                          v27 = CFNumberCreate(v10, kCFNumberIntType, v4 + 40);
                          if (v27)
                          {
                            v28 = v27;
                            CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_NSTS", v27);
                            CFRelease(v28);
                            v29 = CFNumberCreate(v10, kCFNumberIntType, v4 + 44);
                            if (v29)
                            {
                              v30 = v29;
                              CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_SLICE", v29);
                              CFRelease(v30);
                              v31 = CFNumberCreate(v10, kCFNumberIntType, v4 + 48);
                              if (v31)
                              {
                                v32 = v31;
                                CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_NUM_RX_CORES", v31);
                                CFRelease(v32);
                                v33 = CFNumberCreate(v10, kCFNumberIntType, v4 + 52);
                                if (v33)
                                {
                                  v34 = v33;
                                  CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_NUM_STREAMS", v33);
                                  CFRelease(v34);
                                  v35 = CFNumberCreate(v10, kCFNumberIntType, v4 + 56);
                                  if (v35)
                                  {
                                    v36 = v35;
                                    CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_AGC_GAIN", v35);
                                    CFRelease(v36);
                                    v37 = CFNumberCreate(v10, kCFNumberIntType, v4 + 60);
                                    if (v37)
                                    {
                                      v38 = v37;
                                      CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_NUM_RSSI", v37);
                                      CFRelease(v38);
                                      v39 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
                                      if (v39)
                                      {
                                        v40 = v39;
                                        if (*(v4 + 15))
                                        {
                                          v41 = 0;
                                          v42 = v4 + 64;
                                          while (1)
                                          {
                                            v43 = CFNumberCreate(v10, kCFNumberIntType, v42);
                                            if (!v43)
                                            {
                                              break;
                                            }

                                            v44 = v43;
                                            CFArrayAppendValue(v40, v43);
                                            CFRelease(v44);
                                            ++v41;
                                            v42 += 4;
                                            if (v41 >= *(v4 + 15))
                                            {
                                              goto LABEL_35;
                                            }
                                          }

                                          v55 = v40;
                                          goto LABEL_44;
                                        }

LABEL_35:
                                        CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_INFO_RSSI", v40);
                                        CFRelease(v40);
                                        v45 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
                                        if (v45)
                                        {
                                          v46 = v45;
                                          if (*(v4 + 1044) < 4u)
                                          {
LABEL_40:
                                            CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_BUFFER", v46);
                                            CFRelease(v46);
                                            v51 = CFNumberCreate(v10, kCFNumberIntType, v4 + 4176);
                                            if (v51)
                                            {
                                              v52 = v51;
                                              CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_BUFFER_LEN", v51);
                                              CFRelease(v52);
                                              valuePtr = CFAbsoluteTimeGetCurrent();
                                              v53 = CFNumberCreate(v10, kCFNumberDoubleType, &valuePtr);
                                              if (v53)
                                              {
                                                v54 = v53;
                                                CFDictionarySetValue(Mutable, @"SENSING_RESULTS_DATA_TIMESTAMP", v53);
                                                v55 = v54;
LABEL_44:
                                                CFRelease(v55);
                                                v5 = 0;
                                                goto LABEL_8;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            v47 = 0;
                                            v48 = v4 + 80;
                                            while (1)
                                            {
                                              v49 = CFNumberCreate(v10, kCFNumberIntType, v48);
                                              if (!v49)
                                              {
                                                break;
                                              }

                                              v50 = v49;
                                              CFArrayAppendValue(v46, v49);
                                              CFRelease(v50);
                                              ++v47;
                                              v48 += 4;
                                              if (v47 >= *(v4 + 1044) >> 2)
                                              {
                                                goto LABEL_40;
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
              }
            }
          }
        }
      }
    }

    v5 = 4294963396;
  }

LABEL_8:
  pthread_mutex_lock((a1 + 1752));
  *(a1 + 1816) = 0;
  pthread_mutex_unlock((a1 + 1752));
  (*(a1 + 72))(v5, a1, 193, Mutable, 8, *(a1 + 80));
  if (v4)
  {
    free(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void _dispatchTTRFromDriver(uint64_t a1, const char *a2, int a3)
{
  if (a2)
  {
    if (a3 == 260)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"DRIVER_TTR_Reason", v8);
          CFRelease(v9);
          v10 = CFStringCreateWithCString(v7, a2 + 4, 0x600u);
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"DRIVER_TTR_Reason_String", v10);
            CFRelease(v11);
            (*(a1 + 72))(0, a1, 196, v6, 8, *(a1 + 80));
          }
        }

        CFRelease(v6);
      }
    }
  }
}

void _dispatchColocatedCacheEvent(uint64_t a1, int *a2, int a3)
{
  if (!a1 || (*(a1 + 99) & 0x40) == 0)
  {
    return;
  }

  if (!a3)
  {
    v5 = 0;
    goto LABEL_34;
  }

  if (!a2)
  {
    syslog(3, " netList is NULL \n");
    return;
  }

  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v5 = Mutable;
    if (*a2 >= 1)
    {
      theArray = Mutable;
      v8 = 0;
      v9 = (a2 + 14);
      while (1)
      {
        v10 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v10)
        {
          break;
        }

        v11 = v10;
        if (*(v9 - 20))
        {
          v12 = CFStringCreateWithBytes(v6, v9 - 52, *(v9 - 20), 0x8000100u, 0);
          v13 = CFDataCreate(v6, v9 - 52, *(v9 - 20));
        }

        else
        {
          v12 = 0;
          v13 = 0;
        }

        v14 = ether_ntoa((v9 - 19));
        if (v14)
        {
          v15 = CFStringCreateWithCString(v6, v14, 0x8000100u);
          if (v15)
          {
            CFDictionarySetValue(v11, @"BSSID", v15);
            v16 = CFNumberCreate(v6, kCFNumberSInt16Type, v9);
            if (v16)
            {
              v17 = v16;
              CFDictionarySetValue(v11, @"RSSI", v16);
              CFRelease(v17);
              if (v13)
              {
                CFDictionarySetValue(v11, @"SSID", v13);
              }

              if (v12)
              {
                CFDictionarySetValue(v11, @"SSID_STR", v12);
              }

              CFArrayAppendValue(theArray, v11);
            }

            v18 = 1;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
          v15 = 0;
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        CFRelease(v11);
        if ((v18 & 1) == 0)
        {
          break;
        }

        ++v8;
        v9 += 56;
        if (v8 >= *a2)
        {
          v5 = theArray;
          goto LABEL_34;
        }
      }

      v5 = theArray;
LABEL_35:

      CFRelease(v5);
      return;
    }

LABEL_34:
    (*(a1 + 72))(0, a1, 199, v5, 8, *(a1 + 80));
    if (!v5)
    {
      return;
    }

    goto LABEL_35;
  }
}

void _dispatchScanForwardStatsUpdateEvent(uint64_t a1, uint64_t a2, int a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_26;
  }

  if (a3 != 64)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 0;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid length in stat event", v42, 2u);
    }

    goto LABEL_26;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
LABEL_26:
    v41 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_BSS_AWAKE_CNT", v8);
    CFRelease(v9);
    v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
    if (v10)
    {
      v11 = v10;
      CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_BSS_SLEEP_CNT", v10);
      CFRelease(v11);
      v12 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 8));
      if (v12)
      {
        v13 = v12;
        CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_HOST_SCAN_CNT", v12);
        CFRelease(v13);
        v14 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 12));
        if (v14)
        {
          v15 = v14;
          CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_ROAM_SCAN_CNT", v14);
          CFRelease(v15);
          v16 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 16));
          if (v16)
          {
            v17 = v16;
            CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_PNO_SCAN_CNT", v16);
            CFRelease(v17);
            v18 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 20));
            if (v18)
            {
              v19 = v18;
              CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_EPNO_SCAN_CNT", v18);
              CFRelease(v19);
              v20 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 24));
              if (v20)
              {
                v21 = v20;
                CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_CUR_BSS_AWAKE_CNT", v20);
                CFRelease(v21);
                v22 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 28));
                if (v22)
                {
                  v23 = v22;
                  CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_CUR_BSS_SLEEP_CNT", v22);
                  CFRelease(v23);
                  v24 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 32));
                  if (v24)
                  {
                    v25 = v24;
                    CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_SCAN_DATA_AWAKE_CNT", v24);
                    CFRelease(v25);
                    v26 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 36));
                    if (v26)
                    {
                      v27 = v26;
                      CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_SCAN_DATA_SLEEP_CNT", v26);
                      CFRelease(v27);
                      v28 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 40));
                      if (v28)
                      {
                        v29 = v28;
                        CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_SPMI_MSG_AWAKE_CNT", v28);
                        CFRelease(v29);
                        v30 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 44));
                        if (v30)
                        {
                          v31 = v30;
                          CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_SPMI_MSG_SLEEP_CNT", v30);
                          CFRelease(v31);
                          v32 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 48));
                          if (v32)
                          {
                            v33 = v32;
                            CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_SPMI_MSG_DROP_RSSI_CNT", v32);
                            CFRelease(v33);
                            v34 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 52));
                            if (v34)
                            {
                              v35 = v34;
                              CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_SPMI_MSG_DROP_MAX_CNT", v34);
                              CFRelease(v35);
                              v36 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 56));
                              if (v36)
                              {
                                v37 = v36;
                                CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_SPMI_MSG_DROP_FAIL_CNT", v36);
                                CFRelease(v37);
                                v38 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 60));
                                if (v38)
                                {
                                  v39 = v38;
                                  CFDictionaryAddValue(v6, @"SCAN_FWD_STATS_BSS_DROP_LOW_MEM_CNT", v38);
                                  CFRelease(v39);
                                  (*(a1 + 72))(0, a1, 240, v6, 8, *(a1 + 80));
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

  v40 = *MEMORY[0x277D85DE8];

  CFRelease(v6);
}

void _dispatchRxStall(uint64_t a1, _DWORD *a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if (a3 == 52)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v7 = Mutable;
        v8 = *MEMORY[0x277CBECE8];
        v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2 + 2);
        CFDictionaryAddValue(v7, @"RXSTALL_REASON_CODE", v9);
        CFRelease(v9);
        v10 = CFNumberCreate(v8, kCFNumberSInt32Type, a2 + 1);
        CFDictionaryAddValue(v7, @"RXSTALL_REPORT_CODE", v10);
        CFRelease(v10);
        v11 = CFNumberCreate(v8, kCFNumberSInt32Type, a2 + 7);
        CFDictionaryAddValue(v7, @"RXSTALL_TIMESTAMP", v11);
        CFRelease(v11);
        v12 = CFNumberCreate(v8, kCFNumberSInt32Type, a2 + 5);
        CFDictionaryAddValue(v7, @"RXSTALL_ELAPSED_TIME", v12);
        CFRelease(v12);
        v13 = CFNumberCreate(v8, kCFNumberSInt32Type, a2 + 8);
        CFDictionaryAddValue(v7, @"RXSTALL_TX_CTS_NO_UCAST", v13);
        CFRelease(v13);
        v14 = CFNumberCreate(v8, kCFNumberSInt32Type, a2 + 9);
        CFDictionaryAddValue(v7, @"RXSTALL_TX_CTS_RXED_UCAST", v14);
        CFRelease(v14);
        v15 = CFNumberCreate(v8, kCFNumberSInt32Type, a2 + 11);
        CFDictionaryAddValue(v7, @"RXSTALL_RXED_MU_RTS ", v15);
        CFRelease(v15);
        v16 = CFNumberCreate(v8, kCFNumberSInt32Type, a2 + 12);
        CFDictionaryAddValue(v7, @"RXSTALL_MU_PPDU", v16);
        CFRelease(v16);
        v17 = CFNumberCreate(v8, kCFNumberSInt32Type, a2 + 10);
        CFDictionaryAddValue(v7, @"RXSTALL_PPDU", v17);
        CFRelease(v17);
        v27 = a2[4] & 1;
        v18 = CFNumberCreate(v8, kCFNumberSInt32Type, &v27);
        CFDictionaryAddValue(v7, @"RXSTALL_STALL_IN_PROGRESS", v18);
        CFRelease(v18);
        v27 = (a2[4] >> 1) & 1;
        v19 = CFNumberCreate(v8, kCFNumberSInt32Type, &v27);
        CFDictionaryAddValue(v7, @"RXSTALL_RTS_CTS_TIM_SET_NO_UCAST", v19);
        CFRelease(v19);
        v27 = (a2[4] >> 2) & 1;
        v20 = CFNumberCreate(v8, kCFNumberSInt32Type, &v27);
        CFDictionaryAddValue(v7, @"RXSTALL_RTS_CTS_NO_UCAST", v20);
        CFRelease(v20);
        v27 = (a2[4] >> 3) & 1;
        v21 = CFNumberCreate(v8, kCFNumberSInt32Type, &v27);
        CFDictionaryAddValue(v7, @"RXSTALL_MURTS_CTS_NO_UCAST", v21);
        CFRelease(v21);
        v27 = (a2[4] >> 4) & 1;
        v22 = CFNumberCreate(v8, kCFNumberSInt32Type, &v27);
        CFDictionaryAddValue(v7, @"RXSTALL_TX_BLANKING_OBSERVED", v22);
        CFRelease(v22);
        (*(a1 + 72))(0, a1, 245, v7, 8, *(a1 + 80));
        CFRelease(v7);
        goto LABEL_6;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v27 = 136315138;
      v28 = "_dispatchRxStall";
      v24 = MEMORY[0x277D86220];
      v25 = "%s: Rx Stall Notification Dictionary is NULL, Bail out\n";
      v26 = 12;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v27 = 136315394;
      v28 = "_dispatchRxStall";
      v29 = 1024;
      v30 = a3;
      v24 = MEMORY[0x277D86220];
      v25 = "%s:Rx Stall notification with insufficient DataLen:%u\n";
      v26 = 18;
    }

    _os_log_impl(&dword_254882000, v24, OS_LOG_TYPE_DEFAULT, v25, &v27, v26);
  }

LABEL_6:
  v23 = *MEMORY[0x277D85DE8];
}

__CFDictionary *_createDictFromRoamState(unsigned __int8 *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    valuePtr = *a1;
    v4 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFDictionaryAddValue(Mutable, @"RSSI", v4);
      CFRelease(v5);
      v6 = CFNumberCreate(v2, kCFNumberIntType, a1 + 4);
      if (v6)
      {
        v7 = v6;
        CFDictionaryAddValue(Mutable, @"ROAM_SCAN_REASON", v6);
        CFRelease(v7);
        v8 = CFNumberCreate(v2, kCFNumberIntType, a1 + 12);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(Mutable, @"ROAM_SCAN_AGE", v8);
          CFRelease(v9);
          v10 = CFNumberCreate(v2, kCFNumberIntType, a1 + 8);
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(Mutable, @"ROAM_LAST_STATUS", v10);
            CFRelease(v11);
            valuePtr = a1[3];
            v12 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
            if (v12)
            {
              v13 = v12;
              CFDictionaryAddValue(Mutable, @"ROAM_SCAN_COUNT", v12);
              CFRelease(v13);
              if (a1[1])
              {
                v14 = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
                if (v14)
                {
                  v15 = v14;
                  if (a1[1])
                  {
                    v16 = 0;
                    v17 = a1 + 16;
                    v18 = MEMORY[0x277CBF138];
                    v19 = MEMORY[0x277CBF150];
                    while (1)
                    {
                      v20 = CFDictionaryCreateMutable(v2, 0, v18, v19);
                      if (!v20)
                      {
                        break;
                      }

                      v21 = v20;
                      v22 = CFNumberCreate(v2, kCFNumberIntType, v17 + 8);
                      if (!v22)
                      {
                        goto LABEL_22;
                      }

                      v23 = v22;
                      CFDictionaryAddValue(v21, @"AGE", v22);
                      CFRelease(v23);
                      v24 = CFNumberCreate(v2, kCFNumberSInt16Type, v17 + 12);
                      if (!v24)
                      {
                        goto LABEL_22;
                      }

                      v25 = v24;
                      CFDictionaryAddValue(v21, @"QBSS_CHAN_UTIL", v24);
                      CFRelease(v25);
                      valuePtr = v17[6];
                      v26 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
                      if (!v26)
                      {
                        goto LABEL_22;
                      }

                      v27 = v26;
                      CFDictionaryAddValue(v21, @"CHANNEL", v26);
                      CFRelease(v27);
                      valuePtr = *(v17 + 8);
                      v28 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
                      if (!v28)
                      {
                        goto LABEL_22;
                      }

                      v29 = v28;
                      CFDictionaryAddValue(v21, @"CHANNEL_FLAGS", v28);
                      CFRelease(v29);
                      valuePtr = v17[7];
                      v30 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
                      if (!v30 || (v31 = v30, CFDictionaryAddValue(v21, @"RSSI", v30), CFRelease(v31), (v32 = ether_ntoa(v17)) == 0) || (v33 = CFStringCreateWithCString(v2, v32, 0x8000100u)) == 0)
                      {
LABEL_22:
                        CFRelease(v15);
                        goto LABEL_23;
                      }

                      v34 = v33;
                      CFDictionaryAddValue(v21, @"BSSID", v33);
                      CFRelease(v34);
                      CFArrayAppendValue(v15, v21);
                      CFRelease(v21);
                      ++v16;
                      v17 += 20;
                      if (v16 >= a1[1])
                      {
                        goto LABEL_20;
                      }
                    }
                  }

                  else
                  {
LABEL_20:
                    CFDictionaryAddValue(Mutable, @"ROAM_CACHE", v15);
                  }

                  v21 = v15;
LABEL_23:
                  CFRelease(v21);
                }
              }
            }
          }
        }
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return Mutable;
}

__CFDictionary *_createDictFromMloOpStats(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return Mutable;
  }

  v4 = CFNumberCreate(v2, kCFNumberSInt8Type, a1);
  if (!v4)
  {
    return Mutable;
  }

  v5 = v4;
  CFDictionaryAddValue(Mutable, @"MLO_NUM_LINKS", v4);
  v6 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 1));
  if (!v6)
  {
    v10 = v5;
LABEL_14:
    CFRelease(v10);
    return Mutable;
  }

  v7 = v6;
  CFDictionaryAddValue(Mutable, @"MLO_TRAF_SWITCH_ENABLED", v6);
  v8 = CFNumberCreate(v2, kCFNumberIntType, (a1 + 8));
  if (!v8)
  {
    v9 = 0;
    goto LABEL_19;
  }

  CFDictionaryAddValue(Mutable, @"MLO_LINK_ADD_CNT", v8);
  v9 = CFNumberCreate(v2, kCFNumberIntType, (a1 + 4));
  if (!v9)
  {
LABEL_19:
    v10 = 0;
    goto LABEL_9;
  }

  CFDictionaryAddValue(Mutable, @"MLO_LINK_DELETE_CNT", v9);
  v10 = CFNumberCreate(v2, kCFNumberIntType, (a1 + 12));
  if (v10)
  {
    CFDictionaryAddValue(Mutable, @"MLO_PREF_BAND_CHANGE_CNT", v10);
  }

LABEL_9:
  CFRelease(v5);
  CFRelease(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    goto LABEL_14;
  }

  return Mutable;
}

__CFDictionary *_createDictFromMLOStats(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    Mutable = 0;
    goto LABEL_50;
  }

  v2 = *(a1 + 1);
  valuePtr = *(a1 + 1);
  v36 = v2 >> 14;
  v35 = (v2 >> 11) & 7;
  v3 = *(a1 + 9);
  if (v3 == 128)
  {
    LOBYTE(v3) = 0;
  }

  v34 = v3;
  v4 = *(a1 + 10);
  if (v4 == 128)
  {
    LOBYTE(v4) = 0;
  }

  v33 = v4;
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_50;
  }

  v7 = CFNumberCreate(v5, kCFNumberSInt8Type, a1);
  if (!v7)
  {
    goto LABEL_50;
  }

  v8 = v7;
  CFDictionaryAddValue(Mutable, @"MLO_IS_PREF_LINK", v7);
  v9 = CFNumberCreate(v5, kCFNumberSInt16Type, &valuePtr);
  if (!v9)
  {
    v23 = v8;
LABEL_49:
    CFRelease(v23);
    goto LABEL_50;
  }

  v10 = v9;
  CFDictionaryAddValue(Mutable, @"MLO_LINK_PRI_CHANNEL", v9);
  v11 = CFNumberCreate(v5, kCFNumberSInt16Type, &v36);
  v30 = v10;
  cf = v8;
  v29 = v11;
  if (!v11 || (CFDictionaryAddValue(Mutable, @"MLO_LINK_FREQ_BAND", v11), (v12 = CFNumberCreate(v5, kCFNumberSInt16Type, &v35)) == 0))
  {
    v27 = 0;
    v28 = 0;
    v32 = 0;
    v16 = 0;
LABEL_52:
    v26 = 0;
    v18 = 0;
    goto LABEL_53;
  }

  v28 = v12;
  CFDictionaryAddValue(Mutable, @"MLO_LINK_BW", v12);
  v13 = CFNumberCreate(v5, kCFNumberSInt8Type, &v34);
  if (!v13)
  {
    v26 = 0;
    v27 = 0;
    v32 = 0;
    v16 = 0;
    v18 = 0;
    v14 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_58;
  }

  v14 = CFNumberCreate(v5, kCFNumberSInt8Type, &v33);
  v27 = v13;
  if (!v14)
  {
    v32 = 0;
    v16 = 0;
    v26 = 0;
    v18 = 0;
    goto LABEL_54;
  }

  v15 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
  v16 = v15;
  v32 = v14;
  if (!v15)
  {
    goto LABEL_52;
  }

  CFArrayAppendValue(v15, v13);
  CFArrayAppendValue(v16, v14);
  CFDictionaryAddValue(Mutable, @"PER_CORE_RSSI", v16);
  v17 = CFNumberCreate(v5, kCFNumberIntType, (a1 + 16));
  if (!v17)
  {
    goto LABEL_52;
  }

  v26 = v17;
  CFDictionaryAddValue(Mutable, @"MLO_LINK_TX_CNT", v17);
  v18 = CFNumberCreate(v5, kCFNumberIntType, (a1 + 24));
  if (!v18)
  {
LABEL_53:
    v14 = 0;
    goto LABEL_54;
  }

  CFDictionaryAddValue(Mutable, @"MLO_LINK_RX_CNT", v18);
  v14 = CFNumberCreate(v5, kCFNumberIntType, (a1 + 32));
  if (!v14)
  {
LABEL_54:
    v19 = 0;
    goto LABEL_55;
  }

  CFDictionaryAddValue(Mutable, @"MLO_LINK_TX_RATE", v14);
  v19 = CFNumberCreate(v5, kCFNumberIntType, (a1 + 36));
  if (!v19)
  {
LABEL_55:
    v20 = 0;
    goto LABEL_56;
  }

  CFDictionaryAddValue(Mutable, @"MLO_LINK_RX_RATE", v19);
  v20 = CFNumberCreate(v5, kCFNumberIntType, (a1 + 20));
  if (!v20)
  {
LABEL_56:
    v21 = 0;
    goto LABEL_57;
  }

  CFDictionaryAddValue(Mutable, @"MLO_LINK_TX_FAIL", v20);
  v21 = CFNumberCreate(v5, kCFNumberIntType, (a1 + 28));
  if (!v21)
  {
LABEL_57:
    v13 = 0;
LABEL_58:
    v23 = 0;
    goto LABEL_24;
  }

  CFDictionaryAddValue(Mutable, @"MLO_LINK_TX_EX_RETRY", v21);
  v13 = CFNumberCreate(v5, kCFNumberIntType, (a1 + 12));
  if (!v13)
  {
    goto LABEL_58;
  }

  CFDictionaryAddValue(Mutable, @"MLO_LINK_IDLE_TIME", v13);
  v22 = ether_ntoa((a1 + 3));
  if (!v22)
  {
    goto LABEL_58;
  }

  v23 = CFStringCreateWithCString(v5, v22, 0x8000100u);
  if (v23)
  {
    CFDictionaryAddValue(Mutable, @"BSSID", v23);
  }

LABEL_24:
  CFRelease(cf);
  CFRelease(v30);
  if (v29)
  {
    CFRelease(v29);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v23)
  {
    goto LABEL_49;
  }

LABEL_50:
  v24 = *MEMORY[0x277D85DE8];
  return Mutable;
}

uint64_t __Apple80211EventMonitoringHaltIOUC_block_invoke(uint64_t a1)
{
  _performEventMonitoringHaltIOUC(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}