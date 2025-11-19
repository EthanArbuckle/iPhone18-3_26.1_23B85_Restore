@interface MURelatedPlacesSectionController
- (BOOL)_isCuratedHikesModule;
- (BOOL)hasContent;
- (BOOL)isVertical;
- (BOOL)needsToPerformRefinement;
- (GEORelatedPlaceList)effectiveRelatedPlaceList;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (MURelatedPlacesSectionController)initWithMapItem:(id)a3 configuration:(id)a4;
- (MURelatedPlacesSectionControllerDelegate)relatedPlacesDelegate;
- (UIView)sectionView;
- (id)_moduleTitle;
- (unint64_t)numInlineItems;
- (void)_buildInitialContent;
- (void)_cancelFollowUpRequestIfNeeded;
- (void)_cancelPlaceRefinementIfNeeded;
- (void)_displayTilesForViewModels:(id)a3;
- (void)_handleViewModel:(id)a3;
- (void)_notifyDelegateForSeeAll;
- (void)_notifyDelegateOfSelectedMapItem:(id)a3;
- (void)_populateAnalyticsModule:(id)a3;
- (void)_refineHikingTrailListWithCompletion:(id)a3;
- (void)_refinePlaceAndNotifyDelegate:(id)a3;
- (void)_refineRelatedPlaceListWithCompletion:(id)a3;
- (void)_seeAllTapped;
- (void)_setupSectionView;
- (void)_updateSection;
- (void)_updateWithListFromFollowUpRequest:(id)a3;
- (void)performInstrumentationForScrollLeft;
- (void)performInstrumentationForScrollRight;
- (void)performNearbyPlacesFollowUpRequest;
- (void)setActive:(BOOL)a3;
@end

@implementation MURelatedPlacesSectionController

- (MURelatedPlacesSectionControllerDelegate)relatedPlacesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_relatedPlacesDelegate);

  return WeakRetained;
}

- (BOOL)_isCuratedHikesModule
{
  v2 = [(NSArray *)self->_mapItemList _geo_filtered:&__block_literal_global_142];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)performInstrumentationForScrollRight
{
  if ([(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource]== 1)
  {
    v3 = [(MUPlaceSectionController *)self mapItem];
    v4 = [v3 _mapsui_associatedHikingItemType];

    if (v4 == 2)
    {
      v5 = 410;
    }

    else
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = 367;
    }

    [(MUPlaceSectionController *)self captureInfoCardAction:v5 eventValue:0 feedbackType:0];
  }
}

- (void)performInstrumentationForScrollLeft
{
  if ([(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource]== 1)
  {
    v3 = [(MUPlaceSectionController *)self mapItem];
    v4 = [v3 _mapsui_associatedHikingItemType];

    if (v4 == 2)
    {
      v5 = 422;
    }

    else
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = 363;
    }

    [(MUPlaceSectionController *)self captureInfoCardAction:v5 eventValue:0 feedbackType:0];
  }
}

- (id)_moduleTitle
{
  v3 = [(MURelatedPlacesSectionController *)self effectiveRelatedPlaceList];
  v4 = [v3 placeTemplates];
  v5 = [v4 count];

  v6 = [(MURelatedPlacesSectionController *)self effectiveRelatedPlaceList];
  v7 = [v6 type];

  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_19;
      }

      if (v5 < 2)
      {
        v8 = @"[Related Places] Similar place Title";
      }

      else
      {
        v8 = @"[Related Places] Similar places Title";
      }

      goto LABEL_18;
    }

    goto LABEL_10;
  }

  switch(v7)
  {
    case 2:
      goto LABEL_10;
    case 3:
      v10 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
      v11 = [v10 countryCode];
      v12 = [v11 isEqualToString:@"CN"];

      if (v12)
      {
        v9 = @"[Related Places] Popular Places";
      }

      else
      {
        v9 = @"[Related Places] Places";
      }

      goto LABEL_16;
    case 4:
LABEL_10:
      if (v5 <= 1)
      {
        v8 = @"At this Address [Related Places]";
LABEL_18:
        v6 = _MULocalizedStringFromThisBundle(v8);
        break;
      }

      v9 = @"[Related Places] Num Places At This Address";
LABEL_16:
      v13 = _MULocalizedStringFromThisBundle(v9);
      v6 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v13 validFormatSpecifiers:@"%lu" error:0, v5];

      break;
  }

LABEL_19:

  return v6;
}

- (void)_populateAnalyticsModule:(id)a3
{
  v10 = a3;
  if ([(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource]== 1)
  {
    v4 = [(MUPlaceSectionController *)self mapItem];
    v5 = [v4 _mapsui_associatedHikingItemType];

    if (v5 == 1)
    {
      v7 = @"Trails";
    }

    else
    {
      v6 = v10;
      if (v5 != 2)
      {
        goto LABEL_9;
      }

      v7 = @"Trailheads";
    }

    [v10 setMetadata:v7];
  }

  else
  {
    v8 = [(MURelatedPlacesSectionController *)self sectionHeaderViewModel];
    v9 = [v8 titleString];
    [v10 setMetadata:v9];
  }

  v6 = v10;
LABEL_9:
}

- (void)_notifyDelegateForSeeAll
{
  if ([(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource]== 1)
  {
    v3 = [(MUPlaceSectionController *)self mapItem];
    v4 = [v3 _mapsui_associatedHikingItemType];

    if (v4 == 2)
    {
      v5 = 428;
    }

    else
    {
      v5 = 9040;
    }

    if (v4 == 1)
    {
      v6 = 364;
    }

    else
    {
      v6 = v5;
    }
  }

  else if ([(MURelatedPlacesSectionController *)self _isCuratedHikesModule])
  {
    v6 = 464;
  }

  else
  {
    v6 = 9040;
  }

  [(MUPlaceSectionController *)self captureInfoCardAction:v6 eventValue:0 feedbackType:0 actionRichProviderId:0 classification:0];
  v10 = [(MURelatedPlacesSectionController *)self relatedPlacesDelegate];
  v7 = [(MUPlaceSectionHeaderViewModel *)self->_sectionHeaderViewModel titleString];
  mapItemList = self->_mapItemList;
  v9 = [(MUPlaceSectionController *)self mapItem];
  [v10 relatedPlaceSectionController:self showSeeAllWithTitle:v7 relatedMapItems:mapItemList originalMapItem:v9];
}

- (void)_seeAllTapped
{
  if ([(NSArray *)self->_mapItemList count])
  {

    [(MURelatedPlacesSectionController *)self _notifyDelegateForSeeAll];
    return;
  }

  if ([(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource]== 1)
  {
    [(MUPlaceSectionView *)self->_sectionView beginAnimatingActivityIndicator];
    objc_initWeak(&location, self);
    v3 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__MURelatedPlacesSectionController__seeAllTapped__block_invoke;
    v8[3] = &unk_1E8219220;
    objc_copyWeak(&v9, &location);
    [(MURelatedPlacesSectionController *)self _refineHikingTrailListWithCompletion:v8];
    goto LABEL_7;
  }

  v5 = [(MURelatedPlacesSectionController *)self effectiveRelatedPlaceList];
  if ([v5 hasInitialData])
  {
    mapItemList = self->_mapItemList;

    if (mapItemList)
    {
      return;
    }

    [(MUPlaceSectionView *)self->_sectionView beginAnimatingActivityIndicator];
    objc_initWeak(&location, self);
    v3 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__MURelatedPlacesSectionController__seeAllTapped__block_invoke_2;
    v6[3] = &unk_1E8219220;
    objc_copyWeak(&v7, &location);
    [(MURelatedPlacesSectionController *)self _refineRelatedPlaceListWithCompletion:v6];
LABEL_7:
    objc_destroyWeak(v3 + 4);
    objc_destroyWeak(&location);
    return;
  }
}

void __49__MURelatedPlacesSectionController__seeAllTapped__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[12] endAnimatingActivityIndicatorWithError:v6];
    if (!v6)
    {
      objc_storeStrong(v8 + 11, a2);
      if ([v8[11] count])
      {
        [v8 _notifyDelegateForSeeAll];
      }
    }
  }
}

void __49__MURelatedPlacesSectionController__seeAllTapped__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[12] endAnimatingActivityIndicatorWithError:v6];
    if (!v6)
    {
      objc_storeStrong(v8 + 11, a2);
      if ([v8[11] count])
      {
        [v8 _notifyDelegateForSeeAll];
      }
    }
  }
}

- (BOOL)needsToPerformRefinement
{
  if ([(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(MURelatedPlacesSectionController *)self effectiveRelatedPlaceList];
    v3 = [v4 hasInitialData] ^ 1;
  }

  return v3;
}

- (GEORelatedPlaceList)effectiveRelatedPlaceList
{
  v3 = [(MURelatedPlacesSectionController *)self relatedPlaceListFromFollowUpRequest];

  if (v3)
  {
    [(MURelatedPlacesSectionController *)self relatedPlaceListFromFollowUpRequest];
  }

  else
  {
    [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration relatedPlaceList];
  }
  v4 = ;

  return v4;
}

- (void)_cancelFollowUpRequestIfNeeded
{
  [(MKMapServiceTicket *)self->_nearbyPlacesTicket cancel];
  [(MURelatedPlacesSectionController *)self setIsFollowUpRequestInProgress:0];
  sectionView = self->_sectionView;

  [(MUPlaceSectionView *)sectionView endAnimatingActivityIndicatorWithError:0];
}

- (void)_cancelPlaceRefinementIfNeeded
{
  [(MKMapServiceTicket *)self->_ticket cancel];
  sectionView = self->_sectionView;

  [(MUPlaceSectionView *)sectionView endAnimatingActivityIndicatorWithError:0];
}

- (void)_refineHikingTrailListWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration trailHead];
  v6 = [v5 trails];
  v7 = MUMap(v6, &__block_literal_global_7823);

  v8 = [MEMORY[0x1E696F298] sharedService];
  v9 = [v8 ticketForIdentifiers:v7 traits:0];
  ticket = self->_ticket;
  self->_ticket = v9;

  v11 = self->_ticket;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__MURelatedPlacesSectionController__refineHikingTrailListWithCompletion___block_invoke_2;
  v13[3] = &unk_1E821A3A8;
  v14 = v4;
  v12 = v4;
  [(MKMapServiceTicket *)v11 submitWithHandler:v13 networkActivity:0];
}

id __73__MURelatedPlacesSectionController__refineHikingTrailListWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 trailIdentifier];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696F280]);
    v5 = [v2 trailIdentifier];
    v3 = [v4 initWithGEOMapItemIdentifier:v5];
  }

  return v3;
}

- (void)_refineRelatedPlaceListWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696F298] sharedService];
  v6 = [(MURelatedPlacesSectionController *)self effectiveRelatedPlaceList];
  v7 = [v5 ticketForRelatedPlaceList:v6 traits:0];
  ticket = self->_ticket;
  self->_ticket = v7;

  v9 = self->_ticket;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__MURelatedPlacesSectionController__refineRelatedPlaceListWithCompletion___block_invoke;
  v11[3] = &unk_1E821A3A8;
  v12 = v4;
  v10 = v4;
  [(MKMapServiceTicket *)v9 submitWithHandler:v11 networkActivity:0];
}

- (void)_notifyDelegateOfSelectedMapItem:(id)a3
{
  v11 = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", objc_msgSend(v11, "_muid")];
  if ([(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource]== 1)
  {
    v5 = [(MUPlaceSectionController *)self mapItem];
    v6 = [v5 _mapsui_associatedHikingItemType];

    if (v6 == 2)
    {
      v7 = 412;
    }

    else
    {
      v7 = 6079;
    }

    if (v6 == 1)
    {
      v8 = 365;
    }

    else
    {
      v8 = v7;
    }
  }

  else if ([v11 _hasHikeInfo])
  {
    if ([v11 _hasHikeInfo])
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", objc_msgSend(v11, "_muid")];

      v8 = 467;
      v4 = v9;
    }

    else
    {
      v8 = 467;
    }
  }

  else
  {
    v8 = 6079;
  }

  [(MUPlaceSectionController *)self captureInfoCardAction:v8 eventValue:v4 feedbackType:0 actionRichProviderId:0 classification:0];
  v10 = [(MURelatedPlacesSectionController *)self relatedPlacesDelegate];
  [v10 relatedPlaceSectionController:self itemSelected:v11];
}

- (void)_refinePlaceAndNotifyDelegate:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier:v4];
  v6 = [MEMORY[0x1E696F298] sharedService];
  v13[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [v6 ticketForIdentifiers:v7 traits:0];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__MURelatedPlacesSectionController__refinePlaceAndNotifyDelegate___block_invoke;
  v10[3] = &unk_1E8219220;
  objc_copyWeak(&v11, &location);
  [v8 submitWithHandler:v10 networkActivity:0];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x1E69E9840];
}

void __66__MURelatedPlacesSectionController__refinePlaceAndNotifyDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (!a3 && WeakRetained)
  {
    v7 = [v8 firstObject];
    if (v7)
    {
      [v6 _notifyDelegateOfSelectedMapItem:v7];
    }
  }
}

- (void)_handleViewModel:(id)a3
{
  v4 = a3;
  if ([(MURelatedPlaceSectionControllerConfiguration *)self->_configuration suppressItemSelection])
  {
    v5 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_DEBUG, "MURelatedPlacesSectionController: Will not refine and punch out", v8, 2u);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v4 mapItemIdentifier];
        [(MURelatedPlacesSectionController *)self _refinePlaceAndNotifyDelegate:v6];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        v6 = [v4 geoTrail];
        v7 = [v6 trailIdentifier];
        [(MURelatedPlacesSectionController *)self _refinePlaceAndNotifyDelegate:v7];
      }

      goto LABEL_12;
    }

    [(MURelatedPlacesSectionController *)self _notifyDelegateOfSelectedMapItem:v4];
  }

LABEL_12:
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (sectionHeaderViewModel)
  {
    goto LABEL_22;
  }

  v4 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource];
  if (v4 != 1)
  {
    if (!v4)
    {
      v5 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration moduleConfiguration];
      v6 = [v5 sectionTitle];

      if (![(__CFString *)v6 length])
      {
        v7 = [(MURelatedPlacesSectionController *)self _moduleTitle];

        v6 = v7;
      }

LABEL_13:
      v11 = [[MUPlaceSectionHeaderViewModel alloc] initWithTitleString:v6];
      v12 = self->_sectionHeaderViewModel;
      self->_sectionHeaderViewModel = v11;

      if (![(MURelatedPlaceSectionControllerConfiguration *)self->_configuration suppressSeeAllButton])
      {
        v13 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource];
        if (!v13)
        {
          v14 = [(MURelatedPlacesSectionController *)self effectiveRelatedPlaceList];
          v15 = [v14 mapIdentifiers];
LABEL_18:
          v16 = v15;
          v17 = [v15 count];

          if (v17 > GEOConfigGetUInteger())
          {
            [(MUPlaceSectionHeaderViewModel *)self->_sectionHeaderViewModel setTarget:self selector:sel__seeAllTapped];
          }

          goto LABEL_21;
        }

        if (v13 == 1)
        {
          v14 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration trailHead];
          v15 = [v14 trails];
          goto LABEL_18;
        }

        GEOConfigGetUInteger();
      }

LABEL_21:

      sectionHeaderViewModel = self->_sectionHeaderViewModel;
LABEL_22:
      v18 = sectionHeaderViewModel;
      goto LABEL_23;
    }

LABEL_10:
    v6 = &stru_1F44CA030;
    goto LABEL_13;
  }

  v8 = [(MUPlaceSectionController *)self mapItem];
  v9 = [v8 _mapsui_associatedHikingItemType];

  if (v9)
  {
    if (v9 == 1)
    {
      v10 = @"Trails [Place card]";
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_10;
      }

      v10 = @"Trailheads [Place card]";
    }

    v6 = _MULocalizedStringFromThisBundle(v10);
    goto LABEL_13;
  }

  v18 = 0;
LABEL_23:

  return v18;
}

- (UIView)sectionView
{
  sectionView = self->_sectionView;
  if (!sectionView)
  {
    if ([(MURelatedPlacesSectionController *)self isVertical])
    {
      v4 = [[MUPlatterView alloc] initWithContentView:self->_listView];
      v5 = 2;
    }

    else
    {
      v4 = self->_tilesView;
      v5 = 0;
    }

    v6 = [MUPlaceSectionView alloc];
    v7 = [(MURelatedPlacesSectionController *)self sectionHeaderViewModel];
    v8 = [(MUPlaceSectionView *)v6 initWithStyle:v5 sectionHeaderViewModel:v7];

    [(MUPlaceSectionView *)v8 attachViewToContentView:v4];
    v9 = self->_sectionView;
    self->_sectionView = v8;
    v10 = v8;

    [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
    sectionView = self->_sectionView;
  }

  return sectionView;
}

- (BOOL)hasContent
{
  v3 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource];
  if (v3 == 1)
  {
    v5 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration trailHead];
    v6 = [v5 trails];
LABEL_8:
    v7 = v6;
    v4 = [v6 count] != 0;

    return v4;
  }

  if (v3)
  {
    return 0;
  }

  if (![(MURelatedPlacesSectionController *)self needsToPerformRefinement])
  {
    v5 = [(MURelatedPlacesSectionController *)self effectiveRelatedPlaceList];
    v6 = [v5 placeTemplates];
    goto LABEL_8;
  }

  return [(NSArray *)self->_mapItemList count]!= 0;
}

- (void)performNearbyPlacesFollowUpRequest
{
  [(MURelatedPlacesSectionController *)self setIsFollowUpRequestInProgress:1];
  v3 = [(MUPlaceSectionController *)self mapItem];
  v4 = [v3 _geoMapItem];
  v5 = [v4 _mapsCategoryId];

  v6 = [MEMORY[0x1E696F298] sharedService];
  v7 = [v6 defaultTraits];

  v8 = objc_alloc_init(MEMORY[0x1E69A2570]);
  [v8 setSearchImplicitType:2];
  [v7 setSearchImplicitFilterInfo:v8];
  [v7 setSearchOriginationType:3];
  objc_initWeak(&location, self);
  v9 = [MEMORY[0x1E696F298] sharedService];
  v10 = [(MUPlaceSectionController *)self mapItem];
  v11 = [v10 _identifier];
  v12 = [v9 searchAroundPOITicketWithIdentifier:v11 categoryID:v5 maxResults:100 traits:v7];
  nearbyPlacesTicket = self->_nearbyPlacesTicket;
  self->_nearbyPlacesTicket = v12;

  v14 = self->_nearbyPlacesTicket;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__MURelatedPlacesSectionController_performNearbyPlacesFollowUpRequest__block_invoke;
  v15[3] = &unk_1E8219220;
  objc_copyWeak(&v16, &location);
  [(MKMapServiceTicket *)v14 submitWithHandler:v15 networkActivity:0];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __70__MURelatedPlacesSectionController_performNearbyPlacesFollowUpRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setIsFollowUpRequestInProgress:0];
    [v8 setHasFetchedFollowUpRequest:v6 == 0];
    if (v6)
    {
      v9 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v8 mapItem];
        v23 = 134218242;
        v24 = [v10 _muid];
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_1C5620000, v9, OS_LOG_TYPE_ERROR, "MURelatedPlacesSectionController: Error Fetching nearby places via follow-up request: muid: %llu, %@", &v23, 0x16u);
      }
    }

    v11 = [v5 firstObject];
    v12 = [v11 _relatedPlaceLists];
    v13 = [v12 firstObject];

    v14 = MUGetPlaceCardLog();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = [v8 mapItem];
        v17 = [v16 _muid];
        v18 = [v13 placeTemplates];
        v19 = [v18 count];
        v23 = 134218240;
        v24 = v17;
        v25 = 2048;
        v26 = v19;
        _os_log_impl(&dword_1C5620000, v15, OS_LOG_TYPE_INFO, "MURelatedPlacesSectionController: Follow-Up request for muid: %llu succeeded with %lu template items", &v23, 0x16u);
      }

      [v8 _updateWithListFromFollowUpRequest:v13];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v20 = [v8 mapItem];
        v21 = [v20 _muid];
        v23 = 134217984;
        v24 = v21;
        _os_log_impl(&dword_1C5620000, v15, OS_LOG_TYPE_ERROR, "MURelatedPlacesSectionController: Follow-up request for muid: %llu succeeded but did not return relatedPlaceList", &v23, 0xCu);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_displayTilesForViewModels:(id)a3
{
  v4 = a3;
  v5 = [(MURelatedPlacesSectionController *)self numInlineItems];
  v6 = [v4 count];
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v4 subarrayWithRange:{0, v7}];

  if ([(MURelatedPlacesSectionController *)self isVertical])
  {
    [(MUPlaceTilesListView *)self->_listView setViewModels:v8];
  }

  else
  {
    [(MUPlaceTilesView *)self->_tilesView setViewModels:v8];
    [(MUPlaceTilesView *)self->_tilesView displayPlaceTiles];
  }
}

- (void)_updateSection
{
  v3 = [(MURelatedPlacesSectionController *)self effectiveRelatedPlaceList];
  v4 = [v3 followUpRequestMetadata];
  v5 = [v4 isSearchRequestForNearbyPlaces];

  if (v5)
  {
    if ([(MURelatedPlacesSectionController *)self isActive])
    {
      if ([(MURelatedPlacesSectionController *)self isFollowUpRequestInProgress])
      {
        return;
      }

      if (![(MURelatedPlacesSectionController *)self hasFetchedFollowUpRequest])
      {

        [(MURelatedPlacesSectionController *)self performNearbyPlacesFollowUpRequest];
        return;
      }
    }

    else
    {
      [(MURelatedPlacesSectionController *)self _cancelFollowUpRequestIfNeeded];
    }
  }

  if ([(MURelatedPlacesSectionController *)self needsToPerformRefinement])
  {
    v6 = [(MURelatedPlacesSectionController *)self isActive];
    [(MURelatedPlacesSectionController *)self _cancelPlaceRefinementIfNeeded];
    if (v6)
    {
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __50__MURelatedPlacesSectionController__updateSection__block_invoke;
      v7[3] = &unk_1E8219220;
      objc_copyWeak(&v8, &location);
      [(MURelatedPlacesSectionController *)self _refineRelatedPlaceListWithCompletion:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __50__MURelatedPlacesSectionController__updateSection__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (!a3 && WeakRetained)
  {
    v7 = [v10 copy];
    v8 = v6[11];
    v6[11] = v7;

    [v6 _displayTilesForViewModels:v6[11]];
    v9 = [v6 delegate];
    [v9 placeSectionControllerDidUpdateContent:v6];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(MURelatedPlacesSectionController *)self _updateSection];
  }
}

- (BOOL)isVertical
{
  if ([(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource]== 1)
  {
    return [(MURelatedPlacesSectionController *)self numInlineItems]< 3;
  }

  v4 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration moduleConfiguration];

  if (v4)
  {
    v5 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration moduleConfiguration];
    v6 = [v5 isVertical];

    return v6;
  }

  v8 = [(MURelatedPlacesSectionController *)self effectiveRelatedPlaceList];
  v9 = [v8 placeTemplates];
  v3 = [v9 count] < 3;

  return v3;
}

- (void)_updateWithListFromFollowUpRequest:(id)a3
{
  [(MURelatedPlacesSectionController *)self setRelatedPlaceListFromFollowUpRequest:a3];
  sectionView = self->_sectionView;
  self->_sectionView = 0;

  [(MURelatedPlacesSectionController *)self _setupSectionView];
  [(MURelatedPlacesSectionController *)self _buildInitialContent];
  [(MURelatedPlacesSectionController *)self _updateSection];
  v5 = [(MUPlaceSectionController *)self delegate];
  [v5 placeSectionControllerDidUpdateContent:self];
}

- (void)_buildInitialContent
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(MURelatedPlacesSectionController *)self needsToPerformRefinement])
  {
    v3 = objc_opt_new();
    v4 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource];
    if (v4 == 1)
    {
      v18 = v3;
      v6 = [MEMORY[0x1E695DF70] array];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration trailHead];
      v8 = [v7 trails];

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          v12 = 0;
          do
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * v12);
            v14 = [MUPlaceHikingTileViewModel alloc];
            v15 = [(MUPlaceSectionController *)self mapItem];
            v16 = -[MUPlaceHikingTileViewModel initWithGEOTrail:hikingItemType:](v14, "initWithGEOTrail:hikingItemType:", v13, [v15 _mapsui_associatedHikingItemType]);

            [v6 addObject:v16];
            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v10);
      }
    }

    else if (v4)
    {
      v6 = v3;
    }

    else
    {
      v5 = [(MURelatedPlacesSectionController *)self effectiveRelatedPlaceList];
      v6 = [v5 placeTemplates];
    }

    [(MURelatedPlacesSectionController *)self _displayTilesForViewModels:v6];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_setupSectionView
{
  if ([(MURelatedPlacesSectionController *)self isVertical])
  {
    v8 = +[MUPlaceVerticalCardConfiguration separatorConfiguration];
    v3 = [[MUPlaceTilesListView alloc] initWithConfiguration:v8];
    listView = self->_listView;
    self->_listView = v3;

    [(MUPlaceTilesListView *)self->_listView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUPlaceTilesListView *)self->_listView setListFeedbackDelegate:self];
  }

  else
  {
    if ([(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource]== 1)
    {
      v8 = +[MUPlaceTilesViewConfiguration hikingTrailsConfiguration];
    }

    else
    {
      v5 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration moduleConfiguration];
      v8 = [MUPlaceTilesViewConfiguration configurationFromModuleConfiguration:v5];
    }

    v6 = [[MUPlaceTilesView alloc] initWithConfiguration:v8];
    tilesView = self->_tilesView;
    self->_tilesView = v6;

    [(MUPlaceTilesView *)self->_tilesView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUPlaceTilesView *)self->_tilesView setDelegate:self];
    [(MUPlaceTilesView *)self->_tilesView setAnalyticsDelegate:self];
  }
}

- (unint64_t)numInlineItems
{
  v3 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration dataSource];
  if (v3 == 1)
  {
    v4 = [(MURelatedPlaceSectionControllerConfiguration *)self->_configuration trailHead];
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = [(MURelatedPlacesSectionController *)self effectiveRelatedPlaceList];
LABEL_5:
    v5 = v4;
    v6 = [v4 numberOfInlineItems];

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  result = GEOConfigGetUInteger();
  if (v6 < result)
  {
    return v6;
  }

  return result;
}

- (MURelatedPlacesSectionController)initWithMapItem:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 relatedPlaceList];
  if (v8)
  {

LABEL_4:
    v16.receiver = self;
    v16.super_class = MURelatedPlacesSectionController;
    v10 = [(MUPlaceSectionController *)&v16 initWithMapItem:v6];
    if (v10)
    {
      v11 = MUGetPlaceCardLog();
      if (os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5620000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MURelatedPlacesSectionControllerInit", "", buf, 2u);
      }

      objc_storeStrong(&v10->_configuration, a4);
      [(MURelatedPlacesSectionController *)v10 _setupSectionView];
      [(MURelatedPlacesSectionController *)v10 _buildInitialContent];
      v12 = MUGetPlaceCardLog();
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5620000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MURelatedPlacesSectionControllerInit", "", buf, 2u);
      }
    }

    self = v10;
    v13 = self;
    goto LABEL_11;
  }

  v9 = [v7 trailHead];

  if (v9)
  {
    goto LABEL_4;
  }

  v15 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5620000, v15, OS_LOG_TYPE_FAULT, "MURelatedPlacesSectionController: Tried to initialize with no related place list or trail head", buf, 2u);
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end