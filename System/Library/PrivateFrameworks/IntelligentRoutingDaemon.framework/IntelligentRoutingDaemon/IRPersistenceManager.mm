@interface IRPersistenceManager
+ (id)defaultModelsDirectory;
- (BOOL)_isStoreConnected;
- (BOOL)connectToStore;
- (BOOL)disconnectFromStore;
- (IRPersistenceManager)init;
- (IRPersistenceManager)initWithModelsDirectory:(id)directory storesDirectory:(id)storesDirectory;
- (id)_getDefaultStoresDirectory;
- (id)createManagedObjectContext;
- (id)getLocalStoreURL;
- (void)_getDefaultStoresDirectory;
@end

@implementation IRPersistenceManager

- (IRPersistenceManager)init
{
  v3 = +[IRPersistenceManager defaultModelsDirectory];
  _getDefaultStoresDirectory = [(IRPersistenceManager *)self _getDefaultStoresDirectory];
  v5 = [(IRPersistenceManager *)self initWithModelsDirectory:v3 storesDirectory:_getDefaultStoresDirectory];

  return v5;
}

- (IRPersistenceManager)initWithModelsDirectory:(id)directory storesDirectory:(id)storesDirectory
{
  v30 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  storesDirectoryCopy = storesDirectory;
  if (![directoryCopy isFileURL] || !objc_msgSend(storesDirectoryCopy, "isFileURL"))
  {
    goto LABEL_9;
  }

  v27.receiver = self;
  v27.super_class = IRPersistenceManager;
  self = [(IRPersistenceManager *)&v27 init];
  if (self)
  {
    v8 = MEMORY[0x277CBEBC0];
    path = [directoryCopy path];
    v10 = [v8 fileURLWithPath:path isDirectory:1];
    modelsDirectory = self->_modelsDirectory;
    self->_modelsDirectory = v10;

    v12 = MEMORY[0x277CBEBC0];
    path2 = [storesDirectoryCopy path];
    v14 = [v12 fileURLWithPath:path2 isDirectory:1];
    storesDirectory = self->_storesDirectory;
    self->_storesDirectory = v14;

    [(IRPersistenceManager *)self _enableConcurrencyDebug];
    v16 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:self->_modelsDirectory];
    managedObjectModel = self->_managedObjectModel;
    self->_managedObjectModel = v16;

    if (self->_managedObjectModel)
    {
      v18 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_managedObjectModel;
        v20 = v18;
        versionIdentifiers = [(NSManagedObjectModel *)v19 versionIdentifiers];
        *buf = 138412290;
        v29 = versionIdentifiers;
        _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_DEFAULT, "#persistence-manager, Loaded ManagedObjectModel Version: %@", buf, 0xCu);
      }

      v22 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:self->_managedObjectModel];
      persistentStoreCoordinator = self->_persistentStoreCoordinator;
      self->_persistentStoreCoordinator = v22;

      self->_lock._os_unfair_lock_opaque = 0;
      goto LABEL_8;
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

LABEL_8:
  self = self;
  selfCopy = self;
LABEL_10:

  v25 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)getLocalStoreURL
{
  v2 = [(NSURL *)self->_storesDirectory URLByAppendingPathComponent:@"intelligentRouting"];
  v3 = [v2 URLByAppendingPathExtension:@"sqlite"];

  return v3;
}

- (BOOL)connectToStore
{
  os_unfair_lock_lock(&self->_lock);
  if ([(IRPersistenceManager *)self _isStoreConnected])
  {
    v3 = 1;
  }

  else
  {
    v4 = [IRPersistenceStore alloc];
    getLocalStoreURL = [(IRPersistenceManager *)self getLocalStoreURL];
    v6 = [(IRPersistenceStore *)v4 initWithURL:getLocalStoreURL];
    persistenceStore = self->_persistenceStore;
    self->_persistenceStore = v6;

    v3 = [(IRPersistenceStore *)self->_persistenceStore loadWithCoordinator:self->_persistentStoreCoordinator];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)disconnectFromStore
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if ([(IRPersistenceManager *)self _isStoreConnected])
  {
    persistentStores = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator persistentStores];
    firstObject = [persistentStores firstObject];

    persistentStoreCoordinator = self->_persistentStoreCoordinator;
    v14 = 0;
    [(NSPersistentStoreCoordinator *)persistentStoreCoordinator removePersistentStore:firstObject error:&v14];
    v6 = v14;
    if (v6)
    {
      v7 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v8 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [firstObject URL];
        *buf = 136315906;
        v16 = "#persistence-manager, ";
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v9;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Persistence manager disconnect error] Failed to disconnect from store %@ with error %@", buf, 0x2Au);
      }
    }

    _isStoreConnected = [(IRPersistenceManager *)self _isStoreConnected];

    v11 = !_isStoreConnected;
  }

  else
  {
    v11 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)createManagedObjectContext
{
  os_unfair_lock_lock(&self->_lock);
  if ([(IRPersistenceManager *)self _isStoreConnected])
  {
    v3 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    errorMergePolicy = [MEMORY[0x277CBE460] errorMergePolicy];
    [v3 setMergePolicy:errorMergePolicy];

    persistentStoreCoordinator = [(IRPersistenceManager *)self persistentStoreCoordinator];
    [v3 setPersistentStoreCoordinator:persistentStoreCoordinator];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    [v3 setName:processName];

    name = [v3 name];
    [v3 setTransactionAuthor:name];

    [v3 setUndoManager:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

+ (id)defaultModelsDirectory
{
  v2 = MEMORY[0x277CBEBC0];
  iRFrameworkBundle = [MEMORY[0x277CCA8D8] IRFrameworkBundle];
  v4 = [iRFrameworkBundle pathForResource:@"intelligentRouting" ofType:@"momd"];
  v5 = [v2 fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (id)_getDefaultStoresDirectory
{
  userLibraryDirectoryPath = [MEMORY[0x277CCAA00] userLibraryDirectoryPath];
  v3 = userLibraryDirectoryPath;
  if (userLibraryDirectoryPath)
  {
    v4 = [userLibraryDirectoryPath stringByAppendingPathComponent:@"com.apple.intelligentroutingd"];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager fileExistsAtPath:v4];

    if ((v6 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), v14 = 0, v8 = objc_msgSend(v7, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v4, 1, 0, &v14), v9 = v14, v7, v8) && !v9)
    {
      v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];

      goto LABEL_12;
    }

    v12 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRPersistenceManager *)v4 _getDefaultStoresDirectory];
    }
  }

  else
  {
    v11 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRPersistenceManager *)v11 _getDefaultStoresDirectory];
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)_isStoreConnected
{
  persistentStores = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator persistentStores];
  v3 = [persistentStores count] != 0;

  return v3;
}

- (void)_getDefaultStoresDirectory
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25543D000, log, OS_LOG_TYPE_ERROR, "#persistence-manager, [ErrorId - Store directory create error] Failed to create %@, error, %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end