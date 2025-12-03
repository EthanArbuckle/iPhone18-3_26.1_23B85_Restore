@interface HKMedicalDate(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableMedicalDate)codableRepresentationForSync;
@end

@implementation HKMedicalDate(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 hasForm] && objc_msgSend(v4, "hasUnderlyingDate"))
    {
      v5 = MEMORY[0x277CCD5D8];
      form = [v4 form];
      [v4 underlyingDate];
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
      originalTimeZoneString = [v4 originalTimeZoneString];
      v9 = [v5 _medicalDateWithForm:form underlyingDate:v7 originalTimeZoneString:originalTimeZoneString];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HDCodableMedicalDate)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableMedicalDate);
  -[HDCodableMedicalDate setForm:](v2, "setForm:", [self form]);
  underlyingDate = [self underlyingDate];
  [underlyingDate timeIntervalSinceReferenceDate];
  [(HDCodableMedicalDate *)v2 setUnderlyingDate:?];

  originalTimeZoneString = [self originalTimeZoneString];
  [(HDCodableMedicalDate *)v2 setOriginalTimeZoneString:originalTimeZoneString];

  return v2;
}

@end