@interface SUUIProductPageCopyrightView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setColorScheme:(id)scheme;
- (void)setCopyrightString:(id)string;
@end

@implementation SUUIProductPageCopyrightView

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v10 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    copyrightLabel = self->_copyrightLabel;
    secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      secondaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
      v9 = SUUIColorWithAlpha(secondaryTextColor2, 0.3);
      [(UILabel *)copyrightLabel setTextColor:v9];
    }

    else
    {
      secondaryTextColor2 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
      [(UILabel *)copyrightLabel setTextColor:secondaryTextColor2];
    }

    schemeCopy = v10;
  }
}

- (void)setCopyrightString:(id)string
{
  stringCopy = string;
  text = [(UILabel *)self->_copyrightLabel text];
  v5 = [text isEqualToString:stringCopy];

  if ((v5 & 1) == 0)
  {
    copyrightLabel = self->_copyrightLabel;
    v7 = stringCopy;
    if (stringCopy)
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
        secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          secondaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
          v15 = SUUIColorWithAlpha(secondaryTextColor2, 0.3);
          [(UILabel *)v12 setTextColor:v15];
        }

        else
        {
          secondaryTextColor2 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
          [(UILabel *)v12 setTextColor:secondaryTextColor2];
        }

        [(SUUIProductPageCopyrightView *)self addSubview:self->_copyrightLabel];
        copyrightLabel = self->_copyrightLabel;
        v7 = stringCopy;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UILabel *)self->_copyrightLabel sizeThatFits:fits.width, fits.height];
  v5 = v4 + 32.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end