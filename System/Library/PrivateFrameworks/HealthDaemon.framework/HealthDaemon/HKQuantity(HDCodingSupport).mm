@interface HKQuantity(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableQuantity)codableRepresentationForSync;
@end

@implementation HKQuantity(HDCodingSupport)

- (HDCodableQuantity)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableQuantity);
  _unit = [self _unit];
  unitString = [_unit unitString];
  [(HDCodableQuantity *)v2 setUnitString:unitString];

  [self doubleValueForUnit:_unit];
  [(HDCodableQuantity *)v2 setValue:?];

  return v2;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 hasUnitString] && objc_msgSend(v4, "hasValue"))
    {
      v5 = MEMORY[0x277CCDAB0];
      unitString = [v4 unitString];
      v7 = [v5 unitFromString:unitString];

      v8 = MEMORY[0x277CCD7E8];
      [v4 value];
      v9 = [v8 quantityWithUnit:v7 doubleValue:?];
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

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end