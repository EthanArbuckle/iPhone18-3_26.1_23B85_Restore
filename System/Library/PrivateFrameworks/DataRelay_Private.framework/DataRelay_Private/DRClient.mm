@interface DRClient
- (DRClient)initWithIdentifier:(id)identifier;
- (void)activate:(id)activate;
- (void)addAvailableDataTypes:(unint64_t)types completion:(id)completion;
- (void)addRequestedDataTypes:(unint64_t)types completion:(id)completion;
- (void)dataHandler:(unint64_t)handler serviceID:(unint64_t)d opcode:(unint64_t)opcode data:(id)data;
- (void)dealloc;
- (void)removeAvailableDataTypes:(unint64_t)types completion:(id)completion;
- (void)removeRequestedDataTypes:(unint64_t)types completion:(id)completion;
- (void)reset;
- (void)resetWxDM6;
- (void)resetWxHRM;
- (void)routedWxDeviceChanged:(id)changed;
- (void)sendEvents;
- (void)setReportHandler:(id)handler;
@end

@implementation DRClient

- (DRClient)initWithIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = DRClient;
  v3 = [(DRPeer *)&v10 initWithIdentifier:identifier];
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    rapportSemaphore = v3->_rapportSemaphore;
    v3->_rapportSemaphore = v4;

    v6 = dispatch_queue_create("com.apple.datarelay.DRClient", 0);
    [(DRPeer *)v3 setDispatchQueue:v6];

    [(DRClient *)v3 reset];
    data = [MEMORY[0x277CBEA90] data];
    wxRoute = v3->_wxRoute;
    v3->_wxRoute = data;
  }

  return v3;
}

- (void)activate:(id)activate
{
  activateCopy = activate;
  objc_initWeak(&location, self);
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __21__DRClient_activate___block_invoke;
  v7[3] = &unk_278F4E7D0;
  v7[4] = self;
  v8 = activateCopy;
  v6 = activateCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(dispatchQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __21__DRClient_activate___block_invoke(id *a1)
{
  if ([a1[4] isActivated])
  {
    v2 = *(a1[5] + 2);

    v2();
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __21__DRClient_activate___block_invoke_2;
    v8[3] = &unk_278F4E7A8;
    objc_copyWeak(&v10, a1 + 6);
    v3 = a1[5];
    v8[4] = a1[4];
    v9 = v3;
    v4 = MEMORY[0x24C1D48D0](v8);
    v7.receiver = a1[4];
    v7.super_class = DRClient;
    objc_msgSendSuper2(&v7, sel__activate_, v4);
    v5 = *(a1[4] + 19);
    v6 = dispatch_time(0, 12000000000);
    dispatch_semaphore_wait(v5, v6);

    objc_destroyWeak(&v10);
  }
}

void __21__DRClient_activate___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[DataRelayAnalytics getInstance];
  memset(v15, 0, sizeof(v15));
  GetDeviceModelString();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained rapportClient];
  v7 = [v6 destinationDevice];
  v8 = [v7 model];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
  [v4 updateDRDeviceTypes:1 drClientDeviceType:v8 drServerDeviceType:v9];

  [v4 updateFromRemoteServer:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __21__DRClient_activate___block_invoke_3;
  v13[3] = &unk_278F4E780;
  objc_copyWeak(&v14, (a1 + 48));
  v10 = objc_loadWeakRetained((a1 + 48));
  [v10 setDisconnectHandler:v13];

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 152));
  objc_destroyWeak(&v14);

  v12 = *MEMORY[0x277D85DE8];
}

void __21__DRClient_activate___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
  {
    __21__DRClient_activate___block_invoke_3_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained availableDataTypes];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 reset];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 addAvailableDataTypes:v3 completion:0];
}

- (void)addRequestedDataTypes:(unint64_t)types completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DRClient_addRequestedDataTypes_completion___block_invoke;
  block[3] = &unk_278F4E820;
  objc_copyWeak(v11, &location);
  block[4] = self;
  v10 = completionCopy;
  v11[1] = types;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __45__DRClient_addRequestedDataTypes_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__DRClient_addRequestedDataTypes_completion___block_invoke_2;
  v4[3] = &unk_278F4E7F8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  objc_copyWeak(v6, (a1 + 48));
  v6[1] = *(a1 + 56);
  [WeakRetained activate:v4];

  objc_destroyWeak(v6);
}

void __45__DRClient_addRequestedDataTypes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    v5 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:&unk_285B1C900];
    if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
    {
      __45__DRClient_addRequestedDataTypes_completion___block_invoke_2_cold_1();
    }

    [v5 setWxRoute:*(*(a1 + 32) + 120)];
    [v5 activate];
    if (!*(*(a1 + 32) + 144))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v7 = [WeakRetained dispatchQueue];
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
      v9 = *(a1 + 32);
      v10 = *(v9 + 144);
      *(v9 + 144) = v8;

      v11 = *(*(a1 + 32) + 144);
      v12 = dispatch_time(0, 500000000);
      dispatch_source_set_timer(v11, v12, 0x1DCD6500uLL, 0);
      v13 = *(*(a1 + 32) + 144);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __45__DRClient_addRequestedDataTypes_completion___block_invoke_2_10;
      handler[3] = &unk_278F4E780;
      objc_copyWeak(&v25, (a1 + 48));
      dispatch_source_set_event_handler(v13, handler);
      dispatch_activate(*(*(a1 + 32) + 144));
      objc_destroyWeak(&v25);
    }

    v14 = objc_loadWeakRetained((a1 + 48));
    v15 = [v14 requestedDataTypes];

    if (!v15)
    {
      v16 = +[DataRelayAnalytics getInstance];
      [v16 setDRSessionStarted];
    }

    if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
    {
      __45__DRClient_addRequestedDataTypes_completion___block_invoke_2_cold_2(a1);
    }

    v17 = *(a1 + 56);
    v23.receiver = *(a1 + 32);
    v23.super_class = DRClient;
    objc_msgSendSuper2(&v23, sel_addRequestedDataTypes_, v17);
    v18 = *(a1 + 56);
    if (v18)
    {
      v19 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:&unk_285B1C918];
      if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
      {
        __45__DRClient_addRequestedDataTypes_completion___block_invoke_2_cold_3();
      }

      [v19 setWxRoute:*(*(a1 + 32) + 120)];
      [v19 activate];

      v18 = *(a1 + 56);
    }

    if ((v18 & 2) != 0)
    {
      v20 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:&unk_285B1C930];
      if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
      {
        __45__DRClient_addRequestedDataTypes_completion___block_invoke_2_cold_4();
      }

      [v20 setWxRoute:*(*(a1 + 32) + 120)];
      [v20 activate];
      v21 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:&unk_285B1C900];
      if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
      {
        __45__DRClient_addRequestedDataTypes_completion___block_invoke_2_cold_5();
      }

      [v21 setWxRoute:*(*(a1 + 32) + 120)];
      [v21 activate];
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      (*(v22 + 16))(v22, 0);
    }
  }
}

void __45__DRClient_addRequestedDataTypes_completion___block_invoke_2_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendEvents];
}

- (void)removeRequestedDataTypes:(unint64_t)types completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DRClient_removeRequestedDataTypes_completion___block_invoke;
  block[3] = &unk_278F4E848;
  v10 = completionCopy;
  typesCopy = types;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __48__DRClient_removeRequestedDataTypes_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
  {
    __48__DRClient_removeRequestedDataTypes_completion___block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 48);
  v11.receiver = *(a1 + 32);
  v11.super_class = DRClient;
  objc_msgSendSuper2(&v11, sel_removeRequestedDataTypes_, v2);
  if (*(a1 + 48))
  {
    v3 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:&unk_285B1C918];

    if (v3)
    {
      v4 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:&unk_285B1C918];
      if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
      {
        __48__DRClient_removeRequestedDataTypes_completion___block_invoke_cold_2();
      }

      [v4 invalidate];
    }
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    v5 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:&unk_285B1C930];

    if (v5)
    {
      v6 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:&unk_285B1C930];
      if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
      {
        __48__DRClient_removeRequestedDataTypes_completion___block_invoke_cold_3();
      }

      [v6 invalidate];
      v7 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:&unk_285B1C900];
      if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
      {
        __48__DRClient_removeRequestedDataTypes_completion___block_invoke_cold_4();
      }

      [v7 invalidate];
    }
  }

  if (![*(a1 + 32) requestedDataTypes] && *(*(a1 + 32) + 144))
  {
    if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
    {
      __48__DRClient_removeRequestedDataTypes_completion___block_invoke_cold_5();
    }

    dispatch_source_cancel(*(*(a1 + 32) + 144));
    v8 = *(a1 + 32);
    v9 = *(v8 + 144);
    *(v8 + 144) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)addAvailableDataTypes:(unint64_t)types completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DRClient_addAvailableDataTypes_completion___block_invoke;
  block[3] = &unk_278F4E820;
  objc_copyWeak(v11, &location);
  v11[1] = types;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __45__DRClient_addAvailableDataTypes_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__DRClient_addAvailableDataTypes_completion___block_invoke_2;
  v4[3] = &unk_278F4E7F8;
  v3 = *(a1 + 40);
  v6[1] = *(a1 + 56);
  v4[4] = *(a1 + 32);
  v5 = v3;
  objc_copyWeak(v6, (a1 + 48));
  [WeakRetained activate:v4];

  objc_destroyWeak(v6);
}

void __45__DRClient_addAvailableDataTypes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
    {
      __45__DRClient_addAvailableDataTypes_completion___block_invoke_2_cold_1(a1);
    }

    v5 = *(a1 + 56);
    v16.receiver = *(a1 + 32);
    v16.super_class = DRClient;
    objc_msgSendSuper2(&v16, sel_addAvailableDataTypes_, v5);
    v17[0] = @"dataTypes";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
    v18[0] = v6;
    v17[1] = @"wxAddress";
    v18[1] = *(*(a1 + 32) + 120);
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = [WeakRetained rapportClient];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__DRClient_addAvailableDataTypes_completion___block_invoke_3;
    v14[3] = &unk_278F4E870;
    v10 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v10;
    [v9 sendRequestID:@"com.apple.datarelay.addavailabledatatypes" request:v7 options:0 responseHandler:v14];

    v11 = *(*(a1 + 32) + 152);
    v12 = dispatch_time(0, 12000000000);
    dispatch_semaphore_wait(v11, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

intptr_t __45__DRClient_addAvailableDataTypes_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a4);
  }

  v6 = *(*(a1 + 32) + 152);

  return dispatch_semaphore_signal(v6);
}

- (void)removeAvailableDataTypes:(unint64_t)types completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DRClient_removeAvailableDataTypes_completion___block_invoke;
  block[3] = &unk_278F4E848;
  v10 = completionCopy;
  typesCopy = types;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __48__DRClient_removeAvailableDataTypes_completion___block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  v13.receiver = *(a1 + 32);
  v13.super_class = DRClient;
  objc_msgSendSuper2(&v13, sel_removeAvailableDataTypes_, v2);
  if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
  {
    __48__DRClient_removeAvailableDataTypes_completion___block_invoke_cold_1(v3);
  }

  v14[0] = @"dataTypes";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  v15[0] = v4;
  v14[1] = @"wxAddress";
  v15[1] = *(*(a1 + 32) + 120);
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v6 = [*(a1 + 32) rapportClient];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__DRClient_removeAvailableDataTypes_completion___block_invoke_2;
  v11[3] = &unk_278F4E870;
  v7 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v7;
  [v6 sendRequestID:@"com.apple.datarelay.removeavailabledatatypes" request:v5 options:0 responseHandler:v11];

  v8 = *(*(a1 + 32) + 152);
  v9 = dispatch_time(0, 12000000000);
  dispatch_semaphore_wait(v8, v9);

  v10 = *MEMORY[0x277D85DE8];
}

intptr_t __48__DRClient_removeAvailableDataTypes_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a4);
  }

  v6 = *(*(a1 + 32) + 152);

  return dispatch_semaphore_signal(v6);
}

- (void)sendEvents
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_events count])
  {
    if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
    {
      [(DRClient *)&self->_events sendEvents];
    }

    v3 = [(NSMutableArray *)self->_events copy];
    v7 = @"events";
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    rapportClient = [(DRPeer *)self rapportClient];
    [rapportClient sendEventID:@"com.apple.datarelay.events" event:v4 options:0 completion:0];

    [(NSMutableArray *)self->_events removeAllObjects];
  }

  else if (gLogCategory_DRClient <= 90 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
  {
    [DRClient sendEvents];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setReportHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = [(DRPeer *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__DRClient_setReportHandler___block_invoke;
  v7[3] = &unk_278F4E898;
  v8 = handlerCopy;
  selfCopy = self;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __29__DRClient_setReportHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"dataType"];
  v3 = [v2 unsignedLongLongValue];

  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:*(a1 + 32)];
  [v7 removeObjectForKey:@"dataType"];
  v4 = *(*(a1 + 40) + 128);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v6 setReport:v7];

  if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
  {
    __29__DRClient_setReportHandler___block_invoke_cold_1(v3);
  }
}

- (void)dataHandler:(unint64_t)handler serviceID:(unint64_t)d opcode:(unint64_t)opcode data:(id)data
{
  dataCopy = data;
  if ([(DRPeer *)self isActivated])
  {
    dispatchQueue = [(DRPeer *)self dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__DRClient_dataHandler_serviceID_opcode_data___block_invoke;
    block[3] = &unk_278F4E8C0;
    dCopy = d;
    handlerCopy = handler;
    opcodeCopy = opcode;
    v13 = dataCopy;
    selfCopy = self;
    dispatch_async(dispatchQueue, block);
  }

  else if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
  {
    [DRClient dataHandler:opcode serviceID:? opcode:? data:?];
  }
}

void __46__DRClient_dataHandler_serviceID_opcode_data___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"serviceID"];

  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"dataType"];

  v4 = *(a1 + 64);
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v7 = [*(a1 + 40) rapportClient];
      v15 = v7;
      v8 = *(a1 + 32);
      v9 = @"com.apple.datarelay.serviceremoved";
LABEL_21:
      [v7 sendEventID:v9 event:v8 options:0 completion:0];

      return;
    }

    if (v4)
    {
      return;
    }

    v5 = *(a1 + 56);
    if (v5 == 1)
    {
      v6 = +[DataRelayAnalytics getInstance];
      [v6 setDM6ServiceSetupTime];
    }

    else
    {
      if (v5 != 2)
      {
LABEL_20:
        v7 = [*(a1 + 40) rapportClient];
        v15 = v7;
        v8 = *(a1 + 32);
        v9 = @"com.apple.datarelay.serviceadded";
        goto LABEL_21;
      }

      v6 = +[DataRelayAnalytics getInstance];
      [v6 setHRMServiceSetupTime];
    }

    goto LABEL_20;
  }

  v10 = *(a1 + 56);
  if (v10 == 1)
  {
    if (([*(a1 + 40) dm6Started] & 1) == 0)
    {
      v12 = +[DataRelayAnalytics getInstance];
      [v12 markDM6FirstPacket];

      [*(a1 + 40) setDm6Started:1];
    }
  }

  else if (v10 == 2 && ([*(a1 + 40) hrmStarted] & 1) == 0)
  {
    v11 = +[DataRelayAnalytics getInstance];
    [v11 markHRMFirstPacket];

    [*(a1 + 40) setHrmStarted:1];
  }

  v13 = *(a1 + 32);
  v14 = *(*(a1 + 40) + 136);

  [v14 addObject:v13];
}

- (void)reset
{
  if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
  {
    [DRClient reset];
  }

  v16.receiver = self;
  v16.super_class = DRClient;
  [(DRPeer *)&v16 reset];
  [(NSMutableDictionary *)self->_hidClients enumerateKeysAndObjectsUsingBlock:&__block_literal_global];
  eventSendTimer = self->_eventSendTimer;
  if (eventSendTimer)
  {
    dispatch_source_cancel(eventSendTimer);
    v4 = self->_eventSendTimer;
    self->_eventSendTimer = 0;
  }

  objc_initWeak(&location, self);
  rapportClient = [(DRPeer *)self rapportClient];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __17__DRClient_reset__block_invoke_2;
  v13 = &unk_278F4E908;
  objc_copyWeak(&v14, &location);
  [rapportClient registerEventID:@"com.apple.datarelay.request" options:0 handler:&v10];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  hidClients = self->_hidClients;
  self->_hidClients = v6;

  [(DRClient *)self resetWxDM6:v10];
  [(DRClient *)self resetWxHRM];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  events = self->_events;
  self->_events = v8;

  [(DRPeer *)self setAvailableDataTypes:0];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __17__DRClient_reset__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setReportHandler:v3];
}

- (void)resetWxDM6
{
  if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
  {
    [DRClient resetWxDM6];
  }

  v3 = objc_alloc_init(DRHIDClientDM6);
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __22__DRClient_resetWxDM6__block_invoke;
  v7 = &unk_278F4E930;
  objc_copyWeak(&v8, &location);
  [(DRHIDClient *)v3 setDataHandler:&v4];
  [(NSMutableDictionary *)self->_hidClients setObject:v3 forKeyedSubscript:&unk_285B1C918, v4, v5, v6, v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __22__DRClient_resetWxDM6__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dataHandler:a2 serviceID:a3 opcode:a4 data:v9];
}

- (void)resetWxHRM
{
  if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
  {
    [DRClient resetWxHRM];
  }

  v3 = objc_alloc_init(DRHIDClientHRM);
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __22__DRClient_resetWxHRM__block_invoke;
  v7[3] = &unk_278F4E930;
  objc_copyWeak(&v8, &location);
  [(DRHIDClient *)v3 setDataHandler:v7];
  [(NSMutableDictionary *)self->_hidClients setObject:v3 forKeyedSubscript:&unk_285B1C930];
  v4 = objc_alloc_init(DRHIDClientHRMAnalytics);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__DRClient_resetWxHRM__block_invoke_2;
  v5[3] = &unk_278F4E930;
  objc_copyWeak(&v6, &location);
  [(DRHIDClient *)v4 setDataHandler:v5];
  [(NSMutableDictionary *)self->_hidClients setObject:v4 forKeyedSubscript:&unk_285B1C900];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __22__DRClient_resetWxHRM__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dataHandler:a2 serviceID:a3 opcode:a4 data:v9];
}

void __22__DRClient_resetWxHRM__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dataHandler:a2 serviceID:a3 opcode:a4 data:v9];
}

- (void)routedWxDeviceChanged:(id)changed
{
  changedCopy = changed;
  if ([(DRPeer *)self isActivated])
  {
    dispatchQueue = [(DRPeer *)self dispatchQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__DRClient_routedWxDeviceChanged___block_invoke;
    v6[3] = &unk_278F4E898;
    v6[4] = self;
    v7 = changedCopy;
    dispatch_async(dispatchQueue, v6);
  }

  else if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
  {
    [DRClient routedWxDeviceChanged:];
  }
}

void __34__DRClient_routedWxDeviceChanged___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  if (([*(*(a1 + 32) + 120) isEqualToData:*(a1 + 40)] & 1) == 0)
  {
    if (gLogCategory_DRClient <= 50 && (gLogCategory_DRClient != -1 || _LogCategory_Initialize()))
    {
      __34__DRClient_routedWxDeviceChanged___block_invoke_cold_1(v2);
    }

    objc_storeStrong((*(a1 + 32) + 120), *(a1 + 40));
    v3 = *(*(a1 + 32) + 128);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __34__DRClient_routedWxDeviceChanged___block_invoke_2;
    v10 = &unk_278F4E958;
    v11 = *(a1 + 40);
    [v3 enumerateKeysAndObjectsUsingBlock:&v7];
    v12 = @"wxAddress";
    v13[0] = *(*(a1 + 32) + 120);
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:{1, v7, v8, v9, v10}];
    v5 = [*(a1 + 32) rapportClient];
    [v5 sendEventID:@"com.apple.datarelay.wxaddresschanged" event:v4 options:0 completion:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  eventSendTimer = self->_eventSendTimer;
  if (eventSendTimer)
  {
    dispatch_source_cancel(eventSendTimer);
    v4 = self->_eventSendTimer;
    self->_eventSendTimer = 0;
  }

  [(NSMutableDictionary *)self->_hidClients enumerateKeysAndObjectsUsingBlock:&__block_literal_global_90];
  rapportSemaphore = self->_rapportSemaphore;
  if (rapportSemaphore)
  {
    dispatch_semaphore_signal(rapportSemaphore);
    v6 = self->_rapportSemaphore;
    self->_rapportSemaphore = 0;
  }

  v7.receiver = self;
  v7.super_class = DRClient;
  [(DRPeer *)&v7 dealloc];
}

void __21__DRClient_activate___block_invoke_3_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained identifier];
  LogPrintF();
}

void __45__DRClient_addRequestedDataTypes_completion___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = *(a1 + 56);
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

void __48__DRClient_removeRequestedDataTypes_completion___block_invoke_cold_1(uint64_t a1)
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

void __45__DRClient_addAvailableDataTypes_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(a1 + 56);
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

void __48__DRClient_removeAvailableDataTypes_completion___block_invoke_cold_1(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
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

void __29__DRClient_setReportHandler___block_invoke_cold_1(uint64_t a1)
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

- (void)dataHandler:(unint64_t)a1 serviceID:opcode:data:.cold.1(unint64_t a1)
{
  if (a1 > 2)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%lu)", a1];
  }

  else
  {
    v1 = off_278F4E978[a1];
  }

  v2 = v1;
  LogPrintF();
}

@end