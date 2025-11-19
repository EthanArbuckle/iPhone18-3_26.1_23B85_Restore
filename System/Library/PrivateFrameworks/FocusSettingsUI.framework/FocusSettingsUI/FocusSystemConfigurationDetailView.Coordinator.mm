@interface FocusSystemConfigurationDetailView.Coordinator
- (void)focusConfigurationViewController:(id)a3 configurationUIStateDidChange:(id)a4;
- (void)focusConfigurationViewController:(id)a3 didPressButtonWithIdentifier:(id)a4 cellFrame:(CGRect)a5;
@end

@implementation FocusSystemConfigurationDetailView.Coordinator

- (void)focusConfigurationViewController:(id)a3 configurationUIStateDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24B918158(v7);
}

- (void)focusConfigurationViewController:(id)a3 didPressButtonWithIdentifier:(id)a4 cellFrame:(CGRect)a5
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV15FocusSettingsUI34FocusSystemConfigurationDetailView11Coordinator_updateConfigurationHandler);
  v7 = a5;
  v8 = 0;
  v6 = self;
  v5(0, 2, &v7);
}

@end