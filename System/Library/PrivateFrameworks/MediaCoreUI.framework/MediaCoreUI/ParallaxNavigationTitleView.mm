@interface ParallaxNavigationTitleView
- (_TtC11MediaCoreUI27ParallaxNavigationTitleView)initWithCoder:(id)coder;
- (_TtC11MediaCoreUI27ParallaxNavigationTitleView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)performTransition:(int64_t)transition willBeDisplayed:(BOOL)displayed;
- (void)tintColorDidChange;
- (void)transitionCompleted:(int64_t)completed willBeDisplayed:(BOOL)displayed;
- (void)transitionWillBegin:(int64_t)begin willBeDisplayed:(BOOL)displayed;
- (void)willMoveToWindow:(id)window;
@end

@implementation ParallaxNavigationTitleView

- (_TtC11MediaCoreUI27ParallaxNavigationTitleView)initWithCoder:(id)coder
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
  selfCopy = self;
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

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_1C5B7AD2C(window);
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ParallaxNavigationTitleView *)&v4 didMoveToWindow];
  window = [v2 window];
  if (window)
  {

    sub_1C5B7AAC0(1);
  }
}

- (void)transitionWillBegin:(int64_t)begin willBeDisplayed:(BOOL)displayed
{
  displayedCopy = displayed;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v6 = v7.receiver;
  [(_UINavigationBarTitleView *)&v7 transitionWillBegin:begin willBeDisplayed:displayedCopy];
  v6[OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_allowsNavigationBarTintColorUpdate] = displayedCopy;
}

- (void)transitionCompleted:(int64_t)completed willBeDisplayed:(BOOL)displayed
{
  displayedCopy = displayed;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v6 = v7.receiver;
  [(_UINavigationBarTitleView *)&v7 transitionCompleted:completed willBeDisplayed:displayedCopy];
  v6[OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_allowsNavigationBarTintColorUpdate] = displayedCopy;
  sub_1C5B7AAC0(displayedCopy);
}

- (void)performTransition:(int64_t)transition willBeDisplayed:(BOOL)displayed
{
  displayedCopy = displayed;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v6 = v7.receiver;
  [(_UINavigationBarTitleView *)&v7 performTransition:transition willBeDisplayed:displayedCopy];
  sub_1C5B7AAC0(displayedCopy);
}

- (_TtC11MediaCoreUI27ParallaxNavigationTitleView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end