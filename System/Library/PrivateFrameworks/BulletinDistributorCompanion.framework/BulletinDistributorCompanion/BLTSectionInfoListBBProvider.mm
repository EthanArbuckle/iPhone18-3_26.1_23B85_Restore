@interface BLTSectionInfoListBBProvider
- (BLTSectionInfoListBBProvider)initWithSettingsGateway:(id)gateway;
- (BLTSectionInfoListProviderDelegate)delegate;
- (void)applicationsDidInstall:(id)install;
- (void)dealloc;
- (void)reloadSection:(id)section completion:(id)completion;
- (void)sectionInfoObserver:(id)observer removedSectionWithSectionID:(id)d transaction:(id)transaction;
- (void)sectionInfoObserver:(id)observer updatedSectionInfoForSectionIDs:(id)ds transaction:(id)transaction;
@end

@implementation BLTSectionInfoListBBProvider

- (BLTSectionInfoListBBProvider)initWithSettingsGateway:(id)gateway
{
  gatewayCopy = gateway;
  v14.receiver = self;
  v14.super_class = BLTSectionInfoListBBProvider;
  v5 = [(BLTSectionInfoListBBProvider *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.bulletindistributor.sectioninfolistbbprovider", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = [[BLTSectionInfoObserver alloc] initWithSettingsGateway:gatewayCopy];
    observer = v5->_observer;
    v5->_observer = v9;

    [(BLTSectionInfoObserver *)v5->_observer setDelegate:v5];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    appWorkspace = v5->_appWorkspace;
    v5->_appWorkspace = defaultWorkspace;

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

- (void)reloadSection:(id)section completion:(id)completion
{
  observer = self->_observer;
  v6 = MEMORY[0x277CBEB98];
  completionCopy = completion;
  v8 = [v6 setWithObject:section];
  [(BLTSectionInfoObserver *)observer updateSectionInfoBySectionIDs:v8 completion:completionCopy];
}

- (void)sectionInfoObserver:(id)observer updatedSectionInfoForSectionIDs:(id)ds transaction:(id)transaction
{
  transactionCopy = transaction;
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained updateSectionInfoForSectionIDs:dsCopy transaction:transactionCopy];
}

- (void)sectionInfoObserver:(id)observer removedSectionWithSectionID:(id)d transaction:(id)transaction
{
  transactionCopy = transaction;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removedSectionWithSectionID:dCopy transaction:transactionCopy];
}

- (void)applicationsDidInstall:(id)install
{
  v18 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v5 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = installCopy;
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

        bundleIdentifier = [*(*(&v13 + 1) + 8 * v10) bundleIdentifier];
        [v5 addObject:bundleIdentifier];

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