@interface HKDynamicButton
- (CGSize)intrinsicContentSize;
- (double)_buttonLabelHeight;
- (void)_updateForCurrentSizeCategory;
- (void)setHeightConstraint:(id)constraint;
- (void)setTitle:(id)title forState:(unint64_t)state;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKDynamicButton

- (void)setHeightConstraint:(id)constraint
{
  constraintCopy = constraint;
  heightConstraint = self->_heightConstraint;
  if (heightConstraint != constraintCopy)
  {
    v7 = constraintCopy;
    [(NSLayoutConstraint *)heightConstraint setActive:0];
    objc_storeStrong(&self->_heightConstraint, constraint);
    heightConstraint = [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
    constraintCopy = v7;
  }

  MEMORY[0x1EEE66BB8](heightConstraint, constraintCopy);
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
  titleLabel = [(HKDynamicButton *)self titleLabel];
  [titleLabel sizeThatFits:{v6, 0.0}];
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
  titleLabel = [(HKDynamicButton *)self titleLabel];
  v4 = _HKMediumScaledPreferredBodyFontWithValue(17.0);
  [titleLabel setFont:v4];

  [(HKDynamicButton *)self _buttonLabelHeight];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];

  [(HKDynamicButton *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKDynamicButton;
  [(HKDynamicButton *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKDynamicButton *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKDynamicButton *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = HKDynamicButton;
  [(HKDynamicButton *)&v5 setTitle:title forState:state];
  [(HKDynamicButton *)self _updateForCurrentSizeCategory];
}

@end