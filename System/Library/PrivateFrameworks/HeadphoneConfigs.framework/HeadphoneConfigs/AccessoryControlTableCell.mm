@interface AccessoryControlTableCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AccessoryControlTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = AccessoryControlTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(AccessoryControlTableCell *)self detailTextLabel:v7.receiver];
  v6 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];

  [v5 setText:v6];
  [(AccessoryControlTableCell *)self setNeedsLayout];
}

@end