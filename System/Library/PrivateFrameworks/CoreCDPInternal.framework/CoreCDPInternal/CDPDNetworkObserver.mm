@interface CDPDNetworkObserver
+ (id)sharedInstance;
- (CDPDNetworkObserver)init;
- (id)addNetworkObserverWithEventHandler:(id)handler;
- (void)_networkReachabilityDidChangeWithFlags:(unsigned int)flags;
- (void)removeObserverWithToken:(id)token;
- (void)startObservingNetwork;
@end

@implementation CDPDNetworkObserver

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[CDPDNetworkObserver sharedInstance];
  }

  v3 = sharedInstance_instance_1;

  return v3;
}

uint64_t __37__CDPDNetworkObserver_sharedInstance__block_invoke()
{
  sharedInstance_instance_1 = objc_alloc_init(CDPDNetworkObserver);

  return MEMORY[0x2821F96F8]();
}

- (CDPDNetworkObserver)init
{
  v11.receiver = self;
  v11.super_class = CDPDNetworkObserver;
  v2 = [(CDPDNetworkObserver *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    clientsLock = v2->_clientsLock;
    v2->_clientsLock = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    clientsByUUID = v2->_clientsByUUID;
    v2->_clientsByUUID = dictionary;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("CDPDNetworkObserver Event Queue", v7);
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v8;
  }

  return v2;
}

- (void)startObservingNetwork
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CDPDNetworkObserver_startObservingNetwork__block_invoke;
  block[3] = &unk_278E249D0;
  block[4] = self;
  dispatch_sync(eventQueue, block);
}

uint64_t __44__CDPDNetworkObserver_startObservingNetwork__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  address = xmmword_245199C00;
  *(*(a1 + 32) + 32) = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], &address);
  flags = 0;
  SCNetworkReachabilityGetFlags(*(*(a1 + 32) + 32), &flags);
  *(*(a1 + 32) + 8) = (flags & 2) != 0;
  memset(&v4, 0, sizeof(v4));
  v4.info = *(a1 + 32);
  SCNetworkReachabilitySetCallback(*(v4.info + 4), _networkReachabilityCallBack, &v4);
  result = SCNetworkReachabilitySetDispatchQueue(*(*(a1 + 32) + 32), *(*(a1 + 32) + 40));
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_networkReachabilityDidChangeWithFlags:(unsigned int)flags
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__CDPDNetworkObserver__networkReachabilityDidChangeWithFlags___block_invoke;
  v4[3] = &unk_278E264D0;
  v4[4] = self;
  flagsCopy = flags;
  dispatch_async(eventQueue, v4);
}

uint64_t __62__CDPDNetworkObserver__networkReachabilityDidChangeWithFlags___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = (*(a1 + 40) & 2) != 0;
  [*(*(a1 + 32) + 16) lock];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__CDPDNetworkObserver__networkReachabilityDidChangeWithFlags___block_invoke_2;
  v5[3] = &unk_278E264A8;
  v5[4] = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
  return [*(*(a1 + 32) + 16) unlock];
}

void __62__CDPDNetworkObserver__networkReachabilityDidChangeWithFlags___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 eventHandler];
  if (v4)
  {
    v5 = v4;
    v4[2](v4, *(*(a1 + 32) + 8));
    v4 = v5;
  }
}

- (id)addNetworkObserverWithEventHandler:(id)handler
{
  handlerCopy = handler;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v7 = objc_alloc_init(CDPDNetworkObserverClient);
  [(CDPDNetworkObserverClient *)v7 setEventHandler:handlerCopy];
  [(NSLock *)self->_clientsLock lock];
  [(NSMutableDictionary *)self->_clientsByUUID setObject:v7 forKey:uUIDString];
  [(NSLock *)self->_clientsLock unlock];
  eventQueue = self->_eventQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__CDPDNetworkObserver_addNetworkObserverWithEventHandler___block_invoke;
  v11[3] = &unk_278E25B50;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(eventQueue, v11);

  return uUIDString;
}

uint64_t __58__CDPDNetworkObserver_addNetworkObserverWithEventHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 8));
  }

  return result;
}

- (void)removeObserverWithToken:(id)token
{
  clientsLock = self->_clientsLock;
  tokenCopy = token;
  [(NSLock *)clientsLock lock];
  [(NSMutableDictionary *)self->_clientsByUUID removeObjectForKey:tokenCopy];

  v6 = self->_clientsLock;

  [(NSLock *)v6 unlock];
}

@end