@interface HDLocationSeriesSyncEntity
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
+ (id)_objectWithCodable:(id)a3 collection:(id)a4;
+ (id)_predicateForSyncSession:(id)a3;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3;
@end

@implementation HDLocationSeriesSyncEntity

+ (id)_objectWithCodable:(id)a3 collection:(id)a4
{
  v4 = MEMORY[0x277CCDC70];
  v5 = a3;
  v6 = [v4 createWithCodable:v5];
  [v6 _setCodableWorkoutRoute:v5];

  return v6;
}

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
    v10 = [MEMORY[0x277CCD920] workoutRouteType];
    v17[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v12 = [v9 hd_predicateForSamplesWithTypes:v11 endingBeforeDate:v5 minusDays:*MEMORY[0x277CCCEE8]];

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

+ (id)_predicateForSyncSession:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___HDLocationSeriesSyncEntity;
  v3 = objc_msgSendSuper2(&v7, sel__predicateForSyncSession_, a3);
  v4 = [HDMetadataValueEntityPredicate predicateWithMetadataKey:*MEMORY[0x277CCE118] exists:0];
  v5 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v3 otherPredicate:v4];

  return v5;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

@end