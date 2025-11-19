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
    v6 = [v5 comparatorCoding];
    v7 = [v4 createWithCodable:v6];

    v8 = MEMORY[0x277CCD5C0];
    v9 = [v5 unitCoding];
    v10 = [v8 createWithCodable:v9];

    v11 = MEMORY[0x277CCD198];
    v12 = [v5 rawValue];

    v13 = [v11 codedQuantityWithValue:v12 comparatorCoding:v7 unitCoding:v10];
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
  v3 = [a1 rawValue];
  [(HDCodableCodedQuantity *)v2 setRawValue:v3];

  v4 = [a1 comparatorCoding];
  v5 = [v4 codableRepresentationForSync];
  [(HDCodableCodedQuantity *)v2 setComparatorCoding:v5];

  v6 = [a1 unitCoding];
  v7 = [v6 codableRepresentationForSync];
  [(HDCodableCodedQuantity *)v2 setUnitCoding:v7];

  return v2;
}

@end