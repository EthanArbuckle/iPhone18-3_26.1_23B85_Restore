@interface SUUIPageDividerCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUIPageDividerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setColoringWithStyle:(id)style;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setDividerType:(int64_t)type;
- (void)setInsetColor:(id)color;
- (void)setLeftEdgeInset:(double)inset;
- (void)setRightEdgeInset:(double)inset;
- (void)setVerticalAlignment:(int64_t)alignment;
@end

@implementation SUUIPageDividerCollectionViewCell

- (SUUIPageDividerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SUUIPageDividerCollectionViewCell;
  v3 = [(SUUIPageDividerCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    topDividerLine = v3->_topDividerLine;
    v3->_topDividerLine = v4;

    v6 = v3->_topDividerLine;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v6 setBackgroundColor:v7];

    contentView = [(SUUIPageDividerCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_topDividerLine];
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

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (elementCopy)
  {
    style = [elementCopy style];
    v10 = SUUIViewElementPaddingForStyle(style, 0);
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x277D768C8];
    v12 = *(MEMORY[0x277D768C8] + 16);
  }

  [contextCopy displayScale];
  v14 = 1.0 / v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = elementCopy;
    if ([v15 dividerType] == 2)
    {
      [SUUIPageTitledDividerCollectionViewCell viewElementInsetDividerHeight:v15];
      v14 = v16 + v14 * 2.0;
    }
  }

  widthCopy = width;
  v18 = v12 + v10 + v14;
  result.height = v18;
  result.width = widthCopy;
  return result;
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
    [(SUUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setColoringWithColorScheme:(id)scheme
{
  primaryTextColor = [scheme primaryTextColor];
  topDividerLine = self->_topDividerLine;
  v10 = primaryTextColor;
  if (primaryTextColor)
  {
    [(UIView *)topDividerLine setBackgroundColor:primaryTextColor];
    bottomDividerLine = self->_bottomDividerLine;
    if (bottomDividerLine)
    {
      [(UIView *)bottomDividerLine setBackgroundColor:v10];
    }
  }

  else
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)topDividerLine setBackgroundColor:v7];

    v8 = self->_bottomDividerLine;
    if (v8)
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)v8 setBackgroundColor:v9];
    }
  }
}

- (void)setColoringWithStyle:(id)style
{
  ikBorderColor = [style ikBorderColor];
  color = [ikBorderColor color];

  topDividerLine = self->_topDividerLine;
  if (color)
  {
    [(UIView *)self->_topDividerLine setBackgroundColor:color];
    bottomDividerLine = self->_bottomDividerLine;
    if (bottomDividerLine)
    {
      [(UIView *)bottomDividerLine setBackgroundColor:color];
    }
  }

  else
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)topDividerLine setBackgroundColor:v7];

    v8 = self->_bottomDividerLine;
    if (v8)
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)v8 setBackgroundColor:v9];
    }
  }
}

- (void)setDividerType:(int64_t)type
{
  if (self->_dividerType != type)
  {
    self->_dividerType = type;
    dividerType = [(SUUIPageDividerCollectionViewCell *)self dividerType];
    bottomDividerLine = self->_bottomDividerLine;
    if (dividerType == 2)
    {
      if (!bottomDividerLine)
      {
        v6 = objc_alloc_init(MEMORY[0x277D75D18]);
        v7 = self->_bottomDividerLine;
        self->_bottomDividerLine = v6;

        v8 = self->_bottomDividerLine;
        v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
        [(UIView *)v8 setBackgroundColor:v9];
      }

      contentView = [(SUUIPageDividerCollectionViewCell *)self contentView];
      [contentView addSubview:self->_bottomDividerLine];

      if (!self->_insetView)
      {
        v11 = objc_alloc_init(MEMORY[0x277D75D18]);
        insetView = self->_insetView;
        self->_insetView = v11;

        v13 = self->_insetView;
        if (self->_insetColor)
        {
          [(UIView *)self->_insetView setBackgroundColor:?];
        }

        else
        {
          v15 = [MEMORY[0x277D75348] colorWithWhite:0.968627451 alpha:1.0];
          [(UIView *)v13 setBackgroundColor:v15];
        }
      }

      contentView2 = [(SUUIPageDividerCollectionViewCell *)self contentView];
      [contentView2 addSubview:self->_insetView];
    }

    else
    {
      if (bottomDividerLine)
      {
        [(UIView *)bottomDividerLine removeFromSuperview];
      }

      v14 = self->_insetView;
      if (v14)
      {

        [(UIView *)v14 removeFromSuperview];
      }
    }
  }
}

- (void)setInsetColor:(id)color
{
  colorCopy = color;
  if (self->_insetColor != colorCopy)
  {
    v9 = colorCopy;
    v5 = [(UIColor *)colorCopy copy];
    insetColor = self->_insetColor;
    self->_insetColor = v5;

    colorCopy = v9;
    insetView = self->_insetView;
    if (insetView)
    {
      if (self->_insetColor)
      {
        [(UIView *)self->_insetView setBackgroundColor:?];
      }

      else
      {
        v8 = [MEMORY[0x277D75348] colorWithWhite:0.968627451 alpha:1.0];
        [(UIView *)insetView setBackgroundColor:v8];
      }

      colorCopy = v9;
    }
  }
}

- (void)setLeftEdgeInset:(double)inset
{
  if (self->_leftEdgeInset != inset)
  {
    self->_leftEdgeInset = inset;
    [(SUUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setRightEdgeInset:(double)inset
{
  if (self->_rightEdgeInset != inset)
  {
    self->_rightEdgeInset = inset;
    [(SUUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setVerticalAlignment:(int64_t)alignment
{
  if (self->_verticalAlignment != alignment)
  {
    self->_verticalAlignment = alignment;
    [(SUUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SUUIPageDividerCollectionViewCell *)self setBackgroundColor:backgroundColor];

  v6.receiver = self;
  v6.super_class = SUUIPageDividerCollectionViewCell;
  [(SUUIPageDividerCollectionViewCell *)&v6 applyLayoutAttributes:attributesCopy];
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = SUUIPageDividerCollectionViewCell;
  [(SUUIPageDividerCollectionViewCell *)&v29 layoutSubviews];
  contentView = [(SUUIPageDividerCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  dividerType = [(SUUIPageDividerCollectionViewCell *)self dividerType];
  traitCollection = [(SUUIPageDividerCollectionViewCell *)self traitCollection];
  [traitCollection displayScale];
  v11 = v10;
  if (v10 <= 0.00000011920929)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v11 = v13;
  }

  v14 = 1.0 / v11;
  if (dividerType != 2)
  {
    verticalAlignment = self->_verticalAlignment;
    if (verticalAlignment)
    {
      if (verticalAlignment != 1)
      {
        v26 = *(MEMORY[0x277CBF3A0] + 16);
        v14 = *(MEMORY[0x277CBF3A0] + 24);
        leftEdgeInset = *MEMORY[0x277CBF3A0];
        v24 = *(MEMORY[0x277CBF3A0] + 8);
        goto LABEL_11;
      }

      v24 = v7 - v14;
    }

    else
    {
      v24 = 0.0;
    }

    leftEdgeInset = self->_leftEdgeInset;
    v26 = v5 - leftEdgeInset - self->_rightEdgeInset;
LABEL_11:
    top = self->_contentInset.top;
    left = self->_contentInset.left;
    v18 = leftEdgeInset + left;
    v20 = v24 + top;
    v21 = v26 - (left + self->_contentInset.right);
    v14 = v14 - (top + self->_contentInset.bottom);
    v22 = &OBJC_IVAR___SUUIPageDividerCollectionViewCell__topDividerLine;
    goto LABEL_12;
  }

  [(UIView *)self->_topDividerLine setFrame:self->_leftEdgeInset, 0.0, v5 - self->_leftEdgeInset - self->_rightEdgeInset, v14];
  v15 = self->_leftEdgeInset;
  v16 = v5 - v15 - self->_rightEdgeInset;
  [(SUUIPageDividerCollectionViewCell *)self dividerHeight];
  [(UIView *)self->_insetView setFrame:v15, v14, v16, v17 + v14 * -2.0];
  v18 = self->_leftEdgeInset;
  [(SUUIPageDividerCollectionViewCell *)self dividerHeight];
  v20 = v19;
  v21 = v5 - self->_leftEdgeInset - self->_rightEdgeInset;
  v22 = &OBJC_IVAR___SUUIPageDividerCollectionViewCell__bottomDividerLine;
LABEL_12:
  [*(&self->super.super.super.super.super.isa + *v22) setFrame:{v18, v20, v21, v14}];
}

@end