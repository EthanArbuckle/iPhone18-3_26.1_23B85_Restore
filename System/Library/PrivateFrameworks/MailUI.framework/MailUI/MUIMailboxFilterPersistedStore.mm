@interface MUIMailboxFilterPersistedStore
- (MUIMailboxFilterPersistedStore)initWithBaseStoragePath:(id)a3 defaultsRepresentationProvider:(id)a4 filterRepresentationProvider:(id)a5 mailboxFilterClass:(Class)a6 filterProviderClass:(Class)a7;
- (id)_cleanStorageToWrite;
- (id)_filterViewModelForContext:(id)a3;
- (id)_filtersForContext:(id)a3 provider:(id)a4;
- (id)filterViewModelForContext:(id)a3;
- (void)_load;
- (void)_setFilters:(id)a3 forContext:(id)a4 provider:(id)a5;
- (void)_write;
- (void)dealloc;
@end

@implementation MUIMailboxFilterPersistedStore

- (void)_load
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = [(MUIMailboxFilterPersistedStore *)self storagePath];
  v8 = [v3 initWithContentsOfFile:v4];

  v5 = [v8 objectForKeyedSubscript:@"version"];
  LODWORD(v4) = [v5 isEqualToString:@"1"];

  if (v4)
  {
    v6 = [v8 objectForKeyedSubscript:@"preference"];
    v7 = [v6 mutableCopy];
    [(MUIMailboxFilterPersistedStore *)self setStorage:v7];
  }
}

uint64_t ___ef_log_MUIMailboxFilterPersistedStore_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MUIMailboxFilterPersistedStore");
  v1 = _ef_log_MUIMailboxFilterPersistedStore_log;
  _ef_log_MUIMailboxFilterPersistedStore_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MUIMailboxFilterPersistedStore)initWithBaseStoragePath:(id)a3 defaultsRepresentationProvider:(id)a4 filterRepresentationProvider:(id)a5 mailboxFilterClass:(Class)a6 filterProviderClass:(Class)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v29.receiver = self;
  v29.super_class = MUIMailboxFilterPersistedStore;
  v15 = [(MUIMailboxFilterPersistedStore *)&v29 init];
  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    storage = v15->_storage;
    v15->_storage = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    viewModelPool = v15->_viewModelPool;
    v15->_viewModelPool = v18;

    v20 = objc_opt_new();
    cancelationToken = v15->_cancelationToken;
    v15->_cancelationToken = v20;

    v22 = [v12 stringByAppendingPathComponent:@"FiltersPreference.plist"];
    storagePath = v15->_storagePath;
    v15->_storagePath = v22;

    v24 = [v13 copy];
    defaultsRepresentationProvider = v15->_defaultsRepresentationProvider;
    v15->_defaultsRepresentationProvider = v24;

    v26 = [v14 copy];
    filterRepresentationProvider = v15->_filterRepresentationProvider;
    v15->_filterRepresentationProvider = v26;

    if (!a6)
    {
      a6 = objc_opt_class();
    }

    objc_storeStrong(&v15->_mailboxFilterClass, a6);
    if (!a7)
    {
      a7 = objc_opt_class();
    }

    objc_storeStrong(&v15->_filterProviderClass, a7);
    [(MUIMailboxFilterPersistedStore *)v15 _load];
  }

  return v15;
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_cancelationToken cancel];
  v3.receiver = self;
  v3.super_class = MUIMailboxFilterPersistedStore;
  [(MUIMailboxFilterPersistedStore *)&v3 dealloc];
}

- (id)filterViewModelForContext:(id)a3
{
  v4 = a3;
  v5 = NSStringKeyForStorageFromContext(v4);
  v6 = [(MUIMailboxFilterPersistedStore *)self viewModelPool];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v7 = [(MUIMailboxFilterPersistedStore *)self _filterViewModelForContext:v4];
    v8 = [(MUIMailboxFilterPersistedStore *)self viewModelPool];
    [v8 setObject:v7 forKeyedSubscript:v5];
  }

  [v7 setFilterContext:v4];

  return v7;
}

- (id)_filterViewModelForContext:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(-[MUIMailboxFilterPersistedStore filterProviderClass](self "filterProviderClass"))];
  v6 = objc_alloc_init(MUIMailboxFiltersFormatter);
  v7 = [(MUIMailboxFilterPersistedStore *)self _filtersForContext:v4 provider:v5];
  v8 = -[MUIMailboxFilterViewModel initWithProvider:formatter:selectedFilters:isFilteringAvailable:]([MUIMailboxFilterViewModel alloc], "initWithProvider:formatter:selectedFilters:isFilteringAvailable:", v5, v6, v7, [v4 isFilteringAvailable]);
  objc_initWeak(&location, self);
  v9 = [(MUIMailboxFilterViewModel *)v8 observableSelectedFilters];
  v10 = MEMORY[0x277D07188];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __61__MUIMailboxFilterPersistedStore__filterViewModelForContext___block_invoke;
  v20 = &unk_27818A828;
  objc_copyWeak(&v23, &location);
  v11 = v4;
  v21 = v11;
  v12 = v5;
  v22 = v12;
  v13 = [v10 observerWithResultBlock:&v17];
  v14 = [v9 subscribe:{v13, v17, v18, v19, v20}];

  v15 = [(MUIMailboxFilterPersistedStore *)self cancelationToken];
  [v15 addCancelable:v14];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v8;
}

void __61__MUIMailboxFilterPersistedStore__filterViewModelForContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setFilters:v3 forContext:*(a1 + 32) provider:*(a1 + 40)];
}

- (void)_setFilters:(id)a3 forContext:(id)a4 provider:(id)a5
{
  v7 = a4;
  v8 = a3;
  v13 = NSStringKeyForStorageFromContext(v7);
  v9 = [(MUIMailboxFilterPersistedStore *)self defaultsRepresentationProvider];
  v10 = (v9)[2](v9, v8);

  v11 = [(MUIMailboxFilterPersistedStore *)self storage];
  [v11 setObject:v10 forKeyedSubscript:v13];

  v12 = [v7 focus];

  if (!v12)
  {
    [(MUIMailboxFilterPersistedStore *)self _write];
  }
}

- (id)_filtersForContext:(id)a3 provider:(id)a4
{
  v6 = a4;
  v7 = NSStringKeyForStorageFromContext(a3);
  v8 = [(MUIMailboxFilterPersistedStore *)self filterRepresentationProvider];
  v9 = [(MUIMailboxFilterPersistedStore *)self storage];
  v10 = [v9 objectForKeyedSubscript:v7];
  v11 = (v8)[2](v8, v10, v6);

  return v11;
}

- (void)_write
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 ef_publicDescription];
  v6 = [a2 ef_publicDescription];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_214A5E000, a3, OS_LOG_TYPE_ERROR, "error while saving filter preference: %{public}@ - %{public}@", &v7, 0x16u);
}

- (id)_cleanStorageToWrite
{
  v2 = [(MUIMailboxFilterPersistedStore *)self storage];
  v3 = [v2 ef_filter:&__block_literal_global_26];

  return v3;
}

@end