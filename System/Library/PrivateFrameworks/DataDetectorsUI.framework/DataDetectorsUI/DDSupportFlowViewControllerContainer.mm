@interface DDSupportFlowViewControllerContainer
- (UIViewController)controller;
- (_TtC15DataDetectorsUI36DDSupportFlowViewControllerContainer)init;
- (id)init:(id)a3;
@end

@implementation DDSupportFlowViewControllerContainer

- (UIViewController)controller
{
  sub_21ABC66B4();
  sub_21ABC66A4();
  sub_21ABC6694();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.isa + OBJC_IVAR____TtC15DataDetectorsUI36DDSupportFlowViewControllerContainer_controller);

  return v3;
}

- (id)init:(id)a3
{
  sub_21ABC66B4();
  sub_21ABC66A4();
  sub_21ABC6694();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = sub_21ABBC4A0(sub_21ABBC664, v5);

  return v6;
}

- (_TtC15DataDetectorsUI36DDSupportFlowViewControllerContainer)init
{
  sub_21ABC66B4();
  sub_21ABC66A4();
  sub_21ABC6694();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end