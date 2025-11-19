@interface CDPSingleICSCEntryPane
- (void)setTitle:(id)a3;
@end

@implementation CDPSingleICSCEntryPane

- (void)setTitle:(id)a3
{
  headerView = self->super.super._headerView;
  v5 = a3;
  v6 = [(CDPPaneHeaderView *)headerView detailTextLabel];
  [v6 setText:v5];

  v7 = CDPLocalizedString();
  v8 = [(CDPPaneHeaderView *)self->super.super._headerView textLabel];
  [v8 setText:v7];

  [(CDPPaneHeaderView *)self->super.super._headerView makeAllTheTextFits];
  v9 = self->super.super._headerView;

  [(CDPPaneHeaderView *)v9 sizeToFit];
}

@end