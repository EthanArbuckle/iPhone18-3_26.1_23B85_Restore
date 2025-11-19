@interface MUIMessageListMailCleanupTipDataSource
+ (OS_os_log)log;
- (MUIMessageListMailCleanupTipDataSource)initWithConfiguration:(id)a3;
- (MUIMessageListMailCleanupTipDataSource)initWithConfiguration:(id)a3 bucket:(int64_t)a4 iCloudMailCleanupService:(id)a5;
- (id)configuredCollectionViewCellForCollectionView:(id)a3 indexPath:(id)a4 itemID:(id)a5 cellIdentifier:(id)a6;
- (id)currentTip;
- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5;
- (void)_dismissMailCleanupTip;
- (void)_mailCleanupDataDidChange:(id)a3;
- (void)_onAppearMailCleanupTip;
- (void)_refreshMailCleanupTipAnimated:(BOOL)a3 cleanSnapshot:(BOOL)a4;
- (void)_showSetupView;
- (void)dealloc;
@end

@implementation MUIMessageListMailCleanupTipDataSource

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MUIMessageListMailCleanupTipDataSource_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_12 != -1)
  {
    dispatch_once(&log_onceToken_12, block);
  }

  v2 = log_log_12;

  return v2;
}

void __45__MUIMessageListMailCleanupTipDataSource_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_12;
  log_log_12 = v2;
}

- (MUIMessageListMailCleanupTipDataSource)initWithConfiguration:(id)a3 bucket:(int64_t)a4 iCloudMailCleanupService:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(MUIMessageListMailCleanupTipDataSource *)self setSelectedBucket:a4];
  [(MUIMessageListMailCleanupTipDataSource *)self setICloudMailCleanupService:v8];

  v10 = [(MUIMessageListMailCleanupTipDataSource *)self initWithConfiguration:v9];
  return v10;
}

- (MUIMessageListMailCleanupTipDataSource)initWithConfiguration:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MUIMessageListMailCleanupTipDataSource;
  v5 = [(MessageListSectionDataSource *)&v20 initWithConfiguration:v4];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = MEMORY[0x277D752B0];
    v7 = objc_opt_class();
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __64__MUIMessageListMailCleanupTipDataSource_initWithConfiguration___block_invoke;
    v17 = &unk_27818AA00;
    objc_copyWeak(&v18, &location);
    v8 = [v6 registrationWithCellClass:v7 configurationHandler:&v14];
    cellRegistration = v5->_cellRegistration;
    v5->_cellRegistration = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v5 selector:sel__mailCleanupDataDidChange_ name:@"mailCleanupDataDidChange" object:0];

    v11 = [objc_alloc(MEMORY[0x277D06E60]) initAsEphemeralID:1];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v11;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __64__MUIMessageListMailCleanupTipDataSource_initWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureCell:v9 atIndexPath:v8 itemID:v7];
}

- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MUIMessageListMailCleanupTipDataSource *)self currentTip];
  if (v11)
  {
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __76__MUIMessageListMailCleanupTipDataSource__configureCell_atIndexPath_itemID___block_invoke;
    v16[3] = &unk_278188CD0;
    objc_copyWeak(&v17, &location);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__MUIMessageListMailCleanupTipDataSource__configureCell_atIndexPath_itemID___block_invoke_2;
    v14[3] = &unk_278188CD0;
    objc_copyWeak(&v15, &location);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__MUIMessageListMailCleanupTipDataSource__configureCell_atIndexPath_itemID___block_invoke_3;
    v12[3] = &unk_278188CD0;
    objc_copyWeak(&v13, &location);
    [v8 configureForTip:v11 onSetupClick:v16 onDismissClick:v14 onAppear:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __76__MUIMessageListMailCleanupTipDataSource__configureCell_atIndexPath_itemID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _showSetupView];
    WeakRetained = v2;
  }
}

void __76__MUIMessageListMailCleanupTipDataSource__configureCell_atIndexPath_itemID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _dismissMailCleanupTip];
    WeakRetained = v2;
  }
}

void __76__MUIMessageListMailCleanupTipDataSource__configureCell_atIndexPath_itemID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _onAppearMailCleanupTip];
    WeakRetained = v2;
  }
}

- (id)currentTip
{
  v3 = [(MessageListSectionDataSource *)self state];
  v4 = [v3 containsOnlyInboxScope];

  if (v4)
  {
    v5 = [(MUIMessageListMailCleanupTipDataSource *)self iCloudMailCleanupService];
    v6 = [v5 tipForMailboxType:@"Inbox" bucket:{-[MUIMessageListMailCleanupTipDataSource selectedBucket](self, "selectedBucket")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_mailCleanupDataDidChange:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__MUIMessageListMailCleanupTipDataSource__mailCleanupDataDidChange___block_invoke;
  v4[3] = &unk_278188BB0;
  v4[4] = self;
  v3 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v3 performBlock:v4];
}

uint64_t __68__MUIMessageListMailCleanupTipDataSource__mailCleanupDataDidChange___block_invoke(uint64_t a1)
{
  v2 = +[MUIMessageListMailCleanupTipDataSource log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_214A5E000, v2, OS_LOG_TYPE_DEFAULT, "MUIMessageListMailCleanupTipDataSource::_mailCleanupDataDidChange()", v4, 2u);
  }

  return [*(a1 + 32) _refreshMailCleanupTipAnimated:1 cleanSnapshot:0];
}

- (void)_showSetupView
{
  v3 = [(MUIMessageListMailCleanupTipDataSource *)self currentTip];

  if (v3)
  {
    v6 = [(MessageListSectionDataSource *)self delegate];
    v4 = [(MUIMessageListMailCleanupTipDataSource *)self currentTip];
    v5 = [v4 tipId];
    [v6 presentMailCleanupViewForMailCleanupTipId:v5];

    [(MUIMessageListMailCleanupTipDataSource *)self _refreshMailCleanupTipAnimated:1 cleanSnapshot:0];
  }
}

- (void)_dismissMailCleanupTip
{
  v5 = [(MessageListSectionDataSource *)self delegate];
  v3 = [(MUIMessageListMailCleanupTipDataSource *)self currentTip];
  v4 = [v3 tipId];
  [v5 dismissMailCleanupTipForMailCleanupTipId:v4];

  [(MUIMessageListMailCleanupTipDataSource *)self _refreshMailCleanupTipAnimated:1 cleanSnapshot:0];
}

- (void)_refreshMailCleanupTipAnimated:(BOOL)a3 cleanSnapshot:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __87__MUIMessageListMailCleanupTipDataSource__refreshMailCleanupTipAnimated_cleanSnapshot___block_invoke;
  v4[3] = &unk_27818AB18;
  v4[4] = self;
  v5 = a4;
  [(MessageListSectionDataSource *)self _performDataSourceUpdateAnimated:a3 cleanSnapshot:a4 isLastUpdate:1 prepare:0 update:v4 completion:0];
}

- (void)_onAppearMailCleanupTip
{
  v5 = [(MessageListSectionDataSource *)self delegate];
  v3 = [(MUIMessageListMailCleanupTipDataSource *)self currentTip];
  v4 = [v3 tipId];
  [v5 onAppearForMailCleanupTipId:v4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MUIMessageListMailCleanupTipDataSource;
  [(MessageListSectionDataSource *)&v4 dealloc];
}

id __87__MUIMessageListMailCleanupTipDataSource__refreshMailCleanupTipAnimated_cleanSnapshot___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) currentTip];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 232);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 indexOfItemIdentifier:v9];
  if (v7)
  {
    v11 = *(a1 + 32);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v11)
      {
        v11 = v11[29];
      }

      v26 = v11;
      v12 = MEMORY[0x277CBEA60];
      v13 = v11;
      v14 = [v12 arrayWithObjects:&v26 count:1];

      [v5 appendItemsWithIdentifiers:v14 intoSectionWithIdentifier:v6];
      v15 = [MUIMessageListSectionDataSourceChange added:1 isFirstChange:*(a1 + 40)];
    }

    else
    {
      if (v11)
      {
        v11 = v11[29];
      }

      v27[0] = v11;
      v16 = MEMORY[0x277CBEA60];
      v17 = v11;
      v18 = [v16 arrayWithObjects:v27 count:1];

      [v5 reconfigureItemsWithIdentifiers:v18];
      v15 = [MUIMessageListSectionDataSourceChange updated:1];
    }
  }

  else if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = +[MUIMessageListSectionDataSourceChange skipped];
  }

  else
  {
    v19 = *(a1 + 32);
    if (v19)
    {
      v19 = v19[29];
    }

    v25 = v19;
    v20 = MEMORY[0x277CBEA60];
    v21 = v19;
    v22 = [v20 arrayWithObjects:&v25 count:1];

    [v5 deleteItemsWithIdentifiers:{v22, v25}];
    v15 = [MUIMessageListSectionDataSourceChange removed:1];
  }

  v23 = v15;

  return v23;
}

- (id)configuredCollectionViewCellForCollectionView:(id)a3 indexPath:(id)a4 itemID:(id)a5 cellIdentifier:(id)a6
{
  if (self)
  {
    cellRegistration = self->_cellRegistration;
  }

  else
  {
    cellRegistration = 0;
  }

  return [a3 dequeueConfiguredReusableCellWithRegistration:cellRegistration forIndexPath:a4 item:{a5, a6}];
}

@end