@interface HDWorkoutSyncEntity
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
+ (id)_predicateForSampleAgeInSyncSession:(id)session sampleTypeClass:(Class)class;
@end

@implementation HDWorkoutSyncEntity

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  v17[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsSampleExpiration = [behavior supportsSampleExpiration];

  if (supportsSampleExpiration)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    workoutType = [MEMORY[0x277CCDCD0] workoutType];
    v17[0] = workoutType;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v12 = [currentCalendar hd_predicateForSamplesWithTypes:v11 endingBeforeDate:dateCopy minusDays:*MEMORY[0x277CCCF20]];

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

+ (id)_predicateForSampleAgeInSyncSession:(id)session sampleTypeClass:(Class)class
{
  sessionCopy = session;
  v6 = objc_opt_class();
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___HDWorkoutSyncEntity;
  v7 = objc_msgSendSuper2(&v11, sel__predicateForSampleAgeInSyncSession_sampleTypeClass_, sessionCopy, v6);

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