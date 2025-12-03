@interface GKAsyncSocket
+ (id)allocWithZone:(_NSZone *)zone;
- (OS_dispatch_queue)targetQueue;
- (id)connectedHandler;
- (id)receiveDataHandler;
- (id)socketName;
- (id)syncQueue;
- (void)invalidate;
- (void)sendData:(id)data withCompletionHandler:(id)handler;
- (void)setConnectedHandler:(id)handler;
- (void)setReceiveDataHandler:(id)handler;
- (void)setSocketName:(id)name;
- (void)setSyncQueue:(id)queue;
- (void)setTargetQueue:(id)queue;
- (void)tcpAttachSocketDescriptor:(int)descriptor;
@end

@implementation GKAsyncSocket

+ (id)allocWithZone:(_NSZone *)zone
{
  selfCopy = self;
  if (objc_opt_self() == self)
  {
    selfCopy = objc_opt_self();
  }

  return NSAllocateObject(selfCopy, 0, zone);
}

- (void)tcpAttachSocketDescriptor:(int)descriptor
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v2 doesNotRecognizeSelector:a2];
}

- (void)sendData:(id)data withCompletionHandler:(id)handler
{
  v4.receiver = self;
  v4.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v4 doesNotRecognizeSelector:a2, handler];
}

- (id)syncQueue
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (OS_dispatch_queue)targetQueue
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (id)receiveDataHandler
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (id)connectedHandler
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (id)socketName
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (void)setSyncQueue:(id)queue
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
}

- (void)setTargetQueue:(id)queue
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
}

- (void)setReceiveDataHandler:(id)handler
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
}

- (void)setConnectedHandler:(id)handler
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
}

- (void)setSocketName:(id)name
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
}

@end