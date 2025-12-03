@interface _DBLaunchAppFromHomeZoomAnimation
- (_TtC9DashBoardP33_FD9B5304F96E1F01D97887BA20EFEE2A33_DBLaunchAppFromHomeZoomAnimation)initWithSettings:(id)settings;
- (void)startAnimationWithCompletion:(id)completion;
@end

@implementation _DBLaunchAppFromHomeZoomAnimation

- (void)startAnimationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_248261494;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_248312324(v7, v6);
  sub_248167864(v7);
}

- (_TtC9DashBoardP33_FD9B5304F96E1F01D97887BA20EFEE2A33_DBLaunchAppFromHomeZoomAnimation)initWithSettings:(id)settings
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end