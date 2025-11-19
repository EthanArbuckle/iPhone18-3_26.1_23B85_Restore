@interface _DBLaunchAppFromHomeZoomAnimation
- (_TtC9DashBoardP33_FD9B5304F96E1F01D97887BA20EFEE2A33_DBLaunchAppFromHomeZoomAnimation)initWithSettings:(id)a3;
- (void)startAnimationWithCompletion:(id)a3;
@end

@implementation _DBLaunchAppFromHomeZoomAnimation

- (void)startAnimationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_248312324(v7, v6);
  sub_248167864(v7);
}

- (_TtC9DashBoardP33_FD9B5304F96E1F01D97887BA20EFEE2A33_DBLaunchAppFromHomeZoomAnimation)initWithSettings:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end