@interface SUUIProductPageFeatureView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setIcon:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SUUIProductPageFeatureView

- (void)setIcon:(id)a3
{
  v4 = a3;
  iconView = self->_iconView;
  v11 = v4;
  if (v4)
  {
    if (!iconView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D755E8]);
      v7 = self->_iconView;
      self->_iconView = v6;

      v8 = self->_iconView;
      v9 = [(SUUIProductPageFeatureView *)self backgroundColor];
      [(UIImageView *)v8 setBackgroundColor:v9];

      [(SUUIProductPageFeatureView *)self addSubview:self->_iconView];
      v4 = v11;
      iconView = self->_iconView;
    }

    [(UIImageView *)iconView setImage:v4];
    [(UIImageView *)self->_iconView sizeToFit];
  }

  else
  {
    [(UIImageView *)iconView removeFromSuperview];
    v10 = self->_iconView;
    self->_iconView = 0;
  }

  [(SUUIProductPageFeatureView *)self setNeedsLayout];
}

- (void)setSubtitle:(id)a3
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUUIProductPageFeatureView *)self subtitle];
  v6 = v5;
  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    v7 = [v4 length];
    subtitleLabel = self->_subtitleLabel;
    if (v7)
    {
      if (!subtitleLabel)
      {
        v9 = objc_alloc_init(MEMORY[0x277D756B8]);
        v10 = self->_subtitleLabel;
        self->_subtitleLabel = v9;

        v11 = self->_subtitleLabel;
        v12 = [(SUUIProductPageFeatureView *)self backgroundColor];
        [(UILabel *)v11 setBackgroundColor:v12];

        v13 = self->_subtitleLabel;
        v14 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v13 setFont:v14];

        [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
        v15 = self->_subtitleLabel;
        v16 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
        if (v16)
        {
          [(UILabel *)v15 setTextColor:v16];
        }

        else
        {
          v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
          [(UILabel *)v15 setTextColor:v18];
        }

        [(SUUIProductPageFeatureView *)self addSubview:self->_subtitleLabel];
      }

      v19 = objc_alloc_init(MEMORY[0x277D74240]);
      [v19 setMaximumLineHeight:16.0];
      [v19 setMinimumLineHeight:16.0];
      v20 = *MEMORY[0x277D74118];
      v28[0] = v19;
      v21 = *MEMORY[0x277D740C0];
      v27[0] = v20;
      v27[1] = v21;
      v22 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
      v23 = v22;
      if (!v22)
      {
        v23 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      }

      v28[1] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
      if (!v22)
      {
      }

      v25 = self->_subtitleLabel;
      v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v4 attributes:v24];
      [(UILabel *)v25 setAttributedText:v26];
    }

    else
    {
      [(UILabel *)subtitleLabel removeFromSuperview];
      v17 = self->_subtitleLabel;
      self->_subtitleLabel = 0;
    }

    [(SUUIProductPageFeatureView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v18 = a3;
  v4 = [(SUUIProductPageFeatureView *)self title];
  if (v4 != v18 && ([v4 isEqualToString:v18] & 1) == 0)
  {
    v5 = [v18 length];
    titleLabel = self->_titleLabel;
    if (v5)
    {
      if (!titleLabel)
      {
        v7 = objc_alloc_init(MEMORY[0x277D756B8]);
        v8 = self->_titleLabel;
        self->_titleLabel = v7;

        v9 = self->_titleLabel;
        v10 = [(SUUIProductPageFeatureView *)self backgroundColor];
        [(UILabel *)v9 setBackgroundColor:v10];

        v11 = self->_titleLabel;
        v12 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v11 setFont:v12];

        v13 = self->_titleLabel;
        v14 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v14)
        {
          v15 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
          v16 = SUUIColorWithAlpha(v15, 0.7);
          [(UILabel *)v13 setTextColor:v16];
        }

        else
        {
          v15 = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v13 setTextColor:v15];
        }

        [(SUUIProductPageFeatureView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:v18];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v17 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUIProductPageFeatureView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUIProductPageFeatureView *)self bounds];
  v4 = v3;
  iconView = self->_iconView;
  v6 = 0.0;
  v7 = 0.0;
  if (iconView)
  {
    [(UIImageView *)iconView frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UIImageView *)self->_iconView setFrame:?];
    v22.origin.y = 2.0;
    v22.origin.x = v9;
    v22.size.width = v11;
    v22.size.height = v13;
    v7 = CGRectGetMaxX(v22) + 10.0;
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v16 = v15;
    [(UILabel *)self->_titleLabel setFrame:v7, 0.0, v4 - v7];
    v23.origin.y = 0.0;
    v23.origin.x = v7;
    v23.size.width = v4 - v7;
    v23.size.height = v16;
    v6 = CGRectGetMaxY(v23) + -2.0 + 5.0 + -2.0;
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    [(UILabel *)subtitleLabel frame];
    [(UILabel *)self->_subtitleLabel sizeThatFits:v4 - v7, 1.79769313e308];
    v20 = self->_subtitleLabel;

    [(UILabel *)v20 setFrame:v7, v6, v18, v19];
  }
}

- (void)setBackgroundColor:(id)a3
{
  iconView = self->_iconView;
  v5 = a3;
  [(UIImageView *)iconView setBackgroundColor:v5];
  [(UILabel *)self->_subtitleLabel setBackgroundColor:v5];
  [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIProductPageFeatureView;
  [(SUUIProductPageFeatureView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  iconView = self->_iconView;
  v6 = a3.width;
  if (iconView)
  {
    [(UIImageView *)iconView frame];
    v6 = width - (v7 + 10.0);
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v10 = v9 + -2.0 + 5.0;
  }

  else
  {
    v10 = 5.0;
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    [(UILabel *)subtitleLabel sizeThatFits:v6, 1.79769313e308];
    v13 = v12 + -2.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v10 + v13;
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

@end