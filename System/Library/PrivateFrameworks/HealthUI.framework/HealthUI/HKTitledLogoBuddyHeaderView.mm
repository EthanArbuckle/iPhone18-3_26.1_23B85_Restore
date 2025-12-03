@interface HKTitledLogoBuddyHeaderView
- (HKTitledLogoBuddyHeaderView)initWithTopInset:(double)inset linkButtonTitle:(id)title;
- (void)_updateForCurrentSizeCategory;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKTitledLogoBuddyHeaderView

- (HKTitledLogoBuddyHeaderView)initWithTopInset:(double)inset linkButtonTitle:(id)title
{
  v19.receiver = self;
  v19.super_class = HKTitledLogoBuddyHeaderView;
  v4 = [(HKTitledBuddyHeaderView *)&v19 initWithTopInset:title linkButtonTitle:inset];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    logoImageView = v4->_logoImageView;
    v4->_logoImageView = v5;

    [(UIImageView *)v4->_logoImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HKTitledLogoBuddyHeaderView *)v4 addSubview:v4->_logoImageView];
    centerXAnchor = [(UIImageView *)v4->_logoImageView centerXAnchor];
    centerXAnchor2 = [(HKTitledLogoBuddyHeaderView *)v4 centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v9 setActive:1];

    titleLabel = [(HKTitledBuddyHeaderView *)v4 titleLabel];
    firstBaselineAnchor = [titleLabel firstBaselineAnchor];
    bottomAnchor = [(UIImageView *)v4->_logoImageView bottomAnchor];
    v13 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
    titleLabelFirstBaselineAnchor = v4->_titleLabelFirstBaselineAnchor;
    v4->_titleLabelFirstBaselineAnchor = v13;

    [(NSLayoutConstraint *)v4->_titleLabelFirstBaselineAnchor setActive:1];
    [(HKTitledLogoBuddyHeaderView *)v4 _updateForCurrentSizeCategory];
    topAnchor = [(UIImageView *)v4->_logoImageView topAnchor];
    topAnchor2 = [(HKTitledLogoBuddyHeaderView *)v4 topAnchor];
    v17 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [v17 setActive:1];
  }

  return v4;
}

- (void)_updateForCurrentSizeCategory
{
  v4.receiver = self;
  v4.super_class = HKTitledLogoBuddyHeaderView;
  [(HKTitledBuddyHeaderView *)&v4 _updateForCurrentSizeCategory];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDB0]];
  [v3 _scaledValueForValue:44.0];
  [(NSLayoutConstraint *)self->_titleLabelFirstBaselineAnchor setConstant:?];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    v9 = changeCopy;
    traitCollection = [(HKTitledLogoBuddyHeaderView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [v9 preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    changeCopy = v9;
    if ((v8 & 1) == 0)
    {
      [(HKTitledLogoBuddyHeaderView *)self _updateForCurrentSizeCategory];
      changeCopy = v9;
    }
  }
}

@end