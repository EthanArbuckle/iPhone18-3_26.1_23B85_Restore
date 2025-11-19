@interface NSSet(DC)
- (BOOL)dc_containsObjectPassingTest:()DC;
- (id)dc_objectPassingTest:()DC;
- (id)dc_objectsOfClass:()DC;
@end

@implementation NSSet(DC)

- (id)dc_objectPassingTest:()DC
{
  v1 = [a1 objectsPassingTest:?];
  v2 = [v1 anyObject];

  return v2;
}

- (BOOL)dc_containsObjectPassingTest:()DC
{
  v1 = [a1 dc_objectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)dc_objectsOfClass:()DC
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__NSSet_DC__dc_objectsOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
  v5[4] = a3;
  v3 = [a1 objectsPassingTest:v5];

  return v3;
}

@end