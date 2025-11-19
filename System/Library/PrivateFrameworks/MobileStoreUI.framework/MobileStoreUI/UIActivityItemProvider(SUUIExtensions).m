@interface UIActivityItemProvider(SUUIExtensions)
+ (uint64_t)activityTypeShouldProvideImage:()SUUIExtensions;
@end

@implementation UIActivityItemProvider(SUUIExtensions)

+ (uint64_t)activityTypeShouldProvideImage:()SUUIExtensions
{
  v3 = *MEMORY[0x277D54710];
  v4 = a3;
  LODWORD(v3) = [v4 isEqualToString:v3];
  v5 = v3 | [v4 isEqualToString:*MEMORY[0x277D54720]];
  LODWORD(v3) = [v4 isEqualToString:*MEMORY[0x277D54738]];
  v6 = v5 | v3 | [v4 isEqualToString:*MEMORY[0x277D54748]];
  LODWORD(v3) = [v4 isEqualToString:*MEMORY[0x277D54770]];

  return (v6 | v3) ^ 1;
}

@end