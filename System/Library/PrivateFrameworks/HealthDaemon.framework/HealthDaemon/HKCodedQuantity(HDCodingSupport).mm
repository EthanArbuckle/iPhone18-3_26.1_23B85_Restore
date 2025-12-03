@interface HKCodedQuantity(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableCodedQuantity)codableRepresentationForSync;
@end

@implementation HKCodedQuantity(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CCD5C0];
    v5 = v3;
    comparatorCoding = [v5 comparatorCoding];
    v7 = [v4 createWithCodable:comparatorCoding];

    v8 = MEMORY[0x277CCD5C0];
    unitCoding = [v5 unitCoding];
    v10 = [v8 createWithCodable:unitCoding];

    v11 = MEMORY[0x277CCD198];
    rawValue = [v5 rawValue];

    v13 = [v11 codedQuantityWithValue:rawValue comparatorCoding:v7 unitCoding:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (HDCodableCodedQuantity)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableCodedQuantity);
  rawValue = [self rawValue];
  [(HDCodableCodedQuantity *)v2 setRawValue:rawValue];

  comparatorCoding = [self comparatorCoding];
  codableRepresentationForSync = [comparatorCoding codableRepresentationForSync];
  [(HDCodableCodedQuantity *)v2 setComparatorCoding:codableRepresentationForSync];

  unitCoding = [self unitCoding];
  codableRepresentationForSync2 = [unitCoding codableRepresentationForSync];
  [(HDCodableCodedQuantity *)v2 setUnitCoding:codableRepresentationForSync2];

  return v2;
}

@end