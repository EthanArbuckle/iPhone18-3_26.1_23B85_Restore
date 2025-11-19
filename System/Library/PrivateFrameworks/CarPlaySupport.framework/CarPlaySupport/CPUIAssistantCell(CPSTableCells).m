@interface CPUIAssistantCell(CPSTableCells)
- (void)configureWithText:()CPSTableCells;
@end

@implementation CPUIAssistantCell(CPSTableCells)

- (void)configureWithText:()CPSTableCells
{
  v5 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v3 = [MEMORY[0x277CF90C0] configurationWithText:location[0]];
  [v5 applyConfiguration:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

@end