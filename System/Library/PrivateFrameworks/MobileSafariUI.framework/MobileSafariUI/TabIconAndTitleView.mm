@interface TabIconAndTitleView
- (double)_tabIconSize;
- (double)_titleInsets;
- (id)icon;
- (void)_preferredContentSizeCategoryDidChange:(id)change previousTraitCollection:(id)collection;
- (void)layoutSubviews;
@end

@implementation TabIconAndTitleView

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = TabIconAndTitleView;
  [(TabIconAndTitleView *)&v32 layoutSubviews];
  _titleInsets = [(TabIconAndTitleView *)self _titleInsets];
  v5 = v4;
  v7 = v6;
  [(TabIconAndTitleView *)self bounds];
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v12 = CGRectGetWidth(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  [(UILabel *)self->_titleLabel sizeThatFits:v12 - v5 - v7, CGRectGetHeight(v34)];
  [(TabIconAndTitleView *)self _tabIconSize];
  icon = [(TabIconAndTitleView *)&self->super.super.super.isa icon];

  if (self->_alignment == 2)
  {
    [(TabIconAndTitleView *)self directionalLayoutMargins];
  }

  _sf_usesLeftToRightLayout = [(TabIconAndTitleView *)self _sf_usesLeftToRightLayout];
  _SFRoundRectToPixels();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(UILabel *)self->_titleLabel setFrame:?];
  if (icon)
  {
    if (self->_usesAccessibilityContentSizeCategory)
    {
      [(UILabel *)self->_titleLabel _firstLineBaseline];
      if (_sf_usesLeftToRightLayout)
      {
        goto LABEL_9;
      }
    }

    else if (_sf_usesLeftToRightLayout)
    {
LABEL_9:
      _SFRoundRectToPixels();
      [(UIImageView *)self->_iconImageView setFrame:?];
      goto LABEL_10;
    }

    [(UILabel *)self->_titleLabel frame];
    CGRectGetMaxX(v35);
    goto LABEL_9;
  }

LABEL_10:
  if (self->_showsUnreadIndicator)
  {
    v23 = v16;
    v24 = v18;
    v25 = v20;
    v26 = v22;
    if (_sf_usesLeftToRightLayout)
    {
      MaxX = CGRectGetMaxX(*&v23);
      v28 = 4.0;
      if (self->_usesAccessibilityContentSizeCategory)
      {
        v28 = 8.0;
      }

      v29 = MaxX + v28;
    }

    else
    {
      v29 = CGRectGetMinX(*&v23) - v7;
    }

    [(SFUnreadIndicator *)self->_unreadIndicator intrinsicContentSize];
    v31 = v30;
    [(TabIconAndTitleView *)self bounds];
    [(SFUnreadIndicator *)self->_unreadIndicator ss_setUntransformedFrame:v29, 0.0, v31, CGRectGetHeight(v36)];
  }
}

- (void)_preferredContentSizeCategoryDidChange:(id)change previousTraitCollection:(id)collection
{
  v5 = [(TabIconAndTitleView *)self traitCollection:change];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (self->_usesAccessibilityContentSizeCategory != IsAccessibilityCategory)
  {
    self->_usesAccessibilityContentSizeCategory = IsAccessibilityCategory;

    [(TabIconAndTitleView *)self setNeedsLayout];
  }
}

- (double)_titleInsets
{
  if (!self)
  {
    return 0.0;
  }

  v2 = MEMORY[0x277D75060];
  image = [*(self + 408) image];

  if (image)
  {
    OUTLINED_FUNCTION_2_4();
    [(TabIconAndTitleView *)self _tabIconSize];
  }

  v4 = *v2;
  if (*(self + 440) == 1)
  {
    [*(self + 432) intrinsicContentSize];
  }

  return v4;
}

- (double)_tabIconSize
{
  if (!self)
  {
    return 0.0;
  }

  if (*(self + 424) == 1)
  {
    font = [*(self + 416) font];
    [font capHeight];
    v3 = v2;
  }

  else
  {
    objc_opt_self();
    return 16.0;
  }

  return v3;
}

- (id)icon
{
  if (self)
  {
    self = [self[51] image];
    v1 = vars8;
  }

  return self;
}

@end