@interface TabSwitcher.BarBackgroundView
- (BOOL)isHidden;
- (_TtCC12MobileSafari11TabSwitcher17BarBackgroundView)initWithFrame:(CGRect)frame;
- (void)configurationDidChange;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setHidden:(BOOL)hidden;
- (void)willMoveToWindow:(id)window;
@end

@implementation TabSwitcher.BarBackgroundView

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = _s17BarBackgroundViewCMa();
  return [(TabSwitcher.BarBackgroundView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v6.receiver = self;
  v6.super_class = _s17BarBackgroundViewCMa();
  v4 = v6.receiver;
  [(TabSwitcher.BarBackgroundView *)&v6 setHidden:hiddenCopy];
  if (v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_coordinatesGroupBackdropCaptureView] == 1)
  {
    v5 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 48];
    [v5 setHidden_];
  }
}

- (void)configurationDidChange
{
  selfCopy = self;
  sub_18B9F8A60();
}

- (void)sceneDidEnterBackground:(id)background
{
  v4 = sub_18BC1E6A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  selfCopy = self;
  if (sub_18B9F9308())
  {
    v9 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode);
    *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode) = 0;
    if (v9 == 1)
    {
      sub_18B9F8A60();
    }
  }

  (*(v5 + 8))(v7, v4);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v4 = sub_18BC1E6A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  selfCopy = self;
  if (sub_18B9F9308())
  {
    v9 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode);
    *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode) = 1;
    if ((v9 & 1) == 0)
    {
      sub_18B9F8A60();
    }
  }

  (*(v5 + 8))(v7, v4);
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_18B9F91F4(window);
}

- (_TtCC12MobileSafari11TabSwitcher17BarBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end