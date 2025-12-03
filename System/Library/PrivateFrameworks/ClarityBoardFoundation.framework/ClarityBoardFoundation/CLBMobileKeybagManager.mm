@interface CLBMobileKeybagManager
+ (CLBMobileKeybagManager)sharedInstance;
- (BOOL)unlockWithPasscode:(id)passcode error:(id *)error;
- (CLBMobileKeybagManager)init;
- (double)backOffTime;
- (id)registerFirstUnlockBlock:(id)block;
- (id)registerLockStateChangedBlock:(id)block;
- (int64_t)_lockStateFromDictionary:(id)dictionary;
- (int64_t)currentState;
- (unint64_t)failedAttemptCount;
- (void)_handleFirstUnlock;
- (void)_handleKeybagStatusChanged;
- (void)_queue_updateLockedState;
- (void)dealloc;
- (void)lock;
- (void)unregisterFirstUnlockBlockWithIdentifier:(id)identifier;
- (void)unregisterLockStateChangedBlockWithIdentifier:(id)identifier;
@end

@implementation CLBMobileKeybagManager

+ (CLBMobileKeybagManager)sharedInstance
{
  if (sharedInstance_onceToken[0] != -1)
  {
    +[CLBMobileKeybagManager sharedInstance];
  }

  v3 = sharedInstance__keybagManager;

  return v3;
}

uint64_t __40__CLBMobileKeybagManager_sharedInstance__block_invoke()
{
  sharedInstance__keybagManager = objc_alloc_init(CLBMobileKeybagManager);

  return MEMORY[0x2821F96F8]();
}

- (CLBMobileKeybagManager)init
{
  v22.receiver = self;
  v22.super_class = CLBMobileKeybagManager;
  v2 = [(CLBMobileKeybagManager *)&v22 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    queue = v2->_queue;
    v2->_queue = Serial;

    v5 = BSDispatchQueueCreateSerial();
    callOutQueue = v2->_callOutQueue;
    v2->_callOutQueue = v5;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    stateChangedCallbackBlocks = v2->_stateChangedCallbackBlocks;
    v2->_stateChangedCallbackBlocks = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    firstUnlockCallbackBlocks = v2->_firstUnlockCallbackBlocks;
    v2->_firstUnlockCallbackBlocks = dictionary2;

    objc_initWeak(&location, v2);
    v11 = v2->_callOutQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __30__CLBMobileKeybagManager_init__block_invoke;
    v19 = &unk_278DBE9B0;
    objc_copyWeak(&v20, &location);
    v2->_mkbEvent = MKBEventsRegister();
    v12 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__CLBMobileKeybagManager_init__block_invoke_2;
    block[3] = &unk_278DBE9D8;
    v15 = v2;
    dispatch_sync(v12, block);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__CLBMobileKeybagManager_init__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleKeybagStatusChanged];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleFirstUnlock];
  }
}

- (void)dealloc
{
  mkbEvent = self->_mkbEvent;
  MKBEventsUnregister();
  v4.receiver = self;
  v4.super_class = CLBMobileKeybagManager;
  [(CLBMobileKeybagManager *)&v4 dealloc];
}

- (int64_t)currentState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__CLBMobileKeybagManager_currentState__block_invoke;
  v5[3] = &unk_278DBEA00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__CLBMobileKeybagManager_currentState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _lockStateFromDictionary:*(*(a1 + 32) + 8)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)lock
{
  if (![(CLBMobileKeybagManager *)self currentState])
  {

    MEMORY[0x282186920]();
  }
}

- (double)backOffTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__CLBMobileKeybagManager_backOffTime__block_invoke;
  v6[3] = &unk_278DBEA00;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  [v8[5] doubleValue];
  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __37__CLBMobileKeybagManager_backOffTime__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*MEMORY[0x277D28AE8]];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)failedAttemptCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CLBMobileKeybagManager_failedAttemptCount__block_invoke;
  v5[3] = &unk_278DBEA00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  unsignedIntegerValue = [v7[5] unsignedIntegerValue];
  _Block_object_dispose(&v6, 8);

  return unsignedIntegerValue;
}

uint64_t __44__CLBMobileKeybagManager_failedAttemptCount__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*MEMORY[0x277D28AF8]];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)unlockWithPasscode:(id)passcode error:(id *)error
{
  passcodeCopy = passcode;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__CLBMobileKeybagManager_unlockWithPasscode_error___block_invoke;
  v11[3] = &unk_278DBEA28;
  v8 = passcodeCopy;
  v14 = &v16;
  v15 = &v20;
  v12 = v8;
  selfCopy = self;
  dispatch_sync(queue, v11);
  if (error)
  {
    *error = v21[5];
  }

  v9 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v9;
}

uint64_t __51__CLBMobileKeybagManager_unlockWithPasscode_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dataUsingEncoding:4];
  v2 = MKBUnlockDevice();
  if (v2)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.clarityboard.mkb" code:v2 userInfo:0];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = *(a1 + 40);

  return [v6 _queue_updateLockedState];
}

- (id)registerLockStateChangedBlock:(id)block
{
  blockCopy = block;
  uUID = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CLBMobileKeybagManager_registerLockStateChangedBlock___block_invoke;
  block[3] = &unk_278DBEA50;
  block[4] = self;
  v7 = uUID;
  v13 = v7;
  v14 = blockCopy;
  v8 = blockCopy;
  dispatch_sync(queue, block);
  v9 = v14;
  v10 = v7;

  return v7;
}

void __56__CLBMobileKeybagManager_registerLockStateChangedBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 48) copy];
  v2 = _Block_copy(v3);
  [*(*(a1 + 32) + 32) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)unregisterLockStateChangedBlockWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CLBMobileKeybagManager_unregisterLockStateChangedBlockWithIdentifier___block_invoke;
  v7[3] = &unk_278DBEA78;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

- (id)registerFirstUnlockBlock:(id)block
{
  blockCopy = block;
  uUID = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CLBMobileKeybagManager_registerFirstUnlockBlock___block_invoke;
  block[3] = &unk_278DBEA50;
  block[4] = self;
  v7 = uUID;
  v13 = v7;
  v14 = blockCopy;
  v8 = blockCopy;
  dispatch_sync(queue, block);
  v9 = v14;
  v10 = v7;

  return v7;
}

void __51__CLBMobileKeybagManager_registerFirstUnlockBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 48) copy];
  v2 = _Block_copy(v3);
  [*(*(a1 + 32) + 40) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)unregisterFirstUnlockBlockWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__CLBMobileKeybagManager_unregisterFirstUnlockBlockWithIdentifier___block_invoke;
  v7[3] = &unk_278DBEA78;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

- (void)_handleKeybagStatusChanged
{
  v23 = *MEMORY[0x277D85DE8];
  commonLog = [MEMORY[0x277CFA5D0] commonLog];
  if (os_log_type_enabled(commonLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24350A000, commonLog, OS_LOG_TYPE_DEFAULT, "Handle keybag status changed", buf, 2u);
  }

  callOutQueue = self->_callOutQueue;
  BSDispatchQueueAssert();
  *buf = 0;
  v17 = buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CLBMobileKeybagManager__handleKeybagStatusChanged__block_invoke;
  block[3] = &unk_278DBEA00;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(queue, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v17 + 5);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(buf, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __52__CLBMobileKeybagManager__handleKeybagStatusChanged__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 _queue_updateLockedState];
}

- (void)_handleFirstUnlock
{
  v23 = *MEMORY[0x277D85DE8];
  commonLog = [MEMORY[0x277CFA5D0] commonLog];
  if (os_log_type_enabled(commonLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24350A000, commonLog, OS_LOG_TYPE_DEFAULT, "Handle first unlock", buf, 2u);
  }

  callOutQueue = self->_callOutQueue;
  BSDispatchQueueAssert();
  *buf = 0;
  v17 = buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CLBMobileKeybagManager__handleFirstUnlock__block_invoke;
  block[3] = &unk_278DBEA00;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(queue, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v17 + 5);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(buf, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __44__CLBMobileKeybagManager__handleFirstUnlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_queue_updateLockedState
{
  v12 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  BSDispatchQueueAssert();
  v4 = MKBGetDeviceLockStateInfo();
  lockedState = self->_lockedState;
  self->_lockedState = v4;

  commonLog = [MEMORY[0x277CFA5D0] commonLog];
  if (os_log_type_enabled(commonLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CLBMobileKeybagManager *)self _lockStateFromDictionary:self->_lockedState];
    if (v7 >= 8)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown: %ld", v7];
    }

    else
    {
      v8 = off_278DBEA98[v7];
    }

    *buf = 138412290;
    v11 = v8;
    _os_log_impl(&dword_24350A000, commonLog, OS_LOG_TYPE_DEFAULT, "Locked state: %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)_lockStateFromDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:*MEMORY[0x277D28B00]];
  integerValue = [v3 integerValue];
  v5 = integerValue;
  if (integerValue <= 7)
  {
    v5 = qword_243518948[integerValue];
  }

  return v5;
}

@end