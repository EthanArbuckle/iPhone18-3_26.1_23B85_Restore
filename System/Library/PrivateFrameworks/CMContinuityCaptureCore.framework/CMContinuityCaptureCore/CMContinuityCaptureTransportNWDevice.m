@interface CMContinuityCaptureTransportNWDevice
- (BOOL)active;
- (CMContinuityCaptureCapabilities)capabilities;
- (CMContinuityCaptureTransportNWDevice)initWithCapabilities:(id)a3 identifier:(id)a4 remote:(BOOL)a5;
- (NSArray)activeStreams;
- (OS_nw_connection)activeConnection;
- (void)activate:(BOOL)a3;
- (void)captureStillImage:(id)a3 entity:(int64_t)a4 completion:(id)a5;
- (void)didCaptureStillImage:(id)a3 entity:(int64_t)a4;
- (void)handleAVCNegotiation:(int64_t)a3 data:(id)a4;
- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5;
- (void)sendRequest:(id)a3;
- (void)setActiveConnection:(id)a3;
- (void)setCapabilities:(id)a3;
- (void)setValueForControl:(id)a3 completion:(id)a4;
- (void)setupUDPNWStack;
- (void)startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5;
@end

@implementation CMContinuityCaptureTransportNWDevice

- (CMContinuityCaptureTransportNWDevice)initWithCapabilities:(id)a3 identifier:(id)a4 remote:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = CMContinuityCaptureTransportNWDevice;
  v11 = [(CMContinuityCaptureTransportNWDevice *)&v20 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.continuitycapture.localDevice", v12);
    queue = v11->_queue;
    v11->_queue = v13;

    v11->_remote = a5;
    v15 = [[CMContinuityCaptureMagicStateMonitor alloc] initWithDevice:v11];
    magicStateMonitor = v11->_magicStateMonitor;
    v11->_magicStateMonitor = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeStreams = v11->_activeStreams;
    v11->_activeStreams = v17;

    objc_storeStrong(&v11->_deviceIdentifier, a4);
    objc_storeStrong(&v11->_capabilities, a3);
    [(CMContinuityCaptureTransportNWDevice *)v11 setupUDPNWStack];
  }

  return v11;
}

- (void)setActiveConnection:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  activeConnection = obj->_activeConnection;
  obj->_activeConnection = v4;

  objc_sync_exit(obj);
}

- (OS_nw_connection)activeConnection
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeConnection;
  objc_sync_exit(v2);

  return v3;
}

- (CMContinuityCaptureCapabilities)capabilities
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_capabilities;
  objc_sync_exit(v2);

  return v3;
}

- (void)setCapabilities:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  capabilities = obj->_capabilities;
  obj->_capabilities = v4;

  objc_sync_exit(obj);
}

- (BOOL)active
{
  v2 = self;
  objc_sync_enter(v2);
  active = v2->_active;
  objc_sync_exit(v2);

  return active;
}

- (NSArray)activeStreams
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [(NSMutableDictionary *)v2->_activeStreams allValues];
  v5 = [v3 initWithArray:v4];

  objc_sync_exit(v2);

  return v5;
}

- (void)activate:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v27 = CMContinuityCaptureGetListOfSupportedSidebandIdentifiers();
    v5 = [(CMContinuityCaptureTransportNWDevice *)self capabilities];
    v6 = CMContinuityCaptureMediaIdentifiersForCapabilities(v5);

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v13 = [[CMContinuityCaptureTransportDeviceNWStream alloc] initForIdentifier:v12 nwClientID:self->_nwClientID];
          if (v13)
          {
            [(CMContinuityCaptureTransportNWDevice *)self willChangeValueForKey:@"activeStreams"];
            v14 = self;
            objc_sync_enter(v14);
            [(NSMutableDictionary *)self->_activeStreams setObject:v13 forKeyedSubscript:v12];
            objc_sync_exit(v14);

            [(CMContinuityCaptureTransportNWDevice *)v14 didChangeValueForKey:@"activeStreams"];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v9);
    }

    v25 = v7;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = v27;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * j);
          v21 = [[CMContinuityCaptureTransportDeviceNWStream alloc] initForIdentifier:v20 nwClientID:self->_nwClientID];
          if (v21)
          {
            [(CMContinuityCaptureTransportNWDevice *)self willChangeValueForKey:@"activeStreams"];
            v22 = self;
            objc_sync_enter(v22);
            [(NSMutableDictionary *)self->_activeStreams setObject:v21 forKeyedSubscript:v20];
            objc_sync_exit(v22);

            [(CMContinuityCaptureTransportNWDevice *)v22 didChangeValueForKey:@"activeStreams"];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v17);
    }

    v3 = a3;
  }

  else
  {
    [(CMContinuityCaptureTransportNWDevice *)self willChangeValueForKey:@"activeStreams"];
    v23 = self;
    objc_sync_enter(v23);
    [(NSMutableDictionary *)v23->_activeStreams removeAllObjects];
    objc_sync_exit(v23);

    [(CMContinuityCaptureTransportNWDevice *)v23 didChangeValueForKey:@"activeStreams"];
  }

  [(CMContinuityCaptureTransportNWDevice *)self willChangeValueForKey:@"active"];
  v24 = self;
  objc_sync_enter(v24);
  v24->_active = v3;
  objc_sync_exit(v24);

  [(CMContinuityCaptureTransportNWDevice *)v24 didChangeValueForKey:@"active"];
}

- (void)sendRequest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CMContinuityCaptureTransportNWDevice *)self activeConnection];

  if (v5)
  {
    v6 = [v4 length] + 8;
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v6];
    v8 = [v7 mutableBytes];
    *v8 = v6;
    memcpy(v8 + 1, [v4 bytes], objc_msgSend(v4, "length"));
    v9 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_loadWeakRetained(&location);
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ NW Connect Send Data %@", buf, 0x16u);
    }

    v11 = [(CMContinuityCaptureTransportNWDevice *)self activeConnection];
    v12 = objc_loadWeakRetained(&location);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__CMContinuityCaptureTransportNWDevice_sendRequest___block_invoke;
    v13[3] = &unk_278D5DB88;
    objc_copyWeak(&v14, &location);
    CMContinuityCaptureSendDataToNWConnection(v11, v7, v12, v13);

    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&location);
}

void __52__CMContinuityCaptureTransportNWDevice_sendRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 138412546;
    v7 = WeakRetained;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@ NW connection send data error %@", &v6, 0x16u);
  }
}

- (void)captureStillImage:(id)a3 entity:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v30 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v30];
  v11 = v30;
  if (v10)
  {
    v23[0] = &unk_2854ECC08;
    v22[0] = @"ContinuityCaptureSelector";
    v22[1] = @"ContinuityCaptureArgs";
    v21[0] = v10;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v21[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v22[2] = @"identifier";
    v23[1] = v13;
    v23[2] = @"ContinuityCaptureCommand";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

    v20 = v11;
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v20];
    v16 = v20;

    if (v15)
    {
      [(CMContinuityCaptureTransportNWDevice *)self sendRequest:v15];
      v17 = 0;
    }

    else
    {
      v19 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v25 = self;
        v26 = 2112;
        v27 = v14;
        v28 = 2112;
        v29 = v16;
        _os_log_error_impl(&dword_242545000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Failed to archive message %@ error %@", buf, 0x20u);
      }

      v17 = v16;
    }

    (v9)[2](v9, v17);

    v11 = v16;
  }

  else
  {
    v18 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v25 = self;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v11;
      _os_log_error_impl(&dword_242545000, v18, OS_LOG_TYPE_ERROR, "%{public}@ archivedDataWithRootObject %@ Error %@", buf, 0x20u);
    }

    (v9)[2](v9, v11);
  }
}

- (void)didCaptureStillImage:(id)a3 entity:(int64_t)a4
{
  v6 = a3;
  v25 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v25];
  v8 = v25;
  if (v7)
  {
    v18[0] = &unk_2854ECC20;
    v17[0] = @"ContinuityCaptureSelector";
    v17[1] = @"ContinuityCaptureArgs";
    v16[0] = v7;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v16[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v17[2] = @"identifier";
    v18[1] = v10;
    v18[2] = @"ContinuityCaptureData";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v15 = v8;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v15];
    v13 = v15;

    if (v12)
    {
      [(CMContinuityCaptureTransportNWDevice *)self sendRequest:v12];
    }

    else
    {
      v14 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v20 = self;
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = v13;
        _os_log_error_impl(&dword_242545000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to archive message %@ error %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v20 = self;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v8;
      _os_log_error_impl(&dword_242545000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to archive request %@ error %@", buf, 0x20u);
    }

    v13 = v8;
  }
}

- (void)handleAVCNegotiation:(int64_t)a3 data:(id)a4
{
  v6 = a4;
  v22[0] = &unk_2854ECC38;
  v21[0] = @"ContinuityCaptureSelector";
  v21[1] = @"ContinuityCaptureArgs";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v20[0] = v7;
  v20[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v21[2] = @"identifier";
  v22[1] = v8;
  v22[2] = @"ContinuityCaptureControl";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v15 = self;
    v16 = 2080;
    v17 = "[CMContinuityCaptureTransportNWDevice handleAVCNegotiation:data:]";
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s for entity %d", buf, 0x1Cu);
  }

  v13 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v13];
  v12 = v13;
  if (v11)
  {
    [(CMContinuityCaptureTransportNWDevice *)self sendRequest:v11];
  }
}

- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5
{
  v7 = a3;
  v15[0] = &unk_2854ECC50;
  v14[0] = @"ContinuityCaptureSelector";
  v14[1] = @"ContinuityCaptureArgs";
  v13[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v14[2] = @"identifier";
  v15[1] = v9;
  v15[2] = @"ContinuityCaptureCommand";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v12];
  if (v11)
  {
    [(CMContinuityCaptureTransportNWDevice *)self sendRequest:v11];
  }
}

- (void)setValueForControl:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = self;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ setValueForControl %{public}@", buf, 0x16u);
  }

  v25 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v25];
  v10 = v25;
  if (v9)
  {
    v18[0] = &unk_2854ECC68;
    v17[0] = @"ContinuityCaptureSelector";
    v17[1] = @"ContinuityCaptureArgs";
    v16 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v17[2] = @"identifier";
    v18[1] = v11;
    v18[2] = @"ContinuityCaptureControl";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v15 = v10;
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v15];
    v14 = v15;

    if (!v13)
    {
      goto LABEL_7;
    }

    [(CMContinuityCaptureTransportNWDevice *)self sendRequest:v13];
    v10 = v14;
  }

  else
  {
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v20 = self;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_242545000, v13, OS_LOG_TYPE_ERROR, "%{public}@ archivedDataWithRootObject Error %@ for control %@", buf, 0x20u);
    }

    v12 = 0;
  }

  v14 = v10;
LABEL_7:
  if (v7)
  {
    v7[2](v7);
  }
}

- (void)startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v25 = self;
    v26 = 2114;
    v27 = v8;
    v28 = 1024;
    v29 = a4;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream for configuration %{public}@ option %d", buf, 0x1Cu);
  }

  v23 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v23];
  v12 = v23;
  if (v11)
  {
    v22[0] = &unk_2854ECC68;
    v21[0] = @"ContinuityCaptureSelector";
    v21[1] = @"ContinuityCaptureArgs";
    v20[0] = v11;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v20[1] = v13;
    v20[2] = &unk_2854ECC80;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
    v21[2] = @"identifier";
    v22[1] = v14;
    v22[2] = @"ContinuityCaptureCommand";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

    v19 = v12;
    v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v19];
    v17 = v19;

    if (v16)
    {
      [(CMContinuityCaptureTransportNWDevice *)self sendRequest:v16];
    }

    if (v9)
    {
      v9[2](v9, 0);
    }

    v12 = v17;
  }

  else
  {
    v18 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureTransportNWDevice startStream:option:completion:];
    }

    (v9)[2](v9, v12);
  }
}

- (void)stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v21 = self;
    v22 = 1024;
    v23 = a3;
    v24 = 1024;
    v25 = a4;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ stopStream for entity %u option %d", buf, 0x18u);
  }

  v19[0] = &unk_2854ECC38;
  v18[0] = @"ContinuityCaptureSelector";
  v18[1] = @"ContinuityCaptureArgs";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v17[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v17[1] = v11;
  v17[2] = &unk_2854ECC80;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v18[2] = @"identifier";
  v19[1] = v12;
  v19[2] = @"ContinuityCaptureCommand";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  v16 = 0;
  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v16];
  v15 = v16;
  if (v14)
  {
    [(CMContinuityCaptureTransportNWDevice *)self sendRequest:v14];
  }

  if (v8)
  {
    v8[2](v8, 0);
  }
}

- (void)setupUDPNWStack
{
  v33[0] = 0xAAAAAAAAAAAAAAAALL;
  v33[1] = 0xAAAAAAAAAAAAAAAALL;
  remote = self->_remote;
  unk_285500BF0(localIPAddress, "UTF8String");
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
  if (!host_with_numeric_port)
  {
    v26 = CMContinuityCaptureLog(0);
    if (OUTLINED_FUNCTION_8_0(v26))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  unk_285500BF8(localIPAddress, "UTF8String");
  v5 = nw_endpoint_create_host_with_numeric_port();
  if (!v5)
  {
    v27 = CMContinuityCaptureLog(0);
    if (OUTLINED_FUNCTION_8_0(v27))
    {
LABEL_13:
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    }

LABEL_14:
    v6 = 0;
    secure_udp = 0;
LABEL_8:

    goto LABEL_9;
  }

  v6 = v5;
  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x277CD9238], &__block_literal_global_139);
  CMContinuityCaptureGetMediaProcessUniqueID(self->_remote);
  nw_parameters_set_delegated_unique_pid();
  nw_parameters_set_reuse_local_address(secure_udp, 1);
  nw_parameters_set_local_endpoint(secure_udp, host_with_numeric_port);
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  nwPathEvaluator = self->_nwPathEvaluator;
  self->_nwPathEvaluator = evaluator_for_endpoint;

  v10 = CMContinuityCaptureLog(0);
  if (OUTLINED_FUNCTION_8_0(v10))
  {
    v11 = self->_nwPathEvaluator;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
  }

  if (self->_nwPathEvaluator)
  {
    nw_path_evaluator_get_client_id();
    v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v33];
    nwClientID = self->_nwClientID;
    self->_nwClientID = v17;

    v19 = CMContinuityCaptureLog(0);
    if (OUTLINED_FUNCTION_8_0(v19))
    {
      v20 = self->_nwClientID;
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_9:
}

@end