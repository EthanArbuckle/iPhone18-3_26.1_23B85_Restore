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
  hk_dataForUUIDBytes = [v16 hk_dataForUUIDBytes];

  [v17 setUuid:hk_dataForUUIDBytes];
  [v17 setValue:self];
  [v17 setCount:a8];
  [v17 setStartTime:a2];
  [v17 setEndTime:a3];
  [v17 setSeriesIndex:a9];

  return v17;
}

@end