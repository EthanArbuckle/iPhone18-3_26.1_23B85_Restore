@interface CADDatabaseConnectionPool
- (CADDatabaseConnectionPool)initWithOptions:(id)options manager:(id)manager;
- (id)_openDatabases;
- (id)_pools;
- (id)createConnectionForPool:(id)pool;
- (int)databaseRestoreGeneration;
- (unint64_t)numberOfClients;
- (void)_checkGenerationAndAuxDatabaseSequence:(BOOL *)sequence;
- (void)addClient:(id)client;
- (void)addCreatedAuxDatabase:(CalDatabase *)database;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)forEachDelegate:(id)delegate;
- (void)performWithAllDatabasesWithConfiguration:(id)configuration priority:(unint64_t)priority block:(id)block;
- (void)prepareDatabase:(CalDatabase *)database forUseWithConfiguration:(id)configuration;
- (void)purgeConnectionsLastUsedPriorTo:(unint64_t)to stats:(id *)stats;
- (void)removeClient:(id)client;
- (void)removeDelegate:(id)delegate;
- (void)reportIntegrityErrors:(id)errors;
- (void)setupDatabase:(CalDatabase *)database;
@end

@implementation CADDatabaseConnectionPool

- (id)_pools
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  pools = self->_pools;
  if (!pools)
  {
    _openDatabases = [(CADDatabaseConnectionPool *)self _openDatabases];
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(_openDatabases, "count")}];
    v6 = self->_pools;
    self->_pools = v5;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = _openDatabases;
    v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
          v13 = CalDatabaseCopyInitializationConfiguration();
          v14 = [[CADSeparatedDatabasePool alloc] initWithConfig:v13 databaseID:AuxilliaryDatabaseID];
          v15 = [[CADPooledConnection alloc] initWithDatabase:v11];
          [(CADSeparatedDatabasePool *)v14 _returnConnectionToPool:v15];
          v16 = self->_pools;
          v17 = [MEMORY[0x277CCABB0] numberWithInt:AuxilliaryDatabaseID];
          [(NSMutableDictionary *)v16 setObject:v14 forKeyedSubscript:v17];

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    pools = self->_pools;
  }

  v18 = *MEMORY[0x277D85DE8];

  return pools;
}

- (int)databaseRestoreGeneration
{
  os_unfair_lock_lock(&self->_lock);
  _pools = [(CADDatabaseConnectionPool *)self _pools];
  databaseRestoreGeneration = self->_databaseRestoreGeneration;
  os_unfair_lock_unlock(&self->_lock);
  return databaseRestoreGeneration;
}

- (CADDatabaseConnectionPool)initWithOptions:(id)options manager:(id)manager
{
  optionsCopy = options;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = CADDatabaseConnectionPool;
  v9 = [(CADDatabaseConnectionPool *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = dispatch_workloop_create("com.apple.calendar.daemon.low_priority");
    lowPriorityTasks = v10->_lowPriorityTasks;
    v10->_lowPriorityTasks = v11;

    objc_storeStrong(&v10->_initOptions, options);
    objc_storeWeak(&v10->_manager, managerCopy);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    clients = v10->_clients;
    v10->_clients = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v10->_delegates;
    v10->_delegates = weakObjectsHashTable2;
  }

  return v10;
}

- (void)dealloc
{
  [MEMORY[0x277CF7518] cleanupDeallocatedClients];
  v3.receiver = self;
  v3.super_class = CADDatabaseConnectionPool;
  [(CADDatabaseConnectionPool *)&v3 dealloc];
}

uint64_t __80__CADDatabaseConnectionPool_performWithConfiguration_priority_databaseID_block___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) performASAPWithConfiguration:*(a1 + 40) databaseID:*(a1 + 64) block:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)performWithAllDatabasesWithConfiguration:(id)configuration priority:(unint64_t)priority block:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  _pools = [(CADDatabaseConnectionPool *)self _pools];
  allKeys = [_pools allKeys];

  os_unfair_lock_unlock(&self->_lock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = allKeys;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = *v28;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(v12);
      }

      intValue = [*(*(&v27 + 1) + 8 * v15) intValue];
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __85__CADDatabaseConnectionPool_performWithAllDatabasesWithConfiguration_priority_block___block_invoke;
      v19[3] = &unk_27851AF10;
      v17 = blockCopy;
      v22 = intValue;
      v20 = v17;
      v21 = &v23;
      [(CADDatabaseConnectionPool *)self performWithConfiguration:configurationCopy priority:priority databaseID:intValue block:v19];
      LOBYTE(intValue) = *(v24 + 24);

      _Block_object_dispose(&v23, 8);
      if (intValue)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addCreatedAuxDatabase:(CalDatabase *)database
{
  v34 = *MEMORY[0x277D85DE8];
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  os_unfair_lock_lock(&self->_lock);
  if (self->_pools)
  {
    v6 = [[CADPooledConnection alloc] initWithDatabase:database];
    [(CADDatabaseConnectionPool *)self setupDatabase:database];
    pools = self->_pools;
    v8 = [MEMORY[0x277CCABB0] numberWithInt:AuxilliaryDatabaseID];
    v9 = [(NSMutableDictionary *)pools objectForKeyedSubscript:v8];

    if (!v9)
    {
      v10 = CalDatabaseCopyInitializationConfiguration();
      v9 = [[CADSeparatedDatabasePool alloc] initWithConfig:v10 databaseID:AuxilliaryDatabaseID];
      v11 = self->_pools;
      v12 = [MEMORY[0x277CCABB0] numberWithInt:AuxilliaryDatabaseID];
      [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
    }

    v26 = v6;
    [(CADSeparatedDatabasePool *)v9 _returnConnectionToPool:v6, v9];
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](self->_pools, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = self->_pools;
    v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = [(NSMutableDictionary *)self->_pools objectForKeyedSubscript:v19];
          databasePath = [v20 databasePath];
          if (databasePath)
          {
            [v13 addObject:databasePath];
          }

          else
          {
            v22 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v32 = v19;
              _os_log_impl(&dword_22430B000, v22, OS_LOG_TYPE_ERROR, "Unexpectedly encountered nil path for database with id %{public}@", buf, 0xCu);
            }
          }
        }

        v16 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v16);
    }

    [MEMORY[0x277CF7518] setInterestedDatabasePaths:v13 forContext:self];
    os_unfair_lock_unlock(&self->_lock);

    v23 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v24 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_delegates addObject:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_delegates removeObject:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_checkGenerationAndAuxDatabaseSequence:(BOOL *)sequence
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_needCheckAuxDatabaseSequenceAndRestoreGeneration)
  {
    pools = self->_pools;
    v6 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CF7570]];
    v7 = [(NSMutableDictionary *)pools objectForKeyedSubscript:v6];

    connections = [v7 connections];
    lastObject = [connections lastObject];

    if (!lastObject)
    {
      v10 = [(CADDatabaseConnectionPool *)self createConnectionForPool:v7];
      if (!v10)
      {
        v16 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_ERROR, "Could not open a connection to the Calendar database. Unable to perform generation check.", v17, 2u);
        }

        goto LABEL_12;
      }

      lastObject = v10;
      [v7 _returnConnectionToPool:v10];
    }

    [lastObject database];
    if (sequence)
    {
      databaseRestoreGeneration = self->_databaseRestoreGeneration;
      RestoreGeneration = CalDatabaseGetRestoreGeneration();
      self->_databaseRestoreGeneration = RestoreGeneration;
      *sequence = databaseRestoreGeneration != RestoreGeneration;
    }

    if (CalDatabaseGetAuxDatabaseChangesSequence() != self->_auxDatabaseSequence)
    {
      v13 = self->_pools;
      self->_pools = 0;

      if (sequence)
      {
        if (!*sequence)
        {
          v14 = self->_databaseRestoreGeneration;
          _pools = [(CADDatabaseConnectionPool *)self _pools];
          *sequence = self->_databaseRestoreGeneration != v14;
        }
      }
    }

    self->_needCheckAuxDatabaseSequenceAndRestoreGeneration = 0;

LABEL_12:
  }
}

- (id)_openDatabases
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    initOptions = self->_initOptions;
    *buf = 138412290;
    *v49 = initOptions;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEBUG, "Creating database with options [%@]", buf, 0xCu);
  }

  v5 = objc_alloc(MEMORY[0x277CF7520]);
  databaseDirectory = [(CADDatabaseInitializationOptions *)self->_initOptions databaseDirectory];
  v7 = [v5 initWithDirectoryURL:databaseDirectory];

  [v7 setOptions:{-[CADDatabaseInitializationOptions databaseInitOptions](self->_initOptions, "databaseInitOptions")}];
  calendarDataContainerProvider = [(CADDatabaseInitializationOptions *)self->_initOptions calendarDataContainerProvider];
  if (calendarDataContainerProvider)
  {
    [v7 setDataContainerProvider:calendarDataContainerProvider];
  }

  v9 = CalDatabaseCreateWithConfiguration();
  if (v9)
  {
    v10 = v9;
    v37 = calendarDataContainerProvider;
    v38 = v7;
    self->_auxDatabaseSequence = CalDatabaseGetAuxDatabaseChangesSequence();
    self->_databaseRestoreGeneration = CalDatabaseGetRestoreGeneration();
    v11 = CalDatabaseCopyAllAuxDatabases();
    v12 = [v11 count];
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:v12 + 1];
    [v13 addObject:v10];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v43 + 1) + 8 * i);
          [(CADDatabaseInitializationOptions *)self->_initOptions databaseInitOptions:v37];
          v20 = CalDatabaseCreateWithAuxDatabaseRef();
          if (v20)
          {
            v21 = v20;
            [v13 addObject:v20];
            CFRelease(v21);
          }

          else
          {
            v22 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
            {
              v23 = v22;
              UID = CalAuxDatabaseGetUID();
              databaseDirectory2 = [(CADDatabaseInitializationOptions *)self->_initOptions databaseDirectory];
              *buf = 67109378;
              *v49 = UID;
              *&v49[4] = 2112;
              *&v49[6] = databaseDirectory2;
              _os_log_impl(&dword_22430B000, v23, OS_LOG_TYPE_ERROR, "Unable to create auxiliary database %i with main database path %@", buf, 0x12u);
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v16);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v26 = v13;
    v27 = [v26 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v40;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [(CADDatabaseConnectionPool *)self setupDatabase:*(*(&v39 + 1) + 8 * j), v37, v38];
        }

        v28 = [v26 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v28);
    }

    CFRelease(v10);
    [MEMORY[0x277CF7518] setInterestedDatabases:v26 forContext:self];

    calendarDataContainerProvider = v37;
    v7 = v38;
  }

  else
  {
    v31 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v32 = self->_initOptions;
      v33 = v31;
      databaseDirectory3 = [(CADDatabaseInitializationOptions *)v32 databaseDirectory];
      *buf = 138412290;
      *v49 = databaseDirectory3;
      _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_ERROR, "Unable to create main database for path %@", buf, 0xCu);
    }

    v26 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)setupDatabase:(CalDatabase *)database
{
  [(CADDatabaseInitializationOptions *)self->_initOptions unitTesting];
  CalDatabaseSetIsUnitTesting();
  if ([(CADDatabaseInitializationOptions *)self->_initOptions unitTesting])
  {
    CalDatabaseSetIntegrityErrorReportingDelegate();
  }

  [(CADDatabaseInitializationOptions *)self->_initOptions enablePropertyModificationLogging];

  CalDatabaseSetPropertyModificationLoggingEnabled();
}

- (id)createConnectionForPool:(id)pool
{
  poolCopy = pool;
  config = [poolCopy config];
  v6 = CalDatabaseCreateWithConfiguration();

  if (v6)
  {
    [poolCopy databaseID];
    CalDatabaseSetAuxilliaryDatabaseID();
    [(CADDatabaseConnectionPool *)self setupDatabase:v6];
    v7 = [[CADPooledConnection alloc] initWithDatabase:v6];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)prepareDatabase:(CalDatabase *)database forUseWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  clientName = [configurationCopy clientName];
  CalDatabaseSetClientName();

  clientIdentifier = [configurationCopy clientIdentifier];
  CalDatabaseSetClientIdentifier();

  [configurationCopy inMemoryChangeTrackingClientID];
  CalDatabaseSetInMemoryChangeTrackingID();
  [configurationCopy enablePropertyModificationLogging];

  CalDatabaseSetPropertyModificationLoggingEnabled();
}

- (void)forEachDelegate:(id)delegate
{
  v17 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        delegateCopy[2](delegateCopy, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_clients addObject:clientCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_clients removeObject:clientCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)numberOfClients
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_clients;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      v7 = v4;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        --v7;
      }

      while (v7);
      v5 += v4;
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)reportIntegrityErrors:(id)errors
{
  errorsCopy = errors;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CADDatabaseConnectionPool_reportIntegrityErrors___block_invoke;
  v6[3] = &unk_27851AF58;
  v7 = errorsCopy;
  v5 = errorsCopy;
  [(CADDatabaseConnectionPool *)self forEachDelegate:v6];
}

- (void)purgeConnectionsLastUsedPriorTo:(unint64_t)to stats:(id *)stats
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_pools;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->_pools objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v11), v14];
        [v12 purgeConnectionsLastUsedPriorTo:to stats:stats];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];
}

@end