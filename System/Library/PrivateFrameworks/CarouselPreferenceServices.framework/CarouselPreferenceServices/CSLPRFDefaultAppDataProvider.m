@interface CSLPRFDefaultAppDataProvider
- (CSLPRFAppDataProviderDelegate)delegate;
- (CSLPRFDefaultAppDataProvider)init;
- (void)applicationLibrary:(id)a3 didAddApplications:(id)a4;
- (void)applicationLibrary:(id)a3 didRemoveApplications:(id)a4;
- (void)applicationLibrary:(id)a3 didUpdateApplications:(id)a4;
- (void)dealloc;
- (void)loadAppsWithCompletion:(id)a3 completionQueue:(id)a4;
@end

@implementation CSLPRFDefaultAppDataProvider

- (CSLPRFAppDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)applicationLibrary:(id)a3 didUpdateApplications:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dataProviderDidChange:self];
}

- (void)applicationLibrary:(id)a3 didRemoveApplications:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dataProviderDidChange:self];
}

- (void)applicationLibrary:(id)a3 didAddApplications:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dataProviderDidChange:self];
}

- (void)loadAppsWithCompletion:(id)a3 completionQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  self->_lock_didLoadApps = 1;
  os_unfair_lock_unlock(&self->_lock);
  applicationLibrary = self->_applicationLibrary;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__CSLPRFDefaultAppDataProvider_loadAppsWithCompletion_completionQueue___block_invoke;
  v11[3] = &unk_278744F48;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(CSLPRFApplicationLibrary *)applicationLibrary allApplicationsWithCompletion:v11];
}

void __71__CSLPRFDefaultAppDataProvider_loadAppsWithCompletion_completionQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CSLPRFDefaultAppDataProvider_loadAppsWithCompletion_completionQueue___block_invoke_2;
  v7[3] = &unk_278744F20;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __71__CSLPRFDefaultAppDataProvider_loadAppsWithCompletion_completionQueue___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CBEAC0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = [v3 bs_mapNoNulls:&__block_literal_global_3833];
  v4 = [v1 dictionaryWithObjects:v3 forKeys:v5];
  (*(v2 + 16))(v2, v4);
}

- (void)dealloc
{
  [(CSLPRFApplicationLibrary *)self->_applicationLibrary removeObserver:self];
  v3.receiver = self;
  v3.super_class = CSLPRFDefaultAppDataProvider;
  [(CSLPRFDefaultAppDataProvider *)&v3 dealloc];
}

- (CSLPRFDefaultAppDataProvider)init
{
  v6.receiver = self;
  v6.super_class = CSLPRFDefaultAppDataProvider;
  v2 = [(CSLPRFDefaultAppDataProvider *)&v6 init];
  if (v2)
  {
    v3 = [CSLPRFApplicationLibrary sharedLibraryForLocation:0];
    applicationLibrary = v2->_applicationLibrary;
    v2->_applicationLibrary = v3;

    [(CSLPRFApplicationLibrary *)v2->_applicationLibrary addObserver:v2];
  }

  return v2;
}

@end