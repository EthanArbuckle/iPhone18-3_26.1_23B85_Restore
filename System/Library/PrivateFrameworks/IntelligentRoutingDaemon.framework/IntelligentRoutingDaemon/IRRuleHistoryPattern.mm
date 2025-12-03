@interface IRRuleHistoryPattern
+ (BOOL)_filterHistoryBySameApp:(id)app withSystemState:(id)state;
+ (BOOL)filterHistoryByBrokeredDeviceScan:(id)scan;
+ (BOOL)filterHistoryBySimilarApp:(id)app withSystemState:(id)state;
- (BOOL)_filterHistoryByEventsToWatch:(id)watch;
- (BOOL)_filterHistoryByMilo:(id)milo withMiloPrediction:(id)prediction;
- (BOOL)_filterHistoryBySameDay:(id)day comparedToDate:(id)date withSystemState:(id)state;
- (BOOL)_filterHistoryBySameLoi:(id)loi withSystemState:(id)state;
- (BOOL)_filterHistoryByTimeInterval:(id)interval comparedToDate:(id)date;
- (BOOL)_filterHistorywithSameCandidates:(id)candidates withSameCandidates:(id)sameCandidates;
- (IRRuleHistoryPattern)init;
- (IRRuleHistoryPattern)initWithEventsToWatch:(id)watch filters:(id)filters timeInterval:(double)interval maxNumberOfEventsInHistory:(unint64_t)history minNumberOfEventsInHistory:(unint64_t)inHistory threshold:(double)threshold;
- (id)_filterHistoryEvents:(id)events withSystemState:(id)state date:(id)date miloPrediction:(id)prediction candiatesContainer:(id)container;
- (id)executeRuleWithCandiatesContainer:(id)container systemStatus:(id)status historyContainer:(id)historyContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer date:(id)date;
@end

@implementation IRRuleHistoryPattern

+ (BOOL)filterHistoryBySimilarApp:(id)app withSystemState:(id)state
{
  appCopy = app;
  stateCopy = state;
  if ([self _filterHistoryBySameApp:appCopy withSystemState:stateCopy])
  {
    v8 = 1;
  }

  else
  {
    sharingPolicy = [appCopy sharingPolicy];
    avInitialRouteSharingPolicy = [stateCopy avInitialRouteSharingPolicy];
    v8 = [sharingPolicy isEqual:avInitialRouteSharingPolicy];
  }

  return v8;
}

+ (BOOL)_filterHistoryBySameApp:(id)app withSystemState:(id)state
{
  stateCopy = state;
  event = [app event];
  bundleID = [event bundleID];
  appInFocusBundleID = [stateCopy appInFocusBundleID];

  LOBYTE(stateCopy) = [bundleID isEqual:appInFocusBundleID];
  return stateCopy;
}

- (BOOL)_filterHistoryByMilo:(id)milo withMiloPrediction:(id)prediction
{
  predictionCopy = prediction;
  miloPredictionEvent = [milo miloPredictionEvent];
  v7 = [predictionCopy scoreForPredictionEventEvent:miloPredictionEvent];

  [v7 doubleValue];
  v9 = v8;

  v10 = +[IRPreferences shared];
  miloLslIsSameMiloThreshold = [v10 miloLslIsSameMiloThreshold];
  [miloLslIsSameMiloThreshold doubleValue];
  v13 = v12;

  return v9 > v13;
}

+ (BOOL)filterHistoryByBrokeredDeviceScan:(id)scan
{
  scanCopy = scan;
  event = [scanCopy event];
  if ([event eventType] == 9)
  {
    v5 = 1;
  }

  else
  {
    event2 = [scanCopy event];
    v5 = [event2 eventType] == 10;
  }

  return v5;
}

- (BOOL)_filterHistoryByEventsToWatch:(id)watch
{
  watchCopy = watch;
  eventsToWatch = [(IRRuleHistoryPattern *)self eventsToWatch];
  event = [watchCopy event];

  LOBYTE(watchCopy) = [eventsToWatch containsObject:event];
  return watchCopy;
}

- (BOOL)_filterHistoryByTimeInterval:(id)interval comparedToDate:(id)date
{
  dateCopy = date;
  date = [interval date];
  [dateCopy timeIntervalSinceDate:date];
  v9 = v8;

  [(IRRuleHistoryPattern *)self timeInterval];
  LOBYTE(self) = v9 < v10;

  return self;
}

- (BOOL)_filterHistoryBySameLoi:(id)loi withSystemState:(id)state
{
  loiCopy = loi;
  stateCopy = state;
  systemState = [loiCopy systemState];
  if ([systemState locationSemanticUserSpecificPlaceType])
  {

LABEL_4:
    systemState2 = [loiCopy systemState];
    locationSemanticUserSpecificPlaceType = [systemState2 locationSemanticUserSpecificPlaceType];
    v11 = locationSemanticUserSpecificPlaceType == [stateCopy locationSemanticUserSpecificPlaceType];
    goto LABEL_5;
  }

  locationSemanticUserSpecificPlaceType2 = [stateCopy locationSemanticUserSpecificPlaceType];

  if (locationSemanticUserSpecificPlaceType2)
  {
    goto LABEL_4;
  }

  systemState2 = [loiCopy systemState];
  locationSemanticLoiIdentifier = [systemState2 locationSemanticLoiIdentifier];
  if (locationSemanticLoiIdentifier)
  {
    systemState3 = [loiCopy systemState];
    locationSemanticLoiIdentifier2 = [systemState3 locationSemanticLoiIdentifier];
    locationSemanticLoiIdentifier3 = [stateCopy locationSemanticLoiIdentifier];
    v11 = [locationSemanticLoiIdentifier2 isEqual:locationSemanticLoiIdentifier3];
  }

  else
  {
    v11 = 0;
  }

LABEL_5:
  return v11;
}

- (BOOL)_filterHistoryBySameDay:(id)day comparedToDate:(id)date withSystemState:(id)state
{
  v7 = MEMORY[0x277CBEAA8];
  stateCopy = state;
  dateCopy = date;
  date = [day date];
  timeZoneSeconds = [stateCopy timeZoneSeconds];

  LOBYTE(v7) = [v7 isDate:date inSameDayAsDate:dateCopy forTimeZoneInSeconds:timeZoneSeconds];
  return v7;
}

- (BOOL)_filterHistorywithSameCandidates:(id)candidates withSameCandidates:(id)sameCandidates
{
  sameCandidatesCopy = sameCandidates;
  candidateIdentifier = [candidates candidateIdentifier];
  v7 = [sameCandidatesCopy candidateForCandidateIdentifier:candidateIdentifier];

  return v7 != 0;
}

- (id)_filterHistoryEvents:(id)events withSystemState:(id)state date:(id)date miloPrediction:(id)prediction candiatesContainer:(id)container
{
  v49 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  stateCopy = state;
  dateCopy = date;
  predictionCopy = prediction;
  containerCopy = container;
  v43 = [(NSSet *)self->_filters containsObject:@"kIRRuleHistoryPatternFilterIsSameMilo"];
  v42 = [(NSSet *)self->_filters containsObject:@"kIRRuleHistoryPatternFilterIsSameApp"];
  v41 = [(NSSet *)self->_filters containsObject:@"kIRRuleHistoryPatternFilterIsSimilarApp"];
  v40 = [(NSSet *)self->_filters containsObject:@"kIRRuleHistoryPatternFilterIsSameLoi"];
  v15 = [(NSSet *)self->_filters containsObject:@"kIRRuleHistoryPatternFilterIsSameDay"];
  v16 = [(NSSet *)self->_filters containsObject:@"kIRRuleHistoryPatternFilterOnlyTestedCandidates"];
  v38 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v17 = eventsCopy;
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v18)
  {
    goto LABEL_29;
  }

  v19 = v18;
  v20 = *v45;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v45 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v44 + 1) + 8 * i);
      if (![(IRRuleHistoryPattern *)self _filterHistoryByEventsToWatch:v22])
      {
        continue;
      }

      v23 = [(IRRuleHistoryPattern *)self _filterHistoryByTimeInterval:v22 comparedToDate:dateCopy];
      if (v43 && v23)
      {
        v24 = [(IRRuleHistoryPattern *)self _filterHistoryByMilo:v22 withMiloPrediction:predictionCopy];
      }

      else
      {
        v24 = !v43 && v23;
      }

      if ((v42 & v24) == 1)
      {
        v25 = [IRRuleHistoryPattern _filterHistoryBySameApp:v22 withSystemState:stateCopy];
      }

      else
      {
        v25 = !v42 & v24;
      }

      if ((v41 & v25) == 1)
      {
        v26 = [IRRuleHistoryPattern filterHistoryBySimilarApp:v22 withSystemState:stateCopy];
      }

      else
      {
        v26 = !v41 & v25;
      }

      if ((v40 & v26) == 1)
      {
        v27 = [(IRRuleHistoryPattern *)self _filterHistoryBySameLoi:v22 withSystemState:stateCopy];
      }

      else
      {
        v27 = !v40 & v26;
      }

      if ((v15 & v27) == 1)
      {
        v28 = [(IRRuleHistoryPattern *)self _filterHistoryBySameDay:v22 comparedToDate:dateCopy withSystemState:stateCopy];
        if (!v16)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v28 = !v15 & v27;
        if (!v16)
        {
LABEL_21:
          if (v28)
          {
            goto LABEL_26;
          }

          continue;
        }
      }

      if (v28 && [(IRRuleHistoryPattern *)self _filterHistorywithSameCandidates:v22 withSameCandidates:containerCopy])
      {
LABEL_26:
        [v38 addObject:v22];
        continue;
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v19);
LABEL_29:

  v29 = [v38 count];
  maxNumberOfEventsInHistory = [(IRRuleHistoryPattern *)self maxNumberOfEventsInHistory];
  v31 = (v29 - maxNumberOfEventsInHistory) & ~((v29 - maxNumberOfEventsInHistory) >> 63);
  maxNumberOfEventsInHistory2 = [(IRRuleHistoryPattern *)self maxNumberOfEventsInHistory];
  if (v29 >= maxNumberOfEventsInHistory2)
  {
    v33 = maxNumberOfEventsInHistory2;
  }

  else
  {
    v33 = v29;
  }

  v34 = [v38 subarrayWithRange:{v31, v33}];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)executeRuleWithCandiatesContainer:(id)container systemStatus:(id)status historyContainer:(id)historyContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer date:(id)date
{
  v62 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  statusCopy = status;
  predictionCopy = prediction;
  dateCopy = date;
  historyEvents = [historyContainer historyEvents];
  selfCopy = self;
  v48 = predictionCopy;
  v49 = statusCopy;
  v47 = dateCopy;
  v18 = [(IRRuleHistoryPattern *)self _filterHistoryEvents:historyEvents withSystemState:statusCopy date:dateCopy miloPrediction:predictionCopy candiatesContainer:containerCopy];

  v19 = [MEMORY[0x277CCA940] set];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v57;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v57 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v56 + 1) + 8 * i);
        candidateIdentifier = [v25 candidateIdentifier];

        if (candidateIdentifier)
        {
          candidateIdentifier2 = [v25 candidateIdentifier];
          [v19 addObject:candidateIdentifier2];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v22);
  }

  v46 = v20;
  v28 = [v20 count];
  v29 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v50 = containerCopy;
  candidates = [containerCopy candidates];
  v31 = [candidates countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v53;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v53 != v33)
        {
          objc_enumerationMutation(candidates);
        }

        v35 = *(*(&v52 + 1) + 8 * j);
        candidateIdentifier3 = [v35 candidateIdentifier];
        v37 = [v19 countForObject:candidateIdentifier3];

        calculateScoreWithoutPortion = [(IRRuleHistoryPattern *)selfCopy calculateScoreWithoutPortion];
        v39 = v37 / v28;
        if (!v28)
        {
          v39 = 0.0;
        }

        if (calculateScoreWithoutPortion)
        {
          v39 = v37;
        }

        v40 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
        candidateIdentifier4 = [v35 candidateIdentifier];
        [v29 setObject:v40 forKeyedSubscript:candidateIdentifier4];
      }

      v32 = [candidates countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v32);
  }

  v42 = [[IRRuleOutputHistoryPattern alloc] initWithRule:selfCopy];
  [(IRRuleOutputHistoryPattern *)v42 setNumberOfEventsInHistory:v28];
  v43 = [v29 copy];
  [(IRRuleOutputHistoryPattern *)v42 setScoreForCandidates:v43];

  v44 = *MEMORY[0x277D85DE8];

  return v42;
}

- (IRRuleHistoryPattern)init
{
  v3.receiver = self;
  v3.super_class = IRRuleHistoryPattern;
  return [(IRRuleHistoryPattern *)&v3 init];
}

- (IRRuleHistoryPattern)initWithEventsToWatch:(id)watch filters:(id)filters timeInterval:(double)interval maxNumberOfEventsInHistory:(unint64_t)history minNumberOfEventsInHistory:(unint64_t)inHistory threshold:(double)threshold
{
  watchCopy = watch;
  filtersCopy = filters;
  v19.receiver = self;
  v19.super_class = IRRuleHistoryPattern;
  v16 = [(IRRuleHistoryPattern *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(IRRuleHistoryPattern *)v16 setEventsToWatch:watchCopy];
    [(IRRuleHistoryPattern *)v17 setFilters:filtersCopy];
    [(IRRuleHistoryPattern *)v17 setTimeInterval:interval];
    [(IRRuleHistoryPattern *)v17 setMaxNumberOfEventsInHistory:history];
    [(IRRuleHistoryPattern *)v17 setMinNumberOfEventsInHistory:inHistory];
    [(IRRuleHistoryPattern *)v17 setThreshold:threshold];
  }

  return v17;
}

@end