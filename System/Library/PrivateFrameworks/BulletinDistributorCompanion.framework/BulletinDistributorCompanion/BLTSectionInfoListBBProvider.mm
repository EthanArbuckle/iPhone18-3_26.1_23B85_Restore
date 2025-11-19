@interface BLTSectionInfoListBBProvider
- (BLTSectionInfoListBBProvider)initWithSettingsGateway:(id)a3;
- (BLTSectionInfoListProviderDelegate)delegate;
- (void)applicationsDidInstall:(id)a3;
- (void)dealloc;
- (void)reloadSection:(id)a3 completion:(id)a4;
- (void)sectionInfoObserver:(id)a3 removedSectionWithSectionID:(id)a4 transaction:(id)a5;
- (void)sectionInfoObserver:(id)a3 updatedSectionInfoForSectionIDs:(id)a4 transaction:(id)a5;
@end

@implementation BLTSectionInfoListBBProvider

- (BLTSectionInfoListBBProvider)initWithSettingsGateway:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BLTSectionInfoListBBProvider;
  v5 = [(BLTSectionInfoListBBProvider *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.bulletindistributor.sectioninfolistbbprovider", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = [[BLTSectionInfoObserver alloc] initWithSettingsGateway:v4];
    observer = v5->_observer;
    v5->_observer = v9;

    [(BLTSectionInfoObserver *)v5->_observer setDelegate:v5];
    v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
    appWorkspace = v5->_appWorkspace;
    v5->_appWorkspace = v11;

    [(LSApplicationWorkspace *)v5->_appWorkspace addObserver:v5];
  }

  return v5;
}

- (void)dealloc
{
  [(LSApplicationWorkspace *)self->_appWorkspace removeObserver:self];
  v3.receiver = self;
  v3.super_class = BLTSectionInfoListBBProvider;
  [(BLTSectionInfoListBBProvider *)&v3 dealloc];
}

- (void)reloadSection:(id)a3 completion:(id)a4
{
  observer = self->_observer;
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  [(BLTSectionInfoObserver *)observer updateSectionInfoBySectionIDs:v8 completion:v7];
}

- (void)sectionInfoObserver:(id)a3 updatedSectionInfoForSectionIDs:(id)a4 transaction:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained updateSectionInfoForSectionIDs:v8 transaction:v7];
}

- (void)sectionInfoObserver:(id)a3 removedSectionWithSectionID:(id)a4 transaction:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removedSectionWithSectionID:v8 transaction:v7];
}

- (void)applicationsDidInstall:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) bundleIdentifier];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [(BLTSectionInfoObserver *)self->_observer updateSectionInfoBySectionIDs:v5 completion:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BLTSectionInfoListProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end