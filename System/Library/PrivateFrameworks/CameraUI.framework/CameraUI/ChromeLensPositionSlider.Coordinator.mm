@interface ChromeLensPositionSlider.Coordinator
- (_TtCV8CameraUI24ChromeLensPositionSlider11Coordinator)init;
- (void)sliderDidEndScrolling:(id)scrolling;
- (void)sliderValueChanged:(id)changed;
- (void)sliderWillBeginScrolling:(id)scrolling;
@end

@implementation ChromeLensPositionSlider.Coordinator

- (void)sliderValueChanged:(id)changed
{
  v4 = self->parent[OBJC_IVAR____TtCV8CameraUI24ChromeLensPositionSlider11Coordinator_parent + 16];
  changedCopy = changed;
  selfCopy = self;
  v6 = sub_1A3A2EA60();
  v7 = sub_1A39A12B8(v6, v4);

  [changedCopy value];
  v9 = v8;
  v10 = v7[153];
  v11 = v7[154];
  __swift_project_boxed_opaque_existential_1(v7 + 150, v10);
  (*(v11 + 8))(v9, 0, 0, 60, v7, v10, v11);
}

- (void)sliderWillBeginScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  selfCopy = self;
  sub_1A390B6FC();
}

- (void)sliderDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  selfCopy = self;
  sub_1A390B9C0();
}

- (_TtCV8CameraUI24ChromeLensPositionSlider11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end