@interface DTLeaksService
+ (void)registerCapabilities:(id)a3;
- (DTLeaksService)initWithChannel:(id)a3;
- (id)_preserveDict:(id)a3 forPid:(int)a4;
- (id)requestGraph:(unint64_t)a3 options:(id)a4;
- (int)setMallocStackLoggingMode:(int)a3 forPid:(int)a4;
- (void)_internalRequestForPid:(int)a3 message:(id)a4 completion:(id)a5;
- (void)_lookupGraphByToken:(unint64_t)a3 response:(id)a4;
- (void)cancelAllRequests;
- (void)messageReceived:(id)a3;
@end

@implementation DTLeaksService

+ (void)registerCapabilities:(id)a3
{
  v4 = a3;
  [v4 publishCapability:@"com.apple.instruments.server.services.remoteleaks" withVersion:9 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.remoteleaks.immediate" withVersion:1 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.remoteleaks.deferred" withVersion:1 forClass:a1];
}

- (DTLeaksService)initWithChannel:(id)a3
{
  v15.receiver = self;
  v15.super_class = DTLeaksService;
  v3 = [(DTXService *)&v15 initWithChannel:a3];
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

- (void)messageReceived:(id)a3
{
  if ([a3 errorStatus] == 2)
  {

    MEMORY[0x2821F9670](self, sel_cancelAllRequests);
  }
}

- (void)_internalRequestForPid:(int)a3 message:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:@"DTLeaksServiceNoPidException" format:@"No pid was provided to DTLeaksService for leaks analysis"];
  }

  coordinationQueue = self->_coordinationQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247FC1244;
  v13[3] = &unk_278EF3270;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(coordinationQueue, v13);
}

- (id)_preserveDict:(id)a3 forPid:(int)a4
{
  v6 = DTLeaksServiceSerializedGraphKey;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v7 mutableCopy];

  [v9 removeObjectForKey:DTLeaksServiceSerializedGraphKey];
  if ([v8 length])
  {
    v10 = a4 | ((atomic_fetch_add_explicit(&dword_27EE84370, 1u, memory_order_relaxed) + 1) << 32);
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
    v19 = a4;
    v18 = v10;
    v15 = v8;
    v16 = v9;
    v17 = self;
    dispatch_async(preservationQueue, block);
  }

  return v9;
}

- (void)_lookupGraphByToken:(unint64_t)a3 response:(id)a4
{
  v6 = a4;
  preservationQueue = self->_preservationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FC1BEC;
  block[3] = &unk_278EF2A50;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(preservationQueue, block);
}

- (id)requestGraph:(unint64_t)a3 options:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  if (a3)
  {
    if (HIDWORD(a3))
    {
      [(DTLeaksService *)self _lookupGraphByToken:a3 response:v7];
    }

    else
    {
      if (v6)
      {
        v12 = v6;
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
      v17 = v6;
      v18 = self;
      v20 = a3;
      v19 = v7;
      [(DTLeaksService *)self _internalRequestForPid:a3 message:v13 completion:v16];
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

- (int)setMallocStackLoggingMode:(int)a3 forPid:(int)a4
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a4;
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