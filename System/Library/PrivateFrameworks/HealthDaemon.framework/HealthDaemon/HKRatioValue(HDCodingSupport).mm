@interface HKRatioValue(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableRatioValue)codableRepresentationForSync;
@end

@implementation HKRatioValue(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = MEMORY[0x277CCD198];
    numerator = [v4 numerator];
    v7 = [v5 createWithCodable:numerator];

    if (v7)
    {
      v8 = MEMORY[0x277CCD198];
      denominator = [v4 denominator];
      v10 = [v8 createWithCodable:denominator];

      if (v10)
      {
        v11 = [MEMORY[0x277CCD880] ratioValueWithNumerator:v7 andDenominator:v10];
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
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HDCodableRatioValue)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableRatioValue);
  numerator = [self numerator];
  codableRepresentationForSync = [numerator codableRepresentationForSync];
  [(HDCodableRatioValue *)v2 setNumerator:codableRepresentationForSync];

  denominator = [self denominator];
  codableRepresentationForSync2 = [denominator codableRepresentationForSync];
  [(HDCodableRatioValue *)v2 setDenominator:codableRepresentationForSync2];

  return v2;
}

@end