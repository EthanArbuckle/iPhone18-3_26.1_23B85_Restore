@interface IAPClientPort
- (IAPClientPort)initWithUUID:(id)a3 queue:(id)a4 sendHandler:(id)a5;
- (void)dealloc;
@end

@implementation IAPClientPort

- (IAPClientPort)initWithUUID:(id)a3 queue:(id)a4 sendHandler:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = IAPClientPort;
  v8 = [(IAPClientPort *)&v14 init];
  v9 = v8;
  if (v8)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29 = v10;
    v30 = v10;
    v27 = v10;
    v28 = v10;
    v25 = v10;
    v26 = v10;
    v23 = v10;
    v24 = v10;
    v21 = v10;
    v22 = v10;
    v19 = v10;
    v20 = v10;
    v17 = v10;
    v18 = v10;
    *__str = v10;
    v16 = v10;
    v8->_uuid = a3;
    v11 = a3;
    v9->_sendDataHandlerQueue = a4;
    dispatch_retain(a4);
    v9->_sendDataHandler = _Block_copy(a5);
    snprintf(__str, 0x100uLL, "com.apple.IAPClientPort.%s.event_queue", [a3 UTF8String]);
    v9->_clientPortEventQueue = dispatch_queue_create(__str, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  dispatch_sync(self->_clientPortEventQueue, &__block_literal_global_3);
  dispatch_release(self->_clientPortEventQueue);
  dispatch_release(self->_sendDataHandlerQueue);
  _Block_release(self->_sendDataHandler);

  v3.receiver = self;
  v3.super_class = IAPClientPort;
  [(IAPClientPort *)&v3 dealloc];
}

@end