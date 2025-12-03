@interface CSDBThreadedRecordStore
- (void)_teardownDatabaseOnQueue;
- (void)dealloc;
- (void)performBlock:(id)block afterDelay:(double)delay;
- (void)registerClass:(id *)class;
- (void)setupDatabaseWithAllowLocalMigration:(BOOL)migration pathBlock:(id)block setupStoreHandler:(void *)handler connectionInitializer:(void *)initializer versionChecker:(void *)checker migrationHandler:(void *)migrationHandler schemaVersion:(int)version dataProtectionClass:(unsigned int)self0 registerBlock:(id)self1 exclusiveOwnership:(BOOL)self2;
- (void)teardownDatabase;
@end

@implementation CSDBThreadedRecordStore

- (void)teardownDatabase
{
  recordStoreQueue = self->_recordStoreQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2478A0B28;
  block[3] = &unk_278EB3308;
  block[4] = self;
  dispatch_sync(recordStoreQueue, block);
}

- (void)_teardownDatabaseOnQueue
{
  recordStore = self->_recordStore;
  if (recordStore)
  {
    CSDBRecordStoreDestroy(recordStore);
    self->_recordStore = 0;
  }
}

- (void)dealloc
{
  recordStoreQueue = self->_recordStoreQueue;
  if (recordStoreQueue)
  {
    dispatch_release(recordStoreQueue);
  }

  objc_msgSend__teardownDatabaseOnQueue(self, a2, v2);

  v5.receiver = self;
  v5.super_class = CSDBThreadedRecordStore;
  [(CSDBThreadedRecordStore *)&v5 dealloc];
}

- (void)setupDatabaseWithAllowLocalMigration:(BOOL)migration pathBlock:(id)block setupStoreHandler:(void *)handler connectionInitializer:(void *)initializer versionChecker:(void *)checker migrationHandler:(void *)migrationHandler schemaVersion:(int)version dataProtectionClass:(unsigned int)self0 registerBlock:(id)self1 exclusiveOwnership:(BOOL)self2
{
  recordStoreQueue = self->_recordStoreQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2478AC9E4;
  block[3] = &unk_278EB33B8;
  block[4] = self;
  block[5] = block;
  versionCopy = version;
  classCopy = class;
  block[8] = initializer;
  block[9] = checker;
  block[10] = migrationHandler;
  migrationCopy = migration;
  block[6] = registerBlock;
  block[7] = handler;
  ownershipCopy = ownership;
  dispatch_sync(recordStoreQueue, block);
}

- (void)registerClass:(id *)class
{
  if (self->_wantsRegister)
  {
    CSDBRecordStoreRegisterClass(self->_recordStore, class);
  }
}

- (void)performBlock:(id)block afterDelay:(double)delay
{
  if (block)
  {
    v6 = objc_msgSend_copy(block, a2, block);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2478ACFF0;
    v9[3] = &unk_278EB33E0;
    v9[4] = self;
    v9[5] = v6;
    v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v9);
    objc_msgSend_performBlock_afterDelay_(self->_thread, v8, v7, delay);
  }
}

@end