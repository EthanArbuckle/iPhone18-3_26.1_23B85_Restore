@interface HDWorkoutSyncEntity
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
+ (id)_predicateForSampleAgeInSyncSession:(id)a3 sampleTypeClass:(Class)a4;
@end

@implementation HDWorkoutSyncEntity

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 daemon];
  v7 = [v6 behavior];
  v8 = [v7 supportsSampleExpiration];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [MEMORY[0x277CCDCD0] workoutType];
    v17[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v12 = [v9 hd_predicateForSamplesWithTypes:v11 endingBeforeDate:v5 minusDays:*MEMORY[0x277CCCF20]];

    v13 = HDDataEntityPredicateForObjectsFromAppleWatchSources(0);
    v14 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v12 otherPredicate:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_predicateForSampleAgeInSyncSession:(id)a3 sampleTypeClass:(Class)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___HDWorkoutSyncEntity;
  v7 = objc_msgSendSuper2(&v11, sel__predicateForSampleAgeInSyncSession_sampleTypeClass_, v5, v6);

  if (v7)
  {
    v8 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
    v9 = [MEMORY[0x277D10B70] disjunctionWithPredicate:v7 otherPredicate:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end