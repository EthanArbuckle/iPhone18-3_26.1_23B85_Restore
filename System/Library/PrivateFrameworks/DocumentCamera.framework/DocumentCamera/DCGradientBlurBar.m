@interface DCGradientBlurBar
- (DCGradientBlurBar)initWithCoder:(id)a3;
- (DCGradientBlurBar)initWithEffect:(id)a3;
@end

@implementation DCGradientBlurBar

- (DCGradientBlurBar)initWithEffect:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___DCGradientBlurBar_direction) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for GradientBlurBar();
  v4 = a3;
  v5 = [(DCGradientBlurBar *)&v7 initWithEffect:v4];
  sub_2492E422C();

  return v5;
}

- (DCGradientBlurBar)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___DCGradientBlurBar_direction) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GradientBlurBar();
  v4 = a3;
  v5 = [(DCGradientBlurBar *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_2492E422C();
  }

  return v6;
}

@end