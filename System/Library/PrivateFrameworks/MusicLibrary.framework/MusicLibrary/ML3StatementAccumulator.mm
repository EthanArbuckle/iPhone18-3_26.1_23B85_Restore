@interface ML3StatementAccumulator
- (BOOL)_onQueueFlushAndWait:(BOOL)wait;
- (BOOL)enqueueStatement:(id)statement;
- (BOOL)flushAndWait:(BOOL)wait;
- (ML3StatementAccumulator)init;
- (ML3StatementAccumulator)initWithConnection:(id)connection;
- (void)dealloc;
@end

@implementation ML3StatementAccumulator

- (BOOL)_onQueueFlushAndWait:(BOOL)wait
{
  waitCopy = wait;
  v30[1] = *MEMORY[0x277D85DE8];
  if (!self->_databasePath)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3StatementAccumulator.m" lineNumber:84 description:@"Attempted to flush database statements without a specified database path."];
  }

  v5 = 1;
  if ([(NSMutableArray *)self->_statementQueue count])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    v6 = [(NSMutableArray *)self->_statementQueue copy];
    [(NSMutableArray *)self->_statementQueue removeAllObjects];
    v29 = @"MLDatabaseOperationAttributeStatementsKey";
    v30[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    databasePath = self->_databasePath;
    v27[1] = @"MLDatabaseOperationOptionPriorityLevelKey";
    v28[0] = databasePath;
    v27[0] = @"MLDatabaseOperationOptionDatabasePathKey";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_priorityLevel];
    v28[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v11 = [v10 mutableCopy];

    existingTransactionIdentifier = self->_existingTransactionIdentifier;
    if (existingTransactionIdentifier)
    {
      [v11 setObject:existingTransactionIdentifier forKey:@"MLDatabaseOperationOptionTransactionIdentifierKey"];
    }

    v13 = 0;
    if (waitCopy)
    {
      v13 = dispatch_semaphore_create(0);
    }

    xpcService = self->_xpcService;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__ML3StatementAccumulator__onQueueFlushAndWait___block_invoke;
    v19[3] = &unk_278765F90;
    v21 = &v23;
    v22 = waitCopy;
    v15 = v13;
    v20 = v15;
    [(MLMediaLibraryService *)xpcService performDatabaseOperation:2 withAttributes:v7 options:v11 completionHandler:v19];
    if (waitCopy)
    {
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    }

    v5 = *(v24 + 24);

    _Block_object_dispose(&v23, 8);
  }

  return v5 & 1;
}

void __48__ML3StatementAccumulator__onQueueFlushAndWait___block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Error flushing statements in accumulator: %{public}@", &v7, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if (*(a1 + 48) == 1)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (BOOL)flushAndWait:(BOOL)wait
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ML3StatementAccumulator_flushAndWait___block_invoke;
  block[3] = &unk_278765F50;
  block[4] = self;
  block[5] = &v8;
  waitCopy = wait;
  dispatch_sync(serialQueue, block);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __40__ML3StatementAccumulator_flushAndWait___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _onQueueFlushAndWait:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)enqueueStatement:(id)statement
{
  v19 = *MEMORY[0x277D85DE8];
  statementCopy = statement;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  if ([(ML3DatabaseConnection *)self->_connection transactionMarkedForRollBack])
  {
    *(v14 + 24) = 0;
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [statementCopy sql];
      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "failing to enque statement inside a transaction marked for rollback. sql=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__ML3StatementAccumulator_enqueueStatement___block_invoke;
    block[3] = &unk_278765F28;
    block[4] = self;
    v11 = statementCopy;
    v12 = &v13;
    dispatch_sync(serialQueue, block);
  }

  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v8 & 1;
}

void *__44__ML3StatementAccumulator_enqueueStatement___block_invoke(void *a1)
{
  [*(a1[4] + 32) addObject:a1[5]];
  v2 = [*(a1[4] + 32) count];
  result = a1[4];
  if (v2 >= result[3])
  {
    result = [result _onQueueFlushAndWait:1];
    *(*(a1[6] + 8) + 24) = result;
  }

  return result;
}

- (void)dealloc
{
  [(ML3StatementAccumulator *)self flushAndWait:1];
  v3.receiver = self;
  v3.super_class = ML3StatementAccumulator;
  [(ML3StatementAccumulator *)&v3 dealloc];
}

- (ML3StatementAccumulator)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"-init is invalid. Use -initWithDatabasePath: instead."];

  return 0;
}

- (ML3StatementAccumulator)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v19.receiver = self;
  v19.super_class = ML3StatementAccumulator;
  v6 = [(ML3StatementAccumulator *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_statementThreshold = 20;
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6->_statementThreshold];
    statementQueue = v7->_statementQueue;
    v7->_statementQueue = v8;

    objc_storeStrong(&v7->_connection, connection);
    databasePath = [connectionCopy databasePath];
    v11 = [databasePath copy];
    databasePath = v7->_databasePath;
    v7->_databasePath = v11;

    existingTransactionIdentifier = v7->_existingTransactionIdentifier;
    v7->_existingTransactionIdentifier = 0;

    v7->_priorityLevel = 0;
    v14 = +[MLMediaLibraryService sharedMediaLibraryService];
    xpcService = v7->_xpcService;
    v7->_xpcService = v14;

    v16 = dispatch_queue_create("com.apple.MusicLibrary.ML3StatementAccumulator", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v16;
  }

  return v7;
}

@end