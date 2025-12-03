@interface BPSFadingImageView
- (BPSFadingImageView)initWithCoder:(id)coder;
- (BPSFadingImageView)initWithFrame:(CGRect)frame;
- (BPSFadingImageView)initWithImage:(id)image;
- (BPSFadingImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (CAGradientLayer)maskLayer;
- (void)layoutSubviews;
- (void)setFadePercentage:(double)percentage;
- (void)setFadeSpread:(double)spread;
- (void)setupMask;
- (void)updateMask;
@end

@implementation BPSFadingImageView

- (void)setFadePercentage:(double)percentage
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
  v6 = fmin(percentage, 0.5);
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  *(&self->super.super.super.super.isa + v5) = v6;
  [(BPSFadingImageView *)self updateMask];
}

- (void)setFadeSpread:(double)spread
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
  v6 = fmin(spread, 1.0);
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

- (BPSFadingImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(BPSFadingImageView *)&v11 initWithFrame:x, y, width, height];
  [(BPSFadingImageView *)height setupMask];

  return height;
}

- (BPSFadingImageView)initWithCoder:(id)coder
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = BPSFadingImageView.init(coder:)(coder);

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
  selfCopy = self;
  [(BPSFadingImageView *)&v5 layoutSubviews];
  v4 = [(BPSFadingImageView *)selfCopy maskLayer:v5.receiver];
  [(BPSFadingImageView *)selfCopy bounds];
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

  selfCopy = self;
  layer = [(BPSFadingImageView *)selfCopy layer];
  maskLayer = [(BPSFadingImageView *)selfCopy maskLayer];
  [layer setMask_];

  [(BPSFadingImageView *)selfCopy updateMask];
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

  selfCopy = self;
  sub_241E9D300();
}

- (BPSFadingImageView)initWithImage:(id)image
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

- (BPSFadingImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
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