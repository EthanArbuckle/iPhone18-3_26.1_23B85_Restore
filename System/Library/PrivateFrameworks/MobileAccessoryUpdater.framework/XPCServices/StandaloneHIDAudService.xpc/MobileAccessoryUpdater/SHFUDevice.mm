@interface SHFUDevice
+ (BOOL)ignoreVersionCheck;
+ (id)getDevicesWithMatchingDict:(__CFDictionary *)dict hasPowerSource:(BOOL)source errorDomain:(id)domain error:(id *)error delegate:(id)delegate logHandle:(id)handle;
+ (id)getNumberPropertyFromService:(unsigned int)service withKey:(__CFString *)key recursive:(BOOL)recursive;
+ (id)getStringPropertyFromService:(unsigned int)service withKey:(__CFString *)key;
+ (id)sendAllFirmwaresToDeviceWithVendorID:(id)d productID:(id)iD interfaceNum:(id)num hasPowerSource:(BOOL)source parsers:(id)parsers totalPrepareBytes:(unint64_t)bytes bytesSent:(unint64_t *)sent featureReportDelay:(id)self0 waitForRenumeration:(BOOL)self1 logHandle:(id)self2 pluginDelegate:(id)self3 errorDomain:(id)self4;
- (BOOL)GATTServicesDiscoveryNeeded;
- (BOOL)batteryIsCharging;
- (BOOL)firmwareVersionsEqualTo:(id)to;
- (BOOL)firmwareVersionsOlderThan:(id)than;
- (BOOL)hardwareVersionSupportedBy:(id)by;
- (BOOL)shouldInstallFW:(id)w personalizationAllowed:(BOOL)allowed;
- (FudPluginDelegate)delegate;
- (NSDictionary)powerSource;
- (NSMutableDictionary)fwVersions;
- (NSNumber)R1FWVersion;
- (OS_os_log)logHandle;
- (SHFUDevice)init;
- (id)auErrorString:(unsigned __int8)string;
- (id)commitAllFirmwares;
- (id)createPersonalizationRequest:(id)request error:(id *)error;
- (id)description;
- (id)latestFirmwareForHardware:(id)hardware;
- (id)sendAllFirmwaresToDevice:(id)device totalPrepareBytes:(unint64_t)bytes bytesSent:(unint64_t *)sent featureReportDelay:(id)delay;
- (id)sendPersonalizedManifestsToDevice:(id)device featureReportDelay:(id)delay manifestCount:(id)count;
- (id)sendSingleFirmwareToDevice:(id)device totalPrepareBytes:(unint64_t)bytes bytesSent:(unint64_t *)sent featureReportDelay:(id)delay;
- (id)sendUnsignedFWToDevice:(id)device featureReportDelay:(id)delay sendPersonalizedManifests:(BOOL *)manifests;
- (id)waitForSecureFWReenumeration;
- (int)batteryCapacity;
- (int)getReportID:(unsigned __int8)d buffer:(char *)buffer length:(unsigned int *)length;
- (int)setReportID:(unsigned __int8)d buffer:(char *)buffer length:(unsigned int)length;
- (unint64_t)getTotalFirmwareBytes:(id)bytes;
- (unsigned)hardwareVersion;
- (void)dealloc;
- (void)delayAfterInitReport;
- (void)logVersions:(id)versions;
- (void)resetSecureFW;
@end

@implementation SHFUDevice

+ (id)getNumberPropertyFromService:(unsigned int)service withKey:(__CFString *)key recursive:(BOOL)recursive
{
  v5 = 0;
  if (service && key)
  {
    v6 = recursive ? 3 : 0;
    v7 = IORegistryEntrySearchCFProperty(service, "IOService", key, kCFAllocatorDefault, v6);
    v5 = v7;
    if (v7)
    {
      v8 = CFGetTypeID(v7);
      if (v8 != CFNumberGetTypeID())
      {
        CFRelease(v5);
        v5 = 0;
      }
    }
  }

  return v5;
}

+ (id)getStringPropertyFromService:(unsigned int)service withKey:(__CFString *)key
{
  v4 = 0;
  if (service)
  {
    if (key)
    {
      v5 = IORegistryEntrySearchCFProperty(service, "IOService", key, kCFAllocatorDefault, 0);
      v4 = v5;
      if (v5)
      {
        v6 = CFGetTypeID(v5);
        if (v6 != CFStringGetTypeID())
        {
          CFRelease(v4);
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

+ (id)getDevicesWithMatchingDict:(__CFDictionary *)dict hasPowerSource:(BOOL)source errorDomain:(id)domain error:(id *)error delegate:(id)delegate logHandle:(id)handle
{
  sourceCopy = source;
  domainCopy = domain;
  delegateCopy = delegate;
  handleCopy = handle;
  v15 = objc_alloc_init(NSMutableArray);
  existing = 0;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, dict);
  MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, MutableCopy, &existing);
  v18 = existing;
  if (existing && !MatchingServices)
  {
    v19 = IOIteratorNext(existing);
    if (v19)
    {
      v20 = v19;
      v35 = handleCopy;
      do
      {
        if (*error)
        {
          break;
        }

        v21 = [(__CFDictionary *)dict objectForKeyedSubscript:@"bInterfaceNumber"];
        if (!v21)
        {
          goto LABEL_12;
        }

        parent = 0;
        if (!IORegistryEntryGetParentEntry(v20, "IOService", &parent))
        {
          v22 = IORegistryEntrySearchCFProperty(parent, "IOService", @"bInterfaceNumber", kCFAllocatorDefault, 1u);
          IOObjectRelease(parent);
          if (v22)
          {
            v23 = CFGetTypeID(v22);
            if (v23 == CFNumberGetTypeID() && ([v21 isEqualToNumber:v22] & 1) != 0)
            {
              CFRelease(v22);
              handleCopy = v35;
LABEL_12:
              v24 = [[SHFUDevice alloc] initWithService:v20 hasPowerSource:sourceCopy delegate:delegateCopy logHandle:handleCopy errorDomain:domainCopy error:error];
              if (v24)
              {
                [v15 addObject:v24];
              }

              else if (!*error)
              {
                v25 = [NSError alloc];
                v41 = NSLocalizedDescriptionKey;
                v42 = @"Failed to initialize SHFUDevice";
                [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
                v34 = delegateCopy;
                v27 = v26 = domainCopy;
                v28 = v25;
                handleCopy = v35;
                *error = [v28 initWithDomain:v26 code:1 userInfo:v27];

                domainCopy = v26;
                delegateCopy = v34;
              }

              IOObjectRelease(v20);

              goto LABEL_19;
            }

            CFRelease(v22);
            handleCopy = v35;
          }
        }

        IOObjectRelease(v20);
LABEL_19:

        v20 = IOIteratorNext(existing);
      }

      while (v20);
    }

    v18 = existing;
  }

  if (v18)
  {
    IOObjectRelease(v18);
    existing = 0;
  }

  if (*error)
  {
    goto LABEL_24;
  }

  if (![v15 count])
  {
    [NSString stringWithFormat:@"No standalone HID devices detected matching %@", dict];
    v31 = v30 = domainCopy;
    v32 = [NSError alloc];
    v39 = NSLocalizedDescriptionKey;
    v40 = v31;
    v33 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    *error = [v32 initWithDomain:v30 code:0 userInfo:v33];

    v15 = v31;
    domainCopy = v30;
LABEL_24:

    v15 = 0;
  }

  return v15;
}

- (SHFUDevice)init
{
  [NSException raise:NSInternalInconsistencyException format:@"use -initWithDeviceRef:service:hasPowerSource:delegate:logHandle:errorDomain:buffer:bufferLength:"];

  return [(SHFUDevice *)self initWithService:0 hasPowerSource:0 delegate:0 logHandle:0 errorDomain:&stru_1000249B8 error:0];
}

- (void)dealloc
{
  deviceRef = self->_deviceRef;
  if (deviceRef)
  {
    IOHIDDeviceClose(deviceRef, 0);
    CFRelease(self->_deviceRef);
  }

  v4.receiver = self;
  v4.super_class = SHFUDevice;
  [(SHFUDevice *)&v4 dealloc];
}

- (id)description
{
  className = [(SHFUDevice *)self className];
  productName = [(SHFUDevice *)self productName];
  transport = [(SHFUDevice *)self transport];
  productID = [(SHFUDevice *)self productID];
  vendorID = [(SHFUDevice *)self vendorID];
  primaryUsage = [(SHFUDevice *)self primaryUsage];
  primaryUsagePage = [(SHFUDevice *)self primaryUsagePage];
  locationID = [(SHFUDevice *)self locationID];
  [(SHFUDevice *)self interfaceNum];
  v36 = productName;
  obj = className;
  v34 = v35 = transport;
  if (v34)
  {
    interfaceNum = [(SHFUDevice *)self interfaceNum];
  }

  else
  {
    interfaceNum = @"N/A";
  }

  useFWUpdateReportIDs = [(SHFUDevice *)self useFWUpdateReportIDs];
  sendOffsets = [(SHFUDevice *)self sendOffsets];
  sendUberInitAndCommit = [(SHFUDevice *)self sendUberInitAndCommit];
  writeBufferSize = [(SHFUDevice *)self writeBufferSize];
  updateFlags = [(SHFUDevice *)self updateFlags];
  initReportDelay = [(SHFUDevice *)self initReportDelay];
  hardwareVersion = [(SHFUDevice *)self hardwareVersion];
  powerSource = [(SHFUDevice *)self powerSource];
  deviceAddress = [(SHFUDevice *)self deviceAddress];
  serialNumber = [(SHFUDevice *)self serialNumber];
  registryEntryID = [(SHFUDevice *)self registryEntryID];
  v15 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"class: %@, product: %@, transport: %@, PID 0x%x, VID 0x%x, primary usage 0x%x, primary usage page 0x%x, locationID 0x%x, interface %@, useFWUpdateReportIDs %d, sendOffsets %d, sendUberInitAndCommit %d, writeBufferSize %u, updateFlags %u, init report delay %u, hardware version 0x%02x, power source %@, deviceAddress %@, serial number %@ IORegistryEntryID 0x%016llX", obj, v36, v35, productID, vendorID, primaryUsage, primaryUsagePage, locationID, interfaceNum, useFWUpdateReportIDs, sendOffsets, sendUberInitAndCommit, writeBufferSize, updateFlags, initReportDelay, hardwareVersion, powerSource, deviceAddress, serialNumber, [registryEntryID unsignedLongLongValue]);

  if (v34)
  {
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  obja = [(SHFUDevice *)self fwVersions];
  v17 = [obja countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(obja);
        }

        v21 = *(*(&v39 + 1) + 8 * i);
        v22 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v21 unsignedIntValue]);
        fwVersions = [(SHFUDevice *)selfCopy fwVersions];
        v24 = [fwVersions objectForKeyedSubscript:v21];
        [v15 appendFormat:@", %@ version 0x%02x", v22, objc_msgSend(v24, "unsignedIntValue")];
      }

      v18 = [obja countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v18);
  }

  return v15;
}

- (void)logVersions:(id)versions
{
  versionsCopy = versions;
  v5 = objc_alloc_init(NSMutableDictionary);
  v40 = versionsCopy;
  [v5 setObject:versionsCopy forKeyedSubscript:@"deviceType"];
  v6 = [NSNumber numberWithUnsignedShort:[(SHFUDevice *)self hardwareVersion]];
  [v5 setObject:v6 forKeyedSubscript:@"hardwareVersion"];

  v7 = [NSString stringWithFormat:@"%u", [(SHFUDevice *)self hardwareVersion]];
  [v5 setObject:v7 forKeyedSubscript:@"hardwareVersionStr"];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  fwVersions = [(SHFUDevice *)self fwVersions];
  v9 = [fwVersions countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(fwVersions);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v13 unsignedIntValue]);
        fwVersions2 = [(SHFUDevice *)self fwVersions];
        v16 = [fwVersions2 objectForKeyedSubscript:v13];
        [v5 setObject:v16 forKeyedSubscript:v14];
      }

      v10 = [fwVersions countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v10);
  }

  serialNumber = [(SHFUDevice *)self serialNumber];
  v18 = [serialNumber length];

  if (v18)
  {
    serialNumber2 = [(SHFUDevice *)self serialNumber];
  }

  else
  {
    serialNumber2 = v40;
  }

  v20 = serialNumber2;
  v21 = +[NSUserDefaults standardUserDefaults];
  v22 = [v21 dictionaryForKey:@"CoreAnalyticsTimestamps"];
  v23 = [v22 mutableCopy];

  v24 = +[NSDate date];
  v25 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  v26 = objc_alloc_init(NSISO8601DateFormatter);
  logHandle = [(SHFUDevice *)self logHandle];
  v28 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG);
  if (!v23)
  {
    if (v28)
    {
      sub_100015534();
    }

    v23 = objc_alloc_init(NSMutableDictionary);
    goto LABEL_27;
  }

  if (v28)
  {
    sub_1000153CC();
  }

  v29 = [v23 objectForKeyedSubscript:v20];
  if (!v29 || ([v26 dateFromString:v29], (v30 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v39 = v21;
    v32 = v26;
    v33 = v24;
    v34 = v25;
    logHandle2 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
    {
      sub_100015534();
    }

    v31 = 0;
    goto LABEL_22;
  }

  v31 = v30;
  if ([v30 compare:v24] == 1)
  {
    v39 = v21;
    v32 = v26;
    v33 = v24;
    v34 = v25;
    logHandle2 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
    {
      sub_1000154B8();
    }

LABEL_22:

    v25 = v34;
    v24 = v33;
    v26 = v32;
    v21 = v39;
LABEL_23:

LABEL_27:
    logHandle3 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000155A4();
    }

    v41 = v5;
    AnalyticsSendEventLazy();
    v37 = [v26 stringFromDate:v24];
    [v23 setObject:v37 forKeyedSubscript:v20];
    [v21 setObject:v23 forKey:@"CoreAnalyticsTimestamps"];

    v31 = v41;
    goto LABEL_30;
  }

  if ([v31 compare:v25] != 1)
  {
    goto LABEL_23;
  }

  logHandle4 = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001543C();
  }

LABEL_30:
}

- (BOOL)shouldInstallFW:(id)w personalizationAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  wCopy = w;
  fwVersions = [(SHFUDevice *)self fwVersions];
  getFirmwareType = [wCopy getFirmwareType];
  v9 = [fwVersions objectForKeyedSubscript:getFirmwareType];
  unsignedIntValue = [v9 unsignedIntValue];

  getFirmwareVersion = [wCopy getFirmwareVersion];
  unsignedIntValue2 = [getFirmwareVersion unsignedIntValue];

  getFirmwareType2 = [wCopy getFirmwareType];
  v14 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [getFirmwareType2 unsignedIntValue]);

  if (unsignedIntValue2 == unsignedIntValue && !+[SHFUDevice ignoreVersionCheck])
  {
    if (-[SHFUDevice productID](self, "productID") != 614 || ([wCopy getFirmwareType], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "unsignedIntValue"), v16, v17 != 48))
    {
      logHandle = [(SHFUDevice *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        sub_1000155E0();
      }

      v15 = 0;
LABEL_16:

      goto LABEL_17;
    }
  }

  if ((![wCopy personalizationRequired] || allowedCopy) && ((objc_msgSend(wCopy, "personalizationRequired") & 1) != 0 || !allowedCopy))
  {
    logHandle = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412802;
      v21 = v14;
      v22 = 1024;
      v23 = unsignedIntValue;
      v24 = 1024;
      v25 = unsignedIntValue2;
      _os_log_debug_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "%@ has FW version 0x%X installed. Start installation of FW version 0x%X.", &v20, 0x18u);
    }

    v15 = 1;
    goto LABEL_16;
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (NSNumber)R1FWVersion
{
  fwVersions = self->_fwVersions;
  self->_fwVersions = 0;

  fwVersions = [(SHFUDevice *)self fwVersions];
  v5 = [fwVersions objectForKeyedSubscript:&off_100026A30];

  return v5;
}

- (id)waitForSecureFWReenumeration
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:450.0];
  logHandle = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_10001565C();
  }

  v5 = +[NSDate date];
  v6 = [v5 compare:v3];

  if (v6 == -1)
  {
    while (1)
    {
      [NSThread sleepForTimeInterval:5.0];
      r1FWVersion = [(SHFUDevice *)self R1FWVersion];
      0x407C200000000000 = r1FWVersion;
      if (r1FWVersion)
      {
        if ([r1FWVersion unsignedIntValue])
        {
          break;
        }
      }

      v9 = +[NSDate date];
      v10 = [v9 compare:v3];

      if (v10 != -1)
      {
        goto LABEL_7;
      }
    }

    logHandle2 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
    {
      sub_1000156DC();
    }

    v14 = 0;
  }

  else
  {
LABEL_7:
    0x407C200000000000 = [NSString stringWithFormat:@"Timed out after %f seconds waiting for secure firmware", 0x407C200000000000];
    v11 = [NSError alloc];
    logHandle2 = [(SHFUDevice *)self errorDomain];
    v16 = NSLocalizedDescriptionKey;
    v17 = 0x407C200000000000;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = [v11 initWithDomain:logHandle2 code:52 userInfo:v13];
  }

  return v14;
}

- (id)createPersonalizationRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = 512;
  v7 = 11;
  v39 = 0u;
  v40 = 0u;
  while (1)
  {
    v8 = [(SHFUDevice *)self getReportID:189 buffer:&v39 length:&v31];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    logHandle = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      sub_100015718(buf, v38, logHandle);
    }

    [NSThread sleepForTimeInterval:5.0];
    if (!--v7)
    {
      v18 = SHFUIOReturnString(v9);
      v19 = [NSString stringWithFormat:@"Personalization info feature report ID 0x%02X failed with %@ for device %@", 189, v18, self];

      v20 = [NSError alloc];
      errorDomain = [(SHFUDevice *)self errorDomain];
      v35 = NSLocalizedDescriptionKey;
      v36 = v19;
      v22 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      *error = [v20 initWithDomain:errorDomain code:53 userInfo:v22];

      v23 = 0;
      goto LABEL_11;
    }
  }

  v11 = [[FudPersonalizationRequest alloc] initWithName:@"com.apple.StandaloneHIDFudPlugins.personalization"];
  [v11 setResponseFormat:0];
  [v11 setRequestPrefix:@"Rap"];
  [v11 setSecurityDomain:BYTE1(v39)];
  [v11 setProductionMode:BYTE2(v39) != 0];
  [v11 setSecurityMode:BYTE3(v39) != 0];
  [v11 setBoardID:bswap32(WORD2(v39)) >> 16];
  [v11 setChipID:bswap32(WORD3(v39)) >> 16];
  [v11 setEcID:bswap64(*(&v39 + 1))];
  v12 = vrev64q_s8(v40);
  v13 = vrev64q_s8(v41);
  v34[0] = vextq_s8(v13, v13, 8uLL);
  v34[1] = vextq_s8(v12, v12, 8uLL);
  v14 = [NSData dataWithBytes:v34 length:32];
  [v11 setNonceHash:v14];

  v15 = objc_opt_new();
  getFTABDigests = [requestCopy getFTABDigests];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000E5F8;
  v28[3] = &unk_100024788;
  v19 = v11;
  v29 = v19;
  v17 = v15;
  v30 = v17;
  [getFTABDigests enumerateKeysAndObjectsUsingBlock:v28];
  if ([v17 count])
  {
    [v19 setObjectList:v17];
    v23 = v19;
  }

  else
  {
    v24 = [NSError alloc];
    errorDomain2 = [(SHFUDevice *)self errorDomain];
    v32 = NSLocalizedDescriptionKey;
    v33 = @"Failed to create personalization request";
    v26 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    *error = [v24 initWithDomain:errorDomain2 code:52 userInfo:v26];

    v23 = 0;
  }

LABEL_11:

  return v23;
}

- (id)sendUnsignedFWToDevice:(id)device featureReportDelay:(id)delay sendPersonalizedManifests:(BOOL *)manifests
{
  deviceCopy = device;
  delayCopy = delay;
  logHandle = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100015764();
  }

  *manifests = 0;
  if ([deviceCopy personalizationRequired])
  {
    if ([(SHFUDevice *)self shouldInstallFW:deviceCopy personalizationAllowed:1])
    {
      payload = [deviceCopy payload];
      v12 = [(SHFUDevice *)self sendSingleFirmwareToDevice:payload totalPrepareBytes:0 bytesSent:0 featureReportDelay:delayCopy];

      if (!v12)
      {
        *manifests = 1;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = [NSError alloc];
    errorDomain = [(SHFUDevice *)self errorDomain];
    v17 = NSLocalizedDescriptionKey;
    v18 = @"Personalization not required for AFU file parser";
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = [v13 initWithDomain:errorDomain code:52 userInfo:v15];
  }

  return v12;
}

- (id)sendPersonalizedManifestsToDevice:(id)device featureReportDelay:(id)delay manifestCount:(id)count
{
  deviceCopy = device;
  delayCopy = delay;
  countCopy = count;
  logHandle = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1000157E4();
  }

  if (!countCopy)
  {
    v30 = [NSError alloc];
    errorDomain = [(SHFUDevice *)self errorDomain];
    v75 = NSLocalizedDescriptionKey;
    v76 = @"Manifest count not specified";
    v32 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v33 = [v30 initWithDomain:errorDomain code:52 userInfo:v32];

    goto LABEL_25;
  }

  if (([deviceCopy personalizationRequired] & 1) == 0)
  {
    v34 = [NSError alloc];
    errorDomain2 = [(SHFUDevice *)self errorDomain];
    v73 = NSLocalizedDescriptionKey;
    v74 = @"Personalization not required for AFU file parser";
    v36 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v33 = [v34 initWithDomain:errorDomain2 code:52 userInfo:v36];

    goto LABEL_25;
  }

  v66 = 0;
  v67[0] = &v66;
  v67[1] = 0x3032000000;
  v67[2] = sub_10000EFA4;
  v67[3] = sub_10000EFB4;
  v68 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3042000000;
  v64[3] = sub_10000EFBC;
  v64[4] = sub_10000EFC8;
  objc_initWeak(&v65, self);
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_10000EFA4;
  v62 = sub_10000EFB4;
  v63 = 0;
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 BOOLForKey:@"WriteManifests"];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10000EFD0;
  v51[3] = &unk_1000247B0;
  v54 = v64;
  v12 = deviceCopy;
  v57 = v11;
  v52 = v12;
  v55 = &v66;
  v53 = delayCopy;
  v56 = &v58;
  v13 = objc_retainBlock(v51);
  v14 = -1;
  do
  {
    if (++v14 >= [countCopy intValue])
    {
      break;
    }

    v15 = (v67[0] + 40);
    obj = *(v67[0] + 40);
    v16 = [(SHFUDevice *)self createPersonalizationRequest:v12 error:&obj];
    objc_storeStrong(v15, obj);
    if (*(v67[0] + 40))
    {
      goto LABEL_18;
    }

    v17 = dispatch_semaphore_create(0);
    v18 = v59[5];
    v59[5] = v17;

    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%llu", @"com.apple.StandaloneHIDFudPlugins.personalization", [v16 ecID]);
    v20 = +[NSNotificationCenter defaultCenter];
    v21 = [v20 addObserverForName:v19 object:0 queue:0 usingBlock:v13];
    [(SHFUDevice *)self setPersonalizationObserver:v21];

    delegate = [(SHFUDevice *)self delegate];
    [delegate personalizationRequest:v16];

    v23 = dispatch_time(0, 120000000000);
    logHandle2 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
    {
      sub_100015864(buf, &v72, logHandle2);
    }

    v25 = dispatch_semaphore_wait(v59[5], v23);
    v26 = v59[5];
    v59[5] = 0;

    if (*(v67[0] + 40))
    {
      goto LABEL_17;
    }

    if (v25)
    {
      v37 = [NSError alloc];
      errorDomain3 = [(SHFUDevice *)self errorDomain];
      v69 = NSLocalizedDescriptionKey;
      v70 = @"Timed out waiting for personalization response.";
      v39 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v40 = [v37 initWithDomain:errorDomain3 code:52 userInfo:v39];
      v41 = *(v67[0] + 40);
      *(v67[0] + 40) = v40;

LABEL_17:
LABEL_18:

      break;
    }

    waitForSecureFWReenumeration = [(SHFUDevice *)self waitForSecureFWReenumeration];
    v28 = *(v67[0] + 40);
    *(v67[0] + 40) = waitForSecureFWReenumeration;

    v29 = *(v67[0] + 40) == 0;
  }

  while (v29);
  if (*(v67[0] + 40))
  {
    goto LABEL_20;
  }

  r1FWVersion = [(SHFUDevice *)self R1FWVersion];
  v45 = [r1FWVersion unsignedIntValue] == 1;

  if (!v45)
  {
    goto LABEL_24;
  }

  if (*(v67[0] + 40))
  {
LABEL_20:
    logHandle3 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
    {
      sub_1000158B0(v67);
    }
  }

  else
  {
    r1FWVersion2 = [(SHFUDevice *)self R1FWVersion];
    v47 = [r1FWVersion2 unsignedIntValue] == 1;

    if (!v47)
    {
      goto LABEL_23;
    }

    logHandle3 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
    {
      sub_10001592C();
    }
  }

LABEL_23:
  [(SHFUDevice *)self resetSecureFW];
LABEL_24:
  v33 = *(v67[0] + 40);

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(v64, 8);
  objc_destroyWeak(&v65);
  _Block_object_dispose(&v66, 8);

LABEL_25:

  return v33;
}

- (void)delayAfterInitReport
{
  if ([(SHFUDevice *)self initReportDelay])
  {
    logHandle = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      sub_100015A54(self);
    }

    [NSThread sleepForTimeInterval:[(SHFUDevice *)self initReportDelay]];
    logHandle2 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
    {
      sub_100015AD8(self);
    }
  }
}

- (id)sendAllFirmwaresToDevice:(id)device totalPrepareBytes:(unint64_t)bytes bytesSent:(unint64_t *)sent featureReportDelay:(id)delay
{
  deviceCopy = device;
  delayCopy = delay;
  if (![(SHFUDevice *)self sendUberInitAndCommit])
  {
    goto LABEL_4;
  }

  v32 = -17213;
  v12 = [(SHFUDevice *)self setReportID:176 buffer:&v32 length:2];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = SHFUIOReturnString(v12);
  v14 = [NSString stringWithFormat:@"Uber init report ID 0x%02X failed with %@ for device %@", 176, v13, self];

  v15 = [NSError alloc];
  errorDomain = [(SHFUDevice *)self errorDomain];
  v34 = NSLocalizedDescriptionKey;
  v35 = v14;
  v17 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v18 = [v15 initWithDomain:errorDomain code:24 userInfo:v17];

  if (!v18)
  {
LABEL_4:
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = deviceCopy;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v27 = deviceCopy;
      v22 = *v29;
LABEL_6:
      v23 = 0;
      while (1)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * v23);
        if ([(SHFUDevice *)self shouldInstallFW:v24 personalizationAllowed:0])
        {
          payload = [v24 payload];
          v18 = [(SHFUDevice *)self sendSingleFirmwareToDevice:payload totalPrepareBytes:bytes bytesSent:sent featureReportDelay:delayCopy];

          if (v18)
          {
            break;
          }
        }

        if (v21 == ++v23)
        {
          v21 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v21)
          {
            goto LABEL_6;
          }

          v18 = 0;
          break;
        }
      }

      deviceCopy = v27;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

+ (BOOL)ignoreVersionCheck
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"UpdateCurrentVersion"];

  return v3;
}

+ (id)sendAllFirmwaresToDeviceWithVendorID:(id)d productID:(id)iD interfaceNum:(id)num hasPowerSource:(BOOL)source parsers:(id)parsers totalPrepareBytes:(unint64_t)bytes bytesSent:(unint64_t *)sent featureReportDelay:(id)self0 waitForRenumeration:(BOOL)self1 logHandle:(id)self2 pluginDelegate:(id)self3 errorDomain:(id)self4
{
  sourceCopy = source;
  dCopy = d;
  iDCopy = iD;
  numCopy = num;
  parsersCopy = parsers;
  delayCopy = delay;
  handleCopy = handle;
  delegateCopy = delegate;
  domainCopy = domain;
  v21 = dispatch_semaphore_create(0);
  v22 = dispatch_semaphore_create(0);
  v23 = IONotificationPortCreate(kIOMasterPortDefault);
  notification = 0;
  v24 = dispatch_queue_create("com.apple.StandaloneHIDFudPlugins.newDeviceMatch", 0);
  v55 = v22;
  dispatch_set_context(v24, v22);
  dispatch_set_finalizer_f(v24, j__dispatch_semaphore_signal);
  v54 = v24;
  IONotificationPortSetDispatchQueue(v23, v24);
  v25 = IOServiceMatching("IOHIDDevice");
  v65 = dCopy;
  [(__CFDictionary *)v25 setObject:dCopy forKeyedSubscript:@"VendorID"];
  v64 = iDCopy;
  [(__CFDictionary *)v25 setObject:iDCopy forKeyedSubscript:@"ProductID"];
  [(__CFDictionary *)v25 setObject:&off_100026A00 forKeyedSubscript:@"PrimaryUsagePage"];
  [(__CFDictionary *)v25 setObject:&off_100026A18 forKeyedSubscript:@"PrimaryUsage"];
  v26 = v25;
  dsema = v21;
  if (!IOServiceAddMatchingNotification(v23, "IOServiceFirstMatch", v26, sub_10000FD34, v21, &notification) && notification)
  {
      ;
    }
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = parsersCopy;
  v60 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (!v60)
  {
    v39 = 0;
    goto LABEL_39;
  }

  v59 = *v77;
  v56 = numCopy;
  v52 = v26;
  v53 = v23;
  do
  {
    for (i = 0; i != v60; i = i + 1)
    {
      if (*v77 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v76 + 1) + 8 * i);
      intValue = [v65 intValue];
      intValue2 = [v64 intValue];
      v31 = SHFU_UNKNOWN_LOCATION_ID;
      if (numCopy)
      {
        unsignedIntValue = [numCopy unsignedIntValue];
      }

      else
      {
        unsignedIntValue = SHFU_UNKNOWN_INTERFACE_NUMBER;
      }

      v75 = 0;
      LODWORD(v51) = unsignedIntValue;
      v33 = [SHFUDevice getDevices:delegateCopy hasPowerSource:sourceCopy logHandle:handleCopy withVendorID:intValue productID:intValue2 locationID:v31 interfaceNumber:v51 errorDomain:domainCopy error:&v75];
      v34 = v75;
      if (v34)
      {
        v39 = v34;
        v57 = v33;
        goto LABEL_37;
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v35 = v33;
      v36 = [v35 countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (!v36)
      {

        goto LABEL_33;
      }

      v37 = v36;
      v57 = v33;
      v66 = i;
      v38 = 0;
      v39 = 0;
      v40 = *v72;
      while (2)
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v72 != v40)
          {
            objc_enumerationMutation(v35);
          }

          v42 = *(*(&v71 + 1) + 8 * j);
          if ([v42 shouldInstallFW:v28 personalizationAllowed:0])
          {
            payload = [v28 payload];
            v44 = [v42 sendSingleFirmwareToDevice:payload totalPrepareBytes:bytes bytesSent:sent featureReportDelay:delayCopy];

            if (v44)
            {
              if ((v38 & 1) == 0)
              {
                v45 = v44;

                v38 = 0;
                v39 = v45;
LABEL_25:

                continue;
              }
            }

            else
            {
              [v42 reset];
              if (renumeration)
              {
                v46 = dispatch_time(0, 60000000000);
                if (dispatch_semaphore_wait(dsema, v46))
                {
                  v47 = [NSError alloc];
                  v81 = NSLocalizedDescriptionKey;
                  v82 = @"No devices enumerated";
                  v48 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
                  v49 = [v47 initWithDomain:domainCopy code:0 userInfo:v48];

                  v39 = v49;
                  goto LABEL_30;
                }
              }
            }

            v38 = 1;
            goto LABEL_25;
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v71 objects:v83 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }

LABEL_30:

      numCopy = v56;
      i = v66;
      if (v39)
      {
LABEL_37:

        v26 = v52;
        v23 = v53;
        goto LABEL_39;
      }

LABEL_33:
    }

    v39 = 0;
    v26 = v52;
    v23 = v53;
    v60 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
  }

  while (v60);
LABEL_39:

  [NSThread sleepForTimeInterval:5.0];
  if (notification)
  {
    IOObjectRelease(notification);
    notification = 0;
  }

  IONotificationPortSetDispatchQueue(v23, 0);
  if (v23)
  {
    IONotificationPortDestroy(v23);
  }

  dispatch_semaphore_wait(v55, 0xFFFFFFFFFFFFFFFFLL);

  return v39;
}

- (unint64_t)getTotalFirmwareBytes:(id)bytes
{
  bytesCopy = bytes;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [bytesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(bytesCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 personalizationRequired] & 1) == 0)
        {
          payload = [v9 payload];
          v6 += [payload length];
        }
      }

      v5 = [bytesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)commitAllFirmwares
{
  if (![(SHFUDevice *)self sendUberInitAndCommit])
  {
    goto LABEL_4;
  }

  v11 = -17213;
  v3 = [(SHFUDevice *)self setReportID:178 buffer:&v11 length:2];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = SHFUIOReturnString(v3);
  v5 = [NSString stringWithFormat:@"Set uber commit report ID 0x%02X failed with %@ for device %@", 178, v4, self];

  v6 = [NSError alloc];
  errorDomain = [(SHFUDevice *)self errorDomain];
  v12 = NSLocalizedDescriptionKey;
  v13 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [v6 initWithDomain:errorDomain code:26 userInfo:v8];

  if (!v9)
  {
LABEL_4:
    [(SHFUDevice *)self reset];
    v9 = 0;
  }

  return v9;
}

- (void)resetSecureFW
{
  v2[0] = 1;
  v2[1] = 1;
  [(SHFUDevice *)self setReportID:189 buffer:v2 length:4];
}

- (BOOL)GATTServicesDiscoveryNeeded
{
  fwVersions = [(SHFUDevice *)self fwVersions];
  v4 = [fwVersions objectForKeyedSubscript:&off_100026A48];
  unsignedIntValue = [v4 unsignedIntValue];

  v6 = [(SHFUDevice *)self productID]== 788 && unsignedIntValue < 0x80u || [(SHFUDevice *)self productID]== 789 && unsignedIntValue < 0x30u;
  logHandle = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67109632;
    v10[1] = [(SHFUDevice *)self productID];
    v11 = 1024;
    v12 = unsignedIntValue;
    v13 = 1024;
    v14 = v6;
    _os_log_debug_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "PID 0x%04X ST FW version 0x%04X GATT service discovery needed %d", v10, 0x14u);
  }

  return v6;
}

- (id)latestFirmwareForHardware:(id)hardware
{
  hardwareCopy = hardware;
  v5 = [NSString stringWithFormat:@"%u", [(SHFUDevice *)self hardwareVersion]];
  0xFFFFLL = [NSString stringWithFormat:@"%u", 0xFFFFLL];
  v7 = [hardwareCopy objectForKeyedSubscript:v5];
  if (v7)
  {
  }

  else
  {
    v12 = [hardwareCopy objectForKeyedSubscript:0xFFFFLL];

    if (v12)
    {
      v11 = [hardwareCopy objectForKeyedSubscript:0xFFFFLL];
      v8 = [NSMutableDictionary dictionaryWithDictionary:v11];
      goto LABEL_8;
    }
  }

  v8 = [hardwareCopy objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [hardwareCopy objectForKeyedSubscript:v5];
    v8 = [NSMutableDictionary dictionaryWithDictionary:v9];

    v10 = [hardwareCopy objectForKeyedSubscript:0xFFFFLL];

    if (v10)
    {
      v11 = [hardwareCopy objectForKeyedSubscript:0xFFFFLL];
      [v8 addEntriesFromDictionary:v11];
LABEL_8:
    }
  }

  return v8;
}

- (BOOL)hardwareVersionSupportedBy:(id)by
{
  v3 = [(SHFUDevice *)self latestFirmwareForHardware:by];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)firmwareVersionsOlderThan:(id)than
{
  v4 = [(SHFUDevice *)self latestFirmwareForHardware:than];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (!v5)
  {
    goto LABEL_19;
  }

  v7 = v5;
  v26 = 0;
  v8 = *v28;
  *&v6 = 138412546;
  v25 = v6;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 intValue]);
      fwVersions = [(SHFUDevice *)self fwVersions];
      v13 = [fwVersions objectForKeyedSubscript:v11];
      unsignedIntValue = [v13 unsignedIntValue];

      v15 = [v4 objectForKeyedSubscript:v10];
      unsignedIntValue2 = [v15 unsignedIntValue];

      if (unsignedIntValue)
      {
        logHandle = [(SHFUDevice *)self logHandle];
        v18 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG);
        if (unsignedIntValue >= unsignedIntValue2)
        {
          if (v18)
          {
            v21 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v11 unsignedIntValue]);
            *buf = 138412802;
            v32 = v21;
            v33 = 1024;
            LODWORD(v34[0]) = unsignedIntValue;
            WORD2(v34[0]) = 1024;
            *(v34 + 6) = unsignedIntValue2;
            _os_log_debug_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "%@ has version 0x%x equal (or newer) than version 0x%x", buf, 0x18u);
          }
        }

        else
        {
          if (v18)
          {
            v20 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v11 unsignedIntValue]);
            *buf = 138412802;
            v32 = v20;
            v33 = 1024;
            LODWORD(v34[0]) = unsignedIntValue;
            WORD2(v34[0]) = 1024;
            *(v34 + 6) = unsignedIntValue2;
            _os_log_debug_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "%@ has version 0x%x older than version 0x%x", buf, 0x18u);
          }

          v26 = 1;
        }
      }

      else
      {
        logHandle = [(SHFUDevice *)self logHandle];
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          v19 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v11 unsignedIntValue]);
          *buf = v25;
          v32 = v19;
          v33 = 2112;
          v34[0] = self;
          _os_log_error_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_ERROR, "%@ does not have a version number reported by %@", buf, 0x16u);
        }
      }
    }

    v7 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
  }

  while (v7);
  if (v26)
  {
    v22 = 1;
  }

  else
  {
LABEL_19:
    logHandle2 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
    {
      sub_100015B5C();
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)firmwareVersionsEqualTo:(id)to
{
  v4 = [(SHFUDevice *)self latestFirmwareForHardware:to];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v5)
  {
LABEL_19:
    v21 = 1;
    goto LABEL_23;
  }

  v7 = v5;
  v8 = *v27;
  v25 = 1;
  *&v6 = 138412546;
  v24 = v6;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v26 + 1) + 8 * i);
      v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 intValue]);
      fwVersions = [(SHFUDevice *)self fwVersions];
      v13 = [fwVersions objectForKeyedSubscript:v11];
      unsignedIntValue = [v13 unsignedIntValue];

      v15 = [v4 objectForKeyedSubscript:v10];
      unsignedIntValue2 = [v15 unsignedIntValue];

      if (!unsignedIntValue)
      {
        logHandle = [(SHFUDevice *)self logHandle];
        if (!os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v19 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v11 unsignedIntValue]);
        *buf = v24;
        v31 = v19;
        v32 = 2112;
        v33[0] = self;
        _os_log_error_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_ERROR, "%@ does not have a version number reported by %@", buf, 0x16u);
        goto LABEL_12;
      }

      logHandle = [(SHFUDevice *)self logHandle];
      v18 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG);
      if (unsignedIntValue == unsignedIntValue2)
      {
        if (!v18)
        {
          goto LABEL_16;
        }

        v19 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v11 unsignedIntValue]);
        *buf = 138412802;
        v31 = v19;
        v32 = 1024;
        LODWORD(v33[0]) = unsignedIntValue;
        WORD2(v33[0]) = 1024;
        *(v33 + 6) = unsignedIntValue;
        _os_log_debug_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "%@ has version 0x%x equal to version 0x%x", buf, 0x18u);
LABEL_12:

        goto LABEL_16;
      }

      if (v18)
      {
        v20 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v11 unsignedIntValue]);
        *buf = 138412802;
        v31 = v20;
        v32 = 1024;
        LODWORD(v33[0]) = unsignedIntValue;
        WORD2(v33[0]) = 1024;
        *(v33 + 6) = unsignedIntValue2;
        _os_log_debug_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "%@ has version 0x%x not equal to version 0x%x", buf, 0x18u);
      }

      v25 = 0;
LABEL_16:
    }

    v7 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
  }

  while (v7);
  if (v25)
  {
    goto LABEL_19;
  }

  logHandle2 = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
  {
    sub_100015B98();
  }

  v21 = 0;
LABEL_23:

  return v21;
}

- (id)sendSingleFirmwareToDevice:(id)device totalPrepareBytes:(unint64_t)bytes bytesSent:(unint64_t *)sent featureReportDelay:(id)delay
{
  deviceCopy = device;
  delayCopy = delay;
  logHandle = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_100015BD4();
  }

  v11 = [(SHFUDevice *)self writeBufferSize]- 1;
  v96 = 29282;
  selfCopy = self;
  if ([(SHFUDevice *)self sendOffsets])
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  v13 = 4096;
  if (v11)
  {
    v13 = (0x1000u / v11 * v11);
  }

  v91 = v13;
  v92 = v11;
  v93 = v12;
  v88 = delayCopy;
  if (v12 + v11 && (v14 = malloc_type_malloc(v12 + v11, 0xD087D295uLL)) != 0)
  {
    v15 = v14;
    v16 = [(SHFUDevice *)self setReportID:176 buffer:&v96 length:2];
    if (!v16)
    {
      [(SHFUDevice *)self delayAfterInitReport];
      v25 = 0;
      goto LABEL_16;
    }

    v17 = SHFUIOReturnString(v16);
    v18 = [NSString stringWithFormat:@"Regular init report ID 0x%02X failed with %@ for device %@", 176, v17, self];

    v19 = deviceCopy;
    v20 = [NSError alloc];
    errorDomain = [(SHFUDevice *)self errorDomain];
    v140 = NSLocalizedDescriptionKey;
    v141 = v18;
    v22 = [NSDictionary dictionaryWithObjects:&v141 forKeys:&v140 count:1];
    v23 = v20;
    deviceCopy = v19;
    v24 = [v23 initWithDomain:errorDomain code:25 userInfo:v22];
    v25 = 0;
  }

  else
  {
    v18 = [NSString stringWithFormat:@"Ran out of memory for device %@", self];
    v26 = [NSError alloc];
    errorDomain = [(SHFUDevice *)self errorDomain];
    v142 = NSLocalizedDescriptionKey;
    v143 = v18;
    v25 = 1;
    v22 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];
    v24 = [v26 initWithDomain:errorDomain code:31 userInfo:v22];
    v15 = 0;
  }

  if (v24)
  {
    goto LABEL_54;
  }

LABEL_16:
  v27 = 0;
  v28 = 0;
  v29 = v92;
  v89 = &v15[v93];
  v86 = v15;
  v87 = deviceCopy;
  while (v28 < [deviceCopy length])
  {
    if (!(v28 % v91))
    {
      logHandle2 = [(SHFUDevice *)selfCopy logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [deviceCopy length];
        *buf = 134218240;
        *&buf[4] = v28;
        *&buf[12] = 2048;
        *&buf[14] = v31;
        _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "wrote %lu bytes out of %lu", buf, 0x16u);
      }

      if (sent)
      {
        v32 = (100 * *sent / bytes);
        delegate = [(SHFUDevice *)selfCopy delegate];
        [delegate progress:v32];
      }
    }

    if (&v29[v28] > [deviceCopy length])
    {
      v34 = [deviceCopy length];
      if (v34 == v28)
      {
        break;
      }

      v29 = &v34[v27];
    }

    if ([(SHFUDevice *)selfCopy sendOffsets])
    {
      *v15 = BYTE2(v28);
      v15[1] = BYTE1(v28);
      v15[2] = v28;
    }

    [deviceCopy getBytes:v89 range:{v28, v29}];
    v35 = [(SHFUDevice *)selfCopy setReportID:177 buffer:v15 length:&v29[v93]];
    if (v35)
    {
      v36 = v35;
      logHandle3 = [(SHFUDevice *)selfCopy logHandle];
      if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
      {
        v52 = [deviceCopy length];
        *buf = 134218240;
        *&buf[4] = v28;
        *&buf[12] = 2048;
        *&buf[14] = v52;
        _os_log_error_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_ERROR, "wrote %lu bytes out of %lu", buf, 0x16u);
      }

      v38 = [NSData dataWithBytes:v15 length:&v29[v93]];
      logHandle4 = [(SHFUDevice *)selfCopy logHandle];
      if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v38;
        _os_log_error_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_ERROR, "Failed feature report buffer: %@", buf, 0xCu);
      }

      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      memset(buf, 0, sizeof(buf));
      v95 = 512;
      v40 = [(SHFUDevice *)selfCopy getReportID:178 buffer:buf length:&v95];
      v41 = v95;
      v42 = buf[0];
      v43 = SHFUIOReturnString(v36);
      v44 = v43;
      if (v40 || v41 != 1 || (v42 & 0xFFFFFFEF) == 0xA1)
      {
        v45 = selfCopy;
        selfCopy = [NSString stringWithFormat:@"Write report ID 0x%02X failed with %@ for device %@", 177, v43, selfCopy];
      }

      else
      {
        v45 = selfCopy;
        v46 = [(SHFUDevice *)selfCopy auErrorString:buf[0]];
        selfCopy = [NSString stringWithFormat:@"Write report ID 0x%02X failed with %@ (%@) for device %@", 177, v44, v46, selfCopy];
      }

      v49 = [NSError alloc];
      errorDomain2 = [(SHFUDevice *)v45 errorDomain];
      v107 = NSLocalizedDescriptionKey;
      v108 = selfCopy;
      v51 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v24 = [v49 initWithDomain:errorDomain2 code:32 userInfo:v51];

      v15 = v86;
      deviceCopy = v87;
    }

    else
    {
      if (sent)
      {
        *sent += v29;
      }

      [v88 doubleValue];
      if (v48 > 0.0)
      {
        [v88 doubleValue];
        [NSThread sleepForTimeInterval:?];
      }

      v24 = 0;
    }

    v28 += v92;
    v27 -= v92;
    if (v24)
    {
      goto LABEL_54;
    }
  }

  logHandle5 = [(SHFUDevice *)selfCopy logHandle];
  if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEFAULT))
  {
    v54 = [deviceCopy length];
    *buf = 134217984;
    *&buf[4] = v54;
    _os_log_impl(&_mh_execute_header, logHandle5, OS_LOG_TYPE_DEFAULT, "wrote %lu bytes successfully.", buf, 0xCu);
  }

  v55 = v15;

  v56 = 0;
  do
  {
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    memset(buf, 0, sizeof(buf));
    v57 = [(SHFUDevice *)selfCopy setReportID:178 buffer:buf length:1];
    if (v56 > 2)
    {
      break;
    }

    ++v56;
  }

  while (v57 == -536870186);
  if (v57)
  {
    v58 = SHFUIOReturnString(v57);
    selfCopy2 = [NSString stringWithFormat:@"Set regular commit report ID 0x%02X failed with %@ for device %@", 178, v58, selfCopy];

    v60 = [NSError alloc];
    errorDomain3 = [(SHFUDevice *)selfCopy errorDomain];
    v105 = NSLocalizedDescriptionKey;
    v106 = selfCopy2;
    v62 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    v24 = [v60 initWithDomain:errorDomain3 code:27 userInfo:v62];

    if (v24)
    {
      v15 = v55;
LABEL_54:
      if (v25)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  v64 = [NSDate dateWithTimeIntervalSinceNow:300.0];
  while (1)
  {
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    memset(buf, 0, sizeof(buf));
    v95 = 512;
    v65 = [(SHFUDevice *)selfCopy getReportID:178 buffer:buf length:&v95];
    if (v65)
    {
      v74 = SHFUIOReturnString(v65);
      selfCopy3 = [NSString stringWithFormat:@"Get regular commit report ID 0x%02X failed with %@ for device %@", 178, v74, selfCopy];

      v76 = [NSError alloc];
      errorDomain4 = [(SHFUDevice *)selfCopy errorDomain];
      v99 = NSLocalizedDescriptionKey;
      v100 = selfCopy3;
      v78 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v79 = v76;
      v80 = errorDomain4;
      v81 = 28;
      goto LABEL_70;
    }

    if (v95 != 1)
    {
      selfCopy3 = [NSString stringWithFormat:@"Get regular commit report ID 0x%02X returned invalid payload length %u for device %@", 178, v95, selfCopy];
      v82 = [NSError alloc];
      errorDomain4 = [(SHFUDevice *)selfCopy errorDomain];
      v103 = NSLocalizedDescriptionKey;
      v104 = selfCopy3;
      v78 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      v79 = v82;
      v80 = errorDomain4;
      v81 = 29;
      goto LABEL_70;
    }

    v66 = buf[0];
    if (buf[0] != 1)
    {
      break;
    }

    [NSThread sleepForTimeInterval:1.0];
    v67 = +[NSDate date];
    v68 = [v67 compare:v64];

    if (v68 != -1)
    {
      v69 = [(SHFUDevice *)selfCopy auErrorString:1];
      selfCopy4 = [NSString stringWithFormat:@"Get regular commit report ID 0x%02X returned invalid payload contents 0x%02X %@ for device %@", 178, 1, v69, selfCopy];

      v71 = [NSError alloc];
      errorDomain5 = [(SHFUDevice *)selfCopy errorDomain];
      v97 = NSLocalizedDescriptionKey;
      v98 = selfCopy4;
      v73 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v24 = [v71 initWithDomain:errorDomain5 code:30 userInfo:v73];

      goto LABEL_71;
    }
  }

  if (buf[0] == 161)
  {
    v24 = 0;
    goto LABEL_71;
  }

  v83 = [(SHFUDevice *)selfCopy auErrorString:buf[0]];
  selfCopy3 = [NSString stringWithFormat:@"Get regular commit report ID 0x%02X returned invalid payload contents 0x%02X %@ for device %@", 178, v66, v83, selfCopy];

  v84 = [NSError alloc];
  errorDomain4 = [(SHFUDevice *)selfCopy errorDomain];
  v101 = NSLocalizedDescriptionKey;
  v102 = selfCopy3;
  v78 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
  v79 = v84;
  v80 = errorDomain4;
  v81 = 30;
LABEL_70:
  v24 = [v79 initWithDomain:v80 code:v81 userInfo:v78];

LABEL_71:
  v15 = v55;
  if ((v25 & 1) == 0)
  {
LABEL_55:
    free(v15);
  }

LABEL_56:

  return v24;
}

- (int)getReportID:(unsigned __int8)d buffer:(char *)buffer length:(unsigned int *)length
{
  dCopy = d;
  deviceRef = self->_deviceRef;
  logHandle = [(SHFUDevice *)self logHandle];
  LODWORD(length) = sub_10000C8B8(dCopy, buffer, length, deviceRef, logHandle);

  return length;
}

- (int)setReportID:(unsigned __int8)d buffer:(char *)buffer length:(unsigned int)length
{
  dCopy = d;
  v8 = 3758097090;
  if (buffer || !length)
  {
    if (length <= 0x200)
    {
      report[0] = d;
      if (buffer && length)
      {
        __memmove_chk();
      }

      v8 = IOHIDDeviceSetReport(self->_deviceRef, kIOHIDReportTypeFeature, dCopy, report, length + 1);
    }

    else
    {
      v8 = 3758097128;
    }
  }

  if (dCopy != 179 && v8)
  {
    v9 = [NSData dataWithBytes:report length:length + 1];
    logHandle = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = SHFUIOReturnString(v8);
      v13[0] = 67109890;
      v13[1] = dCopy;
      v14 = 2112;
      v15 = v9;
      v16 = 1024;
      v17 = v8;
      v18 = 2112;
      v19 = v12;
      _os_log_error_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_ERROR, "reportID 0x%02X payload %@ error 0x%08X %@", v13, 0x22u);
    }
  }

  return v8;
}

- (id)auErrorString:(unsigned __int8)string
{
  if (string > 63)
  {
    if (string <= 118)
    {
      if (string > 114)
      {
        if (string > 116)
        {
          if (string == 117)
          {
            return @"kAUErrorSigBadDigestInfo";
          }

          else
          {
            return @"kAUErrorSigBadSigInfo";
          }
        }

        else if (string == 115)
        {
          return @"kAUErrorSigBadMagic";
        }

        else
        {
          return @"kAUErrorSigVerUnsupported";
        }
      }

      if (string > 112)
      {
        if (string == 113)
        {
          return @"kAUErrorSigDigestMismatch";
        }

        else
        {
          return @"kAUErrorSigInfoInvalid";
        }
      }

      if (string == 64)
      {
        return @"kAUErrorInvalidRegion";
      }

      if (string == 112)
      {
        return @"kAUErrorSigInvalid";
      }
    }

    else if (string <= 130)
    {
      if (string > 128)
      {
        if (string == 129)
        {
          return @"kAUErrorPersVerUnsupported";
        }

        else
        {
          return @"kAUErrorPersUDIDMismatch";
        }
      }

      if (string == 119)
      {
        return @"kAUErrorNotSigned";
      }

      if (string == 128)
      {
        return @"kAUErrorNotPersonalized";
      }
    }

    else if (string <= 175)
    {
      if (string == 131)
      {
        return @"kAUErrorPersBadMagic";
      }

      if (string == 161)
      {
        return @"kAUErrorSuccessKey";
      }
    }

    else
    {
      switch(string)
      {
        case 0xB0u:
          return @"kAUErrorInitKeyIncorrect";
        case 0xB1u:
          return @"kAUErrorInvalidOperation";
        case 0xFFu:
          return @"kAUErrorUnknown";
      }
    }

    return @"Invalid Error";
  }

  result = @"kAUErrorNone";
  switch(string)
  {
    case 0u:
      return result;
    case 1u:
      result = @"kAUErrorAccessoryBusy";
      break;
    case 2u:
      result = @"kAUErrorReadFailure";
      break;
    case 3u:
      result = @"kAUErrorStoreFailure";
      break;
    case 4u:
      result = @"kAUErrorEraseFailure";
      break;
    case 5u:
      result = @"kAUErrorLowBattery";
      break;
    case 0x10u:
      result = @"kAUErrorHdrSigInvalid";
      break;
    case 0x11u:
      result = @"kAUErrorHdrVerUnsupported";
      break;
    case 0x12u:
      result = @"kAUErrorHdrCRCMismatch";
      break;
    case 0x13u:
      result = @"kAUErrorPayloadTypeInvalid";
      break;
    case 0x14u:
      result = @"kAUErrorPayloadVerDowngrade";
      break;
    case 0x15u:
      result = @"kAUErrorPayloadSizeInvalid";
      break;
    case 0x16u:
      result = @"kAUErrorPayloadCRCMismatch";
      break;
    case 0x17u:
      result = @"kAUErrorPayloadPIDMismatch";
      break;
    case 0x18u:
      result = @"kAUErrorPayloadHWIDMismatch";
      break;
    case 0x19u:
      result = @"kAUErrorHeaderIncomplete";
      break;
    case 0x1Au:
      result = @"kAUErrorPayloadMinVersion";
      break;
    default:
      return @"Invalid Error";
  }

  return result;
}

- (NSMutableDictionary)fwVersions
{
  fwVersions = self->_fwVersions;
  if (!fwVersions)
  {
    v23 = 512;
    memset(v32, 0, sizeof(v32));
    if ([(SHFUDevice *)self productID]== 629)
    {
      if (![(SHFUDevice *)self getReportID:16 buffer:v32 length:&v23]&& v23 >= 9 && LOBYTE(v32[0]) == 2)
      {
        v4 = objc_alloc_init(NSMutableDictionary);
        v5 = self->_fwVersions;
        self->_fwVersions = v4;

        v6 = [NSNumber numberWithUnsignedShort:*(v32 + 5)];
        [(NSMutableDictionary *)self->_fwVersions setObject:v6 forKeyedSubscript:&off_100026A48];

        logHandle = [(SHFUDevice *)self logHandle];
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
        {
          sub_100015C54();
        }
      }
    }

    else
    {
      if ([(SHFUDevice *)self useFWUpdateReportIDs])
      {
        v8 = 187;
      }

      else
      {
        v8 = 206;
      }

      if (![(SHFUDevice *)self getReportID:v8 buffer:v32 length:&v23])
      {
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = self->_fwVersions;
        self->_fwVersions = v9;

        if ((v23 & 3) == 0)
        {
          v13 = 4;
          *&v11 = 138413058;
          v22 = v11;
          do
          {
            v14 = v31[v13 / 2 + 1];
            v15 = v31[v13 / 2 + 2];
            v16 = [NSNumber numberWithUnsignedShort:v31[v13 / 2 + 2], v22];
            v17 = self->_fwVersions;
            v18 = [NSNumber numberWithUnsignedShort:v14];
            [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];

            logHandle2 = [(SHFUDevice *)self logHandle];
            if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
            {
              v21 = [AUFileParser auTypeString:v14];
              *buf = v22;
              v25 = v21;
              v26 = 1024;
              v27 = v14;
              v28 = 1024;
              v29 = v15;
              v30 = 1024;
              *v31 = v15;
              _os_log_debug_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEBUG, "%@ (%d) version 0x%x (%d)", buf, 0x1Eu);
            }

            if ((v23 & 3) != 0)
            {
              break;
            }

            v20 = v13 > v23 - 4;
            v13 += 4;
          }

          while (!v20);
        }
      }
    }

    fwVersions = self->_fwVersions;
  }

  return fwVersions;
}

- (unsigned)hardwareVersion
{
  hardwareVersion = self->_hardwareVersion;
  if (!hardwareVersion)
  {
    v7 = 512;
    memset(v8, 0, sizeof(v8));
    if ([(SHFUDevice *)self productID]== 629)
    {
      if ([(SHFUDevice *)self getReportID:16 buffer:v8 length:&v7]|| v7 < 9 || LOBYTE(v8[0]) != 2)
      {
        goto LABEL_13;
      }

      v4 = (v8 + 7);
    }

    else
    {
      if ([(SHFUDevice *)self useFWUpdateReportIDs])
      {
        v5 = 188;
      }

      else
      {
        v5 = 207;
      }

      v4 = v8;
      if ([(SHFUDevice *)self getReportID:v5 buffer:v8 length:&v7]|| v7 != 2)
      {
        goto LABEL_13;
      }
    }

    self->_hardwareVersion = *v4;
LABEL_13:
    LOWORD(hardwareVersion) = self->_hardwareVersion;
  }

  return hardwareVersion;
}

- (BOOL)batteryIsCharging
{
  powerSource = [(SHFUDevice *)self powerSource];
  v3 = [powerSource objectForKeyedSubscript:@"Is Charging"];

  LOBYTE(powerSource) = [v3 BOOLValue];
  return powerSource;
}

- (int)batteryCapacity
{
  powerSource = [(SHFUDevice *)self powerSource];
  v3 = [powerSource objectForKeyedSubscript:@"Current Capacity"];

  LODWORD(powerSource) = [v3 intValue];
  return powerSource;
}

- (NSDictionary)powerSource
{
  v3 = [(SHFUDevice *)self productID]== 620 || [(SHFUDevice *)self productID]== 615 || [(SHFUDevice *)self productID]== 617 || [(SHFUDevice *)self productID]== 613 || [(SHFUDevice *)self productID]== 666 || [(SHFUDevice *)self productID]== 668 || [(SHFUDevice *)self productID]== 671 || [(SHFUDevice *)self productID]== 803 || [(SHFUDevice *)self productID]== 804 || [(SHFUDevice *)self productID]== 800 || [(SHFUDevice *)self productID]== 801 || [(SHFUDevice *)self productID]== 802;
  if (![(SHFUDevice *)self hasPowerSource]|| self->_powerSource || [(SHFUDevice *)self powerSourceTimedOut])
  {
    goto LABEL_16;
  }

  if (v3)
  {
    [(SHFUDevice *)self serialNumber];
  }

  else
  {
    [(SHFUDevice *)self productName];
  }
  v6 = ;
  v7 = [v6 length];

  if (!v7)
  {
LABEL_16:
    v4 = self->_powerSource;
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100012390;
    v19[3] = &unk_1000247D8;
    v19[4] = self;
    v20 = v3;
    v8 = objc_retainBlock(v19);
    out_token = 0;
    serialQueue = [(SHFUDevice *)self serialQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100012570;
    handler[3] = &unk_100024800;
    handler[4] = self;
    v10 = v8;
    v17 = v10;
    v11 = notify_register_dispatch("com.apple.system.accpowersources.attach", &out_token, serialQueue, handler);

    if (!v11)
    {
      serialQueue2 = [(SHFUDevice *)self serialQueue];
      dispatch_async(serialQueue2, v10);

      v13 = dispatch_time(0, 15000000000);
      powerSemaphore = [(SHFUDevice *)self powerSemaphore];
      [(SHFUDevice *)self setPowerSourceTimedOut:dispatch_semaphore_wait(powerSemaphore, v13)];

      if ([(SHFUDevice *)self powerSourceTimedOut])
      {
        logHandle = [(SHFUDevice *)self logHandle];
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          sub_100015D1C();
        }
      }

      notify_cancel(out_token);
    }

    v4 = self->_powerSource;
  }

  return v4;
}

- (FudPluginDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OS_os_log)logHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_logHandle);

  return WeakRetained;
}

@end