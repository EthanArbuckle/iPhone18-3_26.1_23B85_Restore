@interface HDCorrelationSampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
+ (id)_predicateForSyncSession:(id)session;
@end

@implementation HDCorrelationSampleSyncEntity

+ (id)_predicateForSyncSession:(id)session
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___HDCorrelationSampleSyncEntity;
  v3 = objc_msgSendSuper2(&v10, sel__predicateForSyncSession_, session);
  v4 = [MEMORY[0x277CCD720] _allTypesOfClass:objc_opt_class()];
  v5 = HDSampleEntityPredicateForDataTypes(v4);

  v6 = HDDataEntityPredicateForType(1);
  v7 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v5 otherPredicate:v6];
  v8 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v3 otherPredicate:v7];

  return v8;
}

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  dateCopy = date;
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsSampleExpiration = [behavior supportsSampleExpiration];

  if (supportsSampleExpiration)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [MEMORY[0x277CCD720] _allTypesOfClass:objc_opt_class()];
    v11 = [currentCalendar hd_predicateForSamplesWithTypes:v10 endingBeforeDate:dateCopy minusDays:*MEMORY[0x277CCCEE8]];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end