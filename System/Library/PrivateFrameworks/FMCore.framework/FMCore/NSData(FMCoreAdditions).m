@interface NSData(FMCoreAdditions)
+ (id)fm_randomBytes:()FMCoreAdditions;
@end

@implementation NSData(FMCoreAdditions)

+ (id)fm_randomBytes:()FMCoreAdditions
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a3];
  v5 = SecRandomCopyBytes(*MEMORY[0x277CDC540], a3, [v4 mutableBytes]);
  if (v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"SecRandomCopyBytes error: %d", v5}];
  }

  v6 = [v4 copy];

  return v6;
}

@end