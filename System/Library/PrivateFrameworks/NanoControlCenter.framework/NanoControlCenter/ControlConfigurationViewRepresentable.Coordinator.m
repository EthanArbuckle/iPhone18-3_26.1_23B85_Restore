@interface ControlConfigurationViewRepresentable.Coordinator
- (_TtCV17NanoControlCenterP33_0684E9E8143E920EF7AE2D187751270D37ControlConfigurationViewRepresentable11Coordinator)init;
- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4;
- (void)widgetConfigurationViewControllerDidCancel:(id)a3;
@end

@implementation ControlConfigurationViewRepresentable.Coordinator

- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_25AF30C50(v8);
}

- (void)widgetConfigurationViewControllerDidCancel:(id)a3
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
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