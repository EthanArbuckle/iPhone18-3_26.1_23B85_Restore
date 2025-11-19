@interface TabSwitcher.BarBackgroundView
- (BOOL)isHidden;
- (_TtCC12MobileSafari11TabSwitcher17BarBackgroundView)initWithFrame:(CGRect)a3;
- (void)configurationDidChange;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation TabSwitcher.BarBackgroundView

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = _s17BarBackgroundViewCMa();
  return [(TabSwitcher.BarBackgroundView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _s17BarBackgroundViewCMa();
  v4 = v6.receiver;
  [(TabSwitcher.BarBackgroundView *)&v6 setHidden:v3];
  if (v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_coordinatesGroupBackdropCaptureView] == 1)
  {
    v5 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 48];
    [v5 setHidden_];
  }
}

- (void)configurationDidChange
{
  v2 = self;
  sub_18B9F8A60();
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = sub_18BC1E6A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  v8 = self;
  if (sub_18B9F9308())
  {
    v9 = *(&v8->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode);
    *(&v8->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode) = 0;
    if (v9 == 1)
    {
      sub_18B9F8A60();
    }
  }

  (*(v5 + 8))(v7, v4);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = sub_18BC1E6A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  v8 = self;
  if (sub_18B9F9308())
  {
    v9 = *(&v8->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode);
    *(&v8->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode) = 1;
    if ((v9 & 1) == 0)
    {
      sub_18B9F8A60();
    }
  }

  (*(v5 + 8))(v7, v4);
}

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B9F91F4(a3);
}

- (_TtCC12MobileSafari11TabSwitcher17BarBackgroundView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end