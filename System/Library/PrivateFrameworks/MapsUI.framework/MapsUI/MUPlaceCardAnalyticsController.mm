@interface MUPlaceCardAnalyticsController
- (BOOL)instrumentRevealIfNeededWithImpressionsSessionId:(id)id;
- (MUPlaceCardAnalyticsController)initWithAnalyticsProvider:(id)provider;
- (MUPlaceCardAnalyticsProvider)provider;
- (NSArray)analyticModules;
- (_MKPlaceItem)placeItem;
- (void)disableDeferLoggingUntilRefinementWithShouldInvokeReveal:(BOOL)reveal;
- (void)infoCardAnalyticsPopulateSharedStateWithButtonList:(id)list;
- (void)infoCardTransitAnalyticsDidSelectionAction:(int)action resultIndex:(int64_t)index targetID:(unint64_t)d transitSystem:(id)system transitDepartureSequence:(id)sequence transitCardCategory:(int)category transitIncident:(id)incident feedbackDelegateSelector:(int)self0;
- (void)instrumentCloseUsingClientType:(unint64_t)type;
- (void)instrumentConceal;
- (void)instrumentPunchoutActionWithURL:(id)l providerId:(id)id;
- (void)instrumentVerticalScrollWithBeginningPoint:(CGPoint)point targetContentOffset:(CGPoint *)offset velocity:(CGPoint)velocity;
@end

@implementation MUPlaceCardAnalyticsController

- (MUPlaceCardAnalyticsProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (void)disableDeferLoggingUntilRefinementWithShouldInvokeReveal:(BOOL)reveal
{
  self->_deferLoggingRevealUntilRefinement = 0;
  if (reveal)
  {
    v4 = [(NSUUID *)self->_cachedSessionId copy];
    [(MUPlaceCardAnalyticsController *)self instrumentRevealIfNeededWithImpressionsSessionId:v4];
  }

  cachedSessionId = self->_cachedSessionId;
  self->_cachedSessionId = 0;
}

BOOL __93__MUPlaceCardAnalyticsController_instrumentAction_target_eventValue_moduleType_feedbackType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32) - 1;
  if (v2 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1C587A048[v2];
  }

  return v3 == [a2 type];
}

- (void)infoCardTransitAnalyticsDidSelectionAction:(int)action resultIndex:(int64_t)index targetID:(unint64_t)d transitSystem:(id)system transitDepartureSequence:(id)sequence transitCardCategory:(int)category transitIncident:(id)incident feedbackDelegateSelector:(int)self0
{
  systemCopy = system;
  sequenceCopy = sequence;
  incidentCopy = incident;
  [(MUPlaceCardAnalyticsController *)self _requestHostToLogFeedbackTypeIfNeeded:selector];
  placeItem = [(MUPlaceCardAnalyticsController *)self placeItem];
  mapItem = [placeItem mapItem];

  Current = CFAbsoluteTimeGetCurrent();
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  defaultTargetForPlaceCardAnalytics = [WeakRetained defaultTargetForPlaceCardAnalytics];

  analyticsQueue = self->_analyticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __198__MUPlaceCardAnalyticsController_infoCardTransitAnalyticsDidSelectionAction_resultIndex_targetID_transitSystem_transitDepartureSequence_transitCardCategory_transitIncident_feedbackDelegateSelector___block_invoke;
  block[3] = &unk_1E8218410;
  actionCopy = action;
  v38 = defaultTargetForPlaceCardAnalytics;
  v34 = Current;
  indexCopy = index;
  dCopy = d;
  categoryCopy = category;
  v30 = mapItem;
  v31 = systemCopy;
  v32 = sequenceCopy;
  v33 = incidentCopy;
  v24 = incidentCopy;
  v25 = sequenceCopy;
  v26 = systemCopy;
  v27 = mapItem;
  dispatch_async(analyticsQueue, block);
}

void __198__MUPlaceCardAnalyticsController_infoCardTransitAnalyticsDidSelectionAction_resultIndex_targetID_transitSystem_transitDepartureSequence_transitCardCategory_transitIncident_feedbackDelegateSelector___block_invoke(uint64_t a1)
{
  v10 = [MEMORY[0x1E696F298] sharedService];
  v2 = *(a1 + 88);
  v3 = *(a1 + 92);
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = [v4 _vendorID];
  LODWORD(v9) = *(a1 + 96);
  [v10 captureTransitPlaceCardUserAction:v2 onTarget:v3 eventValue:0 mapItem:v4 timestamp:v6 resultIndex:v7 targetID:v5 providerID:v8 animationID:-1 transitCardCategory:v9 transitSystem:*(a1 + 40) transitDepartureSequence:*(a1 + 48) transitIncident:*(a1 + 56)];
}

void __184__MUPlaceCardAnalyticsController__infoCardAnalyticsDidSelectAction_target_eventValue_actionURL_photoID_feedbackDelegateSelector_modules_actionRichProviderId_classification_completion___block_invoke(uint64_t a1)
{
  v24 = [MEMORY[0x1E696F298] sharedService];
  v21 = *(a1 + 120);
  v23 = *(a1 + 124);
  v2 = *(a1 + 40);
  v22 = *(a1 + 32);
  v3 = *(a1 + 112);
  v20 = [v2 _muid];
  v4 = [*(a1 + 40) _vendorID];
  v17 = *(a1 + 128);
  v5 = *(a1 + 48);
  v18 = v5;
  v19 = *(a1 + 56);
  v6 = [*(a1 + 40) _firstLocalizedCategoryName];
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 40);
  v11 = [v10 _allPhotoAttributions];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v10 _allPhotoAttributions];
    v14 = MUMap(v13, &__block_literal_global_5730);
  }

  else
  {
    v14 = 0;
  }

  LODWORD(v16) = v17;
  [v24 capturePlaceCardUserAction:v21 onTarget:v23 eventValue:v22 mapItem:v2 timestamp:0xFFFFFFFFLL resultIndex:v20 targetID:v3 providerID:v4 animationID:0 actionURL:v18 photoID:v19 placeCardType:v16 localizedMapItemCategory:v6 availableActions:v7 unactionableUIElements:v8 modules:v9 commingledPhotoProviderIDs:v14 actionRichProviderId:*(a1 + 88) classification:*(a1 + 96)];

  v15 = *(a1 + 104);
  if (v15)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __184__MUPlaceCardAnalyticsController__infoCardAnalyticsDidSelectAction_target_eventValue_actionURL_photoID_feedbackDelegateSelector_modules_actionRichProviderId_classification_completion___block_invoke_2;
    block[3] = &unk_1E821B860;
    v26 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)instrumentPunchoutActionWithURL:(id)l providerId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  lCopy = l;
  idCopy = id;
  v8 = MUGetPlaceCardAnalyticsUILog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = lCopy;
    v12 = 2112;
    v13 = idCopy;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_DEBUG, "Instrumenting punchout with url %@ and provider id %@", &v10, 0x16u);
  }

  [(MUPlaceCardAnalyticsController *)self infoCardAnalyticsDidSelectAction:6050 eventValue:lCopy feedbackDelegateSelector:0 actionRichProviderId:idCopy classification:0];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)instrumentCloseUsingClientType:(unint64_t)type
{
  if (type == 3)
  {
    v3 = 701;
  }

  else
  {
    v3 = 0;
  }

  if (type == 2)
  {
    v4 = 702;
  }

  else
  {
    v4 = v3;
  }

  [(MUPlaceCardAnalyticsController *)self infoCardAnalyticsDidSelectAction:4 target:v4 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
}

- (void)instrumentVerticalScrollWithBeginningPoint:(CGPoint)point targetContentOffset:(CGPoint *)offset velocity:(CGPoint)velocity
{
  v5 = point.y - offset->y;
  if (v5 <= 0.0)
  {
    if (v5 < 0.0)
    {
      v6 = 7;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 8;
  }

  [(MUPlaceCardAnalyticsController *)self infoCardAnalyticsDidSelectAction:v6 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
}

- (void)instrumentConceal
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MUGetPlaceCardRevealLoggingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    placeItem = [(MUPlaceCardAnalyticsController *)self placeItem];
    v6 = 138412290;
    v7 = placeItem;
    _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_DEBUG, "Logging conceal for place item %@", &v6, 0xCu);
  }

  [(MUPlaceCardAnalyticsController *)self infoCardAnalyticsDidSelectAction:47 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)instrumentRevealIfNeededWithImpressionsSessionId:(id)id
{
  v59 = *MEMORY[0x1E69E9840];
  idCopy = id;
  placeItem = [(MUPlaceCardAnalyticsController *)self placeItem];
  v6 = placeItem;
  if (!placeItem)
  {
    p_super = MUGetPlaceCardRevealLoggingLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      v8 = "Place item is nil so not instrumenting reveal";
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if ([placeItem isIntermediateMapItem])
  {
    p_super = MUGetPlaceCardRevealLoggingLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      v8 = "Place item is present but it contains an intermediate map item so not instrumenting reveal";
LABEL_7:
      _os_log_impl(&dword_1C5620000, p_super, OS_LOG_TYPE_DEBUG, v8, &buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  deferLoggingRevealUntilRefinement = self->_deferLoggingRevealUntilRefinement;
  v13 = MUGetPlaceCardRevealLoggingLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (deferLoggingRevealUntilRefinement)
  {
    if (v14)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_DEBUG, "Deferring reveal logging until refinement has finished.  Saving session identifier for next reveal.", &buf, 2u);
    }

    v15 = idCopy;
    v9 = 0;
    p_super = &self->_cachedSessionId->super;
    self->_cachedSessionId = v15;
  }

  else
  {
    if (v14)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_DEBUG, "Logging reveal for place item %@", &buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_provider);
    p_super = [WeakRetained revealedModules];

    v17 = [p_super mutableCopy];
    mEMORY[0x1E69A15A0] = [MEMORY[0x1E69A15A0] sharedData];
    [mEMORY[0x1E69A15A0] setPlaceCardRevealedPlaceCardModules:v17];

    v19 = MUGetPlaceCardRevealLoggingLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = p_super;
      _os_log_impl(&dword_1C5620000, v19, OS_LOG_TYPE_DEBUG, "Logging reveal modules %@", &buf, 0xCu);
    }

    mEMORY[0x1E69A15A0]2 = [MEMORY[0x1E69A15A0] sharedData];
    [mEMORY[0x1E69A15A0]2 populateImpressionObjectId:idCopy];

    mapItem = [v6 mapItem];
    _enrichmentInfo = [mapItem _enrichmentInfo];
    showcaseId = [_enrichmentInfo showcaseId];
    mEMORY[0x1E69A15A0]3 = [MEMORY[0x1E69A15A0] sharedData];
    [mEMORY[0x1E69A15A0]3 setPlaceCardPlaceActionDetailsShowcaseId:showcaseId];

    v25 = MUGetPlaceCardRevealLoggingLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      mapItem2 = [v6 mapItem];
      _enrichmentInfo2 = [mapItem2 _enrichmentInfo];
      showcaseId2 = [_enrichmentInfo2 showcaseId];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = showcaseId2;
      _os_log_impl(&dword_1C5620000, v25, OS_LOG_TYPE_DEBUG, "Logging showcase id %@", &buf, 0xCu);
    }

    contact = [v6 contact];
    if (contact && MapsFeature_IsEnabled_MapsWally() && [v6 representsPerson])
    {
      postalAddresses = [contact postalAddresses];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v57 = 0x2020000000;
      v58 = 0;
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __83__MUPlaceCardAnalyticsController_instrumentRevealIfNeededWithImpressionsSessionId___block_invoke;
      v51[3] = &unk_1E82183C0;
      v51[4] = &buf;
      [postalAddresses enumerateObjectsUsingBlock:v51];
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __83__MUPlaceCardAnalyticsController_instrumentRevealIfNeededWithImpressionsSessionId___block_invoke_2;
      v46[3] = &unk_1E82183C0;
      v46[4] = &v47;
      [postalAddresses enumerateObjectsUsingBlock:v46];
      mEMORY[0x1E69A15A0]4 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]4 setPlaceCardIsPersonPlacecard:1];

      v32 = *(*(&buf + 1) + 24);
      mEMORY[0x1E69A15A0]5 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]5 setPlaceCardIsPersonLocationShared:v32];

      v34 = *(v48 + 24);
      mEMORY[0x1E69A15A0]6 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]6 setPlaceCardIsPersonAddressAvailable:v34];

      v36 = MUGetPlaceCardRevealLoggingLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = *(*(&buf + 1) + 24);
        v38 = *(v48 + 24);
        *v52 = 67109376;
        v53 = v37;
        v54 = 1024;
        v55 = v38;
        _os_log_impl(&dword_1C5620000, v36, OS_LOG_TYPE_DEBUG, "Logging person card isLocationShared: %d and isAddressAvailable %d", v52, 0xEu);
      }

      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      mEMORY[0x1E69A15A0]7 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]7 setPlaceCardIsPersonPlacecard:0];

      mEMORY[0x1E69A15A0]8 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]8 setPlaceCardIsPersonLocationShared:0];

      mEMORY[0x1E69A15A0]9 = [MEMORY[0x1E69A15A0] sharedData];
      [mEMORY[0x1E69A15A0]9 setPlaceCardIsPersonAddressAvailable:0];

      postalAddresses = MUGetPlaceCardRevealLoggingLog();
      if (os_log_type_enabled(postalAddresses, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C5620000, postalAddresses, OS_LOG_TYPE_DEBUG, "Not a person card", &buf, 2u);
      }
    }

    v42 = objc_loadWeakRetained(&self->_provider);
    defaultTargetForPlaceCardAnalytics = [v42 defaultTargetForPlaceCardAnalytics];
    analyticModules = [(MUPlaceCardAnalyticsController *)self analyticModules];
    v45 = [analyticModules copy];
    [(MUPlaceCardAnalyticsController *)self _infoCardAnalyticsDidSelectAction:21 target:defaultTargetForPlaceCardAnalytics eventValue:0 actionURL:0 photoID:0 feedbackDelegateSelector:0 modules:v45 actionRichProviderId:0 classification:0 completion:&__block_literal_global_461];

    v9 = 1;
  }

LABEL_9:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __83__MUPlaceCardAnalyticsController_instrumentRevealIfNeededWithImpressionsSessionId___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [MEMORY[0x1E695CD58] _mapkit_sharedLocationContactIdentifer];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __83__MUPlaceCardAnalyticsController_instrumentRevealIfNeededWithImpressionsSessionId___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [MEMORY[0x1E695CD58] _mapkit_sharedLocationContactIdentifer];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __83__MUPlaceCardAnalyticsController_instrumentRevealIfNeededWithImpressionsSessionId___block_invoke_8()
{
  v0 = [MEMORY[0x1E69A15A0] sharedData];
  [v0 populateImpressionObjectId:0];
}

- (void)infoCardAnalyticsPopulateSharedStateWithButtonList:(id)list
{
  v14 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v4 = MUGetPlaceCardAnalyticsUILog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = listCopy;
    _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_DEBUG, "Setting the shared state for button list %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v12 = 0x2020000000;
  v13 = 0;
  mEMORY[0x1E69A15A0] = [MEMORY[0x1E69A15A0] sharedData];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__MUPlaceCardAnalyticsController_infoCardAnalyticsPopulateSharedStateWithButtonList___block_invoke;
  v8[3] = &unk_1E8218398;
  p_buf = &buf;
  v6 = listCopy;
  v9 = v6;
  [mEMORY[0x1E69A15A0] populateActionButtonDetails:v8];

  _Block_object_dispose(&buf, 8);
  v7 = *MEMORY[0x1E69E9840];
}

BOOL __85__MUPlaceCardAnalyticsController_infoCardAnalyticsPopulateSharedStateWithButtonList___block_invoke(uint64_t a1, void *a2, void *a3, _DWORD *a4, _BYTE *a5)
{
  v10 = *(*(*(a1 + 40) + 8) + 24);
  v11 = [*(a1 + 32) count];
  if (v10 < v11)
  {
    v12 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    *a3 = [v12 vendor];
    *a5 = [v12 isGroup];
    *a2 = [v12 metadata];
    v13 = [v12 linkType];
    if ((v13 - 1) >= 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    *a4 = v14;
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v10 < v11;
}

- (MUPlaceCardAnalyticsController)initWithAnalyticsProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = MUPlaceCardAnalyticsController;
  v5 = [(MUPlaceCardAnalyticsController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_provider, providerCopy);
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -1);
    v8 = dispatch_queue_create("com.apple.MapsUI.PlaceViewController.Analytics", v7);
    analyticsQueue = v6->_analyticsQueue;
    v6->_analyticsQueue = v8;
  }

  return v6;
}

- (NSArray)analyticModules
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  analyticModules = [WeakRetained analyticModules];

  return analyticModules;
}

- (_MKPlaceItem)placeItem
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  placeItem = [WeakRetained placeItem];

  return placeItem;
}

@end