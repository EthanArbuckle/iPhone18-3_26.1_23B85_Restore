uint64_t D2DInitialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.DeviceToDeviceManager");
  if (!BundleWithIdentifier)
  {
    v26 = 1;
    fwrite("D2D: failed to get the D2D bundle\n", 0x22uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return v26;
  }

  v7 = CFBundleCopyBuiltInPlugInsURL(BundleWithIdentifier);
  if (!v7)
  {
    v27 = *MEMORY[0x277D85DF8];
    v28 = "D2D: failed to get the URL for D2D plugins\n";
    v26 = 1;
    v29 = 43;
LABEL_29:
    fwrite(v28, v29, 1uLL, v27);
    return v26;
  }

  v8 = v7;
  loadedPlugins = CFBundleCreateBundlesFromDirectory(*MEMORY[0x277CBECE8], v7, @"bundle");
  CFRelease(v8);
  if (!loadedPlugins)
  {
    v27 = *MEMORY[0x277D85DF8];
    v28 = "D2D: loading plugins failed.  Continuing with no transports\n";
    v26 = 1;
    v29 = 60;
    goto LABEL_29;
  }

  Count = CFArrayGetCount(loadedPlugins);
  if (Count >= 1)
  {
    v10 = Count;
    v31 = a2;
    v32 = a3;
    v11 = 0;
    v12 = MEMORY[0x277D85DF8];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(loadedPlugins, v11);
      InfoDictionary = CFBundleGetInfoDictionary(ValueAtIndex);
      Value = CFDictionaryGetValue(InfoDictionary, @"D2DTransportType");
      v16 = CFDictionaryGetValue(InfoDictionary, @"D2DTransportPlugin");
      if (!Value)
      {
        break;
      }

      v17 = v16;
      v18 = CFGetTypeID(Value);
      if (v18 != CFNumberGetTypeID() || v17 == 0)
      {
        break;
      }

      v20 = CFGetTypeID(v17);
      if (v20 != CFStringGetTypeID())
      {
        break;
      }

      valuePtr = 0;
      if (!CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
      {
        v21 = *v12;
        v22 = "Failed to get the transport ID\n";
        v23 = 31;
        goto LABEL_16;
      }

      if (valuePtr < 4)
      {
        DataPointerForName = CFBundleGetDataPointerForName(ValueAtIndex, v17);
        if (DataPointerForName)
        {
          v25 = DataPointerForName;
          if (*DataPointerForName && !(*DataPointerForName)(a1, v31, v32))
          {
            plugins[valuePtr] = v25;
          }

          goto LABEL_17;
        }

        v21 = *v12;
        v22 = "Failed to get the plugin interface structure\n";
        v23 = 45;
        goto LABEL_16;
      }

      fprintf(*v12, "Unknown transport id %d\n", valuePtr);
LABEL_17:
      if (v10 == ++v11)
      {
        return 0;
      }
    }

    v21 = *v12;
    v22 = "Plugin is missing it's transport ID or Plugin\n";
    v23 = 46;
LABEL_16:
    fwrite(v22, v23, 1uLL, v21);
    goto LABEL_17;
  }

  return 0;
}

uint64_t D2DTerminate()
{
  for (i = 0; i != 4; ++i)
  {
    v1 = plugins[i];
    if (v1)
    {
      v2 = *(v1 + 8);
      if (v2)
      {
        v2();
      }
    }
  }

  return 0;
}

uint64_t D2DStartAdvertisingPair(UInt8 *bytes, CFIndex length, const UInt8 *a3, CFIndex a4)
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  v8 = CFDataCreate(v6, a3, a4);
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    for (i = 0; i != 4; ++i)
    {
      v13 = plugins[i];
      if (v13)
      {
        if (*(v13 + 48))
        {
          v14 = *(v13 + 16);
          if (v14)
          {
            v14(v7, v9);
          }
        }
      }
    }

    CFRelease(v7);
    v11 = 0;
LABEL_16:
    CFRelease(v9);
    return v11;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v11 = 1;
  if (v9)
  {
    goto LABEL_16;
  }

  return v11;
}

uint64_t D2DStartAdvertisingPairOnTransport(UInt8 *bytes, CFIndex length, const UInt8 *a3, CFIndex a4, unsigned int a5)
{
  v8 = *MEMORY[0x277CBECE8];
  v9 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  v10 = CFDataCreate(v8, a3, a4);
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (a5 <= 3)
    {
      v14 = plugins[a5];
      if (v14)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v15(v9, v10);
        }
      }
    }

    CFRelease(v9);
    v13 = 0;
LABEL_15:
    CFRelease(v11);
    return v13;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v13 = 1;
  if (v11)
  {
    goto LABEL_15;
  }

  return v13;
}

uint64_t D2DStopAdvertisingPair(UInt8 *bytes, CFIndex length, const UInt8 *a3, CFIndex a4)
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  v8 = CFDataCreate(v6, a3, a4);
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    for (i = 0; i != 4; ++i)
    {
      v13 = plugins[i];
      if (v13)
      {
        if (*(v13 + 56))
        {
          v14 = *(v13 + 24);
          if (v14)
          {
            v14(v7, v9);
          }
        }
      }
    }

    CFRelease(v7);
    v11 = 0;
LABEL_16:
    CFRelease(v9);
    return v11;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v11 = 1;
  if (v9)
  {
    goto LABEL_16;
  }

  return v11;
}

uint64_t D2DStopAdvertisingPairOnTransport(UInt8 *bytes, CFIndex length, const UInt8 *a3, CFIndex a4, unsigned int a5)
{
  v8 = *MEMORY[0x277CBECE8];
  v9 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  v10 = CFDataCreate(v8, a3, a4);
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (a5 <= 3)
    {
      v14 = plugins[a5];
      if (v14)
      {
        v15 = *(v14 + 24);
        if (v15)
        {
          v15(v9, v10);
        }
      }
    }

    CFRelease(v9);
    v13 = 0;
LABEL_15:
    CFRelease(v11);
    return v13;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v13 = 1;
  if (v11)
  {
    goto LABEL_15;
  }

  return v13;
}

uint64_t D2DStartBrowsingForKey(UInt8 *bytes, CFIndex length)
{
  v2 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  for (i = 0; i != 4; ++i)
  {
    v5 = plugins[i];
    if (v5)
    {
      v6 = *(v5 + 32);
      if (v6)
      {
        v6(v3);
      }
    }
  }

  CFRelease(v3);
  return 0;
}

uint64_t D2DStartBrowsingForKeyOnTransport(UInt8 *bytes, CFIndex length, unsigned int a3)
{
  v4 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  if (a3 <= 3)
  {
    v6 = plugins[a3];
    if (v6)
    {
      v7 = *(v6 + 32);
      if (v7)
      {
        v7(v4);
      }
    }
  }

  CFRelease(v5);
  return 0;
}

uint64_t D2DStopBrowsingForKey(UInt8 *bytes, CFIndex length)
{
  v2 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  for (i = 0; i != 4; ++i)
  {
    v5 = plugins[i];
    if (v5)
    {
      v6 = *(v5 + 40);
      if (v6)
      {
        v6(v3);
      }
    }
  }

  CFRelease(v3);
  return 0;
}

uint64_t D2DStopBrowsingForKeyOnTransport(UInt8 *bytes, CFIndex length, unsigned int a3)
{
  v4 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  if (a3 <= 3)
  {
    v6 = plugins[a3];
    if (v6)
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        v7(v4);
      }
    }
  }

  CFRelease(v5);
  return 0;
}

void D2DStartResolvingPair(UInt8 *bytes, CFIndex length, const UInt8 *a3, CFIndex a4)
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  v8 = CFDataCreate(v6, a3, a4);
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    for (i = 0; i != 4; ++i)
    {
      v12 = plugins[i];
      if (v12)
      {
        if (*(v12 + 56))
        {
          v13 = *(v12 + 48);
          if (v13)
          {
            v13(v7, v9);
          }
        }
      }
    }

    CFRelease(v7);
LABEL_16:

    CFRelease(v9);
    return;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    goto LABEL_16;
  }
}

void D2DStartResolvingPairOnTransport(UInt8 *bytes, CFIndex length, const UInt8 *a3, CFIndex a4, unsigned int a5)
{
  v8 = *MEMORY[0x277CBECE8];
  v9 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  v10 = CFDataCreate(v8, a3, a4);
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (a5 <= 3)
    {
      v13 = plugins[a5];
      if (v13)
      {
        v14 = *(v13 + 48);
        if (v14)
        {
          v14(v9, v10);
        }
      }
    }

    CFRelease(v9);
LABEL_15:

    CFRelease(v11);
    return;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    goto LABEL_15;
  }
}

void D2DStopResolvingPair(UInt8 *bytes, CFIndex length, const UInt8 *a3, CFIndex a4)
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  v8 = CFDataCreate(v6, a3, a4);
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    for (i = 0; i != 4; ++i)
    {
      v12 = plugins[i];
      if (v12)
      {
        v13 = *(v12 + 56);
        if (v13)
        {
          v13(v7, v9);
        }
      }
    }

    CFRelease(v7);
LABEL_15:

    CFRelease(v9);
    return;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    goto LABEL_15;
  }
}

void D2DStopResolvingPairOnTransport(UInt8 *bytes, CFIndex length, const UInt8 *a3, CFIndex a4, unsigned int a5)
{
  v8 = *MEMORY[0x277CBECE8];
  v9 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  v10 = CFDataCreate(v8, a3, a4);
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (a5 <= 3)
    {
      v13 = plugins[a5];
      if (v13)
      {
        v14 = *(v13 + 56);
        if (v14)
        {
          v14(v9, v10);
        }
      }
    }

    CFRelease(v9);
LABEL_15:

    CFRelease(v11);
    return;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    goto LABEL_15;
  }
}

uint64_t D2DRetain(uint64_t a1, unsigned int a2)
{
  if (a2 <= 3 && (v2 = plugins[a2]) != 0 && (v3 = *(v2 + 64)) != 0)
  {
    return v3();
  }

  else
  {
    return 2;
  }
}

uint64_t D2DRelease(uint64_t a1, unsigned int a2)
{
  if (a2 <= 3 && (v2 = plugins[a2]) != 0 && (v3 = *(v2 + 72)) != 0)
  {
    return v3();
  }

  else
  {
    return 2;
  }
}