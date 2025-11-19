@interface HDCorrelationSampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
+ (id)_predicateForSyncSession:(id)a3;
@end

@implementation HDCorrelationSampleSyncEntity

+ (id)_predicateForSyncSession:(id)a3
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___HDCorrelationSampleSyncEntity;
  v3 = objc_msgSendSuper2(&v10, sel__predicateForSyncSession_, a3);
  v4 = [MEMORY[0x277CCD720] _allTypesOfClass:objc_opt_class()];
  v5 = HDSampleEntityPredicateForDataTypes(v4);

  v6 = HDDataEntityPredicateForType(1);
  v7 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v5 otherPredicate:v6];
  v8 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v3 otherPredicate:v7];

  return v8;
}

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v5 = a3;
  v6 = [a4 daemon];
  v7 = [v6 behavior];
  v8 = [v7 supportsSampleExpiration];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [MEMORY[0x277CCD720] _allTypesOfClass:objc_opt_class()];
    v11 = [v9 hd_predicateForSamplesWithTypes:v10 endingBeforeDate:v5 minusDays:*MEMORY[0x277CCCEE8]];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end