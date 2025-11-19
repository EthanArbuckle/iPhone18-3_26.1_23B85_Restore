@interface SUUIProductPageCopyrightView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setColorScheme:(id)a3;
- (void)setCopyrightString:(id)a3;
@end

@implementation SUUIProductPageCopyrightView

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_colorScheme, a3);
    copyrightLabel = self->_copyrightLabel;
    v7 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v7)
    {
      v8 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
      v9 = SUUIColorWithAlpha(v8, 0.3);
      [(UILabel *)copyrightLabel setTextColor:v9];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
      [(UILabel *)copyrightLabel setTextColor:v8];
    }

    v5 = v10;
  }
}

- (void)setCopyrightString:(id)a3
{
  v17 = a3;
  v4 = [(UILabel *)self->_copyrightLabel text];
  v5 = [v4 isEqualToString:v17];

  if ((v5 & 1) == 0)
  {
    copyrightLabel = self->_copyrightLabel;
    v7 = v17;
    if (v17)
    {
      if (!copyrightLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_copyrightLabel;
        self->_copyrightLabel = v8;

        v10 = self->_copyrightLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_copyrightLabel setNumberOfLines:0];
        v12 = self->_copyrightLabel;
        v13 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v13)
        {
          v14 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
          v15 = SUUIColorWithAlpha(v14, 0.3);
          [(UILabel *)v12 setTextColor:v15];
        }

        else
        {
          v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
          [(UILabel *)v12 setTextColor:v14];
        }

        [(SUUIProductPageCopyrightView *)self addSubview:self->_copyrightLabel];
        copyrightLabel = self->_copyrightLabel;
        v7 = v17;
      }

      [(UILabel *)copyrightLabel setText:v7];
    }

    else
    {
      [(UILabel *)copyrightLabel removeFromSuperview];
      v16 = self->_copyrightLabel;
      self->_copyrightLabel = 0;
    }
  }
}

- (void)layoutSubviews
{
  [(SUUIProductPageCopyrightView *)self bounds];
  copyrightLabel = self->_copyrightLabel;
  if (copyrightLabel)
  {
    v6 = v3;
    v7 = v4;
    [(UILabel *)copyrightLabel frame];
    v8 = v6 + -30.0;
    [(UILabel *)self->_copyrightLabel sizeThatFits:v8, v7];
    v10 = v9;
    v11 = (v7 - v9) * 0.5;
    v12 = self->_copyrightLabel;
    v13 = roundf(v11);

    [(UILabel *)v12 setFrame:15.0, v13, v8, v10];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UILabel *)self->_copyrightLabel sizeThatFits:a3.width, a3.height];
  v5 = v4 + 32.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end