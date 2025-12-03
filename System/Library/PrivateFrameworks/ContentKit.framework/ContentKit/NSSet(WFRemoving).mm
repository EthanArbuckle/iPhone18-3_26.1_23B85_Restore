@interface NSSet(WFRemoving)
- (id)setByRemovingObject:()WFRemoving;
@end

@implementation NSSet(WFRemoving)

- (id)setByRemovingObject:()WFRemoving
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 setWithSet:self];
  [v6 removeObject:v5];

  v7 = [MEMORY[0x277CBEB98] setWithSet:v6];

  return v7;
}

@end