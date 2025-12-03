@interface HDLocationSeriesSyncEntity
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
+ (id)_objectWithCodable:(id)codable collection:(id)collection;
+ (id)_predicateForSyncSession:(id)session;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version;
@end

@implementation HDLocationSeriesSyncEntity

+ (id)_objectWithCodable:(id)codable collection:(id)collection
{
  v4 = MEMORY[0x277CCDC70];
  codableCopy = codable;
  v6 = [v4 createWithCodable:codableCopy];
  [v6 _setCodableWorkoutRoute:codableCopy];

  return v6;
}

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
    workoutRouteType = [MEMORY[0x277CCD920] workoutRouteType];
    v17[0] = workoutRouteType;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v12 = [currentCalendar hd_predicateForSamplesWithTypes:v11 endingBeforeDate:dateCopy minusDays:*MEMORY[0x277CCCEE8]];

    v13 = [MEMORY[0x277D10B18] predicateWithProperty:@"frozen" notEqualToValue:&unk_283CB40E0];
    v14 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v12 otherPredicate:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_predicateForSyncSession:(id)session
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HDLocationSeriesSyncEntity;
  v3 = objc_msgSendSuper2(&v7, sel__predicateForSyncSession_, session);
  v4 = [HDMetadataValueEntityPredicate predicateWithMetadataKey:*MEMORY[0x277CCE118] exists:0];
  v5 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v3 otherPredicate:v4];

  return v5;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

@end