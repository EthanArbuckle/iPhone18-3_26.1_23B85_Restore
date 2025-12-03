@interface NTPBPersonalizationAggregateDelta(FCAdditions)
- (uint64_t)addAction:()FCAdditions count:;
- (uint64_t)applyToAggregate:()FCAdditions withTreatment:;
- (void)applyToDelta:()FCAdditions;
@end

@implementation NTPBPersonalizationAggregateDelta(FCAdditions)

- (uint64_t)addAction:()FCAdditions count:
{
  eventsCount = [self eventsCount];
  result = [self events];
  if (eventsCount && (v9 = result + 4 * eventsCount, v10 = *(v9 - 4), (v10 & 0x3F) == a3))
  {
    *(v9 - 4) = a3 | ((a4 + (v10 >> 6)) << 6);
  }

  else
  {

    return [self addEvents:a3 | (a4 << 6)];
  }

  return result;
}

- (uint64_t)applyToAggregate:()FCAdditions withTreatment:
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "treatment"];
    *buf = 136315906;
    v73 = "[NTPBPersonalizationAggregateDelta(FCAdditions) applyToAggregate:withTreatment:]";
    v74 = 2080;
    v75 = "NTPBPersonalizationAggregateDelta+FCAdditions.m";
    v76 = 1024;
    *v77 = 42;
    *&v77[4] = 2114;
    *&v77[6] = v60;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  featureKey = [v6 featureKey];
  v9 = [featureKey isEqualToString:@"f0"];

  if (![v6 eventCount])
  {
    [self defaultClicks];
    [v6 setClicks:?];
    [self defaultImpressions];
    [v6 setImpressions:?];
  }

  if (v9)
  {
    baselineClicksByAction = [v7 baselineClicksByAction];
    baselineImpressionsByAction = [v7 baselineImpressionsByAction];
  }

  else
  {
    baselineClicksByAction = [v7 featureClicksByAction];
    baselineImpressionsByAction = [v7 featureImpressionsByAction];
  }

  v11 = baselineImpressionsByAction;
  [v6 clicks];
  v13 = v12;
  [v6 impressions];
  v15 = v14;
  eventCount = [v6 eventCount];
  events = [self events];
  [self impressionBias];
  if (v17 == 0.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = v17;
  }

  [self groupBias];
  v20 = v19;
  v21 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v48 = v21;
    featureKey2 = [v6 featureKey];
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "eventsCount")}];
    *buf = 138412546;
    v73 = featureKey2;
    v74 = 2112;
    v75 = v50;
    _os_log_debug_impl(&dword_1B63EF000, v48, OS_LOG_TYPE_DEBUG, "%@ - Applying %@ events to aggregate", buf, 0x16u);
  }

  v65 = v6;
  selfCopy = self;
  eventsCount = [self eventsCount];
  if (eventsCount)
  {
    v23 = eventsCount;
    v24 = 0;
    v25 = 0;
    v66 = v20;
    v67 = v18;
    v61 = v11;
    do
    {
      v26 = *(events + 4 * v25);
      v27 = v20 * *&baselineClicksByAction[v26 & 0x3F].isa;
      v28 = v20 * (v18 * *(v11 + 8 * (v26 & 0x3F)));
      v29 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
      {
        log = v29;
        featureKey3 = [v65 featureKey];
        v42 = NSStringFromFCPersonalizationAction(v26 & 0x3F);
        v43 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
        [MEMORY[0x1E696AD98] numberWithDouble:v28];
        v44 = v64 = v24;
        *buf = 138413058;
        v73 = featureKey3;
        v74 = 2112;
        v75 = v42;
        v76 = 2112;
        *v77 = v43;
        *&v77[8] = 2112;
        *&v77[10] = v44;
        _os_log_debug_impl(&dword_1B63EF000, log, OS_LOG_TYPE_DEBUG, "%@ - Applying action %@ C : %@, I : %@", buf, 0x2Au);

        v24 = v64;
        v11 = v61;
      }

      if (v27 != 0.0 || v28 != 0.0)
      {
        v30 = v26 >> 6;
        if (v26 >= 0x40)
        {
          do
          {
            defaultScoringConfig = [v7 defaultScoringConfig];
            [defaultScoringConfig decayFactor];
            v33 = v32;
            v34 = v27;
            if (v32 != 1.0)
            {
              v34 = (1.0 - pow(v32, v27)) / (1.0 - v32);
            }

            v35 = pow(v33, v28);

            defaultScoringConfig2 = [v7 defaultScoringConfig];
            [defaultScoringConfig2 decayFactor];
            v38 = v37;
            v39 = pow(v37, v28);
            v40 = v28;
            if (v38 != 1.0)
            {
              v40 = (1.0 - v39) / (1.0 - v38);
            }

            v13 = v34 + v13 * v35;
            v15 = v40 + v15 * v39;

            --v30;
          }

          while (v30);
        }

        eventCount += v26 >> 6;
        v24 = 1;
        v20 = v66;
        v18 = v67;
      }

      ++v25;
    }

    while (v25 != v23);
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  v45 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v70 = v45;
    featureKey4 = [v65 featureKey];
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(selfCopy, "timestamp")}];
    v52 = MEMORY[0x1E696AD98];
    [v65 clicks];
    v53 = [v52 numberWithDouble:?];
    v54 = MEMORY[0x1E696AD98];
    [v65 impressions];
    v55 = [v54 numberWithDouble:?];
    v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v65, "eventCount")}];
    v57 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    v58 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:eventCount];
    *buf = 138414082;
    v73 = featureKey4;
    v74 = 2112;
    v75 = v51;
    v76 = 2112;
    *v77 = v53;
    *&v77[8] = 2112;
    *&v77[10] = v55;
    v78 = 2112;
    v79 = v56;
    v80 = 2112;
    v81 = v57;
    v82 = 2112;
    v83 = v58;
    v84 = 2112;
    v85 = v59;
    _os_log_debug_impl(&dword_1B63EF000, v70, OS_LOG_TYPE_DEBUG, "%@ - Updating aggregate at %@ from C : %@ I : %@ EC : %@ to C : %@ I : %@ EC : %@", buf, 0x52u);
  }

  [v65 setClicks:v13];
  [v65 setImpressions:v15];
  [v65 setEventCount:eventCount];
  [v65 setTimestamp:{objc_msgSend(selfCopy, "timestamp")}];

  v46 = *MEMORY[0x1E69E9840];
  return v24 & 1;
}

- (void)applyToDelta:()FCAdditions
{
  v8 = a3;
  if (![v8 eventsCount])
  {
    [self defaultClicks];
    [v8 setDefaultClicks:?];
    [self defaultImpressions];
    [v8 setDefaultImpressions:?];
    [self impressionBias];
    [v8 setImpressionBias:?];
    [self groupBias];
    [v8 setGroupBias:?];
  }

  events = [self events];
  eventsCount = [self eventsCount];
  if (eventsCount)
  {
    v6 = eventsCount;
    do
    {
      v7 = *events++;
      [v8 addAction:v7 & 0x3F count:v7 >> 6];
      --v6;
    }

    while (v6);
  }

  [v8 setTimestamp:{objc_msgSend(self, "timestamp")}];
}

@end