@interface HDFitnessFriendActivitySnapshotSyncEntity
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
@end

@implementation HDFitnessFriendActivitySnapshotSyncEntity

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  fitnessFriendActivitySnapshotType = [MEMORY[0x277CCD8D8] fitnessFriendActivitySnapshotType];
  v12[0] = fitnessFriendActivitySnapshotType;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [currentCalendar hd_predicateForSamplesWithTypes:v8 endingBeforeDate:dateCopy minusDays:11];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end