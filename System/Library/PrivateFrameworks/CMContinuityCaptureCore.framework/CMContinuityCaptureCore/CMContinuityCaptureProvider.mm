@interface CMContinuityCaptureProvider
+ (id)filterCapabilitiesByMinorVersion:(id)version;
- (BOOL)activate;
- (BOOL)connectClient:(id)client error:(id *)error;
- (BOOL)setProviderProperties:(id)properties error:(id *)error;
- (CMContinuityCaptureProvider)initWithQueue:(id)queue;
- (NSSet)availableProperties;
- (NSString)description;
- (id)_captureDeviceForEntity:(int64_t)entity deviceUID:(id)d;
- (id)_debugInfo;
- (id)debugInfo;
- (id)providerPropertiesForProperties:(id)properties error:(id *)error;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_reset:(id)_reset;
- (void)_terminateCompleteForDevice:(id)device;
- (void)cancel;
- (void)createCompositeDeviceWithTransportDevice:(id)device;
- (void)debugInfo:(id)info;
- (void)disconnectClient:(id)client;
- (void)logDevicePublishSummary:(id)summary publishTime:(id)time;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)postEventOnAllDevices:(id)devices data:(id)data;
- (void)registerStreamIntentForDevice:(id)device forTransportType:(int64_t)type completion:(id)completion;
- (void)reset:(id)reset;
- (void)resetTransportDevice:(id)device forIdentifier:(id)identifier;
- (void)terminateAllDevices;
- (void)terminateCompleteForDevice:(id)device;
- (void)terminateCompositeDeviceWithIdentifier:(id)identifier;
- (void)terminateDevicesIfApplicable:(id)applicable;
- (void)unregisterStreamIntentForDevice:(id)device;
- (void)updateState;
@end

@implementation CMContinuityCaptureProvider

+ (id)filterCapabilitiesByMinorVersion:(id)version
{
  versionCopy = version;
  v4 = 0x277CBE000uLL;
  array = [MEMORY[0x277CBEB18] array];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v40 = versionCopy;
  obj = [versionCopy devicesCapabilities];
  v44 = [obj countByEnumeratingWithState:&v96 objects:v95 count:16];
  if (!v44)
  {
    goto LABEL_56;
  }

  v42 = *v97;
  do
  {
    v5 = 0;
    do
    {
      if (*v97 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v46 = v5;
      v6 = *(*(&v96 + 1) + 8 * v5);
      array2 = [*(v4 + 2840) array];
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v47 = v6;
      streamFormats = [v6 streamFormats];
      v9 = [streamFormats countByEnumeratingWithState:&v91 objects:v90 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v92;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v92 != v11)
            {
              objc_enumerationMutation(streamFormats);
            }

            v13 = *(*(&v91 + 1) + 8 * i);
            if (!v13)
            {
              v88 = 0;
              v87 = 0;
              v89 = 0;
              v85 = 0;
              v83 = 0;
              v84 = 0;
LABEL_19:
              [array2 addObject:v13];
              continue;
            }

            [*(*(&v91 + 1) + 8 * i) minimumSupportedVersion];
            if (v87 == 3)
            {
              [v13 minimumSupportedVersion];
              if (v86 <= 304)
              {
                goto LABEL_19;
              }
            }

            [v13 minimumSupportedVersion];
            if (v83 <= 2)
            {
              goto LABEL_19;
            }

            v14 = CMContinuityCaptureLog(1);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v13;
              _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "Filtered out unsupported stream format %@", &buf, 0xCu);
            }
          }

          v10 = [streamFormats countByEnumeratingWithState:&v91 objects:v90 count:16];
        }

        while (v10);
      }

      array3 = [*(v4 + 2840) array];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      manualFramingSupportedStreamFormats = [v47 manualFramingSupportedStreamFormats];
      v16 = [manualFramingSupportedStreamFormats countByEnumeratingWithState:&v79 objects:v78 count:16];
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = v16;
      v18 = *v80;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v80 != v18)
          {
            objc_enumerationMutation(manualFramingSupportedStreamFormats);
          }

          v20 = *(*(&v79 + 1) + 8 * j);
          if (!v20)
          {
            v75 = 0;
            v76 = 0;
            v77 = 0;
            v72 = 0;
            v73 = 0;
            v71 = 0;
LABEL_35:
            [array2 addObject:v20];
            continue;
          }

          [*(*(&v79 + 1) + 8 * j) minimumSupportedVersion];
          if (v75 == 3)
          {
            [v20 minimumSupportedVersion];
            if (v74 <= 304)
            {
              goto LABEL_35;
            }
          }

          [v20 minimumSupportedVersion];
          if (v71 <= 2)
          {
            goto LABEL_35;
          }

          v21 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v20;
            _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "Filtered out unsupported manual framing format %@", &buf, 0xCu);
          }
        }

        v17 = [manualFramingSupportedStreamFormats countByEnumeratingWithState:&v79 objects:v78 count:16];
      }

      while (v17);
LABEL_38:

      array4 = [*(v4 + 2840) array];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      controls = [v47 controls];
      v24 = [controls countByEnumeratingWithState:&v67 objects:v66 count:16];
      if (!v24)
      {
        goto LABEL_54;
      }

      v25 = v24;
      v26 = *v68;
      while (2)
      {
        v27 = 0;
        while (2)
        {
          if (*v68 != v26)
          {
            objc_enumerationMutation(controls);
          }

          v28 = *(*(&v67 + 1) + 8 * v27);
          if (!v28)
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v60 = 0;
            v61 = 0;
            v59 = 0;
LABEL_51:
            [array4 addObject:v28];
            goto LABEL_52;
          }

          [*(*(&v67 + 1) + 8 * v27) minimumSupportedVersion];
          if (v63 == 3)
          {
            [v28 minimumSupportedVersion];
            if (v62 <= 304)
            {
              goto LABEL_51;
            }
          }

          [v28 minimumSupportedVersion];
          if (v59 <= 2)
          {
            goto LABEL_51;
          }

          v29 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v28;
            _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "Filtered out unsupported control %@", &buf, 0xCu);
          }

LABEL_52:
          if (v25 != ++v27)
          {
            continue;
          }

          break;
        }

        v25 = [controls countByEnumeratingWithState:&v67 objects:v66 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }

LABEL_54:

      v30 = -[CMContinuityCaptureDeviceCapabilities initWithEntityType:streamFormats:manualFramingSupportedStreamFormats:controls:]([CMContinuityCaptureDeviceCapabilities alloc], "initWithEntityType:streamFormats:manualFramingSupportedStreamFormats:controls:", [v47 entityType], array2, array3, array4);
      [array addObject:v30];

      v5 = v46 + 1;
      v4 = 0x277CBE000;
    }

    while (v46 + 1 != v44);
    v44 = [obj countByEnumeratingWithState:&v96 objects:v95 count:16];
  }

  while (v44);
LABEL_56:

  if (v40)
  {
    [v40 capabilitiesVersion];
    v31 = v56;
    [v40 capabilitiesVersion];
    v32 = v54;
    [v40 capabilitiesVersion];
    v33 = v52;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v54 = 0;
    v55 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
  }

  if (v32 >= 304)
  {
    v32 = 304;
  }

  if (v31 >= 3)
  {
    v34 = 3;
  }

  else
  {
    v34 = v31;
  }

  if (v33 >= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v33;
  }

  v36 = [CMContinuityCaptureCapabilities alloc];
  userDisabled = [v40 userDisabled];
  *&buf = v34;
  *(&buf + 1) = v32;
  v49 = v35;
  v38 = [(CMContinuityCaptureCapabilities *)v36 initWithCapabilitiesVersion:&buf devicesCapabilities:array userDisabled:userDisabled];

  return v38;
}

- (void)logDevicePublishSummary:(id)summary publishTime:(id)time
{
  summaryCopy = summary;
  timeCopy = time;
  if ([(NSMutableArray *)self->_devicePublishLogs count]>= 0xB)
  {
    [(NSMutableArray *)self->_devicePublishLogs removeObjectAtIndex:0];
  }

  if (summaryCopy)
  {
    v8 = summaryCopy;
  }

  else
  {
    v8 = &stru_2854DE150;
  }

  v12 = @"DeviceIdentifier";
  v13 = @"DevicePublishTime";
  if (timeCopy)
  {
    v9 = timeCopy;
  }

  else
  {
    v9 = &stru_2854DE150;
  }

  v15 = v8;
  v16 = v9;
  v14 = @"DeviceTerminateTime";
  v10 = CMContinuityCaptureGetCurrentTimeString();
  v17 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v12 count:3];

  [(NSMutableArray *)self->_devicePublishLogs addObject:v11, v12, v13, v14, v15, v16];
}

- (void)terminateAllDevices
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    availableCaptureDevicesByIdentifiers = self->_availableCaptureDevicesByIdentifiers;
    *buf = 138412802;
    selfCopy2 = self;
    v21 = 2082;
    v22 = "[CMContinuityCaptureProvider terminateAllDevices]";
    v23 = 2114;
    v24 = availableCaptureDevicesByIdentifiers;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %{public}s %{public}@ ", buf, 0x20u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    *&v7 = 138412546;
    v13 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:v11, v13])
        {
          v12 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            selfCopy2 = self;
            v21 = 2114;
            v22 = v11;
            _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ has pending termination", buf, 0x16u);
          }
        }

        else
        {
          [(CMContinuityCaptureProvider *)self terminateCompositeDeviceWithIdentifier:v11];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }
}

- (void)postEventOnAllDevices:(id)devices data:(id)data
{
  devicesCopy = devices;
  dataCopy = data;
  allValues = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allValues];
  v9 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v22 = 2112;
    v23 = devicesCopy;
    v24 = 2114;
    v25 = allValues;
    v26 = 2114;
    v27 = dataCopy;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ Post %@ on devices %{public}@ data %{public}@", buf, 0x2Au);
  }

  if (devicesCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = allValues;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * i) postEvent:devicesCopy entity:0 data:dataCopy];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v10 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [CMContinuityCaptureProvider postEventOnAllDevices:v10 data:?];
    }
  }
}

- (void)terminateCompleteForDevice:(id)device
{
  deviceCopy = device;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CMContinuityCaptureProvider_terminateCompleteForDevice___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__CMContinuityCaptureProvider_terminateCompleteForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _terminateCompleteForDevice:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)createCompositeDeviceWithTransportDevice:(id)device
{
  deviceCopy = device;
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdentifier = [deviceCopy deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];
    *buf = 138412802;
    selfCopy = self;
    v50 = 2080;
    v51 = "[CMContinuityCaptureProvider createCompositeDeviceWithTransportDevice:]";
    v52 = 2114;
    v53 = uUIDString;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@", buf, 0x20u);
  }

  v9 = [[CMContinuityCaptureCompositeDevice alloc] initWithDevice:deviceCopy provider:self];
  if (!v9)
  {
    [(CMContinuityCaptureProvider *)self createCompositeDeviceWithTransportDevice:deviceCopy];
    goto LABEL_11;
  }

  availableCaptureDevicesByIdentifiers = self->_availableCaptureDevicesByIdentifiers;
  deviceIdentifier2 = [deviceCopy deviceIdentifier];
  uUIDString2 = [deviceIdentifier2 UUIDString];
  [(NSMutableDictionary *)availableCaptureDevicesByIdentifiers setObject:v9 forKeyedSubscript:uUIDString2];

  v13 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  activeSession = [v13 activeSession];
  if (activeSession)
  {
    v15 = activeSession;
    v16 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    activeSession2 = [v16 activeSession];
    device = [activeSession2 device];
    if ([device hasStreamIntent])
    {
      v40 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      activeSession3 = [v40 activeSession];
      device2 = [activeSession3 device];
      deviceIdentifier3 = [device2 deviceIdentifier];
      uUIDString3 = [deviceIdentifier3 UUIDString];
      [deviceCopy deviceIdentifier];
      v21 = v41 = deviceCopy;
      [v21 UUIDString];
      v22 = v37 = v16;
      v38 = [uUIDString3 isEqualToString:v22];

      deviceCopy = v41;
      if ((v38 & 1) == 0)
      {
        [(CMContinuityCaptureCompositeDevice *)v9 postEvent:@"kCMContinuityCaptureEventStreamDisableForMultipleStream" entity:0 data:0];
      }

      goto LABEL_10;
    }
  }

LABEL_10:
  client = [(CMContinuityCaptureCompositeDevice *)v9 client];
  device3 = [client device];
  magicStateMonitor = [device3 magicStateMonitor];
  queue2 = [magicStateMonitor queue];
  dispatch_assert_queue_not_V2(queue2);

  client2 = [(CMContinuityCaptureCompositeDevice *)v9 client];
  device4 = [client2 device];
  magicStateMonitor2 = [device4 magicStateMonitor];
  queue3 = [magicStateMonitor2 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CMContinuityCaptureProvider_createCompositeDeviceWithTransportDevice___block_invoke;
  block[3] = &unk_278D5C008;
  v31 = v9;
  v46 = v31;
  selfCopy2 = self;
  dispatch_async_and_wait(queue3, block);

  v32 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  queue4 = [v32 queue];
  dispatch_assert_queue_not_V2(queue4);

  v34 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  queue5 = [v34 queue];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __72__CMContinuityCaptureProvider_createCompositeDeviceWithTransportDevice___block_invoke_2;
  v42[3] = &unk_278D5C008;
  v43 = v31;
  selfCopy3 = self;
  dispatch_async_and_wait(queue5, v42);

  [(NSMutableSet *)self->_observedDevices addObject:deviceCopy];
LABEL_11:
}

void __72__CMContinuityCaptureProvider_createCompositeDeviceWithTransportDevice___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) client];
  v2 = [v4 device];
  v3 = [v2 magicStateMonitor];
  [v3 addObserver:*(a1 + 40) forKeyPath:@"magic" options:3 context:0];
}

void __72__CMContinuityCaptureProvider_createCompositeDeviceWithTransportDevice___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v2 = [v3 device];
  [v2 addObserver:*(a1 + 40) forKeyPath:@"wired" options:3 context:0];
}

void __70__CMContinuityCaptureProvider_terminateCompositeDeviceWithIdentifier___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) client];
  v2 = [v4 device];
  v3 = [v2 magicStateMonitor];
  [v3 removeObserver:*(a1 + 40) forKeyPath:@"magic" context:0];
}

void __70__CMContinuityCaptureProvider_terminateCompositeDeviceWithIdentifier___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v2 = [v3 device];
  [v2 removeObserver:*(a1 + 40) forKeyPath:@"wired" context:0];
}

- (void)reset:(id)reset
{
  resetCopy = reset;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureProvider *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CMContinuityCaptureProvider_reset___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = resetCopy;
  v6 = resetCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __37__CMContinuityCaptureProvider_reset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reset:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_reset:(id)_reset
{
  _resetCopy = _reset;
  client = [_resetCopy client];
  device = [client device];
  deviceIdentifier = [device deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:uUIDString])
  {
    v10 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      selfCopy = self;
      v13 = 2114;
      v14 = _resetCopy;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ Reset %{public}@", &v11, 0x16u);
    }

    [(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers removeObject:uUIDString];
    [(CMContinuityCaptureProvider *)self updateState];
  }
}

- (void)resetTransportDevice:(id)device forIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:identifierCopy])
  {
    v9 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v69 = 2114;
      v70 = identifierCopy;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ has pending termination", buf, 0x16u);
    }
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:identifierCopy];
    client = [v9 client];
    device = [client device];
    v12 = [device isEqual:deviceCopy];

    if ((v12 & 1) == 0)
    {
      v13 = CMContinuityCaptureLog(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        client2 = [v9 client];
        device2 = [client2 device];
        *buf = 138413058;
        selfCopy2 = self;
        v69 = 2080;
        v70 = "[CMContinuityCaptureProvider resetTransportDevice:forIdentifier:]";
        v71 = 2112;
        v72 = device2;
        v73 = 2112;
        v74 = deviceCopy;
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%@ %s (%@) -> (%@)", buf, 0x2Au);
      }

      observedDevices = self->_observedDevices;
      client3 = [v9 client];
      device3 = [client3 device];
      LODWORD(observedDevices) = [(NSMutableSet *)observedDevices containsObject:device3];

      v19 = &qword_2425D8000;
      v20 = 0x278D5B000;
      if (observedDevices)
      {
        client4 = [v9 client];
        device4 = [client4 device];
        magicStateMonitor = [device4 magicStateMonitor];
        queue2 = [magicStateMonitor queue];
        dispatch_assert_queue_not_V2(queue2);

        client5 = [v9 client];
        device5 = [client5 device];
        magicStateMonitor2 = [device5 magicStateMonitor];
        queue3 = [magicStateMonitor2 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke;
        block[3] = &unk_278D5C008;
        v29 = v9;
        v65 = v29;
        selfCopy3 = self;
        dispatch_async_and_wait(queue3, block);

        v19 = &qword_2425D8000;
        v30 = +[CMContinuityCaptureDiscoverySession sharedInstance];
        queue4 = [v30 queue];
        dispatch_assert_queue_not_V2(queue4);

        v32 = +[CMContinuityCaptureDiscoverySession sharedInstance];
        queue5 = [v32 queue];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_2;
        v61[3] = &unk_278D5C008;
        v34 = v29;
        v62 = v34;
        selfCopy4 = self;
        dispatch_async_and_wait(queue5, v61);

        v35 = self->_observedDevices;
        client6 = [v34 client];
        device6 = [client6 device];
        [(NSMutableSet *)v35 removeObject:device6];

        v20 = 0x278D5B000uLL;
      }

      sharedInstance = [*(v20 + 2216) sharedInstance];
      queue6 = [sharedInstance queue];
      dispatch_assert_queue_not_V2(queue6);

      sharedInstance2 = [*(v20 + 2216) sharedInstance];
      queue7 = [sharedInstance2 queue];
      v55 = MEMORY[0x277D85DD0];
      v56 = v19[2];
      v42 = v56;
      v57 = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_3;
      v58 = &unk_278D5C008;
      v43 = deviceCopy;
      v59 = v43;
      selfCopy5 = self;
      dispatch_async_and_wait(queue7, &v55);

      magicStateMonitor3 = [v43 magicStateMonitor];
      queue8 = [magicStateMonitor3 queue];
      dispatch_assert_queue_not_V2(queue8);

      magicStateMonitor4 = [v43 magicStateMonitor];
      queue9 = [magicStateMonitor4 queue];
      v49 = MEMORY[0x277D85DD0];
      v50 = v42;
      v51 = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_4;
      v52 = &unk_278D5C008;
      v48 = v43;
      v53 = v48;
      selfCopy6 = self;
      dispatch_async_and_wait(queue9, &v49);

      [(NSMutableSet *)self->_observedDevices addObject:v48, v49, v50, v51, v52];
    }

    [v9 resetTransportDevice:deviceCopy];
  }
}

void __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) client];
  v2 = [v4 device];
  v3 = [v2 magicStateMonitor];
  [v3 removeObserver:*(a1 + 40) forKeyPath:@"magic" context:0];
}

void __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v2 = [v3 device];
  [v2 removeObserver:*(a1 + 40) forKeyPath:@"wired" context:0];
}

void __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) magicStateMonitor];
  [v2 addObserver:*(a1 + 40) forKeyPath:@"magic" options:3 context:0];
}

- (void)updateState
{
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  allKeys = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
  v28 = [v4 initWithArray:allKeys];

  v6 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  availableClientDevices = [v6 availableClientDevices];

  v8 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy5 = self;
    v31 = 2114;
    v32 = availableClientDevices;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ CurrentDevices : %{public}@", buf, 0x16u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = availableClientDevices;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v37;
    *&v11 = 138412546;
    v27 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v36 + 1) + 8 * v14);
        deviceIdentifier = [v15 deviceIdentifier];
        uUIDString = [deviceIdentifier UUIDString];

        if ([v15 userDisconnected])
        {
          v18 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            deviceIdentifier2 = [v15 deviceIdentifier];
            wired = [v15 wired];
            *buf = 138412802;
            selfCopy5 = self;
            v31 = 2114;
            v32 = deviceIdentifier2;
            v33 = 1024;
            LODWORD(v34) = wired;
            _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%@ Ignore Device %{public}@ in User Disconnect Mode (wired:%d)", buf, 0x1Cu);
          }

LABEL_20:

          goto LABEL_21;
        }

        v21 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKey:uUIDString];

        if (!v21)
        {
          capabilities = [v15 capabilities];
          v18 = [CMContinuityCaptureProvider filterCapabilitiesByMinorVersion:capabilities];

          v24 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            selfCopy5 = self;
            v31 = 2114;
            v32 = uUIDString;
            v33 = 2114;
            v34 = v18;
            _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%@ New Device (%{public}@) : %{public}@", buf, 0x20u);
          }

          [(CMContinuityCaptureProvider *)self createCompositeDeviceWithTransportDevice:v15];
          goto LABEL_20;
        }

        v22 = CMContinuityCaptureLog(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v27;
          selfCopy5 = self;
          v31 = 2114;
          v32 = uUIDString;
          _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%@ Device (%{public}@) present", buf, 0x16u);
        }

        [v28 removeObject:uUIDString];
        if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:uUIDString])
        {
          v18 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            selfCopy5 = self;
            v31 = 2114;
            v32 = uUIDString;
            _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ has pending termination, skip reset", buf, 0x16u);
          }

          goto LABEL_20;
        }

        [(CMContinuityCaptureProvider *)self resetTransportDevice:v15 forIdentifier:uUIDString];
LABEL_21:

        ++v14;
      }

      while (v12 != v14);
      v25 = [v9 countByEnumeratingWithState:&v36 objects:v35 count:16];
      v12 = v25;
    }

    while (v25);
  }

  allObjects = [v28 allObjects];
  [(CMContinuityCaptureProvider *)self terminateDevicesIfApplicable:allObjects];
}

- (void)terminateDevicesIfApplicable:(id)applicable
{
  applicableCopy = applicable;
  dispatch_assert_queue_V2(self->_queue);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = applicableCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    *&v7 = 138412546;
    v13 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:v11, v13])
        {
          v12 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            selfCopy = self;
            v16 = 2114;
            v17 = v11;
            _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ has pending termination", buf, 0x16u);
          }
        }

        else
        {
          [(CMContinuityCaptureProvider *)self terminateCompositeDeviceWithIdentifier:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v8);
  }
}

- (BOOL)activate
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __39__CMContinuityCaptureProvider_activate__block_invoke;
  v8 = &unk_278D5C080;
  objc_copyWeak(&v9, &location);
  dispatch_async(queue, &v5);
  [MEMORY[0x277CC1B98] startServiceWithProvider:{self, v5, v6, v7, v8}];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return 1;
}

uint64_t __39__CMContinuityCaptureProvider_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = +[CMContinuityCaptureUserOnboarding sharedInstance];
    v3 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    atomic_store(1u, v5 + 224);
    [v3 addObserver:v5 forKeyPath:@"availableClientDevices" options:3 context:0];
    [v2 addObserver:v5 forKeyPath:@"state" options:3 context:0];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)cancel
{
  v3 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v42 = 2082;
    v43 = "[CMContinuityCaptureProvider cancel]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %{public}s", buf, 0x16u);
  }

  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  allValues = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allValues];
  v6 = [allValues countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        continuityCaptureDevices = [v10 continuityCaptureDevices];
        v12 = [continuityCaptureDevices countByEnumeratingWithState:&v31 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          do
          {
            v15 = 0;
            do
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(continuityCaptureDevices);
              }

              [*(*(&v31 + 1) + 8 * v15++) invalidate];
            }

            while (v13 != v15);
            v13 = [continuityCaptureDevices countByEnumeratingWithState:&v31 objects:v30 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [allValues countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v7);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  devices = [(CMIOExtensionProvider *)self devices];
  v17 = [devices countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(devices);
        }

        [(CMIOExtensionProvider *)self removeDevice:*(*(&v26 + 1) + 8 * v20++) error:0];
      }

      while (v18 != v20);
      v18 = [devices countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v18);
  }

  [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers removeAllObjects];
  v21 = +[CMContinuityCaptureUserOnboarding sharedInstance];
  v22 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  v23 = v22;
  v24 = atomic_load(&self->_observingStateKVOs);
  if (v24)
  {
    [v22 removeObserver:self forKeyPath:@"availableClientDevices" context:0];
    [v21 removeObserver:self forKeyPath:@"state" context:0];
    atomic_store(0, &self->_observingStateKVOs);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__CMContinuityCaptureProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  v21[1] = context;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __78__CMContinuityCaptureProvider_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:*(a1 + 32) ofObject:*(a1 + 40) change:*(a1 + 48) context:*(a1 + 64)];
    WeakRetained = v3;
  }
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  dispatch_assert_queue_V2(self->_queue);
  if (CMContinityCaptureDebugLogEnabled())
  {
    v12 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy = self;
      v35 = 2114;
      v36 = pathCopy;
      v37 = 2114;
      v38 = objectCopy;
      _os_log_debug_impl(&dword_242545000, v12, OS_LOG_TYPE_DEBUG, "%@ keypath:%{public}@ object:%{public}@", buf, 0x20u);
    }
  }

  if ([pathCopy isEqualToString:@"availableClientDevices"])
  {
    goto LABEL_6;
  }

  if (![pathCopy isEqualToString:@"state"])
  {
    if (![pathCopy isEqualToString:@"magic"])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v13 = *MEMORY[0x277CCA2F0];
  v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  integerValue = [v14 integerValue];

  if (integerValue == 4)
  {
    v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    integerValue2 = [v16 integerValue];

    if (integerValue2 <= 2)
    {
      v18 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      availableClientDevices = [v18 availableClientDevices];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = availableClientDevices;
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v28 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        do
        {
          v24 = 0;
          do
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v20);
            }

            magicStateMonitor = [*(*(&v29 + 1) + 8 * v24) magicStateMonitor];
            [magicStateMonitor holdMagicStateAssertion:2];

            ++v24;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v29 objects:v28 count:16];
        }

        while (v22);
      }
    }
  }

  v26 = [changeCopy objectForKeyedSubscript:v13];
  integerValue3 = [v26 integerValue];

  if (integerValue3 >= 3)
  {
LABEL_6:
    [(CMContinuityCaptureProvider *)self updateState];
  }

LABEL_7:
}

- (void)registerStreamIntentForDevice:(id)device forTransportType:(int64_t)type completion:(id)completion
{
  typeCopy = type;
  deviceCopy = device;
  completionCopy = completion;
  v10 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138413058;
    selfCopy = self;
    v13 = 2082;
    v14 = "[CMContinuityCaptureProvider registerStreamIntentForDevice:forTransportType:completion:]";
    v15 = 2114;
    v16 = deviceCopy;
    v17 = 1024;
    v18 = typeCopy;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ %{public}s Device:%{public}@ Transport:%d", &v11, 0x26u);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)unregisterStreamIntentForDevice:(id)device
{
  deviceCopy = device;
  objc_initWeak(&location, self);
  v5 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v5 unscheduleNotification:2];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CMContinuityCaptureProvider_unregisterStreamIntentForDevice___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v10, &location);
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __63__CMContinuityCaptureProvider_unregisterStreamIntentForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [WeakRetained[24] allValues];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (([*(a1 + 32) isEqual:v9] & 1) == 0)
          {
            [v9 postEvent:@"kCMContinuityCaptureEventStreamEnableForMultipleStreamExit" entity:0 data:0];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v6);
    }
  }
}

- (id)debugInfo
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(CMContinuityCaptureProvider *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__CMContinuityCaptureProvider_debugInfo__block_invoke;
  v7[3] = &unk_278D5C438;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_async_and_wait(queue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __40__CMContinuityCaptureProvider_debugInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _debugInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_debugInfo
{
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allKeys = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
  if (allKeys)
  {
    [v4 setObject:allKeys forKeyedSubscript:@"CurrentPublishedDevices"];
  }

  devicePublishLogs = self->_devicePublishLogs;
  if (devicePublishLogs)
  {
    v7 = [(NSMutableArray *)devicePublishLogs copy];
    [v4 setObject:v7 forKeyedSubscript:@"DevicePublishHistory"];
  }

  return v4;
}

- (void)debugInfo:(id)info
{
  infoCopy = info;
  debugInfo = [(CMContinuityCaptureProvider *)self debugInfo];
  infoCopy[2](infoCopy, debugInfo);
}

- (BOOL)connectClient:(id)client error:(id *)error
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  v6 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    clientID = [clientCopy clientID];
    v10 = 138413059;
    selfCopy = self;
    v12 = 2080;
    v13 = "[CMContinuityCaptureProvider connectClient:error:]";
    v14 = 2113;
    v15 = clientID;
    v16 = 1025;
    v17 = [clientCopy pid];
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s Client Connected - %{private}@, %{private}d", &v10, 0x26u);
  }

  v8 = +[CMContinuityCaptureUserOnboarding sharedInstance];
  [v8 reportClientState:1 forClient:clientCopy];

  return 1;
}

- (void)disconnectClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientID = [clientCopy clientID];
    *buf = 138413059;
    selfCopy = self;
    v32 = 2080;
    v33 = "[CMContinuityCaptureProvider disconnectClient:]";
    v34 = 2113;
    v35 = clientID;
    v36 = 1025;
    v37 = [clientCopy pid];
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s Client Disconnected - %{private}@, %{private}d", buf, 0x26u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(CMIOExtensionProvider *)self devices];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        streams = [v11 streams];
        v13 = [streams countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          do
          {
            v16 = 0;
            do
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(streams);
              }

              v17 = *(*(&v21 + 1) + 8 * v16);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v17 disconnectClient:clientCopy];
              }

              ++v16;
            }

            while (v14 != v16);
            v14 = [streams countByEnumeratingWithState:&v21 objects:v20 count:16];
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = +[CMContinuityCaptureUserOnboarding sharedInstance];
  [v18 reportClientState:2 forClient:clientCopy];
}

- (id)providerPropertiesForProperties:(id)properties error:(id *)error
{
  if (properties)
  {
    queue = self->_queue;
    propertiesCopy = properties;
    dispatch_assert_queue_V2(queue);
    v6 = [MEMORY[0x277CC1BA0] providerPropertiesWithDictionary:MEMORY[0x277CBEC10]];
    v7 = *MEMORY[0x277CC1B30];
    v8 = [propertiesCopy containsObject:*MEMORY[0x277CC1B30]];

    if (v8)
    {
      v9 = [MEMORY[0x277CC1B90] propertyStateWithValue:&unk_2854EC7E8];
      if (v9)
      {
        v10 = v9;
        [v6 setPropertyState:v9 forProperty:v7];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setProviderProperties:(id)properties error:(id *)error
{
  if (properties)
  {
    queue = self->_queue;
    propertiesCopy = properties;
    dispatch_assert_queue_V2(queue);
    propertiesDictionary = [propertiesCopy propertiesDictionary];
    client = [propertiesCopy client];

    v10 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      selfCopy2 = self;
      v25 = 2114;
      v26 = propertiesDictionary;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ propertyDict %{public}@", &v23, 0x16u);
    }

    v11 = *MEMORY[0x277CC1B30];
    v12 = [propertiesDictionary objectForKeyedSubscript:*MEMORY[0x277CC1B30]];

    if (v12)
    {
      v13 = CMContinuityCaptureLog(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [propertiesDictionary objectForKeyedSubscript:v11];
        value = [v14 value];
        v23 = 138412802;
        selfCopy2 = self;
        v25 = 2114;
        v26 = value;
        v27 = 2114;
        v28 = client;
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%@ CMIOExtensionPropertyClientStreamingFromDALDevice %{public}@ client %{public}@", &v23, 0x20u);
      }

      v16 = [propertiesDictionary objectForKeyedSubscript:v11];
      value2 = [v16 value];
      bOOLValue = [value2 BOOLValue];

      v19 = +[CMContinuityCaptureUserOnboarding sharedInstance];
      v20 = v19;
      if (bOOLValue)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }

      [v19 reportClientState:v21 forClient:client];
    }
  }

  return properties != 0;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: [%p]", v5, self];

  return v6;
}

- (id)_captureDeviceForEntity:(int64_t)entity deviceUID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:d];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  continuityCaptureDevices = [v5 continuityCaptureDevices];
  v7 = [continuityCaptureDevices countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(continuityCaptureDevices);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 entity] == entity)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [continuityCaptureDevices countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (CMContinuityCaptureProvider)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = CMContinuityCaptureProvider;
  v6 = [(CMIOExtensionProvider *)&v10 initWithSource:self clientQueue:queueCopy];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_queue, queue), v7->_queue))
  {
    OUTLINED_FUNCTION_0_0(objc_alloc_init(MEMORY[0x277CBEB58]), 216);
    OUTLINED_FUNCTION_0_0(objc_alloc_init(MEMORY[0x277CBEB38]), 192);
    OUTLINED_FUNCTION_0_0(objc_alloc_init(MEMORY[0x277CBEB18]), 208);
    OUTLINED_FUNCTION_0_0(objc_alloc_init(MEMORY[0x277CBEB58]), 200);
    OUTLINED_FUNCTION_0_0(objc_alloc_init(MEMORY[0x277CBEB58]), 232);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_terminateCompleteForDevice:(id)device
{
  deviceCopy = device;
  client = [deviceCopy client];
  device = [client device];
  deviceIdentifier = [device deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  selfCopy = self;
  v10 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKey:uUIDString];

  if (v10)
  {
    v11 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v36 = 2114;
      v37 = deviceCopy;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ Terminate %{public}@ ", buf, 0x16u);
    }

    availableCaptureDevicesByIdentifiers = self->_availableCaptureDevicesByIdentifiers;
    client2 = [deviceCopy client];
    device2 = [client2 device];
    deviceIdentifier2 = [device2 deviceIdentifier];
    uUIDString2 = [deviceIdentifier2 UUIDString];
    [(NSMutableDictionary *)availableCaptureDevicesByIdentifiers removeObjectForKey:uUIDString2];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    allKeys = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
    v18 = [allKeys countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(allKeys);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          if (([uUIDString isEqualToString:v22] & 1) == 0)
          {
            client3 = [deviceCopy client];
            [client3 device];
            v25 = v24 = deviceCopy;
            hasStreamIntent = [v25 hasStreamIntent];

            deviceCopy = v24;
            if (hasStreamIntent)
            {
              v27 = [(NSMutableDictionary *)selfCopy->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:v22];
              [v27 postEvent:@"kCMContinuityCaptureEventStreamEnableForMultipleStreamExit" entity:0 data:0];
            }
          }
        }

        v19 = [allKeys countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v19);
    }

    [(CMContinuityCaptureProvider *)selfCopy _reset:deviceCopy];
  }
}

- (void)terminateCompositeDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v42 = 2080;
    v43 = "[CMContinuityCaptureProvider terminateCompositeDeviceWithIdentifier:]";
    v44 = 2114;
    v45 = identifierCopy;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@", buf, 0x20u);
  }

  v7 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKey:identifierCopy];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:identifierCopy];
    publishTime = [v8 publishTime];
    if (publishTime)
    {
      publishTime2 = [v8 publishTime];
      [(CMContinuityCaptureProvider *)self logDevicePublishSummary:identifierCopy publishTime:publishTime2];
    }

    else
    {
      [(CMContinuityCaptureProvider *)self logDevicePublishSummary:identifierCopy publishTime:&stru_2854DE150];
    }

    [(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers addObject:identifierCopy];
    [(CMContinuityCaptureProvider *)self unregisterStreamIntentForDevice:v8];
    observedDevices = self->_observedDevices;
    client = [v8 client];
    device = [client device];
    LODWORD(observedDevices) = [(NSMutableSet *)observedDevices containsObject:device];

    if (observedDevices)
    {
      client2 = [v8 client];
      device2 = [client2 device];
      magicStateMonitor = [device2 magicStateMonitor];
      queue2 = [magicStateMonitor queue];
      dispatch_assert_queue_not_V2(queue2);

      client3 = [v8 client];
      device3 = [client3 device];
      magicStateMonitor2 = [device3 magicStateMonitor];
      queue3 = [magicStateMonitor2 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__CMContinuityCaptureProvider_terminateCompositeDeviceWithIdentifier___block_invoke;
      block[3] = &unk_278D5C008;
      v22 = v8;
      v38 = v22;
      selfCopy2 = self;
      dispatch_async_and_wait(queue3, block);

      v23 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      queue4 = [v23 queue];
      dispatch_assert_queue_not_V2(queue4);

      v25 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      queue5 = [v25 queue];
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __70__CMContinuityCaptureProvider_terminateCompositeDeviceWithIdentifier___block_invoke_2;
      v34 = &unk_278D5C008;
      v27 = v22;
      v35 = v27;
      selfCopy3 = self;
      dispatch_async_and_wait(queue5, &v31);

      v28 = self->_observedDevices;
      client4 = [v27 client];
      device4 = [client4 device];
      [(NSMutableSet *)v28 removeObject:device4];
    }

    [v8 postEvent:@"kCMContinuityCaptureEventTerminate" entity:0 data:0];
  }
}

- (NSSet)availableProperties
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = v2;
  if (v2)
  {
    [v2 addObject:*MEMORY[0x277CC1B58]];
    [v3 addObject:*MEMORY[0x277CC1B60]];
    [v3 addObject:*MEMORY[0x277CC1B30]];
  }

  return v3;
}

- (void)postEventOnAllDevices:(uint64_t)a1 data:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_242545000, a2, OS_LOG_TYPE_FAULT, "%@ Invalid event name", &v2, 0xCu);
}

- (void)createCompositeDeviceWithTransportDevice:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v4 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a2 deviceIdentifier];
    v6 = [v5 UUIDString];
    v7 = 138412546;
    v8 = a1;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@ Failed to create capture device for identifier %{public}@", &v7, 0x16u);
  }
}

@end