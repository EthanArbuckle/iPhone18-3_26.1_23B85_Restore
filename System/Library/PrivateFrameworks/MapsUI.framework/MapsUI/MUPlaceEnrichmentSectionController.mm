@interface MUPlaceEnrichmentSectionController
- (BOOL)hasContent;
- (MUPlaceEnrichmentSectionController)initWithMapItem:(id)a3 actionManager:(id)a4 dataAvailability:(id)a5 amsResultProvider:(id)a6 callToActionDelegate:(id)a7 externalActionHandler:(id)a8 rapActionHandler:(id)a9;
- (MUPlaceEnrichmentSectionControllerDelegate)placeEnrichmentDelegate;
- (int)analyticSuppressionReasonFrom:(id)a3;
- (void)_populateRevealedAnalyticsModule:(id)a3;
- (void)_setupPlaceEnrichmentViewController;
- (void)addContextMenuUsingBoundingBox:(id)a3 accessibilityLabel:(id)a4;
- (void)dealloc;
- (void)didLayoutContextMenu:(id)a3 completion:(id)a4;
- (void)placeEnrichmentAPIContollerDidFetchEnrichmentData:(id)a3 forMapItem:(id)a4;
- (void)refreshPlaceEnrichment;
- (void)removeWebContentViewController:(id)a3 arguments:(id)a4;
- (void)setEnrichmentData:(id)a3;
- (void)webContentViewController:(id)a3 performHeightChangeWithBlock:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)webContentViewControllerDidStopLoading:(id)a3;
@end

@implementation MUPlaceEnrichmentSectionController

- (MUPlaceEnrichmentSectionControllerDelegate)placeEnrichmentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeEnrichmentDelegate);

  return WeakRetained;
}

- (int)analyticSuppressionReasonFrom:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_DIRECTIONS_UNAVAILABLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_APP_EXTENSION_UNAVAILABLE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_APP_CLIP_UNAVAILABLE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_APP_QUICK_LINK_UNAVAILABLE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_PHONE_NUMBER_UNAVAILABLE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_MESSAGE_URL_UNAVAILABLE"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_WEBSITE_URL_UNAVAILABLE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_ARP_RATING_UNSUPPORTED"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PLACECARD_ENRICHMENT_SUPPRESSION_REASON_ARP_PHOTOS_UNSUPPORTED"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didLayoutContextMenu:(id)a3 completion:(id)a4
{
  [(MUPlaceEnrichmentSectionController *)self setContextMenuAction:a3, a4];
  v6 = [(MUPlaceEnrichmentSectionController *)self contextMenuAction];
  v5 = [(MUPlaceEnrichmentSectionController *)self contextMenuButton];
  [v5 setContextMenuAction:v6];
}

- (void)addContextMenuUsingBoundingBox:(id)a3 accessibilityLabel:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"xCoordinate"];
  [v8 doubleValue];
  v10 = v9;
  v11 = [v6 objectForKeyedSubscript:@"yCoordinate"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [v6 objectForKeyedSubscript:@"width"];
  [v14 doubleValue];
  v16 = v15;
  v17 = [v6 objectForKeyedSubscript:@"height"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [(MUPlaceEnrichmentSectionController *)self contextMenuButton];

  v21 = MUGetMUPlaceEnrichmentSectionControllerLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (v20)
  {
    if (v22)
    {
      v23 = [(MUPlaceEnrichmentSectionController *)self contextMenuButton];
      [v23 frame];
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

    v26 = [(MUPlaceEnrichmentSectionController *)self contextMenuButton];
    [(MUPlaceEnrichmentContextMenu *)v26 setFrame:v10, v13, v16, v19];
  }

  else
  {
    if (v22)
    {
      v38 = 138412290;
      v39 = v6;
      _os_log_impl(&dword_1C5620000, v21, OS_LOG_TYPE_DEBUG, "Trying to add a context menu button at: %@", &v38, 0xCu);
    }

    v26 = [[MUPlaceEnrichmentContextMenu alloc] initWithFrame:v10, v13, v16, v19];
    v27 = *MEMORY[0x1E696F150];
    v28 = *(MEMORY[0x1E696F150] + 8);
    if (GEOConfigGetBOOL())
    {
      v29 = [MEMORY[0x1E69DC888] redColor];
      [(MUPlaceEnrichmentContextMenu *)v26 setBackgroundColor:v29];

      [(MUPlaceEnrichmentContextMenu *)v26 setAlpha:0.1];
    }

    [(MUPlaceEnrichmentContextMenu *)v26 setIsAccessibilityElement:1];
    [(MUPlaceEnrichmentContextMenu *)v26 setAccessibilityTraits:*MEMORY[0x1E69DD9B8]];
    [(MUPlaceEnrichmentContextMenu *)v26 setAccessibilityLabel:v7];
    [(MUPlaceEnrichmentContextMenu *)v26 setAccessibilityIdentifier:v7];
    [(MUPlaceEnrichmentContextMenu *)v26 setContextMenuDelegate:self];
    v30 = [(MUPlaceEnrichmentSectionController *)self actionManager];
    [(MUPlaceEnrichmentContextMenu *)v26 setEnrichmentActionDelegate:v30];

    v31 = [(MUPlaceEnrichmentSectionController *)self sectionView];
    [v31 addSubview:v26];

    [(MUPlaceEnrichmentSectionController *)self setContextMenuButton:v26];
    v32 = [(GEOEnrichmentData *)self->_enrichmentData enrichmentEntities];
    v33 = [v32 firstObject];
    v34 = [v33 enrichmentInfo];
    v35 = [v34 showcaseId];

    v36 = [MEMORY[0x1E69A15A0] sharedData];
    [v36 setPlaceCardPlaceActionDetailsShowcaseId:v35];

    [(MUPlaceSectionController *)self captureInfoCardAction:6111 eventValue:v35 feedbackType:0];
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_populateRevealedAnalyticsModule:(id)a3
{
  v8 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69A24D0]);
  v5 = [(MUPlaceSectionController *)self mapItem];
  v6 = [v5 _enrichmentInfo];
  v7 = [v6 showcaseId];

  if ([v7 length])
  {
    [v4 setShowcaseId:v7];
    [v8 setShowcase:v4];
  }
}

- (void)webContentViewControllerDidStopLoading:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MUPlaceEnrichmentSectionControllerDidFinishLoadingNotification" object:self];

  v5 = [(MUPlaceEnrichmentSectionController *)self placeEnrichmentDelegate];
  [v5 placeEnrichmentSectionControllerDidStopLoading:self];
}

- (void)webContentViewController:(id)a3 performHeightChangeWithBlock:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __112__MUPlaceEnrichmentSectionController_webContentViewController_performHeightChangeWithBlock_animated_completion___block_invoke;
  v18[3] = &unk_1E82194C8;
  objc_copyWeak(&v20, &location);
  v18[4] = self;
  v13 = v10;
  v19 = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__MUPlaceEnrichmentSectionController_webContentViewController_performHeightChangeWithBlock_animated_completion___block_invoke_2;
  v15[3] = &unk_1E8219650;
  objc_copyWeak(&v17, &location);
  v14 = v11;
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

- (void)removeWebContentViewController:(id)a3 arguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_shouldRemoveWebContent = 1;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKeyedSubscript:@"suppressionReason"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v10 = [v7 objectForKeyedSubscript:@"suppressionReason"];
        v31 = v10;
        if (v10)
        {
          v30 = [(MUPlaceEnrichmentSectionController *)self analyticSuppressionReasonFrom:v10];
        }

        else
        {
          v30 = 0;
        }

        v11 = [v7 objectForKeyedSubscript:@"appCategory"];
        v28 = v11;
        if (v11)
        {
          v12 = v11;
          v13 = objc_alloc_init(MEMORY[0x1E696ADA0]);
          [v13 setNumberStyle:1];
          v14 = [(MUPlaceEnrichmentSectionController *)self actionManager];
          v15 = [v14 adamIDForAppCategory:v12];
          v29 = [v13 numberFromString:v15];
        }

        else
        {
          v29 = 0;
        }

        v26 = MEMORY[0x1E69A1598];
        v27 = [(MUPlaceSectionController *)self mapItem];
        v25 = [v27 _muid];
        v16 = [(MUPlaceSectionController *)self mapItem];
        v17 = [v16 _resultProviderID];
        v18 = [(MUPlaceEnrichmentSectionController *)self enrichmentData];
        v19 = [v18 enrichmentEntities];
        v20 = [v19 firstObject];
        v21 = [v20 enrichmentInfo];
        v22 = [v21 showcaseId];
        [v26 captureShowcaseSuppressionEventWithBusinessId:v25 localSearchProviderID:v17 showcaseId:v22 adamId:v29 suppressionReason:v30];
      }
    }
  }

  v23 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5620000, v23, OS_LOG_TYPE_INFO, "MUPlaceWebContentSectionController: Webmodule requested removal, will tell parent to update", buf, 2u);
  }

  v24 = [(MUPlaceSectionController *)self delegate];
  [v24 placeSectionControllerDidUpdateContent:self];
}

- (void)setEnrichmentData:(id)a3
{
  v33 = a3;
  v5 = [v33 enrichmentEntities];
  v6 = [v5 firstObject];
  v7 = [v6 enrichmentHtml];
  v8 = [(MUPlaceEnrichmentSectionController *)self enrichmentData];
  v9 = [v8 enrichmentEntities];
  v10 = [v9 firstObject];
  v11 = [v10 enrichmentHtml];
  v12 = [v7 isEqualToString:v11];

  v13 = v33;
  if ((v12 & 1) == 0)
  {
    v14 = [v33 enrichmentEntities];
    v15 = [v14 firstObject];
    v16 = [v15 enrichmentHtml];

    if (v16)
    {
      objc_storeStrong(&self->_enrichmentData, a3);
      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      [v17 postNotificationName:@"MUPlaceEnrichmentSectionControllerDidFetchEnrichmentNotification" object:self];

      v18 = objc_alloc_init(MUPresentationOptions);
      [(MUPresentationOptions *)v18 setPresentingViewController:self->_webContentViewController];
      [(MUPresentationOptions *)v18 setSourceView:self->_sectionView];
      [(MUPlaceSectionView *)self->_sectionView frame];
      [(MUPresentationOptions *)v18 setSourceRect:?];
      v19 = [MEMORY[0x1E696AD88] defaultCenter];
      [v19 postNotificationName:@"MUPlaceEnrichmentSectionControllerDidStartLoadingNotification" object:self];

      v20 = [(MUPlaceEnrichmentSectionController *)self actionManager];
      v21 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
      [v20 configureWithEnrichmentDataProvider:v21 presentationOptions:v18];

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
      v29 = [(MUPlaceEnrichmentSectionController *)self actionManager];
      [(MUWebContentViewController *)webContentViewController configureWithHTML:v16 actionManager:v29 initialDefaultHeight:v24];

      sectionView = self->_sectionView;
      v31 = [(MUWebContentViewController *)self->_webContentViewController view];
      [(MUPlaceSectionView *)sectionView attachViewToContentView:v31];

      v32 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
      [v32 cancelFetchingPlaceEnrichment];
    }

    v13 = v33;
  }
}

- (void)placeEnrichmentAPIContollerDidFetchEnrichmentData:(id)a3 forMapItem:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MUPlaceSectionController *)self mapItem];
  v8 = [v7 _identifier];
  v9 = [v6 _identifier];

  LODWORD(v6) = [v8 isEqual:v9];
  if (v6)
  {
    [(MUPlaceEnrichmentSectionController *)self setEnrichmentData:v11];
    v10 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
    [v10 unregisterObserver:self];
  }
}

- (void)dealloc
{
  v3 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
  [v3 unregisterObserver:self];

  v4 = [MEMORY[0x1E69A15A0] sharedData];
  [v4 setPlaceCardPlaceActionDetailsShowcaseId:0];

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
  v4 = [v3 mapItem];
  v5 = [v4 _identifier];
  v6 = [(MUPlaceSectionController *)self mapItem];
  v7 = [v6 _identifier];
  v8 = [v5 isEqual:v7];

  v9 = [v3 placeEnrichmentData];
  v10 = [(MUPlaceEnrichmentSectionController *)self enrichmentData];
  v11 = [v9 isEqual:v10];

  v12 = MUGetMUPlaceEnrichmentSectionControllerLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v8 && v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_DEBUG, "MUPlaceEnrichmentSectionController was informed to refresh place enrichment but all the information is same. So no-operation here.", buf, 2u);
    }
  }

  else
  {
    if (v13)
    {
      *v14 = 0;
      _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_DEBUG, "MUPlaceEnrichmentSectionController was informed to refresh place enrichment.", v14, 2u);
    }

    [(MUPlaceEnrichmentSectionController *)self _setupPlaceEnrichmentViewController];
    v12 = [(MUPlaceSectionController *)self delegate];
    [v12 placeSectionControllerDidUpdateContent:self];
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
  v38 = self;
  v6 = v5;
  v39 = v6;
  v7 = _Block_copy(&v34);
  v8 = [v6 mapItem];
  v9 = [v8 _identifier];
  v10 = [(MUPlaceSectionController *)self mapItem];
  v11 = [v10 _identifier];
  v12 = [v9 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    v17 = MUGetMUPlaceEnrichmentSectionControllerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v6 mapItem];
      v19 = [v18 _identifier];
      v20 = [(MUPlaceSectionController *)self mapItem];
      v21 = [v20 _identifier];
      *buf = 138412546;
      v41 = v19;
      v42 = 2112;
      v43 = v21;
      _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_DEBUG, "Unequal mapitems. API controller was holding identifier: %@ but placecard wants to show identifier: %@", buf, 0x16u);

LABEL_14:
    }

LABEL_15:

    v22 = [(MUPlaceSectionController *)self mapItem];
    [v6 configureWithMapItem:v22 traits:0];

LABEL_16:
    v7[2](v7);
    goto LABEL_17;
  }

  if (![v6 currentState])
  {
    goto LABEL_17;
  }

  v13 = [v6 currentState];
  if (v13 <= 1)
  {
    if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_17;
      }

      v24 = MUGetMUPlaceEnrichmentSectionControllerLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = [(MUPlaceSectionController *)self mapItem];
        v26 = [v25 _identifier];
        *buf = 138412546;
        v41 = @"Initialized";
        v42 = 2112;
        v43 = v26;
        _os_log_impl(&dword_1C5620000, v24, OS_LOG_TYPE_DEBUG, "API Controller is in state: %@. So asking to fetch enrichment for identifier: %@", buf, 0x16u);
      }

      goto LABEL_16;
    }

    v17 = MUGetMUPlaceEnrichmentSectionControllerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(MUPlaceSectionController *)self mapItem];
      v19 = [v18 _identifier];
      *buf = 138412546;
      v41 = @"Unknown";
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_DEBUG, "API Controller is in state: %@. So Configuring with identifier: %@", buf, 0x16u);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  switch(v13)
  {
    case 2:
      v27 = MUGetMUPlaceEnrichmentSectionControllerLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = [(MUPlaceSectionController *)self mapItem];
        v29 = [v28 _identifier];
        *buf = 138412546;
        v41 = @"Loading";
        v42 = 2112;
        v43 = v29;
        _os_log_impl(&dword_1C5620000, v27, OS_LOG_TYPE_DEBUG, "API Controller is in state: %@. So asking to register for enrichment updates for identifier: %@", buf, 0x16u);
      }

      [v6 registerObserver:self];
      break;
    case 3:
      v30 = MUGetMUPlaceEnrichmentSectionControllerLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = [(MUPlaceSectionController *)self mapItem];
        v32 = [v31 _identifier];
        *buf = 138412546;
        v41 = @"ReadyWithData";
        v42 = 2112;
        v43 = v32;
        _os_log_impl(&dword_1C5620000, v30, OS_LOG_TYPE_DEBUG, "API Controller is in state: %@. So using enrichment for identifier: %@", buf, 0x16u);
      }

      v33 = [v6 placeEnrichmentData];
      [(MUPlaceEnrichmentSectionController *)self setEnrichmentData:v33];

      break;
    case 4:
      v14 = MUGetMUPlaceEnrichmentSectionControllerLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [(MUPlaceSectionController *)self mapItem];
        v16 = [v15 _identifier];
        *buf = 138412546;
        v41 = @"Error";
        v42 = 2112;
        v43 = v16;
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

- (MUPlaceEnrichmentSectionController)initWithMapItem:(id)a3 actionManager:(id)a4 dataAvailability:(id)a5 amsResultProvider:(id)a6 callToActionDelegate:(id)a7 externalActionHandler:(id)a8 rapActionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v34.receiver = self;
  v34.super_class = MUPlaceEnrichmentSectionController;
  v21 = [(MUPlaceSectionController *)&v34 initWithMapItem:v15];
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
    v27 = [(MUPlaceEnrichmentActionManager *)v25 initWithPlaceActionManager:v16 mapItem:v15 dataAvailability:v17 amsResultProvider:v18 callToActionDelegate:v19 contextMenuDelegate:v26 externalActionHandler:v20 analyticsDelegate:v26 onActionUpdate:v31];
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