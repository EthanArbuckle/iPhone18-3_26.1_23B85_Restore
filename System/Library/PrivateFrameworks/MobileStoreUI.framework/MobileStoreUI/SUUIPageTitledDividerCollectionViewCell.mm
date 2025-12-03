@interface SUUIPageTitledDividerCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width dividerTitle:(id)title context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (UIEdgeInsets)_contentEdgeInsetsForViewElement:(id)element;
+ (UIEdgeInsets)_imageVerticalPaddingForViewElement:(id)element;
+ (UIEdgeInsets)_titleVerticalPaddingForViewElement:(id)element;
+ (double)viewElementInsetDividerHeight:(id)height;
+ (id)_attributedStringForButtonViewElement:(id)element context:(id)context;
+ (id)_attributedStringForDividerTitle:(id)title context:(id)context;
+ (id)_attributedStringForViewElementText:(id)text style:(id)style context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (SUUIPageTitledDividerCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)_imageForImageViewElement:(id)element returningRequestIdentifier:(id *)identifier context:(id)context;
- (void)_buttonAction:(id)action;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setBackgroundColor:(id)color;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setDividerTitle:(id)title;
- (void)setTopEdgeInset:(double)inset;
@end

@implementation SUUIPageTitledDividerCollectionViewCell

- (SUUIPageTitledDividerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SUUIPageTitledDividerCollectionViewCell;
  v3 = [(SUUIPageTitledDividerCollectionViewCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    leftLine = v3->_leftLine;
    v3->_leftLine = v5;

    [(UIView *)v3->_leftLine setBackgroundColor:v4];
    contentView = [(SUUIPageTitledDividerCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_leftLine];

    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    rightLine = v3->_rightLine;
    v3->_rightLine = v8;

    [(UIView *)v3->_rightLine setBackgroundColor:v4];
    contentView2 = [(SUUIPageTitledDividerCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_rightLine];

    *&v3->_internalHorizontalMargins.top = xmmword_259FCB400;
    *&v3->_internalHorizontalMargins.bottom = xmmword_259FCB400;
    v3->_buttonContentHorizontalPadding = 1.0;
  }

  return v3;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width dividerTitle:(id)title context:(id)context
{
  contextCopy = context;
  titleCopy = title;
  v8 = [objc_opt_class() _attributedStringForDividerTitle:titleCopy context:contextCopy];

  [v8 size];
  v10 = v9;
  v12 = v11;
  [contextCopy displayScale];

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  button = [elementCopy button];
  if (button)
  {
    v12 = [self _attributedStringForButtonViewElement:button context:contextCopy];
    buttonImage = [button buttonImage];
    if (buttonImage)
    {
      [contextCopy sizeForImageElement:buttonImage];
      v15 = v14;
      [self _imageVerticalPaddingForViewElement:elementCopy];
      v10 = v15 + v16 + v17;
    }
  }

  else
  {
    buttonImage = [elementCopy text];
    style = [elementCopy style];
    v12 = [self _attributedStringForViewElementText:buttonImage style:style context:contextCopy];
  }

  [self _titleVerticalPaddingForViewElement:elementCopy];
  v20 = v19;
  v22 = v21;
  [v12 size];
  if (v23 + v20 + v22 >= v10)
  {
    v24 = v23 + v20 + v22;
  }

  else
  {
    v24 = v10;
  }

  [self _contentEdgeInsetsForViewElement:elementCopy];
  v27 = v25 + v26 + v24;
  [contextCopy displayScale];
  v29 = 1.0 / v28;
  if ([elementCopy dividerType] == 2)
  {
    [SUUIPageTitledDividerCollectionViewCell viewElementInsetDividerHeight:elementCopy];
    v27 = v27 + v30 + v29 * 2.0;
  }

  if (v27 < v29)
  {
    v27 = v29;
  }

  widthCopy = width;
  v32 = v27;
  result.height = v32;
  result.width = widthCopy;
  return result;
}

+ (double)viewElementInsetDividerHeight:(id)height
{
  style = [height style];
  itemHeight = [style itemHeight];

  if (itemHeight)
  {
    [itemHeight floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 7.0;
  }

  return v6;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  dividerButtonImageRequestIdentifier = self->_dividerButtonImageRequestIdentifier;
  self->_dividerButtonImageRequestIdentifier = 0;

  style = [elementCopy style];
  ikBorderColor = [style ikBorderColor];
  tintColor = [contextCopy tintColor];
  v13 = SUUIViewElementPlainColorWithIKColor(ikBorderColor, tintColor);

  leftLine = self->_leftLine;
  if (v13)
  {
    [(UIView *)self->_leftLine setBackgroundColor:v13];
    [(UIView *)self->_rightLine setBackgroundColor:v13];
  }

  else
  {
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)leftLine setBackgroundColor:v15];

    rightLine = self->_rightLine;
    v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)rightLine setBackgroundColor:v17];
  }

  [objc_opt_class() _contentEdgeInsetsForViewElement:elementCopy];
  self->_contentEdgeInsets.top = v18;
  self->_contentEdgeInsets.left = v19;
  self->_contentEdgeInsets.bottom = v20;
  self->_contentEdgeInsets.right = v21;
  button = [elementCopy button];
  buttonViewElement = self->_buttonViewElement;
  self->_buttonViewElement = button;

  self->_buttonContentHorizontalPadding = 1.0;
  [objc_opt_class() _titleVerticalPaddingForViewElement:elementCopy];
  self->_titleVerticalPadding.top = v24;
  self->_titleVerticalPadding.left = v25;
  self->_titleVerticalPadding.bottom = v26;
  self->_titleVerticalPadding.right = v27;
  [objc_opt_class() _imageVerticalPaddingForViewElement:elementCopy];
  self->_imageVerticalPadding.top = v28;
  self->_imageVerticalPadding.left = v29;
  self->_imageVerticalPadding.bottom = v30;
  self->_imageVerticalPadding.right = v31;
  if (self->_buttonViewElement)
  {
    dividerLabel = self->_dividerLabel;
    if (dividerLabel)
    {
      [(UILabel *)dividerLabel removeFromSuperview];
      v33 = self->_dividerLabel;
      self->_dividerLabel = 0;
    }

    if (!self->_dividerButton)
    {
      v34 = [MEMORY[0x277D75220] buttonWithType:1];
      dividerButton = self->_dividerButton;
      self->_dividerButton = v34;

      [(UIButton *)self->_dividerButton addTarget:self action:sel__buttonAction_ forControlEvents:64];
      v36 = self->_dividerButton;
      backgroundColor = [(SUUIPageTitledDividerCollectionViewCell *)self backgroundColor];
      [(UIButton *)v36 setBackgroundColor:backgroundColor];

      LODWORD(v38) = -1102263091;
      [(UIButton *)self->_dividerButton setCharge:v38];
      [(UIButton *)self->_dividerButton setContentHorizontalAlignment:1];
      contentView = [(SUUIPageTitledDividerCollectionViewCell *)self contentView];
      [contentView addSubview:self->_dividerButton];
    }

    buttonTitleStyle = [(SUUIButtonViewElement *)self->_buttonViewElement buttonTitleStyle];
    v41 = buttonTitleStyle;
    if (buttonTitleStyle)
    {
      style2 = buttonTitleStyle;
    }

    else
    {
      style2 = [(SUUIButtonViewElement *)self->_buttonViewElement style];
    }

    v91 = style2;

    v58 = [objc_opt_class() _attributedStringForButtonViewElement:self->_buttonViewElement context:contextCopy];
    v88 = v13;
    v89 = style;
    if ([v58 length])
    {
      v59 = [v58 attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0];
    }

    else
    {
      v59 = 0;
    }

    buttonImage = [(SUUIButtonViewElement *)self->_buttonViewElement buttonImage];
    v98[0] = 0;
    v90 = contextCopy;
    v61 = [(SUUIPageTitledDividerCollectionViewCell *)self _imageForImageViewElement:buttonImage returningRequestIdentifier:v98 context:contextCopy];
    v62 = v98[0];
    v87 = v98[0];

    objc_storeStrong(&self->_dividerButtonImageRequestIdentifier, v62);
    buttonImage2 = [(SUUIButtonViewElement *)self->_buttonViewElement buttonImage];
    style3 = [buttonImage2 style];

    ikColor = [style3 ikColor];
    v66 = SUUIViewElementPlainColorWithIKColor(ikColor, 0);
    if (v66)
    {
      v67 = [v61 _flatImageWithColor:v66];
      v68 = [v67 imageWithRenderingMode:2];
    }

    else
    {
      v68 = [v61 imageWithRenderingMode:2];
    }

    v69 = MEMORY[0x277D75D18];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __79__SUUIPageTitledDividerCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
    v94[3] = &unk_2798F70E0;
    v94[4] = self;
    v95 = v58;
    v96 = v59;
    v97 = v68;
    v70 = v68;
    v86 = v59;
    v71 = v58;
    [v69 performWithoutAnimation:v94];
    v93 = 0;
    v72 = SUUIViewElementPaddingForStyle(v91, &v93);
    if (v93 == 1)
    {
      v76 = v72;
      v77 = v73;
      v78 = v74;
      v79 = v75;
      v92 = 0;
      v80 = SUUIViewElementPaddingForStyle(style3, &v92);
      if ((v92 & 1) == 0)
      {
        v83 = v79;
LABEL_32:
        self->_internalHorizontalMargins.top = v76;
        self->_internalHorizontalMargins.left = v77;
        self->_internalHorizontalMargins.bottom = v78;
        self->_internalHorizontalMargins.right = v83;
        v84 = 1;
LABEL_33:

        style = v89;
        contextCopy = v90;
        v13 = v88;
        if ((v84 & 1) == 0)
        {
          *&self->_internalHorizontalMargins.top = xmmword_259FCB400;
          *&self->_internalHorizontalMargins.bottom = xmmword_259FCB400;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v92 = 0;
      v80 = SUUIViewElementPaddingForStyle(style3, &v92);
      v84 = 0;
      if (v92 != 1)
      {
        goto LABEL_33;
      }

      v76 = *MEMORY[0x277D768C8];
      v77 = *(MEMORY[0x277D768C8] + 8);
      v78 = *(MEMORY[0x277D768C8] + 16);
      v79 = *(MEMORY[0x277D768C8] + 24);
    }

    if (v93 == 1)
    {
      *(&self->super.super.super.super.super.isa + v85) = v79 + v81;
    }

    else
    {
      v76 = v80;
      v77 = v81;
      v78 = v82;
    }

    goto LABEL_32;
  }

  v43 = self->_dividerButton;
  if (v43)
  {
    [(UIButton *)v43 removeFromSuperview];
    v44 = self->_dividerButton;
    self->_dividerButton = 0;
  }

  v45 = objc_opt_class();
  text = [elementCopy text];
  v47 = [v45 _attributedStringForViewElementText:text style:style context:contextCopy];

  [style elementPadding];
  self->_internalHorizontalMargins.top = v48;
  self->_internalHorizontalMargins.left = v49;
  self->_internalHorizontalMargins.bottom = v50;
  self->_internalHorizontalMargins.right = v51;
  v52 = self->_dividerLabel;
  if (v47)
  {
    if (!v52)
    {
      v53 = objc_alloc_init(MEMORY[0x277D756B8]);
      v54 = self->_dividerLabel;
      self->_dividerLabel = v53;

      v55 = self->_dividerLabel;
      backgroundColor2 = [(SUUIPageTitledDividerCollectionViewCell *)self backgroundColor];
      [(UILabel *)v55 setBackgroundColor:backgroundColor2];

      contentView2 = [(SUUIPageTitledDividerCollectionViewCell *)self contentView];
      [contentView2 addSubview:self->_dividerLabel];

      v52 = self->_dividerLabel;
    }

    [(UILabel *)v52 setHidden:0];
    [(UILabel *)self->_dividerLabel setAttributedText:v47];
  }

  else
  {
    [(UILabel *)v52 setHidden:1];
  }

LABEL_37:
  [(SUUIPageTitledDividerCollectionViewCell *)self setNeedsLayout];
}

uint64_t __79__SUUIPageTitledDividerCollectionViewCell_reloadWithViewElement_width_context___block_invoke(void *a1)
{
  [*(a1[4] + 728) setAttributedTitle:a1[5] forState:0];
  v2 = [*(a1[4] + 728) titleLabel];
  [v2 _setTextColorFollowsTintColor:a1[6] == 0];

  v3 = *(a1[4] + 728);
  v4 = a1[7];

  return [v3 setImage:v4 forState:0];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SUUIPageTitledDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  imageCopy = image;
  requestCopy = request;
  contextCopy = context;
  if (self->_dividerButtonImageRequestIdentifier && (v11 = [requestCopy requestIdentifier], v11 == -[NSNumber unsignedLongLongValue](self->_dividerButtonImageRequestIdentifier, "unsignedLongLongValue")))
  {
    [(SUUIPageTitledDividerCollectionViewCell *)self setNeedsLayout];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setColoringWithColorScheme:(id)scheme
{
  if (scheme)
  {
    primaryTextColor = [scheme primaryTextColor];
    [(UILabel *)self->_dividerLabel setTextColor:primaryTextColor];
    [(UIButton *)self->_dividerButton setTitleColor:primaryTextColor forState:0];
    [(UIButton *)self->_dividerButton setTintColor:primaryTextColor];
    [(UIView *)self->_leftLine setBackgroundColor:primaryTextColor];
    rightLine = self->_rightLine;
    v5 = primaryTextColor;
  }

  else
  {
    dividerLabel = self->_dividerLabel;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)dividerLabel setTextColor:blackColor];

    dividerButton = self->_dividerButton;
    tintColor = [(SUUIPageTitledDividerCollectionViewCell *)self tintColor];
    [(UIButton *)dividerButton setTitleColor:tintColor forState:0];

    leftLine = self->_leftLine;
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)leftLine setBackgroundColor:v11];

    v12 = self->_rightLine;
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    rightLine = v12;
    primaryTextColor = v5;
  }

  [(UIView *)rightLine setBackgroundColor:v5];
}

- (void)setDividerTitle:(id)title
{
  titleCopy = title;
  dividerTitle = [(SUUIPageTitledDividerCollectionViewCell *)self dividerTitle];
  if (dividerTitle != titleCopy && ([titleCopy isEqualToString:dividerTitle] & 1) == 0)
  {
    dividerLabel = self->_dividerLabel;
    if (titleCopy)
    {
      if (!dividerLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_dividerLabel;
        self->_dividerLabel = v6;

        v8 = self->_dividerLabel;
        backgroundColor = [(SUUIPageTitledDividerCollectionViewCell *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_dividerLabel;
        v11 = SUUIFontPreferredFontForTextStyle(1);
        [(UILabel *)v10 setFont:v11];

        v12 = self->_dividerLabel;
        blackColor = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)v12 setTextColor:blackColor];

        contentView = [(SUUIPageTitledDividerCollectionViewCell *)self contentView];
        [contentView addSubview:self->_dividerLabel];

        dividerLabel = self->_dividerLabel;
      }

      [(UILabel *)dividerLabel setHidden:0];
      [(UILabel *)self->_dividerLabel setText:titleCopy];
    }

    else
    {
      [(UILabel *)dividerLabel setHidden:1];
    }

    [(SUUIPageTitledDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTopEdgeInset:(double)inset
{
  if (vabdd_f64(self->_contentEdgeInsets.top, inset) > 0.00000011920929)
  {
    self->_contentEdgeInsets.top = inset;
    [(SUUIPageTitledDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SUUIPageTitledDividerCollectionViewCell *)self setBackgroundColor:backgroundColor];

  v6.receiver = self;
  v6.super_class = SUUIPageTitledDividerCollectionViewCell;
  [(SUUIPageTitledDividerCollectionViewCell *)&v6 applyLayoutAttributes:attributesCopy];
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = SUUIPageTitledDividerCollectionViewCell;
  [(SUUIPageTitledDividerCollectionViewCell *)&v58 layoutSubviews];
  [(SUUIPageTitledDividerCollectionViewCell *)self bounds];
  v4 = v3;
  v5 = v3 + -40.0 - self->_internalHorizontalMargins.left;
  right = self->_internalHorizontalMargins.right;
  traitCollection = [(SUUIPageTitledDividerCollectionViewCell *)self traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  if (v9 <= 0.00000011920929)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v9 = v11;
  }

  v12 = v5 - right;
  p_dividerButton = &self->_dividerButton;
  dividerButton = self->_dividerButton;
  if (dividerButton)
  {
    v15 = [(UIButton *)dividerButton imageForState:0];

    [*p_dividerButton layoutIfNeeded];
    v16 = *p_dividerButton;
    if (v15)
    {
      imageView = [v16 imageView];
      [imageView sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v19 = v18;

      titleLabel = [*p_dividerButton titleLabel];
      [titleLabel sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v22 = v21;

      v23 = self->_titleVerticalPadding.top - self->_titleVerticalPadding.bottom;
      v24 = self->_imageVerticalPadding.top - self->_imageVerticalPadding.bottom;
      buttonContentHorizontalPadding = self->_buttonContentHorizontalPadding;
      [*p_dividerButton setTitleEdgeInsets:{v23, -v19, -v23, v19}];
      [*p_dividerButton setImageEdgeInsets:{v24, v22 + self->_buttonContentHorizontalPadding, -v24, -(v22 + self->_buttonContentHorizontalPadding)}];
    }

    else
    {
      v34 = *MEMORY[0x277D768C8];
      v35 = *(MEMORY[0x277D768C8] + 8);
      v37 = *(MEMORY[0x277D768C8] + 16);
      v36 = *(MEMORY[0x277D768C8] + 24);
      [v16 setImageEdgeInsets:{*MEMORY[0x277D768C8], v35, v37, v36}];
      [*p_dividerButton setTitleEdgeInsets:{v34, v35, v37, v36}];
      buttonContentHorizontalPadding = 0.0;
    }

    [*p_dividerButton frame];
    v27 = v38;
    v29 = v39;
    [*p_dividerButton sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v59.size.width = v40;
    v33 = v41;
    v59.origin.x = v27;
    v59.origin.y = v29;
    v59.size.height = v33;
    v42 = buttonContentHorizontalPadding + CGRectGetWidth(v59);
    if (v42 >= v12)
    {
      v31 = v12;
    }

    else
    {
      v31 = v42;
    }
  }

  else
  {
    p_dividerButton = &self->_dividerLabel;
    [(UILabel *)self->_dividerLabel frame];
    v27 = v26;
    v29 = v28;
    [(UILabel *)self->_dividerLabel sizeThatFits:v12, 1.79769313e308];
    v31 = v30;
    v33 = v32;
  }

  v43 = v27;
  v44 = v29;
  v45 = v33;
  CGRectGetWidth(*(&v31 - 2));
  UICeilToViewScale();
  UIRectCenteredXInRectScale();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  [*p_dividerButton setFrame:*&v9];
  v54 = 1.0 / v9;
  UIFloorToViewScale();
  v56 = v49 + v55;
  v60.origin.x = v47;
  v60.origin.y = v49;
  v60.size.width = v51;
  v60.size.height = v53;
  v57 = CGRectGetMaxX(v60) + self->_internalHorizontalMargins.right;
  [(UIView *)self->_leftLine setFrame:self->_contentEdgeInsets.left + self->_contentInset.left, v56, v47 - self->_internalHorizontalMargins.left - self->_contentEdgeInsets.left - self->_contentInset.left, v54];
  [(UIView *)self->_rightLine setFrame:v57, v56, v4 - v57 - self->_contentEdgeInsets.right - self->_contentInset.right, v54];
}

- (void)setBackgroundColor:(id)color
{
  dividerLabel = self->_dividerLabel;
  colorCopy = color;
  [(UILabel *)dividerLabel setBackgroundColor:colorCopy];
  [(UIButton *)self->_dividerButton setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIPageTitledDividerCollectionViewCell;
  [(SUUIPageTitledDividerCollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

- (void)_buttonAction:(id)action
{
  buttonViewElement = self->_buttonViewElement;
  if (buttonViewElement)
  {
    [(SUUIButtonViewElement *)buttonViewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

+ (id)_attributedStringForButtonViewElement:(id)element context:(id)context
{
  elementCopy = element;
  buttonTitleStyle = [elementCopy buttonTitleStyle];
  v6 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [elementCopy style];
  }

  v8 = style;

  v9 = SUUIViewElementPlainColorWithStyle(v8, 0);
  v10 = SUUIViewElementFontWithStyle(v8);
  if (!v10)
  {
    v10 = SUUIFontPreferredFontForTextStyle(1);
  }

  buttonText = [elementCopy buttonText];
  style2 = [elementCopy style];
  v13 = [buttonText attributedStringWithDefaultFont:v10 foregroundColor:v9 style:style2];

  return v13;
}

+ (id)_attributedStringForDividerTitle:(id)title context:(id)context
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (title)
  {
    v4 = MEMORY[0x277CCA898];
    titleCopy = title;
    v6 = [v4 alloc];
    v12[0] = *MEMORY[0x277D740C0];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v13[0] = blackColor;
    v12[1] = *MEMORY[0x277D740A8];
    v8 = SUUIFontPreferredFontForTextStyle(1);
    v13[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [v6 initWithString:titleCopy attributes:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_attributedStringForViewElementText:(id)text style:(id)style context:(id)context
{
  styleCopy = style;
  contextCopy = context;
  if (text)
  {
    textCopy = text;
    v10 = SUUIViewElementFontWithStyle(styleCopy);
    if (!v10)
    {
      v10 = SUUIFontPreferredFontForTextStyle(1);
    }

    tintColor = [contextCopy tintColor];
    v12 = SUUIViewElementPlainColorWithStyle(styleCopy, tintColor);
    v13 = v12;
    if (v12)
    {
      blackColor = v12;
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
    }

    v16 = blackColor;

    v15 = [textCopy attributedStringWithDefaultFont:v10 foregroundColor:v16 style:styleCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (UIEdgeInsets)_contentEdgeInsetsForViewElement:(id)element
{
  style = [element style];
  v4 = [style valueForStyle:*MEMORY[0x277D1AFE8]];
  v5 = v4;
  if (v4)
  {
    [v4 UIEdgeInsetsValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = 0.0;
    v11 = 15.0;
    v9 = 0.0;
    v13 = 0.0;
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

+ (UIEdgeInsets)_imageVerticalPaddingForViewElement:(id)element
{
  v4 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  button = [element button];
  v8 = button;
  if (button)
  {
    buttonImage = [button buttonImage];
    v18 = 0;
    style = [buttonImage style];
    v11 = SUUIViewElementPaddingForStyle(style, &v18);
    v13 = v12;

    if (v18)
    {
      v6 = v13;
      v4 = v11;
    }
  }

  v14 = v4;
  v15 = v3;
  v16 = v6;
  v17 = v5;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

+ (UIEdgeInsets)_titleVerticalPaddingForViewElement:(id)element
{
  elementCopy = element;
  button = [elementCopy button];
  v5 = button;
  v19 = 0;
  if (!button)
  {
    style = [elementCopy style];
    v7 = style;
LABEL_5:
    v8 = SUUIViewElementPaddingForStyle(style, &v19);
    v10 = v9;
    goto LABEL_7;
  }

  style = [button buttonTitleStyle];
  v7 = style;
  if (style)
  {
    goto LABEL_5;
  }

  style2 = [v5 style];
  v8 = SUUIViewElementPaddingForStyle(style2, &v19);
  v10 = v12;

LABEL_7:
  v13 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 24);
  if (!v19)
  {
    v10 = *(MEMORY[0x277D768C8] + 16);
    v8 = *MEMORY[0x277D768C8];
  }

  v15 = v8;
  v16 = v13;
  v17 = v10;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (id)_imageForImageViewElement:(id)element returningRequestIdentifier:(id *)identifier context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  resourceName = [elementCopy resourceName];
  v10 = resourceName;
  if (resourceName)
  {
    v11 = SUUIImageWithResourceName(resourceName);
    v12 = 0;
  }

  else
  {
    v12 = [contextCopy requestIdentifierForViewElement:elementCopy];
    if (!v12 || ([contextCopy resourceLoader], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "cachedResourceForRequestIdentifier:", objc_msgSend(v12, "unsignedIntegerValue")), v11 = objc_claimAutoreleasedReturnValue(), v13, !v11))
    {
      [contextCopy loadImageForImageElement:elementCopy reason:1];
      v11 = 0;
    }
  }

  if (identifier)
  {
    v14 = v12;
    *identifier = v12;
  }

  return v11;
}

@end