@interface MXUIService_ServerDelegate
- (id)init:(id)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)showConnectButton:(id)button completionHandler:(id)handler;
- (void)showDisconnectedButton:(id)button completionHandler:(id)handler;
- (void)showUndoButton:(id)button completionHandler:(id)handler;
@end

@implementation MXUIService_ServerDelegate

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  if (listener_didReceiveConnection_withContext__onceToken != -1)
  {
    [MXUIService_ServerDelegate listener:didReceiveConnection:withContext:];
  }

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  self->_queue = dispatch_queue_create("com.apple.MXUIService", v7);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__MXUIService_ServerDelegate_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_279851050;
  v8[4] = self;
  [connection configureConnection:v8];
  [connection activate];
}

- (id)init:(id)init
{
  if (init)
  {
    v6.receiver = self;
    v6.super_class = MXUIService_ServerDelegate;
    v4 = [(MXUIService_ServerDelegate *)&v6 init];
    v4->_uiDelegate = init;
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)showConnectButton:(id)button completionHandler:(id)handler
{
  uiDelegate = self->_uiDelegate;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__MXUIService_ServerDelegate_showConnectButton_completionHandler___block_invoke;
  v5[3] = &unk_279851078;
  v5[4] = handler;
  [(MXUIServiceDelegateProtocol *)uiDelegate showConnectButton:button completionHandler:v5];
}

- (void)showUndoButton:(id)button completionHandler:(id)handler
{
  uiDelegate = self->_uiDelegate;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__MXUIService_ServerDelegate_showUndoButton_completionHandler___block_invoke;
  v5[3] = &unk_279851078;
  v5[4] = handler;
  [(MXUIServiceDelegateProtocol *)uiDelegate showUndoButton:button completionHandler:v5];
}

- (void)showDisconnectedButton:(id)button completionHandler:(id)handler
{
  uiDelegate = self->_uiDelegate;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__MXUIService_ServerDelegate_showDisconnectedButton_completionHandler___block_invoke;
  v5[3] = &unk_279851078;
  v5[4] = handler;
  [(MXUIServiceDelegateProtocol *)uiDelegate showDisconnectedButton:button completionHandler:v5];
}

@end