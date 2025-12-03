@interface FocusSystemConfigurationDetailView.Coordinator
- (void)focusConfigurationViewController:(id)controller configurationUIStateDidChange:(id)change;
- (void)focusConfigurationViewController:(id)controller didPressButtonWithIdentifier:(id)identifier cellFrame:(CGRect)frame;
@end

@implementation FocusSystemConfigurationDetailView.Coordinator

- (void)focusConfigurationViewController:(id)controller configurationUIStateDidChange:(id)change
{
  controllerCopy = controller;
  changeCopy = change;
  selfCopy = self;
  sub_24B918158(changeCopy);
}

- (void)focusConfigurationViewController:(id)controller didPressButtonWithIdentifier:(id)identifier cellFrame:(CGRect)frame
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV15FocusSettingsUI34FocusSystemConfigurationDetailView11Coordinator_updateConfigurationHandler);
  frameCopy = frame;
  v8 = 0;
  selfCopy = self;
  v5(0, 2, &frameCopy);
}

@end