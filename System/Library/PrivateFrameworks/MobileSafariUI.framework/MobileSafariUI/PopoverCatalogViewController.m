@interface PopoverCatalogViewController
- (CatalogViewController)primaryCatalogViewController;
- (PopoverCatalogViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
  v3 = [WeakRetained completionsViewControllerIfLoaded];

  return v3;
}

- (id)universalSearchFirstTimeExperienceViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);
  v3 = [WeakRetained universalSearchFirstTimeExperienceViewController];

  return v3;
}

- (id)startPageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);
  v3 = [WeakRetained startPageViewController];

  return v3;
}

- (PopoverCatalogViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = PopoverCatalogViewController;
  v4 = [(PopoverCatalogViewController *)&v9 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PopoverCatalogViewController *)v4 traitOverrides];
    [v6 setNSIntegerValue:1 forTrait:objc_opt_class()];

    v7 = v5;
  }

  return v5;
}

- (void)viewWillLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = PopoverCatalogViewController;
  [(AbstractCatalogViewController *)&v20 viewWillLayoutSubviews];
  v3 = [(PopoverCatalogViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PopoverCatalogViewController *)self completionsViewControllerIfLoaded];
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:v12])
  {
    v13 = [v12 tableView];
    [v13 setFrame:{v5, v7, v9, v11}];
    [v12 updateContentInsets];
    [v13 setScrollIndicatorInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  v14 = [(PopoverCatalogViewController *)self startPageViewController];
  v15 = [(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:v14];

  if (v15)
  {
    v16 = [(PopoverCatalogViewController *)self startPageViewController];
    v17 = [v16 view];

    [v17 setFrame:{v5, v7, v9, v11}];
    UIEdgeInsetsMakeWithEdges();
    [v17 setLayoutMargins:?];
  }

  v18 = [(PopoverCatalogViewController *)self universalSearchFirstTimeExperienceViewController];
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:v18])
  {
    v19 = [v18 view];
    [v19 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)updateStartPagePreferredContentSize
{
  [(PopoverCatalogViewController *)self requiredContentWidth];
  v4 = v3;
  [(PopoverCatalogViewController *)self _preferredHeightForStartPage];
  v6 = v5;
  v7 = [(PopoverCatalogViewController *)self startPageViewController];
  [v7 setPreferredContentSize:{v4, v6}];
}

- (double)_preferredHeightForStartPage
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];

  v4 = [(PopoverCatalogViewController *)self primaryCatalogViewController];
  v5 = [v4 delegate];
  v6 = [v5 catalogViewControllerPresentingInPortraitAspectRatio:v4];

  if (v6)
  {
    [v4 navigationBarHeight];
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
  v3 = [WeakRetained completionsViewController];

  return v3;
}

- (void)didGainOwnershipOfCompletionsViewController
{
  v9 = [(PopoverCatalogViewController *)self completionsViewController];
  [v9 setShowsWebSearchTipIfExists:1];
  v2 = [v9 tableView];
  v3 = [v2 separatorEffect];
  v4 = MEMORY[0x277D75D00];
  v5 = [MEMORY[0x277D75210] _sf_defaultPopoverBackgroundEffect];
  v6 = [v4 _effectForBlurEffect:v5 vibrancyStyle:120];
  [v2 setSeparatorEffect:v6];

  v7 = [v2 separatorEffect];
  LOBYTE(v5) = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    v8 = [v9 dataSource];
    [v8 reloadVisibleRows];
  }
}

- (void)didGainOwnershipOfStartPageViewController
{
  v6 = [(PopoverCatalogViewController *)self startPageViewController];
  [v6 setAdditionalSafeAreaInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v6 setBackgroundDisplayMode:1];
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);
  v4 = [WeakRetained startPageController];
  [v4 setShowingAsPopover:1];

  [v6 setTopScrollEdgeEffectColor:0];
  v5 = [MEMORY[0x277D759B8] automaticStyle];
  [v6 setTopScrollEdgeEffectStyle:v5];
}

- (void)didGainOwnershipOfUniversalSearchFirstTimeExperienceViewController
{
  v4 = [(PopoverCatalogViewController *)self universalSearchFirstTimeExperienceViewController];
  v2 = [MEMORY[0x277D75348] clearColor];
  v3 = [v4 view];
  [v3 setBackgroundColor:v2];
}

- (CatalogViewController)primaryCatalogViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryCatalogViewController);

  return WeakRetained;
}

@end