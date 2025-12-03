@interface PopoverCatalogViewController
- (CatalogViewController)primaryCatalogViewController;
- (PopoverCatalogViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)_preferredHeightForStartPage;
- (double)maxContentHeight;
- (double)requiredContentWidth;
- (id)completionsViewController;
- (id)completionsViewControllerIfLoaded;
- (id)startPageViewController;
- (id)universalSearchFirstTimeExperienceViewController;
- (void)didGainOwnershipOfCompletionsViewController;
- (void)didGainOwnershipOfStartPageViewController;
- (void)didGainOwnershipOfUniversalSearchFirstTimeExperienceViewController;
- (void)updateStartPagePreferredContentSize;
- (void)viewWillLayoutSubviews;
@end

@implementation PopoverCatalogViewController

- (double)requiredContentWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);
  [WeakRetained requiredContentWidth];
  v4 = v3;

  return v4;
}

- (double)maxContentHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);
  [WeakRetained maxContentHeight];
  v4 = v3;

  return v4;
}

- (id)completionsViewControllerIfLoaded
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);
  completionsViewControllerIfLoaded = [WeakRetained completionsViewControllerIfLoaded];

  return completionsViewControllerIfLoaded;
}

- (id)universalSearchFirstTimeExperienceViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);
  universalSearchFirstTimeExperienceViewController = [WeakRetained universalSearchFirstTimeExperienceViewController];

  return universalSearchFirstTimeExperienceViewController;
}

- (id)startPageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);
  startPageViewController = [WeakRetained startPageViewController];

  return startPageViewController;
}

- (PopoverCatalogViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = PopoverCatalogViewController;
  v4 = [(PopoverCatalogViewController *)&v9 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    traitOverrides = [(PopoverCatalogViewController *)v4 traitOverrides];
    [traitOverrides setNSIntegerValue:1 forTrait:objc_opt_class()];

    v7 = v5;
  }

  return v5;
}

- (void)viewWillLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = PopoverCatalogViewController;
  [(AbstractCatalogViewController *)&v20 viewWillLayoutSubviews];
  view = [(PopoverCatalogViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  completionsViewControllerIfLoaded = [(PopoverCatalogViewController *)self completionsViewControllerIfLoaded];
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:completionsViewControllerIfLoaded])
  {
    tableView = [completionsViewControllerIfLoaded tableView];
    [tableView setFrame:{v5, v7, v9, v11}];
    [completionsViewControllerIfLoaded updateContentInsets];
    [tableView setScrollIndicatorInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  startPageViewController = [(PopoverCatalogViewController *)self startPageViewController];
  v15 = [(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:startPageViewController];

  if (v15)
  {
    startPageViewController2 = [(PopoverCatalogViewController *)self startPageViewController];
    view2 = [startPageViewController2 view];

    [view2 setFrame:{v5, v7, v9, v11}];
    UIEdgeInsetsMakeWithEdges();
    [view2 setLayoutMargins:?];
  }

  universalSearchFirstTimeExperienceViewController = [(PopoverCatalogViewController *)self universalSearchFirstTimeExperienceViewController];
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:universalSearchFirstTimeExperienceViewController])
  {
    view3 = [universalSearchFirstTimeExperienceViewController view];
    [view3 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)updateStartPagePreferredContentSize
{
  [(PopoverCatalogViewController *)self requiredContentWidth];
  v4 = v3;
  [(PopoverCatalogViewController *)self _preferredHeightForStartPage];
  v6 = v5;
  startPageViewController = [(PopoverCatalogViewController *)self startPageViewController];
  [startPageViewController setPreferredContentSize:{v4, v6}];
}

- (double)_preferredHeightForStartPage
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];

  primaryCatalogViewController = [(PopoverCatalogViewController *)self primaryCatalogViewController];
  delegate = [primaryCatalogViewController delegate];
  v6 = [delegate catalogViewControllerPresentingInPortraitAspectRatio:primaryCatalogViewController];

  if (v6)
  {
    [primaryCatalogViewController navigationBarHeight];
    _SFRoundFloatToPixels();
    startPagePreferredHeight = v7;
  }

  else
  {
    startPagePreferredHeight = self->_startPagePreferredHeight;
  }

  return startPagePreferredHeight;
}

- (id)completionsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);
  completionsViewController = [WeakRetained completionsViewController];

  return completionsViewController;
}

- (void)didGainOwnershipOfCompletionsViewController
{
  completionsViewController = [(PopoverCatalogViewController *)self completionsViewController];
  [completionsViewController setShowsWebSearchTipIfExists:1];
  tableView = [completionsViewController tableView];
  separatorEffect = [tableView separatorEffect];
  v4 = MEMORY[0x277D75D00];
  _sf_defaultPopoverBackgroundEffect = [MEMORY[0x277D75210] _sf_defaultPopoverBackgroundEffect];
  v6 = [v4 _effectForBlurEffect:_sf_defaultPopoverBackgroundEffect vibrancyStyle:120];
  [tableView setSeparatorEffect:v6];

  separatorEffect2 = [tableView separatorEffect];
  LOBYTE(_sf_defaultPopoverBackgroundEffect) = WBSIsEqual();

  if ((_sf_defaultPopoverBackgroundEffect & 1) == 0)
  {
    dataSource = [completionsViewController dataSource];
    [dataSource reloadVisibleRows];
  }
}

- (void)didGainOwnershipOfStartPageViewController
{
  startPageViewController = [(PopoverCatalogViewController *)self startPageViewController];
  [startPageViewController setAdditionalSafeAreaInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [startPageViewController setBackgroundDisplayMode:1];
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);
  startPageController = [WeakRetained startPageController];
  [startPageController setShowingAsPopover:1];

  [startPageViewController setTopScrollEdgeEffectColor:0];
  automaticStyle = [MEMORY[0x277D759B8] automaticStyle];
  [startPageViewController setTopScrollEdgeEffectStyle:automaticStyle];
}

- (void)didGainOwnershipOfUniversalSearchFirstTimeExperienceViewController
{
  universalSearchFirstTimeExperienceViewController = [(PopoverCatalogViewController *)self universalSearchFirstTimeExperienceViewController];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [universalSearchFirstTimeExperienceViewController view];
  [view setBackgroundColor:clearColor];
}

- (CatalogViewController)primaryCatalogViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);

  return WeakRetained;
}

@end