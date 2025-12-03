@interface SUUITableViewCell
- (SUUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)textLabelInsets;
- (void)_reloadBorderVisibility;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomBorderColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setTopBorderColor:(id)color;
@end

@implementation SUUITableViewCell

- (SUUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = SUUITableViewCell;
  result = [(SUUITableViewCell *)&v6 initWithStyle:style reuseIdentifier:identifier];
  if (result)
  {
    result->_borderPaddingLeft = 15.0;
    v5 = *(MEMORY[0x277D768C8] + 16);
    *&result->_textLabelInsets.top = *MEMORY[0x277D768C8];
    *&result->_textLabelInsets.bottom = v5;
  }

  return result;
}

- (void)setBottomBorderColor:(id)color
{
  colorCopy = color;
  bottomBorderView = self->_bottomBorderView;
  v9 = colorCopy;
  if (colorCopy)
  {
    if (!bottomBorderView)
    {
      v6 = objc_alloc_init(SUUIBorderView);
      v7 = self->_bottomBorderView;
      self->_bottomBorderView = v6;

      [(SUUITableViewCell *)self addSubview:self->_bottomBorderView];
      colorCopy = v9;
      bottomBorderView = self->_bottomBorderView;
    }

    [(SUUIBorderView *)bottomBorderView setColor:colorCopy];
  }

  else
  {
    [(SUUIBorderView *)bottomBorderView removeFromSuperview];
    v8 = self->_bottomBorderView;
    self->_bottomBorderView = 0;
  }
}

- (void)setTopBorderColor:(id)color
{
  colorCopy = color;
  topBorderView = self->_topBorderView;
  v9 = colorCopy;
  if (colorCopy)
  {
    if (!topBorderView)
    {
      v6 = objc_alloc_init(SUUIBorderView);
      v7 = self->_topBorderView;
      self->_topBorderView = v6;

      [(SUUITableViewCell *)self addSubview:self->_topBorderView];
      colorCopy = v9;
      topBorderView = self->_topBorderView;
    }

    [(SUUIBorderView *)topBorderView setColor:colorCopy];
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

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = SUUITableViewCell;
  [(SUUITableViewCell *)&v5 setHighlighted:highlighted animated:animated];
  [(SUUITableViewCell *)self _reloadBorderVisibility];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = SUUITableViewCell;
  [(SUUITableViewCell *)&v5 setSelected:selected animated:animated];
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v11 = v6 - 1.0 / v10;
  v12 = v4 - self->_borderPaddingLeft;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  [(SUUIBorderView *)bottomBorderView setFrame:borderPaddingLeft, v11, v12, 1.0 / v14];

  topBorderView = self->_topBorderView;
  v16 = self->_borderPaddingLeft;
  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen3 scale];
  [(SUUIBorderView *)topBorderView setFrame:v16, 0.0, v4 - v16, 1.0 / v18];

  textLabel = [(SUUITableViewCell *)self textLabel];
  [textLabel frame];
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
  textLabel2 = [(SUUITableViewCell *)self textLabel];
  [textLabel2 setFrame:{v30, v31, v32, v33}];

  textLabel3 = [(SUUITableViewCell *)self textLabel];
  if (storeShouldReverseLayoutDirection())
  {
    v36 = 2;
  }

  else
  {
    v36 = 0;
  }

  [textLabel3 setTextAlignment:v36];
}

- (void)_reloadBorderVisibility
{
  if (([(SUUITableViewCell *)self isEditing]& 1) != 0 || ![(SUUITableViewCell *)self selectionStyle])
  {
    isSelected = 0;
  }

  else if (([(SUUITableViewCell *)self isHighlighted]& 1) != 0)
  {
    isSelected = 1;
  }

  else
  {
    isSelected = [(SUUITableViewCell *)self isSelected];
  }

  [(SUUIBorderView *)self->_bottomBorderView setHidden:isSelected];
  topBorderView = self->_topBorderView;

  [(SUUIBorderView *)topBorderView setHidden:isSelected];
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