@interface DIXPCManager
- (DIClientContext)clientContext;
- (DIXPCManager)initWithClientContext:(id)a3 dispatcher:(id)a4 clientQueue:(id)a5;
- (DIXPCManagerDelegate)delegate;
- (NSXPCConnection)connection;
- (OS_dispatch_queue)clientQueue;
- (void)addCheckInObserver:(id)a3;
- (void)setClientQueue:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation DIXPCManager

- (DIClientContext)clientContext
{
  v2 = XPCManager.clientContext.getter();

  return v2;
}

- (OS_dispatch_queue)clientQueue
{
  v2 = sub_249DC0620();

  return v2;
}

- (void)setClientQueue:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_249DC0688(a3);
}

- (DIXPCManagerDelegate)delegate
{
  v2 = sub_249DC0738();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_249DC07E8();
}

- (DIXPCManager)initWithClientContext:(id)a3 dispatcher:(id)a4 clientQueue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  return XPCManager.init(clientContext:dispatcher:clientQueue:)(v7, v8, a5);
}

- (void)addCheckInObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_249DC0EFC(a3);
  swift_unknownObjectRelease();
}

- (NSXPCConnection)connection
{
  v2 = self;
  v3 = sub_249DC11D8();

  return v3;
}

@end