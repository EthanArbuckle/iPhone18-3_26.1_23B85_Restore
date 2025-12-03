@interface FocusAppConfigurationDetailView.Coordinator
- (void)focusConfigurationViewController:(id)controller configurationUIStateDidChange:(id)change;
- (void)focusConfigurationViewController:(id)controller didPressButtonWithIdentifier:(id)identifier cellFrame:(CGRect)frame;
@end

@implementation FocusAppConfigurationDetailView.Coordinator

- (void)focusConfigurationViewController:(id)controller didPressButtonWithIdentifier:(id)identifier cellFrame:(CGRect)frame
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV15FocusSettingsUI31FocusAppConfigurationDetailView11Coordinator_updateConfigurationHandler);
  frameCopy = frame;
  v8 = 0;
  selfCopy = self;
  v5(0, &frameCopy);
}

- (void)focusConfigurationViewController:(id)controller configurationUIStateDidChange:(id)change
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV15FocusSettingsUI31FocusAppConfigurationDetailView11Coordinator_updateConfigurationHandler);
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  changeCopy = change;
  selfCopy = self;
  v6(change, v9);
}

@end