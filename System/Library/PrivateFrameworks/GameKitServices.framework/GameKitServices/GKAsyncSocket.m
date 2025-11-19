@interface GKAsyncSocket
+ (id)allocWithZone:(_NSZone *)a3;
- (OS_dispatch_queue)targetQueue;
- (id)connectedHandler;
- (id)receiveDataHandler;
- (id)socketName;
- (id)syncQueue;
- (void)invalidate;
- (void)sendData:(id)a3 withCompletionHandler:(id)a4;
- (void)setConnectedHandler:(id)a3;
- (void)setReceiveDataHandler:(id)a3;
- (void)setSocketName:(id)a3;
- (void)setSyncQueue:(id)a3;
- (void)setTargetQueue:(id)a3;
- (void)tcpAttachSocketDescriptor:(int)a3;
@end

@implementation GKAsyncSocket

+ (id)allocWithZone:(_NSZone *)a3
{
  v4 = a1;
  if (objc_opt_self() == a1)
  {
    v4 = objc_opt_self();
  }

  return NSAllocateObject(v4, 0, a3);
}

- (void)tcpAttachSocketDescriptor:(int)a3
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

- (void)sendData:(id)a3 withCompletionHandler:(id)a4
{
  v4.receiver = self;
  v4.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v4 doesNotRecognizeSelector:a2, a4];
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

- (void)setSyncQueue:(id)a3
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
}

- (void)setTargetQueue:(id)a3
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
}

- (void)setReceiveDataHandler:(id)a3
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
}

- (void)setConnectedHandler:(id)a3
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
}

- (void)setSocketName:(id)a3
{
  v3.receiver = self;
  v3.super_class = GKAsyncSocket;
  [(GKAsyncSocket *)&v3 doesNotRecognizeSelector:a2];
}

@end