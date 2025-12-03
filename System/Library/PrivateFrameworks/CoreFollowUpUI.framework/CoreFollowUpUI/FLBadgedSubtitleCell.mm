@interface FLBadgedSubtitleCell
- (FLBadgedSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation FLBadgedSubtitleCell

- (FLBadgedSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = FLBadgedSubtitleCell;
  v8 = [(PSTableCell *)&v12 initWithStyle:3 reuseIdentifier:identifier specifier:specifierCopy];
  if (v8)
  {
    v9 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];
    valueLabel = [(PSTableCell *)v8 valueLabel];
    [valueLabel setText:v9];
  }

  return v8;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = FLBadgedSubtitleCell;
  specifierCopy = specifier;
  [(PSBadgedTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{*MEMORY[0x277D40160], v7.receiver, v7.super_class}];

  valueLabel = [(PSTableCell *)self valueLabel];
  [valueLabel setText:v5];
}

@end