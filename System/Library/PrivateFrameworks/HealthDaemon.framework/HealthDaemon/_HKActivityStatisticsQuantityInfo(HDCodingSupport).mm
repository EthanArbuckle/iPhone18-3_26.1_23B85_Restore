@interface _HKActivityStatisticsQuantityInfo(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableActivityStatisticsQuantityInfo)codableRepresentationForSync;
@end

@implementation _HKActivityStatisticsQuantityInfo(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    [v4 startDate];
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    [v4 endDate];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v7 = [objc_alloc(MEMORY[0x277CCDD10]) initWithStartDate:v5 endDate:v6];
    v8 = MEMORY[0x277CCDAB0];
    v9 = [v4 unit];
    v10 = [v8 unitFromString:v9];

    v11 = MEMORY[0x277CCD7E8];
    [v4 value];
    v13 = v12;

    v14 = [v11 quantityWithUnit:v10 doubleValue:v13];
    [v7 setQuantityValue:v14];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HDCodableActivityStatisticsQuantityInfo)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableActivityStatisticsQuantityInfo);
  v3 = [a1 startDate];
  [v3 timeIntervalSinceReferenceDate];
  [(HDCodableActivityStatisticsQuantityInfo *)v2 setStartDate:?];

  v4 = [a1 endDate];
  [v4 timeIntervalSinceReferenceDate];
  [(HDCodableActivityStatisticsQuantityInfo *)v2 setEndDate:?];

  v5 = [a1 quantityValue];
  v6 = [v5 _unit];
  v7 = [v6 unitString];
  [(HDCodableActivityStatisticsQuantityInfo *)v2 setUnit:v7];

  v8 = [a1 quantityValue];
  v9 = [a1 quantityValue];
  v10 = [v9 _unit];
  [v8 doubleValueForUnit:v10];
  [(HDCodableActivityStatisticsQuantityInfo *)v2 setValue:?];

  return v2;
}

@end