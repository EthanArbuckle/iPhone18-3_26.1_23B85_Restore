@interface MUIMessageListOnboardingTipDataSource
- (MUIMessageListOnboardingTipDataSource)initWithConfiguration:(id)a3;
- (MUIMessageListOnboardingTipDataSource)initWithConfiguration:(id)a3 bucket:(int64_t)a4 countHelper:(id)a5;
- (id)configuredCollectionViewCellForCollectionView:(id)a3 indexPath:(id)a4 itemID:(id)a5 cellIdentifier:(id)a6;
- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5;
- (void)_hideOnboardingTip;
- (void)_learnMoreTip;
- (void)_turnOffCategoriesTip;
- (void)beginObservingAnimated:(BOOL)a3 nextUpdateNeedsCleanSnapshot:(BOOL)a4;
@end

@implementation MUIMessageListOnboardingTipDataSource

- (MUIMessageListOnboardingTipDataSource)initWithConfiguration:(id)a3 bucket:(int64_t)a4 countHelper:(id)a5
{
  v9 = a5;
  v10 = [(MUIMessageListOnboardingTipDataSource *)self initWithConfiguration:a3];
  v11 = v10;
  if (v10)
  {
    v10->_selectedBucket = a4;
    objc_storeStrong(&v10->_helper, a5);
  }

  return v11;
}

- (MUIMessageListOnboardingTipDataSource)initWithConfiguration:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MUIMessageListOnboardingTipDataSource;
  v5 = [(MessageListSectionDataSource *)&v20 initWithConfiguration:v4];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = MEMORY[0x277D752B0];
    v7 = objc_opt_class();
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __63__MUIMessageListOnboardingTipDataSource_initWithConfiguration___block_invoke;
    v17 = &unk_27818AA00;
    objc_copyWeak(&v18, &location);
    v8 = [v6 registrationWithCellClass:v7 configurationHandler:&v14];
    cellRegistration = v5->_cellRegistration;
    v5->_cellRegistration = v8;

    v10 = objc_alloc(MEMORY[0x277D06E60]);
    v11 = [v10 initAsEphemeralID:{1, v14, v15, v16, v17}];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v11;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __63__MUIMessageListOnboardingTipDataSource_initWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureCell:v9 atIndexPath:v8 itemID:v7];
}

- (void)beginObservingAnimated:(BOOL)a3 nextUpdateNeedsCleanSnapshot:(BOOL)a4
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__MUIMessageListOnboardingTipDataSource_beginObservingAnimated_nextUpdateNeedsCleanSnapshot___block_invoke;
  aBlock[3] = &unk_27818ABB8;
  objc_copyWeak(&v13, &location);
  v14 = a3;
  v6 = _Block_copy(aBlock);
  if (MUIOnboardingTipFromBucket([(MUIMessageListOnboardingTipDataSource *)self selectedBucket]) == 2)
  {
    v7 = [(MUIMessageListOnboardingTipDataSource *)self helper];
    v8 = [v7 messageCount];
    v9 = [MEMORY[0x277D071B8] mainThreadScheduler];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __93__MUIMessageListOnboardingTipDataSource_beginObservingAnimated_nextUpdateNeedsCleanSnapshot___block_invoke_3;
    v10[3] = &unk_27818ABE0;
    v10[4] = self;
    v11 = v6;
    [v8 onScheduler:v9 addSuccessBlock:v10];
  }

  else
  {
    v6[2](v6);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __93__MUIMessageListOnboardingTipDataSource_beginObservingAnimated_nextUpdateNeedsCleanSnapshot___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __93__MUIMessageListOnboardingTipDataSource_beginObservingAnimated_nextUpdateNeedsCleanSnapshot___block_invoke_2;
    v5[3] = &unk_278188EE0;
    v5[4] = WeakRetained;
    [WeakRetained _performDataSourceUpdateAnimated:v4 cleanSnapshot:1 isLastUpdate:1 prepare:0 update:v5 completion:0];
  }
}

void __93__MUIMessageListOnboardingTipDataSource_beginObservingAnimated_nextUpdateNeedsCleanSnapshot___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 primaryCount] >= 1 && objc_msgSend(v4, "fullCount") >= 1)
  {
    v3 = [v4 primaryCount];
    if (v3 != [v4 fullCount])
    {
      [*(a1 + 32) setCount:v4];
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5
{
  v6 = a3;
  v7 = [(MUIMessageListOnboardingTipDataSource *)self selectedBucket];
  v8 = [(MUIMessageListOnboardingTipDataSource *)self count];
  v9 = [v8 primaryCount];
  v10 = [(MUIMessageListOnboardingTipDataSource *)self count];
  v11 = [v10 fullCount];
  v12 = [(MUIMessageListOnboardingTipDataSource *)self count];
  [v6 configureForBucket:v7 primaryUnreadCount:v9 otherUnreadCount:{v11 - objc_msgSend(v12, "primaryCount")}];

  v13 = [v6 tryCategoriesButton];
  [v13 addTarget:self action:sel__hideOnboardingTip forControlEvents:64];

  v14 = [v6 turnOffCategoriesButton];
  [v14 addTarget:self action:sel__turnOffCategoriesTip forControlEvents:64];

  v15 = [v6 customizeButton];
  [v15 addTarget:self action:sel__learnMoreTip forControlEvents:64];

  v16 = [v6 okButton];
  [v16 addTarget:self action:sel__hideOnboardingTip forControlEvents:64];

  v17 = [v6 cancelButton];

  [v17 addTarget:self action:sel__hideOnboardingTip forControlEvents:64];
}

- (void)_learnMoreTip
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMessageListOnboardingTipDataSource.m" lineNumber:102 description:{@"Learn More tapped, but delegate doesn't implement the necessary method"}];
}

- (void)_hideOnboardingTip
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__MUIMessageListOnboardingTipDataSource__hideOnboardingTip__block_invoke;
  v4[3] = &unk_278188EE0;
  v4[4] = self;
  [(MessageListSectionDataSource *)self _performDataSourceUpdateAnimated:1 cleanSnapshot:0 isLastUpdate:1 prepare:0 update:v4 completion:0];
  v3 = [(MessageListSectionDataSource *)self delegate];
  [v3 showNoContentViewIfNecessary:self];
}

- (void)_turnOffCategoriesTip
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMessageListOnboardingTipDataSource.m" lineNumber:123 description:{@"Turn Off tapped, but delegate doesn't implement the necessary method"}];
}

id __93__MUIMessageListOnboardingTipDataSource_beginObservingAnimated_nextUpdateNeedsCleanSnapshot___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 240);
  }

  else
  {
    v8 = 0;
  }

  if ([v5 indexOfItemIdentifier:v8] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = v9[30];
    }

    v16 = v9;
    v10 = MEMORY[0x277CBEA60];
    v11 = v9;
    v12 = [v10 arrayWithObjects:&v16 count:1];

    [v5 appendItemsWithIdentifiers:v12 intoSectionWithIdentifier:{v6, v16, v17}];
    v13 = [MUIMessageListSectionDataSourceChange added:1 isFirstChange:1];
  }

  else
  {
    v13 = +[MUIMessageListSectionDataSourceChange skipped];
  }

  v14 = v13;

  return v14;
}

id __59__MUIMessageListOnboardingTipDataSource__hideOnboardingTip__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 240);
  }

  else
  {
    v6 = 0;
  }

  if ([v3 indexOfItemIdentifier:v6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = +[MUIMessageListSectionDataSourceChange skipped];
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[30];
    }

    v14 = v8;
    v9 = MEMORY[0x277CBEA60];
    v10 = v8;
    v11 = [v9 arrayWithObjects:&v14 count:1];

    [v4 deleteItemsWithIdentifiers:{v11, v14, v15}];
    v7 = [MUIMessageListSectionDataSourceChange removed:1];
  }

  v12 = v7;

  return v12;
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