@interface MUTransitLineItemViewController
- (MUTransitLineItemViewController)initWithTransitLineItem:(id)a3;
- (MUTransitLineItemViewControllerDelegate)delegate;
- (UIScrollViewDelegate)scrollViewDelegate;
- (id)_footerSectionController;
- (void)_attachLoadingOverlayIfNeeded;
- (void)_fetchNearestStation;
- (void)_openAttributionURLStrings:(id)a3 usingAttribution:(id)a4;
- (void)_setupContentView;
- (void)_updatePocketInsets;
- (void)_updateSectionControllers;
- (void)headerButtonsSectionController:(id)a3 didSelectPrimaryType:(unint64_t)a4 withPresentationOptions:(id)a5;
- (void)headerButtonsSectionControllerDidUpdateContent:(id)a3;
- (void)incidentsSectionController:(id)a3 didSelectDetailsForIncidents:(id)a4;
- (void)lineItemManager:(id)a3 didSelectReportAProblemWithEnvironment:(id)a4;
- (void)nearestStationSectionController:(id)a3 didSelectStationAttributionURL:(id)a4;
- (void)nearestStationSectionController:(id)a3 didTapStationItem:(id)a4;
- (void)placeDescriptionSectionControllerDidTapAttribution:(id)a3;
- (void)resetNearestStation;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setAutomobileOptions:(id)a3;
- (void)setCyclingOptions:(id)a3;
- (void)setTransitLineItem:(id)a3;
- (void)setTransitOptions:(id)a3;
- (void)setWalkingOptions:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MUTransitLineItemViewController

- (MUTransitLineItemViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

- (void)incidentsSectionController:(id)a3 didSelectDetailsForIncidents:(id)a4
{
  v5 = a4;
  v6 = [(MUTransitLineItemViewController *)self delegate];
  [v6 lineItemViewController:self didSelectDetailsForIncidents:v5];
}

- (void)nearestStationSectionController:(id)a3 didSelectStationAttributionURL:(id)a4
{
  v5 = a4;
  v6 = [(MUTransitLineItemViewController *)self delegate];
  [v6 lineItemViewController:self openURL:v5];
}

- (void)nearestStationSectionController:(id)a3 didTapStationItem:(id)a4
{
  v5 = a4;
  v6 = [(MUTransitLineItemViewController *)self delegate];
  [v6 lineItemViewController:self didSelectNearestStation:v5];
}

- (void)headerButtonsSectionController:(id)a3 didSelectPrimaryType:(unint64_t)a4 withPresentationOptions:(id)a5
{
  if (a4 == 1)
  {
    v9 = [(MUNearestStationProvider *)self->_nearbyStationProvider nearestStation:a3];
    if (v9)
    {
      v7 = [(MUTransitLineItemViewController *)self delegate];
      v8 = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
      [v7 lineItemViewController:self didSelectDirectionsToNearestStation:v9 withTransportTypePreference:v8];

      [(MUTransitLineItemViewController *)self infoCardAnalyticsDidSelectAction:6003 eventValue:0 feedbackDelegateSelector:0 classification:0];
    }
  }
}

- (void)headerButtonsSectionControllerDidUpdateContent:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (self->_headerView)
  {
    [v4 addObject:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_sectionControllers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 hasContent])
        {
          v12 = [v11 sectionView];

          if (v12)
          {
            v13 = [v11 sectionView];
            [v5 addObject:v13];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  contentStackView = self->_contentStackView;
  v15 = [v5 copy];
  [(MUScrollableStackView *)contentStackView setArrangedSubviews:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setCyclingOptions:(id)a3
{
  v5 = a3;
  if (self->_cyclingOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cyclingOptions, a3);
    [(MKETAProvider *)self->_etaProvider setCyclingOptions:self->_cyclingOptions];
    v5 = v6;
  }
}

- (void)setTransitOptions:(id)a3
{
  v5 = a3;
  if (self->_transitOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_transitOptions, a3);
    [(MKETAProvider *)self->_etaProvider setTransitOptions:self->_transitOptions];
    v5 = v6;
  }
}

- (void)setWalkingOptions:(id)a3
{
  v5 = a3;
  if (self->_walkingOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_walkingOptions, a3);
    [(MKETAProvider *)self->_etaProvider setWalkingOptions:self->_walkingOptions];
    v5 = v6;
  }
}

- (void)setAutomobileOptions:(id)a3
{
  v5 = a3;
  if (self->_automobileOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_automobileOptions, a3);
    [(MKETAProvider *)self->_etaProvider setAutomobileOptions:self->_automobileOptions];
    v5 = v6;
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v7 = a3;
  v4 = [(MUTransitLineItemViewController *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUTransitLineItemViewController *)self scrollViewDelegate];
    [v6 scrollViewWillBeginDragging:v7];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v7 = a3;
  v4 = [(MUTransitLineItemViewController *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUTransitLineItemViewController *)self scrollViewDelegate];
    [v6 scrollViewDidScroll:v7];
  }
}

- (void)_openAttributionURLStrings:(id)a3 usingAttribution:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      v19 = v7;
      v20 = v6;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v21 + 1) + 8 * i)];
          v14 = [v13 scheme];
          if ([v14 isEqualToString:@"http"])
          {

LABEL_13:
            v17 = [(MUTransitLineItemViewController *)self delegate];
            [v17 lineItemViewController:self openURL:v13];

            v7 = v19;
            v6 = v20;
            goto LABEL_14;
          }

          v15 = [v13 scheme];
          v16 = [v15 isEqualToString:@"https"];

          if (v16)
          {
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v7 = v19;
        v6 = v20;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    [MEMORY[0x1E696F198] launchAttributionURLs:v8 withAttribution:v7 completionHandler:0];
  }

LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)placeDescriptionSectionControllerDidTapAttribution:(id)a3
{
  v4 = [(MUTransitLineItemViewController *)self transitLineItem];
  v5 = [v4 encyclopedicInfo];
  v11 = [v5 encyclopedicAttribution];

  v6 = MEMORY[0x1E696F478];
  v7 = [(MUTransitLineItemViewController *)self transitLineItem];
  v8 = [v7 encyclopedicInfo];
  v9 = [v6 attributionFromEncyclopedicInfo:v8];

  v10 = [v11 attributionURLs];
  [(MUTransitLineItemViewController *)self _openAttributionURLStrings:v10 usingAttribution:v9];
}

- (void)lineItemManager:(id)a3 didSelectReportAProblemWithEnvironment:(id)a4
{
  [(MUTransitLineItemViewController *)self infoCardAnalyticsDidSelectAction:5013 eventValue:0 feedbackDelegateSelector:0 classification:0];
  v5 = [(MUTransitLineItemViewController *)self delegate];
  [v5 lineItemViewControllerDidSelectReportAProblem:self];
}

- (void)_attachLoadingOverlayIfNeeded
{
  if ([(MUTransitLineItemViewController *)self isLoading])
  {
    loadingOverlayController = self->_loadingOverlayController;
    if (!loadingOverlayController)
    {
      v4 = [MULoadingOverlayController alloc];
      v5 = [(MUTransitLineItemViewController *)self view];
      v6 = [(MULoadingOverlayController *)v4 initWithParentView:v5 contentView:self->_contentStackView];
      v7 = self->_loadingOverlayController;
      self->_loadingOverlayController = v6;

      loadingOverlayController = self->_loadingOverlayController;
    }

    [(MULoadingOverlayController *)loadingOverlayController attachLoadingOverlay];
  }
}

- (void)resetNearestStation
{
  [(MUNearestStationProvider *)self->_nearbyStationProvider resetNearestStation];
  [(MUHeaderButtonsSectionController *)self->_headerButtonsSectionController setPrimaryButtonType:0];
  [(MKETAProvider *)self->_etaProvider configureWithNearestStationMapItem:0];
  nearestStationSectionController = self->_nearestStationSectionController;

  [(MUNearestStationSectionController *)nearestStationSectionController updateWithMapItem:0 isLoading:0];
}

- (void)_fetchNearestStation
{
  v3 = [(MUTransitLineItemViewController *)self transitLineItem];
  v4 = [v3 muid];
  v5 = [(MUNearestStationProvider *)self->_nearbyStationProvider lastRequestedNearestID];

  if (v4 != v5)
  {
    goto LABEL_7;
  }

  v6 = [(MUNearestStationProvider *)self->_nearbyStationProvider nearestStation];

  headerButtonsSectionController = self->_headerButtonsSectionController;
  if (!v6)
  {
    [(MUHeaderButtonsSectionController *)headerButtonsSectionController setPrimaryButtonType:0];
    [(MKETAProvider *)self->_etaProvider cancel];
LABEL_7:
    v11 = [(MUTransitLineItemViewController *)self transitLineItem];
    v12 = MKMapItemIdentifierFromGEOTransitLine();

    objc_initWeak(&location, self);
    nearbyStationProvider = self->_nearbyStationProvider;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__MUTransitLineItemViewController__fetchNearestStation__block_invoke;
    v15[3] = &unk_1E821BAC8;
    objc_copyWeak(&v16, &location);
    [(MUNearestStationProvider *)nearbyStationProvider fetchStationForLineItemIdentifier:v12 completion:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);

    return;
  }

  [(MUHeaderButtonsSectionController *)headerButtonsSectionController setPrimaryButtonType:1];
  etaProvider = self->_etaProvider;
  v9 = [(MUNearestStationProvider *)self->_nearbyStationProvider nearestStation];
  [(MKETAProvider *)etaProvider configureWithNearestStationMapItem:v9];

  nearestStationSectionController = self->_nearestStationSectionController;
  v14 = [(MUNearestStationProvider *)self->_nearbyStationProvider nearestStation];
  [(MUNearestStationSectionController *)nearestStationSectionController updateWithMapItem:v14 isLoading:0];
}

void __55__MUTransitLineItemViewController__fetchNearestStation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *(WeakRetained + 129);
    v4 = WeakRetained;
    v3 = [*(WeakRetained + 128) nearestStation];
    [v2 updateWithMapItem:v3 isLoading:0];

    WeakRetained = v4;
  }
}

- (id)_footerSectionController
{
  v3 = [MUTransitFooterActionsSectionController alloc];
  v4 = [(MUTransitLineItemViewController *)self transitLineItem];
  v5 = [(MUTransitFooterActionsSectionController *)v3 initWithTransitLineItem:v4 actionManager:self->_actionManager];

  return v5;
}

- (void)_updatePocketInsets
{
  [(MUTransitLineItemViewController *)self heightForContentAboveTitle];
  v4 = v3 + 72.0;
  v5 = [(MUTransitLineItemViewController *)self scrollView];
  [v5 _setPocketInsets:{v4, 0.0, 0.0, 0.0}];
}

- (void)_updateSectionControllers
{
  v91 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_transitLineItem)
  {
    [(MKETAProvider *)self->_etaProvider cancel];
    v5 = [objc_alloc(MEMORY[0x1E696F1D0]) initWithLineItem:self->_transitLineItem];
    etaProvider = self->_etaProvider;
    self->_etaProvider = v5;

    [(MKETAProvider *)self->_etaProvider setDelegate:self];
    v7 = [(MUTransitLineItemViewController *)self automobileOptions];
    [(MKETAProvider *)self->_etaProvider setAutomobileOptions:v7];

    v8 = [(MUTransitLineItemViewController *)self walkingOptions];
    [(MKETAProvider *)self->_etaProvider setWalkingOptions:v8];

    v9 = [(MUTransitLineItemViewController *)self transitOptions];
    [(MKETAProvider *)self->_etaProvider setTransitOptions:v9];

    v10 = [(MUTransitLineItemViewController *)self cyclingOptions];
    [(MKETAProvider *)self->_etaProvider setCyclingOptions:v10];
  }

  v11 = [MUTransitLineItemHeaderViewModel alloc];
  v12 = [(MUTransitLineItemViewController *)self transitLineItem];
  v72 = [(MUTransitLineItemHeaderViewModel *)v11 initWithTransitLineItem:v12];

  objc_initWeak(&location, self);
  v13 = [MUPlaceHeaderView alloc];
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __60__MUTransitLineItemViewController__updateSectionControllers__block_invoke;
  v86[3] = &unk_1E821BA58;
  objc_copyWeak(&v87, &location);
  v14 = [(MUPlaceHeaderView *)v13 initWithViewModel:v72 trailingConstraintProvider:v86 paddingConstraintProvider:&__block_literal_global_25241];
  headerView = self->_headerView;
  self->_headerView = v14;

  [v4 addObject:self->_headerView];
  v16 = [MUHeaderButtonsSectionController alloc];
  v17 = self->_etaProvider;
  v18 = objc_alloc_init(MUHeaderButtonsViewConfiguration);
  v19 = [(MUHeaderButtonsSectionController *)v16 initWithETAProvider:v17 headerButtonsConfiguration:v18];
  headerButtonsSectionController = self->_headerButtonsSectionController;
  self->_headerButtonsSectionController = v19;

  [(MUHeaderButtonsSectionController *)self->_headerButtonsSectionController setPrimaryButtonType:0];
  [(MUHeaderButtonsSectionController *)self->_headerButtonsSectionController setDelegate:self];
  v21 = self->_headerButtonsSectionController;
  v22 = v3;
  v23 = v21;
  if (v23)
  {
    [v22 addObject:v23];
  }

  if (![(MUTransitLineItemViewController *)self isLoading])
  {
    v24 = [(GEOTransitLineItem *)self->_transitLineItem mapRegion];
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = MEMORY[0x1E696F490];
      v27 = _MULocalizedStringFromThisBundle(@"View [Line Card]");
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __60__MUTransitLineItemViewController__updateSectionControllers__block_invoke_3;
      v84[3] = &unk_1E821BAA0;
      objc_copyWeak(&v85, &location);
      v28 = [v26 actionButtonControllerWithTitle:v27 subTitle:0 selectedBlock:v84 disabled:0 symbolName:@"map"];

      [(MUHeaderButtonsSectionController *)self->_headerButtonsSectionController setSecondaryButtonController:v28];
      objc_destroyWeak(&v85);
    }
  }

  v29 = [MUNearestStationSectionController alloc];
  v30 = [(MUTransitLineItemViewController *)self transitLineItem];
  v31 = [(MUNearestStationSectionController *)v29 initWithTransitLineItem:v30 etaProvider:self->_etaProvider];

  [(MUNearestStationSectionController *)v31 setNearestStationDelegate:self];
  objc_storeStrong(&self->_nearestStationSectionController, v31);
  v32 = v22;
  v74 = v31;
  if (v74)
  {
    [v32 addObject:v74];
  }

  v33 = [(MUTransitLineItemViewController *)self transitLineItem];
  v34 = [v33 hasEncyclopedicInfo];

  if (v34)
  {
    v35 = [(MUTransitLineItemViewController *)self transitLineItem];
    v36 = [v35 encyclopedicInfo];

    v37 = [MUPlaceDescriptionConfiguration configurationWithEncyclopedicInfo:v36];
    v38 = [MUPlaceDescriptionSectionController alloc];
    v39 = [(MUNearestStationProvider *)self->_nearbyStationProvider nearestStation];
    v40 = [(MUPlaceDescriptionSectionController *)v38 initWithMapItem:v39 configuration:v37];

    [(MUPlaceDescriptionSectionController *)v40 setActionDelegate:self];
    v41 = v32;
    v42 = v40;
    if (v42)
    {
      [v41 addObject:v42];
    }
  }

  v43 = [MUTransitLineIncidentsSectionController alloc];
  v44 = [(MUTransitLineItemViewController *)self transitLineItem];
  v45 = [(MUTransitLineIncidentsSectionController *)v43 initWithTransitLineItem:v44];

  [(MUTransitLineIncidentsSectionController *)v45 setIncidentsDelegate:self];
  v46 = v32;
  v73 = v45;
  if (v73)
  {
    [v46 addObject:v73];
  }

  v47 = [(MUTransitLineItemViewController *)self _footerSectionController];
  v75 = v46;
  v48 = v47;
  if (v48)
  {
    [v75 addObject:v48];
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v49 = self->_sectionControllers;
  v50 = [(NSArray *)v49 countByEnumeratingWithState:&v80 objects:v90 count:16];
  if (v50)
  {
    v51 = *v81;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v81 != v51)
        {
          objc_enumerationMutation(v49);
        }

        v53 = *(*(&v80 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v54 = [v53 sectionViewController];
          v55 = v54 == 0;

          if (!v55)
          {
            v56 = [v53 sectionViewController];
            [v56 removeFromParentViewController];
          }
        }
      }

      v50 = [(NSArray *)v49 countByEnumeratingWithState:&v80 objects:v90 count:16];
    }

    while (v50);
  }

  v57 = [v75 copy];
  sectionControllers = self->_sectionControllers;
  self->_sectionControllers = v57;

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v59 = self->_sectionControllers;
  v60 = [(NSArray *)v59 countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (v60)
  {
    v61 = *v77;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v77 != v61)
        {
          objc_enumerationMutation(v59);
        }

        v63 = *(*(&v76 + 1) + 8 * j);
        if ([v63 hasContent])
        {
          v64 = [v63 sectionView];
          v65 = v64 == 0;

          if (!v65)
          {
            v66 = [v63 sectionView];
            [v4 addObject:v66];
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v67 = [v63 sectionViewController];
          v68 = v67 == 0;

          if (!v68)
          {
            v69 = [v63 sectionViewController];
            [(MUTransitLineItemViewController *)self addChildViewController:v69];

            v70 = [v63 sectionViewController];
            [v70 didMoveToParentViewController:self];
          }
        }

        [v63 setActive:1];
      }

      v60 = [(NSArray *)v59 countByEnumeratingWithState:&v76 objects:v89 count:16];
    }

    while (v60);
  }

  [(MUScrollableStackView *)self->_contentStackView setArrangedSubviews:v4];
  objc_destroyWeak(&v87);
  objc_destroyWeak(&location);

  v71 = *MEMORY[0x1E69E9840];
}

double __60__MUTransitLineItemViewController__updateSectionControllers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained delegate];
    [v3 lineItemViewControllerHeaderTitleTrailingConstant:v2];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

void __60__MUTransitLineItemViewController__updateSectionControllers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 lineItemViewControllerDidSelectViewOnMap:v3];

    WeakRetained = v3;
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MUTransitLineItemViewController;
  [(MUTransitLineItemViewController *)&v4 viewDidLoad];
  v3 = [(MUTransitLineItemViewController *)self view];
  [v3 setAccessibilityIdentifier:@"TransitLineItemView"];

  [(MUTransitLineItemViewController *)self _updateSectionControllers];
  [(MUTransitLineItemViewController *)self _updatePocketInsets];
}

- (void)setTransitLineItem:(id)a3
{
  v5 = a3;
  if (self->_transitLineItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_transitLineItem, a3);
    v5 = v6;
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = MUTransitLineItemViewController;
  [(MUTransitLineItemViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(MUTransitLineItemViewController *)self view];
  [v3 bounds];
  [(MUScrollableStackView *)self->_contentStackView setFrame:?];

  [(MULoadingOverlayController *)self->_loadingOverlayController updateLayoutForBoundsChange];
}

- (void)_setupContentView
{
  v3 = [MUScrollableStackView alloc];
  v4 = [(MUScrollableStackView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  contentStackView = self->_contentStackView;
  self->_contentStackView = v4;

  [(MUScrollableStackView *)self->_contentStackView setAxis:1];
  [(MUScrollableStackView *)self->_contentStackView setSpacing:20.0];
  [(MUScrollableStackView *)self->_contentStackView setDelegate:self];
  [(MUScrollableStackView *)self->_contentStackView setAlwaysBounceVertical:1];
  [(MUScrollableStackView *)self->_contentStackView setScrollEnabled:1];
  v6 = [(MUTransitLineItemViewController *)self view];
  [v6 addSubview:self->_contentStackView];
}

- (MUTransitLineItemViewController)initWithTransitLineItem:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = MUTransitLineItemViewController;
  v6 = [(MUTransitLineItemViewController *)&v15 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitLineItem, a3);
    v7->_loading = 0;
    v8 = [[MUTransitLineItemActionManager alloc] initWithDelegate:v7 analyticsDelegate:v7];
    actionManager = v7->_actionManager;
    v7->_actionManager = v8;

    v10 = objc_alloc_init(MUNearestStationProvider);
    nearbyStationProvider = v7->_nearbyStationProvider;
    v7->_nearbyStationProvider = v10;

    v12 = objc_alloc_init(MEMORY[0x1E696F1D0]);
    etaProvider = v7->_etaProvider;
    v7->_etaProvider = v12;

    [(MKETAProvider *)v7->_etaProvider setDelegate:v7];
    [(MUTransitLineItemViewController *)v7 _setupContentView];
  }

  return v7;
}

@end