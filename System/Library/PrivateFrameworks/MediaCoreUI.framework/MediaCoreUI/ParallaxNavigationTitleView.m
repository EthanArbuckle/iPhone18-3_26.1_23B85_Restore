@interface ParallaxNavigationTitleView
- (_TtC11MediaCoreUI27ParallaxNavigationTitleView)initWithCoder:(id)a3;
- (_TtC11MediaCoreUI27ParallaxNavigationTitleView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)performTransition:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)tintColorDidChange;
- (void)transitionCompleted:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)transitionWillBegin:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)willMoveToWindow:(id)a3;
@end

@implementation ParallaxNavigationTitleView

- (_TtC11MediaCoreUI27ParallaxNavigationTitleView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_allowsNavigationBarTintColorUpdate) = 1;
  v4 = OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_customBackButton;
  *(&self->super.super.super.super.isa + v4) = [objc_opt_self() buttonWithType_];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_didSetupBackButtonsAlphas) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_isNavigationBarOverParallaxHeader) = 1;
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1C5B79DF0();
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ParallaxNavigationTitleView *)&v3 tintColorDidChange];
  sub_1C5B7AAC0(1);
}

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1C5B7AD2C(a3);
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ParallaxNavigationTitleView *)&v4 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {

    sub_1C5B7AAC0(1);
  }
}

- (void)transitionWillBegin:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v6 = v7.receiver;
  [(_UINavigationBarTitleView *)&v7 transitionWillBegin:a3 willBeDisplayed:v4];
  v6[OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_allowsNavigationBarTintColorUpdate] = v4;
}

- (void)transitionCompleted:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v6 = v7.receiver;
  [(_UINavigationBarTitleView *)&v7 transitionCompleted:a3 willBeDisplayed:v4];
  v6[OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_allowsNavigationBarTintColorUpdate] = v4;
  sub_1C5B7AAC0(v4);
}

- (void)performTransition:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v6 = v7.receiver;
  [(_UINavigationBarTitleView *)&v7 performTransition:a3 willBeDisplayed:v4];
  sub_1C5B7AAC0(v4);
}

- (_TtC11MediaCoreUI27ParallaxNavigationTitleView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end