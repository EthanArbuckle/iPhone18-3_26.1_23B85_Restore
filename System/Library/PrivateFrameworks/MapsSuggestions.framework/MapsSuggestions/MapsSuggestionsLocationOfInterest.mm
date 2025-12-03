@interface MapsSuggestionsLocationOfInterest
- (BOOL)hydrateMapItemWithNetworkRequester:(id)requester completion:(id)completion;
- (MapsSuggestionsLocationOfInterest)initWithCoder:(id)coder;
- (MapsSuggestionsLocationOfInterest)initWithLOI:(id)i;
- (MapsSuggestionsLocationOfInterest)initWithLOI:(id)i predictedDateInterval:(id)interval probability:(double)probability predictionSources:(id)sources;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
- (void)setMapItem:(id)item;
@end

@implementation MapsSuggestionsLocationOfInterest

- (MapsSuggestionsLocationOfInterest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MapsSuggestionsLocationOfInterest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapItemHandle"];
    mapItemHandle = v5->_mapItemHandle;
    v5->_mapItemHandle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];
    mapItem = v5->_mapItem;
    v5->_mapItem = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifierUUID"];
    identifierUUID = v5->_identifierUUID;
    v5->_identifierUUID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifierString"];
    identifierString = v5->_identifierString;
    v5->_identifierString = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredName"];
    preferredName = v5->_preferredName;
    v5->_preferredName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customLabel"];
    customLabel = v5->_customLabel;
    v5->_customLabel = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addressIdentifier"];
    addressIdentifier = v5->_addressIdentifier;
    v5->_addressIdentifier = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictedStartDate"];
    predictedStartDate = v5->_predictedStartDate;
    v5->_predictedStartDate = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictedEndDate"];
    predictedEndDate = v5->_predictedEndDate;
    v5->_predictedEndDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstVisit"];
    firstVisit = v5->_firstVisit;
    v5->_firstVisit = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastVisit"];
    lastVisit = v5->_lastVisit;
    v5->_lastVisit = v28;

    v5->_isLOIFromMeCard = [coderCopy decodeBoolForKey:@"isLOIFromMeCard"];
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_visitCount = [coderCopy decodeIntegerForKey:@"visitCount"];
    [coderCopy decodeDoubleForKey:@"probability"];
    v5->_probability = v30;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mapItemHandle = [(MapsSuggestionsLocationOfInterest *)self mapItemHandle];
  [coderCopy encodeObject:mapItemHandle forKey:@"mapItemHandle"];

  mapItem = [(MapsSuggestionsLocationOfInterest *)self mapItem];
  [coderCopy encodeObject:mapItem forKey:@"mapItem"];

  location = [(MapsSuggestionsLocationOfInterest *)self location];
  [coderCopy encodeObject:location forKey:@"location"];

  identifierUUID = [(MapsSuggestionsLocationOfInterest *)self identifierUUID];
  [coderCopy encodeObject:identifierUUID forKey:@"identifierUUID"];

  identifierString = [(MapsSuggestionsLocationOfInterest *)self identifierString];
  [coderCopy encodeObject:identifierString forKey:@"identifierString"];

  preferredName = [(MapsSuggestionsLocationOfInterest *)self preferredName];
  [coderCopy encodeObject:preferredName forKey:@"preferredName"];

  customLabel = [(MapsSuggestionsLocationOfInterest *)self customLabel];
  [coderCopy encodeObject:customLabel forKey:@"customLabel"];

  addressIdentifier = [(MapsSuggestionsLocationOfInterest *)self addressIdentifier];
  [coderCopy encodeObject:addressIdentifier forKey:@"addressIdentifier"];

  predictedStartDate = [(MapsSuggestionsLocationOfInterest *)self predictedStartDate];
  [coderCopy encodeObject:predictedStartDate forKey:@"predictedStartDate"];

  predictedEndDate = [(MapsSuggestionsLocationOfInterest *)self predictedEndDate];
  [coderCopy encodeObject:predictedEndDate forKey:@"predictedEndDate"];

  firstVisit = [(MapsSuggestionsLocationOfInterest *)self firstVisit];
  [coderCopy encodeObject:firstVisit forKey:@"firstVisit"];

  lastVisit = [(MapsSuggestionsLocationOfInterest *)self lastVisit];
  [coderCopy encodeObject:lastVisit forKey:@"lastVisit"];

  [coderCopy encodeBool:-[MapsSuggestionsLocationOfInterest isLOIFromMeCard](self forKey:{"isLOIFromMeCard"), @"isLOIFromMeCard"}];
  [coderCopy encodeInteger:-[MapsSuggestionsLocationOfInterest type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:-[MapsSuggestionsLocationOfInterest visitCount](self forKey:{"visitCount"), @"visitCount"}];
  [(MapsSuggestionsLocationOfInterest *)self probability];
  [coderCopy encodeDouble:@"probability" forKey:?];
}

- (BOOL)hydrateMapItemWithNetworkRequester:(id)requester completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  requesterCopy = requester;
  completionCopy = completion;
  if (!completionCopy)
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
    v24 = completionCopy;
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

    mapItemHandle = [(MapsSuggestionsLocationOfInterest *)self mapItemHandle];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__MapsSuggestionsLocationOfInterest_hydrateMapItemWithNetworkRequester_completion___block_invoke_87;
    v19[3] = &unk_1E81F60F0;
    objc_copyWeak(&v21, &location);
    v20 = completionCopy;
    v9 = [requesterCopy resolveMapItemHandleData:mapItemHandle dropAnalyticsSessionID:0 completion:v19];

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

- (void)setMapItem:(id)item
{
  itemCopy = item;
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MapsSuggestionsMapItemConvertIfNeeded(itemCopy);
    mapItem = selfCopy->_mapItem;
    selfCopy->_mapItem = v5;
  }

  objc_sync_exit(selfCopy);
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [objc_opt_class() description];
  [v3 appendFormat:@"\n -- %@ -- \n", v4];

  type = [(MapsSuggestionsLocationOfInterest *)self type];
  if ((type + 1) > 4)
  {
    v6 = @"Home";
  }

  else
  {
    v6 = off_1E81F6CF0[type + 1];
  }

  [v3 appendFormat:@" type:               %@ \n", v6];
  preferredName = [(MapsSuggestionsLocationOfInterest *)self preferredName];
  [v3 appendFormat:@" preferredName:      %@ \n", preferredName];

  predictedStartDate = [(MapsSuggestionsLocationOfInterest *)self predictedStartDate];
  v9 = MapsSuggestionsAMPMStringFromDate(predictedStartDate);
  [v3 appendFormat:@" predictedStartDate: %@ \n", v9];

  predictedEndDate = [(MapsSuggestionsLocationOfInterest *)self predictedEndDate];
  v11 = MapsSuggestionsAMPMStringFromDate(predictedEndDate);
  [v3 appendFormat:@" predictedEndDate:   %@ \n", v11];

  [(MapsSuggestionsLocationOfInterest *)self probability];
  [v3 appendFormat:@" probability:        %g \n", v12];
  identifierString = [(MapsSuggestionsLocationOfInterest *)self identifierString];
  [v3 appendFormat:@" UUID:               %@ \n", identifierString];

  customLabel = [(MapsSuggestionsLocationOfInterest *)self customLabel];
  [v3 appendFormat:@" customLabel:        %@ \n", customLabel];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MapsSuggestionsLocationOfInterest visitCount](self, "visitCount")}];
  [v3 appendFormat:@" visitCount:         %@ \n", v15];

  isLOIFromMeCard = [(MapsSuggestionsLocationOfInterest *)self isLOIFromMeCard];
  v17 = @"NO";
  if (isLOIFromMeCard)
  {
    v17 = @"YES";
  }

  [v3 appendFormat:@" fromMeCard?:        %@ \n", v17];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v3];

  return v18;
}

- (MapsSuggestionsLocationOfInterest)initWithLOI:(id)i
{
  iCopy = i;
  v51.receiver = self;
  v51.super_class = MapsSuggestionsLocationOfInterest;
  v5 = [(MapsSuggestionsLocationOfInterest *)&v51 init];
  if (v5)
  {
    mapItem = [iCopy mapItem];

    if (mapItem)
    {
      mapItem2 = [iCopy mapItem];
      geoMapItemHandle = [mapItem2 geoMapItemHandle];
      mapItemHandle = v5->_mapItemHandle;
      v5->_mapItemHandle = geoMapItemHandle;

      mapItem3 = [iCopy mapItem];
      extendedAttributes = [mapItem3 extendedAttributes];
      addressIdentifier = [extendedAttributes addressIdentifier];
      addressIdentifier = v5->_addressIdentifier;
      v5->_addressIdentifier = addressIdentifier;
    }

    identifier = [iCopy identifier];
    identifierUUID = v5->_identifierUUID;
    v5->_identifierUUID = identifier;

    identifier2 = [iCopy identifier];
    uUIDString = [identifier2 UUIDString];
    identifierString = v5->_identifierString;
    v5->_identifierString = uUIDString;

    preferredName = [iCopy preferredName];
    preferredName = v5->_preferredName;
    v5->_preferredName = preferredName;

    customLabel = [iCopy customLabel];
    customLabel = v5->_customLabel;
    v5->_customLabel = customLabel;

    v5->_isLOIFromMeCard = [iCopy typeSource] & 1;
    type = [iCopy type];
    if ((type + 1) >= 5)
    {
      v24 = 0;
    }

    else
    {
      v24 = type;
    }

    v5->_type = v24;
    visits = [iCopy visits];
    v5->_visitCount = [visits count];

    visits2 = [iCopy visits];
    firstObject = [visits2 firstObject];
    entryDate = [firstObject entryDate];
    firstVisit = v5->_firstVisit;
    v5->_firstVisit = entryDate;

    visits3 = [iCopy visits];
    lastObject = [visits3 lastObject];
    entryDate2 = [lastObject entryDate];
    lastVisit = v5->_lastVisit;
    v5->_lastVisit = entryDate2;

    location = [iCopy location];
    [location latitude];
    v36 = v35;
    [location longitude];
    v38 = CLLocationCoordinate2DMake(v36, v37);
    v39 = objc_alloc(MEMORY[0x1E6985C40]);
    [location altitude];
    v41 = v40;
    [location horizontalUncertainty];
    v43 = v42;
    [location verticalUncertainty];
    v45 = v44;
    date = [location date];
    v47 = [v39 initWithCoordinate:date altitude:v38.latitude horizontalAccuracy:v38.longitude verticalAccuracy:v41 timestamp:{v43, v45}];
    location = v5->_location;
    v5->_location = v47;

    v49 = v5;
  }

  return v5;
}

- (MapsSuggestionsLocationOfInterest)initWithLOI:(id)i predictedDateInterval:(id)interval probability:(double)probability predictionSources:(id)sources
{
  intervalCopy = interval;
  sourcesCopy = sources;
  iCopy = i;
  v13 = [[MapsSuggestionsLocationOfInterest alloc] initWithLOI:iCopy];

  if (v13)
  {
    startDate = [intervalCopy startDate];
    date = [startDate date];
    predictedStartDate = v13->_predictedStartDate;
    v13->_predictedStartDate = date;

    endDate = [intervalCopy endDate];
    date2 = [endDate date];
    predictedEndDate = v13->_predictedEndDate;
    v13->_predictedEndDate = date2;

    v13->_probability = probability;
    objc_storeStrong(&v13->_predictionSources, sources);
    v20 = v13;
  }

  return v13;
}

@end