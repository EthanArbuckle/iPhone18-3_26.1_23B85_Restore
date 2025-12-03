@interface CAMFlipButton
+ (CAMFlipButton)flipButtonWithLayoutStyle:(int64_t)style;
+ (id)flipButtonOverContent;
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)tappableEdgeInsets;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOrientation:(int64_t)orientation;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setTappableEdgeInsets:(UIEdgeInsets)insets;
- (void)tintColorDidChange;
@end

@implementation CAMFlipButton

+ (CAMFlipButton)flipButtonWithLayoutStyle:(int64_t)style
{
  buttonWithType_ = [objc_opt_self() buttonWithType_];
  sub_1A3924EA4(style);

  return buttonWithType_;
}

+ (id)flipButtonOverContent
{
  buttonWithType_ = [objc_opt_self() buttonWithType_];
  v3 = CAMLayoutStyleForView(buttonWithType_);
  sub_1A3924EA4(v3);

  return buttonWithType_;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CAMFlipButton;
  selfCopy = self;
  [(CAMFlipButton *)&v6 layoutSubviews];
  imageView = [(CAMFlipButton *)selfCopy imageView];
  if (imageView)
  {
    v4 = imageView;
    CAMOrientationTransform([(CAMFlipButton *)selfCopy orientation], &v5);
    [v4 setTransform_];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = qword_1ED996470;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  if (byte_1EB0FE550 == 1)
  {
    v11.receiver = selfCopy;
    v11.super_class = CAMFlipButton;
    [(CAMFlipButton *)&v11 intrinsicContentSize];
    v5 = v4;
    v7 = v6;

    v8 = v7;
    v9 = v5;
  }

  else
  {
    layoutStyle = [(CAMFlipButton *)selfCopy layoutStyle];

    v9 = 48.0;
    if (layoutStyle == 1)
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
  selfCopy = self;
  CAMFlipButton.tintColorDidChange()();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = CAMFlipButton;
  return [(CAMFlipButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = CAMFlipButton;
  selfCopy = self;
  isHighlighted = [(CAMFlipButton *)&v7 isHighlighted];
  v6.receiver = selfCopy;
  v6.super_class = CAMFlipButton;
  [(CAMFlipButton *)&v6 setHighlighted:highlightedCopy];
  sub_1A3925DB0(isHighlighted);
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

- (void)setTappableEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
  sub_1A3926088(top, left, bottom, right);
}

- (void)setOrientation:(int64_t)orientation
{
  selfCopy = self;
  [(CAMFlipButton *)selfCopy setOrientation:[(CAMFlipButton *)selfCopy orientation] animated:0];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  selfCopy = self;
  sub_1A3926194(orientation, animated);
}

@end