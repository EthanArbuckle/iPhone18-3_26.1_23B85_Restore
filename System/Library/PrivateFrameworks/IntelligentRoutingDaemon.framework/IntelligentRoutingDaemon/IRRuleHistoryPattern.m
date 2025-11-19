@interface IRRuleHistoryPattern
+ (BOOL)_filterHistoryBySameApp:(id)a3 withSystemState:(id)a4;
+ (BOOL)filterHistoryByBrokeredDeviceScan:(id)a3;
+ (BOOL)filterHistoryBySimilarApp:(id)a3 withSystemState:(id)a4;
- (BOOL)_filterHistoryByEventsToWatch:(id)a3;
- (BOOL)_filterHistoryByMilo:(id)a3 withMiloPrediction:(id)a4;
- (BOOL)_filterHistoryBySameDay:(id)a3 comparedToDate:(id)a4 withSystemState:(id)a5;
- (BOOL)_filterHistoryBySameLoi:(id)a3 withSystemState:(id)a4;
- (BOOL)_filterHistoryByTimeInterval:(id)a3 comparedToDate:(id)a4;
- (BOOL)_filterHistorywithSameCandidates:(id)a3 withSameCandidates:(id)a4;
- (IRRuleHistoryPattern)init;
- (IRRuleHistoryPattern)initWithEventsToWatch:(id)a3 filters:(id)a4 timeInterval:(double)a5 maxNumberOfEventsInHistory:(unint64_t)a6 minNumberOfEventsInHistory:(unint64_t)a7 threshold:(double)a8;
- (id)_filterHistoryEvents:(id)a3 withSystemState:(id)a4 date:(id)a5 miloPrediction:(id)a6 candiatesContainer:(id)a7;
- (id)executeRuleWithCandiatesContainer:(id)a3 systemStatus:(id)a4 historyContainer:(id)a5 miloPrediction:(id)a6 nearbyDeviceContainer:(id)a7 date:(id)a8;
@end

@implementation IRRuleHistoryPattern

+ (BOOL)filterHistoryBySimilarApp:(id)a3 withSystemState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _filterHistoryBySameApp:v6 withSystemState:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 sharingPolicy];
    v10 = [v7 avInitialRouteSharingPolicy];
    v8 = [v9 isEqual:v10];
  }

  return v8;
}

+ (BOOL)_filterHistoryBySameApp:(id)a3 withSystemState:(id)a4
{
  v5 = a4;
  v6 = [a3 event];
  v7 = [v6 bundleID];
  v8 = [v5 appInFocusBundleID];

  LOBYTE(v5) = [v7 isEqual:v8];
  return v5;
}

- (BOOL)_filterHistoryByMilo:(id)a3 withMiloPrediction:(id)a4
{
  v5 = a4;
  v6 = [a3 miloPredictionEvent];
  v7 = [v5 scoreForPredictionEventEvent:v6];

  [v7 doubleValue];
  v9 = v8;

  v10 = +[IRPreferences shared];
  v11 = [v10 miloLslIsSameMiloThreshold];
  [v11 doubleValue];
  v13 = v12;

  return v9 > v13;
}

+ (BOOL)filterHistoryByBrokeredDeviceScan:(id)a3
{
  v3 = a3;
  v4 = [v3 event];
  if ([v4 eventType] == 9)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 event];
    v5 = [v6 eventType] == 10;
  }

  return v5;
}

- (BOOL)_filterHistoryByEventsToWatch:(id)a3
{
  v4 = a3;
  v5 = [(IRRuleHistoryPattern *)self eventsToWatch];
  v6 = [v4 event];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (BOOL)_filterHistoryByTimeInterval:(id)a3 comparedToDate:(id)a4
{
  v6 = a4;
  v7 = [a3 date];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  [(IRRuleHistoryPattern *)self timeInterval];
  LOBYTE(self) = v9 < v10;

  return self;
}

- (BOOL)_filterHistoryBySameLoi:(id)a3 withSystemState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 systemState];
  if ([v7 locationSemanticUserSpecificPlaceType])
  {

LABEL_4:
    v9 = [v5 systemState];
    v10 = [v9 locationSemanticUserSpecificPlaceType];
    v11 = v10 == [v6 locationSemanticUserSpecificPlaceType];
    goto LABEL_5;
  }

  v8 = [v6 locationSemanticUserSpecificPlaceType];

  if (v8)
  {
    goto LABEL_4;
  }

  v9 = [v5 systemState];
  v13 = [v9 locationSemanticLoiIdentifier];
  if (v13)
  {
    v14 = [v5 systemState];
    v15 = [v14 locationSemanticLoiIdentifier];
    v16 = [v6 locationSemanticLoiIdentifier];
    v11 = [v15 isEqual:v16];
  }

  else
  {
    v11 = 0;
  }

LABEL_5:
  return v11;
}

- (BOOL)_filterHistoryBySameDay:(id)a3 comparedToDate:(id)a4 withSystemState:(id)a5
{
  v7 = MEMORY[0x277CBEAA8];
  v8 = a5;
  v9 = a4;
  v10 = [a3 date];
  v11 = [v8 timeZoneSeconds];

  LOBYTE(v7) = [v7 isDate:v10 inSameDayAsDate:v9 forTimeZoneInSeconds:v11];
  return v7;
}

- (BOOL)_filterHistorywithSameCandidates:(id)a3 withSameCandidates:(id)a4
{
  v5 = a4;
  v6 = [a3 candidateIdentifier];
  v7 = [v5 candidateForCandidateIdentifier:v6];

  return v7 != 0;
}

- (id)_filterHistoryEvents:(id)a3 withSystemState:(id)a4 date:(id)a5 miloPrediction:(id)a6 candiatesContainer:(id)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v39 = a6;
  v37 = a7;
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
  v17 = v12;
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

      v23 = [(IRRuleHistoryPattern *)self _filterHistoryByTimeInterval:v22 comparedToDate:v14];
      if (v43 && v23)
      {
        v24 = [(IRRuleHistoryPattern *)self _filterHistoryByMilo:v22 withMiloPrediction:v39];
      }

      else
      {
        v24 = !v43 && v23;
      }

      if ((v42 & v24) == 1)
      {
        v25 = [IRRuleHistoryPattern _filterHistoryBySameApp:v22 withSystemState:v13];
      }

      else
      {
        v25 = !v42 & v24;
      }

      if ((v41 & v25) == 1)
      {
        v26 = [IRRuleHistoryPattern filterHistoryBySimilarApp:v22 withSystemState:v13];
      }

      else
      {
        v26 = !v41 & v25;
      }

      if ((v40 & v26) == 1)
      {
        v27 = [(IRRuleHistoryPattern *)self _filterHistoryBySameLoi:v22 withSystemState:v13];
      }

      else
      {
        v27 = !v40 & v26;
      }

      if ((v15 & v27) == 1)
      {
        v28 = [(IRRuleHistoryPattern *)self _filterHistoryBySameDay:v22 comparedToDate:v14 withSystemState:v13];
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

      if (v28 && [(IRRuleHistoryPattern *)self _filterHistorywithSameCandidates:v22 withSameCandidates:v37])
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
  v30 = [(IRRuleHistoryPattern *)self maxNumberOfEventsInHistory];
  v31 = (v29 - v30) & ~((v29 - v30) >> 63);
  v32 = [(IRRuleHistoryPattern *)self maxNumberOfEventsInHistory];
  if (v29 >= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v29;
  }

  v34 = [v38 subarrayWithRange:{v31, v33}];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)executeRuleWithCandiatesContainer:(id)a3 systemStatus:(id)a4 historyContainer:(id)a5 miloPrediction:(id)a6 nearbyDeviceContainer:(id)a7 date:(id)a8
{
  v62 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v17 = [a5 historyEvents];
  v51 = self;
  v48 = v15;
  v49 = v14;
  v47 = v16;
  v18 = [(IRRuleHistoryPattern *)self _filterHistoryEvents:v17 withSystemState:v14 date:v16 miloPrediction:v15 candiatesContainer:v13];

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
        v26 = [v25 candidateIdentifier];

        if (v26)
        {
          v27 = [v25 candidateIdentifier];
          [v19 addObject:v27];
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
  v50 = v13;
  v30 = [v13 candidates];
  v31 = [v30 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v52 + 1) + 8 * j);
        v36 = [v35 candidateIdentifier];
        v37 = [v19 countForObject:v36];

        v38 = [(IRRuleHistoryPattern *)v51 calculateScoreWithoutPortion];
        v39 = v37 / v28;
        if (!v28)
        {
          v39 = 0.0;
        }

        if (v38)
        {
          v39 = v37;
        }

        v40 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
        v41 = [v35 candidateIdentifier];
        [v29 setObject:v40 forKeyedSubscript:v41];
      }

      v32 = [v30 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v32);
  }

  v42 = [[IRRuleOutputHistoryPattern alloc] initWithRule:v51];
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

- (IRRuleHistoryPattern)initWithEventsToWatch:(id)a3 filters:(id)a4 timeInterval:(double)a5 maxNumberOfEventsInHistory:(unint64_t)a6 minNumberOfEventsInHistory:(unint64_t)a7 threshold:(double)a8
{
  v14 = a3;
  v15 = a4;
  v19.receiver = self;
  v19.super_class = IRRuleHistoryPattern;
  v16 = [(IRRuleHistoryPattern *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(IRRuleHistoryPattern *)v16 setEventsToWatch:v14];
    [(IRRuleHistoryPattern *)v17 setFilters:v15];
    [(IRRuleHistoryPattern *)v17 setTimeInterval:a5];
    [(IRRuleHistoryPattern *)v17 setMaxNumberOfEventsInHistory:a6];
    [(IRRuleHistoryPattern *)v17 setMinNumberOfEventsInHistory:a7];
    [(IRRuleHistoryPattern *)v17 setThreshold:a8];
  }

  return v17;
}

@end