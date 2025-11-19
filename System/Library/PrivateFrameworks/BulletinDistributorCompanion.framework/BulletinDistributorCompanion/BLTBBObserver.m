@interface BLTBBObserver
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (id)surrogateGatewayWithQueue:(id)a3 calloutQueue:(id)a4 name:(id)a5 priority:(unint64_t)a6;
+ (id)surrogateWithQueue:(id)a3 calloutQueue:(id)a4;
- (BLTBBObserver)initWithQueue:(id)a3 calloutQueue:(id)a4 name:(id)a5 priority:(unint64_t)a6 isGateway:(BOOL)a7;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_reconnectObserver;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setObserverFeed:(unint64_t)a3;
@end

@implementation BLTBBObserver

- (BLTBBObserver)initWithQueue:(id)a3 calloutQueue:(id)a4 name:(id)a5 priority:(unint64_t)a6 isGateway:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v25.receiver = self;
  v25.super_class = BLTBBObserver;
  v16 = [(BLTBBObserver *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_queue, a3);
    objc_storeStrong(&v17->_calloutQueue, a4);
    v18 = [v15 copy];
    name = v17->_name;
    v17->_name = v18;

    v17->_priority = a6;
    v17->_isGateway = a7;
    v20 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    actualObserverLock = v17->_actualObserverLock;
    v17->_actualObserverLock = v20;

    v22 = objc_alloc_init(BLTBBObserverDelegate);
    delegateSurrogate = v17->_delegateSurrogate;
    v17->_delegateSurrogate = v22;

    [(BLTBBObserverDelegate *)v17->_delegateSurrogate setDelegate:v17];
    [(BLTBBObserver *)v17 _reconnectObserver];
  }

  return v17;
}

+ (id)surrogateWithQueue:(id)a3 calloutQueue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BLTBBObserver alloc] initWithQueue:v6 calloutQueue:v5 name:0 priority:0 isGateway:0];

  return v7;
}

+ (id)surrogateGatewayWithQueue:(id)a3 calloutQueue:(id)a4 name:(id)a5 priority:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[BLTBBObserver alloc] initWithQueue:v11 calloutQueue:v10 name:v9 priority:a6 isGateway:1];

  return v12;
}

- (void)setDelegate:(id)a3
{
  [(BLTBBObserverDelegate *)self->_delegateSurrogate setActualDelegate:a3];
  [(NSLock *)self->_actualObserverLock lock];
  [(BBObserver *)self->_actualObserver setDelegate:self->_delegateSurrogate];
  actualObserverLock = self->_actualObserverLock;

  [(NSLock *)actualObserverLock unlock];
}

- (void)_reconnectObserver
{
  [(NSLock *)self->_actualObserverLock lock];
  v3 = [(BBObserver *)self->_actualObserver observerOptions];
  [(BBObserver *)self->_actualObserver invalidate];
  if (self->_isGateway)
  {
    v4 = [MEMORY[0x277CF3550] gatewayWithQueue:self->_queue calloutQueue:self->_calloutQueue name:self->_name priority:self->_priority];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CF3550]) initWithQueue:self->_queue calloutQueue:self->_calloutQueue];
  }

  actualObserver = self->_actualObserver;
  self->_actualObserver = v4;

  v6 = [(BLTBBObserverDelegate *)self->_delegateSurrogate actualDelegate];

  if (v6)
  {
    [(BBObserver *)self->_actualObserver setDelegate:self->_delegateSurrogate];
  }

  if (self->_hasFeed)
  {
    [(BBObserver *)self->_actualObserver setObserverFeed:self->_observerFeed];
  }

  [(BBObserver *)self->_actualObserver setObserverOptions:v3];
  actualObserverLock = self->_actualObserverLock;

  [(NSLock *)actualObserverLock unlock];
}

- (void)setObserverFeed:(unint64_t)a3
{
  [(NSLock *)self->_actualObserverLock lock];
  self->_observerFeed = a3;
  self->_hasFeed = 1;
  [(BBObserver *)self->_actualObserver setObserverFeed:a3];
  actualObserverLock = self->_actualObserverLock;

  [(NSLock *)actualObserverLock unlock];
}

- (void)dealloc
{
  [(BBObserver *)self->_actualObserver invalidate];
  actualObserver = self->_actualObserver;
  self->_actualObserver = 0;

  v4.receiver = self;
  v4.super_class = BLTBBObserver;
  [(BLTBBObserver *)&v4 dealloc];
}

- (void)forwardInvocation:(id)a3
{
  actualObserverLock = self->_actualObserverLock;
  v5 = a3;
  [(NSLock *)actualObserverLock lock];
  v6 = self->_actualObserverLock;
  v7 = self->_actualObserver;
  [(NSLock *)v6 unlock];
  [v5 selector];
  if (objc_opt_respondsToSelector())
  {
    [v5 invokeWithTarget:v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BLTBBObserver;
    [(BLTBBObserver *)&v8 forwardInvocation:v5];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v9.receiver = self;
  v9.super_class = BLTBBObserver;
  if ([(BLTBBObserver *)&v9 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    [(NSLock *)self->_actualObserverLock lock];
    actualObserver = self->_actualObserver;
    actualObserverLock = self->_actualObserverLock;
    v7 = actualObserver;
    [(NSLock *)actualObserverLock unlock];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (BOOL)isKindOfClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    [(NSLock *)self->_actualObserverLock lock];
    actualObserver = self->_actualObserver;
    actualObserverLock = self->_actualObserverLock;
    v6 = actualObserver;
    [(NSLock *)actualObserverLock unlock];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___BLTBBObserver;
  if (objc_msgSendSuper2(&v5, sel_instancesRespondToSelector_))
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x277CF3550] instancesRespondToSelector:a3];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v10.receiver = self;
  v10.super_class = BLTBBObserver;
  v5 = [(BLTBBObserver *)&v10 methodSignatureForSelector:?];
  if (!v5)
  {
    [(NSLock *)self->_actualObserverLock lock];
    actualObserver = self->_actualObserver;
    actualObserverLock = self->_actualObserverLock;
    v8 = actualObserver;
    [(NSLock *)actualObserverLock unlock];
    v5 = [(BBObserver *)v8 methodSignatureForSelector:a3];
  }

  return v5;
}

@end