@interface HMFNetService
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)errorFromNetServiceErrorDict:(id)dict;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPublishing;
- (BOOL)isResolved;
- (HMFNetAddress)hostName;
- (HMFNetService)init;
- (HMFNetService)initWithDomain:(id)domain type:(id)type name:(id)name;
- (HMFNetService)initWithNetService:(id)service;
- (HMFNetServiceDelegate)delegate;
- (NSArray)addresses;
- (NSDictionary)TXTRecord;
- (id)bestAddress;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)shortDescription;
- (int64_t)resolveRunningState;
- (int64_t)resolveState;
- (unint64_t)hash;
- (unint64_t)port;
- (void)_reallyResolveWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)confirmWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)dealloc;
- (void)netService:(id)service didNotResolve:(id)resolve;
- (void)netService:(id)service didUpdateTXTRecordData:(id)data;
- (void)netServiceDidResolveAddress:(id)address;
- (void)netServiceDidStop:(id)stop;
- (void)netServiceWillResolve:(id)resolve;
- (void)notifyUpdatedAddresses:(id)addresses;
- (void)removeAllTXTRecordObjects;
- (void)resolveWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)setAddresses:(id)addresses;
- (void)setHostname:(id)hostname;
- (void)setPublishing:(BOOL)publishing;
- (void)setResolveRunningState:(int64_t)state;
- (void)setResolveState:(int64_t)state;
- (void)setResolved:(BOOL)resolved;
- (void)setTXTRecord:(id)record;
- (void)startMonitoring;
- (void)updateTXTRecordWithData:(id)data;
@end

@implementation HMFNetService

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"resolved"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"isResolved") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"publishing") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"isPublishing"))
  {
    v4 = 0;
  }

  else
  {
    v6 = NSStringFromSelector(sel_port);
    v7 = [keyCopy isEqualToString:v6];

    v4 = v7 ^ 1;
  }

  return v4;
}

+ (id)errorFromNetServiceErrorDict:(id)dict
{
  dictCopy = dict;
  v4 = [dictCopy hmf_numberForKey:*MEMORY[0x277CBAAB8]];
  v5 = v4;
  if (v4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"NSNetServiceErrorDomain" code:objc_msgSend(v4 userInfo:{"integerValue"), dictCopy}];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 userInfo:dictCopy];
  }
  v6 = ;

  return v6;
}

- (HMFNetService)init
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

- (HMFNetService)initWithDomain:(id)domain type:(id)type name:(id)name
{
  v8 = MEMORY[0x277CBAB60];
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  v12 = [[v8 alloc] initWithDomain:domainCopy type:typeCopy name:nameCopy];

  v13 = [(HMFNetService *)self initWithNetService:v12];
  return v13;
}

- (HMFNetService)initWithNetService:(id)service
{
  serviceCopy = service;
  v26.receiver = self;
  v26.super_class = HMFNetService;
  v6 = [(HMFNetService *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientQueue, MEMORY[0x277D85CD0]);
    domain = [serviceCopy domain];
    v9 = [domain copy];
    domain = v7->_domain;
    v7->_domain = v9;

    type = [serviceCopy type];
    v12 = [type copy];
    type = v7->_type;
    v7->_type = v12;

    name = [serviceCopy name];
    v15 = [name copy];
    name = v7->_name;
    v7->_name = v15;

    v7->_port = [serviceCopy port];
    array = [MEMORY[0x277CBEB18] array];
    resolveBlocks = v7->_resolveBlocks;
    v7->_resolveBlocks = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    TXTRecord = v7->_TXTRecord;
    v7->_TXTRecord = dictionary;

    objc_storeStrong(&v7->_internal, service);
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v22 = *MEMORY[0x277CBE738];
    [serviceCopy removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [serviceCopy scheduleInRunLoop:mainRunLoop forMode:v22];

    if (serviceCopy)
    {
      tXTRecordData = [serviceCopy TXTRecordData];
      [(HMFNetService *)v7 updateTXTRecordWithData:tXTRecordData];
    }

    [(HMFNetService *)v7 startMonitoring];
  }

  return v7;
}

- (void)dealloc
{
  v3 = self->_internal;
  [(NSNetService *)v3 setDelegate:0];
  internal = self->_internal;
  self->_internal = 0;

  if (v3)
  {
    clientQueue = self->_clientQueue;
    if (clientQueue)
    {
      v6 = clientQueue;
    }

    else
    {
      v6 = MEMORY[0x277D85CD0];
      v7 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__HMFNetService_dealloc__block_invoke;
    block[3] = &unk_2786E6C80;
    v10 = v3;
    dispatch_async(v6, block);
  }

  v8.receiver = self;
  v8.super_class = HMFNetService;
  [(HMFNetService *)&v8 dealloc];
}

uint64_t __24__HMFNetService_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stop];
  v2 = *(a1 + 32);

  return [v2 stopMonitoring];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v17 = MEMORY[0x277CCACA8];
  shortDescription = [(HMFNetService *)self shortDescription];
  v19 = pointerCopy;
  if (pointerCopy)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v18 = &stru_283EBDA30;
  }

  domain = [(HMFNetService *)self domain];
  type = [(HMFNetService *)self type];
  name = [(HMFNetService *)self name];
  port = [(HMFNetService *)self port];
  addresses = [(HMFNetService *)self addresses];
  isPublishing = [(HMFNetService *)self isPublishing];
  v12 = self->_resolveState == 1;
  v13 = self->_resolveRunningState == 1;
  resolveBlocks = [(HMFNetService *)self resolveBlocks];
  v15 = [v17 stringWithFormat:@"<%@%@, Domain = %@, Type = %@, Name = %@, Port = %tu, Addresses = %@, isPublishing = %d, ResolveState = %d, ResolveRunningState = %d, ResolveBlocksCount = %d>", shortDescription, v18, domain, type, name, port, addresses, isPublishing, v12, v13, objc_msgSend(resolveBlocks, "count")];

  if (v19)
  {
  }

  return v15;
}

- (unint64_t)hash
{
  name = [(HMFNetService *)self name];
  v4 = [name hash];
  type = [(HMFNetService *)self type];
  v6 = [type hash] ^ v4;
  domain = [(HMFNetService *)self domain];
  v8 = [domain hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    port = [(HMFNetService *)self port];
    port2 = [(HMFNetService *)equalCopy port];
    if (port != -1 && port2 != -1)
    {
      port3 = [(HMFNetService *)self port];
      if (port3 != [(HMFNetService *)equalCopy port])
      {
        goto LABEL_11;
      }
    }

    name = [(HMFNetService *)self name];
    name2 = [(HMFNetService *)equalCopy name];
    v10 = [name isEqualToString:name2];

    if (!v10)
    {
      goto LABEL_11;
    }

    type = [(HMFNetService *)self type];
    type2 = [(HMFNetService *)equalCopy type];
    v13 = [type isEqualToString:type2];

    if (v13)
    {
      domain = [(HMFNetService *)self domain];
      if ([domain length])
      {
        domain2 = [(HMFNetService *)equalCopy domain];
        if ([domain2 length])
        {
          domain3 = [(HMFNetService *)self domain];
          domain4 = [(HMFNetService *)equalCopy domain];
          v18 = [domain3 isEqualToString:domain4];
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
LABEL_11:
      v18 = 0;
    }
  }

  return v18 & 1;
}

- (void)startMonitoring
{
  clientQueue = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMFNetService_startMonitoring__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __32__HMFNetService_startMonitoring__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internal];
  [v2 setDelegate:*(a1 + 32)];

  v3 = [*(a1 + 32) internal];
  [v3 startMonitoring];
}

- (unint64_t)port
{
  os_unfair_lock_lock_with_options();
  port = self->_port;
  os_unfair_lock_unlock(&self->_lock);
  return port;
}

- (BOOL)isResolved
{
  os_unfair_lock_lock_with_options();
  resolved = self->_resolved;
  os_unfair_lock_unlock(&self->_lock);
  return resolved;
}

- (void)setResolved:(BOOL)resolved
{
  if (resolved)
  {
    [(HMFNetService *)self willChangeValueForKey:@"isResolved"];
    os_unfair_lock_lock_with_options();
    self->_resolved = 1;
    os_unfair_lock_unlock(&self->_lock);

    [(HMFNetService *)self didChangeValueForKey:@"isResolved"];
  }
}

- (BOOL)isPublishing
{
  os_unfair_lock_lock_with_options();
  publishing = self->_publishing;
  os_unfair_lock_unlock(&self->_lock);
  return publishing;
}

- (void)setPublishing:(BOOL)publishing
{
  publishingCopy = publishing;
  [(HMFNetService *)self willChangeValueForKey:@"isPublishing"];
  os_unfair_lock_lock_with_options();
  if (self->_publishing == publishingCopy)
  {
    os_unfair_lock_unlock(&self->_lock);

    [(HMFNetService *)self didChangeValueForKey:@"isPublishing"];
  }

  else
  {
    self->_publishing = publishingCopy;
    os_unfair_lock_unlock(&self->_lock);
    [(HMFNetService *)self didChangeValueForKey:@"isPublishing"];
    delegate = [(HMFNetService *)self delegate];
    if (publishingCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate netServiceDidStartPublishing:self];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [delegate netServiceDidStopPublishing:self];
    }
  }
}

- (int64_t)resolveState
{
  clientQueue = [(HMFNetService *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  return self->_resolveState;
}

- (void)setResolveState:(int64_t)state
{
  clientQueue = [(HMFNetService *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  self->_resolveState = state;
}

- (int64_t)resolveRunningState
{
  clientQueue = [(HMFNetService *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  return self->_resolveRunningState;
}

- (void)setResolveRunningState:(int64_t)state
{
  clientQueue = [(HMFNetService *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  self->_resolveRunningState = state;
}

- (HMFNetAddress)hostName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_hostName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHostname:(id)hostname
{
  hostnameCopy = hostname;
  os_unfair_lock_lock_with_options();
  hostName = self->_hostName;
  self->_hostName = hostnameCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)addresses
{
  os_unfair_lock_lock_with_options();
  v3 = self->_addresses;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAddresses:(id)addresses
{
  addressesCopy = addresses;
  v4 = [addressesCopy copy];
  os_unfair_lock_lock_with_options();
  if (([(NSArray *)self->_addresses isEqual:v4]& 1) == 0)
  {
    objc_storeStrong(&self->_addresses, v4);
    [(HMFNetService *)self notifyUpdatedAddresses:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyUpdatedAddresses:(id)addresses
{
  addressesCopy = addresses;
  clientQueue = [(HMFNetService *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HMFNetService_notifyUpdatedAddresses___block_invoke;
  v7[3] = &unk_2786E6D18;
  v7[4] = self;
  v8 = addressesCopy;
  v6 = addressesCopy;
  dispatch_async(clientQueue, v7);
}

void __40__HMFNetService_notifyUpdatedAddresses___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 netService:*(a1 + 32) didUpdateAddresses:*(a1 + 40)];
  }
}

- (NSDictionary)TXTRecord
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_TXTRecord copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTXTRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy mutableCopy];
  os_unfair_lock_lock_with_options();
  if (([(NSMutableDictionary *)self->_TXTRecord isEqualToDictionary:recordCopy]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if (v4)
    {
      dictionary = v4;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    TXTRecord = self->_TXTRecord;
    self->_TXTRecord = dictionary;

    os_unfair_lock_unlock(&self->_lock);
    v7 = [v4 copy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = MEMORY[0x277CBEC10];
    }

    __notifyUpdatedTXTRecord(self, v9);
  }
}

- (void)removeAllTXTRecordObjects
{
  os_unfair_lock_lock_with_options();
  if ([(NSMutableDictionary *)self->_TXTRecord count])
  {
    [(NSMutableDictionary *)self->_TXTRecord removeAllObjects];
    os_unfair_lock_unlock(&self->_lock);
    v3 = MEMORY[0x277CBEC10];

    __notifyUpdatedTXTRecord(self, v3);
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)updateTXTRecordWithData:(id)data
{
  dataCopy = data;
  if (dataCopy && ([MEMORY[0x277CBAB60] dictionaryFromTXTRecordData:dataCopy], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    [(HMFNetService *)self setTXTRecord:v4];
  }

  else
  {
    [(HMFNetService *)self removeAllTXTRecordObjects];
  }
}

- (id)bestAddress
{
  hostName = [(HMFNetService *)self hostName];
  v4 = hostName;
  if (hostName)
  {
    firstObject = hostName;
  }

  else
  {
    addresses = [(HMFNetService *)self addresses];
    firstObject = [addresses firstObject];
  }

  return firstObject;
}

- (void)resolveWithTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMFNetService_resolveWithTimeout_completionHandler___block_invoke;
  block[3] = &unk_2786E7208;
  block[4] = self;
  v10 = handlerCopy;
  timeoutCopy = timeout;
  v8 = handlerCopy;
  dispatch_async(clientQueue, block);
}

void __54__HMFNetService_resolveWithTimeout_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) resolveState] == 1 && (objc_msgSend(*(a1 + 32), "bestAddress"), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier(v5);
      v14 = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Skipping resolving service, already have a cached address: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v3, 0);
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *MEMORY[0x277D85DE8];

    [v11 _reallyResolveWithTimeout:v12 completionHandler:v10];
  }
}

- (void)confirmWithTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMFNetService_confirmWithTimeout_completionHandler___block_invoke;
  block[3] = &unk_2786E7208;
  block[4] = self;
  v10 = handlerCopy;
  timeoutCopy = timeout;
  v8 = handlerCopy;
  dispatch_async(clientQueue, block);
}

void __54__HMFNetService_confirmWithTimeout_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) resolveRunningState] == 1 && objc_msgSend(*(a1 + 32), "resolveState") == 1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = HMFGetLogIdentifier(v3);
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Skipping resolving service, still running and already resolved", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }

  else
  {
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__HMFNetService_confirmWithTimeout_completionHandler___block_invoke_43;
    v10[3] = &unk_2786E80B0;
    v8 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v8 _reallyResolveWithTimeout:v10 completionHandler:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __54__HMFNetService_confirmWithTimeout_completionHandler___block_invoke_43(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)_reallyResolveWithTimeout:(double)timeout completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    resolveBlocks = [(HMFNetService *)self resolveBlocks];
    v8 = [handlerCopy copy];
    v9 = _Block_copy(v8);
    [resolveBlocks addObject:v9];
  }

  if ([(HMFNetService *)self resolveRunningState]!= 1)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier(selfCopy);
      v18 = 138543362;
      v19 = v13;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Starting to resolve service", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMFNetService *)selfCopy setResolveRunningState:1];
    internal = [(HMFNetService *)selfCopy internal];
    v15 = internal;
    timeoutCopy = 15.0;
    if (timeout > 0.0)
    {
      timeoutCopy = timeout;
    }

    [internal resolveWithTimeout:timeoutCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (_MergedGlobals_3_19 != -1)
  {
    dispatch_once(&_MergedGlobals_3_19, &__block_literal_global_52);
  }

  v3 = qword_280AFC490;

  return v3;
}

uint64_t __28__HMFNetService_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Networking.Service", @"com.apple.HMFoundation");
  v1 = qword_280AFC490;
  qword_280AFC490 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)netServiceWillResolve:(id)resolve
{
  v12 = *MEMORY[0x277D85DE8];
  resolveCopy = resolve;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier(selfCopy);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Net service will resolve", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)netServiceDidResolveAddress:(id)address
{
  addressCopy = address;
  clientQueue = [(HMFNetService *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMFNetService_netServiceDidResolveAddress___block_invoke;
  v7[3] = &unk_2786E6D18;
  v7[4] = self;
  v8 = addressCopy;
  v6 = addressCopy;
  dispatch_async(clientQueue, v7);
}

void __45__HMFNetService_netServiceDidResolveAddress___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier(v3);
    *buf = 138543362;
    v39 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Net service resolved", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setResolveState:1];
  v6 = [*(a1 + 40) port];
  if (v6 != [*(a1 + 32) port])
  {
    __HMFNetServiceUpdatePort(*(a1 + 32), v6);
  }

  v7 = [HMFNetAddress alloc];
  v8 = [*(a1 + 40) hostName];
  v9 = [(HMFNetAddress *)v7 initWithHostname:v8];

  [*(a1 + 32) setHostname:v9];
  v10 = [*(a1 + 40) addresses];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count") + 1}];
  v12 = v11;
  if (v9)
  {
    [v11 addObject:v9];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = -[HMFNetAddress initWithSocketAddress:]([HMFNetAddress alloc], "initWithSocketAddress:", [*(*(&v32 + 1) + 8 * i) bytes]);
        if (v18)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v15);
  }

  [*(a1 + 32) setAddresses:v12];
  [*(a1 + 32) setResolved:1];
  if ([v12 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = [*(a1 + 32) resolveBlocks];
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v28 + 1) + 8 * j);
          if (v9)
          {
            (*(v24 + 16))(*(*(&v28 + 1) + 8 * j), v9, 0);
          }

          else
          {
            v25 = [v12 firstObject];
            (*(v24 + 16))(v24, v25, 0);
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v21);
    }

    v26 = [*(a1 + 32) resolveBlocks];
    [v26 removeAllObjects];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)netService:(id)service didNotResolve:(id)resolve
{
  resolveCopy = resolve;
  clientQueue = [(HMFNetService *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HMFNetService_netService_didNotResolve___block_invoke;
  v8[3] = &unk_2786E6D18;
  v8[4] = self;
  v9 = resolveCopy;
  v7 = resolveCopy;
  dispatch_async(clientQueue, v8);
}

void __42__HMFNetService_netService_didNotResolve___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier(v3);
    v6 = *(a1 + 40);
    *buf = 138543618;
    v25 = v5;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Net service failed to resolve with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setResolveState:0];
  [*(a1 + 32) setResolveRunningState:0];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [*(a1 + 32) resolveBlocks];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = MEMORY[0x277CCA9B8];
        v14 = *(a1 + 32);
        v15 = [objc_opt_class() errorFromNetServiceErrorDict:*(a1 + 40)];
        v16 = [v13 hmfErrorWithCode:2 reason:@"Failed to resolve." suggestion:0 underlyingError:v15];

        (*(v12 + 16))(v12, 0, v16);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = [*(a1 + 32) resolveBlocks];
  [v17 removeAllObjects];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)netServiceDidStop:(id)stop
{
  clientQueue = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMFNetService_netServiceDidStop___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __35__HMFNetService_netServiceDidStop___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier(v3);
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Net service stopped resolving", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setResolveRunningState:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(a1 + 32) resolveBlocks];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12 reason:@"Net service stopped resolving."];
        (*(v11 + 16))(v11, 0, v12);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [*(a1 + 32) resolveBlocks];
  [v13 removeAllObjects];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)netService:(id)service didUpdateTXTRecordData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dataCopy = data;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier(selfCopy);
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = dataCopy;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Net service TXT record updated: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMFNetService *)selfCopy updateTXTRecordWithData:dataCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMFNetServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end