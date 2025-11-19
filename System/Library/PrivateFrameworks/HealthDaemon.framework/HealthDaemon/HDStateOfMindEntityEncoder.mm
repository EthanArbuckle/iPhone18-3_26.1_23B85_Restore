@interface HDStateOfMindEntityEncoder
@end

@implementation HDStateOfMindEntityEncoder

uint64_t __78___HDStateOfMindEntityEncoder_applyPropertiesToObject_persistentID_row_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  [a2 integerValue];
  v3 = HKStateOfMindAssociationFromDomain();

  return [v2 numberWithInteger:v3];
}

@end