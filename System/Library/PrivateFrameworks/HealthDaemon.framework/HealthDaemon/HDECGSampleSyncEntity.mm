@interface HDECGSampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
+ (id)_objectWithCodable:(id)codable collection:(id)collection;
+ (id)_predicateForSyncSession:(id)session;
@end

@implementation HDECGSampleSyncEntity

+ (id)_objectWithCodable:(id)codable collection:(id)collection
{
  codableCopy = codable;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  shouldReceiveECGSamples = [mEMORY[0x277CCDD30] shouldReceiveECGSamples];

  if (shouldReceiveECGSamples)
  {
    v7 = [MEMORY[0x277CCD378] createWithCodable:codableCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  v15[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsSampleExpiration = [behavior supportsSampleExpiration];

  if (supportsSampleExpiration)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    electrocardiogramType = [MEMORY[0x277CCD3A8] electrocardiogramType];
    v15[0] = electrocardiogramType;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [currentCalendar hd_predicateForSamplesWithTypes:v11 endingBeforeDate:dateCopy minusDays:*MEMORY[0x277CCCED0]];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_predicateForSyncSession:(id)session
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HDECGSampleSyncEntity;
  v3 = objc_msgSendSuper2(&v5, sel__predicateForSyncSession_, session);

  return v3;
}

@end