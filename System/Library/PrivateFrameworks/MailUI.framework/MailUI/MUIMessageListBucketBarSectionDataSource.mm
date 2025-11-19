@interface MUIMessageListBucketBarSectionDataSource
- (MUIMessageListBucketBarSectionDataSource)initWithConfiguration:(id)a3 bucketsViewController:(id)a4;
- (id)bucketsViewController;
- (id)configuredCollectionViewCellForCollectionView:(id)a3 indexPath:(id)a4 itemID:(id)a5 cellIdentifier:(id)a6;
- (void)_configureCell:(id)a3;
- (void)beginObservingAnimated:(BOOL)a3 nextUpdateNeedsCleanSnapshot:(BOOL)a4;
- (void)setLayoutConstraints:(uint64_t)a1;
- (void)stopObserving;
@end

@implementation MUIMessageListBucketBarSectionDataSource

- (id)bucketsViewController
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 28);
    v1 = vars8;
  }

  return WeakRetained;
}

- (MUIMessageListBucketBarSectionDataSource)initWithConfiguration:(id)a3 bucketsViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = MUIMessageListBucketBarSectionDataSource;
  v8 = [(MessageListSectionDataSource *)&v23 initWithConfiguration:v6];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v9 = MEMORY[0x277D752B0];
    v10 = objc_opt_class();
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __88__MUIMessageListBucketBarSectionDataSource_initWithConfiguration_bucketsViewController___block_invoke;
    v20 = &unk_27818AA00;
    objc_copyWeak(&v21, &location);
    v11 = [v9 registrationWithCellClass:v10 configurationHandler:&v17];
    cellRegistration = v8->_cellRegistration;
    v8->_cellRegistration = v11;

    v13 = objc_alloc(MEMORY[0x277D06E60]);
    v14 = [v13 initAsEphemeralID:{1, v17, v18, v19, v20}];
    itemIdentifier = v8->_itemIdentifier;
    v8->_itemIdentifier = v14;

    objc_storeWeak(&v8->_bucketsViewController, v7);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __88__MUIMessageListBucketBarSectionDataSource_initWithConfiguration_bucketsViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureCell:v3];
}

- (void)beginObservingAnimated:(BOOL)a3 nextUpdateNeedsCleanSnapshot:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __96__MUIMessageListBucketBarSectionDataSource_beginObservingAnimated_nextUpdateNeedsCleanSnapshot___block_invoke;
  v4[3] = &unk_278188EE0;
  v4[4] = self;
  [(MessageListSectionDataSource *)self _performDataSourceUpdateAnimated:a3 cleanSnapshot:0 isLastUpdate:1 prepare:0 update:v4 completion:0];
}

- (void)stopObserving
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __57__MUIMessageListBucketBarSectionDataSource_stopObserving__block_invoke;
  v7 = &unk_278188CD0;
  objc_copyWeak(&v8, &location);
  v2 = &v4;
  v3 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v3 performBlock:v2];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__MUIMessageListBucketBarSectionDataSource_stopObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 28);
    [v2 willMoveToParentViewController:0];
    v3 = [v2 view];
    [v3 removeFromSuperview];

    [v2 removeFromParentViewController];
    WeakRetained = v4;
  }
}

id __96__MUIMessageListBucketBarSectionDataSource_beginObservingAnimated_nextUpdateNeedsCleanSnapshot___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_configureCell:(id)a3
{
  v42[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MUIMessageListBucketBarSectionDataSource *)&self->super.super.isa bucketsViewController];
  v6 = [v5 view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self)
  {
    layoutConstraints = self->_layoutConstraints;
  }

  else
  {
    layoutConstraints = 0;
  }

  v40 = layoutConstraints;
  v8 = 0x277CCA000uLL;
  if ([(NSArray *)v40 count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v40];
  }

  v9 = [v4 contentView];

  if (v6 != v9)
  {
    v10 = [(MessageListSectionDataSource *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 parentViewControllerForBucketBarSectionDataSource:self];
      [v5 willMoveToParentViewController:v11];
    }

    else
    {
      v11 = 0;
    }

    [v11 addChildViewController:v5];
    v12 = [v4 contentView];
    [v12 addSubview:v6];

    if (v11)
    {
      [v5 didMoveToParentViewController:v11];
    }
  }

  v13 = MUISolariumFeatureEnabled();
  v14 = [v6 topAnchor];
  v38 = [v4 contentView];
  v15 = [v38 topAnchor];
  v39 = v14;
  v37 = v15;
  if (v13)
  {
    v36 = [v14 constraintEqualToAnchor:v15 constant:8.0];
    v42[0] = v36;
    [v6 leadingAnchor];
    objc_claimAutoreleasedReturnValue();
    v34 = [OUTLINED_FUNCTION_1_4() contentView];
    v33 = [v34 safeAreaLayoutGuide];
    [v33 leadingAnchor];
    v32 = v35 = v13;
    v31 = [v13 constraintEqualToAnchor:?];
    v42[1] = v31;
    [v6 bottomAnchor];
    objc_claimAutoreleasedReturnValue();
    v29 = [OUTLINED_FUNCTION_1_4() contentView];
    [v29 bottomAnchor];
    v28 = v30 = v13;
    v27 = [v13 constraintEqualToAnchor:-8.0 constant:?];
    v42[2] = v27;
    [v6 trailingAnchor];
    objc_claimAutoreleasedReturnValue();
    v16 = [OUTLINED_FUNCTION_1_4() contentView];
    v17 = [v16 trailingAnchor];
    v26 = v13;
    v18 = [v13 constraintEqualToAnchor:v17];
    v42[3] = v18;
    v19 = [v6 heightAnchor];
    [v5 preferredHeight];
    [v19 constraintEqualToConstant:?];
    v20 = self;
    v21 = v4;
    v23 = v22 = v5;
    v42[4] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:5];

    v25 = v23;
    v5 = v22;
    v4 = v21;
    self = v20;
    v8 = 0x277CCA000;
  }

  else
  {
    v36 = [v14 constraintEqualToAnchor:v15];
    v41[0] = v36;
    [v6 leadingAnchor];
    objc_claimAutoreleasedReturnValue();
    v34 = [OUTLINED_FUNCTION_1_4() contentView];
    [v34 leadingAnchor];
    v33 = v35 = v13;
    v32 = [v13 constraintEqualToAnchor:?];
    v41[1] = v32;
    [v6 bottomAnchor];
    objc_claimAutoreleasedReturnValue();
    v30 = [OUTLINED_FUNCTION_1_4() contentView];
    [v30 bottomAnchor];
    v29 = v31 = v13;
    v28 = [v13 constraintEqualToAnchor:-8.0 constant:?];
    v41[2] = v28;
    [v6 trailingAnchor];
    objc_claimAutoreleasedReturnValue();
    v26 = [OUTLINED_FUNCTION_1_4() contentView];
    v16 = [v26 trailingAnchor];
    v27 = v13;
    v17 = [v13 constraintEqualToAnchor:v16];
    v41[3] = v17;
    v18 = [v6 heightAnchor];
    [v5 preferredHeight];
    v19 = [v18 constraintEqualToConstant:?];
    v41[4] = v19;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
    v25 = v40;
  }

  [*(v8 + 2768) activateConstraints:v24];
  [(MUIMessageListBucketBarSectionDataSource *)self setLayoutConstraints:v24];
}

- (void)setLayoutConstraints:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_7(a1, a2, 232);
  }
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