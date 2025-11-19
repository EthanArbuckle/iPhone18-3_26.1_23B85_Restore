@interface HKQueryDescriptor
@end

@implementation HKQueryDescriptor

id __75__HKQueryDescriptor_HKMenstrualCycles__hkmc_descriptorsForTypes_predicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD848];
  v4 = a2;
  v5 = [[v3 alloc] initWithSampleType:v4 predicate:*(a1 + 32)];

  return v5;
}

@end