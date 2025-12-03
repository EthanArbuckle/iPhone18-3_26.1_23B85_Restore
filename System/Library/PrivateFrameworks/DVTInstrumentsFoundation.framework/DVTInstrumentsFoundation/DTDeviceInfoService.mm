@interface DTDeviceInfoService
+ (void)registerCapabilities:(id)capabilities;
- (DTDeviceInfoService)initWithChannel:(id)channel;
- (id)_configurationProperties;
- (id)_getIOMFBProperties;
- (id)_lookupInt32Sysctl:(const char *)sysctl;
- (id)_lookupInt64Sysctl:(const char *)sysctl;
- (id)_processDictionaryForProcInfo:(id)info;
- (id)allAnalysisModes;
- (id)counterAnalysisWithName:(id)name;
- (id)createSignatureFromLibraryUUID:(id)d sharedCacheUUID:(id)iD andPath:(id)path;
- (id)deepSymbolOwnerSignatureForPid:(id)pid uuid:(id)uuid;
- (id)directoryListingForPath:(id)path;
- (id)execnameForPid:(id)pid;
- (id)hardwareInformation;
- (id)iconDescriptionFileForAppPath:(id)path;
- (id)isRunningPid:(id)pid;
- (id)kpepDatabase;
- (id)lookupSysctl:(const char *)sysctl;
- (id)machKernelName;
- (id)machTimeInfo;
- (id)nameForUID:(id)d;
- (id)productVersion;
- (id)retrieveHardwareCounterConfigurableOffset;
- (id)runningProcessWithPid:(id)pid;
- (id)runningProcesses;
- (id)symbolicatorSignatureForPid:(id)pid trackingSelector:(id)selector;
- (id)traceCodesFile;
- (id)uniqueID;
- (int)hwCPUsubtype;
- (int)hwCPUtype;
- (int)numberOfCpus;
- (int)numberOfPhysicalCpus;
- (void)enableExpiredPidTracking:(id)tracking;
- (void)messageReceived:(id)received;
- (void)unregisterSignatureTrackingForPid:(id)pid;
@end

@implementation DTDeviceInfoService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [capabilitiesCopy publishCapability:DTDefaultDeviceInfoServiceIdentifier withVersion:117 forClass:self];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v6 = processInfo;
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v7 = 10000 * (v13 & ~(v13 >> 63)) + 100 * (v14 & ~(v14 >> 63));
  v8 = v15 & ~(v15 >> 63);
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.systemversion" withVersion:(v7 + v8) forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.recordOptions" withVersion:1 forClass:self];
  v9 = objc_autoreleasePoolPush();
  v10 = MTLCreateSystemDefaultDevice();
  if (v10)
  {
    [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.metal" withVersion:1 forClass:self];
  }

  objc_autoreleasePoolPop(v9);
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.condition-inducer" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.energytracing.location" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.target.user-page-size" withVersion:getpagesize() forClass:self];
  v11.numer = 0;
  v16 = 4;
  sysctlbyname("hw.physicalcpu_max", &v11, &v16, 0, 0);
  [capabilitiesCopy publishCapability:@"com.apple.instruments.target.physical-cpus" withVersion:v11.numer forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.target.logical-cpus" withVersion:DTGetCoreCount() forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.target.ios" withVersion:(v7 + v8) forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.app-life-cycle" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.dyld-tracing" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.scenekit-tracing" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.gcd-perf" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.gpu-allocation" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.counters.advertising" withVersion:1 forClass:self];
  v12 = 0;
  v16 = 4;
  if (sysctlbyname("kern.monotonic.supported", &v12, &v16, 0, 0) < 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_24802C328();
  }

  if (v12 >= 1)
  {
    [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.counters" withVersion:1 forClass:self];
  }

  v11 = 0;
  mach_timebase_info(&v11);
  [capabilitiesCopy publishCapability:@"com.apple.instruments.target.mtb.numer" withVersion:v11.numer forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.target.mtb.denom" withVersion:v11.denom forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.deviceinfo.devicesymbolication" withVersion:1 forClass:self];
}

- (DTDeviceInfoService)initWithChannel:(id)channel
{
  channelCopy = channel;
  v22.receiver = self;
  v22.super_class = DTDeviceInfoService;
  v5 = [(DTXService *)&v22 initWithChannel:channelCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    peerTrackingSelectorsByPid = v5->_peerTrackingSelectorsByPid;
    v5->_peerTrackingSelectorsByPid = v6;

    v8 = dispatch_queue_create("symbolicator tracking", 0);
    trackingSymbolicatorQueue = v5->_trackingSymbolicatorQueue;
    v5->_trackingSymbolicatorQueue = v8;

    v10 = objc_opt_new();
    sharedCacheSymbolicators = v5->_sharedCacheSymbolicators;
    v5->_sharedCacheSymbolicators = v10;

    v12 = v5->_trackingSymbolicatorQueue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_247F71A20;
    v19[3] = &unk_278EF14D8;
    v13 = v5;
    v20 = v13;
    v21 = channelCopy;
    v14 = pid_watcher_connect(0, v12, v19);
    dtsecurityPidWatcher = v13->_dtsecurityPidWatcher;
    v13->_dtsecurityPidWatcher = v14;

    v16 = os_log_create("com.apple.DTServiceHub", "Device Info Service");
    logHandle = v13->_logHandle;
    v13->_logHandle = v16;
  }

  return v5;
}

- (void)messageReceived:(id)received
{
  v26[1] = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if ([receivedCopy errorStatus] == 2)
  {
    trackingSymbolicatorQueue = self->_trackingSymbolicatorQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F71E70;
    block[3] = &unk_278EF1070;
    block[4] = self;
    dispatch_async(trackingSymbolicatorQueue, block);
    if (self->_expiredPidTrackingEnabled)
    {
      v6 = +[DTExpiredPidCacheService defaultCache];
      [v6 enableCaching:0];

      self->_expiredPidTrackingEnabled = 0;
    }
  }

  else
  {
    v7 = [receivedCopy stringForMessageKey:@"infoRequest"];
    v8 = [v7 isEqualToString:@"ktraceMachineInformation"];

    if (v8)
    {
      v23 = 0;
      v9 = authorized_ktrace_machine_cpu_topologies(0, &v23);
      if (v9)
      {
        v10 = MEMORY[0x277CCA9B8];
        v11 = DTDefaultDeviceInfoServiceIdentifier;
        v25 = *MEMORY[0x277CCA450];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to fetch machine cores information: %d", v9];
        v26[0] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        v14 = [v10 errorWithDomain:v11 code:15 userInfo:v13];

        v15 = [receivedCopy newReplyWithError:v14];
      }

      else
      {
        v15 = [receivedCopy newReplyWithObject:v23];
      }

      channel = [(DTXService *)self channel];
      [channel sendControlAsync:v15 replyHandler:0];
    }

    else
    {
      v16 = [receivedCopy stringForMessageKey:@"infoRequest"];
      v17 = [v16 isEqualToString:@"configurationInformation"];

      if (v17)
      {
        _configurationProperties = [(DTDeviceInfoService *)self _configurationProperties];
        v19 = [receivedCopy newReplyWithObject:_configurationProperties];

        channel2 = [(DTXService *)self channel];
        [channel2 sendControlAsync:v19 replyHandler:0];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)machTimeInfo
{
  v20 = *MEMORY[0x277D85DE8];
  info = 0;
  times = mach_get_times();
  if (times)
  {
    v3 = times;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v17 = v3;
      v18 = 2080;
      v19 = mach_error_string(v3);
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Device Info Service was unable to create get times: %#x - %s", buf, 0x12u);
    }
  }

  mach_timebase_info(&info);
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
  v15[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:info.numer];
  v15[1] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:info.denom];
  v15[2] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
  v15[3] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:0 / 1000000000.0 + 0];
  v15[4] = v9;
  name = [localTimeZone name];
  v15[5] = name;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_processDictionaryForProcInfo:(id)info
{
  v51[5] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([infoCopy isZombie])
  {
    v4 = 0;
    goto LABEL_36;
  }

  v5 = [infoCopy pid];
  if (qword_27EE84210 != -1)
  {
    sub_24802C3A8();
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = dictionary;
  if (v5 == dword_27EE84208)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:DTDeviceInfoRunningProcessIsMatchingServicePid];
  }

  if ([infoCopy shouldAnalyzeWithCorpse])
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:DTDeviceInfoRunningProcessShouldAnalyzeWithCorpse];
  }

  v8 = qword_27EE84218;
  if (!qword_27EE84218 || ([infoCopy valueForEnvVar:@"XPC_SIMULATOR_LAUNCHD_NAME"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v10))
  {
    v11 = MEMORY[0x277CBEAA8];
    startTime = [infoCopy startTime];
    [infoCopy startTime];
    v49 = [v11 dateWithTimeIntervalSince1970:v13 / 1000000.0 + startTime];
    if ([infoCopy isCFM])
    {
      requestedAppName = [infoCopy requestedAppName];
      lastPathComponent = [requestedAppName lastPathComponent];

      if (!lastPathComponent)
      {
        goto LABEL_15;
      }
    }

    else
    {
      lastPathComponent = [infoCopy name];
      if (!lastPathComponent)
      {
LABEL_15:
        lastPathComponent = [MEMORY[0x277CCACA8] stringWithFormat:@"PID %d", v5];
      }
    }

    v16 = objc_alloc(MEMORY[0x277CC1E70]);
    v17 = MEMORY[0x277CBEBC0];
    realAppName = [infoCopy realAppName];
    v19 = [realAppName rangeOfString:@".app" options:4];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = realAppName;
    }

    else
    {
      [realAppName substringToIndex:v19 + v20];
      v46 = v5;
      v22 = v47 = v7;
      lastPathComponent2 = [realAppName lastPathComponent];
      lastPathComponent3 = [v22 lastPathComponent];
      [lastPathComponent3 stringByDeletingPathExtension];
      v26 = v25 = lastPathComponent;
      v27 = [lastPathComponent2 isEqualToString:v26];

      lastPathComponent = v25;
      if (v27)
      {
        v28 = v22;
      }

      else
      {
        v28 = realAppName;
      }

      v21 = v28;

      v5 = v46;
      v7 = v47;
    }

    v29 = [v17 fileURLWithPath:v21];
    v30 = [v16 initWithURL:v29 allowPlaceholder:0 error:0];

    if (v30)
    {
      bundleIdentifier = [v30 bundleIdentifier];
    }

    else
    {
      bundleIdentifier = 0;
    }

    v32 = [infoCopy isSemiCriticalProcess] ^ 1;
    if (v30)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v50[0] = DTDeviceInfoRunningProcessPidKey;
    v34 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    v51[0] = v34;
    v50[1] = DTDeviceInfoRunningProcessIsApplicationKey;
    v35 = [MEMORY[0x277CCABB0] numberWithBool:v33];
    v51[1] = v35;
    v51[2] = lastPathComponent;
    v48 = lastPathComponent;
    v50[2] = DTDeviceInfoRunningProcessNameKey;
    v50[3] = DTDeviceInfoRunningProcessRealAppNameKey;
    realAppName2 = [infoCopy realAppName];
    v50[4] = DTDeviceInfoRunningProcessStartDateKey;
    v51[3] = realAppName2;
    v51[4] = v49;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:5];
    [v7 addEntriesFromDictionary:v37];

    if (bundleIdentifier)
    {
      [v7 setObject:bundleIdentifier forKeyedSubscript:DTDeviceInfoRunningProcessBundleIdentifierKey];
    }

    v38 = MEMORY[0x277D46F48];
    v39 = [MEMORY[0x277D46F50] identifierWithPid:v5];
    v40 = [v38 handleForIdentifier:v39 error:0];

    currentState = [v40 currentState];
    if ([currentState taskState] == 4)
    {
      endowmentNamespaces = [currentState endowmentNamespaces];
      v43 = [endowmentNamespaces containsObject:*MEMORY[0x277D0AC90]];

      if (v43)
      {
        [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:DTDeviceInfoRunningProcessForegroundRunningKey];
      }
    }

    v4 = v7;

    goto LABEL_35;
  }

  v4 = 0;
LABEL_35:

LABEL_36:
  v44 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)runningProcesses
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc_init(MEMORY[0x277D6AF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allProcInfos = [v4 allProcInfos];
  v6 = [allProcInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allProcInfos);
        }

        v10 = [(DTDeviceInfoService *)self _processDictionaryForProcInfo:*(*(&v16 + 1) + 8 * i)];
        if (v10)
        {
          [array addObject:v10];
        }
      }

      v7 = [allProcInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];
  v13 = [environment objectForKeyedSubscript:@"XPC_SIMULATOR_LAUNCHD_NAME"];

  if (!v13)
  {
    [array addObject:&unk_285A36ED0];
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)nameForUID:(id)d
{
  dCopy = d;
  intValue = [dCopy intValue];
  if (qword_27EE84220)
  {
    v5 = [qword_27EE84220 objectForKey:dCopy];
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = qword_27EE84220;
    qword_27EE84220 = v6;
  }

  v8 = getpwuid(intValue);
  if (v8 && v8->pw_name && *v8->pw_name && ([MEMORY[0x277CCACA8] stringWithUTF8String:?], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v9;
    [qword_27EE84220 setObject:v9 forKey:dCopy];
  }

  else
  {
    v5 = @"???";
  }

LABEL_11:
  if ([(__CFString *)v5 isEqualToString:@"root"])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = mainBundle;
    v12 = @"root";
LABEL_15:
    v13 = [mainBundle localizedStringForKey:v12 value:&stru_285A19CB8 table:0];

    goto LABEL_17;
  }

  if ([(__CFString *)v5 isEqualToString:@"nobody"])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = mainBundle;
    v12 = @"nobody";
    goto LABEL_15;
  }

  v13 = v5;
LABEL_17:

  return v13;
}

- (id)execnameForPid:(id)pid
{
  v12 = *MEMORY[0x277D85DE8];
  pidCopy = pid;
  intValue = [pidCopy intValue];
  if (intValue < 1)
  {
    if (!intValue)
    {
      CSSymbolicatorCreateWithMachKernel();
      CSSymbolicatorGetAOutSymbolOwner();
      Name = CSSymbolOwnerGetName();
      if (Name)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:Name];
      }

      else
      {
        v5 = 0;
      }

      CSRelease();
      if (v5)
      {
        goto LABEL_19;
      }
    }
  }

  else if (proc_pidpath(intValue, buffer, 0x400u) >= 1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
    if (v5)
    {
      goto LABEL_19;
    }
  }

  v7 = +[DTExpiredPidCacheService defaultCache];
  v8 = [v7 signatureForExpiredPid:pidCopy];

  if (v8 && (CSSymbolicatorCreateWithSignature(), (CSIsNull() & 1) == 0))
  {
    CSSymbolicatorGetAOutSymbolOwner();
    if (CSIsNull())
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:CSSymbolOwnerGetName()];
    }

    CSRelease();
  }

  else
  {
    v5 = 0;
  }

LABEL_19:
  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)isRunningPid:(id)pid
{
  intValue = [pid intValue];
  v4 = objc_alloc_init(MEMORY[0x277D6AF90]);
  v5 = v4;
  v6 = MEMORY[0x277CCABB0];
  if (intValue)
  {
    v7 = [v4 procInfoWithPID:intValue];
    v8 = [v6 numberWithBool:v7 != 0];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
  }

  return v8;
}

- (id)runningProcessWithPid:(id)pid
{
  intValue = [pid intValue];
  if (intValue)
  {
    v5 = intValue;
    v6 = objc_alloc_init(MEMORY[0x277D6AF90]);
    v7 = [v6 procInfoWithPID:v5];
    if (v7)
    {
      v8 = [(DTDeviceInfoService *)self _processDictionaryForProcInfo:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = &unk_285A36ED0;
  }

  return v8;
}

- (id)machKernelName
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 1024;
  v2 = sysctlbyname("kern.version", v17, &v16, 0, 0);
  v3 = @"mach_kernel";
  if (!v2 && v16 <= 0x3FF)
  {
    v4 = 0;
    v5 = v17;
    do
    {
      while (*v5++ == 47)
      {
        v4 = v5;
      }
    }

    while (*(v5 - 1));
    if (v4)
    {
      v6 = *v4;
      v7 = v4;
      if (v6 != 95)
      {
        v7 = v4;
        do
        {
          *v7 = __tolower(v6);
          v8 = *++v7;
          LOBYTE(v6) = v8;
        }

        while (v8 != 95);
      }

      *v7 = 0;
      v9 = v7 + 1;
      do
      {
        v11 = *v9++;
        v10 = v11;
      }

      while (v11 != 95);
      v12 = v9;
      do
      {
        *(v12 - 1) = __tolower(v10);
        v13 = *v12++;
        v10 = v13;
      }

      while (v13);
    }

    else
    {
      v9 = "";
      v4 = "";
    }

    snprintf(__str, 0x400uLL, "/mach.%s.%s", v4, v9);
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)deepSymbolOwnerSignatureForPid:(id)pid uuid:(id)uuid
{
  pidCopy = pid;
  uuidCopy = uuid;
  if (uuidCopy)
  {
    unsignedIntValue = [pidCopy unsignedIntValue];
    if (unsignedIntValue == -1)
    {
      v12 = uuidCopy;
      CSSymbolicatorCreateWithMachKernelFlagsAndNotification();
      v18 = 0;
      v19 = 0;
      [v12 getUUIDBytes:&v18];

      CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime();
      Signature = 0;
      if ((CSIsNull() & 1) == 0)
      {
        Signature = CSSymbolOwnerCreateSignature();
      }

      CSRelease();
    }

    else
    {
      v9 = unsignedIntValue;
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = sub_247F72FE8;
      v22 = sub_247F72FF8;
      v23 = 0;
      v17 = 0uLL;
      [uuidCopy getUUIDBytes:&v17];
      trackingSymbolicatorQueue = self->_trackingSymbolicatorQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247F73000;
      block[3] = &unk_278EF1500;
      block[4] = self;
      block[5] = &v18;
      v15 = v9;
      v16 = v17;
      dispatch_sync(trackingSymbolicatorQueue, block);
      Signature = v19[5];
      _Block_object_dispose(&v18, 8);
    }
  }

  else
  {
    Signature = 0;
  }

  return Signature;
}

- (id)symbolicatorSignatureForPid:(id)pid trackingSelector:(id)selector
{
  v28 = *MEMORY[0x277D85DE8];
  pidCopy = pid;
  selectorCopy = selector;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_247F72FE8;
  v24 = sub_247F72FF8;
  v25 = 0;
  unsignedIntValue = [pidCopy unsignedIntValue];
  if (unsignedIntValue)
  {
    trackingSymbolicatorQueue = self->_trackingSymbolicatorQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F73288;
    block[3] = &unk_278EF1528;
    v15 = selectorCopy;
    selfCopy = self;
    v17 = pidCopy;
    v18 = &v20;
    v19 = unsignedIntValue;
    dispatch_sync(trackingSymbolicatorQueue, block);
    v10 = v21[5];
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v27 = unsignedIntValue;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Device Info Service was unable to create symbolicator for PID %d", buf, 8u);
      }

      v10 = v21[5];
    }

    Signature = v10;
  }

  else
  {
    CSSymbolicatorCreateWithMachKernel();
    Signature = CSSymbolicatorCreateSignature();
    CSRelease();
  }

  _Block_object_dispose(&v20, 8);

  v12 = *MEMORY[0x277D85DE8];

  return Signature;
}

- (void)unregisterSignatureTrackingForPid:(id)pid
{
  pidCopy = pid;
  trackingSymbolicatorQueue = self->_trackingSymbolicatorQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F73450;
  v7[3] = &unk_278EF1550;
  v7[4] = self;
  v8 = pidCopy;
  v6 = pidCopy;
  dispatch_sync(trackingSymbolicatorQueue, v7);
}

- (void)enableExpiredPidTracking:(id)tracking
{
  trackingCopy = tracking;
  expiredPidTrackingEnabled = self->_expiredPidTrackingEnabled;
  v7 = trackingCopy;
  if (expiredPidTrackingEnabled != [trackingCopy BOOLValue])
  {
    self->_expiredPidTrackingEnabled = [v7 BOOLValue];
    v6 = +[DTExpiredPidCacheService defaultCache];
    [v6 enableCaching:self->_expiredPidTrackingEnabled];
  }
}

- (id)directoryListingForPath:(id)path
{
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v8 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v8];

  return v6;
}

- (id)iconDescriptionFileForAppPath:(id)path
{
  pathCopy = path;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  if (!NSClassFromString(&cfstr_Isicon.isa))
  {
    v20 = 0;
    goto LABEL_13;
  }

  v6 = [objc_alloc(MEMORY[0x277D1B1B0]) initWithURL:v5];
  v7 = [objc_alloc(MEMORY[0x277D1B1D0]) initWithSize:32.0 scale:{32.0, 2.0}];
  v8 = [v6 prepareImageForDescriptor:v7];
  v9 = v8;
  if (v8)
  {
    cGImage = [v8 CGImage];
    Width = CGImageGetWidth(cGImage);
    Height = CGImageGetHeight(cGImage);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (DeviceRGB)
    {
      v14 = DeviceRGB;
      v31 = v6;
      v15 = malloc_type_calloc(Height, 32 * Width, 0xD684636BuLL);
      v16 = CGBitmapContextCreate(v15, Width, Height, 8uLL, 32 * Width, v14, 0x2002u);
      if (v16)
      {
        v33.size.width = Width;
        v33.size.height = Height;
        v33.origin.x = 0.0;
        v33.origin.y = 0.0;
        c = v16;
        CGContextDrawImage(v16, v33, cGImage);
        v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v15 length:32 * Width * Height freeWhenDone:1];
        v29 = MEMORY[0x277CBEAC0];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:Width];
        v19 = [MEMORY[0x277CCABB0] numberWithInt:Height];
        v20 = [v29 dictionaryWithObjectsAndKeys:{v17, @"imageData", v18, @"width", v19, @"height", 0}];

        CGColorSpaceRelease(v14);
        CGContextRelease(c);
      }

      else
      {
        CGColorSpaceRelease(v14);
        v20 = 0;
      }

      v6 = v31;
      goto LABEL_12;
    }
  }

  else
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_24802C3BC(pathCopy, logHandle, v22, v23, v24, v25, v26, v27);
    }
  }

  v20 = 0;
LABEL_12:

LABEL_13:

  return v20;
}

- (id)createSignatureFromLibraryUUID:(id)d sharedCacheUUID:(id)iD andPath:(id)path
{
  v28[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  pathCopy = path;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_247F72FE8;
  v26 = sub_247F72FF8;
  v27 = 0;
  v28[0] = 0;
  v28[1] = 0;
  [dCopy getUUIDBytes:v28];
  v11 = [(DTDSCSymbolicatorCache *)self->_sharedCacheSymbolicators symbolicatorForSharedCacheUUID:iDCopy];
  v13 = v12;
  if ((CSIsNull() & 1) == 0)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_247F73A2C;
    v19[3] = &unk_278EF1578;
    v20 = pathCopy;
    v21 = &v22;
    MEMORY[0x24C1C22F0](v11, v13, v28, 0x8000000000000000, v19);
  }

  v14 = v23[5];
  if (!v14)
  {
    v15 = pathCopy;
    [pathCopy UTF8String];
    CSSymbolicatorForeachSymbolicatorWithPath();
    v14 = v23[5];
  }

  v16 = v14;
  _Block_object_dispose(&v22, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (int)numberOfPhysicalCpus
{
  v4 = 0;
  v3 = 4;
  sysctlbyname("hw.physicalcpu_max", &v4, &v3, 0, 0);
  return v4;
}

- (int)numberOfCpus
{
  result = DTGetCoreCount();
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (int)hwCPUsubtype
{
  v3 = -1;
  if (DTIntegerSysctlByName("hw.cpusubtype", &v3))
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

- (int)hwCPUtype
{
  v3 = -1;
  if (DTIntegerSysctlByName("hw.cputype", &v3))
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

- (id)hardwareInformation
{
  v16[5] = *MEMORY[0x277D85DE8];
  v15[0] = @"numberOfPhysicalCpus";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{-[DTDeviceInfoService numberOfPhysicalCpus](self, "numberOfPhysicalCpus")}];
  v16[0] = v3;
  v15[1] = @"numberOfCpus";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[DTDeviceInfoService numberOfCpus](self, "numberOfCpus")}];
  v16[1] = v4;
  v15[2] = @"hwCPUtype";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[DTDeviceInfoService hwCPUtype](self, "hwCPUtype")}];
  v16[2] = v5;
  v15[3] = @"hwCPUsubtype";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[DTDeviceInfoService hwCPUsubtype](self, "hwCPUsubtype")}];
  v16[3] = v6;
  v15[4] = @"hwCPU64BitCapable";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[DTDeviceInfoService hwCPU64BitCapable](self, "hwCPU64BitCapable")}];
  v16[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v9 = [v8 mutableCopy];
  v10 = objc_alloc_init(DTDeviceProcessorTraceState);
  dictionaryRepresentation = [(DTDeviceProcessorTraceState *)v10 dictionaryRepresentation];
  [v9 setObject:dictionaryRepresentation forKeyedSubscript:@"ProcessorTraceState"];

  v12 = [v9 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)lookupSysctl:(const char *)sysctl
{
  size = 0;
  sysctlbyname(sysctl, 0, &size, 0, 0);
  v4 = malloc_type_malloc(size, 0x30C0E75CuLL);
  sysctlbyname(sysctl, v4, &size, 0, 0);
  v5 = [MEMORY[0x277CCACA8] stringWithCString:v4 encoding:1];
  free(v4);

  return v5;
}

- (id)_lookupInt32Sysctl:(const char *)sysctl
{
  v7 = 0;
  v6 = 4;
  v3 = sysctlbyname(sysctl, &v7, &v6, 0, 0);
  v4 = 0;
  if (!v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  }

  return v4;
}

- (id)_lookupInt64Sysctl:(const char *)sysctl
{
  v6 = 8;
  v7 = 0;
  v3 = sysctlbyname(sysctl, &v7, &v6, 0, 0);
  v4 = 0;
  if (!v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  }

  return v4;
}

- (id)_getIOMFBProperties
{
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("IOMobileFramebuffer");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    v6 = objc_opt_new();
    v7 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(v5, @"IOMFB_KTRACE_API_VERSION", *MEMORY[0x277CBECE8], 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = CFProperty;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = CFProperty;
        goto LABEL_10;
      }

      stringValue = [CFProperty stringValue];
    }

    v11 = stringValue;

    if (!v11)
    {
      goto LABEL_11;
    }

    [v6 setObject:v11 forKeyedSubscript:DTDeviceInfoConfigIOMFBTracepointVersionKey];
LABEL_10:

LABEL_11:
    v12 = IORegistryEntryCreateCFProperty(v5, @"NormalModeEnable", v7, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v12)
      {
        goto LABEL_15;
      }

      [v6 setObject:v12 forKeyedSubscript:DTDeviceInfoConfigIOMFBAPTEnabledKey];
    }

LABEL_15:
    v13 = IORegistryEntryCreateCFProperty(v5, @"M3TimingParameters", v7, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v13)
      {
LABEL_25:
        IOObjectRelease(v5);
        if ([v6 count])
        {
          v10 = [v6 copy];
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_29;
      }

      v14 = [v13 objectForKeyedSubscript:@"subframe-duration-nclks"];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 setObject:v14 forKeyedSubscript:DTDeviceInfoConfigIOMFBAPTQuantaTimeKey];
        }
      }

      v15 = [v13 objectForKeyedSubscript:@"display-lead-time-nclks"];
      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 setObject:v15 forKeyedSubscript:DTDeviceInfoConfigIOMFBAPTQuantaLeadTimeKey];
        }
      }
    }

    goto LABEL_25;
  }

  v10 = 0;
LABEL_29:

  return v10;
}

- (id)uniqueID
{
  v2 = qword_27EE84228;
  if (!qword_27EE84228)
  {
    memset(v9, 0, sizeof(v9));
    v8 = xmmword_24803CE10;
    if (gethostuuid(v9, &v8) == -1)
    {
      v6 = @"MISSING";
      goto LABEL_7;
    }

    v3 = CFUUIDCreateFromUUIDBytes(0, *v9);
    v4 = CFUUIDCreateString(0, v3);
    v5 = qword_27EE84228;
    qword_27EE84228 = v4;

    CFRelease(v3);
    v2 = qword_27EE84228;
  }

  if (!v2)
  {
    v2 = @"MISSING";
  }

  v6 = v2;
LABEL_7:

  return v6;
}

- (id)productVersion
{
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v3 = [v2 objectForKey:@"ProductVersion"];

  return v3;
}

- (id)_configurationProperties
{
  v3 = objc_opt_new();
  v4 = [(DTDeviceInfoService *)self _lookupInt32Sysctl:"vm.pagesize"];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:DTDeviceInfoConfigVMPageSizeKey];
  }

  v5 = [(DTDeviceInfoService *)self _lookupInt32Sysctl:"hw.pagesize"];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:DTDeviceInfoConfigHWPageSizeKey];
  }

  v6 = [(DTDeviceInfoService *)self _lookupInt64Sysctl:"hw.memsize"];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:DTDeviceInfoConfigMemSizeSizeKey];
  }

  _getIOMFBProperties = [(DTDeviceInfoService *)self _getIOMFBProperties];
  if (_getIOMFBProperties)
  {
    [v3 addEntriesFromDictionary:_getIOMFBProperties];
  }

  return v3;
}

- (id)traceCodesFile
{
  v14 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:@"/usr/share/misc/trace.codes" encoding:4 error:&v14];
  v4 = v14;
  if (v4)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_24802C428(v4, logHandle, v6, v7, v8, v9, v10, v11);
    }

    v12 = 0;
  }

  else
  {
    v12 = v3;
  }

  return v12;
}

- (id)kpepDatabase
{
  if (self->_kpepDB)
  {
    goto LABEL_8;
  }

  v3 = kpep_db_create();
  if (v3)
  {
    v4 = v3;
    if (v3 != 7 || DTCoreIs64BitCapable())
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_24802C494(v4, logHandle);
      }
    }
  }

  kpepDB = self->_kpepDB;
  if (kpepDB)
  {
LABEL_8:
    v7 = kpep_db_serialize();
    if (v7)
    {
      NSLog(&cfstr_UnableToSerial.isa, v7);
      kpepDB = 0;
    }

    else
    {
      kpepDB = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:0 length:0];
    }
  }

  return kpepDB;
}

- (id)counterAnalysisWithName:(id)name
{
  nameCopy = name;
  NSLog(&cfstr_QueryingAnalys.isa, nameCopy);
  v4 = [XRBottlenecksAnalysisModeManager counterAnalysisWithName:nameCopy];

  return v4;
}

- (id)allAnalysisModes
{
  NSLog(&cfstr_QueryingAllAna.isa, a2);

  return MEMORY[0x2821F9670](XRBottlenecksAnalysisModeManager, sel_allAnalysisModes);
}

- (id)retrieveHardwareCounterConfigurableOffset
{
  NSLog(&cfstr_RetrievingHard.isa, a2);
  v2 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:kpc_get_counter_count()];

  return v2;
}

@end