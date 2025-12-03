@interface IQFMapsPersonalizationLookup
+ (id)_aggregateLifeEvents:(id)events;
+ (id)_muidForKnosisAnswer:(id)answer entityIDToMuid:(id)muid;
+ (id)_parseECRRankedItem:(id)item locationMUIDs:(id)ds;
+ (id)_parseKnosisAnswer:(id)answer entityIDToMuid:(id)muid;
+ (id)sharedMapsPersonalizationLookup;
+ (void)_fetchResultsForEntityIds:(id)ids knosisServer:(id)server completionHandler:(id)handler;
- (IQFMapsPersonalizationLookup)init;
- (id)eventsAtLocations:(id)locations;
- (void)_fetchECRResultForLocationMUIDs:(id)ds completionHandler:(id)handler;
- (void)eventsAtLocations:(id)locations completionHandler:(id)handler;
- (void)init;
@end

@implementation IQFMapsPersonalizationLookup

- (IQFMapsPersonalizationLookup)init
{
  v12.receiver = self;
  v12.super_class = IQFMapsPersonalizationLookup;
  v2 = [(IQFMapsPersonalizationLookup *)&v12 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v11 = 0;
  v3 = [objc_alloc(MEMORY[0x277D1F410]) initWithMode:4 warmup:1 error:&v11];
  v4 = v11;
  ecrClient = v2->_ecrClient;
  v2->_ecrClient = v3;

  if (v2->_ecrClient)
  {
    initWithEntitySubgraphView = [objc_alloc(MEMORY[0x277D1F450]) initWithEntitySubgraphView];
    knosisServer = v2->_knosisServer;
    v2->_knosisServer = initWithEntitySubgraphView;

LABEL_4:
    v8 = v2;
    goto LABEL_8;
  }

  v9 = IQFLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [IQFMapsPersonalizationLookup init];
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (id)sharedMapsPersonalizationLookup
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!sharedMapsPersonalizationLookup_personalizationLookup)
  {
    v3 = objc_opt_new();
    v4 = sharedMapsPersonalizationLookup_personalizationLookup;
    sharedMapsPersonalizationLookup_personalizationLookup = v3;
  }

  objc_sync_exit(v2);

  v5 = sharedMapsPersonalizationLookup_personalizationLookup;

  return v5;
}

- (id)eventsAtLocations:(id)locations
{
  locationsCopy = locations;
  v5 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__IQFMapsPersonalizationLookup_eventsAtLocations___block_invoke;
  v9[3] = &unk_2797ACDA0;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [(IQFMapsPersonalizationLookup *)self eventsAtLocations:locationsCopy completionHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__IQFMapsPersonalizationLookup_eventsAtLocations___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)eventsAtLocations:(id)locations completionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  handlerCopy = handler;
  v8 = IQFLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [IQFMapsPersonalizationLookup eventsAtLocations:completionHandler:];
  }

  v9 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = locationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      v14 = 0;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        muid = [*(*(&v32 + 1) + 8 * v14) muid];
        [v9 addObject:muid];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  v16 = IQFLogCategoryDefault();
  v17 = os_signpost_id_generate(v16);
  v18 = v16;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B9D000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "ecrCallForLocations", " enableTelemetry=YES ", buf, 2u);
  }

  allObjects = [v9 allObjects];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke;
  v25[3] = &unk_2797ACDF0;
  v29 = handlerCopy;
  v30 = v17;
  v26 = v19;
  v27 = v9;
  selfCopy = self;
  v21 = v9;
  v22 = handlerCopy;
  v23 = v19;
  [(IQFMapsPersonalizationLookup *)self _fetchECRResultForLocationMUIDs:allObjects completionHandler:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254B9D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "ecrCallForLocations", &unk_254BA4B52, buf, 2u);
  }

  v10 = IQFLogCategoryDefault();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    v35 = v6;
    if (v11)
    {
      __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_cold_1();
    }

    v12 = objc_opt_new();
    v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v36 = v5;
    obj = [v5 rankedResults];
    v39 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v39)
    {
      v38 = *v53;
      do
      {
        v13 = 0;
        do
        {
          if (*v53 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = v13;
          v14 = *(*(&v52 + 1) + 8 * v13);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v15 = [v14 rankedItems];
          v16 = [v15 countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v49;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v49 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v48 + 1) + 8 * i);
                v21 = [IQFMapsPersonalizationLookup _parseECRRankedItem:v20 locationMUIDs:*(a1 + 40)];
                if (v21)
                {
                  [v12 addObject:v21];
                  v22 = [v20 entityID];
                  v23 = [v22 stringValue];

                  v24 = [v21 muid];
                  [v41 setObject:v24 forKeyedSubscript:v23];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v48 objects:v57 count:16];
            }

            while (v17);
          }

          v13 = v40 + 1;
        }

        while (v40 + 1 != v39);
        v39 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v39);
    }

    v25 = IQFLogCategoryDefault();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_cold_2();
    }

    v26 = os_signpost_id_generate(*(a1 + 32));
    v27 = *(a1 + 32);
    v28 = v27;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254B9D000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "fetchResultsForEntityIds", &unk_254BA4B52, buf, 2u);
    }

    v29 = *(a1 + 48);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_50;
    v42[3] = &unk_2797ACDC8;
    v30 = *(a1 + 32);
    v47 = v26;
    v43 = v30;
    v44 = v12;
    v46 = *(a1 + 56);
    v6 = v35;
    v45 = v35;
    v31 = v12;
    v32 = v41;
    [v29 _fetchResultsForEntityIds:v41 completionHandler:v42];

    v5 = v36;
  }

  else
  {
    if (v11)
    {
      __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_cold_3();
    }

    v33 = *(a1 + 56);
    v32 = objc_opt_new();
    (*(v33 + 16))(v33, v32, v6);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_254B9D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "fetchResultsForEntityIds", &unk_254BA4B52, v9, 2u);
  }

  [*(a1 + 40) addObjectsFromArray:v3];
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
}

- (void)_fetchECRResultForLocationMUIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [ds componentsJoinedByString:{@", "}];
  v8 = IQFLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [IQFMapsPersonalizationLookup _fetchECRResultForLocationMUIDs:completionHandler:];
  }

  v9 = objc_alloc(MEMORY[0x277D1F418]);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"locationWithMuid([%@])", v7];
  v11 = [v9 initWithKgq:v10 text:0 mode:4 includeFeatures:1];

  v12 = IQFLogCategoryDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [IQFMapsPersonalizationLookup _fetchECRResultForLocationMUIDs:completionHandler:];
  }

  [(GDEntityResolutionInProcessTextClient *)self->_ecrClient resolveEntitiesForRequest:v11 completionHandler:handlerCopy];
}

+ (void)_fetchResultsForEntityIds:(id)ids knosisServer:(id)server completionHandler:(id)handler
{
  idsCopy = ids;
  serverCopy = server;
  handlerCopy = handler;
  allKeys = [idsCopy allKeys];
  if ([allKeys count])
  {
    v12 = objc_alloc(MEMORY[0x277D1F440]);
    v13 = MEMORY[0x277CCACA8];
    v14 = [allKeys componentsJoinedByString:{@", "}];
    v15 = [v13 stringWithFormat:@"searchEntityByLocation([%@])", v14];
    v16 = [v12 initWithKGQ:v15 query:&stru_286709E90 limit:&unk_28670A840 offset:&unk_28670A858];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke;
    v18[3] = &unk_2797ACE18;
    v20 = handlerCopy;
    selfCopy = self;
    v19 = idsCopy;
    [serverCopy executeKGQ:v16 completionHandler:v18];
  }

  else
  {
    v17 = objc_opt_new();
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

void __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 status] == 1)
  {
    v5 = IQFLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke_cold_1(v4, v5);
    }

    v6 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v4 answers];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(a1 + 48) _parseKnosisAnswer:*(*(&v17 + 1) + 8 * v11) entityIDToMuid:*(a1 + 32)];
          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [*(a1 + 48) _aggregateLifeEvents:v6];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = IQFLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke_cold_2(v4, v14);
    }

    v15 = *(a1 + 40);
    v6 = objc_opt_new();
    (*(v15 + 16))(v15, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)_parseECRRankedItem:(id)item locationMUIDs:(id)ds
{
  itemCopy = item;
  dsCopy = ds;
  sourceID = [itemCopy sourceID];
  value = [sourceID value];

  if ([value length] && (objc_msgSend(dsCopy, "containsObject:", value) & 1) != 0)
  {
    v9 = IQFLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[IQFMapsPersonalizationLookup _parseECRRankedItem:locationMUIDs:];
    }

    features = [itemCopy features];
    locationLastExecutionAge = [features locationLastExecutionAge];

    if (locationLastExecutionAge)
    {
      [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-locationLastExecutionAge];
    }

    else
    {
      [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    }
    v12 = ;
    v14 = [IQFMapsPersonalizationResult alloc];
    v15 = MEMORY[0x277CCABB0];
    features2 = [itemCopy features];
    [features2 locationTrendingPopularity];
    v17 = [v15 numberWithDouble:?];
    v18 = MEMORY[0x277CCABB0];
    features3 = [itemCopy features];
    [features3 locationPopularityGivenSpecificGeoHash];
    v20 = [v18 numberWithDouble:?];
    v21 = MEMORY[0x277CCABB0];
    [itemCopy entityRelevance];
    v22 = [v21 numberWithDouble:?];
    v13 = [(IQFMapsPersonalizationResult *)v14 initWithMUID:value resultType:10 eventName:0 startEventDate:0 endEventDate:0 terminal:0 flightCode:0 ticketNumber:0 numberOfVisits:v17 numberOfVisitsGivenLocation:v20 dateOfLastVisit:v12 entityRelevanceScore:v22 numberOfGuests:0];

    v23 = IQFLogCategoryDefault();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      +[IQFMapsPersonalizationLookup _parseECRRankedItem:locationMUIDs:];
    }
  }

  else
  {
    v12 = IQFLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[IQFMapsPersonalizationLookup _parseECRRankedItem:locationMUIDs:];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_parseKnosisAnswer:(id)answer entityIDToMuid:(id)muid
{
  v89 = *MEMORY[0x277D85DE8];
  answerCopy = answer;
  muidCopy = muid;
  v8 = [self _muidForKnosisAnswer:answerCopy entityIDToMuid:muidCopy];
  if (!v8)
  {
    v61 = 0;
    goto LABEL_67;
  }

  v65 = muidCopy;
  v66 = v8;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  facts = [answerCopy facts];
  v10 = [facts countByEnumeratingWithState:&v82 objects:v88 count:16];
  if (!v10)
  {

    v58 = 0;
    v13 = 0;
    v12 = 0;
    v72 = 0;
LABEL_63:
    v62 = IQFLogCategoryDefault();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      [IQFMapsPersonalizationLookup _parseKnosisAnswer:v66 entityIDToMuid:v58];
    }

    goto LABEL_65;
  }

  v11 = v10;
  v72 = 0;
  v73 = 0;
  v12 = 0;
  v13 = 0;
  v70 = *v83;
  v67 = facts;
  do
  {
    v14 = 0;
    v68 = v11;
    do
    {
      if (*v83 != v70)
      {
        objc_enumerationMutation(facts);
      }

      v71 = v14;
      v15 = *(*(&v82 + 1) + 8 * v14);
      predicateId = [v15 predicateId];
      if ([predicateId isEqualToString:@"PS33"])
      {
        objectID = [v15 objectID];

        v13 = objectID;
        goto LABEL_36;
      }

      v18 = predicateId;
      if ([predicateId isEqualToString:@"nm_hasDate"])
      {
        v69 = v13;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        qualifiers = [v15 qualifiers];
        v20 = [qualifiers countByEnumeratingWithState:&v78 objects:v87 count:16];
        if (!v20)
        {
          goto LABEL_35;
        }

        v21 = v20;
        v22 = *v79;
        while (1)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v79 != v22)
            {
              objc_enumerationMutation(qualifiers);
            }

            v24 = *(*(&v78 + 1) + 8 * i);
            predicateId2 = [v24 predicateId];
            v26 = [predicateId2 isEqualToString:@"nm_imputedStartTime"];

            if (v26)
            {
              v27 = MEMORY[0x277CBEAA8];
              objectID2 = [v24 objectID];
              [objectID2 doubleValue];
              v29 = [v27 dateWithTimeIntervalSinceReferenceDate:?];
              v30 = v12;
              v12 = v29;
            }

            else
            {
              predicateId3 = [v24 predicateId];
              v32 = [predicateId3 isEqualToString:@"nm_imputedEndTime"];

              if (!v32)
              {
                goto LABEL_20;
              }

              v33 = MEMORY[0x277CBEAA8];
              objectID2 = [v24 objectID];
              [objectID2 doubleValue];
              v34 = [v33 dateWithTimeIntervalSinceReferenceDate:?];
              v30 = v72;
              v72 = v34;
            }

LABEL_20:
            predicateId = v18;
          }

          v21 = [qualifiers countByEnumeratingWithState:&v78 objects:v87 count:16];
          if (!v21)
          {
            goto LABEL_35;
          }
        }
      }

      if ([predicateId isEqualToString:@"PS72"])
      {
        v69 = v13;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        qualifiers = [v15 qualifiers];
        v35 = [qualifiers countByEnumeratingWithState:&v74 objects:v86 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v75;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v75 != v37)
              {
                objc_enumerationMutation(qualifiers);
              }

              v39 = *(*(&v74 + 1) + 8 * j);
              predicateId4 = [v39 predicateId];
              v41 = [predicateId4 isEqualToString:@"PS396"];

              if (v41)
              {
                objectID3 = [v39 objectID];
                v43 = [objectID3 isEqual:@"EKCalendarItemIdentifier"];

                v44 = v73;
                if (v43)
                {
                  v44 = 9;
                }

                v73 = v44;
              }

              predicateId = v18;
            }

            v36 = [qualifiers countByEnumeratingWithState:&v74 objects:v86 count:16];
          }

          while (v36);
        }

LABEL_35:

        v11 = v68;
        v13 = v69;
        facts = v67;
      }

      else
      {
        if (![predicateId isEqual:@"nm_sgEventType"])
        {
          if (![predicateId isEqualToString:@"PS1"])
          {
            goto LABEL_36;
          }

          objectID4 = [v15 objectID];
          v49 = [objectID4 isEqualToString:@"SB764"];

          v47 = v73;
          if (v49)
          {
            v47 = 1;
          }

          goto LABEL_49;
        }

        objectID5 = [v15 objectID];
        v46 = [objectID5 isEqualToString:@"FlightReservation"];

        if (v46)
        {
          v47 = 2;
LABEL_49:
          v73 = v47;
          goto LABEL_36;
        }

        objectID6 = [v15 objectID];
        v51 = [objectID6 isEqualToString:@"FoodEstablishmentReservation"];

        if (v51)
        {
          v47 = 4;
          goto LABEL_49;
        }

        objectID7 = [v15 objectID];
        v53 = [objectID7 isEqualToString:@"LodgingReservation"];

        if (v53)
        {
          v47 = 5;
          goto LABEL_49;
        }

        objectID8 = [v15 objectID];
        v55 = [objectID8 isEqualToString:@"RentalCarReservation"];

        v56 = v73;
        if (v55)
        {
          v56 = 6;
        }

        v73 = v56;
      }

LABEL_36:

      v14 = v71 + 1;
    }

    while (v71 + 1 != v11);
    v57 = [facts countByEnumeratingWithState:&v82 objects:v88 count:16];
    v11 = v57;
  }

  while (v57);

  v58 = v73;
  if (!v73)
  {
    goto LABEL_63;
  }

  if (isCalendarBasedPersonalizationResultType(v73) && (!v12 || ([v12 isDateInTodayOrFuture] & 1) == 0))
  {
    v62 = IQFLogCategoryDefault();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      [IQFMapsPersonalizationLookup _parseKnosisAnswer:v66 entityIDToMuid:v73];
    }

LABEL_65:

    v61 = 0;
    v60 = v72;
    goto LABEL_66;
  }

  v59 = IQFLogCategoryDefault();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    [IQFMapsPersonalizationLookup _parseKnosisAnswer:v66 entityIDToMuid:v73];
  }

  v60 = v72;
  v61 = [[IQFMapsPersonalizationResult alloc] initWithMUID:v66 resultType:v73 eventName:v13 startEventDate:v12 endEventDate:v72 terminal:0 flightCode:0 ticketNumber:0 numberOfVisits:0 numberOfVisitsGivenLocation:0 dateOfLastVisit:0 entityRelevanceScore:&unk_28670A858 numberOfGuests:0];
LABEL_66:

  muidCopy = v65;
  v8 = v66;
LABEL_67:

  v63 = *MEMORY[0x277D85DE8];

  return v61;
}

+ (id)_aggregateLifeEvents:(id)events
{
  v43 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v32 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = eventsCopy;
  v6 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        if ([v10 resultType] == 1)
        {
          muid = [v10 muid];
          v12 = [v4 objectForKeyedSubscript:muid];
          if (v12)
          {
            v13 = v12;
            v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "intValue") + 1}];
          }

          else
          {
            v14 = &unk_28670A870;
          }

          [v4 setValue:v14 forKey:muid];
          v15 = [v5 objectForKeyedSubscript:muid];
          endEventDate = [v10 endEventDate];
          v17 = endEventDate;
          if (v15)
          {
            v18 = [endEventDate laterDate:v15];

            v17 = v18;
          }

          [v5 setValue:v17 forKey:muid];
        }

        else
        {
          [v32 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  allKeys = [v4 allKeys];
  v19 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v33 + 1) + 8 * j);
        v24 = [IQFMapsPersonalizationResult alloc];
        v25 = [v4 objectForKey:v23];
        v26 = [v5 objectForKey:v23];
        v27 = [(IQFMapsPersonalizationResult *)v24 initWithMUID:v23 resultType:1 eventName:0 startEventDate:0 endEventDate:0 terminal:0 flightCode:0 ticketNumber:0 numberOfVisits:v25 numberOfVisitsGivenLocation:0 dateOfLastVisit:v26 entityRelevanceScore:0 numberOfGuests:0];

        [v32 addObject:v27];
      }

      v20 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v20);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)_muidForKnosisAnswer:(id)answer entityIDToMuid:(id)muid
{
  v50 = *MEMORY[0x277D85DE8];
  muidCopy = muid;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  parents = [answer parents];
  v7 = [parents countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    v32 = parents;
    v28 = *v44;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(parents);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        facts = [v11 facts];
        v33 = [facts countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v33)
        {
          v13 = *v40;
          v29 = i;
          v30 = v8;
          v34 = facts;
          v31 = *v40;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v40 != v13)
              {
                objc_enumerationMutation(facts);
              }

              v15 = *(*(&v39 + 1) + 8 * j);
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              qualifiers = [v15 qualifiers];
              v17 = [qualifiers countByEnumeratingWithState:&v35 objects:v47 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v36;
                while (2)
                {
                  for (k = 0; k != v18; ++k)
                  {
                    if (*v36 != v19)
                    {
                      objc_enumerationMutation(qualifiers);
                    }

                    v21 = *(*(&v35 + 1) + 8 * k);
                    predicateId = [v21 predicateId];
                    v23 = [predicateId isEqual:@"PS107"];

                    if (v23)
                    {
                      objectID = [v21 objectID];
                      v25 = [muidCopy objectForKey:objectID];

                      if (v25)
                      {

                        parents = v32;
                        goto LABEL_27;
                      }
                    }
                  }

                  v18 = [qualifiers countByEnumeratingWithState:&v35 objects:v47 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              facts = v34;
              v13 = v31;
            }

            parents = v32;
            v9 = v28;
            i = v29;
            v8 = v30;
            v33 = [v34 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v33);
        }
      }

      v8 = [parents countByEnumeratingWithState:&v43 objects:v49 count:16];
      v25 = 0;
    }

    while (v8);
  }

  else
  {
    v25 = 0;
  }

LABEL_27:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)init
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_254B9D000, v0, OS_LOG_TYPE_ERROR, "IQFMapsPersonalizationLookup: Unable to initialize GDEntityResolutionInProcessTextClient with error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__IQFMapsPersonalizationLookup_eventsAtLocations_completionHandler___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_fetchECRResultForLocationMUIDs:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_fetchECRResultForLocationMUIDs:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 answers];
  [v3 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_254B9D000, a2, OS_LOG_TYPE_DEBUG, "IQFMapsPersonalizationLookup: Knosis returned result with %tu answers", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __89__IQFMapsPersonalizationLookup__fetchResultsForEntityIds_knosisServer_completionHandler___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 status];
  v5 = [a1 errorMessage];
  v7 = 134218242;
  v8 = v4;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_254B9D000, a2, OS_LOG_TYPE_DEBUG, "IQFMapsPersonalizationLookup: Knosis returned status: %tu, error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_parseECRRankedItem:locationMUIDs:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_parseECRRankedItem:locationMUIDs:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_parseECRRankedItem:locationMUIDs:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_254B9D000, v0, OS_LOG_TYPE_ERROR, "IQFMapsPersonalizationLookup: no sourceID for ECR item or sourceID does not match location MUIDs: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_parseKnosisAnswer:(uint64_t)a1 entityIDToMuid:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  LODWORD(v5) = 134218242;
  *(&v5 + 4) = a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_254B9D000, v2, v3, "IQFMapsPersonalizationLookup: Found personalization result of type %tu for muid: %@", v5, DWORD2(v5));
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)_parseKnosisAnswer:(uint64_t)a1 entityIDToMuid:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  LODWORD(v5) = 134218242;
  *(&v5 + 4) = a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_254B9D000, v2, v3, "IQFMapsPersonalizationLookup: Skipping personalization result of type %tu for muid: %@ because start date is missing or in the past", v5, DWORD2(v5));
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)_parseKnosisAnswer:(uint64_t)a1 entityIDToMuid:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  LODWORD(v5) = 134218242;
  *(&v5 + 4) = a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_254B9D000, v2, v3, "IQFMapsPersonalizationLookup: Skipping personalization result of type %tu for muid: %@", v5, DWORD2(v5));
  v4 = *MEMORY[0x277D85DE8];
}

@end