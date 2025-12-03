@interface HAP2CoAPIO
+ (BOOL)isRunning;
+ (BOOL)setCoapAddressFromString:(id)string port:(unsigned __int16)port coapAddress:(coap_address_t *)address;
+ (HAP2CoAPIOThread)thread;
+ (HAP2Lock)lock;
+ (NSMutableArray)consumers;
+ (id)new;
+ (void)queueSessionCompletionForConsumer:(id)consumer;
+ (void)registerConsumer:(id)consumer;
+ (void)setConsumers:(id)consumers;
+ (void)setThread:(id)thread;
+ (void)unregisterConsumer:(id)consumer;
- (HAP2CoAPIO)init;
@end

@implementation HAP2CoAPIO

+ (id)new
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

+ (BOOL)setCoapAddressFromString:(id)string port:(unsigned __int16)port coapAddress:(coap_address_t *)address
{
  portCopy = port;
  v13 = *MEMORY[0x277D85DE8];
  uTF8String = [string UTF8String];
  if (uTF8String)
  {
    v8 = uTF8String;
    memset(&v12[4], 0, 24);
    *v12 = 7708;
    v9 = __rev16(portCopy);
    *&v12[2] = v9;
    if (inet_pton(30, uTF8String, &v12[8]) == 1)
    {
      if (address)
      {
        address->size = v12[0];
        address->addr.sa = *v12;
        *(&address->addr.sin6.sin6_addr + 4) = *&v12[12];
        LOBYTE(uTF8String) = 1;
        goto LABEL_9;
      }
    }

    else
    {
      *v12 = 528;
      *&v12[2] = v9;
      *&v12[4] = 0;
      *&v12[8] = 0;
      LOBYTE(uTF8String) = inet_pton(2, v8, &v12[4]) == 1;
      if (!uTF8String)
      {
        goto LABEL_9;
      }

      if (address)
      {
        address->addr.sin6.sin6_scope_id = 0;
        *&address->addr.sin6.sin6_addr.__u6_addr32[2] = 0;
        address->size = v12[0];
        address->addr.sa = *v12;
        goto LABEL_9;
      }
    }

    __assert_rtn("coap_address_init", "address.c", 72, "addr");
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return uTF8String;
}

+ (void)queueSessionCompletionForConsumer:(id)consumer
{
  consumerCopy = consumer;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__17262;
  v16 = __Block_byref_object_dispose__17263;
  v17 = 0;
  lock = [self lock];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HAP2CoAPIO_queueSessionCompletionForConsumer___block_invoke;
  v8[3] = &unk_2786D5778;
  selfCopy = self;
  v6 = consumerCopy;
  v9 = v6;
  v10 = &v12;
  [lock performBlock:v8];

  v7 = v13[5];
  if (v7)
  {
    [v7 queueSessionCompletionForConsumer:v6];
  }

  _Block_object_dispose(&v12, 8);
}

void __48__HAP2CoAPIO_queueSessionCompletionForConsumer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) consumers];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__HAP2CoAPIO_queueSessionCompletionForConsumer___block_invoke_2;
  v3[3] = &unk_2786D5750;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v3];
}

void __48__HAP2CoAPIO_queueSessionCompletionForConsumer___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 consumer];
  if (v6 == *(a1 + 32))
  {
    v10 = v6;
    v7 = [*(a1 + 48) thread];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = v10;
    *a4 = 1;
  }
}

void __87__HAP2CoAPIO_queueSessionBlockForConsumer_sessionBlock_withTimeout_requiresCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) consumers];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__HAP2CoAPIO_queueSessionBlockForConsumer_sessionBlock_withTimeout_requiresCompletion___block_invoke_2;
  v3[3] = &unk_2786D5750;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v3];
}

void __87__HAP2CoAPIO_queueSessionBlockForConsumer_sessionBlock_withTimeout_requiresCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 consumer];
  if (v6 == *(a1 + 32))
  {
    v10 = v6;
    v7 = [*(a1 + 48) thread];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = v10;
    *a4 = 1;
  }
}

+ (void)unregisterConsumer:(id)consumer
{
  consumerCopy = consumer;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__17262;
  v26 = __Block_byref_object_dispose__17263;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  lock = [self lock];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__HAP2CoAPIO_unregisterConsumer___block_invoke;
  v8[3] = &unk_2786D5728;
  selfCopy = self;
  v6 = consumerCopy;
  v9 = v6;
  v10 = &v18;
  v11 = &v22;
  v12 = &v14;
  [lock performBlock:v8];

  v7 = v23[5];
  if (v7)
  {
    if (*(v19 + 24) == 1)
    {
      [v7 unregisterConsumer:v6];
    }

    if (*(v15 + 24) == 1)
    {
      [v23[5] cancel];
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

void __33__HAP2CoAPIO_unregisterConsumer___block_invoke(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17262;
  v19 = __Block_byref_object_dispose__17263;
  v20 = 0;
  v2 = [*(a1 + 64) consumers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__HAP2CoAPIO_unregisterConsumer___block_invoke_2;
  v11[3] = &unk_2786D5700;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v12 = v3;
  v13 = v4;
  v14 = &v15;
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  if (v16[5])
  {
    v5 = [*(a1 + 64) thread];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(a1 + 64) consumers];
    [v8 removeObjectsAtIndexes:v16[5]];

    v9 = [*(a1 + 64) consumers];
    v10 = [v9 count];

    if (!v10)
    {
      [*(a1 + 64) setConsumers:0];
      [*(a1 + 64) setThread:0];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  _Block_object_dispose(&v15, 8);
}

void __33__HAP2CoAPIO_unregisterConsumer___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 consumer];
  if (v5 == a1[4])
  {
    *(*(a1[5] + 8) + 24) = 1;
    if (!v5)
    {
LABEL_6:
      v10 = v5;
      v6 = *(*(a1[6] + 8) + 40);
      if (v6)
      {
        [v6 addIndex:a3];
      }

      else
      {
        v7 = [MEMORY[0x277CCAB58] indexSetWithIndex:a3];
        v8 = *(a1[6] + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;
      }

      v5 = v10;
      goto LABEL_10;
    }
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

  if (v5 == a1[4])
  {
    goto LABEL_6;
  }

LABEL_10:
}

+ (void)registerConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = [[HAP2CoAPIOConsumerWeakHolder alloc] initWithConsumer:consumerCopy];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__17262;
  v24 = __Block_byref_object_dispose__17263;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  lock = [self lock];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__HAP2CoAPIO_registerConsumer___block_invoke;
  v10[3] = &unk_2786D56D8;
  selfCopy = self;
  v7 = consumerCopy;
  v11 = v7;
  v8 = v5;
  v12 = v8;
  v13 = &v20;
  v14 = &v16;
  [lock performBlock:v10];

  v9 = v21[5];
  if (v9)
  {
    [v9 registerConsumer:v7];
    if (*(v17 + 24) == 1)
    {
      [v21[5] start];
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

void __31__HAP2CoAPIO_registerConsumer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 64) consumers];

  if (v2)
  {
    *buf = 0;
    v19 = buf;
    v20 = 0x2020000000;
    v21 = 0;
    v3 = [*(a1 + 64) consumers];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __31__HAP2CoAPIO_registerConsumer___block_invoke_2;
    v15[3] = &unk_2786D56B0;
    v16 = *(a1 + 32);
    v17 = buf;
    [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];

    if (v19[24] == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v4 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_22AADC000, v4, OS_LOG_TYPE_ERROR, "Registering the same consumer twice", v14, 2u);
      }
    }

    else
    {
      v10 = [*(a1 + 64) consumers];
      [v10 addObject:*(a1 + 40)];

      v11 = [*(a1 + 64) thread];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithObject:*(a1 + 40)];
    [*(a1 + 64) setConsumers:v5];

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "Registering consumer and creating new HAP2CoAPIOThread", buf, 2u);
    }

    v7 = objc_opt_new();
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(a1 + 64) setThread:*(*(*(a1 + 48) + 8) + 40)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __31__HAP2CoAPIO_registerConsumer___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 consumer];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (BOOL)isRunning
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = [self lock];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __23__HAP2CoAPIO_isRunning__block_invoke;
  v5[3] = &unk_2786D5688;
  v5[4] = &v6;
  v5[5] = selfCopy;
  [lock performBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __23__HAP2CoAPIO_isRunning__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) thread];
  *(*(*(a1 + 32) + 8) + 24) = v2 != 0;
}

+ (void)setThread:(id)thread
{
  threadCopy = thread;
  lock = [self lock];
  [lock assertOwner];

  v6 = _thread;
  _thread = threadCopy;
}

+ (HAP2CoAPIOThread)thread
{
  lock = [self lock];
  [lock assertOwner];

  v3 = _thread;

  return v3;
}

+ (void)setConsumers:(id)consumers
{
  consumersCopy = consumers;
  lock = [self lock];
  [lock assertOwner];

  v6 = _consumers;
  _consumers = consumersCopy;
}

+ (NSMutableArray)consumers
{
  lock = [self lock];
  [lock assertOwner];

  v3 = _consumers;

  return v3;
}

+ (HAP2Lock)lock
{
  if (lock_onceToken != -1)
  {
    dispatch_once(&lock_onceToken, &__block_literal_global_17272);
  }

  v3 = lock_lock;

  return v3;
}

uint64_t __18__HAP2CoAPIO_lock__block_invoke()
{
  lock_lock = [HAP2Lock lockWithName:@"HAP2CoAPIOThread.lock"];

  return MEMORY[0x2821F96F8]();
}

- (HAP2CoAPIO)init
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

@end