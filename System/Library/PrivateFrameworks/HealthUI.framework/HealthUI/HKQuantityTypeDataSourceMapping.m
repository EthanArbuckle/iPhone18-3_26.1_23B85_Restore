@interface HKQuantityTypeDataSourceMapping
@end

@implementation HKQuantityTypeDataSourceMapping

void __40___HKQuantityTypeDataSourceMapping_map___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __40___HKQuantityTypeDataSourceMapping_map___block_invoke_cold_1(a1);
  }

  v3 = -[HKHealthChartPoint initWithDataSourceValue:options:unit:displayType:]([HKHealthChartPoint alloc], "initWithDataSourceValue:options:unit:displayType:", v7, [*(a1 + 40) statisticsOptions], *(a1 + 48), *(a1 + 56));
  v4 = [*(a1 + 40) userInfoCreationBlock];

  if (v4)
  {
    v5 = [*(a1 + 40) userInfoCreationBlock];
    v6 = (v5)[2](v5, v7);
    [(HKHealthChartPoint *)v3 setUserInfo:v6];
  }

  [*(a1 + 64) addObject:v3];
}

void __40___HKQuantityTypeDataSourceMapping_map___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"HKQuantityTypeDataSource.m" lineNumber:361 description:@"result must be of type HKQuantityTypeDataSourceValue"];
}

@end