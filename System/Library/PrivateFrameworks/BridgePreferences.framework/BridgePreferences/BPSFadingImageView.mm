@interface BPSFadingImageView
- (BPSFadingImageView)initWithCoder:(id)a3;
- (BPSFadingImageView)initWithFrame:(CGRect)a3;
- (BPSFadingImageView)initWithImage:(id)a3;
- (BPSFadingImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (CAGradientLayer)maskLayer;
- (void)layoutSubviews;
- (void)setFadePercentage:(double)a3;
- (void)setFadeSpread:(double)a3;
- (void)setupMask;
- (void)updateMask;
@end

@implementation BPSFadingImageView

- (void)setFadePercentage:(double)a3
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR___BPSFadingImageView_fadePercentage;
  swift_beginAccess();
  v6 = fmin(a3, 0.5);
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  *(&self->super.super.super.super.isa + v5) = v6;
  [(BPSFadingImageView *)self updateMask];
}

- (void)setFadeSpread:(double)a3
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR___BPSFadingImageView_fadeSpread;
  swift_beginAccess();
  v6 = fmin(a3, 1.0);
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  *(&self->super.super.super.super.isa + v5) = v6;
  [(BPSFadingImageView *)self updateMask];
}

- (CAGradientLayer)maskLayer
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___BPSFadingImageView_maskLayer);

  return v3;
}

- (BPSFadingImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR___BPSFadingImageView_fadePercentage) = 0x3FC3333333333333;
  *(&self->super.super.super.super.isa + OBJC_IVAR___BPSFadingImageView_fadeSpread) = 0x3FD999999999999ALL;
  v8 = OBJC_IVAR___BPSFadingImageView_maskLayer;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v11.receiver = self;
  v11.super_class = BPSFadingImageView;
  v9 = [(BPSFadingImageView *)&v11 initWithFrame:x, y, width, height];
  [(BPSFadingImageView *)v9 setupMask];

  return v9;
}

- (BPSFadingImageView)initWithCoder:(id)a3
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = BPSFadingImageView.init(coder:)(a3);

  return v4;
}

- (void)layoutSubviews
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = BPSFadingImageView;
  v3 = self;
  [(BPSFadingImageView *)&v5 layoutSubviews];
  v4 = [(BPSFadingImageView *)v3 maskLayer:v5.receiver];
  [(BPSFadingImageView *)v3 bounds];
  [(CAGradientLayer *)v4 setFrame:?];
}

- (void)setupMask
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  v3 = [(BPSFadingImageView *)v5 layer];
  v4 = [(BPSFadingImageView *)v5 maskLayer];
  [v3 setMask_];

  [(BPSFadingImageView *)v5 updateMask];
}

- (void)updateMask
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_241E9D300();
}

- (BPSFadingImageView)initWithImage:(id)a3
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BPSFadingImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end