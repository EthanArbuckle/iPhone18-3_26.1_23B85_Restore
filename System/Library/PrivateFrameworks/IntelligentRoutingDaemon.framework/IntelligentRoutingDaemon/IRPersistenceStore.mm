@interface IRPersistenceStore
- (BOOL)loadWithCoordinator:(id)coordinator;
- (IRPersistenceStore)initWithURL:(id)l;
@end

@implementation IRPersistenceStore

- (IRPersistenceStore)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = IRPersistenceStore;
  v5 = [(IRPersistenceStore *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_new();
    storeDescription = v5->_storeDescription;
    v5->_storeDescription = v6;

    [(NSPersistentStoreDescription *)v5->_storeDescription setShouldAddStoreAsynchronously:0];
    [(NSPersistentStoreDescription *)v5->_storeDescription setShouldMigrateStoreAutomatically:1];
    [(NSPersistentStoreDescription *)v5->_storeDescription setShouldInferMappingModelAutomatically:1];
    [(NSPersistentStoreDescription *)v5->_storeDescription setURL:lCopy];
    [(NSPersistentStoreDescription *)v5->_storeDescription setType:*MEMORY[0x277CBE2E8]];
    [(NSPersistentStoreDescription *)v5->_storeDescription setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
    [(NSPersistentStoreDescription *)v5->_storeDescription setValue:@"WAL" forPragmaNamed:@"journal_mode"];
  }

  return v5;
}

- (BOOL)loadWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x3032000000;
  v11[2] = __Block_byref_object_copy__5;
  v11[3] = __Block_byref_object_dispose__5;
  v12 = 0;
  storeDescription = self->_storeDescription;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__IRPersistenceStore_loadWithCoordinator___block_invoke;
  v9[3] = &unk_2797E1760;
  v9[4] = &v10;
  [coordinatorCopy addPersistentStoreWithDescription:storeDescription completionHandler:v9];
  if (*(v11[0] + 40))
  {
    v6 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRPersistenceStore *)v11 loadWithCoordinator:v6];
    }

    v7 = *(v11[0] + 40) == 0;
  }

  else
  {
    v7 = 1;
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)loadWithCoordinator:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_25543D000, a2, OS_LOG_TYPE_ERROR, "#persistence-store, [ErrorId - Store Load error] Could not add store with error = %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end