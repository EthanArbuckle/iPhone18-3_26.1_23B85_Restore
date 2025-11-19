@interface CDPLocalSecretEntryPane
- (void)setTitle:(id)a3;
@end

@implementation CDPLocalSecretEntryPane

- (void)setTitle:(id)a3
{
  v4 = MEMORY[0x277CFD508];
  v5 = a3;
  v6 = [v4 builderForKey:@"LOCAL_SECRET_ENTRY_TITLE"];
  v7 = [MEMORY[0x277CFD4F8] sharedInstance];
  v8 = [v7 deviceClass];
  v9 = [v6 addDeviceClass:v8];
  v10 = [v9 addSecretType:1];
  v13 = [v10 localizedString];

  v11 = [(CDPPaneHeaderView *)self->super._headerView textLabel];
  [v11 setText:v13];

  v12 = [(CDPPaneHeaderView *)self->super._headerView detailTextLabel];
  [v12 setText:v5];

  [(CDPPaneHeaderView *)self->super._headerView makeAllTheTextFits];
  [(CDPPaneHeaderView *)self->super._headerView sizeToFit];
}

@end