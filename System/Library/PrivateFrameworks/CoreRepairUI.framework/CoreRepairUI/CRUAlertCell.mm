@interface CRUAlertCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CRUAlertCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = CRUAlertCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"CRImageAlertKey", v7.receiver, v7.super_class}];

  valueLabel = [(PSTableCell *)self valueLabel];
  [valueLabel setAttributedText:v5];
}

@end