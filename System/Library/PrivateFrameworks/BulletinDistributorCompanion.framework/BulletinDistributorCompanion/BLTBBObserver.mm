@interface BLTBBObserver
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)surrogateGatewayWithQueue:(id)queue calloutQueue:(id)calloutQueue name:(id)name priority:(unint64_t)priority;
+ (id)surrogateWithQueue:(id)queue calloutQueue:(id)calloutQueue;
- (BLTBBObserver)initWithQueue:(id)queue calloutQueue:(id)calloutQueue name:(id)name priority:(unint64_t)priority isGateway:(BOOL)gateway;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_reconnectObserver;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)setDelegate:(id)delegate;
- (void)setObserverFeed:(unint64_t)feed;
@end

@implementation BLTBBObserver

- (BLTBBObserver)initWithQueue:(id)queue calloutQueue:(id)calloutQueue name:(id)name priority:(unint64_t)priority isGateway:(BOOL)gateway
{
  queueCopy = queue;
  calloutQueueCopy = calloutQueue;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = BLTBBObserver;
  v16 = [(BLTBBObserver *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_queue, queue);
    objc_storeStrong(&v17->_calloutQueue, calloutQueue);
    v18 = [nameCopy copy];
    name = v17->_name;
    v17->_name = v18;

    v17->_priority = priority;
    v17->_isGateway = gateway;
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

+ (id)surrogateWithQueue:(id)queue calloutQueue:(id)calloutQueue
{
  calloutQueueCopy = calloutQueue;
  queueCopy = queue;
  v7 = [[BLTBBObserver alloc] initWithQueue:queueCopy calloutQueue:calloutQueueCopy name:0 priority:0 isGateway:0];

  return v7;
}

+ (id)surrogateGatewayWithQueue:(id)queue calloutQueue:(id)calloutQueue name:(id)name priority:(unint64_t)priority
{
  nameCopy = name;
  calloutQueueCopy = calloutQueue;
  queueCopy = queue;
  v12 = [[BLTBBObserver alloc] initWithQueue:queueCopy calloutQueue:calloutQueueCopy name:nameCopy priority:priority isGateway:1];

  return v12;
}

- (void)setDelegate:(id)delegate
{
  [(BLTBBObserverDelegate *)self->_delegateSurrogate setActualDelegate:delegate];
  [(NSLock *)self->_actualObserverLock lock];
  [(BBObserver *)self->_actualObserver setDelegate:self->_delegateSurrogate];
  actualObserverLock = self->_actualObserverLock;

  [(NSLock *)actualObserverLock unlock];
}

- (void)_reconnectObserver
{
  [(NSLock *)self->_actualObserverLock lock];
  observerOptions = [(BBObserver *)self->_actualObserver observerOptions];
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

  actualDelegate = [(BLTBBObserverDelegate *)self->_delegateSurrogate actualDelegate];

  if (actualDelegate)
  {
    [(BBObserver *)self->_actualObserver setDelegate:self->_delegateSurrogate];
  }

  if (self->_hasFeed)
  {
    [(BBObserver *)self->_actualObserver setObserverFeed:self->_observerFeed];
  }

  [(BBObserver *)self->_actualObserver setObserverOptions:observerOptions];
  actualObserverLock = self->_actualObserverLock;

  [(NSLock *)actualObserverLock unlock];
}

- (void)setObserverFeed:(unint64_t)feed
{
  [(NSLock *)self->_actualObserverLock lock];
  self->_observerFeed = feed;
  self->_hasFeed = 1;
  [(BBObserver *)self->_actualObserver setObserverFeed:feed];
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

- (void)forwardInvocation:(id)invocation
{
  actualObserverLock = self->_actualObserverLock;
  invocationCopy = invocation;
  [(NSLock *)actualObserverLock lock];
  v6 = self->_actualObserverLock;
  v7 = self->_actualObserver;
  [(NSLock *)v6 unlock];
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    [invocationCopy invokeWithTarget:v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BLTBBObserver;
    [(BLTBBObserver *)&v8 forwardInvocation:invocationCopy];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
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

- (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
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

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___BLTBBObserver;
  if (objc_msgSendSuper2(&v5, sel_instancesRespondToSelector_))
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x277CF3550] instancesRespondToSelector:selector];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
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
    v5 = [(BBObserver *)v8 methodSignatureForSelector:selector];
  }

  return v5;
}

@end