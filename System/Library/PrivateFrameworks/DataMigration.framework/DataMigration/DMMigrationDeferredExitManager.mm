@interface DMMigrationDeferredExitManager
+ (id)_serialQueue;
- (BOOL)_isDeferringExit;
- (void)_resetGlobalState;
- (void)cancelDeferredExitWithConnection:(id)connection;
- (void)deferExitWithConnection:(id)connection;
- (void)migrationDidEnd;
- (void)migrationDidStart;
@end

@implementation DMMigrationDeferredExitManager

+ (id)_serialQueue
{
  if (_serialQueue_onceToken != -1)
  {
    +[DMMigrationDeferredExitManager _serialQueue];
  }

  v3 = _serialQueue_serialQueue;

  return v3;
}

uint64_t __46__DMMigrationDeferredExitManager__serialQueue__block_invoke()
{
  _isMigrating_onSerialQueue = 0;
  _shouldDefer_onSerialQueue = 0;
  v0 = _transaction_onSerialQueue;
  _transaction_onSerialQueue = 0;

  v1 = _transactionIdentifier_onSerialQueue;
  _transactionIdentifier_onSerialQueue = 0;

  _serialQueue_serialQueue = dispatch_queue_create("com.apple.datamigrator.deferredExitManager", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)migrationDidStart
{
  v2 = +[DMMigrationDeferredExitManager _serialQueue];
  dispatch_sync(v2, &__block_literal_global_4);
}

- (void)migrationDidEnd
{
  v3 = +[DMMigrationDeferredExitManager _serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DMMigrationDeferredExitManager_migrationDidEnd__block_invoke;
  block[3] = &unk_278855148;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __49__DMMigrationDeferredExitManager_migrationDidEnd__block_invoke(uint64_t a1)
{
  _DMLogFunc(v1, 7, @"migrationDidEnd");
  _isMigrating_onSerialQueue = 0;
  if (_shouldDefer_onSerialQueue == 1)
  {
    _shouldDefer_onSerialQueue = 0;
    v3 = os_transaction_create();
    v4 = _transaction_onSerialQueue;
    _transaction_onSerialQueue = v3;

    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];

    objc_storeStrong(&_transactionIdentifier_onSerialQueue, v6);
    v7 = [*(a1 + 32) _deferralDuration];
    v8 = dispatch_time(0, 1000000000 * [v7 unsignedIntegerValue]);
    v9 = +[DMMigrationDeferredExitManager _serialQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__DMMigrationDeferredExitManager_migrationDidEnd__block_invoke_2;
    v12[3] = &unk_278855120;
    v10 = *(a1 + 32);
    v13 = v6;
    v14 = v10;
    v11 = v6;
    dispatch_after(v8, v9, v12);
  }
}

void __49__DMMigrationDeferredExitManager_migrationDidEnd__block_invoke_2(uint64_t a1)
{
  if (_transaction_onSerialQueue && [_transactionIdentifier_onSerialQueue isEqualToString:*(a1 + 32)])
  {
    _DMLogFunc(v1, 7, @"deferred exit did timeout. will end transaction and exit");
    v3 = _transaction_onSerialQueue;
    _transaction_onSerialQueue = 0;

    v4 = _transactionIdentifier_onSerialQueue;
    _transactionIdentifier_onSerialQueue = 0;

    v5 = *(a1 + 40);

    [v5 _exitClean];
  }

  else
  {

    _DMLogFunc(v1, 7, @"deferred exit timer fired for stale transaction");
  }
}

- (void)deferExitWithConnection:(id)connection
{
  if ([connection hasEntitlement:@"com.apple.datamigrator.deferexit"])
  {
    v4 = +[DMMigrationDeferredExitManager _serialQueue];
    dispatch_sync(v4, &__block_literal_global_20);
  }

  else
  {

    _DMLogFunc(v3, 3, @"deferExitWithConnection: client not entitled");
  }
}

void __58__DMMigrationDeferredExitManager_deferExitWithConnection___block_invoke()
{
  if (_isMigrating_onSerialQueue == 1)
  {
    _DMLogFunc(v0, 7, @"deferExitWithConnection: will defer exit when migration completes");
    _shouldDefer_onSerialQueue = 1;
  }

  else
  {

    _DMLogFunc(v0, 3, @"deferExitWithConnection: not migrating");
  }
}

- (void)cancelDeferredExitWithConnection:(id)connection
{
  if ([connection hasEntitlement:@"com.apple.datamigrator.deferexit"])
  {
    v5 = +[DMMigrationDeferredExitManager _serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__DMMigrationDeferredExitManager_cancelDeferredExitWithConnection___block_invoke;
    block[3] = &unk_278855148;
    block[4] = self;
    dispatch_sync(v5, block);
  }

  else
  {

    _DMLogFunc(v3, 3, @"cancelDeferredExitWithConnection: client not entitled");
  }
}

void __67__DMMigrationDeferredExitManager_cancelDeferredExitWithConnection___block_invoke(uint64_t a1)
{
  _shouldDefer_onSerialQueue = 0;
  if (_transaction_onSerialQueue)
  {
    _DMLogFunc(v1, 7, @"cancelDeferredExitWithConnection: will end transaction and exit");
    v3 = _transaction_onSerialQueue;
    _transaction_onSerialQueue = 0;

    v4 = _transactionIdentifier_onSerialQueue;
    _transactionIdentifier_onSerialQueue = 0;

    v5 = *(a1 + 32);

    [v5 _exitClean];
  }

  else
  {

    _DMLogFunc(v1, 7, @"cancelDeferredExitWithConnection: no transaction to end");
  }
}

- (void)_resetGlobalState
{
  v2 = +[DMMigrationDeferredExitManager _serialQueue];
  dispatch_sync(v2, &__block_literal_global_40);
}

void __51__DMMigrationDeferredExitManager__resetGlobalState__block_invoke()
{
  _isMigrating_onSerialQueue = 0;
  _shouldDefer_onSerialQueue = 0;
  v0 = _transaction_onSerialQueue;
  _transaction_onSerialQueue = 0;

  v1 = _transactionIdentifier_onSerialQueue;
  _transactionIdentifier_onSerialQueue = 0;
}

- (BOOL)_isDeferringExit
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = +[DMMigrationDeferredExitManager _serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DMMigrationDeferredExitManager__isDeferringExit__block_invoke;
  block[3] = &unk_278855170;
  block[4] = &v5;
  dispatch_sync(v2, block);

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end