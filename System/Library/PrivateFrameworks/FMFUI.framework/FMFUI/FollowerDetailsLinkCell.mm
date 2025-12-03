@interface FollowerDetailsLinkCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation FollowerDetailsLinkCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = FollowerDetailsLinkCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"PSFollowerDetailsTitleTextColorKey"];
  textLabel = [(FollowerDetailsLinkCell *)self textLabel];
  v7 = textLabel;
  if (v5)
  {
    [textLabel setTextColor:v5];
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v7 setTextColor:labelColor];
  }

  detailTextLabel = [(FollowerDetailsLinkCell *)self detailTextLabel];
  v10 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];
  [detailTextLabel setText:v10];

  detailTextLabel2 = [(FollowerDetailsLinkCell *)self detailTextLabel];
  tableCellGrayTextColor = [MEMORY[0x277D75348] tableCellGrayTextColor];
  [detailTextLabel2 setTextColor:tableCellGrayTextColor];

  [(FollowerDetailsLinkCell *)self setNeedsLayout];
}

@end