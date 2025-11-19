@interface MapsSuggestionsFlightUpdater
- (BOOL)_updateGateIfNeededForEntry:(void *)a3 handler:;
- (MapsSuggestionsFlightUpdater)initWithFlightRequester:(id)a3 networkRequester:(id)a4;
- (char)updateFlightsForEntry:(id)a3 handler:(id)a4;
- (id).cxx_construct;
- (id)initFromResourceDepot:(id)a3;
- (uint64_t)_getGateMapItemForFlightEntry:(void *)a3 handler:;
- (uint64_t)_getTerminalMapItemForFlightEntry:(void *)a3 handler:;
- (void)_updateFlightsForEntry:(void *)a3 handler:;
@end

@implementation MapsSuggestionsFlightUpdater

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (MapsSuggestionsFlightUpdater)initWithFlightRequester:(id)a3 networkRequester:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = MapsSuggestionsFlightUpdater;
  v9 = [(MapsSuggestionsFlightUpdater *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_flightRequester, a3);
    objc_storeStrong(&v10->_networkRequester, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(&v17, @"MapsSuggestionsFlightQueue", v11);
    v12 = v17;
    v17 = 0;
    innerQueue = v10->_queue._innerQueue;
    v10->_queue._innerQueue = v12;

    v14 = v18;
    v18 = 0;
    name = v10->_queue._name;
    v10->_queue._name = v14;
  }

  return v10;
}

- (id)initFromResourceDepot:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlight.mm";
      v15 = 1024;
      v16 = 60;
      v17 = 2082;
      v18 = "[MapsSuggestionsFlightUpdater initFromResourceDepot:]";
      v19 = 2082;
      v20 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!", &v13, 0x26u);
    }

    goto LABEL_13;
  }

  v6 = [v4 oneFlightRequester];

  if (!v6)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlight.mm";
      v15 = 1024;
      v16 = 61;
      v17 = 2082;
      v18 = "[MapsSuggestionsFlightUpdater initFromResourceDepot:]";
      v19 = 2082;
      v20 = "nil == (resourceDepot.oneFlightRequester)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One FlightRequester!", &v13, 0x26u);
    }

    goto LABEL_13;
  }

  v7 = [v5 oneNetworkRequester];

  if (!v7)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlight.mm";
      v15 = 1024;
      v16 = 62;
      v17 = 2082;
      v18 = "[MapsSuggestionsFlightUpdater initFromResourceDepot:]";
      v19 = 2082;
      v20 = "nil == (resourceDepot.oneNetworkRequester)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One Network!", &v13, 0x26u);
    }

LABEL_13:

    v10 = 0;
    goto LABEL_14;
  }

  v8 = [v5 oneFlightRequester];
  v9 = [v5 oneNetworkRequester];
  self = [(MapsSuggestionsFlightUpdater *)self initWithFlightRequester:v8 networkRequester:v9];

  v10 = self;
LABEL_14:

  return v10;
}

- (uint64_t)_getTerminalMapItemForFlightEntry:(void *)a3 handler:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_19;
  }

  if (MapsSuggestionsLoggingIsVerbose())
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "[MapsSuggestionsFlightUpdater _getTerminalMapItemForFlightEntry:handler:]";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (v6)
  {
    if (v5)
    {
      if ([v5 containsKey:@"MapsSuggestionsFlightTerminalSearchKey"])
      {
        v8 = [v5 stringForKey:@"MapsSuggestionsFlightTerminalSearchKey"];
        v9 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "terminalSearchString='%@'", buf, 0xCu);
        }

        v10 = *(a1 + 16);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __74__MapsSuggestionsFlightUpdater__getTerminalMapItemForFlightEntry_handler___block_invoke;
        v14[3] = &unk_1E81F5748;
        v11 = v8;
        v15 = v11;
        v16 = v5;
        v17 = v6;
        v12 = MapsSuggestionsSearchTerminal(v11, v16, v10, v14);
      }

      else
      {
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "Entry did not contain MapsSuggestionsFlightTerminalSearchKey. Cannot get Terminal mapItem", buf, 2u);
        }

        v12 = 0;
      }

      goto LABEL_18;
    }

    GEOFindOrCreateLog();
    objc_claimAutoreleasedReturnValue();
    [MapsSuggestionsFlightUpdater _getTerminalMapItemForFlightEntry:handler:];
  }

  else
  {
    GEOFindOrCreateLog();
    objc_claimAutoreleasedReturnValue();
    [MapsSuggestionsFlightUpdater _getTerminalMapItemForFlightEntry:handler:];
  }

  v11 = *buf;
  v12 = v18;
LABEL_18:

LABEL_19:
  return v12;
}

void __74__MapsSuggestionsFlightUpdater__getTerminalMapItemForFlightEntry_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) geoMapItem];
      v10 = [v9 name];
      *buf = 138412802;
      v31 = v8;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Couldn't get Terminal '%@' within the Venue '%@': %@", buf, 0x20u);
    }

    goto LABEL_4;
  }

  if ([v5 count] >= 2)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) geoMapItem];
      v13 = [v12 name];
      *buf = 138412546;
      v31 = v11;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Too many mapItems returned for Terminal '%@' within the Venue '%@'", buf, 0x16u);
    }

LABEL_4:

    (*(*(a1 + 48) + 16))();
    goto LABEL_5;
  }

  v14 = [v5 firstObject];
  v15 = MapsSuggestionsMapItemConvertIfNeeded(v14);

  if (MapsSuggestionsMapItemIsTerminal(v15))
  {
    if (!MapsSuggestionsMapItemIsVenue(v15))
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v15 name];
        *buf = 138412290;
        v31 = v17;
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "Terminal '%@' is not a Venue", buf, 0xCu);
      }
    }

    v18 = MapsSuggestionsSetLocationFromMapItem(*(a1 + 40), v15, 2);
    MapsSuggestionsFlightUpdateAlreadyThere(*(a1 + 40));
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v28 = [*(a1 + 40) geoMapItem];
      v29 = [v28 name];
      v20 = [*(a1 + 40) geoMapItem];
      v21 = [v20 _poiCategory];
      v22 = [*(a1 + 40) geoMapItem];
      v23 = [v22 _venueInfo];
      v24 = [v23 venueIdentifier];
      v25 = [v24 venueID];
      *buf = 138412802;
      v31 = v29;
      v32 = 2112;
      v33 = v21;
      v34 = 2048;
      v35 = v25;
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "Successfully got a Terminal '%@' as %@, venueID: %llu", buf, 0x20u);
    }

    [*(a1 + 40) setBoolean:1 forKey:@"MapsSuggestionsFlightMapItemIsTerminalKey"];
    [*(a1 + 40) setBoolean:0 forKey:@"MapsSuggestionsFlightMapItemIsGateKey"];
  }

  else
  {
    v26 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v15 name];
      *buf = 138412290;
      v31 = v27;
      _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_ERROR, "Terminal '%@' is not actually a Terminal", buf, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();

LABEL_5:
}

- (uint64_t)_getGateMapItemForFlightEntry:(void *)a3 handler:
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (MapsSuggestionsLoggingIsVerbose())
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "[MapsSuggestionsFlightUpdater _getGateMapItemForFlightEntry:handler:]";
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
      }
    }

    if (v6)
    {
      if (v5)
      {
        v8 = [v5 stringForKey:@"MapsSuggestionsFlightDepartureGateKey"];
        v9 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "gateSearchString='%@'", buf, 0xCu);
        }

        a1 = a1[2];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __70__MapsSuggestionsFlightUpdater__getGateMapItemForFlightEntry_handler___block_invoke;
        v12[3] = &unk_1E81F5748;
        v10 = v8;
        v13 = v10;
        v14 = v5;
        v15 = v6;
        LOBYTE(a1) = MapsSuggestionsSearchGate(v10, v14, a1, v12);

        goto LABEL_14;
      }

      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      [MapsSuggestionsFlightUpdater _getGateMapItemForFlightEntry:handler:];
    }

    else
    {
      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      [MapsSuggestionsFlightUpdater _getGateMapItemForFlightEntry:handler:];
    }

    v10 = *buf;
    LOBYTE(a1) = v16;
LABEL_14:
  }

  return a1;
}

void __70__MapsSuggestionsFlightUpdater__getGateMapItemForFlightEntry_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) geoMapItem];
      v10 = [v9 name];
      *buf = 138412802;
      v31 = v8;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Couldn't get Gate '%@' within the Venue '%@': %@", buf, 0x20u);
    }

    goto LABEL_4;
  }

  if ([v5 count] >= 2)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) geoMapItem];
      v13 = [v12 name];
      *buf = 138412546;
      v31 = v11;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Too many mapItems returned for Gate '%@' within the Venue '%@'", buf, 0x16u);
    }

LABEL_4:

    (*(*(a1 + 48) + 16))();
    goto LABEL_5;
  }

  v14 = [v5 firstObject];
  v15 = MapsSuggestionsMapItemConvertIfNeeded(v14);

  if (MapsSuggestionsMapItemIsGate(v15))
  {
    if (!MapsSuggestionsMapItemIsVenue(v15))
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v15 name];
        *buf = 138412290;
        v31 = v17;
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "Gate '%@' is not a Venue", buf, 0xCu);
      }
    }

    v18 = MapsSuggestionsSetLocationFromMapItem(*(a1 + 40), v15, 2);
    MapsSuggestionsFlightUpdateAlreadyThere(*(a1 + 40));
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v28 = [*(a1 + 40) geoMapItem];
      v29 = [v28 name];
      v20 = [*(a1 + 40) geoMapItem];
      v21 = [v20 _poiCategory];
      v22 = [*(a1 + 40) geoMapItem];
      v23 = [v22 _venueInfo];
      v24 = [v23 venueIdentifier];
      v25 = [v24 venueID];
      *buf = 138412802;
      v31 = v29;
      v32 = 2112;
      v33 = v21;
      v34 = 2048;
      v35 = v25;
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "Successfully got a Gate '%@' as %@, venueID: %llu", buf, 0x20u);
    }

    [*(a1 + 40) setBoolean:1 forKey:@"MapsSuggestionsFlightMapItemIsGateKey"];
  }

  else
  {
    v26 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v15 name];
      *buf = 138412290;
      v31 = v27;
      _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_ERROR, "Gate '%@' is not actually a Gate", buf, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();

LABEL_5:
}

- (void)_updateFlightsForEntry:(void *)a3 handler:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    v7 = [v5 dateForKey:@"MapsSuggestionsFlightDepartureTimeKey"];
    v8 = MapsSuggestionsSecondsTo(v7);
    GEOConfigGetDouble();
    if (v8 <= v9)
    {
      v11 = [v5 stringForKey:@"MapsSuggestionsFullFlightNumberKey"];
      objc_initWeak(buf, a1);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __63__MapsSuggestionsFlightUpdater__updateFlightsForEntry_handler___block_invoke;
      aBlock[3] = &unk_1E81F5770;
      objc_copyWeak(&v23, buf);
      v12 = v6;
      v22 = v12;
      v13 = _Block_copy(aBlock);
      v14 = *(a1 + 8);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __63__MapsSuggestionsFlightUpdater__updateFlightsForEntry_handler___block_invoke_178;
      v16[3] = &unk_1E81F57E8;
      objc_copyWeak(&v20, buf);
      v18 = v12;
      v17 = v5;
      v19 = v13;
      v15 = v13;
      [v14 requestFlightsWithFullFlightNumber:v11 departureDate:v7 handler:v16];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Too early to do flight updates. Skipping update", buf, 2u);
      }

      (*(v6 + 2))(v6, v5, 0);
    }
  }
}

void __63__MapsSuggestionsFlightUpdater__updateFlightsForEntry_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (![(MapsSuggestionsFlightUpdater *)WeakRetained _updateGateIfNeededForEntry:v5 handler:*(a1 + 32)])
    {
      v9 = v5;
      if ([v9 containsKey:@"MapsSuggestionsFlightFullTargetAirportKey"])
      {
        v10 = objc_alloc_init(MEMORY[0x1E69A21E8]);
        v11 = [v9 stringForKey:@"MapsSuggestionsFlightFullTargetAirportKey"];
        [v10 setName:v11];

        v12 = [v9 geoMapItem];
        [v12 setUserValues:v10];
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "MapsSuggestionsFlight.mm";
      v16 = 1026;
      v17 = 237;
      v18 = 2082;
      v19 = "[MapsSuggestionsFlightUpdater _updateFlightsForEntry:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v14, 0x1Cu);
    }
  }
}

- (BOOL)_updateGateIfNeededForEntry:(void *)a3 handler:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([v5 containsKey:@"MapsSuggestionsFlightDepartureGateKey"] && objc_msgSend(v5, "BOOLeanForKey:", @"MapsSuggestionsAlreadyThereKey"))
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __68__MapsSuggestionsFlightUpdater__updateGateIfNeededForEntry_handler___block_invoke;
      v8[3] = &unk_1E81F5798;
      v9 = v6;
      a1 = [(MapsSuggestionsFlightUpdater *)a1 _getGateMapItemForFlightEntry:v5 handler:v8]== 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void __63__MapsSuggestionsFlightUpdater__updateFlightsForEntry_handler___block_invoke_178(id *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__MapsSuggestionsFlightUpdater__updateFlightsForEntry_handler___block_invoke_179;
    v9[3] = &unk_1E81F57C0;
    v10 = v6;
    v14 = a1[5];
    v11 = a1[4];
    v12 = v5;
    v13 = WeakRetained;
    v15 = a1[6];
    dispatch_async(WeakRetained[3], v9);

    v8 = v10;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsFlight.mm";
      v18 = 1026;
      v19 = 249;
      v20 = 2082;
      v21 = "[MapsSuggestionsFlightUpdater _updateFlightsForEntry:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __63__MapsSuggestionsFlightUpdater__updateFlightsForEntry_handler___block_invoke_179(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v30 = v3;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Error getting flights: %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
    return;
  }

  if ([*(a1 + 48) count])
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) departingAirportCode];
    v6 = MapsSuggestionsBestFlightLeg(v4, v5);

    if (!v6)
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = @"Received no eligible flight legs to work with!?";
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v14 = *(a1 + 64);
      v15 = *(a1 + 40);
      v16 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-8 reason:@"Received no eligible flight legs to work with!?"];
      (*(v14 + 16))(v14, v15, v16);

      goto LABEL_30;
    }

    MapsSuggestionsUpdateEntryFromFlightLeg(*(a1 + 40), v6);
    MapsSuggestionsFlightUpdateAlreadyThere(*(a1 + 40));
    v7 = *(a1 + 40);
    if ([v7 containsKey:@"MapsSuggestionsFlightAlwaysGetTerminalAndGateKey"])
    {
      v8 = [v7 BOOLeanForKey:@"MapsSuggestionsFlightAlwaysGetTerminalAndGateKey"];

      if ((v8 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    v17 = [v7 geoMapItem];
    if (v17)
    {
      v18 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
      v19 = [v18 countryCode];
      v20 = [v19 isEqualToString:@"CN"];

      if (v20)
      {

        goto LABEL_21;
      }

      v21 = [v17 _venueInfo];
      v22 = [v21 venueIdentifier];

      if (v22)
      {
LABEL_21:
        if ([*(a1 + 40) containsKey:@"MapsSuggestionsFlightDepartureTerminalKey"])
        {
          if (([*(a1 + 40) BOOLeanForKey:@"MapsSuggestionsFlightMapItemIsTerminalKey" is:1] & 1) == 0 && (objc_msgSend(*(a1 + 40), "BOOLeanForKey:is:", @"MapsSuggestionsFlightMapItemIsGateKey", 1) & 1) == 0)
          {
            v23 = *(a1 + 56);
            v24 = *(a1 + 40);
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __63__MapsSuggestionsFlightUpdater__updateFlightsForEntry_handler___block_invoke_186;
            v27[3] = &unk_1E81F5798;
            v28 = *(a1 + 72);
            LOBYTE(v23) = [(MapsSuggestionsFlightUpdater *)v23 _getTerminalMapItemForFlightEntry:v24 handler:v27]== 1;

            if (v23)
            {
              goto LABEL_30;
            }
          }
        }

        v25 = a1 + 72;
LABEL_29:
        (*(*v25 + 16))();
LABEL_30:

        return;
      }
    }

    else
    {
    }

LABEL_26:
    v26 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_DEBUG, "We should not get Terminal & Gate for this Entry", buf, 2u);
    }

    v25 = a1 + 64;
    goto LABEL_29;
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v30 = @"Received no flights to work with!?";
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v10 = *(a1 + 64);
  v11 = *(a1 + 40);
  v12 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-8 reason:@"Received no flights to work with!?"];
  (*(v10 + 16))(v10, v11, v12);
}

void __63__MapsSuggestionsFlightUpdater__updateFlightsForEntry_handler___block_invoke_186(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  if ([v10 containsKey:@"MapsSuggestionsFlightFullTargetAirportKey"])
  {
    v7 = objc_alloc_init(MEMORY[0x1E69A21E8]);
    v8 = [v10 stringForKey:@"MapsSuggestionsFlightFullTargetAirportKey"];
    [v7 setName:v8];

    v9 = [v10 geoMapItem];
    [v9 setUserValues:v7];
  }

  (*(*(a1 + 32) + 16))();
}

void __68__MapsSuggestionsFlightUpdater__updateGateIfNeededForEntry_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  if ([v10 containsKey:@"MapsSuggestionsFlightFullTargetAirportKey"])
  {
    v7 = objc_alloc_init(MEMORY[0x1E69A21E8]);
    v8 = [v10 stringForKey:@"MapsSuggestionsFlightFullTargetAirportKey"];
    [v7 setName:v8];

    v9 = [v10 geoMapItem];
    [v9 setUserValues:v7];
  }

  (*(*(a1 + 32) + 16))();
}

- (char)updateFlightsForEntry:(id)a3 handler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlight.mm";
      v17 = 1024;
      v18 = 330;
      v19 = 2082;
      v20 = "[MapsSuggestionsFlightUpdater updateFlightsForEntry:handler:]";
      v21 = 2082;
      v22 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", buf, 0x26u);
    }

    goto LABEL_13;
  }

  if (!v7)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlight.mm";
      v17 = 1024;
      v18 = 331;
      v19 = 2082;
      v20 = "[MapsSuggestionsFlightUpdater updateFlightsForEntry:handler:]";
      v21 = 2082;
      v22 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler block", buf, 0x26u);
    }

    goto LABEL_13;
  }

  if ([v6 type] != 15)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlight.mm";
      v17 = 1024;
      v18 = 332;
      v19 = 2082;
      v20 = "[MapsSuggestionsFlightUpdater updateFlightsForEntry:handler:]";
      v21 = 2082;
      v22 = "MapsSuggestionsEntryTypeTravelFlight != entry.type";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a flight entry", buf, 0x26u);
    }

LABEL_13:

    v9 = 0;
    goto LABEL_14;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MapsSuggestionsFlightUpdater_updateFlightsForEntry_handler___block_invoke;
  block[3] = &unk_1E81F5810;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  dispatch_sync(self->_queue._innerQueue, block);

  v9 = 1;
LABEL_14:

  return v9;
}

- (void)_getTerminalMapItemForFlightEntry:handler:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_2_2();
}

- (void)_getTerminalMapItemForFlightEntry:handler:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_2_2();
}

- (void)_getGateMapItemForFlightEntry:handler:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_2_2();
}

- (void)_getGateMapItemForFlightEntry:handler:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_2_2();
}

@end