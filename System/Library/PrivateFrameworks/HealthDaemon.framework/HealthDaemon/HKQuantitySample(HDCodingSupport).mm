@interface HKQuantitySample(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
+ (id)migrateCodableObject:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableQuantitySample)codableRepresentationForSync;
@end

@implementation HKQuantitySample(HDCodingSupport)

- (HDCodableQuantitySample)codableRepresentationForSync
{
  v2 = [a1 codableQuantitySample];

  if (v2)
  {
    v3 = [a1 codableQuantitySample];
  }

  else
  {
    v3 = objc_alloc_init(HDCodableQuantitySample);
    v12.receiver = a1;
    v12.super_class = &off_283D38020;
    v4 = objc_msgSendSuper2(&v12, sel_codableRepresentationForSync);
    [(HDCodableQuantitySample *)v3 setSample:v4];

    v5 = [a1 quantity];
    v6 = [a1 quantityType];
    v7 = [v6 canonicalUnit];

    v8 = [v5 _unit];
    v9 = v8;
    if (v5 && v7)
    {
      if ([v8 isEqual:v7])
      {
        [v5 doubleValueForUnit:v7];
        [(HDCodableQuantitySample *)v3 setValueInCanonicalUnit:?];
      }

      else
      {
        v10 = [v9 unitString];
        [(HDCodableQuantitySample *)v3 setOriginalUnitString:v10];

        [v5 doubleValueForUnit:v9];
        [(HDCodableQuantitySample *)v3 setValueInOriginalUnit:?];
      }
    }

    -[HDCodableQuantitySample setFrozen:](v3, "setFrozen:", [a1 _frozen]);
  }

  return v3;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addQuantitySamples:v5];
  }

  return v5 != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = MEMORY[0x277CCD720];
    v6 = [v4 sample];
    v7 = [v5 dataTypeWithCode:{objc_msgSend(v6, "dataType")}];

    v8 = [objc_alloc(objc_msgSend(v7 "dataObjectClass"))];
    if ([v4 applyToObject:v8])
    {
      v9 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v11 = [v8 _validateWithConfiguration:{v9, v10}];
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)migrateCodableObject:()HDCodingSupport
{
  v3 = a3;
  v4 = [v3 sample];
  if ([v4 dataType] == 69)
  {
    v5 = objc_alloc_init(HDCodableCategorySample);
    v6 = [v4 copy];
    [(HDCodableCategorySample *)v5 setSample:v6];

    v7 = [(HDCodableCategorySample *)v5 sample];
    [v7 setDataType:70];

    [v3 valueInCanonicalUnit];
    [(HDCodableCategorySample *)v5 setValue:v8 == 1.0];
    v9 = [MEMORY[0x277CCD0B0] createWithCodable:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end