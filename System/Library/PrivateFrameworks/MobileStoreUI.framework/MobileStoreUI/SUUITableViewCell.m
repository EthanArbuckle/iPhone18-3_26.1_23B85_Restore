@interface SUUITableViewCell
- (SUUITableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)textLabelInsets;
- (void)_reloadBorderVisibility;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomBorderColor:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setTopBorderColor:(id)a3;
@end

@implementation SUUITableViewCell

- (SUUITableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = SUUITableViewCell;
  result = [(SUUITableViewCell *)&v6 initWithStyle:a3 reuseIdentifier:a4];
  if (result)
  {
    result->_borderPaddingLeft = 15.0;
    v5 = *(MEMORY[0x277D768C8] + 16);
    *&result->_textLabelInsets.top = *MEMORY[0x277D768C8];
    *&result->_textLabelInsets.bottom = v5;
  }

  return result;
}

- (void)setBottomBorderColor:(id)a3
{
  v4 = a3;
  bottomBorderView = self->_bottomBorderView;
  v9 = v4;
  if (v4)
  {
    if (!bottomBorderView)
    {
      v6 = objc_alloc_init(SUUIBorderView);
      v7 = self->_bottomBorderView;
      self->_bottomBorderView = v6;

      [(SUUITableViewCell *)self addSubview:self->_bottomBorderView];
      v4 = v9;
      bottomBorderView = self->_bottomBorderView;
    }

    [(SUUIBorderView *)bottomBorderView setColor:v4];
  }

  else
  {
    [(SUUIBorderView *)bottomBorderView removeFromSuperview];
    v8 = self->_bottomBorderView;
    self->_bottomBorderView = 0;
  }
}

- (void)setTopBorderColor:(id)a3
{
  v4 = a3;
  topBorderView = self->_topBorderView;
  v9 = v4;
  if (v4)
  {
    if (!topBorderView)
    {
      v6 = objc_alloc_init(SUUIBorderView);
      v7 = self->_topBorderView;
      self->_topBorderView = v6;

      [(SUUITableViewCell *)self addSubview:self->_topBorderView];
      v4 = v9;
      topBorderView = self->_topBorderView;
    }

    [(SUUIBorderView *)topBorderView setColor:v4];
  }

  else
  {
    [(SUUIBorderView *)topBorderView removeFromSuperview];
    v8 = self->_topBorderView;
    self->_topBorderView = 0;
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SUUITableViewCell;
  [(SUUITableViewCell *)&v3 prepareForReuse];
  self->_borderPaddingLeft = 15.0;
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = SUUITableViewCell;
  [(SUUITableViewCell *)&v5 setHighlighted:a3 animated:a4];
  [(SUUITableViewCell *)self _reloadBorderVisibility];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = SUUITableViewCell;
  [(SUUITableViewCell *)&v5 setSelected:a3 animated:a4];
  [(SUUITableViewCell *)self _reloadBorderVisibility];
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = SUUITableViewCell;
  [(SUUITableViewCell *)&v37 layoutSubviews];
  [(SUUITableViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  bottomBorderView = self->_bottomBorderView;
  borderPaddingLeft = self->_borderPaddingLeft;
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = v6 - 1.0 / v10;
  v12 = v4 - self->_borderPaddingLeft;
  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 scale];
  [(SUUIBorderView *)bottomBorderView setFrame:borderPaddingLeft, v11, v12, 1.0 / v14];

  topBorderView = self->_topBorderView;
  v16 = self->_borderPaddingLeft;
  v17 = [MEMORY[0x277D759A0] mainScreen];
  [v17 scale];
  [(SUUIBorderView *)topBorderView setFrame:v16, 0.0, v4 - v16, 1.0 / v18];

  v19 = [(SUUITableViewCell *)self textLabel];
  [v19 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  top = self->_textLabelInsets.top;
  left = self->_textLabelInsets.left;
  v30 = v21 + left;
  v31 = v23 + top;
  v32 = v25 - (left + self->_textLabelInsets.right);
  v33 = v27 - (top + self->_textLabelInsets.bottom);
  v34 = [(SUUITableViewCell *)self textLabel];
  [v34 setFrame:{v30, v31, v32, v33}];

  v35 = [(SUUITableViewCell *)self textLabel];
  if (storeShouldReverseLayoutDirection())
  {
    v36 = 2;
  }

  else
  {
    v36 = 0;
  }

  [v35 setTextAlignment:v36];
}

- (void)_reloadBorderVisibility
{
  if (([(SUUITableViewCell *)self isEditing]& 1) != 0 || ![(SUUITableViewCell *)self selectionStyle])
  {
    v3 = 0;
  }

  else if (([(SUUITableViewCell *)self isHighlighted]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(SUUITableViewCell *)self isSelected];
  }

  [(SUUIBorderView *)self->_bottomBorderView setHidden:v3];
  topBorderView = self->_topBorderView;

  [(SUUIBorderView *)topBorderView setHidden:v3];
}

- (UIEdgeInsets)textLabelInsets
{
  top = self->_textLabelInsets.top;
  left = self->_textLabelInsets.left;
  bottom = self->_textLabelInsets.bottom;
  right = self->_textLabelInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end