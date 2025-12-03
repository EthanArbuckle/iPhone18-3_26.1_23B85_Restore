@interface SUUISwooshView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUISwooshView)initWithFrame:(CGRect)frame;
- (UIControl)chevronTitleControl;
- (UIControl)seeAllControl;
- (UIEdgeInsets)collectionViewInsets;
- (UIEdgeInsets)contentInsets;
- (id)_seeAllArrowImage;
- (id)seeAllColorForControlState:(unint64_t)state;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setCollectionView:(id)view;
- (void)setCollectionViewInsets:(UIEdgeInsets)insets;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setSeeAllColor:(id)color forControlState:(unint64_t)state;
- (void)setSeeAllTitle:(id)title;
- (void)setShowsChevronForTitle:(BOOL)title;
- (void)setTitle:(id)title;
- (void)setTitleColor:(id)color;
@end

@implementation SUUISwooshView

- (SUUISwooshView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SUUISwooshView;
  v3 = [(SUUISwooshView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = *(v3 + 51);
    *(v3 + 51) = v4;

    v6 = *(v3 + 51);
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [v6 setBackgroundColor:v7];

    [v3 addSubview:*(v3 + 51)];
    v8 = *(MEMORY[0x277D768C8] + 16);
    *(v3 + 424) = *MEMORY[0x277D768C8];
    *(v3 + 440) = v8;
    *(v3 + 31) = xmmword_259FCABC0;
    *(v3 + 32) = xmmword_259FCABD0;
    blackColor = [MEMORY[0x277D75348] blackColor];
    v10 = *(v3 + 60);
    *(v3 + 60) = blackColor;
  }

  return v3;
}

- (UIControl)chevronTitleControl
{
  titleButton = self->_titleButton;
  if (!titleButton)
  {
    v4 = [[SUUILinkButton alloc] initWithArrowStyle:4];
    v5 = self->_titleButton;
    self->_titleButton = v4;

    v6 = self->_titleButton;
    backgroundColor = [(SUUISwooshView *)self backgroundColor];
    [(SUUILinkButton *)v6 setBackgroundColor:backgroundColor];

    [(SUUILinkButton *)self->_titleButton setTitleColor:self->_titleColor forState:0];
    titleLabel = [(SUUILinkButton *)self->_titleButton titleLabel];
    v9 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [titleLabel setFont:v9];

    [(SUUILinkButton *)self->_titleButton setHidden:1];
    titleButton = self->_titleButton;
  }

  return titleButton;
}

- (id)seeAllColorForControlState:(unint64_t)state
{
  seeAllControl = [(SUUISwooshView *)self seeAllControl];
  v5 = [seeAllControl titleColorForState:state];

  return v5;
}

- (UIControl)seeAllControl
{
  seeAllButton = self->_seeAllButton;
  if (!seeAllButton)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75220]);
    v5 = self->_seeAllButton;
    self->_seeAllButton = v4;

    v6 = self->_seeAllButton;
    backgroundColor = [(SUUISwooshView *)self backgroundColor];
    [(UIButton *)v6 setBackgroundColor:backgroundColor];

    v8 = self->_seeAllButton;
    _seeAllArrowImage = [(SUUISwooshView *)self _seeAllArrowImage];
    [_seeAllArrowImage size];
    [(UIButton *)v8 setTitleEdgeInsets:0.0, -(v10 + 5.0), 0.0, 0.0];

    titleLabel = [(UIButton *)self->_seeAllButton titleLabel];
    v12 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [titleLabel setFont:v12];

    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
    [(SUUISwooshView *)self setSeeAllColor:v13 forControlState:0];

    blackColor = [MEMORY[0x277D75348] blackColor];
    [(SUUISwooshView *)self setSeeAllColor:blackColor forControlState:1];

    seeAllButton = self->_seeAllButton;
  }

  return seeAllButton;
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  collectionView = self->_collectionView;
  v7 = viewCopy;
  if (collectionView != viewCopy)
  {
    [(UICollectionView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, view);
    if (self->_collectionView)
    {
      [(SUUISwooshView *)self addSubview:?];
    }
  }
}

- (void)setCollectionViewInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_collectionViewInsets.top, v3), vceqq_f64(*&self->_collectionViewInsets.bottom, v4)))) & 1) == 0)
  {
    self->_collectionViewInsets = insets;
    [(SUUISwooshView *)self setNeedsLayout];
  }
}

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  backgroundColor = [schemeCopy backgroundColor];
  v5 = backgroundColor;
  if (backgroundColor)
  {
    whiteColor = backgroundColor;
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  v7 = whiteColor;

  [(SUUISwooshView *)self setBackgroundColor:v7];
  primaryTextColor = [schemeCopy primaryTextColor];
  if (primaryTextColor)
  {
    [(SUUISwooshView *)self setSeeAllColor:primaryTextColor forControlState:0];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
    [(SUUISwooshView *)self setSeeAllColor:v9 forControlState:0];
  }

  highlightedTextColor = [schemeCopy highlightedTextColor];
  if (highlightedTextColor)
  {
    [(SUUISwooshView *)self setSeeAllColor:highlightedTextColor forControlState:1];
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(SUUISwooshView *)self setSeeAllColor:blackColor forControlState:1];
  }

  secondaryTextColor = [schemeCopy secondaryTextColor];
  if (!secondaryTextColor)
  {
    secondaryTextColor = [schemeCopy primaryTextColor];
    if (!secondaryTextColor)
    {
      secondaryTextColor = [MEMORY[0x277D75348] blackColor];
    }
  }

  v13 = secondaryTextColor;
  [(SUUISwooshView *)self setTitleColor:secondaryTextColor];

  [(UICollectionView *)self->_collectionView setBackgroundColor:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
    [collectionViewLayout setBackgroundColor:v7];
    [(UICollectionView *)self->_collectionView reloadData];
  }
}

- (void)setSeeAllColor:(id)color forControlState:(unint64_t)state
{
  colorCopy = color;
  seeAllControl = [(SUUISwooshView *)self seeAllControl];
  _seeAllArrowImage = [(SUUISwooshView *)self _seeAllArrowImage];
  v8 = SUUITintedImage(_seeAllArrowImage, 0, colorCopy);
  [seeAllControl setImage:v8 forState:state];

  [seeAllControl setTitleColor:colorCopy forState:state];
}

- (void)setSeeAllTitle:(id)title
{
  titleCopy = title;
  seeAllTitle = [(SUUISwooshView *)self seeAllTitle];
  if (seeAllTitle != titleCopy && ([seeAllTitle isEqualToString:titleCopy] & 1) == 0)
  {
    seeAllControl = [(SUUISwooshView *)self seeAllControl];
    [seeAllControl setTitle:titleCopy forState:0];
    [seeAllControl sizeToFit];
    seeAllButton = self->_seeAllButton;
    if (titleCopy)
    {
      [(SUUISwooshView *)self addSubview:seeAllButton];
    }

    else
    {
      [(UIButton *)seeAllButton removeFromSuperview];
    }

    [(SUUISwooshView *)self setNeedsLayout];
  }
}

- (void)setShowsChevronForTitle:(BOOL)title
{
  if (self->_showsChevronForTitle != title)
  {
    title = [(SUUISwooshView *)self title];
    [(SUUISwooshView *)self setTitle:0];
    self->_showsChevronForTitle = title;
    [(SUUISwooshView *)self setTitle:title];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ([(SUUISwooshView *)self showsChevronForTitle])
  {
    text = [(SUUILinkButton *)self->_titleButton titleForState:0];
    if (text != titleCopy && ([text isEqualToString:titleCopy] & 1) == 0)
    {
      if (titleCopy)
      {
        chevronTitleControl = [(SUUISwooshView *)self chevronTitleControl];
        [chevronTitleControl setHidden:0];
        [chevronTitleControl setTitle:titleCopy forState:0];
        [(SUUISwooshView *)self addSubview:chevronTitleControl];
      }

      else
      {
        [(SUUILinkButton *)self->_titleButton setHidden:1];
        [(SUUILinkButton *)self->_titleButton setTitle:0 forState:0];
      }

LABEL_14:
      [(SUUISwooshView *)self setNeedsLayout];
    }
  }

  else
  {
    text = [(UILabel *)self->_titleLabel text];
    if (text != titleCopy && ([text isEqualToString:titleCopy] & 1) == 0)
    {
      titleLabel = self->_titleLabel;
      if (titleCopy)
      {
        if (!titleLabel)
        {
          v7 = objc_alloc_init(MEMORY[0x277D756B8]);
          v8 = self->_titleLabel;
          self->_titleLabel = v7;

          v9 = self->_titleLabel;
          backgroundColor = [(SUUISwooshView *)self backgroundColor];
          [(UILabel *)v9 setBackgroundColor:backgroundColor];

          v11 = self->_titleLabel;
          v12 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
          [(UILabel *)v11 setFont:v12];

          [(UILabel *)self->_titleLabel setTextColor:self->_titleColor];
          [(SUUISwooshView *)self addSubview:self->_titleLabel];
          titleLabel = self->_titleLabel;
        }

        [(UILabel *)titleLabel setText:?];
      }

      else
      {
        [(UILabel *)titleLabel removeFromSuperview];
        v13 = self->_titleLabel;
        self->_titleLabel = 0;
      }

      goto LABEL_14;
    }
  }
}

- (void)setTitleColor:(id)color
{
  if (self->_titleColor != color)
  {
    colorCopy = color;
    v4 = [colorCopy copy];
    titleColor = self->_titleColor;
    self->_titleColor = v4;

    [(SUUILinkButton *)self->_titleButton setTitleColor:self->_titleColor forState:0];
    [(UILabel *)self->_titleLabel setTextColor:colorCopy];
  }
}

- (void)layoutSubviews
{
  [(SUUISwooshView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = v3 - self->_contentInsets.right;
  top = self->_contentInsets.top;
  seeAllButton = self->_seeAllButton;
  v10 = MEMORY[0x277CBF390];
  if (seeAllButton)
  {
    [(UIButton *)seeAllButton frame];
    [(UIButton *)self->_seeAllButton sizeThatFits:*(v10 + 16), *(v10 + 24)];
    v12 = v11;
    v14 = v13 + 5.0;
    v15 = v7 - (v13 + 5.0);
    v16 = self->_seeAllButton;
    [(UIButton *)v16 bounds];
    [(UIButton *)v16 contentRectForBounds:?];
    [(UIButton *)v16 titleRectForContentRect:?];
    [(UIButton *)self->_seeAllButton setImageEdgeInsets:2.0, v17 + 5.0, 0.0, 0.0];
    v36 = v15;
    v40.origin.x = v15;
    v40.origin.y = top;
    v40.size.width = v14;
    v40.size.height = v12;
    v7 = CGRectGetMinX(v40) + -5.0;
    v18 = top;
  }

  else
  {
    v18 = *(MEMORY[0x277CBF3A0] + 8);
    v36 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v19 = self->_titleButton;
  v37 = v19;
  if (v19 && (v20 = [(SUUILinkButton *)v19 isHidden], v21 = v37, !v20) || (v22 = self->_titleLabel, v37, (v21 = v22) != 0))
  {
    v38 = v21;
    [(UILabel *)v21 frame];
    v35 = v14;
    v23 = v6;
    v24 = v4;
    left = self->_contentInsets.left;
    [(UILabel *)v38 sizeThatFits:*(v10 + 16), *(v10 + 24)];
    v28 = v27;
    if (v26 >= v7 - left)
    {
      v29 = v7 - left;
    }

    else
    {
      v29 = v26;
    }

    [(UILabel *)v38 setFrame:left, top, v29, v27];
    v41.origin.x = left;
    v41.origin.y = top;
    v41.size.width = v29;
    v41.size.height = v28;
    v18 = CGRectGetMaxY(v41) - v12 + -2.0;
    v42.origin.x = left;
    v4 = v24;
    v6 = v23;
    v14 = v35;
    v42.origin.y = top;
    v42.size.width = v29;
    v42.size.height = v28;
    top = CGRectGetMaxY(v42) + 10.0;
  }

  else
  {
    v38 = 0;
  }

  [(UIButton *)self->_seeAllButton setFrame:v36, v18, v14, v12];
  collectionView = self->_collectionView;
  if (collectionView)
  {
    [(UICollectionView *)collectionView frame];
    v31 = self->_contentInsets.left + self->_collectionViewInsets.left;
    [(UICollectionView *)self->_collectionView setFrame:v31, top + self->_collectionViewInsets.top, v4 - self->_contentInsets.right - self->_collectionViewInsets.right - v31];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v34 = 1.0 / v33;

  [(UIView *)self->_borderView setFrame:15.0, v6 - v34, v4 + -15.0, v34];
}

- (void)setBackgroundColor:(id)color
{
  collectionView = self->_collectionView;
  colorCopy = color;
  [(UICollectionView *)collectionView setBackgroundColor:colorCopy];
  [(UIButton *)self->_seeAllButton setBackgroundColor:colorCopy];
  [(SUUILinkButton *)self->_titleButton setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUISwooshView;
  [(SUUISwooshView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = self->_contentInsets.bottom + self->_contentInsets.top;
  titleButton = self->_titleButton;
  if (titleButton && ([(SUUILinkButton *)titleButton isHidden]& 1) == 0)
  {
    titleLabel = self->_titleButton;
    goto LABEL_6;
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
LABEL_6:
    [titleLabel sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v5 = v5 + v8;
  }

  collectionView = self->_collectionView;
  if (collectionView)
  {
    [(UICollectionView *)collectionView frame];
    v5 = v5 + v10 + self->_collectionViewInsets.top + self->_collectionViewInsets.bottom;
  }

  if (self->_titleLabel && self->_collectionView)
  {
    v5 = v5 + 10.0;
  }

  v11 = width;
  v12 = v5;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)_seeAllArrowImage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"ChevronSeeAll" inBundle:v2];

  return v3;
}

- (UIEdgeInsets)collectionViewInsets
{
  top = self->_collectionViewInsets.top;
  left = self->_collectionViewInsets.left;
  bottom = self->_collectionViewInsets.bottom;
  right = self->_collectionViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end