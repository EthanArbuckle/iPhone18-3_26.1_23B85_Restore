@interface MapsSuggestionsLocationOfInterest
- (BOOL)hydrateMapItemWithNetworkRequester:(id)a3 completion:(id)a4;
- (MapsSuggestionsLocationOfInterest)initWithCoder:(id)a3;
- (MapsSuggestionsLocationOfInterest)initWithLOI:(id)a3;
- (MapsSuggestionsLocationOfInterest)initWithLOI:(id)a3 predictedDateInterval:(id)a4 probability:(double)a5 predictionSources:(id)a6;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
- (void)setMapItem:(id)a3;
@end

@implementation MapsSuggestionsLocationOfInterest

- (MapsSuggestionsLocationOfInterest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MapsSuggestionsLocationOfInterest *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapItemHandle"];
    mapItemHandle = v5->_mapItemHandle;
    v5->_mapItemHandle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];
    mapItem = v5->_mapItem;
    v5->_mapItem = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifierUUID"];
    identifierUUID = v5->_identifierUUID;
    v5->_identifierUUID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifierString"];
    identifierString = v5->_identifierString;
    v5->_identifierString = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredName"];
    preferredName = v5->_preferredName;
    v5->_preferredName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customLabel"];
    customLabel = v5->_customLabel;
    v5->_customLabel = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addressIdentifier"];
    addressIdentifier = v5->_addressIdentifier;
    v5->_addressIdentifier = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictedStartDate"];
    predictedStartDate = v5->_predictedStartDate;
    v5->_predictedStartDate = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictedEndDate"];
    predictedEndDate = v5->_predictedEndDate;
    v5->_predictedEndDate = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstVisit"];
    firstVisit = v5->_firstVisit;
    v5->_firstVisit = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastVisit"];
    lastVisit = v5->_lastVisit;
    v5->_lastVisit = v28;

    v5->_isLOIFromMeCard = [v4 decodeBoolForKey:@"isLOIFromMeCard"];
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_visitCount = [v4 decodeIntegerForKey:@"visitCount"];
    [v4 decodeDoubleForKey:@"probability"];
    v5->_probability = v30;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(MapsSuggestionsLocationOfInterest *)self mapItemHandle];
  [v16 encodeObject:v4 forKey:@"mapItemHandle"];

  v5 = [(MapsSuggestionsLocationOfInterest *)self mapItem];
  [v16 encodeObject:v5 forKey:@"mapItem"];

  v6 = [(MapsSuggestionsLocationOfInterest *)self location];
  [v16 encodeObject:v6 forKey:@"location"];

  v7 = [(MapsSuggestionsLocationOfInterest *)self identifierUUID];
  [v16 encodeObject:v7 forKey:@"identifierUUID"];

  v8 = [(MapsSuggestionsLocationOfInterest *)self identifierString];
  [v16 encodeObject:v8 forKey:@"identifierString"];

  v9 = [(MapsSuggestionsLocationOfInterest *)self preferredName];
  [v16 encodeObject:v9 forKey:@"preferredName"];

  v10 = [(MapsSuggestionsLocationOfInterest *)self customLabel];
  [v16 encodeObject:v10 forKey:@"customLabel"];

  v11 = [(MapsSuggestionsLocationOfInterest *)self addressIdentifier];
  [v16 encodeObject:v11 forKey:@"addressIdentifier"];

  v12 = [(MapsSuggestionsLocationOfInterest *)self predictedStartDate];
  [v16 encodeObject:v12 forKey:@"predictedStartDate"];

  v13 = [(MapsSuggestionsLocationOfInterest *)self predictedEndDate];
  [v16 encodeObject:v13 forKey:@"predictedEndDate"];

  v14 = [(MapsSuggestionsLocationOfInterest *)self firstVisit];
  [v16 encodeObject:v14 forKey:@"firstVisit"];

  v15 = [(MapsSuggestionsLocationOfInterest *)self lastVisit];
  [v16 encodeObject:v15 forKey:@"lastVisit"];

  [v16 encodeBool:-[MapsSuggestionsLocationOfInterest isLOIFromMeCard](self forKey:{"isLOIFromMeCard"), @"isLOIFromMeCard"}];
  [v16 encodeInteger:-[MapsSuggestionsLocationOfInterest type](self forKey:{"type"), @"type"}];
  [v16 encodeInteger:-[MapsSuggestionsLocationOfInterest visitCount](self forKey:{"visitCount"), @"visitCount"}];
  [(MapsSuggestionsLocationOfInterest *)self probability];
  [v16 encodeDouble:@"probability" forKey:?];
}

- (BOOL)hydrateMapItemWithNetworkRequester:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsLocationOfInterest.m";
      v27 = 1024;
      *v28 = 191;
      *&v28[4] = 2082;
      *&v28[6] = "[MapsSuggestionsLocationOfInterest hydrateMapItemWithNetworkRequester:completion:]";
      v29 = 2082;
      v30 = "nil == (completion)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completionHandler", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (!self->_mapItemHandle)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      identifierString = self->_identifierString;
      preferredName = self->_preferredName;
      *buf = 138412546;
      v26 = identifierString;
      v27 = 2112;
      *v28 = preferredName;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "LOI with ID: %@, name:%@ has no mapItemHandle. Returning.", buf, 0x16u);
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if (self->_mapItem)
  {
    v8 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__MapsSuggestionsLocationOfInterest_hydrateMapItemWithNetworkRequester_completion___block_invoke;
    block[3] = &unk_1E81F5C38;
    v24 = v7;
    dispatch_async(v8, block);

    v9 = 1;
  }

  else
  {
    objc_initWeak(&location, self);
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = self->_identifierString;
      v16 = self->_preferredName;
      *buf = 138412546;
      v26 = v16;
      v27 = 2112;
      *v28 = v17;
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "About to hydrate the mapItem for an LOI with name: %@, identifier: %@", buf, 0x16u);
    }

    v18 = [(MapsSuggestionsLocationOfInterest *)self mapItemHandle];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__MapsSuggestionsLocationOfInterest_hydrateMapItemWithNetworkRequester_completion___block_invoke_87;
    v19[3] = &unk_1E81F60F0;
    objc_copyWeak(&v21, &location);
    v20 = v7;
    v9 = [v6 resolveMapItemHandleData:v18 dropAnalyticsSessionID:0 completion:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

LABEL_12:

  return v9;
}

uint64_t __83__MapsSuggestionsLocationOfInterest_hydrateMapItemWithNetworkRequester_completion___block_invoke(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Calling back with a pre-existing mapItem. No need to rehydrate again.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __83__MapsSuggestionsLocationOfInterest_hydrateMapItemWithNetworkRequester_completion___block_invoke_87(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(21, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__MapsSuggestionsLocationOfInterest_hydrateMapItemWithNetworkRequester_completion___block_invoke_2;
  v10[3] = &unk_1E81F6680;
  objc_copyWeak(&v14, (a1 + 40));
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v14);
}

void __83__MapsSuggestionsLocationOfInterest_hydrateMapItemWithNetworkRequester_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32) || ![*(a1 + 40) count])
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 32);
        v7 = 138412290;
        v8 = v4;
        _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "LOI: Could not resolve mapItemHandle, error: %@", &v7, 0xCu);
      }
    }

    else
    {
      if ([WeakRetained isHomeOrWork])
      {
        MapsSuggestionsSawHomeOrWorkOnThisDevice();
      }

      v6 = [*(a1 + 40) firstObject];
      [WeakRetained setMapItem:v6];

      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Successfully retrieved a mapItem on the LOI", &v7, 2u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsLocationOfInterest.m";
      v9 = 1026;
      v10 = 212;
      v11 = 2082;
      v12 = "[MapsSuggestionsLocationOfInterest hydrateMapItemWithNetworkRequester:completion:]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

- (void)setMapItem:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v4 = self;
  objc_sync_enter(v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MapsSuggestionsMapItemConvertIfNeeded(v7);
    mapItem = v4->_mapItem;
    v4->_mapItem = v5;
  }

  objc_sync_exit(v4);
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [objc_opt_class() description];
  [v3 appendFormat:@"\n -- %@ -- \n", v4];

  v5 = [(MapsSuggestionsLocationOfInterest *)self type];
  if ((v5 + 1) > 4)
  {
    v6 = @"Home";
  }

  else
  {
    v6 = off_1E81F6CF0[v5 + 1];
  }

  [v3 appendFormat:@" type:               %@ \n", v6];
  v7 = [(MapsSuggestionsLocationOfInterest *)self preferredName];
  [v3 appendFormat:@" preferredName:      %@ \n", v7];

  v8 = [(MapsSuggestionsLocationOfInterest *)self predictedStartDate];
  v9 = MapsSuggestionsAMPMStringFromDate(v8);
  [v3 appendFormat:@" predictedStartDate: %@ \n", v9];

  v10 = [(MapsSuggestionsLocationOfInterest *)self predictedEndDate];
  v11 = MapsSuggestionsAMPMStringFromDate(v10);
  [v3 appendFormat:@" predictedEndDate:   %@ \n", v11];

  [(MapsSuggestionsLocationOfInterest *)self probability];
  [v3 appendFormat:@" probability:        %g \n", v12];
  v13 = [(MapsSuggestionsLocationOfInterest *)self identifierString];
  [v3 appendFormat:@" UUID:               %@ \n", v13];

  v14 = [(MapsSuggestionsLocationOfInterest *)self customLabel];
  [v3 appendFormat:@" customLabel:        %@ \n", v14];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MapsSuggestionsLocationOfInterest visitCount](self, "visitCount")}];
  [v3 appendFormat:@" visitCount:         %@ \n", v15];

  v16 = [(MapsSuggestionsLocationOfInterest *)self isLOIFromMeCard];
  v17 = @"NO";
  if (v16)
  {
    v17 = @"YES";
  }

  [v3 appendFormat:@" fromMeCard?:        %@ \n", v17];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v3];

  return v18;
}

- (MapsSuggestionsLocationOfInterest)initWithLOI:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = MapsSuggestionsLocationOfInterest;
  v5 = [(MapsSuggestionsLocationOfInterest *)&v51 init];
  if (v5)
  {
    v6 = [v4 mapItem];

    if (v6)
    {
      v7 = [v4 mapItem];
      v8 = [v7 geoMapItemHandle];
      mapItemHandle = v5->_mapItemHandle;
      v5->_mapItemHandle = v8;

      v10 = [v4 mapItem];
      v11 = [v10 extendedAttributes];
      v12 = [v11 addressIdentifier];
      addressIdentifier = v5->_addressIdentifier;
      v5->_addressIdentifier = v12;
    }

    v14 = [v4 identifier];
    identifierUUID = v5->_identifierUUID;
    v5->_identifierUUID = v14;

    v16 = [v4 identifier];
    v17 = [v16 UUIDString];
    identifierString = v5->_identifierString;
    v5->_identifierString = v17;

    v19 = [v4 preferredName];
    preferredName = v5->_preferredName;
    v5->_preferredName = v19;

    v21 = [v4 customLabel];
    customLabel = v5->_customLabel;
    v5->_customLabel = v21;

    v5->_isLOIFromMeCard = [v4 typeSource] & 1;
    v23 = [v4 type];
    if ((v23 + 1) >= 5)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    v5->_type = v24;
    v25 = [v4 visits];
    v5->_visitCount = [v25 count];

    v26 = [v4 visits];
    v27 = [v26 firstObject];
    v28 = [v27 entryDate];
    firstVisit = v5->_firstVisit;
    v5->_firstVisit = v28;

    v30 = [v4 visits];
    v31 = [v30 lastObject];
    v32 = [v31 entryDate];
    lastVisit = v5->_lastVisit;
    v5->_lastVisit = v32;

    v34 = [v4 location];
    [v34 latitude];
    v36 = v35;
    [v34 longitude];
    v38 = CLLocationCoordinate2DMake(v36, v37);
    v39 = objc_alloc(MEMORY[0x1E6985C40]);
    [v34 altitude];
    v41 = v40;
    [v34 horizontalUncertainty];
    v43 = v42;
    [v34 verticalUncertainty];
    v45 = v44;
    v46 = [v34 date];
    v47 = [v39 initWithCoordinate:v46 altitude:v38.latitude horizontalAccuracy:v38.longitude verticalAccuracy:v41 timestamp:{v43, v45}];
    location = v5->_location;
    v5->_location = v47;

    v49 = v5;
  }

  return v5;
}

- (MapsSuggestionsLocationOfInterest)initWithLOI:(id)a3 predictedDateInterval:(id)a4 probability:(double)a5 predictionSources:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = [[MapsSuggestionsLocationOfInterest alloc] initWithLOI:v12];

  if (v13)
  {
    v14 = [v10 startDate];
    v15 = [v14 date];
    predictedStartDate = v13->_predictedStartDate;
    v13->_predictedStartDate = v15;

    v17 = [v10 endDate];
    v18 = [v17 date];
    predictedEndDate = v13->_predictedEndDate;
    v13->_predictedEndDate = v18;

    v13->_probability = a5;
    objc_storeStrong(&v13->_predictionSources, a6);
    v20 = v13;
  }

  return v13;
}

@end