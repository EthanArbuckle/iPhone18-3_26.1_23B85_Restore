@interface ML3DatabaseConnectionPool
- (BOOL)isClosed;
- (BOOL)isClosedWithNoActiveOrBusyConnections;
- (BOOL)isCurrentThreadConnectionInTransaction;
- (BOOL)ownsConnection:(id)connection;
- (ML3DatabaseConnectionPool)init;
- (ML3DatabaseConnectionPool)initWithDatabasePath:(id)path maxReaders:(unint64_t)readers maxWriters:(unint64_t)writers;
- (ML3DatabaseConnectionPoolDelegate)delegate;
- (id)_connectionForIdentifier:(id)identifier;
- (id)_connectionForWriting:(BOOL)writing useThreadConnection:(BOOL)connection storeThreadLocalConnection:(BOOL)localConnection;
- (id)_generateDiagnostic;
- (id)_localConnectionForThread:(id)thread;
- (id)debugDescription;
- (void)_closeConnectionsForOwningPoolClosed:(BOOL)closed andWaitForBusyConnections:(BOOL)connections;
- (void)_setConnection:(id)connection forIdentifier:(id)identifier;
- (void)_setLocalConnection:(id)connection forThread:(id)thread;
- (void)checkInConnection:(id)connection;
- (void)closeAllConnections;
- (void)dealloc;
- (void)lock;
- (void)lockAndCloseAllConnectionsForTermination;
- (void)setClosed:(BOOL)closed;
- (void)setConnectionsJournalingMode:(unint64_t)mode;
- (void)setUseDistantWriterConnections:(BOOL)connections;
- (void)unlock;
@end

@implementation ML3DatabaseConnectionPool

- (BOOL)isClosed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ML3DatabaseConnectionPool_isClosed__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (ML3DatabaseConnectionPoolDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setLocalConnection:(id)connection forThread:(id)thread
{
  connectionCopy = connection;
  threadCopy = thread;
  owningThread = [connectionCopy owningThread];

  if (owningThread)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    owningThread2 = [connectionCopy owningThread];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionPool.m" lineNumber:418 description:{@"Attempted to store local connection for thread %@ when it's already being marked as stored in thread %@", threadCopy, owningThread2}];
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ML3DatabaseConnectionPool__setLocalConnection_forThread___block_invoke;
  block[3] = &unk_278765C40;
  v16 = threadCopy;
  v17 = connectionCopy;
  selfCopy = self;
  v11 = connectionCopy;
  v12 = threadCopy;
  dispatch_sync(serialQueue, block);
}

void __59__ML3DatabaseConnectionPool__setLocalConnection_forThread___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) threadDictionary];
  v10 = [v2 objectForKey:@"ML3DatabaseConnectionPoolThreadStorageKey"];

  v3 = v10;
  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = [*(a1 + 32) threadDictionary];
    [v4 setObject:v11 forKey:@"ML3DatabaseConnectionPoolThreadStorageKey"];

    v3 = v11;
  }

  v5 = *(*(a1 + 48) + 40);
  v12 = v3;
  if (*(a1 + 40))
  {
    v6 = [v3 objectForKey:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 connection];
      v9 = [v8 isReadOnly];

      if (!v9)
      {
LABEL_8:

        goto LABEL_10;
      }

      [v7 setOwningThread:0];
    }

    [v12 setObject:*(a1 + 40) forKey:*(*(a1 + 48) + 40)];
    [*(a1 + 40) setOwningThread:*(a1 + 32)];
    goto LABEL_8;
  }

  [v3 removeObjectForKey:v5];
LABEL_10:
}

- (id)_localConnectionForThread:(id)thread
{
  threadCopy = thread;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__25846;
  v19 = __Block_byref_object_dispose__25847;
  v20 = 0;
  serialQueue = self->_serialQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ML3DatabaseConnectionPool__localConnectionForThread___block_invoke;
  v10[3] = &unk_278765C68;
  v11 = threadCopy;
  selfCopy = self;
  v13 = &v15;
  v14 = a2;
  v7 = threadCopy;
  dispatch_sync(serialQueue, v10);
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __55__ML3DatabaseConnectionPool__localConnectionForThread___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) threadDictionary];
  v9 = [v2 objectForKey:@"ML3DatabaseConnectionPoolThreadStorageKey"];

  if (v9)
  {
    v3 = [v9 objectForKey:*(*(a1 + 40) + 40)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = [*(*(*(a1 + 48) + 8) + 40) owningThread];
  if (v6 != *(a1 + 32))
  {
    v7 = [*(*(*(a1 + 48) + 8) + 40) borrowingThread];
    if (v7 == *(a1 + 32))
    {
    }

    else
    {
      v8 = *(*(*(a1 + 48) + 8) + 40);

      if (!v8)
      {
        goto LABEL_9;
      }

      v6 = [MEMORY[0x277CCA890] currentHandler];
      [v6 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"ML3DatabaseConnectionPool.m" lineNumber:411 description:{@"Connection subpool stored a thread-contested connection %@", *(*(*(a1 + 48) + 8) + 40)}];
    }
  }

LABEL_9:
}

- (void)_setConnection:(id)connection forIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ML3DatabaseConnectionPool__setConnection_forIdentifier___block_invoke;
  block[3] = &unk_278765C40;
  v12 = connectionCopy;
  selfCopy = self;
  v14 = identifierCopy;
  v9 = identifierCopy;
  v10 = connectionCopy;
  dispatch_sync(serialQueue, block);
}

uint64_t __58__ML3DatabaseConnectionPool__setConnection_forIdentifier___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 24);
  if (v2)
  {
    return [v3 setObject:v2 forKey:a1[6]];
  }

  else
  {
    return [v3 removeObjectForKey:a1[6]];
  }
}

- (id)_connectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__25846;
  v16 = __Block_byref_object_dispose__25847;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ML3DatabaseConnectionPool__connectionForIdentifier___block_invoke;
  block[3] = &unk_278765F28;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __54__ML3DatabaseConnectionPool__connectionForIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)_generateDiagnostic
{
  v3 = objc_alloc_init(_ML3MutableDatabaseConnectionPoolDiagnostic);
  [(_ML3DatabaseConnectionSubPool *)self->_readersSubPool handleDiagnostic:v3];
  [(_ML3DatabaseConnectionSubPool *)self->_writersSubPool handleDiagnostic:v3];

  return v3;
}

- (void)_closeConnectionsForOwningPoolClosed:(BOOL)closed andWaitForBusyConnections:(BOOL)connections
{
  connectionsCopy = connections;
  closedCopy = closed;
  v14 = *MEMORY[0x277D85DE8];
  v7 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543874;
    selfCopy = self;
    v10 = 1024;
    v11 = connectionsCopy;
    v12 = 1024;
    v13 = closedCopy;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Closing all connections and wait for busy connection=%{BOOL}u, owningPoolClosed=%{BOOL}u", &v8, 0x18u);
  }

  [(_ML3DatabaseConnectionSubPool *)self->_readersSubPool closeConnectionsForOwningPoolClosed:closedCopy andWaitForBusyConnections:connectionsCopy];
  [(_ML3DatabaseConnectionSubPool *)self->_writersSubPool closeConnectionsForOwningPoolClosed:closedCopy andWaitForBusyConnections:connectionsCopy];
}

- (BOOL)isClosedWithNoActiveOrBusyConnections
{
  v16 = *MEMORY[0x277D85DE8];
  isClosed = [(ML3DatabaseConnectionPool *)self isClosed];
  hasBusyConnections = [(_ML3DatabaseConnectionSubPool *)self->_readersSubPool hasBusyConnections];
  hasBusyConnections2 = [(_ML3DatabaseConnectionSubPool *)self->_writersSubPool hasBusyConnections];
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138544130;
    selfCopy = self;
    v10 = 1024;
    v11 = isClosed;
    v12 = 1024;
    v13 = hasBusyConnections;
    v14 = 1024;
    v15 = hasBusyConnections2;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Connection pool %{public}@ isClosed=%{BOOL}u, readerSubPoolHasBusyConnections=%{BOOL}u, writerSubPoolHasBusyConnections=%{BOOL}u.", &v8, 0x1Eu);
  }

  return isClosed && !hasBusyConnections && !hasBusyConnections2;
}

- (BOOL)ownsConnection:(id)connection
{
  uniqueIdentifier = [connection uniqueIdentifier];
  v5 = [(ML3DatabaseConnectionPool *)self _connectionForIdentifier:uniqueIdentifier];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (void)setClosed:(BOOL)closed
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ML3DatabaseConnectionPool_setClosed___block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __39__ML3DatabaseConnectionPool_setClosed___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setSubPoolIsClosed];
  result = [*(*(a1 + 32) + 16) setSubPoolIsClosed];
  *(*(a1 + 32) + 168) = 1;
  return result;
}

- (void)lockAndCloseAllConnectionsForTermination
{
  [(ML3DatabaseConnectionPool *)self setClosed:1];
  [(ML3DatabaseConnectionPool *)self lock];

  [(ML3DatabaseConnectionPool *)self _closeConnectionsForOwningPoolClosed:1 andWaitForBusyConnections:1];
}

- (void)unlock
{
  pthread_mutex_lock(&self->_poolLockMutex);
  self->_locked = 0;
  pthread_cond_broadcast(&self->_poolLockCondition);

  pthread_mutex_unlock(&self->_poolLockMutex);
}

- (void)lock
{
  pthread_mutex_lock(&self->_poolLockMutex);
  self->_locked = 1;

  pthread_mutex_unlock(&self->_poolLockMutex);
}

- (void)closeAllConnections
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(ML3DatabaseConnectionPool *)self isClosed])
  {
    v3 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "Database connection pool %{public}@ is closed. You may no longer use it.", &v4, 0xCu);
    }
  }

  else
  {

    [(ML3DatabaseConnectionPool *)self _closeAllConnectionsAndWaitForBusyConnections:1];
  }
}

- (void)checkInConnection:(id)connection
{
  v56[1] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  uniqueIdentifier = [connectionCopy uniqueIdentifier];
  v6 = [(ML3DatabaseConnectionPool *)self _connectionForIdentifier:uniqueIdentifier];

  if (v6)
  {
    if (!-[ML3DatabaseConnectionPool isClosed](self, "isClosed") || (([v6 connection], v7 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v7, "isReadOnly")) ? (v8 = self->_writersSubPool) : (v8 = self->_readersSubPool), v12 = -[_ML3DatabaseConnectionSubPool isBusyConnection:](v8, "isBusyConnection:", v6), v7, v12))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(isClosed) = 0;
      serialQueue = self->_serialQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__ML3DatabaseConnectionPool_checkInConnection___block_invoke;
      block[3] = &unk_278766080;
      v14 = v6;
      v41 = v14;
      v42 = buf;
      dispatch_sync(serialQueue, block);
      if (*(*&buf[8] + 24) != 1)
      {
LABEL_37:

        _Block_object_dispose(buf, 8);
        goto LABEL_38;
      }

      owningThread = [v14 owningThread];
      v16 = owningThread == 0;

      if (!v16)
      {
        owningThread2 = [v14 owningThread];
        [(ML3DatabaseConnectionPool *)self _setLocalConnection:0 forThread:owningThread2];

        [v14 setOwningThread:0];
      }

      connection = [v14 connection];
      uniqueIdentifier2 = [connection uniqueIdentifier];
      [(ML3DatabaseConnectionPool *)self _setConnection:0 forIdentifier:uniqueIdentifier2];

      if ([(ML3DatabaseConnectionPool *)self isClosed])
      {
        v20 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 138543874;
          selfCopy = self;
          v45 = 2048;
          v46 = connectionCopy;
          v47 = 2114;
          v48 = v14;
          _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ closing connection=%p, wrapper=%{public}@", v43, 0x20u);
        }

        connection2 = [v14 connection];
        [connection2 isReadOnly];

        readersSubPool = self->_readersSubPool;
LABEL_18:
        [(_ML3DatabaseConnectionSubPool *)readersSubPool closeConnection:v14];
        goto LABEL_37;
      }

      connection3 = [v14 connection];
      isReadOnly = [connection3 isReadOnly];

      v30 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (isReadOnly)
      {
        if (v31)
        {
          v32 = self->_readersSubPool;
          *v43 = 138543618;
          selfCopy = v32;
          v45 = 2114;
          v46 = v14;
          _os_log_impl(&dword_22D2FA000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ checking in=%{public}@", v43, 0x16u);
        }

        readersSubPool = self->_readersSubPool;
      }

      else
      {
        if (v31)
        {
          writersSubPool = self->_writersSubPool;
          *v43 = 138543618;
          selfCopy = writersSubPool;
          v45 = 2114;
          v46 = v14;
          _os_log_impl(&dword_22D2FA000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ checking in=%{public}@", v43, 0x16u);
        }

        connection4 = [v14 connection];
        _closeConnectionWhenCheckingIn = [connection4 _closeConnectionWhenCheckingIn];

        readersSubPool = self->_writersSubPool;
        if (_closeConnectionWhenCheckingIn)
        {
          goto LABEL_18;
        }
      }

      [(_ML3DatabaseConnectionSubPool *)readersSubPool checkInConnection:v14];
      goto LABEL_37;
    }

    v23 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = connectionCopy;
      *&buf[22] = 1024;
      isClosed = [(ML3DatabaseConnectionPool *)self isClosed];
      _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Cannot check in connection %{public}@. closed=%{BOOL}u", buf, 0x1Cu);
    }

    v24 = MEMORY[0x277D27EF0];
    v51[0] = @"ML3DatabaseConnection";
    if (connectionCopy)
    {
      v11 = [connectionCopy debugDescription];
    }

    else
    {
      v11 = @"nil";
    }

    v52[0] = v11;
    v51[1] = @"connectionWrapper";
    v33 = [v6 debugDescription];
    v52[1] = v33;
    v51[2] = @"ML3DatabaseConnectionPool";
    v34 = [(ML3DatabaseConnectionPool *)self debugDescription];
    v52[2] = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
    v53 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    [v24 snapshotWithDomain:*MEMORY[0x277D27EC0] type:@"Bug" subType:@"NotCheckingInConnection" context:@"Connection not in busy pool" triggerThresholdValues:0 events:v36 completion:0];

    if (connectionCopy)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = connectionCopy;
      *&buf[22] = 1024;
      isClosed = [(ML3DatabaseConnectionPool *)self isClosed];
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Cannot check in connection %{public}@ as we don't have a valid connection wrapper. closed=%{BOOL}u", buf, 0x1Cu);
    }

    v10 = MEMORY[0x277D27EF0];
    v54[0] = @"ML3DatabaseConnection";
    if (connectionCopy)
    {
      v11 = [connectionCopy debugDescription];
    }

    else
    {
      v11 = @"nil";
    }

    v55[0] = v11;
    v55[1] = @"nil";
    v54[1] = @"connectionWrapper";
    v54[2] = @"ML3DatabaseConnectionPool";
    v25 = [(ML3DatabaseConnectionPool *)self debugDescription];
    v55[2] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];
    v56[0] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
    [v10 snapshotWithDomain:*MEMORY[0x277D27EC0] type:@"Bug" subType:@"NotCheckingInConnection" context:@"No connection wrapper" triggerThresholdValues:0 events:v27 completion:0];

    if (connectionCopy)
    {
LABEL_25:
    }
  }

LABEL_38:
}

uint64_t __47__ML3DatabaseConnectionPool_checkInConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUseCount:{objc_msgSend(*(a1 + 32), "useCount") - 1}];
  result = [*(a1 + 32) useCount];
  *(*(*(a1 + 40) + 8) + 24) = result == 0;
  return result;
}

- (id)_connectionForWriting:(BOOL)writing useThreadConnection:(BOOL)connection storeThreadLocalConnection:(BOOL)localConnection
{
  localConnectionCopy = localConnection;
  connectionCopy = connection;
  writingCopy = writing;
  v29 = *MEMORY[0x277D85DE8];
  if (![(ML3DatabaseConnectionPool *)self isClosed])
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    if (connectionCopy)
    {
      v11 = [(ML3DatabaseConnectionPool *)self _localConnectionForThread:currentThread];
    }

    else
    {
      v11 = 0;
    }

    pthread_mutex_lock(&self->_poolLockMutex);
    while (self->_locked)
    {
      pthread_cond_wait(&self->_poolLockCondition, &self->_poolLockMutex);
    }

    pthread_mutex_unlock(&self->_poolLockMutex);
    if (v11)
    {
      if (!writingCopy || ([v11 connection], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isReadOnly"), v12, !v13))
      {
        v14 = v11;
LABEL_26:
        serialQueue = self->_serialQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __98__ML3DatabaseConnectionPool__connectionForWriting_useThreadConnection_storeThreadLocalConnection___block_invoke;
        block[3] = &unk_278765FB8;
        v26 = v14;
        v23 = v14;
        dispatch_sync(serialQueue, block);
        connection = [v23 connection];

        goto LABEL_27;
      }

      buf[0] = 0;
    }

    else
    {
      buf[0] = 0;
      if (!writingCopy)
      {
        v15 = 8;
        if (!self->_maxReaders)
        {
          v15 = 16;
        }

        goto LABEL_19;
      }
    }

    v15 = 16;
LABEL_19:
    v16 = *(&self->super.isa + v15);
    v14 = [v16 checkoutConnection:buf];

    if (buf[0] == 1)
    {
      connection2 = [v14 connection];
      [connection2 _setOwningPool:self];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        connection3 = [v14 connection];
        [WeakRetained connectionPool:self createdNewConnection:connection3];
      }
    }

    if (localConnectionCopy)
    {
      [(ML3DatabaseConnectionPool *)self _setLocalConnection:v14 forThread:currentThread];
    }

    connection4 = [v14 connection];
    uniqueIdentifier = [connection4 uniqueIdentifier];
    [(ML3DatabaseConnectionPool *)self _setConnection:v14 forIdentifier:uniqueIdentifier];

    goto LABEL_26;
  }

  currentThread = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(currentThread, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D2FA000, currentThread, OS_LOG_TYPE_DEFAULT, "Database connection pool %{public}@ is closed. You may no longer use it.", buf, 0xCu);
  }

  connection = 0;
LABEL_27:

  return connection;
}

uint64_t __98__ML3DatabaseConnectionPool__connectionForWriting_useThreadConnection_storeThreadLocalConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 useCount] + 1;

  return [v1 setUseCount:v2];
}

- (BOOL)isCurrentThreadConnectionInTransaction
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  v4 = [(ML3DatabaseConnectionPool *)self _localConnectionForThread:currentThread];

  connection = [v4 connection];
  isInTransaction = [connection isInTransaction];

  return isInTransaction;
}

- (void)setUseDistantWriterConnections:(BOOL)connections
{
  self->_useDistantWriterConnections = connections;
  [(_ML3DatabaseConnectionSubPool *)self->_writersSubPool closeConnectionsAndWaitForBusyConnections:1];
  useDistantWriterConnections = self->_useDistantWriterConnections;
  writersSubPool = self->_writersSubPool;

  [(_ML3DatabaseConnectionSubPool *)writersSubPool setUseDistantConnections:useDistantWriterConnections];
}

- (void)setConnectionsJournalingMode:(unint64_t)mode
{
  self->_connectionsJournalingMode = mode;
  [(_ML3DatabaseConnectionSubPool *)self->_readersSubPool setConnectionsJournalingMode:?];
  connectionsJournalingMode = self->_connectionsJournalingMode;
  writersSubPool = self->_writersSubPool;

  [(_ML3DatabaseConnectionSubPool *)writersSubPool setConnectionsJournalingMode:connectionsJournalingMode];
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"ML3DatabaseConnectionPool=%p, maxReaders=%d, maxWriters=%d, journalingMode=%d, closed=%d, useDistantWriterConnections=%d, closed=%d", self, self->_maxReaders, self->_maxWriters, -[ML3DatabaseConnectionPool isClosed](self, "isClosed"), self->_connectionsJournalingMode, self->_useDistantWriterConnections, self->_closed];
  [v3 appendString:@"\n"];
  v4 = [(_ML3DatabaseConnectionSubPool *)self->_readersSubPool description];
  [v3 appendFormat:@"readerSubPool=%@", v4];

  [v3 appendString:@"\n"];
  v5 = [(_ML3DatabaseConnectionSubPool *)self->_writersSubPool description];
  [v3 appendFormat:@"writerSubPool=%@", v5];

  return v3;
}

- (void)dealloc
{
  if (![(ML3DatabaseConnectionPool *)self isClosed])
  {
    [(ML3DatabaseConnectionPool *)self lockAndCloseAllConnectionsForTermination];
  }

  pthread_cond_destroy(&self->_poolLockCondition);
  pthread_mutex_destroy(&self->_poolLockMutex);
  v3.receiver = self;
  v3.super_class = ML3DatabaseConnectionPool;
  [(ML3DatabaseConnectionPool *)&v3 dealloc];
}

- (ML3DatabaseConnectionPool)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"-init is unsupported. Use -initWithDatabasePath: instead."];

  return 0;
}

- (ML3DatabaseConnectionPool)initWithDatabasePath:(id)path maxReaders:(unint64_t)readers maxWriters:(unint64_t)writers
{
  pathCopy = path;
  v26.receiver = self;
  v26.super_class = ML3DatabaseConnectionPool;
  v10 = [(ML3DatabaseConnectionPool *)&v26 init];
  if (v10)
  {
    v11 = [pathCopy copy];
    databasePath = v10->_databasePath;
    v10->_databasePath = v11;

    v10->_maxReaders = readers;
    v10->_maxWriters = writers;
    v10->_connectionsJournalingMode = 1;
    v10->_useDistantWriterConnections = __daemonProcessInfo == 0;
    v13 = [[_ML3DatabaseConnectionSubPool alloc] initWithDatabasePath:v10->_databasePath maxConcurrentConnections:v10->_maxReaders];
    readersSubPool = v10->_readersSubPool;
    v10->_readersSubPool = v13;

    [(_ML3DatabaseConnectionSubPool *)v10->_readersSubPool setUseReadOnlyConnections:1];
    [(_ML3DatabaseConnectionSubPool *)v10->_readersSubPool setUseDistantConnections:0];
    [(_ML3DatabaseConnectionSubPool *)v10->_readersSubPool setConnectionsJournalingMode:v10->_connectionsJournalingMode];
    v15 = [[_ML3DatabaseConnectionSubPool alloc] initWithDatabasePath:v10->_databasePath maxConcurrentConnections:v10->_maxWriters];
    writersSubPool = v10->_writersSubPool;
    v10->_writersSubPool = v15;

    [(_ML3DatabaseConnectionSubPool *)v10->_writersSubPool setUseReadOnlyConnections:0];
    [(_ML3DatabaseConnectionSubPool *)v10->_writersSubPool setUseDistantConnections:v10->_useDistantWriterConnections];
    [(_ML3DatabaseConnectionSubPool *)v10->_writersSubPool setConnectionsJournalingMode:v10->_connectionsJournalingMode];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifiersConnectionsMap = v10->_identifiersConnectionsMap;
    v10->_identifiersConnectionsMap = v17;

    v19 = dispatch_queue_create("com.apple.MusicLibrary.ML3DatabaseConectionPool.serialQueue", 0);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v19;

    v21 = objc_alloc_init(MEMORY[0x277CCAD78]);
    poolStorageKey = v10->_poolStorageKey;
    v10->_poolStorageKey = v21;

    v10->_closed = 0;
    if (pthread_cond_init(&v10->_poolLockCondition, 0))
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"ML3DatabaseConnectionPool.m" lineNumber:86 description:@"Failed to initialize condition variable."];
    }

    if (pthread_mutex_init(&v10->_poolLockMutex, 0))
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v10 file:@"ML3DatabaseConnectionPool.m" lineNumber:89 description:@"Failed to initialize mutex."];
    }
  }

  return v10;
}

@end