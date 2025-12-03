@interface HKCodableQuantitySeriesDatum(HDQuantitySampleEntity)
+ (id)datumWithTimestamp:()HDQuantitySampleEntity value:duration:;
+ (id)datumWithValue:()HDQuantitySampleEntity timeInterval:;
+ (uint64_t)datumWithStartTime:()HDQuantitySampleEntity value:endTime:;
@end

@implementation HKCodableQuantitySeriesDatum(HDQuantitySampleEntity)

+ (id)datumWithValue:()HDQuantitySampleEntity timeInterval:
{
  v4 = objc_alloc_init(MEMORY[0x277CCD180]);
  [v4 setValue:self];
  [v4 setTimeInterval:a2];

  return v4;
}

+ (id)datumWithTimestamp:()HDQuantitySampleEntity value:duration:
{
  v6 = objc_alloc_init(MEMORY[0x277CCD180]);
  [v6 setTimeInterval:self];
  [v6 setValue:a2];
  if (a3 != -1.0)
  {
    *&v7 = a3;
    [v6 setDuration:v7];
  }

  return v6;
}

+ (uint64_t)datumWithStartTime:()HDQuantitySampleEntity value:endTime:
{
  v5 = a5;
  if (a5 < a3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesEntity.mm" lineNumber:2030 description:{@"Invalid parameter not satisfying: %@", @"endTime >= startTime"}];
  }

  *&a5 = v5 - a3;
  return [self datumWithTimestamp:a3 value:a4 duration:a5];
}

@end