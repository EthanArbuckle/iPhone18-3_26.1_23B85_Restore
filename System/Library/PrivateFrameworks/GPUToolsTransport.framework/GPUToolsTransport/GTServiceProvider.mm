@interface GTServiceProvider
- (BOOL)waitForService:(id)service error:(id *)error;
- (GTServiceProvider)init;
- (void)_registerService:(id)service forProcess:(id)process forPort:(unint64_t)port;
- (void)deregisterService:(unint64_t)service;
- (void)disconnectServicePorts:(id)ports;
- (void)notifyServiceListChanged:(id)changed;
- (void)waitForService:(id)service completionHandler:(id)handler;
@end

@implementation GTServiceProvider

- (GTServiceProvider)init
{
  v10.receiver = self;
  v10.super_class = GTServiceProvider;
  v2 = [(GTServiceProvider *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    services = v2->_services;
    v2->_services = v3;

    v2->_nextServiceID = 1;
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    waiting = v2->_waiting;
    v2->_waiting = v5;

    v7 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v7;
  }

  return v2;
}

- (void)_registerService:(id)service forProcess:(id)process forPort:(unint64_t)port
{
  v38 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  processCopy = process;
  deviceUDID = [serviceCopy deviceUDID];

  if (!deviceUDID)
  {
    v11 = +[GTDeviceProperties uniqueDeviceID];
    [serviceCopy setDeviceUDID:v11];
  }

  [serviceCopy setServicePort:port];
  v12 = [[GTProcessService alloc] initWithService:serviceCopy processInfo:processCopy];
  services = self->_services;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:port];
  [(NSMutableDictionary *)services setObject:v12 forKeyedSubscript:v14];

  if (GTCoreLogUseOsLog())
  {
    protocolName = gt_tagged_log(0x10u);
    if (os_log_type_enabled(protocolName, OS_LOG_TYPE_DEBUG))
    {
      [GTServiceProvider _registerService:serviceCopy forProcess:port forPort:protocolName];
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    v17 = MEMORY[0x277CCACA8];
    protocolName = [serviceCopy protocolName];
    uTF8String = [protocolName UTF8String];
    deviceUDID2 = [serviceCopy deviceUDID];
    v20 = [v17 stringWithFormat:@"Service Registered name:%s port:%lu udid:%@", uTF8String, port, deviceUDID2];
    fprintf(v16, "%s\n", [v20 UTF8String]);
  }

  allValues = [(NSMutableDictionary *)self->_services allValues];
  [(GTServiceProvider *)self notifyServiceListChanged:allValues];

  waiting = self->_waiting;
  protocolName2 = [serviceCopy protocolName];
  v24 = [(NSMutableDictionary *)waiting objectForKeyedSubscript:protocolName2];

  if (v24)
  {
    v25 = self->_waiting;
    protocolName3 = [serviceCopy protocolName];
    [(NSMutableDictionary *)v25 removeObjectForKey:protocolName3];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = v24;
    v28 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v34;
      do
      {
        v31 = 0;
        do
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(v27);
          }

          (*(*(*(&v33 + 1) + 8 * v31++) + 16))();
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v29);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)waitForService:(id)service completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (serviceCopy)
  {
    v26 = handlerCopy;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = self->_services;
    v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:*(*(&v27 + 1) + 8 * v13)];
          serviceProperties = [v14 serviceProperties];
          protocolName = [serviceProperties protocolName];
          v17 = [protocolName isEqualToString:serviceCopy];

          if (v17)
          {
            v8 = v26;
            v26[2](v26, 0);
            goto LABEL_15;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v18 = [(NSMutableDictionary *)self->_waiting objectForKeyedSubscript:serviceCopy];

    if (!v18)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NSMutableDictionary *)self->_waiting setObject:v19 forKeyedSubscript:serviceCopy];
    }

    v9 = [(NSMutableDictionary *)self->_waiting objectForKeyedSubscript:serviceCopy];
    v8 = v26;
    v20 = [v26 copy];
    v21 = MEMORY[0x253034A70]();
    [(NSMutableDictionary *)v9 addObject:v21];
  }

  else
  {
    v22 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid protocol name"];
    v33[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v9 = [v22 errorWithDomain:@"com.apple.gputools.serviceprovider" code:0 userInfo:v24];

    (v8)[2](v8, v9);
  }

LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)waitForService:(id)service error:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  serviceCopy = service;
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__GTServiceProvider_waitForService_error___block_invoke;
  v11[3] = &unk_279661418;
  v12 = v7;
  v13 = &v14;
  v8 = v7;
  [(GTServiceProvider *)self waitForService:serviceCopy completionHandler:v11];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v15[5];
  }

  v9 = v15[5] == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

void __42__GTServiceProvider_waitForService_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)deregisterService:(unint64_t)service
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:service];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(GTServiceProvider *)self disconnectServicePorts:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)disconnectServicePorts:(id)ports
{
  v30 = *MEMORY[0x277D85DE8];
  portsCopy = ports;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [portsCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(portsCopy);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v9];
        serviceProperties = [v10 serviceProperties];
        protocolName = [serviceProperties protocolName];
        uTF8String = [protocolName UTF8String];

        if (GTCoreLogUseOsLog())
        {
          v14 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            if (uTF8String)
            {
              v15 = uTF8String;
            }

            else
            {
              v15 = "";
            }

            unsignedLongValue = [v9 unsignedLongValue];
            *buf = 136315394;
            v26 = v15;
            v27 = 2048;
            v28 = unsignedLongValue;
            _os_log_debug_impl(&dword_24DBC9000, v14, OS_LOG_TYPE_DEBUG, "Service Unregistered name:%s port:%lu", buf, 0x16u);
          }
        }

        else
        {
          v17 = *MEMORY[0x277D85E08];
          if (uTF8String)
          {
            v18 = uTF8String;
          }

          else
          {
            v18 = "";
          }

          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Service Unregistered name:%s port:%lu", v18, objc_msgSend(v9, "unsignedLongValue")];
          fprintf(v17, "%s\n", [v14 UTF8String]);
        }
      }

      v6 = [portsCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_services removeObjectsForKeys:portsCopy];
  allValues = [(NSMutableDictionary *)self->_services allValues];
  [(GTServiceProvider *)self notifyServiceListChanged:allValues];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)notifyServiceListChanged:(id)changed
{
  changedCopy = changed;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__GTServiceProvider_notifyServiceListChanged___block_invoke;
  v7[3] = &unk_2796613F0;
  v8 = changedCopy;
  v6 = changedCopy;
  [(GTObservableService *)observers notifyAll:v7];
}

- (void)_registerService:(void *)a1 forProcess:(uint64_t)a2 forPort:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 protocolName];
  v7 = [v6 UTF8String];
  v8 = [a1 deviceUDID];
  v10 = 136315650;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2112;
  v15 = v8;
  _os_log_debug_impl(&dword_24DBC9000, a3, OS_LOG_TYPE_DEBUG, "Service Registered name:%s port:%lu udid:%@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

@end