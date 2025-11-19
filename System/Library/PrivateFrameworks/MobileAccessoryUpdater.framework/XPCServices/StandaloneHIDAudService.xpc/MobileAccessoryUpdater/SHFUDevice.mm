@interface SHFUDevice
+ (BOOL)ignoreVersionCheck;
+ (id)getDevicesWithMatchingDict:(__CFDictionary *)a3 hasPowerSource:(BOOL)a4 errorDomain:(id)a5 error:(id *)a6 delegate:(id)a7 logHandle:(id)a8;
+ (id)getNumberPropertyFromService:(unsigned int)a3 withKey:(__CFString *)a4 recursive:(BOOL)a5;
+ (id)getStringPropertyFromService:(unsigned int)a3 withKey:(__CFString *)a4;
+ (id)sendAllFirmwaresToDeviceWithVendorID:(id)a3 productID:(id)a4 interfaceNum:(id)a5 hasPowerSource:(BOOL)a6 parsers:(id)a7 totalPrepareBytes:(unint64_t)a8 bytesSent:(unint64_t *)a9 featureReportDelay:(id)a10 waitForRenumeration:(BOOL)a11 logHandle:(id)a12 pluginDelegate:(id)a13 errorDomain:(id)a14;
- (BOOL)GATTServicesDiscoveryNeeded;
- (BOOL)batteryIsCharging;
- (BOOL)firmwareVersionsEqualTo:(id)a3;
- (BOOL)firmwareVersionsOlderThan:(id)a3;
- (BOOL)hardwareVersionSupportedBy:(id)a3;
- (BOOL)shouldInstallFW:(id)a3 personalizationAllowed:(BOOL)a4;
- (FudPluginDelegate)delegate;
- (NSDictionary)powerSource;
- (NSMutableDictionary)fwVersions;
- (NSNumber)R1FWVersion;
- (OS_os_log)logHandle;
- (SHFUDevice)init;
- (id)auErrorString:(unsigned __int8)a3;
- (id)commitAllFirmwares;
- (id)createPersonalizationRequest:(id)a3 error:(id *)a4;
- (id)description;
- (id)latestFirmwareForHardware:(id)a3;
- (id)sendAllFirmwaresToDevice:(id)a3 totalPrepareBytes:(unint64_t)a4 bytesSent:(unint64_t *)a5 featureReportDelay:(id)a6;
- (id)sendPersonalizedManifestsToDevice:(id)a3 featureReportDelay:(id)a4 manifestCount:(id)a5;
- (id)sendSingleFirmwareToDevice:(id)a3 totalPrepareBytes:(unint64_t)a4 bytesSent:(unint64_t *)a5 featureReportDelay:(id)a6;
- (id)sendUnsignedFWToDevice:(id)a3 featureReportDelay:(id)a4 sendPersonalizedManifests:(BOOL *)a5;
- (id)waitForSecureFWReenumeration;
- (int)batteryCapacity;
- (int)getReportID:(unsigned __int8)a3 buffer:(char *)a4 length:(unsigned int *)a5;
- (int)setReportID:(unsigned __int8)a3 buffer:(char *)a4 length:(unsigned int)a5;
- (unint64_t)getTotalFirmwareBytes:(id)a3;
- (unsigned)hardwareVersion;
- (void)dealloc;
- (void)delayAfterInitReport;
- (void)logVersions:(id)a3;
- (void)resetSecureFW;
@end

@implementation SHFUDevice

+ (id)getNumberPropertyFromService:(unsigned int)a3 withKey:(__CFString *)a4 recursive:(BOOL)a5
{
  v5 = 0;
  if (a3 && a4)
  {
    v6 = a5 ? 3 : 0;
    v7 = IORegistryEntrySearchCFProperty(a3, "IOService", a4, kCFAllocatorDefault, v6);
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

+ (id)getStringPropertyFromService:(unsigned int)a3 withKey:(__CFString *)a4
{
  v4 = 0;
  if (a3)
  {
    if (a4)
    {
      v5 = IORegistryEntrySearchCFProperty(a3, "IOService", a4, kCFAllocatorDefault, 0);
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

+ (id)getDevicesWithMatchingDict:(__CFDictionary *)a3 hasPowerSource:(BOOL)a4 errorDomain:(id)a5 error:(id *)a6 delegate:(id)a7 logHandle:(id)a8
{
  v36 = a4;
  v12 = a5;
  v13 = a7;
  v14 = a8;
  v15 = objc_alloc_init(NSMutableArray);
  existing = 0;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a3);
  MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, MutableCopy, &existing);
  v18 = existing;
  if (existing && !MatchingServices)
  {
    v19 = IOIteratorNext(existing);
    if (v19)
    {
      v20 = v19;
      v35 = v14;
      do
      {
        if (*a6)
        {
          break;
        }

        v21 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"bInterfaceNumber"];
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
              v14 = v35;
LABEL_12:
              v24 = [[SHFUDevice alloc] initWithService:v20 hasPowerSource:v36 delegate:v13 logHandle:v14 errorDomain:v12 error:a6];
              if (v24)
              {
                [v15 addObject:v24];
              }

              else if (!*a6)
              {
                v25 = [NSError alloc];
                v41 = NSLocalizedDescriptionKey;
                v42 = @"Failed to initialize SHFUDevice";
                [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
                v34 = v13;
                v27 = v26 = v12;
                v28 = v25;
                v14 = v35;
                *a6 = [v28 initWithDomain:v26 code:1 userInfo:v27];

                v12 = v26;
                v13 = v34;
              }

              IOObjectRelease(v20);

              goto LABEL_19;
            }

            CFRelease(v22);
            v14 = v35;
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

  if (*a6)
  {
    goto LABEL_24;
  }

  if (![v15 count])
  {
    [NSString stringWithFormat:@"No standalone HID devices detected matching %@", a3];
    v31 = v30 = v12;
    v32 = [NSError alloc];
    v39 = NSLocalizedDescriptionKey;
    v40 = v31;
    v33 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    *a6 = [v32 initWithDomain:v30 code:0 userInfo:v33];

    v15 = v31;
    v12 = v30;
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
  v3 = [(SHFUDevice *)self className];
  v4 = [(SHFUDevice *)self productName];
  v5 = [(SHFUDevice *)self transport];
  v33 = [(SHFUDevice *)self productID];
  v31 = [(SHFUDevice *)self vendorID];
  v30 = [(SHFUDevice *)self primaryUsage];
  v29 = [(SHFUDevice *)self primaryUsagePage];
  v28 = [(SHFUDevice *)self locationID];
  [(SHFUDevice *)self interfaceNum];
  v36 = v4;
  obj = v3;
  v34 = v35 = v5;
  if (v34)
  {
    v32 = [(SHFUDevice *)self interfaceNum];
  }

  else
  {
    v32 = @"N/A";
  }

  v27 = [(SHFUDevice *)self useFWUpdateReportIDs];
  v26 = [(SHFUDevice *)self sendOffsets];
  v6 = [(SHFUDevice *)self sendUberInitAndCommit];
  v7 = [(SHFUDevice *)self writeBufferSize];
  v8 = [(SHFUDevice *)self updateFlags];
  v9 = [(SHFUDevice *)self initReportDelay];
  v10 = [(SHFUDevice *)self hardwareVersion];
  v11 = [(SHFUDevice *)self powerSource];
  v12 = [(SHFUDevice *)self deviceAddress];
  v13 = [(SHFUDevice *)self serialNumber];
  v14 = [(SHFUDevice *)self registryEntryID];
  v15 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"class: %@, product: %@, transport: %@, PID 0x%x, VID 0x%x, primary usage 0x%x, primary usage page 0x%x, locationID 0x%x, interface %@, useFWUpdateReportIDs %d, sendOffsets %d, sendUberInitAndCommit %d, writeBufferSize %u, updateFlags %u, init report delay %u, hardware version 0x%02x, power source %@, deviceAddress %@, serial number %@ IORegistryEntryID 0x%016llX", obj, v36, v35, v33, v31, v30, v29, v28, v32, v27, v26, v6, v7, v8, v9, v10, v11, v12, v13, [v14 unsignedLongLongValue]);

  if (v34)
  {
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = self;
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
        v23 = [(SHFUDevice *)v16 fwVersions];
        v24 = [v23 objectForKeyedSubscript:v21];
        [v15 appendFormat:@", %@ version 0x%02x", v22, objc_msgSend(v24, "unsignedIntValue")];
      }

      v18 = [obja countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v18);
  }

  return v15;
}

- (void)logVersions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v40 = v4;
  [v5 setObject:v4 forKeyedSubscript:@"deviceType"];
  v6 = [NSNumber numberWithUnsignedShort:[(SHFUDevice *)self hardwareVersion]];
  [v5 setObject:v6 forKeyedSubscript:@"hardwareVersion"];

  v7 = [NSString stringWithFormat:@"%u", [(SHFUDevice *)self hardwareVersion]];
  [v5 setObject:v7 forKeyedSubscript:@"hardwareVersionStr"];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = [(SHFUDevice *)self fwVersions];
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v13 unsignedIntValue]);
        v15 = [(SHFUDevice *)self fwVersions];
        v16 = [v15 objectForKeyedSubscript:v13];
        [v5 setObject:v16 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v10);
  }

  v17 = [(SHFUDevice *)self serialNumber];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [(SHFUDevice *)self serialNumber];
  }

  else
  {
    v19 = v40;
  }

  v20 = v19;
  v21 = +[NSUserDefaults standardUserDefaults];
  v22 = [v21 dictionaryForKey:@"CoreAnalyticsTimestamps"];
  v23 = [v22 mutableCopy];

  v24 = +[NSDate date];
  v25 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  v26 = objc_alloc_init(NSISO8601DateFormatter);
  v27 = [(SHFUDevice *)self logHandle];
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
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
    v35 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
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
    v35 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
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
    v36 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
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

  v38 = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sub_10001543C();
  }

LABEL_30:
}

- (BOOL)shouldInstallFW:(id)a3 personalizationAllowed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SHFUDevice *)self fwVersions];
  v8 = [v6 getFirmwareType];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 unsignedIntValue];

  v11 = [v6 getFirmwareVersion];
  v12 = [v11 unsignedIntValue];

  v13 = [v6 getFirmwareType];
  v14 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v13 unsignedIntValue]);

  if (v12 == v10 && !+[SHFUDevice ignoreVersionCheck])
  {
    if (-[SHFUDevice productID](self, "productID") != 614 || ([v6 getFirmwareType], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "unsignedIntValue"), v16, v17 != 48))
    {
      v18 = [(SHFUDevice *)self logHandle];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1000155E0();
      }

      v15 = 0;
LABEL_16:

      goto LABEL_17;
    }
  }

  if ((![v6 personalizationRequired] || v4) && ((objc_msgSend(v6, "personalizationRequired") & 1) != 0 || !v4))
  {
    v18 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412802;
      v21 = v14;
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = v12;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%@ has FW version 0x%X installed. Start installation of FW version 0x%X.", &v20, 0x18u);
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

  v4 = [(SHFUDevice *)self fwVersions];
  v5 = [v4 objectForKeyedSubscript:&off_100026A30];

  return v5;
}

- (id)waitForSecureFWReenumeration
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:450.0];
  v4 = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
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
      v7 = [(SHFUDevice *)self R1FWVersion];
      v8 = v7;
      if (v7)
      {
        if ([v7 unsignedIntValue])
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

    v12 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000156DC();
    }

    v14 = 0;
  }

  else
  {
LABEL_7:
    v8 = [NSString stringWithFormat:@"Timed out after %f seconds waiting for secure firmware", 0x407C200000000000];
    v11 = [NSError alloc];
    v12 = [(SHFUDevice *)self errorDomain];
    v16 = NSLocalizedDescriptionKey;
    v17 = v8;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = [v11 initWithDomain:v12 code:52 userInfo:v13];
  }

  return v14;
}

- (id)createPersonalizationRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
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
    v10 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100015718(buf, v38, v10);
    }

    [NSThread sleepForTimeInterval:5.0];
    if (!--v7)
    {
      v18 = SHFUIOReturnString(v9);
      v19 = [NSString stringWithFormat:@"Personalization info feature report ID 0x%02X failed with %@ for device %@", 189, v18, self];

      v20 = [NSError alloc];
      v21 = [(SHFUDevice *)self errorDomain];
      v35 = NSLocalizedDescriptionKey;
      v36 = v19;
      v22 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      *a4 = [v20 initWithDomain:v21 code:53 userInfo:v22];

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
  v16 = [v6 getFTABDigests];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000E5F8;
  v28[3] = &unk_100024788;
  v19 = v11;
  v29 = v19;
  v17 = v15;
  v30 = v17;
  [v16 enumerateKeysAndObjectsUsingBlock:v28];
  if ([v17 count])
  {
    [v19 setObjectList:v17];
    v23 = v19;
  }

  else
  {
    v24 = [NSError alloc];
    v25 = [(SHFUDevice *)self errorDomain];
    v32 = NSLocalizedDescriptionKey;
    v33 = @"Failed to create personalization request";
    v26 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    *a4 = [v24 initWithDomain:v25 code:52 userInfo:v26];

    v23 = 0;
  }

LABEL_11:

  return v23;
}

- (id)sendUnsignedFWToDevice:(id)a3 featureReportDelay:(id)a4 sendPersonalizedManifests:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100015764();
  }

  *a5 = 0;
  if ([v8 personalizationRequired])
  {
    if ([(SHFUDevice *)self shouldInstallFW:v8 personalizationAllowed:1])
    {
      v11 = [v8 payload];
      v12 = [(SHFUDevice *)self sendSingleFirmwareToDevice:v11 totalPrepareBytes:0 bytesSent:0 featureReportDelay:v9];

      if (!v12)
      {
        *a5 = 1;
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
    v14 = [(SHFUDevice *)self errorDomain];
    v17 = NSLocalizedDescriptionKey;
    v18 = @"Personalization not required for AFU file parser";
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = [v13 initWithDomain:v14 code:52 userInfo:v15];
  }

  return v12;
}

- (id)sendPersonalizedManifestsToDevice:(id)a3 featureReportDelay:(id)a4 manifestCount:(id)a5
{
  v49 = a3;
  v48 = a4;
  v8 = a5;
  v9 = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000157E4();
  }

  if (!v8)
  {
    v30 = [NSError alloc];
    v31 = [(SHFUDevice *)self errorDomain];
    v75 = NSLocalizedDescriptionKey;
    v76 = @"Manifest count not specified";
    v32 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v33 = [v30 initWithDomain:v31 code:52 userInfo:v32];

    goto LABEL_25;
  }

  if (([v49 personalizationRequired] & 1) == 0)
  {
    v34 = [NSError alloc];
    v35 = [(SHFUDevice *)self errorDomain];
    v73 = NSLocalizedDescriptionKey;
    v74 = @"Personalization not required for AFU file parser";
    v36 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v33 = [v34 initWithDomain:v35 code:52 userInfo:v36];

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
  v12 = v49;
  v57 = v11;
  v52 = v12;
  v55 = &v66;
  v53 = v48;
  v56 = &v58;
  v13 = objc_retainBlock(v51);
  v14 = -1;
  do
  {
    if (++v14 >= [v8 intValue])
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

    v22 = [(SHFUDevice *)self delegate];
    [v22 personalizationRequest:v16];

    v23 = dispatch_time(0, 120000000000);
    v24 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100015864(buf, &v72, v24);
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
      v38 = [(SHFUDevice *)self errorDomain];
      v69 = NSLocalizedDescriptionKey;
      v70 = @"Timed out waiting for personalization response.";
      v39 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v40 = [v37 initWithDomain:v38 code:52 userInfo:v39];
      v41 = *(v67[0] + 40);
      *(v67[0] + 40) = v40;

LABEL_17:
LABEL_18:

      break;
    }

    v27 = [(SHFUDevice *)self waitForSecureFWReenumeration];
    v28 = *(v67[0] + 40);
    *(v67[0] + 40) = v27;

    v29 = *(v67[0] + 40) == 0;
  }

  while (v29);
  if (*(v67[0] + 40))
  {
    goto LABEL_20;
  }

  v44 = [(SHFUDevice *)self R1FWVersion];
  v45 = [v44 unsignedIntValue] == 1;

  if (!v45)
  {
    goto LABEL_24;
  }

  if (*(v67[0] + 40))
  {
LABEL_20:
    v42 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1000158B0(v67);
    }
  }

  else
  {
    v46 = [(SHFUDevice *)self R1FWVersion];
    v47 = [v46 unsignedIntValue] == 1;

    if (!v47)
    {
      goto LABEL_23;
    }

    v42 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
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
    v3 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100015A54(self);
    }

    [NSThread sleepForTimeInterval:[(SHFUDevice *)self initReportDelay]];
    v4 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100015AD8(self);
    }
  }
}

- (id)sendAllFirmwaresToDevice:(id)a3 totalPrepareBytes:(unint64_t)a4 bytesSent:(unint64_t *)a5 featureReportDelay:(id)a6
{
  v10 = a3;
  v11 = a6;
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
  v16 = [(SHFUDevice *)self errorDomain];
  v34 = NSLocalizedDescriptionKey;
  v35 = v14;
  v17 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v18 = [v15 initWithDomain:v16 code:24 userInfo:v17];

  if (!v18)
  {
LABEL_4:
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v27 = v10;
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
          v25 = [v24 payload];
          v18 = [(SHFUDevice *)self sendSingleFirmwareToDevice:v25 totalPrepareBytes:a4 bytesSent:a5 featureReportDelay:v11];

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

      v10 = v27;
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

+ (id)sendAllFirmwaresToDeviceWithVendorID:(id)a3 productID:(id)a4 interfaceNum:(id)a5 hasPowerSource:(BOOL)a6 parsers:(id)a7 totalPrepareBytes:(unint64_t)a8 bytesSent:(unint64_t *)a9 featureReportDelay:(id)a10 waitForRenumeration:(BOOL)a11 logHandle:(id)a12 pluginDelegate:(id)a13 errorDomain:(id)a14
{
  v61 = a6;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v70 = a10;
  v63 = a12;
  v62 = a13;
  v67 = a14;
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
  v65 = v17;
  [(__CFDictionary *)v25 setObject:v17 forKeyedSubscript:@"VendorID"];
  v64 = v18;
  [(__CFDictionary *)v25 setObject:v18 forKeyedSubscript:@"ProductID"];
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
  obj = v20;
  v60 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (!v60)
  {
    v39 = 0;
    goto LABEL_39;
  }

  v59 = *v77;
  v56 = v19;
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
      v29 = [v65 intValue];
      v30 = [v64 intValue];
      v31 = SHFU_UNKNOWN_LOCATION_ID;
      if (v19)
      {
        v32 = [v19 unsignedIntValue];
      }

      else
      {
        v32 = SHFU_UNKNOWN_INTERFACE_NUMBER;
      }

      v75 = 0;
      LODWORD(v51) = v32;
      v33 = [SHFUDevice getDevices:v62 hasPowerSource:v61 logHandle:v63 withVendorID:v29 productID:v30 locationID:v31 interfaceNumber:v51 errorDomain:v67 error:&v75];
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
            v43 = [v28 payload];
            v44 = [v42 sendSingleFirmwareToDevice:v43 totalPrepareBytes:a8 bytesSent:a9 featureReportDelay:v70];

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
              if (a11)
              {
                v46 = dispatch_time(0, 60000000000);
                if (dispatch_semaphore_wait(dsema, v46))
                {
                  v47 = [NSError alloc];
                  v81 = NSLocalizedDescriptionKey;
                  v82 = @"No devices enumerated";
                  v48 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
                  v49 = [v47 initWithDomain:v67 code:0 userInfo:v48];

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

      v19 = v56;
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

- (unint64_t)getTotalFirmwareBytes:(id)a3
{
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 personalizationRequired] & 1) == 0)
        {
          v10 = [v9 payload];
          v6 += [v10 length];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v7 = [(SHFUDevice *)self errorDomain];
  v12 = NSLocalizedDescriptionKey;
  v13 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [v6 initWithDomain:v7 code:26 userInfo:v8];

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
  v3 = [(SHFUDevice *)self fwVersions];
  v4 = [v3 objectForKeyedSubscript:&off_100026A48];
  v5 = [v4 unsignedIntValue];

  v6 = [(SHFUDevice *)self productID]== 788 && v5 < 0x80u || [(SHFUDevice *)self productID]== 789 && v5 < 0x30u;
  v8 = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67109632;
    v10[1] = [(SHFUDevice *)self productID];
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "PID 0x%04X ST FW version 0x%04X GATT service discovery needed %d", v10, 0x14u);
  }

  return v6;
}

- (id)latestFirmwareForHardware:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%u", [(SHFUDevice *)self hardwareVersion]];
  v6 = [NSString stringWithFormat:@"%u", 0xFFFFLL];
  v7 = [v4 objectForKeyedSubscript:v5];
  if (v7)
  {
  }

  else
  {
    v12 = [v4 objectForKeyedSubscript:v6];

    if (v12)
    {
      v11 = [v4 objectForKeyedSubscript:v6];
      v8 = [NSMutableDictionary dictionaryWithDictionary:v11];
      goto LABEL_8;
    }
  }

  v8 = [v4 objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:v5];
    v8 = [NSMutableDictionary dictionaryWithDictionary:v9];

    v10 = [v4 objectForKeyedSubscript:v6];

    if (v10)
    {
      v11 = [v4 objectForKeyedSubscript:v6];
      [v8 addEntriesFromDictionary:v11];
LABEL_8:
    }
  }

  return v8;
}

- (BOOL)hardwareVersionSupportedBy:(id)a3
{
  v3 = [(SHFUDevice *)self latestFirmwareForHardware:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)firmwareVersionsOlderThan:(id)a3
{
  v4 = [(SHFUDevice *)self latestFirmwareForHardware:a3];
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
      v12 = [(SHFUDevice *)self fwVersions];
      v13 = [v12 objectForKeyedSubscript:v11];
      v14 = [v13 unsignedIntValue];

      v15 = [v4 objectForKeyedSubscript:v10];
      v16 = [v15 unsignedIntValue];

      if (v14)
      {
        v17 = [(SHFUDevice *)self logHandle];
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
        if (v14 >= v16)
        {
          if (v18)
          {
            v21 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v11 unsignedIntValue]);
            *buf = 138412802;
            v32 = v21;
            v33 = 1024;
            LODWORD(v34[0]) = v14;
            WORD2(v34[0]) = 1024;
            *(v34 + 6) = v16;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@ has version 0x%x equal (or newer) than version 0x%x", buf, 0x18u);
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
            LODWORD(v34[0]) = v14;
            WORD2(v34[0]) = 1024;
            *(v34 + 6) = v16;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@ has version 0x%x older than version 0x%x", buf, 0x18u);
          }

          v26 = 1;
        }
      }

      else
      {
        v17 = [(SHFUDevice *)self logHandle];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v11 unsignedIntValue]);
          *buf = v25;
          v32 = v19;
          v33 = 2112;
          v34[0] = self;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ does not have a version number reported by %@", buf, 0x16u);
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
    v23 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100015B5C();
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)firmwareVersionsEqualTo:(id)a3
{
  v4 = [(SHFUDevice *)self latestFirmwareForHardware:a3];
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
      v12 = [(SHFUDevice *)self fwVersions];
      v13 = [v12 objectForKeyedSubscript:v11];
      v14 = [v13 unsignedIntValue];

      v15 = [v4 objectForKeyedSubscript:v10];
      v16 = [v15 unsignedIntValue];

      if (!v14)
      {
        v17 = [(SHFUDevice *)self logHandle];
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v19 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v11 unsignedIntValue]);
        *buf = v24;
        v31 = v19;
        v32 = 2112;
        v33[0] = self;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ does not have a version number reported by %@", buf, 0x16u);
        goto LABEL_12;
      }

      v17 = [(SHFUDevice *)self logHandle];
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      if (v14 == v16)
      {
        if (!v18)
        {
          goto LABEL_16;
        }

        v19 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v11 unsignedIntValue]);
        *buf = 138412802;
        v31 = v19;
        v32 = 1024;
        LODWORD(v33[0]) = v14;
        WORD2(v33[0]) = 1024;
        *(v33 + 6) = v14;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@ has version 0x%x equal to version 0x%x", buf, 0x18u);
LABEL_12:

        goto LABEL_16;
      }

      if (v18)
      {
        v20 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v11 unsignedIntValue]);
        *buf = 138412802;
        v31 = v20;
        v32 = 1024;
        LODWORD(v33[0]) = v14;
        WORD2(v33[0]) = 1024;
        *(v33 + 6) = v16;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@ has version 0x%x not equal to version 0x%x", buf, 0x18u);
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

  v22 = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_100015B98();
  }

  v21 = 0;
LABEL_23:

  return v21;
}

- (id)sendSingleFirmwareToDevice:(id)a3 totalPrepareBytes:(unint64_t)a4 bytesSent:(unint64_t *)a5 featureReportDelay:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = [(SHFUDevice *)self logHandle];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100015BD4();
  }

  v11 = [(SHFUDevice *)self writeBufferSize]- 1;
  v96 = 29282;
  v94 = self;
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
  v88 = v9;
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

    v19 = v8;
    v20 = [NSError alloc];
    v21 = [(SHFUDevice *)self errorDomain];
    v140 = NSLocalizedDescriptionKey;
    v141 = v18;
    v22 = [NSDictionary dictionaryWithObjects:&v141 forKeys:&v140 count:1];
    v23 = v20;
    v8 = v19;
    v24 = [v23 initWithDomain:v21 code:25 userInfo:v22];
    v25 = 0;
  }

  else
  {
    v18 = [NSString stringWithFormat:@"Ran out of memory for device %@", self];
    v26 = [NSError alloc];
    v21 = [(SHFUDevice *)self errorDomain];
    v142 = NSLocalizedDescriptionKey;
    v143 = v18;
    v25 = 1;
    v22 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];
    v24 = [v26 initWithDomain:v21 code:31 userInfo:v22];
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
  v87 = v8;
  while (v28 < [v8 length])
  {
    if (!(v28 % v91))
    {
      v30 = [(SHFUDevice *)v94 logHandle];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v8 length];
        *buf = 134218240;
        *&buf[4] = v28;
        *&buf[12] = 2048;
        *&buf[14] = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "wrote %lu bytes out of %lu", buf, 0x16u);
      }

      if (a5)
      {
        v32 = (100 * *a5 / a4);
        v33 = [(SHFUDevice *)v94 delegate];
        [v33 progress:v32];
      }
    }

    if (&v29[v28] > [v8 length])
    {
      v34 = [v8 length];
      if (v34 == v28)
      {
        break;
      }

      v29 = &v34[v27];
    }

    if ([(SHFUDevice *)v94 sendOffsets])
    {
      *v15 = BYTE2(v28);
      v15[1] = BYTE1(v28);
      v15[2] = v28;
    }

    [v8 getBytes:v89 range:{v28, v29}];
    v35 = [(SHFUDevice *)v94 setReportID:177 buffer:v15 length:&v29[v93]];
    if (v35)
    {
      v36 = v35;
      v37 = [(SHFUDevice *)v94 logHandle];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v52 = [v8 length];
        *buf = 134218240;
        *&buf[4] = v28;
        *&buf[12] = 2048;
        *&buf[14] = v52;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "wrote %lu bytes out of %lu", buf, 0x16u);
      }

      v38 = [NSData dataWithBytes:v15 length:&v29[v93]];
      v39 = [(SHFUDevice *)v94 logHandle];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v38;
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed feature report buffer: %@", buf, 0xCu);
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
      v40 = [(SHFUDevice *)v94 getReportID:178 buffer:buf length:&v95];
      v41 = v95;
      v42 = buf[0];
      v43 = SHFUIOReturnString(v36);
      v44 = v43;
      if (v40 || v41 != 1 || (v42 & 0xFFFFFFEF) == 0xA1)
      {
        v45 = v94;
        v47 = [NSString stringWithFormat:@"Write report ID 0x%02X failed with %@ for device %@", 177, v43, v94];
      }

      else
      {
        v45 = v94;
        v46 = [(SHFUDevice *)v94 auErrorString:buf[0]];
        v47 = [NSString stringWithFormat:@"Write report ID 0x%02X failed with %@ (%@) for device %@", 177, v44, v46, v94];
      }

      v49 = [NSError alloc];
      v50 = [(SHFUDevice *)v45 errorDomain];
      v107 = NSLocalizedDescriptionKey;
      v108 = v47;
      v51 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v24 = [v49 initWithDomain:v50 code:32 userInfo:v51];

      v15 = v86;
      v8 = v87;
    }

    else
    {
      if (a5)
      {
        *a5 += v29;
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

  v53 = [(SHFUDevice *)v94 logHandle];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = [v8 length];
    *buf = 134217984;
    *&buf[4] = v54;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "wrote %lu bytes successfully.", buf, 0xCu);
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
    v57 = [(SHFUDevice *)v94 setReportID:178 buffer:buf length:1];
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
    v59 = [NSString stringWithFormat:@"Set regular commit report ID 0x%02X failed with %@ for device %@", 178, v58, v94];

    v60 = [NSError alloc];
    v61 = [(SHFUDevice *)v94 errorDomain];
    v105 = NSLocalizedDescriptionKey;
    v106 = v59;
    v62 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    v24 = [v60 initWithDomain:v61 code:27 userInfo:v62];

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
    v65 = [(SHFUDevice *)v94 getReportID:178 buffer:buf length:&v95];
    if (v65)
    {
      v74 = SHFUIOReturnString(v65);
      v75 = [NSString stringWithFormat:@"Get regular commit report ID 0x%02X failed with %@ for device %@", 178, v74, v94];

      v76 = [NSError alloc];
      v77 = [(SHFUDevice *)v94 errorDomain];
      v99 = NSLocalizedDescriptionKey;
      v100 = v75;
      v78 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v79 = v76;
      v80 = v77;
      v81 = 28;
      goto LABEL_70;
    }

    if (v95 != 1)
    {
      v75 = [NSString stringWithFormat:@"Get regular commit report ID 0x%02X returned invalid payload length %u for device %@", 178, v95, v94];
      v82 = [NSError alloc];
      v77 = [(SHFUDevice *)v94 errorDomain];
      v103 = NSLocalizedDescriptionKey;
      v104 = v75;
      v78 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      v79 = v82;
      v80 = v77;
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
      v69 = [(SHFUDevice *)v94 auErrorString:1];
      v70 = [NSString stringWithFormat:@"Get regular commit report ID 0x%02X returned invalid payload contents 0x%02X %@ for device %@", 178, 1, v69, v94];

      v71 = [NSError alloc];
      v72 = [(SHFUDevice *)v94 errorDomain];
      v97 = NSLocalizedDescriptionKey;
      v98 = v70;
      v73 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v24 = [v71 initWithDomain:v72 code:30 userInfo:v73];

      goto LABEL_71;
    }
  }

  if (buf[0] == 161)
  {
    v24 = 0;
    goto LABEL_71;
  }

  v83 = [(SHFUDevice *)v94 auErrorString:buf[0]];
  v75 = [NSString stringWithFormat:@"Get regular commit report ID 0x%02X returned invalid payload contents 0x%02X %@ for device %@", 178, v66, v83, v94];

  v84 = [NSError alloc];
  v77 = [(SHFUDevice *)v94 errorDomain];
  v101 = NSLocalizedDescriptionKey;
  v102 = v75;
  v78 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
  v79 = v84;
  v80 = v77;
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

- (int)getReportID:(unsigned __int8)a3 buffer:(char *)a4 length:(unsigned int *)a5
{
  v7 = a3;
  deviceRef = self->_deviceRef;
  v9 = [(SHFUDevice *)self logHandle];
  LODWORD(a5) = sub_10000C8B8(v7, a4, a5, deviceRef, v9);

  return a5;
}

- (int)setReportID:(unsigned __int8)a3 buffer:(char *)a4 length:(unsigned int)a5
{
  v6 = a3;
  v8 = 3758097090;
  if (a4 || !a5)
  {
    if (a5 <= 0x200)
    {
      report[0] = a3;
      if (a4 && a5)
      {
        __memmove_chk();
      }

      v8 = IOHIDDeviceSetReport(self->_deviceRef, kIOHIDReportTypeFeature, v6, report, a5 + 1);
    }

    else
    {
      v8 = 3758097128;
    }
  }

  if (v6 != 179 && v8)
  {
    v9 = [NSData dataWithBytes:report length:a5 + 1];
    v10 = [(SHFUDevice *)self logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = SHFUIOReturnString(v8);
      v13[0] = 67109890;
      v13[1] = v6;
      v14 = 2112;
      v15 = v9;
      v16 = 1024;
      v17 = v8;
      v18 = 2112;
      v19 = v12;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "reportID 0x%02X payload %@ error 0x%08X %@", v13, 0x22u);
    }
  }

  return v8;
}

- (id)auErrorString:(unsigned __int8)a3
{
  if (a3 > 63)
  {
    if (a3 <= 118)
    {
      if (a3 > 114)
      {
        if (a3 > 116)
        {
          if (a3 == 117)
          {
            return @"kAUErrorSigBadDigestInfo";
          }

          else
          {
            return @"kAUErrorSigBadSigInfo";
          }
        }

        else if (a3 == 115)
        {
          return @"kAUErrorSigBadMagic";
        }

        else
        {
          return @"kAUErrorSigVerUnsupported";
        }
      }

      if (a3 > 112)
      {
        if (a3 == 113)
        {
          return @"kAUErrorSigDigestMismatch";
        }

        else
        {
          return @"kAUErrorSigInfoInvalid";
        }
      }

      if (a3 == 64)
      {
        return @"kAUErrorInvalidRegion";
      }

      if (a3 == 112)
      {
        return @"kAUErrorSigInvalid";
      }
    }

    else if (a3 <= 130)
    {
      if (a3 > 128)
      {
        if (a3 == 129)
        {
          return @"kAUErrorPersVerUnsupported";
        }

        else
        {
          return @"kAUErrorPersUDIDMismatch";
        }
      }

      if (a3 == 119)
      {
        return @"kAUErrorNotSigned";
      }

      if (a3 == 128)
      {
        return @"kAUErrorNotPersonalized";
      }
    }

    else if (a3 <= 175)
    {
      if (a3 == 131)
      {
        return @"kAUErrorPersBadMagic";
      }

      if (a3 == 161)
      {
        return @"kAUErrorSuccessKey";
      }
    }

    else
    {
      switch(a3)
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
  switch(a3)
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

        v7 = [(SHFUDevice *)self logHandle];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
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

            v19 = [(SHFUDevice *)self logHandle];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
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
              _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@ (%d) version 0x%x (%d)", buf, 0x1Eu);
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
  v2 = [(SHFUDevice *)self powerSource];
  v3 = [v2 objectForKeyedSubscript:@"Is Charging"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (int)batteryCapacity
{
  v2 = [(SHFUDevice *)self powerSource];
  v3 = [v2 objectForKeyedSubscript:@"Current Capacity"];

  LODWORD(v2) = [v3 intValue];
  return v2;
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
    v9 = [(SHFUDevice *)self serialQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100012570;
    handler[3] = &unk_100024800;
    handler[4] = self;
    v10 = v8;
    v17 = v10;
    v11 = notify_register_dispatch("com.apple.system.accpowersources.attach", &out_token, v9, handler);

    if (!v11)
    {
      v12 = [(SHFUDevice *)self serialQueue];
      dispatch_async(v12, v10);

      v13 = dispatch_time(0, 15000000000);
      v14 = [(SHFUDevice *)self powerSemaphore];
      [(SHFUDevice *)self setPowerSourceTimedOut:dispatch_semaphore_wait(v14, v13)];

      if ([(SHFUDevice *)self powerSourceTimedOut])
      {
        v15 = [(SHFUDevice *)self logHandle];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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