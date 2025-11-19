@interface CWFApple80211
- (BOOL)__setupEventMonitoring;
- (BOOL)isAWDLEnabled;
- (BOOL)isMonitoringEventType:(unsigned int)a3 interfaceName:(id)a4;
- (BOOL)setChannel:(id)a3 error:(id *)a4;
- (BOOL)setLQMConfig:(id)a3 error:(id *)a4;
- (BOOL)setUCMExtProfile:(id)a3 error:(id *)a4;
- (CWFApple80211)init;
- (CWFApple80211)initWithInterfaceName:(id)a3;
- (_Apple80211)__apple80211RefWithInterfaceName:(id)a3;
- (id)AWDLAFTxMode:(id *)a3;
- (id)AWDLAvailabilityWindowAPAlignment:(id *)a3;
- (id)AWDLBTLEStateParameters:(id *)a3;
- (id)AWDLContinuousElectionAlgorithmEnabled:(id *)a3;
- (id)AWDLElectionID:(id *)a3;
- (id)AWDLElectionMetric:(id *)a3;
- (id)AWDLElectionParameters:(id *)a3;
- (id)AWDLElectionRSSIThresholds:(id *)a3;
- (id)AWDLEncryptionType:(id *)a3;
- (id)AWDLExtensionStateMachineParameters:(id *)a3;
- (id)AWDLGuardTime:(id *)a3;
- (id)AWDLMasterChannel:(id *)a3;
- (id)AWDLOpMode:(id *)a3;
- (id)AWDLPeerDatabase:(id *)a3;
- (id)AWDLPeerTrafficRegistration:(id *)a3;
- (id)AWDLPreferredChannels:(id *)a3;
- (id)AWDLPresenceMode:(id *)a3;
- (id)AWDLSecondaryMasterChannel:(id *)a3;
- (id)AWDLSidecarDiagnostics:(id *)a3;
- (id)AWDLSocialTimeSlots:(id *)a3;
- (id)AWDLStatistics:(id *)a3;
- (id)AWDLStrategy:(id *)a3;
- (id)AWDLSyncChannelSequence:(id *)a3;
- (id)AWDLSyncEnabled:(id *)a3;
- (id)AWDLSyncParameters:(id *)a3;
- (id)AWDLSyncState:(id *)a3;
- (id)BSSID:(id *)a3;
- (id)DTIMInterval:(id *)a3;
- (id)LQMConfig:(id *)a3;
- (id)LQMSummary:(id *)a3;
- (id)MCSIndex:(id *)a3;
- (id)RSSI:(id *)a3;
- (id)SSID:(id *)a3;
- (id)__MCSIndex:(id *)a3;
- (id)__guardInterval:(id *)a3;
- (id)__hardwareSupportedChannels:(id *)a3;
- (id)__numberOfSpatialStreams:(id *)a3;
- (id)__supportedChannelsWithCountryCode:(id)a3 error:(id *)a4;
- (id)activePHYMode:(id *)a3;
- (id)authType:(id *)a3;
- (id)backgroundScanCache:(id *)a3;
- (id)beaconCache:(id *)a3;
- (id)blockedBands:(id *)a3;
- (id)bluetoothCoexistenceConfig:(id *)a3;
- (id)bluetoothCoexistenceMode:(id *)a3;
- (id)bluetoothCoexistenceProfiles2GHz:(id *)a3;
- (id)bluetoothCoexistenceProfiles5GHz:(id *)a3;
- (id)capabilities:(id *)a3;
- (id)cca:(id *)a3;
- (id)chainAck:(id *)a3;
- (id)channel:(id *)a3;
- (id)countryBandSupport:(id *)a3;
- (id)countryCode:(id *)a3;
- (id)currentNetwork:(id *)a3;
- (id)description;
- (id)desense:(id *)a3;
- (id)desenseLevel:(id *)a3;
- (id)guardInterval:(id *)a3;
- (id)hardwareMACAddress:(id *)a3;
- (id)hardwareSupportedChannels:(id *)a3;
- (id)hostAPStationList:(id *)a3;
- (id)interfaceNames:(id *)a3;
- (id)leakyAPStats:(id *)a3;
- (id)linkChangedEventData:(id *)a3;
- (id)maxLinkSpeed:(id *)a3;
- (id)maxNSSForAP:(id *)a3;
- (id)noise:(id *)a3;
- (id)numberOfSpatialStreams:(id *)a3;
- (id)opMode:(id *)a3;
- (id)perAntennaRSSI:(id *)a3;
- (id)powerDebugInfo:(id *)a3;
- (id)powerOn:(id *)a3;
- (id)powerState:(id *)a3;
- (id)powerTableInfo:(id *)a3;
- (id)powersave:(id *)a3;
- (id)rangingCapabilities:(id *)a3;
- (id)rxRate:(id *)a3;
- (id)state:(id *)a3;
- (id)supportedChannelsWithCountryCode:(id)a3 error:(id *)a4;
- (id)supportedPHYModes:(id *)a3;
- (id)txChainPower:(id *)a3;
- (id)txNSS:(id *)a3;
- (id)txPower:(id *)a3;
- (id)txRate:(id *)a3;
- (id)virtualInterfaceNames:(id *)a3;
- (id)virtualInterfaceParent:(id *)a3;
- (id)virtualInterfaceRole:(id *)a3;
- (id)wowEnabled:(id *)a3;
- (unsigned)__apple80211FindServiceWithInterfaceName:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)startMonitoringEventWithType:(unsigned int)a3 interfaceName:(id)a4;
- (void)stopMonitoringEventWithType:(unsigned int)a3 interfaceName:(id)a4;
@end

@implementation CWFApple80211

- (unsigned)__apple80211FindServiceWithInterfaceName:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v10 = v3;
    v11 = @"IOPropertyMatch";
    v9 = @"IOInterfaceName";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    if (v6)
    {
      LODWORD(v6) = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v6);
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (_Apple80211)__apple80211RefWithInterfaceName:(id)a3
{
  v4 = a3;
  if (Apple80211Open())
  {
    v6 = 0;
    goto LABEL_11;
  }

  if (v4)
  {
    v5 = [(CWFApple80211 *)self __apple80211FindServiceWithInterfaceName:v4];
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = v5;
    if (Apple80211BindToInterfaceWithService())
    {
LABEL_11:
      Apple80211Close();
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
LABEL_8:
    IOObjectRelease(v6);
  }

LABEL_9:

  return 0;
}

- (CWFApple80211)initWithInterfaceName:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CWFApple80211;
  v5 = [(CWFApple80211 *)&v21 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 copy];
  interfaceName = v5->_interfaceName;
  v5->_interfaceName = v6;

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.corewifi.apple80211-mutex", v8);
  mutexQueue = v5->_mutexQueue;
  v5->_mutexQueue = v9;

  if (!v5->_mutexQueue)
  {
    goto LABEL_6;
  }

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("com.apple.corewifi.apple80211-event", v11);
  eventQueue = v5->_eventQueue;
  v5->_eventQueue = v12;

  if (!v5->_eventQueue)
  {
    goto LABEL_6;
  }

  v14 = [(CWFApple80211 *)v5 __apple80211RefWithInterfaceName:v4];
  v5->_a11Ref = v14;
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = [(CWFApple80211 *)v5 virtualInterfaceRole:0];
  v5->_virtualInterfaceRole = [v15 unsignedIntValue];

  v16 = [(CWFApple80211 *)v5 virtualInterfaceParent:0];
  virtualInterfaceParent = v5->_virtualInterfaceParent;
  v5->_virtualInterfaceParent = v16;

  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableInterfaceNameEventMap = v5->_mutableInterfaceNameEventMap;
  v5->_mutableInterfaceNameEventMap = v18;

  if (!v5->_mutableInterfaceNameEventMap)
  {
LABEL_6:

    v5 = 0;
  }

  return v5;
}

- (CWFApple80211)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[CWFApple80211 init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)invalidate
{
  [(CWFApple80211 *)self setEventHandler:0];
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1EE84;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)dealloc
{
  if (self->_a11Ref)
  {
    Apple80211Close();
  }

  v3.receiver = self;
  v3.super_class = CWFApple80211;
  [(CWFApple80211 *)&v3 dealloc];
}

- (BOOL)__setupEventMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  a11Ref = self->_a11Ref;
  eventQueue = self->_eventQueue;
  if (Apple80211RawEventMonitoringInit())
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

LABEL_14:
    v13 = [(CWFApple80211 *)self interfaceName];
    _os_log_send_and_compose_impl();

LABEL_15:
    result = 0;
    goto LABEL_4;
  }

  v5 = self->_a11Ref;
  if (Apple80211RawStartMonitoringEventAll())
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  result = 1;
LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startMonitoringEventWithType:(unsigned int)a3 interfaceName:(id)a4
{
  v6 = a4;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1F1E0;
  block[3] = &unk_1E86E6708;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(eventQueue, block);
}

- (void)stopMonitoringEventWithType:(unsigned int)a3 interfaceName:(id)a4
{
  v6 = a4;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1F40C;
  block[3] = &unk_1E86E6708;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_sync(mutexQueue, block);
}

- (BOOL)isMonitoringEventType:(unsigned int)a3 interfaceName:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0C1F578;
  v10[3] = &unk_1E86E6730;
  v11 = v6;
  v12 = &v14;
  v10[4] = self;
  v13 = a3;
  v8 = v6;
  dispatch_sync(mutexQueue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (id)interfaceNames:(id *)a3
{
  a11Ref = self->_a11Ref;
  IfListCopy = Apple80211GetIfListCopy();
  if (IfListCopy)
  {
    if (a3)
    {
      v7 = IfListCopy;
      v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", IfListCopy);
      *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v7, v8);

      a3 = 0;
    }
  }

  else
  {
    a3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:0];
  }

  return a3;
}

- (id)virtualInterfaceNames:(id *)a3
{
  a11Ref = self->_a11Ref;
  interfaceName = self->_interfaceName;
  VirtualIfListCopy = Apple80211GetVirtualIfListCopy();
  if (VirtualIfListCopy)
  {
    if (a3)
    {
      v8 = VirtualIfListCopy;
      v9 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", VirtualIfListCopy);
      *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v9);

      a3 = 0;
    }
  }

  else
  {
    a3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:0];
  }

  return a3;
}

- (id)powerOn:(id *)a3
{
  a11Ref = self->_a11Ref;
  Power = Apple80211GetPower();
  if (Power)
  {
    if (a3)
    {
      v8 = Power;
      v9 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", Power);
      *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v9);
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:0];
  }

  return v6;
}

- (id)__MCSIndex:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)MCSIndex:(id *)a3
{
  v5 = [(CWFApple80211 *)self activePHYMode:0];
  if (([v5 unsignedIntValue] & 0x80) != 0)
  {
    [(CWFApple80211 *)self __VHTMCSIndex:a3];
  }

  else
  {
    [(CWFApple80211 *)self __MCSIndex:a3];
  }
  v6 = ;

  return v6;
}

- (id)DTIMInterval:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  LODWORD(v16) = 41;
  DWORD2(v16) = 8;
  v17 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v14)];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)perAntennaRSSI:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  v14 = 1;
  LODWORD(v19) = 16;
  DWORD2(v19) = 52;
  v20 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:52];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)RSSI:(id *)a3
{
  v3 = [(CWFApple80211 *)self perAntennaRSSI:0];
  v4 = 0;
  if ([v3 length] == 52)
  {
    v5 = [v3 bytes];
    v6 = 28;
    if (*(v5 + 4) == 1)
    {
      v6 = 12;
    }

    v4 = [MEMORY[0x1E696AD98] numberWithInt:*(v5 + v6)];
  }

  return v4;
}

- (id)noise:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 objectForKeyedSubscript:@"NOISE_CTL_AGR"];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)authType:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  v14 = 1;
  LODWORD(v18) = 2;
  DWORD2(v18) = 16;
  v19 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:16];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)activePHYMode:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 objectForKeyedSubscript:@"PHYMODE_ACTIVE"];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)supportedPHYModes:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 objectForKeyedSubscript:@"PHYMODE_SUPPORTED"];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)txRate:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)txPower:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  v14 = 1;
  LODWORD(v17) = 7;
  DWORD2(v17) = 12;
  v18 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v15)];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)opMode:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)__guardInterval:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)guardInterval:(id *)a3
{
  v5 = [(CWFApple80211 *)self activePHYMode:0];
  if (([v5 unsignedIntValue] & 0x80) != 0)
  {
    [(CWFApple80211 *)self __VHTGuardInterval:a3];
  }

  else
  {
    [(CWFApple80211 *)self __guardInterval:a3];
  }
  v6 = ;

  return v6;
}

- (id)__numberOfSpatialStreams:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)numberOfSpatialStreams:(id *)a3
{
  v5 = [(CWFApple80211 *)self activePHYMode:0];
  if (([v5 unsignedIntValue] & 0x80) != 0)
  {
    [(CWFApple80211 *)self __VHTNumberOfSpatialStreams:a3];
  }

  else
  {
    [(CWFApple80211 *)self __numberOfSpatialStreams:a3];
  }
  v6 = ;

  return v6;
}

- (id)capabilities:(id *)a3
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    a11Ref = self->_a11Ref;
    v8 = Apple80211Get();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6];
    }

    CFRelease(v6);
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v8 = -3901;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (v8)
  {
    v10 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v8);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v10);
  }

LABEL_7:

  return v9;
}

- (id)SSID:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)BSSID:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [0 copy];
    v7 = CWFCorrectEthernetAddressString(v6);
  }

  if (a3 && v5)
  {
    v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v8);
  }

  return v7;
}

- (id)countryCode:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)virtualInterfaceParent:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)virtualInterfaceRole:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211Get();
  if (v5)
  {
    if (a3)
    {
      v8 = v5;
      v9 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
      *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v9);
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:0];
  }

  return v6;
}

- (id)wowEnabled:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211Get();
  if (v5)
  {
    if (a3)
    {
      v8 = v5;
      v9 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
      *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v9);
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:0];
  }

  return v6;
}

- (id)linkChangedEventData:(id *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  v16 = 0;
  v15 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  LODWORD(v15) = 156;
  DWORD2(v15) = 32;
  v16 = v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:32];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)channel:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(CWFChannel);
    v7 = [0 objectForKeyedSubscript:@"CHANNEL"];
    -[CWFChannel setChannel:](v6, "setChannel:", [v7 unsignedIntegerValue]);

    v8 = [0 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
    -[CWFChannel setFlags:](v6, "setFlags:", [v8 intValue]);
  }

  if (a3 && v5)
  {
    v9 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v9);
  }

  return v6;
}

- (BOOL)setChannel:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "channel")}];
  [v8 setObject:v9 forKeyedSubscript:@"CHANNEL"];

  v10 = MEMORY[0x1E696AD98];
  v11 = [v7 flags];

  v12 = [v10 numberWithUnsignedInt:v11];
  [v8 setObject:v12 forKeyedSubscript:@"CHANNEL_FLAGS"];

  v13 = MEMORY[0x1E12E9420](self->_a11Ref, 4, 0, v8, 0xFFFFFFFFLL);
  v14 = v13;
  if (a4 && v13)
  {
    v15 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v13);
    *a4 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v14, v15);
  }

  return v14 == 0;
}

- (id)__supportedChannelsWithCountryCode:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  bzero(v27 + 4, 0x12D4uLL);
  LODWORD(v27[0]) = 1;
  v28[1198] = -1;
  if (v6)
  {
    v29 = 1;
    v7 = [v6 UTF8String];
    v8 = *v7;
    v31 = *(v7 + 2);
    v30 = v8;
  }

  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  LODWORD(v35) = 27;
  DWORD2(v35) = 4824;
  v36 = v27;
  v10 = self->_a11Ref;
  v11 = Apple80211RawGet();
  if (v11)
  {
    v12 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DF70] array];
    if (!HIDWORD(v27[0]))
    {
      goto LABEL_10;
    }

    v24 = v11;
    v25 = a4;
    v26 = v6;
    v13 = 0;
    v14 = v28;
    do
    {
      v32[0] = @"SUP_CHANNEL";
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{*(v14 - 1), v24, v25, v26, v27[0]}];
      v32[1] = @"SUP_CHANNEL_FLAGS";
      v33[0] = v15;
      v16 = *v14;
      v14 += 3;
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16];
      v33[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

      [v12 addObject:v18];
      ++v13;
    }

    while (v13 < HIDWORD(v27[0]));
    a4 = v25;
    v6 = v26;
    LODWORD(v11) = v24;
    if (!v25)
    {
      goto LABEL_10;
    }
  }

  if (v11)
  {
    v19 = *MEMORY[0x1E696A798];
    v20 = CWFErrorDescription(*MEMORY[0x1E696A798], v11);
    *a4 = CWFErrorWithDescription(v19, v11, v20);
  }

LABEL_10:
  v21 = [v12 copy];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)supportedChannelsWithCountryCode:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v5 = [(CWFApple80211 *)self __supportedChannelsWithCountryCode:a3 error:&v32];
  v6 = v32;
  if (v6)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v27 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = v5;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = *v29;
  do
  {
    v12 = 0;
    do
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v28 + 1) + 8 * v12);
      v14 = [v13 objectForKeyedSubscript:@"SUP_CHANNEL"];
      v15 = [v13 objectForKeyedSubscript:@"SUP_CHANNEL_FLAGS"];
      v16 = [v15 unsignedIntValue];
      v17 = v16;
      if ((v16 & 2) != 0)
      {
        v19 = objc_alloc_init(CWFChannel);
        -[CWFChannel setChannel:](v19, "setChannel:", [v14 unsignedIntegerValue]);
        [(CWFChannel *)v19 setFlags:v17 & 0xFFFFF3FA];
        [v7 addObject:v19];

        if ((v17 & 4) == 0)
        {
LABEL_9:
          if ((v17 & 0x400) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      else if ((v16 & 4) == 0)
      {
        goto LABEL_9;
      }

      v20 = objc_alloc_init(CWFChannel);
      -[CWFChannel setChannel:](v20, "setChannel:", [v14 unsignedIntegerValue]);
      [(CWFChannel *)v20 setFlags:v17 & 0xFFFFF3FC];
      [v7 addObject:v20];

      if ((v17 & 0x400) == 0)
      {
LABEL_10:
        if ((v17 & 0x800) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        v18 = objc_alloc_init(CWFChannel);
        -[CWFChannel setChannel:](v18, "setChannel:", [v14 unsignedIntegerValue]);
        [(CWFChannel *)v18 setFlags:v17 & 0xFFFFFBF8];
        [v7 addObject:v18];

        goto LABEL_12;
      }

LABEL_16:
      v21 = objc_alloc_init(CWFChannel);
      -[CWFChannel setChannel:](v21, "setChannel:", [v14 unsignedIntegerValue]);
      [(CWFChannel *)v21 setFlags:v17 & 0xFFFFF7F8];
      [v7 addObject:v21];

      if ((v17 & 0x800) != 0)
      {
        goto LABEL_11;
      }

LABEL_12:

      ++v12;
    }

    while (v10 != v12);
    v22 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    v10 = v22;
  }

  while (v22);
LABEL_19:

  v5 = v26;
  a4 = v27;
  v6 = 0;
  if (v27)
  {
LABEL_20:
    if (v6)
    {
      v23 = v6;
      *a4 = v6;
    }
  }

LABEL_22:

  v24 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)__hardwareSupportedChannels:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  bzero(v22, 0x12D4uLL);
  v24 = 1;
  v21 = 1;
  v23[1198] = -1;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  LODWORD(v28) = 27;
  DWORD2(v28) = 4824;
  v29 = &v21;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
    if (!v22[0])
    {
      goto LABEL_8;
    }

    v20 = a3;
    v9 = 0;
    v10 = v23;
    do
    {
      v25[0] = @"SUP_CHANNEL";
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v10 - 1)];
      v25[1] = @"SUP_CHANNEL_FLAGS";
      v26[0] = v11;
      v12 = *v10;
      v10 += 3;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
      v26[1] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

      [v8 addObject:v14];
      ++v9;
    }

    while (v9 < v22[0]);
    a3 = v20;
    if (!v20)
    {
      goto LABEL_8;
    }
  }

  if (v7)
  {
    v15 = *MEMORY[0x1E696A798];
    v16 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v15, v7, v16);
  }

LABEL_8:
  v17 = [v8 copy];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)hardwareSupportedChannels:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v4 = [(CWFApple80211 *)self __hardwareSupportedChannels:&v31];
  v5 = v31;
  if (v5)
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v26 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = v4;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  v10 = *v28;
  do
  {
    v11 = 0;
    do
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v27 + 1) + 8 * v11);
      v13 = [v12 objectForKeyedSubscript:@"SUP_CHANNEL"];
      v14 = [v12 objectForKeyedSubscript:@"SUP_CHANNEL_FLAGS"];
      v15 = [v14 unsignedIntValue];
      v16 = v15;
      if ((v15 & 2) != 0)
      {
        v18 = objc_alloc_init(CWFChannel);
        -[CWFChannel setChannel:](v18, "setChannel:", [v13 unsignedIntegerValue]);
        [(CWFChannel *)v18 setFlags:v16 & 0xFFFFF3FA];
        [v6 addObject:v18];

        if ((v16 & 4) == 0)
        {
LABEL_9:
          if ((v16 & 0x400) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      else if ((v15 & 4) == 0)
      {
        goto LABEL_9;
      }

      v19 = objc_alloc_init(CWFChannel);
      -[CWFChannel setChannel:](v19, "setChannel:", [v13 unsignedIntegerValue]);
      [(CWFChannel *)v19 setFlags:v16 & 0xFFFFF3FC];
      [v6 addObject:v19];

      if ((v16 & 0x400) == 0)
      {
LABEL_10:
        if ((v16 & 0x800) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        v17 = objc_alloc_init(CWFChannel);
        -[CWFChannel setChannel:](v17, "setChannel:", [v13 unsignedIntegerValue]);
        [(CWFChannel *)v17 setFlags:v16 & 0xFFFFFBF8];
        [v6 addObject:v17];

        goto LABEL_12;
      }

LABEL_16:
      v20 = objc_alloc_init(CWFChannel);
      -[CWFChannel setChannel:](v20, "setChannel:", [v13 unsignedIntegerValue]);
      [(CWFChannel *)v20 setFlags:v16 & 0xFFFFF7F8];
      [v6 addObject:v20];

      if ((v16 & 0x800) != 0)
      {
        goto LABEL_11;
      }

LABEL_12:

      ++v11;
    }

    while (v9 != v11);
    v21 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    v9 = v21;
  }

  while (v21);
LABEL_19:

  v4 = v25;
  a3 = v26;
  v5 = 0;
  if (v26)
  {
LABEL_20:
    if (v5)
    {
      v22 = v5;
      *a3 = v5;
    }
  }

LABEL_22:

  v23 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isAWDLEnabled
{
  v2 = [(CWFApple80211 *)self AWDLSyncEnabled:0];
  v3 = v2;
  if (v2)
  {
    v4 = *([v2 bytes] + 8) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)AWDLSyncEnabled:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  v14 = 1;
  LODWORD(v17) = 117;
  DWORD2(v17) = 12;
  v18 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:12];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLSyncChannelSequence:(id *)a3
{
  v42 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v37 = 0u;
    memset(v38, 0, sizeof(v38));
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v14 = 1;
    LODWORD(v40) = 129;
    DWORD2(v40) = 400;
    v41 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:400];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLSyncState:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v16 = 0;
    v15 = 0;
    v17 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v14 = 1;
    LODWORD(v19) = 134;
    DWORD2(v19) = 24;
    v20 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:24];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLSyncParameters:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v16 = 0;
    v15 = 0;
    v17 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v14 = 1;
    LODWORD(v19) = 116;
    DWORD2(v19) = 24;
    v20 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:24];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLElectionID:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    LODWORD(v16) = 122;
    DWORD2(v16) = 8;
    v17 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLElectionParameters:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v18 = 0;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v14 = 1;
    LODWORD(v20) = 155;
    DWORD2(v20) = 56;
    v21 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:56];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLElectionRSSIThresholds:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v15 = 0;
    v16 = 0;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v14 = 1;
    LODWORD(v18) = 135;
    DWORD2(v18) = 20;
    v19 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:20];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLSocialTimeSlots:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    LODWORD(v16) = 163;
    DWORD2(v16) = 8;
    v17 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLPeerDatabase:(id *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    bzero(v15, 0x32E60uLL);
    v14 = 0u;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v15[0] = 1;
    LODWORD(v14) = 203;
    DWORD2(v14) = 208480;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:{208480, 0, 0, v14, v15}];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLStatistics:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    bzero(v14, 0xE88uLL);
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v14[0] = 1;
    LODWORD(v16) = 223;
    DWORD2(v16) = 3720;
    v17 = v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:3720];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLMasterChannel:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    LODWORD(v16) = 132;
    DWORD2(v16) = 8;
    v17 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLSecondaryMasterChannel:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    LODWORD(v16) = 205;
    DWORD2(v16) = 8;
    v17 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLPreferredChannels:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v15 = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v14 = 1;
    LODWORD(v17) = 244;
    DWORD2(v17) = 12;
    v18 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:12];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLOpMode:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    LODWORD(v16) = 217;
    DWORD2(v16) = 8;
    v17 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLStrategy:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    memset(v14, 0, sizeof(v14));
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    LODWORD(v14[0]) = 1;
    LODWORD(v16) = 148;
    DWORD2(v16) = 24;
    v17 = v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:24];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)rangingCapabilities:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0;
  v17 = 0;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  v14 = 1;
  LODWORD(v19) = 266;
  DWORD2(v19) = 24;
  v20 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:24];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLSidecarDiagnostics:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    memset(v19, 0, sizeof(v19));
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v14 = 0u;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v15 = 1;
    LODWORD(v14) = 351;
    DWORD2(v14) = 80;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v15 length:{80, 0, 0, v14, &v15}];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)powerState:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0;
  v17 = 0;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  v14 = 1;
  LODWORD(v19) = 19;
  DWORD2(v19) = 24;
  v20 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:24];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)chainAck:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0;
  v17 = 0;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  v14 = 1;
  LODWORD(v19) = 174;
  DWORD2(v19) = 24;
  v20 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:24];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)txChainPower:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  v14 = 1;
  LODWORD(v22) = 108;
  DWORD2(v22) = 88;
  v23 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:88];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)desense:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  v14 = 1;
  LODWORD(v18) = 175;
  DWORD2(v18) = 16;
  v19 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:16];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)desenseLevel:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  LODWORD(v16) = 194;
  DWORD2(v16) = 8;
  v17 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)bluetoothCoexistenceConfig:(id *)a3
{
  if (a3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    *a3 = CWFErrorWithDescription(v4, 45, v5);
  }

  return 0;
}

- (id)bluetoothCoexistenceProfiles2GHz:(id *)a3
{
  if (a3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    *a3 = CWFErrorWithDescription(v4, 45, v5);
  }

  return 0;
}

- (id)bluetoothCoexistenceProfiles5GHz:(id *)a3
{
  if (a3)
  {
    v4 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    *a3 = CWFErrorWithDescription(v4, 45, v5);
  }

  return 0;
}

- (id)bluetoothCoexistenceMode:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  LODWORD(v16) = 87;
  DWORD2(v16) = 8;
  v17 = &v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v14)];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)leakyAPStats:(id *)a3
{
  *&v16[9044] = *MEMORY[0x1E69E9840];
  bzero(v16, 0x2354uLL);
  v14 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  v15 = 1;
  LODWORD(v14) = 232;
  DWORD2(v14) = 9048;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v15 length:{9048, 0, 0, v14, &v15}];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)LQMSummary:(id *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  bzero(v14, 0x15A0uLL);
  v16 = 0;
  v14[346] = 0u;
  v15 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  LODWORD(v15) = 386;
  DWORD2(v15) = 5536;
  v16 = v14;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = v7;
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:5536];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLExtensionStateMachineParameters:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v15 = 0;
    v16 = 0;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v14 = 1;
    LODWORD(v18) = 118;
    DWORD2(v18) = 20;
    v19 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:20];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLElectionMetric:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v15 = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v14 = 1;
    LODWORD(v17) = 126;
    DWORD2(v17) = 12;
    v18 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:12];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLPresenceMode:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    LODWORD(v16) = 136;
    DWORD2(v16) = 8;
    v17 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLGuardTime:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    LODWORD(v16) = 124;
    DWORD2(v16) = 8;
    v17 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLAvailabilityWindowAPAlignment:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v16 = 0;
    v15 = 0;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v14 = 1;
    LODWORD(v18) = 127;
    DWORD2(v18) = 16;
    v19 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:16];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLContinuousElectionAlgorithmEnabled:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    LODWORD(v16) = 121;
    DWORD2(v16) = 8;
    v17 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLAFTxMode:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    LODWORD(v16) = 208;
    DWORD2(v16) = 8;
    v17 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLPeerTrafficRegistration:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v27 = 0;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v14 = 0u;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v15 = 1;
    LODWORD(v14) = 164;
    DWORD2(v14) = 184;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v15 length:{184, 0, 0, v14, &v15}];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLEncryptionType:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    LODWORD(v16) = 220;
    DWORD2(v16) = 8;
    v17 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:8];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)AWDLBTLEStateParameters:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(CWFApple80211 *)self isAWDLEnabled])
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    a11Ref = self->_a11Ref;
    __strlcpy_chk();
    v14 = 1;
    LODWORD(v19) = 202;
    DWORD2(v19) = 28;
    v20 = &v14;
    v6 = self->_a11Ref;
    v7 = Apple80211RawGet();
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:28];
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = v7;
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
    *a3 = CWFErrorWithDescription(v11, v12, v13);
  }

  v8 = 0;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)powerDebugInfo:(id *)a3
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    a11Ref = self->_a11Ref;
    v8 = Apple80211Get();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v6];
    }

    CFRelease(v6);
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v8 = -3901;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (v8)
  {
    v10 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v8);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v10);
  }

LABEL_7:

  return v9;
}

- (id)cca:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)rxRate:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)maxLinkSpeed:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211MaxLinkSpeed();
  if (v5)
  {
    if (a3)
    {
      v8 = v5;
      v9 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
      *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v9);
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  }

  return v6;
}

- (id)state:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)powersave:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)maxNSSForAP:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [0 copy];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)txNSS:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211Get();
  if (v5)
  {
    if (a3)
    {
      v8 = v5;
      v9 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
      *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v9);
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  }

  return v6;
}

- (id)countryBandSupport:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211Get();
  if (v5)
  {
    if (a3)
    {
      v8 = v5;
      v9 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
      *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v9);
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  }

  return v6;
}

- (id)beaconCache:(id *)a3
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v9 = 0;
    v12 = -3901;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v6 = Mutable;
  a11Ref = self->_a11Ref;
  v8 = Apple80211Get();
  if (v8)
  {
    v12 = v8;
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] array];
    if (CFArrayGetCount(v6) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = [[CWFScanResult alloc] initWithScanRecord:CFArrayGetValueAtIndex(v6 includeProperties:v10), 0];
        if (v11)
        {
          [v9 addObject:v11];
        }

        ++v10;
      }

      while (CFArrayGetCount(v6) > v10);
    }

    v12 = 0;
  }

  CFRelease(v6);
  if (a3)
  {
LABEL_10:
    if (v12)
    {
      v13 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v12);
      *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v12, v13);
    }
  }

LABEL_12:
  v14 = [v9 copy];

  return v14;
}

- (id)backgroundScanCache:(id *)a3
{
  v51 = *MEMORY[0x1E69E9840];
  bzero(v37, 0x1910uLL);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  LODWORD(v49) = 215;
  DWORD2(v49) = 6416;
  v50 = v37;
  v5 = self->_a11Ref;
  v6 = 0;
  v33 = Apple80211RawGet();
  if (v33)
  {
    v7 = 1;
  }

  else
  {
    v7 = v37[0] == 0;
  }

  if (!v7)
  {
    v12 = 0;
    v6 = 0;
    v13 = 1;
    while (1)
    {
      v35 = *&v37[v13];
      v36 = v37[v13 + 4];
      v14 = [MEMORY[0x1E695DF90] dictionary];
      if (snprintf(__str, 0x12uLL, "%02x:%02x:%02x:%02x:%02x:%02x", v35, BYTE1(v35), BYTE2(v35), BYTE3(v35), BYTE4(v35), BYTE5(v35)) != 17)
      {
        break;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__str];
      v16 = CWFCorrectEthernetAddressString(v15);
      [v14 setObject:v16 forKeyedSubscript:@"BSSID"];

      v17 = [MEMORY[0x1E696AD98] numberWithShort:v36];
      [v14 setObject:v17 forKeyedSubscript:@"RSSI"];

      if (HIDWORD(v35))
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
        [v14 setObject:v18 forKeyedSubscript:@"CHANNEL"];

        if (HIDWORD(v35) <= 0xE)
        {
          v19 = 10;
        }

        else
        {
          v19 = 18;
        }

        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:BYTE6(v35) & 1];
        [v14 setObject:v20 forKeyedSubscript:@"CONNECTED_BSSID"];

        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v19];
        [v14 setObject:v21 forKeyedSubscript:@"CHANNEL_FLAGS"];

        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1000 * DWORD2(v35)];
        [v14 setObject:v22 forKeyedSubscript:@"AGE"];

        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v38 - 1000000000 * DWORD2(v35)];
        [v14 setObject:v23 forKeyedSubscript:@"TIMESTAMP"];

        [v14 setObject:&unk_1F5BB9AF0 forKeyedSubscript:@"SCAN_RESULT_NET_FLAGS"];
        [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SCAN_RESULT_FROM_BG_SCAN"];
        v24 = [CWFScanResult alloc];
        v25 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5BBB830, &unk_1F5BBB848, &unk_1F5BBB860, &unk_1F5BBB878, &unk_1F5BBB890, &unk_1F5BBB8A8, 0}];
        v26 = [(CWFScanResult *)v24 initWithScanRecord:v14 includeProperties:v25];

        if (!v6)
        {
          v6 = [MEMORY[0x1E695DF70] array];
        }

        [v6 addObject:v26];
      }

      else
      {
        v27 = CWFGetOSLog();
        if (v27)
        {
          v26 = CWFGetOSLog();
        }

        else
        {
          v26 = MEMORY[0x1E69E9C10];
          v28 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v32 = [MEMORY[0x1E695DEF0] dataWithBytes:&v35 length:20];
          v29 = CWFHexadecimalStringFromData(v32);
          v39 = 136446978;
          v40 = "[CWFApple80211 backgroundScanCache:]";
          v41 = 2082;
          v42 = "CWFApple80211.m";
          v43 = 1024;
          v44 = 2472;
          v45 = 2112;
          v46 = v29;
          LODWORD(v31) = 38;
          v30 = &v39;
          _os_log_send_and_compose_impl();
        }
      }

      ++v12;
      v13 += 5;
      if (v12 >= v37[0])
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  if (a3 && v33)
  {
    v8 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v33);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v33, v8);
  }

  v9 = [v6 copy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)blockedBands:(id *)a3
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    a11Ref = self->_a11Ref;
    v8 = Apple80211Get();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6];
    }

    CFRelease(v6);
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v8 = -3901;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (v8)
  {
    v10 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v8);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v10);
  }

LABEL_7:

  return v9;
}

- (id)hostAPStationList:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v9 = 0;
    v19 = -3901;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v6 = Mutable;
  a11Ref = self->_a11Ref;
  v8 = Apple80211Get();
  if (v8)
  {
    v19 = v8;
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v6;
    v10 = v6;
    v11 = [(__CFArray *)v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = objc_alloc_init(CWFHostAPStation);
          v17 = [v15 objectForKeyedSubscript:@"STATION_MAC"];
          v18 = CWFCorrectEthernetAddressString(v17);
          [(CWFHostAPStation *)v16 setBSSID:v18];

          [v9 addObject:v16];
        }

        v12 = [(__CFArray *)v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    v19 = 0;
    v6 = v24;
  }

  CFRelease(v6);
  if (a3)
  {
LABEL_12:
    if (v19)
    {
      v20 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v19);
      *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v19, v20);
    }
  }

LABEL_14:
  v21 = [v9 copy];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)LQMConfig:(id *)a3
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    a11Ref = self->_a11Ref;
    v8 = Apple80211Get();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v6];
    }

    CFRelease(v6);
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v8 = -3901;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (v8)
  {
    v10 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v8);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v10);
  }

LABEL_7:

  return v9;
}

- (BOOL)setLQMConfig:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E12E9420](self->_a11Ref, 337, 0, a3, 0xFFFFFFFFLL);
  v6 = v5;
  if (a4 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a4 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v6, v7);
  }

  return v6 == 0;
}

- (id)currentNetwork:(id *)a3
{
  a11Ref = self->_a11Ref;
  v5 = Apple80211CopyCurrentNetwork();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[CWFScanResult alloc] initWithScanRecord:0 includeProperties:0];
  }

  if (a3 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v5, v7);
  }

  return v6;
}

- (id)hardwareMACAddress:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  a11Ref = self->_a11Ref;
  __strlcpy_chk();
  v15 = 1;
  LODWORD(v18) = 359;
  DWORD2(v18) = 12;
  v19 = &v15;
  v6 = self->_a11Ref;
  v7 = Apple80211RawGet();
  if (v7)
  {
    if (a3)
    {
      v12 = *MEMORY[0x1E696A798];
      v13 = v7;
      v14 = CWFErrorDescription(*MEMORY[0x1E696A798], v7);
      *a3 = CWFErrorWithDescription(v12, v13, v14);

      a3 = 0;
    }

    v9 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v16 length:6];
    v9 = v8;
    if (v8)
    {
      a3 = CWFEthernetAddressStringFromData(v8);
    }

    else
    {
      a3 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return a3;
}

- (id)powerTableInfo:(id *)a3
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    a11Ref = self->_a11Ref;
    v8 = Apple80211Get();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v6];
    }

    CFRelease(v6);
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v8 = -3901;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (v8)
  {
    v10 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v8);
    *a3 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v8, v10);
  }

LABEL_7:

  return v9;
}

- (BOOL)setUCMExtProfile:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E12E9420](self->_a11Ref, 562, 0, a3, 0xFFFFFFFFLL);
  v6 = v5;
  if (a4 && v5)
  {
    v7 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", v5);
    *a4 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", v6, v7);
  }

  return v6 == 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  interfaceName = self->_interfaceName;
  v5 = sub_1E0BEE7B4(self->_virtualInterfaceRole);
  v6 = [v3 stringWithFormat:@"name=%@, role=%@, parent=%@", interfaceName, v5, self->_virtualInterfaceParent];

  return v6;
}

@end