@interface ChromeFilterScrubber.Coordinator
- (_TtCV8CameraUI20ChromeFilterScrubber11Coordinator)init;
- (void)wheelScrubberViewDidChangeSelectedIndex:(id)index;
@end

@implementation ChromeFilterScrubber.Coordinator

- (void)wheelScrubberViewDidChangeSelectedIndex:(id)index
{
  v4 = self->parent[OBJC_IVAR____TtCV8CameraUI20ChromeFilterScrubber11Coordinator_parent];
  selfCopy = self;
  indexCopy = index;
  v6 = sub_1A3A2EA60();
  v7 = sub_1A39A12B8(v6, v4);

  if (indexCopy)
  {
    selectedIndex = [indexCopy selectedIndex];
    v9 = v7[153];
    v10 = v7[154];
    __swift_project_boxed_opaque_existential_1(v7 + 150, v9);
    (*(v10 + 8))(selectedIndex, 0, 0, 32, v7, v9, v10);
  }

  else
  {
    __break(1u);
  }
}

- (_TtCV8CameraUI20ChromeFilterScrubber11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end