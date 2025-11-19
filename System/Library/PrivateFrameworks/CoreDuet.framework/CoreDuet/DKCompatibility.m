@interface DKCompatibility
@end

@implementation DKCompatibility

uint64_t __40___DKCompatibility_currentCompatibility__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) compatibilityWithMinVersion:0 maxVersion:4096];
  v2 = currentCompatibility_compatibility;
  currentCompatibility_compatibility = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end