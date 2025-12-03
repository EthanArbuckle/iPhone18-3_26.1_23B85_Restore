@interface MapsSuggestionsEngineBuilder
+ (id)forDevice;
+ (id)simpleStrategy;
- (MapsSuggestionsEngineBuilder)init;
- (NSString)uniqueName;
- (id)build;
- (id)withDedupers:(id)dedupers;
- (id)withFavorites;
- (id)withImprovers:(id)improvers;
- (id)withLocationUpdater:(id)updater;
- (id)withPostFilters:(id)filters;
- (id)withPreFilters:(id)filters;
- (id)withResourceDepot:(id)depot;
- (id)withSourceClasses:(id)classes;
- (id)withTitleFormatter:(id)formatter forType:(int64_t)type;
- (id)withoutPostFilters:(id)filters;
- (id)withoutPreFilters:(id)filters;
@end

@implementation MapsSuggestionsEngineBuilder

+ (id)forDevice
{
  v32 = *MEMORY[0x1E69E9840];
  v17 = objc_alloc_init(MapsSuggestionsEngineBuilder);
  [(MapsSuggestionsEngineBuilder *)v17 setLocationUpdater:0];
  [(MapsSuggestionsEngineBuilder *)v17 setHasTracker:1];
  v2 = objc_alloc_init(MapsSuggestionsDefaultTitleFormatter);
  v3 = objc_alloc_init(MapsSuggestionsHomeWorkTitleFormatter);
  v16 = objc_alloc_init(MapsSuggestionsHotelTitleFormatter);
  v15 = objc_alloc_init(MapsSuggestionsFrequentLocationTitleFormatter);
  v4 = objc_alloc_init(MapsSuggestionsResumeRouteTitleFormatter);
  v5 = objc_alloc_init(MapsSuggestionsParkedCarTitleFormatter);
  v6 = objc_alloc_init(MapsSuggestionsCarRentalTitleFormatter);
  v7 = objc_alloc_init(MapsSuggestionsFlightTitleFormatter);
  v8 = objc_alloc_init(MapsSuggestionsOrderStatusTitleFormatter);
  v9 = objc_alloc_init(MapsSuggestionsCurrentLocationOfInterestTitleFormatter);
  v18[0] = &unk_1F4471458;
  v18[1] = &unk_1F4471470;
  v19 = v3;
  v20 = v3;
  v18[2] = &unk_1F4471488;
  v18[3] = &unk_1F44714A0;
  v21 = v15;
  v22 = v2;
  v18[4] = &unk_1F44714B8;
  v18[5] = &unk_1F44714D0;
  v23 = v8;
  v24 = v4;
  v18[6] = &unk_1F44714E8;
  v18[7] = &unk_1F4471500;
  v25 = v5;
  v26 = v16;
  v18[8] = &unk_1F4471518;
  v18[9] = &unk_1F4471530;
  v27 = v6;
  v28 = v7;
  v18[10] = &unk_1F4471548;
  v18[11] = &unk_1F4471560;
  v29 = v2;
  v30 = v2;
  v18[12] = &unk_1F4471578;
  v31 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:v18 count:13];
  v11 = [v10 mutableCopy];

  [(MapsSuggestionsEngineBuilder *)v17 setTitleFormatters:v11];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:2];
  v13 = [v12 mutableCopy];
  [(MapsSuggestionsEngineBuilder *)v17 setSourceClasses:v13];

  return v17;
}

- (MapsSuggestionsEngineBuilder)init
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "Oct 22 2025";
    v11 = 2080;
    v12 = "23:06:18";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_INFO, "Using MapsSuggestionsEngine built on %s %s", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = MapsSuggestionsEngineBuilder;
  v4 = [(MapsSuggestionsEngineBuilder *)&v8 init];
  if (v4)
  {
    v5 = [[MapsSuggestionsSelfBuildingResourceDepot alloc] initWithName:@"EngineBuilderResourceDepot"];
    resourceDepot = v4->_resourceDepot;
    v4->_resourceDepot = v5;
  }

  return v4;
}

- (id)withFavorites
{
  sourceClasses = [(MapsSuggestionsEngineBuilder *)self sourceClasses];
  v4 = [sourceClasses containsObject:objc_opt_class()];

  if ((v4 & 1) == 0)
  {
    sourceClasses2 = [(MapsSuggestionsEngineBuilder *)self sourceClasses];
    [sourceClasses2 addObject:objc_opt_class()];
  }

  return self;
}

- (id)build
{
  v217[0] = *MEMORY[0x1E69E9840];
  resourceDepot = [(MapsSuggestionsEngineBuilder *)self resourceDepot];
  v4 = resourceDepot == 0;

  oslog = GEOFindOrCreateLog();
  if (v4)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngineBuilder.mm";
      *&buf[12] = 1024;
      *&buf[14] = 524;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsEngineBuilder build]";
      v213 = 2082;
      v214 = "nil == (self.resourceDepot)";
      _os_log_impl(&dword_1C5126000, oslog, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. resourceDepot cannot be nil. Did you attach a resourceDepot while constructing the EngineBuilder?", buf, 0x26u);
    }

    v134 = 0;
  }

  else
  {
    v5 = oslog;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(MapsSuggestionsEngineBuilder *)self uniqueName];
      *buf = 138412546;
      *&buf[4] = uniqueName;
      *&buf[12] = 2080;
      *&buf[14] = "MapsSuggestionsEngineBuilding";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MapsSuggestionsEngineBuilding", "", buf, 2u);
    }

    v8 = objc_alloc_init(MapsSuggestionsSimpleStrategy);
    v9 = objc_alloc_init(MapsSuggestionsUnknownFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPreFilter:v9];

    v10 = objc_alloc_init(MapsSuggestionsServerSideFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPreFilter:v10];

    v11 = objc_alloc_init(MapsSuggestionsTooFewVisitsFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPreFilter:v11];

    v12 = objc_alloc_init(MapsSuggestionsNoAddressFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPreFilter:v12];

    v13 = objc_alloc_init(MapsSuggestionsAppConnectionFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPreFilter:v13];

    v14 = objc_alloc_init(MapsSuggestionsExpiredFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPreFilter:v14];

    v15 = objc_alloc_init(MapsSuggestionsCoarseLocationFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPreFilter:v15];

    v16 = objc_alloc_init(MapsSuggestionsFlightDeparturesOnlyFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPreFilter:v16];

    v17 = objc_alloc_init(MapsSuggestionsFlightTooFarFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPreFilter:v17];

    v18 = objc_alloc_init(MapsSuggestionsAppConnectionImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v18];

    v19 = objc_alloc_init(MapsSuggestionsSinkRankImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v19];

    v20 = objc_alloc_init(MapsSuggestionsDeleteSupportImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v20];

    v21 = objc_alloc_init(MapsSuggestionsHomeWorkImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v21];

    v22 = objc_alloc_init(MapsSuggestionsFavoritesImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v22];

    v23 = objc_alloc_init(MapsSuggestionsResumeRouteImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v23];

    v24 = objc_alloc_init(MapsSuggestionsCalendarEventImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v24];

    v25 = objc_alloc_init(MapsSuggestionsFrequentLocationImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v25];

    v26 = objc_alloc_init(MapsSuggestionsParkedCarImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v26];

    v27 = objc_alloc_init(MapsSuggestionsReservationImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v27];

    v28 = objc_alloc_init(MapsSuggestionsLockscreenImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v28];

    v29 = objc_alloc_init(MapsSuggestionsHotelImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v29];

    v30 = objc_alloc_init(MapsSuggestionsCarRentalImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v30];

    v31 = objc_alloc_init(MapsSuggestionsTravelFlightImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v31];

    v32 = objc_alloc_init(MapsSuggestionsTicketedEventImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v32];

    v33 = objc_alloc_init(MapsSuggestionsRecentHistoryImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v33];

    v34 = objc_alloc_init(MapsSuggestionsPortraitImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v34];

    v35 = objc_alloc_init(MapsSuggestionsPinnedPlaceImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v35];

    v36 = objc_alloc_init(MapsSuggestionsVirtualGarageImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v36];

    v37 = objc_alloc_init(MapsSuggestionsRatingRequestImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v37];

    v38 = objc_alloc_init(_TtC15MapsSuggestions38MapsSuggestionsContactActivityImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v38];

    v39 = objc_alloc_init(MapsSuggestionsOrderStatusImprover);
    [(MapsSuggestionsSimpleStrategy *)v8 addImprover:v39];

    v40 = objc_alloc_init(MapsSuggestionsShortcutDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v40];

    v41 = objc_alloc_init(MapsSuggestionsOrderStatusDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v41];

    v42 = objc_alloc_init(_TtC15MapsSuggestions37MapsSuggestionsContactActivityDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v42];

    v43 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:1];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v43];

    v44 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:2];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v44];

    v45 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:19];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v45];

    v46 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:17];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v46];

    v47 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:8];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v47];

    v48 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:20];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v48];

    v49 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:21];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v49];

    v50 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:22];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v50];

    v51 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:24];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v51];

    v52 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:25];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v52];

    v53 = [MapsSuggestionsShortcutAtMapItemDeduper alloc];
    v215 = xmmword_1C52A8EA0;
    v216 = 12;
    memset(buf, 0, 24);
    std::vector<MapsSuggestionsEntryType>::__init_with_size[abi:ne200100]<MapsSuggestionsEntryType const*,MapsSuggestionsEntryType const*>(buf, &v215, v217, 3uLL);
    v54 = [(MapsSuggestionsShortcutAtMapItemDeduper *)v53 initWithSacrificedTypes:buf];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v54];

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    v55 = objc_alloc_init(MapsSuggestionsSameRidesharingRideDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v55];

    v56 = objc_alloc_init(MapsSuggestionsHomeWorkSchoolDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v56];

    v57 = objc_alloc_init(MapsSuggestionsFrequentLocationDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v57];

    v58 = objc_alloc_init(MapsSuggestionsParkedCarDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v58];

    v59 = objc_alloc_init(MapsSuggestionsRecentHistoryDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v59];

    v60 = objc_alloc_init(MapsSuggestionsAppConnectionDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v60];

    v61 = objc_alloc_init(MapsSuggestionsAppConnectionAndRecentsDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v61];

    v62 = objc_alloc_init(MapsSuggestionsRideBookingAppConnectionDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v62];

    v63 = objc_alloc_init(MapsSuggestionsCalendarEventDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v63];

    v64 = objc_alloc_init(MapsSuggestionsReservationDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v64];

    v65 = objc_alloc_init(MapsSuggestionsResumeRouteDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v65];

    v66 = objc_alloc_init(MapsSuggestionsResumeRouteAndRestaurantDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v66];

    v67 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:10];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v67];

    v68 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:6];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v68];

    v69 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:13];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v69];

    v70 = objc_alloc_init(MapsSuggestionsFlightDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v70];

    v71 = objc_alloc_init(MapsSuggestionsVehicleSetupResumeRouteDeduper);
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v71];

    v72 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:14];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v72];

    v73 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:16];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v73];

    v74 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:13];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v74];

    v75 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:17];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v75];

    v76 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:5];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v76];

    v77 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:12];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v77];

    v78 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:4];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v78];

    v79 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:23];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v79];

    v80 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:3];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v80];

    v81 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:2];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v81];

    v82 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:1];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v82];

    v83 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:25];
    [(MapsSuggestionsSimpleStrategy *)v8 addDeduper:v83];

    v84 = objc_alloc_init(MapsSuggestionsDeletedFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPostFilter:v84];

    v85 = objc_alloc_init(MapsSuggestionsTooEarlyFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPostFilter:v85];

    v86 = objc_alloc_init(MapsSuggestionsNoTitleFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPostFilter:v86];

    v87 = objc_alloc_init(MapsSuggestionsAlreadyThereFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPostFilter:v87];

    v88 = objc_alloc_init(MapsSuggestionsTooFarFilter);
    [(MapsSuggestionsSimpleStrategy *)v8 addPostFilter:v88];

    [(MapsSuggestionsEngineBuilder *)self setStrategy:v8];
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    includePreFilters = [(MapsSuggestionsEngineBuilder *)self includePreFilters];
    v90 = [includePreFilters countByEnumeratingWithState:&v200 objects:v211 count:16];
    if (v90)
    {
      v91 = *v201;
      do
      {
        for (i = 0; i != v90; ++i)
        {
          if (*v201 != v91)
          {
            objc_enumerationMutation(includePreFilters);
          }

          v93 = *(*(&v200 + 1) + 8 * i);
          strategy = [(MapsSuggestionsEngineBuilder *)self strategy];
          [strategy addPreFilter:v93];
        }

        v90 = [includePreFilters countByEnumeratingWithState:&v200 objects:v211 count:16];
      }

      while (v90);
    }

    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    includePostFilters = [(MapsSuggestionsEngineBuilder *)self includePostFilters];
    v96 = [includePostFilters countByEnumeratingWithState:&v196 objects:v210 count:16];
    if (v96)
    {
      v97 = *v197;
      do
      {
        for (j = 0; j != v96; ++j)
        {
          if (*v197 != v97)
          {
            objc_enumerationMutation(includePostFilters);
          }

          v99 = *(*(&v196 + 1) + 8 * j);
          strategy2 = [(MapsSuggestionsEngineBuilder *)self strategy];
          [strategy2 addPostFilter:v99];
        }

        v96 = [includePostFilters countByEnumeratingWithState:&v196 objects:v210 count:16];
      }

      while (v96);
    }

    v194 = 0u;
    v195 = 0u;
    v192 = 0u;
    v193 = 0u;
    includeImprovers = [(MapsSuggestionsEngineBuilder *)self includeImprovers];
    v102 = [includeImprovers countByEnumeratingWithState:&v192 objects:v209 count:16];
    if (v102)
    {
      v103 = *v193;
      do
      {
        for (k = 0; k != v102; ++k)
        {
          if (*v193 != v103)
          {
            objc_enumerationMutation(includeImprovers);
          }

          v105 = *(*(&v192 + 1) + 8 * k);
          strategy3 = [(MapsSuggestionsEngineBuilder *)self strategy];
          [strategy3 addImprover:v105];
        }

        v102 = [includeImprovers countByEnumeratingWithState:&v192 objects:v209 count:16];
      }

      while (v102);
    }

    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    includeDedupers = [(MapsSuggestionsEngineBuilder *)self includeDedupers];
    v108 = [includeDedupers countByEnumeratingWithState:&v188 objects:v208 count:16];
    if (v108)
    {
      v109 = *v189;
      do
      {
        for (m = 0; m != v108; ++m)
        {
          if (*v189 != v109)
          {
            objc_enumerationMutation(includeDedupers);
          }

          v111 = *(*(&v188 + 1) + 8 * m);
          strategy4 = [(MapsSuggestionsEngineBuilder *)self strategy];
          [strategy4 addDeduper:v111];
        }

        v108 = [includeDedupers countByEnumeratingWithState:&v188 objects:v208 count:16];
      }

      while (v108);
    }

    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    excludePreFilters = [(MapsSuggestionsEngineBuilder *)self excludePreFilters];
    v114 = [excludePreFilters countByEnumeratingWithState:&v184 objects:v207 count:16];
    if (v114)
    {
      v115 = *v185;
      do
      {
        for (n = 0; n != v114; ++n)
        {
          if (*v185 != v115)
          {
            objc_enumerationMutation(excludePreFilters);
          }

          v117 = *(*(&v184 + 1) + 8 * n);
          strategy5 = [(MapsSuggestionsEngineBuilder *)self strategy];
          [strategy5 removeFilter:v117];
        }

        v114 = [excludePreFilters countByEnumeratingWithState:&v184 objects:v207 count:16];
      }

      while (v114);
    }

    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    excludePostFilters = [(MapsSuggestionsEngineBuilder *)self excludePostFilters];
    v120 = [excludePostFilters countByEnumeratingWithState:&v180 objects:v206 count:16];
    if (v120)
    {
      v121 = *v181;
      do
      {
        for (ii = 0; ii != v120; ++ii)
        {
          if (*v181 != v121)
          {
            objc_enumerationMutation(excludePostFilters);
          }

          v123 = *(*(&v180 + 1) + 8 * ii);
          strategy6 = [(MapsSuggestionsEngineBuilder *)self strategy];
          [strategy6 removeFilter:v123];
        }

        v120 = [excludePostFilters countByEnumeratingWithState:&v180 objects:v206 count:16];
      }

      while (v120);
    }

    locationUpdater = [(MapsSuggestionsEngineBuilder *)self locationUpdater];
    v126 = locationUpdater == 0;

    if (v126)
    {
      v127 = objc_alloc_init(MapsSuggestionsDefaultLocationUpdater);
      [(MapsSuggestionsEngineBuilder *)self setLocationUpdater:v127];
    }

    if ([(MapsSuggestionsEngineBuilder *)self hasTracker])
    {
      v128 = [MapsSuggestionsETARequirements alloc];
      GEOConfigGetDouble();
      v130 = v129;
      GEOConfigGetDouble();
      v132 = v131;
      GEOConfigGetDouble();
      oslog = [(MapsSuggestionsETARequirements *)v128 initWithMaxAge:v130 maxDistance:v132 minAccuracy:v133];
    }

    else
    {
      oslog = 0;
    }

    v135 = [MapsSuggestionsManager alloc];
    strategy7 = [(MapsSuggestionsEngineBuilder *)self strategy];
    locationUpdater2 = [(MapsSuggestionsEngineBuilder *)self locationUpdater];
    resourceDepot2 = [(MapsSuggestionsEngineBuilder *)self resourceDepot];
    oneNetworkRequester = [resourceDepot2 oneNetworkRequester];
    resourceDepot3 = [(MapsSuggestionsEngineBuilder *)self resourceDepot];
    oneFlightUpdater = [resourceDepot3 oneFlightUpdater];
    resourceDepot4 = [(MapsSuggestionsEngineBuilder *)self resourceDepot];
    oneVirtualGarage = [resourceDepot4 oneVirtualGarage];
    v144 = [(MapsSuggestionsManager *)v135 initWithStrategy:strategy7 locationUpdater:locationUpdater2 network:oneNetworkRequester flightUpdater:oneFlightUpdater ETARequirements:oslog virtualGarage:oneVirtualGarage];

    resourceDepot5 = [(MapsSuggestionsEngineBuilder *)self resourceDepot];
    [resourceDepot5 setOneSourceDelegate:v144];

    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    titleFormatters = [(MapsSuggestionsEngineBuilder *)self titleFormatters];
    v147 = [titleFormatters countByEnumeratingWithState:&v176 objects:v205 count:16];
    if (v147)
    {
      v148 = *v177;
      do
      {
        for (jj = 0; jj != v147; ++jj)
        {
          if (*v177 != v148)
          {
            objc_enumerationMutation(titleFormatters);
          }

          v150 = *(*(&v176 + 1) + 8 * jj);
          titleFormatters2 = [(MapsSuggestionsEngineBuilder *)self titleFormatters];
          v152 = [titleFormatters2 objectForKeyedSubscript:v150];
          -[MapsSuggestionsManager setTitleFormatter:forType:](v144, v152, [v150 unsignedIntValue]);
        }

        v147 = [titleFormatters countByEnumeratingWithState:&v176 objects:v205 count:16];
      }

      while (v147);
    }

    v169 = v144;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    sourceClasses = [(MapsSuggestionsEngineBuilder *)self sourceClasses];
    obj = sourceClasses;
    v154 = [sourceClasses countByEnumeratingWithState:&v172 objects:v204 count:16];
    p_super = &v169->super;
    if (v154)
    {
      v156 = *v173;
      p_super = &v169->super;
LABEL_67:
      v157 = 0;
      while (1)
      {
        if (*v173 != v156)
        {
          objc_enumerationMutation(obj);
        }

        v158 = *(*(&v172 + 1) + 8 * v157);
        if (([v158 conformsToProtocol:&unk_1F4476C68] & 1) == 0)
        {
          v167 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngineBuilder.mm";
            *&buf[12] = 1024;
            *&buf[14] = 594;
            *&buf[18] = 2082;
            *&buf[20] = "[MapsSuggestionsEngineBuilder build]";
            v213 = 2082;
            v214 = "NO == [sourceClass conformsToProtocol:@protocol(MapsSuggestionsSource)]";
            _os_log_impl(&dword_1C5126000, v167, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. This is not really a Source", buf, 0x26u);
          }

          v134 = 0;
          resourceDepot7 = obj;
          goto LABEL_84;
        }

        if (([v158 isEnabled] & 1) == 0)
        {
          break;
        }

        v159 = [v158 alloc];
        resourceDepot6 = [(MapsSuggestionsEngineBuilder *)self resourceDepot];
        v161 = [v158 description];
        v162 = [v159 initFromResourceDepot:resourceDepot6 name:v161];

        [p_super attachSource:v162];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v162 = v162;
          v163 = p_super;
          p_super = v162;
LABEL_77:
        }

        if (v154 == ++v157)
        {
          sourceClasses = obj;
          v154 = [obj countByEnumeratingWithState:&v172 objects:v204 count:16];
          if (v154)
          {
            goto LABEL_67;
          }

          goto LABEL_80;
        }
      }

      v163 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
      {
        v164 = [v158 description];
        *buf = 138412290;
        *&buf[4] = v164;
        _os_log_impl(&dword_1C5126000, v163, OS_LOG_TYPE_DEBUG, "Source %@ is disabled", buf, 0xCu);
      }

      v162 = v163;
      goto LABEL_77;
    }

LABEL_80:

    v165 = [MapsSuggestionsEngine alloc];
    resourceDepot7 = [(MapsSuggestionsEngineBuilder *)self resourceDepot];
    v134 = [(MapsSuggestionsEngine *)v165 initWithEntryManager:v169 resourceDepot:resourceDepot7];
LABEL_84:
  }

  return v134;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id)withResourceDepot:(id)depot
{
  v16 = *MEMORY[0x1E69E9840];
  [(MapsSuggestionsEngineBuilder *)self setResourceDepot:?];
  if (depot)
  {
    selfCopy = self;
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngineBuilder.mm";
      v10 = 1024;
      v11 = 338;
      v12 = 2082;
      v13 = "[MapsSuggestionsEngineBuilder withResourceDepot:]";
      v14 = 2082;
      v15 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. resourceDepot cannot be nil", &v8, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)withLocationUpdater:(id)updater
{
  v18 = *MEMORY[0x1E69E9840];
  updaterCopy = updater;
  resourceDepot = [(MapsSuggestionsEngineBuilder *)self resourceDepot];

  if (resourceDepot)
  {
    [(MapsSuggestionsEngineBuilder *)self setLocationUpdater:updaterCopy];
    resourceDepot2 = [(MapsSuggestionsEngineBuilder *)self resourceDepot];
    [resourceDepot2 setOneLocationUpdater:updaterCopy];

    selfCopy = self;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngineBuilder.mm";
      v12 = 1024;
      v13 = 345;
      v14 = 2082;
      v15 = "[MapsSuggestionsEngineBuilder withLocationUpdater:]";
      v16 = 2082;
      v17 = "nil == (self.resourceDepot)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. resourceDepot cannot be nil. Did you attach a resourceDepot while constructing the EngineBuilder?", &v10, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)withPreFilters:(id)filters
{
  v22 = *MEMORY[0x1E69E9840];
  filtersCopy = filters;
  includePreFilters = [(MapsSuggestionsEngineBuilder *)self includePreFilters];

  if (!includePreFilters)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(filtersCopy, "count")}];
    [(MapsSuggestionsEngineBuilder *)self setIncludePreFilters:v6];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = filtersCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        includePreFilters2 = [(MapsSuggestionsEngineBuilder *)self includePreFilters];
        v13 = [includePreFilters2 containsObject:v11];

        if ((v13 & 1) == 0)
        {
          includePreFilters3 = [(MapsSuggestionsEngineBuilder *)self includePreFilters];
          [includePreFilters3 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  excludePreFilters = [(MapsSuggestionsEngineBuilder *)self excludePreFilters];
  [excludePreFilters minusSet:v7];

  return self;
}

- (id)withPostFilters:(id)filters
{
  v22 = *MEMORY[0x1E69E9840];
  filtersCopy = filters;
  includePostFilters = [(MapsSuggestionsEngineBuilder *)self includePostFilters];

  if (!includePostFilters)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(filtersCopy, "count")}];
    [(MapsSuggestionsEngineBuilder *)self setIncludePostFilters:v6];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = filtersCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        includePostFilters2 = [(MapsSuggestionsEngineBuilder *)self includePostFilters];
        v13 = [includePostFilters2 containsObject:v11];

        if ((v13 & 1) == 0)
        {
          includePostFilters3 = [(MapsSuggestionsEngineBuilder *)self includePostFilters];
          [includePostFilters3 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  excludePostFilters = [(MapsSuggestionsEngineBuilder *)self excludePostFilters];
  [excludePostFilters minusSet:v7];

  return self;
}

- (id)withImprovers:(id)improvers
{
  v22 = *MEMORY[0x1E69E9840];
  improversCopy = improvers;
  includeImprovers = [(MapsSuggestionsEngineBuilder *)self includeImprovers];

  if (!includeImprovers)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(improversCopy, "count")}];
    [(MapsSuggestionsEngineBuilder *)self setIncludeImprovers:v6];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = improversCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        includeImprovers2 = [(MapsSuggestionsEngineBuilder *)self includeImprovers];
        v13 = [includeImprovers2 containsObject:v11];

        if ((v13 & 1) == 0)
        {
          includeImprovers3 = [(MapsSuggestionsEngineBuilder *)self includeImprovers];
          [includeImprovers3 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  excludeImprovers = [(MapsSuggestionsEngineBuilder *)self excludeImprovers];
  [excludeImprovers removeObjectsInArray:v7];

  return self;
}

- (id)withoutPreFilters:(id)filters
{
  v22 = *MEMORY[0x1E69E9840];
  filtersCopy = filters;
  excludePreFilters = [(MapsSuggestionsEngineBuilder *)self excludePreFilters];

  if (!excludePreFilters)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(filtersCopy, "count")}];
    [(MapsSuggestionsEngineBuilder *)self setExcludePreFilters:v6];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = filtersCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        excludePreFilters2 = [(MapsSuggestionsEngineBuilder *)self excludePreFilters];
        v13 = [excludePreFilters2 containsObject:v11];

        if ((v13 & 1) == 0)
        {
          excludePreFilters3 = [(MapsSuggestionsEngineBuilder *)self excludePreFilters];
          [excludePreFilters3 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  includePreFilters = [(MapsSuggestionsEngineBuilder *)self includePreFilters];
  [includePreFilters minusSet:v7];

  return self;
}

- (id)withoutPostFilters:(id)filters
{
  v22 = *MEMORY[0x1E69E9840];
  filtersCopy = filters;
  excludePostFilters = [(MapsSuggestionsEngineBuilder *)self excludePostFilters];

  if (!excludePostFilters)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(filtersCopy, "count")}];
    [(MapsSuggestionsEngineBuilder *)self setExcludePostFilters:v6];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = filtersCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        excludePostFilters2 = [(MapsSuggestionsEngineBuilder *)self excludePostFilters];
        v13 = [excludePostFilters2 containsObject:v11];

        if ((v13 & 1) == 0)
        {
          excludePostFilters3 = [(MapsSuggestionsEngineBuilder *)self excludePostFilters];
          [excludePostFilters3 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  includePostFilters = [(MapsSuggestionsEngineBuilder *)self includePostFilters];
  [includePostFilters minusSet:v7];

  return self;
}

- (id)withDedupers:(id)dedupers
{
  v22 = *MEMORY[0x1E69E9840];
  dedupersCopy = dedupers;
  includeDedupers = [(MapsSuggestionsEngineBuilder *)self includeDedupers];

  if (!includeDedupers)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dedupersCopy, "count")}];
    [(MapsSuggestionsEngineBuilder *)self setIncludeDedupers:v6];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = dedupersCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        includeDedupers2 = [(MapsSuggestionsEngineBuilder *)self includeDedupers];
        v13 = [includeDedupers2 containsObject:v11];

        if ((v13 & 1) == 0)
        {
          includeDedupers3 = [(MapsSuggestionsEngineBuilder *)self includeDedupers];
          [includeDedupers3 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  excludeDedupers = [(MapsSuggestionsEngineBuilder *)self excludeDedupers];
  [excludeDedupers removeObjectsInArray:v7];

  return self;
}

- (id)withSourceClasses:(id)classes
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  classesCopy = classes;
  v5 = [classesCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = *v17;
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(classesCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [(MapsSuggestionsEngineBuilder *)self sourceClasses:v15];
        v11 = [v10 containsObject:v9];

        if (v11)
        {
          sourceClasses = GEOFindOrCreateLog();
          if (os_log_type_enabled(sourceClasses, OS_LOG_TYPE_DEBUG))
          {
            v13 = [v9 description];
            *buf = v15;
            v21 = v13;
            _os_log_impl(&dword_1C5126000, sourceClasses, OS_LOG_TYPE_DEBUG, "Engine already contains source %@", buf, 0xCu);
          }
        }

        else
        {
          if (!classesCopy)
          {
            goto LABEL_13;
          }

          sourceClasses = [(MapsSuggestionsEngineBuilder *)self sourceClasses];
          [sourceClasses addObject:v9];
        }

LABEL_13:
        ++v8;
      }

      while (v5 != v8);
      v5 = [classesCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  return self;
}

- (id)withTitleFormatter:(id)formatter forType:(int64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  formatterCopy = formatter;
  v7 = formatterCopy;
  if (!formatterCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngineBuilder.mm";
      v15 = 1024;
      v16 = 512;
      v17 = 2082;
      v18 = "[MapsSuggestionsEngineBuilder withTitleFormatter:forType:]";
      v19 = 2082;
      v20 = "nil == (titleFormatter)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a title formatter", &v13, 0x26u);
    }

    goto LABEL_10;
  }

  if (([formatterCopy conformsToProtocol:&unk_1F44735C0] & 1) == 0 && (objc_msgSend(v7, "conformsToProtocol:", &unk_1F4475608) & 1) == 0)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngineBuilder.mm";
      v15 = 1024;
      v16 = 515;
      v17 = 2082;
      v18 = "[MapsSuggestionsEngineBuilder withTitleFormatter:forType:]";
      v19 = 2082;
      v20 = "! [titleFormatter conformsToProtocol:@protocol(MapsSuggestionsETATitleFormatter)] && ! [titleFormatter conformsToProtocol:@protocol(MapsSuggestionsDistanceTitleFormatter)]";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA and/or Distance title formatter", &v13, 0x26u);
    }

LABEL_10:

    goto LABEL_11;
  }

  titleFormatters = [(MapsSuggestionsEngineBuilder *)self titleFormatters];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [titleFormatters setObject:v7 forKeyedSubscript:v9];

LABEL_11:
  selfCopy = self;

  return self;
}

+ (id)simpleStrategy
{
  v89 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MapsSuggestionsSimpleStrategy);
  v3 = objc_alloc_init(MapsSuggestionsUnknownFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPreFilter:v3];

  v4 = objc_alloc_init(MapsSuggestionsServerSideFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPreFilter:v4];

  v5 = objc_alloc_init(MapsSuggestionsTooFewVisitsFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPreFilter:v5];

  v6 = objc_alloc_init(MapsSuggestionsNoAddressFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPreFilter:v6];

  v7 = objc_alloc_init(MapsSuggestionsAppConnectionFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPreFilter:v7];

  v8 = objc_alloc_init(MapsSuggestionsExpiredFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPreFilter:v8];

  v9 = objc_alloc_init(MapsSuggestionsCoarseLocationFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPreFilter:v9];

  v10 = objc_alloc_init(MapsSuggestionsFlightDeparturesOnlyFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPreFilter:v10];

  v11 = objc_alloc_init(MapsSuggestionsFlightTooFarFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPreFilter:v11];

  v12 = objc_alloc_init(MapsSuggestionsAppConnectionImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v12];

  v13 = objc_alloc_init(MapsSuggestionsSinkRankImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v13];

  v14 = objc_alloc_init(MapsSuggestionsDeleteSupportImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v14];

  v15 = objc_alloc_init(MapsSuggestionsHomeWorkImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v15];

  v16 = objc_alloc_init(MapsSuggestionsFavoritesImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v16];

  v17 = objc_alloc_init(MapsSuggestionsResumeRouteImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v17];

  v18 = objc_alloc_init(MapsSuggestionsCalendarEventImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v18];

  v19 = objc_alloc_init(MapsSuggestionsFrequentLocationImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v19];

  v20 = objc_alloc_init(MapsSuggestionsParkedCarImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v20];

  v21 = objc_alloc_init(MapsSuggestionsReservationImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v21];

  v22 = objc_alloc_init(MapsSuggestionsLockscreenImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v22];

  v23 = objc_alloc_init(MapsSuggestionsHotelImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v23];

  v24 = objc_alloc_init(MapsSuggestionsCarRentalImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v24];

  v25 = objc_alloc_init(MapsSuggestionsTravelFlightImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v25];

  v26 = objc_alloc_init(MapsSuggestionsTicketedEventImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v26];

  v27 = objc_alloc_init(MapsSuggestionsRecentHistoryImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v27];

  v28 = objc_alloc_init(MapsSuggestionsPortraitImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v28];

  v29 = objc_alloc_init(MapsSuggestionsPinnedPlaceImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v29];

  v30 = objc_alloc_init(MapsSuggestionsVirtualGarageImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v30];

  v31 = objc_alloc_init(MapsSuggestionsRatingRequestImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v31];

  v32 = objc_alloc_init(_TtC15MapsSuggestions38MapsSuggestionsContactActivityImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v32];

  v33 = objc_alloc_init(MapsSuggestionsOrderStatusImprover);
  [(MapsSuggestionsSimpleStrategy *)v2 addImprover:v33];

  v34 = objc_alloc_init(MapsSuggestionsShortcutDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v34];

  v35 = objc_alloc_init(MapsSuggestionsOrderStatusDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v35];

  v36 = objc_alloc_init(_TtC15MapsSuggestions37MapsSuggestionsContactActivityDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v36];

  v37 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:1];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v37];

  v38 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:2];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v38];

  v39 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:19];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v39];

  v40 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:17];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v40];

  v41 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:8];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v41];

  v42 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:20];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v42];

  v43 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:21];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v43];

  v44 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:22];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v44];

  v45 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:24];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v45];

  v46 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:25];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v46];

  v47 = [MapsSuggestionsShortcutAtMapItemDeduper alloc];
  v87 = xmmword_1C52A8EA0;
  v88 = 12;
  v85 = 0;
  v86 = 0;
  __p = 0;
  std::vector<MapsSuggestionsEntryType>::__init_with_size[abi:ne200100]<MapsSuggestionsEntryType const*,MapsSuggestionsEntryType const*>(&__p, &v87, &v89, 3uLL);
  v48 = [(MapsSuggestionsShortcutAtMapItemDeduper *)v47 initWithSacrificedTypes:&__p];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v48];

  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  v49 = objc_alloc_init(MapsSuggestionsSameRidesharingRideDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v49];

  v50 = objc_alloc_init(MapsSuggestionsHomeWorkSchoolDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v50];

  v51 = objc_alloc_init(MapsSuggestionsFrequentLocationDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v51];

  v52 = objc_alloc_init(MapsSuggestionsParkedCarDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v52];

  v53 = objc_alloc_init(MapsSuggestionsRecentHistoryDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v53];

  v54 = objc_alloc_init(MapsSuggestionsAppConnectionDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v54];

  v55 = objc_alloc_init(MapsSuggestionsAppConnectionAndRecentsDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v55];

  v56 = objc_alloc_init(MapsSuggestionsRideBookingAppConnectionDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v56];

  v57 = objc_alloc_init(MapsSuggestionsCalendarEventDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v57];

  v58 = objc_alloc_init(MapsSuggestionsReservationDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v58];

  v59 = objc_alloc_init(MapsSuggestionsResumeRouteDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v59];

  v60 = objc_alloc_init(MapsSuggestionsResumeRouteAndRestaurantDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v60];

  v61 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:10];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v61];

  v62 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:6];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v62];

  v63 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:13];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v63];

  v64 = objc_alloc_init(MapsSuggestionsFlightDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v64];

  v65 = objc_alloc_init(MapsSuggestionsVehicleSetupResumeRouteDeduper);
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v65];

  v66 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:14];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v66];

  v67 = [[MapsSuggestionsUniqueIdentifierDeduper alloc] initWithType:16];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v67];

  v68 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:13];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v68];

  v69 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:17];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v69];

  v70 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:5];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v70];

  v71 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:12];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v71];

  v72 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:4];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v72];

  v73 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:23];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v73];

  v74 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:3];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v74];

  v75 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:2];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v75];

  v76 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:1];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v76];

  v77 = [[MapsSuggestionsGEOMapItemDeduper alloc] initWithSacrificedType:25];
  [(MapsSuggestionsSimpleStrategy *)v2 addDeduper:v77];

  v78 = objc_alloc_init(MapsSuggestionsDeletedFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPostFilter:v78];

  v79 = objc_alloc_init(MapsSuggestionsTooEarlyFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPostFilter:v79];

  v80 = objc_alloc_init(MapsSuggestionsNoTitleFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPostFilter:v80];

  v81 = objc_alloc_init(MapsSuggestionsAlreadyThereFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPostFilter:v81];

  v82 = objc_alloc_init(MapsSuggestionsTooFarFilter);
  [(MapsSuggestionsSimpleStrategy *)v2 addPostFilter:v82];

  return v2;
}

@end