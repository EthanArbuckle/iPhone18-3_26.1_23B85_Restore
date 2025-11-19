@interface HDFitnessFriendWorkoutSyncEntity
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
@end

@implementation HDFitnessFriendWorkoutSyncEntity

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [MEMORY[0x277CCD8D8] fitnessFriendWorkoutType];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v6 hd_predicateForSamplesWithTypes:v8 endingBeforeDate:v5 minusDays:11];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end