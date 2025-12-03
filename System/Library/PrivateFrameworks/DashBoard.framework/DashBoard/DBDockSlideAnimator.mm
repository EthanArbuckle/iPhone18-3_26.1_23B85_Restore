@interface DBDockSlideAnimator
- (_TtC9DashBoard19DBDockSlideAnimator)init;
- (_TtC9DashBoard19DBDockSlideAnimator)initWithDriverDockWindow:(id)window passengerDockWindow:(id)dockWindow layoutEngine:(id)engine environmentConfiguration:(id)configuration;
- (void)animateWithDuration:(double)duration delay:(double)delay completion:(id)completion;
@end

@implementation DBDockSlideAnimator

- (_TtC9DashBoard19DBDockSlideAnimator)initWithDriverDockWindow:(id)window passengerDockWindow:(id)dockWindow layoutEngine:(id)engine environmentConfiguration:(id)configuration
{
  windowCopy = window;
  dockWindowCopy = dockWindow;
  engineCopy = engine;
  configurationCopy = configuration;
  v13 = sub_2482894C4(windowCopy, dockWindow, engineCopy);

  return v13;
}

- (void)animateWithDuration:(double)duration delay:(double)delay completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  selfCopy = self;
  DBDockSlideAnimator.animate(duration:delay:completion:)(v11, v10, duration, delay);
  sub_248167864(v11);
}

- (_TtC9DashBoard19DBDockSlideAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end