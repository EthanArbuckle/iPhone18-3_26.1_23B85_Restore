@interface MUNearestStationSectionController
- (MUNearestStationSectionController)initWithTransitLineItem:(id)item etaProvider:(id)provider;
- (MUNearestStationSectionControllerDelegate)nearestStationDelegate;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (void)ETAProviderUpdated:(id)updated;
- (void)_createNearestStationSection;
- (void)_handleAttributionTap;
- (void)updateWithMapItem:(id)item isLoading:(BOOL)loading;
- (void)verticalCardContainerView:(id)view didSelectRow:(id)row atIndex:(unint64_t)index;
@end

@implementation MUNearestStationSectionController

- (MUNearestStationSectionControllerDelegate)nearestStationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_nearestStationDelegate);

  return WeakRetained;
}

- (void)verticalCardContainerView:(id)view didSelectRow:(id)row atIndex:(unint64_t)index
{
  if (self->_nearestStationRowView == row)
  {
    nearestStationDelegate = [(MUNearestStationSectionController *)self nearestStationDelegate];
    [nearestStationDelegate nearestStationSectionController:self didTapStationItem:self->_nearestStation];
  }
}

- (void)ETAProviderUpdated:(id)updated
{
  rawDistanceString = [updated rawDistanceString];
  [(MUNearestStationRowView *)self->_nearestStationRowView setDistanceString:rawDistanceString];
}

- (void)_handleAttributionTap
{
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  activeTileGroup = [modernManager activeTileGroup];
  attributions = [activeTileGroup attributions];
  firstObject = [attributions firstObject];

  v6 = [firstObject url];
  if (v6)
  {
    nearestStationDelegate = [(MUNearestStationSectionController *)self nearestStationDelegate];
    v8 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    [nearestStationDelegate nearestStationSectionController:self didSelectStationAttributionURL:v8];
  }
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  lineItem = [(MUTransitLineItemSectionController *)self lineItem];
  name = [lineItem name];
  v4 = [name length];

  if (v4)
  {
    name2 = [lineItem name];
  }

  else
  {
    system = [lineItem system];
    name2 = [system name];
  }

  if ([name2 length])
  {
    if ([name2 length])
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = _MULocalizedStringFromThisBundle(@"Nearest %@ Station");
      v9 = [v7 localizedStringWithFormat:v8, name2];
    }

    else
    {
      v9 = _MULocalizedStringFromThisBundle(@"Nearest Station");
    }

    v10 = [[MUPlaceSectionHeaderViewModel alloc] initWithTitleString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateWithMapItem:(id)item isLoading:(BOOL)loading
{
  objc_storeStrong(&self->_nearestStation, item);
  itemCopy = item;
  [(MUNearestStationRowView *)self->_nearestStationRowView configureWithNearestStation:itemCopy];
  rawDistanceString = [(MKETAProvider *)self->_etaProvider rawDistanceString];
  [(MUNearestStationRowView *)self->_nearestStationRowView setDistanceString:rawDistanceString];
}

- (void)_createNearestStationSection
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = [MUNearestStationRowView alloc];
  v4 = [(MUNearestStationRowView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  nearestStationRowView = self->_nearestStationRowView;
  self->_nearestStationRowView = v4;

  v6 = +[MUPlaceVerticalCardConfiguration plainConfiguration];
  v7 = [[MUPlaceVerticalCardContainerView alloc] initWithConfiguration:v6];
  containerView = self->_containerView;
  self->_containerView = v7;

  [(MUPlaceVerticalCardContainerView *)self->_containerView setDelegate:self];
  v9 = self->_containerView;
  v27[0] = self->_nearestStationRowView;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [(MUPlaceVerticalCardContainerView *)v9 setRowViews:v10];

  lineItem = [(MUTransitLineItemSectionController *)self lineItem];
  v12 = [MUPlaceFooterAtributionViewModel viewModelForMapItem:0 transitLine:lineItem];
  footerViewModel = self->_footerViewModel;
  self->_footerViewModel = v12;

  objc_initWeak(&location, self);
  v14 = self->_footerViewModel;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __65__MUNearestStationSectionController__createNearestStationSection__block_invoke;
  v24 = &unk_1E821BAC8;
  objc_copyWeak(&v25, &location);
  [(MUPlaceSectionFooterViewModel *)v14 setActionBlock:&v21];
  v15 = self->_containerView;
  v16 = [(MUNearestStationSectionController *)self sectionHeaderViewModel:v21];
  sectionFooterViewModel = [(MUNearestStationSectionController *)self sectionFooterViewModel];
  v18 = [MUPlaceSectionView insetPlatterSectionViewForContentView:v15 sectionHeaderViewModel:v16 sectionFooterViewModel:sectionFooterViewModel];
  sectionView = self->_sectionView;
  self->_sectionView = v18;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v20 = *MEMORY[0x1E69E9840];
}

void __65__MUNearestStationSectionController__createNearestStationSection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleAttributionTap];
    WeakRetained = v2;
  }
}

- (MUNearestStationSectionController)initWithTransitLineItem:(id)item etaProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = MUNearestStationSectionController;
  v8 = [(MUTransitLineItemSectionController *)&v11 initWithTransitLineItem:item];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_etaProvider, provider);
    [(MKETAProvider *)v9->_etaProvider addObserver:v9];
    [(MUNearestStationSectionController *)v9 _createNearestStationSection];
  }

  return v9;
}

@end