@interface NSString
@end

@implementation NSString

uint64_t __55__NSString_MSVAdditions__msv_stringByResolvingRealPath__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingFormat:@"/%@", a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

@end