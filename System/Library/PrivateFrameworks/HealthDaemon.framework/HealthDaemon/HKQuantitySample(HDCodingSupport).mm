@interface HKQuantitySample(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
+ (id)migrateCodableObject:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableQuantitySample)codableRepresentationForSync;
@end

@implementation HKQuantitySample(HDCodingSupport)

- (HDCodableQuantitySample)codableRepresentationForSync
{
  codableQuantitySample = [self codableQuantitySample];

  if (codableQuantitySample)
  {
    codableQuantitySample2 = [self codableQuantitySample];
  }

  else
  {
    codableQuantitySample2 = objc_alloc_init(HDCodableQuantitySample);
    v12.receiver = self;
    v12.super_class = &off_283D38020;
    v4 = objc_msgSendSuper2(&v12, sel_codableRepresentationForSync);
    [(HDCodableQuantitySample *)codableQuantitySample2 setSample:v4];

    quantity = [self quantity];
    quantityType = [self quantityType];
    canonicalUnit = [quantityType canonicalUnit];

    _unit = [quantity _unit];
    v9 = _unit;
    if (quantity && canonicalUnit)
    {
      if ([_unit isEqual:canonicalUnit])
      {
        [quantity doubleValueForUnit:canonicalUnit];
        [(HDCodableQuantitySample *)codableQuantitySample2 setValueInCanonicalUnit:?];
      }

      else
      {
        unitString = [v9 unitString];
        [(HDCodableQuantitySample *)codableQuantitySample2 setOriginalUnitString:unitString];

        [quantity doubleValueForUnit:v9];
        [(HDCodableQuantitySample *)codableQuantitySample2 setValueInOriginalUnit:?];
      }
    }

    -[HDCodableQuantitySample setFrozen:](codableQuantitySample2, "setFrozen:", [self _frozen]);
  }

  return codableQuantitySample2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addQuantitySamples:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = MEMORY[0x277CCD720];
    sample = [v4 sample];
    v7 = [v5 dataTypeWithCode:{objc_msgSend(sample, "dataType")}];

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
  sample = [v3 sample];
  if ([sample dataType] == 69)
  {
    v5 = objc_alloc_init(HDCodableCategorySample);
    v6 = [sample copy];
    [(HDCodableCategorySample *)v5 setSample:v6];

    sample2 = [(HDCodableCategorySample *)v5 sample];
    [sample2 setDataType:70];

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