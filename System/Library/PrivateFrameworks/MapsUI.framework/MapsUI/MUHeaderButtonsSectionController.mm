@interface MUHeaderButtonsSectionController
- (BOOL)hasContent;
- (CGRect)impressionsFrame;
- (MUHeaderButtonsSectionController)initWithETAProvider:(id)provider headerButtonsConfiguration:(id)configuration;
- (MUHeaderButtonsSectionControllerDelegate)delegate;
- (MUInfoCardAnalyticsDelegate)analyticsDelegate;
- (NSArray)sectionViews;
- (_MKPlaceActionButtonController)alternatePrimaryButtonController;
- (_MKPlaceActionButtonController)secondaryButtonController;
- (id)infoCardChildPossibleActions;
- (id)revealedAnalyticsModule;
- (unint64_t)primaryButtonType;
- (void)_setupSectionView;
- (void)_updateWithPreviousState:(BOOL)state;
- (void)headerButtonsView:(id)view didSelectPrimaryType:(unint64_t)type withPresentationOptions:(id)options;
- (void)headerButtonsViewWillPresentMenu:(id)menu;
- (void)placeHeaderButtonsViewController:(id)controller didSelectPrimaryType:(unint64_t)type withView:(id)view;
- (void)setAlternatePrimaryButtonController:(id)controller;
- (void)setPrimaryButtonType:(unint64_t)type;
- (void)setSecondaryButtonController:(id)controller;
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
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(MUHeaderButtonsSectionController *)self primaryButtonType]- 1;
  if (v4 <= 3)
  {
    [array addObject:qword_1E821BA30[v4]];
  }

  possibleAnalyticActions = [(MUHeaderButtonsViewConfiguration *)self->_headerConfiguration possibleAnalyticActions];
  v6 = [possibleAnalyticActions count];

  if (v6)
  {
    possibleAnalyticActions2 = [(MUHeaderButtonsViewConfiguration *)self->_headerConfiguration possibleAnalyticActions];
    [array addObjectsFromArray:possibleAnalyticActions2];
  }

  secondaryButtonController = [(MUHeaderButtonsSectionController *)self secondaryButtonController];
  v9 = [secondaryButtonController conformsToProtocol:&unk_1F4522210];

  if (v9)
  {
    secondaryButtonController2 = [(MUHeaderButtonsSectionController *)self secondaryButtonController];
    if (objc_opt_respondsToSelector())
    {
      infoCardChildPossibleActions = [secondaryButtonController2 infoCardChildPossibleActions];
      if ([infoCardChildPossibleActions count])
      {
        [array addObjectsFromArray:infoCardChildPossibleActions];
      }
    }
  }

  v12 = [array copy];

  return v12;
}

- (void)placeHeaderButtonsViewController:(id)controller didSelectPrimaryType:(unint64_t)type withView:(id)view
{
  viewCopy = view;
  v17 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v17 setSourceView:viewCopy];
  [viewCopy frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(MUPresentationOptions *)v17 setSourceRect:v9, v11, v13, v15];
  delegate = [(MUHeaderButtonsSectionController *)self delegate];
  [delegate headerButtonsSectionController:self didSelectPrimaryType:type withPresentationOptions:v17];
}

- (void)headerButtonsViewWillPresentMenu:(id)menu
{
  delegate = [(MUHeaderButtonsSectionController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(MUHeaderButtonsSectionController *)self delegate];
    [delegate2 headerButtonsSectionControllerWillPresentMenu:self];
  }
}

- (void)headerButtonsView:(id)view didSelectPrimaryType:(unint64_t)type withPresentationOptions:(id)options
{
  optionsCopy = options;
  delegate = [(MUHeaderButtonsSectionController *)self delegate];
  [delegate headerButtonsSectionController:self didSelectPrimaryType:type withPresentationOptions:optionsCopy];
}

- (void)_updateWithPreviousState:(BOOL)state
{
  stateCopy = state;
  v11 = *MEMORY[0x1E69E9840];
  if ([(MUHeaderButtonsSectionController *)self hasContent]!= state)
  {
    v5 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109376;
      v8[1] = stateCopy;
      v9 = 1024;
      hasContent = [(MUHeaderButtonsSectionController *)self hasContent];
      _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "MUPlaceHeaderButtonsSectionController: hasContent changed from %d to %d, will tell parent to update.", v8, 0xEu);
    }

    delegate = [(MUHeaderButtonsSectionController *)self delegate];
    [delegate headerButtonsSectionControllerDidUpdateContent:self];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasContent
{
  if ([(MUHeaderButtonsSectionController *)self primaryButtonType])
  {
    return 1;
  }

  secondaryButtonController = [(MUHeaderButtonsSectionController *)self secondaryButtonController];
  v3 = secondaryButtonController != 0;

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

- (void)setPrimaryButtonType:(unint64_t)type
{
  hasContent = [(MUHeaderButtonsSectionController *)self hasContent];
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v7 = 24;
  if (IsMacCatalyst)
  {
    v7 = 40;
  }

  [*(&self->super.isa + v7) setPrimaryButtonType:type];

  [(MUHeaderButtonsSectionController *)self _updateWithPreviousState:hasContent];
}

- (_MKPlaceActionButtonController)alternatePrimaryButtonController
{
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v4 = 24;
  if (IsMacCatalyst)
  {
    v4 = 40;
  }

  alternatePrimaryButtonController = [*(&self->super.isa + v4) alternatePrimaryButtonController];

  return alternatePrimaryButtonController;
}

- (void)setAlternatePrimaryButtonController:(id)controller
{
  controllerCopy = controller;
  hasContent = [(MUHeaderButtonsSectionController *)self hasContent];
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v7 = 24;
  if (IsMacCatalyst)
  {
    v7 = 40;
  }

  [*(&self->super.isa + v7) setAlternatePrimaryButtonController:controllerCopy];

  [(MUHeaderButtonsSectionController *)self _updateWithPreviousState:hasContent];
}

- (void)setSecondaryButtonController:(id)controller
{
  controllerCopy = controller;
  hasContent = [(MUHeaderButtonsSectionController *)self hasContent];
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v7 = 24;
  if (IsMacCatalyst)
  {
    v7 = 40;
  }

  [*(&self->super.isa + v7) setSecondaryButtonController:controllerCopy];

  [(MUHeaderButtonsSectionController *)self _updateWithPreviousState:hasContent];
}

- (_MKPlaceActionButtonController)secondaryButtonController
{
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v4 = 24;
  if (IsMacCatalyst)
  {
    v4 = 40;
  }

  secondaryButtonController = [*(&self->super.isa + v4) secondaryButtonController];

  return secondaryButtonController;
}

- (CGRect)impressionsFrame
{
  sectionView = [(MUHeaderButtonsSectionController *)self sectionView];
  [sectionView frame];
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

- (MUHeaderButtonsSectionController)initWithETAProvider:(id)provider headerButtonsConfiguration:(id)configuration
{
  providerCopy = provider;
  configurationCopy = configuration;
  v27.receiver = self;
  v27.super_class = MUHeaderButtonsSectionController;
  v8 = [(MUHeaderButtonsSectionController *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_etaProvider, providerCopy);
    objc_storeStrong(&v9->_headerConfiguration, configuration);
    if (MapKitIdiomIsMacCatalyst())
    {
      v10 = objc_alloc_init(MEMORY[0x1E696F320]);
      p_catalystHeaderViewController = &v9->_catalystHeaderViewController;
      catalystHeaderViewController = v9->_catalystHeaderViewController;
      v9->_catalystHeaderViewController = v10;

      view = [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController view];
      [view setPreservesSuperviewLayoutMargins:0];

      view2 = [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController view];
      [view2 setInsetsLayoutMarginsFromSafeArea:0];

      contentView = [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController contentView];
      [contentView setPreservesSuperviewLayoutMargins:0];

      v16 = *MEMORY[0x1E69DDCE0];
      v17 = *(MEMORY[0x1E69DDCE0] + 8);
      v18 = *(MEMORY[0x1E69DDCE0] + 16);
      v19 = *(MEMORY[0x1E69DDCE0] + 24);
      contentView2 = [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController contentView];
      [contentView2 setLayoutMargins:{v16, v17, v18, v19}];

      [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController setDelegate:v9];
      view3 = [(MKPlaceHeaderButtonsViewController *)v9->_catalystHeaderViewController view];
    }

    else
    {
      v22 = [[MUHeaderButtonsView alloc] initWithConfiguration:configurationCopy];
      p_catalystHeaderViewController = &v9->_headerButtonsView;
      headerButtonsView = v9->_headerButtonsView;
      v9->_headerButtonsView = v22;

      [(MUHeaderButtonsView *)v9->_headerButtonsView setDelegate:v9];
      [(MUHeaderButtonsView *)v9->_headerButtonsView setAccessibilityIdentifier:@"PlaceHeaderButtonsView"];
      view3 = v9->_headerButtonsView;
    }

    contentView = v9->_contentView;
    v9->_contentView = &view3->super;

    WeakRetained = objc_loadWeakRetained(&v9->_etaProvider);
    [WeakRetained addObserver:*p_catalystHeaderViewController];

    [(MUHeaderButtonsSectionController *)v9 _setupSectionView];
  }

  return v9;
}

@end