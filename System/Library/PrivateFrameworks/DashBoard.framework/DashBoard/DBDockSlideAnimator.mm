@interface DBDockSlideAnimator
- (_TtC9DashBoard19DBDockSlideAnimator)init;
- (_TtC9DashBoard19DBDockSlideAnimator)initWithDriverDockWindow:(id)a3 passengerDockWindow:(id)a4 layoutEngine:(id)a5 environmentConfiguration:(id)a6;
- (void)animateWithDuration:(double)a3 delay:(double)a4 completion:(id)a5;
@end

@implementation DBDockSlideAnimator

- (_TtC9DashBoard19DBDockSlideAnimator)initWithDriverDockWindow:(id)a3 passengerDockWindow:(id)a4 layoutEngine:(id)a5 environmentConfiguration:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_2482894C4(v9, a4, v11);

  return v13;
}

- (void)animateWithDuration:(double)a3 delay:(double)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = sub_248272D08;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = self;
  DBDockSlideAnimator.animate(duration:delay:completion:)(v11, v10, a3, a4);
  sub_248167864(v11);
}

- (_TtC9DashBoard19DBDockSlideAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end