@interface ML3DatabaseDistantConnection
- (BOOL)_internalBeginTransactionWithBehaviorType:(unint64_t)a3 isRetry:(BOOL)a4;
- (BOOL)_internalEndTransactionAndCommit:(BOOL)a3;
- (BOOL)_internalExecuteUpdate:(id)a3 withParameters:(id)a4 error:(id *)a5;
- (BOOL)_openWithFlags:(int)a3;
- (BOOL)close;
- (ML3DatabaseDistantConnection)initWithDatabasePath:(id)a3;
- (ML3DatabaseDistantConnectionDelegate)distantDelegate;
- (id)_internalExecuteQuery:(id)a3 withParameters:(id)a4 limitProperty:(id)a5 limitValue:(int64_t)a6;
- (void)_serviceTerminatedTransactionNotification:(id)a3;
- (void)dealloc;
@end

@implementation ML3DatabaseDistantConnection

- (ML3DatabaseDistantConnectionDelegate)distantDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_distantDelegate);

  return WeakRetained;
}

- (void)_serviceTerminatedTransactionNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ML3DatabaseConnection *)self isInTransaction]&& self->_currentTransactionID)
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKey:@"MLTerminatedTransactionIdentifierKey"];

    if ([(NSUUID *)self->_currentTransactionID isEqual:v6])
    {
      v7 = [v4 userInfo];
      v8 = [v7 objectForKey:*MEMORY[0x277CCA7E8]];

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

- (BOOL)_internalExecuteUpdate:(id)a3 withParameters:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(ML3DatabaseConnection *)self isInTransaction];
  if (!v10)
  {
    [(ML3DatabaseConnection *)self pushTransaction];
  }

  if (!self->_currentTransactionID)
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = self;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "No valid transaction ID for connection %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23 = @"The media library service failed to return a valid transaction ID.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v12 = [v14 errorWithDomain:@"ML3DatabaseErrorDomain" code:600 userInfo:v11];
LABEL_11:

    v15 = 0;
    if (v10)
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
      v25 = v8;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "failing update request in a transaction marked for rollback. sql=%{public}@", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_11;
  }

  mediaLibraryService = self->_mediaLibraryService;
  currentTransactionID = self->_currentTransactionID;
  v21 = 0;
  v20 = [(MLMediaLibraryService *)mediaLibraryService executeUpdate:v8 withParameters:v9 onTransaction:currentTransactionID error:&v21];
  v12 = v21;
  if (!v20)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v25 = self;
      v26 = 2114;
      v27 = v12;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "Could not execute update on distant connection: %{public}@. %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v15 = 1;
  if (!v10)
  {
LABEL_12:
    [(ML3DatabaseConnection *)self popTransactionAndCommit:1];
  }

LABEL_13:
  if (a5)
  {
    v16 = v12;
    *a5 = v12;
  }

  return v15;
}

- (id)_internalExecuteQuery:(id)a3 withParameters:(id)a4 limitProperty:(id)a5 limitValue:(int64_t)a6
{
  v10 = a5;
  if (a3)
  {
    v11 = a4;
    v12 = a3;
    a3 = [[ML3DatabaseDistantResult alloc] initWithDistantConnection:self sql:v12 parameters:v11];

    if (v10)
    {
      [a3 setLimitProperty:v10 limitValue:a6];
    }

    v13 = [(ML3DatabaseConnection *)self connectionDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v13 connectionDidAccessDatabase:self];
    }
  }

  return a3;
}

- (BOOL)_internalEndTransactionAndCommit:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  if (![(ML3DatabaseConnection *)self isInTransaction])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"ML3DatabaseDistantConnection.m" lineNumber:203 description:@"Attempted to end non-existent distant transaction."];
  }

  [(ML3DatabaseConnection *)self _ensureConnectionIsOpen];
  currentTransactionID = self->_currentTransactionID;
  if (currentTransactionID)
  {
    mediaLibraryService = self->_mediaLibraryService;
    v17 = 0;
    v8 = [(MLMediaLibraryService *)mediaLibraryService endTransaction:currentTransactionID shouldCommit:v3 error:&v17];
    v9 = v17;
    v10 = [(ML3DatabaseConnection *)self connectionDelegate];
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = [(NSUUID *)self->_currentTransactionID UUIDString];
        *buf = 138543362;
        v19 = v13;
        _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEBUG, "Successfully ended transaction with ID %{public}@", buf, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        [v10 connection:self didEndDatabaseTransactionAndCommit:v3];
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v19 = self;
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

- (BOOL)_internalBeginTransactionWithBehaviorType:(unint64_t)a3 isRetry:(BOOL)a4
{
  v34 = *MEMORY[0x277D85DE8];
  if ([(ML3DatabaseConnection *)self isInTransaction])
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"ML3DatabaseDistantConnection.m" lineNumber:152 description:@"Attempted to begin distant transaction while one is already in process."];
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

    v10 = [MEMORY[0x277CCACC8] isMainThread];
    v11 = [(ML3DatabaseConnection *)self databasePath];
    v12 = [MLTransactionContext alloc];
    v13 = [(ML3DatabaseConnection *)self privacyContext];
    v14 = [(MLTransactionContext *)v12 initWithPrivacyContext:v13 path:v11 priorityLevel:v10 options:IsFirstPartyMediaApplication];

    mediaLibraryService = self->_mediaLibraryService;
    v29 = 0;
    v16 = [(MLMediaLibraryService *)mediaLibraryService beginTransactionForDatabaseWithContext:v14 error:&v29];
    v17 = v29;
    v18 = [(ML3DatabaseConnection *)self connectionDelegate];
    if (!v17 && v16)
    {
      objc_storeStrong(&self->_currentTransactionID, v16);
      v19 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = [v16 UUIDString];
        *buf = 138543362;
        v31 = v20;
        _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEBUG, "Successfully began transaction with ID %{public}@", buf, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        [v18 connectionDidBeginDatabaseTransaction:self];
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
      v31 = self;
      v32 = 2114;
      v33 = v17;
      _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "Could not begin transaction on distant connection: %{public}@. %{public}@", buf, 0x16u);
    }

    if (!a4)
    {
      v22 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "Reattempting to begin transaction with media library service...", buf, 2u);
      }

      v23 = [(ML3DatabaseDistantConnection *)self _internalBeginTransactionWithBehaviorType:a3 isRetry:1];
      v24 = os_log_create("com.apple.amp.medialibrary", "Default");
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v25)
        {
          v26 = [(NSUUID *)self->_currentTransactionID UUIDString];
          *buf = 138543362;
          v31 = v26;
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

- (BOOL)_openWithFlags:(int)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [(ML3DatabaseConnection *)self connectionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 connectionWillOpenDatabase:self];
  }

  self->_connectionOpen = 1;
  if (objc_opt_respondsToSelector())
  {
    [v4 connectionDidOpenDatabase:0];
  }

  else if (!self->_connectionOpen && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = *MEMORY[0x277CCA450];
    v10[0] = @"Distant connection could not open XPC connection to media library service daemon.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ML3DatabaseErrorDomain" code:0 userInfo:v5];
    [v4 connection:self didFailToOpenDatabaseWithError:v6];
  }

  connectionOpen = self->_connectionOpen;

  return connectionOpen;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"MLMediaLibraryServiceDidTerminateTransactionNotification" object:0];

  v4.receiver = self;
  v4.super_class = ML3DatabaseDistantConnection;
  [(ML3DatabaseConnection *)&v4 dealloc];
}

- (ML3DatabaseDistantConnection)initWithDatabasePath:(id)a3
{
  v9.receiver = self;
  v9.super_class = ML3DatabaseDistantConnection;
  v3 = [(ML3DatabaseConnection *)&v9 initWithDatabasePath:a3];
  if (v3)
  {
    v4 = +[MLMediaLibraryService sharedMediaLibraryService];
    mediaLibraryService = v3->_mediaLibraryService;
    v3->_mediaLibraryService = v4;

    currentTransactionID = v3->_currentTransactionID;
    v3->_currentTransactionID = 0;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v3 selector:sel__serviceTerminatedTransactionNotification_ name:@"MLMediaLibraryServiceDidTerminateTransactionNotification" object:0];
  }

  return v3;
}

@end