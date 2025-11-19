@interface NSSet(HREAdditions)
- (id)hre_filteredToClass:()HREAdditions;
@end

@implementation NSSet(HREAdditions)

- (id)hre_filteredToClass:()HREAdditions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__NSSet_HREAdditions__hre_filteredToClass___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = [a1 na_filter:v5];

  return v3;
}

@end