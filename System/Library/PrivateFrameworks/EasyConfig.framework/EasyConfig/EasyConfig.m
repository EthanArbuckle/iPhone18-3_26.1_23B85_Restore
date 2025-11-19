uint64_t _pairSetupPromptForSetupCode(int a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(v5 + 15);
  if (v6)
  {
    v7 = v6;
    dispatch_source_cancel(v7);
    v8 = *(v5 + 15);
    *(v5 + 15) = 0;
  }

  if (*(v5 + 21))
  {
    *(v5 + 51) = CFAbsoluteTimeGetCurrent();
    v9 = *(v5 + 2);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___pairSetupPromptForSetupCode_block_invoke;
    v12[3] = &unk_278FBECA8;
    v12[4] = v5;
    v13 = a1;
    v14 = a2;
    dispatch_async(v9, v12);
    v10 = 0;
  }

  else
  {
    v10 = 4294960551;
  }

  return v10;
}

uint64_t ___pairSetupPromptForSetupCode_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 168);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), *(a1 + 44));
  }

  return result;
}

__CFDictionary *EasyConfigCreateDictionaryFromTLV(uint64_t a1, uint64_t a2, int *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    while (1)
    {
      if (TLV8GetNext())
      {
        v8 = 0;
        v11 = 0;
        goto LABEL_7;
      }

      v6 = CFStringCreateWithBytes(0, 0, 0, 0x8000100u, 0);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      CFDictionarySetValue(v5, @"adminPassword", v6);
      CFRelease(v7);
    }

    v11 = -6742;
    v8 = v5;
    v5 = 0;
LABEL_7:
    v9 = v5;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v9 = 0;
    v11 = -6728;
  }

  if (a3)
  {
    *a3 = v11;
  }

  return v9;
}

uint64_t EasyConfigCreateTLVfromDictionary(const __CFDictionary *a1, uint64_t a2, _DWORD *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(context, 0, 512);
  DataBuffer_Init();
  v8 = 0;
  CFDictionaryApplyFunction(a1, _EasyConfigCreateTLVfromDictionaryApplier, context);
  if (!v8)
  {
    v8 = DataBuffer_Detach();
  }

  DataBuffer_Free();
  if (a3)
  {
    *a3 = v8;
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _EasyConfigCreateTLVfromDictionaryApplier(uint64_t result, const __CFString *cf, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!*(a3 + 568))
  {
    v5 = result;
    v6 = CFGetTypeID(cf);
    if (CFEqual(v5, @"adminPassword") || CFEqual(v5, @"bundleSeedID") || CFEqual(v5, @"countryCode") || CFEqual(v5, @"firmwareRevision") || CFEqual(v5, @"hardwareRevision") || CFEqual(v5, @"indoorOutdoorMode") || CFEqual(v5, @"language") || CFEqual(v5, @"manufacturer") || CFEqual(v5, @"model") || CFEqual(v5, @"name") || CFEqual(v5, @"operationType") || CFEqual(v5, @"playPassword") || CFEqual(v5, @"serialNumber") || CFEqual(v5, @"wifiEAPTLSCert") || CFEqual(v5, @"wifiPSK") || CFEqual(v5, @"wifiRouterCert") || CFEqual(v5, @"wifiSSID"))
    {
      if (v6 == CFStringGetTypeID())
      {
        buffer[0] = 0;
        if (!CFStringGetCString(cf, buffer, 256, 0x8000100u))
        {
LABEL_44:
          result = 4294960559;
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (v6 == CFDataGetTypeID())
      {
        CFDataGetBytePtr(cf);
        CFDataGetLength(cf);
LABEL_26:
        result = DataBuffer_AppendIE();
LABEL_27:
        *(a3 + 568) = result;
        goto LABEL_28;
      }

      if (v6 == CFNumberGetTypeID())
      {
        *buffer = 0;
        CFNumberGetValue(cf, kCFNumberSInt64Type, buffer);
        if (*buffer > 0xFFuLL)
        {
          result = 4294960586;
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (*MEMORY[0x277D02990] <= 50 && (*MEMORY[0x277D02990] != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

LABEL_33:
      result = 4294960540;
      goto LABEL_27;
    }

    if (CFEqual(v5, @"mfiProtocols"))
    {
      if (v6 != CFArrayGetTypeID())
      {
        goto LABEL_33;
      }

      Count = CFArrayGetCount(cf);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf, v10);
          v12 = CFGetTypeID(ValueAtIndex);
          if (v12 != CFStringGetTypeID())
          {
            goto LABEL_33;
          }

          buffer[0] = 0;
          if (!CFStringGetCString(ValueAtIndex, buffer, 256, 0x8000100u))
          {
            goto LABEL_44;
          }

          result = DataBuffer_AppendIE();
          if (!result && v9 != ++v10)
          {
            continue;
          }

          goto LABEL_27;
        }
      }
    }

    else if (*MEMORY[0x277D02990] <= 50)
    {
      if (*MEMORY[0x277D02990] == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_27;
        }
      }

      LogPrintF();
    }

    result = 0;
    goto LABEL_27;
  }

LABEL_28:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}