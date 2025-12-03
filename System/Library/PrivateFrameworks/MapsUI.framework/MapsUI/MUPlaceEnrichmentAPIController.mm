@interface MUPlaceEnrichmentAPIController
+ (id)sharedPlaceEnrichmentAPIController;
- (NSString)description;
- (id)initInternal;
- (id)placeEnrichmentData;
- (void)cancelFetchingPlaceEnrichment;
- (void)configureWithMapItem:(id)item traits:(id)traits;
- (void)fetchPlaceEnrichment:(id)enrichment;
- (void)registerObserver:(id)observer;
- (void)resetConfiguration;
- (void)unregisterObserver:(id)observer;
@end

@implementation MUPlaceEnrichmentAPIController

- (id)placeEnrichmentData
{
  enrichmentData = [(MUPlaceEnrichmentAPIController *)self enrichmentData];
  v3 = [enrichmentData copy];

  return v3;
}

- (void)cancelFetchingPlaceEnrichment
{
  v3 = MUGetMUPlaceEnrichmentAPIControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_DEBUG, "Cancelling ticket to fetch enrichnment data.", v5, 2u);
  }

  ticket = [(MUPlaceEnrichmentAPIController *)self ticket];
  [ticket cancel];
}

- (void)fetchPlaceEnrichment:(id)enrichment
{
  v43 = *MEMORY[0x1E69E9840];
  enrichmentCopy = enrichment;
  if (self->_state)
  {
    mapItem = [(MUPlaceEnrichmentAPIController *)self mapItem];
    _enrichmentInfo = [mapItem _enrichmentInfo];

    if (_enrichmentInfo)
    {
      mEMORY[0x1E696F298] = [MEMORY[0x1E696F298] sharedService];
      mapItem2 = [(MUPlaceEnrichmentAPIController *)self mapItem];
      _enrichmentInfo2 = [mapItem2 _enrichmentInfo];
      mapItem3 = [(MUPlaceEnrichmentAPIController *)self mapItem];
      _identifier = [mapItem3 _identifier];
      traits = [(MUPlaceEnrichmentAPIController *)self traits];
      v13 = [mEMORY[0x1E696F298] ticketForPlaceEnrichmentWithEnrichmentInfo:_enrichmentInfo2 mapsIdentifier:_identifier traits:traits];
      [(MUPlaceEnrichmentAPIController *)self setTicket:v13];

      objc_initWeak(&location, self);
      v14 = MUGetMUPlaceEnrichmentAPIControllerLog();
      v15 = os_signpost_id_generate(v14);

      v16 = MUGetMUPlaceEnrichmentAPIControllerLog();
      v17 = v16;
      if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5620000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "FetchingPlaceEnrichment", "", buf, 2u);
      }

      [(MUPlaceEnrichmentAPIController *)self setState:2];
      v18 = MUGetMUPlaceEnrichmentAPIControllerLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        mapItem4 = [(MUPlaceEnrichmentAPIController *)self mapItem];
        _identifier2 = [mapItem4 _identifier];
        mapItem5 = [(MUPlaceEnrichmentAPIController *)self mapItem];
        _enrichmentInfo3 = [mapItem5 _enrichmentInfo];
        *buf = 138412546;
        v40 = _identifier2;
        v41 = 2112;
        v42 = _enrichmentInfo3;
        _os_log_impl(&dword_1C5620000, v18, OS_LOG_TYPE_DEBUG, "Fetching enrichment data for identifier: %@ using enrichment info: %@", buf, 0x16u);
      }

      ticket = [(MUPlaceEnrichmentAPIController *)self ticket];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __55__MUPlaceEnrichmentAPIController_fetchPlaceEnrichment___block_invoke;
      v35[3] = &unk_1E8219CA0;
      v37[1] = v15;
      objc_copyWeak(v37, &location);
      v36 = enrichmentCopy;
      [ticket submitWithHandler:v35 networkActivity:0];

      objc_destroyWeak(v37);
      objc_destroyWeak(&location);
    }

    else
    {
      v25 = MUGetMUPlaceEnrichmentAPIControllerLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        mapItem6 = [(MUPlaceEnrichmentAPIController *)self mapItem];
        _identifier3 = [mapItem6 _identifier];
        *buf = 138412290;
        v40 = _identifier3;
        _os_log_impl(&dword_1C5620000, v25, OS_LOG_TYPE_ERROR, "Enrichment Info missing for map item: %@", buf, 0xCu);
      }

      [(MUPlaceEnrichmentAPIController *)self setState:4];
      v28 = MUGetMUPlaceEnrichmentAPIControllerLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        observers = self->_observers;
        mapItem7 = [(MUPlaceEnrichmentAPIController *)self mapItem];
        _identifier4 = [mapItem7 _identifier];
        *buf = 138412546;
        v40 = observers;
        v41 = 2112;
        v42 = _identifier4;
        _os_log_impl(&dword_1C5620000, v28, OS_LOG_TYPE_DEBUG, "Notifying observers: %@ missing enrichment info for mapItem: %@", buf, 0x16u);
      }

      v32 = self->_observers;
      mapItem8 = [(MUPlaceEnrichmentAPIController *)self mapItem];
      [(GEOObserverHashTable *)v32 placeEnrichmentAPIContollerDidFetchEnrichmentData:0 forMapItem:mapItem8];

      if (enrichmentCopy)
      {
        enrichmentCopy[2](enrichmentCopy);
      }
    }
  }

  else
  {
    v24 = MUGetMUPlaceEnrichmentAPIControllerLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v24, OS_LOG_TYPE_ERROR, "Trying to fetch enrichment data without configuring", buf, 2u);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __55__MUPlaceEnrichmentAPIController_fetchPlaceEnrichment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MUGetMUPlaceEnrichmentAPIControllerLog();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v8, OS_SIGNPOST_INTERVAL_END, v9, "FetchingPlaceEnrichment", "", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __55__MUPlaceEnrichmentAPIController_fetchPlaceEnrichment___block_invoke_55;
  v28 = &unk_1E821A618;
  v29 = WeakRetained;
  v30 = *(a1 + 32);
  v11 = _Block_copy(&v25);
  if (!v5 || v6)
  {
    v22 = MUGetMUPlaceEnrichmentAPIControllerLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&dword_1C5620000, v22, OS_LOG_TYPE_ERROR, "API Response for Place Enrichment is invalid. Error: %@", buf, 0xCu);
    }

    [WeakRetained setEnrichmentData:{0, v25, v26, v27, v28, v29}];
    [WeakRetained setState:4];
    v11[2](v11);
  }

  else
  {
    v12 = [WeakRetained mapItem];
    v13 = [v12 _enrichmentInfo];

    v14 = [v5 enrichmentEntities];
    v15 = [v14 firstObject];
    v16 = [v15 enrichmentInfo];

    if ([v16 isEqual:v13])
    {
      [WeakRetained setState:3];
      v17 = MUGetMUPlaceEnrichmentAPIControllerLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v5;
        _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_DEBUG, "Received enrichment data: %@", buf, 0xCu);
      }

      [WeakRetained setEnrichmentData:v5];
      v18 = MUGetMUPlaceEnrichmentAPIControllerLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = WeakRetained[1];
        v20 = [WeakRetained[2] _identifier];
        *buf = 138412802;
        v32 = v19;
        v33 = 2112;
        v34 = v5;
        v35 = 2112;
        v36 = v20;
        _os_log_impl(&dword_1C5620000, v18, OS_LOG_TYPE_DEBUG, "Notifying observers: %@ with this enrichment data: %@ for mapItem: %@", buf, 0x20u);
      }

      [WeakRetained[1] placeEnrichmentAPIContollerDidFetchEnrichmentData:WeakRetained[5] forMapItem:WeakRetained[2]];
      v21 = *(a1 + 32);
      if (v21)
      {
        (*(v21 + 16))(v21);
      }
    }

    else
    {
      v23 = MUGetMUPlaceEnrichmentAPIControllerLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v32 = v13;
        v33 = 2112;
        v34 = v16;
        _os_log_impl(&dword_1C5620000, v23, OS_LOG_TYPE_ERROR, "Enrichment Info mismatch. Requested : %@. Received: %@", buf, 0x16u);
      }

      [WeakRetained setEnrichmentData:0];
      [WeakRetained setState:4];
      v11[2](v11);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __55__MUPlaceEnrichmentAPIController_fetchPlaceEnrichment___block_invoke_55(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MUGetMUPlaceEnrichmentAPIControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    v5 = [*(v3 + 16) _identifier];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C5620000, v2, OS_LOG_TYPE_DEBUG, "Notifying observers: %@ for mapItem: %@", &v8, 0x16u);
  }

  [*(*(a1 + 32) + 8) placeEnrichmentAPIContollerDidFetchEnrichmentData:0 forMapItem:*(*(a1 + 32) + 16)];
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)unregisterObserver:(id)observer
{
  v9 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = MUGetMUPlaceEnrichmentAPIControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = observerCopy;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_DEBUG, "MUPlaceEnrichmentAPIController removing observer: %@", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_observers unregisterObserver:observerCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerObserver:(id)observer
{
  v9 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = MUGetMUPlaceEnrichmentAPIControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = observerCopy;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_DEBUG, "MUPlaceEnrichmentAPIController adding observer: %@", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_observers registerObserver:observerCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resetConfiguration
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MUGetMUPlaceEnrichmentAPIControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    _identifier = [(MKMapItem *)self->_mapItem _identifier];
    v5 = _identifier;
    v6 = self->_state - 1;
    if (v6 > 3)
    {
      v7 = @"Unknown";
    }

    else
    {
      v7 = off_1E8219CC0[v6];
    }

    v10 = 138412546;
    v11 = _identifier;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_DEBUG, "Resetting current state. Identifier: %@. State: %@", &v10, 0x16u);
  }

  mapItem = self->_mapItem;
  self->_mapItem = 0;

  self->_state = 1;
  [(MUPlaceEnrichmentAPIController *)self setEnrichmentData:0];
  v9 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  mapItem = [(MUPlaceEnrichmentAPIController *)self mapItem];
  _muid = [mapItem _muid];
  enrichmentData = [(MUPlaceEnrichmentAPIController *)self enrichmentData];
  enrichmentEntities = [enrichmentData enrichmentEntities];
  firstObject = [enrichmentEntities firstObject];
  v9 = [v3 stringWithFormat:@"API Controller has mapItem: %llu and enrichment data: %@", _muid, firstObject];

  return v9;
}

- (void)configureWithMapItem:(id)item traits:(id)traits
{
  v15 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  traitsCopy = traits;
  if (([(MKMapItem *)self->_mapItem isEqual:itemCopy]& 1) == 0)
  {
    v9 = MUGetMUPlaceEnrichmentAPIControllerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      _identifier = [itemCopy _identifier];
      v13 = 138412290;
      v14 = _identifier;
      _os_log_impl(&dword_1C5620000, v9, OS_LOG_TYPE_DEBUG, "Configuring API Controller. Identifier: %@", &v13, 0xCu);
    }

    objc_storeStrong(&self->_mapItem, item);
  }

  traits = self->_traits;
  self->_traits = traitsCopy;

  self->_state = 1;
  v12 = *MEMORY[0x1E69E9840];
}

- (id)initInternal
{
  v6.receiver = self;
  v6.super_class = MUPlaceEnrichmentAPIController;
  v2 = [(MUPlaceEnrichmentAPIController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69A22D8]) initWithProtocol:&unk_1F454A0D8 queue:0];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

+ (id)sharedPlaceEnrichmentAPIController
{
  if (sharedPlaceEnrichmentAPIController_onceToken != -1)
  {
    dispatch_once(&sharedPlaceEnrichmentAPIController_onceToken, &__block_literal_global_17328);
  }

  v3 = sharedPlaceEnrichmentAPIController_apiController;

  return v3;
}

uint64_t __68__MUPlaceEnrichmentAPIController_sharedPlaceEnrichmentAPIController__block_invoke()
{
  v0 = [[MUPlaceEnrichmentAPIController alloc] initInternal];
  v1 = sharedPlaceEnrichmentAPIController_apiController;
  sharedPlaceEnrichmentAPIController_apiController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end