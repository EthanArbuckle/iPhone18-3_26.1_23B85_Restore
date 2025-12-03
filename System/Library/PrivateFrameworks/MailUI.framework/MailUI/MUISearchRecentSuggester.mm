@interface MUISearchRecentSuggester
+ (OS_os_log)log;
+ (id)suggesterWithPersistentDirectory:(id)directory;
- (MUISearchRecentSuggester)initWithPersistentDirectory:(id)directory;
- (NSArray)categories;
- (id)generateSuggestionsUsingPhraseManager:(id)manager handler:(id)handler;
- (void)_excludeStorageURLFromBackup;
- (void)_removeOldSuggestions;
- (void)addSuggestion:(id)suggestion;
- (void)dealloc;
- (void)deleteAllSuggestions;
- (void)deleteSuggestion:(id)suggestion;
- (void)loadRecentSearches;
- (void)saveRecentSearches;
@end

@implementation MUISearchRecentSuggester

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MUISearchRecentSuggester_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_15 != -1)
  {
    dispatch_once(&log_onceToken_15, block);
  }

  v2 = log_log_15;

  return v2;
}

void __31__MUISearchRecentSuggester_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_15;
  log_log_15 = v2;
}

- (MUISearchRecentSuggester)initWithPersistentDirectory:(id)directory
{
  v33[2] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v30.receiver = self;
  v30.super_class = MUISearchRecentSuggester;
  v5 = [(MUISearchRecentSuggester *)&v30 init];
  if (v5)
  {
    v25 = directoryCopy;
    v6 = [directoryCopy URLByAppendingPathComponent:@"recentSearches.plist" isDirectory:0];
    storageURL = v5->_storageURL;
    v5->_storageURL = v6;

    v8 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mailui.MUISearchRecentSuggester.excludeFromBackupScheduler" qualityOfService:17];
    excludeFromBackupScheduler = v5->_excludeFromBackupScheduler;
    v5->_excludeFromBackupScheduler = v8;

    v5->_maxRecentCount = 3;
    v10 = +[MUISearchSuggestionCategory genericCategory];
    v33[0] = v10;
    v11 = +[MUISearchSuggestionCategory recentGenericCategory];
    v33[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    supportedCategories = v5->_supportedCategories;
    v5->_supportedCategories = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    recentSearches = v5->_recentSearches;
    v5->_recentSearches = v14;

    [(MUISearchRecentSuggester *)v5 loadRecentSearches];
    v5->_needSave = 0;
    v16 = *MEMORY[0x277D76770];
    v32[0] = *MEMORY[0x277D76768];
    v32[1] = v16;
    [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v29 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v26 + 1) + 8 * i);
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter addObserver:v5 selector:sel_saveRecentSearches name:v22 object:0];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v19);
    }

    [(MUISearchRecentSuggester *)v5 _excludeStorageURLFromBackup];
    directoryCopy = v25;
  }

  return v5;
}

- (void)dealloc
{
  [(MUISearchRecentSuggester *)self saveRecentSearches];
  v3.receiver = self;
  v3.super_class = MUISearchRecentSuggester;
  [(MUISearchRecentSuggester *)&v3 dealloc];
}

+ (id)suggesterWithPersistentDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [[MUISearchRecentSuggester alloc] initWithPersistentDirectory:directoryCopy];

  return v4;
}

- (NSArray)categories
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = +[MUISearchSuggestionCategory recentGenericCategory];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_excludeStorageURLFromBackup
{
  v3 = self->_storageURL;
  excludeFromBackupScheduler = self->_excludeFromBackupScheduler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__MUISearchRecentSuggester__excludeStorageURLFromBackup__block_invoke;
  v6[3] = &unk_278188BB0;
  v7 = v3;
  v5 = v3;
  [(EFScheduler *)excludeFromBackupScheduler performBlock:v6];
}

void __56__MUISearchRecentSuggester__excludeStorageURLFromBackup__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *MEMORY[0x277CBE878];
  v7 = 0;
  v4 = [v1 setResourceValue:MEMORY[0x277CBEC38] forKey:v3 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = +[MUISearchRecentSuggester log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __56__MUISearchRecentSuggester__excludeStorageURLFromBackup__block_invoke_cold_1(v2, v6);
    }
  }
}

- (void)deleteSuggestion:(id)suggestion
{
  v10 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = +[MUISearchRecentSuggester log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [suggestionCopy debugDescription];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "Delete suggestion %{public}@.", &v8, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  recentSearches = [(MUISearchRecentSuggester *)self recentSearches];
  [recentSearches removeObject:suggestionCopy];

  self->_needSave = 1;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)deleteAllSuggestions
{
  v3 = +[MUISearchRecentSuggester log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_214A5E000, v3, OS_LOG_TYPE_DEFAULT, "Delete all suggestions", v5, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  recentSearches = [(MUISearchRecentSuggester *)self recentSearches];
  [recentSearches removeAllObjects];

  self->_needSave = 1;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addSuggestion:(id)suggestion
{
  v15 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = +[MUISearchRecentSuggester log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [suggestionCopy ef_publicDescription];
    v13 = 138543362;
    v14 = ef_publicDescription;
    _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "Add suggestion %{public}@.", &v13, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  supportedCategories = self->_supportedCategories;
  category = [suggestionCopy category];
  LODWORD(supportedCategories) = [(NSArray *)supportedCategories containsObject:category];

  if (supportedCategories)
  {
    recentSearches = [(MUISearchRecentSuggester *)self recentSearches];
    v10 = [recentSearches member:suggestionCopy];

    if (!v10)
    {
      recentSearches2 = [(MUISearchRecentSuggester *)self recentSearches];
      [recentSearches2 addObject:suggestionCopy];

      v10 = suggestionCopy;
    }

    date = [MEMORY[0x277CBEAA8] date];
    [v10 setLastUsedTime:date];

    self->_needSave = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeOldSuggestions
{
  recentSearches = [(MUISearchRecentSuggester *)self recentSearches];
  v2 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_32];
  [recentSearches filterUsingPredicate:v2];
}

BOOL __49__MUISearchRecentSuggester__removeOldSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  v5 = [v3 lastUsedTime];

  [v4 timeIntervalSinceDate:v5];
  v7 = v6 <= 604800.0;

  return v7;
}

- (void)saveRecentSearches
{
  ef_publicDescription = [self ef_publicDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_214A5E000, v2, v3, "Failed to write recent searches %{public}@", v4, v5, v6, v7, v8);
}

id __46__MUISearchRecentSuggester_saveRecentSearches__block_invoke(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"s";
  v2 = a2;
  v3 = [v2 spotlightSuggestion];
  v7[1] = @"l";
  v8[0] = v3;
  v4 = [v2 lastUsedTime];

  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)loadRecentSearches
{
  v7 = [a2 debugDescription];
  *self = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_214A5E000, a4, OS_LOG_TYPE_ERROR, "Drop %@ from recent searches.", self, 0xCu);
}

- (id)generateSuggestionsUsingPhraseManager:(id)manager handler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  handlerCopy = handler;
  if ([managerCopy phraseKind] == 1)
  {
    os_unfair_lock_lock(&self->_lock);
    recentSearches = [(MUISearchRecentSuggester *)self recentSearches];
    allObjects = [recentSearches allObjects];

    os_unfair_lock_unlock(&self->_lock);
    v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastUsedTime" ascending:0];
    v19[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v12 = [allObjects sortedArrayUsingDescriptors:v11];

    v13 = [v12 ef_prefix:{-[MUISearchRecentSuggester maxRecentCount](self, "maxRecentCount")}];

    v14 = +[MUISearchRecentSuggester log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 ef_mapSelector:sel_ef_publicDescription];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_214A5E000, v14, OS_LOG_TYPE_DEFAULT, "Found recent suggestions %@", &v17, 0xCu);
    }

    handlerCopy[2](handlerCopy, v13);
  }

  return 0;
}

void __56__MUISearchRecentSuggester__excludeStorageURLFromBackup__block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_214A5E000, a2, OS_LOG_TYPE_ERROR, "Failed to set NSURLIsExcludedFromBackupKey property on recent search plist at %@", &v3, 0xCu);
}

@end