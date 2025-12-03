@interface DCGradientBlurBar
- (DCGradientBlurBar)initWithCoder:(id)coder;
- (DCGradientBlurBar)initWithEffect:(id)effect;
@end

@implementation DCGradientBlurBar

- (DCGradientBlurBar)initWithEffect:(id)effect
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___DCGradientBlurBar_direction) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for GradientBlurBar();
  effectCopy = effect;
  v5 = [(DCGradientBlurBar *)&v7 initWithEffect:effectCopy];
  sub_2492E422C();

  return v5;
}

- (DCGradientBlurBar)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___DCGradientBlurBar_direction) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GradientBlurBar();
  coderCopy = coder;
  v5 = [(DCGradientBlurBar *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_2492E422C();
  }

  return v6;
}

@end