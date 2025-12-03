@interface ML3DatabaseDistantConnection
- (BOOL)_internalBeginTransactionWithBehaviorType:(unint64_t)type isRetry:(BOOL)retry;
- (BOOL)_internalEndTransactionAndCommit:(BOOL)commit;
- (BOOL)_internalExecuteUpdate:(id)update withParameters:(id)parameters error:(id *)error;
- (BOOL)_openWithFlags:(int)flags;
- (BOOL)close;
- (ML3DatabaseDistantConnection)initWithDatabasePath:(id)path;
- (ML3DatabaseDistantConnectionDelegate)distantDelegate;
- (id)_internalExecuteQuery:(id)query withParameters:(id)parameters limitProperty:(id)property limitValue:(int64_t)value;
- (void)_serviceTerminatedTransactionNotification:(id)notification;
- (void)dealloc;
@end

@implementation ML3DatabaseDistantConnection

- (ML3DatabaseDistantConnectionDelegate)distantDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_distantDelegate);

  return WeakRetained;
}

- (void)_serviceTerminatedTransactionNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ([(ML3DatabaseConnection *)self isInTransaction]&& self->_currentTransactionID)
  {
    userInfo = [notificationCopy userInfo];
    v6 = [userInfo objectForKey:@"MLTerminatedTransactionIdentifierKey"];

    if ([(NSUUID *)self->_currentTransactionID isEqual:v6])
    {
      userInfo2 = [notificationCopy userInfo];
      v8 = [userInfo2 objectForKey:*MEMORY[0x277CCA7E8]];

      v9 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "Service terminated distant transaction with error: %{public}@", &v11, 0xCu);
      }

      currentTransactionID = self->_currentTransactionID;
      self->_currentTransactionID = 0;

      [(ML3DatabaseConnection *)self setTransactionLevel:0];
    }
  }
}

- (BOOL)_internalExecuteUpdate:(id)update withParameters:(id)parameters error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  parametersCopy = parameters;
  isInTransaction = [(ML3DatabaseConnection *)self isInTransaction];
  if (!isInTransaction)
  {
    [(ML3DatabaseConnection *)self pushTransaction];
  }

  if (!self->_currentTransactionID)
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "No valid transaction ID for connection %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23 = @"The media library service failed to return a valid transaction ID.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v12 = [v14 errorWithDomain:@"ML3DatabaseErrorDomain" code:600 userInfo:v11];
LABEL_11:

    v15 = 0;
    if (isInTransaction)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ([(ML3DatabaseConnection *)self transactionMarkedForRollBack])
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = updateCopy;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "failing update request in a transaction marked for rollback. sql=%{public}@", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_11;
  }

  mediaLibraryService = self->_mediaLibraryService;
  currentTransactionID = self->_currentTransactionID;
  v21 = 0;
  v20 = [(MLMediaLibraryService *)mediaLibraryService executeUpdate:updateCopy withParameters:parametersCopy onTransaction:currentTransactionID error:&v21];
  v12 = v21;
  if (!v20)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v26 = 2114;
      v27 = v12;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "Could not execute update on distant connection: %{public}@. %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v15 = 1;
  if (!isInTransaction)
  {
LABEL_12:
    [(ML3DatabaseConnection *)self popTransactionAndCommit:1];
  }

LABEL_13:
  if (error)
  {
    v16 = v12;
    *error = v12;
  }

  return v15;
}

- (id)_internalExecuteQuery:(id)query withParameters:(id)parameters limitProperty:(id)property limitValue:(int64_t)value
{
  propertyCopy = property;
  if (query)
  {
    parametersCopy = parameters;
    queryCopy = query;
    query = [[ML3DatabaseDistantResult alloc] initWithDistantConnection:self sql:queryCopy parameters:parametersCopy];

    if (propertyCopy)
    {
      [query setLimitProperty:propertyCopy limitValue:value];
    }

    connectionDelegate = [(ML3DatabaseConnection *)self connectionDelegate];
    if (objc_opt_respondsToSelector())
    {
      [connectionDelegate connectionDidAccessDatabase:self];
    }
  }

  return query;
}

- (BOOL)_internalEndTransactionAndCommit:(BOOL)commit
{
  commitCopy = commit;
  v22 = *MEMORY[0x277D85DE8];
  if (![(ML3DatabaseConnection *)self isInTransaction])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseDistantConnection.m" lineNumber:203 description:@"Attempted to end non-existent distant transaction."];
  }

  [(ML3DatabaseConnection *)self _ensureConnectionIsOpen];
  currentTransactionID = self->_currentTransactionID;
  if (currentTransactionID)
  {
    mediaLibraryService = self->_mediaLibraryService;
    v17 = 0;
    v8 = [(MLMediaLibraryService *)mediaLibraryService endTransaction:currentTransactionID shouldCommit:commitCopy error:&v17];
    v9 = v17;
    connectionDelegate = [(ML3DatabaseConnection *)self connectionDelegate];
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        uUIDString = [(NSUUID *)self->_currentTransactionID UUIDString];
        *buf = 138543362;
        selfCopy = uUIDString;
        _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEBUG, "Successfully ended transaction with ID %{public}@", buf, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        [connectionDelegate connection:self didEndDatabaseTransactionAndCommit:commitCopy];
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v20 = 2114;
        v21 = v9;
        _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "Could not end transaction on distant connection: %{public}@. %{public}@", buf, 0x16u);
      }
    }

    v14 = self->_currentTransactionID;
    self->_currentTransactionID = 0;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_internalBeginTransactionWithBehaviorType:(unint64_t)type isRetry:(BOOL)retry
{
  v34 = *MEMORY[0x277D85DE8];
  if ([(ML3DatabaseConnection *)self isInTransaction])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseDistantConnection.m" lineNumber:152 description:@"Attempted to begin distant transaction while one is already in process."];
  }

  [(ML3DatabaseConnection *)self _ensureConnectionIsOpen];
  if (!self->_currentTransactionID)
  {
    if (ML3IsUIApplication___once != -1)
    {
      dispatch_once(&ML3IsUIApplication___once, &__block_literal_global_22217);
    }

    if (ML3IsUIApplication___isUIApplication == 1)
    {
      IsFirstPartyMediaApplication = ML3IsFirstPartyMediaApplication();
    }

    else
    {
      IsFirstPartyMediaApplication = 1;
    }

    isMainThread = [MEMORY[0x277CCACC8] isMainThread];
    databasePath = [(ML3DatabaseConnection *)self databasePath];
    v12 = [MLTransactionContext alloc];
    privacyContext = [(ML3DatabaseConnection *)self privacyContext];
    v14 = [(MLTransactionContext *)v12 initWithPrivacyContext:privacyContext path:databasePath priorityLevel:isMainThread options:IsFirstPartyMediaApplication];

    mediaLibraryService = self->_mediaLibraryService;
    v29 = 0;
    v16 = [(MLMediaLibraryService *)mediaLibraryService beginTransactionForDatabaseWithContext:v14 error:&v29];
    v17 = v29;
    connectionDelegate = [(ML3DatabaseConnection *)self connectionDelegate];
    if (!v17 && v16)
    {
      objc_storeStrong(&self->_currentTransactionID, v16);
      v19 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        uUIDString = [v16 UUIDString];
        *buf = 138543362;
        selfCopy = uUIDString;
        _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEBUG, "Successfully began transaction with ID %{public}@", buf, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        [connectionDelegate connectionDidBeginDatabaseTransaction:self];
      }

LABEL_25:
      v8 = 1;
LABEL_30:

      return v8;
    }

    v21 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v32 = 2114;
      v33 = v17;
      _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "Could not begin transaction on distant connection: %{public}@. %{public}@", buf, 0x16u);
    }

    if (!retry)
    {
      v22 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "Reattempting to begin transaction with media library service...", buf, 2u);
      }

      v23 = [(ML3DatabaseDistantConnection *)self _internalBeginTransactionWithBehaviorType:type isRetry:1];
      v24 = os_log_create("com.apple.amp.medialibrary", "Default");
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v25)
        {
          uUIDString2 = [(NSUUID *)self->_currentTransactionID UUIDString];
          *buf = 138543362;
          selfCopy = uUIDString2;
          _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_DEFAULT, "Reattempt to begin transaction succeeded. Proceeding with new transaction ID %{public}@.", buf, 0xCu);
        }

        goto LABEL_25;
      }

      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_DEFAULT, "Reattempt to begin transaction failed.", buf, 2u);
      }
    }

    v8 = 0;
    goto LABEL_30;
  }

  return 0;
}

- (BOOL)close
{
  if ([(ML3DatabaseConnection *)self isInTransaction])
  {
    result = [(ML3DatabaseConnection *)self popToRootTransactionAndCommit:0];
  }

  else
  {
    result = 1;
  }

  self->_connectionOpen = 0;
  return result;
}

- (BOOL)_openWithFlags:(int)flags
{
  v10[1] = *MEMORY[0x277D85DE8];
  connectionDelegate = [(ML3DatabaseConnection *)self connectionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [connectionDelegate connectionWillOpenDatabase:self];
  }

  self->_connectionOpen = 1;
  if (objc_opt_respondsToSelector())
  {
    [connectionDelegate connectionDidOpenDatabase:0];
  }

  else if (!self->_connectionOpen && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = *MEMORY[0x277CCA450];
    v10[0] = @"Distant connection could not open XPC connection to media library service daemon.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ML3DatabaseErrorDomain" code:0 userInfo:v5];
    [connectionDelegate connection:self didFailToOpenDatabaseWithError:v6];
  }

  connectionOpen = self->_connectionOpen;

  return connectionOpen;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"MLMediaLibraryServiceDidTerminateTransactionNotification" object:0];

  v4.receiver = self;
  v4.super_class = ML3DatabaseDistantConnection;
  [(ML3DatabaseConnection *)&v4 dealloc];
}

- (ML3DatabaseDistantConnection)initWithDatabasePath:(id)path
{
  v9.receiver = self;
  v9.super_class = ML3DatabaseDistantConnection;
  v3 = [(ML3DatabaseConnection *)&v9 initWithDatabasePath:path];
  if (v3)
  {
    v4 = +[MLMediaLibraryService sharedMediaLibraryService];
    mediaLibraryService = v3->_mediaLibraryService;
    v3->_mediaLibraryService = v4;

    currentTransactionID = v3->_currentTransactionID;
    v3->_currentTransactionID = 0;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__serviceTerminatedTransactionNotification_ name:@"MLMediaLibraryServiceDidTerminateTransactionNotification" object:0];
  }

  return v3;
}

@end