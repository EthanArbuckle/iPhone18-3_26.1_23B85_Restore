@interface NonLegacyControllerClasses
@end

@implementation NonLegacyControllerClasses

void ___NonLegacyControllerClasses_block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = _NonLegacyControllerClasses___classes;
  _NonLegacyControllerClasses___classes = v0;
}

@end