uint64_t routingContextResilientRemote_SelectRouteDescriptorWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __routingContextResilientRemote_SelectRouteDescriptorWithCompletionCallback_block_invoke;
  v6[3] = &__block_descriptor_64_e34_i16__0__OpaqueFigRoutingContext__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return routingContextResilientRemote_withRemoteContext(a1, v6);
}

uint64_t routingContextResilientRemote_SelectRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __routingContextResilientRemote_SelectRouteDescriptorsWithCompletionCallback_block_invoke;
  v6[3] = &__block_descriptor_64_e34_i16__0__OpaqueFigRoutingContext__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return routingContextResilientRemote_withRemoteContext(a1, v6);
}

uint64_t routingContextResilientRemote_ReportModificationMetrics(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_ReportModificationMetrics_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

void __routingContextResilientRemote_copySharedAudioContext_block_invoke(uint64_t a1)
{
  routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextErr = FigRoutingContextResilientRemoteCreateAudioContext(*(a1 + 32), 0, &routingContextResilientRemote_copySharedAudioContext_sSharedAudioContext);
  v1 = routingContextResilientRemote_copySharedAudioContext_sSharedAudioContext;
  if (routingContextResilientRemote_copySharedAudioContext_sSharedAudioContext)
  {
    cf = 0;
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v2)
    {
      v2(v1, @"contextUUID", *MEMORY[0x1E695E480], &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t cmsmDoesPortMatchCurrentEndpointID(AudioObjectID a1)
{
  v11 = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(qword_1EB75E190, 0, &v11);
  v10 = 0;
  if (v11)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v4 = *(*(VTable + 8) + 48);
    if (v4)
    {
      v5 = *(VTable + 8) + 48;
      v4(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &v10);
    }
  }

  v6 = vaeCopyDeviceIdentifierFromVADPort(a1);
  cf = 0;
  CMSMUtility_CreateTokensFromDeviceUID(v6, &cf, 0);
  v7 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v11)
  {
    CFRelease(v11);
    v11 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

id cmsmCopyQuiesceableWiredPortsForRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, int a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a4 != 1 || MX_FeatureFlags_IsSystemInputPickerEnabled())
    {
      goto LABEL_4;
    }
  }

  else if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled())
  {
LABEL_4:
    VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a1);
    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
    v10 = vaemCopyConnectedPortsListForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a3, 0, a4);
    if (v10)
    {
      v11 = v10;
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            if (vaeIsQuiesceableWiredPort([v17 unsignedIntValue]))
            {
              [v12 addObject:v17];
            }
          }

          v14 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);
      }

      if (![v12 count])
      {

        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v21 = *MEMORY[0x1E69E9840];
    return v12;
  }

  v18 = MEMORY[0x1E695DEC8];
  v19 = *MEMORY[0x1E69E9840];

  return objc_alloc_init(v18);
}

void *cmsmCopyPickableQuiesceableWiredPortsForRouteConfiguration()
{
  if (!MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled())
  {
    return 0;
  }

  v0 = vaemCopyPickableQuiesceableWiredPortsList(0);
  if (![v0 count])
  {

    return 0;
  }

  return v0;
}

void cmsmAddBTDetailsFromBTEndpointToRouteDescription(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"RouteUID");
    if (a1)
    {
      theDicta = 0;
      v4 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v7 = *(*(VTable + 8) + 48);
      if (v7)
      {
        v8 = *(VTable + 8) + 48;
        v7(CMBaseObject, *MEMORY[0x1E6961FE0], v4, &theDicta);
        if (theDicta)
        {
          v9 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616D0]);
          if (v9)
          {
            CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelLeft", v9);
          }

          v10 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616D8]);
          if (v10)
          {
            CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelRight", v10);
          }

          v11 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616C8]);
          if (v11)
          {
            CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelCase", v11);
          }

          v12 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616E0]);
          if (v12)
          {
            CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelSingle", v12);
          }

          if (theDicta)
          {
            CFRelease(theDicta);
            theDicta = 0;
          }
        }
      }

      value = 0;
      v13 = FigEndpointGetCMBaseObject();
      v14 = CMBaseObjectGetVTable();
      v15 = *(*(v14 + 8) + 48);
      if (v15)
      {
        v16 = *(v14 + 8) + 48;
        v15(v13, *MEMORY[0x1E69621D8], v4, &value);
        if (value)
        {
          CFDictionarySetValue(theDict, @"BTDetails_ProductID", value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }
      }

      cf = 0;
      v17 = FigEndpointGetCMBaseObject();
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v18(v17, *MEMORY[0x1E6962138], v4, &cf);
        if (cf)
        {
          CFDictionarySetValue(theDict, @"IsGenuineAppleAccessory", cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }
  }
}

__CFDictionary *cmsmCreateNonConnectedBTRouteDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"RouteType", @"Wireless");
  v4 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"RouteSupportsAudio", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(Mutable, @"IsBTRoute", v4);
  value = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 8) + 48);
  if (v7)
  {
    v8 = *(VTable + 8) + 48;
    v7(CMBaseObject, *MEMORY[0x1E69620F8], v2, &value);
    if (value)
    {
      CFDictionarySetValue(Mutable, @"RouteUID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }
  }

  cf = 0;
  v9 = FigEndpointGetCMBaseObject();
  v10 = CMBaseObjectGetVTable();
  v11 = *(*(v10 + 8) + 48);
  if (v11)
  {
    v12 = *(v10 + 8) + 48;
    v11(v9, *MEMORY[0x1E69621E8], v2, &cf);
    if (cf)
    {
      CFDictionarySetValue(Mutable, @"RouteName", cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  CFDictionarySetValue(Mutable, @"AVAudioRouteName", @"HeadphonesBT");
  cmsmAddBTDetailsFromBTEndpointToRouteDescription(a1, Mutable);
  return Mutable;
}

CFTypeRef cmsmCopyActiveNonQuiesceablePortsForRouteConfigurationScopeAndDevice(int a1, int a2, const void *a3, const void *a4, int a5, int a6, uint64_t a7)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a6 == 1)
  {
    if (MX_FeatureFlags_IsSystemInputPickerEnabled())
    {
      v14 = 1768845428;
      goto LABEL_7;
    }
  }

  else if (a6 || MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled())
  {
    v14 = 1869968496;
LABEL_7:
    cf = 0;
    outData = 0;
    RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a1, a2, a3, a4, a5);
    inAddress.mSelector = 1634627954;
    inAddress.mScope = v14;
    inAddress.mElement = 0;
    ioDataSize = 8;
    PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
    if (!PropertyData && outData && (v16 = CFGetTypeID(outData), v16 == CFArrayGetTypeID()))
    {
      if (CFArrayGetCount(outData))
      {
        if (a6 == 1)
        {
          p_cf = &cf;
          v18 = a7;
          v19 = 0;
        }

        else
        {
          v19 = &cf;
          v18 = a7;
          p_cf = 0;
        }

        vaemGetPortListForDevice(outData, v18, p_cf, v19);
        if (cf)
        {
          CFRetain(cf);
        }
      }
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (outData)
    {
      CFRelease(outData);
    }

    if (RouteConfigurationDictionary)
    {
      CFRelease(RouteConfigurationDictionary);
    }

    result = cf;
    v24 = *MEMORY[0x1E69E9840];
    return result;
  }

  v20 = MEMORY[0x1E695DEC8];
  v21 = *MEMORY[0x1E69E9840];

  return objc_alloc_init(v20);
}

void cmsmUnpickQuiesceableWiredPortsRoutes(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (a5 == 1 && !MX_FeatureFlags_IsSystemInputPickerEnabled())
    {
      goto LABEL_22;
    }

    v9 = 0;
  }

  else
  {
    if (!MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled())
    {
      goto LABEL_22;
    }

    v9 = 1;
  }

  if ([a1 count])
  {
    v18 = a3;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [a1 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      if (a4)
      {
        v14 = v9;
      }

      else
      {
        v14 = 0;
      }

      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(a1);
          }

          v16 = [*(*(&v19 + 1) + 8 * v15) unsignedIntValue];
          if (vaeIsPortRoutable(v16))
          {
            if (v14)
            {
              [+[MXSessionManager sharedInstance](MXSessionManager setQuiesceableWiredPortPreference:"setQuiesceableWiredPortPreference:autoRouteOnConnect:" autoRouteOnConnect:v16, 0];
            }

            [v10 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v16)}];
          }

          ++v15;
        }

        while (v12 != v15);
        v12 = [a1 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    vaemMakeArrayOfPortsRoutable(v10, 0, a2, v18, 0);
  }

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t cmsmUnrouteAllInputRoutes(NSDictionary *a1, uint64_t a2, const void *a3, uint64_t a4, void *a5)
{
  v10 = cmsmCopyWirelessPortsArrayForRouteConfiguration(a1, a2, a3, [a5 prefersBluetoothHighQualityContentCapture]);
  v11 = v10;
  if (!v10 || !CFArrayGetCount(v10))
  {
    Routable = 0;
    goto LABEL_7;
  }

  v12 = cmsmUnpickWirelessRoutes(v11, 0, 1, a4);
  if (v12)
  {
    v15 = v12;
    Routable = 0;
    goto LABEL_13;
  }

  Routable = cmsmCopyPartnerPortsToMakeRoutable(v11);
  v14 = cmsmUnpickWirelessRoutes(Routable, 0, 1, a4);
  if (!v14)
  {
LABEL_7:
    v16 = cmsmCopyQuiesceableWiredPortsForRouteConfiguration(a1, a2, a3, 1);
    if ([v16 count])
    {
      cmsmUnpickQuiesceableWiredPortsRoutes(v16, 1, a4, 1, 1);
    }

    if ([objc_msgSend(a5 "overridePortsList")])
    {
      v15 = MXCoreSessionSetProperty(a5, @"OverrideRoute");
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v15 = 0;
      if (!v16)
      {
LABEL_12:
        if (!v11)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    CFRelease(v16);
    goto LABEL_12;
  }

  v15 = v14;
LABEL_13:
  CFRelease(v11);
LABEL_14:
  if (Routable)
  {
    CFRelease(Routable);
  }

  return v15;
}

uint64_t cmsmUnpickWirelessRoutes(const __CFArray *a1, int a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    Count = CFArrayGetCount(a1);
    v10 = Count;
    if (a2)
    {
      if (Count >= 1)
      {
        v11 = 0;
        do
        {
          FigCFArrayGetInt64AtIndex();
          vaeGetPortTypeFromPortID(0);
          ++v11;
        }

        while (v10 != v11);
      }
    }

    else if (Count >= 1)
    {
      v13 = 0;
      do
      {
        FigCFArrayGetInt64AtIndex();
        ++v13;
      }

      while (v10 != v13);
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(Mutable))
    {
      ArrayOfPortsRoutable = vaemDeaggregatePorts(Mutable, Mutable, a3, a4);
    }

    else
    {
      ArrayOfPortsRoutable = vaemMakeArrayOfPortsRoutable(Mutable, 0, a3, a4, 0);
    }

    v12 = ArrayOfPortsRoutable;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

CFTypeRef cmsmCopyCurrentActiveRouteTypeAtIndex(CFIndex a1)
{
  theArray = 0;
  cmsmCopyCurrentActiveRoutesInfoForVADUID(0x1F2893B50, &theArray, 0, 0);
  v2 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (Count > a1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, a1);
    if (ValueAtIndex)
    {
      v5 = CFRetain(ValueAtIndex);
      if (!v2)
      {
        return v5;
      }

      goto LABEL_9;
    }
  }

  v5 = 0;
  if (v2)
  {
LABEL_9:
    CFRelease(v2);
  }

  return v5;
}

uint64_t cmsmInputPortIsConnectedForRouteConfiguration(int a1, int a2, int a3, const void *a4, int a5)
{
  v6 = vaemCopyConnectedPortsListForRouteConfiguration(a2, a3, a4, a5, 1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
LABEL_6:
    v12 = 0;
  }

  else
  {
    v9 = Count;
    v10 = 0;
    while (1)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr == a1)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_6;
      }
    }

    v12 = 1;
  }

  CFRelease(v7);
  return v12;
}

uint64_t cmsmIsDeviceIDIncludedInCarBluetoothIDs(const __CFString *a1, uint64_t a2)
{
  v10 = 0;
  CMSMUtility_CreateTokensFromDeviceUID(a1, &v10, 0);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
LABEL_8:
      a2 = 0;
    }

    else
    {
      v4 = Count;
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
        cf = 0;
        CMSMUtility_CreateTokensFromDeviceUID(ValueAtIndex, &cf, 0);
        v7 = CMSMUtility_CFStringEqualCaseInsensitive(cf, v10);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v7)
        {
          break;
        }

        if (v4 == ++v5)
        {
          goto LABEL_8;
        }
      }

      a2 = 1;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return a2;
}

CFArrayRef cmsCopySubPortPreferencesAndInputOverride(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v25 = a1;
  v3 = [objc_msgSend(a1 "subPortPreferences")];
  if (v3 >= 1)
  {
    v4 = v3;
    for (i = 0; v4 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex([v25 subPortPreferences], i);
      keys = 0;
      v31 = 0;
      v32 = 0;
      values = 0;
      v28 = 0;
      v29 = 0;
      v7 = CFDictionaryContainsKey(ValueAtIndex, @"polar pattern");
      Value = CFDictionaryGetValue(ValueAtIndex, @"sub-port id");
      v9 = CFDictionaryGetValue(ValueAtIndex, @"port id");
      if (v7)
      {
        v10 = CFDictionaryGetValue(ValueAtIndex, @"polar pattern");
        if (v9)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0;
        if (v9)
        {
LABEL_5:
          keys = @"SelectedRouteDescription_RouteID";
          values = v9;
          v11 = 1;
          if (!Value)
          {
            goto LABEL_7;
          }

LABEL_6:
          *(&keys + v11) = @"SelectedRouteDescription_DataSourceID";
          *(&values + v11++) = Value;
          goto LABEL_7;
        }
      }

      v11 = 0;
      if (Value)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (v10)
      {
        *(&keys + v11) = @"SelectedRouteDescription_MicrophonePolarPattern";
        *(&values + v11++) = v10;
LABEL_13:
        v12 = CFDictionaryCreate(allocator, &keys, &values, v11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFArrayAppendValue(Mutable, v12);
        if (v12)
        {
          CFRelease(v12);
        }

        continue;
      }

      if (v11)
      {
        goto LABEL_13;
      }

      CFArrayAppendValue(Mutable, 0);
    }
  }

  if ([v25 overridePortsList])
  {
    v13 = [objc_msgSend(v25 "overridePortsList")];
    if (v13 >= 1)
    {
      v14 = v13;
      v15 = 0;
      v16 = MEMORY[0x1E695E9D8];
      v17 = MEMORY[0x1E695E9E8];
      do
      {
        v18 = CFArrayGetValueAtIndex([v25 overridePortsList], v15);
        valuePtr = 0;
        keys = 0;
        v31 = 0;
        v32 = 0;
        values = 0;
        v28 = 0;
        v29 = 0;
        if (v18)
        {
          v19 = v18;
          CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr);
          if (vaeIsPortAnInputPort(valuePtr))
          {
            keys = @"SelectedRouteDescription_RouteID";
            values = v19;
            v20 = CFDictionaryCreate(allocator, &keys, &values, 1, v16, v17);
            CFArrayAppendValue(Mutable, v20);
            if (v20)
            {
              CFRelease(v20);
            }
          }
        }

        else if (vaeIsPortAnInputPort(0))
        {
          CFArrayAppendValue(Mutable, 0);
        }

        ++v15;
      }

      while (v14 != v15);
    }
  }

  if (Mutable)
  {
    Copy = CFArrayCreateCopy(allocator, Mutable);
    CFRelease(Mutable);
  }

  else
  {
    Copy = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return Copy;
}

CFIndex cmsUpdateSubPortPreferences(CFIndex result, CFArrayRef theArray)
{
  if (result)
  {
    if (theArray)
    {
      v3 = result;
      result = CFArrayGetCount(theArray);
      if (result >= 1)
      {
        for (i = 0; i < result; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v6 = [objc_msgSend(v3 "subPortPreferences")];
          if (v6 < 1)
          {
LABEL_9:
            v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(v3, "subPortPreferences")}];
            [v9 addObject:ValueAtIndex];
          }

          else
          {
            v7 = v6;
            v8 = 0;
            while (!cmsmSubPortPreferenceMatches([objc_msgSend(v3 "subPortPreferences")], ValueAtIndex))
            {
              if (v7 == ++v8)
              {
                goto LABEL_9;
              }
            }

            v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(v3, "subPortPreferences")}];
            [v9 setObject:ValueAtIndex atIndexedSubscript:v8];
          }

          [v3 setSubPortPreferences:v9];

          result = CFArrayGetCount(theArray);
        }
      }
    }

    else
    {
      return cmsUpdateSubPortPreferences_cold_1();
    }
  }

  return result;
}

BOOL cmsmSubPortPreferenceMatches(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"port id");
  v5 = CFDictionaryGetValue(a2, @"port id");
  if (CFNumberCompare(Value, v5, 0))
  {
    return 0;
  }

  v7 = CFDictionaryContainsKey(a2, @"polar pattern");
  v8 = CFDictionaryContainsKey(a1, @"polar pattern");
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return (v7 | v8) == 0;
  }

  else
  {
    v10 = CFDictionaryGetValue(a1, @"sub-port id");
    v11 = CFDictionaryGetValue(a2, @"sub-port id");
    return CFNumberCompare(v10, v11, 0) == kCFCompareEqualTo;
  }
}

CFIndex cmsDeselectSubPortPreferences(CFIndex result, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = result;
    result = CFArrayGetCount(theArray);
    if (result >= 1)
    {
      result = CFArrayGetCount(theArray);
      if (result >= 1)
      {
        v4 = 0;
        v5 = *MEMORY[0x1E695E480];
        do
        {
          Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
          if (CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_MicrophonePolarPattern"))
          {
            Value = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_MicrophonePolarPattern");
            CFDictionarySetValue(Mutable, @"polar pattern", Value);
            v9 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_DataSourceID");
            CFDictionarySetValue(Mutable, @"sub-port id", v9);
            v10 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_RouteID");
            CFDictionarySetValue(Mutable, @"port id", v10);
            if ([v3 subPortPreferences] && objc_msgSend(objc_msgSend(v3, "subPortPreferences"), "count"))
            {
              v11 = 0;
              while (!cmsmSubPortPreferenceMatches([objc_msgSend(v3 "subPortPreferences")], Mutable))
              {
                if ([objc_msgSend(v3 "subPortPreferences")] <= ++v11)
                {
                  goto LABEL_26;
                }
              }

              goto LABEL_19;
            }
          }

          else if (CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_DataSourceID"))
          {
            v12 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_DataSourceID");
            CFDictionarySetValue(Mutable, @"sub-port id", v12);
            v13 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_RouteID");
            CFDictionarySetValue(Mutable, @"port id", v13);
            if ([v3 subPortPreferences] && objc_msgSend(objc_msgSend(v3, "subPortPreferences"), "count"))
            {
              v11 = 0;
              while (1)
              {
                v14 = CFArrayGetValueAtIndex([v3 subPortPreferences], v11);
                if (cmsmSubPortPreferenceMatches(v14, Mutable))
                {
                  break;
                }

                if ([objc_msgSend(v3 "subPortPreferences")] <= ++v11)
                {
                  goto LABEL_26;
                }
              }

LABEL_19:
              v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(v3, "subPortPreferences")}];
              [v15 removeObjectAtIndex:v11];
              [v3 setSubPortPreferences:v15];

              if (!Mutable)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }
          }

          else if ([v3 overridePortsList])
          {
            v16 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_RouteID");
            if ([objc_msgSend(v3 "overridePortsList")])
            {
              v17 = 0;
              while (1)
              {
                v18 = CFArrayGetValueAtIndex([v3 overridePortsList], v17);
                if (CFNumberCompare(v18, v16, 0) == kCFCompareEqualTo)
                {
                  break;
                }

                if ([objc_msgSend(v3 "overridePortsList")] <= ++v17)
                {
                  goto LABEL_26;
                }
              }

              [v3 setOverridePortsList:0];
              if (!Mutable)
              {
                goto LABEL_28;
              }

LABEL_27:
              CFRelease(Mutable);
              goto LABEL_28;
            }
          }

LABEL_26:
          if (Mutable)
          {
            goto LABEL_27;
          }

LABEL_28:
          ++v4;
          result = CFArrayGetCount(theArray);
        }

        while (result > v4);
      }
    }
  }

  return result;
}

__CFArray *cmsCreateSubPortPreferenceFromPropertyValue(void *a1, const __CFArray *a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2 && CFArrayGetCount(a2) >= 1 && CFArrayGetCount(a2) >= 1)
  {
    for (i = 0; CFArrayGetCount(a2) > i; ++i)
    {
      v6 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      if (CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_MicrophonePolarPattern"))
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_MicrophonePolarPattern");
        CFDictionarySetValue(v6, @"polar pattern", Value);
      }

      else if (!CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_DataSourceID"))
      {
        values[0] = 0;
        values[0] = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_RouteID");
        v11 = CFArrayCreate(v3, values, 1, MEMORY[0x1E695E9C0]);
        [a1 setOverridePortsList:v11];
        if (v11)
        {
          CFRelease(v11);
        }

        goto LABEL_9;
      }

      v9 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_DataSourceID");
      CFDictionarySetValue(v6, @"sub-port id", v9);
      v10 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_RouteID");
      CFDictionarySetValue(v6, @"port id", v10);
LABEL_9:
      if (CFDictionaryGetCount(v6) >= 1)
      {
        CFArrayAppendValue(Mutable, v6);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  if (CFArrayGetCount(Mutable))
  {
    v12 = 1;
  }

  else
  {
    v12 = Mutable == 0;
  }

  if (!v12)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFComparisonResult routeDescriptionComparator(const __CFDictionary *a1, const __CFDictionary *a2, CFStringCompareFlags a3)
{
  Value = CFDictionaryGetValue(a1, @"RouteName");
  v7 = CFDictionaryGetValue(a2, @"RouteName");
  v8 = v7;
  if (Value)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v7)
    {
      result = kCFCompareLessThan;
    }

    else
    {
      result = kCFCompareEqualTo;
    }

    if (Value)
    {
      return 1;
    }
  }

  else
  {
    v16.length = CFStringGetLength(Value);
    v16.location = 0;
    result = CFStringCompareWithOptionsAndLocale(Value, v8, v16, a3, 0);
  }

  if (result == kCFCompareEqualTo)
  {
    v11 = CFDictionaryGetValue(a1, @"RouteUID");
    v12 = CFDictionaryGetValue(a2, @"RouteUID");
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (v12)
      {
        v14 = -1;
      }

      else
      {
        v14 = 0;
      }

      if (v11)
      {
        return 1;
      }

      else
      {
        return v14;
      }
    }

    else
    {

      return CFStringCompare(v11, v12, 0);
    }
  }

  return result;
}

void cmsmCopyHFPOrA2DPBTDeviceDetails(const __CFDictionary *a1, const __CFString **a2, __CFString **a3, CFTypeRef *a4)
{
  cf = 0;
  cf2 = 0;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!a1)
  {
    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(a1, @"RouteUID");
  CMSMUtility_CreateTokensFromDeviceUID(Value, &cf, &cf2);
  if (!cf2)
  {
    goto LABEL_22;
  }

  if (CFEqual(@"tsco", cf2))
  {
    v8 = kCMSessionBTDeviceType_HFP;
  }

  else
  {
    if (!CFEqual(@"tacl", cf2))
    {
      goto LABEL_22;
    }

    v8 = kCMSessionBTDeviceType_A2DP;
  }

  v9 = *v8;
  if (*v8)
  {
    if (a2)
    {
      *a2 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    if (a3)
    {
      *a3 = v9;
      CFRetain(v9);
    }

    if (a4)
    {
      v10 = cf;
      *a4 = cf;
      if (!v10)
      {
        goto LABEL_24;
      }

      CFRetain(v10);
    }
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_24:
  if (cf2)
  {
    CFRelease(cf2);
  }
}

uint64_t CMSMDebugUtility_DumpDebugInfo()
{
  v5 = *MEMORY[0x1E69E9840];
  CMSMDebugUtility_PrintBuildInfo();
  CMSMDebugUtility_DumpSessionListOneTime();
  CMSMStrings_Check();
  +[MXSessionManagerBase dumpDebugInfo];
  [+[MXSessionManager sharedInstance](MXSessionManager dumpDebugInfo];
  [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource dumpDebugInfo];
  [+[MXExclaves sharedInstance](MXExclaves dumpDebugInfo];
  [+[MXSessionManagerSecure sharedInstance](MXSessionManagerSecure dumpDebugInfo];
  [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager dumpDebugInfo];
  +[MXSystemController dumpInfoOfMXSystemControllers];
  [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager dumpNowPlayingAppInfo];
  if (+[MXAudioAccessoryServices isSupported])
  {
    [+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices dumpDebugInfo];
  }

  else if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[MXAppProtectionManager sharedInstance](MXAppProtectionManager dumpDebugInfo:v3];
  CMSMDebugUtility_DumpDeviceState();
  CMSMDebugUtility_DumpTriangleInfo();
  CMSMDebugUtility_DumpDetailedRouteDescriptions();
  CMSMDebugUtility_DumpMutedSessionBundleIDsList();
  MX_RunningBoardServices_DumpAssertionInfo();
  MX_RunningBoardServices_DumpMonitoredProcessPredicates();
  result = CMSMDebugUtility_DumpDeviceInfo();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMDebugUtility_PrintBuildInfo()
{
  v2 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v1 = *MEMORY[0x1E69E9840];
}

void CMSMDebugUtility_DumpSessionListOneTime()
{
  v212 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  obj = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  if (dword_1EB75DE40)
  {
    LODWORD(v193) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v180 = [obj countByEnumeratingWithState:&v187 objects:v198 count:{16, v171, v175}];
  if (v180)
  {
    v179 = *v188;
    do
    {
      v1 = 0;
      do
      {
        if (*v188 != v179)
        {
          objc_enumerationMutation(obj);
        }

        v182 = v1;
        v2 = *(*(&v187 + 1) + 8 * v1);
        v3 = [v2 copyMXSessionList];
        v4 = [v3 count];
        if (dword_1EB75DE40)
        {
          v5 = v4;
          LODWORD(v193) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v7 = v193;
          if (os_log_type_enabled(v6, type[0]))
          {
            v8 = v7;
          }

          else
          {
            v8 = v7 & 0xFFFFFFFE;
          }

          if (v8)
          {
            v205 = 136315138;
            v206 = "CMSMDebugUtility_DumpSessionListOneTime";
            LODWORD(v176) = 12;
            v173 = &v205;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (dword_1EB75DE40)
          {
            LODWORD(v193) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v10 = v193;
            if (os_log_type_enabled(v9, type[0]))
            {
              v11 = v10;
            }

            else
            {
              v11 = v10 & 0xFFFFFFFE;
            }

            if (v11)
            {
              v12 = [v2 displayID];
              v205 = 136315650;
              v206 = "CMSMDebugUtility_DumpSessionListOneTime";
              v207 = 2114;
              v208 = v12;
              v209 = 2048;
              v210 = v5;
              LODWORD(v176) = 32;
              v173 = &v205;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v181 = v3;
        v13 = [MEMORY[0x1E696AD60] stringWithString:{&stru_1F2890CF0, v173}];
        [v2 dumpDebugConfigInfo];
        [v13 appendString:@"\nClient Configuration Info :\n"];
        v14 = MEMORY[0x1E696AEC0];
        if ([v2 isSharedAVAudioSessionInstance])
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"isSharedAVAudioSessionInstance =", [v14 stringWithFormat:@"%@", v15]);
        v16 = MEMORY[0x1E696AEC0];
        if ([v2 isAirPlayReceiverSession])
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"isAirPlayReceiverSession =", [v16 stringWithFormat:@"%@", v17]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"clientPriority =", -[MXSessionManager getClientPriorityAsString:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getClientPriorityAsString:", [v2 clientPriority]));
        CMSMDebugUtility_AppendFieldAndValue(v13, @"canBeNowPlayingApp =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", +[MXSystemController getCanBeNowPlayingAppForPID:](MXSystemController, "getCanBeNowPlayingAppForPID:", objc_msgSend(objc_msgSend(v2, "clientPID"), "intValue"))]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"routeSharingPolicy =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", -[MXSessionManager getRouteSharingPolicyAsString:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getRouteSharingPolicyAsString:", objc_msgSend(v2, "routeSharingPolicy"))]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"PIDInheritingFrom =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "pidToInheritAppStateFrom")]);
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", CMSMUtility_GetFlagsString(objc_msgSend(v2, "hwControlFlags"))];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"requires flags =", v18);
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", CMSMUtility_GetFlagsString(objc_msgSend(v2, "hwControlFlags") >> 16)];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"desires flags =", v19);
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetIsEligibleForNowPlayingAppConsideration(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"eligibleForNPA =", v20);
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetPrefersNoDucking(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersNoDucking =", v21);
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetIsActuallyPlayingAudio(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"actuallyPlaysAudio =", v22);
        v23 = MEMORY[0x1E696AEC0];
        if (CMSUtility_GetIsEligibleForBTSmartRoutingConsideration(v2))
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"isEligibleForBTSmartRoutingConsideration =", [v23 stringWithFormat:@"%@", v24]);
        v25 = MEMORY[0x1E696AEC0];
        if ([v2 isEligibleForBTTriangleConsideration])
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"isEligibleForBTTriangleConsideration =", [v25 stringWithFormat:@"%@", v26]);
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetWantsToBeVolumeButtonClient(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"wantsToBeVolumeButtonClient =", v27);
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetOptOutOfMutePriority(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"optOutOfMutePriority =", v28);
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetAllowSystemSoundsWhileRecording(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"allowSystemSoundsWhileRecording =", v29);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"microphoneAttribution =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "wantsToShowMicrophoneIndicatorWhenNotRecording")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"needsAudioBudget =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "needsAudioBudget")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"shadowingAudioSessionID =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "shadowingAudioSessionID")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"shadowingAudioSessionOptions =", -[MXSessionManager getShadowingAudioSessionOptionsAsString:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getShadowingAudioSessionOptionsAsString:", [v2 shadowingAudioSessionOptions]));
        CMSMDebugUtility_AppendFieldAndValue(v13, @"isSharePlayMediaSession =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "isSharePlayMediaSession")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"isSharePlayCallSession =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "isSharePlayCallSession")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"isSharePlayCapableCallSession =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "isSharePlayCapableCallSession")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"isHardwareSafetySession =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "isHardwareSafetySession")]);
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetPrefersToTakeHWControlFlagsFromAnotherSession(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersToTakeHWControlFlagsFromAnotherSession =", v30);
        v31 = MEMORY[0x1E696AEC0];
        if ([v2 dontTakeOverHardware])
        {
          v32 = @"YES";
        }

        else
        {
          v32 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"dontTakeOverHardware =", [v31 stringWithFormat:@"%@", v32]);
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetPrefersNoInterruptionWhenSecureMicrophoneIsEngaged(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersNoInterruptionWhenSecureMicrophoneIsEngaged =", v33);
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetPrefersMultichannelAudio(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersMultichannelAudio =", v34);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"preferredNumberOfInputChannels =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "preferredNumberOfInputChannels")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"preferredNumberOfOutputChannels =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "preferredNumberOfOutputChannels")]);
        v35 = MEMORY[0x1E696AEC0];
        [v2 preferredInputSampleRate];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"preferredInputSampleRate =", [v35 stringWithFormat:@"%f", v36]);
        v37 = MEMORY[0x1E696AEC0];
        [v2 preferredOutputSampleRate];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"preferredOutputSampleRate =", [v37 stringWithFormat:@"%f", v38]);
        v39 = MEMORY[0x1E696AEC0];
        if ([v2 preferredOutputSampleRateSetByClient])
        {
          v40 = @"YES";
        }

        else
        {
          v40 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"preferredOutputSampleRateSetByClient =", [v39 stringWithFormat:@"%@", v40]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersToVibeWhenVibrationsAreDisabled =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "prefersToVibeWhenVibrationsAreDisabled")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersNoInterruptionsByMixableSessions =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "prefersNoInterruptionsByMixableSessions")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersNoInterruptionsDuringRemoteDeviceControl =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "prefersNoInterruptionsDuringRemoteDeviceControl")]);
        v41 = MEMORY[0x1E696AEC0];
        if ([v2 prefersToInterruptActiveRecordingSessions])
        {
          v42 = @"YES";
        }

        else
        {
          v42 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersToInterruptActiveRecordingSessions =", [v41 stringWithFormat:@"%@", v42]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersBluetoothAccessoryMuting =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "prefersBluetoothAccessoryMuting")]);
        v43 = MEMORY[0x1E696AEC0];
        if ([v2 prefersBluetoothFarFieldCapture])
        {
          v44 = @"YES";
        }

        else
        {
          v44 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersBluetoothFarFieldCapture =", [v43 stringWithFormat:@"%@", v44]);
        v45 = MEMORY[0x1E696AEC0];
        if ([v2 prefersBluetoothHighQualityContentCapture])
        {
          v46 = @"YES";
        }

        else
        {
          v46 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersBluetoothHighQualityContentCapture", [v45 stringWithFormat:@"%@", v46]);
        v47 = MEMORY[0x1E696AEC0];
        if ([v2 hasExternalMuteNotificationContext])
        {
          v48 = @"YES";
        }

        else
        {
          v48 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"hasExternalMuteNotificationContext =", [v47 stringWithFormat:@"%@", v48]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"Entitlements : hasEntitlementToRecordAudioInAnExtension =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToRecordAudioInAnExtension")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"hasEntitlementToStartRecordingInTheBackground =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToStartRecordingInTheBackground")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"hasEntitlementToShowMicrophoneIndicatorWhileNotRecording =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToShowMicrophoneIndicatorWhileNotRecording")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"hasEntitlementToSupportProcessAssertionAuditTokens =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToSupportProcessAssertionAuditTokens")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"hasEntitlementToRecordDuringCall =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToRecordDuringCall")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"hasEntitlementToSetEmergencyAlertPriority =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToSetEmergencyAlertPriority")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"hasEntitlementToSetPrefersNoInterruptions =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToSetPrefersNoInterruptions")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"hasEntitlementToSetPrefersToOptOutOfHardwareSafetyInterruptions", [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", objc_msgSend(v2, "hasEntitlementToSetPrefersToOptOutOfHardwareSafetyInterruptions")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersToOptOutOfHardwareSafetyInterruptions", [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", objc_msgSend(v2, "prefersToOptOutOfHardwareSafetyInterruptions")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"wombatEnabled =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", -[MXSessionManager wombatEnabled](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "wombatEnabled")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersToPlayDuringWombat =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", objc_msgSend(v2, "prefersToPlayDuringWombat")]);
        v49 = MEMORY[0x1E696AEC0];
        [v2 duckFadeDuration];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"duckFadeDuration =", [v49 stringWithFormat:@"%f", v50]);
        v51 = MEMORY[0x1E696AEC0];
        [v2 unduckFadeDuration];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"unduckFadeDuration =", [v51 stringWithFormat:@"%f", v52]);
        v53 = MEMORY[0x1E696AEC0];
        [v2 duckToLevelScalar];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"duckToLevelScalar =", [v53 stringWithFormat:@"%f", v54]);
        v55 = MEMORY[0x1E696AEC0];
        [v2 unduckToLevelScalar];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"unduckToLevelScalar = ", [v55 stringWithFormat:@"%f", v56]);
        v57 = MEMORY[0x1E696AEC0];
        [v2 duckToLevelDB];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"duckToLevelDB =", [v57 stringWithFormat:@"%f", v58]);
        v59 = MEMORY[0x1E696AEC0];
        if ([v2 isInterruptionCalledOffAudioControlQueue])
        {
          v60 = @"YES";
        }

        else
        {
          v60 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"isInterruptionCalledOffAudioControlQueue = ", [v59 stringWithFormat:@"%@", v60]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"allowedRouteTypes =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "allowedRouteTypes")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"powerProfile =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "powerProfile")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"notificationsSubscribedTo =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "notificationsSubscribedTo")]);
        v61 = MEMORY[0x1E696AEC0];
        if ([v2 wantsToPauseSpokenAudio])
        {
          v62 = @"YES";
        }

        else
        {
          v62 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"wantsToPauseSpokenAudio =", [v61 stringWithFormat:@"%@", v62]);
        v63 = MEMORY[0x1E696AEC0];
        if ([v2 mutesAudioBasedOnRingerSwitchState])
        {
          v64 = @"YES";
        }

        else
        {
          v64 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"mutesAudioBasedOnRingerSwitchState", [v63 stringWithFormat:@"%@", v64]);
        v65 = MEMORY[0x1E696AEC0];
        if ([v2 isTemporaryAssertionEnabled])
        {
          v66 = @"YES";
        }

        else
        {
          v66 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"isTemporaryAssertionEnabled", [v65 stringWithFormat:@"%@", v66]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"assertionAuditTimeInterval =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", objc_msgSend(v2, "assertionAuditTimerDelay")]);
        v67 = MEMORY[0x1E696AEC0];
        [v2 constantOutputVolumeLeveldB];
        CMSMDebugUtility_AppendFieldAndValue(v13, @"constantOutputVolumeLeveldB =", [v67 stringWithFormat:@"%f", v68]);
        v69 = MEMORY[0x1E696AEC0];
        if ([v2 prefersBeingInterruptedByNextActiveRecordingClient])
        {
          v70 = @"YES";
        }

        else
        {
          v70 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"prefersBeingInterruptedByNextActiveRecordingClient =", [v69 stringWithFormat:@"%@", v70]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"preferredPersistentRoute =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "preferredPersistentRoute")]);
        v71 = MEMORY[0x1E696AEC0];
        if ([v2 isCameraRecordingExtension])
        {
          v72 = @"YES";
        }

        else
        {
          v72 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v13, @"isCameraRecordingExtension =", [v71 stringWithFormat:@"%@", v72]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"preferredMinimumMicrophoneIndicatorLightOnTime =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "preferredMinimumMicrophoneIndicatorLightOnTime")]);
        CMSMDebugUtility_AppendFieldAndValue(v13, @"vibrationData =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "vibrationData")]);
        CMSMDebugUtility_DumpOneLineAndResetString(v13);
        v73 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F2890CF0];
        [v2 dumpDebugStateInfo];
        [v73 appendString:@"\nClient State Info :\n"];
        CMSMDebugUtility_AppendFieldAndValue(v73, @"ptr =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v2]);
        v74 = MEMORY[0x1E696AEC0];
        v75 = [v2 isPlayingOutput];
        v76 = "NO";
        if (v75)
        {
          v76 = "YES";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"isPlayingOutput =", [v74 stringWithFormat:@"%s", v76]);
        v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", CMSMUtility_GetFlagsString(objc_msgSend(v2, "currentlyControllingFlags"))];
        CMSMDebugUtility_AppendFieldAndValue(v73, @"controlling flags =", v77);
        CMSMDebugUtility_AppendFieldAndValue(v73, @"usingCamera =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "isUsingCamera")]);
        v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v73, @"isNowPlayingEligible =", v78);
        v79 = MEMORY[0x1E696AEC0];
        v80 = [v2 isDucked];
        v81 = "not ducked";
        if (v80)
        {
          v81 = "DUCKED";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"ducking state =", [v79 stringWithFormat:@"%s", v81]);
        v82 = MEMORY[0x1E696AEC0];
        if ([v2 silentMuted])
        {
          v83 = "Yes";
        }

        else
        {
          v83 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"silentMuted =", [v82 stringWithFormat:@"%s", v83]);
        v84 = MEMORY[0x1E696AEC0];
        if ([v2 duckedOnVAD])
        {
          v85 = "Yes";
        }

        else
        {
          v85 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"duckedOnVAD =", [v84 stringWithFormat:@"%s", v85]);
        v86 = MEMORY[0x1E696AEC0];
        if ([v2 auditTokenSetByClient])
        {
          v87 = "Yes";
        }

        else
        {
          v87 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"auditTokenSetByClient =", [v86 stringWithFormat:@"%s", v87]);
        v88 = MEMORY[0x1E696AEC0];
        if ([v2 prefersConcurrentAirPlayAudio])
        {
          v89 = @"YES";
        }

        else
        {
          v89 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"prefersConcurrentAirPlayAudio =", [v88 stringWithFormat:@"%@", v89]);
        CMSMDebugUtility_AppendFieldAndValue(v73, @"Ducker sources = ", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "duckingSourceList")]);
        v90 = MEMORY[0x1E696AEC0];
        [v2 audioQueueDuckVolume];
        CMSMDebugUtility_AppendFieldAndValue(v73, @"audioQueueDuckVolume = ", [v90 stringWithFormat:@"%f", v91]);
        v92 = MEMORY[0x1E696AEC0];
        [v2 audioQueueFadeDuration];
        CMSMDebugUtility_AppendFieldAndValue(v73, @"audioQueueFadeDuration = ", [v92 stringWithFormat:@"%f", v93]);
        v94 = MEMORY[0x1E696AEC0];
        [v2 lastDuckVolumeApplied];
        CMSMDebugUtility_AppendFieldAndValue(v73, @"lastDuckVolumeApplied = ", [v94 stringWithFormat:@"%f", v95]);
        v96 = MEMORY[0x1E696AEC0];
        if ([v2 interruptionFadeDurationSetByClient])
        {
          v97 = "Yes";
        }

        else
        {
          v97 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"interruptionFadeDurationSetByClient =", [v96 stringWithFormat:@"%s", v97]);
        v98 = MEMORY[0x1E696AEC0];
        if ([v2 duckFadeDurationSetByClient])
        {
          v99 = "Yes";
        }

        else
        {
          v99 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"duckFadeDurationSetByClient =", [v98 stringWithFormat:@"%s", v99]);
        v100 = MEMORY[0x1E696AEC0];
        if ([v2 unduckFadeDurationSetByClient])
        {
          v101 = "Yes";
        }

        else
        {
          v101 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"unduckFadeDurationSetByClient =", [v100 stringWithFormat:@"%s", v101]);
        v102 = MEMORY[0x1E696AEC0];
        if ([v2 duckToLevelScalarSetByClient])
        {
          v103 = "Yes";
        }

        else
        {
          v103 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"duckToLevelScalarSetByClient =", [v102 stringWithFormat:@"%s", v103]);
        v104 = MEMORY[0x1E696AEC0];
        if ([v2 unduckToLevelScalarSetByClient])
        {
          v105 = @"Yes";
        }

        else
        {
          v105 = @"No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"unduckToLevelScalarSetByClient = ", [v104 stringWithFormat:@"%@", v105]);
        v106 = MEMORY[0x1E696AEC0];
        if ([v2 duckToLevelDBSetByClient])
        {
          v107 = "Yes";
        }

        else
        {
          v107 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"duckToLevelDBSetByClient =", [v106 stringWithFormat:@"%s", v107]);
        v108 = MEMORY[0x1E696AEC0];
        if ([v2 addSharedAudioRouteToRoutablePorts])
        {
          v109 = "Yes";
        }

        else
        {
          v109 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"addSharedAudioRouteToRoutablePorts =", [v108 stringWithFormat:@"%s", v109]);
        v110 = MEMORY[0x1E696AEC0];
        if ([v2 needToEndInterruption])
        {
          v111 = "Yes";
        }

        else
        {
          v111 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"needToEndInterruption =", [v110 stringWithFormat:@"%s", v111]);
        v112 = MEMORY[0x1E696AEC0];
        v113 = [v2 areBothBudsInEarForA2DPPortBeforeInterrupting];
        v114 = @"No";
        if (v113)
        {
          v114 = @"Yes";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"areBothBudsInEarForA2DPPortBeforeInterrupting =", [v112 stringWithFormat:@"%@", v114]);
        v115 = MEMORY[0x1E696AEC0];
        if ([v2 triggeredRemoteInterruption])
        {
          v116 = "Yes";
        }

        else
        {
          v116 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"triggeredRemoteInterruption =", [v115 stringWithFormat:@"%s", v116]);
        v117 = MEMORY[0x1E696AEC0];
        if ([v2 hasFetchedBackgroundPrivileges])
        {
          v118 = @"YES";
        }

        else
        {
          v118 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"hasFetchedBackgroundPrivileges =", [v117 stringWithFormat:@"%@", v118]);
        v119 = MEMORY[0x1E696AEC0];
        if ([v2 prefersSpeechDetectEnabled])
        {
          v120 = @"YES";
        }

        else
        {
          v120 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"prefersSpeechDetectEnabled = ", [v119 stringWithFormat:@"%@", v120]);
        v121 = MEMORY[0x1E696AEC0];
        if ([+[MXSessionManager doesSessionPreferInterruptionOnRouteDisconnect:"doesSessionPreferInterruptionOnRouteDisconnect:"]
        {
          v122 = @"YES";
        }

        else
        {
          v122 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"prefersInterruptionOnRouteDisconnect (actual) = ", [v121 stringWithFormat:@"%@", v122]);
        v123 = MEMORY[0x1E696AEC0];
        if ([v2 prefersInterruptionOnRouteDisconnect])
        {
          v124 = @"YES";
        }

        else
        {
          v124 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"prefersInterruptionOnRouteDisconnect = ", [v123 stringWithFormat:@"%@", v124]);
        v125 = MEMORY[0x1E696AEC0];
        if ([v2 prefersInterruptionOnRouteDisconnectSetByClient])
        {
          v126 = @"YES";
        }

        else
        {
          v126 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"prefersInterruptionOnRouteDisconnectSetByClient = ", [v125 stringWithFormat:@"%@", v126]);
        v127 = MEMORY[0x1E696AEC0];
        if ([v2 wasActiveWhenDeviceOwnershipRelinquished])
        {
          v128 = @"YES";
        }

        else
        {
          v128 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"wasActiveWhenDeviceOwnershipRelinquished =", [v127 stringWithFormat:@"%@", v128]);
        v129 = MEMORY[0x1E696AEC0];
        if ([v2 isOutputMuted])
        {
          v130 = @"YES";
        }

        else
        {
          v130 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"isOutputMuted =", [v129 stringWithFormat:@"%@", v130]);
        v131 = MEMORY[0x1E696AEC0];
        if ([v2 isRecordingMuted])
        {
          v132 = @"YES";
        }

        else
        {
          v132 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"isRecordingMuted =", [v131 stringWithFormat:@"%@", v132]);
        v133 = MEMORY[0x1E696AEC0];
        if ([v2 isRecordingMutedForRemoteDevice])
        {
          v134 = @"YES";
        }

        else
        {
          v134 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"isRecordingMutedForRemoteDevice =", [v133 stringWithFormat:@"%@", v134]);
        v135 = MEMORY[0x1E696AEC0];
        if ([v2 shouldMuteBeAppliedToRemoteDevice])
        {
          v136 = @"YES";
        }

        else
        {
          v136 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"shouldMuteBeAppliedToRemoteDevice =", [v135 stringWithFormat:@"%@", v136]);
        v137 = MEMORY[0x1E696AEC0];
        if ([v2 doesGameAudioNeedToBeSpatialized])
        {
          v138 = @"YES";
        }

        else
        {
          v138 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"doesGameAudioNeedToBeSpatialized =", [v137 stringWithFormat:@"%@", v138]);
        v139 = MEMORY[0x1E696AEC0];
        if ([v2 bypassSystemSpatialAudioForGame])
        {
          v140 = @"YES";
        }

        else
        {
          v140 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v73, @"bypassSystemSpatialAudioForGame =", [v139 stringWithFormat:@"%@", v140]);
        CMSMDebugUtility_DumpOneLineAndResetString(v73);
        if ([objc_msgSend(v2 "hostProcessPlaybackAssertions")] && objc_msgSend(objc_msgSend(v2, "hostProcessPlaybackAssertions"), "count"))
        {
          if (dword_1EB75DE40)
          {
            LODWORD(v193) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v141 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v142 = v193;
            if (os_log_type_enabled(v141, type[0]))
            {
              v143 = v142;
            }

            else
            {
              v143 = v142 & 0xFFFFFFFE;
            }

            if (v143)
            {
              v205 = 136315138;
              v206 = "CMSMDebugUtility_DumpSessionStateInfo";
              LODWORD(v176) = 12;
              v174 = &v205;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v195 = 0u;
          v196 = 0u;
          v193 = 0u;
          v194 = 0u;
          v144 = [v2 hostProcessPlaybackAssertions];
          v145 = [v144 countByEnumeratingWithState:&v193 objects:v211 count:16];
          if (v145)
          {
            v146 = v145;
            v147 = *v194;
            do
            {
              for (i = 0; i != v146; ++i)
              {
                if (*v194 != v147)
                {
                  objc_enumerationMutation(v144);
                }

                v149 = *(*(&v193 + 1) + 8 * i);
                v150 = [objc_msgSend(v2 hostProcessPlaybackAssertions];
                if (dword_1EB75DE40)
                {
                  v151 = v150;
                  v192 = 0;
                  v191 = OS_LOG_TYPE_DEFAULT;
                  v152 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v153 = v192;
                  if (os_log_type_enabled(v152, v191))
                  {
                    v154 = v153;
                  }

                  else
                  {
                    v154 = v153 & 0xFFFFFFFE;
                  }

                  if (v154)
                  {
                    *type = 136315394;
                    v200 = "CMSMDebugUtility_DumpSessionStateInfo";
                    v201 = 2114;
                    v202 = v149;
                    LODWORD(v176) = 22;
                    v174 = type;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  if (dword_1EB75DE40)
                  {
                    v192 = 0;
                    v191 = OS_LOG_TYPE_DEFAULT;
                    v155 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v156 = v192;
                    if (os_log_type_enabled(v155, v191))
                    {
                      v157 = v156;
                    }

                    else
                    {
                      v157 = v156 & 0xFFFFFFFE;
                    }

                    if (v157)
                    {
                      v158 = [v151 explanation];
                      *type = 136315650;
                      v200 = "CMSMDebugUtility_DumpSessionStateInfo";
                      v201 = 2048;
                      v202 = v151;
                      v203 = 2114;
                      v204 = v158;
                      LODWORD(v176) = 32;
                      v174 = type;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }
                }
              }

              v146 = [v144 countByEnumeratingWithState:&v193 objects:v211 count:16];
            }

            while (v146);
          }
        }

        if (dword_1EB75DE40)
        {
          LODWORD(v193) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v159 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v160 = v193;
          if (os_log_type_enabled(v159, type[0]))
          {
            v161 = v160;
          }

          else
          {
            v161 = v160 & 0xFFFFFFFE;
          }

          if (v161)
          {
            v205 = 136315138;
            v206 = "CMSMDebugUtility_DumpSessionListOneTime";
            LODWORD(v176) = 12;
            v174 = &v205;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v162 = [v181 countByEnumeratingWithState:&v183 objects:v197 count:{16, v174}];
        if (v162)
        {
          v163 = v162;
          v164 = *v184;
          do
          {
            for (j = 0; j != v163; ++j)
            {
              if (*v184 != v164)
              {
                objc_enumerationMutation(v181);
              }

              [*(*(&v183 + 1) + 8 * j) dumpInfo];
            }

            v163 = [v181 countByEnumeratingWithState:&v183 objects:v197 count:16];
          }

          while (v163);
        }

        if (dword_1EB75DE40)
        {
          LODWORD(v193) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v166 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v167 = v193;
          if (os_log_type_enabled(v166, type[0]))
          {
            v168 = v167;
          }

          else
          {
            v168 = v167 & 0xFFFFFFFE;
          }

          if (v168)
          {
            v169 = [v2 displayID];
            v205 = 136315394;
            v206 = "CMSMDebugUtility_DumpSessionListOneTime";
            v207 = 2114;
            v208 = v169;
            LODWORD(v176) = 22;
            v172 = &v205;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v1 = v182 + 1;
      }

      while (v182 + 1 != v180);
      v180 = [obj countByEnumeratingWithState:&v187 objects:v198 count:16];
    }

    while (v180);
  }

  objc_autoreleasePoolPop(context);
  v170 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMDebugUtility_DumpDeviceState()
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  PVMGetVibeIntensityPreference();
  if (dword_1EB75DE40)
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFPreferencesGetAppBooleanValue(@"celestialToMediaExperienceDomainMigrationFullyCompleted", @"com.apple.mediaexperience", 0);
  if (dword_1EB75DE40)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = CFPreferencesGetAppBooleanValue(@"celestialToMediaExperienceDomainMigrationCompleted", @"com.apple.mediaexperience", 0);
  if (dword_1EB75DE40)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DE40)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (dword_1EB75DE40)
        {
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMDebugUtility_DumpTriangleInfo()
{
  v29 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F2890CF0];
  v1 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
  v2 = CMSM_IDSConnection_CopyNearbyPairedDeviceInfo();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"\nSharedAudioRoutePortIds = ", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v1, v28]);
  v4 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote())
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsSomeClientPlayingOverSharedAudioRouteOnRemote =", [v4 stringWithFormat:@"%@", v5]);
  v6 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsWaitingForGizmoPlayingInfo())
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsWaitingForGizmoPlayingInfo =", [v6 stringWithFormat:@"%@", v7]);
  v8 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_DidRemoteReplyWithInitialPlayingInfo())
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"DidRemoteReplyWithInitialPlayingInfo =", [v8 stringWithFormat:@"%@", v9]);
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", CMSM_IDSConnection_GetRemotePlayingInfo()];
  CMSMDebugUtility_AppendFieldAndValue(v0, @"RemotePlayingInfo =", v10);
  CMSMDebugUtility_AppendFieldAndValue(v0, @"nearbyDeviceInfo =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v2]);
  v11 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote())
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsSharedAudioRouteConnectedToLocalAndRemote =", [v11 stringWithFormat:@"%@", v12]);
  v13 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal())
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsSharedAudioRouteConnectedToLocal =", [v13 stringWithFormat:@"%@", v14]);
  v15 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote())
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsSharedAudioRouteConnectedToRemote =", [v15 stringWithFormat:@"%@", v16]);
  v17 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsRemoteUsingSharedAudioRoute())
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsRemoteUsingSharedAudioRoute =", [v17 stringWithFormat:@"%@", v18]);
  v19 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsNearbyPairedDevicePresent())
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsNearbyPairedDevicePresent =", [v19 stringWithFormat:@"%@", v20]);
  v21 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsNearbyPairedDevicePresentAndConnected())
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsNearbyPairedDevicePresentAndConnected =", [v21 stringWithFormat:@"%@", v22]);
  v23 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsTimerForRemotePlayingInfoReplyExpired())
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsTimerForRemotePlayingInfoReplyExpired =", [v23 stringWithFormat:@"%@", v24]);
  v25 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsPairedToAnotherDevice())
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsPairedToAnotherDevice =", [v25 stringWithFormat:@"%@", v26]);
  CMSMDebugUtility_DumpOneLineAndResetString(v0);

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMDebugUtility_DumpDetailedRouteDescriptions()
{
  v31 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v25 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager detailedRoutesDescription:v15];
  result = [(NSDictionary *)obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v21;
    do
    {
      v4 = 0;
      do
      {
        if (*v21 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v20 + 1) + 8 * v4);
        v6 = -[MXAdditiveRoutingManager copyDetailedRouteDescription:](+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager, "sharedInstance", v16, v18), "copyDetailedRouteDescription:", [v5 unsignedIntValue]);
        if (dword_1EB75DE40)
        {
          v25 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v8 = v25;
          if (os_log_type_enabled(v7, type))
          {
            v9 = v8;
          }

          else
          {
            v9 = v8 & 0xFFFFFFFE;
          }

          if (v9)
          {
            VADNameForVADID = CMSMUtility_GetVADNameForVADID([v5 unsignedIntValue]);
            v26 = 136315394;
            v27 = "CMSMDebugUtility_DumpDetailedRouteDescriptions";
            v28 = 2114;
            v29 = VADNameForVADID;
            LODWORD(v18) = 22;
            v16 = &v26;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMDebugUtility_PrintDictionary(v6);
        if (dword_1EB75DE40)
        {
          v25 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = v25;
          if (os_log_type_enabled(v11, type))
          {
            v13 = v12;
          }

          else
          {
            v13 = v12 & 0xFFFFFFFE;
          }

          if (v13)
          {
            v26 = 136315138;
            v27 = "CMSMDebugUtility_DumpDetailedRouteDescriptions";
            LODWORD(v18) = 12;
            v16 = &v26;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        ++v4;
      }

      while (v2 != v4);
      result = [(NSDictionary *)obj countByEnumeratingWithState:&v20 objects:v30 count:16];
      v2 = result;
    }

    while (result);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMDebugUtility_DumpMutedSessionBundleIDsList()
{
  v3 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsSessionBasedMutingEnabled())
  {
    if (MX_FeatureFlags_IsCallManagementMuteControlEnabled())
    {
      v1 = [+[MXSessionManager sharedInstance](MXSessionManager mutedSessionBundleIDs];
      if ([(NSSet *)v1 count])
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMDebugUtility_PrintCollection(v1);
      }
    }
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMDebugUtility_DumpDeviceInfo()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F2890CF0];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = MGCopyAnswer();
  CMSMDebugUtility_AppendFieldAndValue(v0, @"Device class =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v2]);

  v3 = MGCopyAnswer();
  CMSMDebugUtility_AppendFieldAndValue(v0, @"Device Name =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3]);

  v4 = MGCopyAnswer();
  CMSMDebugUtility_AppendFieldAndValue(v0, @"Region Code =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v4]);

  v5 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_IsAudiomxd())
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsAudiomxd =", [v5 stringWithFormat:@"%@", v6, v23]);
  v7 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAniPhone())
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAniPhone =", [v7 stringWithFormat:@"%@", v8]);
  v9 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAniPad())
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAniPad =", [v9 stringWithFormat:@"%@", v10]);
  v11 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAnAppleTV())
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAnAppleTV =", [v11 stringWithFormat:@"%@", v12]);
  v13 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAnAppleWatch())
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAnAppleWatch =", [v13 stringWithFormat:@"%@", v14]);
  v15 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAnInternalBuild())
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAnInternalBuild =", [v15 stringWithFormat:@"%@", v16]);
  v17 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAHomePod())
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAHomePod =", [v17 stringWithFormat:@"%@", v18]);
  v19 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_IsAVirtualDevice())
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsVirtualDevice =", [v19 stringWithFormat:@"%@", v20]);
  result = CMSMDebugUtility_DumpOneLineAndResetString(v0);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMDebugUtility_DumpOneLineAndResetString(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a1 length] && dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [a1 setString:{&stru_1F2890CF0, v5, v6}];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMDebugUtility_AppendFieldAndValue(uint64_t result, void *a2, __CFString *a3)
{
  if (a2)
  {
    v4 = result;
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = @"null";
    }

    v6 = [(__CFString *)v5 length];
    v7 = [v4 length];
    if ((v7 + [a2 length] + v6) >= 0x321)
    {
      CMSMDebugUtility_DumpOneLineAndResetString(v4);
      [v4 appendString:@"\ncontinued...\n"];
    }

    [v4 appendString:a2];
    [v4 appendString:@" "];
    [v4 appendString:v5];

    return [v4 appendString:{@", "}];
  }

  return result;
}

__CFString *CMSMDebugUtility_GetSpeechDetechStyleString(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_1E7AEBAF8 + a1);
  }
}

void CMSMDebugUtility_RegisterForCACentralStateDumping()
{
  if (kCMSession_LoadAudioToolboxRoutinesOnce != -1)
  {
    CMSMDebugUtility_RegisterForCACentralStateDumping_cold_1();
  }

  v1 = CACentralStateDumpRegisterSubsystem;
  if (CACentralStateDumpRegisterSubsystem)
  {

    v1(20, @"CMSession", &__block_literal_global_49);
  }
}

void *cmsmLoadAudioToolboxRoutinesOnce()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 4);
  if (result)
  {
    result = dlsym(result, "CACentralStateDumpRegisterSubsystem");
    CACentralStateDumpRegisterSubsystem = result;
  }

  return result;
}

uint64_t FigRoutingContextCopyContextForUUID(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  Value = CFDictionaryGetValue(theDict, @"contextUUID");
  if (!Value)
  {
    return 4294955276;
  }

  v7 = Value;
  cf = 0;
  v8 = FigRoutingManagerCopyContextWithUUID(Value, &cf);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = cf == 0;
  }

  if (v9)
  {
    FigCFDictionaryGetInt64IfPresent();
    v11 = *MEMORY[0x1E695E480];
    if (!a1)
    {
      v12 = *MEMORY[0x1E695E480];
    }

    v17 = 0;
    FigRoutingContextGetClassID();
    v13 = CMDerivedObjectCreate();
    if (v13)
    {
      v8 = v13;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v15 = CFRetain(v7);
      *(DerivedStorage + 8) = v15;
      *DerivedStorage = 0;
      v8 = FigRoutingManagerRegisterContextWithUUID(v17, theDict, 0, v15);
      if (!v8)
      {
        cf = v17;
        goto LABEL_8;
      }
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

LABEL_8:
  if (!a3 || v8)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
  }

  return v8;
}

uint64_t FigRoutingContextCreateSystemAudioContextInternal(const void *a1, uint64_t *a2)
{
  if (FigRoutingContextCreateSystemAudioContextInternal_loggingToken == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  FigRoutingContextCreateSystemAudioContextInternal_cold_1();
  if (!a1)
  {
    return 0;
  }

LABEL_3:
  v4 = *MEMORY[0x1E695E480];
  FigRoutingContextGetClassID();
  result = CMDerivedObjectCreate();
  if (!result)
  {
    v6 = *a2;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = CFRetain(a1);
    result = 0;
    *(DerivedStorage + 8) = v8;
    *DerivedStorage = 1;
  }

  return result;
}

uint64_t __FigRoutingContextCreateSystemAudioContextInternal_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();

  return fig_note_initialize_category_with_default_work();
}

uint64_t FigRoutingContextCreateSystemMirroringContextInternal(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E695E480];
    FigRoutingContextGetClassID();
    result = CMDerivedObjectCreate();
    if (!result)
    {
      v5 = *a2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = CFRetain(v3);
      result = 0;
      *(DerivedStorage + 8) = v7;
      *DerivedStorage = 2;
    }
  }

  return result;
}

uint64_t FigRoutingContextCreateSystemMusicContextInternal(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E695E480];
    FigRoutingContextGetClassID();
    result = CMDerivedObjectCreate();
    if (!result)
    {
      v5 = *a2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = CFRetain(v3);
      result = 0;
      *(DerivedStorage + 8) = v7;
      *DerivedStorage = 3;
    }
  }

  return result;
}

uint64_t FigRoutingContextCreateSidePlayContextInternal(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E695E480];
    FigRoutingContextGetClassID();
    result = CMDerivedObjectCreate();
    if (!result)
    {
      v5 = *a2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = CFRetain(v3);
      result = 0;
      *(DerivedStorage + 8) = v7;
      *DerivedStorage = 12;
    }
  }

  return result;
}

uint64_t FigRoutingContextCreateSystemVideoContextInternal(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E695E480];
    FigRoutingContextGetClassID();
    result = CMDerivedObjectCreate();
    if (!result)
    {
      v5 = *a2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = CFRetain(v3);
      result = 0;
      *(DerivedStorage + 8) = v7;
      *DerivedStorage = 11;
    }
  }

  return result;
}

uint64_t FigRoutingContextCreateSystemRemotePoolContextInternal(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E695E480];
    FigRoutingContextGetClassID();
    result = CMDerivedObjectCreate();
    if (!result)
    {
      v5 = *a2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = CFRetain(v3);
      result = 0;
      *(DerivedStorage + 8) = v7;
      *DerivedStorage = 9;
    }
  }

  return result;
}

uint64_t FigRoutingContextCreateSystemVideoDisplayMenu(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E695E480];
    FigRoutingContextGetClassID();
    result = CMDerivedObjectCreate();
    if (!result)
    {
      v5 = *a2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = CFRetain(v3);
      result = 0;
      *(DerivedStorage + 8) = v7;
      *DerivedStorage = 10;
    }
  }

  return result;
}

uint64_t FigRoutingContextCreateSystemInputContextInternal(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E695E480];
    FigRoutingContextGetClassID();
    result = CMDerivedObjectCreate();
    if (!result)
    {
      v5 = *a2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = CFRetain(v3);
      result = 0;
      *(DerivedStorage + 8) = v7;
      *DerivedStorage = 13;
    }
  }

  return result;
}

void routingContext_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  SharedQueue = FigRoutingManagerGetSharedQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __routingContext_Finalize_block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = v2;
  MXDispatchAsync("routingContext_Finalize", "FigRoutingContext.m", 210, 0, 0, SharedQueue, v5);
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *routingContext_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = Mutable;
  v5 = *DerivedStorage;
  if (v5 > 0xE)
  {
    v6 = "UNKNOWN";
  }

  else
  {
    v6 = off_1E7AEBB30[v5];
  }

  CFStringAppendFormat(Mutable, 0, @"<FigRoutingContext %p> %s uuid %@", a1, v6, *(DerivedStorage + 1));
  return v4;
}

uint64_t routingContext_SetProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    if (dword_1EB75DF40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = *(DerivedStorage + 16);
    *(DerivedStorage + 16) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(*(DerivedStorage + 8), 0, cf);
    FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(*(DerivedStorage + 8), cf[0], @"configUpdateReasonEndedBottomUpRouteChange", 0);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    result = 0;
  }

  else
  {
    result = 4294954512;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void routingContext_collectPickedEndpoints(int a1, CFDictionaryRef theDict, __CFArray *a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(theDict, @"CurrentEndpoints");
  v5 = Value;
  if (!Value)
  {
    goto LABEL_7;
  }

  if (CFArrayGetCount(Value) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v5, 0)) != 0)
  {
    v5 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

LABEL_7:
  theArray = 0;
  if (!a3)
  {
    routingContext_collectPickedEndpoints_cold_1();
    if (!v5)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v5)
  {
    v7 = *MEMORY[0x1E69626B0];
    if (!FigRoutingManagerIsEndpointOfType(v5))
    {
      v17 = *MEMORY[0x1E69626A8];
      if (FigRoutingManagerIsEndpointOfType(v5))
      {
        CFArrayAppendValue(a3, v5);
      }

      goto LABEL_27;
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(CMBaseObject, *MEMORY[0x1E6962270], 0, &theArray);
      v11 = theArray;
      if (v10)
      {
LABEL_25:
        if (v11)
        {
          CFRelease(v11);
        }

        goto LABEL_27;
      }

      if (theArray)
      {
        v12 = 0;
        v13 = *MEMORY[0x1E69622F8];
        while (CFArrayGetCount(v11) > v12)
        {
          cf[0] = 0;
          v14 = CFArrayGetValueAtIndex(theArray, v12);
          v15 = FigEndpointGetCMBaseObject();
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v16 && !v16(v15, v13, 0, cf))
          {
            CFArrayAppendValue(a3, v14);
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          ++v12;
          v11 = theArray;
          if (!theArray)
          {
            goto LABEL_27;
          }
        }

        v11 = theArray;
        goto LABEL_25;
      }
    }

LABEL_27:
    CFRelease(v5);
    goto LABEL_28;
  }

  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_28:
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t routingContext_SelectRoute(const void *a1, const void *a2, const void *a3)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __routingContext_SelectRoute_block_invoke;
    v11[3] = &__block_descriptor_56_e5_v8__0l;
    v11[4] = a1;
    v11[5] = a2;
    v11[6] = a3;
    MXDispatchAsync("routingContext_SelectRoute", "FigRoutingContext.m", 636, 0, 0, SharedQueue, v11);
    v9 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_SelectRoute" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v9);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_SelectRouteDescriptor(const void *a1, const void *a2, const void *a3)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 1);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __routingContext_SelectRouteDescriptor_block_invoke;
    v11[3] = &__block_descriptor_56_e5_v8__0l;
    v11[4] = a1;
    v11[5] = a2;
    v11[6] = a3;
    MXDispatchAsync("routingContext_SelectRouteDescriptor", "FigRoutingContext.m", 707, 0, 0, SharedQueue, v11);
    v9 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_SelectRouteDescriptor" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v9);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_CopyRoute(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v11 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    SharedQueue = FigRoutingManagerGetSharedQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __routingContext_CopyRoute_block_invoke;
    v9[3] = &unk_1E7AE7140;
    v9[4] = &v10;
    v9[5] = a1;
    v9[6] = a2;
    MXDispatchAsyncAndWait("routingContext_CopyRoute", "FigRoutingContext.m", 852, 0, 0, SharedQueue, v9);
    v7 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_CopyRoute" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v7);
    IsOperationOnSystemInputContextAllowedInternal = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B19050E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_SelectRoutes(const void *a1, const void *a2, const void *a3)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __routingContext_SelectRoutes_block_invoke;
    v12[3] = &__block_descriptor_64_e5_v8__0l;
    v12[4] = a2;
    v12[5] = DerivedStorage;
    v12[6] = a3;
    v12[7] = a1;
    MXDispatchAsync("routingContext_SelectRoutes", "FigRoutingContext.m", 1293, 0, 0, SharedQueue, v12);
    v10 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_SelectRoutes" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v10);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_SelectRouteDescriptors(const void *a1, const void *a2, const void *a3)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __routingContext_SelectRouteDescriptors_block_invoke;
    v12[3] = &__block_descriptor_64_e5_v8__0l;
    v12[4] = a2;
    v12[5] = DerivedStorage;
    v12[6] = a3;
    v12[7] = a1;
    MXDispatchAsync("routingContext_SelectRouteDescriptors", "FigRoutingContext.m", 1384, 0, 0, SharedQueue, v12);
    v10 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_SelectRouteDescriptors" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v10);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_CopySelectedRouteForRemoteControl(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v9 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    SharedQueue = FigRoutingManagerGetSharedQueue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __routingContext_CopySelectedRouteForRemoteControl_block_invoke;
    v7[3] = &unk_1E7AE7140;
    v7[4] = &v8;
    v7[5] = DerivedStorage;
    v7[6] = a2;
    MXDispatchAsyncAndWait("routingContext_CopySelectedRouteForRemoteControl", "FigRoutingContext.m", 1777, 0, 0, SharedQueue, v7);
    IsOperationOnSystemInputContextAllowedInternal = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1905488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_AddToSelectedRoutes(const void *a1, const void *a2, const void *a3)
{
  cf[25] = *MEMORY[0x1E69E9840];
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v20 = 0;
    cf[0] = 0;
    if (a2)
    {
      v8 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(CMBaseObject, *MEMORY[0x1E69621E8], v8, cf);
      }

      v11 = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(v11, *MEMORY[0x1E69620F8], v8, &v20);
      }
    }

    if (dword_1EB75DF40)
    {
      v19 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (v20)
    {
      CFRelease(v20);
      v20 = 0;
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __routingContext_AddToSelectedRoutes_block_invoke;
    v17[3] = &__block_descriptor_64_e5_v8__0l;
    v17[4] = a2;
    v17[5] = DerivedStorage;
    v17[6] = a3;
    v17[7] = a1;
    MXDispatchAsync("routingContext_AddToSelectedRoutes", "FigRoutingContext.m", 1813, 0, 0, SharedQueue, v17);
  }

  v15 = *MEMORY[0x1E69E9840];
  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_AddToSelectedRouteDescriptors(const void *a1, const __CFDictionary *a2, const void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  result = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v8 = DerivedStorage;
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      if (a2)
      {
        Value = CFDictionaryGetValue(a2, @"RouteName");
        v18[3] = Value;
        v10 = CFDictionaryGetValue(a2, @"RouteUID");
      }

      else
      {
        v10 = 0;
      }

      if (dword_1EB75DF40)
      {
        v16 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      SharedQueue = FigRoutingManagerGetSharedQueue();
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __routingContext_AddToSelectedRouteDescriptors_block_invoke;
      v14[3] = &unk_1E7AEA9A8;
      v14[4] = &v17;
      v14[5] = a2;
      v14[6] = v8;
      v14[7] = v10;
      v14[8] = a3;
      v14[9] = a1;
      MXDispatchAsync("routingContext_AddToSelectedRouteDescriptors", "FigRoutingContext.m", 1885, 0, 0, SharedQueue, v14);
      _Block_object_dispose(&v17, 8);
      result = 0;
    }

    else
    {
      result = 4294955276;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1905AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_RemoveFromSelectedRouteDescriptors(const void *a1, const void *a2, const void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 1);
  *(v18 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      if (a2)
      {
        Value = CFDictionaryGetValue(a2, @"RouteName");
        v9 = CFDictionaryGetValue(a2, @"RouteUID");
      }

      else
      {
        v9 = 0;
        Value = 0;
      }

      if (dword_1EB75DF40)
      {
        v16 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      SharedQueue = FigRoutingManagerGetSharedQueue();
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __routingContext_RemoveFromSelectedRouteDescriptors_block_invoke;
      v14[3] = &unk_1E7AE7AB8;
      v14[6] = DerivedStorage;
      v14[7] = Value;
      v14[8] = v9;
      v14[9] = a3;
      v14[4] = &v17;
      v14[5] = a2;
      v14[10] = a1;
      MXDispatchAsync("routingContext_RemoveFromSelectedRouteDescriptors", "FigRoutingContext.m", 2071, 0, 0, SharedQueue, v14);
      IsOperationOnSystemInputContextAllowedInternal = *(v18 + 6);
    }

    else
    {
      IsOperationOnSystemInputContextAllowedInternal = 4294955276;
    }
  }

  _Block_object_dispose(&v17, 8);
  v12 = *MEMORY[0x1E69E9840];
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1905DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v11 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    SharedQueue = FigRoutingManagerGetSharedQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __routingContext_CreateCommChannel_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = DerivedStorage;
    v9[6] = a2;
    v9[7] = a3;
    MXDispatchAsyncAndWait("routingContext_CreateCommChannel", "FigRoutingContext.m", 966, 0, 0, SharedQueue, v9);
    IsOperationOnSystemInputContextAllowedInternal = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1905F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_SendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v20 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (dword_1EB75DF40)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __routingContext_SendData_block_invoke;
    v16[3] = &unk_1E7AE7AB8;
    v16[6] = a1;
    v16[7] = a4;
    v16[4] = &v19;
    v16[5] = DerivedStorage;
    v16[8] = a5;
    v16[9] = a2;
    v16[10] = a3;
    MXDispatchAsyncAndWait("routingContext_SendData", "FigRoutingContext.m", 1061, 0, 0, SharedQueue, v16);
    IsOperationOnSystemInputContextAllowedInternal = *(v20 + 6);
  }

  _Block_object_dispose(&v19, 8);
  v14 = *MEMORY[0x1E69E9840];
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1906178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v13 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (dword_1EB75DF40)
    {
      v11 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __routingContext_CloseCommChannel_block_invoke;
    v9[3] = &unk_1E7AE7140;
    v9[4] = &v12;
    v9[5] = DerivedStorage;
    v9[6] = a2;
    MXDispatchAsyncAndWait("routingContext_CloseCommChannel", "FigRoutingContext.m", 1143, 0, 0, SharedQueue, v9);
    IsOperationOnSystemInputContextAllowedInternal = *(v13 + 6);
  }

  _Block_object_dispose(&v12, 8);
  v7 = *MEMORY[0x1E69E9840];
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B19063BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v20 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (dword_1EB75DF40)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __routingContext_SendCommand_block_invoke;
    v16[3] = &unk_1E7AE7AB8;
    v16[6] = a1;
    v16[7] = a4;
    v16[4] = &v19;
    v16[5] = DerivedStorage;
    v16[8] = a5;
    v16[9] = a2;
    v16[10] = a3;
    MXDispatchAsyncAndWait("routingContext_SendCommand", "FigRoutingContext.m", 1233, 0, 0, SharedQueue, v16);
    IsOperationOnSystemInputContextAllowedInternal = *(v20 + 6);
  }

  _Block_object_dispose(&v19, 8);
  v14 = *MEMORY[0x1E69E9840];
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1906620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_CreateCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v12 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    if (*CMBaseObjectGetDerivedStorage() == 9)
    {
      DataTransmissionQueue = FigRoutingManager_GetDataTransmissionQueue();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __routingContext_CreateCommChannelForDeviceID_block_invoke;
      v10[3] = &unk_1E7AE7A48;
      v10[4] = &v11;
      v10[5] = a2;
      v10[6] = a3;
      v10[7] = a4;
      MXDispatchSync("routingContext_CreateCommChannelForDeviceID", "FigRoutingContext.m", 1004, 0, 0, DataTransmissionQueue, v10);
      IsOperationOnSystemInputContextAllowedInternal = *(v12 + 6);
    }

    else
    {
      IsOperationOnSystemInputContextAllowedInternal = 4294955271;
      *(v12 + 6) = -12025;
    }
  }

  _Block_object_dispose(&v11, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1906770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_SendDataForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v16 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    if (*CMBaseObjectGetDerivedStorage() == 9)
    {
      DataTransmissionQueue = FigRoutingManager_GetDataTransmissionQueue();
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __routingContext_SendDataForDeviceID_block_invoke;
      v14[3] = &unk_1E7AEA9A8;
      v14[4] = &v15;
      v14[5] = a2;
      v14[6] = a3;
      v14[7] = a4;
      v14[8] = a5;
      v14[9] = a6;
      MXDispatchSync("routingContext_SendDataForDeviceID", "FigRoutingContext.m", 1116, 0, 0, DataTransmissionQueue, v14);
      IsOperationOnSystemInputContextAllowedInternal = *(v16 + 6);
    }

    else
    {
      IsOperationOnSystemInputContextAllowedInternal = 4294955271;
      *(v16 + 6) = -12025;
    }
  }

  _Block_object_dispose(&v15, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B19068CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_CloseCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v10 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    if (*CMBaseObjectGetDerivedStorage() == 9)
    {
      DataTransmissionQueue = FigRoutingManager_GetDataTransmissionQueue();
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __routingContext_CloseCommChannelForDeviceID_block_invoke;
      v8[3] = &unk_1E7AE7140;
      v8[4] = &v9;
      v8[5] = a2;
      v8[6] = a3;
      MXDispatchSync("routingContext_CloseCommChannelForDeviceID", "FigRoutingContext.m", 1178, 0, 0, DataTransmissionQueue, v8);
      IsOperationOnSystemInputContextAllowedInternal = *(v10 + 6);
    }

    else
    {
      IsOperationOnSystemInputContextAllowedInternal = 4294955271;
      *(v10 + 6) = -12025;
    }
  }

  _Block_object_dispose(&v9, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1906A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_ResetPredictedSelectedRouteDescriptor(uint64_t a1)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 1);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (MX_FeatureFlags_IsSystemInputPickerEnabled() && FigRoutingManagerContextUtilities_GetContextType(*(DerivedStorage + 8)) == 13)
    {
      [+[MXUserPreferredInputRouteCache sharedInstance](MXUserPreferredInputRouteCache clearUserPreferredRoute:"clearUserPreferredRoute:", FigCFDictionaryGetValue()];
    }

    else
    {
      SharedQueue = FigRoutingManagerGetSharedQueue();
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __routingContext_ResetPredictedSelectedRouteDescriptor_block_invoke;
      v5[3] = &__block_descriptor_40_e5_v8__0l;
      v5[4] = DerivedStorage;
      MXDispatchAsyncAndWait("routingContext_ResetPredictedSelectedRouteDescriptor", "FigRoutingContext.m", 1685, 0, 0, SharedQueue, v5);
    }
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_CopySelectedBufferedEndpointForTesting(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  SharedQueue = FigRoutingManagerGetSharedQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __routingContext_CopySelectedBufferedEndpointForTesting_block_invoke;
  v10[3] = &unk_1E7AE7140;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = a2;
  MXDispatchAsyncAndWait("routingContext_CopySelectedBufferedEndpointForTesting", "FigRoutingContext.m", 1750, 0, 0, SharedQueue, v10);
  v8 = v12 + 3;
  v7 = v12[3];
  if (a3)
  {
    *a3 = v7;
LABEL_5:
    *v8 = 0;
    goto LABEL_6;
  }

  if (v7)
  {
    CFRelease(v7);
    v8 = v12 + 3;
    goto LABEL_5;
  }

LABEL_6:
  _Block_object_dispose(&v11, 8);
  return 0;
}

void sub_1B1906C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_AddToSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = routingContext_AddClientRouteRequestIDToDictionary(a3);
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXRoutingContextCallbackHelper initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:]([MXRoutingContextCallbackHelper alloc], "initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:", a1, [v9 objectForKey:{@"clientRouteRequestID", v15, v16}], objc_msgSend(v9, "objectForKey:", @"clientCorrelationID"), a4, a5);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v11)
  {
    v12 = v11(a1, a2, v9);
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 4294954514;
  if (v9)
  {
LABEL_7:
    CFRelease(v9);
  }

LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t routingContext_RemoveFromSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = routingContext_AddClientRouteRequestIDToDictionary(a3);
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXRoutingContextCallbackHelper initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:]([MXRoutingContextCallbackHelper alloc], "initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:", a1, [v9 objectForKey:{@"clientRouteRequestID", v15, v16}], objc_msgSend(v9, "objectForKey:", @"clientCorrelationID"), a4, a5);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v11)
  {
    v12 = v11(a1, a2, v9);
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 4294954514;
  if (v9)
  {
LABEL_7:
    CFRelease(v9);
  }

LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t routingContext_SelectRouteDescriptorWithCompletionCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = routingContext_AddClientRouteRequestIDToDictionary(a3);
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXRoutingContextCallbackHelper initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:]([MXRoutingContextCallbackHelper alloc], "initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:", a1, [v9 objectForKey:{@"clientRouteRequestID", v15, v16}], objc_msgSend(v9, "objectForKey:", @"clientCorrelationID"), a4, a5);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v11)
  {
    v12 = v11(a1, a2, v9);
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 4294954514;
  if (v9)
  {
LABEL_7:
    CFRelease(v9);
  }

LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t routingContext_SelectRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = routingContext_AddClientRouteRequestIDToDictionary(a3);
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXRoutingContextCallbackHelper initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:]([MXRoutingContextCallbackHelper alloc], "initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:", a1, [v9 objectForKey:{@"clientRouteRequestID", v15, v16}], objc_msgSend(v9, "objectForKey:", @"clientCorrelationID"), a4, a5);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v11)
  {
    v12 = v11(a1, a2, v9);
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 4294954514;
  if (v9)
  {
LABEL_7:
    CFRelease(v9);
  }

LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t routingContext_ReportModificationMetrics(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    [objc_msgSend(a2 "clientModificationStartedTimestamp")];
    [objc_msgSend(a2 "clientModificationFinishedTimestamp")];
    [objc_msgSend(a2 "serverModificationStartedTimestamp")];
    [objc_msgSend(a2 "serverModificationFinishedTimestamp")];
    if (dword_1EB75DF40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DF40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v5 = [[MXRoutingContextReportingService alloc] initWithModificationMetrics:a2 useMockService:0];
    [(MXRoutingContextReportingService *)v5 sendModificationResult];

    result = 0;
  }

  else
  {
    routingContext_ReportModificationMetrics_cold_1(v8);
    result = v8[0];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void routingContext_sendDataCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    v8 = a4[1];
    if (v8)
    {
      v8(*a4, a2, a3, a4[2]);
    }

    CFRelease(*a4);
    free(a4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void routingContext_sendCommandCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    v8 = a4[1];
    if (v8)
    {
      v8(*a4, a3, a2, a4[2]);
    }

    CFRelease(*a4);
    free(a4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

id routingContext_AddClientRouteRequestIDToDictionary(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    v3 = [a1 mutableCopy];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v4 = v3;
  [v3 setObject:objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0] forKey:{"UUID"), "UUIDString"), @"clientRouteRequestID"}];
  objc_autoreleasePoolPop(v2);
  return v4;
}

void MXInitialize()
{
  if (MXInitialize_onceToken != -1)
  {
    MXInitialize_cold_1();
  }
}

void __MXInitialize_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  +[MXInitialization start];
  cmsmInitializeCMSessionManager();
}

id MXSystemControllerSetup()
{
  gMXSystemControllerList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  gSidekickMXSystemControllerList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  result = objc_alloc_init(MEMORY[0x1E696AD10]);
  gMXSystemControllerListLock = result;
  return result;
}

uint64_t MXSystemMirroring_PickEndpoint(const void *a1, const void *a2, CFDictionaryRef theDict, const void *a4)
{
  v8 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(theDict);
  if (!a2)
  {
    mxSystemMirroring_disconnect(a1, theDict);
    v9 = 0;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_3;
  }

  v9 = mxSystemMirroring_preprocessPickEndpoint(a2, a1, v8, a4);
  if (v8)
  {
LABEL_3:
    CFRelease(v8);
  }

  return v9;
}

void mxSystemMirroring_disconnect(uint64_t a1, const __CFDictionary *a2)
{
  v24[22] = *MEMORY[0x1E69E9840];
  FigRoutingContextUtilities_LogCurrentState(a1, a2);
  v4 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a2);
  FigRoutingManagerLogRoutingRequestDetails(@"mxSystemMirroring_disconnect - ", 0, 0, 0, a1, v4);
  v24[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(v24);
  if (FigRoutingManagerUtilities_IsEndpointPicked(0, v24[0]))
  {
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v24[0], v4, @"configUpdateReasonEndedNoop");
  }

  else
  {
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v24[0], a2, @"configUpdateReasonStarted");
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
    v22 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v24[0], 0, &v22);
    v21 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(cf, 0, &v21);
    v20 = 0;
    if (v22)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v20);
      }
    }

    if (v21 == v22)
    {
      v8 = *MEMORY[0x1E69626A8];
      if (FigRoutingManagerIsEndpointOfType(v22))
      {
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManager_RouteAwayFromAirPlayEndpoint(v22, v24[0], 1);
        FigRoutingManagerLogEndpointID(@"Going to deactivate endpoint with name=", v22, @"because most recent currently activating endpoint is NULL", 1);
        mxSystemMirroring_iOSDeactivateEndpoint(v22, 1, a2);
        v10 = CMSMUtility_CopyCurrentRouteIdentifiers();
        NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
        if (NumberOfCurrentOutputPorts)
        {
          v12 = NumberOfCurrentOutputPorts;
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
          v14 = 0;
          v15 = *MEMORY[0x1E69618F8];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
            v17 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 0, v15, cf);
            if (v17)
            {
              v18 = v17;
              CFArrayAppendValue(Mutable, v17);
              CFRelease(v18);
            }

            ++v14;
          }

          while (v12 != v14);
        }

        else
        {
          Mutable = 0;
        }

        v19 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(Mutable, 0);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(cf, Mutable, @"configUpdateReasonEndedSuccess", a2, v19);
        FigRoutingManagerContextUtilities_SetPickingState(cf, 0);
        if (v19)
        {
          CFRelease(v19);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }

    if (!MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed())
    {
      FigRoutingManagerContextUtilities_SetPickedEndpoints(v24[0], 0, @"configUpdateReasonEndedSuccess", a2, 0);
    }

    mxSystemMirroring_iOSDeactivateEndpoint(v22, 1, a2);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v22)
    {
      CFRelease(v22);
      v22 = 0;
    }

    if (v21)
    {
      CFRelease(v21);
      v21 = 0;
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  if (v24[0])
  {
    CFRelease(v24[0]);
    v24[0] = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t mxSystemMirroring_preprocessPickEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69626A8];
  IsEndpointOfType = FigRoutingManagerIsEndpointOfType(a1);
  if (IsEndpointOfType)
  {
    FigRoutingContextUtilities_LogCurrentState(IsEndpointOfType, v10);
    v53 = 0;
    v11 = *MEMORY[0x1E69621E8];
    v12 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(CMBaseObject, v11, v12, &v53);
    }

    v45 = v11;
    v15 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
    FigRoutingManagerLogRoutingRequestDetails(@"mxSystemMirroring_preprocessPickEndpoint - ", a1, 0, 0, a2, v15);
    v52 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(a2, &v52);
    allocator = v12;
    Mutable = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, a1);
    v16 = 1;
    FigRoutingManagerContextUtilities_SetPickingState(a2, 1);
    FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint(0, a2, a1, v15, a4);
    v50 = 0;
    v51 = 0;
    FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(&v50, &v51, 0);
    v17 = FigRoutingManagerContextUtilities_CopyScreenEndpointUUID(a2);
    if (v17)
    {
      v18 = v17;
      IsRoutedToLocalAirplayReceiver = FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver(a2);
      v16 = IsRoutedToLocalAirplayReceiver != 0;
      if (!IsRoutedToLocalAirplayReceiver && dword_1EB75DF20)
      {
        LODWORD(cf) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFRelease(v18);
    }

    if (!v50)
    {
      goto LABEL_19;
    }

    IsCurrentRouteHandoff = FigRoutingManagerUtilities_IsCurrentRouteHandoff();
    v23 = !v16;
    if (IsCurrentRouteHandoff)
    {
      v23 = 1;
    }

    if (v23)
    {
LABEL_19:
      v44 = a4;
      v46 = v15;
      theArray[0] = 0;
      v54 = 0;
      FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(-1, theArray, &v54, 0, 0);
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
        if (Count >= 1)
        {
          v28 = Count;
          v29 = 0;
          v30 = *MEMORY[0x1E69617E8];
          v31 = *MEMORY[0x1E69617F8];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v29);
            v33 = CFArrayGetValueAtIndex(v54, v29);
            if (ValueAtIndex != a1 || v33 != a2)
            {
              v35 = v33;
              v36 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              FigCFDictionarySetValue();
              cf = 0;
              FigRoutingManagerCreateEndpointDeactivateCompletionContext(v35, &cf);
              FigRoutingManagerLogEndpointID(@"Preprocess - Calling to deactivate endpoint with name=", ValueAtIndex, 0, 1);
              FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(v35, ValueAtIndex, @"configUpdateReasonEndedUserCancelled");
              mxSystemMirroring_iOSDeactivateEndpoint(ValueAtIndex, 0, 0);
              if (v36)
              {
                CFRelease(v36);
              }
            }

            ++v29;
          }

          while (v28 != v29);
        }
      }

      v15 = v46;
      v21 = mxSystemMirroring_iOSActivateEndpoint(a1, a2, v46, v44);
      if (theArray[0])
      {
        CFRelease(theArray[0]);
        theArray[0] = 0;
      }

      v38 = Mutable;
      if (v54)
      {
        CFRelease(v54);
      }
    }

    else
    {
      FigRoutingManagerContextUtilities_SetPickingState(a2, 2);
      CMSMAP_MakeAirPlayHandOffPortRoutable(1, a2);
      cf = 0;
      v24 = FigEndpointGetCMBaseObject();
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25)
      {
        v25(v24, v45, v12, &cf);
      }

      if (FigRoutingManagerIsEndpointOfType(v50))
      {
        if (dword_1EB75DF20)
        {
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        mxSystemMirroring_iOSDeactivateEndpoint(v50, 1, 0);
      }

      else
      {
        v39 = *MEMORY[0x1E69626B0];
        if (FigRoutingManagerIsEndpointOfType(v50))
        {
          if (dword_1EB75DF20)
          {
            v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRoutingManagerRemoveAllSubEndpointsFromAggregate(v50, v51, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
          CMSMVAUtility_DestroyMusicVADIfNeeded(v51);
          FigRoutingManagerContextUtilities_SetPickedEndpoints(v51, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
        }
      }

      v21 = mxSystemMirroring_iOSActivateEndpoint(a1, a2, v15, a4);
      if (cf)
      {
        CFRelease(cf);
      }

      v38 = Mutable;
    }

    if (v51)
    {
      CFRelease(v51);
      v51 = 0;
    }

    v41 = v52;
    if (v52)
    {
      CFRelease(v52);
      v52 = 0;
    }

    FigRoutingContextUtilities_LogCurrentState(v41, v37);
    if (v53)
    {
      CFRelease(v53);
      v53 = 0;
    }

    if (v38)
    {
      CFRelease(v38);
    }

    if (v50)
    {
      CFRelease(v50);
      v50 = 0;
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    v21 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t MXSystemMirroring_PickRouteDescriptor(const void *a1, CFDictionaryRef theDict, const __CFDictionary *a3, const __CFDictionary *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"RouteName");
    CFDictionaryGetValue(theDict, @"RouteUID");
  }

  if (dword_1EB75DF20)
  {
    LODWORD(theArray) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!FigCFDictionaryGetCount())
  {
    mxSystemMirroring_disconnect(a1, a3);
LABEL_38:
    result = 0;
    goto LABEL_39;
  }

  v9 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(theDict, a1);
  if (v9)
  {
    v10 = v9;
    *type = 0;
    theArray = 0;
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(type);
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(*type, &theArray);
    if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
    {
      v12 = Count;
      if (CFArrayGetValueAtIndex(theArray, 0) == v10)
      {
        v16 = 0;
        v17 = 1;
      }

      else
      {
        v13 = 1;
        while (1)
        {
          v14 = v13;
          if (v12 == v13)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          v13 = v14 + 1;
          if (ValueAtIndex == v10)
          {
            v16 = v14;
            goto LABEL_21;
          }
        }

        v16 = 0;
LABEL_21:
        v17 = v14 < v12;
      }
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    v25 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v22)
    {
      v22(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v25);
    }

    if (v17)
    {
      if (dword_1EB75DF20)
      {
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cf[0] = 0;
      FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex(*type, v16, cf);
      FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex(*type, v16);
      FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo(*type, cf[0]);
      FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*type, a3, a4);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    else if (FigRoutingManagerUtilities_IsEndpointPicked(v10, *type))
    {
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*type, a3, @"configUpdateReasonEndedNoop");
    }

    else
    {
      mxSystemMirroring_preprocessPickEndpoint(v10, a1, a3, a4);
    }

    if (v25)
    {
      CFRelease(v25);
      v25 = 0;
    }

    CFRelease(v10);
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (*type)
    {
      CFRelease(*type);
    }

    goto LABEL_38;
  }

  LODWORD(theArray) = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v19 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v19, @"configUpdateReasonEndedFailed");
  if (v19)
  {
    CFRelease(v19);
  }

  result = 4294954296;
LABEL_39:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void MXSystemMirroring_iOSHandleEndpointAudioActivation(void *a1, uint64_t a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_30;
  }

  v23 = 0;
  v9 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E69622F8], v9, &v23);
  }

  v22 = 0;
  v12 = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, *MEMORY[0x1E69621E8], v9, &v22);
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRoutingManagerStartDeactivateAirPlayEndpointTimer(a1, a3, 5.0);
  v15 = *MEMORY[0x1E69625E8];
  AirPlayPortForEndpoint = CMSMAP_FindAirPlayPortForEndpoint(a1);
  if (AirPlayPortForEndpoint)
  {
    v17 = AirPlayPortForEndpoint;
    FigRoutingManagerStopDeactivateAirPlayEndpointTimer();
    FigRoutingManagerContextUtilities_SetPickingState(a4, 9);
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"defaultAudioToLocal");
    }

    else
    {
      Value = *MEMORY[0x1E695E4C0];
    }

    if (Value == *MEMORY[0x1E695E4D0])
    {
      if (dword_1EB75DF20)
      {
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a4, a1, @"configUpdateReasonEndedSuccess", a5);
      FigRoutingManagerPostProcessPickEndpoint(a1, a4);
    }

    else
    {
      if (!CMSMVAUtility_MakePortRoutable(v17, a4))
      {
        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a4, a1, @"configUpdateReasonEndedSuccess", a5);
        cf[0] = 0;
        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(cf[0], a1, @"configUpdateReasonEndedSuccess", a5);
        FigRoutingManagerPostProcessPickEndpoint(a1, a4);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        goto LABEL_24;
      }

      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a4, 0, @"configUpdateReasonEndedFailed");
      if (dword_1EB75DF20)
      {
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      mxSystemMirroring_iOSDeactivateEndpoint(a1, 0, 0);
    }

    FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
LABEL_24:
    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(cf);
    FigRoutingManagerContextUtilities_StopMirroringTimer(cf[0]);
    FigRoutingManagerContextUtilities_StopDiscoveryTimer(cf[0]);
    FigRoutingManagerContextUtilities_SetScreenEndpoint(cf[0], 0);
    FigRoutingManagerContextUtilities_SetAudioEndpoint(cf[0], 0);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_26;
  }

  FigRoutingManagerContextUtilities_SetPickingState(a4, 8);
LABEL_26:
  if (v22)
  {
    CFRelease(v22);
    v22 = 0;
  }

  if (v23)
  {
    CFRelease(v23);
  }

LABEL_30:
  v21 = *MEMORY[0x1E69E9840];
}

void mxSystemMirroring_iOSDeactivateEndpoint(const void *a1, int a2, uint64_t a3)
{
  v34[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_36;
  }

  SharedManager = FigRoutingManagerGetSharedManager();
  v32 = 0;
  v7 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(CMBaseObject, *MEMORY[0x1E69621E8], v7, &v32);
  }

  if (dword_1EB75DF20)
  {
    LODWORD(v29) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v34[0] = 0;
  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x1E6962100], v7, v34);
  }

  if (v34[0] == *MEMORY[0x1E695E4D0])
  {
    CFRetain(a1);
    v15 = *(SharedManager + 1);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __mxSystemMirroring_iOSDeactivateEndpoint_block_invoke;
    v30[3] = &__block_descriptor_40_e5_v8__0l;
    v30[4] = a1;
    MXDispatchAsync("mxSystemMirroring_iOSDeactivateEndpoint", "MXSystemMirroring_Embedded.m", 482, 0, 0, v15, v30);
    cf = 0;
    v16 = FigEndpointGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(v16, *MEMORY[0x1E6962238], v7, &cf);
      v18 = cf;
    }

    else
    {
      v18 = 0;
    }

    FigRoutingManagerGetFigEndpointFeatures(a1, v18);
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v20 = *MEMORY[0x1E69617E8];
    v21 = *MEMORY[0x1E69617F8];
    if (a2)
    {
      v22 = *MEMORY[0x1E69617F8];
    }

    FigCFDictionarySetValue();
    FigRoutingManagerUnregisterFromFigEndpointNotifications(a1);
    v29 = 0;
    FigRoutingManagerCreateEndpointDeactivateCompletionContext(cf, &v29);
    v23 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v24)
      {
        v24(a1, 0);
      }
    }

    v25 = v29;
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v26)
    {
      v26(a1, Mutable, mxSystemMirroring_iOSEndpointDeactivateCompletionCallback, v25);
    }

    if (FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      v27 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedFailed;
    }

    else if (FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      v27 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedSuccess;
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_28;
      }

      v27 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedBottomUpRouteChange;
    }

    FigRoutingManagerContextUtilities_SetPickedEndpoints(cf, 0, *v27, a3, 0);
LABEL_28:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_32;
  }

  v13 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v14)
    {
      v14(a1, 0);
    }

    FigEndpointDeactivate();
  }

LABEL_32:
  if (v34[0])
  {
    CFRelease(v34[0]);
    v34[0] = 0;
  }

  if (v32)
  {
    CFRelease(v32);
  }

LABEL_36:
  v28 = *MEMORY[0x1E69E9840];
}

void MXSystemMirroring_HandleNewWirelessPorts(const void *a1, const void *a2)
{
  v12 = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(a2, &v12);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(a2, &cf);
  v10 = 0;
  FigRoutingManagerContextUtilities_GetPickingState(a2, &v10);
  if (v10 != 8)
  {
    if (v10 != 5 || !CMSMVAUtility_IsPortAvailableForEndpoint(v12, a1))
    {
      goto LABEL_8;
    }

    v4 = 6;
    goto LABEL_7;
  }

  if (CMSMVAUtility_IsPortAvailableForEndpoint(v12, a1))
  {
    v4 = 9;
LABEL_7:
    FigRoutingManagerContextUtilities_SetPickingState(a2, v4);
  }

LABEL_8:
  FigRoutingManagerContextUtilities_GetPickingState(a2, &v10);
  if (v10 == 9)
  {
    v9 = 0;
    FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, v12, &v9);
    v8 = 0;
    FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures(a2, v12, &v8);
    theDict = 0;
    FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpointInfo(a2, &theDict);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"CurrentlyActivatingEndpointsInfo_ClientRouteChangeOptions");
      v6 = CFDictionaryGetValue(theDict, @"CurrentlyActivatingEndpointsInfo_InternalRouteChangeOptions");
    }

    else
    {
      Value = 0;
      v6 = 0;
    }

    mxSystemMirroring_iOSHandleFigEndpointFeaturesActivation(v12, v8, v9, a2, Value, v6);
    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  if (v12)
  {
    CFRelease(v12);
    v12 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void mxSystemMirroring_iOSHandleFigEndpointFeaturesActivation(void *a1, char a2, uint64_t a3, const void *a4, const __CFDictionary *a5, uint64_t a6)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((a2 & 2) != 0)
    {
      cf[0] = 0;
      FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(cf);
      if (!MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed() || MXSystemMirroring_IsDefaultRouteAirPlayReceiver() && FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver(cf[0]))
      {
        MXSystemMirroring_iOSHandleEndpointAudioActivation(a1, v12, a3, a4, a5);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    if (a2)
    {
      v25 = 0;
      v26 = 0;
      v13 = *MEMORY[0x1E6962178];
      IsPropertyTrue = FigEndpointUtility_EndpointPredicate_IsPropertyTrue();
      v15 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(CMBaseObject, *MEMORY[0x1E69622F8], v15, &v26);
      }

      v18 = FigEndpointGetCMBaseObject();
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(v18, *MEMORY[0x1E69622F0], v15, &v25);
        v20 = v25;
      }

      else
      {
        v20 = 0;
      }

      CMScreenHandleActivation(v26, v20);
      v21 = *MEMORY[0x1E69626C0];
      if (!(FigRoutingManagerIsEndpointOfType(a1) | IsPropertyTrue))
      {
        v22 = *MEMORY[0x1E69625F8];
        FigEndpointCopyFirstStreamOfType();
      }

      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed() && (!MXSystemMirroring_IsDefaultRouteAirPlayReceiver() || !FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver(a4)))
      {
        FigRoutingManagerPostProcessPickEndpoint(a1, a4);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a4, a1, @"configUpdateReasonEndedSuccess", a6);
        FigRoutingManagerContextUtilities_StopMirroringTimer(a4);
      }

      if (v26)
      {
        CFRelease(v26);
        v26 = 0;
      }

      if (v25)
      {
        CFRelease(v25);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t MXSystemMirroring_IsDefaultRouteAirPlayReceiver()
{
  v3 = *MEMORY[0x1E69E9840];
  if (MXSystemMirroring_IsDefaultRouteAirPlayReceiver_onceToken != -1)
  {
    MXSystemMirroring_IsDefaultRouteAirPlayReceiver_cold_1();
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = MXSystemMirroring_IsDefaultRouteAirPlayReceiver_isSystemMirroringDefaultRouteAirPlayReceiver;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed()
{
  v3 = *MEMORY[0x1E69E9840];
  if (MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed_onceToken != -1)
  {
    MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed_cold_1();
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed_isMirroringScreenAudioSeperate;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mxSystemMirroring_iOSActivateEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  v54[16] = *MEMORY[0x1E69E9840];
  v8 = FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
  EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(a1, a2, a3);
  FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(a1, a2);
  cf = 0;
  v10 = *MEMORY[0x1E69621E8];
  v41 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(CMBaseObject, v10, v41, &cf);
  }

  v39 = v10;
  if (dword_1EB75DF20)
  {
    LODWORD(v47) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v47;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v48 = 136315650;
      v49 = "mxSystemMirroring_iOSActivateEndpoint";
      v50 = 2114;
      v51 = cf;
      v52 = 2048;
      v53[0] = FigEndpointFeatures;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    EndpointDelegateContext = FigRoutingManagerCreateEndpointDelegateContext();
    v18 = malloc_type_malloc(0x18uLL, 0x60040149E097CuLL);
    v19 = a1 ? CFRetain(a1) : 0;
    v18[1] = v19;
    v18[2] = EndpointDelegateContext;
    *v18 = 0;
    SharedManager = FigRoutingManagerGetSharedManager();
    v21 = SharedManager[7];
    FigSimpleMutexLock();
    if (SharedManager[8])
    {
      *SharedManager[9] = v18;
    }

    else
    {
      SharedManager[8] = v18;
    }

    SharedManager[9] = v18;
    v22 = SharedManager[7];
    FigSimpleMutexUnlock();
    v54[3] = 0;
    v54[4] = 0;
    v54[0] = EndpointDelegateContext;
    v54[1] = FigRoutingManager_HandleAuthorizationRequiredDelegate;
    v54[2] = mxSystemMirroring_handleEndpointFailedDelegate;
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v23)
    {
      v23(a1, v54);
    }
  }

  if (!v8)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"authInfo");
      if (Value)
      {
        FigRoutingManager_SetAuthorizationOnEndpoint(a1, Value);
      }
    }

    v43 = 0;
    FigRoutingManagerContextUtilities_GetPickingState(a2, &v43);
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      FigRoutingManagerContextUtilities_SetPickingState(a2, 5);
      *type = 0;
      FigRoutingManagerCreateEndpointActivateCompletionContext(a2, a3, a4, EndpointActivateOptions, type);
      v27 = *type;
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      v47 = 0;
      v29 = FigEndpointGetCMBaseObject();
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v30)
      {
        v30(v29, v39, v41, &v47);
      }

      if (dword_1EB75DF20)
      {
        v46 = 0;
        v45 = OS_LOG_TYPE_DEFAULT;
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v32 = v46;
        if (os_log_type_enabled(v31, v45))
        {
          v33 = v32;
        }

        else
        {
          v33 = v32 & 0xFFFFFFFE;
        }

        if (v33)
        {
          v48 = 136315906;
          v49 = "mxSystemMirroring_endpointActivateWithCompletionCallback";
          v50 = 2114;
          v51 = v47;
          v52 = 1024;
          LODWORD(v53[0]) = FigEndpointFeatures;
          WORD2(v53[0]) = 2114;
          *(v53 + 6) = EndpointActivateOptions;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (FigRoutingManagerIsEndpointOfType(a1))
      {
        if (v27)
        {
          v34 = *v27;
          v35 = v27[1];
        }

        else
        {
          v34 = 0;
          v35 = 0;
        }

        v54[0] = 0;
        v36 = FigEndpointGetCMBaseObject();
        v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v37)
        {
          v37(v36, *MEMORY[0x1E69620B8], v41, v54);
          v37 = v54[0];
        }

        FigRoutingManagerSetMirroringModeOnBKSDisplayServices(EndpointActivateOptions, v34, v35, v37 == *MEMORY[0x1E695E4D0]);
        if (v54[0])
        {
          CFRelease(v54[0]);
        }
      }

      v38 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v38)
      {
        v8 = v38(a1, FigEndpointFeatures, MutableCopy, mxSystemMirroring_endpointActivateCompletionCallback, v27);
      }

      else
      {
        v8 = 4294954514;
      }

      if (v47)
      {
        CFRelease(v47);
        v47 = 0;
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (EndpointActivateOptions)
  {
    CFRelease(EndpointActivateOptions);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v8;
}

void mxSystemMirroring_handleEndpointFailedDelegate(const void *a1, uint64_t a2, const void *a3, const void *a4)
{
  if (a1 && a3)
  {
    SharedManager = FigRoutingManagerGetSharedManager();
    CFRetain(a1);
    CFRetain(a3);
    if (a4)
    {
      CFRetain(a4);
    }

    v9 = *(SharedManager + 1);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __mxSystemMirroring_handleEndpointFailedDelegate_block_invoke;
    v10[3] = &__block_descriptor_64_e5_v8__0l;
    v10[4] = a4;
    v10[5] = a3;
    v10[6] = a1;
    v10[7] = a2;
    MXDispatchAsync("mxSystemMirroring_handleEndpointFailedDelegate", "MXSystemMirroring_Embedded.m", 81, 0, 0, v9, v10);
  }
}

void mxSystemMirroring_endpointActivateCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  SharedManager = FigRoutingManagerGetSharedManager();
  if (a5)
  {
    v11 = *a5;
    v12 = *(a5 + 8);
    v13 = *(a5 + 16);
    v14 = *(a5 + 32);
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
  }

  [v14 timeIntervalSinceNow];
  v16 = v15;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v11)
  {
    CFRetain(v11);
  }

  if (v12)
  {
    CFRetain(v12);
  }

  if (v13)
  {
    CFRetain(v13);
  }

  v17 = fabs(v16) * 1000.0;
  v18 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v19 = *(SharedManager + 1);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __mxSystemMirroring_endpointActivateCompletionCallback_block_invoke;
  v20[3] = &unk_1E7AEAAC8;
  v20[4] = v18;
  v20[5] = a1;
  v21 = a4;
  v20[6] = a3;
  v20[7] = a2;
  v22 = v17;
  v20[8] = v12;
  v20[9] = v11;
  v20[10] = v13;
  v20[11] = a5;
  MXDispatchAsync("mxSystemMirroring_endpointActivateCompletionCallback", "MXSystemMirroring_Embedded.m", 333, 0, 0, v19, v20);
}

void __mxSystemMirroring_handleEndpointFailedDelegate_block_invoke(uint64_t a1)
{
  v53[16] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *(a1 + 32);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"EndpointDelegateContextKey_ClientRouteChangeOptions");
  }

  else
  {
    Value = 0;
  }

  v52 = 0;
  v6 = *(a1 + 40);
  v7 = *MEMORY[0x1E6961850];
  FigCFDictionaryGetInt32IfPresent();
  if (FigRoutingManagerIsEndpointActivated(*(a1 + 48)))
  {
    *v50 = 0;
    cf = 0;
    v8 = *(a1 + 48);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(CMBaseObject, *MEMORY[0x1E69620F8], v2, &cf);
    }

    v11 = *(a1 + 48);
    v12 = *MEMORY[0x1E69621E8];
    v13 = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, v12, v2, v50);
    }

    v15 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(*(a1 + 48), 0);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    v49 = 0;
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&v49);
    v48 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v49, 0, &v48);
    v47 = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v47);
    v46 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v47, 0, &v46);
    if (v48)
    {
      v16 = FigEndpointGetCMBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(v16, v12, v2, v50);
      }

      if (v48)
      {
        v18 = *MEMORY[0x1E69626A8];
        if (FigRoutingManagerIsEndpointOfType(v48))
        {
          v19 = &qword_1EB75D000;
          v20 = &qword_1EB75D000;
          if (FigCFEqual())
          {
            if (dword_1EB75DF20)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              v20 = &qword_1EB75D000;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v19 = &qword_1EB75D000;
            }

            FigRoutingManager_RouteAwayFromAirPlayEndpoint(v48, v49, 1);
          }

          mxSystemMirroring_iOSDeactivateEndpoint(*(a1 + 48), 0, Value);
          CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6961848]);
          v28 = *MEMORY[0x1E6961830];
          if (FigCFEqual())
          {
            FigRoutingManager_iOSHandleStartupFailed(v52, Mutable);
          }

          v29 = CMSMUtility_CopyCurrentRouteIdentifiers();
          NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
          if (NumberOfCurrentOutputPorts)
          {
            v31 = NumberOfCurrentOutputPorts;
            v32 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
            v33 = 0;
            v34 = *MEMORY[0x1E69618F8];
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v29, v33);
              v36 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 0, v34, v47);
              if (v36)
              {
                v37 = v36;
                CFArrayAppendValue(v32, v36);
                CFRelease(v37);
              }

              ++v33;
            }

            while (v31 != v33);
            v20 = &qword_1EB75D000;
            v19 = &qword_1EB75D000;
          }

          else
          {
            v32 = 0;
          }

          v38 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v32, 0);
          FigRoutingManagerContextUtilities_SetPickedEndpoints(v47, v32, @"configUpdateReasonEndedSuccess", Value, v38);
          FigRoutingManagerContextUtilities_SetPickingState(v47, 0);
          if (*(v19 + 968))
          {
            v39 = v20[483];
            v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
            v41 = v20[483];
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (v38)
          {
            CFRelease(v38);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          if (v32)
          {
            CFRelease(v32);
          }
        }
      }
    }

    if (*v50)
    {
      CFRelease(*v50);
      *v50 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v49)
    {
      CFRelease(v49);
      v49 = 0;
    }

    if (v48)
    {
      CFRelease(v48);
      v48 = 0;
    }

    if (v47)
    {
      CFRelease(v47);
      v47 = 0;
    }

    v27 = v46;
    if (v46)
    {
LABEL_58:
      CFRelease(v27);
    }
  }

  else if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = CFDictionaryGetValue(v22, @"EndpointDelegateContextKey_RoutingContextUUID");
    }

    else
    {
      v23 = 0;
    }

    FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(*(a1 + 48), v23);
    v53[0] = 0;
    FigRoutingManagerCopyPickedEndpointForRoutingContext(v23, v53);
    FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 48), FigEndpointFeatures, v23);
    FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(v23, *(a1 + 48), *(a1 + 56));
    v26 = *(a1 + 48);
    if (FigCFEqual())
    {
      FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(v23, 0, @"configUpdateReasonEndedFailed", 0);
    }

    v27 = v53[0];
    if (v53[0])
    {
      goto LABEL_58;
    }
  }

  else if (dword_1EB75DF20)
  {
    LODWORD(cf) = 0;
    v50[0] = OS_LOG_TYPE_DEFAULT;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v42 = *(a1 + 48);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(a1 + 40);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = *(a1 + 32);
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = *MEMORY[0x1E69E9840];
}

void __mxSystemMirroring_endpointActivateCompletionCallback_block_invoke(uint64_t a1)
{
  v37[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  if (*(a1 + 40))
  {
    v2 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69621E8], v2, &v35);
    }

    v5 = *(a1 + 40);
    v6 = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(v6, *MEMORY[0x1E69620F8], v2, &v34);
    }

    v8 = *(a1 + 40);
    v9 = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, *MEMORY[0x1E6961FD0], v2, &v33);
    }

    v11 = *(a1 + 40);
    v12 = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, *MEMORY[0x1E69621B0], v2, &v32);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v37[0] = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(*(a1 + 72), v37);
  v15 = *(a1 + 96);
  if (v15 && v15 != -16727)
  {
    v24 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
    {
      FigEndpointUIAgentHelper_CleanupPrompt(v35, v34, v32, 0);
    }

    v25 = *(a1 + 40);
    if (v37[0] == v25)
    {
      v26 = *(a1 + 64);
      FigRoutingManager_iOSHandleEndpointActivationError(v25, *(a1 + 56), *(a1 + 96), *(a1 + 48), *(a1 + 72));
    }
  }

  else
  {
    v16 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
    {
      v18 = v34;
      v17 = v35;
      v19 = v32;
      v20 = *MEMORY[0x1E69616C0];
      v21 = FigCFEqual();
      FigEndpointUIAgentHelper_CleanupPrompt(v17, v18, v19, v21);
    }

    if (v37[0] == *(a1 + 40))
    {
      FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 7);
      FigRoutingManagerRegisterForFigEndpointNotifications(*(a1 + 40));
      mxSystemMirroring_iOSHandleFigEndpointFeaturesActivation(*(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 72), *(a1 + 64), *(a1 + 80));
      FigRoutingManagerContextUtilities_AddActivatedEndpoint(*(a1 + 72), *(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 64), *(a1 + 80));
    }

    else
    {
      cf = 0;
      if (v37[0])
      {
        v22 = FigEndpointGetCMBaseObject();
        v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v23)
        {
          v23(v22, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
        }
      }

      mxSystemMirroring_iOSDeactivateEndpoint(*(a1 + 40), 1, *(a1 + 64));
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 0);
    }
  }

  FigRoutingManagerDestroyEndpointActivateCompletionContext(*(a1 + 88));
  if (v37[0])
  {
    CFRelease(v37[0]);
    v37[0] = 0;
  }

  if (v35)
  {
    CFRelease(v35);
    v35 = 0;
  }

  if (v33)
  {
    CFRelease(v33);
    v33 = 0;
  }

  if (v32)
  {
    CFRelease(v32);
    v32 = 0;
  }

  if (v34)
  {
    CFRelease(v34);
    v34 = 0;
  }

  v27 = *(a1 + 72);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(a1 + 64);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(a1 + 80);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __mxSystemMirroring_iOSDeactivateEndpoint_block_invoke(uint64_t a1)
{
  FigRoutingManagerStopDeactivateAirPlayEndpointTimer();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void mxSystemMirroring_iOSEndpointDeactivateCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a1)
  {
    CFRetain(a1);
    v10 = *(FigRoutingManagerGetSharedManager() + 1);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __mxSystemMirroring_iOSEndpointDeactivateCompletionCallback_block_invoke;
    v11[3] = &__block_descriptor_68_e5_v8__0l;
    v12 = a4;
    v11[4] = a1;
    v11[5] = a3;
    v11[6] = a2;
    v11[7] = a5;
    MXDispatchAsync("mxSystemMirroring_iOSEndpointDeactivateCompletionCallback", "MXSystemMirroring_Embedded.m", 437, 0, 0, v10, v11);
  }
}

void __mxSystemMirroring_iOSEndpointDeactivateCompletionCallback_block_invoke(uint64_t a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (*(a1 + 32))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 32), *(a1 + 48), v6);
  FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(v6, *(a1 + 32), *(a1 + 40));
  FigRoutingManagerRemoveCachedDelegateContext(*(a1 + 32));
  FigRoutingManagerDestroyEndpointDeactivateCompletionContext(*(a1 + 56));
  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t MXSystemRemotePool_AddEndpointToContext(const void *a1, const void *a2, const __CFDictionary *a3)
{
  if (a1)
  {
    FigRoutingManagerLogEndpointID(@"MXSystemRemotePool_AddEndpointToContext - Adding endpoint=", a1, @"on system remote pool context", 1);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_IsAddOperation", *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", v7);
    v8 = mxSystemRemotePool_processAddEndpoint(a1, a2, a3, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, @"configUpdateReasonEndedNoop");
    return 0;
  }

  return v8;
}

uint64_t mxSystemRemotePool_processAddEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  v41[16] = *MEMORY[0x1E69E9840];
  cf = 0;
  v8 = FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, &cf);
  if (!cf)
  {
    LODWORD(v37) = 0;
    v39[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v17 = 0;
    goto LABEL_42;
  }

  FigRoutingContextUtilities_LogCurrentState(v8, v9);
  v10 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  *v39 = 0;
  v11 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, *MEMORY[0x1E69621E8], v11, v39);
  }

  FigRoutingManagerLogRoutingRequestDetails(@"mxSystemRemotePool_processAddEndpoint", a1, 0, 0, a2, v10);
  v14 = cf;
  if (!cf || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v14 = 0;
  }

  if (!FigRoutingManagerIsEndpointPresentInAggregate(a1, v14) && FigRoutingManagerIsEndpointActivated(a1))
  {
    if (dword_1EB75DF20)
    {
      type[0] = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v41[0] = 0;
    FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, a1, v41);
    FigRoutingManager_iOSDeactivateEndpoint(a1, v41[0], 1);
  }

  if (dword_1EB75DF20)
  {
    type[0] = OS_LOG_TYPE_DEFAULT;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
  FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoint(a2, cf, a1, v10, a4);
  v37 = 0u;
  v38 = 0u;
  if (mxSystemRemotePool_getDelegateContext_onceToken != -1)
  {
    mxSystemRemotePool_processAddEndpoint_cold_1();
  }

  *&v37 = gDelegateContext;
  *&v38 = FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate;
  *(&v38 + 1) = FigRoutingManager_HandleDidCloseCommChannelDelegate;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v19)
  {
    v19(a1, &v37);
  }

  *type = 0;
  FigRoutingManagerCreateAggregateAddEndpointCompletionContext(a2, v10, a4, type);
  SubEndpointAddOptions = FigRoutingManagerCreateSubEndpointAddOptions(a1, a2);
  if (v10)
  {
    Value = CFDictionaryGetValue(v10, @"authInfo");
    if (Value)
    {
      FigRoutingManager_SetAuthorizationOnEndpoint(a1, Value);
    }
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (SubEndpointAddOptions)
  {
    CFRelease(SubEndpointAddOptions);
  }

  v23 = cf;
  if (!cf || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v23 = 0;
  }

  v24 = *type;
  VTable = CMBaseObjectGetVTable();
  v28 = *(VTable + 32);
  v27 = (VTable + 32);
  v29 = *(v28 + 8);
  if (v29)
  {
    v27 = v29(v23, a1, MutableCopy, FigRoutingManagerAggregateAddEndpointCompletionCallback, v24);
    v17 = v27;
    if (!v27)
    {
      v35 = 0;
      v30 = FigEndpointGetCMBaseObject();
      v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v31)
      {
        v31(v30, *MEMORY[0x1E69620F8], v11, &v35);
      }

      if (dword_1EB75DF20)
      {
        v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v27 = v35;
      if (v35)
      {
        CFRelease(v35);
      }

      v17 = 0;
      if (!MutableCopy)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v17 = 4294954514;
  }

  if (MutableCopy)
  {
LABEL_35:
    CFRelease(MutableCopy);
  }

LABEL_36:
  FigRoutingContextUtilities_LogCurrentState(v27, v26);
  if (v10)
  {
    CFRelease(v10);
  }

  if (*v39)
  {
    CFRelease(*v39);
    *v39 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_42:
  v33 = *MEMORY[0x1E69E9840];
  return v17;
}

CFTypeRef MXSystemRemotePool_RemoveEndpointFromContext(const void *a1, const void *a2, const __CFDictionary *a3)
{
  if (a1)
  {
    FigRoutingManagerLogEndpointID(@"MXSystemRemotePool_RemoveEndpointFromContext - Removing endpoint=", a1, @"on system remote pool context", 1);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_IsRemoveOperation", *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", v7);
    v8 = mxSystemRemotePool_processRemoveEndpoint(a1, a2, a3, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, @"configUpdateReasonEndedNoop");
    return 0;
  }

  return v8;
}

CFTypeRef mxSystemRemotePool_processRemoveEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  v28[22] = *MEMORY[0x1E69E9840];
  v28[0] = 0;
  v8 = FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, v28);
  if (!v28[0])
  {
    LODWORD(cf) = 0;
    v26[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v18 = 0;
    goto LABEL_29;
  }

  FigRoutingContextUtilities_LogCurrentState(v8, v9);
  v10 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  cf = 0;
  v11 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, *MEMORY[0x1E69621E8], v11, &cf);
  }

  FigRoutingManagerLogRoutingRequestDetails(@"mxSystemRemotePool_processRemoveEndpoint", a1, 0, 0, a2, v10);
  v14 = v28[0];
  if (!v28[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v14 = 0;
  }

  if (FigRoutingManagerIsEndpointPresentInAggregate(a1, v14))
  {
    v15 = v28[0];
    if (!v28[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      v15 = 0;
    }

    v16 = FigRoutingManagerRemoveEndpointFromAggregate(v15, a1, a2, v10, a4, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
    v18 = v16;
    if (v16)
    {
      goto LABEL_23;
    }

    *v26 = 0;
    v19 = FigEndpointGetCMBaseObject();
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v20(v19, *MEMORY[0x1E69620F8], v11, v26);
    }

    if (dword_1EB75DF20)
    {
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = *v26;
    if (*v26)
    {
      CFRelease(*v26);
    }
  }

  else
  {
    if (dword_1EB75DF20)
    {
      *v26 = 0;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, v10, @"configUpdateReasonEndedNoop");
  }

  v18 = 0;
LABEL_23:
  FigRoutingContextUtilities_LogCurrentState(v16, v17);
  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v28[0])
  {
    CFRelease(v28[0]);
  }

LABEL_29:
  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t MXSystemRemotePool_RemoveEndpoint(const void *a1)
{
  v5 = 0;
  FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(&v5);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(v5, &cf);
  if (FigRoutingManagerIsEndpointPresentInAggregate(a1, cf))
  {
    FigRoutingManagerRemoveEndpointFromAggregate(cf, a1, v5, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
    v2 = 0;
  }

  else
  {
    v2 = 4294954294;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

uint64_t MXSystemRemotePool_ActivateAggregateEndpoint(uint64_t a1, const void *a2)
{
  v18[16] = *MEMORY[0x1E69E9840];
  FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(a1, a2);
  cf = 0;
  FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  [v7 setValue:objc_msgSend(v8 forKey:{"UUIDString"), @"clientRouteRequestID"}];
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v18[3] = 0;
  v18[4] = 0;
  if (mxSystemRemotePool_getDelegateContext_onceToken != -1)
  {
    mxSystemRemotePool_processAddEndpoint_cold_1();
  }

  v18[0] = gDelegateContext;
  v18[1] = mxSystemRemotePool_handleAuthorizationRequiredDelegate;
  v18[2] = mxSystemRemotePool_handleEndpointFailedDelegate;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v10)
  {
    v10(a1, v18);
  }

  v17 = 0;
  v11 = FigRoutingManagerCreateEndpointActivateCompletionContext(a2, v7, 0, 0, &v17);
  if (!v11)
  {
    v12 = v17;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v13)
    {
      v11 = v13(a1, FigEndpointFeatures, 0, mxSystemRemotePool_endpointActivateCompletionCallback, v12);
    }

    else
    {
      v11 = 4294954514;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

void mxSystemRemotePool_handleAuthorizationRequiredDelegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v32 = 0;
    v33 = 0;
    v10 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E69622F8], v10, &v33);
    }

    cf = 0;
    Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (a2)
    {
      v14 = FigEndpointGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(v14, *MEMORY[0x1E69621E8], v10, &cf);
      }

      v16 = FigEndpointGetCMBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(v16, *MEMORY[0x1E69620F8], v10, &v32);
      }

      v18 = FigRoutingManagerCopyAuthInfoForEndpoint(a2);
      FigCFDictionarySetValue();
      if (dword_1EB75DF20)
      {
        v30 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *&v24 = v18;
      *(&v24 + 1) = Mutable;
      v27 = a6;
      v28 = a7;
      v25 = v32;
      v26 = a2;
      FigEndpointAuthRequestHandler_ProcessRequest(&v24);
      if (dword_1EB75DF20)
      {
        v30 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v21 = v30;
        if (os_log_type_enabled(v20, type))
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFE;
        }

        if (v22)
        {
          v34 = 136315394;
          v35 = "mxSystemRemotePool_handleAuthorizationRequiredDelegate";
          v36 = 2114;
          v37 = cf;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v18 = 0;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v33)
    {
      CFRelease(v33);
      v33 = 0;
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v32)
    {
      CFRelease(v32);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void mxSystemRemotePool_handleEndpointFailedDelegate(const void *a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      SharedManager = FigRoutingManagerGetSharedManager();
      CFRetain(a1);
      CFRetain(a3);
      v6 = *(SharedManager + 1);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __mxSystemRemotePool_handleEndpointFailedDelegate_block_invoke;
      v7[3] = &__block_descriptor_48_e5_v8__0l;
      v7[4] = a3;
      v7[5] = a1;
      MXDispatchAsync("mxSystemRemotePool_handleEndpointFailedDelegate", "FigRoutingManager_SystemRemotePool.m", 398, 0, 0, v6, v7);
    }
  }
}

void mxSystemRemotePool_endpointActivateCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  SharedManager = FigRoutingManagerGetSharedManager();
  if (a5)
  {
    v11 = *a5;
    v12 = *(a5 + 8);
    v13 = *(a5 + 32);
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v13 = 0;
  }

  [v13 timeIntervalSinceNow];
  v15 = v14;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v11)
  {
    CFRetain(v11);
  }

  if (v12)
  {
    CFRetain(v12);
  }

  v16 = fabs(v15) * 1000.0;
  v17 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v18 = *(SharedManager + 1);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __mxSystemRemotePool_endpointActivateCompletionCallback_block_invoke;
  v19[3] = &unk_1E7AEC3E8;
  v19[4] = v17;
  v19[5] = a1;
  v20 = a4;
  v19[6] = a3;
  v19[7] = a2;
  v21 = v16;
  v19[8] = v12;
  v19[9] = v11;
  v19[10] = a5;
  MXDispatchAsync("mxSystemRemotePool_endpointActivateCompletionCallback", "FigRoutingManager_SystemRemotePool.m", 548, 0, 0, v18, v19);
}

uint64_t MXSystemRemotePool_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = 4294954296;
  if (a1 && a3)
  {
    v6 = routingManagerSystemRemotePool_copySubEndpointWithID();
    if (v6)
    {
      v7 = v6;
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v8 = *(*(CMBaseObjectGetVTable() + 24) + 88);
        if (v8)
        {
          v3 = v8(v7, a2, a3);
        }

        else
        {
          v3 = 4294954514;
        }

        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      CFRelease(v7);
    }

    else
    {
      if (dword_1EB75DF20)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v3 = 4294954294;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

CFTypeRef routingManagerSystemRemotePool_copySubEndpointWithID()
{
  v15 = 0;
  FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(&v15);
  v14 = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v15, &v14);
  theArray = 0;
  if (!v14)
  {
    goto LABEL_17;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = *MEMORY[0x1E695E480];
  v1(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
  if (!theArray)
  {
    goto LABEL_17;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_17;
  }

  v4 = Count;
  v5 = 0;
  v6 = *MEMORY[0x1E69620F8];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    cf = 0;
    v8 = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(v8, v6, v2, &cf);
    }

    if (FigCFEqual())
    {
      break;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v4 == ++v5)
    {
      goto LABEL_17;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (ValueAtIndex)
  {
    v10 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_17:
    v10 = 0;
  }

  if (v15)
  {
    CFRelease(v15);
    v15 = 0;
  }

  if (v14)
  {
    CFRelease(v14);
    v14 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v10;
}

uint64_t MXSystemRemotePool_SendData(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(CFTypeRef, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v5 = 4294954296;
  if (a1 && a2 && a3)
  {
    v10 = routingManagerSystemRemotePool_copySubEndpointWithID();
    if (v10)
    {
      v11 = v10;
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
        *v12 = a4;
        v12[1] = a5;
        VTable = CMBaseObjectGetVTable();
        v14 = *(VTable + 24);
        LODWORD(VTable) = VTable + 24;
        v15 = *(v14 + 96);
        if (!v15 || (VTable = v15(v11, a2, a3, routingManagerSystemRemotePool_sendDataCompletionCallback, v12), v5 = VTable, VTable == -12782))
        {
          v5 = 4294954514;
          routingManagerSystemRemotePool_sendDataCompletionCallback(VTable, a2, 4294954514, v12);
        }

        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        cf[0] = 0;
        FigRoutingManagerCopySystemContext(cf, 9u);
        a4(cf[0], a2, 4294954296, a5);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v5 = 0;
      }

      CFRelease(v11);
    }

    else
    {
      if (dword_1EB75DF20)
      {
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v5 = 4294954294;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

void routingManagerSystemRemotePool_sendDataCompletionCallback(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    if (*a4)
    {
      cf[0] = 0;
      FigRoutingManagerCopySystemContext(cf, 9u);
      (*a4)(cf[0], a2, a3, a4[1]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    free(a4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t MXSystemRemotePool_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = 4294954296;
  if (a1 && a2)
  {
    v4 = routingManagerSystemRemotePool_copySubEndpointWithID();
    if (v4)
    {
      v5 = v4;
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v6 = *(*(CMBaseObjectGetVTable() + 24) + 104);
        if (v6)
        {
          v2 = v6(v5, a2);
        }

        else
        {
          v2 = 4294954514;
        }

        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      CFRelease(v5);
    }

    else
    {
      if (dword_1EB75DF20)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v2 = 4294954294;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

void __mxSystemRemotePool_getDelegateContext_block_invoke()
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(&cf);
  gDelegateContext = FigRoutingManagerCreateEndpointDelegateContext();
  if (cf)
  {
    CFRelease(cf);
  }
}

void __mxSystemRemotePool_handleEndpointFailedDelegate_block_invoke(uint64_t a1)
{
  v25[22] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(&v24);
  Value = CFDictionaryGetValue(*(a1 + 32), *MEMORY[0x1E6961690]);
  v23 = 0;
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E6961908];
  FigCFDictionaryGetInt64IfPresent();
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v22 = 0;
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x1E6961850];
  FigCFDictionaryGetInt32IfPresent();
  CFDictionaryGetValue(*(a1 + 32), *MEMORY[0x1E6961848]);
  if (Value)
  {
    v21 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(CMBaseObject, *MEMORY[0x1E69620F8], v5, &v21);
    }

    v11 = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, *MEMORY[0x1E69621E8], v5, v25);
    }

    if (FigRoutingManagerIsEndpointActivated(Value))
    {
      v13 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(Value, 0);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      cf = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(v24, &cf);
      if (cf)
      {
        v14 = *(a1 + 40);
        if (!v14 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
        {
          v14 = 0;
        }

        if (FigRoutingManagerRemoveEndpointFromAggregate(v14, Value, v24, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback))
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          FigRoutingManagerLogEndpointID(@"HandleEndpointFailedDelegate: Removed endpoint with ID", Value, @"from aggregate", 1);
        }
      }

      if (dword_1EB75DF20)
      {
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  if (v24)
  {
    CFRelease(v24);
    v24 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v25[0])
  {
    CFRelease(v25[0]);
    v25[0] = 0;
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __mxSystemRemotePool_endpointActivateCompletionCallback_block_invoke(uint64_t a1)
{
  cf[28] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  cf[0] = 0;
  if (*(a1 + 40))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 7);
  FigRoutingManagerRegisterForFigEndpointNotifications(*(a1 + 40));
  FigRoutingManagerContextUtilities_AddActivatedEndpoint(*(a1 + 72), *(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 64), 0);
  FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(*(a1 + 72), *(a1 + 40), @"configUpdateReasonEndedSuccess", *(a1 + 64));
  FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 0);
  FigRoutingManagerDestroyEndpointActivateCompletionContext(*(a1 + 80));
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t FigEndpointUIAgentGetClassID()
{
  if (FigEndpointUIAgentGetClassID_sRegisterFigEndpointUIAgentTypeOnce != -1)
  {
    FigEndpointUIAgentGetClassID_cold_1();
  }

  return sFigEndpointUIAgentClassID;
}

uint64_t __FigEndpointUIAgentGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&sFigEndpointUIAgentClassDesc, ClassID, 1, &sFigEndpointUIAgentClassID);
}

uint64_t FigEndpointUIAgentGetTypeID()
{
  if (FigEndpointUIAgentGetClassID_sRegisterFigEndpointUIAgentTypeOnce != -1)
  {
    FigEndpointUIAgentGetClassID_cold_1();
  }

  v1 = sFigEndpointUIAgentClassID;

  return MEMORY[0x1EEDBB488](v1);
}

void mx_ioKit_hidEventCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_autoreleasePoolPush();
  [a2 handleEvent:a4];

  objc_autoreleasePoolPop(v6);
}

void sub_1B1912178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MX_IOKit_Initialize()
{
  if (CMSMDeviceState_IsSecureMicrophoneSupported())
  {
    if (MX_IOKit_Initialize_onceToken != -1)
    {
      MX_IOKit_Initialize_cold_1();
    }
  }
}

uint64_t mx_ioKit_getSmartCoverState(CFArrayRef theArray, int a2)
{
  v4 = 0;
  v5 = 0;
  v6 = *MEMORY[0x1E695E480];
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v4 < i; i = 0)
  {
    CFArrayGetValueAtIndex(theArray, v4);
    KeyboardEvent = IOHIDEventCreateKeyboardEvent();
    v9 = IOHIDServiceClientCopyEvent();
    if (v9)
    {
      v10 = v9;
      if (IOHIDEventGetIntegerValue())
      {
        v11 = a2;
      }

      else
      {
        v11 = 0;
      }

      v5 = v11 | v5;
      CFRelease(v10);
    }

    if (KeyboardEvent)
    {
      CFRelease(KeyboardEvent);
    }

    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return v5;
}

void MX_RunningBoardServices_StopMonitoringForPID(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 >= 1)
  {
    v2 = [MEMORY[0x1E69C75E0] identifierWithPid:a1];
    if (v2 && (v3 = [MEMORY[0x1E69C7610] predicateMatchingIdentifier:v2]) != 0)
    {
      v4 = v3;
      if (dword_1EB75DE60)
      {
        v14 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [gProcessPredicatesSetLock lock];
      v7 = [gProcessPredicatesSet copy];
      [gProcessPredicatesSet removeObject:v4];
      v8 = [gProcessPredicatesSet copy];
      [gProcessPredicatesSetLock unlock];
      if ([v7 isEqualToSet:v8])
      {
      }

      else
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __MX_RunningBoardServices_StopMonitoringForPID_block_invoke;
        v12[3] = &unk_1E7AEC550;
        v12[4] = v8;
        [gProcessMonitor updateConfiguration:v12];
        mx_runningBoardServices_removePIDFromApplicationStateCache([MEMORY[0x1E696AD98] numberWithInt:a1]);
      }
    }

    else
    {
      v14 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t mx_runningBoardServices_removePIDFromApplicationStateCache(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a1 unsignedIntValue])
  {
    [gApplicationStateCacheLock lock];
    if ([gApplicationStateCache objectForKey:a1])
    {
      [gApplicationStateCache removeObjectForKey:a1];
    }

    v2 = gApplicationStateCacheLock;
    v3 = *MEMORY[0x1E69E9840];

    return [v2 unlock];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t MX_RunningBoardServices_CopyHostDisplayIDForPID(uint64_t a1)
{
  v1 = [objc_msgSend(objc_msgSend(mx_runningBoardServices_getProcessHandleForPID(a1) "hostProcess")];

  return [v1 copy];
}

void MX_RunningBoardServices_DumpMonitoredProcessPredicates()
{
  v29 = *MEMORY[0x1E69E9840];
  if (mx_runningBoardServices_initializeMonitoring_onceToken != -1)
  {
    MX_RunningBoardServices_DumpMonitoredProcessPredicates_cold_1();
  }

  [gProcessPredicatesSetLock lock];
  v0 = [objc_msgSend(gProcessPredicatesSet "allObjects")];
  [gProcessPredicatesSetLock unlock];
  [gApplicationStateCacheLock lock];
  obj = [gApplicationStateCache copy];
  [gApplicationStateCacheLock unlock];
  if (dword_1EB75DE60)
  {
    v21 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMDebugUtility_PrintCollection(v0);
  if (dword_1EB75DE60)
  {
    v21 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v28 count:{16, v13, v14}];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        if (dword_1EB75DE60)
        {
          v7 = *(*(&v16 + 1) + 8 * i);
          v21 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v9 = v21;
          if (os_log_type_enabled(v8, type))
          {
            v10 = v9;
          }

          else
          {
            v10 = v9 & 0xFFFFFFFE;
          }

          if (v10)
          {
            StringForApplicationState = CMSMUtility_GetStringForApplicationState([objc_msgSend(obj objectForKey:{v7), "unsignedIntValue"}]);
            v22 = 136315650;
            v23 = "MX_RunningBoardServices_DumpMonitoredProcessPredicates";
            v24 = 2114;
            v25 = v7;
            v26 = 2114;
            v27 = StringForApplicationState;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v28 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void MX_RunningBoardServices_InvalidateBackgroundDownloadProcessAssertion(void *a1)
{
  if (initializeLogging_onceToken != -1)
  {
    MX_RunningBoardServices_CopyBundleIdentifierForProcessID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  mx_runningBoardServices_InvalidateProcessAssertion(a1);

  objc_autoreleasePoolPop(v2);
}

uint64_t mx_runningBoardServices_InvalidateProcessAssertion(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *MEMORY[0x1E69E9840];

    return [a1 invalidate];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void MX_RunningBoardServices_InvalidateMediaPlaybackProcessAssertion(void *a1)
{
  if (initializeLogging_onceToken != -1)
  {
    MX_RunningBoardServices_CopyBundleIdentifierForProcessID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  mx_runningBoardServices_InvalidateProcessAssertion(a1);

  objc_autoreleasePoolPop(v2);
}

uint64_t MX_RunningBoardServices_IsAssertionValid(const void *a1)
{
  if (!a1)
  {
    return 1;
  }

  FigSimpleMutexLock();
  v2 = gProcessAssertionArray;
  v5.length = CFArrayGetCount(gProcessAssertionArray);
  v5.location = 0;
  v3 = CFArrayContainsValue(v2, v5, a1) != 0;
  FigSimpleMutexUnlock();
  return v3;
}

void *MX_RunningBoardServices_CreateMediaPlaybackProcessAssertionForPID(uint64_t a1, __CFString *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (initializeLogging_onceToken != -1)
  {
    MX_RunningBoardServices_CopyBundleIdentifierForProcessID_cold_1();
  }

  if (a1 <= 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    MXAssertionForPID = mx_runningBoardServices_createMXAssertionForPID(a1, a2, 0);
    objc_autoreleasePoolPop(v4);
    v6 = *MEMORY[0x1E69E9840];
    return MXAssertionForPID;
  }
}

void *MX_RunningBoardServices_CreateBackgroundDownloadProcessAssertionForBundleIdentifier(uint64_t a1, __CFString *a2)
{
  v12[24] = *MEMORY[0x1E69E9840];
  if (initializeLogging_onceToken == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_11:
    LODWORD(v12[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_12;
  }

  MX_RunningBoardServices_CopyBundleIdentifierForProcessID_cold_1();
  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!a2)
  {
    LODWORD(v12[0]) = 0;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    goto LABEL_12;
  }

  v12[0] = 0;
  v4 = [MEMORY[0x1E69C75D0] handleForPredicate:objc_msgSend(MEMORY[0x1E69C7610] error:{"predicateMatchingBundleIdentifier:", a1), v12}];
  if (v12[0] || (v7 = [v4 identity], (v8 = objc_msgSend(MEMORY[0x1E69C7640], "targetWithProcessIdentity:", v7)) == 0))
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
LABEL_12:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 0;
    goto LABEL_13;
  }

  result = mx_runningBoardServices_createAssertionForTarget(v8, a2, @"com.apple.coremedia", @"AssetDownload", 0);
LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID(uint64_t a1, void *a2, int a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (mx_runningBoardServices_initializeGlobalAssertionProperties_onceToken != -1)
  {
    MX_RunningBoardServices_InvalidateAssertion_cold_1();
  }

  context = objc_autoreleasePoolPush();
  FigSimpleMutexLock();
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, gProcessAssertionArray);
  v6 = 0;
  while (1)
  {
    if (!MutableCopy)
    {
      v13 = gProcessAssertionArray;
      gProcessAssertionArray = 0;
      if (!v13)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v6 >= CFArrayGetCount(MutableCopy))
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v6);
    v8 = [objc_msgSend(ValueAtIndex "explanation")];
    v9 = [a2 containsObject:ValueAtIndex];
    if (!v8 || v9)
    {
      ++v6;
    }

    else
    {
      if (gHostProcessAssertionDictionary && CFDictionaryContainsKey(gHostProcessAssertionDictionary, ValueAtIndex))
      {
        [CFDictionaryGetValue(gHostProcessAssertionDictionary ValueAtIndex)];
        CFDictionaryRemoveValue(gHostProcessAssertionDictionary, ValueAtIndex);
      }

      v10 = MXGetAssertionLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v37 = "-MX_RunningBoardServices-";
        v38 = 2082;
        v39 = "MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID";
        v40 = 1024;
        v41 = 1119;
        v42 = 2048;
        v43 = ValueAtIndex;
        v44 = 1024;
        v45 = a3;
        v46 = 2114;
        v47 = a1;
        _os_log_impl(&dword_1B17A2000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Invalidating unaccounted assertion %p for reason %u as its explanation contains matching session id %{public}@", buf, 0x36u);
      }

      v11 = +[MXAudioStatistics sharedInstance];
      v12 = [ValueAtIndex explanation];
      [(MXAudioStatistics *)v11 sendSinglePerformanceMessageForAssertion:"MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID" explanation:v12 activity:kMXAudioStatistics_AssertionActivity_AssertionInvalidated];
      [ValueAtIndex invalidate];
      CFArrayRemoveValueAtIndex(MutableCopy, v6);
    }
  }

  v13 = gProcessAssertionArray;
  gProcessAssertionArray = MutableCopy;
  CFRetain(MutableCopy);
  if (v13)
  {
LABEL_16:
    CFRelease(v13);
  }

LABEL_17:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v14 = [gHostProcessAssertionDictionary mutableCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = [v14 allKeys];
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        v21 = [v14 objectForKey:v20];
        v22 = [objc_msgSend(v21 "explanation")];
        v23 = [a2 containsObject:v20];
        if (v22 && (v23 & 1) == 0)
        {
          v24 = MXGetAssertionLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            v37 = "-MX_RunningBoardServices-";
            v38 = 2082;
            v39 = "MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID";
            v40 = 1024;
            v41 = 1148;
            v42 = 2048;
            v43 = v21;
            v44 = 1024;
            v45 = a3;
            v46 = 2114;
            v47 = a1;
            _os_log_impl(&dword_1B17A2000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Invalidating unaccounted assertion %p for reason %u as its explanation contains matching session id %{public}@", buf, 0x36u);
          }

          v25 = +[MXAudioStatistics sharedInstance];
          v26 = [v21 explanation];
          [(MXAudioStatistics *)v25 sendSinglePerformanceMessageForAssertion:"MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID" explanation:v26 activity:kMXAudioStatistics_AssertionActivity_AssertionInvalidated];
          [v21 invalidate];
          [v14 removeObjectForKey:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  v27 = gHostProcessAssertionDictionary;
  gHostProcessAssertionDictionary = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  FigSimpleMutexUnlock();
  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t MX_RunningBoardServices_DumpAssertionInfo()
{
  v52 = *MEMORY[0x1E69E9840];
  if (mx_runningBoardServices_initializeGlobalAssertionProperties_onceToken != -1)
  {
    MX_RunningBoardServices_InvalidateAssertion_cold_1();
  }

  FigSimpleMutexLock();
  v0 = gProcessAssertionArray;
  v31 = gHostProcessAssertionDictionary;
  if ([gProcessAssertionArray count] || objc_msgSend(v31, "count"))
  {
    if (dword_1EB75DE60)
    {
      v41 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v2 = [v0 countByEnumeratingWithState:&v36 objects:v51 count:{16, v25, v28}];
    if (v2)
    {
      v3 = v2;
      v4 = *v37;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v37 != v4)
          {
            objc_enumerationMutation(v0);
          }

          if (dword_1EB75DE60)
          {
            v6 = *(*(&v36 + 1) + 8 * i);
            v41 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v8 = v41;
            if (os_log_type_enabled(v7, type))
            {
              v9 = v8;
            }

            else
            {
              v9 = v8 & 0xFFFFFFFE;
            }

            if (v9)
            {
              v10 = [v6 explanation];
              v42 = 136315650;
              v43 = "MX_RunningBoardServices_DumpAssertionInfo";
              v44 = 2048;
              v45 = v6;
              v46 = 2114;
              v47 = v10;
              LODWORD(v29) = 32;
              v26 = &v42;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v3 = [v0 countByEnumeratingWithState:&v36 objects:v51 count:16];
      }

      while (v3);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = [v31 allKeys];
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v50 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v32 + 1) + 8 * j);
          v17 = [v31 objectForKey:{v16, v27, v30}];
          if (dword_1EB75DE60)
          {
            v18 = v17;
            v41 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v20 = v41;
            if (os_log_type_enabled(v19, type))
            {
              v21 = v20;
            }

            else
            {
              v21 = v20 & 0xFFFFFFFE;
            }

            if (v21)
            {
              v22 = [v18 explanation];
              v42 = 136315906;
              v43 = "MX_RunningBoardServices_DumpAssertionInfo";
              v44 = 2048;
              v45 = v16;
              v46 = 2048;
              v47 = v18;
              v48 = 2114;
              v49 = v22;
              LODWORD(v30) = 42;
              v27 = &v42;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v32 objects:v50 count:16];
      }

      while (v13);
    }
  }

  result = FigSimpleMutexUnlock();
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

id __mx_runningBoardServices_initializeMonitoring_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  if (initializeLogging_onceToken != -1)
  {
    MX_RunningBoardServices_CopyBundleIdentifierForProcessID_cold_1();
  }

  gProcessPredicatesSetLock = objc_alloc_init(MEMORY[0x1E696AD10]);
  gProcessPredicatesSet = objc_alloc_init(MEMORY[0x1E696AB50]);
  gApplicationStateCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  gApplicationStateCacheLock = objc_alloc_init(MEMORY[0x1E696AD10]);
  if (dword_1EB75DE60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [MEMORY[0x1E69C75F8] monitorWithConfiguration:{&__block_literal_global_28, v3, v4}];
  gProcessMonitor = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __mx_runningBoardServices_initializeMonitoring_block_invoke_26(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E69C7630] descriptor];
  [v3 setValues:33];
  [v3 setEndowmentNamespaces:&unk_1F28AF5C0];
  [a2 setStateDescriptor:v3];
  [a2 setServiceClass:25];

  return [a2 setUpdateHandler:&__block_literal_global_35_0];
}

void __mx_runningBoardServices_initializeMonitoring_block_invoke_36(uint64_t a1, void *a2)
{
  [a2 setPredicates:{objc_msgSend(*(a1 + 32), "allObjects")}];
  v3 = *(a1 + 32);
}

uint64_t __mx_runningBoardServices_createAndStoreAssertionForPIDWithInvalidationHandler_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  for (i = 0; ; ++i)
  {
    Count = gProcessAssertionArray;
    if (gProcessAssertionArray)
    {
      Count = CFArrayGetCount(gProcessAssertionArray);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(gProcessAssertionArray, i);
    if (ValueAtIndex == a2)
    {
      v8 = ValueAtIndex;
      if (gHostProcessAssertionDictionary && CFDictionaryContainsKey(gHostProcessAssertionDictionary, ValueAtIndex))
      {
        [CFDictionaryGetValue(gHostProcessAssertionDictionary v8)];
        CFDictionaryRemoveValue(gHostProcessAssertionDictionary, v8);
      }

      CFArrayRemoveValueAtIndex(gProcessAssertionArray, i);
      break;
    }
  }

  result = FigSimpleMutexUnlock();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __mx_runningBoardServices_initializeGlobalAssertionProperties_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  gProcessAssertionArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  gHostProcessAssertionDictionary = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = FigReentrantMutexCreate();
  gProcessAssertionMutex = result;
  return result;
}

uint64_t __initializeLogging_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  result = fig_note_initialize_category_with_default_work();
  if ((dword_1EB75DE60 & 0x100) != 0)
  {
    dword_1EB75DE60 = 0;
  }

  return result;
}

uint64_t __mx_runningBoardServices_createAssertionForTarget_block_invoke()
{
  result = getpid();
  mx_runningBoardServices_createAssertionForTarget_pid = result;
  return result;
}

uint64_t CMSUtilityPredicate_HasSameAudioCategory(uint64_t a1, void *a2)
{
  [a2 audioCategory];

  return FigCFEqual();
}

CFNumberRef CMSUtilityPredicate_IsSameClient(int a1, void *a2, CFNumberRef number)
{
  result = number;
  if (number)
  {
    valuePtr = 0;
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    v5 = [objc_msgSend(a2 "clientPID")];
    return (v5 == valuePtr);
  }

  return result;
}

uint64_t CMSUtilityPredicate_IsSameClientAndNotStopped(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if (!a2)
  {
    return 0;
  }

  result = [a2 isPlaying];
  if (result)
  {
    v5 = [objc_msgSend(a2 "clientPID")];
    return v5 == valuePtr;
  }

  return result;
}

void *CMSUtility_GetIsPlaying(void *result)
{
  if (result)
  {
    return [result isPlaying];
  }

  return result;
}

uint64_t CMSUtilityPredicate_BelongsToTheSameProcessAndIsActiveAndStopsWhenBackgrounded(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  result = [a2 isActive];
  if (result)
  {
    v5 = [objc_msgSend(a2 "clientPID")];
    if (v5 == valuePtr)
    {
      return [a2 stopsWhenDeviceLocks];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMSUtilityPredicate_BelongsToTheSameProcessAndIsPlayingAndStopsWhenBackgrounded(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if (!a2)
  {
    return 0;
  }

  result = [a2 isPlaying];
  if (!result)
  {
    return result;
  }

  v5 = [objc_msgSend(a2 "clientPID")];
  if (v5 == valuePtr)
  {
    return [a2 stopsWhenDeviceLocks];
  }

  else
  {
    return 0;
  }
}

uint64_t CMSUtilityPredicate_IsActiveWithDisplayID(uint64_t a1, void *a2)
{
  result = [a2 isActive];
  if (result)
  {
    [a2 displayID];
    return FigCFEqual() != 0;
  }

  return result;
}

uint64_t CMSUtility_IsAudioCategoryAlertType(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = [result audioCategory];
    if (result)
    {
      if (CFEqual([v1 audioCategory], @"WaterEjection"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"Ringtone"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"RingtonePreview"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"EmergencyAlert"))
      {
        return 1;
      }

      result = CFEqual([v1 audioCategory], @"EmergencyAlert_Muteable");
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t CMSUtility_IsAudioCategoryNonLongFormPlayback(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = [result audioCategory];
    if (result)
    {
      if (CFEqual([v1 audioCategory], @"UserInterfaceSoundEffects"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"AmbientSound"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"LiveAudio"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"SoloAmbientSound"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"Multi"))
      {
        return 1;
      }

      result = -[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [v1 audioCategory]);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t CMSUtility_IsAudioCategoryLongFormPlayback(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = [result audioCategory];
    if (result)
    {
      if (CFEqual([v1 audioCategory], @"MediaPlayback"))
      {
        return 1;
      }

      result = CFEqual([v1 audioCategory], @"MediaPlaybackNoSpeaker");
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

id CMSMUtility_GetCurrentAudioDestinationForVoiceOverSession()
{
  v0 = @"VirtualAudioDevice_Default";
  if (CMSMDeviceState_IsVoiceOverOn())
  {
    v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyVoiceOverSession];
    v2 = [v1 audioDestinationPriority];
    if (v1)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      v0 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v2];
    }
  }

  return v0;
}

uint64_t CMSUtility_IsSessionTheDefaultMusicApp(void *a1)
{
  [a1 displayID];
  [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp];

  return FigCFEqual();
}

BOOL CMSUtility_IsDoingSpokenAudio(void *a1)
{
  if (CMSMUtility_IsCarPlaySessionPresent())
  {
    [a1 audioMode];
    if (FigCFEqual())
    {
      return 0;
    }
  }

  [a1 audioMode];
  if (FigCFEqual())
  {
    return 1;
  }

  [a1 audioMode];
  return FigCFEqual() != 0;
}

uint64_t CMSUtility_IsDisruptiveWhenGoingActive(void *a1)
{
  outData = 1;
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([a1 audioCategory]);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([a1 audioMode]);
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(VADCategoryFromFigCategoryName, VADModeFromFigModeName, [a1 activationContext], objc_msgSend(a1, "allowedPortTypes"), objc_msgSend(a1, "prefersBluetoothHighQualityContentCapture"));
  *&inAddress.mSelector = *"rsidbolg";
  inAddress.mElement = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData))
  {
    outData = 1;
  }

  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  return outData;
}

uint64_t CMSUtility_IsAllowedToStopOthers(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a1 applicationState] == 8)
  {
    goto LABEL_20;
  }

  if (![a1 applicationState])
  {
    goto LABEL_20;
  }

  [a1 setApplicationState:CMSUtility_GetApplicationStateForSession(a1)];
  if ([a1 applicationState] == 8 || !objc_msgSend(a1, "applicationState"))
  {
    goto LABEL_20;
  }

  if ([a1 applicationState] != 4)
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (!CMSUtility_HasBackgroundEntitlement(a1))
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v2 = [objc_msgSend(objc_msgSend(a1 "hostProcessAttribution")];
  v3 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
  if (v3 != [objc_msgSend(a1 "clientPID")] && (objc_msgSend(objc_msgSend(a1, "displayID"), "isEqualToString:", -[MXNowPlayingAppManager nowPlayingAppDisplayID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppDisplayID")) & 1) == 0 && !CMSUtility_IsSessionTheDefaultMusicApp(a1))
  {
    [a1 displayID];
    [+[MXSessionManager sharedInstance](MXSessionManager appAllowedToInitiatePlaybackTemporarily];
    if (!FigCFEqual() && !+[MXSystemController isAppAllowedToInitiatePlayback:](MXSystemController, "isAppAllowedToInitiatePlayback:", [a1 displayID]) && !+[MXSystemController isAppAllowedToInitiatePlayback:](MXSystemController, "isAppAllowedToInitiatePlayback:", v2) && !CMSUtility_HasAssertionsToStartNonMixablePlayback(a1))
    {
      [a1 audioCategory];
      if (!FigCFEqual() && ([a1 hasPhoneCallBehavior] & 1) == 0)
      {
        [a1 audioCategory];
        if (!FigCFEqual() && [a1 clientPriority] != 10 && (!CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1) || !CMSMUtility_IAPAppProcessIDIsUsingAccessory(objc_msgSend(a1, "displayID"))))
        {
          if (dword_1EB75DE40)
          {
LABEL_27:
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

LABEL_28:
          result = 0;
          goto LABEL_21;
        }
      }
    }
  }

LABEL_20:
  result = 1;
LABEL_21:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSUtility_HasAssertionsToStartNonMixablePlayback(void *a1)
{
  v1 = MX_RunningBoardServices_CopyAssertionReasonsForPID([objc_msgSend(a1 "clientPID")]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  if (Count < 1)
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v2, v5);
      UInt64 = FigCFNumberGetUInt64();
      if (UInt64 == 16 || UInt64 == 50004)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_9;
      }
    }

    v8 = 1;
  }

  CFRelease(v2);
  return v8;
}

uint64_t CMSUtility_IsAllowedToStopThisSession(void *a1, void *a2)
{
  result = CMSUtility_IsAllowedToStopOthers(a1);
  if (result)
  {
    return !a2 || [a2 applicationState] != 8;
  }

  return result;
}

uint64_t CMSUtility_IsReplayKitExtension(void *a1)
{
  v1 = MX_RunningBoardServices_CopyBundleExtensionPointID(a1);
  v2 = FigCFEqual();
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void *CMSUtility_GetAudioMode(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 audioMode];
  }

  return a1;
}

uint64_t cmsutility_hasAssertionsToStartMixablePlayback(void *a1)
{
  v2 = MX_RunningBoardServices_CopyAssertionReasonsForPID([objc_msgSend(a1 "clientPID")]);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
LABEL_17:
    HasGPSEntitlement = 1;
  }

  else
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      CFArrayGetValueAtIndex(v3, i);
      UInt64 = FigCFNumberGetUInt64();
      if (UInt64 > 9999)
      {
        if ((UInt64 - 10000) < 6 || UInt64 == 50002 || UInt64 == 50004)
        {
          goto LABEL_17;
        }
      }

      else if (UInt64 <= 0x17 && ((1 << UInt64) & 0x8937FE) != 0)
      {
        goto LABEL_17;
      }
    }

    HasGPSEntitlement = CMSUtility_HasGPSEntitlement(a1);
  }

  CFRelease(v3);
  return HasGPSEntitlement;
}

uint64_t cmsutility_hasAssertionsToStartMixableRecording(void *a1)
{
  v2 = MX_RunningBoardServices_CopyAssertionReasonsForPID([objc_msgSend(a1 "clientPID")]);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
LABEL_17:
    HasGPSEntitlement = 1;
  }

  else
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      CFArrayGetValueAtIndex(v3, i);
      UInt64 = FigCFNumberGetUInt64();
      if (UInt64 > 9999)
      {
        if ((UInt64 - 10000) < 6 || UInt64 == 50002 || UInt64 == 50004)
        {
          goto LABEL_17;
        }
      }

      else if (UInt64 <= 0x17 && ((1 << UInt64) & 0x8917FE) != 0)
      {
        goto LABEL_17;
      }
    }

    HasGPSEntitlement = CMSUtility_HasGPSEntitlement(a1);
  }

  CFRelease(v3);
  return HasGPSEntitlement;
}

uint64_t CMSUtility_SessionWithPIDCanContinueAirPlayingVideoIfScreenIsLocked(int a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_ScreenIsBlanked() && CMSMUtility_IsAirPlayVideoActive())
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          if ([objc_msgSend(v7 "clientPID")] == a1)
          {
            if ([v7 isPlaying])
            {
              [v7 audioCategory];
              if (FigCFEqual() || ([v7 audioCategory], FigCFEqual()) || (objc_msgSend(v7, "audioCategory"), FigCFEqual()))
              {
                v8 = 1;
                goto LABEL_18;
              }
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_18:
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void *CMSUtility_IsSessionAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(void *a1)
{
  result = CMSUtility_HasBackgroundEntitlement(a1);
  if (result)
  {
    result = 1;
    if ([a1 displayID])
    {
      if (CFStringFind([a1 displayID], @"WebKit", 1uLL).length > 0)
      {
        return 0;
      }

      [a1 displayID];
      if (FigCFArrayContainsValue())
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CMSUtility_IsSessionWithPIDAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(int a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([objc_msgSend(v7 "clientPID")] == a1)
        {
          v8 = CMSUtility_IsSessionAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CMSUtility_HasGPSEntitlement(void *a1)
{
  if (([a1 hasFetchedGPSPrivileges] & 1) == 0)
  {
    [a1 setHasGPSPrivileges:{CMSUtility_FetchGPSEntitlementForSessionWithPID(objc_msgSend(objc_msgSend(a1, "clientPID"), "intValue"))}];
    [a1 setHasFetchedGPSPrivileges:1];
  }

  return [a1 hasGPSPrivileges];
}

BOOL CMSUtility_FetchGPSEntitlementForSessionWithPID(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(@"UIBackgroundModes", a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  v4 = v3 == CFArrayGetTypeID() && CMSMUtility_AllowedToUseGPSInBackground(v2);
  CFRelease(v2);
  return v4;
}

uint64_t CMSUtility_IsSomeOtherNonIDSClientActiveOnDestination(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (([v7 isIDSMXCoreSession] & 1) == 0)
        {
          v8 = [v7 isHardwareSafetySession];
          if (v7 != a1 && (v8 & 1) == 0 && CMSUtility_IsNonIDSClientActiveOnDestination(v7))
          {
            v9 = 1;
            goto LABEL_14;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_14:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t CMSUtility_IsNonIDSClientActiveOnDestination(void *a1)
{
  if ([a1 isIDSMXCoreSession])
  {
    return 0;
  }

  result = [a1 isActive];
  if (result)
  {
    if (([a1 doesntActuallyPlayAudio] & 1) != 0 || (objc_msgSend(a1, "hwControlFlags") & 0x20000) == 0 && (objc_msgSend(a1, "hwControlFlags") & 2) == 0)
    {
      return 0;
    }

    v3 = [a1 audioDestinationPriority];
    if (a1)
    {
      if (v3)
      {
        [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v3];
      }
    }

    return FigCFEqual() != 0;
  }

  return result;
}

uint64_t CMSUtility_IsSomeOtherNonIDSClientActiveWithNonDefaultVADConfiguration(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (v7 != a1 && CMSUtility_IsNonIDSClientActiveOnDestination(*(*(&v11 + 1) + 8 * v6)) && (CMSMVAUtility_GetVADCategoryFromFigCategoryName([v7 audioCategory]) != 1668505974 || CMSMVAUtility_GetVADModeFromFigModeName(objc_msgSend(v7, "audioMode")) != 1768776806))
        {
          v8 = 1;
          goto LABEL_14;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_14:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void *CMSUtility_GetClientName(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 clientName];
  }

  return a1;
}

void *CMSUtility_GetDisplayID(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 displayID];
  }

  return a1;
}

uint64_t CMSUtility_IsPlayingToSystemSoundLocalVAD(void *a1)
{
  v2 = [a1 audioDestinationPriority];
  if (a1 && v2)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v2];
  }

  return FigCFEqual();
}

uint64_t CMSUtilityPredicate_IsPlayingAndPlaysToCarMainAudio(uint64_t a1, void *a2)
{
  result = [a2 isPlaying];
  if (result)
  {
    return CMSUtility_PlaysToCarMainAudio(a2);
  }

  return result;
}

uint64_t CMSUtility_GetStarkInterruptionContext(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v5 = result;
  *a3 = result;
  result = [a2 audioCategory];
  *(a3 + 32) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  if (!a2)
  {
    return result;
  }

  if (v5 == 1)
  {
    if (FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E610, @"PhoneCall") && (result = CMSMUtility_PhoneCallOrRingtoneExists(), !result))
    {
      *(a3 + 16) = -1;
    }

    else
    {
      result = CMSMUtility_IsPlayAndRecordCategory([a2 audioCategory]);
      if (!result)
      {
        [a2 audioCategory];
        result = FigCFEqual();
        if (!result)
        {
          return result;
        }
      }
    }

    *(a3 + 24) = -1;
    return result;
  }

  if (v5)
  {
    return result;
  }

  [a2 audioCategory];
  if (FigCFEqual())
  {
    v6 = -1;
LABEL_14:
    *(a3 + 24) = v6;
    goto LABEL_15;
  }

  if (CMSMUtility_ShouldCarPlaySpeechAppStateBeSet(a2))
  {
    v6 = 10;
    goto LABEL_14;
  }

LABEL_15:
  result = [a2 hasPhoneCallBehavior];
  if ((result & 1) != 0 || ([a2 audioCategory], result = FigCFEqual(), result))
  {
    *(a3 + 16) = 1;
  }

  return result;
}

void CMSUtilityApplier_InheritApplicationStateAndPostApplicationStateDidChangeNotification(void *a1, const __CFNumber *a2)
{
  v3 = *MEMORY[0x1E695E480];
  [objc_msgSend(a1 "clientPID")];
  SInt32 = FigCFNumberCreateSInt32();
  CMSessionMgrHandleApplicationStateChange(SInt32, a2, 0);
  if (SInt32)
  {

    CFRelease(SInt32);
  }
}

void CMSUtility_PostInterruptionCommandNotification(void *a1, unsigned int a2, __CFString *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = a2;
  v17 = CFGetAllocator(a1);
  v18 = CFNumberCreate(v17, kCFNumberSInt32Type, &valuePtr);
  if (v18)
  {
    v19 = v18;
    CFDictionarySetValue(Mutable, @"InterruptionCmd", v18);
    CFRelease(v19);
  }

  if (a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = @"unknown interruptor";
  }

  CFDictionarySetValue(Mutable, @"InterruptorName", v20);
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"Status", a4);
  }

  if (a7)
  {
    CFDictionarySetValue(Mutable, @"InterruptionReason", a7);
  }

  if (a8)
  {
    CFDictionarySetValue(Mutable, @"InterruptorBundleID", a8);
  }

  if ([a1 applicationState] == 2)
  {
    CFDictionarySetValue(Mutable, @"InterruptedDueToAppSuspension", *MEMORY[0x1E695E4D0]);
  }

  if (a5)
  {
    CFDictionarySetValue(Mutable, @"QuietVolume", a5);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, @"VolumeChangeDuration", a6);
  }

  IsAsyncDuckingEnabled = MX_FeatureFlags_IsAsyncDuckingEnabled();
  if ((a2 & 0xFFFFFFFE) == 2 && IsAsyncDuckingEnabled)
  {
    CFDictionarySetValue(Mutable, @"ModeAsync", *MEMORY[0x1E695E4D0]);
  }

  v22 = [a1 interruptingSession];
  v23 = [v22 audioSessionID];
  if (v23)
  {
    CFDictionarySetValue(Mutable, @"AudioSessionID", [MEMORY[0x1E696AD98] numberWithInt:v23]);
  }

  IsAirPlayVideoActive = CMSMUtility_IsAirPlayVideoActive();
  v25 = [objc_msgSend(a1 "clientPID")];
  v26 = [a1 audioSessionID];
  [MXSessionManagerBase postInterruptionCommandForAudioSessionID:v25 sessionID:v26 interruptiondCmd:valuePtr interruptionInfo:Mutable];
  if (IsAirPlayVideoActive)
  {
    if (a2)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v27 = [a1 isAudioOnlyAirPlayVideoActive];
    if (a2 || (v27 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ([v22 isTheAssistant] && CMSMUtility_IsCarPlayVideoActive() && objc_msgSend(a1, "isActiveOverAirPlayVideo"))
  {
    [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E118], @"KeepAirPlayVideoConnectionActive", 0}];
    CFDictionarySetValue(Mutable, @"KeepClientConnectionActive", *MEMORY[0x1E695E4D0]);
  }

  CMSMUtility_PostNotificationToSession(a1, @"AirPlayVideoWillBeInterrupted");
LABEL_33:
  if ([a1 isCarSession])
  {
    CMSMUtility_PostNotificationToSession(a1, @"Interruption");
    if (!Mutable)
    {
      return;
    }

LABEL_39:
    CFRelease(Mutable);
    return;
  }

  if (Mutable)
  {
    CFRetain(Mutable);
  }

  v28 = a1;
  v29 = MXGetNotificationSenderQueue();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __CMSUtility_PostInterruptionCommandNotification_block_invoke;
  v30[3] = &unk_1E7AEBCA0;
  v30[4] = a1;
  v30[5] = Mutable;
  MXDispatchAsync("CMSUtility_PostInterruptionCommandNotification", "CMSessionManager_SessionUtilities.m", 6873, 0, 0, v29, v30);
  if (Mutable)
  {
    goto LABEL_39;
  }
}

void *CMSUtilityApplier_ResumeWaitingLockStopper(void *result, _BYTE *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (([result isPlaying] & 1) != 0 || !objc_msgSend(v3, "waitingToResumeWhenDeviceUnlocksOrInForeground"))
    {
      if ([v3 wasInterruptedByNowPlayingApp])
      {
        v5 = *MEMORY[0x1E695E480];
        v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@.%@", @"non-resumable", [v3 audioCategory]);
        valuePtr[0] = 1060320051;
        v7 = CFNumberCreate(v5, kCFNumberFloat32Type, valuePtr);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtility_PostInterruptionCommandNotification(v3, 1u, [v3 clientName], v6, 0, v7, 0, 0);
        if (v7)
        {
          CFRelease(v7);
        }

        if (v6)
        {
          CFRelease(v6);
        }

        [v3 setWasInterruptedByNowPlayingApp:0];
      }
    }

    else
    {
      cmsSetIsPlaying(v3, 1);
      if (dword_1EB75DE40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_PostInterruptionCommandNotification(v3, 5u, 0, 0, 0, 0, 0, 0);
      *a2 = 1;
      if ([v3 wasRecordingBeforeBeingInterrupted])
      {
        [v3 setIsRecording:1];
        [v3 setWasRecordingBeforeBeingInterrupted:0];
        [+[MXSessionManager sharedInstance](MXSessionManager updateForRecordingStateDidChange];
      }
    }

    result = [v3 setWaitingToResumeWhenDeviceUnlocksOrInForeground:{0, v10, v12}];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSUtilityApplier_PostNotification_StopCommandWithReason(void *a1, unsigned __int8 *a2, const void *a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = *a2;
      v6 = CMSUtility_CopyFadeDuration(0, 0, v5);
      if (v5)
      {
        CMSMUtility_PostNotifyStyleFadeOutAppliedForPlaybackHandoff();
      }
    }

    else
    {
      v6 = CMSUtility_CopyFadeDuration(0, 0, 0);
    }

    CMSUtility_PostInterruptionCommandNotification(a1, 0, @"CMSessionManager", 0, 0, v6, a3, 0);
    if ([a1 needToEndInterruption])
    {
      MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, @"interrupted", 1);
    }

    if ([a1 isActive])
    {
      cmsSetIsActive(a1, 0, 0);
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }
}

void CMSUtilityApplier_PostNotificationToBackgroundedSession_StopCommand(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CMSUtility_CopyFadeDuration(0, 0, 0);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSUtility_PostInterruptionCommandNotification(a1, 0, @"CMSessionManager", 0, 0, v2, 0, 0);
    if (v2)
    {
      CFRelease(v2);
    }

    if ([a1 needToEndInterruption])
    {
      if ([a1 wantsToSendResumableEndInterruptionWhenBackgrounded])
      {
        v4 = @"resumable.backgrounded";
      }

      else
      {
        v4 = @"interrupted";
      }

      MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, v4, 1);
    }

    if ([a1 isActive])
    {
      cmsSetIsActive(a1, 0, 0);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void CMSUtilityApplier_PostNotificationToLockStoppers_StopCommand(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CMSUtility_CopyFadeDuration(0, 0, 0);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSUtility_PostInterruptionCommandNotification(a1, 0, @"CMSessionManager", 0, 0, v2, 0, 0);
    if ([a1 wantsToSendResumableEndInterruptionWhenBackgrounded])
    {
      v4 = @"resumable.backgrounded";
    }

    else
    {
      v4 = @"backgrounded";
    }

    MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, v4, 1);
    if ([a1 isActive])
    {
      cmsSetIsActive(a1, 0, 0);
    }

    [a1 setWaitingForEndInterruptionWhenDeviceUnlocksOrInForeground:{1, v6, v7}];
    if (v2)
    {
      CFRelease(v2);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void *CMSUtilityApplier_PostNotification_EndInterruptionCommand(void *result)
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (([result isActive] & 1) == 0 && objc_msgSend(v1, "waitingForEndInterruptionWhenDeviceUnlocksOrInForeground"))
    {
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", @"non-resumable", objc_msgSend(v1, "audioCategory")];
      valuePtr[0] = 1060320051;
      v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_PostInterruptionCommandNotification(v1, 1u, [v1 clientName], v2, 0, v3, 0, 0);
    }

    result = [v1 setWaitingForEndInterruptionWhenDeviceUnlocksOrInForeground:0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSUtilityApplier_PostNotification_PauseCommand(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 isPlaying];
  }

  else
  {
    v2 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSUtility_PostInterruptionCommandNotification(a1, 4u, 0, 0, 0, 0, 0, 0);
  cmsSetIsPlaying(a1, 0);
  CMSMSleep_ReleasePlaybackProcessAssertion(a1);
  if ([a1 needToEndInterruption])
  {
    MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, @"backgrounded", 1);
  }

  if ([a1 isActive])
  {
    cmsSetIsActive(a1, 0, 0);
  }

  v4 = *MEMORY[0x1E695E480];
  [objc_msgSend(a1 "clientPID")];
  SInt32 = FigCFNumberCreateSInt32();
  if (-[NSArray containsObject:](-[MXSessionManager recordingClientPIDs](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "recordingClientPIDs"), "containsObject:", SInt32) && [a1 isRecording])
  {
    [a1 setIsRecording:0];
    [a1 setWasRecordingBeforeBeingInterrupted:1];
    [+[MXSessionManager sharedInstance](MXSessionManager updateForRecordingStateDidChange];
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  result = [a1 setWaitingToResumeWhenDeviceUnlocksOrInForeground:v2];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *CMSUtilityApplier_PostNotification_ResumeCommand(void *result)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (([result isPlaying] & 1) != 0 || !objc_msgSend(v1, "waitingToResumeWhenDeviceUnlocksOrInForeground"))
    {
      if ([v1 wasInterruptedByNowPlayingApp])
      {
        v3 = *MEMORY[0x1E695E480];
        v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@.%@", @"non-resumable", [v1 audioCategory]);
        valuePtr[0] = 1060320051;
        v5 = CFNumberCreate(v3, kCFNumberFloat32Type, valuePtr);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtility_PostInterruptionCommandNotification(v1, 1u, [v1 clientName], v4, 0, v5, 0, 0);
        if (v5)
        {
          CFRelease(v5);
        }

        if (v4)
        {
          CFRelease(v4);
        }

        [v1 setWasInterruptedByNowPlayingApp:0];
      }
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_PostInterruptionCommandNotification(v1, 5u, 0, 0, 0, 0, 0, 0);
      if ([v1 wasRecordingBeforeBeingInterrupted])
      {
        [v1 setIsRecording:1];
        [v1 setWasRecordingBeforeBeingInterrupted:0];
        [+[MXSessionManager sharedInstance](MXSessionManager updateForRecordingStateDidChange];
      }
    }

    result = [v1 setWaitingToResumeWhenDeviceUnlocksOrInForeground:{0, v8, v10}];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSUtility_DeactivateTimerHandler(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = CMSMUtility_CopyMXCoreSessionWithID(a1);
  if (v1)
  {
    v2 = v1;
    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      if ([v2 isActive] && (objc_msgSend(v2, "isPlaying") & 1) == 0 && objc_msgSend(v2, "sessionDeactivateTimer"))
      {
        dispatch_source_cancel([v2 sessionDeactivateTimer]);
        [v2 setSessionDeactivateTimer:0];
        if (-[MXSessionManager isAirPlaySession:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isAirPlaySession:", v2) && [v2 reporterStarted])
        {
          CMSUtility_StopReporterWithAudioStatistics(v2);
        }

        else
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommandWithReason(v2, 0, 0);
        }
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

CFIndex CMSUtility_StopReporterWithAudioStatistics(void *a1)
{
  valuePtr[21] = *MEMORY[0x1E69E9840];
  result = [a1 reporterIDs];
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v3 = result;
      for (i = 0; i != v3; ++i)
      {
        valuePtr[0] = 1;
        ValueAtIndex = CFArrayGetValueAtIndex([a1 reporterIDs], i);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, valuePtr);
        [a1 setReporterStarted:0];
        result = off_1EB75E008(valuePtr[0]);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}