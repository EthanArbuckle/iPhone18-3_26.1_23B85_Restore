@interface ML3DatabaseValidationClient
+ (id)sharedClient;
- (BOOL)_validateDatabaseForPath:(id)path usingLibrary:(id)library;
- (BOOL)isValidatingDatabaseForPath:(id)path;
- (BOOL)validateDatabaseForConnection:(id)connection;
- (BOOL)validateDatabaseForLibrary:(id)library;
- (ML3DatabaseValidationClient)init;
- (id)_validatableDatabaseForPath:(id)path;
@end

@implementation ML3DatabaseValidationClient

uint64_t __43__ML3DatabaseValidationClient_sharedClient__block_invoke()
{
  sharedClient___sharedValidator = objc_alloc_init(ML3DatabaseValidationClient);

  return MEMORY[0x2821F96F8]();
}

- (ML3DatabaseValidationClient)init
{
  v8.receiver = self;
  v8.super_class = ML3DatabaseValidationClient;
  v2 = [(ML3DatabaseValidationClient *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    validatableDatabases = v2->_validatableDatabases;
    v2->_validatableDatabases = v3;

    v5 = dispatch_queue_create("com.apple.MusicLibrary.ML3DatabaseValidationClient", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;
  }

  return v2;
}

+ (id)sharedClient
{
  if (sharedClient___once[0] != -1)
  {
    dispatch_once(sharedClient___once, &__block_literal_global_25388);
  }

  v3 = sharedClient___sharedValidator;

  return v3;
}

- (BOOL)isValidatingDatabaseForPath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ML3DatabaseValidationClient_isValidatingDatabaseForPath___block_invoke;
  block[3] = &unk_278765F28;
  block[4] = self;
  v9 = pathCopy;
  v10 = &v11;
  v6 = pathCopy;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serialQueue;
}

void __59__ML3DatabaseValidationClient_isValidatingDatabaseForPath___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 validationState] == 1;
}

- (BOOL)_validateDatabaseForPath:(id)path usingLibrary:(id)library
{
  pathCopy = path;
  libraryCopy = library;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [(ML3DatabaseValidationClient *)self _validatableDatabaseForPath:pathCopy];
  if (([v8 currentQueueIsValidationQueue] & 1) == 0)
  {
    validationSerialQueue = [v8 validationSerialQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__ML3DatabaseValidationClient__validateDatabaseForPath_usingLibrary___block_invoke;
    v12[3] = &unk_2787657E8;
    v13 = v8;
    v14 = libraryCopy;
    v16 = &v17;
    v15 = pathCopy;
    dispatch_sync(validationSerialQueue, v12);
  }

  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t __69__ML3DatabaseValidationClient__validateDatabaseForPath_usingLibrary___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) validationState];
  if (result == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    return result;
  }

  [*(a1 + 32) setValidationState:1];
  if (([*(a1 + 40) isHomeSharingLibrary] & 1) == 0 && !objc_msgSend(*(a1 + 40), "isUnitTesting"))
  {
    v5 = +[MLMediaLibraryService sharedMediaLibraryService];
    v6 = *(a1 + 48);
    v15 = 0;
    v7 = [(ML3DatabaseValidation *)v5 validateDatabaseAtPath:v6 error:&v15];
    v8 = v15;
    *(*(*(a1 + 56) + 8) + 24) = v7;
    v9 = *(*(*(a1 + 56) + 8) + 24);
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9 == 1)
    {
      if (v11)
      {
        *buf = 0;
        v12 = "Database validation succeeded";
        v13 = v10;
        v14 = 2;
LABEL_11:
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }

    else if (v11)
    {
      *buf = 138543362;
      v18 = v8;
      v12 = "Database validation FAILED with error: %{public}@";
      v13 = v10;
      v14 = 12;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v3 = [ML3DatabaseValidation alloc];
  v4 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__ML3DatabaseValidationClient__validateDatabaseForPath_usingLibrary___block_invoke_2;
  v16[3] = &unk_2787657C0;
  v16[4] = *(a1 + 56);
  v5 = [(ML3DatabaseValidation *)v3 initWithLibrary:v4 delegate:0 completion:v16];
  [(ML3DatabaseValidation *)v5 runValidation];
LABEL_13:

  return [*(a1 + 32) setValidationState:0];
}

- (id)_validatableDatabaseForPath:(id)path
{
  pathCopy = path;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__25336;
  v16 = __Block_byref_object_dispose__25337;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ML3DatabaseValidationClient__validatableDatabaseForPath___block_invoke;
  block[3] = &unk_278765F28;
  v10 = pathCopy;
  v11 = &v12;
  block[4] = self;
  v6 = pathCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __59__ML3DatabaseValidationClient__validatableDatabaseForPath___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [[_ML3ValidatableDatabase alloc] initWithDatabasePath:a1[5]];
    [*(a1[4] + 8) setObject:v5 forKey:a1[5]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (BOOL)validateDatabaseForConnection:(id)connection
{
  connectionCopy = connection;
  databasePath = [connectionCopy databasePath];

  if (!databasePath)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseValidationClient.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"connection.databasePath != nil"}];
  }

  databasePath2 = [connectionCopy databasePath];
  v8 = [(ML3DatabaseValidationClient *)self _validateDatabaseForPath:databasePath2 usingLibrary:0];

  return v8;
}

- (BOOL)validateDatabaseForLibrary:(id)library
{
  libraryCopy = library;
  databasePath = [libraryCopy databasePath];
  LOBYTE(self) = [(ML3DatabaseValidationClient *)self _validateDatabaseForPath:databasePath usingLibrary:libraryCopy];

  return self;
}

@end