@interface _DBSuspendAppToHomeZoomAnimation
- (_TtC9DashBoardP33_D40E7872F70D8F122B999F93C1E1124D32_DBSuspendAppToHomeZoomAnimation)initWithSettings:(id)a3;
- (void)startAnimationWithCompletion:(id)a3;
@end

@implementation _DBSuspendAppToHomeZoomAnimation

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
  sub_24825F344(v7, v6);
  sub_248167864(v7);
}

- (_TtC9DashBoardP33_D40E7872F70D8F122B999F93C1E1124D32_DBSuspendAppToHomeZoomAnimation)initWithSettings:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end