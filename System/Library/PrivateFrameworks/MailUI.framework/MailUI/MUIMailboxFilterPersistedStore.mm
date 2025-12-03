@interface MUIMailboxFilterPersistedStore
- (MUIMailboxFilterPersistedStore)initWithBaseStoragePath:(id)path defaultsRepresentationProvider:(id)provider filterRepresentationProvider:(id)representationProvider mailboxFilterClass:(Class)class filterProviderClass:(Class)providerClass;
- (id)_cleanStorageToWrite;
- (id)_filterViewModelForContext:(id)context;
- (id)_filtersForContext:(id)context provider:(id)provider;
- (id)filterViewModelForContext:(id)context;
- (void)_load;
- (void)_setFilters:(id)filters forContext:(id)context provider:(id)provider;
- (void)_write;
- (void)dealloc;
@end

@implementation MUIMailboxFilterPersistedStore

- (void)_load
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  storagePath = [(MUIMailboxFilterPersistedStore *)self storagePath];
  v8 = [v3 initWithContentsOfFile:storagePath];

  v5 = [v8 objectForKeyedSubscript:@"version"];
  LODWORD(storagePath) = [v5 isEqualToString:@"1"];

  if (storagePath)
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

- (MUIMailboxFilterPersistedStore)initWithBaseStoragePath:(id)path defaultsRepresentationProvider:(id)provider filterRepresentationProvider:(id)representationProvider mailboxFilterClass:(Class)class filterProviderClass:(Class)providerClass
{
  pathCopy = path;
  providerCopy = provider;
  representationProviderCopy = representationProvider;
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

    v22 = [pathCopy stringByAppendingPathComponent:@"FiltersPreference.plist"];
    storagePath = v15->_storagePath;
    v15->_storagePath = v22;

    v24 = [providerCopy copy];
    defaultsRepresentationProvider = v15->_defaultsRepresentationProvider;
    v15->_defaultsRepresentationProvider = v24;

    v26 = [representationProviderCopy copy];
    filterRepresentationProvider = v15->_filterRepresentationProvider;
    v15->_filterRepresentationProvider = v26;

    if (!class)
    {
      class = objc_opt_class();
    }

    objc_storeStrong(&v15->_mailboxFilterClass, class);
    if (!providerClass)
    {
      providerClass = objc_opt_class();
    }

    objc_storeStrong(&v15->_filterProviderClass, providerClass);
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

- (id)filterViewModelForContext:(id)context
{
  contextCopy = context;
  v5 = NSStringKeyForStorageFromContext(contextCopy);
  viewModelPool = [(MUIMailboxFilterPersistedStore *)self viewModelPool];
  v7 = [viewModelPool objectForKeyedSubscript:v5];

  if (!v7)
  {
    v7 = [(MUIMailboxFilterPersistedStore *)self _filterViewModelForContext:contextCopy];
    viewModelPool2 = [(MUIMailboxFilterPersistedStore *)self viewModelPool];
    [viewModelPool2 setObject:v7 forKeyedSubscript:v5];
  }

  [v7 setFilterContext:contextCopy];

  return v7;
}

- (id)_filterViewModelForContext:(id)context
{
  contextCopy = context;
  v5 = [objc_alloc(-[MUIMailboxFilterPersistedStore filterProviderClass](self "filterProviderClass"))];
  v6 = objc_alloc_init(MUIMailboxFiltersFormatter);
  v7 = [(MUIMailboxFilterPersistedStore *)self _filtersForContext:contextCopy provider:v5];
  v8 = -[MUIMailboxFilterViewModel initWithProvider:formatter:selectedFilters:isFilteringAvailable:]([MUIMailboxFilterViewModel alloc], "initWithProvider:formatter:selectedFilters:isFilteringAvailable:", v5, v6, v7, [contextCopy isFilteringAvailable]);
  objc_initWeak(&location, self);
  observableSelectedFilters = [(MUIMailboxFilterViewModel *)v8 observableSelectedFilters];
  v10 = MEMORY[0x277D07188];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __61__MUIMailboxFilterPersistedStore__filterViewModelForContext___block_invoke;
  v20 = &unk_27818A828;
  objc_copyWeak(&v23, &location);
  v11 = contextCopy;
  v21 = v11;
  v12 = v5;
  v22 = v12;
  v13 = [v10 observerWithResultBlock:&v17];
  v14 = [observableSelectedFilters subscribe:{v13, v17, v18, v19, v20}];

  cancelationToken = [(MUIMailboxFilterPersistedStore *)self cancelationToken];
  [cancelationToken addCancelable:v14];

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

- (void)_setFilters:(id)filters forContext:(id)context provider:(id)provider
{
  contextCopy = context;
  filtersCopy = filters;
  v13 = NSStringKeyForStorageFromContext(contextCopy);
  defaultsRepresentationProvider = [(MUIMailboxFilterPersistedStore *)self defaultsRepresentationProvider];
  v10 = (defaultsRepresentationProvider)[2](defaultsRepresentationProvider, filtersCopy);

  storage = [(MUIMailboxFilterPersistedStore *)self storage];
  [storage setObject:v10 forKeyedSubscript:v13];

  focus = [contextCopy focus];

  if (!focus)
  {
    [(MUIMailboxFilterPersistedStore *)self _write];
  }
}

- (id)_filtersForContext:(id)context provider:(id)provider
{
  providerCopy = provider;
  v7 = NSStringKeyForStorageFromContext(context);
  filterRepresentationProvider = [(MUIMailboxFilterPersistedStore *)self filterRepresentationProvider];
  storage = [(MUIMailboxFilterPersistedStore *)self storage];
  v10 = [storage objectForKeyedSubscript:v7];
  v11 = (filterRepresentationProvider)[2](filterRepresentationProvider, v10, providerCopy);

  return v11;
}

- (void)_write
{
  v11 = *MEMORY[0x277D85DE8];
  ef_publicDescription = [self ef_publicDescription];
  ef_publicDescription2 = [a2 ef_publicDescription];
  v7 = 138543618;
  v8 = ef_publicDescription;
  v9 = 2114;
  v10 = ef_publicDescription2;
  _os_log_error_impl(&dword_214A5E000, a3, OS_LOG_TYPE_ERROR, "error while saving filter preference: %{public}@ - %{public}@", &v7, 0x16u);
}

- (id)_cleanStorageToWrite
{
  storage = [(MUIMailboxFilterPersistedStore *)self storage];
  v3 = [storage ef_filter:&__block_literal_global_26];

  return v3;
}

@end