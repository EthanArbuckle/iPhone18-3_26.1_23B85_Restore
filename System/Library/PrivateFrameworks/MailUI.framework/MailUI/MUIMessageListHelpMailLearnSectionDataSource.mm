@interface MUIMessageListHelpMailLearnSectionDataSource
- (MUIMessageListHelpMailLearnSectionDataSource)initWithConfiguration:(id)configuration;
- (id)configuredCollectionViewCellForCollectionView:(id)view indexPath:(id)path itemID:(id)d cellIdentifier:(id)identifier;
- (void)_configureCell:(id)cell atIndexPath:(id)path itemID:(id)d;
- (void)_hideHelpMailLearn:(id)learn;
- (void)_hideHelpMailLearnUntilDate:(id)date;
- (void)_showFeedbackView;
- (void)beginObservingAnimated:(BOOL)animated nextUpdateNeedsCleanSnapshot:(BOOL)snapshot;
@end

@implementation MUIMessageListHelpMailLearnSectionDataSource

- (MUIMessageListHelpMailLearnSectionDataSource)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = MUIMessageListHelpMailLearnSectionDataSource;
  v5 = [(MessageListSectionDataSource *)&v20 initWithConfiguration:configurationCopy];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = MEMORY[0x277D752B0];
    v7 = objc_opt_class();
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __70__MUIMessageListHelpMailLearnSectionDataSource_initWithConfiguration___block_invoke;
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

void __70__MUIMessageListHelpMailLearnSectionDataSource_initWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureCell:v9 atIndexPath:v8 itemID:v7];
}

- (void)beginObservingAnimated:(BOOL)animated nextUpdateNeedsCleanSnapshot:(BOOL)snapshot
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __100__MUIMessageListHelpMailLearnSectionDataSource_beginObservingAnimated_nextUpdateNeedsCleanSnapshot___block_invoke;
  v4[3] = &unk_278188EE0;
  v4[4] = self;
  [(MessageListSectionDataSource *)self _performDataSourceUpdateAnimated:animated cleanSnapshot:1 isLastUpdate:1 prepare:0 update:v4 completion:0];
}

- (void)_hideHelpMailLearnUntilDate:(id)date
{
  v4 = MEMORY[0x277CBEBD0];
  dateCopy = date;
  em_userDefaults = [v4 em_userDefaults];
  [em_userDefaults setObject:dateCopy forKey:*MEMORY[0x277D06CE8]];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__MUIMessageListHelpMailLearnSectionDataSource__hideHelpMailLearnUntilDate___block_invoke;
  v7[3] = &unk_278188EE0;
  v7[4] = self;
  [(MessageListSectionDataSource *)self _performDataSourceUpdateAnimated:1 cleanSnapshot:0 isLastUpdate:1 prepare:0 update:v7 completion:0];
}

- (void)_configureCell:(id)cell atIndexPath:(id)path itemID:(id)d
{
  cellCopy = cell;
  helpMailLearnButton = [cellCopy helpMailLearnButton];
  [helpMailLearnButton addTarget:self action:sel__showFeedbackView forControlEvents:64];

  cancelButton = [cellCopy cancelButton];

  [cancelButton addTarget:self action:sel__hideHelpMailLearn_ forControlEvents:64];
}

- (void)_showFeedbackView
{
  delegate = [(MessageListSectionDataSource *)self delegate];
  delegate2 = [(MessageListSectionDataSource *)self delegate];
  v4 = [delegate2 presentingViewControllerForHelpMailLearnSectionDataSource:self];

  v5 = [delegate feedbackListViewModelForHelpMailLearnSectionDataSource:self];
  v6 = [_TtC6MailUI26FeedbackListViewController createWithViewModel:v5];
  [v4 presentViewController:v6 animated:1 completion:0];
}

- (void)_hideHelpMailLearn:(id)learn
{
  learnCopy = learn;
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v5 = MEMORY[0x277D750F8];
  v6 = _EFLocalizedString();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67__MUIMessageListHelpMailLearnSectionDataSource__hideHelpMailLearn___block_invoke;
  v23[3] = &unk_27818AAF0;
  v23[4] = self;
  v7 = [v5 actionWithTitle:v6 style:0 handler:v23];

  v8 = MEMORY[0x277D750F8];
  v9 = _EFLocalizedString();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__MUIMessageListHelpMailLearnSectionDataSource__hideHelpMailLearn___block_invoke_2;
  v22[3] = &unk_27818AAF0;
  v22[4] = self;
  v10 = [v8 actionWithTitle:v9 style:0 handler:v22];

  v11 = MEMORY[0x277D750F8];
  v12 = _EFLocalizedString();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__MUIMessageListHelpMailLearnSectionDataSource__hideHelpMailLearn___block_invoke_3;
  v21[3] = &unk_27818AAF0;
  v21[4] = self;
  v13 = [v11 actionWithTitle:v12 style:2 handler:v21];

  v14 = MEMORY[0x277D750F8];
  v15 = _EFLocalizedString();
  v16 = [v14 actionWithTitle:v15 style:1 handler:0];

  [v4 addAction:v7];
  [v4 addAction:v10];
  [v4 addAction:v13];
  [v4 addAction:v16];
  delegate = [(MessageListSectionDataSource *)self delegate];
  v18 = [delegate presentingViewControllerForHelpMailLearnSectionDataSource:self];

  if (MUISolariumFeatureEnabled())
  {
    v19 = learnCopy;
    [v4 mf_presentFromViewController:v18 withSource:learnCopy];
  }

  else
  {
    [v18 presentViewController:v4 animated:1 completion:0];
    v19 = learnCopy;
  }
}

void __67__MUIMessageListHelpMailLearnSectionDataSource__hideHelpMailLearn___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEAA8] ef_tomorrowMorning];
  [v1 _hideHelpMailLearnUntilDate:v2];
}

void __67__MUIMessageListHelpMailLearnSectionDataSource__hideHelpMailLearn___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEAA8] ef_nextWeekMorning];
  [v1 _hideHelpMailLearnUntilDate:v2];
}

void __67__MUIMessageListHelpMailLearnSectionDataSource__hideHelpMailLearn___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEAA8] distantFuture];
  [v1 _hideHelpMailLearnUntilDate:v2];
}

id __100__MUIMessageListHelpMailLearnSectionDataSource_beginObservingAnimated_nextUpdateNeedsCleanSnapshot___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 216);
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
      v9 = v9[27];
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

id __76__MUIMessageListHelpMailLearnSectionDataSource__hideHelpMailLearnUntilDate___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 216);
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
      v8 = v8[27];
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

- (id)configuredCollectionViewCellForCollectionView:(id)view indexPath:(id)path itemID:(id)d cellIdentifier:(id)identifier
{
  if (self)
  {
    cellRegistration = self->_cellRegistration;
  }

  else
  {
    cellRegistration = 0;
  }

  return [view dequeueConfiguredReusableCellWithRegistration:cellRegistration forIndexPath:path item:{d, identifier}];
}

@end