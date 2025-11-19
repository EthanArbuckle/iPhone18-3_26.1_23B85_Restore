@interface HMDHTTPMessageTransport
+ (BOOL)protocolVersionSupportsExtendedMessages:(id)a3;
+ (BOOL)shouldHostMessageServer;
+ (HMFVersion)protocolVersion;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)canSendMessage:(id)a3;
- (BOOL)isDeviceConnected:(id)a3;
- (BOOL)isServerEnabled;
- (HMDHTTPDevice)currentDevice;
- (HMDHTTPMessageTransport)initWithAccountRegistry:(id)a3;
- (HMDHTTPMessageTransport)initWithAccountRegistry:(id)a3 clientBrowser:(id)a4;
- (HMDHTTPServerMessageTransport)serverTransport;
- (NSArray)clientTransports;
- (NSDictionary)TXTRecord;
- (id)_serviceForDevice:(id)a3;
- (id)clientTransportForDevice:(id)a3;
- (id)clientTransportForService:(id)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)deviceForHTTPDevice:(id)a3;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (id)shortDescription;
- (void)_connectToDevice:(id)a3 completionHandler:(id)a4;
- (void)_handleReceivedRequestMessage:(id)a3 fromDevice:(id)a4 completionHandler:(id)a5;
- (void)_sendMessage:(id)a3 destination:(id)a4 timeout:(double)a5 responseHandler:(id)a6;
- (void)_startServerWithDevice:(id)a3;
- (void)_stopServer;
- (void)addClientTransport:(id)a3;
- (void)client:(id)a3 didReceiveMessage:(id)a4 completionHandler:(id)a5;
- (void)client:(id)a3 didStopWithError:(id)a4;
- (void)configureWithDevice:(id)a3;
- (void)handleServerEnabled:(BOOL)a3;
- (void)netServiceBrowser:(id)a3 didAddService:(id)a4;
- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4;
- (void)netServiceBrowser:(id)a3 didStopBrowsingWithError:(id)a4;
- (void)removeAllClientTransports;
- (void)removeClientTransport:(id)a3;
- (void)removeTXTRecordValueForKey:(id)a3;
- (void)sendMessage:(id)a3 completionHandler:(id)a4;
- (void)server:(id)a3 didAddDevice:(id)a4;
- (void)server:(id)a3 didReceiveMessage:(id)a4 fromDevice:(id)a5 completionHandler:(id)a6;
- (void)server:(id)a3 didRemoveDevice:(id)a4;
- (void)server:(id)a3 didStopWithError:(id)a4;
- (void)setCurrentDevice:(id)a3;
- (void)setServerTransport:(id)a3;
- (void)setTXTRecordValue:(id)a3 forKey:(id)a4;
- (void)startObservingIsPublishingForService:(id)a3;
@end

@implementation HMDHTTPMessageTransport

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(HMDHTTPMessageTransport *)self debugDescription];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D0F0D0]];

  v7 = [(HMDHTTPMessageTransport *)self clientTransports];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * i) dumpStateWithPrivacyLevel:{a3, v20}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [v5 setObject:v8 forKeyedSubscript:@"clientTransports"];
  v15 = [(HMDHTTPMessageTransport *)self serverTransport];
  if (v15)
  {
    v16 = [(HMDHTTPMessageTransport *)self serverTransport];
    v17 = [v16 dumpStateWithPrivacyLevel:a3];
    [v5 setObject:v17 forKeyedSubscript:@"serverTransport"];
  }

  else
  {
    [v5 setObject:@"No server transport" forKeyedSubscript:@"serverTransport"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDHTTPMessageTransport_netServiceBrowser_didRemoveService___block_invoke;
  block[3] = &unk_279734960;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __62__HMDHTTPMessageTransport_netServiceBrowser_didRemoveService___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) clientBrowser];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 48);
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Client is no longer advertising: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)netServiceBrowser:(id)a3 didAddService:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHTTPMessageTransport *)self clientBrowser];

  if (v8 == v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Discovered new client: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDHTTPMessageTransport *)v10 clientTransportForService:v7];
    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v10;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v23 = v17;
        v24 = 2112;
        v25 = v7;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Added service, %@, for existing client: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __59__HMDHTTPMessageTransport_netServiceBrowser_didAddService___block_invoke;
      v19[3] = &unk_279734D88;
      v19[4] = v15;
      v20 = v7;
      v21 = v13;
      [v20 confirmWithTimeout:v19 completionHandler:0.0];
    }

    [(HMDHTTPMessageTransport *)v10 startObservingIsPublishingForService:v7];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __59__HMDHTTPMessageTransport_netServiceBrowser_didAddService___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v19 = 138543874;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Resolved service, %@, for existing client: %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) netService];
  LOBYTE(v10) = [v10 isEqual:v11];

  if ((v10 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      v17 = [*(a1 + 48) netService];
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Removing client, added service, %@, does not match existing client service: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 48) stop];
    [*(a1 + 32) removeClientTransport:*(a1 + 48)];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)netServiceBrowser:(id)a3 didStopBrowsingWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Client browser stopped with error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)a3 didReceiveMessage:(id)a4 fromDevice:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HMDHTTPMessageTransport_server_didReceiveMessage_fromDevice_completionHandler___block_invoke;
  v16[3] = &unk_279734578;
  v16[4] = self;
  v17 = v10;
  v18 = v9;
  v19 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  dispatch_async(queue, v16);
}

uint64_t __81__HMDHTTPMessageTransport_server_didReceiveMessage_fromDevice_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Received message for device, %@, : %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleReceivedRequestMessage:*(a1 + 48) fromDevice:*(a1 + 40) completionHandler:*(a1 + 56)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)server:(id)a3 didRemoveDevice:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDHTTPMessageTransport_server_didRemoveDevice___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __50__HMDHTTPMessageTransport_server_didRemoveDevice___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Server removed device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) _serviceForDevice:*(a1 + 40)];
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting client confirmation for device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    objc_initWeak(buf, *(a1 + 32));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__HMDHTTPMessageTransport_server_didRemoveDevice___block_invoke_103;
    v14[3] = &unk_2797338E8;
    objc_copyWeak(&v16, buf);
    v15 = *(a1 + 40);
    [v7 confirmWithTimeout:v14 completionHandler:0.0];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __50__HMDHTTPMessageTransport_server_didRemoveDevice___block_invoke_103(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Completed client confirmation for device, %@, with error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)a3 didAddDevice:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@New device added: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)a3 didStopWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Server stopped with error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 didReceiveMessage:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HMDHTTPMessageTransport_client_didReceiveMessage_completionHandler___block_invoke;
  v15[3] = &unk_279734578;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __70__HMDHTTPMessageTransport_client_didReceiveMessage_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) remoteDevice];
    v7 = *(a1 + 48);
    v12 = 138543874;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Received message for device, %@, : %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) remoteDevice];
  [v9 _handleReceivedRequestMessage:v8 fromDevice:v10 completionHandler:*(a1 + 56)];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 didStopWithError:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v29 = v11;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Client, %@, did stop with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDHTTPMessageTransport *)v9 serverTransport];
  v13 = [v12 devices];
  v14 = [v6 remoteDevice];
  v15 = [v13 containsObject:v14];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v6 remoteDevice];
      *buf = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Starting server confirmation for device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    objc_initWeak(buf, v17);
    objc_initWeak(&location, v6);
    v21 = [(HMDHTTPMessageTransport *)v17 serverTransport];
    v22 = [v6 remoteDevice];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __51__HMDHTTPMessageTransport_client_didStopWithError___block_invoke;
    v24[3] = &unk_2797233A0;
    objc_copyWeak(&v25, buf);
    objc_copyWeak(&v26, &location);
    [v21 confirmDevice:v22 completionHandler:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __51__HMDHTTPMessageTransport_client_didStopWithError___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_autoreleasePoolPush();
  v7 = WeakRetained;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 remoteDevice];
    v12 = 138543874;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Completed server confirmation for device, %@, with error: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)startObservingIsPublishingForService:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __httpDeviceForNetService(v4, self);
  if (v5)
  {
    v6 = [(HMDHTTPMessageTransport *)self deviceForHTTPDevice:v5];
    v7 = v6;
    if (v6)
    {
      queue = self->_queue;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __64__HMDHTTPMessageTransport_startObservingIsPublishingForService___block_invoke;
      v20[3] = &unk_2797359B0;
      v21 = v6;
      v22 = v4;
      dispatch_async(queue, v20);
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [v4 name];
        *buf = 138543874;
        v24 = v17;
        v25 = 2112;
        v26 = v5;
        v27 = 2112;
        v28 = v18;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Unable to find device with UUID %@, from net service name %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 name];
      *buf = 138543618;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Unable to create http device from net service name %@, ignoring", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_connectToDevice:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHTTPMessageTransport *)self clientTransportForDevice:v6];
  v9 = v8;
  if (v8)
  {
    if ([v8 isRunning])
    {
      if (v7)
      {
        v7[2](v7, v9, 0);
      }
    }

    else
    {
      objc_initWeak(buf, self);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke;
      v26[3] = &unk_2797346E0;
      objc_copyWeak(&v29, buf);
      v28 = v7;
      v27 = v9;
      [v27 startWithCompletionHandler:v26];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v10 = [(HMDHTTPMessageTransport *)self _serviceForDevice:v6];
    if (!v10)
    {
      goto LABEL_11;
    }

    v11 = [HMDHTTPClientMessageTransport alloc];
    v12 = [(HMDHTTPMessageTransport *)self currentDevice];
    v13 = [v12 identifier];
    v14 = [(HMDHTTPClientMessageTransport *)v11 initWithIdentifier:v13 netService:v10];

    [(HMDHTTPClientMessageTransport *)v14 setDelegate:self];
    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v18;
        v32 = 2112;
        v33 = v6;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Created a new messaging client for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDHTTPMessageTransport *)v16 addClientTransport:v14];
      objc_initWeak(buf, v16);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_101;
      v22[3] = &unk_2797346E0;
      objc_copyWeak(&v25, buf);
      v24 = v7;
      v19 = v14;
      v23 = v19;
      [(HMDHTTPClientMessageTransport *)v19 startWithCompletionHandler:v22];

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }

    else
    {
LABEL_11:
      if (v7)
      {
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not found." reason:@"Unable to find device." suggestion:0];
        (v7)[2](v7, 0, v20);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to start messaging client with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  if (WeakRetained)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = WeakRetained[11];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_99;
      block[3] = &unk_2797355D0;
      v15 = v9;
      v13 = v3;
      v14 = *(a1 + 32);
      dispatch_async(v10, block);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_101(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to start messaging client with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  if (WeakRetained)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = WeakRetained[11];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_102;
      block[3] = &unk_2797355D0;
      v15 = v9;
      v13 = v3;
      v14 = *(a1 + 32);
      dispatch_async(v10, block);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_102(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

uint64_t __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_99(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

- (void)_stopServer
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHTTPMessageTransport *)self serverTransport];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping server", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMDHTTPMessageTransport *)v5 serverTransport];
    [v8 stop];

    [(HMDHTTPMessageTransport *)v5 setServerTransport:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_startServerWithDevice:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting server", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [HMDHTTPServerMessageTransport alloc];
  v10 = [v4 identifier];
  v11 = [(HMDHTTPServerMessageTransport *)v9 initWithServerIdentifier:v10];
  [(HMDHTTPMessageTransport *)v6 setServerTransport:v11];

  v12 = [(HMDHTTPMessageTransport *)v6 serverTransport];
  [v12 setDelegate:v6];

  v13 = [(HMDHTTPMessageTransport *)v6 serverTransport];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__HMDHTTPMessageTransport__startServerWithDevice___block_invoke;
  v15[3] = &unk_2797359D8;
  v15[4] = v6;
  [v13 startWithCompletionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __50__HMDHTTPMessageTransport__startServerWithDevice___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start message server with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = [*(a1 + 32) TXTRecord];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__HMDHTTPMessageTransport__startServerWithDevice___block_invoke_96;
    v10[3] = &unk_27972C990;
    v10[4] = *(a1 + 32);
    [v8 enumerateKeysAndObjectsUsingBlock:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __50__HMDHTTPMessageTransport__startServerWithDevice___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@injecting TXT record %@: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (v8)
  {
    v13 = [*(a1 + 32) serverTransport];
    [v13 setTXTRecordValue:v8 forKey:v5];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)configureWithDevice:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDHTTPMessageTransport_configureWithDevice___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __47__HMDHTTPMessageTransport_configureWithDevice___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentDevice];
  v3 = [v2 isEqual:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *buf = 138543618;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Configuring with device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setCurrentDevice:*(a1 + 40)];
    [*(a1 + 32) _stopServer];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [*(a1 + 32) clientTransports];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v17 + 1) + 8 * v13++) stop];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [*(a1 + 32) removeAllClientTransports];
    if (*(a1 + 40))
    {
      if ([*(a1 + 32) isServerEnabled])
      {
        [*(a1 + 32) _startServerWithDevice:*(a1 + 40)];
      }

      v14 = [*(a1 + 32) clientBrowser];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __47__HMDHTTPMessageTransport_configureWithDevice___block_invoke_94;
      v16[3] = &unk_2797359D8;
      v16[4] = *(a1 + 32);
      [v14 startBrowsingWithCompletionHandler:v16];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __47__HMDHTTPMessageTransport_configureWithDevice___block_invoke_94(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start browseing for clients with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_serviceForDevice:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(HMDHTTPMessageTransport *)self clientBrowser];
  v6 = [v5 cachedNetServices];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CCAD78]);
        v12 = [v10 name];
        v13 = [v11 initWithUUIDString:v12];

        v14 = [v4 identifier];
        v15 = [v13 isEqual:v14];

        if (v15)
        {
          v7 = v10;

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)removeAllClientTransports
{
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_clientTransports removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeClientTransport:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_clientTransports removeObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (void)addClientTransport:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_clientTransports addObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (id)clientTransportForService:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __httpDeviceForNetService(v4, self);
  if (v5)
  {
    v6 = [(HMDHTTPMessageTransport *)self clientTransportForDevice:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 name];
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Unable to create device from net service name %@, so ignoring", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)clientTransportForDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_clientTransports;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 remoteDevice];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSArray)clientTransports
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_clientTransports copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)deviceForHTTPDevice:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [(HMDRemoteMessageTransport *)self accountRegistry];
  v6 = [v5 accounts];

  v23 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v7 = *v30;
    v24 = v6;
    v22 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v10 = [v9 devices];
        v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v25 + 1) + 8 * j);
              v16 = [v15 identifier];
              v17 = [v4 identifier];
              v18 = [v16 isEqual:v17];

              if (v18)
              {
                v19 = v15;

                v6 = v24;
                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v6 = v24;
        v7 = v22;
      }

      v19 = 0;
      v23 = [v24 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  else
  {
    v19 = 0;
  }

LABEL_19:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)setServerTransport:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  serverTransport = self->_serverTransport;
  self->_serverTransport = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHTTPServerMessageTransport)serverTransport
{
  os_unfair_lock_lock_with_options();
  v3 = self->_serverTransport;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCurrentDevice:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  currentDevice = self->_currentDevice;
  self->_currentDevice = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHTTPDevice)currentDevice
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentDevice;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)removeTXTRecordValueForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_txtRecord removeObjectForKey:v4];
  [(HMDHTTPServerMessageTransport *)self->_serverTransport removeTXTRecordValueForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTXTRecordValue:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_txtRecord setValue:v7 forKey:v6];
  [(HMDHTTPServerMessageTransport *)self->_serverTransport setTXTRecordValue:v7 forKey:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)TXTRecord
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_txtRecord copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)handleServerEnabled:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HMDHTTPMessageTransport_handleServerEnabled___block_invoke;
  v4[3] = &unk_279735D28;
  v5 = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

void __47__HMDHTTPMessageTransport_handleServerEnabled___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Server was enabled", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v8 = [*(a1 + 32) currentDevice];

    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [v9 currentDevice];
      [v9 _startServerWithDevice:v10];
    }
  }

  else
  {
    if (v6)
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Server was disabled", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _stopServer];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isServerEnabled
{
  os_unfair_lock_lock_with_options();
  serverEnabled = self->_serverEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return serverEnabled;
}

- (void)_handleReceivedRequestMessage:(id)a3 fromDevice:(id)a4 completionHandler:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v8 shortDescription];
    *buf = 138543874;
    v66 = v14;
    v67 = 2112;
    v68 = v15;
    v69 = 2112;
    v70 = v9;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received incoming message, %@, from: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v64 = 0;
  v16 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:v8 error:&v64];
  v51 = v64;
  if (v16)
  {
    [v16 setRestriction:{objc_msgSend(objc_opt_class(), "restriction")}];
    v52 = [(HMDHTTPMessageTransport *)v12 deviceForHTTPDevice:v9];
    if (v52)
    {
      v17 = [HMDRemoteDeviceMessageDestination alloc];
      v18 = [v16 destination];
      v19 = [v18 target];
      v20 = [(HMDRemoteDeviceMessageDestination *)v17 initWithTarget:v19 device:v52];

      [v16 setDestination:v20];
      v21 = [v16 messagePayload];
      v22 = [v21 mutableCopy];

      v23 = [(HMDRemoteDeviceMessageDestination *)v20 device];
      v24 = [v23 remoteDestinationString];
      [v22 setObject:v24 forKeyedSubscript:@"kIDSMessageSourceIDKey"];

      [v16 setMessagePayload:v22];
      objc_initWeak(buf, v12);
      if ([v16 type])
      {
        v25 = [v16 name];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke_3;
        v55[3] = &unk_279733FB0;
        v55[4] = v12;
        v26 = v25;
        v56 = v26;
        [v16 setResponseHandler:v55];
        if (v10)
        {
          queue = v12->_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke_89;
          block[3] = &unk_2797348C0;
          v54 = v10;
          dispatch_async(queue, block);
        }
      }

      else
      {
        v37 = [v16 name];
        v38 = [v16 destination];
        v39 = [v16 isSecure];
        v40 = [v16 transactionIdentifier];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke;
        v57[3] = &unk_279723378;
        objc_copyWeak(&v62, buf);
        v61 = v10;
        v26 = v37;
        v58 = v26;
        v41 = v38;
        v59 = v41;
        v63 = v39;
        v42 = v40;
        v60 = v42;
        [v16 setInternalResponseHandler:v57];

        objc_destroyWeak(&v62);
      }

      if (([v16 isSecure] & 1) != 0 || !+[HMDSecureRemoteSession isSecureRemoteSessionMessage:](HMDSecureRemoteSession, "isSecureRemoteSessionMessage:", v16))
      {
        v43 = +[HMDMetricsManager sharedLogEventSubmitter];
        v44 = [HMDRemoteMessageLogEvent receivedRemoteMessage:v16 transportType:[(HMDHTTPMessageTransport *)v12 transportType]];
        [v43 submitLogEvent:v44];
      }

      v45 = [v16 userInfo];
      v46 = [v45 mutableCopy];

      v47 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDHTTPMessageTransport transportType](v12, "transportType")}];
      [v46 setObject:v47 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

      v48 = [v16 internal];
      [v48 setUserInfo:v46];

      v49 = [(HMFMessageTransport *)v12 delegate];
      [v49 messageTransport:v12 didReceiveMessage:v16];

      objc_destroyWeak(buf);
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v12;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543874;
        v66 = v35;
        v67 = 2112;
        v68 = v8;
        v69 = 2112;
        v70 = v9;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Received message, %@, from unknown device: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v32);
      if (v10)
      {
        v36 = [MEMORY[0x277CCA9B8] hmd_HTTPMessageTransportErrorWithCode:100];
        (*(v10 + 2))(v10, 0, v36);
      }
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v12;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v66 = v31;
      v67 = 2112;
      v68 = v8;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Received invalid HTTP message payload, dropping it: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    if (v10)
    {
      (*(v10 + 2))(v10, 0, v51);
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained && *(a1 + 56))
  {
    v9 = WeakRetained[11];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke_2;
    block[3] = &unk_2797325D0;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = v6;
    v17 = *(a1 + 72);
    v14 = *(a1 + 48);
    v15 = v5;
    v16 = *(a1 + 56);
    dispatch_async(v9, block);
  }
}

void __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Command %@ completed with error: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];
}

void __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [[HMDRemoteMessage alloc] initWithName:*(a1 + 32) destination:*(a1 + 40) payload:*(a1 + 48) type:1 timeout:*(a1 + 80) secure:0.0];
  [(HMDRemoteMessage *)v2 setTransactionIdentifier:*(a1 + 56)];
  v8 = 0;
  v3 = [HMDRemoteMessageSerialization dictionaryForMessage:v2 error:&v8];
  v4 = v8;
  v5 = [v3 mutableCopy];

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    [v5 setObject:v7 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
  }

  (*(*(a1 + 72) + 16))();
}

- (void)_sendMessage:(id)a3 destination:(id)a4 timeout:(double)a5 responseHandler:(id)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v10 shortDescription];
    *buf = 138543874;
    v56 = v16;
    v57 = 2112;
    v58 = v17;
    v59 = 2112;
    v60 = v11;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending message, %@, to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = [(HMDHTTPMessageTransport *)v14 _serviceForDevice:v11];
  v19 = [(HMDHTTPMessageTransport *)v14 clientTransportForDevice:v11];
  if (v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = v18 == 0;
  }

  v21 = !v20;
  if (!v20)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v14;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v47 = v11;
      v25 = v18;
      v26 = v10;
      v28 = v27 = v12;
      *buf = 138543362;
      v56 = v28;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Not currently tracking client, starting to track client", buf, 0xCu);

      v12 = v27;
      v10 = v26;
      v18 = v25;
      v11 = v47;
    }

    objc_autoreleasePoolPop(v22);
  }

  if ([v19 isRunning])
  {
    [v19 sendMessage:v10 timeout:v12 completionHandler:a5];
    goto LABEL_28;
  }

  if ((v21 | [v19 isReachable]) == 1)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v14;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v32;
      v57 = 2112;
      v58 = v11;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Not currently connected to device, %@, so attempting to connect and send message.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __76__HMDHTTPMessageTransport__sendMessage_destination_timeout_responseHandler___block_invoke;
    v48[3] = &unk_279723350;
    v48[4] = v30;
    v49 = v11;
    v50 = v18;
    v52 = v12;
    v51 = v10;
    v53 = a5;
    [(HMDHTTPMessageTransport *)v30 _connectToDevice:v49 completionHandler:v48];

    goto LABEL_28;
  }

  v33 = [(HMDHTTPMessageTransport *)v14 serverTransport];
  v34 = [v33 devices];
  v35 = [v34 containsObject:v11];

  v36 = objc_autoreleasePoolPush();
  v37 = v14;
  v38 = HMFGetOSLogHandle();
  v39 = v38;
  if (v35)
  {
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v56 = v40;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Unable to send via client, falling back to sending message via the server", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
    v41 = [(HMDHTTPMessageTransport *)v37 serverTransport];
    v42 = MEMORY[0x277CBEB98];
    v54 = v11;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v44 = [v42 setWithArray:v43];
    [v41 sendMessage:v10 toDevices:v44 timeout:v12 completionHandler:a5];

    goto LABEL_27;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543618;
    v56 = v45;
    v57 = 2112;
    v58 = v11;
    _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to send message to destination: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
  if (v12)
  {
    v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication error." reason:@"No valid connection for destination" suggestion:0];
    (*(v12 + 2))(v12, 0, v41);
LABEL_27:
  }

LABEL_28:

  v46 = *MEMORY[0x277D85DE8];
}

void __76__HMDHTTPMessageTransport__sendMessage_destination_timeout_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      *buf = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to send message to destination: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __76__HMDHTTPMessageTransport__sendMessage_destination_timeout_responseHandler___block_invoke_76;
    v19 = &unk_2797358C8;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v20 = *(a1 + 32);
    v21 = v12;
    [v13 confirmWithTimeout:&v16 completionHandler:0.0];
    if (*(a1 + 64))
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication error." reason:@"No valid connection for destination" suggestion:{0, v16, v17, v18, v19, v20}];
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    [v5 sendMessage:*(a1 + 56) timeout:*(a1 + 64) completionHandler:*(a1 + 72)];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __76__HMDHTTPMessageTransport__sendMessage_destination_timeout_responseHandler___block_invoke_76(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Completed confirmation for device, %@, with error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke(id *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (!v4)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = a1[5];
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [a1[4] identifier];
      v28 = [v27 UUIDString];
      v29 = [a1[4] destination];
      *buf = 138543874;
      v51 = v26;
      v52 = 2112;
      v53 = v28;
      v54 = 2112;
      v55 = v29;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message, %@, invalid destination: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter." reason:@"Invalid destination." suggestion:0];
    v30 = a1[6];
    if (v30)
    {
      v30[2](v30, v7);
    }

    v31 = [a1[4] responseHandler];

    if (v31)
    {
      v32 = [a1[4] responseHandler];
      (v32)[2](v32, v7, 0);
    }

    goto LABEL_31;
  }

  v5 = [a1[5] currentDevice];

  if (v5)
  {
    v6 = [a1[5] remoteMessageFromMessage:a1[4]];
    v49 = 0;
    v42 = [HMDRemoteMessageSerialization dictionaryForMessage:v6 error:&v49];
    v7 = v49;
    v8 = objc_autoreleasePoolPush();
    v9 = a1[5];
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v42)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [a1[4] identifier];
        v14 = [v13 UUIDString];
        *buf = 138543618;
        v51 = v12;
        v52 = 2112;
        v53 = v14;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Sending request message with identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v15 = 6.0;
      if (![v6 type])
      {
        [v6 timeout];
        if (v16 > 0.0)
        {
          [v6 timeout];
          v15 = v17;
        }
      }

      v18 = [HMDHTTPDevice alloc];
      v19 = [v4 device];
      v20 = [v19 identifier];
      v21 = [(HMDHTTPDevice *)v18 initWithIdentifier:v20];

      objc_initWeak(buf, a1[5]);
      v22 = a1[5];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke_63;
      v43[3] = &unk_279723328;
      v47 = a1[6];
      objc_copyWeak(&v48, buf);
      v44 = a1[4];
      v45 = v6;
      v46 = v4;
      [v22 _sendMessage:v42 destination:v21 timeout:v43 responseHandler:v15];

      objc_destroyWeak(&v48);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        v38 = a1[4];
        *buf = 138543874;
        v51 = v37;
        v52 = 2112;
        v53 = v38;
        v54 = 2112;
        v55 = v7;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize message, %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v39 = a1[6];
      if (v39)
      {
        v39[2](v39, v7);
      }

      v40 = [a1[4] responseHandler];

      if (!v40)
      {
        goto LABEL_30;
      }

      v21 = [a1[4] responseHandler];
      (v21[1].super.super.isa)(v21, v7, 0);
    }

LABEL_30:
    goto LABEL_31;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = a1[5];
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543362;
    v51 = v36;
    _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@No device for HTTP Client (currentDevice==nil). ", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v33);
  if (a1[6])
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not found." reason:@"Unable to find device." suggestion:0];
    (*(a1[6] + 2))();
LABEL_31:
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v6)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [*(a1 + 32) identifier];
        v15 = [v14 UUIDString];
        *buf = 138543874;
        v59 = v13;
        v60 = 2112;
        v61 = v15;
        v62 = 2112;
        v63 = v6;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message, %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 32) identifier];
        v18 = [v17 UUIDString];
        *buf = 138543618;
        v59 = v16;
        v60 = 2112;
        v61 = v18;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully sent message with identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v19 = +[HMDMetricsManager sharedLogEventSubmitter];
      v20 = +[HMDRemoteMessageLogEvent sentRemoteMessage:transportType:](HMDRemoteMessageLogEvent, "sentRemoteMessage:transportType:", *(a1 + 40), [v10 transportType]);
      [v19 submitLogEvent:v20];
    }

    v21 = [*(a1 + 40) type];
    v22 = 0;
    if (!v6 && !v21)
    {
      v57 = 0;
      v23 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:v5 error:&v57];
      v24 = v57;
      v25 = v24;
      if (v23)
      {
        v51 = v24;
        v26 = [v23 messagePayload];
        v22 = [v26 mutableCopy];

        v27 = [HMDRemoteDeviceMessageDestination alloc];
        v28 = [v23 destination];
        v29 = [v28 target];
        v30 = [*(a1 + 48) device];
        v31 = [(HMDRemoteDeviceMessageDestination *)v27 initWithTarget:v29 device:v30];

        [v23 setDestination:v31];
        v50 = v31;
        v32 = [(HMDRemoteDeviceMessageDestination *)v31 device];
        v33 = [v32 remoteDestinationString];
        [v22 setObject:v33 forKeyedSubscript:@"kIDSMessageSourceIDKey"];

        v34 = [v5 hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
        if (v34)
        {
          v35 = MEMORY[0x277CCAAC8];
          v36 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
          v56 = 0;
          v6 = [v35 _strictlyUnarchivedObjectOfClasses:v36 fromData:v34 error:&v56];
          v37 = v56;

          if (!v6)
          {
            v38 = objc_autoreleasePoolPush();
            v49 = v10;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v40 = v48 = v38;
              *buf = 138543618;
              v59 = v40;
              v60 = 2112;
              v61 = v37;
              _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize error with error: %@", buf, 0x16u);

              v38 = v48;
            }

            objc_autoreleasePoolPop(v38);
            v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 description:@"Generic error." reason:@"Failed to deserialize remote error." suggestion:0 underlyingError:v37];
          }

          [v22 setObject:v6 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
        }

        else
        {
          v6 = 0;
        }

        v25 = v51;
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        v42 = v10;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543874;
          v59 = v44;
          v60 = 2112;
          v61 = v5;
          v62 = 2112;
          v63 = v25;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize response, %@, with error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v41);
        v6 = v25;
        v22 = 0;
      }
    }

    v45 = [*(a1 + 32) responseHandler];

    if (v45)
    {
      v46 = v10[11];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke_74;
      block[3] = &unk_279734960;
      v53 = *(a1 + 32);
      v54 = v6;
      v55 = v22;
      dispatch_async(v46, block);
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke_74(uint64_t a1)
{
  v2 = [*(a1 + 32) responseHandler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

- (BOOL)canSendMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 destination];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([v4 restriction] & 2) != 0 && (-[HMDHTTPMessageTransport currentDevice](self, "currentDevice"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v4 destination];
    v9 = [v8 device];

    v10 = [HMDHTTPDevice alloc];
    v11 = [v9 identifier];
    v12 = [(HMDHTTPDevice *)v10 initWithIdentifier:v11];

    v13 = [(HMDHTTPMessageTransport *)self isDeviceConnected:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isDeviceConnected:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHTTPMessageTransport *)self clientTransportForDevice:v4];
  if ([v5 isReachable])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v9;
      v10 = "%{public}@Can send, client is reachable";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, v10, &v20, 0xCu);
    }
  }

  else
  {
    v11 = [(HMDHTTPMessageTransport *)self _serviceForDevice:v4];

    if (v11)
    {
      v6 = objc_autoreleasePoolPush();
      v12 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v9;
        v10 = "%{public}@Can send, device is advertising";
        goto LABEL_10;
      }
    }

    else
    {
      v13 = [(HMDHTTPMessageTransport *)self serverTransport];
      v14 = [v13 devices];
      v15 = [v14 containsObject:v4];

      if (!v15)
      {
        v17 = 0;
        goto LABEL_12;
      }

      v6 = objc_autoreleasePoolPush();
      v16 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v9;
        v10 = "%{public}@Can send, device is connected";
        goto LABEL_10;
      }
    }
  }

  objc_autoreleasePoolPop(v6);
  v17 = 1;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)logIdentifier
{
  v2 = [(HMDHTTPMessageTransport *)self currentDevice];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 identifier];
    v5 = [v4 UUIDString];
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [objc_opt_class() shortDescription];
  v7 = [(HMDHTTPMessageTransport *)self currentDevice];
  v8 = [v7 identifier];
  v9 = [v8 UUIDString];
  v10 = v9;
  if (a3)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
    v12 = [v5 stringWithFormat:@"<%@ %@, Identifier = %@>", v6, v10, v11];
  }

  else
  {
    v12 = [v5 stringWithFormat:@"<%@ %@, Identifier = %@>", v6, v9, &stru_286509E58];
  }

  return v12;
}

- (id)shortDescription
{
  v2 = [(HMDHTTPMessageTransport *)self logIdentifier];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [objc_opt_class() shortDescription];
    v5 = [v3 stringWithFormat:@"%@ %@", v4, v2];
  }

  else
  {
    v5 = [objc_opt_class() shortDescription];
  }

  return v5;
}

- (HMDHTTPMessageTransport)initWithAccountRegistry:(id)a3 clientBrowser:(id)a4
{
  v7 = a4;
  v19.receiver = self;
  v19.super_class = HMDHTTPMessageTransport;
  v8 = [(HMDRemoteMessageTransport *)&v19 initWithAccountRegistry:a3];
  if (v8)
  {
    v9 = HMDispatchQueueNameString();
    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    queue = v8->_queue;
    v8->_queue = v12;

    v14 = [MEMORY[0x277CBEB18] array];
    clientTransports = v8->_clientTransports;
    v8->_clientTransports = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    txtRecord = v8->_txtRecord;
    v8->_txtRecord = v16;

    objc_storeStrong(&v8->_clientBrowser, a4);
    [(HMFNetServiceBrowser *)v8->_clientBrowser setDelegate:v8];
    [(HMFNetServiceBrowser *)v8->_clientBrowser setShouldCache:1];
  }

  return v8;
}

- (HMDHTTPMessageTransport)initWithAccountRegistry:(id)a3
{
  v4 = MEMORY[0x277D0F878];
  v5 = a3;
  v6 = [[v4 alloc] initWithDomain:@"local." serviceType:@"_homekit._tcp."];
  v7 = [(HMDHTTPMessageTransport *)self initWithAccountRegistry:v5 clientBrowser:v6];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_14508 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_14508, &__block_literal_global_40_14509);
  }

  v3 = logCategory__hmf_once_v1_14510;

  return v3;
}

uint64_t __38__HMDHTTPMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v1_14510 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (BOOL)protocolVersionSupportsExtendedMessages:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (protocolVersionSupportsExtendedMessages__onceToken != -1)
    {
      dispatch_once(&protocolVersionSupportsExtendedMessages__onceToken, &__block_literal_global_22);
    }

    v4 = [v3 isAtLeastVersion:protocolVersionSupportsExtendedMessages__extendedMessageProtocolVersion];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __67__HMDHTTPMessageTransport_protocolVersionSupportsExtendedMessages___block_invoke()
{
  protocolVersionSupportsExtendedMessages__extendedMessageProtocolVersion = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:1 minorVersion:1 updateVersion:0];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)shouldHostMessageServer
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  if ([v2 isResidentCapable])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[HMDDeviceCapabilities deviceCapabilities];
    v3 = [v4 supportsKeyTransferServer];
  }

  return v3;
}

+ (HMFVersion)protocolVersion
{
  if (protocolVersion_onceToken != -1)
  {
    dispatch_once(&protocolVersion_onceToken, &__block_literal_global_14517);
  }

  v3 = protocolVersion_protocolVersion;

  return v3;
}

uint64_t __42__HMDHTTPMessageTransport_protocolVersion__block_invoke()
{
  protocolVersion_protocolVersion = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:1 minorVersion:1 updateVersion:0];

  return MEMORY[0x2821F96F8]();
}

@end