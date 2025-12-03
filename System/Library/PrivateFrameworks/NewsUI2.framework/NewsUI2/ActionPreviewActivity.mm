@interface ActionPreviewActivity
- (_TtC7NewsUI221ActionPreviewActivity)init;
- (id)previewViewControllerForAction:(id)action;
- (void)commitViewController:(id)controller action:(id)action;
@end

@implementation ActionPreviewActivity

- (id)previewViewControllerForAction:(id)action
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_2193AAE88();
  swift_unknownObjectRelease();

  return v5;
}

- (void)commitViewController:(id)controller action:(id)action
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2193AB554();

  swift_unknownObjectRelease();
}

- (_TtC7NewsUI221ActionPreviewActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end