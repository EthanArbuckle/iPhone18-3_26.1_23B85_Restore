@interface UTType(ITK)
- (uint64_t)itk_isHEICS;
@end

@implementation UTType(ITK)

- (uint64_t)itk_isHEICS
{
  v2 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"public.heics"];
  v3 = [self conformsToType:v2];

  return v3;
}

@end