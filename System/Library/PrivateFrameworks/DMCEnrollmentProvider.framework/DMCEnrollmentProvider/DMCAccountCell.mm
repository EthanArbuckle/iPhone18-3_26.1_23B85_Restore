@interface DMCAccountCell
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation DMCAccountCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = DMCAccountCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  dMCProfileSecondaryLabelColor = [MEMORY[0x277D75348] DMCProfileSecondaryLabelColor];
  [DMCSpecifierProvider updateConfiguration:cellConfiguration forSpecifier:specifierCopy subtitleColor:dMCProfileSecondaryLabelColor];

  [(DMCAccountCell *)self setContentConfiguration:cellConfiguration];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = DMCAccountCell;
  [(PSTableCell *)&v3 prepareForReuse];
  [(DMCAccountCell *)self setContentConfiguration:0];
}

@end