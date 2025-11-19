@interface MUHeaderButtonsSectionController
- (BOOL)hasContent;
- (CGRect)impressionsFrame;
- (MUHeaderButtonsSectionController)initWithETAProvider:(id)a3 headerButtonsConfiguration:(id)a4;
- (MUHeaderButtonsSectionControllerDelegate)delegate;
- (MUInfoCardAnalyticsDelegate)analyticsDelegate;
- (NSArray)sectionViews;
- (_MKPlaceActionButtonController)alternatePrimaryButtonController;
- (_MKPlaceActionButtonController)secondaryButtonController;
- (id)infoCardChildPossibleActions;
- (id)revealedAnalyticsModule;
- (unint64_t)primaryButtonType;
- (void)_setupSectionView;
- (void)_updateWithPreviousState:(BOOL)a3;
- (void)headerButtonsView:(id)a3 didSelectPrimaryType:(unint64_t)a4 withPresentationOptions:(id)a5;
- (void)headerButtonsViewWillPresentMenu:(id)a3;
- (void)placeHeaderButtonsViewController:(id)a3 didSelectPrimaryType:(unint64_t)a4 withView:(id)a5;
- (void)setAlternatePrimaryButtonController:(id)a3;
- (void)setPrimaryButtonType:(unint64_t)a3;
- (void)setSecondaryButtonController:(id)a3;
@end

@implementation MUHeaderButtonsSectionController

- (MUHeaderButtonsSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MUInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (id)revealedAnalyticsModule
{
  v2 = MEMORY[0x1E69A24A8];
  v3 = [(MUHeaderButtonsSectionController *)self analyticsModuleTypeForAction:0 presentationOptions:0];

  return [v2 moduleWithType:v3];
}

- (id)infoCardChildPossibleActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MUHeaderButtonsSectionController *)self primaryButtonType]- 1;
  if (v4 <= 3)
  {
    [v3 addObject:qword_1E821BA30[v4]];
  }

  v5 = [(MUHeaderButtonsViewConfiguration *)self->_headerConfiguration possibleAnalyticActions];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(MUHeaderButtonsViewConfiguration *)self->_headerConfiguration possibleAnalyticActions];
    [v3 addObjectsFromArray:v7];
  }

  v8 = [(MUHeaderButtonsSectionController *)self secondaryButtonController];
  v9 = [v8 conformsToProtocol:&unk_1F4522210];

  if (v9)
  {
    v10 = [(MUHeaderButtonsSectionController *)self secondaryButtonController];
    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 infoCardChildPossibleActions];
      if ([v11 count])
      {
        [v3 addObjectsFromArray:v11];
      }
    }
  }

  v12 = [v3 copy];

  return v12;
}

- (void)placeHeaderButtonsViewController:(id)a3 didSelectPrimaryType:(unint64_t)a4 withView:(id)a5
{
  v7 = a5;
  v17 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v17 setSourceView:v7];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(MUPresentationOptions *)v17 setSourceRect:v9, v11, v13, v15];
  v16 = [(MUHeaderButtonsSectionController *)self delegate];
  [v16 headerButtonsSectionController:self didSelectPrimaryType:a4 withPresentationOptions:v17];
}

- (void)headerButtonsViewWillPresentMenu:(id)a3
{
  v4 = [(MUHeaderButtonsSectionController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUHeaderButtonsSectionController *)self delegate];
    [v6 headerButtonsSectionControllerWillPresentMenu:self];
  }
}

- (void)headerButtonsView:(id)a3 didSelectPrimaryType:(unint64_t)a4 withPresentationOptions:(id)a5
{
  v7 = a5;
  v8 = [(MUHeaderButtonsSectionController *)self delegate];
  [v8 headerButtonsSectionController:self didSelectPrimaryType:a4 withPresentationOptions:v7];
}

- (void)_updateWithPreviousState:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if ([(MUHeaderButtonsSectionController *)self hasContent]!= a3)
  {
    v5 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109376;
      v8[1] = v3;
      v9 = 1024;
      v10 = [(MUHeaderButtonsSectionController *)self hasContent];
      _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "MUPlaceHeaderButtonsSectionController: hasContent changed from %d to %d, will tell parent to update.", v8, 0xEu);
    }

    v6 = [(MUHeaderButtonsSectionController *)self delegate];
    [v6 headerButtonsSectionControllerDidUpdateContent:self];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasContent
{
  if ([(MUHeaderButtonsSectionController *)self primaryButtonType])
  {
    return 1;
  }

  v4 = [(MUHeaderButtonsSectionController *)self secondaryButtonController];
  v3 = v4 != 0;

  return v3;
}

- (unint64_t)primaryButtonType
{
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v4 = 24;
  if (IsMacCatalyst)
  {
    v4 = 40;
  }

  v5 = *(&self->super.isa + v4);

  return [v5 primaryButtonType];
}

- (void)setPrimaryButtonType:(unint64_t)a3
{
  v5 = [(MUHeaderButtonsSectionController *)self hasContent];
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v7 = 24;
  if (IsMacCatalyst)
  {
    v7 = 40;
  }

  [*(&self->super.isa + v7) setPrimaryButtonType:a3];

  [(MUHeaderButtonsSectionController *)self _updateWithPreviousState:v5];
}

- (_MKPlaceActionButtonController)alternatePrimaryButtonController
{
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v4 = 24;
  if (IsMacCatalyst)
  {
    v4 = 40;
  }

  v5 = [*(&self->super.isa + v4) alternatePrimaryButtonController];

  return v5;
}

- (void)setAlternatePrimaryButtonController:(id)a3
{
  v4 = a3;
  v5 = [(MUHeaderButtonsSectionController *)self hasContent];
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v7 = 24;
  if (IsMacCatalyst)
  {
    v7 = 40;
  }

  [*(&self->super.isa + v7) setAlternatePrimaryButtonController:v4];

  [(MUHeaderButtonsSectionController *)self _updateWithPreviousState:v5];
}

- (void)setSecondaryButtonController:(id)a3
{
  v4 = a3;
  v5 = [(MUHeaderButtonsSectionController *)self hasContent];
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v7 = 24;
  if (IsMacCatalyst)
  {
    v7 = 40;
  }

  [*(&self->super.isa + v7) setSecondaryButtonController:v4];

  [(MUHeaderButtonsSectionController *)self _updateWithPreviousState:v5];
}

- (_MKPlaceActionButtonController)secondaryButtonController
{
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v4 = 24;
  if (IsMacCatalyst)
  {
    v4 = 40;
  }

  v5 = [*(&self->super.isa + v4) secondaryButtonController];

  return v5;
}

- (CGRect)impressionsFrame
{
  v2 = [(MUHeaderButtonsSectionController *)self sectionView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (NSArray)sectionViews
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self->_sectionView;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)_setupSectionView
{
  v3 = [[MUPlaceSectionView alloc] initWithStyle:2 alwaysHideSeparators:1];
  sectionView = self->_sectionView;
  self->_sectionView = v3;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  v5 = self->_sectionView;
  contentView = self->_contentView;

  [(MUPlaceSectionView *)v5 attachViewToContentView:contentView];
}

- (MUHeaderButtonsSectionController)initWithETAProvider:(id)a3 headerButtonsConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = MUHeaderButtonsSectionController;
  v8 = [(MUHeaderButtonsSectionController *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_etaProvider, v6);
    objc_storeStrong(&v9->_headerConfiguration, a4);
    if (MapKitIdiomIsMacCatalyst())
    {
      v10 = objc_alloc_init(MEMORY[0x1E696F320]);
      p_catalystHeaderViewController = &v9->_catalystHeaderViewController;
      catalystHeaderViewController = v9->_catalystHeaderViewController;
      v9->_catalystHeaderViewController = v10;

      v13 = [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController view];
      [v13 setPreservesSuperviewLayoutMargins:0];

      v14 = [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController view];
      [v14 setInsetsLayoutMarginsFromSafeArea:0];

      v15 = [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController contentView];
      [v15 setPreservesSuperviewLayoutMargins:0];

      v16 = *MEMORY[0x1E69DDCE0];
      v17 = *(MEMORY[0x1E69DDCE0] + 8);
      v18 = *(MEMORY[0x1E69DDCE0] + 16);
      v19 = *(MEMORY[0x1E69DDCE0] + 24);
      v20 = [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController contentView];
      [v20 setLayoutMargins:{v16, v17, v18, v19}];

      [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController setDelegate:v9];
      v21 = [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController view];
    }

    else
    {
      v22 = [[MUHeaderButtonsView alloc] initWithConfiguration:v7];
      p_catalystHeaderViewController = &v9->_headerButtonsView;
      headerButtonsView = v9->_headerButtonsView;
      v9->_headerButtonsView = v22;

      [(MUHeaderButtonsView *)v9->_headerButtonsView setDelegate:v9];
      [(MUHeaderButtonsView *)v9->_headerButtonsView setAccessibilityIdentifier:@"PlaceHeaderButtonsView"];
      v21 = v9->_headerButtonsView;
    }

    contentView = v9->_contentView;
    v9->_contentView = &v21->super;

    WeakRetained = objc_loadWeakRetained(&v9->_etaProvider);
    [WeakRetained addObserver:*p_catalystHeaderViewController];

    [(MUHeaderButtonsSectionController *)v9 _setupSectionView];
  }

  return v9;
}

@end