@interface TabOverview.BackgroundView
- (_TtCC12MobileSafari11TabOverview14BackgroundView)initWithFrame:(CGRect)frame;
- (double)_continuousCornerRadius;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)layoutSubviews;
@end

@implementation TabOverview.BackgroundView

- (_TtCC12MobileSafari11TabOverview14BackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_blurView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(SFBackdropView) init];
  v9 = OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_fillView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v12.receiver = self;
  v12.super_class = _s14BackgroundViewCMa_0();
  height = [(TabOverview.BackgroundView *)&v12 initWithFrame:x, y, width, height];
  sub_18B852AE0();

  return height;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v7.receiver = self;
  v7.super_class = _s14BackgroundViewCMa_0();
  v4 = v7.receiver;
  [(TabOverview.BackgroundView *)&v7 _setContinuousCornerRadius:radius];
  v5 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_blurView];
  [v4 _continuousCornerRadius];
  [v5 _setContinuousCornerRadius_];
  v6 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_fillView];
  [v4 _continuousCornerRadius];
  [v6 _setContinuousCornerRadius_];
}

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = _s14BackgroundViewCMa_0();
  [(TabOverview.BackgroundView *)&v3 _continuousCornerRadius];
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _s14BackgroundViewCMa_0();
  v2 = v5.receiver;
  [(TabOverview.BackgroundView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_blurView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = *&v2[OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_fillView];
  [v2 bounds];
  [v4 setFrame_];
}

@end