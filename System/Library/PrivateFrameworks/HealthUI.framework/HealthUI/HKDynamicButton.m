@interface HKDynamicButton
- (CGSize)intrinsicContentSize;
- (double)_buttonLabelHeight;
- (void)_updateForCurrentSizeCategory;
- (void)setHeightConstraint:(id)a3;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKDynamicButton

- (void)setHeightConstraint:(id)a3
{
  v5 = a3;
  heightConstraint = self->_heightConstraint;
  if (heightConstraint != v5)
  {
    v7 = v5;
    [(NSLayoutConstraint *)heightConstraint setActive:0];
    objc_storeStrong(&self->_heightConstraint, a3);
    heightConstraint = [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](heightConstraint, v5);
}

- (CGSize)intrinsicContentSize
{
  [(HKDynamicButton *)self _buttonLabelHeight];
  v3 = v2;
  v4 = 288.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (double)_buttonLabelHeight
{
  [(HKDynamicButton *)self contentEdgeInsets];
  v4 = 288.0 - v3;
  [(HKDynamicButton *)self contentEdgeInsets];
  v6 = fmax(v4 - v5, 0.0);
  v7 = [(HKDynamicButton *)self titleLabel];
  [v7 sizeThatFits:{v6, 0.0}];
  v9 = v8 + 22.0;

  result = 50.0;
  if (v9 >= 50.0)
  {
    return v9;
  }

  return result;
}

- (void)_updateForCurrentSizeCategory
{
  v3 = [(HKDynamicButton *)self titleLabel];
  v4 = _HKMediumScaledPreferredBodyFontWithValue(17.0);
  [v3 setFont:v4];

  [(HKDynamicButton *)self _buttonLabelHeight];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];

  [(HKDynamicButton *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKDynamicButton;
  [(HKDynamicButton *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKDynamicButton *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKDynamicButton *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = HKDynamicButton;
  [(HKDynamicButton *)&v5 setTitle:a3 forState:a4];
  [(HKDynamicButton *)self _updateForCurrentSizeCategory];
}

@end