@interface HKCodableQuantitySeriesEnumerationResult(HDQuantitySeriesSampleQueryServer)
+ (id)resultWithID:()HDQuantitySeriesSampleQueryServer UUID:value:count:startTime:endTime:seriesIndex:;
@end

@implementation HKCodableQuantitySeriesEnumerationResult(HDQuantitySeriesSampleQueryServer)

+ (id)resultWithID:()HDQuantitySeriesSampleQueryServer UUID:value:count:startTime:endTime:seriesIndex:
{
  v15 = MEMORY[0x277CCD188];
  v16 = a7;
  v17 = objc_alloc_init(v15);
  [v17 setPersistentID:a6];
  v18 = [v16 hk_dataForUUIDBytes];

  [v17 setUuid:v18];
  [v17 setValue:a1];
  [v17 setCount:a8];
  [v17 setStartTime:a2];
  [v17 setEndTime:a3];
  [v17 setSeriesIndex:a9];

  return v17;
}

@end