@interface _ML3DatabaseConnectionSubPool
- (BOOL)hasBusyConnections;
- (BOOL)isBusyConnection:(id)a3;
- (_ML3DatabaseConnectionSubPool)init;
- (_ML3DatabaseConnectionSubPool)initWithDatabasePath:(id)a3 maxConcurrentConnections:(unint64_t)a4;
- (id)_checkoutConnection:(BOOL *)a3 ignoreSubPoolClosedState:(BOOL)a4;
- (void)_handleDatabaseDeletion;
- (void)checkInConnection:(id)a3 returnToPool:(BOOL)a4;
- (void)closeConnection:(id)a3;
- (void)closeConnectionsForOwningPoolClosed:(BOOL)a3 andWaitForBusyConnections:(BOOL)a4;
- (void)dealloc;
- (void)handleDiagnostic:(id)a3;
- (void)setSubPoolIsClosed;
@end

@implementation _ML3DatabaseConnectionSubPool

- (id)_checkoutConnection:(BOOL *)a3 ignoreSubPoolClosedState:(BOOL)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__25846;
  v18 = __Block_byref_object_dispose__25847;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  checkoutQueue = self->_checkoutQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78___ML3DatabaseConnectionSubPool__checkoutConnection_ignoreSubPoolClosedState___block_invoke;
  v8[3] = &unk_278765D60;
  v9 = a4;
  v8[4] = self;
  v8[5] = &v14;
  v8[6] = &v10;
  dispatch_sync(checkoutQueue, v8);
  if (a3)
  {
    *a3 = *(v11 + 24);
  }

  v6 = v15[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

- (void)_handleDatabaseDeletion
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "Connection subpool %{public}@ closing all connections.", &v4, 0xCu);
  }

  [(_ML3DatabaseConnectionSubPool *)self closeConnectionsAndWaitForBusyConnections:0];
}

- (void)setSubPoolIsClosed
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___ML3DatabaseConnectionSubPool_setSubPoolIsClosed__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (BOOL)isBusyConnection:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  checkinQueue = self->_checkinQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___ML3DatabaseConnectionSubPool_isBusyConnection___block_invoke;
  block[3] = &unk_278765F28;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(checkinQueue, block);
  LOBYTE(checkinQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return checkinQueue;
}

- (void)handleDiagnostic:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50___ML3DatabaseConnectionSubPool_handleDiagnostic___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)closeConnectionsForOwningPoolClosed:(BOOL)a3 andWaitForBusyConnections:(BOOL)a4
{
  v26 = a4;
  v4 = a3;
  v51 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v7 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSMutableSet *)self->_availableConnections debugDescription];
    v9 = [(NSMutableSet *)self->_busyConnections debugDescription];
    *buf = 134219010;
    v45 = self;
    v46 = 1024;
    *v47 = v4;
    *&v47[4] = 1024;
    *&v47[6] = v26;
    *v48 = 2114;
    *&v48[2] = v8;
    v49 = 2114;
    v50 = v9;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "ML3DatabaseConnectionSubPool=%p closeConnectionsAndWaitForBusyConnections owningPoolClosed=%{BOOL}u, waitForBusyConnections=%{BOOL}u,_availableConnections(count)=%{public}@, _busyConnections=%{public}@", buf, 0x2Cu);
  }

  v10 = self;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95___ML3DatabaseConnectionSubPool_closeConnectionsForOwningPoolClosed_andWaitForBusyConnections___block_invoke;
  block[3] = &unk_278765D10;
  block[4] = self;
  v37 = v4;
  v38 = v26;
  v25 = v6;
  v34 = v25;
  v12 = v5;
  v35 = v12;
  v36 = &v39;
  dispatch_sync(serialQueue, block);
  if (v4)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __95___ML3DatabaseConnectionSubPool_closeConnectionsForOwningPoolClosed_andWaitForBusyConnections___block_invoke_245;
    v32[3] = &unk_278765D38;
    v32[4] = self;
    [v25 enumerateObjectsUsingBlock:v32];
    [(NSMutableSet *)self->_availableConnections removeAllObjects];
  }

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_maxConcurrentConnections];
  if (v26 && *(v40 + 24) == 1 && self->_maxConcurrentConnections)
  {
    v14 = 0;
    do
    {
      buf[0] = 0;
      if (v4)
      {
        [(_ML3DatabaseConnectionSubPool *)v10 _checkoutConnection:buf ignoreSubPoolClosedState:1];
      }

      else
      {
        [(_ML3DatabaseConnectionSubPool *)v10 checkoutConnection:buf];
      }
      v15 = ;
      if (v15)
      {
        [v12 addObject:v15];
        if (buf[0] == 1)
        {
          [v13 addObject:v15];
        }
      }

      ++v14;
      v10 = self;
    }

    while (self->_maxConcurrentConnections > v14);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v43 count:16];
  if (v17)
  {
    v18 = *v29;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        v21 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v20 debugDescription];
          v23 = [v13 containsObject:v20];
          *buf = 138543874;
          v45 = self;
          v46 = 2114;
          *v47 = v22;
          *&v47[8] = 1024;
          *v48 = v23 ^ 1;
          _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ closing open connection=%{public}@, returnToPool=%{BOOL}u", buf, 0x1Cu);
        }

        v24 = [v20 connection];
        [v24 close];

        if (v26)
        {
          -[_ML3DatabaseConnectionSubPool checkInConnection:returnToPool:](self, "checkInConnection:returnToPool:", v20, [v13 containsObject:v20] ^ 1);
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v28 objects:v43 count:16];
    }

    while (v17);
  }

  _Block_object_dispose(&v39, 8);
}

- (void)closeConnection:(id)a3
{
  v4 = a3;
  checkinQueue = self->_checkinQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49___ML3DatabaseConnectionSubPool_closeConnection___block_invoke;
  v7[3] = &unk_2787660F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(checkinQueue, v7);
}

- (void)checkInConnection:(id)a3 returnToPool:(BOOL)a4
{
  v6 = a3;
  checkinQueue = self->_checkinQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64___ML3DatabaseConnectionSubPool_checkInConnection_returnToPool___block_invoke;
  block[3] = &unk_278765CE8;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(checkinQueue, block);
}

- (BOOL)hasBusyConnections
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51___ML3DatabaseConnectionSubPool_hasBusyConnections__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)dealloc
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "%p dealloc", buf, 0xCu);
  }

  if ([(NSMutableSet *)self->_busyConnections count])
  {
    v4 = dispatch_semaphore_create(0);
    v5 = [(NSMutableSet *)self->_availableConnections debugDescription];
    v6 = [(NSMutableSet *)self->_busyConnections debugDescription];
    v20 = MEMORY[0x277D27EF0];
    v19 = *MEMORY[0x277D27EC0];
    v25[0] = @"IsSubPoolClosed";
    v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSubPoolClosed];
    v26[0] = v21;
    v25[1] = @"BusyConnectionCount";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableSet count](self->_busyConnections, "count")}];
    v8 = v7;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = @"nil";
    }

    v26[1] = v7;
    v26[2] = v9;
    v25[2] = @"BusyConnectionDesc";
    v25[3] = @"AvailableConnectionCount";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableSet count](self->_availableConnections, "count")}];
    v11 = v10;
    if (v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = @"nil";
    }

    v26[3] = v10;
    v26[4] = v12;
    v25[4] = @"AvailableConnectionDesc";
    v25[5] = @"DatabaseConnectionPoolDesc";
    v13 = [(_ML3DatabaseConnectionSubPool *)self description];
    v26[5] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];
    v27 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __40___ML3DatabaseConnectionSubPool_dealloc__block_invoke;
    v23[3] = &unk_278765FB8;
    v24 = v4;
    v16 = v4;
    [v20 snapshotWithDomain:v19 type:@"Bug" subType:@"ConnectionPoolInBadState" context:@"Deallocating with active connections" triggerThresholdValues:0 events:v15 completion:v23];

    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  }

  if ([(NSMutableSet *)self->_busyConnections count])
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"ML3DatabaseConnectionPool.m" lineNumber:571 description:{@"deallocating pool %@ has %lld active connections", self, -[NSMutableSet count](self->_busyConnections, "count")}];
  }

  notify_cancel(self->_homeSharingCachesClearedNotifyToken);
  notify_cancel(self->_willDeleteDatabaseNotifyToken);
  [(_ML3DatabaseConnectionSubPool *)self closeConnectionsAndWaitForBusyConnections:0];
  v22.receiver = self;
  v22.super_class = _ML3DatabaseConnectionSubPool;
  [(_ML3DatabaseConnectionSubPool *)&v22 dealloc];
}

- (_ML3DatabaseConnectionSubPool)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"-init is unsupported. use -initWithDatabasePath:maxConcurrentConnections:"];

  return 0;
}

- (_ML3DatabaseConnectionSubPool)initWithDatabasePath:(id)a3 maxConcurrentConnections:(unint64_t)a4
{
  v6 = a3;
  v33.receiver = self;
  v33.super_class = _ML3DatabaseConnectionSubPool;
  v7 = [(_ML3DatabaseConnectionSubPool *)&v33 init];
  if (v7)
  {
    v8 = [v6 copy];
    databasePath = v7->_databasePath;
    v7->_databasePath = v8;

    v7->_maxConcurrentConnections = a4;
    v7->_useDistantConnections = 0;
    *&v7->_isSubPoolClosed = 0;
    v10 = dispatch_queue_create("com.apple.MusicLibrary._ML3DatabaseConnectionSubPool.checkoutQueue", 0);
    checkoutQueue = v7->_checkoutQueue;
    v7->_checkoutQueue = v10;

    v12 = dispatch_queue_create("com.apple.MusicLibrary._ML3DatabaseConnectionSubPool.checkinQueue", 0);
    checkinQueue = v7->_checkinQueue;
    v7->_checkinQueue = v12;

    v14 = dispatch_queue_create("com.apple.MusicLibrary._ML3DatabaseConnectionSubPool.serialQueue", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v14;

    v16 = dispatch_semaphore_create(v7->_maxConcurrentConnections);
    waitingSemaphore = v7->_waitingSemaphore;
    v7->_waitingSemaphore = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    availableConnections = v7->_availableConnections;
    v7->_availableConnections = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    busyConnections = v7->_busyConnections;
    v7->_busyConnections = v20;

    if (!__daemonProcessInfo)
    {
      objc_initWeak(&location, v7);
      v22 = [@"MLMediaLibraryWillDeleteDatabaseNotification" UTF8String];
      v23 = MEMORY[0x277D85CD0];
      v24 = MEMORY[0x277D85CD0];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __79___ML3DatabaseConnectionSubPool_initWithDatabasePath_maxConcurrentConnections___block_invoke;
      handler[3] = &unk_278765C98;
      objc_copyWeak(&v31, &location);
      notify_register_dispatch(v22, &v7->_willDeleteDatabaseNotifyToken, v23, handler);
      v25 = MEMORY[0x277D85CD0];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __79___ML3DatabaseConnectionSubPool_initWithDatabasePath_maxConcurrentConnections___block_invoke_207;
      v27[3] = &unk_278765CC0;
      objc_copyWeak(&v29, &location);
      v28 = v6;
      notify_register_dispatch("HSCachesClearedNotification", &v7->_homeSharingCachesClearedNotifyToken, v25, v27);

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }
  }

  return v7;
}

@end