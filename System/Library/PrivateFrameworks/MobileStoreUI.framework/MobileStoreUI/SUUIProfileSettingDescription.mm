@interface SUUIProfileSettingDescription
- (SUUIProfileSettingDescription)initWithViewElement:(id)element parent:(id)parent;
- (void)_fetchAccountInfo;
- (void)_fetchProfilePhoto;
- (void)dealloc;
- (void)reloadData;
@end

@implementation SUUIProfileSettingDescription

- (SUUIProfileSettingDescription)initWithViewElement:(id)element parent:(id)parent
{
  v8.receiver = self;
  v8.super_class = SUUIProfileSettingDescription;
  v4 = [(SUUISettingDescription *)&v8 initWithViewElement:element parent:parent];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v4->_operationQueue;
    v4->_operationQueue = v5;

    [(NSOperationQueue *)v4->_operationQueue setQualityOfService:25];
    [(NSOperationQueue *)v4->_operationQueue setName:@"com.apple.iTunesStoreUI.SUUIProfileSettingDescription"];
    [(SUUIProfileSettingDescription *)v4 reloadData];
  }

  return v4;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = SUUIProfileSettingDescription;
  [(SUUIProfileSettingDescription *)&v3 dealloc];
}

- (void)reloadData
{
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(SUUIProfileSettingDescription *)self _fetchAccountInfo];

  [(SUUIProfileSettingDescription *)self _fetchProfilePhoto];
}

- (void)_fetchAccountInfo
{
  v3 = +[SUUIMediaSocialProfileCoordinator sharedCoordinator];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__SUUIProfileSettingDescription__fetchAccountInfo__block_invoke;
  v4[3] = &unk_2798FE5F0;
  objc_copyWeak(&v5, &location);
  [v3 getProfileWithOptions:0 profileBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__SUUIProfileSettingDescription__fetchAccountInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SUUIProfileSettingDescription__fetchAccountInfo__block_invoke_2;
  v5[3] = &unk_2798F7560;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

uint64_t __50__SUUIProfileSettingDescription__fetchAccountInfo__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = WeakRetained == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v11 = WeakRetained;
    v5 = [v3 name];
    v6 = v11[5];
    v11[5] = v5;

    v7 = [*(a1 + 32) handle];
    v8 = v11[4];
    v11[4] = v7;

    v9 = [v11 parent];
    [v9 reloadSettingDescription:v11];

    WeakRetained = v11;
  }

  return MEMORY[0x2821F96F8](v3, WeakRetained);
}

- (void)_fetchProfilePhoto
{
  parent = [(SUUISettingDescription *)self parent];
  clientContext = [parent clientContext];

  v5 = [[SUUIMediaSocialLoadProfilePhotoOperation alloc] initWithClientContext:clientContext];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __51__SUUIProfileSettingDescription__fetchProfilePhoto__block_invoke;
  v9 = &unk_2798FE618;
  objc_copyWeak(&v10, &location);
  [(SUUIMediaSocialLoadProfilePhotoOperation *)v5 setOutputBlock:&v6];
  [(NSOperationQueue *)self->_operationQueue addOperation:v5, v6, v7, v8, v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __51__SUUIProfileSettingDescription__fetchProfilePhoto__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUUIProfileSettingDescription__fetchProfilePhoto__block_invoke_2;
  block[3] = &unk_2798F8C80;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a3;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __51__SUUIProfileSettingDescription__fetchProfilePhoto__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && ((*(a1 + 48) & 1) != 0 || !WeakRetained[7]))
  {
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 7, *(a1 + 32));
    v3 = [v4 parent];
    [v3 reloadSettingDescription:v4];

    WeakRetained = v4;
  }
}

@end