@interface GCFGameServicesClient
+ (GCFGameServicesClient)daemonProxy;
- (GCFGameServicesClient)init;
- (GKDTDaemonProxyDataUpdateDelegate)dataUpdateDelegate;
- (void)disconnectServiceConnection;
- (void)gameServicesRemoteCall:(id)call completionHandler:(id)handler;
- (void)refreshServiceConnection;
- (void)setDebugMode:(BOOL)mode bundleID:(id)d reply:(id)reply;
@end

@implementation GCFGameServicesClient

+ (GCFGameServicesClient)daemonProxy
{
  if (qword_27EE84360 != -1)
  {
    sub_24802EE98();
  }

  [qword_27EE84358 refreshServiceConnection];
  v2 = qword_27EE84358;

  return v2;
}

- (GCFGameServicesClient)init
{
  v7.receiver = self;
  v7.super_class = GCFGameServicesClient;
  v2 = [(GCFGameServicesClient *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.gamecenter.GKDTDaemonProxy", v3);
    invocationQueue = v2->_invocationQueue;
    v2->_invocationQueue = v4;

    [(GCFGameServicesClient *)v2 refreshServiceConnection];
  }

  return v2;
}

- (void)refreshServiceConnection
{
  invocationQueue = self->_invocationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FBA190;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_barrier_sync(invocationQueue, block);
}

- (void)gameServicesRemoteCall:(id)call completionHandler:(id)handler
{
  callCopy = call;
  handlerCopy = handler;
  invocationQueue = self->_invocationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FBA428;
  block[3] = &unk_278EF2F98;
  block[4] = self;
  v12 = callCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = callCopy;
  dispatch_barrier_sync(invocationQueue, block);
}

- (void)setDebugMode:(BOOL)mode bundleID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  invocationQueue = self->_invocationQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247FBA6A0;
  v13[3] = &unk_278EF2FE8;
  modeCopy = mode;
  v13[4] = self;
  v14 = dCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = dCopy;
  dispatch_barrier_sync(invocationQueue, v13);
}

- (void)disconnectServiceConnection
{
  invocationQueue = self->_invocationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FBA8D0;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_barrier_sync(invocationQueue, block);
}

- (GKDTDaemonProxyDataUpdateDelegate)dataUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataUpdateDelegate);

  return WeakRetained;
}

@end