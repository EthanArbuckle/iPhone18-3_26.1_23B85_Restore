@interface HKWorkoutZonesSample(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableWorkoutZones)codableRepresentationForSync;
@end

@implementation HKWorkoutZonesSample(HDCodingSupport)

- (HDCodableWorkoutZones)codableRepresentationForSync
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDCodableWorkoutZones);
  v12.receiver = a1;
  v12.super_class = &off_283D45970;
  v3 = objc_msgSendSuper2(&v12, sel_codableRepresentationForSync);
  [(HDCodableWorkoutZones *)v2 setSample:v3];

  v4 = MEMORY[0x277CCAAB0];
  v5 = [a1 zones];
  v11 = 0;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v11];
  v7 = v11;

  if (!v6)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Error archiving zones: %@", buf, 0xCu);
    }
  }

  [(HDCodableWorkoutZones *)v2 setZones:v6];

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addWorkoutZones:v5];
  }

  return v5 != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [[a1 alloc] _init];
    if ([v5 applyToObject:v6])
    {
      v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v9 = [v6 _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v6;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end