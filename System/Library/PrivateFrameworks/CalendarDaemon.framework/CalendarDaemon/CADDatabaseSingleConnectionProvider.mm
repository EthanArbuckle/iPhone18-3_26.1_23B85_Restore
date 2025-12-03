@interface CADDatabaseSingleConnectionProvider
- (CADDatabaseSingleConnectionProvider)initWithConfiguration:(id)configuration;
- (id)_databases;
- (int)databaseRestoreGeneration;
- (void)_closeDatabases;
- (void)_prepareDatabase:(CalDatabase *)database withConfiguration:(id)configuration;
- (void)addCreatedAuxDatabase:(CalDatabase *)database;
- (void)addDelegate:(id)delegate;
- (void)closeDatabases;
- (void)dealloc;
- (void)performWithAllDatabasesWithConfiguration:(id)configuration priority:(unint64_t)priority block:(id)block;
- (void)removeDelegate:(id)delegate;
- (void)reportIntegrityErrors:(id)errors;
- (void)validateAuxDatabases;
@end

@implementation CADDatabaseSingleConnectionProvider

- (CADDatabaseSingleConnectionProvider)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = CADDatabaseSingleConnectionProvider;
  v6 = [(CADDatabaseSingleConnectionProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initOptions, configuration);
  }

  return v7;
}

- (void)dealloc
{
  [MEMORY[0x277CF7518] cleanupDeallocatedClients];
  v3.receiver = self;
  v3.super_class = CADDatabaseSingleConnectionProvider;
  [(CADDatabaseSingleConnectionProvider *)&v3 dealloc];
}

- (void)_prepareDatabase:(CalDatabase *)database withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  clientIdentifier = [configurationCopy clientIdentifier];
  CalDatabaseSetClientIdentifier();

  clientName = [configurationCopy clientName];
  CalDatabaseSetClientName();

  [configurationCopy inMemoryChangeTrackingClientID];

  CalDatabaseSetInMemoryChangeTrackingID();
}

- (void)performWithAllDatabasesWithConfiguration:(id)configuration priority:(unint64_t)priority block:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  _databases = [(CADDatabaseSingleConnectionProvider *)self _databases];
  v10 = [_databases copy];

  os_unfair_lock_unlock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v21 + 1) + 8 * v15);
      intValue = [v16 intValue];
      v18 = [v11 objectForKeyedSubscript:v16];

      [(CADDatabaseSingleConnectionProvider *)self _prepareDatabase:v18 withConfiguration:configurationCopy];
      v20 = 0;
      blockCopy[2](blockCopy, intValue, v18, &v20);
      if (v20)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (int)databaseRestoreGeneration
{
  os_unfair_lock_lock(&self->_lock);
  _databases = [(CADDatabaseSingleConnectionProvider *)self _databases];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CF7570]];
  v5 = [_databases objectForKeyedSubscript:v4];

  if (v5)
  {
    RestoreGeneration = CalDatabaseGetRestoreGeneration();
  }

  else
  {
    RestoreGeneration = -1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return RestoreGeneration;
}

- (void)addCreatedAuxDatabase:(CalDatabase *)database
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_databases)
  {
    AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
    databases = self->_databases;
    v7 = [MEMORY[0x277CCABB0] numberWithInt:AuxilliaryDatabaseID];
    v8 = [(NSMutableDictionary *)databases objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
        v16[0] = 67109120;
        v16[1] = AuxilliaryDatabaseID;
        _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_INFO, "Ignoring attempt to add a database already known to the connection (id = %d)", v16, 8u);
      }
    }

    else
    {
      v11 = self->_databases;
      v12 = [MEMORY[0x277CCABB0] numberWithInt:AuxilliaryDatabaseID];
      [(NSMutableDictionary *)v11 setObject:database forKeyedSubscript:v12];

      v13 = MEMORY[0x277CF7518];
      allValues = [(NSMutableDictionary *)self->_databases allValues];
      [v13 setInterestedDatabases:allValues forContext:self];
    }
  }

  else
  {
    _databases = [(CADDatabaseSingleConnectionProvider *)self _databases];
  }

  os_unfair_lock_unlock(&self->_lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)validateAuxDatabases
{
  os_unfair_lock_lock(&self->_lock);
  databases = self->_databases;
  if (databases)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CF7570]];
    [(NSMutableDictionary *)databases objectForKeyedSubscript:v4];

    if (CalDatabaseGetAuxDatabaseChangesSequence() != self->_auxDatabaseSequence)
    {
      [(CADDatabaseSingleConnectionProvider *)self _closeDatabases];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_databases
{
  v60 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  databases = self->_databases;
  if (!databases)
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      initOptions = self->_initOptions;
      *buf = 138412290;
      *v58 = initOptions;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_DEBUG, "Creating database with options [%@]", buf, 0xCu);
    }

    v6 = objc_alloc(MEMORY[0x277CF7520]);
    databaseDirectory = [(CADDatabaseInitializationOptions *)self->_initOptions databaseDirectory];
    v8 = [v6 initWithDirectoryURL:databaseDirectory];

    [v8 setOptions:{-[CADDatabaseInitializationOptions databaseInitOptions](self->_initOptions, "databaseInitOptions")}];
    calendarDataContainerProvider = [(CADDatabaseInitializationOptions *)self->_initOptions calendarDataContainerProvider];
    if (calendarDataContainerProvider)
    {
      [v8 setDataContainerProvider:calendarDataContainerProvider];
    }

    v10 = CalDatabaseCreateWithConfiguration();
    if (v10)
    {
      v11 = v10;
      v46 = calendarDataContainerProvider;
      v47 = v8;
      self->_auxDatabaseSequence = CalDatabaseGetAuxDatabaseChangesSequence();
      v12 = CalDatabaseCopyAllAuxDatabases();
      v13 = [v12 count];
      v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v13 + 1];
      v15 = self->_databases;
      self->_databases = v14;

      v16 = self->_databases;
      v17 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CF7570]];
      [(NSMutableDictionary *)v16 setObject:v11 forKeyedSubscript:v17];

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v18 = v12;
      v19 = [v18 countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v53;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v53 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v52 + 1) + 8 * i);
            [(CADDatabaseInitializationOptions *)self->_initOptions databaseInitOptions:v46];
            v24 = CalDatabaseCreateWithAuxDatabaseRef();
            if (v24)
            {
              v25 = v24;
              v26 = self->_databases;
              v27 = [MEMORY[0x277CCABB0] numberWithInt:CalDatabaseGetAuxilliaryDatabaseID()];
              [(NSMutableDictionary *)v26 setObject:v25 forKeyedSubscript:v27];

              CFRelease(v25);
            }

            else
            {
              v28 = CADLogHandle;
              if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
              {
                v29 = v28;
                UID = CalAuxDatabaseGetUID();
                databaseDirectory2 = [(CADDatabaseInitializationOptions *)self->_initOptions databaseDirectory];
                *buf = 67109378;
                *v58 = UID;
                *&v58[4] = 2112;
                *&v58[6] = databaseDirectory2;
                _os_log_impl(&dword_22430B000, v29, OS_LOG_TYPE_ERROR, "Unable to create auxiliary database %i with main database path %@", buf, 0x12u);
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v52 objects:v59 count:16];
        }

        while (v20);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v32 = self->_databases;
      v33 = [(NSMutableDictionary *)v32 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v49;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v49 != v35)
            {
              objc_enumerationMutation(v32);
            }

            [(NSMutableDictionary *)self->_databases objectForKeyedSubscript:*(*(&v48 + 1) + 8 * j), v46, v47];

            [(CADDatabaseInitializationOptions *)self->_initOptions unitTesting];
            CalDatabaseSetIsUnitTesting();
            if ([(CADDatabaseInitializationOptions *)self->_initOptions unitTesting])
            {
              CalDatabaseSetIntegrityErrorReportingDelegate();
            }

            [(CADDatabaseInitializationOptions *)self->_initOptions enablePropertyModificationLogging];
            CalDatabaseSetPropertyModificationLoggingEnabled();
          }

          v34 = [(NSMutableDictionary *)v32 countByEnumeratingWithState:&v48 objects:v56 count:16];
        }

        while (v34);
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_handleDatabaseChangedExternally name:*MEMORY[0x277CF7658] object:v11];

      CFRelease(v11);
      v38 = MEMORY[0x277CF7518];
      allValues = [(NSMutableDictionary *)self->_databases allValues];
      [v38 setInterestedDatabases:allValues forContext:self];

      calendarDataContainerProvider = v46;
      v8 = v47;
    }

    else
    {
      v40 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v41 = self->_initOptions;
        v42 = v40;
        databaseDirectory3 = [(CADDatabaseInitializationOptions *)v41 databaseDirectory];
        *buf = 138412290;
        *v58 = databaseDirectory3;
        _os_log_impl(&dword_22430B000, v42, OS_LOG_TYPE_ERROR, "Unable to create main database for path %@", buf, 0xCu);
      }
    }

    databases = self->_databases;
  }

  v44 = *MEMORY[0x277D85DE8];

  return databases;
}

- (void)closeDatabases
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_databases)
  {
    v3 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEBUG, "Closing the databases prematurely because we were explicitly asked to.", v4, 2u);
    }

    [(CADDatabaseSingleConnectionProvider *)self _closeDatabases];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_closeDatabases
{
  os_unfair_lock_assert_owner(&self->_lock);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CF7658] object:0];

  databases = self->_databases;
  self->_databases = 0;
}

- (void)reportIntegrityErrors:(id)errors
{
  errorsCopy = errors;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reportIntegrityErrors:errorsCopy];
}

- (void)addDelegate:(id)delegate
{
  v13 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained != delegateCopy)
    {
      v7 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = delegateCopy;
        _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_ERROR, "Only a single delegate is supported by single connection pools. Current delegate = %@, new delegate = %@", &v9, 0x16u);
      }
    }
  }

  else
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained == delegateCopy)
  {

    objc_storeWeak(&self->_delegate, 0);
  }
}

@end