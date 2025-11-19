@interface HDECGSampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
+ (id)_objectWithCodable:(id)a3 collection:(id)a4;
+ (id)_predicateForSyncSession:(id)a3;
@end

@implementation HDECGSampleSyncEntity

+ (id)_objectWithCodable:(id)a3 collection:(id)a4
{
  v4 = a3;
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 shouldReceiveECGSamples];

  if (v6)
  {
    v7 = [MEMORY[0x277CCD378] createWithCodable:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 daemon];
  v7 = [v6 behavior];
  v8 = [v7 supportsSampleExpiration];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [MEMORY[0x277CCD3A8] electrocardiogramType];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [v9 hd_predicateForSamplesWithTypes:v11 endingBeforeDate:v5 minusDays:*MEMORY[0x277CCCED0]];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_predicateForSyncSession:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HDECGSampleSyncEntity;
  v3 = objc_msgSendSuper2(&v5, sel__predicateForSyncSession_, a3);

  return v3;
}

@end