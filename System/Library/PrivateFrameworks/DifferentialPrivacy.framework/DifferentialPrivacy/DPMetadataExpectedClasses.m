@interface DPMetadataExpectedClasses
@end

@implementation DPMetadataExpectedClasses

uint64_t ___DPMetadataExpectedClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  _DPMetadataExpectedClasses__DPMetadataExpectedClassesSet = [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

@end