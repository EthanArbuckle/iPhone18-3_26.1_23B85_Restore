@interface DTLeaksService
+ (void)registerCapabilities:(id)capabilities;
- (DTLeaksService)initWithChannel:(id)channel;
- (id)_preserveDict:(id)dict forPid:(int)pid;
- (id)requestGraph:(unint64_t)graph options:(id)options;
- (int)setMallocStackLoggingMode:(int)mode forPid:(int)pid;
- (void)_internalRequestForPid:(int)pid message:(id)message completion:(id)completion;
- (void)_lookupGraphByToken:(unint64_t)token response:(id)response;
- (void)cancelAllRequests;
- (void)messageReceived:(id)received;
@end

@implementation DTLeaksService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.remoteleaks" withVersion:9 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.remoteleaks.immediate" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.remoteleaks.deferred" withVersion:1 forClass:self];
}

- (DTLeaksService)initWithChannel:(id)channel
{
  v15.receiver = self;
  v15.super_class = DTLeaksService;
  v3 = [(DTXService *)&v15 initWithChannel:channel];
  if (v3)
  {
    v4 = dispatch_queue_create("Leaks service helper queue", 0);
    coordinationQueue = v3->_coordinationQueue;
    v3->_coordinationQueue = v4;

    v6 = dispatch_queue_create("Leaks service file preservation queue", 0);
    preservationQueue = v3->_preservationQueue;
    v3->_preservationQueue = v6;

    v8 = objc_opt_new();
    helperConnectionByTargetPid = v3->_helperConnectionByTargetPid;
    v3->_helperConnectionByTargetPid = v8;

    v10 = objc_opt_new();
    helperPidByTargetPid = v3->_helperPidByTargetPid;
    v3->_helperPidByTargetPid = v10;

    v12 = objc_opt_new();
    fileByPid = v3->_fileByPid;
    v3->_fileByPid = v12;
  }

  return v3;
}

- (void)messageReceived:(id)received
{
  if ([received errorStatus] == 2)
  {

    MEMORY[0x2821F9670](self, sel_cancelAllRequests);
  }
}

- (void)_internalRequestForPid:(int)pid message:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  if (!pid)
  {
    [MEMORY[0x277CBEAD8] raise:@"DTLeaksServiceNoPidException" format:@"No pid was provided to DTLeaksService for leaks analysis"];
  }

  coordinationQueue = self->_coordinationQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247FC1244;
  v13[3] = &unk_278EF3270;
  pidCopy = pid;
  v13[4] = self;
  v14 = messageCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = messageCopy;
  dispatch_sync(coordinationQueue, v13);
}

- (id)_preserveDict:(id)dict forPid:(int)pid
{
  v6 = DTLeaksServiceSerializedGraphKey;
  dictCopy = dict;
  v8 = [dictCopy objectForKeyedSubscript:v6];
  v9 = [dictCopy mutableCopy];

  [v9 removeObjectForKey:DTLeaksServiceSerializedGraphKey];
  if ([v8 length])
  {
    v10 = pid | ((atomic_fetch_add_explicit(&dword_27EE84370, 1u, memory_order_relaxed) + 1) << 32);
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
  [v9 setObject:v11 forKeyedSubscript:DTLeaksServiceGraphLookupTokenKey];

  if (v10)
  {
    preservationQueue = self->_preservationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FC1944;
    block[3] = &unk_278EF3298;
    pidCopy = pid;
    v18 = v10;
    v15 = v8;
    v16 = v9;
    selfCopy = self;
    dispatch_async(preservationQueue, block);
  }

  return v9;
}

- (void)_lookupGraphByToken:(unint64_t)token response:(id)response
{
  responseCopy = response;
  preservationQueue = self->_preservationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FC1BEC;
  block[3] = &unk_278EF2A50;
  v10 = responseCopy;
  tokenCopy = token;
  block[4] = self;
  v8 = responseCopy;
  dispatch_async(preservationQueue, block);
}

- (id)requestGraph:(unint64_t)graph options:(id)options
{
  v22[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = objc_opt_new();
  if (graph)
  {
    if (HIDWORD(graph))
    {
      [(DTLeaksService *)self _lookupGraphByToken:graph response:v7];
    }

    else
    {
      if (optionsCopy)
      {
        v12 = optionsCopy;
      }

      else
      {
        v12 = MEMORY[0x277CBEC10];
      }

      v13 = [MEMORY[0x277D03668] messageWithSelector:sel_serializedGraphWithOptions_ objectArguments:{v12, 0}];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_247FC2104;
      v16[3] = &unk_278EF32C0;
      v17 = optionsCopy;
      selfCopy = self;
      graphCopy = graph;
      v19 = v7;
      [(DTLeaksService *)self _internalRequestForPid:graph message:v13 completion:v16];
    }
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid target specified (%llx)", 0];
    v22[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v11 = [v8 errorWithDomain:@"DTLeaksService" code:-1 userInfo:v10];
    [v7 invokeCompletionWithReturnValue:0 error:v11];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int)setMallocStackLoggingMode:(int)mode forPid:(int)pid
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = pid;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received request to disable MSL for pid [%d]", v7, 8u);
  }

  result = msl_set_mode_for_pid();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancelAllRequests
{
  coordinationQueue = self->_coordinationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FC26DC;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_async(coordinationQueue, block);
}

@end