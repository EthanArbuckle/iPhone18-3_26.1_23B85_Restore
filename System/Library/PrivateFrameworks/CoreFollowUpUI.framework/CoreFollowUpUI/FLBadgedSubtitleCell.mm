@interface FLBadgedSubtitleCell
- (FLBadgedSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation FLBadgedSubtitleCell

- (FLBadgedSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v7 = a5;
  v12.receiver = self;
  v12.super_class = FLBadgedSubtitleCell;
  v8 = [(PSTableCell *)&v12 initWithStyle:3 reuseIdentifier:a4 specifier:v7];
  if (v8)
  {
    v9 = [v7 propertyForKey:*MEMORY[0x277D40160]];
    v10 = [(PSTableCell *)v8 valueLabel];
    [v10 setText:v9];
  }

  return v8;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = FLBadgedSubtitleCell;
  v4 = a3;
  [(PSBadgedTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{*MEMORY[0x277D40160], v7.receiver, v7.super_class}];

  v6 = [(PSTableCell *)self valueLabel];
  [v6 setText:v5];
}

@end