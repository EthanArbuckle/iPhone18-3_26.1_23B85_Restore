@interface HPSMultilineSubtitleTableViewCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HPSMultilineSubtitleTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(HPSMultilineSubtitleTableViewCell *)self detailTextLabel];
  [v5 setNumberOfLines:0];

  v6.receiver = self;
  v6.super_class = HPSMultilineSubtitleTableViewCell;
  [(PSSubtitleSwitchTableCell *)&v6 refreshCellContentsWithSpecifier:v4];
}

@end