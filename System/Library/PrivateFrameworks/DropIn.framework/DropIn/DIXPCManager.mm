@interface DIXPCManager
- (DIClientContext)clientContext;
- (DIXPCManager)initWithClientContext:(id)context dispatcher:(id)dispatcher clientQueue:(id)queue;
- (DIXPCManagerDelegate)delegate;
- (NSXPCConnection)connection;
- (OS_dispatch_queue)clientQueue;
- (void)addCheckInObserver:(id)observer;
- (void)setClientQueue:(id)queue;
- (void)setDelegate:(id)delegate;
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

- (void)setClientQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  sub_249DC0688(queue);
}

- (DIXPCManagerDelegate)delegate
{
  v2 = sub_249DC0738();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_249DC07E8();
}

- (DIXPCManager)initWithClientContext:(id)context dispatcher:(id)dispatcher clientQueue:(id)queue
{
  contextCopy = context;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  return XPCManager.init(clientContext:dispatcher:clientQueue:)(contextCopy, dispatcherCopy, queue);
}

- (void)addCheckInObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_249DC0EFC(observer);
  swift_unknownObjectRelease();
}

- (NSXPCConnection)connection
{
  selfCopy = self;
  v3 = sub_249DC11D8();

  return v3;
}

@end