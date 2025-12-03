@interface SUUILinkButton
+ (SUUILinkButton)buttonWithArrowStyle:(int64_t)style;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUILinkButton)initWithArrowStyle:(int64_t)style;
- (double)_linkImagePaddingLeft;
- (void)_reloadIcons;
- (void)layoutSubviews;
- (void)setTitleColor:(id)color forState:(unint64_t)state;
- (void)sizeToFit;
- (void)tintColorDidChange;
@end

@implementation SUUILinkButton

+ (SUUILinkButton)buttonWithArrowStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SUUILinkButton;
  v4 = objc_msgSendSuper2(&v8, sel_buttonWithType_, 1);
  v4[93] = style;
  titleLabel = [v4 titleLabel];
  [titleLabel setNumberOfLines:1];

  titleLabel2 = [v4 titleLabel];
  [titleLabel2 setLineBreakMode:4];

  [v4 _reloadIcons];

  return v4;
}

- (SUUILinkButton)initWithArrowStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = SUUILinkButton;
  v4 = [(SUUILinkButton *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_arrowStyle = style;
    titleLabel = [(SUUILinkButton *)v4 titleLabel];
    [titleLabel setNumberOfLines:1];

    titleLabel2 = [(SUUILinkButton *)v5 titleLabel];
    [titleLabel2 setLineBreakMode:4];

    [(SUUILinkButton *)v5 _reloadIcons];
  }

  return v5;
}

- (void)setTitleColor:(id)color forState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = SUUILinkButton;
  [(SUUILinkButton *)&v5 setTitleColor:color forState:state];
  [(SUUILinkButton *)self _reloadIcons];
}

- (void)tintColorDidChange
{
  [(SUUILinkButton *)self _reloadIcons];
  v3.receiver = self;
  v3.super_class = SUUILinkButton;
  [(SUUILinkButton *)&v3 tintColorDidChange];
}

- (void)sizeToFit
{
  [(SUUILinkButton *)self sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
  [(SUUILinkButton *)self frame];

  [(SUUILinkButton *)self setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  imageView = [(SUUILinkButton *)self imageView];
  v7 = [(SUUILinkButton *)self imageForState:0];
  [imageView setImage:v7];

  titleLabel = [(SUUILinkButton *)self titleLabel];
  v9 = [(SUUILinkButton *)self titleForState:0];
  [titleLabel setText:v9];

  v10 = width == *MEMORY[0x277CBF3A8];
  v11 = height == *(MEMORY[0x277CBF3A8] + 8);
  if (v10 && v11)
  {
    v12 = *(MEMORY[0x277CBF390] + 24);
  }

  else
  {
    v12 = height;
  }

  if (v10 && v11)
  {
    v13 = *(MEMORY[0x277CBF390] + 16);
  }

  else
  {
    v13 = width;
  }

  [imageView sizeThatFits:{v13, v12}];
  v15 = v14;
  v17 = v16;
  [(SUUILinkButton *)self _linkImagePaddingLeft];
  v19 = v13 - (v15 + v18);
  [titleLabel sizeThatFits:{v19, v12}];
  v22 = v21;
  if (v20 >= v19)
  {
    v20 = v19;
  }

  v23 = v15 + v20;
  [(SUUILinkButton *)self _linkImagePaddingLeft];
  v25 = ceil(v24 + v23);
  if (width >= v25)
  {
    width = v25;
  }

  if (v22 >= v17)
  {
    v26 = v22;
  }

  else
  {
    v26 = v17;
  }

  v27 = ceil(v26);
  if (height >= v27)
  {
    height = v27;
  }

  v28 = width;
  v29 = height;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)layoutSubviews
{
  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  v42.receiver = self;
  v42.super_class = SUUILinkButton;
  [(SUUILinkButton *)&v42 layoutSubviews];
  [(SUUILinkButton *)self bounds];
  v4 = v3;
  v6 = v5;
  imageView = [(SUUILinkButton *)self imageView];
  titleLabel = [(SUUILinkButton *)self titleLabel];
  v9 = titleLabel;
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  if (imageView && titleLabel)
  {
    [(SUUILinkButton *)self _linkImagePaddingLeft];
    v13 = v4 - v12;
  }

  else
  {
    v13 = v4;
    v14 = *(MEMORY[0x277CBF3A8] + 8);
    v15 = *MEMORY[0x277CBF3A8];
    v16 = v4;
    if (!imageView)
    {
      goto LABEL_6;
    }
  }

  [imageView sizeThatFits:{v13, v6}];
  v15 = v17;
  v14 = v18;
  v16 = v13 - v17;
LABEL_6:
  v41 = v4;
  if (v9)
  {
    [v9 sizeThatFits:{v16, v6}];
    v11 = v20;
    if (v19 >= v16)
    {
      v10 = v16;
    }

    else
    {
      v10 = v19;
    }
  }

  [(SUUILinkButton *)self _linkImagePaddingLeft];
  v22 = v15 + v10 + v21;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  if (imageView)
  {
    [imageView frame];
    v25 = (v40 - v14) * 0.5;
    v26 = v11;
    v27 = roundf(v25);
    v28 = (v41 - v22) * 0.5;
    v29 = roundf(v28);
    if (userInterfaceLayoutDirection)
    {
      v30 = v29;
    }

    else
    {
      v30 = v22 + v29 - v15;
    }

    titleLabel2 = [(SUUILinkButton *)self titleLabel];
    font = [titleLabel2 font];
    [font lineHeight];
    v34 = v33;

    if (v34 <= 14.0)
    {
      v35 = v27 + 1.0;
    }

    else
    {
      v35 = v27;
    }

    v11 = v26;
    [imageView setFrame:{v30, v35, v15, v14}];
  }

  if (v9)
  {
    [v9 frame];
    v36 = (v40 - v11) * 0.5;
    v37 = roundf(v36);
    v38 = (v41 - v22) * 0.5;
    v39 = roundf(v38);
    if (userInterfaceLayoutDirection)
    {
      v39 = v22 + v39 - v10;
    }

    [v9 setFrame:{v39, v37, v10, v11}];
  }

  [MEMORY[0x277D75D18] setAnimationsEnabled:1];
}

- (double)_linkImagePaddingLeft
{
  arrowStyle = self->_arrowStyle;
  result = 4.0;
  if (arrowStyle <= 3)
  {
    if (arrowStyle >= 2)
    {
      if (arrowStyle == 3)
      {
        return 3.0;
      }

      return result;
    }

    goto LABEL_7;
  }

  if (arrowStyle == 4)
  {
    return 7.0;
  }

  if (arrowStyle == 5)
  {
LABEL_7:
    v10 = [(SUUILinkButton *)self titleLabel:4.0];
    font = [v10 font];
    [font lineHeight];
    v13 = v12;

    result = 3.0;
    if (v13 < 13.0)
    {
      return 2.0;
    }
  }

  return result;
}

- (void)_reloadIcons
{
  arrowStyle = self->_arrowStyle;
  if (arrowStyle > 5)
  {
    v12 = 0;
  }

  else
  {
    v4 = off_2798FAB80[arrowStyle];
    v5 = MEMORY[0x277D755B8];
    v6 = SUUIBundle();
    v12 = [v5 imageNamed:v4 inBundle:v6];
  }

  v7 = [(SUUILinkButton *)self titleColorForState:0];
  if (v7)
  {
    tintColor = v7;
LABEL_7:
    v9 = [v12 _flatImageWithColor:tintColor];
    goto LABEL_8;
  }

  tintColor = [(SUUILinkButton *)self tintColor];
  if (tintColor)
  {
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:
  [(SUUILinkButton *)self setImage:v9 forState:0];
  v10 = [(SUUILinkButton *)self titleColorForState:1];
  if (v10)
  {
    v11 = [v12 _flatImageWithColor:v10];
  }

  else
  {
    v11 = 0;
  }

  [(SUUILinkButton *)self setImage:v11 forState:1];
}

@end