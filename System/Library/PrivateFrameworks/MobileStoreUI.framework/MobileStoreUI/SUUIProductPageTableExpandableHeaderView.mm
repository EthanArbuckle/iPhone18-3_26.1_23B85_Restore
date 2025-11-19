@interface SUUIProductPageTableExpandableHeaderView
- (CGSize)sizeThatFits:(CGSize)result;
- (void)layoutSubviews;
- (void)setActionString:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBottomBorderColor:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTopBorderColor:(id)a3;
@end

@implementation SUUIProductPageTableExpandableHeaderView

- (void)setActionString:(id)a3
{
  v17 = a3;
  v4 = [(SUUIProductPageTableExpandableHeaderView *)self actionString];
  if (v4 != v17 && ([v4 isEqualToString:v17] & 1) == 0)
  {
    v5 = [v17 length];
    actionLabel = self->_actionLabel;
    if (v5)
    {
      if (!actionLabel)
      {
        v7 = objc_alloc_init(MEMORY[0x277D756B8]);
        v8 = self->_actionLabel;
        self->_actionLabel = v7;

        v9 = self->_actionLabel;
        v10 = [(SUUIProductPageTableExpandableHeaderView *)self backgroundColor];
        [(UILabel *)v9 setBackgroundColor:v10];

        v11 = self->_actionLabel;
        v12 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v11 setFont:v12];

        v13 = self->_actionLabel;
        v14 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v14)
        {
          [(UILabel *)v13 setTextColor:v14];
        }

        else
        {
          v16 = [(SUUIProductPageTableExpandableHeaderView *)self tintColor];
          [(UILabel *)v13 setTextColor:v16];
        }

        [(SUUIProductPageTableExpandableHeaderView *)self addSubview:self->_actionLabel];
        actionLabel = self->_actionLabel;
      }

      [(UILabel *)actionLabel setText:v17];
      [(UILabel *)self->_actionLabel sizeToFit];
    }

    else
    {
      [(UILabel *)actionLabel removeFromSuperview];
      v15 = self->_actionLabel;
      self->_actionLabel = 0;
    }

    [(SUUIProductPageTableExpandableHeaderView *)self setNeedsLayout];
  }
}

- (void)setBottomBorderColor:(id)a3
{
  v4 = a3;
  bottomBorderView = self->_bottomBorderView;
  v9 = v4;
  if (v4)
  {
    if (!bottomBorderView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75D18]);
      v7 = self->_bottomBorderView;
      self->_bottomBorderView = v6;

      [(SUUIProductPageTableExpandableHeaderView *)self addSubview:self->_bottomBorderView];
      v4 = v9;
      bottomBorderView = self->_bottomBorderView;
    }

    [(UIView *)bottomBorderView setBackgroundColor:v4];
  }

  else
  {
    [(UIView *)bottomBorderView removeFromSuperview];
    v8 = self->_bottomBorderView;
    self->_bottomBorderView = 0;
  }
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_colorScheme, a3);
    actionLabel = self->_actionLabel;
    v7 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v7)
    {
      [(UILabel *)actionLabel setTextColor:v7];
    }

    else
    {
      v8 = [(SUUIProductPageTableExpandableHeaderView *)self tintColor];
      [(UILabel *)actionLabel setTextColor:v8];
    }

    titleLabel = self->_titleLabel;
    v10 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v10)
    {
      [(UILabel *)titleLabel setTextColor:v10];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:v11];
    }

    v5 = v12;
  }
}

- (void)setTitle:(id)a3
{
  v17 = a3;
  v4 = [(SUUIProductPageTableExpandableHeaderView *)self title];
  if (v4 != v17 && ([v4 isEqualToString:v17] & 1) == 0)
  {
    v5 = [v17 length];
    titleLabel = self->_titleLabel;
    if (v5)
    {
      if (!titleLabel)
      {
        v7 = objc_alloc_init(MEMORY[0x277D756B8]);
        v8 = self->_titleLabel;
        self->_titleLabel = v7;

        v9 = self->_titleLabel;
        v10 = [(SUUIProductPageTableExpandableHeaderView *)self backgroundColor];
        [(UILabel *)v9 setBackgroundColor:v10];

        v11 = self->_titleLabel;
        v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v11 setFont:v12];

        v13 = self->_titleLabel;
        v14 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v14)
        {
          [(UILabel *)v13 setTextColor:v14];
        }

        else
        {
          v16 = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v13 setTextColor:v16];
        }

        [(SUUIProductPageTableExpandableHeaderView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:v17];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v15 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUIProductPageTableExpandableHeaderView *)self setNeedsLayout];
  }
}

- (void)setTopBorderColor:(id)a3
{
  v4 = a3;
  topBorderView = self->_topBorderView;
  v9 = v4;
  if (v4)
  {
    if (!topBorderView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75D18]);
      v7 = self->_topBorderView;
      self->_topBorderView = v6;

      [(SUUIProductPageTableExpandableHeaderView *)self addSubview:self->_topBorderView];
      v4 = v9;
      topBorderView = self->_topBorderView;
    }

    [(UIView *)topBorderView setBackgroundColor:v4];
  }

  else
  {
    [(UIView *)topBorderView removeFromSuperview];
    v8 = self->_topBorderView;
    self->_topBorderView = 0;
  }
}

- (void)layoutSubviews
{
  [(SUUIProductPageTableExpandableHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  bottomBorderView = self->_bottomBorderView;
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v10 = v6 - 1.0 / v9;
  v11 = v4 + -15.0;
  v12 = [MEMORY[0x277D759A0] mainScreen];
  [v12 scale];
  [(UIView *)bottomBorderView setFrame:15.0, v10, v11, 1.0 / v13];

  [(UIView *)self->_topBorderView setFrame:15.0, 0.0, v11, 1.0];
  actionLabel = self->_actionLabel;
  if (actionLabel)
  {
    [(UILabel *)actionLabel frame];
    v16 = v15;
    v18 = v17;
    v19 = v11 - v15;
    v20 = (v6 - v17) * 0.5;
    v21 = (floorf(v20) + 1.0);
    [(UILabel *)self->_actionLabel setFrame:v19, v21];
    v28.origin.x = v19;
    v28.origin.y = v21;
    v28.size.width = v16;
    v28.size.height = v18;
    v11 = CGRectGetMinX(v28) + -10.0;
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v24 = (v6 - v23) * 0.5;
    v25 = floorf(v24);
    v26 = self->_titleLabel;

    [(UILabel *)v26 setFrame:15.0, v25, v11 + -15.0];
  }
}

- (void)setBackgroundColor:(id)a3
{
  actionLabel = self->_actionLabel;
  v5 = a3;
  [(UILabel *)actionLabel setBackgroundColor:v5];
  [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIProductPageTableExpandableHeaderView;
  [(SUUIProductPageTableExpandableHeaderView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 44.0;
  result.height = v3;
  return result;
}

@end