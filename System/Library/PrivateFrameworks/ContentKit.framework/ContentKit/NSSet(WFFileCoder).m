@interface NSSet(WFFileCoder)
+ (id)wf_classSetFromArray:()WFFileCoder;
@end

@implementation NSSet(WFFileCoder)

+ (id)wf_classSetFromArray:()WFFileCoder
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [[v3 alloc] initWithArray:v4];

  return v5;
}

@end