@interface CWFIO80211
- (BOOL)isMonitoringEvents;
- (CWFIO80211)init;
- (id)IO80211ControllerInfo;
- (id)IO80211InterfaceInfo:(id)a3 error:(id *)a4;
- (id)__IO80211InfoMatchingService:(unsigned int)a3;
- (void)dealloc;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation CWFIO80211

- (CWFIO80211)init
{
  v87 = *MEMORY[0x1E69E9840];
  notification = 0;
  v73.receiver = self;
  v73.super_class = CWFIO80211;
  v2 = [(CWFIO80211 *)&v73 init];
  if (!v2)
  {
    goto LABEL_79;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.corewifi.io80211-mutex", v3);
  mutexQueue = v2->_mutexQueue;
  v2->_mutexQueue = v4;

  if (!v2->_mutexQueue)
  {
    goto LABEL_79;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.corewifi.io80211-event", v6);
  eventQueue = v2->_eventQueue;
  v2->_eventQueue = v7;

  if (!v2->_eventQueue)
  {
    goto LABEL_79;
  }

  mainPort = 0;
  v9 = MEMORY[0x1E69E99F8];
  if (MEMORY[0x1E12E9640](*MEMORY[0x1E69E99F8], &mainPort))
  {
    goto LABEL_79;
  }

  v10 = IONotificationPortCreate(mainPort);
  v2->_portRef = v10;
  if (!v10)
  {
    goto LABEL_79;
  }

  v2->_publishIO80211SkywalkInterface = 0;
  v11 = IOServiceAddMatchingNotification(v10, "IOServiceMatched", &unk_1F5BBD610, sub_1E0C148E0, v2, &v2->_publishIO80211SkywalkInterface);
  if (v11)
  {
    v32 = v11;
    v33 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v34 = CWFGetOSLog();
    if (v34)
    {
      v35 = CWFGetOSLog();
    }

    else
    {
      v35 = MEMORY[0x1E69E9C10];
      v61 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v75 = 134219778;
    v76 = v33 / 0x3B9ACA00;
    v77 = 2048;
    v78 = v33 % 0x3B9ACA00 / 0x3E8;
    v79 = 2082;
    v80 = "[CWFIO80211 init]";
    v81 = 2082;
    v82 = "CWFIO80211.m";
    v83 = 1024;
    v84 = 144;
    v85 = 1024;
    *v86 = v32;
    *&v86[4] = 2112;
    *&v86[6] = @"IO80211InterfaceRole";
    *&v86[14] = 2112;
    *&v86[16] = @"Infrastructure";
    goto LABEL_63;
  }

  v2->_terminatedIO80211SkywalkInterface = 0;
  v12 = IOServiceAddMatchingNotification(v2->_portRef, "IOServiceTerminate", &unk_1F5BBD660, sub_1E0C148EC, v2, &v2->_terminatedIO80211SkywalkInterface);
  if (v12)
  {
    v36 = v12;
    v37 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v38 = CWFGetOSLog();
    if (v38)
    {
      v35 = CWFGetOSLog();
    }

    else
    {
      v35 = MEMORY[0x1E69E9C10];
      v62 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v75 = 134219778;
    v76 = v37 / 0x3B9ACA00;
    v77 = 2048;
    v78 = v37 % 0x3B9ACA00 / 0x3E8;
    v79 = 2082;
    v80 = "[CWFIO80211 init]";
    v81 = 2082;
    v82 = "CWFIO80211.m";
    v83 = 1024;
    v84 = 149;
    v85 = 1024;
    *v86 = v36;
    *&v86[4] = 2112;
    *&v86[6] = @"IO80211InterfaceRole";
    *&v86[14] = 2112;
    *&v86[16] = @"Infrastructure";
    goto LABEL_63;
  }

  sub_1E0C1547C(0, v2->_publishIO80211SkywalkInterface, @"IOServiceMatched");
  sub_1E0C1547C(0, v2->_terminatedIO80211SkywalkInterface, @"IOServiceTerminate");
  v71 = 0;
  if (MEMORY[0x1E12E9640](*v9, &v71))
  {
    goto LABEL_79;
  }

  v13 = IONotificationPortCreate(v71);
  v2->_portRefVirtual = v13;
  if (!v13)
  {
    goto LABEL_79;
  }

  v14 = [MEMORY[0x1E695DF90] dictionary];
  publishIO80211VirtualInterfaceMap = v2->_publishIO80211VirtualInterfaceMap;
  v2->_publishIO80211VirtualInterfaceMap = v14;

  if (!v2->_publishIO80211VirtualInterfaceMap)
  {
    goto LABEL_79;
  }

  v16 = [MEMORY[0x1E695DF90] dictionary];
  terminatedIO80211VirtualInterfaceMap = v2->_terminatedIO80211VirtualInterfaceMap;
  v2->_terminatedIO80211VirtualInterfaceMap = v16;

  if (!v2->_terminatedIO80211VirtualInterfaceMap)
  {
    goto LABEL_79;
  }

  notification = 0;
  v18 = IOServiceAddMatchingNotification(v2->_portRef, "IOServiceMatched", &unk_1F5BBD6B0, sub_1E0C148F8, v2, &notification);
  if (v18)
  {
    v39 = v18;
    v40 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v41 = CWFGetOSLog();
    if (v41)
    {
      v35 = CWFGetOSLog();
    }

    else
    {
      v35 = MEMORY[0x1E69E9C10];
      v63 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v75 = 134219778;
    v76 = v40 / 0x3B9ACA00;
    v77 = 2048;
    v78 = v40 % 0x3B9ACA00 / 0x3E8;
    v79 = 2082;
    v80 = "[CWFIO80211 init]";
    v81 = 2082;
    v82 = "CWFIO80211.m";
    v83 = 1024;
    v84 = 173;
    v85 = 1024;
    *v86 = v39;
    *&v86[4] = 2112;
    *&v86[6] = @"IO80211VirtualInterfaceRole";
    *&v86[14] = 2112;
    *&v86[16] = @"WiFi-Aware Data";
    goto LABEL_63;
  }

  v19 = [MEMORY[0x1E696B098] valueWithPointer:notification];
  [(NSMutableDictionary *)v2->_publishIO80211VirtualInterfaceMap setObject:v19 forKeyedSubscript:@"WiFi-Aware Data"];

  v20 = [(NSMutableDictionary *)v2->_publishIO80211VirtualInterfaceMap objectForKeyedSubscript:@"WiFi-Aware Data"];

  if (!v20)
  {
    v42 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v43 = CWFGetOSLog();
    if (v43)
    {
      v44 = CWFGetOSLog();
    }

    else
    {
      v44 = MEMORY[0x1E69E9C10];
      v64 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }

    v75 = 134219522;
    v76 = v42 / 0x3B9ACA00;
    v77 = 2048;
    v78 = v42 % 0x3B9ACA00 / 0x3E8;
    v79 = 2082;
    v80 = "[CWFIO80211 init]";
    v81 = 2082;
    v82 = "CWFIO80211.m";
    v83 = 1024;
    v84 = 176;
    v85 = 2112;
    *v86 = @"IO80211VirtualInterfaceRole";
    *&v86[8] = 2112;
    *&v86[10] = @"WiFi-Aware Data";
    goto LABEL_76;
  }

  sub_1E0C1547C(0, notification, @"IOServiceMatched");
  notification = 0;
  v21 = IOServiceAddMatchingNotification(v2->_portRef, "IOServiceTerminate", &unk_1F5BBD700, sub_1E0C14904, v2, &notification);
  if (v21)
  {
    v45 = v21;
    v46 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v47 = CWFGetOSLog();
    if (v47)
    {
      v48 = CWFGetOSLog();
    }

    else
    {
      v48 = MEMORY[0x1E69E9C10];
      v65 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_72;
    }

    v75 = 134219778;
    v76 = v46 / 0x3B9ACA00;
    v77 = 2048;
    v78 = v46 % 0x3B9ACA00 / 0x3E8;
    v79 = 2082;
    v80 = "[CWFIO80211 init]";
    v81 = 2082;
    v82 = "CWFIO80211.m";
    v83 = 1024;
    v84 = 186;
    v85 = 1024;
    *v86 = v45;
    *&v86[4] = 2112;
    *&v86[6] = @"IO80211VirtualInterfaceRole";
    *&v86[14] = 2112;
    *&v86[16] = @"WiFi-Aware Data";
    goto LABEL_71;
  }

  v22 = [MEMORY[0x1E696B098] valueWithPointer:notification];
  [(NSMutableDictionary *)v2->_terminatedIO80211VirtualInterfaceMap setObject:v22 forKeyedSubscript:@"WiFi-Aware Data"];

  v23 = [(NSMutableDictionary *)v2->_terminatedIO80211VirtualInterfaceMap objectForKeyedSubscript:@"WiFi-Aware Data"];

  if (!v23)
  {
    v49 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v50 = CWFGetOSLog();
    if (v50)
    {
      v44 = CWFGetOSLog();
    }

    else
    {
      v44 = MEMORY[0x1E69E9C10];
      v66 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }

    v75 = 134219522;
    v76 = v49 / 0x3B9ACA00;
    v77 = 2048;
    v78 = v49 % 0x3B9ACA00 / 0x3E8;
    v79 = 2082;
    v80 = "[CWFIO80211 init]";
    v81 = 2082;
    v82 = "CWFIO80211.m";
    v83 = 1024;
    v84 = 189;
    v85 = 2112;
    *v86 = @"IO80211VirtualInterfaceRole";
    *&v86[8] = 2112;
    *&v86[10] = @"WiFi-Aware Data";
    goto LABEL_76;
  }

  sub_1E0C1547C(0, notification, @"IOServiceMatched");
  notification = 0;
  v24 = IOServiceAddMatchingNotification(v2->_portRef, "IOServiceMatched", &unk_1F5BBD750, sub_1E0C148F8, v2, &notification);
  if (v24)
  {
    v51 = v24;
    v52 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v53 = CWFGetOSLog();
    if (v53)
    {
      v35 = CWFGetOSLog();
    }

    else
    {
      v35 = MEMORY[0x1E69E9C10];
      v67 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v75 = 134219778;
    v76 = v52 / 0x3B9ACA00;
    v77 = 2048;
    v78 = v52 % 0x3B9ACA00 / 0x3E8;
    v79 = 2082;
    v80 = "[CWFIO80211 init]";
    v81 = 2082;
    v82 = "CWFIO80211.m";
    v83 = 1024;
    v84 = 200;
    v85 = 1024;
    *v86 = v51;
    *&v86[4] = 2112;
    *&v86[6] = @"IO80211VirtualInterfaceRole";
    *&v86[14] = 2112;
    *&v86[16] = @"SoftAP";
LABEL_63:
    _os_log_send_and_compose_impl();
LABEL_64:

LABEL_79:
    v2 = 0;
    goto LABEL_21;
  }

  v25 = [MEMORY[0x1E696B098] valueWithPointer:notification];
  [(NSMutableDictionary *)v2->_publishIO80211VirtualInterfaceMap setObject:v25 forKeyedSubscript:@"SoftAP"];

  v26 = [(NSMutableDictionary *)v2->_publishIO80211VirtualInterfaceMap objectForKeyedSubscript:@"SoftAP"];

  if (!v26)
  {
    v54 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v55 = CWFGetOSLog();
    if (v55)
    {
      v44 = CWFGetOSLog();
    }

    else
    {
      v44 = MEMORY[0x1E69E9C10];
      v68 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }

    v75 = 134219522;
    v76 = v54 / 0x3B9ACA00;
    v77 = 2048;
    v78 = v54 % 0x3B9ACA00 / 0x3E8;
    v79 = 2082;
    v80 = "[CWFIO80211 init]";
    v81 = 2082;
    v82 = "CWFIO80211.m";
    v83 = 1024;
    v84 = 203;
    v85 = 2112;
    *v86 = @"IO80211VirtualInterfaceRole";
    *&v86[8] = 2112;
    *&v86[10] = @"SoftAP";
    goto LABEL_76;
  }

  sub_1E0C1547C(0, notification, @"IOServiceMatched");
  notification = 0;
  v27 = IOServiceAddMatchingNotification(v2->_portRef, "IOServiceTerminate", &unk_1F5BBD7A0, sub_1E0C14904, v2, &notification);
  if (v27)
  {
    v56 = v27;
    v57 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v58 = CWFGetOSLog();
    if (v58)
    {
      v48 = CWFGetOSLog();
    }

    else
    {
      v48 = MEMORY[0x1E69E9C10];
      v69 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_72;
    }

    v75 = 134219778;
    v76 = v57 / 0x3B9ACA00;
    v77 = 2048;
    v78 = v57 % 0x3B9ACA00 / 0x3E8;
    v79 = 2082;
    v80 = "[CWFIO80211 init]";
    v81 = 2082;
    v82 = "CWFIO80211.m";
    v83 = 1024;
    v84 = 213;
    v85 = 1024;
    *v86 = v56;
    *&v86[4] = 2112;
    *&v86[6] = @"IO80211VirtualInterfaceRole";
    *&v86[14] = 2112;
    *&v86[16] = @"SoftAP";
LABEL_71:
    _os_log_send_and_compose_impl();
LABEL_72:

    goto LABEL_79;
  }

  v28 = [MEMORY[0x1E696B098] valueWithPointer:notification];
  [(NSMutableDictionary *)v2->_terminatedIO80211VirtualInterfaceMap setObject:v28 forKeyedSubscript:@"SoftAP"];

  v29 = [(NSMutableDictionary *)v2->_terminatedIO80211VirtualInterfaceMap objectForKeyedSubscript:@"SoftAP"];

  if (!v29)
  {
    v59 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v60 = CWFGetOSLog();
    if (v60)
    {
      v44 = CWFGetOSLog();
    }

    else
    {
      v44 = MEMORY[0x1E69E9C10];
      v70 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }

    v75 = 134219522;
    v76 = v59 / 0x3B9ACA00;
    v77 = 2048;
    v78 = v59 % 0x3B9ACA00 / 0x3E8;
    v79 = 2082;
    v80 = "[CWFIO80211 init]";
    v81 = 2082;
    v82 = "CWFIO80211.m";
    v83 = 1024;
    v84 = 216;
    v85 = 2112;
    *v86 = @"IO80211VirtualInterfaceRole";
    *&v86[8] = 2112;
    *&v86[10] = @"SoftAP";
LABEL_76:
    _os_log_send_and_compose_impl();
LABEL_77:

    if (notification)
    {
      IOObjectRelease(notification);
    }

    goto LABEL_79;
  }

  sub_1E0C1547C(0, notification, @"IOServiceMatched");
LABEL_21:
  v30 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  v30 = *MEMORY[0x1E69E9840];
  publishIO80211SkywalkInterface = self->_publishIO80211SkywalkInterface;
  if (publishIO80211SkywalkInterface)
  {
    IOObjectRelease(publishIO80211SkywalkInterface);
  }

  terminatedIO80211SkywalkInterface = self->_terminatedIO80211SkywalkInterface;
  if (terminatedIO80211SkywalkInterface)
  {
    IOObjectRelease(terminatedIO80211SkywalkInterface);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(NSMutableDictionary *)self->_publishIO80211VirtualInterfaceMap allValues];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if ([v10 pointerValue])
        {
          IOObjectRelease([v10 pointerValue]);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(NSMutableDictionary *)self->_terminatedIO80211VirtualInterfaceMap allValues];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        if ([v16 pointerValue])
        {
          IOObjectRelease([v16 pointerValue]);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  portRef = self->_portRef;
  if (portRef)
  {
    IONotificationPortDestroy(portRef);
  }

  v19.receiver = self;
  v19.super_class = CWFIO80211;
  [(CWFIO80211 *)&v19 dealloc];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)startEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C14B78;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)stopEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C14C48;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (BOOL)isMonitoringEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C14D54;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)__IO80211InfoMatchingService:(unsigned int)a3
{
  properties = 0;
  if (a3)
  {
    IORegistryEntryCreateCFProperties(a3, &properties, *MEMORY[0x1E695E480], 0);
    IOObjectRelease(a3);
    v4 = properties;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(__CFDictionary *)v4 copy];
  if (properties)
  {
    CFRelease(properties);
  }

  return v5;
}

- (id)IO80211ControllerInfo
{
  v38 = *MEMORY[0x1E69E9840];
  existing = 0;
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("IOEthernetInterface");
  mainPort = v2;
  MatchingServices = IOServiceGetMatchingServices(v2, v3, &existing);
  if (MatchingServices)
  {
    v17 = MatchingServices;
    v18 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *properties = 134219522;
      *&properties[4] = v18 / 0x3B9ACA00;
      v26 = 2048;
      v27 = v18 % 0x3B9ACA00 / 0x3E8;
      v28 = 2082;
      v29 = "__findWiFiController";
      v30 = 2082;
      v31 = "CWFIO80211.m";
      v32 = 1024;
      v33 = 465;
      v34 = 1024;
      v35 = v17;
      v36 = 2112;
      v37 = @"IOEthernetInterface";
      _os_log_send_and_compose_impl();
    }

    v10 = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
    while (1)
    {
      v6 = IOIteratorNext(existing);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      v8 = IORegistryEntryCreateCFProperty(v6, @"BSD Name", v5, 0);
      *iterator = 0;
      *properties = 0;
      v9 = IOServiceMatching("IOSkywalkEthernetInterface");
      v10 = 0;
      if (!IOServiceGetMatchingServices(mainPort, v9, &iterator[1]) && iterator[1])
      {
        v11 = IOIteratorNext(iterator[1]);
        if (v11)
        {
          v12 = v11;
          do
          {
            if (IORegistryEntryGetParentEntry(v12, "IOService", iterator))
            {
              IOObjectRelease(v12);
            }

            else
            {
              v13 = IORegistryEntrySearchCFProperty(v12, "IOService", @"IOClassNameOverride", v5, 1u);
              v14 = IORegistryEntrySearchCFProperty(v12, "IOService", @"BSD Name", v5, 1u);
              if ([v14 isEqualToString:v8] && objc_msgSend(v13, "isEqualToString:", @"IO80211Controller"))
              {
                IORegistryEntryCreateCFProperties(iterator[0], properties, v5, 0);
              }

              if (v13)
              {
                CFRelease(v13);
              }

              if (v14)
              {
                CFRelease(v14);
              }

              IOObjectRelease(iterator[0]);
              IOObjectRelease(v12);
              if (*properties)
              {
                break;
              }
            }

            v12 = IOIteratorNext(iterator[1]);
          }

          while (v12);
        }

        IOObjectRelease(iterator[1]);
        v10 = [*properties copy];
        if (*properties)
        {
          CFRelease(*properties);
        }
      }

      if (v8)
      {
        CFRelease(v8);
      }

      IOObjectRelease(v7);
      if (v10)
      {
        goto LABEL_26;
      }
    }

    v10 = 0;
LABEL_26:
    IOObjectRelease(existing);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)IO80211InterfaceInfo:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionarySetValue(Mutable, @"IOInterfaceName", v5);
    v8 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(v8, @"IOPropertyMatch", v7);
      v10 = [(CWFIO80211 *)self __IO80211InfoMatchingService:IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v9)];
    }

    else
    {
      v15 = CWFGetOSLog();
      if (v15)
      {
        v16 = CWFGetOSLog();
      }

      else
      {
        v16 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        _os_log_send_and_compose_impl();
      }

      v10 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v14 = CWFGetOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end