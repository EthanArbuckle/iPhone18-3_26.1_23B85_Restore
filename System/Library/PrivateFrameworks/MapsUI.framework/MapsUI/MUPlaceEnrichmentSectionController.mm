@interface MUPlaceEnrichmentSectionController
- (BOOL)hasContent;
- (MUPlaceEnrichmentSectionController)initWithMapItem:(id)item actionManager:(id)manager dataAvailability:(id)availability amsResultProvider:(id)provider callToActionDelegate:(id)delegate externalActionHandler:(id)handler rapActionHandler:(id)actionHandler;
- (MUPlaceEnrichmentSectionControllerDelegate)placeEnrichmentDelegate;
- (int)analyticSuppressionReasonFrom:(id)from;
- (void)_populateRevealedAnalyticsModule:(id)module;
- (void)_setupPlaceEnrichmentViewController;
- (void)addContextMenuUsingBoundingBox:(id)box accessibilityLabel:(id)label;
- (void)dealloc;
- (void)didLayoutContextMenu:(id)menu completion:(id)completion;
- (void)placeEnrichmentAPIContollerDidFetchEnrichmentData:(id)data forMapItem:(id)item;
- (void)refreshPlaceEnrichment;
- (void)removeWebContentViewController:(id)controller arguments:(id)arguments;
- (void)setEnrichmentData:(id)data;
- (void)webContentViewController:(id)controller performHeightChangeWithBlock:(id)block animated:(BOOL)animated completion:(id)completion;
- (void)webContentViewControllerDidStopLoading:(id)loading;
@end

@implementation MUPlaceEnrichmentSectionController

- (MUPlaceEnrichmentSectionControllerDelegate)placeEnrichmentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeEnrichmentDelegate);

  return WeakRetained;
}

- (int)analyticSuppressionReasonFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([fromCopy isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_DIRECTIONS_UNAVAILABLE"])
  {
    v4 = 1;
  }

  else if ([fromCopy isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_APP_EXTENSION_UNAVAILABLE"])
  {
    v4 = 2;
  }

  else if ([fromCopy isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_APP_CLIP_UNAVAILABLE"])
  {
    v4 = 3;
  }

  else if ([fromCopy isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_APP_QUICK_LINK_UNAVAILABLE"])
  {
    v4 = 4;
  }

  else if ([fromCopy isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_PHONE_NUMBER_UNAVAILABLE"])
  {
    v4 = 5;
  }

  else if ([fromCopy isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_MESSAGE_URL_UNAVAILABLE"])
  {
    v4 = 6;
  }

  else if ([fromCopy isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_WEBSITE_URL_UNAVAILABLE"])
  {
    v4 = 7;
  }

  else if ([fromCopy isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_ARP_RATING_UNSUPPORTED"])
  {
    v4 = 8;
  }

  else if ([fromCopy isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_ARP_PHOTOS_UNSUPPORTED"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didLayoutContextMenu:(id)menu completion:(id)completion
{
  [(MUPlaceEnrichmentSectionController *)self setContextMenuAction:menu, completion];
  contextMenuAction = [(MUPlaceEnrichmentSectionController *)self contextMenuAction];
  contextMenuButton = [(MUPlaceEnrichmentSectionController *)self contextMenuButton];
  [contextMenuButton setContextMenuAction:contextMenuAction];
}

- (void)addContextMenuUsingBoundingBox:(id)box accessibilityLabel:(id)label
{
  v42 = *MEMORY[0x1E69E9840];
  boxCopy = box;
  labelCopy = label;
  v8 = [boxCopy objectForKeyedSubscript:@"xCoordinate"];
  [v8 doubleValue];
  v10 = v9;
  v11 = [boxCopy objectForKeyedSubscript:@"yCoordinate"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [boxCopy objectForKeyedSubscript:@"width"];
  [v14 doubleValue];
  v16 = v15;
  v17 = [boxCopy objectForKeyedSubscript:@"height"];
  [v17 doubleValue];
  v19 = v18;

  contextMenuButton = [(MUPlaceEnrichmentSectionController *)self contextMenuButton];

  v21 = MUGetMUPlaceEnrichmentSectionControllerLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (contextMenuButton)
  {
    if (v22)
    {
      contextMenuButton2 = [(MUPlaceEnrichmentSectionController *)self contextMenuButton];
      [contextMenuButton2 frame];
      v24 = NSStringFromCGRect(v43);
      v44.origin.x = v10;
      v44.origin.y = v13;
      v44.size.width = v16;
      v44.size.height = v19;
      v25 = NSStringFromCGRect(v44);
      v38 = 138412546;
      v39 = v24;
      v40 = 2112;
      v41 = v25;
      _os_log_impl(&dword_1C5620000, v21, OS_LOG_TYPE_DEBUG, "Context menu button alreadyd exists; changing boundingBox (from:%@) -> (to:%@)", &v38, 0x16u);
    }

    contextMenuButton3 = [(MUPlaceEnrichmentSectionController *)self contextMenuButton];
    [(MUPlaceEnrichmentContextMenu *)contextMenuButton3 setFrame:v10, v13, v16, v19];
  }

  else
  {
    if (v22)
    {
      v38 = 138412290;
      v39 = boxCopy;
      _os_log_impl(&dword_1C5620000, v21, OS_LOG_TYPE_DEBUG, "Trying to add a context menu button at: %@", &v38, 0xCu);
    }

    contextMenuButton3 = [[MUPlaceEnrichmentContextMenu alloc] initWithFrame:v10, v13, v16, v19];
    v27 = *MEMORY[0x1E696F150];
    v28 = *(MEMORY[0x1E696F150] + 8);
    if (GEOConfigGetBOOL())
    {
      redColor = [MEMORY[0x1E69DC888] redColor];
      [(MUPlaceEnrichmentContextMenu *)contextMenuButton3 setBackgroundColor:redColor];

      [(MUPlaceEnrichmentContextMenu *)contextMenuButton3 setAlpha:0.1];
    }

    [(MUPlaceEnrichmentContextMenu *)contextMenuButton3 setIsAccessibilityElement:1];
    [(MUPlaceEnrichmentContextMenu *)contextMenuButton3 setAccessibilityTraits:*MEMORY[0x1E69DD9B8]];
    [(MUPlaceEnrichmentContextMenu *)contextMenuButton3 setAccessibilityLabel:labelCopy];
    [(MUPlaceEnrichmentContextMenu *)contextMenuButton3 setAccessibilityIdentifier:labelCopy];
    [(MUPlaceEnrichmentContextMenu *)contextMenuButton3 setContextMenuDelegate:self];
    actionManager = [(MUPlaceEnrichmentSectionController *)self actionManager];
    [(MUPlaceEnrichmentContextMenu *)contextMenuButton3 setEnrichmentActionDelegate:actionManager];

    sectionView = [(MUPlaceEnrichmentSectionController *)self sectionView];
    [sectionView addSubview:contextMenuButton3];

    [(MUPlaceEnrichmentSectionController *)self setContextMenuButton:contextMenuButton3];
    enrichmentEntities = [(GEOEnrichmentData *)self->_enrichmentData enrichmentEntities];
    firstObject = [enrichmentEntities firstObject];
    enrichmentInfo = [firstObject enrichmentInfo];
    showcaseId = [enrichmentInfo showcaseId];

    mEMORY[0x1E69A15A0] = [MEMORY[0x1E69A15A0] sharedData];
    [mEMORY[0x1E69A15A0] setPlaceCardPlaceActionDetailsShowcaseId:showcaseId];

    [(MUPlaceSectionController *)self captureInfoCardAction:6111 eventValue:showcaseId feedbackType:0];
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_populateRevealedAnalyticsModule:(id)module
{
  moduleCopy = module;
  v4 = objc_alloc_init(MEMORY[0x1E69A24D0]);
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _enrichmentInfo = [mapItem _enrichmentInfo];
  showcaseId = [_enrichmentInfo showcaseId];

  if ([showcaseId length])
  {
    [v4 setShowcaseId:showcaseId];
    [moduleCopy setShowcase:v4];
  }
}

- (void)webContentViewControllerDidStopLoading:(id)loading
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MUPlaceEnrichmentSectionControllerDidFinishLoadingNotification" object:self];

  placeEnrichmentDelegate = [(MUPlaceEnrichmentSectionController *)self placeEnrichmentDelegate];
  [placeEnrichmentDelegate placeEnrichmentSectionControllerDidStopLoading:self];
}

- (void)webContentViewController:(id)controller performHeightChangeWithBlock:(id)block animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  blockCopy = block;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __112__MUPlaceEnrichmentSectionController_webContentViewController_performHeightChangeWithBlock_animated_completion___block_invoke;
  v18[3] = &unk_1E82194C8;
  objc_copyWeak(&v20, &location);
  v18[4] = self;
  v13 = blockCopy;
  v19 = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__MUPlaceEnrichmentSectionController_webContentViewController_performHeightChangeWithBlock_animated_completion___block_invoke_2;
  v15[3] = &unk_1E8219650;
  objc_copyWeak(&v17, &location);
  v14 = completionCopy;
  v16 = v14;
  [v12 _mapsui_animateWithDuration:v18 animations:v15 completion:0.3];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __112__MUPlaceEnrichmentSectionController_webContentViewController_performHeightChangeWithBlock_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = [v3 placeSectionControllerRequestsRootView:*(a1 + 32)];

    (*(*(a1 + 40) + 16))();
    [v4 _mapsui_layoutIfNeeded];

    WeakRetained = v5;
  }
}

void __112__MUPlaceEnrichmentSectionController_webContentViewController_performHeightChangeWithBlock_animated_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 placeSectionControllerRequestsLayoutChange:v4];

    (*(*(a1 + 32) + 16))();
    WeakRetained = v4;
  }
}

- (void)removeWebContentViewController:(id)controller arguments:(id)arguments
{
  controllerCopy = controller;
  argumentsCopy = arguments;
  self->_shouldRemoveWebContent = 1;
  if (argumentsCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [argumentsCopy objectForKeyedSubscript:@"suppressionReason"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v10 = [argumentsCopy objectForKeyedSubscript:@"suppressionReason"];
        v31 = v10;
        if (v10)
        {
          v30 = [(MUPlaceEnrichmentSectionController *)self analyticSuppressionReasonFrom:v10];
        }

        else
        {
          v30 = 0;
        }

        v11 = [argumentsCopy objectForKeyedSubscript:@"appCategory"];
        v28 = v11;
        if (v11)
        {
          v12 = v11;
          v13 = objc_alloc_init(MEMORY[0x1E696ADA0]);
          [v13 setNumberStyle:1];
          actionManager = [(MUPlaceEnrichmentSectionController *)self actionManager];
          v15 = [actionManager adamIDForAppCategory:v12];
          v29 = [v13 numberFromString:v15];
        }

        else
        {
          v29 = 0;
        }

        v26 = MEMORY[0x1E69A1598];
        mapItem = [(MUPlaceSectionController *)self mapItem];
        _muid = [mapItem _muid];
        mapItem2 = [(MUPlaceSectionController *)self mapItem];
        _resultProviderID = [mapItem2 _resultProviderID];
        enrichmentData = [(MUPlaceEnrichmentSectionController *)self enrichmentData];
        enrichmentEntities = [enrichmentData enrichmentEntities];
        firstObject = [enrichmentEntities firstObject];
        enrichmentInfo = [firstObject enrichmentInfo];
        showcaseId = [enrichmentInfo showcaseId];
        [v26 captureShowcaseSuppressionEventWithBusinessId:_muid localSearchProviderID:_resultProviderID showcaseId:showcaseId adamId:v29 suppressionReason:v30];
      }
    }
  }

  v23 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5620000, v23, OS_LOG_TYPE_INFO, "MUPlaceWebContentSectionController: Webmodule requested removal, will tell parent to update", buf, 2u);
  }

  delegate = [(MUPlaceSectionController *)self delegate];
  [delegate placeSectionControllerDidUpdateContent:self];
}

- (void)setEnrichmentData:(id)data
{
  dataCopy = data;
  enrichmentEntities = [dataCopy enrichmentEntities];
  firstObject = [enrichmentEntities firstObject];
  enrichmentHtml = [firstObject enrichmentHtml];
  enrichmentData = [(MUPlaceEnrichmentSectionController *)self enrichmentData];
  enrichmentEntities2 = [enrichmentData enrichmentEntities];
  firstObject2 = [enrichmentEntities2 firstObject];
  enrichmentHtml2 = [firstObject2 enrichmentHtml];
  v12 = [enrichmentHtml isEqualToString:enrichmentHtml2];

  v13 = dataCopy;
  if ((v12 & 1) == 0)
  {
    enrichmentEntities3 = [dataCopy enrichmentEntities];
    firstObject3 = [enrichmentEntities3 firstObject];
    enrichmentHtml3 = [firstObject3 enrichmentHtml];

    if (enrichmentHtml3)
    {
      objc_storeStrong(&self->_enrichmentData, data);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MUPlaceEnrichmentSectionControllerDidFetchEnrichmentNotification" object:self];

      v18 = objc_alloc_init(MUPresentationOptions);
      [(MUPresentationOptions *)v18 setPresentingViewController:self->_webContentViewController];
      [(MUPresentationOptions *)v18 setSourceView:self->_sectionView];
      [(MUPlaceSectionView *)self->_sectionView frame];
      [(MUPresentationOptions *)v18 setSourceRect:?];
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"MUPlaceEnrichmentSectionControllerDidStartLoadingNotification" object:self];

      actionManager = [(MUPlaceEnrichmentSectionController *)self actionManager];
      v21 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
      [actionManager configureWithEnrichmentDataProvider:v21 presentationOptions:v18];

      v22 = *MEMORY[0x1E696F140];
      v23 = *(MEMORY[0x1E696F140] + 8);
      v24 = 0.0;
      if (GEOConfigGetBOOL())
      {
        v25 = *MEMORY[0x1E696F148];
        v26 = *(MEMORY[0x1E696F148] + 8);
        GEOConfigGetDouble();
        v24 = v27;
      }

      webContentViewController = self->_webContentViewController;
      actionManager2 = [(MUPlaceEnrichmentSectionController *)self actionManager];
      [(MUWebContentViewController *)webContentViewController configureWithHTML:enrichmentHtml3 actionManager:actionManager2 initialDefaultHeight:v24];

      sectionView = self->_sectionView;
      view = [(MUWebContentViewController *)self->_webContentViewController view];
      [(MUPlaceSectionView *)sectionView attachViewToContentView:view];

      v32 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
      [v32 cancelFetchingPlaceEnrichment];
    }

    v13 = dataCopy;
  }
}

- (void)placeEnrichmentAPIContollerDidFetchEnrichmentData:(id)data forMapItem:(id)item
{
  dataCopy = data;
  itemCopy = item;
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _identifier = [mapItem _identifier];
  _identifier2 = [itemCopy _identifier];

  LODWORD(itemCopy) = [_identifier isEqual:_identifier2];
  if (itemCopy)
  {
    [(MUPlaceEnrichmentSectionController *)self setEnrichmentData:dataCopy];
    v10 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
    [v10 unregisterObserver:self];
  }
}

- (void)dealloc
{
  v3 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
  [v3 unregisterObserver:self];

  mEMORY[0x1E69A15A0] = [MEMORY[0x1E69A15A0] sharedData];
  [mEMORY[0x1E69A15A0] setPlaceCardPlaceActionDetailsShowcaseId:0];

  v5.receiver = self;
  v5.super_class = MUPlaceEnrichmentSectionController;
  [(MUPlaceEnrichmentSectionController *)&v5 dealloc];
}

- (BOOL)hasContent
{
  webContentViewController = self->_webContentViewController;
  if (webContentViewController)
  {
    return [(MUWebContentViewController *)webContentViewController isLoading]|| !self->_shouldRemoveWebContent;
  }

  else
  {
    return 0;
  }
}

- (void)refreshPlaceEnrichment
{
  v3 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
  mapItem = [v3 mapItem];
  _identifier = [mapItem _identifier];
  mapItem2 = [(MUPlaceSectionController *)self mapItem];
  _identifier2 = [mapItem2 _identifier];
  v8 = [_identifier isEqual:_identifier2];

  placeEnrichmentData = [v3 placeEnrichmentData];
  enrichmentData = [(MUPlaceEnrichmentSectionController *)self enrichmentData];
  v11 = [placeEnrichmentData isEqual:enrichmentData];

  delegate = MUGetMUPlaceEnrichmentSectionControllerLog();
  v13 = os_log_type_enabled(delegate, OS_LOG_TYPE_DEBUG);
  if (v8 && v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, delegate, OS_LOG_TYPE_DEBUG, "MUPlaceEnrichmentSectionController was informed to refresh place enrichment but all the information is same. So no-operation here.", buf, 2u);
    }
  }

  else
  {
    if (v13)
    {
      *v14 = 0;
      _os_log_impl(&dword_1C5620000, delegate, OS_LOG_TYPE_DEBUG, "MUPlaceEnrichmentSectionController was informed to refresh place enrichment.", v14, 2u);
    }

    [(MUPlaceEnrichmentSectionController *)self _setupPlaceEnrichmentViewController];
    delegate = [(MUPlaceSectionController *)self delegate];
    [delegate placeSectionControllerDidUpdateContent:self];
  }
}

- (void)_setupPlaceEnrichmentViewController
{
  v44 = *MEMORY[0x1E69E9840];
  [(MUWebContentViewController *)self->_webContentViewController setDelegate:self];
  if (!self->_sectionView)
  {
    v3 = [[MUPlaceSectionView alloc] initWithStyle:0 alwaysHideSeparators:0];
    sectionView = self->_sectionView;
    self->_sectionView = v3;

    [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  }

  v5 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __73__MUPlaceEnrichmentSectionController__setupPlaceEnrichmentViewController__block_invoke;
  v37 = &unk_1E821A870;
  selfCopy = self;
  v6 = v5;
  v39 = v6;
  v7 = _Block_copy(&v34);
  mapItem = [v6 mapItem];
  _identifier = [mapItem _identifier];
  mapItem2 = [(MUPlaceSectionController *)self mapItem];
  _identifier2 = [mapItem2 _identifier];
  v12 = [_identifier isEqual:_identifier2];

  if ((v12 & 1) == 0)
  {
    v17 = MUGetMUPlaceEnrichmentSectionControllerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      mapItem3 = [v6 mapItem];
      _identifier3 = [mapItem3 _identifier];
      mapItem4 = [(MUPlaceSectionController *)self mapItem];
      _identifier4 = [mapItem4 _identifier];
      *buf = 138412546;
      v41 = _identifier3;
      v42 = 2112;
      v43 = _identifier4;
      _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_DEBUG, "Unequal mapitems. API controller was holding identifier: %@ but placecard wants to show identifier: %@", buf, 0x16u);

LABEL_14:
    }

LABEL_15:

    mapItem5 = [(MUPlaceSectionController *)self mapItem];
    [v6 configureWithMapItem:mapItem5 traits:0];

LABEL_16:
    v7[2](v7);
    goto LABEL_17;
  }

  if (![v6 currentState])
  {
    goto LABEL_17;
  }

  currentState = [v6 currentState];
  if (currentState <= 1)
  {
    if (currentState)
    {
      if (currentState != 1)
      {
        goto LABEL_17;
      }

      v24 = MUGetMUPlaceEnrichmentSectionControllerLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        mapItem6 = [(MUPlaceSectionController *)self mapItem];
        _identifier5 = [mapItem6 _identifier];
        *buf = 138412546;
        v41 = @"Initialized";
        v42 = 2112;
        v43 = _identifier5;
        _os_log_impl(&dword_1C5620000, v24, OS_LOG_TYPE_DEBUG, "API Controller is in state: %@. So asking to fetch enrichment for identifier: %@", buf, 0x16u);
      }

      goto LABEL_16;
    }

    v17 = MUGetMUPlaceEnrichmentSectionControllerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      mapItem3 = [(MUPlaceSectionController *)self mapItem];
      _identifier3 = [mapItem3 _identifier];
      *buf = 138412546;
      v41 = @"Unknown";
      v42 = 2112;
      v43 = _identifier3;
      _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_DEBUG, "API Controller is in state: %@. So Configuring with identifier: %@", buf, 0x16u);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  switch(currentState)
  {
    case 2:
      v27 = MUGetMUPlaceEnrichmentSectionControllerLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        mapItem7 = [(MUPlaceSectionController *)self mapItem];
        _identifier6 = [mapItem7 _identifier];
        *buf = 138412546;
        v41 = @"Loading";
        v42 = 2112;
        v43 = _identifier6;
        _os_log_impl(&dword_1C5620000, v27, OS_LOG_TYPE_DEBUG, "API Controller is in state: %@. So asking to register for enrichment updates for identifier: %@", buf, 0x16u);
      }

      [v6 registerObserver:self];
      break;
    case 3:
      v30 = MUGetMUPlaceEnrichmentSectionControllerLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        mapItem8 = [(MUPlaceSectionController *)self mapItem];
        _identifier7 = [mapItem8 _identifier];
        *buf = 138412546;
        v41 = @"ReadyWithData";
        v42 = 2112;
        v43 = _identifier7;
        _os_log_impl(&dword_1C5620000, v30, OS_LOG_TYPE_DEBUG, "API Controller is in state: %@. So using enrichment for identifier: %@", buf, 0x16u);
      }

      placeEnrichmentData = [v6 placeEnrichmentData];
      [(MUPlaceEnrichmentSectionController *)self setEnrichmentData:placeEnrichmentData];

      break;
    case 4:
      v14 = MUGetMUPlaceEnrichmentSectionControllerLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        mapItem9 = [(MUPlaceSectionController *)self mapItem];
        _identifier8 = [mapItem9 _identifier];
        *buf = 138412546;
        v41 = @"Error";
        v42 = 2112;
        v43 = _identifier8;
        _os_log_impl(&dword_1C5620000, v14, OS_LOG_TYPE_DEBUG, "API Controller is in state: %@. So asking to remove enrichment module for identifier: %@", buf, 0x16u);
      }

      [(MUPlaceEnrichmentSectionController *)self removeWebContentViewController:self->_webContentViewController arguments:0];
      break;
  }

LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __73__MUPlaceEnrichmentSectionController__setupPlaceEnrichmentViewController__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MUGetMUPlaceEnrichmentSectionControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) mapItem];
    v4 = [v3 _identifier];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C5620000, v2, OS_LOG_TYPE_DEBUG, "Fetching Enrichment information for identifier: %@", &v7, 0xCu);
  }

  [*(a1 + 40) registerObserver:*(a1 + 32)];
  result = [*(a1 + 40) fetchPlaceEnrichment:0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (MUPlaceEnrichmentSectionController)initWithMapItem:(id)item actionManager:(id)manager dataAvailability:(id)availability amsResultProvider:(id)provider callToActionDelegate:(id)delegate externalActionHandler:(id)handler rapActionHandler:(id)actionHandler
{
  itemCopy = item;
  managerCopy = manager;
  availabilityCopy = availability;
  providerCopy = provider;
  delegateCopy = delegate;
  handlerCopy = handler;
  v34.receiver = self;
  v34.super_class = MUPlaceEnrichmentSectionController;
  v21 = [(MUPlaceSectionController *)&v34 initWithMapItem:itemCopy];
  if (v21)
  {
    v22 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v22, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceEnrichmentSectionController", "", buf, 2u);
    }

    v21->_shouldRemoveWebContent = 0;
    v23 = objc_alloc_init(MUWebContentViewController);
    webContentViewController = v21->_webContentViewController;
    v21->_webContentViewController = v23;

    v25 = [MUPlaceEnrichmentActionManager alloc];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __163__MUPlaceEnrichmentSectionController_initWithMapItem_actionManager_dataAvailability_amsResultProvider_callToActionDelegate_externalActionHandler_rapActionHandler___block_invoke;
    v31[3] = &unk_1E82194A0;
    v26 = v21;
    v32 = v26;
    v27 = [(MUPlaceEnrichmentActionManager *)v25 initWithPlaceActionManager:managerCopy mapItem:itemCopy dataAvailability:availabilityCopy amsResultProvider:providerCopy callToActionDelegate:delegateCopy contextMenuDelegate:v26 externalActionHandler:handlerCopy analyticsDelegate:v26 onActionUpdate:v31];
    actionManager = v26->_actionManager;
    v26->_actionManager = v27;

    [(MUPlaceEnrichmentSectionController *)v26 _setupPlaceEnrichmentViewController];
    v29 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceEnrichmentSectionController", "", buf, 2u);
    }
  }

  return v21;
}

void __163__MUPlaceEnrichmentSectionController_initWithMapItem_actionManager_dataAvailability_amsResultProvider_callToActionDelegate_externalActionHandler_rapActionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [*(a1 + 32) updateActionsOverWebBridge:v3];
}

@end