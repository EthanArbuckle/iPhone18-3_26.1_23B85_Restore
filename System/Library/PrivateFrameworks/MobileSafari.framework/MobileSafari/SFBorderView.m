@interface SFBorderView
- (SFBorderView)initWithCoder:(id)a3;
- (SFBorderView)initWithFrame:(CGRect)a3;
- (UIColor)borderColor;
- (void)setBorderColor:(id)a3;
@end

@implementation SFBorderView

- (UIColor)borderColor
{
  v3 = OBJC_IVAR___SFBorderView_borderColor;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setBorderColor:(id)a3
{
  v5 = OBJC_IVAR___SFBorderView_borderColor;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_18BA84A40();
}

- (SFBorderView)initWithFrame:(CGRect)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___SFBorderView_borderColor) = 0;
  v5.receiver = self;
  v5.super_class = SFBorderView;
  v3 = [(SFBorderView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  sub_18BA84C2C();

  return v3;
}

- (SFBorderView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___SFBorderView_borderColor) = 0;
  v8.receiver = self;
  v8.super_class = SFBorderView;
  v3 = a3;
  v4 = [(SFBorderView *)&v8 initWithCoder:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_18BA84C2C();
  }

  return v5;
}

@end