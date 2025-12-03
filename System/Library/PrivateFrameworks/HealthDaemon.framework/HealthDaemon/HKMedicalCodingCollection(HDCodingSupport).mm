@interface HKMedicalCodingCollection(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (id)codableRepresentationForSync;
@end

@implementation HKMedicalCodingCollection(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(HKMedicalCoding *)MEMORY[0x277CCD5C0] _medicalCodingsWithCodable:v3];
    if (v4)
    {
      v5 = [MEMORY[0x277CCD5C8] collectionWithCodings:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)codableRepresentationForSync
{
  v1 = MEMORY[0x277CCD5C0];
  codings = [self codings];
  v3 = [(HKMedicalCoding *)v1 _codeableRepresentationForMedicalCodings:codings];

  return v3;
}

@end