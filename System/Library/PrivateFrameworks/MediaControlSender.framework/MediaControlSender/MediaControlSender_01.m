void __eventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ____eventHandler_block_invoke;
  v4[3] = &unk_27989A7F8;
  v4[4] = a3;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void ____eventHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(v2 + 32);
    if (v4)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = ____eventHandler_block_invoke_2;
      v5[3] = &unk_27989A988;
      v5[4] = *(a1 + 40);
      v5[5] = v4;
      dispatch_async(v3, v5);
    }
  }
}

dispatch_queue_t _MediaControlClient_GlobalInit()
{
  v0 = getprogname();
  if (v0)
  {
    v1 = v0;
    if (!strcasecmp(v0, "mediaserverd") || !strcasecmp(v1, "audiomxd") || !strcasecmp(v1, "airplayd"))
    {
      gMediaControlForLegacyURLFlinging = 1;
      goto LABEL_8;
    }
  }

  if (gMediaControlForLegacyURLFlinging == 1)
  {
LABEL_8:
    LogSetAppID();
  }

  Int64 = APSSettingsGetInt64();
  if (Int64 >= 1)
  {
    v3 = Int64;
  }

  else
  {
    v3 = 30;
  }

  gMediaControlTimeoutDataSecs = v3;
  gMediaControlUseSecurity = APSSettingsGetInt64() != 0;
  if (gLogCategory_MediaControlClientAuth <= 40 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  gMediaControlMetaData = APSSettingsGetInt64() != 0;
  gAirPlayRouteLock = dispatch_semaphore_create(1);
  result = dispatch_queue_create("AirPlayEventQueue", 0);
  gAirPlayEventQueue = result;
  return result;
}

char *AirPlayGlobalRoute_CopyDestination(int a1, int a2)
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (!gAirPlayRouteLock)
  {
    APSLogErrorAt();
    return 0;
  }

  dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
  if ((a1 - 1) >= 4)
  {
    if (gLogCategory_MediaControlRouting <= 90 && (gLogCategory_MediaControlRouting != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v4 = **(&off_27989AA08 + (a1 - 1));
  if (v4)
  {
    v5 = strdup(v4);
    if (!v5)
    {
      APSLogErrorAt();
    }

    goto LABEL_18;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v6 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v7 = [v6 attributeForKey:*MEMORY[0x277D26C70]];
  if (([objc_msgSend(v7 objectForKey:{*MEMORY[0x277D26D20]), "BOOLValue"}] & 1) == 0 && !objc_msgSend(objc_msgSend(v7, "objectForKey:", *MEMORY[0x277D26D18]), "BOOLValue"))
  {
    goto LABEL_17;
  }

  v8 = [objc_msgSend(objc_msgSend(v7 objectForKey:{@"AirPlayPortExtendedInfo", "objectForKey:", @"dnsNameAirPlay", "UTF8String"}];
  if (!v8)
  {
    goto LABEL_17;
  }

  v5 = strdup(v8);
LABEL_18:
  dispatch_semaphore_signal(gAirPlayRouteLock);
  return v5;
}

uint64_t AirPlayGlobalRoute_SetDestination(int a1)
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (gAirPlayRouteLock)
  {
    if ((a1 - 1) >= 4)
    {
      if (gLogCategory_MediaControlRouting <= 90 && (gLogCategory_MediaControlRouting != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return 4294960591;
    }

    else
    {
      dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
      v2 = ReplaceDifferentString();
      dispatch_semaphore_signal(gAirPlayRouteLock);
      if (v2)
      {
        APSLogErrorAt();
      }

      else
      {
        if (gLogCategory_MediaControlRouting <= 40 && (gLogCategory_MediaControlRouting != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        return 0;
      }
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960534;
  }

  return v2;
}

uint64_t AirPlayGlobalRoute_CopyInfo()
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (gAirPlayRouteLock)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    v0 = gAirPlayRouteInfo;
    if (gAirPlayRouteInfo)
    {
      CFRetain(gAirPlayRouteInfo);
    }

    dispatch_semaphore_signal(gAirPlayRouteLock);
  }

  else
  {
    APSLogErrorAt();
    return 0;
  }

  return v0;
}

uint64_t AirPlayGlobalRoute_SetInfo(const void *a1)
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (!gAirPlayRouteLock)
  {
    APSLogErrorAt();
    return 0;
  }

  dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
  v2 = gAirPlayRouteInfo;
  if (a1)
  {
    CFRetain(a1);
  }

  gAirPlayRouteInfo = a1;
  if (v2)
  {
    CFRelease(v2);
  }

  dispatch_semaphore_signal(gAirPlayRouteLock);
  v3 = gLogCategory_MediaControlRouting;
  if (gLogCategory_MediaControlRouting <= 20)
  {
    if (gLogCategory_MediaControlRouting != -1)
    {
      goto LABEL_10;
    }

    v4 = _LogCategory_Initialize();
    v3 = gLogCategory_MediaControlRouting;
    if (v4)
    {
      if (gLogCategory_MediaControlRouting > 20)
      {
        return 0;
      }

LABEL_10:
      if (v3 == -1 && !_LogCategory_Initialize())
      {
        return 0;
      }

LABEL_15:
      LogPrintF();
      return 0;
    }
  }

  if (v3 <= 40 && (v3 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_15;
  }

  return 0;
}

char *AirPlayGlobalRoute_CopyPassword()
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (!gAirPlayRouteLock)
  {
    APSLogErrorAt();
    return 0;
  }

  dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
  if (!gAirPlayRoutePassword)
  {
    dispatch_semaphore_signal(gAirPlayRouteLock);
    return 0;
  }

  v0 = strdup(gAirPlayRoutePassword);
  dispatch_semaphore_signal(gAirPlayRouteLock);
  if (!v0)
  {
    APSLogErrorAt();
  }

  return v0;
}

uint64_t AirPlayGlobalRoute_SetPassword()
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (gAirPlayRouteLock)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    v0 = ReplaceDifferentString();
    dispatch_semaphore_signal(gAirPlayRouteLock);
    if (v0)
    {
      APSLogErrorAt();
    }

    else
    {
      if (gLogCategory_MediaControlRouting <= 40 && (gLogCategory_MediaControlRouting != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960534;
  }

  return v0;
}

uint64_t AirPlayGetEventQueue()
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  return gAirPlayEventQueue;
}

uint64_t AirPlaySetProperty(CFTypeRef cf1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (gAirPlayRouteLock)
  {
    if (CFEqual(cf1, @"quiesceScreen"))
    {
      v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
      v3 = [v2 attributeForKey:*MEMORY[0x277D26C70]];
      result = [objc_msgSend(v3 objectForKey:{*MEMORY[0x277D26D18]), "BOOLValue"}];
      if (result)
      {
        v5 = [v2 attributeForKey:*MEMORY[0x277D26C60]];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        result = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (result)
        {
          v6 = result;
          v7 = *v18;
          v8 = MEMORY[0x277D26D28];
          v9 = MEMORY[0x277D26C48];
          while (2)
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v18 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v11 = *(*(&v17 + 1) + 8 * i);
              if ([objc_msgSend(v11 objectForKey:{*v8), "isEqual:", *v9}])
              {
                if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                [v2 setPickedRouteWithPassword:v11 withPassword:&stru_28699A3A0];
                return 0;
              }
            }

            v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
            result = 0;
            if (v6)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    else if (CFEqual(cf1, @"volume"))
    {
      CFGetDouble();
      v13 = v12;
      dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
      if (*&gMediaControlCurrentVolume != v13)
      {
        gMediaControlCurrentVolume = LODWORD(v13);
        if (gMediaControlAudioClient)
        {
          v14 = *(gMediaControlAudioClient + 16);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __AirPlaySetProperty_block_invoke;
          block[3] = &__block_descriptor_36_e5_v8__0l;
          v16 = v13;
          dispatch_async(v14, block);
        }
      }

      dispatch_semaphore_signal(gAirPlayRouteLock);
      return 0;
    }

    else
    {
      if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return 4294960561;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960534;
  }

  return result;
}

void __AirPlaySetProperty_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = gMediaControlAudioClient;
  if (gMediaControlAudioClient)
  {
    v2 = *(a1 + 32);
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3 = MediaControlClient_EnsureConnected(v1);
    if (v3)
    {
      v4 = v3;
      APSLogErrorAt();
    }

    else
    {
      snprintf(__str, 0x80uLL, "/volume?volume=%f", v2);
      HTTPHeader_InitRequest();
      v4 = _MediaControlClient_DoTransaction(0x32u, v1, (v1 + 52), 0, 0);
    }

    v5 = v1[34950];
    if (v5)
    {
      free(v5);
      v1[34950] = 0;
    }

    if (v4 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

uint64_t MediaControlClient_EnsureConnected(uint64_t a1)
{
  v2 = a1 + 844952;
  if (!*(a1 + 424))
  {
    *v2 = CFAbsoluteTimeGetCurrent();
    *(a1 + 844960) = 0u;
    *(a1 + 844976) = 0u;
    *(a1 + 844992) = 0u;
    *(a1 + 845008) = 0u;
    *(a1 + 845024) = 0u;
    *(a1 + 845040) = 0;
  }

  v3 = _MediaControlClient_EnsureConnected(a1, a1 + 416);
  if (v3)
  {
    return v3;
  }

  v4 = (a1 + 279600);
  if (!*(a1 + 281756))
  {
    APSGetDeviceNameCString();
    *(a1 + 281756) = 1;
    HTTPHeader_InitRequest();
    HTTPHeader_SetField();
    NROcmM();
    HTTPHeader_SetField();
    v5 = _MediaControlClient_DoTransaction(0x32u, a1, a1 + 416, 0, 0);
    if (v5)
    {
      if (v5 == 200404)
      {
        v6 = 0;
      }

      else
      {
        v6 = v5;
      }

      if (v5 != 200404)
      {
        v7 = 0;
        v8 = 0;
LABEL_18:
        if (*v4)
        {
          free(*v4);
          *v4 = 0;
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (v6 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v7)
        {
          CFDictionaryGetInt64();
          v13 = *(a1 + 281768);
          if (v13)
          {
            CFRelease(v13);
          }

          v14 = APSFeaturesCreateFromLegacyFlags();
          *(a1 + 281768) = v14;
          if (!v14)
          {
            APSLogErrorAt();
            return 4294960568;
          }

          CFDictionaryGetCString();
          *(a1 + 281776) = TextToSourceVersion();
          v15 = *(a1 + 281760);
          CFRetain(v7);
          *(a1 + 281760) = v7;
          if (v15)
          {
            CFRelease(v15);
          }

          CFRelease(v7);
        }

        if (*(v2 + 40) == 0.0)
        {
          Current = CFAbsoluteTimeGetCurrent();
          *(v2 + 40) = Current;
          *(v2 + 80) = ((Current - *(v2 + 32)) * 1000.0);
        }

        v17 = _MediaControlClient_EnsureAuthenticated(a1, a1 + 416);
        if (v17)
        {
          v19 = v17;
          APSLogErrorAt();
          return v19;
        }

        if (*(v2 + 48) == 0.0)
        {
          v18 = CFAbsoluteTimeGetCurrent();
          *(v2 + 48) = v18;
          *(v2 + 84) = ((v18 - *(v2 + 40)) * 1000.0);
        }

        *(a1 + 281780) = 0;
        APSSettingsGetCString();
        *(a1 + 281796) = *(a1 + 281776) > 0x16E61Bu;
        *(a1 + 281797) = APSSettingsGetInt64() != 0;
        goto LABEL_40;
      }

      v12 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v8 = 0;
      if (v12)
      {
        v7 = v12;
        goto LABEL_17;
      }

      v6 = -6700;
      v7 = 0;
    }

    else
    {
      v9 = CFDataCreate(0, *(a1 + 279608), *(a1 + 279616));
      if (v9)
      {
        v10 = v9;
        v7 = CFPropertyListCreateWithData(0, v9, 0, 0, 0);
        CFRelease(v10);
        if (v7)
        {
          v11 = CFGetTypeID(v7);
          if (v11 == CFDictionaryGetTypeID())
          {
            v8 = 0;
LABEL_17:
            v6 = 0;
            goto LABEL_18;
          }

          v6 = -6756;
        }

        else
        {
          v6 = -6717;
        }
      }

      else
      {
        v7 = 0;
        v6 = -6728;
      }
    }

    v8 = v7;
    APSLogErrorAt();
    v7 = 0;
    goto LABEL_18;
  }

LABEL_40:
  if (*(a1 + 563216))
  {
    _MediaControlClient_EnsureReverseConnected(a1, (a1 + 281824));
  }

  return 0;
}

uint64_t _MediaControlClient_DoTransaction(unsigned __int8 a1, void *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  if (!*(a3 + 8))
  {
    APSLogErrorAt();
    v16 = 4294960551;
    goto LABEL_22;
  }

  v10 = 200401;
  v11 = a3 + 80;
  HTTPHeader_SetField();
  HTTPHeader_SetField();
  HTTPHeader_SetField();
  APSVersionUtilsGetShortVersionLength();
  HTTPHeader_SetField();
  v12 = _MediaControlClient_SendRequest(a1, a3, a4, a5);
  if (v12)
  {
    goto LABEL_12;
  }

  v12 = _MediaControlClient_ReceiveResponse(a1, a3);
  if (v12 != 200401)
  {
    goto LABEL_12;
  }

  if (_MediaControlClient_GetPassword(a2))
  {
    if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v13 = a2[4];
    a2[11] = "AirPlay";
    a2[12] = v13;
    a2[13] = v11;
    a2[14] = a3 + 8560;
    v14 = HTTPClientAuthorization_Apply();
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v15 = _MediaControlClient_SendRequest(a1, a3, a4, a5);
      if (!v15)
      {
        v12 = _MediaControlClient_ReceiveResponse(a1, a3);
LABEL_12:
        v16 = v12;
        goto LABEL_13;
      }

      v16 = v15;
    }

    APSLogErrorAt();
LABEL_13:
    if (v16 == -6723 || !v16)
    {
      return v16;
    }

    if (v16 == 200401)
    {
      goto LABEL_16;
    }

LABEL_22:
    if ((v16 - 100) < 0x1F4 || (v16 - 200100) <= 0x1F3)
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (a2[70402])
      {
        CFPropertyListCreateFormatted();
      }

      MediaControlClient_EnsureDisconnected(a2);
    }

    return v16;
  }

LABEL_16:
  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v10;
}

uint64_t _MediaControlClient_SendRequest(unsigned __int8 a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = HTTPHeader_Commit();
  if (v8)
  {
    v10 = v8;
LABEL_16:
    APSLogErrorAt();
    return v10;
  }

  if (a4 == -1)
  {
    strlen(a3);
  }

  if (gLogCategory_MediaControlClientHTTPClient <= a1 && (gLogCategory_MediaControlClientHTTPClient != -1 || _LogCategory_Initialize()))
  {
    LogHTTP();
  }

  v9 = (*(*a2 + 40))();
  v10 = v9;
  if (v9 != -6723 && v9 != 32 && v9 != 0)
  {
    goto LABEL_16;
  }

  return v10;
}

uint64_t _MediaControlClient_ReceiveResponse(unsigned __int8 a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = NetSocket_HTTPReadHeader();
  if (v5)
  {
    return v5;
  }

  v6 = (a2 + 34898);
  v7 = a2[2128];
  if (v7 >= 0x20000)
  {
    if (v7 >= 0x400000)
    {
      APSLogErrorAt();
      return 4294960553;
    }

    v17 = a2[2128];
    if (*v6)
    {
      free(*v6);
    }

    v10 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
    *v6 = v10;
    if (!v10)
    {
      APSLogErrorAt();
      return 4294960568;
    }

    a2[34899] = v10;
  }

  else
  {
    v17 = a2[2128];
    v8 = a2 + 18514;
    a2[34899] = (a2 + 18514);
    if (!v7)
    {
      v9 = 0;
      goto LABEL_13;
    }
  }

  v11 = (*(v4 + 24))(v4, v7, v7);
  v12 = v11;
  if (v11 == -6723)
  {
    return v12;
  }

  if (v11)
  {
    APSLogErrorAt();
    return v12;
  }

  v8 = a2[34899];
  v9 = v17;
LABEL_13:
  *(v8 + v9) = 0;
  a2[34900] = v17;
  if (*(v4 + 64) == *(v4 + 72))
  {
    if (gLogCategory_MediaControlClientHTTPClient <= a1 && (gLogCategory_MediaControlClientHTTPClient != -1 || _LogCategory_Initialize()))
    {
      LogHTTP();
    }

    v13 = *(a2 + 4248);
    v14 = v13 - 200;
    if (v13 == 101)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13 + 200000;
    }

    if (v14 >= 0x64)
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960584;
  }
}

uint64_t _MediaControlClient_GetPassword(uint64_t a1)
{
  v2 = AirPlayGlobalRoute_CopyPassword();
  if (v2)
  {
    v3 = v2;
    ReplaceDifferentString();
    free(v3);
  }

  v6 = *(a1 + 32);
  v5 = a1 + 32;
  v4 = v6;
  if (!v6 || !*v4)
  {
    if (gMediaControlClientInitOnce != -1)
    {
      dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
    }

    if (!gAirPlayRouteLock)
    {
      goto LABEL_15;
    }

    if ((gMediaControlForLegacyURLFlinging & 1) == 0)
    {
      v7 = [MEMORY[0x277D26E58] sharedAVSystemController];
      v8 = [objc_msgSend(v7 attributeForKey:{*MEMORY[0x277D26C70]), "objectForKey:", @"AirPlayPortExtendedInfo"}];
      if (([objc_msgSend(v8 objectForKey:{@"systemFlags", "intValue"}] & 8) != 0)
      {
        v9 = [objc_msgSend(v8 objectForKey:{@"pin", "UTF8String"}];
        if (v9)
        {
          if (*v9)
          {
            v10 = strdup(v9);
            if (v10)
            {
              v11 = v10;
              ReplaceDifferentString();
              free(v11);
              return *v5;
            }

LABEL_15:
            APSLogErrorAt();
          }
        }
      }
    }
  }

  return *v5;
}

uint64_t MediaControlClient_EnsureDisconnected(uint64_t a1)
{
  v2 = (a1 + 844832);
  v3 = a1 + 281756;
  _MediaControlClientNowPlayingEnsureTornDown(a1);
  _MediaControlClient_LogPhotoEnded(a1);
  _MediaControlClient_LogSlideshowEnded(a1);
  _MediaControlClient_LogVideoEnded(a1);
  if (*v2)
  {
    HTTPServer_Delete();
    *v2 = 0;
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_release(v4);
    v2[1] = 0;
  }

  _MediaControlClient_EnsureDisconnected(a1, a1 + 416);
  _MediaControlClient_EnsureReverseDisconnected(a1, (a1 + 281824));
  _MediaControlClient_EnsureReverseDisconnected(a1, (a1 + 563288));
  _MediaControlClient_PlaybackStopped(a1);
  *v3 = 0;
  v5 = *(v3 + 4);
  if (v5)
  {
    CFRelease(v5);
    *(v3 + 4) = 0;
  }

  return 0;
}

void _MediaControlClientNowPlayingEnsureTornDown(uint64_t a1)
{
  v1 = a1 + 843776;
  if (*(a1 + 844817))
  {
    *(a1 + 844817) = 0;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    _MediaControlClient_ControlNowPlaying(0);
    if (gLogCategory_MediaControlClientMetaData <= 30 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v2 = *(v1 + 1048);
  if (v2)
  {
    CFRelease(v2);
    *(v1 + 1048) = 0;
  }
}

void _MediaControlClient_LogPhotoEnded(uint64_t a1)
{
  v1 = a1 + 561152;
  if (*(a1 + 563256) != 0.0)
  {
    CFAbsoluteTimeGetCurrent();
    if (gLogCategory_MediaControlClientCore <= 50)
    {
      if (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    *(v1 + 2104) = 0;
  }
}

void _MediaControlClient_LogSlideshowEnded(uint64_t a1)
{
  v1 = a1 + 843776;
  if (*(a1 + 844720) != 0.0)
  {
    CFAbsoluteTimeGetCurrent();
    if (gLogCategory_MediaControlClientCore <= 50)
    {
      if (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    *(v1 + 944) = 0;
  }
}

void _MediaControlClient_LogVideoEnded(uint64_t a1)
{
  v1 = a1 + 843776;
  if (*(a1 + 844768) != 0.0)
  {
    CFAbsoluteTimeGetCurrent();
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(v1 + 992) = 0;
  }
}

uint64_t _MediaControlClient_EnsureDisconnected(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    NetSocket_Delete();
    *a2 = 0;
  }

  if (*(a2 + 8))
  {
    *(a2 + 8) = 0;
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v4 = *(a2 + 281272);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 281272) = 0;
  }

  *(a2 + 281312) = 0;
  *(a2 + 279216) = 0;
  if (_MediaControlClient_RemoveTrafficRegistration(a1) && gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = *(a1 + 56);
  if (result)
  {
    if (*(a2 + 281268))
    {
      result = APSConnectionInterfaceManagerReleaseInterfaceSelection();
      *(a2 + 281268) = 0;
    }
  }

  return result;
}

uint64_t _MediaControlClient_EnsureReverseDisconnected(uint64_t a1, void *a2)
{
  v4 = a2 + 34816;
  if (*a2)
  {
    NetSocket_Cancel();
  }

  if (v4[353])
  {
    v4[354] = dispatch_semaphore_create(0);
    dispatch_async_f(v4[353], a2, _MediaControlClient_ReverseConnectionStop);
    dispatch_release(v4[353]);
    v5 = v4[354];
    if (v5)
    {
      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v4[354]);
      v4[354] = 0;
    }

    v4[353] = 0;
  }

  return _MediaControlClient_EnsureDisconnected(a1, a2);
}

void _MediaControlClient_PlaybackStopped(uint64_t a1)
{
  v2 = a1 + 843776;
  if (*(a1 + 844934))
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    if (gMediaControlAudioClient == a1)
    {
      gMediaControlAudioClient = 0;
    }

    dispatch_semaphore_signal(gAirPlayRouteLock);
  }

  if (gMediaControlForLegacyURLFlinging == 1)
  {
    if (*(v2 + 1304))
    {
      if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFRelease(*(v2 + 1304));
      *(v2 + 1304) = 0;
    }

    if (*(v2 + 1156))
    {
      if (*(a1 + 64))
      {
        v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, (a1 + 64));
        *(v2 + 1156) = 0;
        if (v3)
        {
          CFRelease(v3);
        }
      }

      else
      {
        *(v2 + 1156) = 0;
      }
    }
  }

  _MediaControlClient_PlaybackPaused(a1, 0);
}

void _MediaControlClient_PlaybackPaused(uint64_t a1, int a2)
{
  if (gMediaControlForLegacyURLFlinging == 1)
  {
    v2 = a2;
    v4 = a1 + 843776;
    if (!a2)
    {
      v8 = *(a1 + 845068);
      if (v8)
      {
        IOPMAssertionRelease(v8);
        *(v4 + 1292) = 0;
        if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      v9 = *(v4 + 1296);
      if (v9)
      {
        dispatch_source_cancel(*(v4 + 1296));
        dispatch_release(v9);
        *(v4 + 1296) = 0;
      }

      goto LABEL_18;
    }

    if (*(a1 + 844933))
    {
LABEL_18:
      *(v4 + 1157) = v2;
      return;
    }

    if (*(a1 + 845072))
    {
LABEL_7:
      if (!*(v4 + 1292))
      {
        IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.airplay.pause-grace-period", (v4 + 1292));
        if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      goto LABEL_18;
    }

    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 16));
    *(v4 + 1296) = v5;
    if (v5)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = ___MediaControlClient_PlaybackPaused_block_invoke;
      handler[3] = &__block_descriptor_40_e5_v8__0l;
      handler[4] = a1;
      dispatch_source_set_event_handler(v5, handler);
      v6 = *(v4 + 1296);
      v7 = dispatch_time(0, 900000000000);
      dispatch_source_set_timer(v6, v7, 0x7FFFFFFFFFFFFFFFuLL, 0x3B9ACA00uLL);
      dispatch_resume(*(v4 + 1296));
      goto LABEL_7;
    }

    APSLogErrorAt();
  }
}

void _MediaControlClient_ReverseConnectionStop(uint64_t a1)
{
  v1 = a1 + 278528;
  v2 = *(a1 + 281368);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 281368));
    dispatch_release(v2);
    *(v1 + 2840) = 0;
  }

  v3 = *(v1 + 2856);
  if (v3)
  {
    dispatch_source_cancel(*(v1 + 2856));
    dispatch_release(v3);
    *(v1 + 2856) = 0;
  }
}

uint64_t _MediaControlClient_RemoveTrafficRegistration(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 + 278528;
    if (*(a1 + 281822))
    {
      v2 = *(a1 + 281800);
      if (v2)
      {
        CFRelease(v2);
        *(v1 + 3272) = 0;
      }
    }

    if (*(v1 + 3295))
    {
      v3 = *(v1 + 3280);
      if (v3)
      {
        CFRelease(v3);
        *(v1 + 3280) = 0;
      }
    }

    result = 0;
    *(v1 + 3288) = 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return result;
}

intptr_t _MediaControlClient_ControlNowPlaying(unsigned int a1)
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (gAirPlayRouteLock)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    v2 = gAirPlayNowPlayingFlags & 0xFFFFFFFD | (2 * ((a1 >> 1) & 1));
    gAirPlayNowPlayingFlags = v2;
    if (v2)
    {
      if ((gAirPlayNowPlayingRegistered & 1) == 0)
      {
        MRMediaRemoteRegisterForNowPlayingNotifications();
LABEL_9:
        gAirPlayNowPlayingRegistered = v2 != 0;
      }
    }

    else if (gAirPlayNowPlayingRegistered)
    {
      MRMediaRemoteUnregisterForNowPlayingNotifications();
      goto LABEL_9;
    }

    v3 = gAirPlayRouteLock;

    return dispatch_semaphore_signal(v3);
  }

  return APSLogErrorAt();
}

uint64_t _MediaControlClientNowPlayingInfoDidChange(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return MRMediaRemoteGetNowPlayingInfo();
}

void _MediaControlClientNowPlayingUpdate(uint64_t a1, const __CFDictionary *a2)
{
  v131 = 0;
  valuePtr = 0;
  v130 = 0;
  v4 = *(a1 + 844824);
  v5 = v4;
  if (!v4)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      goto LABEL_325;
    }

    v5 = Mutable;
    *(a1 + 844824) = Mutable;
  }

  v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v7)
  {
    v8 = v7;
    v125 = a1;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, *MEMORY[0x277D27B60]);
    }

    else
    {
      Value = 0;
    }

    if (Value)
    {
      v10 = Value;
    }

    else
    {
      v10 = &stru_28699A3A0;
    }

    v11 = CFGetTypeID(v10);
    if (v11 != CFStringGetTypeID())
    {
      goto LABEL_326;
    }

    v12 = CFDictionaryGetValue(v5, @"album");
    if (!v4 || v10 != v12 && (!v12 || !CFEqual(v10, v12)))
    {
      CFDictionarySetValue(v8, @"album", v10);
      CFDictionarySetValue(v5, @"album", v10);
    }

    v13 = a2 ? CFDictionaryGetValue(a2, *MEMORY[0x277D27B70]) : 0;
    v14 = v13 ? v13 : &stru_28699A3A0;
    v15 = CFGetTypeID(v14);
    if (v15 != CFStringGetTypeID())
    {
      goto LABEL_326;
    }

    v16 = CFDictionaryGetValue(v5, @"artist");
    if (!v4 || v14 != v16 && (!v16 || !CFEqual(v14, v16)))
    {
      CFDictionarySetValue(v8, @"artist", v14);
      CFDictionarySetValue(v5, @"artist", v14);
    }

    cf = v10;
    v17 = a2 ? CFDictionaryGetValue(a2, *MEMORY[0x277D27BB0]) : 0;
    v18 = v17 ? v17 : &stru_28699A3A0;
    v19 = CFGetTypeID(v18);
    if (v19 != CFStringGetTypeID())
    {
      goto LABEL_326;
    }

    v20 = CFDictionaryGetValue(v5, @"composer");
    if (!v4 || v18 != v20 && (!v20 || !CFEqual(v18, v20)))
    {
      CFDictionarySetValue(v8, @"composer", v18);
      CFDictionarySetValue(v5, @"composer", v18);
    }

    v21 = a2 ? CFDictionaryGetValue(a2, *MEMORY[0x277D27C00]) : 0;
    v22 = v21 ? v21 : &stru_28699A3A0;
    v23 = CFGetTypeID(v22);
    if (v23 != CFStringGetTypeID())
    {
      goto LABEL_326;
    }

    v24 = CFDictionaryGetValue(v5, @"genre");
    if (!v4 || v22 != v24 && (!v24 || !CFEqual(v22, v24)))
    {
      CFDictionarySetValue(v8, @"genre", v22);
      CFDictionarySetValue(v5, @"genre", v22);
    }

    v25 = a2 ? CFDictionaryGetValue(a2, *MEMORY[0x277D27C88]) : 0;
    v26 = v25 ? v25 : &stru_28699A3A0;
    v27 = CFGetTypeID(v26);
    if (v27 != CFStringGetTypeID())
    {
      goto LABEL_326;
    }

    v28 = CFDictionaryGetValue(v5, @"title");
    if (!v4 || v26 != v28 && (!v28 || !CFEqual(v26, v28)))
    {
      CFDictionarySetValue(v8, @"title", v26);
      CFDictionarySetValue(v5, @"title", v26);
    }

    v127 = v26;
    if (a2)
    {
      v29 = CFDictionaryGetValue(a2, *MEMORY[0x277D27C48]);
      v30 = CFDictionaryGetValue(a2, *MEMORY[0x277D27CA0]);
      if (v29)
      {
        v31 = v30;
        v32 = CFGetTypeID(v29);
        if (v32 == CFNumberGetTypeID())
        {
          if (v31)
          {
            v33 = CFGetTypeID(v31);
            if (v33 == CFNumberGetTypeID())
            {
              CFGetInt64();
              Int64 = CFNumberCreateInt64();
              if (!Int64)
              {
LABEL_318:
                APSLogErrorAt();
                v123 = -6728;
LABEL_327:
                v131 = v123;
LABEL_305:
                CFRelease(v8);
                if (!v131)
                {
                  return;
                }

                goto LABEL_306;
              }

              v35 = Int64;
              v36 = CFDictionaryGetValue(v5, @"trackNumber");
              if (!v4 || v35 != v36 && (!v36 || !CFEqual(v35, v36)))
              {
                CFDictionarySetValue(v8, @"trackNumber", v35);
                CFDictionarySetValue(v5, @"trackNumber", v35);
              }

              CFRelease(v35);
              v37 = CFDictionaryGetValue(v5, @"totalTracks");
              if (!v4 || v31 != v37 && (!v37 || !CFEqual(v31, v37)))
              {
                CFDictionarySetValue(v8, @"totalTracks", v31);
                CFDictionarySetValue(v5, @"totalTracks", v31);
              }

              goto LABEL_119;
            }
          }
        }
      }

      v38 = CFDictionaryGetValue(a2, *MEMORY[0x277D27CB0]);
      v29 = v38;
      if (v38)
      {
        v39 = CFGetTypeID(v38);
        if (v39 != CFNumberGetTypeID())
        {
          goto LABEL_326;
        }

        v40 = 0;
      }

      else
      {
        v40 = 1;
      }
    }

    else
    {
      v29 = 0;
      v40 = 1;
    }

    v41 = CFDictionaryGetValue(v5, @"trackNumber");
    if (!v4 || v29 != v41 && (!v40 ? (v42 = v29) : (v42 = *MEMORY[0x277CBEEE8]), v41 ? (v43 = v41) : (v43 = *MEMORY[0x277CBEEE8]), !CFEqual(v42, v43)))
    {
      if (v40)
      {
        CFDictionarySetInt64();
        v44 = *MEMORY[0x277CBEEE8];
        v45 = v5;
      }

      else
      {
        CFDictionarySetValue(v8, @"trackNumber", v29);
        v45 = v5;
        v44 = v29;
      }

      CFDictionarySetValue(v45, @"trackNumber", v44);
    }

    if (a2)
    {
      v46 = CFDictionaryGetValue(a2, *MEMORY[0x277D27CA8]);
      v47 = v46;
      if (v46)
      {
        v48 = CFGetTypeID(v46);
        if (v48 != CFNumberGetTypeID())
        {
          goto LABEL_326;
        }

        v49 = 0;
LABEL_105:
        v50 = CFDictionaryGetValue(v5, @"totalTracks");
        if (!v4 || v47 != v50 && (!v49 ? (v51 = v47) : (v51 = *MEMORY[0x277CBEEE8]), v50 ? (v52 = v50) : (v52 = *MEMORY[0x277CBEEE8]), !CFEqual(v51, v52)))
        {
          if (v49)
          {
            CFDictionarySetInt64();
            v53 = *MEMORY[0x277CBEEE8];
            v54 = v5;
          }

          else
          {
            CFDictionarySetValue(v8, @"totalTracks", v47);
            v54 = v5;
            v53 = v47;
          }

          CFDictionarySetValue(v54, @"totalTracks", v53);
        }

        if (!a2)
        {
          v56 = 0;
          goto LABEL_123;
        }

LABEL_119:
        v55 = CFDictionaryGetValue(a2, *MEMORY[0x277D27BD0]);
        v56 = v55;
        if (v55)
        {
          v57 = CFGetTypeID(v55);
          if (v57 != CFNumberGetTypeID())
          {
            goto LABEL_326;
          }

          v58 = 0;
LABEL_124:
          v59 = CFDictionaryGetValue(v5, @"discNumber");
          if (!v4 || v56 != v59 && (!v58 ? (v60 = v56) : (v60 = *MEMORY[0x277CBEEE8]), v59 ? (v61 = v59) : (v61 = *MEMORY[0x277CBEEE8]), !CFEqual(v60, v61)))
          {
            if (v58)
            {
              CFDictionarySetInt64();
              v62 = *MEMORY[0x277CBEEE8];
              v63 = v5;
            }

            else
            {
              CFDictionarySetValue(v8, @"discNumber", v56);
              v63 = v5;
              v62 = v56;
            }

            CFDictionarySetValue(v63, @"discNumber", v62);
          }

          v126 = v14;
          if (a2)
          {
            v64 = CFDictionaryGetValue(a2, *MEMORY[0x277D27C98]);
            v65 = v64;
            if (v64)
            {
              v66 = CFGetTypeID(v64);
              if (v66 != CFNumberGetTypeID())
              {
                goto LABEL_326;
              }

              v67 = 0;
LABEL_143:
              v68 = CFDictionaryGetValue(v5, @"totalDiscs");
              v69 = v8;
              if (v4 && (v65 == v68 || (!v67 ? (v70 = v65) : (v70 = *MEMORY[0x277CBEEE8]), v68 ? (v71 = v68) : (v71 = *MEMORY[0x277CBEEE8]), CFEqual(v70, v71))) || ((v67 & 1) == 0 ? (CFDictionarySetValue(v8, @"totalDiscs", v65), v73 = v5, v72 = v65) : (CFDictionarySetInt64(), v72 = *MEMORY[0x277CBEEE8], v73 = v5), CFDictionarySetValue(v73, @"totalDiscs", v72), v4))
              {
                if (a2)
                {
                  goto LABEL_157;
                }

LABEL_165:
                v75 = 0;
                goto LABEL_166;
              }

              if (a2 && (v78 = CFDictionaryGetValue(a2, *MEMORY[0x277D27BE0])) != 0)
              {
                v79 = v78;
                v80 = CFGetTypeID(v78);
                if (v80 != CFNumberGetTypeID())
                {
                  goto LABEL_326;
                }

                CFDictionaryGetValue(v5, @"elapsedTime");
                CFDictionarySetValue(v8, @"elapsedTime", v79);
                CFDictionarySetValue(v5, @"elapsedTime", v79);
              }

              else
              {
                CFDictionaryGetValue(v5, @"elapsedTime");
                CFDictionarySetInt64();
                CFDictionarySetValue(v5, @"elapsedTime", *MEMORY[0x277CBEEE8]);
                if (!a2)
                {
                  goto LABEL_165;
                }
              }

LABEL_157:
              v74 = CFDictionaryGetValue(a2, *MEMORY[0x277D27BD8]);
              v75 = v74;
              if (v74)
              {
                v76 = CFGetTypeID(v74);
                if (v76 == CFNumberGetTypeID())
                {
                  v77 = 0;
LABEL_167:
                  v81 = CFDictionaryGetValue(v5, @"duration");
                  if (!v4 || v75 != v81 && (!v77 ? (v82 = v75) : (v82 = *MEMORY[0x277CBEEE8]), v81 ? (v83 = v81) : (v83 = *MEMORY[0x277CBEEE8]), !CFEqual(v82, v83)))
                  {
                    if (v77)
                    {
                      CFDictionarySetInt64();
                      v84 = *MEMORY[0x277CBEEE8];
                      v85 = v5;
                    }

                    else
                    {
                      CFDictionarySetValue(v69, @"duration", v75);
                      v85 = v5;
                      v84 = v75;
                    }

                    CFDictionarySetValue(v85, @"duration", v84);
                  }

                  if (a2)
                  {
                    v86 = CFDictionaryGetValue(a2, *MEMORY[0x277D27B80]);
                    v87 = v86;
                    if (v86)
                    {
                      v88 = CFGetTypeID(v86);
                      if (v88 != CFDataGetTypeID())
                      {
                        goto LABEL_323;
                      }

                      v89 = 0;
LABEL_186:
                      v90 = CFDictionaryGetValue(v5, @"artworkData");
                      if (!v4 || v87 != v90 && (!v89 ? (v91 = v87) : (v91 = *MEMORY[0x277CBEEE8]), v90 ? (v92 = v90) : (v92 = *MEMORY[0x277CBEEE8]), !CFEqual(v91, v92)))
                      {
                        if ((v89 & 1) == 0)
                        {
                          CFDictionarySetValue(v69, @"artworkData", v87);
                        }

                        if (v89)
                        {
                          v93 = *MEMORY[0x277CBEEE8];
                        }

                        else
                        {
                          v93 = v87;
                        }

                        CFDictionarySetValue(v5, @"artworkData", v93);
                      }

                      if (a2)
                      {
                        v94 = CFDictionaryGetValue(a2, *MEMORY[0x277D27B90]);
                      }

                      else
                      {
                        v94 = 0;
                      }

                      if (v94)
                      {
                        v95 = v94;
                      }

                      else
                      {
                        v95 = &stru_28699A3A0;
                      }

                      v96 = CFGetTypeID(v95);
                      if (v96 == CFStringGetTypeID())
                      {
                        v97 = CFDictionaryGetValue(v5, @"artworkMIMEType");
                        if (v4 && (v95 == v97 || v97 && CFEqual(v95, v97)))
                        {
                          if (v77)
                          {
                            goto LABEL_217;
                          }
                        }

                        else
                        {
                          CFDictionarySetValue(v69, @"artworkMIMEType", v95);
                          CFDictionarySetValue(v5, @"artworkMIMEType", v95);
                          if (v77)
                          {
                            goto LABEL_217;
                          }
                        }

                        CFGetDouble();
                        if (v98 > 0.0)
                        {
                          v99 = MEMORY[0x277CBED10];
LABEL_218:
                          v8 = v69;
                          v100 = *v99;
                          v101 = CFDictionaryGetValue(v5, @"isStream");
                          if (!v4 || v100 != v101 && (!v100 || !v101 || !CFEqual(v100, v101)))
                          {
                            CFDictionarySetValue(v69, @"isStream", v100);
                            CFDictionarySetValue(v5, @"isStream", v100);
                          }

                          if (a2)
                          {
                            v102 = CFDictionaryGetInt64();
                            v130 = v102;
                            v103 = @"none";
                            v104 = 1;
                            if (!v131 && v102 != 1)
                            {
                              if (v102 == 2)
                              {
                                v103 = @"one";
                              }

                              else if (v102 == 3)
                              {
                                v103 = @"all";
                              }

                              else
                              {
                                if (gLogCategory_MediaControlClientMetaData <= 50 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
                                {
                                  LogPrintF();
                                }

                                v104 = 0;
                                v103 = 0;
                              }
                            }
                          }

                          else
                          {
                            v131 = -6727;
                            v103 = @"none";
                            v104 = 1;
                          }

                          v105 = CFDictionaryGetValue(v5, @"repeatMode");
                          if (!v4 || v103 != v105 && (v105 ? (v106 = v104) : (v106 = 0), v106 != 1 || !CFEqual(v103, v105)))
                          {
                            CFDictionarySetValue(v69, @"repeatMode", v103);
                            CFDictionarySetValue(v5, @"repeatMode", v103);
                          }

                          if (a2)
                          {
                            v107 = CFDictionaryGetInt64();
                            v130 = v107;
                            v108 = @"off";
                            v109 = 1;
                            if (!v131 && v107 != 1)
                            {
                              if (v107 == 2)
                              {
                                v108 = @"albums";
                              }

                              else if (v107 == 3)
                              {
                                v108 = @"songs";
                              }

                              else
                              {
                                if (gLogCategory_MediaControlClientMetaData <= 50 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
                                {
                                  LogPrintF();
                                }

                                v109 = 0;
                                v108 = 0;
                              }
                            }
                          }

                          else
                          {
                            v131 = -6727;
                            v108 = @"off";
                            v109 = 1;
                          }

                          v110 = CFDictionaryGetValue(v5, @"shuffleMode");
                          if (!v4 || v108 != v110 && (v110 ? (v111 = v109) : (v111 = 0), v111 != 1 || !CFEqual(v108, v110)))
                          {
                            CFDictionarySetValue(v69, @"shuffleMode", v108);
                            CFDictionarySetValue(v5, @"shuffleMode", v108);
                          }

                          if (a2)
                          {
                            CFDictionaryGetDouble();
                            valuePtr = v112;
                            if (!v131)
                            {
LABEL_271:
                              v113 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
                              if (v113)
                              {
                                v114 = v113;
                                v115 = CFDictionaryGetValue(v5, @"rate");
                                if (!v4 || v114 != v115 && (!v115 || !CFEqual(v114, v115)))
                                {
                                  CFDictionarySetValue(v69, @"rate", v114);
                                  CFDictionarySetValue(v5, @"rate", v114);
                                }

                                CFRelease(v114);
                                if (a2)
                                {
                                  v130 = CFDictionaryGetInt64();
                                  if (!v131)
                                  {
LABEL_283:
                                    v119 = CFNumberCreate(0, kCFNumberSInt64Type, &v130);
                                    if (v119)
                                    {
                                      v120 = v119;
                                      v121 = CFDictionaryGetValue(v5, @"uniqueID");
                                      if (!v4 || v120 != v121 && (!v121 || !CFEqual(v120, v121)))
                                      {
                                        CFDictionarySetValue(v69, @"uniqueID", v120);
                                        CFDictionarySetValue(v5, @"uniqueID", v120);
                                      }

                                      CFRelease(v120);
                                      v8 = v69;
                                      if (CFDictionaryGetCount(v69) < 1)
                                      {
                                        goto LABEL_304;
                                      }

                                      v122 = gLogCategory_MediaControlClientMetaData;
                                      if (gLogCategory_MediaControlClientMetaData <= 20)
                                      {
                                        if (gLogCategory_MediaControlClientMetaData != -1)
                                        {
                                          goto LABEL_292;
                                        }

                                        if (_LogCategory_Initialize())
                                        {
                                          v122 = gLogCategory_MediaControlClientMetaData;
                                          if (gLogCategory_MediaControlClientMetaData > 21)
                                          {
LABEL_298:
                                            LogPrintF();
                                            goto LABEL_299;
                                          }

LABEL_292:
                                          if (v122 == -1)
                                          {
                                            _LogCategory_Initialize();
                                          }

                                          goto LABEL_298;
                                        }
                                      }

LABEL_299:
                                      v131 = MediaControlClient_SetProperty(v125);
                                      if (v131 && gLogCategory_MediaControlClientMetaData <= 50 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
                                      {
                                        LogPrintF();
                                      }

LABEL_304:
                                      v131 = 0;
                                      goto LABEL_305;
                                    }

                                    APSLogErrorAt();
                                    v124 = -6728;
                                    goto LABEL_324;
                                  }
                                }

                                else
                                {
                                  v131 = -6727;
                                }

                                v116 = CFHash(cf);
                                v117 = v116 ^ CFHash(v126);
                                v130 = v117 ^ CFHash(v127);
                                if (v29)
                                {
                                  v118 = CFHash(v29);
                                  v130 ^= v118;
                                }

                                goto LABEL_283;
                              }

                              goto LABEL_318;
                            }
                          }

                          else
                          {
                            v131 = -6727;
                          }

                          valuePtr = 0x3FF0000000000000;
                          goto LABEL_271;
                        }

LABEL_217:
                        v99 = MEMORY[0x277CBED28];
                        goto LABEL_218;
                      }

LABEL_323:
                      APSLogErrorAt();
                      v124 = -6756;
LABEL_324:
                      v131 = v124;
                      v8 = v69;
                      goto LABEL_305;
                    }
                  }

                  else
                  {
                    v87 = 0;
                  }

                  v89 = 1;
                  goto LABEL_186;
                }

LABEL_326:
                APSLogErrorAt();
                v123 = -6756;
                goto LABEL_327;
              }

LABEL_166:
              v77 = 1;
              goto LABEL_167;
            }
          }

          else
          {
            v65 = 0;
          }

          v67 = 1;
          goto LABEL_143;
        }

LABEL_123:
        v58 = 1;
        goto LABEL_124;
      }
    }

    else
    {
      v47 = 0;
    }

    v49 = 1;
    goto LABEL_105;
  }

LABEL_325:
  APSLogErrorAt();
  v131 = -6728;
LABEL_306:
  if (gLogCategory_MediaControlClientMetaData <= 90 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t MediaControlClient_SetProperty(uint64_t a1)
{
  v2 = MediaControlClient_EnsureConnected();
  if (v2)
  {
    v5 = v2;
    APSLogErrorAt();
  }

  else
  {
    ASPrintF();
    APSLogErrorAt();
    v5 = 4294960568;
  }

  v3 = *(a1 + 279600);
  if (v3)
  {
    free(v3);
    *(a1 + 279600) = 0;
  }

  if (v5 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v5;
}

uint64_t _MediaControlClient_EnsureConnected(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8))
  {
    return 0;
  }

  v33[0] = 0;
  v32[0] = 0;
  v31 = 0;
  v5 = *(a1 + 48);
  if (v5)
  {
    CFRetain(*(a1 + 48));
    goto LABEL_6;
  }

  v5 = AirPlayGlobalRoute_CopyInfo();
  if (v5)
  {
LABEL_6:
    if (*(a1 + 424))
    {
      __strlcpy_chk();
      __strlcpy_chk();
      v6 = 1;
    }

    else
    {
      CFDictionaryGetCString();
      Int64 = CFDictionaryGetInt64();
      v6 = CFDictionaryGetInt64() == 0;
      if (*(a1 + 40))
      {
        v8 = Int64 == 0;
      }

      else
      {
        v8 = 1;
      }

      v9 = v8;
      CFDictionaryGetValue(v5, @"MediaControlClientRouteInfo_TransportDevice");
      if (APTransportDeviceGetAddress() && gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if ((v9 & 1) == 0 && APTransportDeviceGetAddress() && gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      __strlcpy_chk();
      __strlcpy_chk();
    }

    Value = CFDictionaryGetValue(v5, @"MediaControlClientRouteInfo_PublicKey");
    v11 = Value;
    if (Value)
    {
      if (CFDataGetLength(Value) == 32)
      {
        v35.location = 0;
        v35.length = 32;
        CFDataGetBytes(v11, v35, buffer);
        LOBYTE(v11) = 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    if (!(v33[0] | v32[0]))
    {
      if (gLogCategory_MediaControlClientAuth > 90 || gLogCategory_MediaControlClientAuth == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    if (*(a1 + 424))
    {
      if (*(a1 + 279633))
      {
        v33[0] = 0;
        if (v32[0])
        {
          goto LABEL_37;
        }
      }

      else
      {
        v32[0] = 0;
        if (v33[0])
        {
          goto LABEL_37;
        }
      }

      if (gLogCategory_MediaControlClientAuth > 90 || gLogCategory_MediaControlClientAuth == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_45;
      }

LABEL_33:
      LogPrintF();
LABEL_45:
      v28 = -6705;
LABEL_46:
      _MediaControlClient_EnsureDisconnected(a1, a2);
LABEL_141:
      CFRelease(v5);
      return v28;
    }

LABEL_37:
    if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a2 + 281330) = 1;
    v12 = *(a2 + 281312);
    v13 = v11 ^ 1;
    if (*(a2 + 281312))
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      v14 = v30;
      *(a2 + 281280) = *buffer;
      *(a2 + 281296) = v14;
      *(a2 + 281312) = 1;
      v12 = 1;
    }

    if (*(a2 + 281272))
    {
      if (!v12)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v28 = gQblcfSzZBQsYCCV();
      if (v28)
      {
        goto LABEL_143;
      }

      if (!*(a2 + 281312))
      {
        goto LABEL_59;
      }
    }

    if (xOvZekdnwD6())
    {
      v15 = 0;
LABEL_83:
      if (!*(a2 + 8))
      {
        v19 = v33[0];
        if (v33[0])
        {
          v20 = v33;
        }

        else
        {
          v20 = v32;
        }

        if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v21 = _MediaControlClient_Connect(a1, a2, v20, v19 == 0);
        v28 = v21;
        if (v21 && v32[0] && v33[0])
        {
          v33[0] = 0;
          if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v21 = _MediaControlClient_Connect(a1, a2, v32, 1);
          v28 = v21;
        }

        if (v21)
        {
          goto LABEL_143;
        }
      }

      v22 = _MediaControlClient_DoPairVerify(a1, a2);
      v28 = v22;
      if (v22)
      {
        v23 = v15;
      }

      else
      {
        v23 = 1;
      }

      if ((v23 & 1) == 0)
      {
        if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v6 && !*(a1 + 74) && v33[0] && (v24 = _MediaControlClient_DoPairSetupUnauthenticated(a1, a2), v28 = v24, v24 != 200470))
        {
          if (v24)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v28 = _MediaControlClient_DoPairSetupPIN(a1, a2);
          if (v28)
          {
            goto LABEL_46;
          }
        }

        v22 = _MediaControlClient_DoPairVerify(a1, a2);
        v28 = v22;
      }

      if (v22)
      {
        goto LABEL_140;
      }

      if (*(a2 + 8))
      {
        goto LABEL_136;
      }

      v25 = v33[0];
      if (v33[0])
      {
        v26 = v33;
      }

      else
      {
        v26 = v32;
      }

      if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v27 = _MediaControlClient_Connect(a1, a2, v26, v25 == 0);
      v28 = v27;
      if (v27 && v32[0] && v33[0])
      {
        v33[0] = 0;
        if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v27 = _MediaControlClient_Connect(a1, a2, v32, 1);
        v28 = v27;
      }

      if (!v27)
      {
LABEL_136:
        v28 = 0;
        if (gLogCategory_MediaControlClientCore > 50)
        {
          goto LABEL_141;
        }

        if (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }

        goto LABEL_140;
      }

LABEL_143:
      APSLogErrorAt();
LABEL_140:
      if (!v28)
      {
        goto LABEL_141;
      }

      goto LABEL_46;
    }

LABEL_59:
    if (v33[0])
    {
      v16 = v33;
    }

    else
    {
      v16 = v32;
    }

    if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v17 = _MediaControlClient_Connect(a1, a2, v16, v33[0] == 0);
    v28 = v17;
    if (v17 && v32[0] && v33[0])
    {
      v33[0] = 0;
      if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = _MediaControlClient_Connect(a1, a2, v32, 1);
      v28 = v17;
    }

    if (v17)
    {
      goto LABEL_143;
    }

    if (v6 && !*(a1 + 74) && v33[0] && (v18 = _MediaControlClient_DoPairSetupUnauthenticated(a1, a2), v28 = v18, v18 != 200470))
    {
      if (v18)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v28 = _MediaControlClient_DoPairSetupPIN(a1, a2);
      if (v28)
      {
        goto LABEL_46;
      }
    }

    v15 = 1;
    goto LABEL_83;
  }

  APSLogErrorAt();
  _MediaControlClient_EnsureDisconnected(a1, a2);
  return 4294960587;
}

uint64_t _MediaControlClient_EnsureAuthenticated(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2 + 278528;
  if (*(a2 + 279216))
  {
    v3 = 1;
  }

  else
  {
    v3 = gMediaControlUseSecurity == 0;
  }

  if (v3 || !APSFeaturesHasFeature())
  {
    return 0;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v6 = APCUGetFairPlayHWInfoEx();
  if (v6)
  {
    v9 = v6;
    goto LABEL_47;
  }

  cp2g1b9ro();
  if (v7)
  {
    v9 = v7;
    goto LABEL_47;
  }

  Mib5yocT();
  if (v8)
  {
    v9 = v8;
    goto LABEL_47;
  }

  v10 = RandomBytes();
  if (v10)
  {
    v9 = v10;
    goto LABEL_47;
  }

  v11 = RandomBytes();
  if (v11)
  {
    v9 = v11;
    goto LABEL_47;
  }

  v12 = RandomBytes();
  if (v12)
  {
    v9 = v12;
    goto LABEL_47;
  }

  v13 = RandomBytes();
  if (v13)
  {
    v9 = v13;
    goto LABEL_47;
  }

  U4HBs();
  if (v14)
  {
    v9 = v14;
    goto LABEL_47;
  }

  HTTPHeader_InitRequest();
  HTTPHeader_SetField();
  v9 = _MediaControlClient_DoTransaction(0x32u, a1, a2, 0, 0);
  if (v9)
  {
    goto LABEL_47;
  }

  if (!*(v2 + 2802))
  {
LABEL_21:
    v17 = NetSocketGCM_Configure();
    if (!v17)
    {
      for (i = 0; i != 64; ++i)
      {
        *(&v21 + i) = 0;
      }

      v9 = 0;
      *(v2 + 688) = 1;
      goto LABEL_25;
    }

    v9 = v17;
    goto LABEL_47;
  }

  if (*(v2 + 2744))
  {
    v15 = PCFdAVst();
    if (v15)
    {
      v9 = v15;
    }

    else
    {
      v16 = PCFdAVst();
      if (!v16)
      {
        goto LABEL_21;
      }

      v9 = v16;
    }

LABEL_47:
    APSLogErrorAt();
    goto LABEL_25;
  }

  APSLogErrorAt();
  v9 = 4294960534;
LABEL_25:
  v19 = *(v2 + 656);
  if (v19)
  {
    free(v19);
    *(v2 + 656) = 0;
  }

  if (v9)
  {
    if (gLogCategory_MediaControlClientAuth <= 60 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    APSLogErrorAt();
  }

  return v9;
}

uint64_t _MediaControlClient_EnsureReverseConnected(uint64_t a1, _BYTE *a2)
{
  v4 = a2 + 278528;
  if (a2[281344])
  {
    v5 = 4294960573;
    goto LABEL_5;
  }

  if (a2[8])
  {
    goto LABEL_4;
  }

  v7 = _MediaControlClient_EnsureConnected(a1, a2);
  v5 = v7;
  if (v7 == -6723)
  {
    goto LABEL_5;
  }

  if (v7)
  {
LABEL_35:
    APSLogErrorAt();
    goto LABEL_5;
  }

  v8 = _MediaControlClient_EnsureAuthenticated(a1, a2);
  if (v8)
  {
    v5 = v8;
    goto LABEL_35;
  }

  HTTPHeader_InitRequest();
  HTTPHeader_SetField();
  HTTPHeader_SetField();
  HTTPHeader_SetField();
  HTTPHeader_SetField();
  v9 = _MediaControlClient_DoTransaction(0x32u, a1, a2, 0, 0);
  if (v9)
  {
    v5 = v9;
  }

  else
  {
    if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = dispatch_queue_create("MediaControlClientReverse", 0);
    *(v4 + 353) = v11;
    if (v11)
    {
      dispatch_set_context(v11, a2);
      dispatch_set_finalizer_f(*(v4 + 353), _MediaControlClient_ReverseConnectionFinalizer);
      Native = NetSocket_GetNative();
      v13 = dispatch_source_create(MEMORY[0x277D85D28], Native, 0, *(v4 + 353));
      *(v4 + 355) = v13;
      if (v13)
      {
        dispatch_set_context(v13, a2);
        dispatch_source_set_event_handler_f(*(v4 + 355), _MediaControlClient_ReverseConnectionReadHandler);
        dispatch_resume(*(v4 + 355));
        if ((*(a1 + 281776) - 2206800) > 0x326A3)
        {
LABEL_4:
          v5 = 0;
          goto LABEL_5;
        }

        if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v4 + 353));
        *(v4 + 357) = v14;
        if (v14)
        {
          v15 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
          if (v15)
          {
            *v15 = a1;
            v15[1] = a2;
            dispatch_set_context(*(v4 + 357), v15);
            dispatch_source_set_event_handler_f(*(v4 + 357), _MediaControlClient_ReverseConnectionPingHandler);
            dispatch_source_set_cancel_handler_f(*(v4 + 357), _MediaControlClient_ReverseConnectionPingCancel);
            v16 = *(v4 + 357);
            v17 = dispatch_time(0, 15000000000);
            dispatch_source_set_timer(v16, v17, 0x37E11D600uLL, 0x3B9ACA00uLL);
            dispatch_resume(*(v4 + 357));
            goto LABEL_4;
          }
        }
      }

      APSLogErrorAt();
      v5 = 4294960596;
    }

    else
    {
      APSLogErrorAt();
      v5 = 4294960568;
    }
  }

LABEL_5:
  v6 = *(v4 + 82);
  if (v6)
  {
    free(v6);
    *(v4 + 82) = 0;
  }

  if (v5 == -6723)
  {
    goto LABEL_20;
  }

  if (v5)
  {
    if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_20:
    _MediaControlClient_EnsureReverseDisconnected(a1, a2);
  }

  return v5;
}

void _MediaControlClient_ReverseConnectionReadHandler(uint64_t a1)
{
  v2 = a1 + 278528;
  v3 = NetSocket_HTTPReadHeader();
  if (v3 != -6753 && v3 != -6723)
  {
    if (!v3)
    {
      LogHTTP();
      if (!(*(v2 + 2848))(a1))
      {
        return;
      }
    }

    APSLogErrorAt();
  }

  v5 = *(v2 + 2840);

  dispatch_source_cancel(v5);
}

NSObject *_MediaControlClient_ReverseConnectionFinalizer(uint64_t a1)
{
  result = *(a1 + 281360);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

uint64_t _MediaControlClient_Connect(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a2 + 278528;
  v14 = 0;
  if (*(a1 + 56))
  {
    v8 = APSConnectionInterfaceManagerSelectInterface();
    if (v8)
    {
      InterfaceInfo = v8;
      goto LABEL_26;
    }
  }

  *(v7 + 689) = a4;
  v9 = NetSocket_Create();
  if (v9)
  {
    InterfaceInfo = v9;
    goto LABEL_26;
  }

  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10 = AsyncConnection_ConnectSyncEx();
  if (v10)
  {
    InterfaceInfo = v10;
    if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_29;
  }

  Native = NetSocket_GetNative();
  v14 = 28;
  if (getsockname(Native, (a2 + 12), &v14))
  {
    if (!*__error())
    {
      InterfaceInfo = 4294960596;
      goto LABEL_26;
    }

    InterfaceInfo = *__error();
    if (InterfaceInfo)
    {
LABEL_26:
      APSLogErrorAt();
LABEL_29:
      if (*a2)
      {
        NetSocket_Delete();
        *a2 = 0;
      }

      if (*(a1 + 56) && *(v7 + 2740))
      {
        APSConnectionInterfaceManagerReleaseInterfaceSelection();
        *(v7 + 2740) = 0;
      }

      return InterfaceInfo;
    }
  }

  v14 = 28;
  if (getpeername(Native, (a2 + 40), &v14))
  {
    if (*__error())
    {
      InterfaceInfo = *__error();
      if (!InterfaceInfo)
      {
        goto LABEL_18;
      }
    }

    else
    {
      InterfaceInfo = 4294960596;
    }

    goto LABEL_26;
  }

LABEL_18:
  InterfaceInfo = SocketGetInterfaceInfo();
  *(a2 + 8) = 1;
  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (InterfaceInfo)
  {
    goto LABEL_29;
  }

  return InterfaceInfo;
}

uint64_t _MediaControlClient_DoPairSetupPIN(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 278528);
  v5 = &unk_27F953000;
  if (gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Password = _MediaControlClient_GetPassword(a1);
  if (!Password || (v7 = Password, !*Password))
  {
    HTTPHeader_InitRequest();
    v16 = _MediaControlClient_DoTransaction(0x32u, a1, a2, 0, 0);
    if (v16)
    {
      v11 = v16;
    }

    else
    {
      v11 = 200401;
    }

    goto LABEL_23;
  }

  if (!v4[343])
  {
    v8 = gQblcfSzZBQsYCCV();
    if (v8)
    {
      v11 = v8;
      goto LABEL_38;
    }
  }

  XoN3GgjZNCvkN1T8I3();
  HardwareAddressToCString();
  v9 = CFStringCreateWithCString(0, cStr, 0x600u);
  if (!v9)
  {
    goto LABEL_35;
  }

  v10 = v9;
  v11 = rJPl3sdBfc0E3yB();
  CFRelease(v10);
  if (v11)
  {
LABEL_38:
    APSLogErrorAt();
    goto LABEL_23;
  }

  v12 = CFStringCreateWithCString(0, v7, 0x600u);
  if (!v12)
  {
LABEL_35:
    APSLogErrorAt();
    v11 = 4294960596;
    goto LABEL_23;
  }

  v13 = v12;
  v11 = GvMGlTNs();
  CFRelease(v13);
  if (v11)
  {
    goto LABEL_38;
  }

  v11 = 200401;
  v20 = 0;
  while (!SrtySZG0())
  {
    HTTPHeader_InitRequest();
    HTTPHeader_SetField();
    v14 = _MediaControlClient_DoTransaction(0x32u, a1, a2, 0, v20);
    if (v14 == 200470)
    {
      v15 = 200401;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v11 = v15;
      break;
    }

    v20 = v4[84];
  }

  v5 = &unk_27F953000;
LABEL_23:
  v17 = v4[82];
  if (v17)
  {
    free(v17);
    v4[82] = 0;
  }

  if (v11)
  {
    v18 = v5[402];
    if (v18 <= 60 && (v18 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return v11;
}

uint64_t _MediaControlClient_DoPairSetupUnauthenticated(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 278528);
  if (gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!v4[343] && (v5 = gQblcfSzZBQsYCCV(), v5))
  {
    v10 = v5;
  }

  else
  {
    XoN3GgjZNCvkN1T8I3();
    for (i = 0; ; i = v4[84])
    {
      v6 = h4BvW7X();
      if (v6)
      {
        v10 = v6;
        goto LABEL_11;
      }

      HTTPHeader_InitRequest();
      HTTPHeader_SetField();
      v7 = _MediaControlClient_DoTransaction(0x32u, a1, a2, v12, i);
      if (v7)
      {
        break;
      }
    }

    v10 = v7;
  }

  APSLogErrorAt();
LABEL_11:
  v8 = v4[82];
  if (v8)
  {
    free(v8);
    v4[82] = 0;
  }

  if (v10 && gLogCategory_MediaControlClientAuth <= 60 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v10;
}

uint64_t _MediaControlClient_DoPairVerify(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2 + 278528;
  if (gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(v4 + 2744) && (v5 = gQblcfSzZBQsYCCV(), v5))
  {
    v7 = v5;
    APSLogErrorAt();
  }

  else if (*(v4 + 2784))
  {
    XoN3GgjZNCvkN1T8I3();
    Dk7hjUuq();
    for (i = 0; ; i = *(v4 + 672))
    {
      v6 = VBAEFt();
      if (v6)
      {
        break;
      }

      HTTPHeader_InitRequest();
      if (*(v4 + 2802))
      {
        HTTPHeader_SetField();
      }

      if (TMIsAutomaticTimeEnabled())
      {
        CFAbsoluteTimeGetCurrent();
        HTTPHeader_SetField();
      }

      HTTPHeader_SetField();
      v6 = _MediaControlClient_DoTransaction(0x32u, a1, a2, v11, i);
      if (v6)
      {
        break;
      }
    }

    v7 = v6;
  }

  else
  {
    APSLogErrorAt();
    v7 = 4294960534;
  }

  v8 = *(v4 + 656);
  if (v8)
  {
    free(v8);
    *(v4 + 656) = 0;
  }

  if (v7 && gLogCategory_MediaControlClientAuth <= 60 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v7;
}

uint64_t _MediaControlClient_ConnectWaitCallBack(uint64_t a1)
{
  if (*(a1 + 281752))
  {
    return 4294960573;
  }

  else
  {
    return 0;
  }
}

void _MediaControlClient_ConnectProgress(int a1, uint64_t a2, CFAbsoluteTime *a3)
{
  v3 = a3 + 105472;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (a3[105622] == 0.0)
      {
        a3[105622] = CFAbsoluteTimeGetCurrent();
        if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (_MediaControlClient_AddTrafficRegistration(a3, 0) && gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_32;
        }
      }
    }

    else if (a1 == 4 && a3[105623] == 0.0)
    {
      a3[105623] = CFAbsoluteTimeGetCurrent();
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v3 + 313) = ((v3[151] - v3[150]) * 1000.0);
    }
  }

  else if (a1 == 1)
  {
    if (a3[105620] == 0.0)
    {
      a3[105620] = CFAbsoluteTimeGetCurrent();
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_32;
      }
    }
  }

  else if (a1 == 2 && a3[105621] == 0.0)
  {
    a3[105621] = CFAbsoluteTimeGetCurrent();
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
LABEL_32:
      LogPrintF();
    }
  }
}

uint64_t _MediaControlClient_AddTrafficRegistration(uint64_t a1, int a2)
{
  PeerMACAddress = 0;
  v8 = 0;
  v7 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    return -6705;
  }

  v3 = a1 + 278528;
  if (*(a1 + 279633))
  {
    if (*(a1 + 281760))
    {
      CFDictionaryGetHardwareAddress();
      if (*(v3 + 3232))
      {
        goto LABEL_54;
      }
    }

    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    PeerMACAddress = GetPeerMACAddress();
    if (!PeerMACAddress)
    {
LABEL_54:
      if (*(v3 + 3294))
      {
        if (*(v3 + 3295) != a2 || (v7 == *(v3 + 3288) ? (v5 = v8 == *(v3 + 3292)) : (v5 = 0), !v5))
        {
LABEL_26:
          PeerMACAddress = _MediaControlClient_RemoveTrafficRegistration(a1);
          if (PeerMACAddress)
          {
            if (gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            PeerMACAddress = 0;
          }
        }
      }

      else if (*(v3 + 3295))
      {
        goto LABEL_26;
      }

      if (!*(v3 + 3294))
      {
        PeerMACAddress = _MediaControlClient_addRegistration(&v7, 1, a2);
        if (PeerMACAddress)
        {
          if (gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          PeerMACAddress = 0;
        }

        *(a1 + 281816) = v7;
        *(a1 + 281820) = v8;
        *(v3 + 3294) = 1;
        *(v3 + 3295) = a2;
      }

      return PeerMACAddress;
    }

    if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if (*(a1 + 281822))
    {
      _MediaControlClient_RemoveTrafficRegistration(a1);
    }

    if (!*(v3 + 3295))
    {
      PeerMACAddress = _MediaControlClient_addRegistration(&v7, 0, 1);
      if (PeerMACAddress)
      {
        if (gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        PeerMACAddress = 0;
      }

      *(v3 + 3294) = 256;
    }
  }

  return PeerMACAddress;
}

uint64_t _MediaControlClient_addRegistration(uint64_t a1, int a2, int a3)
{
  cf = 0;
  APTransportGetSharedTransport();
  CMBaseObject = FigTransportGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v9 = 4294954514;
LABEL_9:
    APSLogErrorAt();
    goto LABEL_10;
  }

  v7 = v6(CMBaseObject, *MEMORY[0x277CE4F30], *MEMORY[0x277CBECE8], &cf);
  if (v7)
  {
    v9 = v7;
    goto LABEL_9;
  }

  if (a2)
  {
    v8 = APTransportTrafficRegistrarAWDLTrafficRegistrationCreate();
    if (v8)
    {
      v9 = v8;
      goto LABEL_9;
    }
  }

  if (a3)
  {
    v9 = APTransportTrafficRegistrarInfraTransactionCreate();
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t MediaControlClient_Create(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (MediaControlClientImp_getTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&MediaControlClientImp_getTypeID_sInitOnce, &MediaControlClientImp_getTypeID_sTypeID, MediaControlClientImp_registerTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    v7 = Instance + 842496;
    v8 = (Instance + 561032);
    bzero((Instance + 16), 0xCE510uLL);
    v9 = MEMORY[0x277D85CD0];
    dispatch_retain(MEMORY[0x277D85CD0]);
    v10 = *(v6 + 16);
    if (v10)
    {
      dispatch_release(v10);
    }

    *(v6 + 16) = v9;
    *(v6 + 384) = APSGetDeviceID();
    *(v6 + 64) = a2;
    *(v6 + 40) = APSSettingsGetInt64() != 0;
    *(v6 + 72) = APSSettingsGetInt64() != 0;
    *(v6 + 73) = APSSettingsGetInt64() != 0;
    *(v6 + 74) = APSSettingsGetInt64() != 0;
    HTTPClientAuthorization_Init();
    *(v6 + 80) = 2;
    UUIDGet();
    result = 0;
    *(v6 + 279624) = "control";
    *v8 = "event";
    v8[266] = v6;
    v8[271] = _MediaControlClient_HandleEventRequest;
    *(v7 + 2432) = -1;
    *v7 = "slideshow";
    *(v7 + 2128) = v6;
    *(v7 + 2168) = _MediaControlClient_HandleSlideshowRequest;
    *a3 = v6;
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }

  return result;
}

uint64_t _MediaControlClient_HandleSlideshowRequest(void *a1)
{
  v17[4] = *MEMORY[0x277D85DE8];
  if (!strnicmpx())
  {
    v6 = 0xFFFFFFFFLL;
LABEL_20:
    APSLogErrorAt();
    return v6;
  }

  v15 = 0;
  v16 = 0;
  v13 = 0;
  cf = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v3 = 0;
LABEL_42:
    v5 = 0;
    goto LABEL_7;
  }

  if (SNScanF() != 1)
  {
    goto LABEL_45;
  }

  v3 = CFStringCreateWithBytes(0, v16, v15, 0x8000100u, 0);
  if (!v3)
  {
LABEL_41:
    APSLogErrorAt();
    goto LABEL_42;
  }

  CFDictionarySetValue(Mutable, @"key", v3);
  CFRelease(v3);
  v4 = (*(a1[35167] + 844688))(Mutable, &cf, &v13, *(a1[35167] + 844696));
  if (v4 == -6752)
  {
    v3 = 0;
    v5 = 0;
    goto LABEL_7;
  }

  if (v4)
  {
LABEL_45:
    APSLogErrorAt();
    v3 = 0;
    v5 = 0;
    goto LABEL_7;
  }

  HTTPHeader_InitResponse();
  if (HTTPGetHeaderField())
  {
    BytePtr = CFDataGetBytePtr(cf);
    Length = CFDataGetLength(cf);
    v3 = 0;
    v5 = 0;
    goto LABEL_30;
  }

  v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = v10;
  if (!v10)
  {
    goto LABEL_41;
  }

  CFDictionarySetValue(v10, @"data", cf);
  if (v13)
  {
    CFDictionarySetValue(v3, @"info", v13);
  }

  Data = CFPropertyListCreateData(0, v3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  v5 = Data;
  if (Data)
  {
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(v5);
    HTTPHeader_SetField();
LABEL_30:
    HTTPHeader_SetField();
    if (!HTTPHeader_Commit())
    {
      LogHTTP();
      v12 = *(a1 + 4188);
      v17[0] = a1 + 1070;
      v17[1] = v12;
      v17[2] = BytePtr;
      v17[3] = Length;
      v6 = (*(*a1 + 40))(*a1, v17);
      if ((v6 & 0xFFFFFFDF) != 0 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      ++*(a1[35167] + 844732);
      goto LABEL_37;
    }
  }

  APSLogErrorAt();
LABEL_7:
  v6 = _MediaControlClient_SendStatusResponse(a1);
  if (v6)
  {
    APSLogErrorAt();
    if (!Mutable)
    {
LABEL_9:
      if (!v3)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (!Mutable)
  {
    goto LABEL_9;
  }

LABEL_37:
  CFRelease(Mutable);
  if (v3)
  {
LABEL_10:
    CFRelease(v3);
  }

LABEL_11:
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v6)
  {
    goto LABEL_20;
  }

  return v6;
}

uint64_t _MediaControlClient_SendStatusResponse(uint64_t a1)
{
  HTTPHeader_InitResponse();
  HTTPHeader_SetField();
  v2 = HTTPHeader_Commit();
  if (v2)
  {
    v3 = v2;
    goto LABEL_5;
  }

  LogHTTP();
  v3 = (*(*a1 + 32))();
  if (v3)
  {
LABEL_5:
    APSLogErrorAt();
  }

  return v3;
}

uint64_t _MediaControlClient_HandleEventRequest(uint64_t a1)
{
  if (*(a1 + 8544) >= 0x20000uLL)
  {
    APSLogErrorAt();
    return 4294960553;
  }

  v2 = *(a1 + 281336);
  length = *(a1 + 8544);
  v3 = (*(*a1 + 24))();
  v4 = v3;
  if (v3 == -6723)
  {
    return v4;
  }

  if (v3)
  {
    APSLogErrorAt();
    return v4;
  }

  LogHTTP();
  if (strnicmpx())
  {
    if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = 0;
    goto LABEL_40;
  }

  v5 = CFDataCreate(0, (a1 + 17040), length);
  if (v5)
  {
    v6 = v5;
    v7 = CFPropertyListCreateWithData(0, v5, 0, 0, 0);
    CFRelease(v6);
    if (v7)
    {
      v8 = CFGetTypeID(v7);
      if (v8 == CFDictionaryGetTypeID())
      {
        v9 = gLogCategory_MediaControlClientEvents;
        if (gLogCategory_MediaControlClientEvents > 30)
        {
          goto LABEL_21;
        }

        if (gLogCategory_MediaControlClientEvents == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_21;
          }

          v9 = gLogCategory_MediaControlClientEvents;
        }

        if (v9 == -1)
        {
          _LogCategory_Initialize();
        }

        LogPrintF();
LABEL_21:
        CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (TypedValue)
        {
          context[0] = v2;
          context[1] = CFEqual(TypedValue, @"paused");
          dispatch_sync_f(*(v2 + 16), context, _MediaControlClient_PlaybackPausedCallback);
        }

        CFStringGetTypeID();
        v11 = CFDictionaryGetTypedValue();
        if (!v11)
        {
          goto LABEL_38;
        }

        v12 = v11;
        if (CFEqual(v11, @"previous"))
        {
          if (gLogCategory_MediaControlClientEvents > 30 || gLogCategory_MediaControlClientEvents == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (!CFEqual(v12, @"next"))
          {
            goto LABEL_38;
          }

          if (gLogCategory_MediaControlClientEvents > 30 || gLogCategory_MediaControlClientEvents == -1 && !_LogCategory_Initialize())
          {
LABEL_37:
            MRMediaRemoteSendCommand();
LABEL_38:
            v13 = *(v2 + 563216);
            if (v13)
            {
              v13(v2, v7, *(v2 + 563224));
            }

            goto LABEL_40;
          }
        }

        LogPrintF();
        goto LABEL_37;
      }
    }

    APSLogErrorAt();
  }

  else
  {
    APSLogErrorAt();
    v7 = 0;
  }

LABEL_40:
  v4 = _MediaControlClient_SendStatusResponse(a1);
  if (v4)
  {
    APSLogErrorAt();
    if (!v7)
    {
      return v4;
    }

    goto LABEL_42;
  }

  if (v7)
  {
LABEL_42:
    CFRelease(v7);
  }

  return v4;
}

uint64_t MediaControlClientImp_registerTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void MediaControlClient_Finalize(void *a1)
{
  _MediaControlClient_EnsureMirroringResumed(a1);
  MediaControlClient_EnsureDisconnected(a1);
  _MediaControlClient_PlaybackStopped(a1);
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  v4 = (a1 + 105606);
  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }

  v7 = (a1 + 35225);
  HTTPClientAuthorization_Free();
  if (*v4)
  {
    free(*v4);
    *v4 = 0;
  }

  v8 = a1[105607];
  if (v8)
  {
    CFRelease(v8);
    a1[105607] = 0;
  }

  if (*v7)
  {
    CFRelease(*v7);
    *v7 = 0;
  }

  v9 = a1[35226];
  if (v9)
  {
    CFRelease(v9);
    a1[35226] = 0;
  }

  v10 = a1[2];
  if (v10)
  {
    dispatch_release(v10);
    a1[2] = 0;
  }
}

NSObject *_MediaControlClient_EnsureMirroringResumed(uint64_t a1)
{
  if (gAirPlayRouteLock)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (*(a1 + 563232))
  {
    if (!--gAirPlayMirroringSuspendCount)
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
      v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
      [v2 setAttribute:v3 forKey:*MEMORY[0x277D26B18] error:0];
    }

    *(a1 + 563232) = 0;
  }

  result = gAirPlayRouteLock;
  if (gAirPlayRouteLock)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

uint64_t MediaControlClient_Cancel(uint64_t a1)
{
  v2 = a1 + 563168;
  v3 = a1 + 281752;
  *(a1 + 281752) = 1;
  if (*(a1 + 416))
  {
    NetSocket_Cancel();
  }

  *v2 = 1;
  if (*(v3 + 72))
  {
    NetSocket_Cancel();
  }

  *(a1 + 844632) = 1;
  if (*(v2 + 120))
  {
    NetSocket_Cancel();
  }

  return 0;
}

void MediaControlClient_Invalidate(uint64_t a1)
{
  v2 = MEMORY[0x277D85CD0];
  dispatch_retain(MEMORY[0x277D85CD0]);
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  *(a1 + 16) = v2;
}

void MediaControlClient_SetDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 16) = v3;
}

uint64_t MediaControlClient_SetInfo(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 48);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 48) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t MediaControlClient_SetConnectionInterfaceManager(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 56);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 56) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t MediaControlClient_DoAuthorize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, void *a7, void *a8)
{
  v13 = a1 + 845008;
  if (gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14 = (a1 + 279600);
  v15 = MediaControlClient_EnsureConnected(a1);
  if (*v13 == 0.0)
  {
    *v13 = CFAbsoluteTimeGetCurrent();
  }

  if (!v15)
  {
    v16 = Base64EncodeCopyEx();
    if (v16)
    {
      v15 = v16;
    }

    else
    {
      v17 = snprintf((a1 + 17456), 0x20000uLL, "%s: %s\n", "PIC-Request", 0);
      free(0);
      if (v17 - 0x20000 <= 0xFFFE0000)
      {
        goto LABEL_32;
      }

      HTTPHeader_InitRequest();
      if (a4)
      {
        HTTPHeader_SetField();
      }

      v18 = _MediaControlClient_DoTransaction(0x32u, a1, a1 + 416, (a1 + 17456), v17);
      if (v18)
      {
        v15 = v18;
        goto LABEL_17;
      }

      v19 = HTTPGetHeaderField();
      if (!v19)
      {
        if (a6)
        {
          *a5 = 0;
          v20 = HTTPGetHeaderField();
          if (!v20)
          {
            v15 = 0;
            *a7 = 0;
            *a8 = 0;
            goto LABEL_17;
          }

          v15 = v20;
          goto LABEL_34;
        }

LABEL_32:
        APSLogErrorAt();
        v15 = 4294960553;
        goto LABEL_17;
      }

      v15 = v19;
    }
  }

LABEL_34:
  APSLogErrorAt();
LABEL_17:
  if (*(v13 + 8) == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *(v13 + 8) = Current;
    *(v13 + 32) = ((Current - *v13) * 1000.0);
  }

  if (*v14)
  {
    free(*v14);
    *v14 = 0;
  }

  if (v15 && gLogCategory_MediaControlClientAuth <= 60 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v15;
}

uint64_t MediaControlClient_DoPlayLocal(uint64_t a1, const char *a2, const __CFDictionary *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a1 + 844832;
  memset(&v38, 0, sizeof(v38));
  v34 = 0;
  v35 = 0;
  v37 = 0;
  v36 = 0;
  memset(&c, 0, sizeof(c));
  *(a1 + 844934) = CFDictionaryGetInt64() != 0;
  v7 = MediaControlClient_EnsureConnected(a1);
  v38.st_size = 0;
  stat(a2, &v38);
  v8 = _MediaControlClient_LogVideoStarted(a1, a3);
  if (v7)
  {
    goto LABEL_57;
  }

  v9 = v8;
  if (*(v6 + 102))
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    gMediaControlAudioClient = a1;
    dispatch_semaphore_signal(gAirPlayRouteLock);
  }

  v10 = _MediaControlClient_EnsureServerListening(a1);
  if (v10)
  {
    v7 = v10;
    goto LABEL_57;
  }

  v11 = strdup(a2);
  if (!v11)
  {
LABEL_53:
    APSLogErrorAt();
    v7 = 4294960568;
    goto LABEL_63;
  }

  v12 = v11;
  v13 = *(v6 + 16);
  if (v13)
  {
    free(v13);
  }

  *(v6 + 16) = v12;
  if (!*(a1 + 281796) && *(a1 + 429) != 2)
  {
    LocalHostName = GetLocalHostName();
    if (!LocalHostName)
    {
      snprintf(__s, 0x20uLL, ":%d", *(*v6 + 128));
      __strlcat_chk();
      goto LABEL_11;
    }

    v7 = LocalHostName;
LABEL_57:
    APSLogErrorAt();
    goto LABEL_63;
  }

  SockAddrCopy();
  SockAddrSetPort();
  v14 = SockAddrToString();
  if (v14)
  {
    v7 = v14;
    goto LABEL_57;
  }

LABEL_11:
  CC_SHA1_Init(&c);
  CC_SHA1_Update(&c, "\xD9\x1D\xC0\x69_\x1AH\v\x94\x95\xBC\xB5\x84O\xF1\x764v", 0x10u);
  v40 = 0.0;
  __s[0] = 0;
  APSSettingsGetCString();
  v15 = strchr(__s, 58);
  if (v15 && (v16 = v15, !StringToUUID()) && sscanf(v16 + 1, "%lf", &v40) == 1 && (v17 = CFAbsoluteTimeGetCurrent() - v40, v40 = v17, v17 >= 0.0) && v17 < 604800.0)
  {
    if (gLogCategory_MediaControlClientCore <= 20 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
LABEL_21:
      LogPrintF();
    }
  }

  else
  {
    UUIDGet();
    CFAbsoluteTimeGetCurrent();
    SNPrintF();
    APSSettingsSetCString();
    APSSettingsSynchronize();
    if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_21;
    }
  }

  CC_SHA1_Update(&c, data, 0x10u);
  v19 = strlen(a2);
  CC_SHA1_Update(&c, a2, v19);
  CC_SHA1_Final(__s, &c);
  v41 = *__s;
  BYTE6(v41) = __s[6] & 0xF | 0x50;
  BYTE8(v41) = __s[8] & 0x3F | 0x80;
  GetFileExtensionFromString();
  if (SNPrintF() - 64 > 0xFFFFFFC0)
  {
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v21 = MutableCopy;
    if (MutableCopy)
    {
      LOBYTE(v40) = 0;
      GetDeviceModelString();
      CFDictionarySetCString();
      LOBYTE(v40) = 0;
      GetSystemBuildVersionString();
      CFDictionarySetCString();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      if (*(a1 + 281796))
      {
        v22 = CFDictionarySetCString();
        if (v22)
        {
          v7 = v22;
          goto LABEL_61;
        }

        if ((snprintf(__s, 0x100uLL, "/1/%s", (a1 + 844864)) - 256) > 0xFFFFFF00)
        {
          v23 = CFDictionarySetCString();
          if (v23)
          {
            v7 = v23;
LABEL_61:
            APSLogErrorAt();
            goto LABEL_62;
          }

LABEL_37:
          HasFeature = APSFeaturesHasFeature();
          v26 = MEMORY[0x277CBED28];
          if (HasFeature && *(a1 + 281688))
          {
            CFDictionarySetValue(v21, @"tlsPSKEnabled", *MEMORY[0x277CBED28]);
          }

          if (*(a1 + 281797))
          {
            CFDictionarySetValue(v21, @"videoCacheClear", *v26);
          }

          LOBYTE(v40) = 0;
          HardwareAddressToCString();
          v27 = CFDictionarySetCString();
          if (!v27)
          {
            dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
            CFDictionarySetDouble();
            dispatch_semaphore_signal(gAirPlayRouteLock);
            v28 = CFPropertyListCreateData(0, v21, kCFPropertyListBinaryFormat_v1_0, 0, 0);
            if (v28)
            {
              v29 = v28;
              HTTPHeader_InitRequest();
              HTTPHeader_SetField();
              BytePtr = CFDataGetBytePtr(v29);
              Length = CFDataGetLength(v29);
              v7 = _MediaControlClient_DoTransaction(0x32u, a1, a1 + 416, BytePtr, Length);
              CFRelease(v29);
              if (!v7)
              {
                _MediaControlClient_PlaybackStarted(a1, v9);
                _MediaControlClientNowPlayingEnsureSetUp(a1);
                CFRelease(v21);
                return v7;
              }
            }

            else
            {
              APSLogErrorAt();
              v7 = 4294960596;
            }

            goto LABEL_62;
          }

          v7 = v27;
          goto LABEL_61;
        }
      }

      else if ((snprintf(__s, 0x100uLL, "http://%s/1/%s", v43, (a1 + 844864)) - 256) > 0xFFFFFF00)
      {
        v24 = CFDictionarySetCString();
        if (v24)
        {
          v7 = v24;
          goto LABEL_61;
        }

        goto LABEL_37;
      }

      APSLogErrorAt();
      v7 = 4294960553;
LABEL_62:
      CFRelease(v21);
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  APSLogErrorAt();
  v7 = 4294960553;
LABEL_63:
  if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v7;
}

uint64_t _MediaControlClient_LogVideoStarted(uint64_t a1, const __CFDictionary *a2)
{
  v4 = a1 + 844768;
  UUIDGet();
  if (*v4 == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *v4 = Current;
    v6 = *(v4 + 248);
    if (v6 != 0.0)
    {
      *(v4 + 276) = ((Current - v6) * 1000.0);
    }
  }

  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(a1 + 844784) = 0u;
  *(a1 + 844800) = 0u;
  CFDictionaryGetInt64();
  if (!CFDictionaryGetValue(a2, @"Start-Position") && !CFDictionaryGetValue(a2, @"Start-Date"))
  {
    CFDictionaryGetValue(a2, @"Start-Estimated-Date");
  }

  v7 = MediaControlPlayParamsToStreamType(a2);
  v8 = v7;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        CFDictionaryGetValue(a2, @"uuid");
        if (gLogCategory_MediaControlClientCore == -1)
        {
          _LogCategory_Initialize();
        }

        CFDictionaryGetValue(a2, @"path");
        if (gLogCategory_MediaControlClientCore == -1)
        {
          _LogCategory_Initialize();
        }

        LogPrintF();
      }

      ++*(v4 + 172);
    }

    else
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        CFDictionaryGetValue(a2, @"uuid");
        if (gLogCategory_MediaControlClientCore == -1)
        {
          _LogCategory_Initialize();
        }

        CFDictionaryGetValue(a2, @"Content-Location");
        if (gLogCategory_MediaControlClientCore == -1)
        {
          _LogCategory_Initialize();
        }

        LogPrintF();
      }

      ++*(v4 + 180);
    }
  }

  else if (v7)
  {
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      CFDictionaryGetValue(a2, @"uuid");
      if (gLogCategory_MediaControlClientCore == -1)
      {
        _LogCategory_Initialize();
      }

      CFDictionaryGetValue(a2, @"Content-Location");
      if (gLogCategory_MediaControlClientCore == -1)
      {
        _LogCategory_Initialize();
      }

      LogPrintF();
    }

    ++*(v4 + 176);
  }

  else
  {
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      CFDictionaryGetValue(a2, @"uuid");
      if (gLogCategory_MediaControlClientCore == -1)
      {
        _LogCategory_Initialize();
      }

      CFDictionaryGetValue(a2, @"path");
      if (gLogCategory_MediaControlClientCore == -1)
      {
        _LogCategory_Initialize();
      }

      LogPrintF();
    }

    ++*(v4 + 168);
  }

  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v8;
}

uint64_t _MediaControlClient_EnsureServerListening(uint64_t a1)
{
  v2 = (a1 + 844832);
  if (*(a1 + 844840) || (v3 = dispatch_semaphore_create(1), (v2[1] = v3) != 0))
  {
    if (*v2)
    {
      return 0;
    }

    v4 = HTTPServer_Create();
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v5 = *v2;
      *(v5 + 200) = &gLogCategory_MediaControlClientHTTPServer;
      *(v5 + 208) = &gLogCategory_MediaControlClientHTTPServer;
      if (*(a1 + 279633))
      {
        *(v5 + 104) = 1;
      }

      if (!APSFeaturesHasFeature() || !*(a1 + 281688))
      {
        *(a1 + 281745) = 0;
        if (gLogCategory_MediaControlClientHTTPServer > 30 || gLogCategory_MediaControlClientHTTPServer == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

LABEL_15:
        LogPrintF();
LABEL_19:
        v7 = HTTPServer_Start();
        if (!v7)
        {
          if (gLogCategory_MediaControlClientHTTPServer <= 40 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          return 0;
        }

        v8 = v7;
        goto LABEL_30;
      }

      v6 = PCFdAVst();
      if (!v6)
      {
        *(a1 + 281745) = 1;
        if (gLogCategory_MediaControlClientHTTPServer > 30 || gLogCategory_MediaControlClientHTTPServer == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      v8 = v6;
    }

LABEL_30:
    APSLogErrorAt();
    goto LABEL_31;
  }

  APSLogErrorAt();
  v8 = 4294960596;
LABEL_31:
  if (*v2)
  {
    HTTPServer_Delete();
    *v2 = 0;
  }

  v10 = v2[1];
  if (v10)
  {
    dispatch_release(v10);
    v2[1] = 0;
  }

  return v8;
}

void _MediaControlClient_PlaybackStarted(uint64_t a1, int a2)
{
  if (gMediaControlForLegacyURLFlinging == 1)
  {
    if (!*(a1 + 845080))
    {
      if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v4 = WiFiManagerClientCreate();
      *(a1 + 845080) = v4;
      if (!v4 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    if (!*(a1 + 844932))
    {
      if (*(a1 + 64))
      {
        v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, (a1 + 64));
        *(a1 + 844932) = 1;
        if (v5)
        {
          CFRelease(v5);
        }
      }

      else
      {
        *(a1 + 844932) = 1;
      }
    }
  }

  if (_MediaControlClient_AddTrafficRegistration(a1, (a2 & 0xFFFFFFFD) == 1) && gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  _MediaControlClient_PlaybackPaused(a1, 0);
}

intptr_t _MediaControlClientNowPlayingEnsureSetUp(intptr_t result)
{
  v1 = result;
  if (gMediaControlMetaData && (result = CFDictionaryGetInt64()) != 0)
  {
    if (!v1[844817])
    {
      _MediaControlClient_ControlNowPlaying(2u);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v1[844817] = 1;
      if (gLogCategory_MediaControlClientMetaData <= 30 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFRetain(v1);
      return MRMediaRemoteGetNowPlayingInfo();
    }
  }

  else if (v1[844817])
  {
    v1[844817] = 0;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    result = _MediaControlClient_ControlNowPlaying(0);
    if (gLogCategory_MediaControlClientMetaData <= 30)
    {
      if (gLogCategory_MediaControlClientMetaData != -1 || (result = _LogCategory_Initialize(), result))
      {

        return LogPrintF();
      }
    }
  }

  return result;
}

uint64_t _MediaControlClient_ProcessRequest(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 8) + 96);
  v23 = -1;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  if (gLogCategory_MediaControlClientHTTPServer <= 11 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = v2 + 105472;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v17 = 0;
  v18 = 0;
  if (strnicmpx())
  {
    v26 = -6711;
    if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v15 = 0;
    TypedValue = 0;
    goto LABEL_41;
  }

  v24 = 0;
  v25 = 0;
  if (!HTTPServer_GetNextURLSegment() || strnicmpx())
  {
    v26 = -6711;
    if (gLogCategory_MediaControlClientHTTPServer > 50 || gLogCategory_MediaControlClientHTTPServer == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_77;
    }

LABEL_57:
    LogPrintF();
LABEL_77:
    v15 = 0;
    TypedValue = 0;
    goto LABEL_41;
  }

  if (!HTTPServer_GetNextURLSegment() || *(a1 + 8528) != *(a1 + 8536))
  {
    v26 = -6711;
    if (gLogCategory_MediaControlClientHTTPServer > 50 || gLogCategory_MediaControlClientHTTPServer == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_77;
    }

    goto LABEL_57;
  }

  v4 = v2[105605];
  if (!v4)
  {
    v26 = -6745;
    if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v15 = 0;
    TypedValue = 0;
    goto LABEL_41;
  }

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  if (!strnicmpx())
  {
    v10 = v2[105606];
    if (!v10)
    {
      v26 = -6745;
      if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      TypedValue = 0;
      v15 = 1;
      goto LABEL_41;
    }

    TypedValue = CFStringCreateWithCString(0, v10, 0x8000100u);
    if (TypedValue)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (!v2[105607])
  {
    goto LABEL_23;
  }

  v5 = v24;
  v6 = memrchr();
  if (v6)
  {
    v5 = v6 - v25;
    v24 = v6 - v25;
  }

  v7 = CFStringCreateWithBytes(0, v25, v5, 0x8000100u, 0);
  if (!v7)
  {
    v26 = -6742;
    if (gLogCategory_MediaControlClientHTTPServer > 50 || gLogCategory_MediaControlClientHTTPServer == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_40;
    }

LABEL_25:
    LogPrintF();
LABEL_40:
    TypedValue = 0;
    v15 = 1;
    goto LABEL_41;
  }

  v8 = v7;
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  CFRelease(v8);
  if (!TypedValue)
  {
LABEL_23:
    v26 = -6711;
    if (gLogCategory_MediaControlClientHTTPServer > 50 || gLogCategory_MediaControlClientHTTPServer == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_40;
    }

    goto LABEL_25;
  }

  CFRetain(TypedValue);
LABEL_20:
  dispatch_semaphore_signal(v3[133]);
  if (APSHTTPOpenLocalFile())
  {
    if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_68:
    v15 = 0;
    goto LABEL_41;
  }

  v11 = HTTPGetHeaderField();
  v26 = v11;
  if (v11)
  {
    HTTPServer_InitResponse();
    v12 = 0;
LABEL_28:
    HTTPHeader_SetField();
    HTTPHeader_SetField();
    HTTPHeader_SetField();
    HTTPMakeDateString();
    HTTPHeader_SetField();
    v26 = HTTPHeader_Commit();
    if (!v26)
    {
      LogHTTP();
      if (gLogCategory_MediaControlClientHTTPServer <= 40 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFAbsoluteTimeGetCurrent();
      v13 = *(a1 + 147912);
      v17 = a1 + 139720;
      v18 = v13;
      v14 = (*(*(a1 + 24) + 48))(*(a1 + 24), &v17, 1, 0, 0, v23, v20, v12);
      v15 = 0;
      v26 = v14;
      if (v14 != -6723 && v14 && v14 != 32)
      {
        if (gLogCategory_MediaControlClientHTTPServer <= 60 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
        {
          CFAbsoluteTimeGetCurrent();
          LogPrintF();
        }

        v15 = 0;
      }

      goto LABEL_46;
    }

    APSLogErrorAt();
    goto LABEL_68;
  }

  if (!APSHTTPParseByteRangeRequest())
  {
    v12 = v19 - v20;
    HTTPServer_InitResponse();
    HTTPHeader_SetField();
    goto LABEL_28;
  }

  if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15 = 0;
LABEL_41:
  v26 = HTTPServer_SendStatusResponse();
  if (!v26)
  {
    if (!TypedValue)
    {
      goto LABEL_47;
    }

LABEL_46:
    CFRelease(TypedValue);
    goto LABEL_47;
  }

  APSLogErrorAt();
  if (TypedValue)
  {
    goto LABEL_46;
  }

LABEL_47:
  if ((v23 & 0x80000000) == 0)
  {
    close(v23);
  }

  if (v15)
  {
    dispatch_semaphore_signal(v3[133]);
  }

  return v26;
}

uint64_t _MediaControlClient_ConnectionInit(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 8) + 96) + 281745))
  {
    return 0;
  }

  __s[0] = 0;
  SockAddrToString();
  strlen(__s);
  v1 = NetSocketTLS_Configure();
  if (v1)
  {
    APSLogErrorAt();
  }

  return v1;
}

uint64_t MediaControlPlayParamsToStreamType(const __CFDictionary *a1)
{
  if (CFDictionaryGetValue(a1, @"Content-Location"))
  {
    Value = CFDictionaryGetValue(a1, @"buyParams");
    goto LABEL_3;
  }

  v4 = CFDictionaryGetValue(a1, @"path");
  Value = CFDictionaryGetValue(a1, @"buyParams");
  if (!v4)
  {
LABEL_3:
    v3 = 3;
    if (!Value)
    {
      if (CFDictionaryGetValue(a1, @"PD-Info"))
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    return v3;
  }

  if (Value || CFDictionaryGetValue(a1, @"PD-Info"))
  {
    return 2;
  }

  else
  {
    return 2 * (CFDictionaryGetValue(a1, @"Play-Info") != 0);
  }
}

uint64_t MediaControlClient_DoPlayRemote(uint64_t a1, const __CFDictionary *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 844934);
  *(a1 + 844934) = CFDictionaryGetInt64() != 0;
  v5 = MediaControlClient_EnsureConnected(a1);
  v6 = _MediaControlClient_LogVideoStarted(a1, a2);
  if (v5)
  {
    APSLogErrorAt();
    goto LABEL_29;
  }

  v7 = v6;
  v8 = (a1 + 279600);
  if (*v4)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    gMediaControlAudioClient = a1;
    dispatch_semaphore_signal(gAirPlayRouteLock);
  }

  if (APSFeaturesHasFeature())
  {
    v9 = MediaControlClient_EnsureConnected(a1);
    if (v9)
    {
      v5 = v9;
      APSLogErrorAt();
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
      if (MutableCopy)
      {
        v11 = MutableCopy;
        if (*(a1 + 281797))
        {
          CFDictionarySetValue(MutableCopy, @"videoCacheClear", *MEMORY[0x277CBED28]);
        }

        dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
        CFDictionarySetDouble();
        dispatch_semaphore_signal(gAirPlayRouteLock);
        GetDeviceModelString();
        CFDictionarySetCString();
        GetSystemBuildVersionString();
        CFDictionarySetCString();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        LOBYTE(v26) = 0;
        HardwareAddressToCString();
        CFDictionarySetCString();
        Data = CFPropertyListCreateData(0, v11, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (Data)
        {
          v13 = Data;
          HTTPHeader_InitRequest();
          LOBYTE(v26) = 0;
          MakeFractionalDateString();
          HTTPHeader_SetField();
          HTTPHeader_SetField();
          BytePtr = CFDataGetBytePtr(v13);
          Length = CFDataGetLength(v13);
          v5 = _MediaControlClient_DoTransaction(0x32u, a1, a1 + 416, BytePtr, Length);
          CFRelease(v13);
        }

        else
        {
          APSLogErrorAt();
          v5 = 4294960596;
        }

        CFRelease(v11);
      }

      else
      {
        APSLogErrorAt();
        v5 = 4294960568;
      }
    }

    if (*v8)
    {
      free(*v8);
      *v8 = 0;
    }

    goto LABEL_25;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  valuePtr = 0;
  DataBuffer_Init();
  v16 = MediaControlClient_EnsureConnected(a1);
  if (v16)
  {
    v5 = v16;
LABEL_44:
    APSLogErrorAt();
    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(a2, @"Content-Location");
  if (!Value)
  {
    goto LABEL_41;
  }

  v18 = CFGetTypeID(Value);
  if (v18 != CFStringGetTypeID())
  {
    goto LABEL_42;
  }

  v19 = DataBuffer_AppendF();
  if (v19)
  {
    v5 = v19;
    goto LABEL_44;
  }

  v20 = CFDictionaryGetValue(a2, @"Start-Position");
  if (!v20)
  {
LABEL_41:
    APSLogErrorAt();
    v5 = 4294960591;
    goto LABEL_22;
  }

  v21 = v20;
  v22 = CFGetTypeID(v20);
  if (v22 != CFNumberGetTypeID())
  {
LABEL_42:
    APSLogErrorAt();
    v5 = 4294960540;
    goto LABEL_22;
  }

  CFNumberGetValue(v21, kCFNumberDoubleType, &valuePtr);
  v23 = DataBuffer_AppendF();
  if (v23)
  {
    v5 = v23;
    goto LABEL_44;
  }

  HTTPHeader_InitRequest();
  v5 = _MediaControlClient_DoTransaction(0x32u, a1, a1 + 416, *(&v27 + 1), v28);
LABEL_22:
  if (*v8)
  {
    free(*v8);
    *v8 = 0;
  }

  DataBuffer_Free();
LABEL_25:
  if (!v5)
  {
    _MediaControlClient_PlaybackStarted(a1, v7);
    _MediaControlClientNowPlayingEnsureSetUp(a1);
    return v5;
  }

LABEL_29:
  if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v5;
}

uint64_t MediaControlClient_DoInsertPlaylistItem(void *a1, const __CFDictionary *a2, const void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a1 + 105604;
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v8 = MediaControlPlayParamsToStreamType(a2);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        CFDictionaryGetValue(a2, @"uuid");
        v10 = gLogCategory_MediaControlClientCore;
        if (gLogCategory_MediaControlClientCore <= 40)
        {
          if (gLogCategory_MediaControlClientCore == -1)
          {
            _LogCategory_Initialize();
            v10 = gLogCategory_MediaControlClientCore;
          }

          if (v10 == -1)
          {
            _LogCategory_Initialize();
          }
        }

        LogPrintF();
      }

      ++*(v6 + 27);
    }

    else
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        CFDictionaryGetValue(a2, @"uuid");
        if (gLogCategory_MediaControlClientCore == -1)
        {
          _LogCategory_Initialize();
        }

        CFDictionaryGetValue(a2, @"Content-Location");
        if (gLogCategory_MediaControlClientCore == -1)
        {
          _LogCategory_Initialize();
        }

        LogPrintF();
      }

      ++*(v6 + 29);
    }
  }

  else if (v8)
  {
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      CFDictionaryGetValue(a2, @"uuid");
      if (gLogCategory_MediaControlClientCore == -1)
      {
        _LogCategory_Initialize();
      }

      CFDictionaryGetValue(a2, @"Content-Location");
      if (gLogCategory_MediaControlClientCore == -1)
      {
        _LogCategory_Initialize();
      }

      LogPrintF();
    }

    ++*(v6 + 28);
  }

  else
  {
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      CFDictionaryGetValue(a2, @"uuid");
      v9 = gLogCategory_MediaControlClientCore;
      if (gLogCategory_MediaControlClientCore <= 40)
      {
        if (gLogCategory_MediaControlClientCore == -1)
        {
          _LogCategory_Initialize();
          v9 = gLogCategory_MediaControlClientCore;
        }

        if (v9 == -1)
        {
          _LogCategory_Initialize();
        }
      }

      LogPrintF();
    }

    ++*(v6 + 26);
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
  if (!MutableCopy)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v12 = MutableCopy;
  CFDictionarySetInt64();
  if (!TypedValue)
  {
    goto LABEL_67;
  }

  buffer[0] = 0;
  CFStringGetCString(TypedValue, buffer, 1025, 0x8000100u);
  CFDictionaryRemoveValue(v12, @"path");
  if (APSFeaturesHasFeature() && a1[35211])
  {
    CFDictionarySetValue(v12, @"tlsPSKEnabled", *MEMORY[0x277CBED28]);
  }

  v13 = _MediaControlClient_EnsureServerListening(a1);
  if (v13)
  {
    v20 = v13;
LABEL_83:
    APSLogErrorAt();
    goto LABEL_75;
  }

  SockAddrCopy();
  SockAddrSetPort();
  v14 = SockAddrToString();
  if (v14)
  {
    v20 = v14;
    goto LABEL_83;
  }

  v15 = CFDictionarySetCString();
  if (v15)
  {
    v20 = v15;
    goto LABEL_83;
  }

  if (!CFDictionaryGetValue(v12, @"uuid"))
  {
    APSLogErrorAt();
    v20 = 4294960588;
    goto LABEL_75;
  }

  GetFileExtensionFromString();
  SNPrintF();
  CFDictionarySetCString();
  v16 = v6[1];
  if (!v16)
  {
    APSLogErrorAt();
    v20 = 4294960534;
    goto LABEL_75;
  }

  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  if (v6[3] || (v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v6[3] = v17) != 0))
  {
    CFDictionarySetCString();
    dispatch_semaphore_signal(v6[1]);
LABEL_67:
    if (gLogCategory_MediaControlClientCore <= 19 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v19 = Mutable;
      CFDictionarySetValue(Mutable, @"item", v12);
      if (a3)
      {
        CFDictionarySetValue(v19, @"afterItem", a3);
      }

      v20 = MediaControlClient_DoAction(a1, @"playlistInsert", v19, 0, 0);
      CFRelease(v19);
      goto LABEL_75;
    }

    APSLogErrorAt();
    goto LABEL_79;
  }

  APSLogErrorAt();
  dispatch_semaphore_signal(v6[1]);
LABEL_79:
  v20 = 4294960568;
LABEL_75:
  CFRelease(v12);
  return v20;
}

uint64_t MediaControlClient_DoAction(void *a1, const void *a2, const void *a3, _DWORD *a4, void *a5)
{
  v10 = a1 + 34816;
  v11 = MediaControlClient_EnsureConnected(a1);
  if (v11)
  {
    v17 = v11;
    APSLogErrorAt();
    goto LABEL_31;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_34;
  }

  v13 = Mutable;
  CFDictionarySetValue(Mutable, @"type", a2);
  if (a3)
  {
    CFDictionarySetValue(v13, @"params", a3);
  }

  Data = CFPropertyListCreateData(0, v13, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFRelease(v13);
  if (!Data)
  {
    APSLogErrorAt();
    v20 = 0;
    v17 = 4294960596;
    goto LABEL_20;
  }

  HTTPHeader_InitRequest();
  HTTPHeader_SetField();
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  v17 = _MediaControlClient_DoTransaction(0x32u, a1, (a1 + 52), BytePtr, Length);
  CFRelease(Data);
  if (v17)
  {
LABEL_31:
    v20 = 0;
    goto LABEL_20;
  }

  v18 = CFDataCreate(0, v10[135], v10[136]);
  if (!v18)
  {
LABEL_34:
    APSLogErrorAt();
    v20 = 0;
    v17 = 4294960568;
    goto LABEL_20;
  }

  v19 = v18;
  v20 = CFPropertyListCreateWithData(0, v18, 0, 0, 0);
  CFRelease(v19);
  if (!v20)
  {
    APSLogErrorAt();
    v17 = 4294960579;
    goto LABEL_20;
  }

  v21 = CFGetTypeID(v20);
  if (v21 != CFDictionaryGetTypeID())
  {
    goto LABEL_36;
  }

  if (!a4)
  {
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(v20, @"errorCode");
  if (!Value)
  {
    *a4 = 0;
    if (a5)
    {
      goto LABEL_15;
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  v23 = Value;
  v24 = CFGetTypeID(Value);
  if (v24 != CFNumberGetTypeID())
  {
LABEL_36:
    APSLogErrorAt();
    v17 = 4294960540;
    goto LABEL_20;
  }

  CFNumberGetValue(v23, kCFNumberSInt32Type, a4);
LABEL_14:
  if (!a5)
  {
    goto LABEL_19;
  }

LABEL_15:
  v25 = CFDictionaryGetValue(v20, @"params");
  v26 = v25;
  if (v25)
  {
    CFRetain(v25);
  }

  v17 = 0;
  *a5 = v26;
LABEL_20:
  v27 = v10[134];
  if (v27)
  {
    free(v27);
    v10[134] = 0;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v17 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v17;
}

uint64_t MediaControlClient_DoRemovePlaylistItem(void *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"uuid");
  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (Value)
  {
    v5 = a1[105605];
    if (v5)
    {
      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    }

    v6 = a1[105607];
    if (v6)
    {
      CFDictionaryRemoveValue(v6, Value);
    }

    v7 = a1[105605];
    if (v7)
    {
      dispatch_semaphore_signal(v7);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v9 = Mutable;
      CFDictionarySetValue(Mutable, @"item", theDict);
      v10 = MediaControlClient_DoAction(a1, @"playlistRemove", v9, 0, 0);
      CFRelease(v9);
      return v10;
    }

    else
    {
      APSLogErrorAt();
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960588;
  }
}

uint64_t MediaControlClient_DoStop(uint64_t a1)
{
  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  _MediaControlClientNowPlayingEnsureTornDown(a1);
  _MediaControlClient_LogPhotoEnded(a1);
  _MediaControlClient_LogSlideshowEnded(a1);
  _MediaControlClient_LogVideoEnded(a1);
  if (*(a1 + 424))
  {
    HTTPHeader_InitRequest();
    v2 = _MediaControlClient_DoTransaction(0x32u, a1, a1 + 416, 0, 0);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 279600);
  if (v3)
  {
    free(v3);
    *(a1 + 279600) = 0;
  }

  _MediaControlClient_EnsureMirroringResumed(a1);
  _MediaControlClient_PlaybackStopped(a1);
  if (v2 != -6723 && v2 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v2;
}

uint64_t MediaControlClient_CopyPlaybackInfo(uint64_t a1, __CFDictionary **a2)
{
  v4 = a1 + 279600;
  v32 = MediaControlClient_EnsureConnected(a1);
  if (v32)
  {
    APSLogErrorAt();
    goto LABEL_42;
  }

  if (!*(a1 + 844928))
  {
    goto LABEL_36;
  }

  HTTPHeader_InitRequest();
  v5 = _MediaControlClient_DoTransaction(0xAu, a1, a1 + 416, 0, 0);
  v32 = v5;
  if (v5 == 200404)
  {
    *(a1 + 844928) = 0;
LABEL_36:
    LODWORD(valuePtr.tv_sec) = 0;
    LODWORD(v28) = 0;
    v32 = MediaControlClient_DoScrubGet(a1, &valuePtr, &v28);
    if (v32)
    {
LABEL_42:
      Mutable = 0;
      goto LABEL_43;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v22 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      if (v22)
      {
        v23 = v22;
        CFDictionarySetValue(Mutable, @"position", v22);
        CFRelease(v23);
        v24 = CFNumberCreate(0, kCFNumberFloatType, &v28);
        if (v24)
        {
          v25 = v24;
          CFDictionarySetValue(Mutable, @"duration", v24);
          CFRelease(v25);
LABEL_41:
          *a2 = Mutable;
          v32 = 0;
          goto LABEL_42;
        }
      }
    }

    APSLogErrorAt();
    goto LABEL_50;
  }

  Mutable = 0;
  if (v5)
  {
    goto LABEL_43;
  }

  v7 = CFDataCreate(0, *(v4 + 8), *(v4 + 16));
  if (!v7)
  {
    APSLogErrorAt();
    Mutable = 0;
LABEL_50:
    v27 = -6728;
    goto LABEL_51;
  }

  v8 = v7;
  Mutable = CFPropertyListCreateWithData(0, v7, 1uLL, 0, 0);
  CFRelease(v8);
  if (Mutable)
  {
    v9 = CFGetTypeID(Mutable);
    if (v9 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(Mutable, @"estimatedDate");
      if (!Value)
      {
LABEL_11:
        Int64 = CFDictionaryGetInt64();
        if (!v32)
        {
          *(a1 + 844784) = Int64;
        }

        v13 = CFDictionaryGetInt64();
        if (!v32)
        {
          *(a1 + 844788) = v13;
        }

        CFDictionaryGetDouble();
        if (!v32 && v14 > 0.0)
        {
          *(a1 + 844792) = v14;
        }

        CFDictionaryGetDouble();
        if (!v32 && v15 > 0.0)
        {
          *(a1 + 844800) = v15;
        }

        CFDictionaryGetDouble();
        if (!v32 && v16 > 0.0)
        {
          *(a1 + 844808) = v16;
        }

        CFDictionaryGetTypeID();
        if (CFDictionaryGetTypedValue())
        {
          CFDictionaryGetDouble();
          if (!v32)
          {
            *(a1 + 845048) = (v17 * 1000.0);
          }

          CFDictionaryGetDouble();
          if (!v32)
          {
            *(a1 + 845060) = (v18 * 1000.0);
          }

          CFDictionaryGetDouble();
          if (!v32)
          {
            *(a1 + 845056) = (v19 * 1000.0);
          }

          CFDictionaryGetDouble();
          if (!v32)
          {
            *(a1 + 845052) = (v20 * 1000.0);
          }

          CFDictionaryGetDouble();
          if (!v32)
          {
            *(a1 + 845064) = (v21 * 1000.0);
          }
        }

        goto LABEL_41;
      }

      v11 = CFGetTypeID(Value);
      if (v11 == CFDateGetTypeID())
      {
        v30 = 0;
        v31 = 0;
        HTTPGetHeaderField();
        goto LABEL_11;
      }
    }

    APSLogErrorAt();
    v27 = -6756;
  }

  else
  {
    APSLogErrorAt();
    v27 = -6717;
  }

LABEL_51:
  v32 = v27;
LABEL_43:
  if (*v4)
  {
    free(*v4);
    *v4 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v32;
}

uint64_t MediaControlClient_DoScrubGet(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a1 + 34816;
  v7 = MediaControlClient_EnsureConnected(a1);
  if (v7)
  {
    v11 = v7;
    APSLogErrorAt();
  }

  else
  {
    HTTPHeader_InitRequest();
    v8 = _MediaControlClient_DoTransaction(0xAu, a1, (a1 + 52), 0, 0);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      while (ParseLine())
      {
        __memcpy_chk();
        v14[0] = 0;
        if (sscanf(v14, "duration: %f", a3) == 1)
        {
          v9 = 1;
        }

        else if (sscanf(v14, "position: %f", a2) == 1)
        {
          v10 = 1;
        }
      }

      if (v10 == 0 || (v9 & 1) == 0)
      {
        v11 = 4294960569;
      }

      else
      {
        if (gLogCategory_MediaControlClientCore <= 10 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v11 = 0;
      }
    }
  }

  v12 = v6[134];
  if (v12)
  {
    free(v12);
    v6[134] = 0;
  }

  return v11;
}

uint64_t MediaControlClient_DoScrubSet(uint64_t a1, const __CFData *a2, float a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = gLogCategory_MediaControlClientCore;
  if (gLogCategory_MediaControlClientCore <= 50)
  {
    if (gLogCategory_MediaControlClientCore == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v6 = gLogCategory_MediaControlClientCore;
    }

    if (v6 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_9:
  v7 = MediaControlClient_EnsureConnected(a1);
  if (v7)
  {
    v15 = v7;
    APSLogErrorAt();
    a2 = 0;
    goto LABEL_20;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  if (*(a1 + 281776) < 0x1B90A4u)
  {
    a2 = 0;
LABEL_15:
    BytePtr = 0;
    Length = 0;
    goto LABEL_16;
  }

  Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  a2 = Data;
  if (!Data)
  {
    APSLogErrorAt();
    v15 = 4294960596;
    goto LABEL_20;
  }

  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(a2);
LABEL_16:
  snprintf(__str, 0x80uLL, "/scrub?position=%f", a3);
  HTTPHeader_InitRequest();
  HTTPHeader_SetField();
  if (Length)
  {
    HTTPHeader_SetField();
    v11 = a1 + 416;
    v12 = a1;
    v13 = BytePtr;
    v14 = Length;
  }

  else
  {
    v11 = a1 + 416;
    v12 = a1;
    v13 = BytePtr;
    v14 = 0;
  }

  v15 = _MediaControlClient_DoTransaction(0x32u, v12, v11, v13, v14);
LABEL_20:
  v16 = *(a1 + 279600);
  if (v16)
  {
    free(v16);
    *(a1 + 279600) = 0;
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (v15 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v15;
}

uint64_t MediaControlClient_DoRate(void *a1, float a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = MediaControlClient_EnsureConnected(a1);
  if (v4)
  {
    v5 = v4;
    APSLogErrorAt();
  }

  else
  {
    snprintf(__str, 0x80uLL, "/rate?value=%f", a2);
    HTTPHeader_InitRequest();
    v5 = _MediaControlClient_DoTransaction(0x32u, a1, (a1 + 52), 0, 0);
    if (!v5)
    {
      _MediaControlClient_PlaybackPaused(a1, a2 == 0.0);
      return v5;
    }
  }

  if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v5;
}

NSObject *_MediaControlClient_EnsureMirroringSuspended(uint64_t a1)
{
  if (gAirPlayRouteLock)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (!*(a1 + 563232))
  {
    v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v3 = [v2 attributeForKey:*MEMORY[0x277D26C70]];
    if ([objc_msgSend(v3 objectForKey:{*MEMORY[0x277D26D18]), "BOOLValue"}])
    {
      if (!gAirPlayMirroringSuspendCount++)
      {
        if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v5 = [MEMORY[0x277D26E58] sharedAVSystemController];
        v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v5 setAttribute:v6 forKey:*MEMORY[0x277D26B18] error:0];
      }

      *(a1 + 563232) = 1;
    }
  }

  result = gAirPlayRouteLock;
  if (gAirPlayRouteLock)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

uint64_t MediaControlClient_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, int *a4)
{
  v6 = a1 + 278528;
  v7 = MediaControlClient_EnsureConnected(a1);
  if (v7)
  {
    v9 = v7;
    APSLogErrorAt();
    v8 = 0;
  }

  else if (CFEqual(a2, @"serverInfo"))
  {
    v8 = *(v6 + 3232);
    if (v8)
    {
      CFRetain(*(v6 + 3232));
    }

    v9 = 0;
  }

  else
  {
    ASPrintF();
    APSLogErrorAt();
    v8 = 0;
    v9 = -6728;
  }

  v10 = *(v6 + 1072);
  if (v10)
  {
    free(v10);
    *(v6 + 1072) = 0;
  }

  if (a4)
  {
    *a4 = v9;
  }

  if (v9 != -6727 && v9 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v8;
}

uint64_t MediaControlClient_SetEventHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 563216) = a2;
  *(result + 563224) = a3;
  return result;
}