@interface CMContinuityCaptureCMIOVideoDevice
- (BOOL)_setDeviceProperties:(id)properties error:(id *)error;
- (BOOL)publishDevice:(BOOL)device;
- (BOOL)setDeviceProperties:(id)properties error:(id *)error;
- (BOOL)setupStreamsWithDeviceID:(id)d;
- (CMContinuityCaptureCMIOVideoDevice)initWithCaptureDevice:(id)device;
- (NSSet)availableProperties;
- (NSString)description;
- (id)_availableProperties;
- (id)_devicePropertiesForProperties:(id)properties error:(id *)error;
- (id)devicePropertiesForProperties:(id)properties error:(id *)error;
- (void)_setCMIOExtensionPropertyAttributesByPropertyNames;
- (void)_updateCameraHiddenControlIfApplicable;
- (void)_updateCameraReadyToUnhideControlIfApplicable;
- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resetTransportDevice:(id)device;
- (void)setSystemPreferredStatus:(BOOL)status withCompletion:(id)completion;
- (void)setValueForControl:(id)control completion:(id)completion;
- (void)setupControls;
- (void)terminateComplete:(id)complete;
@end

@implementation CMContinuityCaptureCMIOVideoDevice

void __60__CMContinuityCaptureCMIOVideoDevice_initWithCaptureDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) compositeDelegate];
  v3 = [v2 client];
  v4 = [v3 device];
  v5 = [v4 magicStateMonitor];
  [v5 addObserver:*(a1 + 40) forKeyPath:@"magic" options:3 context:0];

  v9 = [*(a1 + 32) compositeDelegate];
  v6 = [v9 client];
  v7 = [v6 device];
  v8 = [v7 magicStateMonitor];
  objc_storeWeak((*(a1 + 40) + 200), v8);
}

void __60__CMContinuityCaptureCMIOVideoDevice_initWithCaptureDevice___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) compositeDelegate];
  v3 = [v2 client];
  v4 = [v3 device];
  [v4 addObserver:*(a1 + 40) forKeyPath:@"wired" options:3 context:0];

  v7 = [*(a1 + 32) compositeDelegate];
  v5 = [v7 client];
  v6 = [v5 device];
  objc_storeWeak((*(a1 + 40) + 208), v6);
}

- (BOOL)publishDevice:(BOOL)device
{
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_captureDevice);
  compositeDelegate = [WeakRetained compositeDelegate];
  provider = [compositeDelegate provider];

  if (!provider)
  {
    v13 = 0;
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "Unpublish";
    if (deviceCopy)
    {
      v9 = "Publish";
    }

    v18 = 138543618;
    selfCopy2 = self;
    v20 = 2082;
    v21 = v9;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, " %{public}@ %{public}s", &v18, 0x16u);
  }

  queue = [provider queue];
  dispatch_assert_queue_V2(queue);

  if (deviceCopy)
  {
    v25 = 0;
    v11 = [provider addDevice:self error:&v25];
    v12 = v25;
  }

  else
  {
    v24 = 0;
    v11 = [provider removeDevice:self error:&v24];
    v12 = v24;
  }

  v13 = v12;
  if ((v11 & 1) == 0)
  {
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = "Unpublish";
      v18 = 138543874;
      selfCopy2 = self;
      if (deviceCopy)
      {
        v17 = "Publish";
      }

      v20 = 2082;
      v21 = v17;
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&dword_242545000, v15, OS_LOG_TYPE_ERROR, "%{public}@ %{public}s error %{public}@", &v18, 0x20u);
    }

    goto LABEL_14;
  }

  v14 = 1;
LABEL_15:

  return v14;
}

- (void)resetTransportDevice:(id)device
{
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_magicStateObserver);
  queue = [WeakRetained queue];
  dispatch_assert_queue_not_V2(queue);

  v7 = objc_loadWeakRetained(&self->_magicStateObserver);
  queue2 = [v7 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CMContinuityCaptureCMIOVideoDevice_resetTransportDevice___block_invoke;
  block[3] = &unk_278D5C0D0;
  block[4] = self;
  dispatch_async_and_wait(queue2, block);

  magicStateMonitor = [deviceCopy magicStateMonitor];
  queue3 = [magicStateMonitor queue];
  dispatch_assert_queue_not_V2(queue3);

  magicStateMonitor2 = [deviceCopy magicStateMonitor];
  queue4 = [magicStateMonitor2 queue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __59__CMContinuityCaptureCMIOVideoDevice_resetTransportDevice___block_invoke_2;
  v28[3] = &unk_278D5C008;
  v13 = deviceCopy;
  v29 = v13;
  selfCopy = self;
  dispatch_async_and_wait(queue4, v28);

  v14 = objc_loadWeakRetained(&self->_wiredObserver);
  if (v14)
  {
    v15 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    queue5 = [v15 queue];
    dispatch_assert_queue_not_V2(queue5);

    v17 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    queue6 = [v17 queue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __59__CMContinuityCaptureCMIOVideoDevice_resetTransportDevice___block_invoke_3;
    v27[3] = &unk_278D5C0D0;
    v27[4] = self;
    dispatch_async_and_wait(queue6, v27);
  }

  v19 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  queue7 = [v19 queue];
  dispatch_assert_queue_not_V2(queue7);

  v21 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  queue8 = [v21 queue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __59__CMContinuityCaptureCMIOVideoDevice_resetTransportDevice___block_invoke_4;
  v24[3] = &unk_278D5C008;
  v25 = v13;
  selfCopy2 = self;
  v23 = v13;
  dispatch_async_and_wait(queue8, v24);
}

void __59__CMContinuityCaptureCMIOVideoDevice_resetTransportDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 200));
    [v3 removeObserver:*(a1 + 32) forKeyPath:@"magic" context:0];

    v4 = (*(a1 + 32) + 200);

    objc_storeWeak(v4, 0);
  }
}

void __59__CMContinuityCaptureCMIOVideoDevice_resetTransportDevice___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) magicStateMonitor];
  [v2 addObserver:*(a1 + 40) forKeyPath:@"magic" options:3 context:0];

  v3 = [*(a1 + 32) magicStateMonitor];
  objc_storeWeak((*(a1 + 40) + 200), v3);
}

id __59__CMContinuityCaptureCMIOVideoDevice_resetTransportDevice___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  [WeakRetained removeObserver:*(a1 + 32) forKeyPath:@"wired" context:0];

  v3 = (*(a1 + 32) + 208);

  return objc_storeWeak(v3, 0);
}

id __59__CMContinuityCaptureCMIOVideoDevice_resetTransportDevice___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) addObserver:*(a1 + 40) forKeyPath:@"wired" options:3 context:0];
  v2 = *(a1 + 32);
  v3 = (*(a1 + 40) + 208);

  return objc_storeWeak(v3, v2);
}

- (void)terminateComplete:(id)complete
{
  completeCopy = complete;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v35 = 2080;
    v36 = "[CMContinuityCaptureCMIOVideoDevice terminateComplete:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  if (self->_terminated)
  {
    completeCopy[2](completeCopy);
  }

  else
  {
    self->_terminated = 1;
    objc_initWeak(buf, self);
    WeakRetained = objc_loadWeakRetained(&self->_captureDevice);
    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained(&self->_captureDevice);
      compositeDelegate = [v7 compositeDelegate];
      provider = [compositeDelegate provider];

      if (provider)
      {
        dispatch_assert_queue_V2(self->_queue);
        if ([(NSMutableArray *)self->_streams count])
        {
          v10 = [(NSMutableArray *)self->_streams objectAtIndexedSubscript:0];
          [v10 terminateComplete:&__block_literal_global_3];
        }

        [(NSMutableArray *)self->_streams removeAllObjects];
        compositeDelegate2 = [WeakRetained compositeDelegate];
        client = [compositeDelegate2 client];
        device = [client device];
        magicStateMonitor = [device magicStateMonitor];
        queue = [magicStateMonitor queue];
        dispatch_assert_queue_not_V2(queue);

        compositeDelegate3 = [WeakRetained compositeDelegate];
        client2 = [compositeDelegate3 client];
        device2 = [client2 device];
        magicStateMonitor2 = [device2 magicStateMonitor];
        queue2 = [magicStateMonitor2 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__CMContinuityCaptureCMIOVideoDevice_terminateComplete___block_invoke_2;
        block[3] = &unk_278D5C008;
        v31 = WeakRetained;
        selfCopy2 = self;
        dispatch_async_and_wait(queue2, block);

        v21 = +[CMContinuityCaptureDiscoverySession sharedInstance];
        queue3 = [v21 queue];
        dispatch_assert_queue_not_V2(queue3);

        v23 = +[CMContinuityCaptureDiscoverySession sharedInstance];
        queue4 = [v23 queue];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __56__CMContinuityCaptureCMIOVideoDevice_terminateComplete___block_invoke_3;
        v29[3] = &unk_278D5C0D0;
        v29[4] = self;
        dispatch_async_and_wait(queue4, v29);

        queue5 = [provider queue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __56__CMContinuityCaptureCMIOVideoDevice_terminateComplete___block_invoke_4;
        v26[3] = &unk_278D5C688;
        objc_copyWeak(&v28, buf);
        v27 = completeCopy;
        dispatch_async(queue5, v26);

        objc_destroyWeak(&v28);
      }
    }

    objc_destroyWeak(buf);
  }
}

id __56__CMContinuityCaptureCMIOVideoDevice_terminateComplete___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) compositeDelegate];
  v3 = [v2 client];
  v4 = [v3 device];
  v5 = [v4 magicStateMonitor];
  [v5 removeObserver:*(a1 + 40) forKeyPath:@"magic" context:0];

  v6 = (*(a1 + 40) + 200);

  return objc_storeWeak(v6, 0);
}

id __56__CMContinuityCaptureCMIOVideoDevice_terminateComplete___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  [WeakRetained removeObserver:*(a1 + 32) forKeyPath:@"wired" context:0];

  v3 = (*(a1 + 32) + 208);

  return objc_storeWeak(v3, 0);
}

void __56__CMContinuityCaptureCMIOVideoDevice_terminateComplete___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __56__CMContinuityCaptureCMIOVideoDevice_terminateComplete___block_invoke_5;
    v3[3] = &unk_278D5C688;
    objc_copyWeak(&v5, (a1 + 40));
    v4 = *(a1 + 32);
    [WeakRetained setSystemPreferredStatus:0 withCompletion:v3];

    objc_destroyWeak(&v5);
  }
}

void __56__CMContinuityCaptureCMIOVideoDevice_terminateComplete___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 16);
    v5 = v4;
    if (v4)
    {
      v6 = [v4 compositeDelegate];
      v7 = [v6 provider];

      if (v7)
      {
        v8 = [v7 queue];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __56__CMContinuityCaptureCMIOVideoDevice_terminateComplete___block_invoke_6;
        v9[3] = &unk_278D5C688;
        objc_copyWeak(&v11, (a1 + 40));
        v10 = *(a1 + 32);
        dispatch_async(v8, v9);

        objc_destroyWeak(&v11);
      }
    }
  }
}

void __56__CMContinuityCaptureCMIOVideoDevice_terminateComplete___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained publishDevice:0];
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v39 = 2114;
    v40 = pathCopy;
    v41 = 2114;
    v42 = objectCopy;
    _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ keypath:%{public}@ object:%{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  if ([pathCopy isEqualToString:@"magic"])
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    integerValue = [v13 integerValue];
    v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    integerValue2 = [v15 integerValue];

    if (integerValue != integerValue2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_captureDevice);
      compositeDelegate = [WeakRetained compositeDelegate];
      client = [compositeDelegate client];
      device = [client device];
      magicStateMonitor = [device magicStateMonitor];
      magic = [magicStateMonitor magic];

      [(CMContinuityCaptureCMIOVideoDevice *)self setSystemPreferredStatus:magic withCompletion:0];
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__CMContinuityCaptureCMIOVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_278D5C6B0;
      v23 = &v35;
      objc_copyWeak(&v35, buf);
      v36 = magic;
      block[4] = self;
      v24 = block;
      goto LABEL_8;
    }
  }

  if ([pathCopy isEqualToString:@"wired"])
  {
    v17 = objc_loadWeakRetained(&self->_captureDevice);
    compositeDelegate2 = [v17 compositeDelegate];
    client2 = [compositeDelegate2 client];
    device2 = [client2 device];
    wired = [device2 wired];

    queue = self->_queue;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __85__CMContinuityCaptureCMIOVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v31[3] = &unk_278D5C6B0;
    v23 = &v32;
    objc_copyWeak(&v32, buf);
    v33 = wired;
    v31[4] = self;
    v24 = v31;
LABEL_8:
    dispatch_async(queue, v24);
    objc_destroyWeak(v23);
  }

  objc_destroyWeak(buf);
}

void __85__CMContinuityCaptureCMIOVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    if (*(WeakRetained + 193) != v4)
    {
      *(WeakRetained + 193) = v4;
      v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a1 + 48 length:1];
      v6 = MEMORY[0x277CC1B90];
      v7 = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
      v8 = [v6 propertyStateWithValue:v5 attributes:v7];

      if (v8 && v3[18])
      {
        v9 = *(a1 + 32);
        v11 = v3[18];
        v12 = v8;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
        [v9 notifyPropertiesChanged:v10];
      }
    }
  }
}

void __85__CMContinuityCaptureCMIOVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    if (*(WeakRetained + 194) != v4)
    {
      *(WeakRetained + 194) = v4;
      v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a1 + 48 length:1];
      v6 = MEMORY[0x277CC1B90];
      v7 = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
      v8 = [v6 propertyStateWithValue:v5 attributes:v7];

      if (v8 && v3[19])
      {
        v9 = *(a1 + 32);
        v11 = v3[19];
        v12 = v8;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
        [v9 notifyPropertiesChanged:v10];
      }
    }
  }
}

- (void)setSystemPreferredStatus:(BOOL)status withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setupControls
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_1(&dword_242545000, v1, v2, "%{public}@ Invalid system controls ", v3, v4, v5, v6, 2u);
  }
}

- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_streams count])
  {
    v8 = +[CMContinuityCaptureUserOnboarding sharedInstance];
    logTryItNowAnalytics = [v8 logTryItNowAnalytics];

    if (logTryItNowAnalytics)
    {
      CMSetAttachment(frame, @"com.apple.cmio.buffer_attachment.continuity_capture_try_it_now_active", MEMORY[0x277CBEC38], 1u);
      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "Setting kCMIOSampleBufferAttachmentKey_ContinuityCaptureTryItNowActive attachment complete", v13, 2u);
      }

      v11 = +[CMContinuityCaptureUserOnboarding sharedInstance];
      [v11 setLogTryItNowAnalytics:0];
    }

    v12 = [(NSMutableArray *)self->_streams objectAtIndexedSubscript:0];
    [v12 dispatchFrame:frame entity:self->_entity completion:completionCopy];
  }
}

- (NSSet)availableProperties
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__CMContinuityCaptureCMIOVideoDevice_availableProperties__block_invoke;
  v6[3] = &unk_278D5C438;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __57__CMContinuityCaptureCMIOVideoDevice_availableProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _availableProperties];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_availableProperties
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v3 addObject:*MEMORY[0x277CC1B40]];
  [v3 addObject:*MEMORY[0x277CC1B48]];
  [v3 addObject:*MEMORY[0x277CC1B50]];
  if (self->_entity == 1)
  {
    [v3 addObject:@"CMIOExtensionPropertyDeviceCompanionDeskcamDeviceUUID"];
  }

  [v3 addObject:self->_cmioDeviceConnectionState];
  [v3 addObject:self->_cmioDeviceWired];
  [v3 addObject:@"CMIOExtensionPropertyRapportDeviceUniqueID"];
  [v3 addObject:@"DockedTrackingActive"];
  if ([(NSMutableDictionary *)self->_cmControlByPropertyName count])
  {
    allKeys = [(NSMutableDictionary *)self->_cmControlByPropertyName allKeys];
    [v3 addObjectsFromArray:allKeys];
  }

  return v3;
}

- (id)devicePropertiesForProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__CMContinuityCaptureCMIOVideoDevice_devicePropertiesForProperties_error___block_invoke;
  v11[3] = &unk_278D5C638;
  v13 = &v21;
  v11[4] = self;
  v8 = propertiesCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_async_and_wait(queue, v11);

  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v9;
}

void __74__CMContinuityCaptureCMIOVideoDevice_devicePropertiesForProperties_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _devicePropertiesForProperties:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_devicePropertiesForProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  WeakRetained = objc_loadWeakRetained(&self->_captureDevice);
  if (WeakRetained)
  {
    v85 = 0;
    v86 = &v85;
    v87 = 0x3032000000;
    v88 = __Block_byref_object_copy__3;
    v89 = __Block_byref_object_dispose__3;
    v90 = [MEMORY[0x277CC1B80] devicePropertiesWithDictionary:MEMORY[0x277CBEC10]];
    v79 = 0;
    v80 = &v79;
    v81 = 0x3032000000;
    v82 = __Block_byref_object_copy__3;
    v83 = __Block_byref_object_dispose__3;
    v84 = 0;
    v77[0] = 0;
    v77[1] = v77;
    v77[2] = 0x3032000000;
    v77[3] = __Block_byref_object_copy__3;
    v77[4] = __Block_byref_object_dispose__3;
    v78 = 0;
    compositeDelegate = [WeakRetained compositeDelegate];
    v8 = compositeDelegate;
    if (!compositeDelegate)
    {
      goto LABEL_42;
    }

    client = [compositeDelegate client];
    device = [client device];
    magicStateMonitor = [device magicStateMonitor];
    magic = [magicStateMonitor magic];

    v76 = magic;
    client2 = [v8 client];
    device2 = [client2 device];
    wired = [device2 wired];

    v75 = wired;
    if (!propertiesCopy)
    {
      goto LABEL_42;
    }

    if (v86[5])
    {
      dispatch_assert_queue_V2(self->_queue);
      if ([propertiesCopy containsObject:*MEMORY[0x277CC1B40]])
      {
        [v86[5] setModel:self->_modelID];
      }

      if ([propertiesCopy containsObject:self->_cmioDeviceConnectionState])
      {
        v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v76 length:1];
        v17 = MEMORY[0x277CC1B90];
        readOnlyPropertyAttribute = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
        v19 = [v17 propertyStateWithValue:v16 attributes:readOnlyPropertyAttribute];
        v20 = v80[5];
        v80[5] = v19;

        v21 = v80[5];
        if (v21)
        {
          [v86[5] setPropertyState:v21 forProperty:self->_cmioDeviceConnectionState];
        }
      }

      if ([propertiesCopy containsObject:self->_cmioDeviceWired])
      {
        v22 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v75 length:1];
        v23 = MEMORY[0x277CC1B90];
        readOnlyPropertyAttribute2 = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
        v25 = [v23 propertyStateWithValue:v22 attributes:readOnlyPropertyAttribute2];
        v26 = v80[5];
        v80[5] = v25;

        v27 = v80[5];
        if (v27)
        {
          [v86[5] setPropertyState:v27 forProperty:self->_cmioDeviceWired];
        }
      }

      v28 = *MEMORY[0x277CC1B48];
      if ([propertiesCopy containsObject:*MEMORY[0x277CC1B48]])
      {
        v29 = MEMORY[0x277CC1B90];
        nonLocalizedName = self->_nonLocalizedName;
        readOnlyPropertyAttribute3 = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
        v32 = [v29 propertyStateWithValue:nonLocalizedName attributes:readOnlyPropertyAttribute3];
        v33 = v80[5];
        v80[5] = v32;

        v34 = v80[5];
        if (v34)
        {
          [v86[5] setPropertyState:v34 forProperty:v28];
        }
      }

      v35 = *MEMORY[0x277CC1B50];
      if ([propertiesCopy containsObject:*MEMORY[0x277CC1B50]])
      {
        v36 = MEMORY[0x277CC1B90];
        v37 = MEMORY[0x277CCABB0];
        v38 = [WeakRetained entity] == 2 ? 1 : 2;
        v39 = [v37 numberWithInteger:v38];
        readOnlyPropertyAttribute4 = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
        v41 = [v36 propertyStateWithValue:v39 attributes:readOnlyPropertyAttribute4];
        v42 = v80[5];
        v80[5] = v41;

        v43 = v80[5];
        if (v43)
        {
          [v86[5] setPropertyState:v43 forProperty:v35];
        }
      }

      if ([propertiesCopy containsObject:@"CMIOExtensionPropertyDeviceCompanionDeskcamDeviceUUID"])
      {
        transportDevice = [WeakRetained transportDevice];
        deviceIdentifier = [transportDevice deviceIdentifier];
        v46 = CMContinuityCaptureGetDeviceUUID(deviceIdentifier, 2);

        if (v46)
        {
          v47 = MEMORY[0x277CC1B90];
          uUIDString = [v46 UUIDString];
          readOnlyPropertyAttribute5 = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
          v50 = [v47 propertyStateWithValue:uUIDString attributes:readOnlyPropertyAttribute5];
          v51 = v80[5];
          v80[5] = v50;

          v52 = v80[5];
          if (v52)
          {
            [v86[5] setPropertyState:v52 forProperty:@"CMIOExtensionPropertyDeviceCompanionDeskcamDeviceUUID"];
          }
        }
      }

      if ([propertiesCopy containsObject:@"CMIOExtensionPropertyContinuityCaptureDeviceState"])
      {
        stateMachineCurrentState = [WeakRetained stateMachineCurrentState];

        if (stateMachineCurrentState)
        {
          v54 = MEMORY[0x277CC1B90];
          stateMachineCurrentState2 = [WeakRetained stateMachineCurrentState];
          name = [stateMachineCurrentState2 name];
          readOnlyPropertyAttribute6 = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
          v58 = [v54 propertyStateWithValue:name attributes:readOnlyPropertyAttribute6];
          v59 = v80[5];
          v80[5] = v58;

          v60 = v80[5];
          if (v60)
          {
            [v86[5] setPropertyState:v60 forProperty:@"CMIOExtensionPropertyContinuityCaptureDeviceState"];
          }
        }
      }

      if ([propertiesCopy containsObject:@"CMIOExtensionPropertyContinuityCaptureDeviceStateEvent"])
      {
        v61 = [MEMORY[0x277CC1B90] propertyStateWithValue:@"NA" attributes:0];
        v62 = v80[5];
        v80[5] = v61;

        v63 = v80[5];
        if (v63)
        {
          [v86[5] setPropertyState:v63 forProperty:@"CMIOExtensionPropertyContinuityCaptureDeviceStateEvent"];
        }
      }

      if ([propertiesCopy containsObject:@"CMIOExtensionPropertyRapportDeviceUniqueID"])
      {
        transportDevice2 = [WeakRetained transportDevice];
        deviceIdentifier2 = [transportDevice2 deviceIdentifier];
        uUIDString2 = [deviceIdentifier2 UUIDString];

        if (uUIDString2)
        {
          v67 = MEMORY[0x277CC1B90];
          readOnlyPropertyAttribute7 = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
          v69 = [v67 propertyStateWithValue:uUIDString2 attributes:readOnlyPropertyAttribute7];
          v70 = v80[5];
          v80[5] = v69;

          v71 = v80[5];
          if (v71)
          {
            [v86[5] setPropertyState:v71 forProperty:@"CMIOExtensionPropertyRapportDeviceUniqueID"];
          }
        }
      }

      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __75__CMContinuityCaptureCMIOVideoDevice__devicePropertiesForProperties_error___block_invoke;
      v74[3] = &unk_278D5C6D8;
      v74[4] = self;
      v74[5] = v77;
      v74[6] = &v79;
      v74[7] = &v85;
      [propertiesCopy enumerateObjectsUsingBlock:v74];
      v72 = v86[5];
    }

    else
    {
LABEL_42:
      v72 = 0;
    }

    _Block_object_dispose(v77, 8);
    _Block_object_dispose(&v79, 8);

    _Block_object_dispose(&v85, 8);
  }

  else
  {
    v72 = 0;
  }

  return v72;
}

void __75__CMContinuityCaptureCMIOVideoDevice__devicePropertiesForProperties_error___block_invoke(void *a1, void *a2)
{
  v18 = a2;
  v3 = [*(a1[4] + 176) objectForKeyedSubscript:?];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1[5] + 8) + 40);
  if (v6)
  {
    v7 = [v6 value];
    if (v7)
    {
      v8 = v7;
      v9 = [*(*(a1[5] + 8) + 40) value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = MEMORY[0x277CC1B90];
        v12 = [*(*(a1[5] + 8) + 40) value];
        v13 = [*(a1[4] + 216) objectForKeyedSubscript:v18];
        v14 = [v11 propertyStateWithValue:v12 attributes:v13];
        v15 = *(a1[6] + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        v17 = *(*(a1[6] + 8) + 40);
        if (v17)
        {
          [*(*(a1[7] + 8) + 40) setPropertyState:v17 forProperty:v18];
        }
      }
    }
  }
}

- (void)_setCMIOExtensionPropertyAttributesByPropertyNames
{
  readOnlyPropertyAttribute = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
  v7 = readOnlyPropertyAttribute;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  cmioExtensionPropertyAttributesByCMIOExtensionPropertyName = self->_cmioExtensionPropertyAttributesByCMIOExtensionPropertyName;
  self->_cmioExtensionPropertyAttributesByCMIOExtensionPropertyName = v4;
}

- (BOOL)setDeviceProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__CMContinuityCaptureCMIOVideoDevice_setDeviceProperties_error___block_invoke;
  v11[3] = &unk_278D5C638;
  v13 = &v21;
  v11[4] = self;
  v8 = propertiesCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_async_and_wait(queue, v11);

  if (error)
  {
    *error = v16[5];
  }

  v9 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v9;
}

void __64__CMContinuityCaptureCMIOVideoDevice_setDeviceProperties_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _setDeviceProperties:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)_setDeviceProperties:(id)properties error:(id *)error
{
  if (!properties)
  {
    return properties != 0;
  }

  queue = self->_queue;
  propertiesCopy = properties;
  dispatch_assert_queue_V2(queue);
  propertiesDictionary = [propertiesCopy propertiesDictionary];

  v9 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138543618;
    selfCopy3 = self;
    v38 = 2114;
    v39 = propertiesDictionary;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ propertyDict %{public}@", &v36, 0x16u);
  }

  v10 = [(NSMutableDictionary *)self->_cmControlByPropertyName objectForKeyedSubscript:@"CMIOExtensionPropertyDeviceHidden"];
  v11 = [propertiesDictionary objectForKeyedSubscript:@"CMIOExtensionPropertyDeviceHidden"];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    value = [v10 value];
    value2 = [v12 value];
    if ([value2 BOOLValue])
    {
      WeakRetained = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:

        goto LABEL_17;
      }

      name = [v10 name];
      v36 = 138543618;
      selfCopy3 = self;
      v38 = 2112;
      v39 = name;
      _os_log_impl(&dword_242545000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%{public}@ Skip updating %@ to YES", &v36, 0x16u);
    }

    else
    {
      if ([value isEqualToNumber:value2])
      {
LABEL_17:

        goto LABEL_18;
      }

      value3 = [v12 value];
      [v10 setValue:value3];

      v19 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [v10 name];
        value4 = [v10 value];
        v36 = 138543874;
        selfCopy3 = self;
        v38 = 2112;
        v39 = name2;
        v40 = 2112;
        v41 = value4;
        _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated %@ to %@", &v36, 0x20u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_captureDevice);
      name = [WeakRetained compositeDelegate];
      v22 = objc_loadWeakRetained(&self->_captureDevice);
      [name device:v22 updatedValueForControl:v10];
    }

    goto LABEL_16;
  }

LABEL_18:
  v23 = [propertiesDictionary objectForKeyedSubscript:@"CMIOExtensionPropertyContinuityCaptureDeviceStateEvent"];

  if (v23)
  {
    value5 = [v23 value];
    if (value5)
    {
      v25 = value5;
      value6 = [v23 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        value7 = [v23 value];
        v29 = CMContinuityCaptureRemoteEventToBeRelayedList();
        v30 = [v29 containsObject:value7];
        v31 = objc_loadWeakRetained(&self->_captureDevice);
        v32 = v31;
        if (v30)
        {
          [v31 transportDevice];
        }

        else
        {
          [v31 compositeDelegate];
        }
        v33 = ;
        v34 = objc_loadWeakRetained(&self->_captureDevice);
        [v33 postEvent:value7 entity:objc_msgSend(v34 data:{"entity"), 0}];
      }
    }
  }

  return properties != 0;
}

- (NSString)description
{
  WeakRetained = objc_loadWeakRetained(&self->_captureDevice);
  v3 = [WeakRetained description];

  return v3;
}

- (CMContinuityCaptureCMIOVideoDevice)initWithCaptureDevice:(id)device
{
  deviceCopy = device;
  compositeDelegate = [deviceCopy compositeDelegate];
  client = [compositeDelegate client];
  device = [client device];

  deviceIdentifier = [device deviceIdentifier];
  v9 = CMContinuityCaptureGetDeviceUUID(deviceIdentifier, [deviceCopy entity]);

  if (!v9)
  {
    v26 = 0;
LABEL_21:
    selfCopy4 = 0;
    goto LABEL_15;
  }

  if ([deviceCopy entity] == 2)
  {
    deviceName = [device deviceName];
    CMContinuityCaptureCreateLocalizedString(@"DESK_VIEW_CAMERA_NAME", @"%@ Desk View Camera", v11, v12, v13, v14, v15, v16, deviceName);
  }

  else
  {
    deviceModel = [device deviceModel];
    v18 = continuityCaptureNotificationCenter_isiPhone(deviceModel);

    if (v18)
    {
      v19 = @"CAMERA_NAME_IPHONE";
    }

    else
    {
      v19 = @"CAMERA_NAME_IPAD";
    }

    deviceName = [device deviceName];
    CMContinuityCaptureCreateLocalizedString(v19, @"%@ Camera", v20, v21, v22, v23, v24, v25, deviceName);
  }
  v26 = ;

  v27 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = v9;
    v91 = 2114;
    v92 = v26;
    _os_log_impl(&dword_242545000, v27, OS_LOG_TYPE_DEFAULT, "Publish Device UUID %{public}@ name %{public}@", buf, 0x16u);
  }

  v88.receiver = self;
  v88.super_class = CMContinuityCaptureCMIOVideoDevice;
  self = [(CMIOExtensionDevice *)&v88 initWithLocalizedName:v26 deviceID:v9 legacyDeviceID:0 source:self];
  if (!self)
  {
    goto LABEL_21;
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  streams = self->_streams;
  self->_streams = v28;

  OUTLINED_FUNCTION_15(objc_alloc_init(MEMORY[0x277CBEB38]), 176);
  objc_storeWeak(&self->_captureDevice, deviceCopy);
  queue = [deviceCopy queue];
  OUTLINED_FUNCTION_15(queue, 136);
  v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v32 = dispatch_queue_create("com.apple.continuitycapture.systempreferredstatus", v31);
  OUTLINED_FUNCTION_15(v32, 184);

  self->_entity = [deviceCopy entity];
  objc_storeStrong(&self->_name, v26);
  objc_storeStrong(&self->_deviceID, v9);
  objc_storeStrong(&self->_nonLocalizedName, self->_name);
  deviceModel2 = [device deviceModel];
  OUTLINED_FUNCTION_15(deviceModel2, 112);
  v34 = CMIOExtensionPropertyFromPropertyAddress();
  OUTLINED_FUNCTION_15(v34, 144);
  v35 = CMIOExtensionPropertyFromPropertyAddress();
  OUTLINED_FUNCTION_15(v35, 152);
  uUIDString = [(CMContinuityCaptureCMIOVideoDevice *)v9 UUIDString];
  v37 = [(CMContinuityCaptureCMIOVideoDevice *)self setupStreamsWithDeviceID:uUIDString];

  if (!v37)
  {
    goto LABEL_21;
  }

  if ([(NSMutableArray *)self->_streams count]!= 1)
  {
    v72 = CMContinuityCaptureLog(2);
    if (!OUTLINED_FUNCTION_14(v72))
    {
LABEL_20:

      goto LABEL_21;
    }

    *buf = 138543362;
    selfCopy2 = self;
LABEL_23:
    OUTLINED_FUNCTION_3_1();
    _os_log_error_impl(v74, v75, v76, v77, v78, v79);
    goto LABEL_20;
  }

  [(CMContinuityCaptureCMIOVideoDevice *)self setupControls];
  if (![(CMContinuityCaptureCMIOVideoDevice *)self publishDevice:1])
  {
    v73 = CMContinuityCaptureLog(2);
    if (!OUTLINED_FUNCTION_14(v73))
    {
      goto LABEL_20;
    }

    *buf = 138543362;
    selfCopy2 = self;
    goto LABEL_23;
  }

  compositeDelegate2 = [deviceCopy compositeDelegate];
  client2 = [compositeDelegate2 client];
  [client2 device];
  v40 = v81 = device;
  [v40 magicStateMonitor];
  v41 = v80 = v9;
  [v41 queue];
  v43 = v42 = v26;
  dispatch_assert_queue_not_V2(v43);

  compositeDelegate3 = [deviceCopy compositeDelegate];
  client3 = [compositeDelegate3 client];
  device2 = [client3 device];
  magicStateMonitor = [device2 magicStateMonitor];
  queue2 = [magicStateMonitor queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CMContinuityCaptureCMIOVideoDevice_initWithCaptureDevice___block_invoke;
  block[3] = &unk_278D5C008;
  v49 = deviceCopy;
  v86 = v49;
  selfCopy3 = self;
  v87 = selfCopy3;
  dispatch_async_and_wait(queue2, block);

  v26 = v42;
  WeakRetained = objc_loadWeakRetained(&self->_captureDevice);
  compositeDelegate4 = [WeakRetained compositeDelegate];
  client4 = [compositeDelegate4 client];
  device3 = [client4 device];
  magicStateMonitor2 = [device3 magicStateMonitor];
  selfCopy3->_cachedMagicState = [magicStateMonitor2 magic];

  [(CMContinuityCaptureCMIOVideoDevice *)selfCopy3 _setCMIOExtensionPropertyAttributesByPropertyNames];
  compositeDelegate5 = [v49 compositeDelegate];
  client5 = [compositeDelegate5 client];
  device4 = [client5 device];
  magicStateMonitor3 = [device4 magicStateMonitor];
  magic = [magicStateMonitor3 magic];

  device = v81;
  v61 = magic;
  v9 = v80;
  [(CMContinuityCaptureCMIOVideoDevice *)selfCopy3 setSystemPreferredStatus:v61 withCompletion:0];
  compositeDelegate6 = [v49 compositeDelegate];
  client6 = [compositeDelegate6 client];
  device5 = [client6 device];
  selfCopy3->_cachedWiredState = [device5 wired];

  v65 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  queue3 = [v65 queue];
  dispatch_assert_queue_not_V2(queue3);

  v67 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  queue4 = [v67 queue];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __60__CMContinuityCaptureCMIOVideoDevice_initWithCaptureDevice___block_invoke_2;
  v82[3] = &unk_278D5C008;
  v83 = v49;
  v69 = selfCopy3;
  v84 = v69;
  dispatch_async_and_wait(queue4, v82);

  self = v69;
  selfCopy4 = self;
LABEL_15:

  return selfCopy4;
}

- (BOOL)setupStreamsWithDeviceID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_captureDevice);
  v6 = WeakRetained;
  if (!WeakRetained || ([WeakRetained capabilities], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v16 = 0;
    goto LABEL_14;
  }

  capabilities = [v6 capabilities];
  manualFramingSupportedStreamFormats = [capabilities manualFramingSupportedStreamFormats];
  v10 = [manualFramingSupportedStreamFormats count];

  capabilities2 = [v6 capabilities];
  v12 = capabilities2;
  if (v10)
  {
    manualFramingSupportedStreamFormats2 = [capabilities2 manualFramingSupportedStreamFormats];

    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_10_0();
      v15 = "%{public}@ setup using manual framing stream formats";
LABEL_9:
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, v15, v30, 0xCu);
    }
  }

  else
  {
    manualFramingSupportedStreamFormats2 = [capabilities2 streamFormats];

    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_10_0();
      v15 = "%{public}@ setup using non-manual framing stream formats";
      goto LABEL_9;
    }
  }

  v17 = [[CMContinuityCaptureVideoStream alloc] initWithDevice:v6 streamFormats:manualFramingSupportedStreamFormats2 deviceID:dCopy queue:self->_queue];
  if (v17)
  {
    p_super = &v17->super.super;
    v33 = 0;
    v19 = [(CMIOExtensionDevice *)self addStream:v17 error:&v33];
    v20 = v33;
    if (v19)
    {
      [(NSMutableArray *)self->_streams addObject:p_super];

      v16 = 1;
    }

    else
    {
      v22 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_10_0();
        v31 = 2112;
        v32 = v20;
        OUTLINED_FUNCTION_11_0(&dword_242545000, v22, v29, "%{public}@ Failed to Add stream error %@", v30);
      }

      v16 = 0;
    }
  }

  else
  {
    p_super = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_3_1();
      _os_log_error_impl(v23, v24, v25, v26, v27, v28);
    }

    v16 = 0;
    v20 = manualFramingSupportedStreamFormats2;
  }

LABEL_14:
  return v16;
}

- (void)setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  selfCopy = self;
  allKeys = [(NSMutableDictionary *)self->_cmControlByPropertyName allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v48 != v9)
      {
        objc_enumerationMutation(allKeys);
      }

      v11 = *(*(&v47 + 1) + 8 * v10);
      v12 = [(NSMutableDictionary *)selfCopy->_cmControlByPropertyName objectForKeyedSubscript:v11];
      name = [v12 name];
      name2 = [controlCopy name];
      v15 = [name isEqualToString:name2];

      if (v15)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [allKeys countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = [(NSMutableDictionary *)selfCopy->_cmControlByPropertyName objectForKeyedSubscript:v11];
    v16 = v11;

    if (!v17)
    {
      goto LABEL_19;
    }

    value = [controlCopy value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v20 = 0;
    if (v16)
    {
      v21 = completionCopy;
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_26;
      }

      if (([v16 containsString:@"btst"] & 1) == 0)
      {
        value2 = [v17 value];
        value3 = [controlCopy value];
        v24 = [value2 isEqualToNumber:value3];

        if (v24)
        {
          v20 = 0;
          goto LABEL_26;
        }
      }

      value4 = [controlCopy value];
      [v17 setValue:value4];

      v26 = MEMORY[0x277CC1B90];
      value5 = [controlCopy value];
      v20 = [v26 propertyStateWithValue:value5 attributes:0];

      if (v20)
      {
        v44 = v16;
        v45 = v20;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        [(CMIOExtensionDevice *)selfCopy notifyPropertiesChanged:v28];
      }

      v29 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        name3 = [controlCopy name];
        *buf = 138544130;
        v37 = selfCopy;
        v38 = 2112;
        v39 = v17;
        v40 = 2112;
        v41 = name3;
        v42 = 2114;
        v43 = v20;
        _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ update property %@ [%@] with state %{public}@", buf, 0x2Au);
      }

      goto LABEL_23;
    }

LABEL_25:
    v21 = completionCopy;
    goto LABEL_26;
  }

LABEL_9:

  v16 = 0;
LABEL_19:
  if (![(NSMutableArray *)selfCopy->_streams count])
  {
    v17 = 0;
    v20 = 0;
    goto LABEL_25;
  }

  v31 = CMContinuityCaptureLog(2);
  v21 = completionCopy;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    value6 = [controlCopy value];
    *buf = 138543874;
    v37 = selfCopy;
    v38 = 2114;
    v39 = controlCopy;
    v40 = 2112;
    v41 = value6;
    _os_log_impl(&dword_242545000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ to stream with value %@", buf, 0x20u);
  }

  v29 = [(NSMutableArray *)selfCopy->_streams objectAtIndexedSubscript:0];
  [v29 setValueForControl:controlCopy completion:completionCopy];
  v17 = 0;
  v20 = 0;
LABEL_23:

LABEL_26:
}

- (void)_updateCameraHiddenControlIfApplicable
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(NSMutableDictionary *)self->_cmControlByPropertyName objectForKeyedSubscript:@"CMIOExtensionPropertyDeviceHidden"];
  v5 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_16(v5))
  {
    OUTLINED_FUNCTION_19();
    v26 = 2080;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_0_3();
    _os_log_impl(v6, v7, v8, v9, v10, 0x20u);
  }

  if (v4)
  {
    value = [v4 value];
    bOOLValue = [value BOOLValue];

    if (bOOLValue)
    {
      v13 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_16(v13))
      {
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_9_1();
        v27 = v4;
        OUTLINED_FUNCTION_0_3();
        _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      }

      [v4 setValue:MEMORY[0x277CBEC28]];
      [v4 value];
      objc_claimAutoreleasedReturnValue();
      v19 = [OUTLINED_FUNCTION_21() propertyStateWithValue:? attributes:?];

      if (v19)
      {
        v24 = @"CMIOExtensionPropertyDeviceHidden";
        v25 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        [(CMIOExtensionDevice *)self notifyPropertiesChanged:v20];
      }

      WeakRetained = objc_loadWeakRetained(&self->_captureDevice);
      compositeDelegate = [WeakRetained compositeDelegate];
      v23 = objc_loadWeakRetained(&self->_captureDevice);
      [OUTLINED_FUNCTION_17() device:? updatedValueForControl:?];
    }
  }
}

- (void)_updateCameraReadyToUnhideControlIfApplicable
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(NSMutableDictionary *)self->_cmControlByPropertyName objectForKeyedSubscript:@"CMIOExtensionPropertyDeviceReadyToUnhide"];
  v5 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_16(v5))
  {
    OUTLINED_FUNCTION_19();
    v26 = 2080;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_0_3();
    _os_log_impl(v6, v7, v8, v9, v10, 0x20u);
  }

  if (v4)
  {
    value = [v4 value];
    bOOLValue = [value BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v13 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_16(v13))
      {
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_9_1();
        v27 = v4;
        OUTLINED_FUNCTION_0_3();
        _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      }

      [v4 setValue:MEMORY[0x277CBEC38]];
      [v4 value];
      objc_claimAutoreleasedReturnValue();
      v19 = [OUTLINED_FUNCTION_21() propertyStateWithValue:? attributes:?];

      if (v19)
      {
        v24 = @"CMIOExtensionPropertyDeviceReadyToUnhide";
        v25 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        [(CMIOExtensionDevice *)self notifyPropertiesChanged:v20];
      }

      WeakRetained = objc_loadWeakRetained(&self->_captureDevice);
      compositeDelegate = [WeakRetained compositeDelegate];
      v23 = objc_loadWeakRetained(&self->_captureDevice);
      [OUTLINED_FUNCTION_17() device:? updatedValueForControl:?];
    }
  }
}

@end