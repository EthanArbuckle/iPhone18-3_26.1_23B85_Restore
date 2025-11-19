@interface NSIndexPath(NTKFixMe)
+ (id)indexPathWithElement:()NTKFixMe inUpNextSection:;
- (unint64_t)upNextSection;
@end

@implementation NSIndexPath(NTKFixMe)

- (unint64_t)upNextSection
{
  v1 = [a1 indexAtPosition:0];
  if (v1 >= NTKUpNextSectionMax)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"The section %lu is not a valid Up Next Section", v1}];
  }

  return v1;
}

+ (id)indexPathWithElement:()NTKFixMe inUpNextSection:
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a4;
  v6[1] = a3;
  v4 = [MEMORY[0x277CCAA70] indexPathWithIndexes:v6 length:2];

  return v4;
}

@end