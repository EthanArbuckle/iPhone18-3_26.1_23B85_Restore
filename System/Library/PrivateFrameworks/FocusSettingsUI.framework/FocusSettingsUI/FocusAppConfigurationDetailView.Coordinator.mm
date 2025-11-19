@interface FocusAppConfigurationDetailView.Coordinator
- (void)focusConfigurationViewController:(id)a3 configurationUIStateDidChange:(id)a4;
- (void)focusConfigurationViewController:(id)a3 didPressButtonWithIdentifier:(id)a4 cellFrame:(CGRect)a5;
@end

@implementation FocusAppConfigurationDetailView.Coordinator

- (void)focusConfigurationViewController:(id)a3 didPressButtonWithIdentifier:(id)a4 cellFrame:(CGRect)a5
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV15FocusSettingsUI31FocusAppConfigurationDetailView11Coordinator_updateConfigurationHandler);
  v7 = a5;
  v8 = 0;
  v6 = self;
  v5(0, &v7);
}

- (void)focusConfigurationViewController:(id)a3 configurationUIStateDidChange:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV15FocusSettingsUI31FocusAppConfigurationDetailView11Coordinator_updateConfigurationHandler);
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  v8 = a4;
  v7 = self;
  v6(a4, v9);
}

@end