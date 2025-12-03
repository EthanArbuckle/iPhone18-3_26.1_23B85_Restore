@interface SUUIProductPageTableExpandableHeaderView
- (CGSize)sizeThatFits:(CGSize)result;
- (void)layoutSubviews;
- (void)setActionString:(id)string;
- (void)setBackgroundColor:(id)color;
- (void)setBottomBorderColor:(id)color;
- (void)setColorScheme:(id)scheme;
- (void)setTitle:(id)title;
- (void)setTopBorderColor:(id)color;
@end

@implementation SUUIProductPageTableExpandableHeaderView

- (void)setActionString:(id)string
{
  stringCopy = string;
  actionString = [(SUUIProductPageTableExpandableHeaderView *)self actionString];
  if (actionString != stringCopy && ([actionString isEqualToString:stringCopy] & 1) == 0)
  {
    v5 = [stringCopy length];
    actionLabel = self->_actionLabel;
    if (v5)
    {
      if (!actionLabel)
      {
        v7 = objc_alloc_init(MEMORY[0x277D756B8]);
        v8 = self->_actionLabel;
        self->_actionLabel = v7;

        v9 = self->_actionLabel;
        backgroundColor = [(SUUIProductPageTableExpandableHeaderView *)self backgroundColor];
        [(UILabel *)v9 setBackgroundColor:backgroundColor];

        v11 = self->_actionLabel;
        v12 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v11 setFont:v12];

        v13 = self->_actionLabel;
        secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v13 setTextColor:secondaryTextColor];
        }

        else
        {
          tintColor = [(SUUIProductPageTableExpandableHeaderView *)self tintColor];
          [(UILabel *)v13 setTextColor:tintColor];
        }

        [(SUUIProductPageTableExpandableHeaderView *)self addSubview:self->_actionLabel];
        actionLabel = self->_actionLabel;
      }

      [(UILabel *)actionLabel setText:stringCopy];
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

- (void)setBottomBorderColor:(id)color
{
  colorCopy = color;
  bottomBorderView = self->_bottomBorderView;
  v9 = colorCopy;
  if (colorCopy)
  {
    if (!bottomBorderView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75D18]);
      v7 = self->_bottomBorderView;
      self->_bottomBorderView = v6;

      [(SUUIProductPageTableExpandableHeaderView *)self addSubview:self->_bottomBorderView];
      colorCopy = v9;
      bottomBorderView = self->_bottomBorderView;
    }

    [(UIView *)bottomBorderView setBackgroundColor:colorCopy];
  }

  else
  {
    [(UIView *)bottomBorderView removeFromSuperview];
    v8 = self->_bottomBorderView;
    self->_bottomBorderView = 0;
  }
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v12 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    actionLabel = self->_actionLabel;
    secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)actionLabel setTextColor:secondaryTextColor];
    }

    else
    {
      tintColor = [(SUUIProductPageTableExpandableHeaderView *)self tintColor];
      [(UILabel *)actionLabel setTextColor:tintColor];
    }

    titleLabel = self->_titleLabel;
    secondaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UILabel *)titleLabel setTextColor:secondaryTextColor2];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:blackColor];
    }

    schemeCopy = v12;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SUUIProductPageTableExpandableHeaderView *)self title];
  if (title != titleCopy && ([title isEqualToString:titleCopy] & 1) == 0)
  {
    v5 = [titleCopy length];
    titleLabel = self->_titleLabel;
    if (v5)
    {
      if (!titleLabel)
      {
        v7 = objc_alloc_init(MEMORY[0x277D756B8]);
        v8 = self->_titleLabel;
        self->_titleLabel = v7;

        v9 = self->_titleLabel;
        backgroundColor = [(SUUIProductPageTableExpandableHeaderView *)self backgroundColor];
        [(UILabel *)v9 setBackgroundColor:backgroundColor];

        v11 = self->_titleLabel;
        v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v11 setFont:v12];

        v13 = self->_titleLabel;
        secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v13 setTextColor:secondaryTextColor];
        }

        else
        {
          blackColor = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v13 setTextColor:blackColor];
        }

        [(SUUIProductPageTableExpandableHeaderView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:titleCopy];
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

- (void)setTopBorderColor:(id)color
{
  colorCopy = color;
  topBorderView = self->_topBorderView;
  v9 = colorCopy;
  if (colorCopy)
  {
    if (!topBorderView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75D18]);
      v7 = self->_topBorderView;
      self->_topBorderView = v6;

      [(SUUIProductPageTableExpandableHeaderView *)self addSubview:self->_topBorderView];
      colorCopy = v9;
      topBorderView = self->_topBorderView;
    }

    [(UIView *)topBorderView setBackgroundColor:colorCopy];
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v10 = v6 - 1.0 / v9;
  v11 = v4 + -15.0;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
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

- (void)setBackgroundColor:(id)color
{
  actionLabel = self->_actionLabel;
  colorCopy = color;
  [(UILabel *)actionLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIProductPageTableExpandableHeaderView;
  [(SUUIProductPageTableExpandableHeaderView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 44.0;
  result.height = v3;
  return result;
}

@end