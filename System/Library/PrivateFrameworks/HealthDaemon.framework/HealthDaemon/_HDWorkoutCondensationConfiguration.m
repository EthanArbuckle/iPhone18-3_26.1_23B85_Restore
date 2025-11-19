@interface _HDWorkoutCondensationConfiguration
+ (_HDWorkoutCondensationConfiguration)configurationWithProfile:(uint64_t)a3 minimumSeriesSize:(uint64_t)a4 maximumSeriesSize:(int64_t)a5 deletedSampleThreshold:(void *)a6 analyticsAccumulator:(uint64_t)a7 error:;
@end

@implementation _HDWorkoutCondensationConfiguration

+ (_HDWorkoutCondensationConfiguration)configurationWithProfile:(uint64_t)a3 minimumSeriesSize:(uint64_t)a4 maximumSeriesSize:(int64_t)a5 deletedSampleThreshold:(void *)a6 analyticsAccumulator:(uint64_t)a7 error:
{
  v10 = a2;
  v11 = a6;
  objc_opt_self();
  v12 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
  v13 = [v10 daemon];
  v14 = [v13 behavior];
  v15 = [v14 features];
  v16 = [v15 condenseWorkoutSamplesFromNonWatchSources];

  if (v16)
  {
    v17 = [v10 sourceManager];
    v18 = [v17 allSourcesForBundleIdentifier:*MEMORY[0x277CCE288] error:a7];

    v19 = [v10 sourceManager];
    v20 = [v19 allSourcesForBundleIdentifier:*MEMORY[0x277CCE2C0] error:a7];

    v21 = [v10 sourceManager];
    v22 = [v21 allSourcesForBundleIdentifier:*MEMORY[0x277CCE420] error:a7];

    v23 = [MEMORY[0x277CBEB58] setWithSet:v18];
    [v23 unionSet:v20];
    [v23 unionSet:v22];
    if ([v23 count])
    {
      v24 = HDDataEntityPredicateForSourceEntitySet(7, v23);
      v25 = [MEMORY[0x277D10B70] disjunctionWithPredicate:v12 otherPredicate:v24];
      v26 = v12;
      v27 = v20;
      v28 = a6;
      v29 = v11;
      v30 = a5;
      v31 = v25;

      v32 = v31;
      a5 = v30;
      v11 = v29;
      a6 = v28;
      v20 = v27;
      v12 = v32;
    }
  }

  v33 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v33 doubleForKey:@"HDWorkoutCondenserMinimumWorkoutDuration"];
  v35 = v34;

  if (v35 == 0.0)
  {
    v35 = 300.0;
  }

  v36 = [_HDWorkoutCondensationConfiguration alloc];
  v37 = v10;
  v38 = v12;
  v39 = v11;
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
      v36->_deletedSampleThreshold = a5;
      objc_storeStrong(&v36->_analyticsAccumulator, a6);
    }
  }

  return v36;
}

@end