@interface CPSRouteRowCell
- (id)preferredFocusEnvironments;
@end

@implementation CPSRouteRowCell

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x277D85DE8];
  contentView = [(CPSRouteRowCell *)self contentView];
  v5[0] = contentView;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  MEMORY[0x277D82BD8](contentView);

  return v4;
}

@end