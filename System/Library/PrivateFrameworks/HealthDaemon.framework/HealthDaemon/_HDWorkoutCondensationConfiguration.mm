@interface _HDWorkoutCondensationConfiguration
+ (_HDWorkoutCondensationConfiguration)configurationWithProfile:(uint64_t)profile minimumSeriesSize:(uint64_t)size maximumSeriesSize:(int64_t)seriesSize deletedSampleThreshold:(void *)threshold analyticsAccumulator:(uint64_t)accumulator error:;
@end

@implementation _HDWorkoutCondensationConfiguration

+ (_HDWorkoutCondensationConfiguration)configurationWithProfile:(uint64_t)profile minimumSeriesSize:(uint64_t)size maximumSeriesSize:(int64_t)seriesSize deletedSampleThreshold:(void *)threshold analyticsAccumulator:(uint64_t)accumulator error:
{
  v10 = a2;
  thresholdCopy = threshold;
  objc_opt_self();
  v12 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
  daemon = [v10 daemon];
  behavior = [daemon behavior];
  features = [behavior features];
  condenseWorkoutSamplesFromNonWatchSources = [features condenseWorkoutSamplesFromNonWatchSources];

  if (condenseWorkoutSamplesFromNonWatchSources)
  {
    sourceManager = [v10 sourceManager];
    v18 = [sourceManager allSourcesForBundleIdentifier:*MEMORY[0x277CCE288] error:accumulator];

    sourceManager2 = [v10 sourceManager];
    v20 = [sourceManager2 allSourcesForBundleIdentifier:*MEMORY[0x277CCE2C0] error:accumulator];

    sourceManager3 = [v10 sourceManager];
    v22 = [sourceManager3 allSourcesForBundleIdentifier:*MEMORY[0x277CCE420] error:accumulator];

    v23 = [MEMORY[0x277CBEB58] setWithSet:v18];
    [v23 unionSet:v20];
    [v23 unionSet:v22];
    if ([v23 count])
    {
      v24 = HDDataEntityPredicateForSourceEntitySet(7, v23);
      v25 = [MEMORY[0x277D10B70] disjunctionWithPredicate:v12 otherPredicate:v24];
      v26 = v12;
      v27 = v20;
      thresholdCopy2 = threshold;
      v29 = thresholdCopy;
      seriesSizeCopy = seriesSize;
      v31 = v25;

      v32 = v31;
      seriesSize = seriesSizeCopy;
      thresholdCopy = v29;
      threshold = thresholdCopy2;
      v20 = v27;
      v12 = v32;
    }
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"HDWorkoutCondenserMinimumWorkoutDuration"];
  v35 = v34;

  if (v35 == 0.0)
  {
    v35 = 300.0;
  }

  v36 = [_HDWorkoutCondensationConfiguration alloc];
  v37 = v10;
  v38 = v12;
  v39 = thresholdCopy;
  if (v36)
  {
    v46.receiver = v36;
    v46.super_class = _HDWorkoutCondensationConfiguration;
    v40 = objc_msgSendSuper2(&v46, sel_init);
    v36 = v40;
    if (v40)
    {
      objc_storeWeak(&v40->_profile, v37);
      objc_storeStrong(&v36->_predicate, v12);
      v36->_minimumWorkoutDuration = v35;
      v36->_minimumSeriesSize = v43;
      v36->_maximumSeriesSize = v45;
      v36->_deletedSampleThreshold = seriesSize;
      objc_storeStrong(&v36->_analyticsAccumulator, threshold);
    }
  }

  return v36;
}

@end