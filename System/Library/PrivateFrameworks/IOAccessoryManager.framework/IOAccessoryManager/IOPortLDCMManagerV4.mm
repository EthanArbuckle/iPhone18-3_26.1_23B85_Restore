@interface IOPortLDCMManagerV4
- (BOOL)checkIsReceptacleEmpty;
- (IOPortLDCMManagerV4)initWithParams:(unint64_t)a3 withDryPollingInterval:(unint64_t)a4 withService:(unsigned int)a5 withNotificationPort:(IONotificationPort *)a6 withServerRunloop:(__CFRunLoop *)a7;
- (id)buildMeasurementOutputString:(id)a3 withMeasurementReason:(int)a4 withMeasurementEvent:(id)a5;
- (id)extractData:(unsigned int *)a3 :(unint64_t)a4;
- (id)publishAnalytics:(id)a3 withMeasurementReason:(int)a4 withWaveformRawData:(char *)a5 withWaveformDataLen:(unint64_t)a6;
- (int)disableOVPInterrupts;
- (int)getData:(char *)outputStruct :(unint64_t *)outputStructCnt;
- (int)setLDCMMeasurementStatus:(int)a3;
- (int)setLDCMState:(int)a3;
- (int)setLiquidDetected:(unsigned __int8)a3;
- (int)setMitigations:(unsigned __int8)a3;
- (int)setUserOverride:(unsigned __int8)a3;
- (int)setWaveformExtractionEnabled:(unsigned __int8)a3;
- (void)dealloc;
- (void)generateLDCMCSVData;
- (void)handleAttachEvent;
- (void)handleDetachEvent;
- (void)handleLDCMInterrupt;
- (void)handleLDCMMitigationsStatusChange:(int)a3;
- (void)handleMeasurementResults:(int)a3;
- (void)hideUI;
- (void)logInfo:(id)a3;
- (void)measureOccupiedWetPortDuration;
- (void)processBehaviorDictionary:(id)a3;
- (void)showUI;
- (void)storeWaveform:(char *)a3 withWaveformDataLen:(unint64_t)a4;
@end

@implementation IOPortLDCMManagerV4

- (BOOL)checkIsReceptacleEmpty
{
  existing = 0;
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("IOPort");
  MatchingServices = IOServiceGetMatchingServices(v2, v3, &existing);
  v5 = existing;
  if (MatchingServices)
  {
    v6 = 1;
  }

  else
  {
    v6 = existing == 0;
  }

  if (v6)
  {
    LOBYTE(v7) = 0;
    if (!existing)
    {
      return v7;
    }

    goto LABEL_21;
  }

  v8 = IOIteratorNext(existing);
  v7 = v8;
  if (v8)
  {
    v9 = *MEMORY[0x277CBECE8];
    do
    {
      valuePtr = 0;
      CFProperty = IORegistryEntryCreateCFProperty(v7, @"PortType", v9, 0);
      v11 = CFProperty;
      if (CFProperty)
      {
        CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
        if (valuePtr == 2)
        {
          v13 = IORegistryEntryCreateCFProperty(v7, @"ConnectionActive", v9, 0);
          if (v13)
          {
            v14 = v13;
            v12 = CFBooleanGetValue(v13) == 0;
            CFRelease(v14);
          }

          else
          {
            v12 = 0;
          }

          IOObjectRelease(v7);
          goto LABEL_19;
        }
      }

      v7 = IOIteratorNext(existing);
    }

    while (v7);
    v12 = 0;
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    CFRelease(v11);
    LOBYTE(v7) = v12;
  }

LABEL_20:
  v5 = existing;
  if (existing)
  {
LABEL_21:
    IOObjectRelease(v5);
  }

  return v7;
}

- (void)generateLDCMCSVData
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Nothing to write to csv file.\n", v0, 2u);
  }
}

uint64_t __42__IOPortLDCMManagerV4_generateLDCMCSVData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", *(a1 + 32), v5];
  v23 = 0;
  v9 = [v7 attributesOfItemAtPath:v8 error:&v23];
  v10 = v23;

  if (v10)
  {
    v11 = [v10 localizedDescription];
    NSLog(&cfstr_ErrorFetchingF.isa, v11, v5);
  }

  v12 = *MEMORY[0x277CCA108];
  v13 = [v9 objectForKey:*MEMORY[0x277CCA108]];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", *(a1 + 32), v6];
  v22 = 0;
  v16 = [v14 attributesOfItemAtPath:v15 error:&v22];
  v17 = v22;

  if (v17)
  {
    v18 = [v17 localizedDescription];
    NSLog(&cfstr_ErrorFetchingF_0.isa, v18, v6);
  }

  v19 = [v16 objectForKey:v12];
  v20 = [v13 compare:v19];

  return v20;
}

- (IOPortLDCMManagerV4)initWithParams:(unint64_t)a3 withDryPollingInterval:(unint64_t)a4 withService:(unsigned int)a5 withNotificationPort:(IONotificationPort *)a6 withServerRunloop:(__CFRunLoop *)a7
{
  v45 = *MEMORY[0x277D85DE8];
  parent = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __112__IOPortLDCMManagerV4_initWithParams_withDryPollingInterval_withService_withNotificationPort_withServerRunloop___block_invoke;
  v40[3] = &unk_279793120;
  v12 = self;
  v41 = v12;
  v13 = MEMORY[0x259C1ED40](v40);
  v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v39.receiver = v12;
  v39.super_class = IOPortLDCMManagerV4;
  v15 = [(IOPortLDCMManagerV4 *)&v39 init];
  v16 = v15;
  if (!v15)
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    goto LABEL_45;
  }

  *(v15 + 6) = 0;
  *(v15 + 4) = 0;
  *(v15 + 9) = a3;
  *(v15 + 10) = a4;
  *(v15 + 11) = 0;
  v15[15] = [v14 BOOLForKey:@"LDCMV4DisableMitigations"];
  v16[16] = [v14 BOOLForKey:@"LDCMV4DisableUI"];
  v16[14] = [v14 BOOLForKey:@"LDCMWaveformExtractionDisabled"];
  v16[17] = [v14 BOOLForKey:@"LDCMDisableIntrusiveUI"];
  v16[18] = [v14 BOOLForKey:@"LDCMForcePortWet"];
  *(v16 + 10) = 0;
  v16[10] = [v16 checkIsReceptacleEmpty];
  *(v16 + 19) = 0;
  v17 = [[LDCMNotificationUIManagerV4 alloc] initWithParams:a7];
  v18 = *(v16 + 8);
  *(v16 + 8) = v17;

  if (IOServiceOpen(a5, *MEMORY[0x277D85F48], 0, v16 + 7))
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    goto LABEL_45;
  }

  if (IOServiceAddInterestNotification(a6, a5, "IOGeneralInterest", IOPortLDCMFeatureInterestCallback, v16, v16 + 6))
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    goto LABEL_45;
  }

  if (IORegistryEntryGetParentEntry(a5, "IOService", &parent) || !parent || !IOObjectConformsTo(parent, "IOPort"))
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    goto LABEL_45;
  }

  if (IOServiceAddInterestNotification(a6, parent, "IOGeneralInterest", IOPortLDCMPortInterestCallback, v16, v16 + 6))
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    goto LABEL_45;
  }

  v19 = MGCopyAnswer();
  if (v19)
  {
    v20 = v19;
    if (CFEqual(v19, @"Internal"))
    {
      *(v16 + 8) = 0;
    }

    else
    {
      if (CFEqual(v20, @"NonUI"))
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      *(v16 + 8) = v21;
    }

    CFRelease(v20);
  }

  else
  {
    *(v16 + 8) = 2;
  }

  v22 = MGCopyAnswer();
  if (v22)
  {
    v23 = v22;
    if (CFEqual(v22, @"iPhone"))
    {
      *(v16 + 9) = 0;
    }

    else
    {
      if (CFEqual(v23, @"iPad"))
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      *(v16 + 9) = v24;
    }

    CFRelease(v23);
  }

  else
  {
    *(v16 + 9) = 2;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v25 = v16[14];
    *buf = 67109120;
    v44 = v25;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Waveform extraction default setting: %d", buf, 8u);
  }

  v26 = *(v16 + 8);
  if ((v16[14] & 1) == 0)
  {
    if (v26 != 2)
    {
      if ([v16 setWaveformExtractionEnabled:1])
      {
        v16[14] = 1;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        *buf = 0;
        v27 = MEMORY[0x277D86220];
        v28 = "LDCM - Failed to enable waveform extraction!";
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_41;
        }

        *buf = 0;
        v27 = MEMORY[0x277D86220];
        v28 = "LDCM - Successfully enabled waveform extraction.";
      }

      goto LABEL_40;
    }

LABEL_33:
    v16[14] = 1;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v27 = MEMORY[0x277D86220];
    v28 = "LDCM - Waveform extraction not enabled due to build type.";
LABEL_40:
    _os_log_impl(&dword_2548F1000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
    goto LABEL_41;
  }

  if (v26 == 2)
  {
    goto LABEL_33;
  }

LABEL_41:
  v30 = dispatch_queue_create("ldcmV4DispatchQueue", 0);
  v31 = *(v16 + 6);
  *(v16 + 6) = v30;

  v32 = *(v16 + 6);
  if (v32)
  {
    v33 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v32);
    v34 = *(v16 + 7);
    *(v16 + 7) = v33;

    v35 = *(v16 + 7);
    if (v35)
    {
      dispatch_source_set_event_handler(v35, v13);
      dispatch_source_set_timer(*(v16 + 7), 0, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(*(v16 + 7));
      [v16 setOverride:0];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - IOPortLDCMManagerV4 successfully initialized!", buf, 2u);
      }
    }

    else
    {
      [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
    }
  }

  else
  {
    [IOPortLDCMManagerV4 initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:];
  }

LABEL_45:
  if (parent)
  {
    IOObjectRelease(parent);
  }

  v36 = v16;

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (void)dealloc
{
  ldcmFeatureConnect = self->_ldcmFeatureConnect;
  if (ldcmFeatureConnect)
  {
    IOServiceClose(ldcmFeatureConnect);
  }

  notification = self->_notification;
  if (notification)
  {
    IOObjectRelease(notification);
  }

  v5.receiver = self;
  v5.super_class = IOPortLDCMManagerV4;
  [(IOPortLDCMManagerV4 *)&v5 dealloc];
}

- (void)handleAttachEvent
{
  ldcmV4DispatchQueue = self->_ldcmV4DispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__IOPortLDCMManagerV4_handleAttachEvent__block_invoke;
  block[3] = &unk_279793120;
  block[4] = self;
  dispatch_async(ldcmV4DispatchQueue, block);
}

- (void)handleDetachEvent
{
  ldcmV4DispatchQueue = self->_ldcmV4DispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__IOPortLDCMManagerV4_handleDetachEvent__block_invoke;
  block[3] = &unk_279793120;
  block[4] = self;
  dispatch_async(ldcmV4DispatchQueue, block);
}

uint64_t __40__IOPortLDCMManagerV4_handleDetachEvent__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 10) = 1;
  [*(a1 + 32) hideUI];
  v2 = *(a1 + 32);

  return [v2 performLDCMMeasurement:1];
}

- (void)handleLDCMInterrupt
{
  ldcmV4DispatchQueue = self->_ldcmV4DispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__IOPortLDCMManagerV4_handleLDCMInterrupt__block_invoke;
  block[3] = &unk_279793120;
  block[4] = self;
  dispatch_async(ldcmV4DispatchQueue, block);
}

- (void)handleLDCMMitigationsStatusChange:(int)a3
{
  ldcmV4DispatchQueue = self->_ldcmV4DispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__IOPortLDCMManagerV4_handleLDCMMitigationsStatusChange___block_invoke;
  v4[3] = &unk_279793148;
  v4[4] = self;
  v5 = a3;
  dispatch_async(ldcmV4DispatchQueue, v4);
}

uint64_t __57__IOPortLDCMManagerV4_handleLDCMMitigationsStatusChange___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  *(*(result + 32) + 40) = v2;
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Mitigations successful. Showing UI", buf, 2u);
        }

        return [*(v1 + 32) showUI];
      }

      return result;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return [*(v1 + 32) hideUI];
    }

    *v8 = 0;
    v3 = MEMORY[0x277D86220];
    v4 = "LDCM - Mitigations no longer active.";
    v5 = v8;
LABEL_13:
    _os_log_impl(&dword_2548F1000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    return [*(v1 + 32) hideUI];
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      return result;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return [*(v1 + 32) hideUI];
    }

    LOWORD(v7) = 0;
    v3 = MEMORY[0x277D86220];
    v4 = "LDCM - Mitigations triggered... Waiting for attach and/or mitigations success.";
    v5 = &v7;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - WARNING: Mitigations failed!!!", v9, 2u);
  }

  v6 = *(v1 + 32);
  if (*(v6 + 36) == 1 || *(v6 + 17) == 1)
  {
    [v6 showUI];
  }

  else
  {
    [v6 hideUI];
  }

  return AnalyticsSendEvent();
}

- (void)handleMeasurementResults:(int)a3
{
  v3 = self;
  if (a3 == 1)
  {
    self->_isWet = 1;
LABEL_3:

    [(IOPortLDCMManagerV4 *)self setMitigations:?];
    return;
  }

  self->_isWet = 0;
  if ([(IOPortLDCMManagerV4 *)self checkIsReceptacleEmpty])
  {
    if (v3->_overrideEnabled)
    {
      [(IOPortLDCMManagerV4 *)v3 setUserOverride:0];
    }

    if (v3->_mitigationsEnabled)
    {
      self = v3;
      goto LABEL_3;
    }
  }
}

- (void)logInfo:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 ldcmFeatureStatus];
    v6 = [v4 ldcmMitigationsStatus];
    mitigationsEnabled = self->_mitigationsEnabled;
    overrideEnabled = self->_overrideEnabled;
    v37 = 67111168;
    *v38 = v5;
    *&v38[4] = 1024;
    *&v38[6] = v6;
    LOWORD(v39) = 1024;
    *(&v39 + 2) = mitigationsEnabled;
    HIWORD(v39) = 1024;
    *v40 = overrideEnabled;
    *&v40[4] = 1024;
    *&v40[6] = [v4 ldcmPortStatus];
    v41 = 1024;
    *v42 = [v4 ldcmWet];
    *&v42[4] = 1024;
    *&v42[6] = [v4 ldcmWetStateDuration];
    v43 = 1024;
    v44 = [(IOPortLDCMManagerV4 *)self checkIsReceptacleEmpty];
    v45 = 1024;
    v46 = [v4 ldcmRREFGated];
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Feature Status: %x, Mitigations Status: %d, Mitigations Framework State: %d, Override Framework State: %d, Wet Declared %d, Wet Measured: %d, Wet State Duration: %d, Receptacle Empty: %d, RREF Gated: %d", &v37, 0x38u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    previousLDCMPortStatus = self->_previousLDCMPortStatus;
    v10 = [v4 ldcmPortStatus];
    v11 = [v4 ldcmMeasurePin];
    v12 = [v4 ldcmCompletion];
    v13 = [v4 ldcmLowImp];
    v37 = 67110144;
    *v38 = previousLDCMPortStatus;
    *&v38[4] = 1024;
    *&v38[6] = v10;
    LOWORD(v39) = 1024;
    *(&v39 + 2) = v11;
    HIWORD(v39) = 1024;
    *v40 = v12;
    *&v40[4] = 1024;
    *&v40[6] = v13;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Analytics bitfields - _previousLDCMPortStatus %d, ldcmPortStatus %d, ldcmMeasurePin %d, ldcmCompletion %d, ldcmLowImp %d", &v37, 0x20u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [v4 ldcmLoadImpMag];
    v15 = v14;
    [v4 ldcmLoadImpPhase];
    v17 = v16;
    [v4 ldcmCalculatedRes];
    v19 = v18;
    [v4 ldcmCalculatedCap];
    v37 = 134218752;
    *v38 = v15;
    *&v38[8] = 2048;
    v39 = v17;
    *v40 = 2048;
    *&v40[2] = v19;
    v41 = 2048;
    *v42 = v20;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Measurement Data - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f", &v37, 0x2Au);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v4 ldcmWetStateDuration];
    v22 = [v4 ldcmWetStateTooLong];
    v23 = [v4 ldcmWetTooLongLDCMDisabled];
    v37 = 67109632;
    *v38 = v21;
    *&v38[4] = 1024;
    *&v38[6] = v22;
    LOWORD(v39) = 1024;
    *(&v39 + 2) = v23;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Measurement Data - wetStateDuration: %d, wetStateTooLong: %d, wetTooLongLDCMDisabled: %d", &v37, 0x14u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [v4 ldcmMeasureTIASNR];
    v25 = v24;
    [v4 ldcmMeasureVoltageSNR];
    v27 = v26;
    [v4 ldcmCalTIASNR];
    v29 = v28;
    [v4 ldcmCalVoltageSNR];
    v37 = 134218752;
    *v38 = v25;
    *&v38[8] = 2048;
    v39 = v27;
    *v40 = 2048;
    *&v40[2] = v29;
    v41 = 2048;
    *v42 = v30;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Measurement Data - MeasureTIASNR: %f, MeasureVoltageSNR: %f, CalTIASNR: %f, CalVoltageSNR: %f", &v37, 0x2Au);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [v4 ldcmTIAGainCorrection];
    v32 = v31;
    [v4 ldcmVoltageGainCorrection];
    v34 = v33;
    [v4 ldcmPhaseComp];
    v37 = 134218496;
    *v38 = v32;
    *&v38[8] = 2048;
    v39 = v34;
    *v40 = 2048;
    *&v40[2] = v35;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Measurement Data - TIAGainCorrection: %f, VoltageGainCorrection: %f, PhaseComp: %f", &v37, 0x20u);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)publishAnalytics:(id)a3 withMeasurementReason:(int)a4 withWaveformRawData:(char *)a5 withWaveformDataLen:(unint64_t)a6
{
  v225 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = v10;
  if (!self->_previousLDCMPortStatus && [v10 ldcmPortStatus] == 1 && (!objc_msgSend(v11, "ldcmMeasurePin") || objc_msgSend(v11, "ldcmMeasurePin") == 1) && !objc_msgSend(v11, "ldcmCompletion") && !objc_msgSend(v11, "ldcmLowImp"))
  {
    [(IOPortLDCMManagerV4 *)self storeWaveform:a5 withWaveformDataLen:a6];
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v137 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedCap];
    v138 = [v137 numberWithDouble:?];
    [v12 setObject:v138 forKey:@"capacitance"];

    v139 = MEMORY[0x277CCABB0];
    [v11 ldcmLoadImpMag];
    v140 = [v139 numberWithDouble:?];
    [v12 setObject:v140 forKey:@"impedance"];

    v141 = MEMORY[0x277CCABB0];
    [v11 ldcmLoadImpPhase];
    v142 = [v141 numberWithDouble:?];
    [v12 setObject:v142 forKey:@"impedancePhase"];

    v143 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedRes];
    v144 = [v143 numberWithDouble:?];
    [v12 setObject:v144 forKey:@"resistance"];

    v145 = MEMORY[0x277CCABB0];
    [v11 ldcmMeasureTIASNR];
    v146 = [v145 numberWithDouble:?];
    [v12 setObject:v146 forKey:@"measurementCurrentSNR"];

    v147 = MEMORY[0x277CCABB0];
    [v11 ldcmMeasureVoltageSNR];
    v148 = [v147 numberWithDouble:?];
    [v12 setObject:v148 forKey:@"measurementVoltageSNR"];

    v149 = [v11 ldcmWet];
    if (!a4 || v149 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v224 = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetOnConnect!!!", v224, 2u);
      }

      v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.wetOnConnect";
    }

    else
    {
      v150 = [v11 ldcmWet];
      if (a4 == 1 || v150 == 2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v224 = 0;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetOnDisconnect!!!", v224, 2u);
        }

        v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.wetOnDisconnect";
      }

      else
      {
        v151 = [(IOPortLDCMManagerV4 *)self checkIsReceptacleEmpty];
        v152 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v151)
        {
          if (v152)
          {
            *v224 = 0;
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransition!!!", v224, 2u);
          }

          v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.dryToWetTransition";
        }

        else
        {
          if (v152)
          {
            *v224 = 0;
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransitionPortNotEmpty!!!", v224, 2u);
          }

          v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.dryToWetTransitionPortNotEmpty";
        }
      }
    }

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmLoadImpMag];
      v193 = v192;
      [v11 ldcmLoadImpPhase];
      v195 = v194;
      [v11 ldcmCalculatedRes];
      v197 = v196;
      [v11 ldcmCalculatedCap];
      *v224 = 134218752;
      *&v224[4] = v193;
      *&v224[12] = 2048;
      *&v224[14] = v195;
      *&v224[22] = 2048;
      *&v224[24] = v197;
      *&v224[32] = 2048;
      *&v224[34] = v198;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransition - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f", v224, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIACurrentAmp];
      v200 = v199;
      [v11 ldcmVoltageAmp];
      v202 = v201;
      [v11 ldcmLeakageCurrentAmp];
      *v224 = 134218496;
      *&v224[4] = v200;
      *&v224[12] = 2048;
      *&v224[14] = v202;
      *&v224[22] = 2048;
      *&v224[24] = v203;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransition - TIACurrentAmp: %f, VoltageAmp: %f, LeakageCurrentAmp: %f", v224, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmMeasureTIASNR];
      v205 = v204;
      [v11 ldcmMeasureVoltageSNR];
      v207 = v206;
      [v11 ldcmLeakageCurrentAmp];
      *v224 = 134218496;
      *&v224[4] = v205;
      *&v224[12] = 2048;
      *&v224[14] = v207;
      *&v224[22] = 2048;
      *&v224[24] = v208;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransition - MeasureTIASNR: %f, MeasureVoltageSNR: %f, LeakageCurrentAmp: %f", v224, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmCalTIAAmp];
      v210 = v209;
      [v11 ldcmCalVoltageAmp];
      v212 = v211;
      [v11 ldcmCalTIASNR];
      v214 = v213;
      [v11 ldcmCalVoltageSNR];
      *v224 = 134218752;
      *&v224[4] = v210;
      *&v224[12] = 2048;
      *&v224[14] = v212;
      *&v224[22] = 2048;
      *&v224[24] = v214;
      *&v224[32] = 2048;
      *&v224[34] = v215;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - dryToWetTransition - CalTIAAmp: %f, CalVoltageAmp: %f, CalTIASNR: %f, CalVoltageSNR: %f", v224, 0x2Au);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_127;
    }

    [v11 ldcmTIAGainCorrection];
    v217 = v216;
    [v11 ldcmVoltageGainCorrection];
    v219 = v218;
    [v11 ldcmPhaseComp];
    *v224 = 134218496;
    *&v224[4] = v217;
    *&v224[12] = 2048;
    *&v224[14] = v219;
    *&v224[22] = 2048;
    *&v224[24] = v220;
    v48 = MEMORY[0x277D86220];
    v49 = "LDCM - dryToWetTransition - TIAGainCorrection: %f, VoltageGainCorrection: %f, PhaseComp: %f";
    v52 = 32;
    goto LABEL_32;
  }

  if (-[IOPortLDCMManagerV4 previousLDCMPortStatus](self, "previousLDCMPortStatus") == 1 && ![v11 ldcmPortStatus] && (!objc_msgSend(v11, "ldcmMeasurePin") || objc_msgSend(v11, "ldcmMeasurePin") == 1) && !objc_msgSend(v11, "ldcmCompletion") && !objc_msgSend(v11, "ldcmLowImp"))
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v153 = MEMORY[0x277CCABB0];
    [v11 ldcmLoadImpMag];
    v154 = [v153 numberWithDouble:?];
    [v12 setObject:v154 forKey:@"initialImpedance"];

    v155 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedRes];
    v156 = [v155 numberWithDouble:?];
    [v12 setObject:v156 forKey:@"initialResistance"];

    v157 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedCap];
    v158 = [v157 numberWithDouble:?];
    [v12 setObject:v158 forKey:@"initialCapacitance"];

    v159 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmWetStateDuration")}];
    [v12 setObject:v159 forKey:@"wetDuration"];

    LODWORD(v159) = [(IOPortLDCMManagerV4 *)self checkIsReceptacleEmpty];
    v160 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v159)
    {
      if (v160)
      {
        *v224 = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition!!!", v224, 2u);
      }

      v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.wetToDryTransition";
    }

    else
    {
      if (v160)
      {
        *v224 = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransitionPortNotEmpty!!!", v224, 2u);
      }

      v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.wetToDryTransitionPortNotEmpty";
    }

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v224 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition!!!", v224, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmLoadImpMag];
      v162 = v161;
      [v11 ldcmLoadImpPhase];
      v164 = v163;
      [v11 ldcmCalculatedRes];
      v166 = v165;
      [v11 ldcmCalculatedCap];
      *v224 = 134218752;
      *&v224[4] = v162;
      *&v224[12] = 2048;
      *&v224[14] = v164;
      *&v224[22] = 2048;
      *&v224[24] = v166;
      *&v224[32] = 2048;
      *&v224[34] = v167;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f", v224, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIACurrentAmp];
      v169 = v168;
      [v11 ldcmVoltageAmp];
      v171 = v170;
      [v11 ldcmLeakageCurrentAmp];
      *v224 = 134218496;
      *&v224[4] = v169;
      *&v224[12] = 2048;
      *&v224[14] = v171;
      *&v224[22] = 2048;
      *&v224[24] = v172;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition - TIACurrentAmp: %f, VoltageAmp: %f, LeakageCurrentAmp: %f", v224, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmMeasureTIASNR];
      v174 = v173;
      [v11 ldcmMeasureVoltageSNR];
      v176 = v175;
      [v11 ldcmLeakageCurrentAmp];
      *v224 = 134218496;
      *&v224[4] = v174;
      *&v224[12] = 2048;
      *&v224[14] = v176;
      *&v224[22] = 2048;
      *&v224[24] = v177;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition - MeasureTIASNR: %f, MeasureVoltageSNR: %f, LeakageCurrentAmp: %f", v224, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmCalTIAAmp];
      v179 = v178;
      [v11 ldcmCalVoltageAmp];
      v181 = v180;
      [v11 ldcmCalTIASNR];
      v183 = v182;
      [v11 ldcmCalVoltageSNR];
      *v224 = 134218752;
      *&v224[4] = v179;
      *&v224[12] = 2048;
      *&v224[14] = v181;
      *&v224[22] = 2048;
      *&v224[24] = v183;
      *&v224[32] = 2048;
      *&v224[34] = v184;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition - CalTIAAmp: %f, CalVoltageAmp: %f, CalTIASNR: %f, CalVoltageSNR: %f", v224, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIAGainCorrection];
      v186 = v185;
      [v11 ldcmVoltageGainCorrection];
      v188 = v187;
      [v11 ldcmPhaseComp];
      *v224 = 134218496;
      *&v224[4] = v186;
      *&v224[12] = 2048;
      *&v224[14] = v188;
      *&v224[22] = 2048;
      *&v224[24] = v189;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - wetToDryTransition - TIAGainCorrection: %f, VoltageGainCorrection: %f, PhaseComp: %f", v224, 0x20u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_127;
    }

    v190 = [v11 ldcmWetStateDuration];
    v191 = [v11 ldcmWetStateTooLong];
    *v224 = 67109376;
    *&v224[4] = v190;
    *&v224[8] = 1024;
    *&v224[10] = v191;
    v48 = MEMORY[0x277D86220];
    v49 = "LDCM - wetToDryTransition - WetStateDuration: %d, WetStateTooLong: %d";
    v52 = 14;
    goto LABEL_32;
  }

  if ([v11 ldcmCompletion] == 1)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v224 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - badMeasurement!!!", v224, 2u);
    }

    v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmIncompSNRAmpCnt")}];
    [v12 setObject:v13 forKey:@"count"];

    v14 = MEMORY[0x277CCABB0];
    [v11 ldcmTIACurrentAmp];
    v15 = [v14 numberWithDouble:?];
    [v12 setObject:v15 forKey:@"badMeasurementCurrentAmp"];

    v16 = MEMORY[0x277CCABB0];
    [v11 ldcmVoltageAmp];
    v17 = [v16 numberWithDouble:?];
    [v12 setObject:v17 forKey:@"badMeasurementVoltageAmp"];

    v18 = MEMORY[0x277CCABB0];
    [v11 ldcmCalVoltageAmp];
    v19 = [v18 numberWithDouble:?];
    [v12 setObject:v19 forKey:@"badCalVoltageAmp"];

    v20 = MEMORY[0x277CCABB0];
    [v11 ldcmCalTIAAmp];
    v21 = [v20 numberWithDouble:?];
    [v12 setObject:v21 forKey:@"badCalCurrentAmp"];

    v22 = MEMORY[0x277CCABB0];
    [v11 ldcmMeasureTIASNR];
    v23 = [v22 numberWithDouble:?];
    [v12 setObject:v23 forKey:@"badMeasurementCurrentSNR"];

    v24 = MEMORY[0x277CCABB0];
    [v11 ldcmMeasureVoltageSNR];
    v25 = [v24 numberWithDouble:?];
    [v12 setObject:v25 forKey:@"badMeasurementVoltageSNR"];

    v26 = MEMORY[0x277CCABB0];
    [v11 ldcmCalVoltageSNR];
    v27 = [v26 numberWithDouble:?];
    [v12 setObject:v27 forKey:@"badCalVoltageSNR"];

    v28 = MEMORY[0x277CCABB0];
    [v11 ldcmCalTIASNR];
    v29 = [v28 numberWithDouble:?];
    [v12 setObject:v29 forKey:@"badCalCurrentSNR"];

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v11 ldcmIncompSNRAmpCnt];
      [v11 ldcmTIACurrentAmp];
      v32 = v31;
      [v11 ldcmVoltageAmp];
      v34 = v33;
      [v11 ldcmCalTIAAmp];
      v36 = v35;
      [v11 ldcmCalVoltageAmp];
      *v224 = 67110144;
      *&v224[4] = v30;
      *&v224[8] = 2048;
      *&v224[10] = v32;
      *&v224[18] = 2048;
      *&v224[20] = v34;
      *&v224[28] = 2048;
      *&v224[30] = v36;
      *&v224[38] = 2048;
      *&v224[40] = v37;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - IncompSNRAmpCnt: %d, TIACurrentAmp: %f, VoltageAmp: %f, CalTIAAmp: %f, CalVoltageAmp: %f", v224, 0x30u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmMeasureTIASNR];
      v39 = v38;
      [v11 ldcmMeasureVoltageSNR];
      v41 = v40;
      [v11 ldcmCalTIASNR];
      v43 = v42;
      [v11 ldcmCalVoltageSNR];
      *v224 = 134218752;
      *&v224[4] = v39;
      *&v224[12] = 2048;
      *&v224[14] = v41;
      *&v224[22] = 2048;
      *&v224[24] = v43;
      *&v224[32] = 2048;
      *&v224[34] = v44;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - TIACurrentSNR: %f, VoltageSNR: %f, CalTIASNR: %f, CalVoltageSNR: %f", v224, 0x2Au);
    }

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.badMeasurement";
    goto LABEL_127;
  }

  if ([v11 ldcmCompletion] == 2)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v224 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ovpError!!!", v224, 2u);
    }

    v46 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmIncompOVPCnt")}];
    [v12 setObject:v46 forKey:@"count"];

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.ovpError";
    AnalyticsSendEvent();
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_127;
    }

    v47 = [v11 ldcmIncompOVPCnt];
    *v224 = 67109120;
    *&v224[4] = v47;
    v48 = MEMORY[0x277D86220];
    v49 = "LDCM - IncompOVPCnt: %d";
    goto LABEL_31;
  }

  if ([v11 ldcmCompletion] == 3)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v224 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ldcmPreempted!!!", v224, 2u);
    }

    v50 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmIncompTimeoutCnt")}];
    [v12 setObject:v50 forKey:@"count"];

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.ldcmPreempted";
    AnalyticsSendEvent();
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_127;
    }

    v51 = [v11 ldcmIncompTimeoutCnt];
    *v224 = 67109120;
    *&v224[4] = v51;
    v48 = MEMORY[0x277D86220];
    v49 = "LDCM - IncompTimeoutCnt: %d";
LABEL_31:
    v52 = 8;
LABEL_32:
    _os_log_impl(&dword_2548F1000, v48, OS_LOG_TYPE_DEFAULT, v49, v224, v52);
LABEL_127:

    goto LABEL_128;
  }

  if ([v11 ldcmCompletion] == 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v224 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ldcmDisabled!!!", v224, 2u);
    }

    v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v54 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmFeatureStatus")}];
    [v53 setObject:v54 forKey:@"disable_reason"];

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v55 = [v11 ldcmFeatureStatus];
      *v224 = 67109120;
      *&v224[4] = v55;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ldcmDisabled - FeatureStatus: %d", v224, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v224 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure!!!", v224, 2u);
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);

    v56 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedRes];
    v57 = [v56 numberWithDouble:?];
    [v12 setObject:v57 forKey:@"resistance"];

    v58 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedCap];
    v59 = [v58 numberWithDouble:?];
    [v12 setObject:v59 forKey:@"capacitance"];

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmLoadImpMag];
      v61 = v60;
      [v11 ldcmLoadImpPhase];
      v63 = v62;
      [v11 ldcmCalculatedRes];
      v65 = v64;
      [v11 ldcmCalculatedCap];
      *v224 = 134218752;
      *&v224[4] = v61;
      *&v224[12] = 2048;
      *&v224[14] = v63;
      *&v224[22] = 2048;
      *&v224[24] = v65;
      *&v224[32] = 2048;
      *&v224[34] = v66;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f", v224, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIACurrentAmp];
      v68 = v67;
      [v11 ldcmVoltageAmp];
      v70 = v69;
      [v11 ldcmLeakageCurrentAmp];
      *v224 = 134218496;
      *&v224[4] = v68;
      *&v224[12] = 2048;
      *&v224[14] = v70;
      *&v224[22] = 2048;
      *&v224[24] = v71;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - TIACurrentAmp: %f, VoltageAmp: %f, LeakageCurrentAmp: %f", v224, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmMeasureTIASNR];
      v73 = v72;
      [v11 ldcmMeasureVoltageSNR];
      v75 = v74;
      [v11 ldcmLeakageCurrentAmp];
      *v224 = 134218496;
      *&v224[4] = v73;
      *&v224[12] = 2048;
      *&v224[14] = v75;
      *&v224[22] = 2048;
      *&v224[24] = v76;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - MeasureTIASNR: %f, MeasureVoltageSNR: %f, LeakageCurrentAmp: %f", v224, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmCalTIAAmp];
      v78 = v77;
      [v11 ldcmCalVoltageAmp];
      v80 = v79;
      [v11 ldcmCalTIASNR];
      v82 = v81;
      [v11 ldcmCalVoltageSNR];
      *v224 = 134218752;
      *&v224[4] = v78;
      *&v224[12] = 2048;
      *&v224[14] = v80;
      *&v224[22] = 2048;
      *&v224[24] = v82;
      *&v224[32] = 2048;
      *&v224[34] = v83;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - CalTIAAmp: %f, CalVoltageAmp: %f, CalTIASNR: %f, CalVoltageSNR: %f", v224, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIAGainCorrection];
      v85 = v84;
      [v11 ldcmVoltageGainCorrection];
      v87 = v86;
      [v11 ldcmPhaseComp];
      *v224 = 134218496;
      *&v224[4] = v85;
      *&v224[12] = 2048;
      *&v224[14] = v87;
      *&v224[22] = 2048;
      *&v224[24] = v88;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - TIAGainCorrection: %f, VoltageGainCorrection: %f, PhaseComp: %f", v224, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v89 = [v11 ldcmWetStateDuration];
      v90 = [v11 ldcmWetStateTooLong];
      *v224 = 67109376;
      *&v224[4] = v89;
      *&v224[8] = 1024;
      *&v224[10] = v90;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - selfTestFailure - WetStateDuration: %d, WetStateTooLong: %d", v224, 0xEu);
    }

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.selfTestFailure";
    goto LABEL_127;
  }

  if ([v11 ldcmCompletion] == 5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v224 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ldcmDisabled!!!", v224, 2u);
    }

    v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v92 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmFeatureStatus")}];
    [v91 setObject:v92 forKey:@"disable_reason"];

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v93 = [v11 ldcmFeatureStatus];
      *v224 = 67109120;
      *&v224[4] = v93;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - ldcmDisabled - FeatureStatus: %d", v224, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v224 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure!!!", v224, 2u);
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);

    v94 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedRes];
    v95 = [v94 numberWithDouble:?];
    [v12 setObject:v95 forKey:@"resistance"];

    v96 = MEMORY[0x277CCABB0];
    [v11 ldcmCalculatedCap];
    v97 = [v96 numberWithDouble:?];
    [v12 setObject:v97 forKey:@"capacitance"];

    AnalyticsSendEvent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmLoadImpMag];
      v99 = v98;
      [v11 ldcmLoadImpPhase];
      v101 = v100;
      [v11 ldcmCalculatedRes];
      v103 = v102;
      [v11 ldcmCalculatedCap];
      *v224 = 134218752;
      *&v224[4] = v99;
      *&v224[12] = 2048;
      *&v224[14] = v101;
      *&v224[22] = 2048;
      *&v224[24] = v103;
      *&v224[32] = 2048;
      *&v224[34] = v104;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f", v224, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIACurrentAmp];
      v106 = v105;
      [v11 ldcmVoltageAmp];
      v108 = v107;
      [v11 ldcmLeakageCurrentAmp];
      *v224 = 134218496;
      *&v224[4] = v106;
      *&v224[12] = 2048;
      *&v224[14] = v108;
      *&v224[22] = 2048;
      *&v224[24] = v109;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - TIACurrentAmp: %f, VoltageAmp: %f, LeakageCurrentAmp: %f", v224, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmMeasureTIASNR];
      v111 = v110;
      [v11 ldcmMeasureVoltageSNR];
      v113 = v112;
      [v11 ldcmLeakageCurrentAmp];
      *v224 = 134218496;
      *&v224[4] = v111;
      *&v224[12] = 2048;
      *&v224[14] = v113;
      *&v224[22] = 2048;
      *&v224[24] = v114;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - MeasureTIASNR: %f, MeasureVoltageSNR: %f, LeakageCurrentAmp: %f", v224, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmCalTIAAmp];
      v116 = v115;
      [v11 ldcmCalVoltageAmp];
      v118 = v117;
      [v11 ldcmCalTIASNR];
      v120 = v119;
      [v11 ldcmCalVoltageSNR];
      *v224 = 134218752;
      *&v224[4] = v116;
      *&v224[12] = 2048;
      *&v224[14] = v118;
      *&v224[22] = 2048;
      *&v224[24] = v120;
      *&v224[32] = 2048;
      *&v224[34] = v121;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - CalTIAAmp: %f, CalVoltageAmp: %f, CalTIASNR: %f, CalVoltageSNR: %f", v224, 0x2Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v11 ldcmTIAGainCorrection];
      v123 = v122;
      [v11 ldcmVoltageGainCorrection];
      v125 = v124;
      [v11 ldcmPhaseComp];
      *v224 = 134218496;
      *&v224[4] = v123;
      *&v224[12] = 2048;
      *&v224[14] = v125;
      *&v224[22] = 2048;
      *&v224[24] = v126;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - TIAGainCorrection: %f, VoltageGainCorrection: %f, PhaseComp: %f", v224, 0x20u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v127 = [v11 ldcmWetStateDuration];
      v128 = [v11 ldcmWetStateTooLong];
      *v224 = 67109376;
      *&v224[4] = v127;
      *&v224[8] = 1024;
      *&v224[10] = v128;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - referenceMeasurementFailure - WetStateDuration: %d, WetStateTooLong: %d", v224, 0xEu);
    }

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.referenceMeasurementFailure";
    goto LABEL_127;
  }

  if ([v11 ldcmLowImp] == 1)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v224 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - impedanceTooLow!!!", v224, 2u);
    }

    v129 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "ldcmIncompTimeoutCnt")}];
    [v12 setObject:v129 forKey:@"count"];

    v45 = @"com.apple.ioaccessorymanager.ldcm.usbc.impedanceTooLow";
    AnalyticsSendEvent();
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_127;
    }

    [v11 ldcmLoadImpMag];
    v131 = v130;
    [v11 ldcmLoadImpPhase];
    v133 = v132;
    [v11 ldcmCalculatedRes];
    v135 = v134;
    [v11 ldcmCalculatedCap];
    *v224 = 134218752;
    *&v224[4] = v131;
    *&v224[12] = 2048;
    *&v224[14] = v133;
    *&v224[22] = 2048;
    *&v224[24] = v135;
    *&v224[32] = 2048;
    *&v224[34] = v136;
    v48 = MEMORY[0x277D86220];
    v49 = "LDCM - impedanceTooLow - loadImpMag: %f, loadImpPhase: %f, calculatedRes: %f, calculatedCap: %f";
    v52 = 42;
    goto LABEL_32;
  }

  v45 = @"None";
LABEL_128:
  if (self->_previousLDCMPortStatus == 1)
  {
    v221 = [v11 ldcmPortStatus];
    if (!a4 && v221 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v224 = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - WetReplug", v224, 2u);
      }

      AnalyticsSendEvent();
    }
  }

  self->_previousLDCMPortStatus = [v11 ldcmPortStatus];

  v222 = *MEMORY[0x277D85DE8];
  return v45;
}

- (void)storeWaveform:(char *)a3 withWaveformDataLen:(unint64_t)a4
{
  v42 = *MEMORY[0x277D85DE8];
  if (a4 == 1152)
  {
    if (self->_waveformExtractionDisabled)
    {
      [IOPortLDCMManagerV4 storeWaveform:withWaveformDataLen:];
    }

    else
    {
      v28 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:1152];
      v4 = [MEMORY[0x277CCAA00] defaultManager];
      v5 = [v4 contentsOfDirectoryAtPath:@"/var/logs/ldcm/" error:0];

      v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self BEGINSWITH[cd] 'internalWaveformData'"];
      v27 = v5;
      v7 = [v5 filteredArrayUsingPredicate:v6];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v34 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"/var/logs/ldcm/", *(*(&v33 + 1) + 8 * i)];
            v14 = [MEMORY[0x277CCAA00] defaultManager];
            v32 = 0;
            [v14 removeItemAtPath:v13 error:&v32];
          }

          v10 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v10);
      }

      v15 = [MEMORY[0x277CCAD78] UUID];
      v16 = [v15 UUIDString];

      v17 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@%@%@.bin", @"/var/logs/ldcm/", @"internalWaveformData", v16];
      v18 = [MEMORY[0x277CCAA00] defaultManager];
      [v18 createFileAtPath:v17 contents:0 attributes:0];

      v19 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v17];
      v31 = 0;
      v20 = [v19 seekToEndReturningOffset:0 error:&v31];
      v21 = v31;
      if (v20)
      {
        v30 = 0;
        v22 = v28;
        [v19 writeData:v28 error:&v30];
        v23 = v30;

        v21 = v23;
      }

      else
      {
        v22 = v28;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v38 = "[IOPortLDCMManagerV4 storeWaveform:withWaveformDataLen:]";
          v39 = 2112;
          v40 = v21;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s LDCM - Error in seeking to end of file. %@\n", buf, 0x16u);
        }
      }

      v29 = 0;
      v24 = [v19 closeAndReturnError:&v29];
      v25 = v29;

      if ((v24 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v38 = "[IOPortLDCMManagerV4 storeWaveform:withWaveformDataLen:]";
        v39 = 2112;
        v40 = v25;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s LDCM - Error in closing file. %@\n", buf, 0x16u);
      }
    }
  }

  else
  {
    [IOPortLDCMManagerV4 storeWaveform:withWaveformDataLen:];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)measureOccupiedWetPortDuration
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_isReceptacleEmpty)
  {
    if (measureOccupiedWetPortDuration_currentlyMeasuring)
    {
      [(NSDate *)self->_portAttachedTime timeIntervalSinceNow];
      v4 = llround(-v3);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = "[IOPortLDCMManagerV4 measureOccupiedWetPortDuration]";
        v11 = 2048;
        v12 = v4;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s LDCM - Duration of port attached: %ld\n", &v9, 0x16u);
      }

      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = [MEMORY[0x277CCABB0] numberWithLong:v4];
      [v5 setObject:v6 forKey:@"attachDuration"];

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentMitigationsStatus];
      [v5 setObject:v7 forKey:@"mitigationStatus"];

      AnalyticsSendEvent();
      measureOccupiedWetPortDuration_currentlyMeasuring = 0;
    }
  }

  else if ((measureOccupiedWetPortDuration_currentlyMeasuring & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[IOPortLDCMManagerV4 measureOccupiedWetPortDuration]";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Starting measurement of occupied port\n", &v9, 0xCu);
    }

    self->_portAttachedTime = [MEMORY[0x277CBEAA8] now];
    measureOccupiedWetPortDuration_currentlyMeasuring = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)extractData:(unsigned int *)a3 :(unint64_t)a4
{
  v4 = [[LDCMMeasurementV4 alloc] initWithParams:a3];

  return v4;
}

- (int)setLiquidDetected:(unsigned __int8)a3
{
  input[1] = *MEMORY[0x277D85DE8];
  ldcmFeatureConnect = self->_ldcmFeatureConnect;
  input[0] = a3;
  result = IOConnectCallMethod(ldcmFeatureConnect, 0x3E8u, input, 1u, 0, 0, 0, 0, 0, 0);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)setMitigations:(unsigned __int8)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  if (a3 && self->_behaviorOverrideDisableMitigations)
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Skipping mitigations due to behavior override!", buf, 2u);
      result = 0;
    }
  }

  else
  {
    *buf = a3;
    self->_mitigationsEnabled = a3 != 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 67109120;
      v9 = v3;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Setting Mitigations in Port Manager: %d!!!", v8, 8u);
    }

    result = IOConnectCallMethod(self->_ldcmFeatureConnect, 0x3E9u, buf, 1u, 0, 0, 0, 0, 0, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)setUserOverride:(unsigned __int8)a3
{
  v3 = a3;
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a3;
  if (a3 && self->_overrideEnabled == a3)
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Override already enabled, no action taken", buf, 2u);
      result = 0;
    }
  }

  else
  {
    if (a3)
    {
      AnalyticsSendEvent();
    }

    self->_overrideEnabled = v3 != 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LDCM - Setting Override in Port Manager: %d!!!", buf, 8u);
    }

    result = IOConnectCallMethod(self->_ldcmFeatureConnect, 0x3EAu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)setLDCMState:(int)a3
{
  input[1] = *MEMORY[0x277D85DE8];
  ldcmFeatureConnect = self->_ldcmFeatureConnect;
  input[0] = a3;
  result = IOConnectCallMethod(ldcmFeatureConnect, 0x3EBu, input, 1u, 0, 0, 0, 0, 0, 0);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)setLDCMMeasurementStatus:(int)a3
{
  input[1] = *MEMORY[0x277D85DE8];
  ldcmFeatureConnect = self->_ldcmFeatureConnect;
  input[0] = a3;
  result = IOConnectCallMethod(ldcmFeatureConnect, 0x3ECu, input, 1u, 0, 0, 0, 0, 0, 0);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)getData:(char *)outputStruct :(unint64_t *)outputStructCnt
{
  input[1] = *MEMORY[0x277D85DE8];
  ldcmFeatureConnect = self->_ldcmFeatureConnect;
  input[0] = 1;
  result = IOConnectCallMethod(ldcmFeatureConnect, 0x3EDu, input, 1u, 0, 0, 0, 0, outputStruct, outputStructCnt);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)setWaveformExtractionEnabled:(unsigned __int8)a3
{
  v3 = a3;
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Setting waveform extraction: %d...", buf, 8u);
  }

  result = IOConnectCallMethod(self->_ldcmFeatureConnect, 0x3F1u, input, 1u, 0, 0, 0, 0, 0, 0);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)disableOVPInterrupts
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Request to disable OVP interrupts", buf, 2u);
  }

  return IOConnectCallMethod(self->_ldcmFeatureConnect, 0x3F2u, 0, 0, 0, 0, 0, 0, 0, 0);
}

- (void)showUI
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Showing UI, if applicable", v7, 2u);
  }

  if (self->_buildType == 1 || self->_behaviorOverrideDisableUI || self->_overrideEnabled)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buildType = self->_buildType;
      behaviorOverrideDisableUI = self->_behaviorOverrideDisableUI;
      overrideEnabled = self->_overrideEnabled;
      v7[0] = 67109632;
      v7[1] = buildType;
      v8 = 1024;
      v9 = behaviorOverrideDisableUI;
      v10 = 1024;
      v11 = overrideEnabled;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Not showing UI (buildtype: %d override: %d userOverride: %d)", v7, 0x14u);
    }
  }

  else
  {
    if (self->_uiActive)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LOWORD(v7[0]) = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - UI already active, not showing UI", v7, 2u);
      }
    }

    else
    {
      AnalyticsSendEvent();
      [(LDCMNotificationUIManagerV4 *)self->_notificationUIManager showUI:1];
    }

    self->_uiActive = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)hideUI
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LDCM - Hiding UI, if applicable", v3, 2u);
  }

  if (self->_uiActive)
  {
    IOAccessoryNotifyWetCancel();
  }

  self->_uiActive = 0;
}

- (id)buildMeasurementOutputString:(id)a3 withMeasurementReason:(int)a4 withMeasurementEvent:(id)a5
{
  v7 = MEMORY[0x277CCA968];
  v61 = a5;
  v8 = a3;
  v9 = objc_alloc_init(v7);
  [v9 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  if (a4 > 3)
  {
    v10 = @"None";
  }

  else
  {
    v10 = off_279793190[a4];
  }

  v60 = v10;
  v59 = MEMORY[0x277CCAB68];
  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [v9 stringFromDate:v11];
  v58 = [v8 ldcmPortStatus];
  v57 = [v8 ldcmMitigationsStatus];
  v56 = [v8 ldcmFeatureStatus];
  v55 = [v8 ldcmMeasurePin];
  v54 = [v8 ldcmCompletion];
  v53 = [v8 ldcmWet];
  v13 = [v8 ldcmLowImp];
  [v8 ldcmLoadImpMag];
  v52 = v14;
  [v8 ldcmLoadImpPhase];
  v51 = v15;
  [v8 ldcmCalculatedRes];
  v50 = v16;
  [v8 ldcmCalculatedCap];
  v49 = v17;
  [v8 ldcmTIACurrentAmp];
  v48 = v18;
  [v8 ldcmVoltageAmp];
  v47 = v19;
  [v8 ldcmLeakageCurrentAmp];
  v46 = v20;
  [v8 ldcmMeasureTIASNR];
  v45 = v21;
  [v8 ldcmMeasureVoltageSNR];
  v23 = v22;
  [v8 ldcmCalTIAAmp];
  v25 = v24;
  [v8 ldcmCalVoltageAmp];
  v27 = v26;
  [v8 ldcmCalTIASNR];
  v29 = v28;
  [v8 ldcmCalVoltageSNR];
  v31 = v30;
  [v8 ldcmTIAGainCorrection];
  v33 = v32;
  [v8 ldcmVoltageGainCorrection];
  v35 = v34;
  [v8 ldcmPhaseComp];
  v37 = v36;
  v38 = [v8 ldcmWetStateDuration];
  v39 = [v8 ldcmWetStateTooLong];
  v40 = [v8 ldcmIncompSNRAmpCnt];
  v41 = [v8 ldcmIncompOVPCnt];
  v42 = [v8 ldcmIncompTimeoutCnt];

  v43 = [v59 stringWithFormat:@"%@, %@, %@, %.12d, %.12d, %.12d, %.12d, %.12d, %.12d, %.12d, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12f, %.12d, %.12d, %.12d, %.12d, %.12d\n", v12, v60, v61, v58, v57, v56, v55, v54, v53, v13, v52, v51, v50, v49, v48, v47, v46, v45, v23, v25, v27, v29, v31, v33, v35, v37, v38, v39, v40, v41, v42];

  return v43;
}

- (void)processBehaviorDictionary:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [v4 objectForKeyedSubscript:@"DisableMitigations"];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 objectForKeyedSubscript:@"DisableMitigations"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v10 = [v4 objectForKeyedSubscript:@"DisableMitigations"];
        self->_behaviorOverrideDisableMitigations = [v10 BOOLValue];

        [v5 setBool:self->_behaviorOverrideDisableMitigations forKey:@"LDCMV4DisableMitigations"];
      }
    }

    v11 = [v4 objectForKeyedSubscript:@"DisableUI"];
    if (v11)
    {
      v12 = v11;
      v13 = [v4 objectForKeyedSubscript:@"DisableUI"];
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if (v14)
      {
        v15 = [v4 objectForKeyedSubscript:@"DisableUI"];
        self->_behaviorOverrideDisableUI = [v15 BOOLValue];

        [v5 setBool:self->_behaviorOverrideDisableUI forKey:@"LDCMV4DisableUI"];
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      behaviorOverrideDisableMitigations = self->_behaviorOverrideDisableMitigations;
      behaviorOverrideDisableUI = self->_behaviorOverrideDisableUI;
      v19 = 136315650;
      v20 = "[IOPortLDCMManagerV4 processBehaviorDictionary:]";
      v21 = 1024;
      v22 = behaviorOverrideDisableMitigations;
      v23 = 1024;
      v24 = behaviorOverrideDisableUI;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s behavior overrides - mitigations: %d ui: %d", &v19, 0x18u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to open LDCM kernel service\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to set up LDCM interrupts interest notification\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to get IOPort kernel service\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to set up LDCM attach/detach interest notification\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to create LDCM V4 Timer\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to create ldcmV4DispatchQueue\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithParams:withDryPollingInterval:withService:withNotificationPort:withServerRunloop:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_2(&dword_2548F1000, MEMORY[0x277D86220], v0, "%s Failed to initialize IOPortLDCMManagerV4 super\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)performLDCMMeasurement:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)performLDCMMeasurement:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = *a1;
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)performLDCMMeasurement:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performLDCMMeasurement:(uint64_t *)a1 .cold.4(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)storeWaveform:withWaveformDataLen:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)storeWaveform:withWaveformDataLen:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

@end