@interface CNAvatarCacheChangeListener
- (CNAvatarCacheChangeListener)init;
- (CNAvatarCacheChangeListener)initWithContactStore:(id)store delegate:(id)delegate;
- (CNAvatarCacheChangeListenerDelegate)delegate;
- (id)description;
- (id)makeAnalysisTask;
- (id)makeDatabaseChangedTask;
- (id)makeReportingTaskWithIdentifiers:(id)identifiers;
- (void)databaseChanged:(id)changed;
- (void)loadCurrentHistoryToken;
- (void)start;
- (void)stop;
@end

@implementation CNAvatarCacheChangeListener

- (void)loadCurrentHistoryToken
{
  rawPreprocessor = [(CNAvatarCacheChangeListener *)self rawPreprocessor];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__CNAvatarCacheChangeListener_loadCurrentHistoryToken__block_invoke;
  v4[3] = &unk_1E76E7D10;
  v4[4] = self;
  [rawPreprocessor performBlock:v4];
}

- (void)start
{
  notificationCenter = [(CNAvatarCacheChangeListener *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_databaseChanged_ name:*MEMORY[0x1E695C3D8] object:0];
}

void __54__CNAvatarCacheChangeListener_loadCurrentHistoryToken__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) store];
  v2 = [v3 currentHistoryToken];
  [*(a1 + 32) setCurrentHistoryToken:v2];
}

- (CNAvatarCacheChangeListener)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNAvatarCacheChangeListener)initWithContactStore:(id)store delegate:(id)delegate
{
  storeCopy = store;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = CNAvatarCacheChangeListener;
  v9 = [(CNAvatarCacheChangeListener *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    notificationCenter = v10->_notificationCenter;
    v10->_notificationCenter = defaultCenter;

    defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
    v14 = [defaultProvider newSerialSchedulerWithName:@"com.apple.contacts.ui.avatar-cache.notification-preprocessor"];
    rawPreprocessor = v10->_rawPreprocessor;
    v10->_rawPreprocessor = v14;

    v16 = [objc_alloc(MEMORY[0x1E6996670]) initWithScheduler:v10->_rawPreprocessor coalescingWindow:5.0];
    preprocessor = v10->_preprocessor;
    v10->_preprocessor = v16;

    [(CNAvatarCacheChangeListener *)v10 loadCurrentHistoryToken];
    v18 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v3 appendName:@"delegate" object:WeakRetained];

  build = [v3 build];

  return build;
}

- (void)stop
{
  notificationCenter = [(CNAvatarCacheChangeListener *)self notificationCenter];
  [notificationCenter removeObserver:self name:0 object:0];
}

- (void)databaseChanged:(id)changed
{
  makeDatabaseChangedTask = [(CNAvatarCacheChangeListener *)self makeDatabaseChangedTask];
  preprocessor = [(CNAvatarCacheChangeListener *)self preprocessor];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CNAvatarCacheChangeListener_databaseChanged___block_invoke;
  v7[3] = &unk_1E76E7D10;
  v8 = makeDatabaseChangedTask;
  v6 = makeDatabaseChangedTask;
  [preprocessor performBlock:v7];
}

- (id)makeDatabaseChangedTask
{
  v3 = [CNAvatarCacheChangeHistoryAnalysisTask alloc];
  store = [(CNAvatarCacheChangeListener *)self store];
  currentHistoryToken = [(CNAvatarCacheChangeListener *)self currentHistoryToken];
  v6 = [(CNAvatarCacheChangeHistoryAnalysisTask *)v3 initWithContactStore:store startingToken:currentHistoryToken];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__CNAvatarCacheChangeListener_makeDatabaseChangedTask__block_invoke;
  v9[3] = &unk_1E76E8F78;
  v9[4] = self;
  v7 = [(CNTask *)v6 flatMap:v9];

  return v7;
}

id __54__CNAvatarCacheChangeListener_makeDatabaseChangedTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currentChangeHistoryToken];
  [*(a1 + 32) setCurrentHistoryToken:v4];

  v5 = *(a1 + 32);
  v6 = [v3 identifiersOfAffectedContacts];

  v7 = [v5 makeReportingTaskWithIdentifiers:v6];

  return v7;
}

- (id)makeAnalysisTask
{
  store = [(CNAvatarCacheChangeListener *)self store];
  currentHistoryToken = [(CNAvatarCacheChangeListener *)self currentHistoryToken];
  v5 = [[CNAvatarCacheChangeHistoryAnalysisTask alloc] initWithContactStore:store startingToken:currentHistoryToken];

  return v5;
}

- (id)makeReportingTaskWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  delegate = [(CNAvatarCacheChangeListener *)self delegate];
  v6 = [[CNAvatarChangeHistoryReportingTask alloc] initWithIdentifiers:identifiersCopy delegate:delegate];

  return v6;
}

- (CNAvatarCacheChangeListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end