@interface HLPHelpSectionItem
- (id)debugDescription;
@end

@implementation HLPHelpSectionItem

- (id)debugDescription
{
  v3 = MEMORY[0x277CCAB68];
  v8.receiver = self;
  v8.super_class = HLPHelpSectionItem;
  v4 = [(HLPHelpItem *)&v8 debugDescription];
  v5 = [v3 stringWithString:v4];

  v6 = [(HLPHelpSectionItem *)self children];
  [v5 appendFormat:@"children: %@\n", v6];

  return v5;
}

@end