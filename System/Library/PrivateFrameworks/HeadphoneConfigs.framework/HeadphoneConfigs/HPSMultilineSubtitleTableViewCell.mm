@interface HPSMultilineSubtitleTableViewCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HPSMultilineSubtitleTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  detailTextLabel = [(HPSMultilineSubtitleTableViewCell *)self detailTextLabel];
  [detailTextLabel setNumberOfLines:0];

  v6.receiver = self;
  v6.super_class = HPSMultilineSubtitleTableViewCell;
  [(PSSubtitleSwitchTableCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
}

@end