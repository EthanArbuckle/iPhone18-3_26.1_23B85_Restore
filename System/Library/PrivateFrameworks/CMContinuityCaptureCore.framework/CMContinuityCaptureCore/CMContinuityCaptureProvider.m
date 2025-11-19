@interface CMContinuityCaptureProvider
+ (id)filterCapabilitiesByMinorVersion:(id)a3;
- (BOOL)activate;
- (BOOL)connectClient:(id)a3 error:(id *)a4;
- (BOOL)setProviderProperties:(id)a3 error:(id *)a4;
- (CMContinuityCaptureProvider)initWithQueue:(id)a3;
- (NSSet)availableProperties;
- (NSString)description;
- (id)_captureDeviceForEntity:(int64_t)a3 deviceUID:(id)a4;
- (id)_debugInfo;
- (id)debugInfo;
- (id)providerPropertiesForProperties:(id)a3 error:(id *)a4;
- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)_reset:(id)a3;
- (void)_terminateCompleteForDevice:(id)a3;
- (void)cancel;
- (void)createCompositeDeviceWithTransportDevice:(id)a3;
- (void)debugInfo:(id)a3;
- (void)disconnectClient:(id)a3;
- (void)logDevicePublishSummary:(id)a3 publishTime:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)postEventOnAllDevices:(id)a3 data:(id)a4;
- (void)registerStreamIntentForDevice:(id)a3 forTransportType:(int64_t)a4 completion:(id)a5;
- (void)reset:(id)a3;
- (void)resetTransportDevice:(id)a3 forIdentifier:(id)a4;
- (void)terminateAllDevices;
- (void)terminateCompleteForDevice:(id)a3;
- (void)terminateCompositeDeviceWithIdentifier:(id)a3;
- (void)terminateDevicesIfApplicable:(id)a3;
- (void)unregisterStreamIntentForDevice:(id)a3;
- (void)updateState;
@end

@implementation CMContinuityCaptureProvider

+ (id)filterCapabilitiesByMinorVersion:(id)a3
{
  v3 = a3;
  v4 = 0x277CBE000uLL;
  v43 = [MEMORY[0x277CBEB18] array];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v40 = v3;
  obj = [v3 devicesCapabilities];
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
      v7 = [*(v4 + 2840) array];
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v47 = v6;
      v8 = [v6 streamFormats];
      v9 = [v8 countByEnumeratingWithState:&v91 objects:v90 count:16];
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
              objc_enumerationMutation(v8);
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
              [v7 addObject:v13];
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

          v10 = [v8 countByEnumeratingWithState:&v91 objects:v90 count:16];
        }

        while (v10);
      }

      v45 = [*(v4 + 2840) array];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v15 = [v47 manualFramingSupportedStreamFormats];
      v16 = [v15 countByEnumeratingWithState:&v79 objects:v78 count:16];
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
            objc_enumerationMutation(v15);
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
            [v7 addObject:v20];
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

        v17 = [v15 countByEnumeratingWithState:&v79 objects:v78 count:16];
      }

      while (v17);
LABEL_38:

      v22 = [*(v4 + 2840) array];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v23 = [v47 controls];
      v24 = [v23 countByEnumeratingWithState:&v67 objects:v66 count:16];
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
            objc_enumerationMutation(v23);
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
            [v22 addObject:v28];
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

        v25 = [v23 countByEnumeratingWithState:&v67 objects:v66 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }

LABEL_54:

      v30 = -[CMContinuityCaptureDeviceCapabilities initWithEntityType:streamFormats:manualFramingSupportedStreamFormats:controls:]([CMContinuityCaptureDeviceCapabilities alloc], "initWithEntityType:streamFormats:manualFramingSupportedStreamFormats:controls:", [v47 entityType], v7, v45, v22);
      [v43 addObject:v30];

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
  v37 = [v40 userDisabled];
  *&buf = v34;
  *(&buf + 1) = v32;
  v49 = v35;
  v38 = [(CMContinuityCaptureCapabilities *)v36 initWithCapabilitiesVersion:&buf devicesCapabilities:v43 userDisabled:v37];

  return v38;
}

- (void)logDevicePublishSummary:(id)a3 publishTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSMutableArray *)self->_devicePublishLogs count]>= 0xB)
  {
    [(NSMutableArray *)self->_devicePublishLogs removeObjectAtIndex:0];
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_2854DE150;
  }

  v12 = @"DeviceIdentifier";
  v13 = @"DevicePublishTime";
  if (v7)
  {
    v9 = v7;
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
    v20 = self;
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
  v5 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:v11, v13])
        {
          v12 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v20 = self;
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

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }
}

- (void)postEventOnAllDevices:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allValues];
  v9 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v21 = self;
    v22 = 2112;
    v23 = v6;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v7;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ Post %@ on devices %{public}@ data %{public}@", buf, 0x2Au);
  }

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v8;
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

          [*(*(&v16 + 1) + 8 * i) postEvent:v6 entity:0 data:v7];
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

- (void)terminateCompleteForDevice:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CMContinuityCaptureProvider_terminateCompleteForDevice___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
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

- (void)createCompositeDeviceWithTransportDevice:(id)a3
{
  v4 = a3;
  v5 = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 deviceIdentifier];
    v8 = [v7 UUIDString];
    *buf = 138412802;
    v49 = self;
    v50 = 2080;
    v51 = "[CMContinuityCaptureProvider createCompositeDeviceWithTransportDevice:]";
    v52 = 2114;
    v53 = v8;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@", buf, 0x20u);
  }

  v9 = [[CMContinuityCaptureCompositeDevice alloc] initWithDevice:v4 provider:self];
  if (!v9)
  {
    [(CMContinuityCaptureProvider *)self createCompositeDeviceWithTransportDevice:v4];
    goto LABEL_11;
  }

  availableCaptureDevicesByIdentifiers = self->_availableCaptureDevicesByIdentifiers;
  v11 = [v4 deviceIdentifier];
  v12 = [v11 UUIDString];
  [(NSMutableDictionary *)availableCaptureDevicesByIdentifiers setObject:v9 forKeyedSubscript:v12];

  v13 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  v14 = [v13 activeSession];
  if (v14)
  {
    v15 = v14;
    v16 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v17 = [v16 activeSession];
    v18 = [v17 device];
    if ([v18 hasStreamIntent])
    {
      v40 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v39 = [v40 activeSession];
      v36 = [v39 device];
      v19 = [v36 deviceIdentifier];
      v20 = [v19 UUIDString];
      [v4 deviceIdentifier];
      v21 = v41 = v4;
      [v21 UUIDString];
      v22 = v37 = v16;
      v38 = [v20 isEqualToString:v22];

      v4 = v41;
      if ((v38 & 1) == 0)
      {
        [(CMContinuityCaptureCompositeDevice *)v9 postEvent:@"kCMContinuityCaptureEventStreamDisableForMultipleStream" entity:0 data:0];
      }

      goto LABEL_10;
    }
  }

LABEL_10:
  v23 = [(CMContinuityCaptureCompositeDevice *)v9 client];
  v24 = [v23 device];
  v25 = [v24 magicStateMonitor];
  v26 = [v25 queue];
  dispatch_assert_queue_not_V2(v26);

  v27 = [(CMContinuityCaptureCompositeDevice *)v9 client];
  v28 = [v27 device];
  v29 = [v28 magicStateMonitor];
  v30 = [v29 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CMContinuityCaptureProvider_createCompositeDeviceWithTransportDevice___block_invoke;
  block[3] = &unk_278D5C008;
  v31 = v9;
  v46 = v31;
  v47 = self;
  dispatch_async_and_wait(v30, block);

  v32 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  v33 = [v32 queue];
  dispatch_assert_queue_not_V2(v33);

  v34 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  v35 = [v34 queue];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __72__CMContinuityCaptureProvider_createCompositeDeviceWithTransportDevice___block_invoke_2;
  v42[3] = &unk_278D5C008;
  v43 = v31;
  v44 = self;
  dispatch_async_and_wait(v35, v42);

  [(NSMutableSet *)self->_observedDevices addObject:v4];
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

- (void)reset:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CMContinuityCaptureProvider *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CMContinuityCaptureProvider_reset___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

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

- (void)_reset:(id)a3
{
  v4 = a3;
  v5 = [v4 client];
  v6 = [v5 device];
  v7 = [v6 deviceIdentifier];
  v8 = [v7 UUIDString];

  v9 = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(v9);

  if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:v8])
  {
    v10 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = self;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ Reset %{public}@", &v11, 0x16u);
    }

    [(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers removeObject:v8];
    [(CMContinuityCaptureProvider *)self updateState];
  }
}

- (void)resetTransportDevice:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(v8);

  if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:v7])
  {
    v9 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v68 = self;
      v69 = 2114;
      v70 = v7;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ has pending termination", buf, 0x16u);
    }
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:v7];
    v10 = [v9 client];
    v11 = [v10 device];
    v12 = [v11 isEqual:v6];

    if ((v12 & 1) == 0)
    {
      v13 = CMContinuityCaptureLog(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v9 client];
        v15 = [v14 device];
        *buf = 138413058;
        v68 = self;
        v69 = 2080;
        v70 = "[CMContinuityCaptureProvider resetTransportDevice:forIdentifier:]";
        v71 = 2112;
        v72 = v15;
        v73 = 2112;
        v74 = v6;
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%@ %s (%@) -> (%@)", buf, 0x2Au);
      }

      observedDevices = self->_observedDevices;
      v17 = [v9 client];
      v18 = [v17 device];
      LODWORD(observedDevices) = [(NSMutableSet *)observedDevices containsObject:v18];

      v19 = &qword_2425D8000;
      v20 = 0x278D5B000;
      if (observedDevices)
      {
        v21 = [v9 client];
        v22 = [v21 device];
        v23 = [v22 magicStateMonitor];
        v24 = [v23 queue];
        dispatch_assert_queue_not_V2(v24);

        v25 = [v9 client];
        v26 = [v25 device];
        v27 = [v26 magicStateMonitor];
        v28 = [v27 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke;
        block[3] = &unk_278D5C008;
        v29 = v9;
        v65 = v29;
        v66 = self;
        dispatch_async_and_wait(v28, block);

        v19 = &qword_2425D8000;
        v30 = +[CMContinuityCaptureDiscoverySession sharedInstance];
        v31 = [v30 queue];
        dispatch_assert_queue_not_V2(v31);

        v32 = +[CMContinuityCaptureDiscoverySession sharedInstance];
        v33 = [v32 queue];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_2;
        v61[3] = &unk_278D5C008;
        v34 = v29;
        v62 = v34;
        v63 = self;
        dispatch_async_and_wait(v33, v61);

        v35 = self->_observedDevices;
        v36 = [v34 client];
        v37 = [v36 device];
        [(NSMutableSet *)v35 removeObject:v37];

        v20 = 0x278D5B000uLL;
      }

      v38 = [*(v20 + 2216) sharedInstance];
      v39 = [v38 queue];
      dispatch_assert_queue_not_V2(v39);

      v40 = [*(v20 + 2216) sharedInstance];
      v41 = [v40 queue];
      v55 = MEMORY[0x277D85DD0];
      v56 = v19[2];
      v42 = v56;
      v57 = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_3;
      v58 = &unk_278D5C008;
      v43 = v6;
      v59 = v43;
      v60 = self;
      dispatch_async_and_wait(v41, &v55);

      v44 = [v43 magicStateMonitor];
      v45 = [v44 queue];
      dispatch_assert_queue_not_V2(v45);

      v46 = [v43 magicStateMonitor];
      v47 = [v46 queue];
      v49 = MEMORY[0x277D85DD0];
      v50 = v42;
      v51 = __66__CMContinuityCaptureProvider_resetTransportDevice_forIdentifier___block_invoke_4;
      v52 = &unk_278D5C008;
      v48 = v43;
      v53 = v48;
      v54 = self;
      dispatch_async_and_wait(v47, &v49);

      [(NSMutableSet *)self->_observedDevices addObject:v48, v49, v50, v51, v52];
    }

    [v9 resetTransportDevice:v6];
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
  v3 = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  v5 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
  v28 = [v4 initWithArray:v5];

  v6 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  v7 = [v6 availableClientDevices];

  v8 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = self;
    v31 = 2114;
    v32 = v7;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ CurrentDevices : %{public}@", buf, 0x16u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v7;
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
        v16 = [v15 deviceIdentifier];
        v17 = [v16 UUIDString];

        if ([v15 userDisconnected])
        {
          v18 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v15 deviceIdentifier];
            v20 = [v15 wired];
            *buf = 138412802;
            v30 = self;
            v31 = 2114;
            v32 = v19;
            v33 = 1024;
            LODWORD(v34) = v20;
            _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%@ Ignore Device %{public}@ in User Disconnect Mode (wired:%d)", buf, 0x1Cu);
          }

LABEL_20:

          goto LABEL_21;
        }

        v21 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKey:v17];

        if (!v21)
        {
          v23 = [v15 capabilities];
          v18 = [CMContinuityCaptureProvider filterCapabilitiesByMinorVersion:v23];

          v24 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v30 = self;
            v31 = 2114;
            v32 = v17;
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
          v30 = self;
          v31 = 2114;
          v32 = v17;
          _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%@ Device (%{public}@) present", buf, 0x16u);
        }

        [v28 removeObject:v17];
        if ([(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers containsObject:v17])
        {
          v18 = CMContinuityCaptureLog(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v30 = self;
            v31 = 2114;
            v32 = v17;
            _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ has pending termination, skip reset", buf, 0x16u);
          }

          goto LABEL_20;
        }

        [(CMContinuityCaptureProvider *)self resetTransportDevice:v15 forIdentifier:v17];
LABEL_21:

        ++v14;
      }

      while (v12 != v14);
      v25 = [v9 countByEnumeratingWithState:&v36 objects:v35 count:16];
      v12 = v25;
    }

    while (v25);
  }

  v26 = [v28 allObjects];
  [(CMContinuityCaptureProvider *)self terminateDevicesIfApplicable:v26];
}

- (void)terminateDevicesIfApplicable:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
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
            v15 = self;
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
    v41 = self;
    v42 = 2082;
    v43 = "[CMContinuityCaptureProvider cancel]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %{public}s", buf, 0x16u);
  }

  v4 = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(v4);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allValues];
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v35 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v11 = [v10 continuityCaptureDevices];
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v30 count:16];
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
                objc_enumerationMutation(v11);
              }

              [*(*(&v31 + 1) + 8 * v15++) invalidate];
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v31 objects:v30 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v7);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [(CMIOExtensionProvider *)self devices];
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v25 count:16];
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
          objc_enumerationMutation(v16);
        }

        [(CMIOExtensionProvider *)self removeDevice:*(*(&v26 + 1) + 8 * v20++) error:0];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v26 objects:v25 count:16];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__CMContinuityCaptureProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21[1] = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
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

- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  dispatch_assert_queue_V2(self->_queue);
  if (CMContinityCaptureDebugLogEnabled())
  {
    v12 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v34 = self;
      v35 = 2114;
      v36 = v9;
      v37 = 2114;
      v38 = v10;
      _os_log_debug_impl(&dword_242545000, v12, OS_LOG_TYPE_DEBUG, "%@ keypath:%{public}@ object:%{public}@", buf, 0x20u);
    }
  }

  if ([v9 isEqualToString:@"availableClientDevices"])
  {
    goto LABEL_6;
  }

  if (![v9 isEqualToString:@"state"])
  {
    if (![v9 isEqualToString:@"magic"])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v13 = *MEMORY[0x277CCA2F0];
  v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  v15 = [v14 integerValue];

  if (v15 == 4)
  {
    v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    v17 = [v16 integerValue];

    if (v17 <= 2)
    {
      v18 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      v19 = [v18 availableClientDevices];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = v19;
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

            v25 = [*(*(&v29 + 1) + 8 * v24) magicStateMonitor];
            [v25 holdMagicStateAssertion:2];

            ++v24;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v29 objects:v28 count:16];
        }

        while (v22);
      }
    }
  }

  v26 = [v11 objectForKeyedSubscript:v13];
  v27 = [v26 integerValue];

  if (v27 >= 3)
  {
LABEL_6:
    [(CMContinuityCaptureProvider *)self updateState];
  }

LABEL_7:
}

- (void)registerStreamIntentForDevice:(id)a3 forTransportType:(int64_t)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138413058;
    v12 = self;
    v13 = 2082;
    v14 = "[CMContinuityCaptureProvider registerStreamIntentForDevice:forTransportType:completion:]";
    v15 = 2114;
    v16 = v8;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ %{public}s Device:%{public}@ Transport:%d", &v11, 0x26u);
  }

  v9[2](v9, 0);
}

- (void)unregisterStreamIntentForDevice:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v5 unscheduleNotification:2];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CMContinuityCaptureProvider_unregisterStreamIntentForDevice___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
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
  v3 = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v4 = [(CMContinuityCaptureProvider *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__CMContinuityCaptureProvider_debugInfo__block_invoke;
  v7[3] = &unk_278D5C438;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_async_and_wait(v4, v7);

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
  v3 = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"CurrentPublishedDevices"];
  }

  devicePublishLogs = self->_devicePublishLogs;
  if (devicePublishLogs)
  {
    v7 = [(NSMutableArray *)devicePublishLogs copy];
    [v4 setObject:v7 forKeyedSubscript:@"DevicePublishHistory"];
  }

  return v4;
}

- (void)debugInfo:(id)a3
{
  v4 = a3;
  v5 = [(CMContinuityCaptureProvider *)self debugInfo];
  v4[2](v4, v5);
}

- (BOOL)connectClient:(id)a3 error:(id *)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 clientID];
    v10 = 138413059;
    v11 = self;
    v12 = 2080;
    v13 = "[CMContinuityCaptureProvider connectClient:error:]";
    v14 = 2113;
    v15 = v7;
    v16 = 1025;
    v17 = [v5 pid];
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s Client Connected - %{private}@, %{private}d", &v10, 0x26u);
  }

  v8 = +[CMContinuityCaptureUserOnboarding sharedInstance];
  [v8 reportClientState:1 forClient:v5];

  return 1;
}

- (void)disconnectClient:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 clientID];
    *buf = 138413059;
    v31 = self;
    v32 = 2080;
    v33 = "[CMContinuityCaptureProvider disconnectClient:]";
    v34 = 2113;
    v35 = v6;
    v36 = 1025;
    v37 = [v4 pid];
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
        v12 = [v11 streams];
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v20 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v21 + 1) + 8 * v16);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v17 disconnectClient:v4];
              }

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v21 objects:v20 count:16];
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
  [v18 reportClientState:2 forClient:v4];
}

- (id)providerPropertiesForProperties:(id)a3 error:(id *)a4
{
  if (a3)
  {
    queue = self->_queue;
    v5 = a3;
    dispatch_assert_queue_V2(queue);
    v6 = [MEMORY[0x277CC1BA0] providerPropertiesWithDictionary:MEMORY[0x277CBEC10]];
    v7 = *MEMORY[0x277CC1B30];
    v8 = [v5 containsObject:*MEMORY[0x277CC1B30]];

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

- (BOOL)setProviderProperties:(id)a3 error:(id *)a4
{
  if (a3)
  {
    queue = self->_queue;
    v7 = a3;
    dispatch_assert_queue_V2(queue);
    v8 = [v7 propertiesDictionary];
    v9 = [v7 client];

    v10 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      v24 = self;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ propertyDict %{public}@", &v23, 0x16u);
    }

    v11 = *MEMORY[0x277CC1B30];
    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x277CC1B30]];

    if (v12)
    {
      v13 = CMContinuityCaptureLog(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v8 objectForKeyedSubscript:v11];
        v15 = [v14 value];
        v23 = 138412802;
        v24 = self;
        v25 = 2114;
        v26 = v15;
        v27 = 2114;
        v28 = v9;
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%@ CMIOExtensionPropertyClientStreamingFromDALDevice %{public}@ client %{public}@", &v23, 0x20u);
      }

      v16 = [v8 objectForKeyedSubscript:v11];
      v17 = [v16 value];
      v18 = [v17 BOOLValue];

      v19 = +[CMContinuityCaptureUserOnboarding sharedInstance];
      v20 = v19;
      if (v18)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }

      [v19 reportClientState:v21 forClient:v9];
    }
  }

  return a3 != 0;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: [%p]", v5, self];

  return v6;
}

- (id)_captureDeviceForEntity:(int64_t)a3 deviceUID:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:a4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 continuityCaptureDevices];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 entity] == a3)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
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

- (CMContinuityCaptureProvider)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CMContinuityCaptureProvider;
  v6 = [(CMIOExtensionProvider *)&v10 initWithSource:self clientQueue:v5];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_queue, a3), v7->_queue))
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

- (void)_terminateCompleteForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 client];
  v6 = [v5 device];
  v7 = [v6 deviceIdentifier];
  v8 = [v7 UUIDString];

  v9 = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(v9);

  v28 = self;
  v10 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKey:v8];

  if (v10)
  {
    v11 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = self;
      v36 = 2114;
      v37 = v4;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ Terminate %{public}@ ", buf, 0x16u);
    }

    availableCaptureDevicesByIdentifiers = self->_availableCaptureDevicesByIdentifiers;
    v13 = [v4 client];
    v14 = [v13 device];
    v15 = [v14 deviceIdentifier];
    v16 = [v15 UUIDString];
    [(NSMutableDictionary *)availableCaptureDevicesByIdentifiers removeObjectForKey:v16];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers allKeys];
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v29 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          if (([v8 isEqualToString:v22] & 1) == 0)
          {
            v23 = [v4 client];
            [v23 device];
            v25 = v24 = v4;
            v26 = [v25 hasStreamIntent];

            v4 = v24;
            if (v26)
            {
              v27 = [(NSMutableDictionary *)v28->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:v22];
              [v27 postEvent:@"kCMContinuityCaptureEventStreamEnableForMultipleStreamExit" entity:0 data:0];
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v19);
    }

    [(CMContinuityCaptureProvider *)v28 _reset:v4];
  }
}

- (void)terminateCompositeDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CMContinuityCaptureProvider *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = self;
    v42 = 2080;
    v43 = "[CMContinuityCaptureProvider terminateCompositeDeviceWithIdentifier:]";
    v44 = 2114;
    v45 = v4;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@", buf, 0x20u);
  }

  v7 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKey:v4];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_availableCaptureDevicesByIdentifiers objectForKeyedSubscript:v4];
    v9 = [v8 publishTime];
    if (v9)
    {
      v10 = [v8 publishTime];
      [(CMContinuityCaptureProvider *)self logDevicePublishSummary:v4 publishTime:v10];
    }

    else
    {
      [(CMContinuityCaptureProvider *)self logDevicePublishSummary:v4 publishTime:&stru_2854DE150];
    }

    [(NSMutableSet *)self->_pendingTerminateDeviceIdentifiers addObject:v4];
    [(CMContinuityCaptureProvider *)self unregisterStreamIntentForDevice:v8];
    observedDevices = self->_observedDevices;
    v12 = [v8 client];
    v13 = [v12 device];
    LODWORD(observedDevices) = [(NSMutableSet *)observedDevices containsObject:v13];

    if (observedDevices)
    {
      v14 = [v8 client];
      v15 = [v14 device];
      v16 = [v15 magicStateMonitor];
      v17 = [v16 queue];
      dispatch_assert_queue_not_V2(v17);

      v18 = [v8 client];
      v19 = [v18 device];
      v20 = [v19 magicStateMonitor];
      v21 = [v20 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__CMContinuityCaptureProvider_terminateCompositeDeviceWithIdentifier___block_invoke;
      block[3] = &unk_278D5C008;
      v22 = v8;
      v38 = v22;
      v39 = self;
      dispatch_async_and_wait(v21, block);

      v23 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      v24 = [v23 queue];
      dispatch_assert_queue_not_V2(v24);

      v25 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      v26 = [v25 queue];
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __70__CMContinuityCaptureProvider_terminateCompositeDeviceWithIdentifier___block_invoke_2;
      v34 = &unk_278D5C008;
      v27 = v22;
      v35 = v27;
      v36 = self;
      dispatch_async_and_wait(v26, &v31);

      v28 = self->_observedDevices;
      v29 = [v27 client];
      v30 = [v29 device];
      [(NSMutableSet *)v28 removeObject:v30];
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