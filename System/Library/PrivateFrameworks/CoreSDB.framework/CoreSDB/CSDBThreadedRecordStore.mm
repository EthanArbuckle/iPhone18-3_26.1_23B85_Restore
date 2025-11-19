@interface CSDBThreadedRecordStore
- (void)_teardownDatabaseOnQueue;
- (void)dealloc;
- (void)performBlock:(id)a3 afterDelay:(double)a4;
- (void)registerClass:(id *)a3;
- (void)setupDatabaseWithAllowLocalMigration:(BOOL)a3 pathBlock:(id)a4 setupStoreHandler:(void *)a5 connectionInitializer:(void *)a6 versionChecker:(void *)a7 migrationHandler:(void *)a8 schemaVersion:(int)a9 dataProtectionClass:(unsigned int)a10 registerBlock:(id)a11 exclusiveOwnership:(BOOL)a12;
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

- (void)setupDatabaseWithAllowLocalMigration:(BOOL)a3 pathBlock:(id)a4 setupStoreHandler:(void *)a5 connectionInitializer:(void *)a6 versionChecker:(void *)a7 migrationHandler:(void *)a8 schemaVersion:(int)a9 dataProtectionClass:(unsigned int)a10 registerBlock:(id)a11 exclusiveOwnership:(BOOL)a12
{
  recordStoreQueue = self->_recordStoreQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2478AC9E4;
  block[3] = &unk_278EB33B8;
  block[4] = self;
  block[5] = a4;
  v14 = a9;
  v15 = a10;
  block[8] = a6;
  block[9] = a7;
  block[10] = a8;
  v16 = a3;
  block[6] = a11;
  block[7] = a5;
  v17 = a12;
  dispatch_sync(recordStoreQueue, block);
}

- (void)registerClass:(id *)a3
{
  if (self->_wantsRegister)
  {
    CSDBRecordStoreRegisterClass(self->_recordStore, a3);
  }
}

- (void)performBlock:(id)a3 afterDelay:(double)a4
{
  if (a3)
  {
    v6 = objc_msgSend_copy(a3, a2, a3);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2478ACFF0;
    v9[3] = &unk_278EB33E0;
    v9[4] = self;
    v9[5] = v6;
    v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v9);
    objc_msgSend_performBlock_afterDelay_(self->_thread, v8, v7, a4);
  }
}

@end