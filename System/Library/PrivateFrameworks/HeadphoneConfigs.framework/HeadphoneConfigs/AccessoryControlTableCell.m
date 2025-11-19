@interface AccessoryControlTableCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AccessoryControlTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = AccessoryControlTableCell;
  v4 = a3;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [(AccessoryControlTableCell *)self detailTextLabel:v7.receiver];
  v6 = [v4 propertyForKey:*MEMORY[0x277D40160]];

  [v5 setText:v6];
  [(AccessoryControlTableCell *)self setNeedsLayout];
}

@end