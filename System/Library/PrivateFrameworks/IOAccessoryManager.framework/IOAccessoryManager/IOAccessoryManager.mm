void __powerBatteryInterest(uint64_t a1, io_registry_entry_t a2, int a3)
{
  if (a3 == -536723200)
  {
    __powerUpdateBatteryState(a2);
  }
}

void __powerUpdateBatteryState(io_registry_entry_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  properties = 0;
  if (!IORegistryEntryCreateCFProperties(a1, &properties, 0, 0))
  {
    v1 = byte_2812C44D4;
    v2 = [-[__CFDictionary objectForKey:](properties objectForKey:{@"ExternalConnected", "BOOLValue"}];
    byte_2812C44D4 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [gUserLdcmParams enableHalogenMitigationsAndUI];
      *buf = 67109632;
      v23 = v1;
      v24 = 1024;
      *v25 = v2;
      *&v25[4] = 2048;
      *&v25[6] = v3;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "handle battery state update: isExtChg=%u->%u, enableHalogenMitigationsAndUI %llu", buf, 0x18u);
    }

    if ([gUserLdcmParams enableHalogenMitigationsAndUI] == 1 && byte_2812C44D4 != v1 && byte_2812C44D4 != 0)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = [gHalogenMeasurements allKeys];
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        v10 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = [gHalogenMeasurements objectForKey:v12];
            v14 = v13;
            if (v13 && [v13 attachDelayTimerRunning])
            {
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109634;
                v23 = byte_2812C44D4;
                v24 = 2112;
                *v25 = v12;
                *&v25[8] = 2112;
                *&v25[10] = v14;
                _os_log_impl(&dword_2548F1000, v10, OS_LOG_TYPE_DEFAULT, "handle battery state update: isExtChg=%u, stop (delay) timer and perform measurement, key %@, halogenWrapper %@", buf, 0x1Cu);
              }

              dispatch_source_set_timer([v14 timer], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
              [v14 setAttachDelayTimerRunning:0];
              v15 = [v14 halogenMeasurementDispatchQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = ____powerUpdateBatteryState_block_invoke;
              block[3] = &unk_279793038;
              block[4] = v14;
              dispatch_async(v15, block);
            }

            else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109634;
              v23 = byte_2812C44D4;
              v24 = 2112;
              *v25 = v12;
              *&v25[8] = 2112;
              *&v25[10] = v14;
              _os_log_impl(&dword_2548F1000, v10, OS_LOG_TYPE_DEFAULT, "handle battery state update: isExtChg=%u, (delay) timer not running, don't perform measurement, key %@, halogenWrapper %@", buf, 0x1Cu);
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
        }

        while (v8);
      }
    }

    CFRelease(properties);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void IOPortLDCMPortInterestCallback(void *a1, io_registry_entry_t entry, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 == -469794615)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"ConnectionActive", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v5 = a1;
      if (v5)
      {
        v6 = [CFProperty BOOLValue];
        v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          if (v7)
          {
            v9 = 136315138;
            v10 = "IOPortLDCMPortInterestCallback";
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s kIOPort_Message_ConnectionStateChange attach\n", &v9, 0xCu);
          }

          [v5 handleAttachEvent];
        }

        else
        {
          if (v7)
          {
            v9 = 136315138;
            v10 = "IOPortLDCMPortInterestCallback";
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s kIOPort_Message_ConnectionStateChange detach \n", &v9, 0xCu);
          }

          [v5 handleDetachEvent];
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void systemPowerCallback(void *a1, uint64_t a2, int a3, intptr_t a4)
{
  if (a3 > -536870145)
  {
    if (a3 == -536870144)
    {
      v10 = dispatch_walltime(0, 100000000);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __systemPowerCallback_block_invoke;
      block[3] = &unk_279793038;
      block[4] = a1;
      dispatch_after(v10, global_queue, block);
      return;
    }

    if (a3 != -536870112)
    {
      return;
    }

    [objc_msgSend(a1 "powerStateCond")];
    v6 = a1;
    v7 = 1;
    goto LABEL_8;
  }

  if (a3 != -536870288)
  {
    if (a3 != -536870272)
    {
      return;
    }

    IOAllowPowerChange([a1 systemPowerPort], a4);
    [objc_msgSend(a1 "powerStateCond")];
    v6 = a1;
    v7 = 0;
LABEL_8:
    [v6 setPowerState:v7];
    [objc_msgSend(a1 "powerStateCond")];
    v8 = [a1 powerStateCond];

    [v8 unlock];
    return;
  }

  v9 = [a1 systemPowerPort];

  IOAllowPowerChange(v9, a4);
}

uint64_t __systemPowerCallback_block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "powerStateCond")];
  [*(a1 + 32) setPowerState:2];
  [objc_msgSend(*(a1 + 32) "powerStateCond")];
  v2 = [*(a1 + 32) powerStateCond];

  return [v2 unlock];
}

uint64_t recordCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 halogenUnitDelegate];

  return [v11 recordCallBackFunc:a2 AudioTimeStamp:a3 busNum:a4 numFrames:a5 AudioBufferList:a6];
}

uint64_t playbackCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 halogenUnitDelegate];

  return [v11 playbackCallBackFunc:a2 AudioTimeStamp:a3 busNum:a4 numFrames:a5 AudioBufferList:a6];
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 8u);
}

void IOAccessoryNotifyWetCallback(uint64_t a1, uint64_t a2)
{
  v2 = gLdcmNotificationContext;
  if (gLdcmNotificationContext)
  {
    if (*gLdcmNotificationContext == 1)
    {
      *gLdcmNotificationContext = 0;
      IOAccessoryNotifyWetHandler(v2, a2);
    }
  }
}

void IOAccessoryNotifyWetHandlerDismiss()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v0 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM UI Dismiss!!!\n", v0, 2u);
  }
}

uint64_t IOAccessoryNotifyWetHandlerEmergencyOverride(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM UI Emergency Override!!!\n", v3, 2u);
  }

  return [*(a1 + 48) setOverride:1];
}

void IOAccessoryNotifyWetCancel()
{
  v0 = gLdcmNotificationContext;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM UI Cancel!!!\n", v4, 2u);
  }

  if (v0)
  {
    if (*v0 == 1)
    {
      v1 = [MEMORY[0x277CBEB38] dictionary];
      v2 = [MEMORY[0x277CCABB0] numberWithLong:llround(CFAbsoluteTimeGetCurrent() - *(v0 + 8))];
      [v1 setObject:v2 forKey:@"notificationDuration"];

      v3 = [MEMORY[0x277CCABB0] numberWithInt:3];
      [v1 setObject:v3 forKey:@"notificationUserAction"];

      AnalyticsSendEvent();
      CFUserNotificationCancel(*(v0 + 24));
      *v0 = 0;
      CFRunLoopRemoveSource(*(v0 + 40), *(v0 + 32), *MEMORY[0x277CBF048]);
      CFRelease(*(v0 + 32));
      CFRelease(*(v0 + 24));
    }
  }
}

void __IOAccessoryFileRadarLDCMV4_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "IOAccessoryFileRadarLDCMV4_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Error while filing radar. %@\n", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

uint64_t OUTLINED_FUNCTION_3()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

void IOPortLDCMFeatureInterestCallback(void *a1, io_registry_entry_t a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case -469794613:
      v10 = a1;
      CFProperty = IORegistryEntryCreateCFProperty(a2, @"MitigationsStatus", *MEMORY[0x277CBECE8], 0);
      v12 = CFProperty;
      if (v10 && CFProperty)
      {
        v13 = [CFProperty intValue];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 136315394;
          *&v15[4] = "IOPortLDCMFeatureInterestCallback";
          *&v15[12] = 1024;
          *&v15[14] = v13;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s kIOPortFeatureLDCMMessageTypeMitigationsStatusChange: %d\n", v15, 0x12u);
        }

        [v10 handleLDCMMitigationsStatusChange:v13];
      }

      goto LABEL_18;
    case -469794614:
      v8 = a1;
      if (v8)
      {
        v5 = v8;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 136315138;
          *&v15[4] = "IOPortLDCMFeatureInterestCallback";
          v6 = MEMORY[0x277D86220];
          v7 = "%s kIOPortFeatureLDCMMessageTypeMeasurementStatusChange\n";
          goto LABEL_10;
        }

LABEL_11:
        [v5 handleLDCMInterrupt];
      }

LABEL_18:

      break;
    case -469794616:
      v4 = a1;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 136315138;
          *&v15[4] = "IOPortLDCMFeatureInterestCallback";
          v6 = MEMORY[0x277D86220];
          v7 = "%s kIOPortFeatureLDCMMessageTypeLiquidDetectedChange\n";
LABEL_10:
          _os_log_impl(&dword_2548F1000, v6, OS_LOG_TYPE_DEFAULT, v7, v15, 0xCu);
          goto LABEL_11;
        }

        goto LABEL_11;
      }

      goto LABEL_18;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

uint64_t isDeviceTypeC_V3()
{
  *existing = 0;
  v0 = *MEMORY[0x277CD2898];
  v1 = IOServiceMatching("IOPort");
  if (IOServiceGetMatchingServices(v0, v1, &existing[1]))
  {
    v2 = 1;
  }

  else
  {
    v2 = existing[1] == 0;
  }

  if (v2)
  {
    v3 = 0;
LABEL_12:
    v7 = 0;
    v8 = 0;
    goto LABEL_13;
  }

  v4 = IOIteratorNext(existing[1]);
  v3 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *MEMORY[0x277CBECE8];
  while (1)
  {
    valuePtr = 0;
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"PortType", v5, 0);
    v7 = CFProperty;
    if (CFProperty)
    {
      CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
      if (valuePtr == 2)
      {
        break;
      }
    }

    IOObjectRelease(v3);
    CFRelease(v7);
    v3 = IOIteratorNext(existing[1]);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  v8 = 1;
LABEL_13:
  v9 = IOServiceMatching("IOPortFeatureLDCM");
  if (IOServiceGetMatchingServices(v0, v9, existing))
  {
    v10 = 1;
  }

  else
  {
    v10 = existing[0] == 0;
  }

  if (v10)
  {
    v11 = 0;
    v12 = 0;
LABEL_19:
    v13 = 1;
    if (!v3)
    {
      goto LABEL_21;
    }

LABEL_20:
    IOObjectRelease(v3);
    goto LABEL_21;
  }

  v15 = IOIteratorNext(existing[0]);
  v11 = v15;
  if (v15)
  {
    v16 = *MEMORY[0x277CBECE8];
    do
    {
      valuePtr = -1431655766;
      v17 = IORegistryEntryCreateCFProperty(v11, @"ArchitectureVersion", v16, 0);
      if (v17)
      {
        v12 = v17;
        CFNumberGetValue(v17, kCFNumberIntType, &valuePtr);
        if (valuePtr == 3)
        {
          goto LABEL_19;
        }

        IOObjectRelease(v11);
        CFRelease(v12);
      }

      v11 = IOIteratorNext(existing[0]);
    }

    while (v11);
  }

  v12 = 0;
  v13 = 0;
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (existing[1])
  {
    IOObjectRelease(existing[1]);
  }

  if (v11)
  {
    IOObjectRelease(v11);
  }

  if (existing[0])
  {
    IOObjectRelease(existing[0]);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v8 & v13;
}

void IOAccessoryServiceMatchingCallbackTypeC(IONotificationPort *a1, io_iterator_t a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "LDCM", 0x8000100u);
  v6 = IOIteratorNext(a2);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      notification = -1431655766;
      CFProperty = IORegistryEntryCreateCFProperty(v7, @"FeaturesSupported", v4, 0);
      if (CFProperty)
      {
        v10 = CFProperty;
        if (CFArrayGetCount(CFProperty) >= 1)
        {
          v15.length = CFArrayGetCount(v10);
          v15.location = 0;
          if (CFArrayContainsValue(v10, v15, v5))
          {
            v11 = [[IOAccessoryLDCMPortManagerTypeC alloc] initWithParams:60 dryPollingIntervalNs:30];
            v8 = v11;
            if (v11 && [(IOAccessoryLDCMPortManagerTypeC *)v11 typeC])
            {
              v12 = [(IOAccessoryLDCMPortManagerTypeC *)v8 halogenTypeCDispatchQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __IOAccessoryServiceMatchingCallbackTypeC_block_invoke;
              block[3] = &unk_279793038;
              block[4] = v8;
              dispatch_async(v12, block);
            }

            if (IOServiceAddInterestNotification(a1, v7, "IOGeneralInterest", IOAccessoryInterestNotificationCallbackTypeC, v8, &notification))
            {
              IOObjectRelease(v7);
              if (!v5)
              {
                goto LABEL_17;
              }

LABEL_16:
              CFRelease(v5);
              goto LABEL_17;
            }
          }
        }

        IOObjectRelease(v7);
        CFRelease(v10);
      }

      else
      {
        IOObjectRelease(v7);
      }

      v7 = IOIteratorNext(a2);
      if (!v7)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = 0;
LABEL_15:
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v8)
  {
  }
}

void IOAccessoryServiceMatchingCallback(IONotificationPort *a1, io_iterator_t iterator)
{
  v70 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v2 = IOIteratorNext(iterator);
  v3 = 0;
  if (!v2)
  {
LABEL_67:
    v44 = 1;
    goto LABEL_68;
  }

  allocator = *MEMORY[0x277CBECE8];
  identifier = *MEMORY[0x277CBEE80];
  v4 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
  v5 = MEMORY[0x277D86220];
  while (1)
  {
    notification = -1431655766;
    Type = IOAccessoryManagerGetType();
    v7 = (Type & 0x600) != 0 && (Type & 0xF0) == 0;
    if ((IOAccessoryManagerGetType() & 0xF0) != 0 || (CFProperty = IORegistryEntryCreateCFProperty(v2, @"SupportsEisAfe", allocator, 0)) == 0)
    {
      PrimaryPort = IOAccessoryManagerGetPrimaryPort();
      v12 = 0;
      if (!v7)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v9 = CFProperty;
      Value = CFBooleanGetValue(CFProperty);
      CFRelease(v9);
      PrimaryPort = IOAccessoryManagerGetPrimaryPort();
      if (Value)
      {
        if ([v4[22].cache enableHalogenMitigationsAndUI] == 1)
        {
          [v4[22].cache setUserBehaviorMask:47];
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (!v7)
        {
          goto LABEL_47;
        }
      }
    }

    v50 = v7;
    v13 = v3;
    v14 = v5;
    v15 = v4;
    [gIOAMLogLock lock];
    if (gIOAMLogFilepath)
    {

      gIOAMLogFilepath = 0;
    }

    gIOAMLogFilepath = [MEMORY[0x277CCAB68] stringWithString:@"/private/var/mobile/Library/Logs/com.apple.ioam/ioam_logs/"];
    v16 = gIOAMLogFilepath;
    v60 = 0;
    *connect = 0;
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v17 = CFTimeZoneCopySystem();
    if (v17)
    {
      break;
    }

LABEL_26:
    [gIOAMLogLock unlock];
    connect[0] = 0;
    if (IOServiceOpen(v2, *MEMORY[0x277D85F48], 0, connect))
    {
      v27 = 0;
    }

    else
    {
      v27 = IOAccessoryManagerGetLdcmParams() == 0;
    }

    v4 = v15;
    v5 = v14;
    if (connect[0])
    {
      IOServiceClose(connect[0]);
    }

    v3 = v13;
    if (!v27)
    {
      goto LABEL_76;
    }

    if ((Type & 0x200) != 0)
    {
      [v4[22].cache setUserBehaviorMask:{objc_msgSend(v4[22].cache, "userBehaviorMask") & 0xFFFFFFFBLL}];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      connect[0] = 136315138;
      *&connect[1] = "retrievePersistentConfigDictParams";
      _os_log_impl(&dword_2548F1000, v5, OS_LOG_TYPE_DEFAULT, "%s", connect, 0xCu);
    }

    v28 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (v28)
    {
      v29 = [v28 objectForKey:@"configDictionary"];
      if (v29)
      {
        if (v50)
        {
          processLdcmBehaviorPlist(v29, Type);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        connect[0] = 136315138;
        *&connect[1] = "retrievePersistentConfigDictParams";
        _os_log_impl(&dword_2548F1000, v5, OS_LOG_TYPE_DEFAULT, "%s: no persistent dictionary", connect, 0xCu);
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __IOAccessoryServiceMatchingCallback_block_invoke;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v53 = Type;
    dispatch_async(global_queue, block);
    if (IOServiceOpen(v2, *MEMORY[0x277D85F48], 0, &v55))
    {
      goto LABEL_76;
    }

    if (IOAccessoryManagerSetVoltageDetected())
    {
      goto LABEL_76;
    }

    setDriverMitigationEnabled(PrimaryPort, v2, ([v4[22].cache userBehaviorMask] >> 3) & 1);
    v31 = IOServiceClose(v55);
    v55 = 0;
    if (v31)
    {
      goto LABEL_76;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(connect[0]) = 0;
      _os_log_impl(&dword_2548F1000, v5, OS_LOG_TYPE_DEFAULT, ">>> showing initial accy health dictionary", connect, 2u);
    }

    dbgShowAccyHealthDictionary();
LABEL_47:
    v32 = malloc_type_calloc(1uLL, 0x88uLL, 0x10800406FDFDDCEuLL);
    if (!v32)
    {
      goto LABEL_76;
    }

    v33 = v32;
    *v32 = 2;
    *(v32 + 13) = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33[32] = 5000;
    *connect = *v33;
    v34 = *(v33 + 1);
    v35 = *(v33 + 2);
    v36 = *(v33 + 4);
    v64 = *(v33 + 3);
    v65 = v36;
    v62 = v34;
    v63 = v35;
    v37 = *(v33 + 5);
    v38 = *(v33 + 6);
    v39 = *(v33 + 7);
    v69 = *(v33 + 16);
    v67 = v38;
    v68 = v39;
    v66 = v37;
    v40 = [MEMORY[0x277CCAE60] valueWithDockState:connect];
    free(v33);
    [gDockState setObject:v40 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", PrimaryPort)}];
    if (v12)
    {
      v41 = objc_alloc_init(HalogenWrapper);
      if (v41)
      {
        v3 = v41;
        [gHalogenMeasurements setObject:v41 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", PrimaryPort)}];
        v42 = -[HalogenMeasurement initWithSize:onPort:]([HalogenMeasurement alloc], "initWithSize:onPort:", [v4[22].cache numEisHalogenSamples], PrimaryPort);
        if (v42)
        {
          [(HalogenWrapper *)v3 setHalogenMeasurement:v42];
          [(HalogenWrapper *)v3 setService:v2];
          [(HalogenWrapper *)v3 setPortID:PrimaryPort];
        }

        else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          connect[0] = 136315138;
          *&connect[1] = "IOAccessoryServiceMatchingCallback";
          _os_log_impl(&dword_2548F1000, v5, OS_LOG_TYPE_DEFAULT, "%s failed to allocate HalogenMeasurement\n", connect, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          connect[0] = 136315138;
          *&connect[1] = "IOAccessoryServiceMatchingCallback";
          _os_log_impl(&dword_2548F1000, v5, OS_LOG_TYPE_DEFAULT, "%s Failed to create halogenWrapper\n", connect, 0xCu);
        }

        v3 = 0;
      }
    }

    if (IOServiceAddInterestNotification(a1, v2, "IOGeneralInterest", IOAccessoryInterestNotificationCallback, 0, &notification))
    {
      goto LABEL_76;
    }

    if (IOAccessoryManagerGetAccessoryID() == 91)
    {
      IOAccessoryHandleAttach(v2);
    }

    else if (v3 && ([v4[22].cache userBehaviorMask] & 0x10) != 0)
    {
      [(HalogenWrapper *)v3 setIsMeasurementEnabled:1];
      v43 = [(HalogenWrapper *)v3 halogenMeasurementDispatchQueue];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __IOAccessoryServiceMatchingCallback_block_invoke_535;
      v51[3] = &unk_279793038;
      v51[4] = v3;
      dispatch_async(v43, v51);
    }

    IOObjectRelease(v2);
    v2 = IOIteratorNext(iterator);
    if (!v2)
    {
      goto LABEL_67;
    }
  }

  v18 = v17;
  v19 = CFCalendarCreateWithIdentifier(0, identifier);
  if (!v19)
  {
    CFRelease(v18);
    goto LABEL_26;
  }

  v20 = v19;
  CFCalendarSetTimeZone(v19, v18);
  Current = CFAbsoluteTimeGetCurrent();
  CFCalendarDecomposeAbsoluteTime(v20, Current, "MdyHms", connect, &v60, &v59, &v58, &v57, &v56);
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02d%02d%02d-%02d%02d", *connect, v60, v59 % 0x64, v58, v57];
  CFRelease(v18);
  CFRelease(v20);
  if (!v22)
  {
    goto LABEL_26;
  }

  [gIOAMLogFilepath appendString:v22];
  [gIOAMLogFilepath appendString:@".log"];
  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) != 0 || objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", @"/private/var/mobile/Library/Logs/com.apple.ioam/ioam_logs/", 1, 0, 0))
  {
    v23 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v23 fileExistsAtPath:gIOAMLogFilepath] & 1) != 0 || (v24 = objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), objc_msgSend(v24, "createFileAtPath:contents:attributes:", gIOAMLogFilepath, 0, 0)))
    {
      v25 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      if ([v25 count] < 4)
      {
        goto LABEL_26;
      }

      v26 = [@"/private/var/mobile/Library/Logs/com.apple.ioam/ioam_logs/" stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(v25, "sortedArrayUsingComparator:", &__block_literal_global_0), "firstObject")}];
      if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
      {
        goto LABEL_26;
      }
    }
  }

  IOAccessoryServiceMatchingCallback_cold_1();
  v3 = v13;
LABEL_76:
  v44 = 0;
LABEL_68:
  if (v55)
  {
    IOServiceClose(v55);
  }

  if ((v44 & 1) == 0)
  {
    IOObjectRelease(v2);
  }

  if (v3)
  {
  }

  v45 = *MEMORY[0x277D85DE8];
}

uint64_t IOAccessoryVoltageEventMonitorMode(uint64_t result, char a2, char a3)
{
  enableVoltageEventMonitorModeAggD = result;
  enableVoltageEventMonitorModeAppleCareLogging = a2;
  enableVoltageEventMonitorModeConsole = a3;
  return result;
}

unint64_t absoluteToNanoseconds(uint64_t a1)
{
  v2 = dword_2812C4324;
  if (!dword_2812C4324)
  {
    mach_timebase_info(&dword_2812C4320);
    v2 = dword_2812C4324;
  }

  return dword_2812C4320 * a1 / v2;
}

void IOAccessoryInterestNotificationCallbackTypeC(void *a1, io_registry_entry_t entry, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 == -469794615)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"ConnectionActive", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      if (a1)
      {
        Value = CFBooleanGetValue(CFProperty);
        v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (Value)
        {
          if (v7)
          {
            v9 = 136315138;
            v10 = "IOAccessoryInterestNotificationCallbackTypeC";
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s kIOPort_Message_ConnectionStateChange attach\n", &v9, 0xCu);
          }

          [a1 handleAttachEvent];
        }

        else
        {
          if (v7)
          {
            v9 = 136315138;
            v10 = "IOAccessoryInterestNotificationCallbackTypeC";
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s kIOPort_Message_ConnectionStateChange detach \n", &v9, 0xCu);
          }

          [a1 handleDetachEvent];
        }
      }

      CFRelease(v5);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __IOAccessoryServiceMatchingCallback_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "IOAccessoryServiceMatchingCallback_block_invoke";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s starting remote asset query\n", &v3, 0xCu);
  }

  performAssetQuery(0, *(a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "IOAccessoryServiceMatchingCallback_block_invoke";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished remote asset query\n", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void performAssetQuery(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "performAssetQuery";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  v28 = 0;
  v4 = [objc_alloc(MEMORY[0x277D289A8]) initWithAssetType:@"com.apple.MobileAsset.IOAccessoryManager"];
  [v4 setQueriesLocalAssetInformationOnly:a1];
  v5 = [v4 runQueryAndReturnError:&v28];
  v6 = v28;
  if (v28)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_msgSend(v6 "localizedDescription")];
      *buf = 136315394;
      v31 = "performAssetQuery";
      v32 = 2080;
      v33 = v7;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: encountered error: %s\n", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v9 = v5;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_msgSend(v9 "description")];
    *buf = 136315394;
    v31 = "performAssetQuery";
    v32 = 2080;
    v33 = v10;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: MobileAsset query results: %s\n", buf, 0x16u);
  }

  v11 = [v9 lastObject];
  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "getAsset";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
    }

    if ((a1 & 1) == 0 && ([v11 state] != 1 || !objc_msgSend(v11, "localURL")))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = [objc_msgSend(v11 "description")];
        *buf = 136315394;
        v31 = "getAsset";
        v32 = 2080;
        v33 = v12;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Asset not yet downloaded, fetching: %s", buf, 0x16u);
      }

      v29 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v31 = "downloadAssetWithError";
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
      }

      if (([v11 requiredDiskSpaceIsAvailable:0 error:&v29] & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v24 = [objc_msgSend(v11 "description")];
          v25 = [objc_msgSend(v29 "description")];
          *buf = 136315650;
          v31 = "downloadAssetWithError";
          v32 = 2080;
          v33 = v24;
          v34 = 2080;
          v35 = v25;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Skipping download for uninstalled asset. Error in asset %s: %s\n", buf, 0x20u);
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        *buf = 136315138;
        v31 = "getAsset";
        v22 = MEMORY[0x277D86220];
        v23 = "%s: failed\n";
        goto LABEL_42;
      }

      [v11 beginDownloadWithOptions:0];
    }

    if (![v11 localURL])
    {
      goto LABEL_43;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_msgSend(objc_msgSend(v11 "localURL")];
      *buf = 136315394;
      v31 = "getAsset";
      v32 = 2080;
      v33 = v13;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Asset on disk, found at: %s\n", buf, 0x16u);
    }

    v14 = [objc_msgSend(objc_msgSend(v11 "localURL")];
    v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v15];
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v17)
      {
        *buf = 136315138;
        v31 = "load_dict";
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dictionaryWithContentsOfURL succeeded\n", buf, 0xCu);
      }

      gLdcmBehaviorPlist = v16;
      v18 = v16;
      v19 = gLdcmBehaviorPlist;
      if (v19)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v31 = "commitPersistentConfigDictParams";
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        }

        v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        if (v20)
        {
          [v20 setObject:gLdcmBehaviorPlist forKey:@"configDictionary"];
        }

        performAssetQuery_cold_1();
        v21 = processLdcmBehaviorPlist(v19, a2);
        goto LABEL_44;
      }
    }

    else if (v17)
    {
      *buf = 136315138;
      v31 = "load_dict";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dictionaryWithContentsOfURL failed\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_43:
      v21 = 0;
LABEL_44:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (v21)
        {
          v26 = "true";
        }

        else
        {
          v26 = "false";
        }

        *buf = 136315394;
        v31 = "getAsset";
        v32 = 2080;
        v33 = v26;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: success=%s\n", buf, 0x16u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (v21)
        {
          v27 = "true";
        }

        else
        {
          v27 = "false";
        }

        *buf = 136315394;
        v31 = "performAssetQuery";
        v32 = 2080;
        v33 = v27;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: getOrDownloadAsset: %s\n", buf, 0x16u);
      }

      goto LABEL_7;
    }

    *buf = 136315138;
    v31 = "getAsset";
    v22 = MEMORY[0x277D86220];
    v23 = "%s: load_dict failed\n";
LABEL_42:
    _os_log_impl(&dword_2548F1000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
    goto LABEL_43;
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2548FCFE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 != 1)
  {
    j___Unwind_Resume(a1);
  }

  objc_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "performAssetQuery";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: exception\n", &buf, 0xCu);
  }

  objc_end_catch();
  JUMPOUT(0x2548FC9B4);
}

uint64_t __IOAccessoryCreateIOAMLoggingFile_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v5 = *MEMORY[0x277CCA108];
  v6 = [v4 objectForKey:*MEMORY[0x277CCA108]];
  v7 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];

  return [v6 compare:v7];
}

uint64_t dbgShowAccyHealthDictionary()
{
  v41 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v0 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
  obj = gAccyHealthDictionary;
  result = [gAccyHealthDictionary countByEnumeratingWithState:&v22 objects:v40 count:16];
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = *v23;
    v6 = MEMORY[0x277D86220];
    *&v2 = 67110658;
    v19 = v2;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = [v0[31].cache objectForKey:{v8, v19}];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v8 UTF8String];
          v10 = [v9 lastSeenTimestamp];
          v11 = [v9 isHealthy];
          v12 = [v9 leakagePassedCount];
          v13 = v3;
          v14 = v5;
          v15 = v0;
          v16 = [v9 dryCount];
          v17 = [v9 wetCount];
          *buf = v19;
          v27 = v4;
          v28 = 2082;
          v29 = v21;
          v30 = 2048;
          v31 = v10;
          v6 = MEMORY[0x277D86220];
          v32 = 1024;
          v33 = v11;
          v34 = 2048;
          v35 = v12;
          v36 = 2048;
          v37 = v16;
          v0 = v15;
          v5 = v14;
          v3 = v13;
          v38 = 2048;
          v39 = v17;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[health %d] <%{public}s> : %llu, isHealthy %d, leakagePassedCount %llu, dryCount %llu, wetCount %llu", buf, 0x40u);
        }

        ++v4;
        ++v7;
      }

      while (v3 != v7);
      result = [obj countByEnumeratingWithState:&v22 objects:v40 count:16];
      v3 = result;
    }

    while (result);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t appendEventToHistory(void *a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v14 = v4;
  *&v14[16] = v4;
  *&v12[2] = v4;
  v13 = v4;
  if (![a1 count])
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  [objc_msgSend(a1 "lastObject")];
  if (*(a2 + 12) != v11[12])
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  v5 = *(a2 + 14) == *v12 && *(a2 + 18) == *&v12[4];
  if (!v5 || *(a2 + 51) != v14[3])
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  if (*(a2 + 26) != *&v12[12] || *(a2 + 30) != *&v12[16])
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  if (*(a2 + 20) != *&v12[6] || *(a2 + 24) != *&v12[10])
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  if (*(a2 + 32) != v13 || *(a2 + 40) != DWORD2(v13))
  {
    return appendEventToHistory_cold_1(v11, a2, a1);
  }

  ++*&v14[21];
  *&v14[13] = *(a2 + 4);
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:80];
  [a1 removeLastObject];
  return [a1 addObject:v9];
}

BOOL isChargingCableAttached(_BYTE *a1)
{
  if (*a1 != 16)
  {
    return 0;
  }

  if ((a1[1] & 3) != 1)
  {
    return (a1[1] & 3) == 0 && !a1[2] && !a1[3] && !a1[4] && !a1[5];
  }

  if ((a1[2] & 8) == 0 || a1[3] || a1[4])
  {
    return 0;
  }

  return a1[5] == 0;
}

uint64_t digitalIdNumPinsFree(unint64_t a1, uint64_t a2)
{
  v2 = (a1 >> 40) & 4;
  v3 = (a1 >> 40) & 3;
  *(a2 + 4) = 257;
  *a2 = 16843009;
  v4 = (a1 >> 40) & 0x18;
  if (((a1 >> 40) & 0x18) != 0)
  {
    *a2 = 0;
    v5 = 2;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v6 = v4 == 0;
  v7 = v4 != 0;
  v5 += 2;
  v8 = (a2 + 3);
  if (v6)
  {
    v8 = (a2 + 1);
  }

  *v8 = 0;
  *(a2 + 2 * v7) = 0;
LABEL_7:
  if (v2)
  {
    v5 += 2;
    v9 = (a2 + 3);
    if ((a1 & 0x1B0000000000) == 0)
    {
      v9 = (a2 + 1);
    }

    *v9 = 0;
    *(a2 + 2 * ((a1 & 0x1B0000000000) != 0)) = 0;
  }

  if ((a1 & 0x8000000) != 0)
  {
    v5 += (BYTE3(a1) & 1) + 1;
    v10 = (a2 + 3);
    if ((a1 & 0x1F0000000000) == 0)
    {
      v10 = (a2 + 1);
    }

    *v10 = !(a1 & 0x1000000);
    v11 = v2 >> 1;
    if ((a1 & 0x1B0000000000) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    *(a2 + v12) = 0;
  }

  if (v5 <= 4)
  {
    return 4 - v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _retrieveDeviceInterfaceSerialNumber()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = 4;
  while (1)
  {
    v1 = IOAccessoryManagerCopyDeviceInfo();
    if (!v1)
    {
      break;
    }

    usleep(0x186A0u);
    if (!--v0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315394;
        v5 = "_retrieveDeviceInterfaceSerialNumber";
        v6 = 1024;
        v7 = v1;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s IOAccessoryManagerCopyDeviceInfo returned %x\n", &v4, 0x12u);
      }

      break;
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void __IOAccessoryHandleAttach_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "IOAccessoryHandleAttach_block_invoke";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s starting local asset query\n", &v3, 0xCu);
  }

  performAssetQuery(1, *(a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "IOAccessoryHandleAttach_block_invoke";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished local asset query\n", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void _generateUIAnalyticEvents(void *a1, int a2)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  if ([a1 didNotify])
  {
    goto LABEL_2;
  }

  IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.ldcm.notification.count", a1);
  [a1 setDidNotify:1];
  if ([a1 didConfidentNotify])
  {
LABEL_18:
    _generateUIAnalyticEvents_cold_2(a1, a2);
    goto LABEL_2;
  }

  number = 0xAAAAAAAAAAAAAAAALL;
  valuePtr[0] = 0;
  if (!gAccyHealthDictionary)
  {
    v13 = 0;
    v5 = 0;
    goto LABEL_87;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", 0, 0, 0];
  v6 = [gAccyHealthDictionary objectForKey:v5];
  if (!v6 || ![v6 isHealthy])
  {
    v13 = 0;
LABEL_87:
    v11 = 1;
LABEL_90:
    v12 = 1;
    goto LABEL_12;
  }

  if (!digitalIdNumPinsFree([a1 connectedAccessoryDigitalID], buf))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_12;
  }

  [a1 service];
  if (_retrieveDeviceInterfaceSerialNumber())
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_90;
  }

  CFNumberGetValue(number, kCFNumberSInt64Type, valuePtr);
  CFRelease(number);
  v7 = MEMORY[0x277CCACA8];
  v8 = [a1 connectedAccessoryDigitalID];
  v9 = [a1 connectedAccessoryOrientation];
  v5 = [v7 stringWithFormat:@"%012llx_%1d_%012llx", v8, v9, valuePtr[0]];
  v10 = [gAccyHealthDictionary objectForKey:v5];
  v11 = 0;
  if (v10)
  {
    v12 = [v10 isHealthy] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = 1;
LABEL_12:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v46 = v5;
    v47 = 1024;
    LODWORD(v48[0]) = v11;
    WORD2(v48[0]) = 1024;
    *(v48 + 6) = v12;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[eval] <%{public}@> : emptyFail %d, accyFail %d", buf, 0x18u);
  }

  if (v11)
  {
    IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.ldcm.notification.suppress.phone", a1);
    goto LABEL_18;
  }

  if (v12)
  {
    _generateUIAnalyticEvents_cold_1(a1, v13);
    goto LABEL_18;
  }

  IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.ldcm.notification.confidentcount", a1);
  [a1 setDidConfidentNotify:1];
  if ([gUserLdcmParams enableHalogenMitigationsAndUI] == 1)
  {
    number = 0;
    if (([gUserLdcmParams userBehaviorMask] & 2) != 0 && (gLiquidNotificationContext & 1) == 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - *&qword_2812C4390 >= 480.0)
      {
        v15 = 0;
        qword_2812C4390 = *&Current;
      }

      else
      {
        v15 = 1;
      }

      byte_2812C4398 = v15;
      v16 = [gUserLdcmParams userBehaviorMask];
      if ((v16 & 4) == 0)
      {
        byte_2812C4398 = 0;
        qword_2812C4390 = *&Current;
      }

      v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
      if (v17)
      {
        v18 = v17;
        v19 = MEMORY[0x277CBEC28];
        v20 = MEMORY[0x277CBEC38];
        if ((v16 & 4) != 0)
        {
          v21 = MEMORY[0x277CBEC28];
        }

        else
        {
          v21 = MEMORY[0x277CBEC38];
        }

        [v17 setObject:v21 forKeyedSubscript:@"legacy"];
        if (byte_2812C44D4)
        {
          v22 = v20;
        }

        else
        {
          v22 = v19;
        }

        [v18 setObject:v22 forKeyedSubscript:@"chargerConnected"];
        if (byte_2812C4398)
        {
          v23 = v20;
        }

        else
        {
          v23 = v19;
        }

        [v18 setObject:v23 forKeyedSubscript:@"reinsertion"];
        v24 = objc_alloc_init(MEMORY[0x277CCA9D8]);
        if (v24)
        {
          v25 = v24;
          [v24 setUserInfo:v18];
          valuePtr[0] = v25;
          v26 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objc_msgSend(MEMORY[0x277CBEA60] requiringSecureCoding:"arrayWithObjects:count:" error:{valuePtr, 1), 1, &number}];
          v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
          if (v27)
          {
            v28 = v27;
            [v27 setObject:@"com.apple.IOAccessoryManagerFramework.WetNotification" forKeyedSubscript:*MEMORY[0x277D67350]];
            [v28 setObject:v26 forKeyedSubscript:*MEMORY[0x277D67358]];
            v29 = MEMORY[0x277CBEC38];
            [v28 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBF1B0]];
            [v28 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67320]];
            [v28 setObject:v29 forKeyedSubscript:*MEMORY[0x277D67340]];
            v30 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.IOAccessoryManagerFramework"];
            v31 = v30;
            if (v30)
            {
              v32 = [v30 pathForResource:@"PlugIns/WetNotification.appex/Assets.car" ofType:&stru_2866AF328];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v46 = "IOAccessoryNotifyWet";
                v47 = 2112;
                v48[0] = v32;
                _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Setting asset path for LDCM wet icon:%@", buf, 0x16u);
              }

              [v28 setObject:v32 forKeyedSubscript:*MEMORY[0x277D673A0]];
              [v28 setObject:@"lockScreenLiquidDetection" forKeyedSubscript:*MEMORY[0x277D67398]];
              [v28 setObject:@"YES" forKeyedSubscript:*MEMORY[0x277D67390]];
              [v28 setObject:v32 forKeyedSubscript:*MEMORY[0x277D67378]];
              [v28 setObject:@"lockScreenLiquidDetection" forKeyedSubscript:*MEMORY[0x277D67370]];
              v33 = [v31 resourceURL];
              [v28 setObject:v33 forKeyedSubscript:*MEMORY[0x277CBF208]];
            }

            if ((v16 & 4) != 0)
            {
              if (v31)
              {
                v35 = @"WETMSG_DIALOG_HEADER_LOCKSCREEN";
              }

              else
              {
                v35 = @"LIQUID DETECTED";
              }

              if (v31)
              {
                v36 = @"WETMSG_DIALOG_BODY_LOCKSCREEN";
              }

              else
              {
                v36 = @"Charging is not available because liquid has been detected in the Lightning connector. Disconnect to allow the connector to dry.";
              }

              if (v31)
              {
                v37 = @"WETMSG_BUTTON_DISMISS";
              }

              else
              {
                v37 = @"Dismiss";
              }

              v38 = @"WETMSG_BUTTON_EMERGENCY_OVERRIDE";
              if (!v31)
              {
                v38 = @"Emergency Override";
              }

              if (byte_2812C4398)
              {
                v34 = v38;
              }

              else
              {
                v34 = 0;
              }
            }

            else
            {
              v34 = 0;
              if (v31)
              {
                v35 = @"WETMSG_DIALOG_HEADER_LOCKSCREEN_LEGACY";
              }

              else
              {
                v35 = @"LIQUID DETECTED";
              }

              if (v31)
              {
                v36 = @"WETMSG_DIALOG_BODY_LOCKSCREEN_LEGACY";
              }

              else
              {
                v36 = @"Liquid has been detected in the Lightning connector. Disconnect to allow the connector to dry. Charging now may damage your iPhone.";
              }

              if (v31)
              {
                v37 = @"WETMSG_BUTTON_CLOSE";
              }

              else
              {
                v37 = @"Close";
              }
            }

            [v28 setObject:v35 forKeyedSubscript:*MEMORY[0x277D673B8]];
            [v28 setObject:v36 forKeyedSubscript:*MEMORY[0x277D673C8]];
            [v28 setObject:v37 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
            [v28 setObject:v34 forKeyedSubscript:*MEMORY[0x277CBF218]];
            if (gEnableTapToRadarPopup == 1 && gGiveUserRadarOption == 1 && gIsInternalBuild == 1)
            {
              if (v31)
              {
                v39 = @"WETMSG_BUTTON_RADAR";
              }

              else
              {
                v39 = @"Radar";
              }

              [v28 setObject:v39 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
            }

            gLiquidNotificationContext = 1;
            if (a1)
            {
              qword_2812C43B8 = a1;
            }

            v40 = *MEMORY[0x277CBECE8];
            qword_2812C43A0 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v28);
            RunLoopSource = CFUserNotificationCreateRunLoopSource(v40, qword_2812C43A0, IOAccessoryNotifyWetCallback_0, 0);
            qword_2812C43A8 = RunLoopSource;
            if (RunLoopSource)
            {
              CFRunLoopAddSource(qword_2812C43B0, RunLoopSource, *MEMORY[0x277CBF048]);
            }

            v25 = v18;
            v18 = v28;
          }
        }
      }

      v42 = number;
      if (number)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v43 = [-[__CFNumber localizedDescription](v42 "localizedDescription")];
          *buf = 136315394;
          v46 = "IOAccessoryNotifyWet";
          v47 = 2080;
          v48[0] = v43;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s err: %s", buf, 0x16u);
          v42 = number;
        }
      }
    }
  }

LABEL_2:
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t halogenMeasurementCleanup(void *a1)
{
  [a1 setConnectedAccessoryPDigitalID:0];
  [a1 setIsTimestampValid:0];
  [a1 setIsWet:0];
  [a1 setWasTapToRadarShown:0];
  [a1 setIsMeasurementEnabled:0];
  [a1 setDidNotify:0];
  [a1 setDidConfidentNotify:0];
  [a1 setDidHighConfidentNotify:0];
  [a1 setDidWetDuration:0];
  [a1 setAccessoryConnectedWhileWet:0];
  [a1 setDidWetTooLong:0];
  [a1 setIsHeadsetConnected:0];
  [a1 setIsDebugAccessoryConnected:0];

  return [a1 setIsBlacklistedAccessoryConnected:0];
}

void IOAccessoryNotifyWetHandlerDismiss_0()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "UI Dismiss!!!\n", v0, 2u);
  }
}

void __IOAccessoryGiveUserRadarOption_block_invoke(uint64_t a1)
{
  if ([gUserLdcmParams enableHalogenMitigationsAndUI] == 1)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    IOAccessoryFileRadarHalogen(v5, v6);
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    if (*(a1 + 48))
    {
      v2 = @"SNR failure while doing Liquid Detection.\n File a Radar?";
    }

    else
    {
      v2 = @"Liquid detected in Lightning port.\n File a Radar?";
    }

    v3 = CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v2, 0, @"Not Now", @"Yes", 0, &v7);
    [*(a1 + 40) setIsTapToRadarPending:0];
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v7 == 1;
    }

    if (v4)
    {
      IOAccessoryFileRadarHalogen(*(a1 + 32), *(a1 + 48));
    }
  }
}

uint64_t _holdPowerAssertion(int a1, void *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = [a2 isPowerAssertionHeld];
  if (a1)
  {
    if ((v4 & 1) == 0)
    {
      v13[0] = @"AssertType";
      v13[1] = @"AssertLevel";
      v14[0] = @"NoIdleSleepAssertion";
      v14[1] = &unk_2866B8ED0;
      v13[2] = @"AssertName";
      v13[3] = @"AllowsDeviceRestart";
      v5 = *MEMORY[0x277CBED28];
      v14[2] = @"com.apple.ioaccessorymanager.halogen";
      v14[3] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
      AssertionID = [a2 sleepAssertionID];
      if (IOPMAssertionCreateWithProperties(v6, &AssertionID))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          _holdPowerAssertion_cold_2();
        }

        goto LABEL_15;
      }

      [a2 setSleepAssertionID:AssertionID];
      v7 = a2;
      v8 = 1;
LABEL_14:
      [v7 setIsPowerAssertionHeld:v8];
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (!v4)
  {
LABEL_10:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      _holdPowerAssertion_cold_3(a2);
    }

    goto LABEL_15;
  }

  if (!IOPMAssertionRelease([a2 sleepAssertionID]))
  {
    v7 = a2;
    v8 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _holdPowerAssertion_cold_1();
  }

LABEL_15:
  v9 = [a2 isPowerAssertionHeld];
  v10 = *MEMORY[0x277D85DE8];
  return v9 ^ a1 ^ 1u;
}

uint64_t reportEisMeasurementStateChange(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  connect = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "reportEisMeasurementStateChange";
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s handleEisMeasurement entry\n", buf, 0xCu);
  }

  v2 = [a1 service];
  result = IOServiceOpen(v2, *MEMORY[0x277D85F48], 0, &connect);
  if (!result)
  {
    memset(buf, 170, 6);
    [objc_msgSend(a1 "connectedAccessoryPDigitalID")];
    [objc_msgSend(a1 "halogenMeasurement")];
    if (!IOAccessoryManagerSetVoltageDetected())
    {
      v5 = [objc_msgSend(a1 "halogenMeasurement")];
      v6.i32[0] = *buf;
      v7 = vmovl_u8(v6).u64[0];
      if (vuzp1_s8(v7, v7).u32[0] == 61700 && !buf[4] && v5 == 2 && !buf[5] && ([a1 isReceptacleEmpty] & 1) == 0)
      {
        IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.voltage.headset", a1);
      }
    }

    result = connect;
    if (connect)
    {
      result = IOServiceClose(connect);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __powerBatteryMatch(void *a1, io_iterator_t iterator)
{
  v15 = *MEMORY[0x277D85DE8];
  notification = -1431655766;
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x277D86220];
    do
    {
      __powerUpdateBatteryState(v5);
      v7 = IOServiceAddInterestNotification(gBatteryStatusNotificationContext, v5, "IOGeneralInterest", __powerBatteryInterest, a1, &notification);
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "__powerBatteryMatch";
          v13 = 1024;
          v14 = v8;
          _os_log_error_impl(&dword_2548F1000, v6, OS_LOG_TYPE_ERROR, "%s IOServiceAddInterestNotification failed: %08x", buf, 0x12u);
        }
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_22()
{
  result = *(v1 + 3240);
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[19];
  v9 = v0[52];
  return result;
}

void OUTLINED_FUNCTION_29(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_30(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_34()
{
  v3 = *(v1 + 2992);

  return [v3 numberWithInt:v0];
}

void OUTLINED_FUNCTION_43(float a1)
{
  *(v3 - 128) = a1;
  *(v1 + 4) = v2;
  *(v3 - 116) = 2112;
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

void handleLDCMNotification(int a1, void *a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"com.apple.CoreAccessories.LDCMPreferencesNotification", 1uLL) == kCFCompareEqualTo)
  {
    [a2 _processLDCMDefauts:0];
  }

  if (CFStringCompare(theString1, @"com.apple.CoreAccessories.TestLDCMAnalyticsNotification", 1uLL) == kCFCompareEqualTo)
  {
    v5 = [a2 halogenTypeCDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __handleLDCMNotification_block_invoke;
    block[3] = &unk_279793038;
    block[4] = a2;
    dispatch_async(v5, block);
  }

  if (CFStringCompare(theString1, @"com.apple.CoreAccessories.LDCMSettingsDidChangeNotification", 1uLL) == kCFCompareEqualTo)
  {
    v6 = [a2 halogenTypeCDispatchQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __handleLDCMNotification_block_invoke_2;
    v11[3] = &unk_279793038;
    v11[4] = a2;
    dispatch_async(v6, v11);
  }

  if (CFStringCompare(theString1, @"com.apple.CoreAccessories.LDCMMitigationsOverrideNotification", 1uLL) == kCFCompareEqualTo)
  {
    v7 = [a2 halogenTypeCDispatchQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __handleLDCMNotification_block_invoke_3;
    v10[3] = &unk_279793038;
    v10[4] = a2;
    dispatch_async(v7, v10);
  }

  if (CFStringCompare(theString1, @"com.apple.CoreAccessories.LDCMActiveMeasurementsDidChangeNotification", 1uLL) == kCFCompareEqualTo)
  {
    v8 = [a2 halogenTypeCDispatchQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __handleLDCMNotification_block_invoke_4;
    v9[3] = &unk_279793038;
    v9[4] = a2;
    dispatch_async(v8, v9);
  }
}

void handleUserRequestedRadarNotification(uint64_t a1, void *a2)
{
  v3 = [a2 halogenTypeCUserPromptDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __handleUserRequestedRadarNotification_block_invoke;
  block[3] = &unk_279793038;
  block[4] = a2;
  dispatch_async(v3, block);
}

void handleWetPromptResponse(uint64_t a1, uint64_t a2)
{
  v3 = qword_27F612858;
  v4 = [qword_27F612858 halogenTypeCUserPromptDispatchQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __handleWetPromptResponse_block_invoke;
  v5[3] = &unk_279793300;
  v5[4] = v3;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

void clearNotificationContext()
{
  if (gWetNotificationContext)
  {
    CFUserNotificationCancel(gWetNotificationContext);
  }

  if (qword_27F612850)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, qword_27F612850, *MEMORY[0x277CBF048]);
    CFRelease(qword_27F612850);
    qword_27F612850 = 0;
  }

  if (gWetNotificationContext)
  {
    CFRelease(gWetNotificationContext);
    gWetNotificationContext = 0;
  }
}

uint64_t __handleUserRequestedRadarNotification_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] stringWithString:@"Manual HalogenTypeC radar request.\n"];
  v3 = *(a1 + 32);

  return [v3 _fileRadarHalogenTypeC:v2 TTRCategory:1];
}

void __handleWetPromptResponse_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  clearNotificationContext();
  [*(a1 + 32) setLastUserNotificationTimeNS:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
  if (*(a1 + 40))
  {
    if ([*(a1 + 32) isInternalBuild] && *(a1 + 40) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315138;
        v6 = "handleWetPromptResponse_block_invoke";
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s alternate response", &v5, 0xCu);
      }

      [*(a1 + 32) _fileRadarHalogenTypeC:objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) TTRCategory:{"typeC"), "getVerboseMeasurementOutputString"), "mutableCopy"), 0}];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "handleWetPromptResponse_block_invoke";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s unexpected response", &v5, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "handleWetPromptResponse_block_invoke";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s default response", &v5, 0xCu);
    }

    v2 = [*(a1 + 32) timerPortStateCheck];
    v3 = dispatch_walltime(0, 3600000000000);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t OUTLINED_FUNCTION_2_3()
{
  result = *(v0 + 192);
  *(v1 - 136) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_4_0(dispatch_time_t start)
{

  dispatch_source_set_timer(v1, start, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void OUTLINED_FUNCTION_7_0(int a1@<W8>)
{
  *(v2 + 4) = v1;
  *(v3 - 84) = 1024;
  *(v2 + 14) = a1;
  *(v3 - 78) = 2048;
  *(v2 + 20) = 3600;
}

void OUTLINED_FUNCTION_13_0(uint64_t a1@<X8>)
{
  *(v2 + 4) = a1;
  *(v3 - 84) = 1024;
  *(v2 + 14) = v1;
}

dispatch_time_t OUTLINED_FUNCTION_14_0()
{

  return dispatch_walltime(0, 1000000000 * v0);
}

dispatch_source_t OUTLINED_FUNCTION_15_0(const dispatch_source_type_s *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{

  return dispatch_source_create(a1, 0, 0, a4);
}

uint64_t compare(double *a1, double *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

uint64_t recordCallback_0(void *a1, AudioUnitRenderActionFlags *a2, const AudioTimeStamp *a3, UInt32 a4, UInt32 a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = [a1 inputFrameSizeInBytes] * a5;
  memset(v23, 170, 24);
  v11 = [a1 pcmInputDataMaxSzInBytes];
  if ((v11 - [a1 pcmInputDataIndexInBytes]) < v10)
  {
    recordCallback_cold_1(a1);
  }

  else if (([a1 isMeasurementDone] & 1) == 0)
  {
    LODWORD(v23[1]) = 1;
    v12 = [objc_msgSend(a1 "pcmInputData")];
    v23[3] = v12 + [a1 pcmInputDataIndexInBytes];
    HIDWORD(v23[2]) = v10;
    v13 = AudioUnitRender([a1 audioComponentInst], a2, a3, a4, a5, &v23[1]);
    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v25 = v14;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:render failed osstatus=0x%x", buf, 8u);
      }
    }

    [a1 setPcmInputDataIndexInBytes:{objc_msgSend(a1, "pcmInputDataIndexInBytes") + v10}];
    [a1 setPcmInputDataSampleCnt:{objc_msgSend(a1, "pcmInputDataSampleCnt") + a5}];
    v15 = [a1 pcmInputDataSampleCnt];
    v16 = [a1 calibrationSampleOffsetInFrames];
    if (v15 >= ([a1 nMeasurementSamples] + v16))
    {
      if (([a1 isCalibrationDone] & 1) == 0)
      {
        [a1 setIsCalibrationDone:1];
        [a1 setMeasurementSampleOffsetInFrames:{objc_msgSend(a1, "nHydraSettlingSamples") + objc_msgSend(a1, "pcmInputDataSampleCnt")}];
        [a1 connect];
        [a1 pinToMeasure];
        v17 = IOAccessoryManagerSelectEisPin();
        if (v17)
        {
          v18 = v17;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v25 = v18;
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:IOAccessoryManagerSelectEisPin failed to set the pin ret = 0x%x", buf, 8u);
          }
        }

        else
        {
          [a1 setEisPinToken2:v23[0]];
        }
      }

      v19 = [a1 pcmInputDataSampleCnt];
      v20 = [a1 measurementSampleOffsetInFrames];
      if (v19 >= ([a1 nMeasurementSamples] + v20))
      {
        [a1 setIsMeasurementDone:1];
        [objc_msgSend(a1 "audioTimeoutCond")];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t playbackCallback_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v8 = [objc_msgSend(a1 "pcmOutputData")];
  v9 = [a1 pcmOutputDataIndexInBytes];
  v10 = [a1 pcmOutputDataMaxSzInBytes];
  v11 = *a6;
  if (v11)
  {
    v12 = v10;
    v13 = 0;
    v14 = (a6 + 4);
    do
    {
      v15 = *(v14 - 1);
      if (v12 - v9 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = (v12 - v9);
      }

      if (v16)
      {
        memcpy(*v14, (v8 + [a1 pcmOutputDataIndexInBytes]), v16);
        v9 = (v16 + v9);
        v11 = *a6;
      }

      ++v13;
      v14 += 2;
    }

    while (v13 < v11);
  }

  [a1 setPcmOutputDataIndexInBytes:v9];
  return 0;
}

void systemPowerCallback_0(void *a1, uint64_t a2, int a3, intptr_t a4)
{
  if (a3 > -536870145)
  {
    if (a3 == -536870144)
    {
      v10 = dispatch_walltime(0, 100000000);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __systemPowerCallback_block_invoke_0;
      block[3] = &unk_279793038;
      block[4] = a1;
      dispatch_after(v10, global_queue, block);
      return;
    }

    if (a3 != -536870112)
    {
      return;
    }

    [objc_msgSend(a1 "powerStateCond")];
    v6 = a1;
    v7 = 1;
    goto LABEL_8;
  }

  if (a3 != -536870288)
  {
    if (a3 != -536870272)
    {
      return;
    }

    IOAllowPowerChange([a1 systemPowerPort], a4);
    [objc_msgSend(a1 "powerStateCond")];
    v6 = a1;
    v7 = 0;
LABEL_8:
    [v6 setPowerState:v7];
    [objc_msgSend(a1 "powerStateCond")];
    v8 = [a1 powerStateCond];

    [v8 unlock];
    return;
  }

  v9 = [a1 systemPowerPort];

  IOAllowPowerChange(v9, a4);
}

uint64_t __systemPowerCallback_block_invoke_0(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "powerStateCond")];
  [*(a1 + 32) setPowerState:2];
  [objc_msgSend(*(a1 + 32) "powerStateCond")];
  v2 = [*(a1 + 32) powerStateCond];

  return [v2 unlock];
}

void IOAccessoryStopSystemStateMonitor()
{
  v0 = *monitor;
  *monitor = 0;
}

uint64_t ProcessPublishedEndpoints(void *a1, io_iterator_t iterator)
{
  v12 = *MEMORY[0x277D85DE8];
  result = IOIteratorNext(iterator);
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x277D86220];
    *&v5 = 136315138;
    v9 = v5;
    do
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = v9;
        v11 = "ProcessPublishedEndpoints";
        _os_log_impl(&dword_2548F1000, v7, OS_LOG_TYPE_INFO, "%s adding endpoint", buf, 0xCu);
      }

      [a1 addEndpointForService:{v6, v9}];
      IOObjectRelease(v6);
      result = IOIteratorNext(iterator);
      v6 = result;
    }

    while (result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ProcessTerminatedEndpoints(void *a1, io_iterator_t iterator)
{
  v12 = *MEMORY[0x277D85DE8];
  result = IOIteratorNext(iterator);
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x277D86220];
    *&v5 = 136315138;
    v9 = v5;
    do
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = v9;
        v11 = "ProcessTerminatedEndpoints";
        _os_log_impl(&dword_2548F1000, v7, OS_LOG_TYPE_INFO, "%s removing endpoint", buf, 0xCu);
      }

      [a1 removeEndpointForService:{v6, v9}];
      IOObjectRelease(v6);
      result = IOIteratorNext(iterator);
      v6 = result;
    }

    while (result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 4) = a2;
  *(v5 - 100) = 1024;
  *(v3 + 14) = v4;
  *(v5 - 94) = 1024;
  *(v5 - 92) = v2;
  *(v5 - 88) = 2048;
  *(v3 + 26) = result;
  return result;
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void IOPortLDCMServiceMatchingCallback(uint64_t *a1, io_iterator_t iterator)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = IOIteratorNext(iterator);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = 0;
  v7 = *MEMORY[0x277CBECE8];
  while (1)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v5, @"ArchitectureVersion", v7, 0);
    v9 = CFProperty;
    if (!CFProperty)
    {
      IOPortLDCMServiceMatchingCallback_cold_2(v6, &v14);
      goto LABEL_18;
    }

    if (([CFProperty intValue] & 0xFFFFFFFE) == 4)
    {
      break;
    }

LABEL_9:
    IOObjectRelease(v5);

    v5 = IOIteratorNext(iterator);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v10 = [[IOPortLDCMManagerV4 alloc] initWithParams:64000000000 withDryPollingInterval:32000000000 withService:v5 withNotificationPort:v3 withServerRunloop:v4];

  if (v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [_MergedGlobals_0 setObject:v10 forKey:v11];
    if (!ldcmMobileAssetManager)
    {
      v12 = objc_opt_new();
      v13 = ldcmMobileAssetManager;
      ldcmMobileAssetManager = v12;

      [ldcmMobileAssetManager setDelegate:qword_2812C4330];
    }

    v6 = v10;
    goto LABEL_9;
  }

  IOPortLDCMServiceMatchingCallback_cold_1(&v14);
LABEL_18:
  v6 = v14;

LABEL_10:
LABEL_11:
  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v5)
  {
    IOObjectRelease(v5);
  }
}

double __divdc3(double a1, double a2, double a3, double a4)
{
  v4 = fmax(fabs(a3), fabs(a4));
  v5 = -INFINITY;
  v6 = __clz(*&v4);
  v7 = (((*&v4 << (v6 - 11) >> 52) & 0x7FF) - v6 - 1012);
  if (*&v4 >> 52)
  {
    v7 = ((*&v4 >> 52) - 1023);
  }

  if (v4 != 0.0)
  {
    v5 = v7;
  }

  if (*&v4 >> 52 == 2047)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  v22 = -v8;
  if (a3 == 0.0 || (v23 = (*&a3 >> 52) & 0x7FFLL, v23 == 2047))
  {
LABEL_34:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  v24 = *&a3 & 0xFFFFFFFFFFFFFLL;
  if (!v23)
  {
    v25 = __clz(v24);
    v26 = v24 << (v25 - 11);
    LODWORD(v23) = 12 - v25;
    v24 = v26 & 0xFFEFFFFFFFFFFFFFLL;
  }

  v20 = __OFADD__(v23, v22);
  LODWORD(v23) = v23 - v8;
  if (v20)
  {
    v23 = (v23 >> 31) ^ 0x80000000;
  }

  else
  {
    v23 = v23;
  }

  v27 = *&a3 & 0x8000000000000000;
  if (v23 < 2047)
  {
    if (v23 <= 0)
    {
      v37 = v24 | v27 | 0x10000000000000;
      if (v23 <= -1021)
      {
        v38 = -1021;
      }

      else
      {
        v38 = v23;
      }

      a3 = *&v37 * COERCE_DOUBLE((v38 + 1022) << 52);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

    *&a3 = v27 | (v23 << 52) | v24;
    goto LABEL_34;
  }

  a3 = COERCE_DOUBLE(v27 | 0x7FE0000000000000) + COERCE_DOUBLE(v27 | 0x7FE0000000000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_35:
  v28 = (*&a4 >> 52) & 0x7FFLL;
  if (v28 != 2047)
  {
    v29 = *&a4 & 0xFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v30 = __clz(v29);
      v31 = v29 << (v30 - 11);
      LODWORD(v28) = 12 - v30;
      v29 = v31 & 0xFFEFFFFFFFFFFFFFLL;
    }

    v20 = __OFADD__(v28, v22);
    LODWORD(v32) = v28 - v8;
    if (v20)
    {
      v32 = (v32 >> 31) ^ 0x80000000;
    }

    else
    {
      v32 = v32;
    }

    v33 = *&a4 & 0x8000000000000000;
    if (v32 < 2047)
    {
      if (v32 <= 0)
      {
        if (v32 <= -1021)
        {
          LODWORD(v32) = -1021;
        }

        a4 = COERCE_DOUBLE(v29 | v33 | 0x10000000000000) * COERCE_DOUBLE((v32 + 1022) << 52);
      }

      else
      {
        *&a4 = v33 | (v32 << 52) | v29;
      }
    }

    else
    {
      a4 = COERCE_DOUBLE(v33 | 0x7FE0000000000000) + COERCE_DOUBLE(v33 | 0x7FE0000000000000);
    }
  }

LABEL_10:
  v10 = a4 * a4 + a3 * a3;
  v11 = (a4 * a2 + a1 * a3) / v10;
  v12 = -v9;
  if (v11 != 0.0)
  {
    v13 = (a4 * a2 + a1 * a3) / v10;
    v14 = (*&v11 >> 52) & 0x7FFLL;
    if (v14 != 2047)
    {
      v15 = *&v13 & 0xFFFFFFFFFFFFFLL;
      v16 = __clz(*&v13 & 0xFFFFFFFFFFFFFLL);
      v17 = (*&v13 & 0xFFFFFFFFFFFFFLL) << (v16 - 11);
      v18 = 12 - v16;
      v19 = v17 & 0xFFEFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v19;
        LODWORD(v14) = v18;
      }

      v20 = __OFADD__(v14, v12);
      LODWORD(v14) = v14 + v12;
      if (v20)
      {
        v14 = (v14 >> 31) ^ 0x80000000;
      }

      else
      {
        v14 = v14;
      }

      v21 = *&v11 & 0x8000000000000000;
      if (v14 < 2047)
      {
        if (v14 <= 0)
        {
          v34 = v15 | v21 | 0x10000000000000;
          if (v14 <= -1021)
          {
            v35 = -1021;
          }

          else
          {
            v35 = v14;
          }

          return *&v34 * COERCE_DOUBLE((v35 + 1022) << 52);
        }

        else
        {
          *&v11 = v21 | (v14 << 52) | v15;
        }
      }

      else
      {
        return COERCE_DOUBLE(v21 | 0x7FE0000000000000) + COERCE_DOUBLE(v21 | 0x7FE0000000000000);
      }
    }
  }

  return v11;
}

void IOAccessoryNotifyWet(uint64_t a1, _BYTE *a2, void *a3)
{
  v52[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Popping up a wet notification!!!", buf, 2u);
  }

  v12 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_38;
  }

  v46 = a3;
  OUTLINED_FUNCTION_0_1();
  if (a2)
  {
    if (*a2 != 1 || (*a1 & 1) != 0)
    {
      v12 = 0;
      v4 = 0;
      v5 = 0;
      v3 = 0;
      a3 = 0;
LABEL_8:
      v13 = 0;
      v8 = 0;
      v7 = 0;
      v6 = 0;
      goto LABEL_38;
    }

    Current = CFAbsoluteTimeGetCurrent();
    *(a1 + 16) = Current - *(a1 + 8) < 480.0;
    *(a1 + 8) = Current;
    v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    a3 = v15;
    if (v15)
    {
      v16 = MEMORY[0x277CBEC38];
      if (*(a1 + 16))
      {
        v17 = MEMORY[0x277CBEC38];
      }

      else
      {
        v17 = MEMORY[0x277CBEC28];
      }

      [v15 setObject:v17 forKeyedSubscript:@"reinsertion"];
      [a3 setObject:v16 forKeyedSubscript:@"typeC"];
      [a3 setObject:v16 forKeyedSubscript:@"chargerConnected"];
      v18 = objc_alloc_init(MEMORY[0x277CCA9D8]);
      v12 = v18;
      if (v18)
      {
        [(__CFString *)v18 setUserInfo:a3];
        v19 = MEMORY[0x277CCAAB0];
        v52[0] = v12;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
        v47 = 0;
        v7 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v47];
        v45 = v47;

        v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v3 = v21;
        v44 = v12;
        if (v21)
        {
          [v21 setObject:@"com.apple.IOAccessoryManagerFramework.WetNotification" forKeyedSubscript:*MEMORY[0x277D67350]];
          [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277D67358]];
          v22 = *MEMORY[0x277CBF1B0];
          OUTLINED_FUNCTION_1_0();
          [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67320]];
          v23 = *MEMORY[0x277D67340];
          OUTLINED_FUNCTION_1_0();
          v24 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.IOAccessoryManagerFramework"];
          v6 = v24;
          if (v24)
          {
            v25 = [v24 pathForResource:@"PlugIns/WetNotification.appex/Assets.car" ofType:&stru_2866AF328];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v49 = "IOAccessoryNotifyWet";
              v50 = 2112;
              v51 = v25;
              _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Setting asset path for LDCM wet icon:%@", buf, 0x16u);
            }

            v26 = *MEMORY[0x277D673A0];
            OUTLINED_FUNCTION_3();
            v27 = *MEMORY[0x277D67398];
            OUTLINED_FUNCTION_1_0();
            [v3 setObject:@"YES" forKeyedSubscript:*MEMORY[0x277D67390]];
            v28 = *MEMORY[0x277D67378];
            OUTLINED_FUNCTION_3();
            v29 = *MEMORY[0x277D67370];
            OUTLINED_FUNCTION_1_0();
            v30 = [v6 resourceURL];
            v31 = *MEMORY[0x277CBF208];
            OUTLINED_FUNCTION_1_0();

            v12 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"WETMSG_DIALOG_BODY_LOCKSCREEN_TYPEC"];
          }

          else
          {
            v12 = @"Disconnect cable from charger and device. Unplug charger and allow all connectors to dry. This may take several hours.";
          }

          if (*(a1 + 16) == 1)
          {
            v32 = @"WETMSG_BUTTON_EMERGENCY_OVERRIDE";
            if (!v6)
            {
              v32 = @"Emergency Override";
            }

            v4 = v32;
          }

          else
          {
            v4 = 0;
          }

          v33 = *MEMORY[0x277D673B8];
          OUTLINED_FUNCTION_1_0();
          [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D673C8]];
          v34 = *MEMORY[0x277CBF1E8];
          OUTLINED_FUNCTION_3();
          [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CBF218]];
          [v3 setObject:&unk_2866B8EA0 forKeyedSubscript:*MEMORY[0x277D67408]];
          [v3 setObject:&unk_2866B8EB8 forKeyedSubscript:*MEMORY[0x277D67430]];
          if (v46)
          {
            v35 = @"WETMSG_BUTTON_RADAR";
            if (!v6)
            {
              v35 = @"Radar";
            }

            v5 = v35;
            v36 = *MEMORY[0x277CBF1C0];
            OUTLINED_FUNCTION_3();
          }

          else
          {
            v5 = 0;
          }

          *a1 = 1;
          v37 = *MEMORY[0x277CBECE8];
          v38 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v3);
          *(a1 + 24) = v38;
          gLdcmNotificationContext = a1;
          RunLoopSource = CFUserNotificationCreateRunLoopSource(v37, v38, IOAccessoryNotifyWetCallback, 0);
          *(a1 + 32) = RunLoopSource;
          if (RunLoopSource)
          {
            CFRunLoopAddSource(*(a1 + 40), RunLoopSource, *MEMORY[0x277CBF048]);
          }
        }

        else
        {
          v12 = 0;
          v4 = 0;
          v5 = 0;
          v6 = 0;
        }

        v13 = v45;
        if (v45)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v8 = v44;
            v13 = v45;
            goto LABEL_38;
          }

          v40 = [v45 localizedDescription];
          v41 = [v40 UTF8String];
          *buf = 136315394;
          v49 = "IOAccessoryNotifyWet";
          v50 = 2080;
          v51 = v41;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s err: %s", buf, 0x16u);

          v13 = v45;
        }

        v8 = v44;
        goto LABEL_38;
      }
    }

    else
    {
      v12 = 0;
    }

    v4 = 0;
    v5 = 0;
    v3 = 0;
    goto LABEL_8;
  }

LABEL_38:
  v42 = v13;

  v43 = *MEMORY[0x277D85DE8];
}

void IOAccessoryNotifyWetHandler(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (!a1)
  {
    goto LABEL_13;
  }

  v5 = llround(CFAbsoluteTimeGetCurrent() - *(a1 + 8));
  v6 = [MEMORY[0x277CCABB0] numberWithLong:v5];
  [v4 setObject:v6 forKey:@"notificationDuration"];

  if (*(a1 + 16) != 1)
  {
    if (a2)
    {
LABEL_7:
      if (a2 == 1)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithInt:1];
        [OUTLINED_FUNCTION_2_1() setObject:? forKey:?];

        IOAccessoryFileRadarLDCMV4();
      }

      goto LABEL_10;
    }

LABEL_9:
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [OUTLINED_FUNCTION_2_1() setObject:? forKey:?];

    IOAccessoryNotifyWetHandlerDismiss();
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (a2 != 2)
  {
    goto LABEL_7;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInt:2];
  [OUTLINED_FUNCTION_2_1() setObject:? forKey:?];

  IOAccessoryNotifyWetHandlerEmergencyOverride(a1);
LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = v5;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM UI Notification Duration: %ld\n", &v11, 0xCu);
  }

  AnalyticsSendEvent();
  CFRunLoopRemoveSource(*(a1 + 40), *(a1 + 32), *MEMORY[0x277CBF048]);
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 24));
LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
}

void IOAccessoryFileRadarLDCMV4()
{
  v28 = [MEMORY[0x277CBEB38] dictionary];
  v29 = [MEMORY[0x277CCAB68] stringWithUTF8String:"LIQUID DETECTION REPORT (detected via HalogenTypeC)\n\n"];
  [v29 appendString:@"Has your device or charging cable been near liquid in the past 5 hours? \n\n"];
  [v29 appendString:@"If yes:\n\n"];
  [v29 appendString:@"- Cable or device?\n\n"];
  [v29 appendString:{@"- What kind of liquid? (e.g. tap water, rain, sweat, soda, beer, etc.)\n\n"}];
  [v29 appendString:{@"- What kind of exposure? (e.g. submersion, splash, droplet, sitting in puddle, using device with wet/sweaty hands, etc)\n\n"}];
  [v29 appendString:{@"- If the exposure was limited to a certain part of the device, where was it?\n\n"}];
  [v29 appendString:@"- How long was the exposure?\n\n"];
  [v29 appendString:@"- Time since exposure\n"];
  [v29 appendString:@"\n\nIf no:\n\n"];
  [v29 appendString:@"Please describe what happened just before seeing the dialog. For example… Did you just connect an accessory? Did you drop your device? Are you in a humid environment?\n\n\n"];
  v0 = [MEMORY[0x277CCAB68] stringWithString:@"tap-to-radar://new?ComponentName=LDCM&ComponentVersion=AutofilledBugs&ComponentID=750390&Classification=Other Bug&Reproducibility=Not Applicable&"];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [v1 contentsOfDirectoryAtPath:@"/var/logs/ldcm/" error:0];

  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self BEGINSWITH[cd] 'internalMeasurementData'"];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self BEGINSWITH[cd] 'internalWaveformData'"];
  v6 = [v2 filteredArrayUsingPredicate:v5];

  v26 = v6;
  v27 = v4;
  v25 = [v4 arrayByAddingObjectsFromArray:v6];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v25];
  if ([v7 count])
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [v7 objectAtIndex:v8];
      v12 = [v10 stringWithFormat:@"%@%@", @"/var/logs/ldcm/", v11];

      [v7 replaceObjectAtIndex:v8 withObject:v12];
      v8 = v9;
    }

    while ([v7 count] > v9++);
  }

  if ([v7 count])
  {
    v14 = [v7 componentsJoinedByString:{@", "}];
    [v0 appendFormat:@"Attachments=%@", v14];
  }

  [v0 appendString:@"&"];
  [v0 appendFormat:@"Description=%@", v29];
  v15 = MEMORY[0x277CBEBC0];
  v16 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v17 = [OUTLINED_FUNCTION_2_1() stringByAddingPercentEncodingWithAllowedCharacters:?];
  v18 = [v15 URLWithString:v17];

  if (_FBSOpenApplicationOptionKeyPromptUnlockDevice)
  {
    goto LABEL_9;
  }

  v19 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 4);
  if (!v19)
  {
    if (_FBSOpenApplicationOptionKeyPromptUnlockDevice)
    {
      goto LABEL_9;
    }

LABEL_16:
    v22 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v22 openURL:v18 configuration:0 completionHandler:&__block_literal_global];
    goto LABEL_11;
  }

  _FBSOpenApplicationOptionKeyPromptUnlockDevice = dlsym(v19, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
  if (!_FBSOpenApplicationOptionKeyPromptUnlockDevice)
  {
    goto LABEL_16;
  }

LABEL_9:
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = [v20 initWithBytes:_FBSOpenApplicationOptionKeyPromptUnlockDevice length:8 encoding:1];
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v21;
  v23 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v28 setObject:v23 forKey:v22];

  v24 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v24 openSensitiveURL:v18 withOptions:v28];

LABEL_11:
LABEL_12:
}

uint64_t performEisMeasurement(void *a1)
{
  v181 = *MEMORY[0x277D85DE8];
  v164 = -21846;
  connect = 0;
  v163 = -1431655766;
  v161 = 0xAAAAAAAAAAAAAAAALL;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_46();
    *&v168[2] = 2048;
    *&v168[4] = a1;
    OUTLINED_FUNCTION_9();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  if (a1)
  {
    if (![a1 isMeasurementEnabled])
    {
      goto LABEL_175;
    }

    [objc_msgSend(a1 "cond")];
    [OUTLINED_FUNCTION_13() setIsMeasurementActive:?];
    [objc_msgSend(a1 "cond")];
    v7 = [a1 halogenMeasurement];
    v160 = [a1 portID];
    if ([a1 isReceptacleEmpty])
    {
      v8 = [a1 eventBasedDigitalID];
      v9 = [a1 eventBasedOrientation];
      if ([a1 justDetached])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_9();
          _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
        }

        [OUTLINED_FUNCTION_14() setJustDetached:?];
LABEL_14:
        v20 = 1;
LABEL_16:
        if (digitalIdNumPinsFree(v8, &v163))
        {
          v21 = [a1 service];
          if (!IOServiceOpen(v21, *MEMORY[0x277D85F48], 0, &connect))
          {
            if (!_holdPowerAssertion(1, a1))
            {
              v23 = 7;
LABEL_163:
              if ([a1 isMeasurementEnabled])
              {
                if (v23 == 8)
                {
                  v108 = [a1 ldcmStartMeasurementsRetryNs];
                  v109 = 1;
                }

                else
                {
                  if (v23 == 6)
                  {
                    v107 = [a1 ldcmArbiterRetryNs];
                  }

                  else if ([a1 isWet])
                  {
                    v107 = [a1 wetPollingIntervalNs];
                  }

                  else
                  {
                    v107 = [a1 dryPollingIntervalNs];
                  }

                  v108 = v107;
                  v109 = 0;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  OUTLINED_FUNCTION_46();
                  *&v168[2] = 2048;
                  *&v168[4] = v110;
                  OUTLINED_FUNCTION_9();
                  _os_log_impl(v111, v112, v113, v114, v115, 0x16u);
                }

                v116 = [a1 timer];
                v117 = dispatch_walltime(0, v108);
                dispatch_source_set_timer(v116, v117, 0xFFFFFFFFFFFFFFFFLL, 0);
                [a1 setAttachDelayTimerRunning:v109];
              }

              goto LABEL_175;
            }

            v22 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
            if (v20)
            {
              v23 = 7;
              goto LABEL_156;
            }

            HIDWORD(v156) = 0;
            v24 = 0;
            v23 = 7;
            *(&v25 + 1) = 0x300000001;
            *&v25 = 67110146;
            v152 = v25;
            *&v25 = 67109376;
            v158 = v25;
            *&v25 = 67110402;
            v155 = v25;
            *&v25 = 67111680;
            v154 = v25;
            *&v25 = 67110912;
            v153 = v25;
            v26 = 1000.0;
            v159 = v7;
            v157 = v8;
            while (2)
            {
              if (IOAccessoryManagerGetFreePinMask())
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  OUTLINED_FUNCTION_4();
                  OUTLINED_FUNCTION_9();
                  v85 = 8;
LABEL_112:
                  _os_log_impl(v80, v81, v82, v83, v84, v85);
                }

LABEL_113:
                v22 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                if (v23)
                {
                  goto LABEL_156;
                }

                if ((v156 & 0x100000000) == 0)
                {
                  updateAccyHalogenHealthDictionary(a1);
                }

                v86 = [v159 halogenResult];
                v23 = 0;
                if (v86 > 8)
                {
                  goto LABEL_156;
                }

                if (((1 << v86) & 0x160) != 0)
                {
                  if ([gUserLdcmParams enableHalogenSnrTtr])
                  {
                    OUTLINED_FUNCTION_33();
                    if (v42)
                    {
                      OUTLINED_FUNCTION_32();
                      if (v42)
                      {
                        OUTLINED_FUNCTION_7();
                        if (v42)
                        {
                          if (([a1 isTapToRadarPending] & 1) == 0)
                          {
                            [OUTLINED_FUNCTION_13() setIsTapToRadarPending:?];
                            IOAccessoryGiveUserRadarOption(a1, 1);
                          }
                        }
                      }
                    }
                  }
                }

                else if (((1 << v86) & 3) != 0)
                {
                  if ([a1 isWet])
                  {
                    [a1 dryCnt];
                    [a1 setDryCnt:{objc_msgSend(OUTLINED_FUNCTION_27(), "dryCnt") + 1}];
                    [a1 setFirstDryTimestamp:mach_continuous_time()];
                    v22 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                    goto LABEL_156;
                  }
                }

                else
                {
                  if (v86 != 2)
                  {
                    goto LABEL_156;
                  }

                  if ([a1 dryCnt])
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      [a1 dryCnt];
                      [OUTLINED_FUNCTION_27() minDryReadings];
                      *buf = 67109632;
                      OUTLINED_FUNCTION_1_2();
                      *v168 = 0;
                      *&v168[8] = v87;
                      *&v168[10] = v88;
                      OUTLINED_FUNCTION_9();
                      _os_log_impl(v89, v90, v91, v92, v93, 0x1Cu);
                    }

                    [OUTLINED_FUNCTION_39() setDryCnt:?];
                  }

                  if (([a1 isWet] & 1) == 0)
                  {
                    v120 = [a1 connectedAccessoryPDigitalID];
                    [OUTLINED_FUNCTION_12() setEventBasedPDigitalID:?];
                    [a1 connectedAccessoryDigitalID];
                    [OUTLINED_FUNCTION_12() setEventBasedDigitalID:?];
                    [a1 setEventBasedOrientation:{objc_msgSend(a1, "connectedAccessoryOrientation")}];
                    mach_continuous_time();
                    if ([OUTLINED_FUNCTION_27() isTimestampValid])
                    {
                      [a1 wetDryTransitionTimestamp];
                      if (!dword_2812C4324)
                      {
                        mach_timebase_info(&dword_2812C4320);
                        if (!dword_2812C4324)
                        {
                          mach_timebase_info(&dword_2812C4320);
                        }
                      }

                      v121 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                      if (v121)
                      {
                        OUTLINED_FUNCTION_38(v121, v122, v123, v124, v125, v126, v127, v128, v150, v151, v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), v155, *(&v155 + 1), v156, v157, v158);
                        v166 = v160;
                        v167 = 2048;
                        *v168 = v129;
                        OUTLINED_FUNCTION_9();
                        _os_log_impl(v130, v131, v132, v133, v134, 0x12u);
                      }
                    }

                    IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.voltage.count", a1);
                    [v159 capacitanceInNanoF];
                    IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.eis.initial.wet.capacitance.histogram", a1, v135);
                    [v159 goertzelImpedance];
                    IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.eis.initial.wet.impedance.histogram", a1, v136 / v26);
                    if (([a1 isReceptacleEmpty] & 1) == 0 && (objc_msgSend(a1, "isHeadsetConnected") & 1) == 0)
                    {
                      _generateUIAnalyticEvents(a1, v160);
                    }

                    [a1 setWetDryTransitionTimestamp:0];
                    [OUTLINED_FUNCTION_13() setIsTimestampValid:?];
                    [OUTLINED_FUNCTION_13() setIsWet:?];
                    reportEisMeasurementStateChange(a1);
                    v22 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                  }

                  if ([v22[22].cache enableHalogenMitigationsAndUI] != 1)
                  {
                    OUTLINED_FUNCTION_33();
                    if (v42)
                    {
                      OUTLINED_FUNCTION_32();
                      if (v42)
                      {
                        OUTLINED_FUNCTION_7();
                        if (v42)
                        {
                          if ([a1 wasTapToRadarShown] & 1) != 0 || (objc_msgSend(a1, "isTapToRadarPending"))
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              OUTLINED_FUNCTION_4();
                              OUTLINED_FUNCTION_9();
                              _os_log_impl(v94, v95, v96, v97, v98, 8u);
                            }
                          }

                          else
                          {
                            [OUTLINED_FUNCTION_13() setWasTapToRadarShown:?];
                            [OUTLINED_FUNCTION_13() setIsTapToRadarPending:?];
                            IOAccessoryGiveUserRadarOption(a1, 0);
                          }
                        }
                      }
                    }
                  }

                  if ([a1 isTimestampValid] && (objc_msgSend(a1, "isHeadsetConnected") & 1) == 0)
                  {
                    [a1 wetDryTransitionTimestamp];
                    if (!dword_2812C4324)
                    {
                      mach_timebase_info(&dword_2812C4320);
                    }

                    mach_continuous_time();
                    if (!dword_2812C4324)
                    {
                      mach_timebase_info(&dword_2812C4320);
                    }

                    OUTLINED_FUNCTION_18();
                    v22 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                    v101 = v99 / v100;
                    if (v99 / v100 >= [gUserLdcmParams maxVhiDurationSec] && (objc_msgSend(a1, "didWetTooLong") & 1) == 0)
                    {
                      v137 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                      if (v137)
                      {
                        OUTLINED_FUNCTION_38(v137, v138, v139, v140, v141, v142, v143, v144, v150, v151, v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), v155, *(&v155 + 1), v156, v157, v158);
                        OUTLINED_FUNCTION_1_2();
                        *v168 = v101;
                        OUTLINED_FUNCTION_9();
                        _os_log_impl(v145, v146, v147, v148, v149, 0x12u);
                      }

                      IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.notification.wettoolong", a1, v101);
                      [OUTLINED_FUNCTION_13() setDidWetTooLong:?];
                    }
                  }
                }

                v23 = 0;
LABEL_156:
                if (([v22[22].cache userBehaviorMask] & 0x10) == 0 && objc_msgSend(a1, "isReceptacleEmpty") && (objc_msgSend(a1, "isWet") & 1) == 0)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    OUTLINED_FUNCTION_4();
                    OUTLINED_FUNCTION_9();
                    _os_log_impl(v102, v103, v104, v105, v106, 8u);
                  }

                  halogenMeasurementCleanup(a1);
                }

                _holdPowerAssertion(0, a1);
                goto LABEL_163;
              }

              v27 = v161;
              if (v8 == 0x18FE81000000)
              {
                v27 = v161 & 0xFFFFFFFFFFFFFFFBLL;
                v161 &= ~4uLL;
              }

              v28 = 0;
              v180 = xmmword_25491C1D0;
              while (1)
              {
                v29 = *(&v180 + v28);
                if ((v27 & (1 << v29)) != 0)
                {
                  v30 = v29 + 2;
                  if (v9 != 2)
                  {
                    v30 = *(&v180 + v28);
                  }

                  if (*(&v163 + v30))
                  {
                    break;
                  }
                }

                v28 += 4;
                if (v28 == 16)
                {
                  goto LABEL_110;
                }
              }

              if (v29 == 6)
              {
LABEL_110:
                v72 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (!v72)
                {
                  goto LABEL_113;
                }

                OUTLINED_FUNCTION_38(v72, v73, v74, v75, v76, v77, v78, v79, v150, v151, v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), v155, *(&v155 + 1), v156, v157, v158);
                OUTLINED_FUNCTION_1_2();
                *v168 = v27;
                OUTLINED_FUNCTION_9();
                v85 = 18;
                goto LABEL_112;
              }

              [a1 setPinID:*(&v180 + v28)];
              v31 = [a1 isReceptacleEmpty];
              v32 = [a1 isWet];
              [gUserLdcmParams wetTransitionCapacitanceThreshold];
              v34 = v33;
              [gUserLdcmParams dryTransitionCapacitanceThreshold];
              v36 = [v159 doMeasurement:1 onPin:v29 isReceptacleEmpty:v31 isReceptacleWet:v32 withWetTransitionThreshold:v34 withDryTransitionThreshold:v35];
              v23 = v36;
              if (v36)
              {
                if (v36 <= 6 && ((1 << v36) & 0x58) != 0)
                {
                  v37 = MEMORY[0x277D86220];
                  v8 = v157;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    OUTLINED_FUNCTION_4();
                    v167 = 1024;
                    *v168 = v24;
                    _os_log_impl(&dword_2548F1000, v37, OS_LOG_TYPE_DEFAULT, "(%d) EIS measurement #%d triggered abort due to sleep / failed arbitration / audio failure", buf, 0xEu);
                  }

                  v38 = 1;
LABEL_82:
                  if ([a1 isWet] && (objc_msgSend(a1, "isReceptacleEmpty") & 1) == 0 && (objc_msgSend(a1, "isHeadsetConnected") & 1) == 0)
                  {
                    if (!((v23 != 0) | BYTE4(v156) & 1))
                    {
                      HIDWORD(v156) = updateAccyHalogenHealthDictionary(a1);
                    }

                    _generateUIAnalyticEvents(a1, v160);
                  }

                  if (!v38)
                  {
                    usleep(0x186A0u);
                    v67 = v24++ > 3;
                    v68 = v67;
                    if (!v68 && !v38)
                    {
                      continue;
                    }
                  }

                  goto LABEL_113;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  if (v29 > 3)
                  {
                    v66 = "Invalid";
                  }

                  else
                  {
                    v66 = IOAccessoryGetPinStrForIndex_pinStr[v29];
                  }

                  *buf = v152;
                  v166 = v160;
                  v167 = 1024;
                  *v168 = v24;
                  *&v168[4] = 1024;
                  *&v168[6] = v29;
                  *&v168[10] = 2082;
                  *&v168[12] = v66;
                  v169 = 1024;
                  v170 = v23;
                  _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%d) EIS measurement #%d on %d (%{public}s) returned %#x", buf, 0x24u);
                }

                goto LABEL_80;
              }

              break;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              if (v29 > 3)
              {
                v39 = "Invalid";
              }

              else
              {
                v39 = IOAccessoryGetPinStrForIndex_pinStr[v29];
              }

              v151 = v39;
              v40 = [v159 halogenResult];
              [v159 getResultString];
              OUTLINED_FUNCTION_4();
              v167 = 1024;
              *v168 = v24;
              *&v168[4] = 1024;
              *&v168[6] = v29;
              *&v168[10] = 2082;
              *&v168[12] = v151;
              v169 = 1024;
              v170 = v40;
              v171 = 2114;
              v172 = v41;
              _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%d) EIS measurement #%d on %d (%{public}s) returned %d (%{public}@)", buf, 0x2Eu);
            }

            OUTLINED_FUNCTION_7();
            if (v42)
            {
              [v159 saveAsWav:@"/tmp/halogen.wav"];
            }

            v43 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              [v159 voltageGainCorrection];
              v151 = v44;
              [v159 currentGainCorrection];
              v150 = v45;
              [v159 currentPhaseCompensation];
              [v159 goertzelImpedance];
              [v159 goertzelPhase];
              [v159 compensatedImpedance];
              [v159 compensatedPhase];
              v46 = v26;
              v48 = v47;
              [v159 clippingScore];
              v50 = v49;
              [v159 resistanceInOhms];
              v52 = v51;
              [v159 capacitanceInNanoF];
              *buf = v154;
              OUTLINED_FUNCTION_1_2();
              *v168 = v151;
              *&v168[8] = v53;
              *&v168[10] = v150;
              OUTLINED_FUNCTION_15();
              v173 = v48;
              v26 = v46;
              v174 = v54;
              v175 = v50;
              v176 = v54;
              v177 = v52;
              v178 = v54;
              v179 = v55;
              _os_log_impl(&dword_2548F1000, v43, OS_LOG_TYPE_DEFAULT, "(%d) halogen measurement = [%.13f, %.13f, %.13f, %.13f, %.13f, %.13f, %.13f, %.13f, %.13f, %.13f]", buf, 0x6Cu);
            }

            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              [v159 precalVoltageSNR];
              v57 = v56;
              [v159 precalCurrentSNR];
              v59 = v58;
              [v159 calVoltageSNR];
              [v159 calCurrentSNR];
              [v159 measurementVoltageSNR];
              [v159 measurementCurrentSNR];
              [v159 measurementCondetSNR];
              *buf = v153;
              OUTLINED_FUNCTION_1_2();
              *v168 = v57;
              *&v168[8] = v60;
              *&v168[10] = v59;
              OUTLINED_FUNCTION_15();
              v173 = v61;
              _os_log_impl(&dword_2548F1000, v43, OS_LOG_TYPE_DEFAULT, "(%d) halogen SNR = [precal: %.13f, %.13f cal: %.13f, %.13f measurement: %.13f, %.13f condet: %.13f]", buf, 0x4Eu);
            }

            v62 = [v159 halogenResult];
            if (v62 <= 8)
            {
              if (((1 << v62) & 7) != 0)
              {
                v38 = 1;
LABEL_62:
                v63 = [a1 halogenMeasurement];
                v64 = [v63 halogenResult];
                if (v38)
                {
                  if (v64 && [v63 halogenResult] != 1 && objc_msgSend(v63, "halogenResult") != 2)
                  {
                    goto LABEL_66;
                  }

                  [v63 capacitanceInNanoF];
                  IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.eis.capacitance.histogram", a1, v69);
                  [v63 goertzelImpedance];
                  IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.eis.impedance.histogram", a1, v70 / v26);
                  [v63 goertzelPhase];
                  IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.eis.phase.histogram", a1, v71);
                  if ([v63 isLowerBoundViolation_goertzelImpedance])
                  {
                    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.impedance.low", a1);
                  }

                  if ([v63 isUpperBoundViolation_goertzelImpedance])
                  {
                    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.impedance.high", a1);
                  }

                  if ([v63 isLowerBoundViolation_goertzelPhase])
                  {
                    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.phase.low", a1);
                  }

                  if ([v63 isUpperBoundViolation_goertzelPhase])
                  {
                    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.phase.high", a1);
                  }

                  if (![v63 isBoundViolation_measurementCondetSNR])
                  {
LABEL_66:
                    v38 = 1;
LABEL_81:
                    v8 = v157;
                    goto LABEL_82;
                  }

                  v65 = @"com.apple.ioaccessorymanager.ldcm.eis.digitalnoise.fault";
LABEL_107:
                  v8 = v157;
                  IOAccessoryAggDPostScalarPrefixKey(v65, a1);
                  goto LABEL_82;
                }

                if (v64 == 3)
                {
                  v65 = @"com.apple.ioaccessorymanager.ldcm.eis.clipping";
                  goto LABEL_107;
                }

                if ([v63 halogenResult] == 4)
                {
                  if ([v63 isBoundViolation_currentGainCorrection])
                  {
                    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.currentgaincorrection.outofrange", a1);
                  }

                  if ([v63 isBoundViolation_currentPhaseCompensation])
                  {
                    v65 = @"com.apple.ioaccessorymanager.ldcm.eis.currentphasecompensation.outofrange";
                    goto LABEL_107;
                  }
                }

                else
                {
                  if ([v63 halogenResult] == 5 || objc_msgSend(v63, "halogenResult") == 6)
                  {
                    v65 = @"com.apple.ioaccessorymanager.ldcm.eis.calibration.bad.snr";
                    goto LABEL_107;
                  }

                  if ([v63 halogenResult] == 8)
                  {
                    v65 = @"com.apple.ioaccessorymanager.ldcm.eis.measurement.bad.snr";
                    goto LABEL_107;
                  }
                }

LABEL_80:
                v38 = 0;
                goto LABEL_81;
              }

              if (((1 << v62) & 0x160) != 0)
              {
                OUTLINED_FUNCTION_33();
                if (v42)
                {
                  OUTLINED_FUNCTION_32();
                  if (v42)
                  {
                    OUTLINED_FUNCTION_7();
                    if (v42)
                    {
                      v38 = [gUserLdcmParams enableHalogenSnrTtr] != 0;
                      goto LABEL_62;
                    }
                  }
                }
              }
            }

            v38 = 0;
            goto LABEL_62;
          }
        }

LABEL_175:
        [objc_msgSend(a1 "cond")];
        [OUTLINED_FUNCTION_14() setIsMeasurementActive:?];
        [objc_msgSend(a1 "cond")];
        [objc_msgSend(a1 "cond")];
        goto LABEL_176;
      }
    }

    else
    {
      v8 = [a1 connectedAccessoryDigitalID];
      v9 = [a1 connectedAccessoryOrientation];
      if ([a1 justAttachedCase])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_9();
          _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
        }

        [OUTLINED_FUNCTION_14() setJustAttachedCase:?];
        goto LABEL_14;
      }
    }

    v20 = 0;
    goto LABEL_16;
  }

LABEL_176:
  result = connect;
  if (connect)
  {
    result = IOServiceClose(connect);
  }

  v119 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOAccessoryStartVoltageEventMonitorLegacy(uint64_t result)
{
  v43 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = dlopen("/System/Library/PrivateFrameworks/AggregateDictionary.framework/AggregateDictionary", 4);
    if (v2)
    {
      v3 = v2;
      _MergedGlobals = dlsym(v2, "ADClientAddValueForScalarKey");
      qword_2812C42F0 = dlsym(v3, "ADClientClearDistributionKey");
      qword_2812C42F8 = dlsym(v3, "ADClientClearScalarKey");
      off_2812C4300 = dlsym(v3, "ADClientPushValueForDistributionKey");
      off_2812C4308 = dlsym(v3, "ADClientSetValueForScalarKey");
    }

    v4 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 4);
    if (v4)
    {
      off_2812C4310 = dlsym(v4, "logEventForAppleCare");
    }

    v5 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 4);
    if (v5)
    {
      qword_2812C4318 = dlsym(v5, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
    }

    result = objc_alloc_init(MEMORY[0x277CCAAF8]);
    gIOAMLogLock = result;
    if (result)
    {
      v6 = MGCopyAnswer();
      if (v6)
      {
        v7 = v6;
        gIsInternalBuild = CFEqual(v6, @"Internal") != 0;
        CFRelease(v7);
      }

      else
      {
        gIsInternalBuild = 0;
      }

      mainPort = *MEMORY[0x277CD28A0];
      result = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
      gIOnotify = result;
      if (result)
      {
        result = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        gDockState = result;
        if (result)
        {
          v8 = result;
          result = objc_alloc_init(IOAccessoryUserLdcmParamClass);
          gUserLdcmParams = result;
          if (result)
          {
            result = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
            gHalogenMeasurements = result;
            if (result)
            {
              v9 = result;
              result = [MEMORY[0x277CBEB38] dictionary];
              gDigitalIDTimeWetDict = result;
              if (result)
              {
                v10 = result;
                result = [MEMORY[0x277CBEB38] dictionary];
                gDigitalIDCountWetDict = result;
                if (result)
                {
                  v11 = result;
                  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
                  if (!v12)
                  {
                    goto LABEL_42;
                  }

                  v13 = [v12 objectForKey:@"accyHealthDict"];
                  if (!v13)
                  {
                    goto LABEL_42;
                  }

                  v14 = v13;
                  v38 = 0;
                  v15 = MEMORY[0x277CCAAC8];
                  v16 = MEMORY[0x277CBEB98];
                  v17 = objc_opt_class();
                  v18 = objc_opt_class();
                  v19 = [v15 unarchivedObjectOfClasses:objc_msgSend(v16 fromData:"setWithObjects:" error:{v17, v18, objc_opt_class(), 0), v14, &v38}];
                  v20 = v38;
                  if (v38)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      v21 = [objc_msgSend(v20 "localizedDescription")];
                      *buf = 136315394;
                      v40 = "retrievePersistentAccyHealthDictionary";
                      v41 = 2080;
                      v42 = v21;
                      OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v22, "%s err: %s", buf);
                      v20 = v38;
                    }
                  }

                  if (v19)
                  {
                    gAccyHealthDictionary = [v19 mutableCopy];
                    if (gAccyHealthDictionary)
                    {
                      goto LABEL_27;
                    }
                  }

                  else
                  {
LABEL_42:
                    if (gAccyHealthDictionary)
                    {
LABEL_27:
                      gAssetContext = 0;
                      byte_2812C44E0 = 0;
                      v24 = isDeviceTypeC_V3();
                      v25 = gIOnotify;
                      if (v24)
                      {
                        v26 = IOServiceMatching("IOPort");
                        v27 = IOServiceAddMatchingNotification(v25, "IOServiceFirstPublish", v26, IOAccessoryServiceMatchingCallbackTypeC, gIOnotify, &gIOiter);
                        IOAccessoryServiceMatchingCallbackTypeC(gIOnotify, gIOiter);
                      }

                      else
                      {
                        v28 = IOServiceMatching("AppleTriStarBuiltIn");
                        v27 = IOServiceAddMatchingNotification(v25, "IOServiceFirstPublish", v28, IOAccessoryServiceMatchingCallback, gIOnotify, &gIOiter);
                        IOAccessoryServiceMatchingCallback(gIOnotify, gIOiter);
                      }

                      if (v27)
                      {
                        result = 0;
                      }

                      else
                      {
                        result = IONotificationPortGetRunLoopSource(gIOnotify);
                        if (result)
                        {
                          CFRunLoopAddSource(v1, result, *MEMORY[0x277CBF048]);
                          if ([gUserLdcmParams enableHalogenMitigationsAndUI] == 1)
                          {
                            qword_2812C4390 = 0;
                            qword_2812C43B0 = v1;
                            qword_2812C43B8 = 0;
                          }

                          if (!gBatteryStatusNotificationContext)
                          {
                            gBatteryStatusNotificationContext = IONotificationPortCreate(mainPort);
                            RunLoopSource = IONotificationPortGetRunLoopSource(gBatteryStatusNotificationContext);
                            if (RunLoopSource)
                            {
                              v31 = RunLoopSource;
                              Main = CFRunLoopGetMain();
                              CFRunLoopAddSource(Main, v31, *MEMORY[0x277CBF058]);
                              v33 = gBatteryStatusNotificationContext;
                              v34 = IOServiceMatching("IOPMPowerSource");
                              v35 = IOServiceAddMatchingNotification(v33, "IOServiceFirstMatch", v34, __powerBatteryMatch, &gBatteryStatusNotificationContext, &dword_2812C44D0);
                              if (v35)
                              {
                                v36 = v35;
                                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136315394;
                                  v40 = "setupBatteryNotification";
                                  v41 = 1024;
                                  LODWORD(v42) = v36;
                                  _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s IOServiceAddMatchingNotification falied: %08x", buf, 0x12u);
                                }
                              }

                              else
                              {
                                __powerBatteryMatch(&gBatteryStatusNotificationContext, dword_2812C44D0);
                              }
                            }
                          }

                          result = 1;
                        }
                      }

                      goto LABEL_36;
                    }
                  }

                  gAccyHealthDictionary = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
                  v23 = gAccyHealthDictionary;
                  goto LABEL_27;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_36:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOAccessoryResetLifetimeDuration(io_registry_entry_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = IORegistryEntrySetCFProperty(a1, @"acc-mb-ld-lifetime", v3);
  CFRelease(v4);
  return v5;
}

uint64_t IOAccessoryRequestResetLifetimeDuration(int a1)
{
  existing = 0;
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("AppleTriStarBuiltIn");
  MatchingServices = IOServiceGetMatchingServices(v2, v3, &existing);
  if (MatchingServices)
  {
    v7 = MatchingServices;
  }

  else
  {
    while (1)
    {
      v5 = IOIteratorNext(existing);
      if (!v5)
      {
        break;
      }

      v6 = v5;
      v7 = IOAccessoryResetLifetimeDuration(v5, a1);
      IOObjectRelease(v6);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v7 = 0;
  }

LABEL_6:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v7;
}

void setDriverMitigationEnabled(int a1, io_service_t service, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  connect = 0;
  if (IOServiceOpen(service, *MEMORY[0x277D85F48], 0, &connect))
  {
    v5 = 0;
  }

  else
  {
    [gUserLdcmParams userBehaviorMask];
    [gUserLdcmParams userBehaviorMask];
    v5 = IOAccessoryManagerConfigureGoldbondMode() == 0;
  }

  if (connect)
  {
    IOServiceClose(connect);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v9 = a1;
    v10 = 1024;
    v11 = a3;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%d) ~~~ setDriverMitigationEnabled [%d] returned %d", buf, 0x14u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void IOAccessoryInterestNotificationCallback(uint64_t a1, io_registry_entry_t a2, int a3, unsigned int *a4)
{
  v4 = a2;
  __dst[17] = *MEMORY[0x277D85DE8];
  v5 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
  v6 = 0x277CCA000uLL;
  switch(a3)
  {
    case -536870896:
      if (gDockState)
      {
        PrimaryPort = IOAccessoryManagerGetPrimaryPort();
        if (PrimaryPort)
        {
          v67 = PrimaryPort;
          OUTLINED_FUNCTION_34();
          v68 = [OUTLINED_FUNCTION_11() objectForKey:?];
          if (v68)
          {
            [v68 dockStateValue];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__dst[0]) = 67109120;
              HIDWORD(__dst[0]) = v67;
              OUTLINED_FUNCTION_19();
              _os_log_impl(v69, v70, v71, v72, v73, v74);
            }

            OUTLINED_FUNCTION_34();
            [OUTLINED_FUNCTION_11() removeObjectForKey:?];
            OUTLINED_FUNCTION_34();
            [OUTLINED_FUNCTION_11() removeObjectForKey:?];
          }
        }
      }

      goto LABEL_118;
    case -536870608:
      memset(v255, 170, 6);
      if (!gDockState)
      {
        goto LABEL_118;
      }

      v23 = IOAccessoryManagerGetPrimaryPort();
      if (!v23)
      {
        goto LABEL_118;
      }

      v24 = v23;
      OUTLINED_FUNCTION_34();
      v25 = [OUTLINED_FUNCTION_6() objectForKey:?];
      if (!v25)
      {
        goto LABEL_118;
      }

      LODWORD(valuePtr) = -1431655766;
      [v25 dockStateValue];
      memcpy(__src, __dst, 0x48uLL);
      v26 = __dst[9];
      v258[0] = *(&__dst[9] + 1);
      *(v258 + 15) = __dst[11];
      v259 = *(&__dst[12] + 2);
      *v260 = *(&__dst[14] + 2);
      *&v260[14] = __dst[16];
      if ((__dst[9] & 1) == 0)
      {
        goto LABEL_118;
      }

      if (__dst[12])
      {
        goto LABEL_118;
      }

      if ((__dst[12] & 0x100) != 0)
      {
        goto LABEL_118;
      }

      if (IOAccessoryManagerGetDigitalID())
      {
        goto LABEL_118;
      }

      v27 = *MEMORY[0x277CBECE8];
      CFProperty = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryOrientation", *MEMORY[0x277CBECE8], 0);
      if (!CFProperty)
      {
        goto LABEL_118;
      }

      v29 = CFProperty;
      Value = CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
      CFRelease(v29);
      if (!Value)
      {
        goto LABEL_118;
      }

      v31 = IORegistryEntryCreateCFProperty(a2, @"IOAccessoryPowerHandshake", v27, 0);
      if (!v31)
      {
        goto LABEL_118;
      }

      v32 = v31;
      v33 = CFBooleanGetValue(v31);
      CFRelease(v32);
      v34 = v33 == 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__dst[0]) = 67109632;
        HIDWORD(__dst[0]) = v24;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = v33 == 0;
        HIWORD(__dst[1]) = 1024;
        LODWORD(__dst[2]) = v33 == 1;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%d) Event: PH update, failed = %d, success = %d", __dst, 0x14u);
      }

      if (v33)
      {
        v43 = 0;
      }

      else
      {
        v247 = valuePtr;
        v35 = OUTLINED_FUNCTION_24();
        v38 = CFStringCreateWithFormat(v35, v36, v37, v255[0], v255[1], v255[2], v255[3], v255[4], v255[5], v247);
        v39 = OUTLINED_FUNCTION_24();
        MutableCopy = CFStringCreateMutableCopy(v39, v40, v41);
        CFStringAppend(MutableCopy, v38);
        if (_MergedGlobals)
        {
          _MergedGlobals(MutableCopy, 1);
        }

        CFRelease(MutableCopy);
        CFRelease(v38);
        v43 = 1;
      }

      v44 = MEMORY[0x277CCAE60];
      memcpy(__dst, __src, 0x48uLL);
      LOBYTE(__dst[9]) = v26;
      *(&__dst[9] + 1) = v258[0];
      __dst[11] = *(v258 + 15);
      LOBYTE(__dst[12]) = v43;
      BYTE1(__dst[12]) = v34;
      *(&__dst[12] + 2) = v259;
      *(&__dst[14] + 2) = *v260;
      __dst[16] = *&v260[14];
      goto LABEL_116;
    case -469794799:
LABEL_10:
      memcpy(__dst, &xmmword_25491C2B8, 0x88uLL);
      v10 = [gUserLdcmParams userBehaviorMask];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__src[0]) = 136315138;
        *(__src + 4) = "IOAccessoryHandleDetach";
        OUTLINED_FUNCTION_21();
        _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      }

      v16 = IOAccessoryManagerGetPrimaryPort();
      if (!v16)
      {
        goto LABEL_118;
      }

      v17 = v16;
      OUTLINED_FUNCTION_34();
      v18 = (v10 >> 3) & 1;
      if ([OUTLINED_FUNCTION_25() objectForKey:?])
      {
        OUTLINED_FUNCTION_34();
        v19 = [OUTLINED_FUNCTION_6() objectForKey:?];
        v20 = v19;
        if (v19)
        {
          if ([v19 isReceptacleEmpty])
          {
            goto LABEL_16;
          }

          setDriverMitigationEnabled(v17, v4, v18);
          [OUTLINED_FUNCTION_36() setIsReceptacleEmpty:?];
          [OUTLINED_FUNCTION_36() setJustDetached:?];
          [OUTLINED_FUNCTION_42() setJustAttachedCase:?];
          if (([gUserLdcmParams userBehaviorMask] & 0x10) == 0 && !objc_msgSend(v20, "isWet"))
          {
            goto LABEL_16;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_41();
            OUTLINED_FUNCTION_19();
            _os_log_impl(v144, v145, v146, v147, v148, v149);
          }

          if (!digitalIdNumPinsFree([v20 connectedAccessoryDigitalID], __src) || (objc_msgSend(v20, "isDebugAccessoryConnected") & 1) != 0 || objc_msgSend(v20, "isBlacklistedAccessoryConnected"))
          {
            v21 = 1;
            [OUTLINED_FUNCTION_36() setIsMeasurementEnabled:?];

            v150 = [v20 eventBasedPDigitalID];
            [OUTLINED_FUNCTION_6() setConnectedAccessoryPDigitalID:?];
            [v20 eventBasedDigitalID];
            [OUTLINED_FUNCTION_6() setConnectedAccessoryDigitalID:?];
            [v20 setConnectedAccessoryOrientation:{objc_msgSend(v20, "eventBasedOrientation")}];
          }

          else
          {
LABEL_16:
            v21 = 0;
          }

          if ([v20 isTimestampValid] && objc_msgSend(v20, "isMeasurementEnabled") && objc_msgSend(v20, "didConfidentNotify"))
          {
            mach_continuous_time();
            if ([v20 accessoryConnectedWhileWet])
            {
              [v20 wetAccessoryAttachTimestamp];
            }

            else
            {
              [v20 wetDryTransitionTimestamp];
            }

            if (!dword_2812C4324)
            {
              mach_timebase_info(&dword_2812C4320);
              OUTLINED_FUNCTION_37();
              if (!v203)
              {
                mach_timebase_info(&dword_2812C4320);
              }
            }

            OUTLINED_FUNCTION_18();
            v206 = v204 / v205;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_41();
              LOWORD(__src[1]) = 2048;
              *(&__src[1] + 2) = v206;
              OUTLINED_FUNCTION_21();
              _os_log_impl(v207, v208, v209, v210, v211, 0x12u);
            }

            if (([v20 didHighConfidentNotify] & 1) == 0)
            {
              IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.ldcm.notification.highconfidentcount", v20);
              [OUTLINED_FUNCTION_36() setDidHighConfidentNotify:?];
            }

            if (([v20 didWetDuration] & 1) == 0)
            {
              IOAccessoryAggDPostHistogramKey(@"com.apple.ioaccessorymanager.ldcm.notification.wetduration", v20, v206);
              [OUTLINED_FUNCTION_36() setDidWetDuration:?];
            }
          }
        }

        else
        {
          v21 = 0;
        }

        mach_continuous_time();
        [OUTLINED_FUNCTION_6() setWetAccessoryAttachTimestamp:?];
        [OUTLINED_FUNCTION_42() setIsHeadsetConnected:?];
        [OUTLINED_FUNCTION_42() setIsDebugAccessoryConnected:?];
        [OUTLINED_FUNCTION_42() setIsBlacklistedAccessoryConnected:?];
        if ([gUserLdcmParams enableHalogenMitigationsAndUI] == 1 && gLiquidNotificationContext == 1)
        {
          CFUserNotificationCancel(qword_2812C43A0);
          gLiquidNotificationContext = 0;
          qword_2812C43B8 = 0;
          CFRunLoopRemoveSource(qword_2812C43B0, qword_2812C43A8, *MEMORY[0x277CBF048]);
          CFRelease(qword_2812C43A8);
          CFRelease(qword_2812C43A0);
          if ((v21 & 1) == 0)
          {
            goto LABEL_118;
          }
        }

        else if (!v21)
        {
          goto LABEL_118;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_41();
          OUTLINED_FUNCTION_19();
          _os_log_impl(v80, v81, v82, v83, v84, v85);
        }

        v86 = [v20 halogenMeasurementDispatchQueue];
        __src[0] = MEMORY[0x277D85DD0];
        __src[1] = 3221225472;
        __src[2] = __IOAccessoryHandleDetach_block_invoke;
        __src[3] = &unk_279793038;
        __src[4] = v20;
        dispatch_async(v86, __src);
        goto LABEL_118;
      }

      if (!gDockState)
      {
        goto LABEL_118;
      }

      OUTLINED_FUNCTION_34();
      v75 = [OUTLINED_FUNCTION_6() objectForKey:?];
      if (!v75)
      {
        goto LABEL_118;
      }

      [v75 dockStateValue];
      if (LOBYTE(__dst[9]) == 1)
      {
        if (enableVoltageEventMonitorModeAppleCareLogging == 1 && (IOAccessoryManagerGetType() & 0x600) != 0)
        {
          IOAccessoryAppleCareLoggingForNonVoltageEvents("accessoryUnplug", &__dst[4], v17);
        }

        v151 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        v152 = __dst[0];
        if (v151)
        {
          OUTLINED_FUNCTION_41();
          LOWORD(__src[1]) = 1024;
          *(&__src[1] + 2) = v152;
          HIWORD(__src[1]) = 1024;
          LODWORD(__src[2]) = 1;
          OUTLINED_FUNCTION_21();
          _os_log_impl(v153, v154, v155, v156, v157, 0x14u);
        }

        if (!v152)
        {
          evaluateFalseDetectPreventionDry(__dst, 0);
        }

        setDriverMitigationEnabled(v17, v4, v18);
      }

      LOBYTE(__dst[9]) = 0;
      LOWORD(__dst[12]) = 0;
      v76 = BYTE1(__dst[9]);
      if (BYTE1(__dst[9]))
      {
        v76 = 0;
      }

      BYTE1(__dst[9]) = v76;
      v44 = MEMORY[0x277CCAE60];
      memcpy(__src, __dst, 0x88uLL);
      v77 = __src;
LABEL_117:
      -[__objc2_class setObject:forKey:](v5[30].isa, "setObject:forKey:", [v44 valueWithDockState:v77], OUTLINED_FUNCTION_34());
      goto LABEL_118;
    case -469794789:
      v45 = a4;
      if (!a4)
      {
        goto LABEL_118;
      }

      if (!gDockState)
      {
        goto LABEL_118;
      }

      v46 = *a4;
      [MEMORY[0x277CCABB0] numberWithInt:v46];
      if (![OUTLINED_FUNCTION_25() objectForKey:?])
      {
        goto LABEL_118;
      }

      v254 = v45;
      if (enableVoltageEventMonitorModeConsole == 1)
      {
        v47 = *(v45 + 12);
        if (v47 > 3)
        {
          v48 = "Invalid";
        }

        else
        {
          v48 = IOAccessoryGetEventCodeForIndex_eventCodeStr[v47];
        }

        service = v4;
        v49 = [MEMORY[0x277CCAB68] stringWithFormat:@" (%d) Event: %s, TimeStamp = %llu, Vhi = %d, CumulativeTimeVhi = %d sec, ", v46, v48, *(v45 + 1), *(v45 + 13), *(v45 + 46)];
        v50 = [MEMORY[0x277CCAB68] stringWithFormat:@" (%d) Event: %s, Vhi = %d, CumulativeTimeVhi = %d sec, ", v46, v48, *(v45 + 13), *(v45 + 46)];
        v51 = *(v45 + 45);
        if (v51 <= 6)
        {
          v52 = IOAccessoryGetPowerModeStrForIndex_pwrModeStr[v51];
        }

        v53 = *(v45 + 51);
        if (v53 <= 2)
        {
          v54 = IOAccessoryGetOrientStrForIndex_orientStr[v53];
        }

        OUTLINED_FUNCTION_22();
        OUTLINED_FUNCTION_26();
        [v55 stringWithFormat:@" DigitalID = [%02x %02x %02x %02x %02x %02x], ORIENT = %s, PH = %s, ACC_PWR = %s", v56];
        [OUTLINED_FUNCTION_25() appendString:?];
        OUTLINED_FUNCTION_22();
        OUTLINED_FUNCTION_26();
        [v57 stringWithFormat:@" DigitalID = [%02x %02x %02x %02x %02x %02x], ORIENT = %s, PH = %s, ACC_PWR = %s", v58];
        [OUTLINED_FUNCTION_6() appendString:?];
        v60 = 0;
        v61 = v45 + 5;
        do
        {
          if (*(v61 + v60))
          {
            v62 = *(v61 + v60 + 6);
            if (v62 > 1)
            {
              v63 = "Invalid";
            }

            else
            {
              v63 = IOAccessoryGetMeasStrForIndex_measStr[v62];
            }

            LOWORD(v59) = *(v61 + v60 + 6);
            v64 = v59 / 1000.0;
            v65 = IOAccessoryGetPinStrForIndex_pinStr[v60];
            [MEMORY[0x277CCACA8] stringWithFormat:@", %s(%s) = %.3fV", v63, v65, *&v64];
            [OUTLINED_FUNCTION_25() appendString:?];
            [MEMORY[0x277CCACA8] stringWithFormat:@", %s(%s) = .3%fV", v63, v65, *&v64];
            [OUTLINED_FUNCTION_6() appendString:?];
            v45 = v254;
          }

          ++v60;
        }

        while (v60 != 4);
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__dst[0]) = 138412290;
          *(__dst + 4) = v49;
          OUTLINED_FUNCTION_30(&dword_2548F1000, 0, v79, "%@", __dst);
          v6 = 0x277CCA000;
          v5 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
        }

        else
        {
          v6 = 0x277CCA000uLL;
          v5 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
        }

        v4 = service;
      }

      else
      {
        v50 = 0;
      }

      if (gPrevLog)
      {

        gPrevLog = 0;
      }

      if (v50)
      {
        gPrevLog = [MEMORY[0x277CCACA8] stringWithString:v50];
        v87 = gPrevLog;
      }

      IOAccessoryManagerGetType();
      if (enableVoltageEventMonitorModeAppleCareLogging == 1)
      {
        v88 = [MEMORY[0x277CBEB18] array];
        if (enableVoltageEventMonitorModeAppleCareLogging == 1)
        {
          v89 = *(v45 + 12);
          if (v89 <= 2)
          {
            v90 = v88;
            v91 = off_2797932B8[v89];
            [*(v6 + 2992) numberWithInt:100];
            [OUTLINED_FUNCTION_6() addObject:?];
            [v90 addObject:v91];
            for (i = 0; i != 4; ++i)
            {
              if (*(v45 + i + 20))
              {
                LOWORD(v92) = *(v45 + i + 16);
                v94 = v92 / 1000.0;
              }

              else
              {
                v94 = 0.0;
              }

              [MEMORY[0x277CCACA8] stringWithFormat:@"%s", IOAccessoryGetPinStrForIndex_pinStr[i]];
              [OUTLINED_FUNCTION_6() addObject:?];
              [*(v6 + 2992) numberWithDouble:v94];
              [OUTLINED_FUNCTION_6() addObject:?];
            }

            v95 = *(v254 + 14);
            v96 = *(v254 + 15);
            v97 = *(v254 + 16);
            v98 = *(v254 + 17);
            v99 = *(v254 + 18);
            v100 = *(v254 + 19);
            OUTLINED_FUNCTION_35();
            [v101 stringWithFormat:@"%02x %02x %02x %02x %02x %02x"];
            [OUTLINED_FUNCTION_6() addObject:?];
            v45 = v254;
            [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", *v254];
            [OUTLINED_FUNCTION_6() addObject:?];
            [*(v6 + 2992) numberWithBool:0];
            [OUTLINED_FUNCTION_6() addObject:?];
            [*(v6 + 2992) numberWithBool:0];
            [OUTLINED_FUNCTION_6() addObject:?];
            [*(v6 + 2992) numberWithBool:*(v254 + 44) != 0];
            [OUTLINED_FUNCTION_6() addObject:?];
            if (gAppleCareLogArray)
            {
              v102 = [v90 isEqualToArray:?];

              gAppleCareLogArray = 0;
            }

            else
            {
              v102 = 0;
            }

            gAppleCareLogArray = [MEMORY[0x277CBEA60] arrayWithArray:v90];
            v103 = gAppleCareLogArray;
            if (off_2812C4310)
            {
              if ((v102 & 1) == 0)
              {
                off_2812C4310(v90);
              }
            }
          }
        }
      }

      v104 = *(v45 + 12);
      if (v104 != 3)
      {
        if (v104 != 2)
        {
          goto LABEL_118;
        }

        if (!v5[30].isa)
        {
          goto LABEL_118;
        }

        v105 = *v45;
        [*(v6 + 2992) numberWithInt:*v45];
        v106 = [OUTLINED_FUNCTION_25() objectForKey:?];
        if (!v106)
        {
          goto LABEL_118;
        }

        v107 = v106;
        memcpy(__dst, &xmmword_25491C2B8, 0x88uLL);
        [v107 dockStateValue];
        memcpy(__dst, __src, 0x88uLL);
        connect[0] = 0;
        *&v108 = 0xAAAAAAAAAAAAAAAALL;
        *(&v108 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v256[13] = v108;
        *&v255[16] = v108;
        *v256 = v108;
        *v255 = v108;
        if (HIDWORD(__dst[15]))
        {
          --HIDWORD(__dst[15]);
        }

        servicea = v4;
        v109 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
        v250 = IOServiceOpen(v4, *MEMORY[0x277D85F48], 0, connect);
        v251 = v105;
        if (v250)
        {
          v248 = 0;
          goto LABEL_262;
        }

        BYTE2(v259) = -86;
        v110 = memcmp(v45 + 14, &updateLdcmStateWithEventReport_zeros, 6uLL);
        v111 = v110;
        v112 = *(v45 + 44);
        if (*(v45 + 44))
        {
          v113 = 2 * (*(v45 + 51) == 2);
        }

        else
        {
          v113 = 0;
        }

        if (v110)
        {
          v120 = &gLdcmParams + 12 * !isChargingCableAttached(v45 + 14);
          v121 = (v120 + 24);
          v122 = (v120 + 48);
        }

        else
        {
          v121 = &unk_2812C4454;
          v120 = &unk_2812C4448;
          v122 = &unk_2812C4460;
        }

        v123 = 0;
        v124 = 0;
        v125 = 0;
        v126 = word_2812C446C;
        v127 = LOBYTE(__dst[14]);
        LOWORD(v259) = 257;
        v128 = 1;
        v129 = 16;
        v130 = 1;
        do
        {
          v131 = (v129 - 16) >> 1;
          if (*(v45 + v129 + 4))
          {
            v132 = *(v45 + v129);
            v133 = (v113 + v129 - 16) & 3;
            v134 = v132 < v121[v133];
            if (v132 >= *&v120[2 * v133])
            {
              v123 = 1;
            }

            else
            {
              v260[v131 - 16] = 0;
            }

            ++v125;
            v128 &= v134;
            v130 &= v132 < v126;
            if (v132 >= v122[v133])
            {
              ++v124;
            }
          }

          else
          {
            v260[v131 - 16] = 0;
          }

          ++v129;
        }

        while (v129 != 20);
        v249 = v127;
        if (v125)
        {
          if (v111)
          {
            v135 = isChargingCableAttached(v45 + 14);
            v136 = 0;
            if (!v112 && v135)
            {
              v136 = *(v45 + 52) == 0;
            }
          }

          else
          {
            v136 = 0;
          }

          if ((v127 & 1) != 0 || v136 || !((v259 | BYTE1(v259)) & 1 | (v125 == 1) & v123))
          {
            LODWORD(__dst[15]) = 0;
            if ((v127 & v128) != 1)
            {
              v248 = 0;
              HIDWORD(__dst[14]) = 0;
              goto LABEL_172;
            }

            if (++HIDWORD(__dst[14]) >= *&algn_2812C446E[4])
            {
              v248 = 0;
              LOBYTE(__dst[14]) = 0;
              goto LABEL_172;
            }

            if (!IOAccessoryManagerRequestLdcmMeasurement())
            {
              v248 = *&algn_2812C446E[12];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
LABEL_149:
                v137 = *v45;
                v138 = *(v45 + 53);
                OUTLINED_FUNCTION_10();
                OUTLINED_FUNCTION_21();
                _os_log_impl(v139, v140, v141, v142, v143, 0x1Eu);
              }

LABEL_172:
              v158 = v259;
              v159 = BYTE1(v259);
              if (*(v45 + 53) != -1)
              {
                goto LABEL_175;
              }

              __src[0] = 0xAAAAAAAAAAAAAAAALL;
              if (!IOAccessoryManagerCopyDeviceInfo())
              {
                CFNumberGetValue(__src[0], kCFNumberSInt64Type, v45 + 53);
                CFRelease(__src[0]);
LABEL_175:
                if (gAccyHealthDictionary)
                {
                  v160 = v158 | v159 | (v125 == 1) & v123;
                  v161 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", (*(v45 + 14) << 40) | (*(v45 + 15) << 32) | (*(v45 + 16) << 24) | (*(v45 + 17) << 16) | (*(v45 + 18) << 8) | *(v45 + 19), *(v45 + 51), *(v45 + 53)];
                  v162 = [gAccyHealthDictionary objectForKey:v161];
                  v163 = v162;
                  if (!v162)
                  {
                    v163 = objc_alloc_init(IOAccessoryLdcmHealthClass);
                    v212 = v163;
                    trimAccyHealthDictionary();
                  }

                  [(IOAccessoryLdcmHealthClass *)v163 setLastSeenTimestamp:*(v45 + 1)];
                  [(IOAccessoryLdcmHealthClass *)v163 setLeakagePassedCount:[(IOAccessoryLdcmHealthClass *)v163 leakagePassedCount]+ (v130 & 1)];
                  [(IOAccessoryLdcmHealthClass *)v163 setDryCount:[(IOAccessoryLdcmHealthClass *)v163 dryCount]+ (v128 & 1)];
                  [(IOAccessoryLdcmHealthClass *)v163 setWetCount:[(IOAccessoryLdcmHealthClass *)v163 wetCount]+ (v160 & 1)];
                  [(IOAccessoryLdcmHealthClass *)v163 setOverVoltageCount:[(IOAccessoryLdcmHealthClass *)v163 overVoltageCount]+ v124];
                  v164 = [(IOAccessoryLdcmHealthClass *)v163 isHealthy];
                  if (([gUserLdcmParams fdpBehaviorMask] & 1) == 0)
                  {
                    [(IOAccessoryLdcmHealthClass *)v163 setIsHealthy:1];
                  }

                  v109 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                  if (([gUserLdcmParams fdpBehaviorMask] & 1) != 0 && (objc_msgSend(gUserLdcmParams, "fdpBehaviorMask") & 2) != 0)
                  {
                    [(IOAccessoryLdcmHealthClass *)v163 setIsHealthy:[(IOAccessoryLdcmHealthClass *)v163 leakagePassedCount]!= 0];
                  }

                  if (v124)
                  {
                    [(IOAccessoryLdcmHealthClass *)v163 setOverVoltageTimestamp:[(IOAccessoryLdcmHealthClass *)v163 lastSeenTimestamp]];
                    if (([gUserLdcmParams fdpBehaviorMask] & 1) != 0 && (objc_msgSend(gUserLdcmParams, "fdpBehaviorMask") & 4) != 0)
                    {
                      [(IOAccessoryLdcmHealthClass *)v163 setIsHealthy:0];
                      [(IOAccessoryLdcmHealthClass *)v163 setLeakagePassedCount:0];
                    }
                  }

                  [gAccyHealthDictionary setObject:v163 forKey:v161];
                  v165 = [(IOAccessoryLdcmHealthClass *)v163 isHealthy];
                  if (!v162 || v164 != v165)
                  {
                    commitPersistentAccyHealthDictionary();
                    v166 = &OBJC_IVAR___IOPortLDCMManagerV4__wetPollingInterval;
                    if (![(IOAccessoryLdcmHealthClass *)v163 isHealthy])
                    {
                      IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.ldcm.notification.badaccessorycount", v45);
                    }

                    dbgShowAccyHealthDictionary();
LABEL_190:
                    v167 = LOBYTE(__dst[14]);
                    appendEventToHistory(__dst[13], v45);
                    if (v167 != v249)
                    {
                      IOAccessoryManagerSetVoltageDetected();
                      v168 = *(v45 + 1);
                      *v255 = *v45;
                      *&v255[16] = v168;
                      *v256 = *(v45 + 2);
                      *&v256[13] = *(v45 + 45);
                      v255[12] = LOBYTE(__dst[14]) ^ 1;
                      v255[13] = __dst[14];
                      appendEventToHistory(__dst[13], v255);
                      if (LOBYTE(__dst[14]) != 1)
                      {
                        v180 = *v255;
                        v181 = __dst[0];
                        if (LODWORD(__dst[0]) != 1)
                        {
                          HIDWORD(__dst[15]) = 0;
                          LODWORD(__dst[0]) = 1;
                          ++dword_27F61282C;
                          *(&__dst[1] + 4) = *&v255[4];
                          __dst[10] = CFAbsoluteTimeGetCurrent();
                          IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.voltage.averagetime", v255);
                          if (gEnableTimeToDryPopup == 1)
                          {
                            OUTLINED_FUNCTION_7();
                            if (v220)
                            {
                              CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, [MEMORY[0x277CCACA8] stringWithFormat:@"Time To Dry\n %02llu:%02llu:%02llu", (*&__dst[10] - *&__dst[11]) / 0xE10, (*&__dst[10] - *&__dst[11]) / 0x3C % 0x3C, (*&__dst[10] - *&__dst[11]) % 0x3C], 0, @"Ok", 0, 0, 0);
                            }
                          }
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          __src[0] = __PAIR64__(v180, 67109888);
                          LOWORD(__src[1]) = 1024;
                          *(&__src[1] + 2) = v181;
                          HIWORD(__src[1]) = 1024;
                          LODWORD(__src[2]) = __dst[0];
                          WORD2(__src[2]) = 1024;
                          *(&__src[2] + 6) = LOBYTE(__dst[9]);
                          OUTLINED_FUNCTION_21();
                          _os_log_impl(v182, v183, v184, v185, v186, 0x1Au);
                        }

                        dbgShowAccyHealthDictionary();
                        goto LABEL_216;
                      }

                      IOAccessoryManagerGetType();
                      v169 = *v255;
                      v170 = __dst[0];
                      if (LODWORD(__dst[0]))
                      {
                        v171 = *(v45 + 14) == 4 && *(v45 + 15) == 241 && !*(v45 + 16) && !*(v45 + 17) && !*(v45 + 18) && *(v45 + 19) == 0;
                        v172 = v255[14];
                        v173 = v256[18];
                        HIDWORD(__dst[15]) = 11;
                        LODWORD(__dst[0]) = 0;
                        ++stats;
                        v174 = *&v255[4];
                        *(__dst + 4) = *&v255[4];
                        __dst[11] = CFAbsoluteTimeGetCurrent();
                        IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.voltage.count", v255);
                        __dst[3] = (v172 << 40) | (v255[15] << 32) | (v255[16] << 24) | (v255[17] << 16) | (v255[18] << 8) | v255[19];
                        LODWORD(__dst[4]) = *&v255[14];
                        WORD2(__dst[4]) = *&v255[18];
                        if (v171)
                        {
                          IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.voltage.headset", v255);
                          if (v173 && (v172 & 0x20) == 0 && __dst[3])
                          {
                            goto LABEL_202;
                          }
                        }

                        else if ((v172 & 0x20) == 0 && (v172 << 40) | (v255[15] << 32) | (v255[16] << 24) | (v255[17] << 16) | (v255[18] << 8) | v255[19])
                        {
LABEL_202:
                          IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.ldcm.notification.count", v255);
                          if (evaluateAccyHealthDictionary(__dst[3], v255))
                          {
                            __dst[5] = __dst[3];
                            LOBYTE(__dst[6]) = v256[19];
                            __dst[7] = *&v256[21];
                            __dst[8] = v174;
                          }

                          else
                          {
                            setDriverMitigationEnabled(v169, servicea, 0);
                          }

                          if ((__dst[9] & 0x100) == 0)
                          {
                            BYTE1(__dst[9]) = 1;
                            *(v166 + 1956) = 1;
                          }
                        }
                      }

                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        LODWORD(__src[0]) = 67111936;
                        HIDWORD(__src[0]) = v169;
                        LOWORD(__src[1]) = 1024;
                        *(&__src[1] + 2) = v170;
                        HIWORD(__src[1]) = 1024;
                        LODWORD(__src[2]) = __dst[0];
                        WORD2(__src[2]) = 1024;
                        *(&__src[2] + 6) = LOBYTE(__dst[9]);
                        WORD1(__src[3]) = 1024;
                        HIDWORD(__src[3]) = stats;
                        LOWORD(__src[4]) = 1024;
                        *(&__src[4] + 2) = v255[14];
                        HIWORD(__src[4]) = 1024;
                        LODWORD(__src[5]) = v255[15];
                        WORD2(__src[5]) = 1024;
                        *(&__src[5] + 6) = v255[16];
                        WORD1(__src[6]) = 1024;
                        HIDWORD(__src[6]) = v255[17];
                        LOWORD(__src[7]) = 1024;
                        *(&__src[7] + 2) = v255[18];
                        HIWORD(__src[7]) = 1024;
                        LODWORD(__src[8]) = v255[19];
                        WORD2(__src[8]) = 1024;
                        *(&__src[8] + 6) = v256[18];
                        OUTLINED_FUNCTION_21();
                        _os_log_impl(v175, v176, v177, v178, v179, 0x4Au);
                      }

LABEL_216:
                      v187 = 1;
                      goto LABEL_217;
                    }

LABEL_262:
                    v187 = 0;
LABEL_217:
                    if (HIDWORD(__dst[15]) && !v248)
                    {
                      IOAccessoryManagerRequestLdcmMeasurement();
                    }

                    if (connect[0])
                    {
                      IOServiceClose(connect[0]);
                    }

                    if (LOBYTE(__dst[14]) == 1)
                    {
                      if ((__dst[16] & 0x100000000) == 0 && __dst[5])
                      {
                        OUTLINED_FUNCTION_17();
                        v189 = [v109[31].cache objectForKey:{objc_msgSend(v188, "stringWithFormat:", @"%012llx_%1d_%012llx"}];
                        if (v189 && (v190 = v189, v191 = __dst[8], v191 <= [v189 overVoltageTimestamp]))
                        {
                          v192 = __dst[8];
                          v193 = dword_2812C4324;
                          if (!dword_2812C4324)
                          {
                            mach_timebase_info(&dword_2812C4320);
                            v193 = dword_2812C4324;
                          }

                          v194 = dword_2812C4320;
                          v195 = [v190 overVoltageTimestamp];
                          v196 = dword_2812C4324;
                          if (!dword_2812C4324)
                          {
                            mach_timebase_info(&dword_2812C4320);
                            v196 = dword_2812C4324;
                          }

                          v197 = dword_2812C4320;
                          v198 = *MEMORY[0x277CBECE8];
                          OUTLINED_FUNCTION_31();
                          v200 = CFStringCreateWithFormat(v199, 0, @".%012llx.%1d");
                          if (v200)
                          {
                            v201 = v200;
                            IOAccessoryAggDCollectDataWithInterval(@"com.apple.ioaccessorymanager.ldcm.notification.overvoltage", v200, (v195 * v197 / v196 - v192 * v194 / v193) / 0x3B9ACA00);
                            BYTE4(__dst[16]) = 1;
                            CFRelease(v201);
                          }
                        }

                        else
                        {
                          v263 = 0;
                          valuePtr = 0;
                          OUTLINED_FUNCTION_17();
                          if ([v109[31].cache objectForKey:{objc_msgSend(v213, "stringWithFormat:", @"%012llx_%1d_%012llx"}])
                          {
                            *&v214 = 0xAAAAAAAAAAAAAAAALL;
                            *(&v214 + 1) = 0xAAAAAAAAAAAAAAAALL;
                            *&v260[32] = v214;
                            v261 = v214;
                            *v260 = v214;
                            *&v260[16] = v214;
                            v259 = v214;
                            v215 = [__dst[13] reverseObjectEnumerator];
                            memset(v258, 0, sizeof(v258));
                            v216 = [v215 countByEnumeratingWithState:v258 objects:__src count:16];
                            if (v216)
                            {
                              v217 = v216;
                              v218 = **&v258[1];
                              do
                              {
                                v219 = 0;
LABEL_267:
                                if (**&v258[1] != v218)
                                {
                                  objc_enumerationMutation(v215);
                                }

                                [*(*(&v258[0] + 1) + 8 * v219) getBytes:&v259 length:80];
                                v220 = __dst[7] == *&v260[37] && BYTE12(v259) == 2;
                                v45 = v254;
                                if (!v220 || isChargingCableAttached(v254 + 14) && !v260[36])
                                {
                                  break;
                                }

                                for (j = 0; j != 4; ++j)
                                {
                                  if (v260[j + 4])
                                  {
                                    v222 = *&v260[2 * j + 16];
                                    v223 = *(&valuePtr + j) - v222;
                                    *(&valuePtr + j) = v222;
                                    if ((v223 & 0x8000) == 0)
                                    {
                                      v224 = v223;
                                      if ([gUserLdcmParams maxUpFluctuationMv] <= v223)
                                      {
                                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                        {
                                          connect[1] = 67109120;
                                          connect[2] = v224;
                                          OUTLINED_FUNCTION_19();
                                          _os_log_impl(v227, v228, v229, v230, v231, v232);
                                        }

                                        if (__dst[8] <= *(v254 + 1))
                                        {
                                          if (!dword_2812C4324)
                                          {
                                            mach_timebase_info(&dword_2812C4320);
                                            if (!dword_2812C4324)
                                            {
                                              mach_timebase_info(&dword_2812C4320);
                                            }
                                          }

                                          v233 = *MEMORY[0x277CBECE8];
                                          OUTLINED_FUNCTION_31();
                                          v235 = CFStringCreateWithFormat(v234, 0, @".%012llx.%1d");
                                          if (v235)
                                          {
                                            v236 = v235;
                                            OUTLINED_FUNCTION_18();
                                            IOAccessoryAggDCollectDataWithInterval(@"com.apple.ioaccessorymanager.ldcm.notification.voltagefluctuation", v236, v237 / v238);
                                            CFRelease(v236);
                                            BYTE4(__dst[16]) = 1;
                                          }
                                        }

                                        v45 = v254;
                                        goto LABEL_235;
                                      }
                                    }
                                  }
                                }

                                if (++v219 != v217)
                                {
                                  goto LABEL_267;
                                }

                                v217 = [v215 countByEnumeratingWithState:v258 objects:__src count:16];
                                v45 = v254;
                              }

                              while (v217);
                            }
                          }

                          OUTLINED_FUNCTION_17();
                          v226 = [v225 stringWithFormat:@"%012llx_%1d_%012llx"];
                          if ([gAccyHealthDictionary objectForKey:v226] && __dst[8] <= *(v45 + 1))
                          {
                            if (dword_2812C4324)
                            {
                              OUTLINED_FUNCTION_37();
                            }

                            else
                            {
                              mach_timebase_info(&dword_2812C4320);
                              OUTLINED_FUNCTION_37();
                              if (!v239)
                              {
                                mach_timebase_info(&dword_2812C4320);
                              }
                            }

                            OUTLINED_FUNCTION_18();
                            v242 = v240 / v241;
                            v45 = v254;
                            if (v240 / v241 >= [gUserLdcmParams maxVhiDurationSec])
                            {
                              v243 = *MEMORY[0x277CBECE8];
                              OUTLINED_FUNCTION_31();
                              v245 = CFStringCreateWithFormat(v244, 0, @".%012llx.%1d");
                              if (v245)
                              {
                                v246 = v245;
                                IOAccessoryAggDCollectDataWithInterval(@"com.apple.ioaccessorymanager.ldcm.notification.wettoolong", v245, v242);
                                CFRelease(v246);
                                BYTE4(__dst[16]) = 1;
                              }
                            }
                          }
                        }
                      }
                    }

                    else if (v187)
                    {
                      evaluateFalseDetectPreventionDry(__dst, v45);
                    }

LABEL_235:
                    if (!v250)
                    {
                      memcpy(__src, __dst, 0x88uLL);
                      v202 = [MEMORY[0x277CCAE60] valueWithDockState:__src];
                      [gDockState setObject:v202 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v251)}];
                      IOAccessoryAggDCollectData(@"histogramVoltage", v45);
                      IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.voltage.cumulativetime", v45);
                    }

                    goto LABEL_118;
                  }
                }

                else
                {
                  v109 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
                }

LABEL_189:
                v166 = &OBJC_IVAR___IOPortLDCMManagerV4__wetPollingInterval;
                goto LABEL_190;
              }

LABEL_260:
              v109 = &OBJC_METACLASS___LDCMNotificationUIManagerV4;
              goto LABEL_189;
            }
          }

          else
          {
            HIDWORD(__dst[14]) = 0;
            if (++LODWORD(__dst[15]) >= *algn_2812C446E)
            {
              v248 = 0;
              LOBYTE(__dst[14]) = 1;
              goto LABEL_172;
            }

            if (!IOAccessoryManagerRequestLdcmMeasurement())
            {
              v248 = *&algn_2812C446E[8];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_149;
              }

              goto LABEL_172;
            }
          }
        }

        v248 = 0;
        goto LABEL_260;
      }

      if (!v5[30].isa)
      {
        goto LABEL_118;
      }

      v114 = *v45;
      OUTLINED_FUNCTION_34();
      v115 = [OUTLINED_FUNCTION_11() objectForKey:?];
      if (!v115)
      {
        goto LABEL_118;
      }

      [v115 dockStateValue];
      v116 = __dst[0];
      memcpy(__src, __dst + 4, 0x44uLL);
      v117 = __dst[9];
      v118 = BYTE1(__dst[9]);
      v259 = *(&__dst[9] + 2);
      *v260 = *(&__dst[11] + 2);
      *&v260[16] = *(&__dst[13] + 2);
      *&v260[30] = *&__dst[15];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__dst[0]) = 67109632;
        HIDWORD(__dst[0]) = v114;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = v116;
        HIWORD(__dst[1]) = 1024;
        LODWORD(__dst[2]) = v117 & 1;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%d) Event: GoldbondDisabledMbHeadset, CurrentVoltageState = %d, gPlug = %d", __dst, 0x14u);
      }

      if (v118)
      {
        goto LABEL_118;
      }

      gGiveUserRadarOption = 1;
      v44 = MEMORY[0x277CCAE60];
      LODWORD(__dst[0]) = v116;
      memcpy(__dst + 4, __src, 0x44uLL);
      LOBYTE(__dst[9]) = v117;
      BYTE1(__dst[9]) = 1;
      *(&__dst[9] + 2) = v259;
      *(&__dst[11] + 2) = *v260;
      *(&__dst[13] + 2) = *&v260[16];
      *&__dst[15] = *&v260[30];
LABEL_116:
      v77 = __dst;
      goto LABEL_117;
    case -469794726:
      goto LABEL_10;
  }

  if (a3 != -469794725)
  {
LABEL_118:
    v119 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_49();
    return;
  }

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_49();

  IOAccessoryHandleAttach(v8);
}

void IOAccessoryHandleAttach(io_registry_entry_t a1)
{
  v108[9] = *MEMORY[0x277D85DE8];
  v96 = -21846;
  v95 = -1431655766;
  memset(&v108[4], 170, 36);
  v94[0] = -1431655766;
  *(v94 + 3) = -1431655766;
  v106 = *(&xmmword_25491C2F8 + 10);
  v107 = unk_25491C312;
  memset(v108, 170, 30);
  v92 = 0xAAAAAAAAAAAAAAAALL;
  number = 0xAAAAAAAAAAAAAAAALL;
  connect = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    valuePtr = 136315138;
    *v98 = "IOAccessoryHandleAttach";
    OUTLINED_FUNCTION_23();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  PrimaryPort = IOAccessoryManagerGetPrimaryPort();
  if (PrimaryPort)
  {
    [MEMORY[0x277CCABB0] numberWithInt:PrimaryPort];
    v7 = [OUTLINED_FUNCTION_11() objectForKey:?];
    if (!IOAccessoryManagerGetDigitalID())
    {
      OUTLINED_FUNCTION_0_3();
      v10 = v8 | v9;
      if (v8 | v9)
      {
        v11 = digitalIdNumPinsFree(v8 | v9, &valuePtr);
        valuePtr = 0;
        CFProperty = IORegistryEntryCreateCFProperty(a1, @"IOAccessoryOrientation", *MEMORY[0x277CBECE8], 0);
        if (CFProperty)
        {
          v13 = CFProperty;
          CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
          CFRelease(v13);
          v86 = valuePtr;
        }

        else
        {
          v86 = 0;
        }

        if (v7)
        {
          v14 = [v7 isWet];
          v85 = [v7 isTimestampValid];
          [OUTLINED_FUNCTION_28() setIsReceptacleEmpty:?];
          [OUTLINED_FUNCTION_28() setJustDetached:?];
          mach_continuous_time();
          [OUTLINED_FUNCTION_11() setWetAccessoryAttachTimestamp:?];
          v84 = [v7 halogenMeasurement];
          if ([v7 isMeasurementEnabled])
          {
            [objc_msgSend(v7 "cond")];
            v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
            if ([v7 isMeasurementActive])
            {
              do
              {
                v16 = [objc_msgSend(v7 "cond")];
              }

              while ([v7 isMeasurementActive] && (v16 & 1) != 0);
              if ((v16 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(valuePtr) = 0;
                OUTLINED_FUNCTION_23();
                _os_log_impl(v17, v18, v19, v20, v21, 2u);
              }
            }

            halogenMeasurementCleanup(v7);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              valuePtr = 136315138;
              *v98 = "halogenMeasurementCleanupSafe";
              OUTLINED_FUNCTION_23();
              _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
            }

            dispatch_source_set_timer([v7 timer], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
            [OUTLINED_FUNCTION_28() setAttachDelayTimerRunning:?];
            [objc_msgSend(v7 "cond")];
            v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v11)
            {
              if (v27)
              {
                goto LABEL_37;
              }
            }

            else if (v27)
            {
LABEL_37:
              OUTLINED_FUNCTION_20();
              OUTLINED_FUNCTION_19();
              _os_log_impl(v46, v47, v48, v49, v50, v51);
            }
          }

          if (IOServiceOpen(a1, *MEMORY[0x277D85F48], 0, &connect))
          {
            goto LABEL_72;
          }

          IOAccessoryManagerSetVoltageDetected();
          [v7 setIsHeadsetConnected:0];
          IOServiceClose(connect);
          connect = 0;
          Type = IOAccessoryManagerGetType();
          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __IOAccessoryHandleAttach_block_invoke;
          block[3] = &__block_descriptor_36_e5_v8__0l;
          v90 = Type;
          dispatch_async(global_queue, block);
          [v7 setIsDebugAccessoryConnected:(v95 >> 5) & 1];
          if ([v7 isDebugAccessoryConnected])
          {
            goto LABEL_72;
          }

          [v7 setIsBlacklistedAccessoryConnected:v10 == 0x18F281000000];
          if ([v7 isBlacklistedAccessoryConnected])
          {
            goto LABEL_72;
          }

          if (v84)
          {
            v54 = v11 == 0;
          }

          else
          {
            v54 = 1;
          }

          v55 = !v54;
          if (v54)
          {
            [v7 setWasTapToRadarShown:1];
          }

          else
          {
            [v7 setIsMeasurementEnabled:1];
          }

          if (v14)
          {
            [v7 setIsWet:1];
            [OUTLINED_FUNCTION_40() setAccessoryConnectedWhileWet:?];
            [OUTLINED_FUNCTION_28() setIsMeasurementActive:?];
            [v7 setIsTimestampValid:v85];
            v56 = [MEMORY[0x277CBEA90] dataWithBytes:&v95 length:6];
            [OUTLINED_FUNCTION_11() setConnectedAccessoryPDigitalID:?];
            OUTLINED_FUNCTION_0_3();
            [v7 setConnectedAccessoryDigitalID:v57 | v58];
            [v7 setConnectedAccessoryOrientation:v86];
            if (v11)
            {
              v62 = @"com.apple.ioaccessorymanager.ldcm.eis.accessory.connection";
              goto LABEL_59;
            }

            _generateUIAnalyticEvents(v7, PrimaryPort);
            IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.accessory.connection", v7);
          }

          else
          {
            [v7 setIsMeasurementActive:0];
            [v7 setIsTimestampValid:v85];
            v59 = [MEMORY[0x277CBEA90] dataWithBytes:&v95 length:6];
            [OUTLINED_FUNCTION_11() setConnectedAccessoryPDigitalID:?];
            OUTLINED_FUNCTION_0_3();
            [v7 setConnectedAccessoryDigitalID:v60 | v61];
            [v7 setConnectedAccessoryOrientation:v86];
            IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.accessory.connection", v7);
            if (v11)
            {
              if (!v55)
              {
                goto LABEL_72;
              }

LABEL_60:
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                OUTLINED_FUNCTION_20();
                OUTLINED_FUNCTION_19();
                _os_log_impl(v63, v64, v65, v66, v67, v68);
              }

              if (v10 == 0x4F100000000)
              {
                goto LABEL_78;
              }

              if (v10 == 0x18FE81000000)
              {
                [OUTLINED_FUNCTION_40() setJustAttachedCase:?];
              }

              if (([gUserLdcmParams userBehaviorMask] & 0x20) != 0)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v75 = [v7 ldcmStartMeasurementsDelayNs];
                  valuePtr = 136315650;
                  *v98 = "IOAccessoryHandleAttach";
                  *&v98[8] = 2048;
                  *&v98[10] = v10;
                  *&v98[18] = 2048;
                  *&v98[20] = v75 / 0xF4240;
                  OUTLINED_FUNCTION_23();
                  _os_log_impl(v76, v77, v78, v79, v80, 0x20u);
                }

                v81 = [v7 timer];
                v82 = dispatch_walltime(0, [v7 ldcmStartMeasurementsDelayNs]);
                dispatch_source_set_timer(v81, v82, 0xFFFFFFFFFFFFFFFFLL, 0);
                [OUTLINED_FUNCTION_40() setAttachDelayTimerRunning:?];
              }

              else
              {
LABEL_78:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  valuePtr = 136315394;
                  *v98 = "IOAccessoryHandleAttach";
                  *&v98[8] = 2048;
                  *&v98[10] = v10;
                  OUTLINED_FUNCTION_23();
                  _os_log_impl(v69, v70, v71, v72, v73, 0x16u);
                }

                v74 = [v7 halogenMeasurementDispatchQueue];
                v88[0] = MEMORY[0x277D85DD0];
                v88[1] = 3221225472;
                v88[2] = __IOAccessoryHandleAttach_block_invoke_745;
                v88[3] = &unk_279793038;
                v88[4] = v7;
                dispatch_async(v74, v88);
              }

              goto LABEL_72;
            }
          }

          v62 = @"com.apple.ioaccessorymanager.ldcm.eis.accessory.nofreepins";
LABEL_59:
          IOAccessoryAggDPostScalarPrefixKey(v62, v7);
          if ((v55 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_60;
        }

        if (gDockState)
        {
          [MEMORY[0x277CCABB0] numberWithInt:PrimaryPort];
          v28 = [OUTLINED_FUNCTION_11() objectForKey:?];
          if (v28)
          {
            [v28 dockStateValue];
            v29 = valuePtr;
            *&v108[4] = *v98;
            *&v108[6] = *&v98[16];
            LODWORD(v108[8]) = *v99;
            v30 = *&v99[4];
            v31 = v99[12];
            v94[0] = *&v99[13];
            *(v94 + 3) = *&v99[16];
            v33 = *&v99[20];
            v32 = v100;
            v34 = v102;
            *(&v108[1] + 6) = *(v105 + 14);
            v107 = v104;
            *v108 = v105[0];
            v106 = v103;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_20();
              *&v98[4] = 1024;
              *&v98[6] = v29;
              *&v98[10] = 1024;
              *&v98[12] = 1;
              OUTLINED_FUNCTION_23();
              _os_log_impl(v35, v36, v37, v38, v39, 0x14u);
            }

            if (enableVoltageEventMonitorModeAppleCareLogging == 1 && (IOAccessoryManagerGetType() & 0x600) != 0)
            {
              IOAccessoryAppleCareLoggingForNonVoltageEvents("accessoryPlug", &v95, PrimaryPort);
            }

            if (!IOServiceOpen(a1, *MEMORY[0x277D85F48], 0, &connect))
            {
              IOAccessoryManagerSetVoltageDetected();
              IOServiceClose(connect);
              connect = 0;
              if ((v95 & 0x20) == 0 && !(v29 | v34 & 1))
              {
                if (_retrieveDeviceInterfaceSerialNumber())
                {
                  v29 = 0;
                }

                else
                {
                  CFNumberGetValue(number, kCFNumberSInt64Type, &v92);
                  CFRelease(number);
                  *&v40 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *v99 = v40;
                  v99[16] = -86;
                  *&v98[16] = v40;
                  *v98 = v40;
                  valuePtr = PrimaryPort;
                  v99[15] = v86;
                  *&v99[17] = v92;
                  IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.ldcm.notification.count", &valuePtr);
                  OUTLINED_FUNCTION_0_3();
                  if (evaluateAccyHealthDictionary(v41 | v42, &valuePtr))
                  {
                    OUTLINED_FUNCTION_0_3();
                    v30 = v43 | v44;
                    v33 = v92;
                    v32 = mach_continuous_time();
                    v31 = v86;
                  }

                  else
                  {
                    setDriverMitigationEnabled(PrimaryPort, a1, 0);
                  }

                  v29 = 0;
                  v34 = 1;
                  gGiveUserRadarOption = 1;
                }
              }
            }

            *v98 = *&v108[4];
            *&v98[16] = *&v108[6];
            v103 = v106;
            valuePtr = v29;
            *v99 = v108[8];
            *&v99[4] = v30;
            v99[12] = v31;
            *&v99[13] = v94[0];
            *&v99[16] = *(v94 + 3);
            *&v99[20] = v33;
            v100 = v32;
            v101 = 1;
            v102 = v34;
            v104 = v107;
            v105[0] = *v108;
            *(v105 + 14) = *(&v108[1] + 6);
            v45 = [MEMORY[0x277CCAE60] valueWithDockState:&valuePtr];
            [gDockState setObject:v45 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", PrimaryPort)}];
          }
        }
      }
    }
  }

LABEL_72:
  v83 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_49();
}

void IOAccessoryAggDCollectData(const char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (enableVoltageEventMonitorModeAggD == 1)
  {
    memcpy(__dst, &xmmword_25491C2B8, sizeof(__dst));
    if (_MergedGlobals)
    {
      if (gDockState)
      {
        [MEMORY[0x277CCABB0] numberWithInt:1];
        v4 = [OUTLINED_FUNCTION_6() objectForKey:?];
        if (v4)
        {
          [v4 dockStateValue];
          if (CFEqual(a1, @"com.apple.ioaccessorymanager.voltage.count") != 1)
          {
            if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.count") == 1)
            {
              v5 = _MergedGlobals;
              v6 = @"com.apple.ioaccessorymanager.ldcm.notification.count";
            }

            else if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.suppress.phone") == 1)
            {
              v5 = _MergedGlobals;
              v6 = @"com.apple.ioaccessorymanager.ldcm.notification.suppress.phone";
            }

            else
            {
              if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.suppress.accessory") != 1)
              {
                if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.confidentcount") == 1)
                {
                  _MergedGlobals(@"com.apple.ioaccessorymanager.ldcm.notification.confidentcount", 1);
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_16;
                  }

                  v13 = 138543362;
                  v14 = a1;
                  v10 = MEMORY[0x277D86220];
                  v11 = "(!) Event: AggD key %{public}@ increment";
                }

                else if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.highconfidentcount") == 1)
                {
                  _MergedGlobals(@"com.apple.ioaccessorymanager.ldcm.notification.highconfidentcount", 1);
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_16;
                  }

                  v13 = 138543362;
                  v14 = a1;
                  v10 = MEMORY[0x277D86220];
                  v11 = "(!) Event: AggD key %{public}@ increment";
                }

                else
                {
                  if (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.badaccessorycount") == 1)
                  {
                    IOAccessoryAggDBadAccyEventData(a2);
                    goto LABEL_16;
                  }

                  if (CFEqual(a1, @"com.apple.ioaccessorymanager.voltage.cumulativetime") == 1)
                  {
                    v7 = *(a2 + 46);
                    qword_27F612838 = v7;
                    v5 = off_2812C4308;
                    if (!off_2812C4308)
                    {
                      goto LABEL_16;
                    }

                    v6 = @"com.apple.ioaccessorymanager.voltage.cumulativetime";
                    goto LABEL_15;
                  }

                  if (CFEqual(a1, @"com.apple.ioaccessorymanager.voltage.averagetime") == 1)
                  {
                    IOAccessoryAggDAverageVhiTimeData(__dst, a2);
                    goto LABEL_16;
                  }

                  if (CFEqual(a1, @"histogramVoltage") == 1)
                  {
                    IOAccessoryAggDVoltageData(a2);
                    goto LABEL_16;
                  }

                  if (CFEqual(a1, @"com.apple.ioaccessorymanager.voltage.headset") == 1)
                  {
                    _MergedGlobals(@"com.apple.ioaccessorymanager.voltage.headset", 1);
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_16;
                    }

                    v13 = 138543362;
                    v14 = a1;
                    v10 = MEMORY[0x277D86220];
                    v11 = "(!) Event: AggD key %{public}@ increment";
                  }

                  else
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_16;
                    }

                    v13 = 136315138;
                    v14 = "IOAccessoryAggDCollectData";
                    v10 = MEMORY[0x277D86220];
                    v11 = "%s Invalid AggD key\n";
                  }
                }

                OUTLINED_FUNCTION_30(&dword_2548F1000, v10, v9, v11, &v13);
                goto LABEL_16;
              }

              v5 = _MergedGlobals;
              v6 = @"com.apple.ioaccessorymanager.ldcm.notification.suppress.accessory";
            }

LABEL_14:
            v7 = 1;
LABEL_15:
            v5(v6, v7);
            goto LABEL_16;
          }

          v5 = _MergedGlobals;
          if (_MergedGlobals)
          {
            v6 = @"com.apple.ioaccessorymanager.voltage.count";
            goto LABEL_14;
          }
        }
      }
    }
  }

LABEL_16:
  v8 = *MEMORY[0x277D85DE8];
}

void evaluateFalseDetectPreventionDry(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 132) & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @".%012llx.%1d", *(a1 + 40), *(a1 + 48));
      if (v4)
      {
        v5 = v4;
        v6 = mach_continuous_time();
        if (a2)
        {
          v7 = *(a2 + 4);
          v8 = *(a1 + 64);
          if (dword_2812C4324)
          {
            OUTLINED_FUNCTION_47();
          }

          else
          {
            mach_timebase_info(&dword_2812C4320);
            OUTLINED_FUNCTION_47();
            if (!v9)
            {
              mach_timebase_info(&dword_2812C4320);
              v10 = dword_2812C4320;
              v9 = dword_2812C4324;
            }
          }

          v11 = (v7 * v10 / v9 - v8) / 0x3B9ACA00;
          if (v11 < [gUserLdcmParams minVhiDurationSec])
          {
            v12 = @"com.apple.ioaccessorymanager.ldcm.notification.drytooshort";
            v13 = v5;
            v14 = v11;
LABEL_11:
            IOAccessoryAggDCollectDataWithInterval(v12, v13, v14);
            CFRelease(v5);
            goto LABEL_12;
          }
        }

        else
        {
          v7 = v6;
        }

        IOAccessoryAggDCollectData(@"com.apple.ioaccessorymanager.ldcm.notification.highconfidentcount", 0);
        v15 = *(a1 + 64);
        if (dword_2812C4324)
        {
          OUTLINED_FUNCTION_47();
        }

        else
        {
          mach_timebase_info(&dword_2812C4320);
          OUTLINED_FUNCTION_47();
          if (!v16)
          {
            mach_timebase_info(&dword_2812C4320);
            v17 = dword_2812C4320;
            v16 = dword_2812C4324;
          }
        }

        v14 = (v7 * v17 / v16 - v15) / 0x3B9ACA00;
        v12 = @"com.apple.ioaccessorymanager.ldcm.notification.wetduration";
        v13 = v5;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  *(a1 + 132) = 0;
  *(a1 + 40) = 0;
}

void trimAccyHealthDictionary()
{
  v23 = *MEMORY[0x277D85DE8];
  if ([gAccyHealthDictionary count] >= 0x20)
  {
    v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", 0, 0, 0];
    v1 = gAccyHealthDictionary;
    v5 = OUTLINED_FUNCTION_50(v0, v2, v3, v4);
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = MEMORY[0];
      v9 = -1;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(v1);
          }

          v11 = *(8 * i);
          v12 = [v11 isEqualToString:v0];
          if ((v12 & 1) == 0)
          {
            v16 = [gAccyHealthDictionary objectForKey:v11];
            v12 = [v16 lastSeenTimestamp];
            if (v12 < v9)
            {
              if (v7)
              {
              }

              v7 = v11;
              v12 = [v16 lastSeenTimestamp];
              v9 = v12;
            }
          }
        }

        v6 = OUTLINED_FUNCTION_50(v12, v13, v14, v15);
      }

      while (v6);
      if (v7)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136446466;
          v20 = [v7 UTF8String];
          v21 = 2048;
          v22 = v9;
          OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v17, "[trim] <%{public}s> : %llu", &v19);
        }

        [gAccyHealthDictionary removeObjectForKey:v7];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void commitPersistentAccyHealthDictionary()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (v0)
  {
    v1 = v0;
    v7 = 0;
    v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:gAccyHealthDictionary requiringSecureCoding:1 error:&v7];
    v3 = v7;
    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v4 = [objc_msgSend(v3 "localizedDescription")];
        v8 = 136315394;
        v9 = "commitPersistentAccyHealthDictionary";
        v10 = 2080;
        v11 = v4;
        OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v5, "%s err: %s", &v8);
        v3 = v7;
      }
    }

    if (v2)
    {
      [v1 setObject:v2 forKey:@"accyHealthDict"];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL evaluateAccyHealthDictionary(unint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (gAccyHealthDictionary && (v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", 0, 0, 0], (v5 = objc_msgSend(gAccyHealthDictionary, "objectForKey:", v4)) != 0) && objc_msgSend(v5, "isHealthy"))
  {
    if (!digitalIdNumPinsFree(a1, buf))
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_7;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", a1, *(a2 + 51), *(a2 + 53)];
    v7 = [gAccyHealthDictionary objectForKey:v6];
    if (v7)
    {
      v8 = 0;
      v9 = [v7 isHealthy] ^ 1;
      goto LABEL_7;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = 1;
LABEL_7:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a2 + 51);
    v11 = *(a2 + 53);
    *buf = 134219008;
    v17 = a1;
    v18 = 1024;
    v19 = v10;
    v20 = 2048;
    v21 = v11;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[eval] <%012llx_%1d_%012llx> : emptyFail %d, accyFail %d", buf, 0x28u);
  }

  v12 = @"com.apple.ioaccessorymanager.ldcm.notification.confidentcount";
  if (v9)
  {
    v12 = @"com.apple.ioaccessorymanager.ldcm.notification.suppress.accessory";
  }

  if (v8)
  {
    v13 = @"com.apple.ioaccessorymanager.ldcm.notification.suppress.phone";
  }

  else
  {
    v13 = v12;
  }

  IOAccessoryAggDCollectData(v13, a2);
  v14 = *MEMORY[0x277D85DE8];
  return ((v8 | v9) & 1) == 0;
}

void IOAccessoryAggDCollectDataWithInterval(const __CFString *a1, const __CFString *a2, unint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = enableVoltageEventMonitorModeAggD != 1 || off_2812C4300 == 0;
  if (!v3 && (CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.overvoltage") || CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.drytooshort") || CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.voltagefluctuation") || CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.wettoolong") || CFEqual(a1, @"com.apple.ioaccessorymanager.ldcm.notification.wetduration")))
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a1);
    v8 = MutableCopy;
    if (a2)
    {
      CFStringAppend(MutableCopy, a2);
    }

    if (v8)
    {
      off_2812C4300(v8, a3);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
      }

      CFRelease(v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void IOAccessoryAggDBadAccyEventData(unsigned __int8 *a1)
{
  if (_MergedGlobals)
  {
    v1 = 0;
    v2 = (a1[14] << 40) | (a1[15] << 32) | (a1[16] << 24) | (a1[17] << 16) | (a1[18] << 8) | a1[19];
    while (kAggDKnownDigitalID[v1] != v2)
    {
      if (++v1 == 6)
      {
        v2 = 0xFFFFFFFFFFFFLL;
        break;
      }
    }

    if (a1[51] <= 1u)
    {
      v3 = 1;
    }

    else
    {
      v3 = a1[51];
    }

    v4 = *MEMORY[0x277CBECE8];
    v15 = v2;
    v16 = v3;
    v5 = OUTLINED_FUNCTION_48();
    v8 = CFStringCreateWithFormat(v5, v6, v7, v15, v16);
    if (v8)
    {
      v9 = v8;
      v10 = OUTLINED_FUNCTION_48();
      MutableCopy = CFStringCreateMutableCopy(v10, v11, v12);
      if (MutableCopy)
      {
        v14 = MutableCopy;
        CFStringAppend(MutableCopy, v9);
        _MergedGlobals(v14, 1);
        CFRelease(v14);
      }

      CFRelease(v9);
    }
  }
}

void IOAccessoryAggDAverageVhiTimeData(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (dword_27F61282C == stats)
    {
      v2 = *(a2 + 4);
      v3 = *(a1 + 4);
      if (v3 < v2)
      {
        if (dword_2812C4324)
        {
          OUTLINED_FUNCTION_37();
        }

        else
        {
          mach_timebase_info(&dword_2812C4320);
          OUTLINED_FUNCTION_37();
          if (!v4)
          {
            mach_timebase_info(&dword_2812C4320);
            v5 = dword_2812C4320;
            v4 = dword_2812C4324;
          }
        }

        v6 = v2 - v5 * v3 / v4;
        if (v6 >= 0x3B9ACA00)
        {
          qword_27F612830 = (v6 / 0x3B9ACA00 + qword_27F612830 * (stats - 1)) / stats;
          v7 = off_2812C4308;
          if (off_2812C4308)
          {

            v7(@"com.apple.ioaccessorymanager.voltage.averagetime");
          }
        }
      }
    }
  }
}

void IOAccessoryAggDVoltageData(unsigned __int8 *a1)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v17[0] = @"com.apple.ioaccessorymanager.voltage.histogram.dp1";
  v17[1] = @"com.apple.ioaccessorymanager.voltage.histogram.dn1";
  v17[2] = @"com.apple.ioaccessorymanager.voltage.histogram.dp2";
  v17[3] = @"com.apple.ioaccessorymanager.voltage.histogram.dn2";
  if (!off_2812C4300)
  {
    goto LABEL_10;
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = a1[14];
  v4 = a1[15];
  v5 = a1[16];
  v6 = a1[17];
  v7 = a1[18];
  v8 = a1[19];
  OUTLINED_FUNCTION_35();
  v9 = CFStringCreateWithFormat(v2, 0, @".%02x%02x%02x%02x%02x%02x");
  v11 = 0;
  v12 = a1 + 20;
  do
  {
    if (v12[v11])
    {
      LOWORD(v10) = *&v12[2 * v11 + 12];
      v13 = v10 / 1000.0;
      MutableCopy = CFStringCreateMutableCopy(v2, 0, v17[v11]);
      CFStringAppend(MutableCopy, v9);
      off_2812C4300(MutableCopy, v13);
      CFRelease(MutableCopy);
    }

    ++v11;
  }

  while (v11 != 4);
  if (v9)
  {
    v15 = *MEMORY[0x277D85DE8];

    CFRelease(v9);
  }

  else
  {
LABEL_10:
    v16 = *MEMORY[0x277D85DE8];
  }
}

uint64_t IOAccessoryAppleCareLoggingForNonVoltageEvents(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  result = [MEMORY[0x277CBEB18] array];
  if (enableVoltageEventMonitorModeAppleCareLogging == 1)
  {
    v7 = result;
    [MEMORY[0x277CCABB0] numberWithInt:100];
    [OUTLINED_FUNCTION_12() addObject:?];
    [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a1];
    [OUTLINED_FUNCTION_12() addObject:?];
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    v11 = a2[3];
    v12 = a2[4];
    v13 = a2[5];
    OUTLINED_FUNCTION_35();
    [v14 stringWithFormat:@"%02x %02x %02x %02x %02x %02x"];
    [OUTLINED_FUNCTION_12() addObject:?];
    [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", a3];
    [OUTLINED_FUNCTION_12() addObject:?];
    [MEMORY[0x277CCABB0] numberWithBool:0];
    [OUTLINED_FUNCTION_12() addObject:?];
    [MEMORY[0x277CCABB0] numberWithBool:0];
    [OUTLINED_FUNCTION_12() addObject:?];
    [MEMORY[0x277CCABB0] numberWithBool:0];
    result = [OUTLINED_FUNCTION_12() addObject:?];
    v15 = off_2812C4310;
    if (off_2812C4310)
    {

      return v15(v7);
    }
  }

  return result;
}

uint64_t IOAccessoryAggDPostScalarKey(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (a2)
    {
      v2 = _MergedGlobals;
      if (_MergedGlobals)
      {
        v3 = result;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_0();
          _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
          v2 = _MergedGlobals;
        }

        result = v2(v3, 1);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void IOAccessoryAggDPostHistogramKey(const __CFString *a1, void *a2, double a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && off_2812C4300)
  {
    if (CFStringCompare(a1, @"com.apple.ioaccessorymanager.ldcm.notification.wetduration", 1uLL) && CFStringCompare(a1, @"com.apple.ioaccessorymanager.ldcm.notification.wettoolong", 1uLL) && CFStringCompare(a1, @"com.apple.ioaccessorymanager.ldcm.notification.drytooshort", 1uLL))
    {
      ShouldKeyUseEventBasedData = IOAccessoryShouldKeyUseEventBasedData(a1);
      v8 = *MEMORY[0x277CBECE8];
      if (ShouldKeyUseEventBasedData)
      {
        [a2 eventBasedDigitalID];
        v9 = [OUTLINED_FUNCTION_45() eventBasedOrientation];
      }

      else
      {
        [a2 connectedAccessoryDigitalID];
        v9 = [OUTLINED_FUNCTION_45() connectedAccessoryOrientation];
      }

      v23 = v3;
      v24 = v9;
    }

    else
    {
      v10 = IOAccessoryShouldKeyUseEventBasedData(a1);
      v11 = *MEMORY[0x277CBECE8];
      if (v10)
      {
        [a2 eventBasedDigitalID];
        v12 = [OUTLINED_FUNCTION_45() eventBasedOrientation];
      }

      else
      {
        [a2 connectedAccessoryDigitalID];
        v12 = [OUTLINED_FUNCTION_45() connectedAccessoryOrientation];
      }

      v23 = v3;
      v24 = v12;
    }

    v13 = OUTLINED_FUNCTION_48();
    v16 = CFStringCreateWithFormat(v13, v14, v15, v23, v24);
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_48();
      MutableCopy = CFStringCreateMutableCopy(v17, v18, a1);
      if (MutableCopy)
      {
        v20 = MutableCopy;
        CFStringAppend(MutableCopy, v16);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138543618;
          v26 = v20;
          v27 = 2048;
          v28 = a3;
          OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v21, "Logging aggd key: %{public}@ value: %f", &v25);
        }

        off_2812C4300(v20, a3);
        CFRelease(v20);
        CFRelease(v16);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void IOAccessoryAggDPostScalarPrefixKey(const __CFString *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      if (_MergedGlobals)
      {
        CFStringCompare(a1, @"com.apple.ioaccessorymanager.ldcm.notification.badaccessorycount", 1uLL);
        v4 = *MEMORY[0x277CBECE8];
        v5 = [a2 connectedAccessoryDigitalID];
        v17 = [a2 connectedAccessoryOrientation];
        v6 = OUTLINED_FUNCTION_24();
        v9 = CFStringCreateWithFormat(v6, v7, v8, v5, v17);
        if (v9)
        {
          v10 = v9;
          v11 = OUTLINED_FUNCTION_24();
          MutableCopy = CFStringCreateMutableCopy(v11, v12, a1);
          if (MutableCopy)
          {
            v14 = MutableCopy;
            CFStringAppend(MutableCopy, v10);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v18 = 138543362;
              v19 = v14;
              OUTLINED_FUNCTION_30(&dword_2548F1000, MEMORY[0x277D86220], v15, "Incrementing aggd key: %{public}@", &v18);
            }

            _MergedGlobals(v14, 1);
            CFRelease(v14);
            CFRelease(v10);
          }
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void IOAccessoryNotifyWetCallback_0(uint64_t a1, uint64_t a2)
{
  if (gLiquidNotificationContext == 1)
  {
    gLiquidNotificationContext = 0;
    if (qword_2812C43B8)
    {
      if (byte_2812C4398 == 1)
      {
        switch(a2)
        {
          case 2:
            ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
            if (ServiceWithPrimaryPort)
            {
              setDriverMitigationEnabled(1, ServiceWithPrimaryPort, 0);
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                OUTLINED_FUNCTION_0();
                _os_log_impl(v3, v4, v5, v6, v7, 2u);
              }

              if (qword_2812C43B8)
              {
                IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.mitigation.override", qword_2812C43B8);
              }
            }

            break;
          case 1:
            IOAccessoryGiveUserRadarOption(qword_2812C43B8, 0);
            break;
          case 0:
            IOAccessoryNotifyWetHandlerDismiss_0();
            break;
        }

        IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.mitigation.override.seen", qword_2812C43B8);
      }

      else if (a2)
      {
        if (a2 == 1)
        {
          IOAccessoryGiveUserRadarOption(qword_2812C43B8, 0);
        }
      }

      else
      {
        IOAccessoryNotifyWetHandlerDismiss_0();
      }

      CFRunLoopRemoveSource(qword_2812C43B0, qword_2812C43A8, *MEMORY[0x277CBF048]);
      CFRelease(qword_2812C43A8);
      CFRelease(qword_2812C43A0);
    }
  }
}

void IOAccessoryGiveUserRadarOption(void *a1, int a2)
{
  v4 = [a1 halogenMeasurement];
  [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v5 = [MEMORY[0x277CCAB68] stringWithString:@"Halogen Measurements:\n\n"];
  [v5 appendFormat:@"precalibrationSampleOffsetInFrames -> %d\n", objc_msgSend(v4, "precalibrationSampleOffsetInFrames")];
  [v5 appendFormat:@"calibrationSampleOffsetInFrames -> %d\n", objc_msgSend(v4, "calibrationSampleOffsetInFrames")];
  [v5 appendFormat:@"measurementSampleOffsetInFrames -> %d\n", objc_msgSend(v4, "measurementSampleOffsetInFrames")];
  [v4 voltageGainCorrection];
  [v5 appendFormat:@"voltageGainCorrection -> %.13f\n", v6];
  [v4 currentGainCorrection];
  [v5 appendFormat:@"currentGainCorrection -> %.13f\n", v7];
  [v4 currentPhaseCompensation];
  [v5 appendFormat:@"currentPhaseCompensation -> %.13f\n", v8];
  [v4 goertzelImpedance];
  [v5 appendFormat:@"goertzelImpedance -> %.13f\n", v9];
  [v4 goertzelPhase];
  [v5 appendFormat:@"goertzelPhase -> %.13f\n", v10];
  [v4 compensatedImpedance];
  [v5 appendFormat:@"compensatedImpedance -> %.13f\n", v11];
  [v4 compensatedPhase];
  [v5 appendFormat:@"compensatedPhase -> %.13f\n", v12];
  [v4 clippingScore];
  [v5 appendFormat:@"clippingScore -> %.13f\n", v13];
  [v4 resistanceInOhms];
  [v5 appendFormat:@"Resistance in Ohms -> %.13f\n", v14];
  [v4 capacitanceInNanoF];
  [v5 appendFormat:@"Capacitance in nF -> %.13f\n", v15];
  [v4 precalVoltageSignalLevel];
  [v5 appendFormat:@"precalVoltageSignalLevel -> %.13f\n", v16];
  [v4 precalVoltageNoiseLevel];
  [v5 appendFormat:@"precalVoltageNoiseLevel -> %.13f\n", v17];
  [v4 precalVoltageSNR];
  [v5 appendFormat:@"precalVoltageSNR -> %.13f\n", v18];
  [v4 precalCurrentSignalLevel];
  [v5 appendFormat:@"precalCurrentSignalLevel -> %.13f\n", v19];
  [v4 precalCurrentNoiseLevel];
  [v5 appendFormat:@"precalCurrentNoiseLevel -> %.13f\n", v20];
  [v4 precalCurrentSNR];
  [v5 appendFormat:@"precalCurrentSNR -> %.13f\n", v21];
  [v4 calVoltageSignalLevel];
  [v5 appendFormat:@"calVoltageSignalLevel -> %.13f\n", v22];
  [v4 calVoltageNoiseLevel];
  [v5 appendFormat:@"calVoltageNoiseLevel -> %.13f\n", v23];
  [v4 calVoltageSNR];
  [v5 appendFormat:@"calVoltageSNR -> %.13f\n", v24];
  [v4 calCurrentSignalLevel];
  [v5 appendFormat:@"calCurrentSignalLevel -> %.13f\n", v25];
  [v4 calCurrentNoiseLevel];
  [v5 appendFormat:@"calCurrentNoiseLevel -> %.13f\n", v26];
  [v4 calCurrentSNR];
  [v5 appendFormat:@"calCurrentSNR -> %.13f\n", v27];
  [v4 measurementVoltageSignalLevel];
  [v5 appendFormat:@"measurementVoltageSignalLevel -> %.13f\n", v28];
  [v4 measurementVoltageNoiseLevel];
  [v5 appendFormat:@"measurementVoltageNoiseLevel -> %.13f\n", v29];
  [v4 measurementVoltageSNR];
  [v5 appendFormat:@"measurementVoltageSNR -> %.13f\n", v30];
  [v4 measurementCurrentSignalLevel];
  [v5 appendFormat:@"measurementCurrentSignalLevel -> %.13f\n", v31];
  [v4 measurementCurrentNoiseLevel];
  [v5 appendFormat:@"measurementCurrentNoiseLevel -> %.13f\n", v32];
  [v4 measurementCurrentSNR];
  [v5 appendFormat:@"measurementCurrentSNR -> %.13f\n", v33];
  [v4 measurementCondetSNR];
  [v5 appendFormat:@"measurementCondetSNR -> %.13f\n", v34];
  [v5 appendFormat:@"Measurement Result -> %@\n\n", objc_msgSend(v4, "getResultString")];
  [v5 appendFormat:@"event based DigitalID -> 0x%012llx\n", objc_msgSend(a1, "eventBasedDigitalID")];
  [v5 appendFormat:@"connected accessory DigitalID -> 0x%012llx\n", objc_msgSend(a1, "connectedAccessoryDigitalID")];
  [v5 appendFormat:@"event based orientation -> %d\n", objc_msgSend(a1, "eventBasedOrientation")];
  [v5 appendFormat:@"connected accessory orientation -> %d\n", objc_msgSend(a1, "connectedAccessoryOrientation")];
  v35 = [a1 pinID];
  if (v35 > 3)
  {
    v36 = "Invalid";
  }

  else
  {
    v36 = IOAccessoryGetPinStrForIndex_pinStr[v35];
  }

  [v5 appendFormat:@"pin -> %s\n", v36];
  v37 = [a1 halogenTtrDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __IOAccessoryGiveUserRadarOption_block_invoke;
  block[3] = &unk_279793298;
  v39 = a2;
  block[4] = v5;
  block[5] = a1;
  dispatch_async(v37, block);
}

void IOAccessoryFileRadarHalogen(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [MEMORY[0x277CCAC10] pipe];
  v6 = [MEMORY[0x277CCAC10] pipe];
  v7 = objc_alloc_init(MEMORY[0x277CCACB0]);
  [v7 setLaunchPath:@"/usr/local/bin/aggregatectl"];
  [v7 setArguments:&unk_2866B8F00];
  [v7 setStandardOutput:v5];
  [v7 setStandardError:v6];
  v8 = [v5 fileHandleForReading];
  v9 = [v6 fileHandleForReading];
  [v7 launch];
  do
  {
    v10 = [v8 readDataOfLength:1024];
    [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
    [OUTLINED_FUNCTION_25() appendString:?];
  }

  while ([v10 length]);
  [v7 waitUntilExit];
  v11 = [v9 readDataToEndOfFile];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
    OUTLINED_FUNCTION_43(4.8151e-34);
    v36 = v12;
    OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v13, "%s:\n%@", v35);
  }

  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_43(4.8151e-34);
    v36 = @"/tmp/ioam_aggregatectl.log";
    OUTLINED_FUNCTION_29(&dword_2548F1000, MEMORY[0x277D86220], v14, "%s Unable to create file at '%@'", v35);
  }

  if (a2)
  {
    v15 = "SNR Failure\n\n";
  }

  else
  {
    v15 = "LIQUID DETECTION REPORT (detected via Halogen)\n\n";
  }

  v16 = [MEMORY[0x277CCAB68] stringWithUTF8String:v15];
  [v16 appendString:@"Has your phone or charging cable been near liquid in the past 5 hours? \n\n"];
  [v16 appendString:@"If yes:\n\n"];
  [v16 appendString:@"- Cable or Phone?\n\n"];
  [v16 appendString:{@"- What kind of liquid? (e.g. tap water, rain, sweat, soda, beer, etc.)\n\n"}];
  [v16 appendString:{@"- What kind of exposure? (e.g. submersion, splash, droplet, sitting in puddle, using device with wet/sweaty hands, etc)\n\n"}];
  [v16 appendString:{@"- If the exposure was limited to a certain part of the device, where was it?\n\n"}];
  [v16 appendString:@"- How long was the exposure?\n\n"];
  [v16 appendString:@"- Time since exposure\n"];
  [v16 appendString:@"\n\nIf no:\n\n"];
  [v16 appendString:@"Please describe what happened just before seeing the dialog. For example… Did you just connect an accessory? Did you drop your device? Are you in a humid environment?\n\n\n"];
  [v16 appendString:a1];
  v17 = [MEMORY[0x277CCAB68] stringWithString:@"tap-to-radar://new?ComponentName=LDCM&ComponentVersion=AutofilledBugs&ComponentID=750390&Classification=Other Bug&Reproducibility=Not Applicable&"];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    [v17 appendFormat:@"Attachments=%@", @"/tmp/halogen_ttr.wav"];
  }

  [v17 appendString:{@", "}];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    [v17 appendFormat:@"%@", @"/tmp/ioam_aggregatectl.log"];
  }

  v18 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v30 + 1) + 8 * i);
        [v17 appendString:{@", "}];
        [@"/private/var/mobile/Library/Logs/com.apple.ioam/ioam_logs/" stringByAppendingPathComponent:v23];
        [OUTLINED_FUNCTION_11() appendString:?];
      }

      v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v20);
  }

  [v17 appendString:@"&"];
  [v17 appendFormat:@"Description=%@", v16];
  [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  [OUTLINED_FUNCTION_11() stringByAddingPercentEncodingWithAllowedCharacters:?];
  v24 = [OUTLINED_FUNCTION_6() URLWithString:?];
  if (qword_2812C4318)
  {
    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    v26 = [v25 initWithBytes:qword_2812C4318 length:8 encoding:1];
    if (v26)
    {
      v27 = v26;
      [v29 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), v26}];
      [objc_msgSend(MEMORY[0x277CC1E80] "defaultWorkspace")];
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CC1E80] "defaultWorkspace")];
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t updateAccyHalogenHealthDictionary(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!gAccyHealthDictionary || [objc_msgSend(a1 "halogenMeasurement")] > 2)
  {
    goto LABEL_25;
  }

  number = 0xAAAAAAAAAAAAAAAALL;
  if (gAccyHealthDictionary && [objc_msgSend(a1 "halogenMeasurement")] <= 2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%012llx_%1d_%012llx", 0, 0, 0];
    v3 = [gAccyHealthDictionary objectForKey:v2];
    v4 = v3;
    if (!v3)
    {
      v4 = objc_alloc_init(IOAccessoryLdcmHealthClass);
      v18 = v4;
      [OUTLINED_FUNCTION_28() setIsHealthy:?];
      trimAccyHealthDictionary();
    }

    if ([objc_msgSend(a1 "halogenMeasurement")] && objc_msgSend(objc_msgSend(a1, "halogenMeasurement"), "halogenResult") != 1)
    {
      if ([objc_msgSend(a1 "halogenMeasurement")] == 2)
      {
        [(IOAccessoryLdcmHealthClass *)v4 wetCount];
        [OUTLINED_FUNCTION_44() setWetCount:?];
      }
    }

    else
    {
      [(IOAccessoryLdcmHealthClass *)v4 dryCount];
      [OUTLINED_FUNCTION_44() setDryCount:?];
    }

    v5 = [(IOAccessoryLdcmHealthClass *)v4 isHealthy];
    if ([(IOAccessoryLdcmHealthClass *)v4 dryCount])
    {
      [OUTLINED_FUNCTION_40() setIsHealthy:?];
    }

    [gAccyHealthDictionary setObject:v4 forKey:v2];
    v6 = [(IOAccessoryLdcmHealthClass *)v4 isHealthy];
    if (!v3 || v5 != v6)
    {
      commitPersistentAccyHealthDictionary();
      if (![(IOAccessoryLdcmHealthClass *)v4 isHealthy])
      {
        if (a1)
        {
          if (_MergedGlobals)
          {
            v19 = *MEMORY[0x277CBECE8];
            v20 = OUTLINED_FUNCTION_24();
            v23 = CFStringCreateWithFormat(v20, v21, v22, 0, 0);
            if (v23)
            {
              v24 = v23;
              v25 = OUTLINED_FUNCTION_24();
              MutableCopy = CFStringCreateMutableCopy(v25, v26, v27);
              if (MutableCopy)
              {
                v29 = MutableCopy;
                CFStringAppend(MutableCopy, v24);
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v33 = 138543362;
                  v34 = v29;
                  OUTLINED_FUNCTION_30(&dword_2548F1000, MEMORY[0x277D86220], v30, "Incrementing aggd key: %{public}@", &v33);
                }

                _MergedGlobals(v29, 1);
                CFRelease(v29);
                CFRelease(v24);
              }
            }
          }
        }
      }

      dbgShowAccyHealthDictionary();
    }
  }

  [a1 service];
  if (_retrieveDeviceInterfaceSerialNumber())
  {
LABEL_25:
    result = 0;
  }

  else
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
    CFRelease(number);
    v7 = MEMORY[0x277CCACA8];
    v8 = [a1 connectedAccessoryDigitalID];
    v9 = [a1 connectedAccessoryOrientation];
    v10 = [v7 stringWithFormat:@"%012llx_%1d_%012llx", v8, v9, valuePtr];
    v11 = [gAccyHealthDictionary objectForKey:v10];
    v12 = v11;
    if (!v11)
    {
      v12 = objc_alloc_init(IOAccessoryLdcmHealthClass);
      v17 = v12;
      [OUTLINED_FUNCTION_28() setIsHealthy:?];
      trimAccyHealthDictionary();
    }

    if ([objc_msgSend(a1 "halogenMeasurement")] && objc_msgSend(objc_msgSend(a1, "halogenMeasurement"), "halogenResult") != 1)
    {
      if ([objc_msgSend(a1 "halogenMeasurement")] == 2)
      {
        [(IOAccessoryLdcmHealthClass *)v12 wetCount];
        [OUTLINED_FUNCTION_44() setWetCount:?];
      }
    }

    else
    {
      [(IOAccessoryLdcmHealthClass *)v12 dryCount];
      [OUTLINED_FUNCTION_44() setDryCount:?];
    }

    v13 = [(IOAccessoryLdcmHealthClass *)v12 isHealthy];
    if ([(IOAccessoryLdcmHealthClass *)v12 dryCount])
    {
      [OUTLINED_FUNCTION_40() setIsHealthy:?];
    }

    [gAccyHealthDictionary setObject:v12 forKey:v10];
    v14 = [(IOAccessoryLdcmHealthClass *)v12 isHealthy];
    if (!v11 || v13 != v14)
    {
      commitPersistentAccyHealthDictionary();
      if (![(IOAccessoryLdcmHealthClass *)v12 isHealthy])
      {
        IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.notification.badaccessorycount", a1);
      }

      dbgShowAccyHealthDictionary();
    }

    result = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void performAssetQuery_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

unint64_t appendEventToHistory_cold_1(uint64_t a1, __int128 *a2, void *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  *(a1 + 69) = 1;
  *(a1 + 61) = *(a2 + 4);
  [MEMORY[0x277CBEA90] dataWithBytes:a1 length:80];
  [OUTLINED_FUNCTION_12() addObject:?];
  result = [a3 count];
  if (result >= 3)
  {
    return [OUTLINED_FUNCTION_39() removeObjectAtIndex:?];
  }

  return result;
}

void _generateUIAnalyticEvents_cold_1(void *a1, char a2)
{
  IOAccessoryAggDPostScalarKey(@"com.apple.ioaccessorymanager.ldcm.notification.suppress.accessory", a1);
  IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.suppress.accessory", a1);
  if ((a2 & 1) == 0)
  {
    IOAccessoryAggDPostScalarPrefixKey(@"com.apple.ioaccessorymanager.ldcm.eis.error.suppress.accessory", a1);
  }
}

void _holdPowerAssertion_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s failed to release power assertion. Error 0x%x\n", v1, 0x12u);
  v0 = *MEMORY[0x277D85DE8];
}

void _holdPowerAssertion_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s failed to acquire power assertion. Error 0x%x\n", v1, 0x12u);
  v0 = *MEMORY[0x277D85DE8];
}

void _holdPowerAssertion_cold_3(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  [a1 isPowerAssertionHeld];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s halogen power assertion already in the correct state: %d.\n", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void recordCallback_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [a1 pcmInputDataMaxSzInBytes];
    [a1 pcmInputDataIndexInBytes];
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x14u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

BOOL IOAccessoryStartSystemStateMonitor()
{
  if (*monitor)
  {
    return 0;
  }

  v0 = objc_alloc_init(IOAccessorySystemStateMonitor);
  v1 = *monitor;
  *monitor = v0;

  return *monitor != 0;
}

BOOL IOAccessoryStartLDCM(__CFRunLoop *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  refCon = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"LDCMDiscoveryDisabled"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Starting LDCM Now", buf, 2u);
  }

  if (!_MergedGlobals_0)
  {
    v4 = objc_opt_new();
    v5 = _MergedGlobals_0;
    _MergedGlobals_0 = v4;
  }

  if (!qword_2812C4330)
  {
    v6 = objc_opt_new();
    v7 = qword_2812C4330;
    qword_2812C4330 = v6;
  }

  started = IOAccessoryStartVoltageEventMonitorLegacy(a1);
  v9 = started;
  v10 = started != 0;
  notification = -1431655766;
  v11 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = v3;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - LDCM Discovery disabled? default setting: %d", buf, 8u);
  }

  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM Discovery is enabled.", buf, 2u);
    }

    refCon = v11;
    v20 = a1;
    v12 = IOServiceMatching("IOPortFeatureLDCM");
    v13 = IOServiceAddMatchingNotification(v11, "IOServiceFirstPublish", v12, IOPortLDCMServiceMatchingCallback, &refCon, &notification);
    if (v9)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 0;
    }

    v10 = v14;
    IOPortLDCMServiceMatchingCallback(&refCon, notification);
  }

  RunLoopSource = IONotificationPortGetRunLoopSource(v11);
  if (RunLoopSource)
  {
    CFRunLoopAddSource(a1, RunLoopSource, *MEMORY[0x277CBF048]);
  }

  else
  {
    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

void IOPortLDCMServiceMatchingCallback_cold_1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "LDCM - Failed to instantiate IOPortLDCMManagerV4!!!", v2, 2u);
  }

  *a1 = 0;
}

void IOPortLDCMServiceMatchingCallback_cold_2(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "LDCM - Failed to read LDCM architecture version!!!", v4, 2u);
  }

  *a2 = a1;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}