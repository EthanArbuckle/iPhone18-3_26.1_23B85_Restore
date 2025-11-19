@interface DMCAccountCell
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation DMCAccountCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMCAccountCell;
  v4 = a3;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [MEMORY[0x277D756E0] cellConfiguration];
  v6 = [MEMORY[0x277D75348] DMCProfileSecondaryLabelColor];
  [DMCSpecifierProvider updateConfiguration:v5 forSpecifier:v4 subtitleColor:v6];

  [(DMCAccountCell *)self setContentConfiguration:v5];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = DMCAccountCell;
  [(PSTableCell *)&v3 prepareForReuse];
  [(DMCAccountCell *)self setContentConfiguration:0];
}

@end