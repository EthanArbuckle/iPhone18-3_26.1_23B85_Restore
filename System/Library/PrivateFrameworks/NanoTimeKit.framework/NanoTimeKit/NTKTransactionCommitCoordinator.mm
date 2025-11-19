@interface NTKTransactionCommitCoordinator
+ (BOOL)addTransactionCommitHandler:(id)a3;
+ (id)_sharedInstance;
+ (void)flushCommitHandlers;
- (BOOL)_addTransactionCommitHandler:(id)a3;
- (NTKTransactionCommitCoordinator)init;
- (void)_registerCATransactionCommitHandler;
@end

@implementation NTKTransactionCommitCoordinator

+ (BOOL)addTransactionCommitHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedInstance];
  v6 = [v5 _addTransactionCommitHandler:v4];

  return v6;
}

+ (id)_sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NTKTransactionCommitCoordinator__sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&_sharedInstance_onceToken_0, block);
  }

  v2 = _sharedInstance___coordinator;

  return v2;
}

void __50__NTKTransactionCommitCoordinator__sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _sharedInstance___coordinator;
  _sharedInstance___coordinator = v1;
}

- (NTKTransactionCommitCoordinator)init
{
  v6.receiver = self;
  v6.super_class = NTKTransactionCommitCoordinator;
  v2 = [(NTKTransactionCommitCoordinator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    commitHandlers = v2->_commitHandlers;
    v2->_commitHandlers = v3;
  }

  return v2;
}

- (BOOL)_addTransactionCommitHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [MEMORY[0x277CD9FF0] activate];
  v5 = [MEMORY[0x277CD9FF0] currentState];
  v6 = v5 & 3;
  if ((v5 & 3) != 0)
  {
    if (![(NSMutableArray *)self->_commitHandlers count])
    {
      [(NTKTransactionCommitCoordinator *)self _registerCATransactionCommitHandler];
    }

    commitHandlers = self->_commitHandlers;
    v8 = _Block_copy(v4);
    [(NSMutableArray *)commitHandlers addObject:v8];
  }

  else
  {
    v9 = v5;
    v10 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(NTKTransactionCommitCoordinator *)v9 _addTransactionCommitHandler:v10];
    }
  }

  return v6 != 0;
}

+ (void)flushCommitHandlers
{
  v2 = [a1 _sharedInstance];
  [v2 _registerCATransactionCommitHandler];
}

- (void)_registerCATransactionCommitHandler
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __70__NTKTransactionCommitCoordinator__registerCATransactionCommitHandler__block_invoke;
  v2[3] = &unk_27877DB10;
  v2[4] = self;
  [MEMORY[0x277CD9FF0] addCommitHandler:v2 forPhase:1];
}

uint64_t __70__NTKTransactionCommitCoordinator__registerCATransactionCommitHandler__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) enumerateObjectsUsingBlock:&__block_literal_global_81];
  v2 = *(*(a1 + 32) + 8);

  return [v2 removeAllObjects];
}

- (void)_addTransactionCommitHandler:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = v4;
  if ((a1 & 4) != 0)
  {
    ___StateDescription_block_invoke(v4, v4, @"flushed");
  }

  if ((a1 & 8) != 0)
  {
    ___StateDescription_block_invoke(v4, v5, @"committing");
  }

  v6 = [MEMORY[0x277CCACC8] callStackSymbols];
  v7[0] = 67109634;
  v7[1] = a1;
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Attempt to add implicit/explicit transaction commit handler in transaction state %d (%@) will FAIL. Call stack: %@", v7, 0x1Cu);
}

@end