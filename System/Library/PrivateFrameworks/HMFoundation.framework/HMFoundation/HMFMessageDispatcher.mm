@interface HMFMessageDispatcher
+ (id)logCategory;
- (HMFMessageDispatcher)init;
- (HMFMessageDispatcher)initWithTransport:(id)transport;
- (NSSet)filterClasses;
- (id)handlersForMessage:(id)message;
- (id)messageBindingForReceiver:(id)receiver forMessage:(id)message;
- (id)messageRegistrationsForReceiver:(id)receiver name:(id)name policies:(id)policies selector:(SEL)selector;
- (id)receiverForTarget:(id)target;
- (id)resolveHook;
- (id)sendMessageExpectingResponse:(id)response;
- (id)synthesizeHandlerForMessage:(id)message;
- (void)__registerHandler:(id)handler;
- (void)_configureMemoryPressureHandler;
- (void)deregisterForMessage:(id)message receiver:(id)receiver;
- (void)deregisterReceiver:(id)receiver;
- (void)dispatchMessage:(id)message;
- (void)flushReceiverFromCache:(id)cache;
- (void)makeSureToRegisterWithMemoryMonitor;
- (void)memoryMonitor:(id)monitor didReceiveMemoryEvent:(int64_t)event;
- (void)messageTransport:(id)transport didReceiveMessage:(id)message;
- (void)registerForMessage:(id)message receiver:(id)receiver policies:(id)policies selector:(SEL)selector;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)sendMessage:(id)message target:(id)target responseQueue:(id)queue responseHandler:(id)handler completionHandler:(id)completionHandler;
- (void)setFilterClasses:(id)classes;
- (void)setResolveHook:(id)hook;
@end

@implementation HMFMessageDispatcher

uint64_t __35__HMFMessageDispatcher_logCategory__block_invoke()
{
  qword_280AFC350 = HMFCreateOSLogHandle(@"Messaging.Dispatcher", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

+ (id)logCategory
{
  if (_MergedGlobals_3_6 != -1)
  {
    dispatch_once(&_MergedGlobals_3_6, &__block_literal_global_22);
  }

  v3 = qword_280AFC350;

  return v3;
}

- (NSSet)filterClasses
{
  os_unfair_lock_lock_with_options();
  filterClasses = self->_filterClasses;
  if (filterClasses)
  {
    v4 = filterClasses;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v5;
}

- (id)sendMessageExpectingResponse:(id)response
{
  responseCopy = response;
  if (!responseCopy || (v5 = responseCopy, [responseCopy responseHandler], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    _HMFPreconditionFailure(@"message && !message.responseHandler");
  }

  v14 = 0;
  v7 = [HMFFuture futureWithPromise:&v14];
  v8 = [v5 mutableCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__HMFMessageDispatcher_HMFFuture__sendMessageExpectingResponse___block_invoke;
  v12[3] = &unk_2786E6C10;
  v13 = v14;
  [v8 setResponseHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HMFMessageDispatcher_HMFFuture__sendMessageExpectingResponse___block_invoke_2;
  v10[3] = &unk_2786E6C38;
  v11 = v14;
  [(HMFMessageDispatcher *)self sendMessage:v8 completionHandler:v10];

  return v7;
}

uint64_t __64__HMFMessageDispatcher_HMFFuture__sendMessageExpectingResponse___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 rejectWithError:a2];
  }

  else
  {
    return [v2 fulfillWithValue:?];
  }
}

uint64_t __64__HMFMessageDispatcher_HMFFuture__sendMessageExpectingResponse___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) rejectWithError:a2];
  }

  return result;
}

- (HMFMessageDispatcher)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFMessageDispatcher)initWithTransport:(id)transport
{
  transportCopy = transport;
  v19.receiver = self;
  v19.super_class = HMFMessageDispatcher;
  v6 = [(HMFMessageDispatcher *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v8 = HMFDispatchQueueName(v6, @"workQ");
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    workQueue = v7->_workQueue;
    v7->_workQueue = v10;

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    handlers = v7->_handlers;
    v7->_handlers = orderedSet;

    objc_storeStrong(&v7->_transport, transport);
    [(HMFMessageTransport *)v7->_transport setDelegate:v7];
    v14 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:6];
    receiverCache = v7->_receiverCache;
    v7->_receiverCache = v14;

    v16 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:6 valueOptions:0];
    msgBindingsCache = v7->_msgBindingsCache;
    v7->_msgBindingsCache = v16;
  }

  return v7;
}

- (void)_configureMemoryPressureHandler
{
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_283ED0450];
  v3 = +[HMFMemoryMonitor memoryMonitor];
  [v3 addObserver:self debounceInterval:v4 events:1.0];
}

- (void)memoryMonitor:(id)monitor didReceiveMemoryEvent:(int64_t)event
{
  v20 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  os_unfair_lock_lock_with_options();
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = 0x280AFA000;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier(selfCopy);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMapTable count](selfCopy->_receiverCache, "count")}];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMapTable count](selfCopy->_msgBindingsCache, "count")}];
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Clearing cache after receiving memory pressure notification: [receiverCache: %@], [msgBindingCache: %@]", &v14, 0x20u);

    v9 = 0x280AFA000uLL;
  }

  objc_autoreleasePoolPop(v6);
  [(NSMapTable *)selfCopy->_receiverCache removeAllObjects];
  [*(&selfCopy->super.super.isa + *(v9 + 1040)) removeAllObjects];
  os_unfair_lock_unlock(&self->_lock.lock);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setFilterClasses:(id)classes
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  classesCopy = classes;
  v5 = [classesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(classesCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (![v8 isSubclassOfClass:objc_opt_class()] || v8 == objc_opt_class())
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid filter class '%@', must be subclass of %@", v8, objc_opt_class(), v13];
          v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
          objc_exception_throw(v12);
        }
      }

      v5 = [classesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  os_unfair_lock_lock_with_options();
  if (classesCopy)
  {
    v9 = [classesCopy copy];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  v10 = v9;
  objc_storeStrong(&self->_filterClasses, v9);

  os_unfair_lock_unlock(&self->_lock.lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)resolveHook
{
  os_unfair_lock_lock_with_options();
  v3 = _Block_copy(self->_resolveHook);
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (void)setResolveHook:(id)hook
{
  hookCopy = hook;
  os_unfair_lock_lock_with_options();
  v5 = _Block_copy(hookCopy);

  resolveHook = self->_resolveHook;
  self->_resolveHook = v5;

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (void)makeSureToRegisterWithMemoryMonitor
{
  os_unfair_lock_lock_with_options();
  if (!self->_didRegisterWithMemoryMonitor)
  {
    self->_didRegisterWithMemoryMonitor = 1;
    [(HMFMessageDispatcher *)self _configureMemoryPressureHandler];
  }

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (id)receiverForTarget:(id)target
{
  targetCopy = target;
  resolveHook = [(HMFMessageDispatcher *)self resolveHook];
  os_unfair_lock_lock_with_options();
  v6 = [(NSMapTable *)self->_receiverCache objectForKey:targetCopy];
  if (!v6)
  {
    if (resolveHook)
    {
      v6 = (resolveHook)[2](resolveHook, targetCopy);
      if (v6)
      {
        [(NSMapTable *)self->_receiverCache setObject:v6 forKey:targetCopy];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = v6;

  os_unfair_lock_unlock(&self->_lock.lock);

  return v7;
}

- (void)flushReceiverFromCache:(id)cache
{
  receiverCache = self->_receiverCache;
  cacheCopy = cache;
  messageTargetUUID = [cacheCopy messageTargetUUID];
  [(NSMapTable *)receiverCache removeObjectForKey:messageTargetUUID];

  [(NSMapTable *)self->_msgBindingsCache removeObjectForKey:cacheCopy];
}

- (id)messageBindingForReceiver:(id)receiver forMessage:(id)message
{
  receiverCopy = receiver;
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_10;
  }

  os_unfair_lock_lock_with_options();
  array = [(NSMapTable *)self->_msgBindingsCache objectForKey:receiverCopy];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    goto LABEL_7;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HMFMessageDispatcher_messageBindingForReceiver_forMessage___block_invoke;
  v11[3] = &unk_2786E7508;
  v12 = messageCopy;
  v9 = [array na_firstObjectPassingTest:v11];

  if (!v9)
  {
LABEL_7:
    v9 = [objc_opt_class() messageBindingForDispatcher:self message:messageCopy receiver:receiverCopy];
    if (v9)
    {
      [array addObject:v9];
      [(NSMapTable *)self->_msgBindingsCache setObject:array forKey:receiverCopy];
    }
  }

  os_unfair_lock_unlock(&self->_lock.lock);
LABEL_10:

  return v9;
}

uint64_t __61__HMFMessageDispatcher_messageBindingForReceiver_forMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) name];
  v5 = HMFEqualObjects(v3, v4);

  return v5;
}

- (id)synthesizeHandlerForMessage:(id)message
{
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  [(HMFMessageDispatcher *)self makeSureToRegisterWithMemoryMonitor];
  destination = [messageCopy destination];
  target = [destination target];
  v8 = [(HMFMessageDispatcher *)self receiverForTarget:target];

  if (v8)
  {
    v9 = [(HMFMessageDispatcher *)self messageBindingForReceiver:v8 forMessage:messageCopy];
    v10 = v9;
    if (v9)
    {
      messageReceiver = [v9 messageReceiver];
      v12 = messageReceiver;
      if (messageReceiver)
      {
        v13 = messageReceiver;

        v8 = v13;
      }

      name = [v10 name];
      policies = [v10 policies];
      v16 = -[HMFMessageDispatcher messageRegistrationsForReceiver:name:policies:selector:](self, "messageRegistrationsForReceiver:name:policies:selector:", v8, name, policies, [v10 selector]);
    }

    else
    {
      v16 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  objc_autoreleasePoolPop(v5);

  return v16;
}

- (id)handlersForMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    name = [messageCopy name];
    destination = [v5 destination];
    os_unfair_lock_lock_with_options();
    handlers = self->_handlers;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __43__HMFMessageDispatcher_handlersForMessage___block_invoke;
    v24 = &unk_2786E7530;
    v9 = name;
    v25 = v9;
    v10 = destination;
    v26 = v10;
    v11 = [handlers indexesOfObjectsWithOptions:1 passingTest:&v21];
    v12 = v11;
    if (v11 && [v11 count])
    {
      handlers = [(NSMutableOrderedSet *)self->_handlers objectsAtIndexes:v12];
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    os_unfair_lock_unlock(&self->_lock.lock);
    if (v13)
    {
      v14 = [(HMFMessageDispatcher *)self synthesizeHandlerForMessage:v5];
      if ([v14 count])
      {
        handlers = v14;
      }

      else
      {
        handlers = MEMORY[0x277CBEBF8];
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_FAULT, "%{public}@Requested handlers for nil message", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    handlers = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return handlers;
}

uint64_t __43__HMFMessageDispatcher_handlersForMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 target];
    v7 = [*(a1 + 40) target];
    if ([v6 isEqual:v7])
    {
      v8 = 1;
    }

    else
    {
      v9 = *(a1 + 40);
      v10 = +[HMFMessageDestination allMessageDestinations];
      v8 = [v9 isEqual:v10];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)registerForMessage:(id)message receiver:(id)receiver policies:(id)policies selector:(SEL)selector
{
  messageCopy = message;
  receiverCopy = receiver;
  policiesCopy = policies;
  v12 = objc_autoreleasePoolPush();
  if (!messageCopy)
  {
    _HMFPreconditionFailure(@"messageName");
  }

  if (!policiesCopy)
  {
    _HMFPreconditionFailure(@"policies");
  }

  if (!selector)
  {
    _HMFPreconditionFailure(@"selector");
  }

  v13 = [__HMFMessageHandler handlerWithReceiver:receiverCopy name:messageCopy policies:policiesCopy selector:selector];
  if (v13)
  {
    [(HMFMessageDispatcher *)self __registerHandler:v13];
  }

  objc_autoreleasePoolPop(v12);
}

- (void)__registerHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(NSMutableOrderedSet *)self->_handlers indexOfObject:handlerCopy];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = HMFGetLogIdentifier(selfCopy);
        v13 = 138543618;
        v14 = v9;
        v15 = 2112;
        v16 = handlerCopy;
        _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Registering handler: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [(NSMutableOrderedSet *)self->_handlers addObject:handlerCopy];
    }

    else
    {
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier(selfCopy);
        v13 = 138543618;
        v14 = v11;
        v15 = 2112;
        v16 = handlerCopy;
        _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Updating handler: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [(NSMutableOrderedSet *)self->_handlers replaceObjectAtIndex:v5 withObject:handlerCopy];
    }

    os_unfair_lock_unlock(&self->_lock.lock);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deregisterForMessage:(id)message receiver:(id)receiver
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  receiverCopy = receiver;
  if (!messageCopy)
  {
    _HMFPreconditionFailure(@"messageName");
  }

  v8 = receiverCopy;
  if (receiverCopy)
  {
    os_unfair_lock_lock_with_options();
    v9 = objc_autoreleasePoolPush();
    handlers = self->_handlers;
    context = v9;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __54__HMFMessageDispatcher_deregisterForMessage_receiver___block_invoke;
    v23[3] = &unk_2786E7530;
    v24 = v8;
    v25 = messageCopy;
    v11 = [(NSMutableOrderedSet *)handlers indexesOfObjectsWithOptions:1 passingTest:v23];
    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier(selfCopy);
        *buf = 138543618;
        v27 = v15;
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_INFO, "%{public}@Removing handlers at indexes: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [(NSMutableOrderedSet *)self->_handlers removeObjectsAtIndexes:v11];
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier(v17);
        v20 = [(NSMutableOrderedSet *)self->_handlers count];
        *buf = 138543618;
        v27 = v19;
        v28 = 2048;
        v29 = v20;
        _os_log_impl(&dword_22ADEC000, v18, OS_LOG_TYPE_INFO, "%{public}@_handlers: %lu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }

    objc_autoreleasePoolPop(context);
    os_unfair_lock_unlock(&self->_lock.lock);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __54__HMFMessageDispatcher_deregisterForMessage_receiver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 shouldDeregisterIfMatchingReceiver:*(a1 + 32)])
  {
    v4 = [v3 name];
    v5 = [v4 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)deregisterReceiver:(id)receiver
{
  v25 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  if (receiverCopy)
  {
    os_unfair_lock_lock_with_options();
    v5 = objc_autoreleasePoolPush();
    handlers = self->_handlers;
    context = v5;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __43__HMFMessageDispatcher_deregisterReceiver___block_invoke;
    v19 = &unk_2786E7558;
    v7 = receiverCopy;
    v20 = v7;
    v8 = [(NSMutableOrderedSet *)handlers indexesOfObjectsWithOptions:1 passingTest:&v16];
    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier(selfCopy);
        *buf = 138543618;
        v22 = v12;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Removing handlers at indexes: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [(NSMutableOrderedSet *)self->_handlers removeObjectsAtIndexes:v8, context, v16, v17, v18, v19];
    }

    [(HMFMessageDispatcher *)self flushReceiverFromCache:v7, context];

    objc_autoreleasePoolPop(contexta);
    os_unfair_lock_unlock(&self->_lock.lock);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)messageRegistrationsForReceiver:(id)receiver name:(id)name policies:(id)policies selector:(SEL)selector
{
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = [(HMFMessageDispatcher *)self messageHandlerWithReceiver:receiver name:name policies:policies selector:selector];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)dispatchMessage:(id)message
{
  v85 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v54 = objc_autoreleasePoolPush();
  shortDescription = [messageCopy shortDescription];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier(selfCopy);
    *buf = 138543618;
    v76 = v8;
    v77 = 2112;
    v78 = shortDescription;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Dispatching message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMFMessageDispatcher *)selfCopy handlersForMessage:messageCopy];
  if ([v9 count])
  {
    filterClasses = [(HMFMessageDispatcher *)selfCopy filterClasses];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v11 = v9;
    v62 = [v11 countByEnumeratingWithState:&v71 objects:v84 count:16];
    if (v62)
    {
      v56 = 0;
      v60 = 0;
      v61 = *v72;
      v65 = selfCopy;
      v58 = filterClasses;
      v59 = v9;
      v57 = v11;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v72 != v61)
          {
            objc_enumerationMutation(v11);
          }

          v13 = *(*(&v71 + 1) + 8 * i);
          receiver = [v13 receiver];
          if (receiver)
          {
            v63 = receiver;
            v64 = i;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v15 = filterClasses;
            v16 = [v15 countByEnumeratingWithState:&v67 objects:v83 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v68;
              while (2)
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v68 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v67 + 1) + 8 * j);
                  policies = [v13 policies];
                  v66 = 0;
                  v22 = messageCopy;
                  v23 = [v20 filterMessage:messageCopy withPolicies:policies dispatcher:selfCopy error:&v66];
                  v24 = v66;

                  if (v23 == -1)
                  {
                    v30 = objc_autoreleasePoolPush();
                    selfCopy = v65;
                    v31 = v65;
                    v32 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                    {
                      v33 = HMFGetLogIdentifier(v31);
                      v34 = v33;
                      *buf = 138544130;
                      v35 = @"(unspecified error)";
                      if (v24)
                      {
                        v35 = v24;
                      }

                      v76 = v33;
                      v77 = 2112;
                      v78 = shortDescription;
                      v79 = 2112;
                      v80 = v20;
                      v81 = 2112;
                      v82 = v35;
                      _os_log_impl(&dword_22ADEC000, v32, OS_LOG_TYPE_DEBUG, "%{public}@Message %@ rejected by %@: %@", buf, 0x2Au);

                      selfCopy = v65;
                    }

                    objc_autoreleasePoolPop(v30);
                    v36 = v60;
                    filterClasses = v58;
                    if (!v60)
                    {
                      v36 = v24;
                    }

                    v60 = v36;

                    messageCopy = v22;
                    v9 = v59;
                    goto LABEL_28;
                  }

                  messageCopy = v22;
                  selfCopy = v65;
                }

                v17 = [v15 countByEnumeratingWithState:&v67 objects:v83 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

            v25 = objc_autoreleasePoolPush();
            v26 = selfCopy;
            v27 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v28 = HMFGetLogIdentifier(v26);
              shortDescription2 = [v13 shortDescription];
              *buf = 138543618;
              v76 = v28;
              v77 = 2112;
              v78 = shortDescription2;
              _os_log_impl(&dword_22ADEC000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Invoking handler: %@", buf, 0x16u);

              selfCopy = v65;
            }

            objc_autoreleasePoolPop(v25);
            v56 |= [v13 invokeWithMessage:messageCopy];
            filterClasses = v58;
            v9 = v59;
LABEL_28:
            v11 = v57;
            receiver = v63;
            i = v64;
          }
        }

        v62 = [v11 countByEnumeratingWithState:&v71 objects:v84 count:16];
      }

      while (v62);

      if (v56)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = selfCopy;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v40 = HMFGetLogIdentifier(v38);
          *buf = 138543618;
          v76 = v40;
          v77 = 2112;
          v78 = shortDescription;
          _os_log_impl(&dword_22ADEC000, v39, OS_LOG_TYPE_DEBUG, "%{public}@Successfully dispatched message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        v41 = v54;
        v42 = v60;
        goto LABEL_45;
      }
    }

    else
    {

      v60 = 0;
    }
  }

  else
  {
    v43 = objc_autoreleasePoolPush();
    v44 = selfCopy;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = HMFGetLogIdentifier(v44);
      *buf = 138543618;
      v76 = v46;
      v77 = 2112;
      v78 = shortDescription;
      _os_log_impl(&dword_22ADEC000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@No handlers for message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    v60 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:14];
  }

  v47 = objc_autoreleasePoolPush();
  v48 = selfCopy;
  v49 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = HMFGetLogIdentifier(v48);
    shortDescription3 = [(__CFString *)v60 shortDescription];
    *buf = 138543874;
    v76 = v50;
    v77 = 2112;
    v78 = shortDescription;
    v79 = 2112;
    v80 = shortDescription3;
    _os_log_impl(&dword_22ADEC000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@Message %@ was not handled with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v47);
  v42 = v60;
  if (v60)
  {
    [messageCopy respondWithError:v60];
  }

  else
  {
    v52 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:14];
    [messageCopy respondWithError:v52];

    v42 = 0;
  }

  v41 = v54;
LABEL_45:

  objc_autoreleasePoolPop(v41);
  v53 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  if (messageCopy)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8 reason:@"Requested to send nil message"];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = HMFGetLogIdentifier(selfCopy);
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = @"Requested to send nil message";
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_FAULT, "%{public}@%@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  transport = [(HMFMessageDispatcher *)self transport];
  if (transport)
  {
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_11:
    [transport sendMessage:messageCopy completionHandler:handlerCopy];
    goto LABEL_12;
  }

  v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 reason:@"The dispatcher does not have a valid transport"];

  v9 = v15;
  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v9);
  }

LABEL_12:

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport didReceiveMessage:(id)message
{
  transportCopy = transport;
  messageCopy = message;
  v7 = objc_autoreleasePoolPush();
  [(HMFMessageDispatcher *)self dispatchMessage:messageCopy];
  objc_autoreleasePoolPop(v7);
}

- (void)sendMessage:(id)message target:(id)target responseQueue:(id)queue responseHandler:(id)handler completionHandler:(id)completionHandler
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  targetCopy = target;
  queueCopy = queue;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v17 = objc_autoreleasePoolPush();
  destination = [messageCopy destination];
  target = [destination target];
  v20 = [target isEqual:targetCopy];

  if ((v20 & 1) == 0)
  {
    v21 = [[HMFMessageDestination alloc] initWithTarget:targetCopy];
    [messageCopy setDestination:v21];
  }

  responseHandler = [messageCopy responseHandler];

  if (handlerCopy && responseHandler)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier(0);
      *buf = 138543362;
      v38 = v25;
      _os_log_impl(&dword_22ADEC000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot send with response handler if the message already has a response handler", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
  }

  responseHandler2 = [messageCopy responseHandler];

  if (!responseHandler2)
  {
    if (queueCopy && handlerCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __103__HMFMessageDispatcher_Deprecated__sendMessage_target_responseQueue_responseHandler_completionHandler___block_invoke;
      aBlock[3] = &unk_2786E75A8;
      v35 = queueCopy;
      v36 = handlerCopy;
      responseHandler2 = _Block_copy(aBlock);
    }

    [messageCopy setResponseHandler:responseHandler2];
  }

  v27 = self->_workQueue;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __103__HMFMessageDispatcher_Deprecated__sendMessage_target_responseQueue_responseHandler_completionHandler___block_invoke_3;
  v31[3] = &unk_2786E75D0;
  v28 = completionHandlerCopy;
  v32 = v27;
  v33 = v28;
  v29 = v27;
  [(HMFMessageDispatcher *)self sendMessage:messageCopy completionHandler:v31];

  objc_autoreleasePoolPop(v17);
  v30 = *MEMORY[0x277D85DE8];
}

void __103__HMFMessageDispatcher_Deprecated__sendMessage_target_responseQueue_responseHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__HMFMessageDispatcher_Deprecated__sendMessage_target_responseQueue_responseHandler_completionHandler___block_invoke_2;
  block[3] = &unk_2786E7580;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __103__HMFMessageDispatcher_Deprecated__sendMessage_target_responseQueue_responseHandler_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__HMFMessageDispatcher_Deprecated__sendMessage_target_responseQueue_responseHandler_completionHandler___block_invoke_4;
    block[3] = &unk_2786E7490;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

@end