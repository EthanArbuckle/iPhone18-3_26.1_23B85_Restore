@interface MUNearestStationSectionController
- (MUNearestStationSectionController)initWithTransitLineItem:(id)a3 etaProvider:(id)a4;
- (MUNearestStationSectionControllerDelegate)nearestStationDelegate;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (void)ETAProviderUpdated:(id)a3;
- (void)_createNearestStationSection;
- (void)_handleAttributionTap;
- (void)updateWithMapItem:(id)a3 isLoading:(BOOL)a4;
- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation MUNearestStationSectionController

- (MUNearestStationSectionControllerDelegate)nearestStationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_nearestStationDelegate);

  return WeakRetained;
}

- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(unint64_t)a5
{
  if (self->_nearestStationRowView == a4)
  {
    v7 = [(MUNearestStationSectionController *)self nearestStationDelegate];
    [v7 nearestStationSectionController:self didTapStationItem:self->_nearestStation];
  }
}

- (void)ETAProviderUpdated:(id)a3
{
  v4 = [a3 rawDistanceString];
  [(MUNearestStationRowView *)self->_nearestStationRowView setDistanceString:v4];
}

- (void)_handleAttributionTap
{
  v3 = [MEMORY[0x1E69A2478] modernManager];
  v4 = [v3 activeTileGroup];
  v5 = [v4 attributions];
  v9 = [v5 firstObject];

  v6 = [v9 url];
  if (v6)
  {
    v7 = [(MUNearestStationSectionController *)self nearestStationDelegate];
    v8 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    [v7 nearestStationSectionController:self didSelectStationAttributionURL:v8];
  }
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  v2 = [(MUTransitLineItemSectionController *)self lineItem];
  v3 = [v2 name];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v2 name];
  }

  else
  {
    v6 = [v2 system];
    v5 = [v6 name];
  }

  if ([v5 length])
  {
    if ([v5 length])
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = _MULocalizedStringFromThisBundle(@"Nearest %@ Station");
      v9 = [v7 localizedStringWithFormat:v8, v5];
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

- (void)updateWithMapItem:(id)a3 isLoading:(BOOL)a4
{
  objc_storeStrong(&self->_nearestStation, a3);
  v6 = a3;
  [(MUNearestStationRowView *)self->_nearestStationRowView configureWithNearestStation:v6];
  v7 = [(MKETAProvider *)self->_etaProvider rawDistanceString];
  [(MUNearestStationRowView *)self->_nearestStationRowView setDistanceString:v7];
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

  v11 = [(MUTransitLineItemSectionController *)self lineItem];
  v12 = [MUPlaceFooterAtributionViewModel viewModelForMapItem:0 transitLine:v11];
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
  v17 = [(MUNearestStationSectionController *)self sectionFooterViewModel];
  v18 = [MUPlaceSectionView insetPlatterSectionViewForContentView:v15 sectionHeaderViewModel:v16 sectionFooterViewModel:v17];
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

- (MUNearestStationSectionController)initWithTransitLineItem:(id)a3 etaProvider:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MUNearestStationSectionController;
  v8 = [(MUTransitLineItemSectionController *)&v11 initWithTransitLineItem:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_etaProvider, a4);
    [(MKETAProvider *)v9->_etaProvider addObserver:v9];
    [(MUNearestStationSectionController *)v9 _createNearestStationSection];
  }

  return v9;
}

@end