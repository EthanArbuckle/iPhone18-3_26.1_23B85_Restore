@interface SUUIPageDividerCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SUUIPageDividerCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setColoringWithStyle:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setDividerType:(int64_t)a3;
- (void)setInsetColor:(id)a3;
- (void)setLeftEdgeInset:(double)a3;
- (void)setRightEdgeInset:(double)a3;
- (void)setVerticalAlignment:(int64_t)a3;
@end

@implementation SUUIPageDividerCollectionViewCell

- (SUUIPageDividerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SUUIPageDividerCollectionViewCell;
  v3 = [(SUUIPageDividerCollectionViewCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    topDividerLine = v3->_topDividerLine;
    v3->_topDividerLine = v4;

    v6 = v3->_topDividerLine;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v6 setBackgroundColor:v7];

    v8 = [(SUUIPageDividerCollectionViewCell *)v3 contentView];
    [v8 addSubview:v3->_topDividerLine];
  }

  return v3;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 defaultItemWidthForViewElement:v7];
  [a1 sizeThatFitsWidth:v7 viewElement:v6 context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9 = [v7 style];
    v10 = SUUIViewElementPaddingForStyle(v9, 0);
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x277D768C8];
    v12 = *(MEMORY[0x277D768C8] + 16);
  }

  [v8 displayScale];
  v14 = 1.0 / v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v7;
    if ([v15 dividerType] == 2)
    {
      [SUUIPageTitledDividerCollectionViewCell viewElementInsetDividerHeight:v15];
      v14 = v16 + v14 * 2.0;
    }
  }

  v17 = a3;
  v18 = v12 + v10 + v14;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SUUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = [a3 primaryTextColor];
  topDividerLine = self->_topDividerLine;
  v10 = v4;
  if (v4)
  {
    [(UIView *)topDividerLine setBackgroundColor:v4];
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

- (void)setColoringWithStyle:(id)a3
{
  v4 = [a3 ikBorderColor];
  v10 = [v4 color];

  topDividerLine = self->_topDividerLine;
  if (v10)
  {
    [(UIView *)self->_topDividerLine setBackgroundColor:v10];
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

- (void)setDividerType:(int64_t)a3
{
  if (self->_dividerType != a3)
  {
    self->_dividerType = a3;
    v4 = [(SUUIPageDividerCollectionViewCell *)self dividerType];
    bottomDividerLine = self->_bottomDividerLine;
    if (v4 == 2)
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

      v10 = [(SUUIPageDividerCollectionViewCell *)self contentView];
      [v10 addSubview:self->_bottomDividerLine];

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

      v16 = [(SUUIPageDividerCollectionViewCell *)self contentView];
      [v16 addSubview:self->_insetView];
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

- (void)setInsetColor:(id)a3
{
  v4 = a3;
  if (self->_insetColor != v4)
  {
    v9 = v4;
    v5 = [(UIColor *)v4 copy];
    insetColor = self->_insetColor;
    self->_insetColor = v5;

    v4 = v9;
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

      v4 = v9;
    }
  }
}

- (void)setLeftEdgeInset:(double)a3
{
  if (self->_leftEdgeInset != a3)
  {
    self->_leftEdgeInset = a3;
    [(SUUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setRightEdgeInset:(double)a3
{
  if (self->_rightEdgeInset != a3)
  {
    self->_rightEdgeInset = a3;
    [(SUUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setVerticalAlignment:(int64_t)a3
{
  if (self->_verticalAlignment != a3)
  {
    self->_verticalAlignment = a3;
    [(SUUIPageDividerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 backgroundColor];
  [(SUUIPageDividerCollectionViewCell *)self setBackgroundColor:v5];

  v6.receiver = self;
  v6.super_class = SUUIPageDividerCollectionViewCell;
  [(SUUIPageDividerCollectionViewCell *)&v6 applyLayoutAttributes:v4];
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = SUUIPageDividerCollectionViewCell;
  [(SUUIPageDividerCollectionViewCell *)&v29 layoutSubviews];
  v3 = [(SUUIPageDividerCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(SUUIPageDividerCollectionViewCell *)self dividerType];
  v9 = [(SUUIPageDividerCollectionViewCell *)self traitCollection];
  [v9 displayScale];
  v11 = v10;
  if (v10 <= 0.00000011920929)
  {
    v12 = [MEMORY[0x277D759A0] mainScreen];
    [v12 scale];
    v11 = v13;
  }

  v14 = 1.0 / v11;
  if (v8 != 2)
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