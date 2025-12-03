@interface MUIMessageListBucketBarSectionDataSource
- (MUIMessageListBucketBarSectionDataSource)initWithConfiguration:(id)configuration bucketsViewController:(id)controller;
- (id)bucketsViewController;
- (id)configuredCollectionViewCellForCollectionView:(id)view indexPath:(id)path itemID:(id)d cellIdentifier:(id)identifier;
- (void)_configureCell:(id)cell;
- (void)beginObservingAnimated:(BOOL)animated nextUpdateNeedsCleanSnapshot:(BOOL)snapshot;
- (void)setLayoutConstraints:(uint64_t)constraints;
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

- (MUIMessageListBucketBarSectionDataSource)initWithConfiguration:(id)configuration bucketsViewController:(id)controller
{
  configurationCopy = configuration;
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = MUIMessageListBucketBarSectionDataSource;
  v8 = [(MessageListSectionDataSource *)&v23 initWithConfiguration:configurationCopy];
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

    objc_storeWeak(&v8->_bucketsViewController, controllerCopy);
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

- (void)beginObservingAnimated:(BOOL)animated nextUpdateNeedsCleanSnapshot:(BOOL)snapshot
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __96__MUIMessageListBucketBarSectionDataSource_beginObservingAnimated_nextUpdateNeedsCleanSnapshot___block_invoke;
  v4[3] = &unk_278188EE0;
  v4[4] = self;
  [(MessageListSectionDataSource *)self _performDataSourceUpdateAnimated:animated cleanSnapshot:0 isLastUpdate:1 prepare:0 update:v4 completion:0];
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
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performBlock:v2];

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

- (void)_configureCell:(id)cell
{
  v42[5] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  bucketsViewController = [(MUIMessageListBucketBarSectionDataSource *)&self->super.super.isa bucketsViewController];
  view = [bucketsViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
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

  contentView = [cellCopy contentView];

  if (view != contentView)
  {
    delegate = [(MessageListSectionDataSource *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v11 = [delegate parentViewControllerForBucketBarSectionDataSource:self];
      [bucketsViewController willMoveToParentViewController:v11];
    }

    else
    {
      v11 = 0;
    }

    [v11 addChildViewController:bucketsViewController];
    contentView2 = [cellCopy contentView];
    [contentView2 addSubview:view];

    if (v11)
    {
      [bucketsViewController didMoveToParentViewController:v11];
    }
  }

  v13 = MUISolariumFeatureEnabled();
  topAnchor = [view topAnchor];
  contentView3 = [cellCopy contentView];
  topAnchor2 = [contentView3 topAnchor];
  v39 = topAnchor;
  v37 = topAnchor2;
  if (v13)
  {
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    v42[0] = v36;
    [view leadingAnchor];
    objc_claimAutoreleasedReturnValue();
    contentView4 = [OUTLINED_FUNCTION_1_4() contentView];
    safeAreaLayoutGuide = [contentView4 safeAreaLayoutGuide];
    [safeAreaLayoutGuide leadingAnchor];
    v32 = v35 = v13;
    v31 = [v13 constraintEqualToAnchor:?];
    v42[1] = v31;
    [view bottomAnchor];
    objc_claimAutoreleasedReturnValue();
    contentView5 = [OUTLINED_FUNCTION_1_4() contentView];
    [contentView5 bottomAnchor];
    v28 = contentView7 = v13;
    v27 = [v13 constraintEqualToAnchor:-8.0 constant:?];
    v42[2] = v27;
    [view trailingAnchor];
    objc_claimAutoreleasedReturnValue();
    contentView6 = [OUTLINED_FUNCTION_1_4() contentView];
    trailingAnchor = [contentView6 trailingAnchor];
    contentView8 = v13;
    heightAnchor2 = [v13 constraintEqualToAnchor:trailingAnchor];
    v42[3] = heightAnchor2;
    heightAnchor = [view heightAnchor];
    [bucketsViewController preferredHeight];
    [heightAnchor constraintEqualToConstant:?];
    selfCopy = self;
    v21 = cellCopy;
    v23 = v22 = bucketsViewController;
    v42[4] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:5];

    v25 = v23;
    bucketsViewController = v22;
    cellCopy = v21;
    self = selfCopy;
    v8 = 0x277CCA000;
  }

  else
  {
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v41[0] = v36;
    [view leadingAnchor];
    objc_claimAutoreleasedReturnValue();
    contentView4 = [OUTLINED_FUNCTION_1_4() contentView];
    [contentView4 leadingAnchor];
    safeAreaLayoutGuide = v35 = v13;
    v32 = [v13 constraintEqualToAnchor:?];
    v41[1] = v32;
    [view bottomAnchor];
    objc_claimAutoreleasedReturnValue();
    contentView7 = [OUTLINED_FUNCTION_1_4() contentView];
    [contentView7 bottomAnchor];
    contentView5 = v31 = v13;
    v28 = [v13 constraintEqualToAnchor:-8.0 constant:?];
    v41[2] = v28;
    [view trailingAnchor];
    objc_claimAutoreleasedReturnValue();
    contentView8 = [OUTLINED_FUNCTION_1_4() contentView];
    contentView6 = [contentView8 trailingAnchor];
    v27 = v13;
    trailingAnchor = [v13 constraintEqualToAnchor:contentView6];
    v41[3] = trailingAnchor;
    heightAnchor2 = [view heightAnchor];
    [bucketsViewController preferredHeight];
    heightAnchor = [heightAnchor2 constraintEqualToConstant:?];
    v41[4] = heightAnchor;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
    v25 = v40;
  }

  [*(v8 + 2768) activateConstraints:v24];
  [(MUIMessageListBucketBarSectionDataSource *)self setLayoutConstraints:v24];
}

- (void)setLayoutConstraints:(uint64_t)constraints
{
  if (constraints)
  {
    OUTLINED_FUNCTION_0_7(constraints, a2, 232);
  }
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