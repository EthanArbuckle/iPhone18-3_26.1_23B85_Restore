@interface CDPSingleICSCEntryPane
- (void)setTitle:(id)title;
@end

@implementation CDPSingleICSCEntryPane

- (void)setTitle:(id)title
{
  headerView = self->super.super._headerView;
  titleCopy = title;
  detailTextLabel = [(CDPPaneHeaderView *)headerView detailTextLabel];
  [detailTextLabel setText:titleCopy];

  v7 = CDPLocalizedString();
  textLabel = [(CDPPaneHeaderView *)self->super.super._headerView textLabel];
  [textLabel setText:v7];

  [(CDPPaneHeaderView *)self->super.super._headerView makeAllTheTextFits];
  v9 = self->super.super._headerView;

  [(CDPPaneHeaderView *)v9 sizeToFit];
}

@end