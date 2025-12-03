@interface SFBorderView
- (SFBorderView)initWithCoder:(id)coder;
- (SFBorderView)initWithFrame:(CGRect)frame;
- (UIColor)borderColor;
- (void)setBorderColor:(id)color;
@end

@implementation SFBorderView

- (UIColor)borderColor
{
  v3 = OBJC_IVAR___SFBorderView_borderColor;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setBorderColor:(id)color
{
  v5 = OBJC_IVAR___SFBorderView_borderColor;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = color;
  colorCopy = color;
  selfCopy = self;

  sub_18BA84A40();
}

- (SFBorderView)initWithFrame:(CGRect)frame
{
  *(&self->super.super.super.isa + OBJC_IVAR___SFBorderView_borderColor) = 0;
  v5.receiver = self;
  v5.super_class = SFBorderView;
  v3 = [(SFBorderView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  sub_18BA84C2C();

  return v3;
}

- (SFBorderView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___SFBorderView_borderColor) = 0;
  v8.receiver = self;
  v8.super_class = SFBorderView;
  coderCopy = coder;
  v4 = [(SFBorderView *)&v8 initWithCoder:coderCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_18BA84C2C();
  }

  return v5;
}

@end