@interface WiFiScanCallback
@end

@implementation WiFiScanCallback

void ___WiFiScanCallback_block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 56);
  v3 = v1[5];
  v4 = v1[6];
  if (v2)
  {
    goto LABEL_42;
  }

  v5 = v1[4];
  if (!v5)
  {
    v2 = 4294960596;
LABEL_42:
    v3(v2, 0, v4);
    goto LABEL_36;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v2 = 4294960568;
    goto LABEL_42;
  }

  v7 = Mutable;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    v3(0, v7, v4);
    goto LABEL_35;
  }

  v9 = Count;
  v24 = v4;
  v25 = v3;
  v26 = v1;
  v10 = 0;
  v11 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v10);
    v13 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    if (WiFiNetworkIsAdHoc())
    {
      CFDictionarySetValue(v14, @"adhoc", v11);
    }

    v28 = 0;
    v27 = 0;
    Property = WiFiNetworkGetProperty();
    CFGetHardwareAddress(Property, &v27, 6uLL, 0);
    CFDictionarySetHardwareAddress(v14, @"bssid", &v27, 6);
    Channel = WiFiNetworkGetChannel();
    if (Channel)
    {
      CFDictionarySetValue(v14, @"channel", Channel);
    }

    if (WiFiNetworkGetDirectedState())
    {
      CFDictionarySetValue(v14, @"directed", v11);
    }

    if (WiFiNetworkIsEAP())
    {
      CFDictionarySetValue(v14, @"enterprise", v11);
    }

    if (WiFiNetworkIsHidden())
    {
      CFDictionarySetValue(v14, @"hidden", v11);
    }

    if (WiFiNetworkIsHotspot20())
    {
      v17 = 2;
LABEL_21:
      CFDictionarySetInt64(v14, @"hotspot", v17);
      goto LABEL_22;
    }

    if (WiFiNetworkIsHotspot())
    {
      v17 = 1;
      goto LABEL_21;
    }

LABEL_22:
    v18 = WiFiNetworkGetProperty();
    if (v18)
    {
      CFDictionarySetValue(v14, @"ie", v18);
    }

    CFDictionarySetValue(v14, @"platformNetwork", ValueAtIndex);
    if (WiFiNetworkIsProfileBased())
    {
      CFDictionarySetValue(v14, @"profileBased", v11);
    }

    v19 = WiFiNetworkGetProperty();
    if (v19)
    {
      CFDictionarySetValue(v14, @"rssi", v19);
    }

    SSID = WiFiNetworkGetSSID();
    if (SSID)
    {
      v21 = SSID;
    }

    else
    {
      v21 = &stru_1F068B090;
    }

    CFDictionarySetValue(v14, @"ssid", v21);
    CFArrayAppendValue(v7, v14);
    CFRelease(v14);
    if (v9 == ++v10)
    {
      v22 = 0;
      goto LABEL_33;
    }
  }

  v22 = 4294960568;
LABEL_33:
  v1 = v26;
  v25(v22, v7, v24);
LABEL_35:
  CFRelease(v7);
LABEL_36:
  v23 = v1[4];
  if (v23)
  {
    CFRelease(v23);
  }
}

@end