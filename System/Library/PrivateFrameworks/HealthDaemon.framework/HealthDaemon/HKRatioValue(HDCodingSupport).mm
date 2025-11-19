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
    v6 = [v4 numerator];
    v7 = [v5 createWithCodable:v6];

    if (v7)
    {
      v8 = MEMORY[0x277CCD198];
      v9 = [v4 denominator];
      v10 = [v8 createWithCodable:v9];

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
  v3 = [a1 numerator];
  v4 = [v3 codableRepresentationForSync];
  [(HDCodableRatioValue *)v2 setNumerator:v4];

  v5 = [a1 denominator];
  v6 = [v5 codableRepresentationForSync];
  [(HDCodableRatioValue *)v2 setDenominator:v6];

  return v2;
}

@end