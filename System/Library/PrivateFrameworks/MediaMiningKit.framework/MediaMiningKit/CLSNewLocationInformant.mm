@interface CLSNewLocationInformant
+ (BOOL)doesRegion:(id)region containLocation:(id)location;
+ (BOOL)doesRegion:(id)region intersectOtherRegion:(id)otherRegion;
+ (CLLocationCoordinate2D)shiftedCoordinatesFromOriginalCoordinates:(CLLocationCoordinate2D)coordinates;
+ (id)allPointOfInterestCategories;
+ (id)businessItemsForRegion:(id)region poiCache:(id)cache;
+ (id)filterBusinessItems:(id)items forCategories:(id)categories blocklistCategories:(id)blocklistCategories;
+ (id)narrowPointOfInterestCategories;
+ (id)searchBusinessItemsAtCoordinate:(CLLocationCoordinate2D)coordinate forCategories:(id)categories precision:(double)precision inCache:(id)cache;
+ (id)shiftedLocationFromOriginalLocation:(id)location;
+ (id)widePointOfInterestCategories;
- (id)_regionOfInterestCategories;
- (id)_regionOfInterestTraits;
- (id)gatherCluesForInvestigation:(id)investigation progressBlock:(id)block;
- (id)locationAreaOfInterestCluesForInputClue:(id)clue aoiCache:(id)cache;
- (id)locationRegionOfInterestCluesForInputClue:(id)clue roiCache:(id)cache natureCache:(id)natureCache;
- (id)outputLocationCluesForOuputClueKey:(id)key inputClue:(id)clue region:(id)region traits:(id)traits categories:(id)categories exactMatch:(BOOL)match precision:(double)precision cache:(id)self0;
@end

@implementation CLSNewLocationInformant

- (id)gatherCluesForInvestigation:(id)investigation progressBlock:(id)block
{
  v5 = MEMORY[0x277CBEB18];
  investigationCopy = investigation;
  v7 = objc_alloc_init(v5);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  clueCollection = [investigationCopy clueCollection];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__CLSNewLocationInformant_gatherCluesForInvestigation_progressBlock___block_invoke;
  v21[3] = &unk_2788A8078;
  v22 = v8;
  v10 = v8;
  [clueCollection enumerateTimeClues:v21];

  helper = [investigationCopy helper];
  clueCollection2 = [investigationCopy clueCollection];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__CLSNewLocationInformant_gatherCluesForInvestigation_progressBlock___block_invoke_2;
  v18[3] = &unk_2788A7C58;
  v18[4] = self;
  v19 = helper;
  v13 = v7;
  v20 = v13;
  v14 = helper;
  [clueCollection2 enumerateLocationClues:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

void __69__CLSNewLocationInformant_gatherCluesForInvestigation_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  if ([v13 isDefinite])
  {
    v3 = [v13 placemark];
    v4 = [v3 areasOfInterest];
    v5 = [v4 count];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) aoiCache];
      v8 = [v6 locationAreaOfInterestCluesForInputClue:v13 aoiCache:v7];

      [*(a1 + 48) addObjectsFromArray:v8];
    }
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) roiCache];
  v11 = [*(a1 + 40) natureCache];
  v12 = [v9 locationRegionOfInterestCluesForInputClue:v13 roiCache:v10 natureCache:v11];

  [*(a1 + 48) addObjectsFromArray:v12];
}

- (id)locationRegionOfInterestCluesForInputClue:(id)clue roiCache:(id)cache natureCache:(id)natureCache
{
  v51[1] = *MEMORY[0x277D85DE8];
  clueCopy = clue;
  cacheCopy = cache;
  natureCacheCopy = natureCache;
  v11 = objc_opt_new();
  v12 = objc_opt_class();
  region = [clueCopy region];
  [region center];
  v14 = [v12 searchBusinessItemsAtCoordinate:&unk_28449B3A0 forCategories:cacheCopy precision:? inCache:?];

  if (v14)
  {
    if ([v14 count] > 0x95)
    {
      _regionOfInterestTraits = [CLSOutputClue clueWithValue:@"Urban" forKey:@"Location ROI" confidence:1.0 relevance:1.0];
      v51[0] = clueCopy;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
      [_regionOfInterestTraits addRelatedInputLocationClues:v27];

      [v11 addObject:_regionOfInterestTraits];
LABEL_18:

      goto LABEL_19;
    }

    v15 = objc_opt_class();
    region2 = [clueCopy region];
    [region2 center];
    v18 = v17;
    v20 = v19;
    natureCategories = [objc_opt_class() natureCategories];
    v22 = [v15 searchBusinessItemsAtCoordinate:natureCategories forCategories:natureCacheCopy precision:v18 inCache:{v20, 20000.0}];

    if (!v22)
    {
      goto LABEL_19;
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 1;
    array = [MEMORY[0x277CBEB18] array];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __90__CLSNewLocationInformant_locationRegionOfInterestCluesForInputClue_roiCache_natureCache___block_invoke;
    v41[3] = &unk_2788A7C20;
    v40 = clueCopy;
    v42 = v40;
    v24 = array;
    v43 = v24;
    v44 = &v45;
    [v22 enumerateObjectsUsingBlock:v41];
    [v11 addObjectsFromArray:v24];
    if (*(v46 + 24) != 1)
    {
LABEL_15:

      _Block_object_dispose(&v45, 8);
      _regionOfInterestTraits = [(CLSNewLocationInformant *)self _regionOfInterestTraits];
      _regionOfInterestCategories = [(CLSNewLocationInformant *)self _regionOfInterestCategories];
      region3 = [v40 region];
      v37 = [(CLSNewLocationInformant *)self outputLocationCluesForOuputClueKey:@"Location ROI" inputClue:v40 region:region3 traits:_regionOfInterestTraits categories:_regionOfInterestCategories exactMatch:0 precision:1000.0 cache:cacheCopy];

      if (v37)
      {
        [v11 addObjectsFromArray:v37];
      }

      goto LABEL_18;
    }

    placemark = [v40 placemark];
    if (placemark)
    {
      inlandWater = [placemark inlandWater];
      if (inlandWater)
      {

LABEL_10:
        v30 = [CLSOutputClue clueWithValue:@"Water" forKey:@"Location ROI" confidence:1.0 relevance:1.0];
        v50 = v40;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        [v30 addRelatedInputLocationClues:v31];

        [v11 addObject:v30];
        goto LABEL_13;
      }

      ocean = [placemark ocean];
      v29 = ocean == 0;

      if (!v29)
      {
        goto LABEL_10;
      }
    }

    iSOcountryCode = [placemark ISOcountryCode];
    v33 = [iSOcountryCode isEqualToString:@"CN"];

    if (v33 != [MEMORY[0x277D3AD60] isCurrentRevGeoProviderAutoNavi])
    {
LABEL_14:

      goto LABEL_15;
    }

    v30 = [CLSOutputClue clueWithValue:@"Nature" forKey:@"Location ROI" confidence:1.0 relevance:1.0];
    v49 = v40;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    [v30 addRelatedInputLocationClues:v34];

    [v11 addObject:v30];
LABEL_13:

    goto LABEL_14;
  }

LABEL_19:

  return v11;
}

void __90__CLSNewLocationInformant_locationRegionOfInterestCluesForInputClue_roiCache_natureCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 categories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__CLSNewLocationInformant_locationRegionOfInterestCluesForInputClue_roiCache_natureCache___block_invoke_2;
  v6[3] = &unk_2788A7BF8;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [v3 enumerateObjectsUsingBlock:v6];
}

void __90__CLSNewLocationInformant_locationRegionOfInterestCluesForInputClue_roiCache_natureCache___block_invoke_2(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if ([a2 unsignedIntegerValue] == 15)
  {
    v3 = [CLSOutputClue clueWithValue:@"Mountain" forKey:@"Location ROI"];
    v5[0] = *(a1 + 32);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    [v3 addRelatedInputLocationClues:v4];

    [*(a1 + 40) addObject:v3];
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

- (id)locationAreaOfInterestCluesForInputClue:(id)clue aoiCache:(id)cache
{
  v41[4] = *MEMORY[0x277D85DE8];
  clueCopy = clue;
  cacheCopy = cache;
  v29 = objc_opt_new();
  v8 = MEMORY[0x277CBEB98];
  areaOfInterestCategories = [objc_opt_class() areaOfInterestCategories];
  v10 = [v8 setWithArray:areaOfInterestCategories];

  v40[0] = &unk_28449B638;
  v40[1] = &unk_28449B650;
  v41[0] = &unk_28449B740;
  v41[1] = &unk_28449B740;
  v40[2] = &unk_28449B668;
  v40[3] = &unk_28449B698;
  v41[2] = &unk_28449B740;
  v41[3] = &unk_28449B710;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
  v38[0] = &unk_28449B638;
  v38[1] = &unk_28449B650;
  v39[0] = @"Entertainment";
  v39[1] = @"Entertainment";
  v38[2] = &unk_28449B668;
  v38[3] = &unk_28449B698;
  v39[2] = @"Entertainment";
  v39[3] = @"Park";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
  v13 = objc_opt_class();
  region = [clueCopy region];
  [region center];
  v16 = v15;
  v18 = v17;
  areaOfInterestCategories2 = [objc_opt_class() areaOfInterestCategories];
  v20 = [v13 searchBusinessItemsAtCoordinate:areaOfInterestCategories2 forCategories:cacheCopy precision:v16 inCache:{v18, 6000.0}];

  if (v20)
  {
    v21 = objc_opt_class();
    location = [clueCopy location];
    v23 = [v21 shiftedLocationFromOriginalLocation:location];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __76__CLSNewLocationInformant_locationAreaOfInterestCluesForInputClue_aoiCache___block_invoke;
    v30[3] = &unk_2788A7BC0;
    v31 = v10;
    v32 = v11;
    selfCopy = self;
    v34 = v23;
    v35 = v12;
    v36 = clueCopy;
    v24 = v29;
    v37 = v24;
    v25 = v23;
    [v20 enumerateObjectsUsingBlock:v30];
    v26 = v37;
    v27 = v24;
  }

  return v29;
}

void __76__CLSNewLocationInformant_locationAreaOfInterestCluesForInputClue_aoiCache___block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEB58];
  v5 = [v3 categories];
  v6 = [v4 setWithArray:v5];

  [v6 intersectSet:*(a1 + 32)];
  v7 = [v6 anyObject];
  v8 = [*(a1 + 40) objectForKeyedSubscript:v7];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v3 region];
  [v11 radius];
  v13 = v12;

  if (v13 >= v10)
  {
    v14 = objc_opt_class();
    v15 = [v3 region];
    LODWORD(v14) = [v14 doesRegion:v15 containLocation:*(a1 + 56)];

    if (v14)
    {
      v16 = [*(a1 + 64) objectForKeyedSubscript:v7];
      [*(a1 + 72) relevance];
      v18 = [CLSOutputClue clueWithValue:v16 forKey:@"Location POI" confidence:1.0 relevance:v17];
      v20[0] = *(a1 + 72);
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [v18 addRelatedInputLocationClues:v19];

      [*(a1 + 80) addObject:v18];
    }
  }
}

- (id)outputLocationCluesForOuputClueKey:(id)key inputClue:(id)clue region:(id)region traits:(id)traits categories:(id)categories exactMatch:(BOOL)match precision:(double)precision cache:(id)self0
{
  v70 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  clueCopy = clue;
  regionCopy = region;
  traitsCopy = traits;
  categoriesCopy = categories;
  cacheCopy = cache;
  placemark = [clueCopy placemark];
  location = [placemark location];

  if (location)
  {
    v24 = objc_opt_class();
    [location coordinate];
    [v24 shiftedCoordinatesFromOriginalCoordinates:?];
    v26 = v25;
    v28 = v27;
    v29 = objc_opt_class();
    [regionCopy center];
    [v29 shiftedCoordinatesFromOriginalCoordinates:?];
    v31 = v30;
    v33 = v32;
    v34 = [objc_opt_class() searchBusinessItemsAtCoordinate:categoriesCopy forCategories:cacheCopy precision:v30 inCache:{v32, precision}];
    loggingConnection = v34;
    if (v34 && [v34 count])
    {
      v47 = objc_opt_new();
      v36 = objc_alloc_init(MEMORY[0x277CCA940]);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v68 = 0x2020000000;
      v69 = 0;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __124__CLSNewLocationInformant_outputLocationCluesForOuputClueKey_inputClue_region_traits_categories_exactMatch_precision_cache___block_invoke;
      v54[3] = &unk_2788A7B08;
      v54[4] = self;
      loggingConnection = loggingConnection;
      v55 = loggingConnection;
      v62 = v31;
      v63 = v33;
      v56 = regionCopy;
      matchCopy = match;
      v64 = v26;
      v65 = v28;
      v37 = v36;
      v57 = v37;
      p_buf = &buf;
      v58 = keyCopy;
      v59 = clueCopy;
      v38 = v47;
      v60 = v38;
      v48 = traitsCopy;
      [traitsCopy enumerateKeysAndObjectsUsingBlock:v54];
      array = [MEMORY[0x277CBEB18] array];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __124__CLSNewLocationInformant_outputLocationCluesForOuputClueKey_inputClue_region_traits_categories_exactMatch_precision_cache___block_invoke_2;
      v50[3] = &unk_2788A7B30;
      v40 = v37;
      v51 = v40;
      v53 = &buf;
      v41 = array;
      v52 = v41;
      [v38 enumerateKeysAndObjectsUsingBlock:v50];
      v46 = v38;
      v42 = v52;
      v43 = v41;

      traitsCopy = v48;
      _Block_object_dispose(&buf, 8);

      goto LABEL_8;
    }
  }

  else
  {
    v44 = +[CLSLogging sharedLogging];
    loggingConnection = [v44 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = clueCopy;
      _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "ERROR: inputLocationCluePlacemarkLocation is nil. %@", &buf, 0xCu);
    }
  }

  v43 = MEMORY[0x277CBEBF8];
LABEL_8:

  return v43;
}

void __124__CLSNewLocationInformant_outputLocationCluesForOuputClueKey_inputClue_region_traits_categories_exactMatch_precision_cache___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v42 = a4;
  v51 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"categories"];
  v9 = [v7 objectForKeyedSubscript:@"blacklist-categories"];
  v10 = [v7 objectForKeyedSubscript:@"precision"];
  [v10 doubleValue];
  v12 = v11;

  v44 = v7;
  v13 = [v7 objectForKeyedSubscript:@"confidence"];
  [v13 doubleValue];
  v15 = v14;

  v43 = v8;
  [objc_opt_class() filterBusinessItems:*(a1 + 40) forCategories:v8 blocklistCategories:v9];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v16 = v48 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v46;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v45 + 1) + 8 * i) region];
        [v21 radius];
        if (v12 == 0.0)
        {
          v23 = v22;
        }

        else
        {
          v23 = v12;
        }

        [v21 center];
        CLLocationCoordinate2DGetDistanceFrom();
        if (v24 <= v23)
        {
          v25 = v24;
          [*(a1 + 48) radius];
          v27 = *(a1 + 128);
          if (v27 == 1)
          {
            CLLocationCoordinate2DGetDistanceFrom();
            v26 = v23 + v28;
            v29 = *(a1 + 128);
            v27 = v29;
          }

          else
          {
            v29 = 0;
          }

          v30 = v23 * v23 / (v26 * v26);
          if (v30 > 1.0)
          {
            v30 = 1.0;
          }

          v31 = v26 / v23;
          if (v26 / v23 > 1.0)
          {
            v31 = 1.0;
          }

          v32 = v25 * v31;
          if (v26 < v23)
          {
            v26 = v23;
          }

          v33 = 1.0 - v32 / v26;
          if (v33 < 0.0)
          {
            v33 = 0.0;
          }

          v34 = v30 * v33;
          v35 = v30 * v33 >= v15 && v27 == 0;
          if (v35 || ((v25 < 5.0) & v29) != 0)
          {
            if ([CLSNewLocationInformant doesRegion:v21 intersectOtherRegion:*(a1 + 48)])
            {
              [*(a1 + 56) addObject:v6];
              ++*(*(*(a1 + 88) + 8) + 24);
            }

            v37 = *(a1 + 64);
            [*(a1 + 72) relevance];
            v39 = [CLSOutputClue clueWithValue:v6 forKey:v37 confidence:v34 relevance:v38];
            v49 = *(a1 + 72);
            v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
            [v39 addRelatedInputLocationClues:v40];

            v41 = [*(a1 + 80) objectForKeyedSubscript:v6];
            if (!v41)
            {
              v41 = [MEMORY[0x277CBEB18] array];
              [*(a1 + 80) setObject:v41 forKeyedSubscript:v6];
            }

            [v41 addObject:v39];
            if (*(a1 + 128))
            {
              *v42 = 1;

              goto LABEL_38;
            }
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_38:
}

void __124__CLSNewLocationInformant_outputLocationCluesForOuputClueKey_inputClue_region_traits_categories_exactMatch_precision_cache___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (v9)
        {
          [*(*(&v19 + 1) + 8 * i) score];
          v14 = v13;
          [v9 score];
          if (v14 <= v15)
          {
            continue;
          }
        }

        v16 = v12;

        v9 = v16;
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
    if (v9)
    {
      [v9 confidence];
      v18 = v17;
      if ([*(a1 + 32) count] >= 2)
      {
        v18 = v18 * ([*(a1 + 32) countForObject:v5] / *(*(*(a1 + 48) + 8) + 24)) * 0.2 + v18 * 0.8;
      }

      [v9 setConfidence:v18];
      [*(a1 + 40) addObject:v9];
    }
  }
}

- (id)_regionOfInterestTraits
{
  if (_regionOfInterestTraits_onceToken != -1)
  {
    dispatch_once(&_regionOfInterestTraits_onceToken, &__block_literal_global_95);
  }

  v3 = _regionOfInterestTraits_pointOfInterestsTraits;

  return v3;
}

void __50__CLSNewLocationInformant__regionOfInterestTraits__block_invoke()
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"Beach";
  v6[0] = @"categories";
  v6[1] = @"blacklist-categories";
  v7[0] = &unk_28449B358;
  v7[1] = &unk_28449B370;
  v6[2] = @"precision";
  v6[3] = @"confidence";
  v7[2] = &unk_28449B710;
  v7[3] = &unk_28449B848;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v8[1] = @"Mountain";
  v9[0] = v0;
  v4[0] = @"categories";
  v4[1] = @"blacklist-categories";
  v5[0] = &unk_28449B388;
  v5[1] = MEMORY[0x277CBEBF8];
  v4[2] = @"precision";
  v4[3] = @"confidence";
  v5[2] = &unk_28449B728;
  v5[3] = &unk_28449B848;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v9[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v3 = _regionOfInterestTraits_pointOfInterestsTraits;
  _regionOfInterestTraits_pointOfInterestsTraits = v2;
}

- (id)_regionOfInterestCategories
{
  if (_regionOfInterestCategories_onceToken != -1)
  {
    dispatch_once(&_regionOfInterestCategories_onceToken, &__block_literal_global_74);
  }

  v3 = _regionOfInterestCategories_regionOfInterestsCategories;

  return v3;
}

void __54__CLSNewLocationInformant__regionOfInterestCategories__block_invoke()
{
  v0 = _regionOfInterestCategories_regionOfInterestsCategories;
  _regionOfInterestCategories_regionOfInterestsCategories = &unk_28449B340;
}

+ (BOOL)doesRegion:(id)region containLocation:(id)location
{
  locationCopy = location;
  regionCopy = region;
  [regionCopy center];
  [locationCopy coordinate];
  v8 = v7;
  v10 = v9;

  v16 = v8;
  CLLocationCoordinate2DGetDistanceFrom();
  v12 = v11;
  [regionCopy radius];
  v14 = v13;

  return v12 < v14;
}

+ (BOOL)doesRegion:(id)region intersectOtherRegion:(id)otherRegion
{
  otherRegionCopy = otherRegion;
  regionCopy = region;
  [regionCopy center];
  [otherRegionCopy center];
  v16 = v7;
  v17 = v8;
  CLLocationCoordinate2DGetDistanceFrom();
  v10 = v9;
  [regionCopy radius];
  v12 = v11;

  [otherRegionCopy radius];
  v14 = v13;

  return v10 < v12 + v14;
}

+ (CLLocationCoordinate2D)shiftedCoordinatesFromOriginalCoordinates:(CLLocationCoordinate2D)coordinates
{
  longitude = coordinates.longitude;
  latitude = coordinates.latitude;
  v5 = +[CLSLocationShifter sharedLocationShifter];
  [v5 shiftedCoordinateForOriginalCoordinate:{latitude, longitude}];
  v8 = CLLocationCoordinate2DMake(v6, v7);

  v9 = v8.latitude;
  v10 = v8.longitude;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

+ (id)shiftedLocationFromOriginalLocation:(id)location
{
  [location coordinate];
  [self shiftedCoordinatesFromOriginalCoordinates:?];
  v6 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v4 longitude:v5];

  return v6;
}

+ (id)businessItemsForRegion:(id)region poiCache:(id)cache
{
  v5 = MEMORY[0x277CBEB18];
  cacheCopy = cache;
  regionCopy = region;
  v8 = GEOSpatialLookupAllCategories();
  v9 = [v5 arrayWithArray:v8];

  [v9 removeObject:&unk_28449B758];
  [v9 removeObject:&unk_28449B6E0];
  [v9 removeObject:&unk_28449B6F8];
  v10 = objc_opt_class();
  [regionCopy center];
  v12 = v11;
  v14 = v13;

  v15 = [v10 searchBusinessItemsAtCoordinate:v9 forCategories:cacheCopy precision:v12 inCache:{v14, 100.0}];

  return v15;
}

+ (id)filterBusinessItems:(id)items forCategories:(id)categories blocklistCategories:(id)blocklistCategories
{
  v7 = MEMORY[0x277CBEB18];
  blocklistCategoriesCopy = blocklistCategories;
  categoriesCopy = categories;
  itemsCopy = items;
  array = [v7 array];
  v12 = [MEMORY[0x277CBEB98] setWithArray:blocklistCategoriesCopy];

  v13 = [MEMORY[0x277CBEB98] setWithArray:categoriesCopy];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__CLSNewLocationInformant_filterBusinessItems_forCategories_blocklistCategories___block_invoke;
  v20[3] = &unk_2788A7B80;
  v21 = v12;
  v22 = v13;
  v14 = array;
  v23 = v14;
  v15 = v13;
  v16 = v12;
  [itemsCopy enumerateObjectsUsingBlock:v20];

  v17 = v23;
  v18 = v14;

  return v14;
}

void __81__CLSNewLocationInformant_filterBusinessItems_forCategories_blocklistCategories___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEB98];
  v7 = v3;
  v5 = [v3 categories];
  v6 = [v4 setWithArray:v5];

  if ((![a1[4] count] || (objc_msgSend(a1[4], "intersectsSet:", v6) & 1) == 0) && objc_msgSend(a1[5], "intersectsSet:", v6))
  {
    [a1[6] addObject:v7];
  }
}

+ (id)searchBusinessItemsAtCoordinate:(CLLocationCoordinate2D)coordinate forCategories:(id)categories precision:(double)precision inCache:(id)cache
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  categoriesCopy = categories;
  cacheCopy = cache;
  v30.latitude = latitude;
  v30.longitude = longitude;
  if (CLLocationCoordinate2DIsValid(v30))
  {
    v12 = objc_alloc(MEMORY[0x277CBFBC8]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v15 = [v12 initWithCenter:uUIDString radius:latitude identifier:{longitude, precision}];

    v16 = [cacheCopy businessItemsForRegion:v15];
    if (v16)
    {
      v17 = [MEMORY[0x277CBEB98] setWithArray:categoriesCopy];
      v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __91__CLSNewLocationInformant_searchBusinessItemsAtCoordinate_forCategories_precision_inCache___block_invoke;
      v25[3] = &unk_2788A7B58;
      v26 = v17;
      v19 = v18;
      v27 = v19;
      loggingConnection = v17;
      [v16 enumerateObjectsUsingBlock:v25];
      v21 = v27;
      v22 = v19;
    }

    else
    {
      v23 = +[CLSLogging sharedLogging];
      loggingConnection = [v23 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_INFO, "Cannot find business items for region", buf, 2u);
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __91__CLSNewLocationInformant_searchBusinessItemsAtCoordinate_forCategories_precision_inCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEB98];
  v7 = v3;
  v5 = [v3 categories];
  v6 = [v4 setWithArray:v5];

  if ([v6 intersectsSet:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v7];
  }
}

+ (id)widePointOfInterestCategories
{
  if (widePointOfInterestCategories_onceToken != -1)
  {
    dispatch_once(&widePointOfInterestCategories_onceToken, &__block_literal_global_55);
  }

  v3 = widePointOfInterestCategories_widePointOfInterestCategories;

  return v3;
}

void __56__CLSNewLocationInformant_widePointOfInterestCategories__block_invoke()
{
  v0 = widePointOfInterestCategories_widePointOfInterestCategories;
  widePointOfInterestCategories_widePointOfInterestCategories = &unk_28449B328;
}

+ (id)narrowPointOfInterestCategories
{
  if (narrowPointOfInterestCategories_onceToken != -1)
  {
    dispatch_once(&narrowPointOfInterestCategories_onceToken, &__block_literal_global_2438);
  }

  v3 = narrowPointOfInterestCategories_narrowPointOfInterestCategories;

  return v3;
}

void __58__CLSNewLocationInformant_narrowPointOfInterestCategories__block_invoke()
{
  v0 = narrowPointOfInterestCategories_narrowPointOfInterestCategories;
  narrowPointOfInterestCategories_narrowPointOfInterestCategories = &unk_28449B310;
}

+ (id)allPointOfInterestCategories
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CLSNewLocationInformant_allPointOfInterestCategories__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (allPointOfInterestCategories_onceToken != -1)
  {
    dispatch_once(&allPointOfInterestCategories_onceToken, block);
  }

  v2 = allPointOfInterestCategories_pointOfInterestCategories;

  return v2;
}

void __55__CLSNewLocationInformant_allPointOfInterestCategories__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) narrowPointOfInterestCategories];
  v2 = [*(a1 + 32) widePointOfInterestCategories];
  v3 = [v5 arrayByAddingObjectsFromArray:v2];
  v4 = allPointOfInterestCategories_pointOfInterestCategories;
  allPointOfInterestCategories_pointOfInterestCategories = v3;
}

@end