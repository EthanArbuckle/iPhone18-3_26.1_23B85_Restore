@interface IAPClientPortManager
+ (id)sharedInstance;
- (BOOL)iaptransportdIsRunning;
- (IAPClientPortManager)init;
- (int)forwardAccessoryDataToIAP:(id)p data:(const char *)data length:(unsigned __int16)length;
- (int)registerSendDataHandler:(id)handler queue:(id)queue sendBlock:(id)block;
- (int)unregisterSendDataHandler:(id)handler;
- (void)dealloc;
- (void)reRegisterHandlers;
- (void)sendData:(id)data data:(char *)a4 length:(unsigned __int16)length;
- (void)setIaptransportdIsRunning:(BOOL)running;
@end

@implementation IAPClientPortManager

- (IAPClientPortManager)init
{
  v6.receiver = self;
  v6.super_class = IAPClientPortManager;
  v2 = [(IAPClientPortManager *)&v6 init];
  if (v2)
  {
    v2->_portList = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_iaptransportdIsRunning = iaptransportdHasLaunched();
    v2->_portListQueue = dispatch_queue_create("IAPClientPortManagerQueue", 0);
    v2->_iaptransportdXPCConnection = 0;
    v2->_iaptransportdXPCConnection = RetainConnectionToIAPTransportDaemon();
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, __iaptransportdDied, @"kIAPTransportServerDiedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __iaptransportdLaunched, @"kIAPTransportServerLaunchedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, 0, @"kIAPTransportServerDiedNotification", 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"kIAPTransportServerLaunchedNotification", 0);
  iaptransportdXPCConnection = self->_iaptransportdXPCConnection;
  if (iaptransportdXPCConnection)
  {
    xpc_release(iaptransportdXPCConnection);
    self->_iaptransportdXPCConnection = 0;
  }

  dispatch_sync(self->_portListQueue, &__block_literal_global_32);
  dispatch_release(self->_portListQueue);
  [(NSMutableDictionary *)self->_portList removeAllObjects];

  v6.receiver = self;
  v6.super_class = IAPClientPortManager;
  [(IAPClientPortManager *)&v6 dealloc];
}

- (BOOL)iaptransportdIsRunning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  portListQueue = self->_portListQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__IAPClientPortManager_iaptransportdIsRunning__block_invoke;
  v5[3] = &unk_279781028;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(portListQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIaptransportdIsRunning:(BOOL)running
{
  portListQueue = self->_portListQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__IAPClientPortManager_setIaptransportdIsRunning___block_invoke;
  v4[3] = &unk_279781050;
  v4[4] = self;
  runningCopy = running;
  dispatch_sync(portListQueue, v4);
}

uint64_t __50__IAPClientPortManager_setIaptransportdIsRunning___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_Iaptransportdi.isa, *(*(a1 + 32) + 24), *(a1 + 40));
  *(*(a1 + 32) + 24) = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (*(v2 + 24) == 1)
  {
    if (v3)
    {
      xpc_release(v3);
      *(*(a1 + 32) + 32) = 0;
    }

    result = RetainConnectionToIAPTransportDaemon();
  }

  else
  {
    xpc_release(v3);
    result = 0;
  }

  *(*(a1 + 32) + 32) = result;
  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[IAPClientPortManager sharedInstance];
  }

  return sharedInstance_sharedInstance;
}

IAPClientPortManager *__38__IAPClientPortManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(IAPClientPortManager);
  sharedInstance_sharedInstance = result;
  return result;
}

- (void)sendData:(id)data data:(char *)a4 length:(unsigned __int16)length
{
  portListQueue = self->_portListQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__IAPClientPortManager_sendData_data_length___block_invoke;
  v6[3] = &unk_2797810A0;
  v6[4] = self;
  v6[5] = data;
  v6[6] = a4;
  lengthCopy = length;
  dispatch_sync(portListQueue, v6);
}

void __45__IAPClientPortManager_sendData_data_length___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:*(a1 + 48) length:*(a1 + 56)];
    v5 = v4;
    v6 = [v3 clientPortEventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__IAPClientPortManager_sendData_data_length___block_invoke_2;
    block[3] = &unk_279781078;
    v7 = *(a1 + 40);
    block[4] = v3;
    block[5] = v7;
    block[6] = v4;
    dispatch_async(v6, block);
  }
}

void __45__IAPClientPortManager_sendData_data_length___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) sendDataHandlerQueue])
  {
    v2 = [*(a1 + 32) sendDataHandlerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__IAPClientPortManager_sendData_data_length___block_invoke_3;
    block[3] = &unk_279781078;
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    dispatch_async(v2, block);
  }
}

uint64_t __45__IAPClientPortManager_sendData_data_length___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) sendDataHandler];
  if (result)
  {
    v3 = [*(a1 + 32) sendDataHandler];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) bytes];
    v6 = [*(a1 + 48) length];
    v7 = *(v3 + 16);

    return v7(v3, v4, v5, v6);
  }

  return result;
}

- (int)registerSendDataHandler:(id)handler queue:(id)queue sendBlock:(id)block
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (handler && queue && block)
  {
    portListQueue = self->_portListQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__IAPClientPortManager_registerSendDataHandler_queue_sendBlock___block_invoke;
    block[3] = &unk_2797810C8;
    block[4] = self;
    block[5] = handler;
    block[6] = queue;
    block[7] = block;
    block[8] = &v9;
    dispatch_sync(portListQueue, block);
  }

  else if (!handler || queue || block)
  {
    v12 = -536870206;
  }

  else
  {
    [(IAPClientPortManager *)self unregisterSendDataHandler:?];
  }

  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __64__IAPClientPortManager_registerSendDataHandler_queue_sendBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) != 1)
  {
    v5 = *(*(a1 + 64) + 8);
    v6 = -536870185;
LABEL_8:
    *(v5 + 24) = v6;
    return;
  }

  if (!*(v2 + 32))
  {
    v5 = *(*(a1 + 64) + 8);
    v6 = -536870209;
    goto LABEL_8;
  }

  v3 = [[IAPClientPort alloc] initWithUUID:*(a1 + 40) queue:*(a1 + 48) sendHandler:*(a1 + 56)];
  [*(*(a1 + 32) + 8) setObject:v3 forKey:*(a1 + 40)];

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "requestType", "IAPClientPortRegisterStr");
  xpc_dictionary_set_string(v4, "IAPClientPortUUIDStr", [*(a1 + 40) UTF8String]);
  xpc_connection_send_message(*(*(a1 + 32) + 32), v4);

  xpc_release(v4);
}

- (int)unregisterSendDataHandler:(id)handler
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  portListQueue = self->_portListQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__IAPClientPortManager_unregisterSendDataHandler___block_invoke;
  block[3] = &unk_2797810F0;
  block[4] = self;
  block[5] = handler;
  block[6] = &v7;
  dispatch_sync(portListQueue, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __50__IAPClientPortManager_unregisterSendDataHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) != 1)
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = -536870185;
LABEL_8:
    *(v4 + 24) = v5;
    return;
  }

  if (!*(v2 + 32))
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = -536870209;
    goto LABEL_8;
  }

  [*(v2 + 8) removeObjectForKey:*(a1 + 40)];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "requestType", "IAPClientPortUnregisterStr");
  xpc_dictionary_set_string(v3, "IAPClientPortUUIDStr", [*(a1 + 40) UTF8String]);
  xpc_connection_send_message(*(*(a1 + 32) + 32), v3);

  xpc_release(v3);
}

- (int)forwardAccessoryDataToIAP:(id)p data:(const char *)data length:(unsigned __int16)length
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  portListQueue = self->_portListQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__IAPClientPortManager_forwardAccessoryDataToIAP_data_length___block_invoke;
  block[3] = &unk_279781118;
  block[4] = self;
  block[5] = p;
  lengthCopy = length;
  block[6] = &v10;
  block[7] = data;
  dispatch_sync(portListQueue, block);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __62__IAPClientPortManager_forwardAccessoryDataToIAP_data_length___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1)
  {
    v3 = [*(v2 + 8) objectForKey:*(a1 + 40)];
    if (v3)
    {
      if (*(*(a1 + 32) + 32))
      {
        v4 = v3;
        v5 = [MEMORY[0x277CBEA90] dataWithBytes:*(a1 + 56) length:*(a1 + 64)];
        v6 = v5;
        v7 = *(a1 + 40);
        v8 = [v4 clientPortEventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__IAPClientPortManager_forwardAccessoryDataToIAP_data_length___block_invoke_2;
        block[3] = &unk_279781078;
        v9 = *(a1 + 32);
        block[4] = *(a1 + 40);
        block[5] = v5;
        block[6] = v9;
        dispatch_async(v8, block);
        return;
      }

      v10 = *(*(a1 + 48) + 8);
      v11 = -536870209;
    }

    else
    {
      v10 = *(*(a1 + 48) + 8);
      v11 = -536870206;
    }
  }

  else
  {
    v10 = *(*(a1 + 48) + 8);
    v11 = -536870185;
  }

  *(v10 + 24) = v11;
}

void __62__IAPClientPortManager_forwardAccessoryDataToIAP_data_length___block_invoke_2(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "requestType", "dataArrived");
  xpc_dictionary_set_string(v2, "IAPClientPortUUIDStr", [*(a1 + 32) UTF8String]);
  xpc_dictionary_set_data(v2, "data", [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length"));
  xpc_connection_send_message(*(*(a1 + 48) + 32), v2);
  xpc_release(v2);

  v3 = *(a1 + 32);
}

- (void)reRegisterHandlers
{
  portListQueue = self->_portListQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__IAPClientPortManager_reRegisterHandlers__block_invoke;
  block[3] = &unk_279780D88;
  block[4] = self;
  dispatch_sync(portListQueue, block);
}

uint64_t __42__IAPClientPortManager_reRegisterHandlers__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(*(a1 + 32) + 8) allValues];
  result = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [v7 clientPortEventQueue];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __42__IAPClientPortManager_reRegisterHandlers__block_invoke_2;
        v10[3] = &unk_279780DB0;
        v10[4] = *(a1 + 32);
        v10[5] = v7;
        dispatch_async(v8, v10);
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v4 = result;
    }

    while (result);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __42__IAPClientPortManager_reRegisterHandlers__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    xpc_release(v2);
    *(*(a1 + 32) + 32) = 0;
  }

  *(*(a1 + 32) + 32) = RetainConnectionToIAPTransportDaemon();
  if (*(*(a1 + 32) + 32))
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v3, "requestType", "IAPClientPortRegisterStr");
    xpc_dictionary_set_string(v3, "IAPClientPortUUIDStr", [objc_msgSend(*(a1 + 40) "uuid")]);
    xpc_connection_send_message(*(*(a1 + 32) + 32), v3);

    xpc_release(v3);
  }
}

@end