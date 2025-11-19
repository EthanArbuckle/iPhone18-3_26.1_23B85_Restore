@interface CAMFlipButton
+ (CAMFlipButton)flipButtonWithLayoutStyle:(int64_t)a3;
+ (id)flipButtonOverContent;
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)tappableEdgeInsets;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setTappableEdgeInsets:(UIEdgeInsets)a3;
- (void)tintColorDidChange;
@end

@implementation CAMFlipButton

+ (CAMFlipButton)flipButtonWithLayoutStyle:(int64_t)a3
{
  v4 = [objc_opt_self() buttonWithType_];
  sub_1A3924EA4(a3);

  return v4;
}

+ (id)flipButtonOverContent
{
  v2 = [objc_opt_self() buttonWithType_];
  v3 = CAMLayoutStyleForView(v2);
  sub_1A3924EA4(v3);

  return v2;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CAMFlipButton;
  v2 = self;
  [(CAMFlipButton *)&v6 layoutSubviews];
  v3 = [(CAMFlipButton *)v2 imageView];
  if (v3)
  {
    v4 = v3;
    CAMOrientationTransform([(CAMFlipButton *)v2 orientation], &v5);
    [v4 setTransform_];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = qword_1ED996470;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  if (byte_1EB0FE550 == 1)
  {
    v11.receiver = v3;
    v11.super_class = CAMFlipButton;
    [(CAMFlipButton *)&v11 intrinsicContentSize];
    v5 = v4;
    v7 = v6;

    v8 = v7;
    v9 = v5;
  }

  else
  {
    v10 = [(CAMFlipButton *)v3 layoutStyle];

    v9 = 48.0;
    if (v10 == 1)
    {
      v9 = 44.0;
    }

    v8 = v9;
  }

  result.height = v8;
  result.width = v9;
  return result;
}

- (void)tintColorDidChange
{
  v2 = self;
  CAMFlipButton.tintColorDidChange()();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = CAMFlipButton;
  return [(CAMFlipButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = CAMFlipButton;
  v4 = self;
  v5 = [(CAMFlipButton *)&v7 isHighlighted];
  v6.receiver = v4;
  v6.super_class = CAMFlipButton;
  [(CAMFlipButton *)&v6 setHighlighted:v3];
  sub_1A3925DB0(v5);
}

- (UIEdgeInsets)tappableEdgeInsets
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___CAMFlipButton_tappableEdgeInsets);
  v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR___CAMFlipButton_tappableEdgeInsets);
  v4 = *(&self->super.super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___CAMFlipButton_tappableEdgeInsets);
  v5 = *(&self->super.super.super._cachedTraitCollection + OBJC_IVAR___CAMFlipButton_tappableEdgeInsets);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  sub_1A3926088(top, left, bottom, right);
}

- (void)setOrientation:(int64_t)a3
{
  v3 = self;
  [(CAMFlipButton *)v3 setOrientation:[(CAMFlipButton *)v3 orientation] animated:0];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1A3926194(a3, a4);
}

@end