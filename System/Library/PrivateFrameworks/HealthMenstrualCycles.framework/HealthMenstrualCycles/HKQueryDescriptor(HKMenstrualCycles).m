@interface HKQueryDescriptor(HKMenstrualCycles)
+ (id)hkmc_descriptorsForTypes:()HKMenstrualCycles predicate:;
@end

@implementation HKQueryDescriptor(HKMenstrualCycles)

+ (id)hkmc_descriptorsForTypes:()HKMenstrualCycles predicate:
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__HKQueryDescriptor_HKMenstrualCycles__hkmc_descriptorsForTypes_predicate___block_invoke;
  v9[3] = &unk_2796D4E30;
  v10 = v5;
  v6 = v5;
  v7 = [a3 hk_map:v9];

  return v7;
}

@end