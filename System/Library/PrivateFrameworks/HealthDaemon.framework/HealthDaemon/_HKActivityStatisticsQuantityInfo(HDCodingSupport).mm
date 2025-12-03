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
    unit = [v4 unit];
    v10 = [v8 unitFromString:unit];

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
  startDate = [self startDate];
  [startDate timeIntervalSinceReferenceDate];
  [(HDCodableActivityStatisticsQuantityInfo *)v2 setStartDate:?];

  endDate = [self endDate];
  [endDate timeIntervalSinceReferenceDate];
  [(HDCodableActivityStatisticsQuantityInfo *)v2 setEndDate:?];

  quantityValue = [self quantityValue];
  _unit = [quantityValue _unit];
  unitString = [_unit unitString];
  [(HDCodableActivityStatisticsQuantityInfo *)v2 setUnit:unitString];

  quantityValue2 = [self quantityValue];
  quantityValue3 = [self quantityValue];
  _unit2 = [quantityValue3 _unit];
  [quantityValue2 doubleValueForUnit:_unit2];
  [(HDCodableActivityStatisticsQuantityInfo *)v2 setValue:?];

  return v2;
}

@end