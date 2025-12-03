@interface HKColoredButton
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation HKColoredButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v9.receiver = self;
  v9.super_class = HKColoredButton;
  [(HKColoredButton *)&v9 setHighlighted:?];
  if (highlightedCopy)
  {
    titleLabel = [(HKColoredButton *)self titleLabel];
    [titleLabel setAlpha:0.25];

    backgroundColor = [(HKColoredButton *)self backgroundColor];
    v7 = [backgroundColor colorWithAlphaComponent:0.5];
    [(HKColoredButton *)self setBackgroundColor:v7];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __34__HKColoredButton_setHighlighted___block_invoke;
    v8[3] = &unk_1E81B55A8;
    v8[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.15];
  }
}

void __34__HKColoredButton_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) titleLabel];
  [v2 setAlpha:1.0];

  v4 = [*(a1 + 32) backgroundColor];
  v3 = [v4 colorWithAlphaComponent:1.0];
  [*(a1 + 32) setBackgroundColor:v3];
}

@end