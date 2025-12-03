@interface CDPLocalSecretEntryPane
- (void)setTitle:(id)title;
@end

@implementation CDPLocalSecretEntryPane

- (void)setTitle:(id)title
{
  v4 = MEMORY[0x277CFD508];
  titleCopy = title;
  v6 = [v4 builderForKey:@"LOCAL_SECRET_ENTRY_TITLE"];
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
  v9 = [v6 addDeviceClass:deviceClass];
  v10 = [v9 addSecretType:1];
  localizedString = [v10 localizedString];

  textLabel = [(CDPPaneHeaderView *)self->super._headerView textLabel];
  [textLabel setText:localizedString];

  detailTextLabel = [(CDPPaneHeaderView *)self->super._headerView detailTextLabel];
  [detailTextLabel setText:titleCopy];

  [(CDPPaneHeaderView *)self->super._headerView makeAllTheTextFits];
  [(CDPPaneHeaderView *)self->super._headerView sizeToFit];
}

@end