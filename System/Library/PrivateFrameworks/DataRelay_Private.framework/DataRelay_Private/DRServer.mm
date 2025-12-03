@interface DRServer
- (DRServer)initWithIdentifier:(id)identifier;
- (void)_removeRequestedDataTypes:(unint64_t)types completion:(id)completion;
- (void)addAvailableDataTypes:(unint64_t)types fromServer:(BOOL)server completion:(id)completion;
- (void)addRequestedDataTypes:(unint64_t)types completion:(id)completion;
- (void)dealloc;
- (void)eventsHandler:(id)handler;
- (void)removeAvailableDataTypes:(unint64_t)types fromServer:(BOOL)server completion:(id)completion;
- (void)removeRequestedDataTypes:(unint64_t)types completion:(id)completion;
- (void)reset;
- (void)serviceAddedHandler:(id)handler;
- (void)serviceRemovedHandler:(id)handler;
- (void)setWxAddress:(id)address;
@end

@implementation DRServer

- (DRServer)initWithIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = DRServer;
  v3 = [(DRPeer *)&v8 initWithIdentifier:identifier];
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    rapportSemaphore = v3->_rapportSemaphore;
    v3->_rapportSemaphore = v4;

    v6 = dispatch_queue_create("com.apple.datarelay.DRServer", 0);
    [(DRPeer *)v3 setDispatchQueue:v6];

    [(DRServer *)v3 reset];
  }

  return v3;
}

- (void)serviceAddedHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__DRServer_serviceAddedHandler___block_invoke;
  v7[3] = &unk_278F4E9C0;
  objc_copyWeak(&v10, &location);
  v8 = handlerCopy;
  selfCopy = self;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __32__DRServer_serviceAddedHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained isActivated];

  if (v3)
  {
    if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
    {
      __32__DRServer_serviceAddedHandler___block_invoke_cold_2(a1);
    }

    v4 = [*(a1 + 32) objectForKeyedSubscript:@"dataType"];
    v5 = [v4 unsignedLongLongValue];

    v6 = [*(a1 + 32) objectForKeyedSubscript:@"serviceID"];
    v7 = [v6 unsignedLongLongValue];

    v8 = [*(a1 + 32) objectForKeyedSubscript:@"properties"];
    v9 = *(*(a1 + 40) + 136);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      if (gLogCategory_DRServer <= 90 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
      {
        __32__DRServer_serviceAddedHandler___block_invoke_cold_3();
      }

      goto LABEL_20;
    }

    v12 = objc_alloc_init(DRHIDUserDevice);
    [(DRHIDUserDevice *)v12 setDataType:v5];
    [(DRHIDUserDevice *)v12 setServiceID:v7];
    [(DRHIDUserDevice *)v12 setProperties:v8];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __32__DRServer_serviceAddedHandler___block_invoke_2;
    v16[3] = &unk_278F4E998;
    objc_copyWeak(&v17, (a1 + 48));
    [(DRHIDUserDevice *)v12 setSetReportHandler:v16];
    [(DRHIDUserDevice *)v12 activate];
    if (v5 == 1)
    {
      v13 = +[DataRelayAnalytics getInstance];
      [v13 setDM6ServiceSetupTime];
    }

    else
    {
      if (v5 != 2)
      {
LABEL_19:
        v14 = *(*(a1 + 40) + 136);
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
        [v14 setObject:v12 forKeyedSubscript:v15];

        objc_destroyWeak(&v17);
LABEL_20:

        return;
      }

      v13 = +[DataRelayAnalytics getInstance];
      [v13 setHRMServiceSetupTime];
    }

    goto LABEL_19;
  }

  if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
  {
    __32__DRServer_serviceAddedHandler___block_invoke_cold_1();
  }
}

void __32__DRServer_serviceAddedHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v11 setObject:v7 forKeyedSubscript:@"dataType"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v11 setObject:v8 forKeyedSubscript:@"serviceID"];

  if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
  {
    __32__DRServer_serviceAddedHandler___block_invoke_2_cold_1(a2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained rapportClient];
  [v10 sendEventID:@"com.apple.datarelay.request" event:v11 options:0 completion:0];
}

- (void)serviceRemovedHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__DRServer_serviceRemovedHandler___block_invoke;
  v7[3] = &unk_278F4E9C0;
  objc_copyWeak(&v10, &location);
  v8 = handlerCopy;
  selfCopy = self;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __34__DRServer_serviceRemovedHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained isActivated];

  if (v3)
  {
    if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
    {
      __34__DRServer_serviceRemovedHandler___block_invoke_cold_2(a1);
    }

    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 136);

    [v5 removeObjectForKey:v4];
  }

  else if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
  {
    __34__DRServer_serviceRemovedHandler___block_invoke_cold_1();
  }
}

- (void)eventsHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__DRServer_eventsHandler___block_invoke;
  v7[3] = &unk_278F4E9C0;
  objc_copyWeak(&v10, &location);
  v8 = handlerCopy;
  selfCopy = self;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __26__DRServer_eventsHandler___block_invoke(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained isActivated];

  if (v3)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = a1 + 4;
    obj = a1[4];
    v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = *(a1[5] + 17);
          v12 = [v10 objectForKeyedSubscript:{@"serviceID", v18}];
          v13 = [v11 objectForKeyedSubscript:v12];

          v14 = [v10 objectForKeyedSubscript:@"data"];
          [v13 handleReport:v14];

          if ([v13 dataType] == 2)
          {
            ++v7;
          }

          else if ([v13 dataType] == 1)
          {
            ++v6;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (([a1[5] hrmStarted] & 1) == 0 && v7)
    {
      [a1[5] setHrmStarted:1];
      v15 = +[DataRelayAnalytics getInstance];
      [v15 markHRMFirstPacket];
    }

    if (([a1[5] dm6Started] & 1) == 0 && v6)
    {
      [a1[5] setDm6Started:1];
      v16 = +[DataRelayAnalytics getInstance];
      [v16 markDM6FirstPacket];
    }

    if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
    {
      __26__DRServer_eventsHandler___block_invoke_cold_2(v19);
    }
  }

  else if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
  {
    __26__DRServer_eventsHandler___block_invoke_cold_1();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addRequestedDataTypes:(unint64_t)types completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DRServer_addRequestedDataTypes_completion___block_invoke;
  block[3] = &unk_278F4E848;
  v10 = completionCopy;
  typesCopy = types;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

id __45__DRServer_addRequestedDataTypes_completion___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
  {
    __45__DRServer_addRequestedDataTypes_completion___block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 48);
  if ((v2 & ~[*(a1 + 32) availableDataTypes]) != 0)
  {
    v3 = *MEMORY[0x277D44250];
    NSErrorV();
    objc_claimAutoreleasedReturnValue();
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))();
    }

    v5 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    if ([*(a1 + 32) requestedDataTypes])
    {
      v26 = @"dataTypes";
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
      v27[0] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];

      v8 = [*(a1 + 32) rapportClient];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __45__DRServer_addRequestedDataTypes_completion___block_invoke_4;
      v20[3] = &unk_278F4E870;
      v9 = *(a1 + 40);
      v20[4] = *(a1 + 32);
      v21 = v9;
      [v8 sendRequestID:@"com.apple.datarelay.addrequesteddatatypes" request:v7 options:0 responseHandler:v20];

      v10 = *(*(a1 + 32) + 152);
      v11 = dispatch_time(0, 12000000000);
      dispatch_semaphore_wait(v10, v11);
    }

    else
    {
      objc_initWeak(&location, *(a1 + 32));
      v12 = *(a1 + 32);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __45__DRServer_addRequestedDataTypes_completion___block_invoke_2;
      v22[3] = &unk_278F4E9E8;
      v23 = *(a1 + 40);
      objc_copyWeak(v24, &location);
      v13 = *(a1 + 32);
      v24[1] = *(a1 + 48);
      v22[4] = v13;
      [v12 _activate:v22];
      v14 = *(*(a1 + 32) + 152);
      v15 = dispatch_time(0, 12000000000);
      dispatch_semaphore_wait(v14, v15);
      objc_destroyWeak(v24);

      objc_destroyWeak(&location);
    }

    v16 = *(a1 + 48);
    v19.receiver = *(a1 + 32);
    v19.super_class = DRServer;
    result = objc_msgSendSuper2(&v19, sel_addRequestedDataTypes_, v16);
    v17 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void __45__DRServer_addRequestedDataTypes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[DataRelayAnalytics getInstance];
  v5 = v4;
  if (v3)
  {
    [v4 updateSetupReturnStatus:v3];

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }
  }

  else
  {
    [v4 setDRSessionStarted];
    memset(v22, 0, sizeof(v22));
    GetDeviceModelString();
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v22];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = [WeakRetained rapportClient];
    v10 = [v9 destinationDevice];
    v11 = [v10 model];
    [v5 updateDRDeviceTypes:0 drClientDeviceType:v7 drServerDeviceType:v11];

    v20 = @"dataTypes";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
    v21 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

    v14 = objc_loadWeakRetained((a1 + 48));
    v15 = [v14 rapportClient];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__DRServer_addRequestedDataTypes_completion___block_invoke_3;
    v18[3] = &unk_278F4E870;
    v16 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v16;
    [v15 sendRequestID:@"com.apple.datarelay.addrequesteddatatypes" request:v13 options:0 responseHandler:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

intptr_t __45__DRServer_addRequestedDataTypes_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a4);
  }

  v6 = *(*(a1 + 32) + 152);

  return dispatch_semaphore_signal(v6);
}

intptr_t __45__DRServer_addRequestedDataTypes_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a4);
  }

  v6 = *(*(a1 + 32) + 152);

  return dispatch_semaphore_signal(v6);
}

- (void)_removeRequestedDataTypes:(unint64_t)types completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
  {
    [DRServer _removeRequestedDataTypes:types completion:?];
  }

  if (types && (types & ~[(DRPeer *)self requestedDataTypes]) == 0)
  {
    v20.receiver = self;
    v20.super_class = DRServer;
    [(DRPeer *)&v20 removeRequestedDataTypes:types];
    v21 = @"dataTypes";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:types];
    v22[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    objc_initWeak(&location, self);
    rapportClient = [(DRPeer *)self rapportClient];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__DRServer__removeRequestedDataTypes_completion___block_invoke;
    v16[3] = &unk_278F4EA10;
    v17 = completionCopy;
    objc_copyWeak(&v18, &location);
    v16[4] = self;
    [rapportClient sendRequestID:@"com.apple.datarelay.removerequesteddatatypes" request:v11 options:0 responseHandler:v16];

    rapportSemaphore = self->_rapportSemaphore;
    v14 = dispatch_time(0, 12000000000);
    dispatch_semaphore_wait(rapportSemaphore, v14);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }

  else
  {
    v7 = *MEMORY[0x277D44250];
    v8 = NSErrorV();
    v9 = v8;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v8);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __49__DRServer__removeRequestedDataTypes_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = [WeakRetained requestedDataTypes];

  if (!v11)
  {
    v12 = +[DataRelayAnalytics getInstance];
    [v12 setDRSessionEnded];

    v13 = objc_loadWeakRetained((a1 + 48));
    [v13 reset];
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 152));
}

- (void)removeRequestedDataTypes:(unint64_t)types completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DRServer_removeRequestedDataTypes_completion___block_invoke;
  block[3] = &unk_278F4E848;
  v10 = completionCopy;
  typesCopy = types;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)addAvailableDataTypes:(unint64_t)types fromServer:(BOOL)server completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__DRServer_addAvailableDataTypes_fromServer_completion___block_invoke;
  v11[3] = &unk_278F4EA38;
  v12 = completionCopy;
  typesCopy = types;
  serverCopy = server;
  v11[4] = self;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, v11);
}

uint64_t __56__DRServer_addAvailableDataTypes_fromServer_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
  {
    __56__DRServer_addAvailableDataTypes_fromServer_completion___block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    [v2 setAvailableDataTypesFromServer:{*(a1 + 48) | objc_msgSend(v2, "availableDataTypesFromServer")}];
  }

  else
  {
    [v2 setAvailableDataTypesFromLocalDiscovery:{*(a1 + 48) | objc_msgSend(v2, "availableDataTypesFromLocalDiscovery")}];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)removeAvailableDataTypes:(unint64_t)types fromServer:(BOOL)server completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__DRServer_removeAvailableDataTypes_fromServer_completion___block_invoke;
  v11[3] = &unk_278F4EA38;
  v12 = completionCopy;
  typesCopy = types;
  serverCopy = server;
  v11[4] = self;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, v11);
}

void __59__DRServer_removeAvailableDataTypes_fromServer_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
  {
    __59__DRServer_removeAvailableDataTypes_fromServer_completion___block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);
  v3 = ~*(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    [v2 setAvailableDataTypesFromServer:{objc_msgSend(v2, "availableDataTypesFromServer") & v3}];
  }

  else
  {
    [v2 setAvailableDataTypesFromLocalDiscovery:{objc_msgSend(v2, "availableDataTypesFromLocalDiscovery") & v3}];
  }

  v4 = *(a1 + 48);
  v5 = v4 & ~[*(a1 + 32) availableDataTypes];
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__DRServer_removeAvailableDataTypes_fromServer_completion___block_invoke_2;
    v9[3] = &unk_278F4EA60;
    v6 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v6 _removeRequestedDataTypes:v5 completion:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

uint64_t __59__DRServer_removeAvailableDataTypes_fromServer_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)reset
{
  v15.receiver = self;
  v15.super_class = DRServer;
  [(DRPeer *)&v15 reset];
  if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
  {
    [DRServer reset];
  }

  objc_initWeak(&location, self);
  rapportClient = [(DRPeer *)self rapportClient];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __17__DRServer_reset__block_invoke;
  v12[3] = &unk_278F4E908;
  objc_copyWeak(&v13, &location);
  [rapportClient registerEventID:@"com.apple.datarelay.serviceadded" options:0 handler:v12];

  rapportClient2 = [(DRPeer *)self rapportClient];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __17__DRServer_reset__block_invoke_2;
  v10[3] = &unk_278F4E908;
  objc_copyWeak(&v11, &location);
  [rapportClient2 registerEventID:@"com.apple.datarelay.serviceremoved" options:0 handler:v10];

  rapportClient3 = [(DRPeer *)self rapportClient];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __17__DRServer_reset__block_invoke_3;
  v8[3] = &unk_278F4E908;
  objc_copyWeak(&v9, &location);
  [rapportClient3 registerEventID:@"com.apple.datarelay.events" options:0 handler:v8];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  hidDevices = self->_hidDevices;
  self->_hidDevices = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __17__DRServer_reset__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained serviceAddedHandler:v3];
}

void __17__DRServer_reset__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 objectForKeyedSubscript:@"serviceID"];

  [WeakRetained serviceRemovedHandler:v4];
}

void __17__DRServer_reset__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"events"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained eventsHandler:v4];
}

- (void)setWxAddress:(id)address
{
  addressCopy = address;
  if (gLogCategory_DRServer <= 50 && (gLogCategory_DRServer != -1 || _LogCategory_Initialize()))
  {
    [DRServer setWxAddress:];
  }

  wxAddress = self->_wxAddress;
  self->_wxAddress = addressCopy;
}

- (void)dealloc
{
  rapportSemaphore = self->_rapportSemaphore;
  if (rapportSemaphore)
  {
    dispatch_semaphore_signal(rapportSemaphore);
    v4 = self->_rapportSemaphore;
    self->_rapportSemaphore = 0;
  }

  v5.receiver = self;
  v5.super_class = DRServer;
  [(DRPeer *)&v5 dealloc];
}

void __32__DRServer_serviceAddedHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 32) objectForKeyedSubscript:@"serviceID"];
  LogPrintF();
}

void __32__DRServer_serviceAddedHandler___block_invoke_2_cold_1(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"WxDM6"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"WxHRM"];
    }

    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"None";
  }

  LogPrintF();
}

void __45__DRServer_addRequestedDataTypes_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"WxDM6"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"WxHRM"];
    }

    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"None";
  }

  LogPrintF();
}

- (void)_removeRequestedDataTypes:(uint64_t)a1 completion:.cold.1(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"WxDM6"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"WxHRM"];
    }

    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"None";
  }

  LogPrintF();
}

void __56__DRServer_addAvailableDataTypes_fromServer_completion___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = v3;
    if (v2)
    {
      [v3 addObject:@"WxDM6"];
    }

    if ((v2 & 2) != 0)
    {
      [v4 addObject:@"WxHRM"];
    }

    v6 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"None";
  }

  v5 = *(a1 + 56);
  LogPrintF();
}

void __59__DRServer_removeAvailableDataTypes_fromServer_completion___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = v3;
    if (v2)
    {
      [v3 addObject:@"WxDM6"];
    }

    if ((v2 & 2) != 0)
    {
      [v4 addObject:@"WxHRM"];
    }

    v6 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"None";
  }

  v5 = *(a1 + 56);
  LogPrintF();
}

@end