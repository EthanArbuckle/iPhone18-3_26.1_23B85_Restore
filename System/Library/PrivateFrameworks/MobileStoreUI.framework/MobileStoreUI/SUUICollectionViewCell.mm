@interface SUUICollectionViewCell
- (BOOL)_showsBottomBorder;
- (BOOL)_showsLeftBorder;
- (BOOL)_showsRightBorder;
- (BOOL)_showsTopBorder;
- (SUUICollectionViewCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)separatorInsets;
- (UIEdgeInsets)separatorWidths;
- (void)_setPosition:(int64_t)a3;
- (void)_updateBorderVisibility;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSeparatorColor:(id)a3;
- (void)setSeparatorStyle:(int64_t)a3;
- (void)setSeparatorWidths:(UIEdgeInsets)a3;
@end

@implementation SUUICollectionViewCell

- (SUUICollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SUUICollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 scale];
    v6 = 1.0 / v5;

    v3->_separatorWidths.top = v6;
    v3->_separatorWidths.left = v6;
    v3->_separatorWidths.bottom = v6;
    v3->_separatorWidths.right = v6;
    *&v3->_separatorInsets.top = xmmword_259FCC260;
    *&v3->_separatorInsets.bottom = xmmword_259FCC260;
  }

  return v3;
}

- (void)setSeparatorColor:(id)a3
{
  v5 = a3;
  separatorColor = self->_separatorColor;
  if (separatorColor != v5)
  {
    v15 = v5;
    separatorColor = [separatorColor isEqual:v5];
    v5 = v15;
    if ((separatorColor & 1) == 0)
    {
      objc_storeStrong(&self->_separatorColor, a3);
      bottomBorderView = self->_bottomBorderView;
      if (self->_separatorColor)
      {
        [(UIView *)self->_bottomBorderView setBackgroundColor:?];
      }

      else
      {
        v8 = [MEMORY[0x277D75348] clearColor];
        [(UIView *)bottomBorderView setBackgroundColor:v8];
      }

      leftBorderView = self->_leftBorderView;
      if (self->_separatorColor)
      {
        [(UIView *)self->_leftBorderView setBackgroundColor:?];
      }

      else
      {
        v10 = [MEMORY[0x277D75348] clearColor];
        [(UIView *)leftBorderView setBackgroundColor:v10];
      }

      rightBorderView = self->_rightBorderView;
      if (self->_separatorColor)
      {
        [(UIView *)self->_rightBorderView setBackgroundColor:?];
      }

      else
      {
        v12 = [MEMORY[0x277D75348] clearColor];
        [(UIView *)rightBorderView setBackgroundColor:v12];
      }

      topBorderView = self->_topBorderView;
      if (self->_separatorColor)
      {
        separatorColor = [(UIView *)self->_topBorderView setBackgroundColor:?];
      }

      else
      {
        v14 = [MEMORY[0x277D75348] clearColor];
        [(UIView *)topBorderView setBackgroundColor:v14];
      }

      v5 = v15;
    }
  }

  MEMORY[0x2821F96F8](separatorColor, v5);
}

- (void)setSeparatorStyle:(int64_t)a3
{
  if (self->_separatorStyle != a3)
  {
    self->_separatorStyle = a3;
    bottomBorderView = self->_bottomBorderView;
    if (a3)
    {
      if (!bottomBorderView)
      {
        v5 = objc_alloc_init(MEMORY[0x277D75D18]);
        v6 = self->_bottomBorderView;
        self->_bottomBorderView = v5;

        v7 = self->_bottomBorderView;
        if (self->_separatorColor)
        {
          [(UIView *)self->_bottomBorderView setBackgroundColor:?];
        }

        else
        {
          v10 = [MEMORY[0x277D75348] clearColor];
          [(UIView *)v7 setBackgroundColor:v10];
        }

        [(SUUICollectionViewCell *)self addSubview:self->_bottomBorderView];
        bottomBorderView = self->_bottomBorderView;
      }

      [(UIView *)bottomBorderView setHidden:[(SUUICollectionViewCell *)self _showsBottomBorder]^ 1];
      leftBorderView = self->_leftBorderView;
      if (!leftBorderView)
      {
        v12 = objc_alloc_init(MEMORY[0x277D75D18]);
        v13 = self->_leftBorderView;
        self->_leftBorderView = v12;

        v14 = self->_leftBorderView;
        if (self->_separatorColor)
        {
          [(UIView *)self->_leftBorderView setBackgroundColor:?];
        }

        else
        {
          v15 = [MEMORY[0x277D75348] clearColor];
          [(UIView *)v14 setBackgroundColor:v15];
        }

        [(SUUICollectionViewCell *)self addSubview:self->_leftBorderView];
        leftBorderView = self->_leftBorderView;
      }

      [(UIView *)leftBorderView setHidden:[(SUUICollectionViewCell *)self _showsLeftBorder]^ 1];
      rightBorderView = self->_rightBorderView;
      if (!rightBorderView)
      {
        v17 = objc_alloc_init(MEMORY[0x277D75D18]);
        v18 = self->_rightBorderView;
        self->_rightBorderView = v17;

        v19 = self->_rightBorderView;
        if (self->_separatorColor)
        {
          [(UIView *)self->_rightBorderView setBackgroundColor:?];
        }

        else
        {
          v20 = [MEMORY[0x277D75348] clearColor];
          [(UIView *)v19 setBackgroundColor:v20];
        }

        [(SUUICollectionViewCell *)self addSubview:self->_rightBorderView];
        rightBorderView = self->_rightBorderView;
      }

      [(UIView *)rightBorderView setHidden:[(SUUICollectionViewCell *)self _showsRightBorder]^ 1];
      topBorderView = self->_topBorderView;
      if (!topBorderView)
      {
        v22 = objc_alloc_init(MEMORY[0x277D75D18]);
        v23 = self->_topBorderView;
        self->_topBorderView = v22;

        v24 = self->_topBorderView;
        if (self->_separatorColor)
        {
          [(UIView *)self->_topBorderView setBackgroundColor:?];
        }

        else
        {
          v25 = [MEMORY[0x277D75348] clearColor];
          [(UIView *)v24 setBackgroundColor:v25];
        }

        [(SUUICollectionViewCell *)self addSubview:self->_topBorderView];
        topBorderView = self->_topBorderView;
      }

      v9 = [(SUUICollectionViewCell *)self _showsTopBorder]^ 1;
      v8 = topBorderView;
    }

    else
    {
      [(UIView *)self->_bottomBorderView setHidden:1];
      [(UIView *)self->_leftBorderView setHidden:1];
      [(UIView *)self->_rightBorderView setHidden:1];
      v8 = self->_topBorderView;
      v9 = 1;
    }

    [(UIView *)v8 setHidden:v9];
  }
}

- (void)setSeparatorWidths:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_separatorWidths.top, v3), vceqq_f64(*&self->_separatorWidths.bottom, v4)))) & 1) == 0)
  {
    self->_separatorWidths = a3;
    [(SUUICollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v8.receiver = self;
  v8.super_class = SUUICollectionViewCell;
  v4 = a3;
  [(SUUICollectionViewCell *)&v8 applyLayoutAttributes:v4];
  v5 = [v4 backgroundColor];
  v7.receiver = self;
  v7.super_class = SUUICollectionViewCell;
  [(SUUICollectionViewCell *)&v7 setBackgroundColor:v5];

  v6 = [v4 position];
  [(SUUICollectionViewCell *)self _setPosition:v6];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUICollectionViewCell;
  [(SUUICollectionViewCell *)&v4 setHighlighted:a3];
  [(SUUICollectionViewCell *)self _updateBorderVisibility];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUICollectionViewCell;
  [(SUUICollectionViewCell *)&v4 setSelected:a3];
  [(SUUICollectionViewCell *)self _updateBorderVisibility];
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = SUUICollectionViewCell;
  [(SUUICollectionViewCell *)&v55 layoutSubviews];
  right = *(MEMORY[0x277D768C8] + 24);
  left = *(MEMORY[0x277D768C8] + 8);
  if (self->_separatorStyle != 4)
  {
    if (self->_position)
    {
      left = self->_separatorInsets.left;
    }

    if ((self->_position & 5) == 4)
    {
      right = self->_separatorInsets.right;
    }
  }

  v51 = *(MEMORY[0x277D768C8] + 16);
  v52 = *MEMORY[0x277D768C8];
  [(SUUICollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SUUICollectionViewCell *)self contentView];
  bottomBorderView = self->_bottomBorderView;
  v13 = v10;
  if (bottomBorderView)
  {
    v13 = v10;
    if (![(UIView *)bottomBorderView isHidden])
    {
      v13 = v10 - self->_separatorWidths.bottom;
      v56.origin.x = v4;
      v56.origin.y = v6;
      v56.size.width = v8;
      v56.size.height = v10;
      MinX = CGRectGetMinX(v56);
      v57.origin.x = v4;
      v57.origin.y = v6;
      v57.size.width = v8;
      v57.size.height = v10;
      v15 = CGRectGetMaxY(v57) - self->_separatorWidths.bottom;
      v58.origin.x = v4;
      v58.origin.y = v6;
      v58.size.width = v8;
      v58.size.height = v10;
      Width = CGRectGetWidth(v58);
      [(UIView *)self->_bottomBorderView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(left + MinX, v52 + v15, Width - (right + left), self->_separatorWidths.bottom - (v52 + v51), v4, v6, v8, v10)];
    }
  }

  leftBorderView = self->_leftBorderView;
  v18 = v8;
  v19 = v4;
  if (leftBorderView)
  {
    v18 = v8;
    v19 = v4;
    if (![(UIView *)leftBorderView isHidden])
    {
      v48 = v13;
      v20 = self->_separatorWidths.left;
      v21 = 0.0;
      if (v20 > 0.00000011920929)
      {
        v22 = v20 * 0.5;
        v23 = [MEMORY[0x277D759A0] mainScreen];
        [v23 scale];
        v25 = 1.0 / v24;

        if (v22 >= v25)
        {
          v21 = v22;
        }

        else
        {
          v21 = v25;
        }
      }

      v47 = v8 - v21;
      v59.origin.x = v4;
      v59.origin.y = v6;
      v59.size.width = v8;
      v59.size.height = v10;
      v26 = CGRectGetMinX(v59);
      v60.origin.x = v4;
      v60.origin.y = v6;
      v60.size.width = v8;
      v60.size.height = v10;
      MinY = CGRectGetMinY(v60);
      v61.origin.x = v4;
      v61.origin.y = v6;
      v61.size.width = v8;
      v61.size.height = v10;
      v28 = CGRectGetHeight(v61) - self->_separatorWidths.bottom;
      v29 = v26;
      v19 = v4 + v21;
      v18 = v8 - v21;
      [(UIView *)self->_leftBorderView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v29, MinY, v21, v28, v4, v6, v8, v10)];
      v13 = v48;
    }
  }

  rightBorderView = self->_rightBorderView;
  if (rightBorderView && ![(UIView *)rightBorderView isHidden])
  {
    v47 = v19;
    v49 = v13;
    v31 = self->_separatorWidths.right;
    v32 = 0.0;
    if (v31 > 0.00000011920929)
    {
      v33 = v31 * 0.5;
      v34 = [MEMORY[0x277D759A0] mainScreen];
      [v34 scale];
      v36 = 1.0 / v35;

      if (v33 >= v36)
      {
        v32 = v33;
      }

      else
      {
        v32 = v36;
      }
    }

    v18 = v18 - v32;
    v62.origin.x = v4;
    v62.origin.y = v6;
    v62.size.width = v8;
    v62.size.height = v10;
    v37 = CGRectGetMaxX(v62) - v32;
    v63.origin.x = v4;
    v63.origin.y = v6;
    v63.size.width = v8;
    v63.size.height = v10;
    v38 = CGRectGetMinY(v63);
    v64.origin.x = v4;
    v64.origin.y = v6;
    v64.size.width = v8;
    v64.size.height = v10;
    Height = CGRectGetHeight(v64);
    [(UIView *)self->_rightBorderView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v37, v38, v32, Height - self->_separatorWidths.bottom, v4, v6, v8, v10)];
    v19 = v47;
    v13 = v49;
  }

  topBorderView = self->_topBorderView;
  if (topBorderView && ![(UIView *)topBorderView isHidden])
  {
    top = self->_separatorWidths.top;
    v50 = v6 + top;
    v13 = v13 - top;
    v65.origin.x = v4;
    v65.origin.y = v6;
    v65.size.width = v8;
    v65.size.height = v10;
    v47 = v18;
    v42 = v19;
    v43 = CGRectGetMinX(v65);
    v66.origin.x = v4;
    v66.origin.y = v6;
    v66.size.width = v8;
    v66.size.height = v10;
    v44 = CGRectGetMinY(v66);
    v67.origin.x = v4;
    v67.origin.y = v6;
    v67.size.width = v8;
    v67.size.height = v10;
    v45 = CGRectGetWidth(v67);
    v46 = left + v43;
    v19 = v42;
    v18 = v47;
    [(UIView *)self->_topBorderView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v46, v52 + v44, v45 - (right + left), self->_separatorWidths.top - (v52 + v51), v4, v6, v8, v10)];
    v6 = v50;
  }

  [v11 setFrame:{v19, v6, v18, v13, *&v47}];
}

- (void)_setPosition:(int64_t)a3
{
  if (self->_position != a3)
  {
    self->_position = a3;
    [(SUUICollectionViewCell *)self _updateBorderVisibility];
  }
}

- (BOOL)_showsBottomBorder
{
  separatorStyle = self->_separatorStyle;
  result = 1;
  if (separatorStyle > 3)
  {
    if (separatorStyle != 4 && separatorStyle != 7)
    {
      return 0;
    }
  }

  else if (separatorStyle != 2)
  {
    if (separatorStyle == 3)
    {
      return (self->_position & 0x20) == 0;
    }

    return 0;
  }

  return result;
}

- (BOOL)_showsLeftBorder
{
  separatorStyle = self->_separatorStyle;
  v3 = self->_position & 1;
  v4 = v3 == 0;
  v6 = separatorStyle != 5 && separatorStyle != 0;
  if (separatorStyle == 6)
  {
    v7 = 0;
  }

  else
  {
    v4 = 0;
    v7 = v3 == 0;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (separatorStyle == 7)
  {
    return (self->_position & 1) == 0;
  }

  else
  {
    return v8;
  }
}

- (BOOL)_showsRightBorder
{
  separatorStyle = self->_separatorStyle;
  v3 = self->_position & 4;
  v4 = v3 == 0;
  v6 = separatorStyle != 5 && separatorStyle != 0;
  if (separatorStyle == 6)
  {
    v7 = 0;
  }

  else
  {
    v4 = 0;
    v7 = v3 == 0;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (separatorStyle == 7)
  {
    return (self->_position & 4) == 0;
  }

  else
  {
    return v8;
  }
}

- (BOOL)_showsTopBorder
{
  v2 = self;
  LOBYTE(self) = 0;
  separatorStyle = v2->_separatorStyle;
  if (separatorStyle <= 7)
  {
    if (((1 << separatorStyle) & 0x9C) != 0)
    {
      LODWORD(self) = (LOBYTE(v2->_position) >> 3) & 1;
    }

    else if (((1 << separatorStyle) & 0x22) != 0)
    {
      LOBYTE(self) = (v2->_position & 8) == 0;
    }
  }

  return self;
}

- (void)_updateBorderVisibility
{
  v3 = [(SUUICollectionViewCell *)self _showsBottomBorder];
  v4 = v3 ^ [(UIView *)self->_bottomBorderView isHidden];
  if ((v4 & 1) == 0)
  {
    [(UIView *)self->_bottomBorderView setHidden:!v3];
  }

  v5 = [(SUUICollectionViewCell *)self _showsLeftBorder];
  if (v5 == [(UIView *)self->_leftBorderView isHidden])
  {
    [(UIView *)self->_leftBorderView setHidden:!v5];
    v6 = 1;
  }

  else
  {
    v6 = v4 ^ 1;
  }

  v7 = [(SUUICollectionViewCell *)self _showsRightBorder];
  if (v7 == [(UIView *)self->_rightBorderView isHidden])
  {
    [(UIView *)self->_rightBorderView setHidden:!v7];
    v6 = 1;
  }

  v8 = [(SUUICollectionViewCell *)self _showsTopBorder];
  if (v8 == [(UIView *)self->_topBorderView isHidden])
  {
    [(UIView *)self->_topBorderView setHidden:!v8];
  }

  else if (!v6)
  {
    return;
  }

  [(SUUICollectionViewCell *)self setNeedsLayout];
}

- (UIEdgeInsets)separatorWidths
{
  top = self->_separatorWidths.top;
  left = self->_separatorWidths.left;
  bottom = self->_separatorWidths.bottom;
  right = self->_separatorWidths.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)separatorInsets
{
  top = self->_separatorInsets.top;
  left = self->_separatorInsets.left;
  bottom = self->_separatorInsets.bottom;
  right = self->_separatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end