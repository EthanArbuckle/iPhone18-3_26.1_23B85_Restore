@interface LegacyControllerClasses
@end

@implementation LegacyControllerClasses

void ___LegacyControllerClasses_block_invoke()
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:2];
  v1 = _LegacyControllerClasses___classes;
  _LegacyControllerClasses___classes = v0;
}

@end