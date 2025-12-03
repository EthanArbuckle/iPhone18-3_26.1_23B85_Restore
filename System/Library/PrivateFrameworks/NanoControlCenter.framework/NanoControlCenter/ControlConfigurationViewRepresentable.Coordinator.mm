@interface ControlConfigurationViewRepresentable.Coordinator
- (_TtCV17NanoControlCenterP33_0684E9E8143E920EF7AE2D187751270D37ControlConfigurationViewRepresentable11Coordinator)init;
- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent;
- (void)widgetConfigurationViewControllerDidCancel:(id)cancel;
@end

@implementation ControlConfigurationViewRepresentable.Coordinator

- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  intentCopy = intent;
  selfCopy = self;
  sub_25AF30C50(intentCopy);
}

- (void)widgetConfigurationViewControllerDidCancel:(id)cancel
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  cancelCopy = cancel;
  selfCopy = self;
  sub_25AF30DB4();
}

- (_TtCV17NanoControlCenterP33_0684E9E8143E920EF7AE2D187751270D37ControlConfigurationViewRepresentable11Coordinator)init
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end