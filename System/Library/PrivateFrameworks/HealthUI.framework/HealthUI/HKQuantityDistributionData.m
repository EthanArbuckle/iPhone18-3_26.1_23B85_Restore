@interface HKQuantityDistributionData
@end

@implementation HKQuantityDistributionData

id __137___HKQuantityDistributionData_HKCodingSupport__quantityDistributionDataWithCodableQuantityDistributionData_sourceTimeZone_preferredUnit___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

uint64_t __79___HKQuantityDistributionData_HKCodingSupport__codableQuantityDistributionData__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 doubleValue];

  return [v2 addHistogramCounts:?];
}

void __79___HKQuantityDistributionData_HKCodingSupport__codableQuantityDistributionData__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUIDString];
  [v2 addContextIdentifiers:v3];
}

@end