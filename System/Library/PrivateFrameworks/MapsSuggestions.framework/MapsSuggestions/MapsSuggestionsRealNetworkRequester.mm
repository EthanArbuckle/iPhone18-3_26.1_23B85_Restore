@interface MapsSuggestionsRealNetworkRequester
- (BOOL)ETAFromWaypoint:(id)waypoint toWaypoint:(id)toWaypoint transportType:(int)type arrivalDate:(id)date automobileOptions:(id)options completion:(id)completion;
- (BOOL)canonicalLocalSearchPostalAddress:(id)address completion:(id)completion;
- (BOOL)composedWaypointForAddressString:(id)string completion:(id)completion;
- (BOOL)composedWaypointForCurrentLocation:(id)location completion:(id)completion;
- (BOOL)composedWaypointForLocation:(id)location completion:(id)completion;
- (BOOL)composedWaypointForLocation:(id)location mapItem:(id)item completion:(id)completion;
- (BOOL)composedWaypointForMapItem:(id)item completion:(id)completion;
- (BOOL)drivingETAFromLocation:(id)location toLocation:(id)toLocation arrivalDate:(id)date automobileOptions:(id)options completion:(id)completion;
- (BOOL)forwardGeocodeAddressString:(id)string completion:(id)completion;
- (BOOL)forwardGeocodePostalAddress:(id)address completion:(id)completion;
- (BOOL)placeForMuid:(id)muid completion:(id)completion;
- (BOOL)placeRefinementForAddress:(id)address completion:(id)completion;
- (BOOL)placeRefinementForCoordinate:(id)coordinate address:(id)address completion:(id)completion;
- (BOOL)resolveMapItemHandleData:(id)data dropAnalyticsSessionID:(BOOL)d completion:(id)completion;
- (BOOL)reverseGeocodeCoordinate:(id)coordinate shiftIfNeeded:(BOOL)needed completion:(id)completion;
- (BOOL)routeForWaypoints:(id)waypoints currentLocation:(id)location routeAttributes:(id)attributes feedback:(id)feedback completion:(id)completion;
- (BOOL)searchPOIWithName:(id)name ofPOICategory:(id)category withinVenue:(id)venue maxResults:(unint64_t)results completion:(id)completion;
- (BOOL)searchString:(id)string maxResults:(unsigned int)results completion:(id)completion;
- (BOOL)searchWithAirportCode:(id)code terminal:(id)terminal gate:(id)gate completion:(id)completion;
- (NSString)uniqueName;
- (id)initFromResourceDepot:(id)depot;
@end

@implementation MapsSuggestionsRealNetworkRequester

- (id)initFromResourceDepot:(id)depot
{
  v4.receiver = self;
  v4.super_class = MapsSuggestionsRealNetworkRequester;
  return [(MapsSuggestionsRealNetworkRequester *)&v4 init];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)forwardGeocodePostalAddress:(id)address completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  completionCopy = completion;
  if (!completionCopy)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v18 = 1024;
      v19 = 69;
      v20 = 2082;
      v21 = "[MapsSuggestionsRealNetworkRequester forwardGeocodePostalAddress:completion:]";
      v22 = 2082;
      v23 = "nil == (completion)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v7 = GEOFindOrCreateLog();
  v8 = v7;
  if (!addressCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v18 = 1024;
      v19 = 70;
      v20 = 2082;
      v21 = "[MapsSuggestionsRealNetworkRequester forwardGeocodePostalAddress:completion:]";
      v22 = 2082;
      v23 = "nil == (postalAddress)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an address";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = addressCopy;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Making request: fwd-geo for '%@'", &v16, 0xCu);
  }

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208]2 defaultTraits];

  v12 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v12];

  v13 = 1;
  v8 = [mEMORY[0x1E69A2208] ticketForForwardGeocodePostalAddress:addressCopy maxResults:1 traits:defaultTraits];

  [v8 submitWithHandler:completionCopy networkActivity:0];
LABEL_12:

  return v13;
}

- (BOOL)forwardGeocodeAddressString:(id)string completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  completionCopy = completion;
  if (!completionCopy)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v18 = 1024;
      v19 = 85;
      v20 = 2082;
      v21 = "[MapsSuggestionsRealNetworkRequester forwardGeocodeAddressString:completion:]";
      v22 = 2082;
      v23 = "nil == (completion)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v7 = GEOFindOrCreateLog();
  v8 = v7;
  if (!stringCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v18 = 1024;
      v19 = 86;
      v20 = 2082;
      v21 = "[MapsSuggestionsRealNetworkRequester forwardGeocodeAddressString:completion:]";
      v22 = 2082;
      v23 = "nil == (addressString)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an address string";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = stringCopy;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Making request: fwd-geo for '%@'", &v16, 0xCu);
  }

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208]2 defaultTraits];

  v12 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v12];

  v13 = 1;
  v8 = [mEMORY[0x1E69A2208] ticketForForwardGeocodeString:stringCopy maxResults:1 traits:defaultTraits];

  [v8 submitWithHandler:completionCopy networkActivity:0];
LABEL_12:

  return v13;
}

- (BOOL)canonicalLocalSearchPostalAddress:(id)address completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  completionCopy = completion;
  if (!completionCopy)
  {
    autoupdatingCurrentLocale = GEOFindOrCreateLog();
    if (os_log_type_enabled(autoupdatingCurrentLocale, OS_LOG_TYPE_ERROR))
    {
      v23 = 136446978;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v25 = 1024;
      v26 = 101;
      v27 = 2082;
      v28 = "[MapsSuggestionsRealNetworkRequester canonicalLocalSearchPostalAddress:completion:]";
      v29 = 2082;
      v30 = "nil == (completion)";
      v21 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&dword_1C5126000, autoupdatingCurrentLocale, OS_LOG_TYPE_ERROR, v21, &v23, 0x26u);
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  if (!addressCopy)
  {
    autoupdatingCurrentLocale = GEOFindOrCreateLog();
    if (os_log_type_enabled(autoupdatingCurrentLocale, OS_LOG_TYPE_ERROR))
    {
      v23 = 136446978;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v25 = 1024;
      v26 = 102;
      v27 = 2082;
      v28 = "[MapsSuggestionsRealNetworkRequester canonicalLocalSearchPostalAddress:completion:]";
      v29 = 2082;
      v30 = "nil == (postalAddress)";
      v21 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an address";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v8 = objc_alloc(MEMORY[0x1E69A1B40]);
  languageCode = [autoupdatingCurrentLocale languageCode];
  regionCode = [autoupdatingCurrentLocale regionCode];
  languageCode2 = [autoupdatingCurrentLocale languageCode];
  v12 = [v8 initWithCNPostalAddress:addressCopy language:languageCode country:regionCode phoneticLocale:languageCode2];

  v13 = [v12 fullAddressWithMultiline:0];
  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412290;
    v24 = v13;
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Making request: canonical for '%@'", &v23, 0xCu);
  }

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208]2 defaultTraits];

  v18 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v18];

  v19 = [mEMORY[0x1E69A2208] ticketForCanonicalLocationSearchQueryString:v13 traits:defaultTraits];

  [v19 submitWithHandler:completionCopy networkActivity:0];
  v20 = 1;
LABEL_12:

  return v20;
}

- (BOOL)reverseGeocodeCoordinate:(id)coordinate shiftIfNeeded:(BOOL)needed completion:(id)completion
{
  neededCopy = needed;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v21 = 1024;
      *v22 = 124;
      *&v22[4] = 2082;
      *&v22[6] = "[MapsSuggestionsRealNetworkRequester reverseGeocodeCoordinate:shiftIfNeeded:completion:]";
      v23 = 2082;
      v24 = "nil == (completion)";
      v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_15:
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, v17, &v19, 0x26u);
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  if (fabs(var1) > 180.0 || fabs(var0) > 90.0)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v21 = 1024;
      *v22 = 125;
      *&v22[4] = 2082;
      *&v22[6] = "[MapsSuggestionsRealNetworkRequester reverseGeocodeCoordinate:shiftIfNeeded:completion:]";
      v23 = 2082;
      v24 = "!GEOCoordinate2DIsValid(coordinate)";
      v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a valid coordinate";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (GEOLocationCoordinateIsNullIsland(var0, var1))
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_FAULT, "Attempting RevGeo with null coordinates", &v19, 2u);
    }
  }

  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134218240;
    v20 = *&var0;
    v21 = 2048;
    *v22 = var1;
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Making request: rev-geo for <%.6f,%.6f>", &v19, 0x16u);
  }

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208]2 defaultTraits];

  v14 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v14];

  v15 = [mEMORY[0x1E69A2208] ticketForReverseGeocodeCoordinate:neededCopy shiftLocationsIfNeeded:defaultTraits traits:{var0, var1}];

  [v15 submitWithHandler:completionCopy networkActivity:0];
  v16 = 1;
LABEL_17:

  return v16;
}

- (BOOL)placeRefinementForCoordinate:(id)coordinate address:(id)address completion:(id)completion
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v22 = *MEMORY[0x1E69E9840];
  coordinateCopy = coordinate;
  addressCopy = address;
  completionCopy = completion;
  v10 = GEOFindOrCreateLog();
  v11 = v10;
  if (completionCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v19 = *&var0;
      v20 = 2048;
      *v21 = var1;
      *&v21[8] = 2112;
      *&v21[10] = addressCopy;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "Making place refinement: <%.6f,%.6f>, %@", buf, 0x20u);
    }

    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
    defaultTraits = [mEMORY[0x1E69A2208]2 defaultTraits];

    v15 = GEOConfigGetString();
    [defaultTraits setAppIdentifier:v15];

    v11 = [mEMORY[0x1E69A2208] ticketForPlaceRefinementRequestWithCoordinate:&coordinateCopy addressLine:addressCopy placeName:0 traits:defaultTraits];

    [v11 submitWithHandler:completionCopy networkActivity:0];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
    v20 = 1024;
    *v21 = 151;
    *&v21[4] = 2082;
    *&v21[6] = "[MapsSuggestionsRealNetworkRequester placeRefinementForCoordinate:address:completion:]";
    *&v21[14] = 2082;
    *&v21[16] = "nil == (completion)";
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
  }

  return completionCopy != 0;
}

- (BOOL)placeRefinementForAddress:(id)address completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  completionCopy = completion;
  v7 = GEOFindOrCreateLog();
  v8 = v7;
  if (completionCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = addressCopy;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Making place refinement with address: %@", &v14, 0xCu);
    }

    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
    defaultTraits = [mEMORY[0x1E69A2208]2 defaultTraits];

    v12 = GEOConfigGetString();
    [defaultTraits setAppIdentifier:v12];

    v8 = [mEMORY[0x1E69A2208] ticketForPlaceRefinementRequestWithCoordinate:0 addressLine:addressCopy placeName:0 traits:defaultTraits];

    [v8 submitWithHandler:completionCopy networkActivity:0];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14 = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
    v16 = 1024;
    v17 = 163;
    v18 = 2082;
    v19 = "[MapsSuggestionsRealNetworkRequester placeRefinementForAddress:completion:]";
    v20 = 2082;
    v21 = "nil == (completion)";
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", &v14, 0x26u);
  }

  return completionCopy != 0;
}

- (BOOL)placeForMuid:(id)muid completion:(id)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69A2208];
  completionCopy = completion;
  muidCopy = muid;
  sharedService = [v5 sharedService];
  v15[0] = muidCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];

  defaultTraits = [mEMORY[0x1E69A2208] defaultTraits];

  v12 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v12];

  v13 = [sharedService ticketForIdentifiers:v9 traits:defaultTraits];

  [v13 submitWithHandler:completionCopy networkActivity:0];
  return 1;
}

- (BOOL)searchString:(id)string maxResults:(unsigned int)results completion:(id)completion
{
  v6 = *&results;
  v26 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  completionCopy = completion;
  if (!completionCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v20 = 1024;
      v21 = 185;
      v22 = 2082;
      v23 = "[MapsSuggestionsRealNetworkRequester searchString:maxResults:completion:]";
      v24 = 2082;
      v25 = "nil == (completion)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, v16, &v18, 0x26u);
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v9 = GEOFindOrCreateLog();
  v10 = v9;
  if (!stringCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v20 = 1024;
      v21 = 186;
      v22 = 2082;
      v23 = "[MapsSuggestionsRealNetworkRequester searchString:maxResults:completion:]";
      v24 = 2082;
      v25 = "nil == (searchString)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an address string";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412290;
    v19 = stringCopy;
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Making request: search for '%@'", &v18, 0xCu);
  }

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208]2 defaultTraits];

  v14 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v14];

  v10 = [mEMORY[0x1E69A2208] ticketForSearchQuery:stringCopy completionItem:0 maxResults:v6 traits:defaultTraits searchSessionData:0];

  [v10 submitWithHandler:completionCopy networkActivity:0];
  v15 = 1;
LABEL_12:

  return v15;
}

- (BOOL)searchPOIWithName:(id)name ofPOICategory:(id)category withinVenue:(id)venue maxResults:(unint64_t)results completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  categoryCopy = category;
  venueCopy = venue;
  completionCopy = completion;
  if (!completionCopy)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v32 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v33 = 1024;
      *v34 = 208;
      *&v34[4] = 2082;
      *&v34[6] = "[MapsSuggestionsRealNetworkRequester searchPOIWithName:ofPOICategory:withinVenue:maxResults:completion:]";
      *&v34[14] = 2082;
      *&v34[16] = "nil == (completion)";
      v28 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_15:
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, v28, buf, 0x26u);
    }

LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v15 = GEOFindOrCreateLog();
  v16 = v15;
  if (!nameCopy)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v32 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v33 = 1024;
      *v34 = 209;
      *&v34[4] = 2082;
      *&v34[6] = "[MapsSuggestionsRealNetworkRequester searchPOIWithName:ofPOICategory:withinVenue:maxResults:completion:]";
      *&v34[14] = 2082;
      *&v34[16] = "nil == (searchString)";
      v28 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an address string";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v32 = nameCopy;
    v33 = 2112;
    *v34 = categoryCopy;
    *&v34[8] = 2048;
    *&v34[10] = [venueCopy venueID];
    _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "Making request: search POI for '%@' (category=%@ venue=%llu)", buf, 0x20u);
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v17 = [objc_alloc(MEMORY[0x1E69A2498]) initWithResultTypes:2];
  [v16 addObject:v17];
  if (categoryCopy)
  {
    v18 = objc_alloc(MEMORY[0x1E69A2328]);
    v30 = categoryCopy;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    v20 = [v18 initWithCategoriesToInclude:v19 categoriesToExclude:0];

    [v16 addObject:v20];
  }

  if (venueCopy && [venueCopy _hasFeatureID])
  {
    v21 = [objc_alloc(MEMORY[0x1E69A2760]) initWithIdentifier:venueCopy];
    [v16 addObject:v21];
  }

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208]2 defaultTraits];

  v25 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v25];

  v26 = [mEMORY[0x1E69A2208] ticketForSearchQuery:nameCopy filters:v16 maxResults:results traits:defaultTraits searchSessionData:0];

  [v26 submitWithHandler:completionCopy networkActivity:0];
  v27 = 1;
LABEL_17:

  return v27;
}

- (BOOL)searchWithAirportCode:(id)code terminal:(id)terminal gate:(id)gate completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  terminalCopy = terminal;
  gateCopy = gate;
  completionCopy = completion;
  if (!completionCopy)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = 136446978;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v24 = 1024;
      *v25 = 251;
      *&v25[4] = 2082;
      *&v25[6] = "[MapsSuggestionsRealNetworkRequester searchWithAirportCode:terminal:gate:completion:]";
      *&v25[14] = 2082;
      *&v25[16] = "nil == (completion)";
      v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, v20, &v22, 0x26u);
    }

LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v13 = GEOFindOrCreateLog();
  v14 = v13;
  if (!codeCopy)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v22 = 136446978;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v24 = 1024;
      *v25 = 252;
      *&v25[4] = 2082;
      *&v25[6] = "[MapsSuggestionsRealNetworkRequester searchWithAirportCode:terminal:gate:completion:]";
      *&v25[14] = 2082;
      *&v25[16] = "nil == (airportCode)";
      v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires at least an airportCode";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v22 = 138412802;
    v23 = codeCopy;
    v24 = 2112;
    *v25 = terminalCopy;
    *&v25[8] = 2112;
    *&v25[10] = gateCopy;
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Making request: airport for {'%@', '%@', '%@'}", &v22, 0x20u);
  }

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208]2 defaultTraits];

  v18 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v18];

  v14 = [mEMORY[0x1E69A2208] ticketForAirportCode:codeCopy terminalCode:terminalCopy gateCode:gateCopy traits:defaultTraits];

  [v14 submitWithHandler:completionCopy networkActivity:0];
  v19 = 1;
LABEL_12:

  return v19;
}

- (BOOL)resolveMapItemHandleData:(id)data dropAnalyticsSessionID:(BOOL)d completion:(id)completion
{
  dCopy = d;
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  if (!completionCopy)
  {
    defaultTraits = GEOFindOrCreateLog();
    if (os_log_type_enabled(defaultTraits, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v21 = 1024;
      v22 = 268;
      v23 = 2082;
      v24 = "[MapsSuggestionsRealNetworkRequester resolveMapItemHandleData:dropAnalyticsSessionID:completion:]";
      v25 = 2082;
      v26 = "nil == (completion)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&dword_1C5126000, defaultTraits, OS_LOG_TYPE_ERROR, v15, buf, 0x26u);
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v9 = GEOFindOrCreateLog();
  defaultTraits = v9;
  if (!dataCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v21 = 1024;
      v22 = 269;
      v23 = 2082;
      v24 = "[MapsSuggestionsRealNetworkRequester resolveMapItemHandleData:dropAnalyticsSessionID:completion:]";
      v25 = 2082;
      v26 = "nil == (mapItemHandleData)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a MapItemHandle data";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = dataCopy;
    _os_log_impl(&dword_1C5126000, defaultTraits, OS_LOG_TYPE_DEBUG, "Making request: place-refinement for %@", buf, 0xCu);
  }

  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208] defaultTraits];

  v12 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v12];

  [defaultTraits setAnalyticsOptOut:dCopy];
  mEMORY[0x1E69A2208]2 = [MEMORY[0x1E69A2208] sharedService];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __98__MapsSuggestionsRealNetworkRequester_resolveMapItemHandleData_dropAnalyticsSessionID_completion___block_invoke;
  v17[3] = &unk_1E81F64A8;
  v18 = completionCopy;
  [mEMORY[0x1E69A2208]2 resolveMapItemFromHandle:dataCopy traits:defaultTraits completionHandler:v17];

  v14 = 1;
LABEL_12:

  return v14;
}

void __98__MapsSuggestionsRealNetworkRequester_resolveMapItemHandleData_dropAnalyticsSessionID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)composedWaypointForMapItem:(id)item completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  if (!completionCopy)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v23 = 1024;
      v24 = 294;
      v25 = 2082;
      v26 = "[MapsSuggestionsRealNetworkRequester composedWaypointForMapItem:completion:]";
      v27 = 2082;
      v28 = "nil == (completion)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, v16, buf, 0x26u);
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v7 = GEOFindOrCreateLog();
  v8 = v7;
  if (!itemCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v23 = 1024;
      v24 = 295;
      v25 = 2082;
      v26 = "[MapsSuggestionsRealNetworkRequester composedWaypointForMapItem:completion:]";
      v27 = 2082;
      v28 = "nil == (mapItem)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Making request: waypoint for mapitem", buf, 2u);
  }

  v9 = MapsSuggestionsNow();
  v10 = MEMORY[0x1E69A1CC8];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208] defaultTraits];

  v13 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v13];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__MapsSuggestionsRealNetworkRequester_composedWaypointForMapItem_completion___block_invoke;
  v18[3] = &unk_1E81F6458;
  v19 = v9;
  v20 = completionCopy;
  v8 = v9;
  v14 = [v10 composedWaypointForMapItem:itemCopy traits:defaultTraits clientAttributes:0 completionHandler:v18 networkActivityHandler:0];

  v15 = 1;
LABEL_12:

  return v15;
}

void __77__MapsSuggestionsRealNetworkRequester_composedWaypointForMapItem_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = MapsSuggestionsNow();
  [v7 timeIntervalSinceDate:*(a1 + 32)];
  v9 = v8;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Took %.2f seconds", &v11, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)composedWaypointForLocation:(id)location completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  completionCopy = completion;
  if (!completionCopy)
  {
    defaultTraits = GEOFindOrCreateLog();
    if (os_log_type_enabled(defaultTraits, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v18 = 1024;
      v19 = 316;
      v20 = 2082;
      v21 = "[MapsSuggestionsRealNetworkRequester composedWaypointForLocation:completion:]";
      v22 = 2082;
      v23 = "nil == (completion)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&dword_1C5126000, defaultTraits, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v7 = GEOFindOrCreateLog();
  defaultTraits = v7;
  if (!locationCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v18 = 1024;
      v19 = 317;
      v20 = 2082;
      v21 = "[MapsSuggestionsRealNetworkRequester composedWaypointForLocation:completion:]";
      v22 = 2082;
      v23 = "nil == (location)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = locationCopy;
    _os_log_impl(&dword_1C5126000, defaultTraits, OS_LOG_TYPE_DEBUG, "Making request: waypoint for location %@", &v16, 0xCu);
  }

  v9 = MEMORY[0x1E69A1CC8];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208] defaultTraits];

  v11 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v11];

  v12 = [v9 composedWaypointForLocation:locationCopy mapItem:0 traits:defaultTraits completionHandler:completionCopy networkActivityHandler:0];
  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)composedWaypointForLocation:(id)location mapItem:(id)item completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  itemCopy = item;
  completionCopy = completion;
  if (!completionCopy)
  {
    defaultTraits = GEOFindOrCreateLog();
    if (!os_log_type_enabled(defaultTraits, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v19 = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
    v21 = 1024;
    v22 = 334;
    v23 = 2082;
    v24 = "[MapsSuggestionsRealNetworkRequester composedWaypointForLocation:mapItem:completion:]";
    v25 = 2082;
    v26 = "nil == (completion)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_13:
    _os_log_impl(&dword_1C5126000, defaultTraits, OS_LOG_TYPE_ERROR, v17, &v19, 0x26u);
    goto LABEL_14;
  }

  if (!locationCopy)
  {
    defaultTraits = GEOFindOrCreateLog();
    if (!os_log_type_enabled(defaultTraits, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v19 = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
    v21 = 1024;
    v22 = 335;
    v23 = 2082;
    v24 = "[MapsSuggestionsRealNetworkRequester composedWaypointForLocation:mapItem:completion:]";
    v25 = 2082;
    v26 = "nil == (location)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location";
    goto LABEL_13;
  }

  v10 = GEOFindOrCreateLog();
  defaultTraits = v10;
  if (!itemCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v21 = 1024;
      v22 = 336;
      v23 = 2082;
      v24 = "[MapsSuggestionsRealNetworkRequester composedWaypointForLocation:mapItem:completion:]";
      v25 = 2082;
      v26 = "nil == (mapItem)";
      v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a map item";
      goto LABEL_13;
    }

LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412290;
    v20 = locationCopy;
    _os_log_impl(&dword_1C5126000, defaultTraits, OS_LOG_TYPE_DEBUG, "Making request: waypoint for location %@", &v19, 0xCu);
  }

  v12 = MEMORY[0x1E69A1CC8];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208] defaultTraits];

  v14 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v14];

  v15 = [v12 composedWaypointForLocation:locationCopy mapItem:itemCopy traits:defaultTraits completionHandler:completionCopy networkActivityHandler:0];
  v16 = 1;
LABEL_15:

  return v16;
}

- (BOOL)composedWaypointForCurrentLocation:(id)location completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  completionCopy = completion;
  if (!completionCopy)
  {
    defaultTraits = GEOFindOrCreateLog();
    if (os_log_type_enabled(defaultTraits, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v18 = 1024;
      v19 = 352;
      v20 = 2082;
      v21 = "[MapsSuggestionsRealNetworkRequester composedWaypointForCurrentLocation:completion:]";
      v22 = 2082;
      v23 = "nil == (completion)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&dword_1C5126000, defaultTraits, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v7 = GEOFindOrCreateLog();
  defaultTraits = v7;
  if (!locationCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v18 = 1024;
      v19 = 353;
      v20 = 2082;
      v21 = "[MapsSuggestionsRealNetworkRequester composedWaypointForCurrentLocation:completion:]";
      v22 = 2082;
      v23 = "nil == (location)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = locationCopy;
    _os_log_impl(&dword_1C5126000, defaultTraits, OS_LOG_TYPE_DEBUG, "Making request: waypoint for Currentlocation %@", &v16, 0xCu);
  }

  v9 = MEMORY[0x1E69A1CC8];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208] defaultTraits];

  v11 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v11];

  v12 = [v9 composedWaypointForCurrentLocation:locationCopy traits:defaultTraits completionHandler:completionCopy networkActivityHandler:0];
  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)composedWaypointForAddressString:(id)string completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  completionCopy = completion;
  if (!completionCopy)
  {
    defaultTraits = GEOFindOrCreateLog();
    if (os_log_type_enabled(defaultTraits, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v18 = 1024;
      v19 = 368;
      v20 = 2082;
      v21 = "[MapsSuggestionsRealNetworkRequester composedWaypointForAddressString:completion:]";
      v22 = 2082;
      v23 = "nil == (completion)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&dword_1C5126000, defaultTraits, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v7 = GEOFindOrCreateLog();
  defaultTraits = v7;
  if (!stringCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v18 = 1024;
      v19 = 369;
      v20 = 2082;
      v21 = "[MapsSuggestionsRealNetworkRequester composedWaypointForAddressString:completion:]";
      v22 = 2082;
      v23 = "nil == (addressString)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an address string";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = stringCopy;
    _os_log_impl(&dword_1C5126000, defaultTraits, OS_LOG_TYPE_DEBUG, "Making request: waypoint for address '%@'", &v16, 0xCu);
  }

  v9 = MEMORY[0x1E69A1CC8];
  mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
  defaultTraits = [mEMORY[0x1E69A2208] defaultTraits];

  v11 = GEOConfigGetString();
  [defaultTraits setAppIdentifier:v11];

  v12 = [v9 composedWaypointForAddressString:stringCopy traits:defaultTraits clientAttributes:0 completionHandler:completionCopy networkActivityHandler:0];
  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)drivingETAFromLocation:(id)location toLocation:(id)toLocation arrivalDate:(id)date automobileOptions:(id)options completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  optionsCopy = options;
  completionCopy = completion;
  v15 = MEMORY[0x1E69A1CC8];
  toLocationCopy = toLocation;
  locationCopy = location;
  v18 = [v15 alloc];
  [locationCopy coordinate];
  v20 = v19;
  v22 = v21;

  v23 = GEOLocationFromCLLocationCoordinate2D(v20, v22);
  v24 = [v18 initWithLocation:v23 isCurrentLocation:1];

  v25 = objc_alloc(MEMORY[0x1E69A1CC8]);
  [toLocationCopy coordinate];
  v27 = v26;
  v29 = v28;

  v30 = GEOLocationFromCLLocationCoordinate2D(v27, v29);
  v31 = [v25 initWithLocation:v30 isCurrentLocation:0];

  if (!v24)
  {
    v33 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v36 = 136446978;
      v37 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v38 = 1024;
      v39 = 419;
      v40 = 2082;
      v41 = "[MapsSuggestionsRealNetworkRequester drivingETAFromLocation:toLocation:arrivalDate:automobileOptions:completion:]";
      v42 = 2082;
      v43 = "nil == (here)";
      v34 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an origin waypoint";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v33, OS_LOG_TYPE_ERROR, v34, &v36, 0x26u);
    }

LABEL_9:

    v32 = 0;
    goto LABEL_10;
  }

  if (!v31)
  {
    v33 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v36 = 136446978;
      v37 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v38 = 1024;
      v39 = 420;
      v40 = 2082;
      v41 = "[MapsSuggestionsRealNetworkRequester drivingETAFromLocation:toLocation:arrivalDate:automobileOptions:completion:]";
      v42 = 2082;
      v43 = "nil == (there)";
      v34 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destination waypoint";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v32 = [(MapsSuggestionsRealNetworkRequester *)self ETAFromWaypoint:v24 toWaypoint:v31 transportType:0 arrivalDate:dateCopy automobileOptions:optionsCopy completion:completionCopy];
LABEL_10:

  return v32;
}

- (BOOL)ETAFromWaypoint:(id)waypoint toWaypoint:(id)toWaypoint transportType:(int)type arrivalDate:(id)date automobileOptions:(id)options completion:(id)completion
{
  v11 = *&type;
  v78[2] = *MEMORY[0x1E69E9840];
  waypointCopy = waypoint;
  toWaypointCopy = toWaypoint;
  dateCopy = date;
  optionsCopy = options;
  completionCopy = completion;
  if (!completionCopy)
  {
    v19 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446978;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
    *&buf[12] = 1024;
    *&buf[14] = 437;
    *&buf[18] = 2082;
    *&buf[20] = "[MapsSuggestionsRealNetworkRequester ETAFromWaypoint:toWaypoint:transportType:arrivalDate:automobileOptions:completion:]";
    *&buf[28] = 2082;
    *&buf[30] = "nil == (completion)";
    v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_15:
    _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x26u);
    goto LABEL_16;
  }

  if (!waypointCopy)
  {
    v19 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446978;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
    *&buf[12] = 1024;
    *&buf[14] = 438;
    *&buf[18] = 2082;
    *&buf[20] = "[MapsSuggestionsRealNetworkRequester ETAFromWaypoint:toWaypoint:transportType:arrivalDate:automobileOptions:completion:]";
    *&buf[28] = 2082;
    *&buf[30] = "nil == (hereWaypoint)";
    v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an origin waypoint";
    goto LABEL_15;
  }

  v18 = GEOFindOrCreateLog();
  v19 = v18;
  if (!toWaypointCopy)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      *&buf[12] = 1024;
      *&buf[14] = 439;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsRealNetworkRequester ETAFromWaypoint:toWaypoint:transportType:arrivalDate:automobileOptions:completion:]";
      *&buf[28] = 2082;
      *&buf[30] = "nil == (thereWaypoint)";
      v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destination waypoint";
      goto LABEL_15;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_35;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "Making request: eta", buf, 2u);
  }

  v19 = objc_alloc_init(MEMORY[0x1E69A2500]);
  [v19 setMainTransportType:v11];
  if (!v11)
  {
    if (optionsCopy)
    {
      [v19 setAutomobileOptions:optionsCopy];
    }

    else
    {
      v58 = objc_alloc_init(MEMORY[0x1E69A1B90]);
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v23 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
      path = [v23 path];

      LODWORD(v23) = _CFPreferencesGetAppBooleanValueWithContainer() == 0;
      if (v23)
      {
        v25 = 3;
      }

      else
      {
        v25 = 1;
      }

      [v58 setTrafficType:v25];
      userPreferences = [v58 userPreferences];
      [userPreferences setAvoidTolls:0];

      userPreferences2 = [v58 userPreferences];
      [userPreferences2 setAvoidHighways:0];

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v29 = [defaultManager2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
      path2 = [v29 path];

      LOBYTE(v29) = _CFPreferencesGetAppBooleanValueWithContainer() == 0;
      if ((v29 & 1) == 0)
      {
        userPreferences3 = [v58 userPreferences];
        [userPreferences3 setAvoidTolls:1];
      }

      v32 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        userPreferences4 = [v58 userPreferences];
        avoidTolls = [userPreferences4 avoidTolls];
        v35 = @"NO";
        if (avoidTolls)
        {
          v35 = @"YES";
        }

        *buf = 138412290;
        *&buf[4] = v35;
        _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_DEBUG, "Avoid Tolls from groupPreferences: %@", buf, 0xCu);
      }

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v37 = [defaultManager3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
      path3 = [v37 path];

      LOBYTE(v37) = _CFPreferencesGetAppBooleanValueWithContainer() == 0;
      if ((v37 & 1) == 0)
      {
        userPreferences5 = [v58 userPreferences];
        [userPreferences5 setAvoidHighways:1];
      }

      v40 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        userPreferences6 = [v58 userPreferences];
        avoidHighways = [userPreferences6 avoidHighways];
        v43 = @"NO";
        if (avoidHighways)
        {
          v43 = @"YES";
        }

        *buf = 138412290;
        *&buf[4] = v43;
        _os_log_impl(&dword_1C5126000, v40, OS_LOG_TYPE_DEBUG, "Avoid Highways from groupPreferences: %@", buf, 0xCu);
      }

      [v19 setAutomobileOptions:v58];
    }

    v44 = objc_alloc(MEMORY[0x1E69B3750]);
    v78[0] = waypointCopy;
    v78[1] = toWaypointCopy;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
    v46 = [v44 initWithAttributes:v19 waypoints:v45];

    v19 = v46;
  }

  v47 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__5;
  *&buf[32] = __Block_byref_object_dispose__5;
  v77 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x3032000000;
  v73[3] = __Block_byref_object_copy__5;
  v73[4] = __Block_byref_object_dispose__5;
  v74 = 0;
  dispatch_group_enter(v47);
  v48 = MEMORY[0x1E69E96A0];
  v49 = MEMORY[0x1E69E96A0];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __121__MapsSuggestionsRealNetworkRequester_ETAFromWaypoint_toWaypoint_transportType_arrivalDate_automobileOptions_completion___block_invoke;
  v70[3] = &unk_1E81F64D0;
  v72 = buf;
  v50 = v47;
  v71 = v50;
  [v19 buildRouteAttributes:v48 result:v70];

  v51 = objc_alloc(MEMORY[0x1E69B3738]);
  v52 = [MEMORY[0x1E695DF00] now];
  v53 = [v51 initWithPurpose:1 reason:@"MapsSuggestions QuickETA" date:v52];

  dispatch_group_enter(v50);
  v75[0] = waypointCopy;
  v75[1] = toWaypointCopy;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __121__MapsSuggestionsRealNetworkRequester_ETAFromWaypoint_toWaypoint_transportType_arrivalDate_automobileOptions_completion___block_invoke_2;
  v67[3] = &unk_1E81F64F8;
  v69 = v73;
  v55 = v50;
  v68 = v55;
  [v53 fetchFamiliarRouteWithWaypoints:v54 handler:v67];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__MapsSuggestionsRealNetworkRequester_ETAFromWaypoint_toWaypoint_transportType_arrivalDate_automobileOptions_completion___block_invoke_3;
  block[3] = &unk_1E81F6520;
  v60 = waypointCopy;
  v66 = v11;
  v61 = toWaypointCopy;
  v64 = buf;
  v65 = v73;
  v62 = dateCopy;
  v63 = completionCopy;
  v56 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(v55, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v73, 8);
  _Block_object_dispose(buf, 8);

  v21 = 1;
LABEL_35:

  return v21;
}

void __121__MapsSuggestionsRealNetworkRequester_ETAFromWaypoint_toWaypoint_transportType_arrivalDate_automobileOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __121__MapsSuggestionsRealNetworkRequester_ETAFromWaypoint_toWaypoint_transportType_arrivalDate_automobileOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __121__MapsSuggestionsRealNetworkRequester_ETAFromWaypoint_toWaypoint_transportType_arrivalDate_automobileOptions_completion___block_invoke_3(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEFAULT, "Sending Quick ETA request.", buf, 2u);
  }

  v3 = MEMORY[0x1E69A23D8];
  v4 = *(a1 + 32);
  v13[0] = *(a1 + 40);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v6 = *(a1 + 80);
  v7 = [*(*(*(a1 + 64) + 8) + 40) automobileOptions];
  v8 = *(*(*(a1 + 72) + 8) + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __121__MapsSuggestionsRealNetworkRequester_ETAFromWaypoint_toWaypoint_transportType_arrivalDate_automobileOptions_completion___block_invoke_42;
  v10[3] = &unk_1E81F5230;
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v3 requestTrafficAndETAFromWaypoint:v4 toWaypoints:v5 transportType:v6 automobileOptions:v7 familiarRoute:v8 arrivalDate:v9 handler:v10];
}

void __121__MapsSuggestionsRealNetworkRequester_ETAFromWaypoint_toWaypoint_transportType_arrivalDate_automobileOptions_completion___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 count])
  {
    v6 = [MapsSuggestionsTrafficAndETAResult alloc];
    v7 = [v9 firstObject];
    v8 = [(MapsSuggestionsTrafficAndETAResult *)v6 initWithGEOTrafficAndETAResult:v7];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)routeForWaypoints:(id)waypoints currentLocation:(id)location routeAttributes:(id)attributes feedback:(id)feedback completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  waypointsCopy = waypoints;
  locationCopy = location;
  attributesCopy = attributes;
  feedbackCopy = feedback;
  completionCopy = completion;
  if (waypointsCopy)
  {
    v16 = objc_alloc_init(MEMORY[0x1E69A1D30]);
    [v16 setCallbackQueue:MEMORY[0x1E69E96A0]];
    [v16 setRequestType:1];
    -[NSObject setTransportType:](v16, "setTransportType:", [attributesCopy mainTransportType]);
    [v16 setWaypoints:waypointsCopy];
    [v16 setMaxRouteCount:1];
    [v16 setCurrentLocation:locationCopy];
    [v16 setRouteAttributes:attributesCopy];
    v17 = [objc_alloc(MEMORY[0x1E69B3738]) initWithPurpose:0 reason:@"MapsSuggestions Route" date:0];
    [v16 setFamiliarRouteProvider:v17];

    [feedbackCopy setRequestingAppId:@"com.apple.MapsSuggestions"];
    [v16 setFeedback:feedbackCopy];
    v18 = [objc_alloc(MEMORY[0x1E69A1B68]) initWithProxiedApplicationBundleId:@"com.apple.Maps"];
    [v16 setAuditToken:v18];

    mEMORY[0x1E69A1D18] = [MEMORY[0x1E69A1D18] sharedService];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __109__MapsSuggestionsRealNetworkRequester_routeForWaypoints_currentLocation_routeAttributes_feedback_completion___block_invoke;
    v22[3] = &unk_1E81F6548;
    v23 = completionCopy;
    v20 = [mEMORY[0x1E69A1D18] requestDirections:v16 handler:v22];
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealNetworkRequester.m";
      v26 = 1024;
      v27 = 517;
      v28 = 2082;
      v29 = "[MapsSuggestionsRealNetworkRequester routeForWaypoints:currentLocation:routeAttributes:feedback:completion:]";
      v30 = 2082;
      v31 = "nil == (routeWaypoints)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Waypoints should not be nil!", buf, 0x26u);
    }
  }

  return waypointsCopy != 0;
}

uint64_t __109__MapsSuggestionsRealNetworkRequester_routeForWaypoints_currentLocation_routeAttributes_feedback_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a4, a5, a6);
  }

  return result;
}

@end