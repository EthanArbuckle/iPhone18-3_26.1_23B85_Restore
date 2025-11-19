void FrameInfoNotifyFunc(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  if (a4 > 1)
  {
    v7 = a3[1];
    v25 = *a3;
    if (*a3 < 0)
    {
      v8 = *a3 & 0x7FFFFFFF;
    }

    else
    {
      v8 = *a3;
    }

    v9 = *MEMORY[0x277CBECE8];
    theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (theDict)
    {
      v24 = v7;
      if (v8)
      {
        v10 = 0;
        v11 = 0;
        v12 = a3 + 2;
        v26 = a4 - 2;
        do
        {
          v13 = 1 << v10;
          v14 = ((1 << v10) & v8) == 0;
          v15 = 1 << v10 < v8 && ((1 << v10) & v8) == 0;
          if (v15)
          {
            do
            {
              ++v10;
              v16 = v8 & (2 * v13);
              v13 *= 2;
              v14 = v16 == 0;
            }

            while (v13 < v8 && !v16);
          }

          if (v14)
          {
            break;
          }

          v17 = CFStringCreateWithCString(v9, *(*(a1 + 2032) + 8 * v10), 0x600u);
          if (v11 >= v26)
          {
            v19 = 0;
          }

          else
          {
            v18 = v11 + 1;
            v19 = v12[v11];
            if ((v25 & 0x80000000) != 0)
            {
              v11 += 2;
              v19 |= v12[v18] << 32;
            }

            else
            {
              ++v11;
            }
          }

          valuePtr = adjust_ni_timestamp(a1, *(*(a1 + 2032) + 8 * v10), v19);
          v20 = CFNumberCreate(v9, kCFNumberLongLongType, &valuePtr);
          v21 = v20;
          if (v17)
          {
            v22 = v20 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            CFRelease(theDict);
            if (v17)
            {
              CFRelease(v17);
            }

            if (v21)
            {
              v23 = v21;
              goto LABEL_31;
            }

            return;
          }

          CFDictionarySetValue(theDict, v17, v20);
          CFRelease(v21);
          CFRelease(v17);
          v15 = v13 == v8;
          v8 ^= v13;
        }

        while (!v15);
      }

      if (*(a1 + 3512) == 1)
      {
        kdebug_trace();
      }

      (*(a1 + 1768))(a1, v24, theDict, *(a1 + 1712));
      v23 = theDict;
LABEL_31:
      CFRelease(v23);
    }
  }

  else
  {
    syslog(3, "IOMFB: FrameInfoNotifyFunc dropped notification, numArgs is %u, expected %u", a4, 2);
  }
}

void IOMobileFramebufferCRCNotifyFunc(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4 == 3)
  {
    v5 = *(a1 + 1832);
    if (v5)
    {
      v6 = a3[4];
      v7 = *a3;
      v8 = *(a1 + 1776);
      v9 = a3[2];

      v5(a1, v7, v9, v6, v8);
    }
  }

  else
  {
    syslog(3, "not enough values for callback %d != %d\n", a4, 3);
  }
}

IONotificationPort *IOMobileFramebufferVsyncNotifyFunc(IONotificationPort *result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = result;
    if (*(result + 3512) == 1)
    {
      kdebug_trace();
    }

    result = iomfb_GetMachMessageCount(*(v4 + 231));
    if (!result)
    {
      v5 = *a3 | (a3[1] << 32);
      v6 = (*(v4 + 374))(v4, a3[2] | (a3[3] << 32));
      v7 = a3[4] | (a3[5] << 32);
      v8 = *(v4 + 237);
      v9 = *(v4 + 230);

      return v8(v4, v5, v6, v7, v9);
    }
  }

  return result;
}

void NeedSwapNotifyFunc(uint64_t a1)
{
  if (a1 && iomfb_GetMachMessageCount(*(a1 + 1912)) < 1)
  {
    v2 = *(a1 + 1960);
    v3 = *(a1 + 1904);

    v2(a1, v3);
  }

  else
  {
    syslog(3, "NeedSwapNotifyFunc: dropping notification since messages are pending\n");
  }
}

IONotificationPort *IOMobileFramebufferHdcpNotifyFunc(uint64_t a1, uint64_t a2, int a3)
{
  result = iomfb_GetMachMessageCount(*(a1 + 1656));
  if (result <= 0)
  {
    v6 = *(a1 + 1704);
    if (v6)
    {
      v7 = *(a1 + 1648);

      return v6(a1, v7, a3 != 0);
    }
  }

  return result;
}

void *get_vsh_update_status(void *result)
{
  if (result)
  {
    v1 = result[278];
    if (v1)
    {
      result = v1();
      if (result)
      {
        v2 = result;
        valuePtr = 0;
        CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
        CFRelease(v2);
        return valuePtr;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void setIntValue(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t virt_SetDigitalOutMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 2072));
  if ((*(a1 + 1448) & 1) == 0)
  {
    *(a1 + 1432) = 0u;
  }

  syslog(5, "IOMFB setting virtual mode: %d %d\n", a2, a3);
  v6 = (*(*(a1 + 3040) + 16))(*(a1 + 3032), a2, a3);
  pthread_mutex_unlock((a1 + 2072));
  return v6;
}

uint64_t virt_GetLayerDefaultSurface(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    return 3758097084;
  }

  result = 0;
  *a3 = *(a1 + 1400);
  return result;
}

uint64_t virt_GetDisplaySize(uint64_t a1, _OWORD *a2)
{
  pthread_mutex_lock((a1 + 2072));
  if (*(a1 + 1432) == 0.0)
  {
    *(a1 + 1432) = 0x4090E00000000000;
    *(a1 + 1440) = 0x409E000000000000;
  }

  *a2 = *(a1 + 1432);
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

CFTypeRef virt_CopyProperty(void *a1, void *key)
{
  v4 = a1[375];
  if (v4 && (Value = CFDictionaryGetValue(v4, key)) != 0)
  {

    return CFRetain(Value);
  }

  else
  {
    v7 = *(a1[380] + 136);
    if (v7)
    {
      v8 = a1[379];

      return v7(v8, key);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t virt_GetRunLoopSource(uint64_t a1, unsigned int a2)
{
  v2 = a1 + (a2 << 6);
  v3 = *(v2 + 1536);
  if (!v3)
  {
    if (a2 == 5)
    {
      v4 = 48;
    }

    else if (a2 == 2)
    {
      v4 = 144;
    }

    else
    {
      if (a2)
      {
        return 0;
      }

      v4 = 72;
    }

    v5 = (v2 + 1536);
    v3 = (*(*(a1 + 3040) + v4))(*(a1 + 3032));
    *v5 = v3;
  }

  return v3;
}

uint64_t virt_EnableNotifications(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = &a1[8 * a2];
  v4[197] = a3;
  v4[190] = a4;
  v5 = IOMobileFramebufferVirtualDisplayVSyncNotificationFunc;
  if (a2 == 5)
  {
    v6 = 56;
    return (*(a1[380] + v6))(a1[379], v5, a1);
  }

  if (!a2)
  {
    v4[197] = virt_interceptHotplugCallback;
    a1[257] = a3;
    v5 = IOMobileFramebufferVirtualDisplayHotPlugDetectNotificationFunc;
    v6 = 80;
    return (*(a1[380] + v6))(a1[379], v5, a1);
  }

  return 3758097090;
}

uint64_t virt_DisableNotifications(uint64_t a1, int a2)
{
  if (!a2)
  {
    v2 = 88;
    return (*(*(a1 + 3040) + v2))(*(a1 + 3032));
  }

  if (a2 == 5)
  {
    v2 = 64;
    return (*(*(a1 + 3040) + v2))(*(a1 + 3032));
  }

  return 3758097090;
}

uint64_t virt_GetHDCPDownstreamState(void *a1, void *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  result = (*(a1[380] + 96))(a1[379]);
  if (result)
  {
    result = 0;
    v5 = a1[270] != 0;
    *a2 = 0x1000150434448;
    a2[1] = (v5 << 27);
  }

  return result;
}

uint64_t virt_HDCPSendRequest(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[380];
  if (*v5 < 1)
  {
    return 3758097095;
  }

  a1[213] = a4;
  a1[206] = a5;
  return (*(v5 + 152))(a1[379], a2, a3, iomfb_VirtualDisplayHDCPCallback, a1);
}

uint64_t virt_HDCPGetReply(uint64_t a1)
{
  v1 = *(a1 + 3040);
  if (*v1 < 1)
  {
    return 3758097095;
  }

  else
  {
    return (*(v1 + 160))(*(a1 + 3032));
  }
}

uint64_t virt_EnableStatistics(uint64_t a1, int a2)
{
  *(a1 + 3048) = 0u;
  *(a1 + 3064) = a2;
  return 0;
}

CFDictionaryRef virt_CreateStatistics(uint64_t a1, const __CFAllocator *a2)
{
  keys[2] = *MEMORY[0x277D85DE8];
  keys[0] = @"totalSwaps";
  keys[1] = @"totalVBLs";
  values = CFNumberCreate(0, kCFNumberCFIndexType, (a1 + 3056));
  cf = CFNumberCreate(0, kCFNumberCFIndexType, (a1 + 3048));
  v4 = CFDictionaryCreate(a2, keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(values);
  CFRelease(cf);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t virt_interceptHotplugCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 2584);
    if (v6)
    {
      v6(a1, a2);
    }
  }

  v7 = *(a1 + 2056);

  return v7(a1, a2, a3);
}

uint64_t IOMobileFramebufferVirtualDisplayVSyncNotificationFunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 3064))
  {
    ++*(a4 + 3048);
  }

  v10 = *(a4 + 1896);
  v7 = (*(a4 + 2992))(a4);
  v8 = *(a4 + 1840);

  return v10(a4, a1, v7, a3, v8);
}

uint64_t iomfb_VirtualDisplayHDCPCallback(uint64_t result, uint64_t a2)
{
  v2 = *(result + 1704);
  if (v2)
  {
    return v2(result, *(result + 1648), a2);
  }

  return result;
}

uint64_t IOMFBgainencoder_emit_empty_rows(_DWORD *a1, unsigned int a2)
{
  if (!a1[70] || (result = IOMFBgainencoder_start_row(a1), result))
  {
    if (a2)
    {
      result = finish_row(a1);
      if (result)
      {
        v5 = 1;
        do
        {
          v6 = v5;
          if (a2 == v5)
          {
            break;
          }

          v7 = finish_row(a1);
          v5 = v6 + 1;
        }

        while (v7);
        return v6 >= a2;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}