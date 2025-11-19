@interface HKObjectComparisonFilter
@end

@implementation HKObjectComparisonFilter

uint64_t __94___HKObjectComparisonFilter_HealthDaemon___deviceIDsWithProfile_property_allowedValues_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

@end