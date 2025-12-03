@interface IQFMapsCoreAnalyticsLogger
+ (id)BOOLeanCoreAnalyticsKeys;
+ (id)_createCoreAnalyticsEventForLocation:(id)location index:(unint64_t)index muidsToResults:(id)results;
+ (id)logCoreAnalyticsEventsWithResults:(id)results locations:(id)locations;
@end

@implementation IQFMapsCoreAnalyticsLogger

+ (id)logCoreAnalyticsEventsWithResults:(id)results locations:(id)locations
{
  v44 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  locationsCopy = locations;
  v6 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = resultsCopy;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        muid = [v11 muid];
        v13 = [v6 objectForKey:muid];
        v14 = [v13 mutableCopy];

        if (v14)
        {
          [v14 addObject:v11];
        }

        else
        {
          v14 = [MEMORY[0x277CBEB18] arrayWithObject:v11];
        }

        [v6 setObject:v14 forKey:muid];
      }

      v8 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v8);
  }

  v15 = objc_opt_new();
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __74__IQFMapsCoreAnalyticsLogger_logCoreAnalyticsEventsWithResults_locations___block_invoke;
  v32[3] = &unk_2797ACD30;
  selfCopy = self;
  v16 = v6;
  v33 = v16;
  v17 = v15;
  v34 = v17;
  v35 = v37;
  [locationsCopy enumerateObjectsUsingBlock:v32];
  v18 = objc_opt_new();
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];
  v21 = [environment objectForKey:@"XCTestConfigurationFilePath"];
  v22 = v21 != 0;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __74__IQFMapsCoreAnalyticsLogger_logCoreAnalyticsEventsWithResults_locations___block_invoke_2;
  v28[3] = &unk_2797ACD58;
  v30 = v37;
  v31 = v22;
  v23 = v18;
  v29 = v23;
  [v17 enumerateObjectsUsingBlock:v28];

  _Block_object_dispose(v37, 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __74__IQFMapsCoreAnalyticsLogger_logCoreAnalyticsEventsWithResults_locations___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 56) _createCoreAnalyticsEventForLocation:a2 index:a3 muidsToResults:*(a1 + 32)];
  [*(a1 + 40) addObject:v5];
  v4 = [v5 objectForKey:IQFMapsCoreAnalyticsFieldName_hasPersonalizationSignals];
  if ([v4 BOOLValue])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void __74__IQFMapsCoreAnalyticsLogger_logCoreAnalyticsEventsWithResults_locations___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(*(*(a1 + 40) + 8) + 24)];
  [v4 setValue:v3 forKey:IQFMapsCoreAnalyticsFieldName_queryResultsHavePersonalizationSignals];

  if ((*(a1 + 48) & 1) == 0)
  {
    AnalyticsSendEvent();
  }

  [*(a1 + 32) addObject:v4];
}

+ (id)_createCoreAnalyticsEventForLocation:(id)location index:(unint64_t)index muidsToResults:(id)results
{
  v60 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  resultsCopy = results;
  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [v9 setObject:v10 forKey:IQFMapsCoreAnalyticsFieldName_startingRank];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  [v9 setObject:processName forKey:IQFMapsCoreAnalyticsFieldName_client];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  bOOLeanCoreAnalyticsKeys = [objc_opt_class() BOOLeanCoreAnalyticsKeys];
  v14 = [bOOLeanCoreAnalyticsKeys countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v55;
    v17 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(bOOLeanCoreAnalyticsKeys);
        }

        [v9 setObject:v17 forKey:*(*(&v54 + 1) + 8 * i)];
      }

      v15 = [bOOLeanCoreAnalyticsKeys countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v15);
  }

  v49 = locationCopy;
  muid = [locationCopy muid];
  v48 = resultsCopy;
  v20 = [resultsCopy objectForKey:muid];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v22)
  {
    v24 = 0;
    goto LABEL_43;
  }

  v23 = v22;
  v24 = 0;
  v25 = *v51;
  do
  {
    for (j = 0; j != v23; ++j)
    {
      if (*v51 != v25)
      {
        objc_enumerationMutation(v21);
      }

      v27 = *(*(&v50 + 1) + 8 * j);
      startEventDate = [v27 startEventDate];
      isDateInTodayOrFuture = [startEventDate isDateInTodayOrFuture];

      startEventDate2 = [v27 startEventDate];
      [startEventDate2 timeIntervalSinceNow];
      v32 = v31;

      v33 = v32 / 3600.0;
      dateOfLastVisit = [v27 dateOfLastVisit];
      [dateOfLastVisit timeIntervalSinceNow];
      v36 = v35;

      v37 = v36 / -3600.0;
      resultType = [v27 resultType];
      if (resultType <= 5)
      {
        if (resultType <= 3)
        {
          if ((resultType - 2) < 2)
          {
            if (!isDateInTodayOrFuture)
            {
              continue;
            }

            numberOfVisits = [MEMORY[0x277CCABB0] numberWithBool:1];
            v40 = IQFMapsCoreAnalyticsFieldName_hasUpcomingFlightReservation;
            goto LABEL_37;
          }

          if (resultType != 1)
          {
            continue;
          }

          [v9 setObject:MEMORY[0x277CBEC38] forKey:IQFMapsCoreAnalyticsFieldName_hasLifeEvent];
          numberOfVisits = [v27 numberOfVisits];
          v40 = IQFMapsCoreAnalyticsFieldName_rawLifeEventVisitCount;
          v43 = IQFMapsCoreAnalyticsFieldName_lifeEventTimeSinceLastVisit;
LABEL_38:
          [v9 setObject:numberOfVisits forKey:*v40];

          v44 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
          [v9 setObject:v44 forKey:*v43];

          v24 = 1;
          continue;
        }

        if (resultType == 4)
        {
          if (!isDateInTodayOrFuture)
          {
            continue;
          }

          numberOfVisits = [MEMORY[0x277CCABB0] numberWithBool:1];
          v40 = IQFMapsCoreAnalyticsFieldName_hasUpcomingRestaurantReservation;
        }

        else
        {
          if (!isDateInTodayOrFuture)
          {
            continue;
          }

          numberOfVisits = [MEMORY[0x277CCABB0] numberWithBool:1];
          v40 = IQFMapsCoreAnalyticsFieldName_hasUpcomingHotelReservation;
        }

LABEL_37:
        v37 = v33;
        v43 = IQFMapsCoreAnalyticsFieldName_timeToUpcomingEvent;
        goto LABEL_38;
      }

      if (resultType > 8)
      {
        if (resultType != 9)
        {
          if (resultType != 10)
          {
            continue;
          }

          [v9 setObject:MEMORY[0x277CBEC38] forKey:IQFMapsCoreAnalyticsFieldName_hasEntityRelevance];
          numberOfVisits2 = [v27 numberOfVisits];
          [v9 setObject:numberOfVisits2 forKey:IQFMapsCoreAnalyticsFieldName_decayedVisitCount];

          numberOfVisitsGivenLocation = [v27 numberOfVisitsGivenLocation];
          [v9 setObject:numberOfVisitsGivenLocation forKey:IQFMapsCoreAnalyticsFieldName_decayedVisitCountGivenCurrentLocation];

          numberOfVisits = [v27 entityRelevanceScore];
          v40 = IQFMapsCoreAnalyticsFieldName_entityRelevanceScore;
          v43 = IQFMapsCoreAnalyticsFieldName_timeSinceLastVisit;
          goto LABEL_38;
        }

        if (!isDateInTodayOrFuture)
        {
          continue;
        }

        numberOfVisits = [MEMORY[0x277CCABB0] numberWithBool:1];
        v40 = IQFMapsCoreAnalyticsFieldName_hasUpcomingGenericCalendarEvent;
        goto LABEL_37;
      }

      if ((resultType - 6) < 2)
      {
        if (!isDateInTodayOrFuture)
        {
          continue;
        }

        numberOfVisits = [MEMORY[0x277CCABB0] numberWithBool:1];
        v40 = IQFMapsCoreAnalyticsFieldName_hasUpcomingCarReservation;
        goto LABEL_37;
      }

      if (resultType == 8 && isDateInTodayOrFuture)
      {
        numberOfVisits = [MEMORY[0x277CCABB0] numberWithBool:1];
        v40 = &IQFMapsCoreAnalyticsFieldName_hasUpcomingTicketReservation;
        goto LABEL_37;
      }
    }

    v23 = [v21 countByEnumeratingWithState:&v50 objects:v58 count:16];
  }

  while (v23);
LABEL_43:

  v45 = [MEMORY[0x277CCABB0] numberWithBool:v24 & 1];
  [v9 setObject:v45 forKey:IQFMapsCoreAnalyticsFieldName_hasPersonalizationSignals];

  v46 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)BOOLeanCoreAnalyticsKeys
{
  if (BOOLeanCoreAnalyticsKeys_onceToken != -1)
  {
    +[IQFMapsCoreAnalyticsLogger BOOLeanCoreAnalyticsKeys];
  }

  v3 = BOOLeanCoreAnalyticsKeys_BOOLeanCoreAnalyticsKeys;

  return v3;
}

void __54__IQFMapsCoreAnalyticsLogger_BOOLeanCoreAnalyticsKeys__block_invoke()
{
  v3[10] = *MEMORY[0x277D85DE8];
  v3[0] = IQFMapsCoreAnalyticsFieldName_hasPersonalizationSignals;
  v3[1] = IQFMapsCoreAnalyticsFieldName_queryResultsHavePersonalizationSignals;
  v3[2] = IQFMapsCoreAnalyticsFieldName_hasLifeEvent;
  v3[3] = IQFMapsCoreAnalyticsFieldName_hasEntityRelevance;
  v3[4] = IQFMapsCoreAnalyticsFieldName_hasUpcomingCarReservation[0];
  v3[5] = IQFMapsCoreAnalyticsFieldName_hasUpcomingFlightReservation[0];
  v3[6] = IQFMapsCoreAnalyticsFieldName_hasUpcomingGenericCalendarEvent[0];
  v3[7] = IQFMapsCoreAnalyticsFieldName_hasUpcomingHotelReservation[0];
  v3[8] = IQFMapsCoreAnalyticsFieldName_hasUpcomingRestaurantReservation[0];
  v3[9] = IQFMapsCoreAnalyticsFieldName_hasUpcomingTicketReservation;
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:10];
  v1 = BOOLeanCoreAnalyticsKeys_BOOLeanCoreAnalyticsKeys;
  BOOLeanCoreAnalyticsKeys_BOOLeanCoreAnalyticsKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end