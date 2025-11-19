@interface TabIconAndTitleView
- (double)_tabIconSize;
- (double)_titleInsets;
- (id)icon;
- (void)_preferredContentSizeCategoryDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)layoutSubviews;
@end

@implementation TabIconAndTitleView

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = TabIconAndTitleView;
  [(TabIconAndTitleView *)&v32 layoutSubviews];
  v3 = [(TabIconAndTitleView *)self _titleInsets];
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
  v13 = [(TabIconAndTitleView *)&self->super.super.super.isa icon];

  if (self->_alignment == 2)
  {
    [(TabIconAndTitleView *)self directionalLayoutMargins];
  }

  v14 = [(TabIconAndTitleView *)self _sf_usesLeftToRightLayout];
  _SFRoundRectToPixels();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(UILabel *)self->_titleLabel setFrame:?];
  if (v13)
  {
    if (self->_usesAccessibilityContentSizeCategory)
    {
      [(UILabel *)self->_titleLabel _firstLineBaseline];
      if (v14)
      {
        goto LABEL_9;
      }
    }

    else if (v14)
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
    if (v14)
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

- (void)_preferredContentSizeCategoryDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [(TabIconAndTitleView *)self traitCollection:a3];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  if (self->_usesAccessibilityContentSizeCategory != IsAccessibilityCategory)
  {
    self->_usesAccessibilityContentSizeCategory = IsAccessibilityCategory;

    [(TabIconAndTitleView *)self setNeedsLayout];
  }
}

- (double)_titleInsets
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = MEMORY[0x277D75060];
  v3 = [*(a1 + 408) image];

  if (v3)
  {
    OUTLINED_FUNCTION_2_4();
    [(TabIconAndTitleView *)a1 _tabIconSize];
  }

  v4 = *v2;
  if (*(a1 + 440) == 1)
  {
    [*(a1 + 432) intrinsicContentSize];
  }

  return v4;
}

- (double)_tabIconSize
{
  if (!a1)
  {
    return 0.0;
  }

  if (*(a1 + 424) == 1)
  {
    v1 = [*(a1 + 416) font];
    [v1 capHeight];
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
  if (a1)
  {
    a1 = [a1[51] image];
    v1 = vars8;
  }

  return a1;
}

@end